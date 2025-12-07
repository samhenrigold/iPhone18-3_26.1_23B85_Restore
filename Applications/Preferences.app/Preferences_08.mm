void *sub_1000CADD0()
{
  v1 = v0;
  v2 = type metadata accessor for PrimarySettingsListSectionModel(0);
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v42 = &v32 - v6;
  v7 = *(v0 + 32);
  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = [swift_unknownObjectRetain() items];
  v41 = sub_100008294(0, &qword_10015F9A0, FLFollowUpItem_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
LABEL_29:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_30;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_30:
    swift_unknownObjectRelease();

    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  v11 = 0;
  v12 = *(v1 + OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_group);
  v40 = v9 & 0xC000000000000001;
  v32 = v9 & 0xFFFFFFFFFFFFFF8;
  v13 = _swiftEmptyArrayStorage;
  v38 = v10;
  v39 = v9;
  v37 = v12;
  v33 = v5;
  v34 = v7;
  while (1)
  {
    if (v40)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *(v32 + 16))
      {
        goto LABEL_28;
      }

      v15 = *(v9 + 8 * v11 + 32);
    }

    v16 = v15;
    v1 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v17 = sub_1000CF860(v15, v7);
    result = [v16 uniqueIdentifier];
    v19 = result;
    v43 = v13;
    if (v12 != 1)
    {
      break;
    }

    if (!result)
    {
      goto LABEL_34;
    }

    v20 = 1;
LABEL_20:
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (v17[2])
    {
      v24 = v36;
      v25 = *(v36 + 24);
      v26 = type metadata accessor for LocalizedStringResource();
      v27 = v17;
      v28 = v42;
      (*(*(v26 - 8) + 56))(v42 + v25, 1, 1, v26);
      *v28 = v21;
      *(v28 + 8) = v23;
      *(v28 + 16) = v20;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0;
      v29 = *(v24 + 28);
      v5 = v33;
      *(v28 + v29) = v27;
      sub_1000CB1B0(v28, v5);
      v13 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1000C5098(0, v13[2] + 1, 1, v13);
      }

      v14 = v38;
      v9 = v39;
      v31 = v13[2];
      v30 = v13[3];
      v7 = v34;
      if (v31 >= v30 >> 1)
      {
        v13 = sub_1000C5098((v30 > 1), v31 + 1, 1, v13);
      }

      sub_10002CA38(v42);
      v13[2] = v31 + 1;
      sub_10002C928(v5, v13 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v31);
    }

    else
    {
      sub_100025CD8(v21, v23, v20);

      v14 = v38;
      v9 = v39;
      v13 = v43;
    }

    ++v11;
    v12 = v37;
    if (v1 == v14)
    {
      swift_unknownObjectRelease();

      return v13;
    }
  }

  if (v12)
  {
    if (!result)
    {
      goto LABEL_35;
    }

    v20 = 2;
    goto LABEL_20;
  }

  if (result)
  {
    v20 = 0;
    goto LABEL_20;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1000CB1B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListSectionModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CB214(uint64_t a1)
{
  v4 = *(sub_10004DED0(&qword_10015C900, &qword_1001123C0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A924;

  return sub_1000C9D94(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1000CB340(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000CA6AC(a1, v4, v5, v6);
}

uint64_t sub_1000CB3F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&qword_10015C900, &qword_1001123C0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004DED0(&unk_10015FAA0, qword_100112870) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000ACE4;

  return sub_1000C989C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1000CB55C(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000CB58C()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultStore];
  if (!v2)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return _swift_continuation_await(v2);
  }

  v3 = v2;
  v4 = [v2 aa_primaryAppleAccount];
  if (v4 && (v5 = v4, v6 = [v4 identifier], v5, v6))
  {
    static String._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  else
  {
  }

  v0[19] = 0;
  v0[20] = 0;
  v2 = [v1 defaultStore];
  if (!v2)
  {
    goto LABEL_13;
  }

  v7 = v2;
  v0[21] = sub_100104DCC();

  v8 = [objc_allocWithZone(FLTopLevelViewModel) initWithBundleIdentifier:FLFollowUpPreferencesBundleIdentifier clientIdentifier:0];
  v0[22] = v8;
  if (qword_10015AB38 != -1)
  {
    swift_once();
  }

  v9 = qword_10015F830;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000CB7E8;
  v10 = swift_continuation_init();
  v0[17] = sub_10004DED0(&unk_10015FA00, &qword_100115DA0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10009F7E8;
  v0[13] = &unk_100151208;
  v0[14] = v10;
  [v8 sapp_groupsWithQueue:v9 completion:v0 + 10];
  v2 = v0 + 2;

  return _swift_continuation_await(v2);
}

uint64_t sub_1000CB7E8()
{

  return _swift_task_switch(sub_1000CB8C8, 0, 0);
}

uint64_t sub_1000CB8C8()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    goto LABEL_39;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v3 = 0;
      v31 = *(v0 + 160);
      v32 = *(v0 + 168);
      while ((v1 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v10 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_32:
          __break(1u);
          goto LABEL_40;
        }

LABEL_11:
        v11 = [v9 identifier];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
        {

          v18 = *(v0 + 184);
          if (!*(v0 + 184))
          {
            goto LABEL_24;
          }
        }

        else
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v17 & 1) == 0)
          {
            goto LABEL_7;
          }

          v18 = *(v0 + 184);
          if (!*(v0 + 184))
          {
LABEL_24:
            v23 = [v9 accountID];
            v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v26 = v25;

            if (!v31)
            {

              goto LABEL_7;
            }

            if (v24 == *(v0 + 152) && *(v0 + 160) == v26)
            {
              goto LABEL_35;
            }

LABEL_27:
            v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v27)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          }
        }

        if (v18 == 1)
        {
          if (!v32[2])
          {
            goto LABEL_7;
          }

          v19 = [v9 accountID];
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          if (!v32[2])
          {
            goto LABEL_38;
          }

          if (v20 == v32[4] && v22 == v32[5])
          {
LABEL_35:
            v28 = *(v0 + 176);

            goto LABEL_36;
          }

          goto LABEL_27;
        }

        v4 = [v9 accountID];
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v6;

        v8 = HIBYTE(v7) & 0xF;
        if ((v7 & 0x2000000000000000) == 0)
        {
          v8 = v5 & 0xFFFFFFFFFFFFLL;
        }

        if (!v8)
        {
LABEL_34:

LABEL_36:

          goto LABEL_41;
        }

LABEL_7:
        swift_unknownObjectRelease();
        ++v3;
        if (v10 == v2)
        {
          goto LABEL_40;
        }
      }

      if (v3 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v2 = _CocoaArrayWrapper.endIndex.getter();
      if (!v2)
      {
        goto LABEL_40;
      }
    }

    v9 = *(v1 + 8 * v3 + 32);
    swift_unknownObjectRetain();
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_32;
    }

    goto LABEL_11;
  }

LABEL_40:

  v9 = 0;
LABEL_41:
  v29 = *(v0 + 8);

  return v29(v9);
}

uint64_t sub_1000CBC2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015F9A8, &qword_100117210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CBC9C()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100008294(0, &qword_10015C9D0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_10001F7D4();
  sub_10004DED0(&unk_10015FD30, &unk_100117260);
  sub_1000525A0(&qword_10015FA20, &unk_10015FD30, &unk_100117260, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10015FA30 = result;
  return result;
}

uint64_t sub_1000CBEFC()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015F990, &unk_100115CF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - v4;
  v6 = sub_10004DED0(&qword_10015F9A8, &qword_100117210);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  v9 = OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_observationTasks;
  swift_beginAccess();
  v10 = *(*(v1 + v9) + 16);
  if (v10)
  {
    v20[1] = v9;
    v21 = v3;
    v22 = v2;

    v11 = 32;
    do
    {

      Task.cancel()();

      v11 += 8;
      --v10;
    }

    while (v10);

    v3 = v21;
    v2 = v22;
  }

  v12 = OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_updateStreamContinuation;
  swift_beginAccess();
  sub_1000CBC2C(v1 + v12, v8);
  v13 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v8, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    AsyncStream.Continuation.finish()();
    (*(v14 + 8))(v8, v13);
    v16 = OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_modelStreamContinuation;
    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_modelStreamContinuation, v2);
    AsyncStream.Continuation.finish()();
    v17 = *(v3 + 8);
    v17(v5, v2);
    sub_1000122B4(v1 + 16);
    swift_unknownObjectRelease();
    sub_1000068B0(v1 + OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_updateStream, &unk_10015F9B0, &unk_1001170F0);
    sub_1000068B0(v1 + v12, &qword_10015F9A8, &qword_100117210);

    v18 = OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_modelStream;
    v19 = sub_10004DED0(&qword_10015EA20, &unk_1001170E0);
    (*(*(v19 - 8) + 8))(v1 + v18, v19);
    v17((v1 + v16), v2);
    return v1;
  }

  return result;
}

uint64_t sub_1000CC258()
{
  sub_1000CBEFC();

  return swift_deallocClassInstance();
}

uint64_t sub_1000CC2B8()
{
  v0 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v92 = *(v0 - 8);
  v93 = v0;
  __chkstk_darwin(v0);
  v91 = v87 - v1;
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v2 - 8);
  v104 = v87 - v3;
  v4 = sub_10004DED0(&qword_10015F9A8, &qword_100117210);
  __chkstk_darwin(v4 - 8);
  v89 = v87 - v5;
  v6 = sub_10004DED0(&unk_10015F9B0, &unk_1001170F0);
  __chkstk_darwin(v6 - 8);
  v8 = v87 - v7;
  v9 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v87 - v11);
  v13 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v88 = v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87[1] = v16;
  __chkstk_darwin(v15);
  v18 = v87 - v17;
  v19 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v97 = v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v94 = v87 - v24;
  v96 = v25;
  __chkstk_darwin(v23);
  v27 = v87 - v26;
  *v12 = 1;
  (*(v10 + 104))(v12, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v9);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v10 + 8))(v12, v9);
  v29 = (v20 + 16);
  v28 = *(v20 + 16);
  v101 = v27;
  v95 = v28;
  v28(v8, v27, v19);
  v102 = v19;
  v103 = v20;
  v30 = v20;
  v31 = v90;
  (*(v30 + 56))(v8, 0, 1, v19);
  v32 = OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_updateStream;
  swift_beginAccess();
  sub_1000BB1A0(v8, v31 + v32, &unk_10015F9B0, &unk_1001170F0);
  swift_endAccess();
  v33 = *(v14 + 16);
  v34 = v89;
  v98 = v18;
  v33(v89, v18, v13);
  v99 = v14;
  v100 = v13;
  (*(v14 + 56))(v34, 0, 1, v13);
  v35 = OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_updateStreamContinuation;
  swift_beginAccess();
  sub_1000BB1A0(v34, v31 + v35, &qword_10015F9A8, &qword_100117210);
  swift_endAccess();
  if (qword_10015AB40 != -1)
  {
    swift_once();
  }

  v36 = v94;
  sub_100015934(0xD000000000000024, 0x8000000100124C70, qword_10015FA30, v94);
  v37 = type metadata accessor for TaskPriority();
  (*(*(v37 - 8) + 56))(v104, 1, 1, v37);
  v38 = v97;
  v39 = v36;
  v40 = v102;
  v89 = v29;
  v95(v97, v39, v102);
  v41 = v100;
  v33(v88, v98, v100);
  type metadata accessor for MainActor();
  v42 = static MainActor.shared.getter();
  v43 = v103;
  v44 = (*(v103 + 80) + 32) & ~*(v103 + 80);
  v45 = v99;
  v46 = (v96 + *(v99 + 80) + v44) & ~*(v99 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v42;
  *(v47 + 24) = &protocol witness table for MainActor;
  (*(v43 + 32))(v47 + v44, v38, v40);
  (*(v45 + 32))(v47 + v46, v88, v41);
  v48 = sub_100094AF4(0, 0, v104, &unk_100117248, v47);
  v49 = OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_observationTasks;
  swift_beginAccess();
  v50 = *(v31 + v49);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v31 + v49) = v50;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v50 = sub_100015698(0, v50[2] + 1, 1, v50);
    *(v31 + v49) = v50;
  }

  v53 = v50[2];
  v52 = v50[3];
  v54 = v103;
  if (v53 >= v52 >> 1)
  {
    v50 = sub_100015698((v52 > 1), v53 + 1, 1, v50);
  }

  v50[2] = v53 + 1;
  v50[v53 + 4] = v48;
  *(v31 + v49) = v50;
  swift_endAccess();

  (*(v54 + 8))(v94, v40);
  v55 = type metadata accessor for TaskPriority();
  v56 = *(v55 - 8);
  v57 = *(v56 + 56);
  v58 = v104;
  v94 = v55;
  v88 = (v56 + 56);
  v89 = v57;
  (v57)(v104, 1, 1);
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = v97;
  v95(v97, v101, v40);
  type metadata accessor for MainActor();

  v61 = static MainActor.shared.getter();
  v62 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v63 = v54;
  v64 = (v96 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v66 = v40;
  v67 = v65;
  *(v65 + 16) = v61;
  *(v65 + 24) = &protocol witness table for MainActor;
  (*(v63 + 32))(v65 + v62, v60, v66);
  *(v67 + v64) = v59;

  v68 = sub_100094AF4(0, 0, v58, &unk_100117220, v67);
  v69 = OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_observationTasks;
  swift_beginAccess();
  v70 = *(v31 + v69);

  v71 = swift_isUniquelyReferenced_nonNull_native();
  *(v31 + v69) = v70;
  if ((v71 & 1) == 0)
  {
    v70 = sub_100015698(0, v70[2] + 1, 1, v70);
    *(v31 + v69) = v70;
  }

  v73 = v70[2];
  v72 = v70[3];
  if (v73 >= v72 >> 1)
  {
    v70 = sub_100015698((v72 > 1), v73 + 1, 1, v70);
  }

  v70[2] = v73 + 1;
  v70[v73 + 4] = v68;
  *(v31 + v69) = v70;
  swift_endAccess();
  v74 = v104;
  (v89)(v104, 1, 1, v94);
  v75 = swift_allocObject();
  swift_weakInit();

  v76 = static MainActor.shared.getter();
  v77 = swift_allocObject();
  v77[2] = v76;
  v77[3] = &protocol witness table for MainActor;
  v77[4] = v75;

  v78 = sub_100094AF4(0, 0, v74, &unk_100117230, v77);
  swift_beginAccess();
  v79 = *(v31 + v69);

  v80 = swift_isUniquelyReferenced_nonNull_native();
  *(v31 + v69) = v79;
  if ((v80 & 1) == 0)
  {
    v79 = sub_100015698(0, v79[2] + 1, 1, v79);
    *(v31 + v69) = v79;
  }

  v81 = v103;
  v83 = v79[2];
  v82 = v79[3];
  if (v83 >= v82 >> 1)
  {
    v79 = sub_100015698((v82 > 1), v83 + 1, 1, v79);
  }

  v79[2] = v83 + 1;
  v79[v83 + 4] = v78;
  *(v31 + v69) = v79;
  swift_endAccess();
  v84 = v91;
  v85 = v98;
  AsyncStream.Continuation.yield<A>()();

  (*(v92 + 8))(v84, v93);
  (*(v99 + 8))(v85, v100);
  return (*(v81 + 8))(v101, v102);
}

uint64_t sub_1000CCF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_10004DED0(&qword_10015C460, &qword_100112450);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[12] = v9;
  v5[13] = v8;

  return _swift_task_switch(sub_1000CD0D0, v9, v8);
}

uint64_t sub_1000CD0D0()
{
  sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  AsyncStream.makeAsyncIterator()();
  v1 = static MainActor.shared.getter();
  v0[14] = v1;
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_1000CD1B0;
  v3 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_1000CD1B0()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1000CD2F4, v3, v2);
}

uint64_t sub_1000CD2F4()
{
  if (*(v0 + 128) & 1) != 0 || (static Task<>.isCancelled.getter())
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    AsyncStream.Continuation.yield<A>()();
    (*(v4 + 8))(v3, v5);
    v6 = static MainActor.shared.getter();
    *(v0 + 112) = v6;
    v7 = swift_task_alloc();
    *(v0 + 120) = v7;
    *v7 = v0;
    v7[1] = sub_1000CD1B0;
    v8 = *(v0 + 56);

    return AsyncStream.Iterator.next(isolation:)(v0 + 128, v6, &protocol witness table for MainActor, v8);
  }
}

uint64_t sub_1000CD45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_10004DED0(&unk_10015FB90, &unk_100117148);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  v5[14] = swift_task_alloc();
  v5[15] = type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v8;
  v5[18] = v7;

  return _swift_task_switch(sub_1000CD59C, v8, v7);
}

uint64_t sub_1000CD59C()
{
  v1 = v0[14];
  sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  sub_1000525A0(&qword_10015C930, &qword_10015C900, &qword_1001123C0, &protocol conformance descriptor for AsyncStream<A>);
  AsyncSequence.debounce<>(for:tolerance:)();
  v2 = AsyncDebounceSequence.makeAsyncIterator()();
  v0[19] = v2;
  sub_1000068B0(v1, &unk_10015F9E0, &unk_100112BB0);
  v0[5] = v2;
  swift_beginAccess();
  v0[20] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v0[21] = v3;
  v4 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v3 = v0;
  v3[1] = sub_1000CD738;

  return AsyncDebounceSequence.Iterator.next()(v0 + 26, v4);
}

uint64_t sub_1000CD738()
{
  v2 = *v1;
  *(v2 + 176) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000CA3A8;
  }

  else
  {
    *(v2 + 209) = *(v2 + 208);
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000CD8D8;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1000CD8D8()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return _swift_task_switch(sub_1000CD93C, v1, v2);
}

uint64_t sub_1000CD93C()
{
  if (*(v0 + 209) == 1 || (Strong = swift_weakLoadStrong(), (*(v0 + 184) = Strong) == 0))
  {
LABEL_5:

    v3 = *(v0 + 8);

    return v3();
  }

  v2 = Strong;
  if (static Task<>.isCancelled.getter())
  {

    goto LABEL_5;
  }

  v5 = *(v2 + 32);
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  *v6 = v0;
  v6[1] = sub_1000CDA68;

  return sub_1000CF160(v5);
}

uint64_t sub_1000CDA68(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 200) = a1;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);

  return _swift_task_switch(sub_1000CDB90, v4, v3);
}

uint64_t sub_1000CDB90()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[7] = v0[25];
  swift_unknownObjectRetain();
  sub_10004DED0(&unk_10015F990, &unk_100115CF0);
  AsyncStream.Continuation.yield(_:)();

  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  v0[20] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v0[21] = v4;
  v5 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v4 = v0;
  v4[1] = sub_1000CD738;

  return AsyncDebounceSequence.Iterator.next()(v0 + 26, v5);
}

uint64_t sub_1000CDCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_10004DED0(&unk_10015F9D0, &qword_100117140);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_10004DED0(&qword_10015EA20, &unk_1001170E0);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[19] = v8;
  v4[20] = v7;

  return _swift_task_switch(sub_1000CDE58, v8, v7);
}

uint64_t sub_1000CDE58()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[15];
    v3 = v0[16];
    v4 = v0[13];
    v5 = v0[14];
    (*(v5 + 16))(v2, Strong + OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_modelStream, v4);

    (*(v5 + 32))(v3, v2, v4);
    AsyncStream.makeAsyncIterator()();
    swift_beginAccess();
    v6 = static MainActor.shared.getter();
    v0[21] = v6;
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_1000CE030;
    v8 = v0[10];

    return AsyncStream.Iterator.next(isolation:)(v0 + 8, v6, &protocol witness table for MainActor, v8);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1000CE030()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_1000CE174, v3, v2);
}

uint64_t sub_1000CE174()
{
  v1 = v0[8];
  if (v1 == 1)
  {
    goto LABEL_5;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    sub_1000CB55C(v1);
    goto LABEL_7;
  }

  v3 = Strong;
  if (static Task<>.isCancelled.getter())
  {

    sub_1000CB55C(v1);
LABEL_5:

LABEL_7:
    v4 = v0[16];
    v5 = v0[13];
    v6 = v0[14];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v6 + 8))(v4, v5);

    v7 = v0[1];

    return v7();
  }

  v9 = *(v3 + 40);
  if (v9)
  {
    if (v9 == v1)
    {
      goto LABEL_16;
    }

LABEL_14:
    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for PrimarySettingsListModel(0);
      sub_1000A2E28("CFU", 3, 2);
      swift_unknownObjectRelease();
    }

    goto LABEL_16;
  }

  if (v1)
  {
    goto LABEL_14;
  }

LABEL_16:
  *(v3 + 40) = v1;

  swift_unknownObjectRelease();
  v10 = static MainActor.shared.getter();
  v0[21] = v10;
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_1000CE030;
  v12 = v0[10];

  return AsyncStream.Iterator.next(isolation:)(v0 + 8, v10, &protocol witness table for MainActor, v12);
}

uint64_t sub_1000CE3BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  __chkstk_darwin(v3 - 8);
  v5 = &v65 - v4;
  v6 = type metadata accessor for PrimarySettingsListItemModel(0);
  v72 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v65 - v11;
  __chkstk_darwin(v10);
  v14 = &v65 - v13;
  v15 = *(v1 + 40);
  if (v15)
  {
    v16 = [swift_unknownObjectRetain() shouldCoalesceItems];
    v73 = v15;
    if (v16)
    {
      if ([v15 shouldCoalesceItems])
      {
        v17 = [v15 rowTitle];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v19;
        v68 = v18;

        v20 = [v15 items];
        sub_100008294(0, &qword_10015F9A0, FLFollowUpItem_ptr);
        v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v70 = v5;
        v71 = a1;
        v69 = v1;
        if (!(v21 >> 62))
        {
          v66 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

          v15 = v73;
          if ([v73 restrictionEnabled])
          {
            v22 = 5;
          }

          else
          {
            v22 = 4;
          }

          v23 = [v15 identifier];
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;

          v27 = [v15 accountID];
          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;

          v31 = &v12[*(v6 + 20)];
          v32 = v67;
          *v31 = v68;
          *(v31 + 1) = v32;
          *(v31 + 2) = v66;
          type metadata accessor for PrimarySettingsListItemViewType(0);
          swift_storeEnumTagMultiPayload();
          *v12 = v24;
          *(v12 + 1) = v26;
          *(v12 + 2) = v28;
          *(v12 + 3) = v30;
          v12[32] = 0;
          *&v12[*(v6 + 24)] = v22;
          sub_10002C634(v12, v14);
          sub_10004DED0(&unk_10015FB80, &unk_100116A40);
          v33 = (*(v72 + 80) + 32) & ~*(v72 + 80);
          v34 = swift_allocObject();
          *(v34 + 1) = xmmword_1001103C0;
          sub_10002C634(v14, v34 + v33);
          goto LABEL_24;
        }

LABEL_45:
        v66 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_6;
      }

      v34 = _swiftEmptyArrayStorage;
      if (_swiftEmptyArrayStorage[2])
      {
        goto LABEL_27;
      }

LABEL_43:
      v64 = type metadata accessor for PrimarySettingsListSectionModel(0);
      (*(*(v64 - 8) + 56))(a1, 1, 1, v64);
      swift_unknownObjectRelease();
    }

    v70 = v5;
    v71 = a1;
    v38 = [v15 items];
    v12 = sub_100008294(0, &qword_10015F9A0, FLFollowUpItem_ptr);
    v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v39 >> 62)
    {
      v40 = _CocoaArrayWrapper.endIndex.getter();
      if (v40)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v40)
      {
LABEL_15:
        v69 = v1;
        v74 = _swiftEmptyArrayStorage;
        sub_1000F52FC(0, v40 & ~(v40 >> 63), 0);
        if ((v40 & 0x8000000000000000) == 0)
        {
          v41 = 0;
          v34 = v74;
          do
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v42 = *(v39 + 8 * v41 + 32);
            }

            v43 = v42;
            sub_1000D0018(v42, v15, v9);

            v74 = v34;
            v45 = v34[2];
            v44 = v34[3];
            if (v45 >= v44 >> 1)
            {
              sub_1000F52FC((v44 > 1), v45 + 1, 1);
              v34 = v74;
            }

            ++v41;
            v34[2] = v45 + 1;
            sub_10002C634(v9, v34 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v45);
            v15 = v73;
          }

          while (v40 != v41);

LABEL_24:
          v5 = v70;
          a1 = v71;
          v1 = v69;
          if (!v34[2])
          {
            goto LABEL_43;
          }

LABEL_27:
          v46 = [v15 groupTitle];
          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v48 = v15;
          v50 = v49;

          v51 = *(v1 + 32);
          if (v51 == 7)
          {
            v52 = 8;
          }

          else
          {
            v53 = [v48 footerText];
            if (v53)
            {
              v54 = v5;
              v55 = v53;
              v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v58 = v57;

              v59 = v58;
              v60 = HIBYTE(v58) & 0xF;
              if ((v58 & 0x2000000000000000) == 0)
              {
                v60 = v56 & 0xFFFFFFFFFFFFLL;
              }

              if (!v60)
              {

                v59 = 0;
              }

              v5 = v54;
            }

            else
            {
              v59 = 0;
            }

            v52 = qword_1001172B0[v51];
            if (!v59)
            {
              v61 = 1;
              goto LABEL_39;
            }
          }

          LocalizedStringResource.init(stringLiteral:)();
          v61 = 0;
LABEL_39:
          swift_unknownObjectRelease();
          v62 = type metadata accessor for LocalizedStringResource();
          (*(*(v62 - 8) + 56))(v5, v61, 1, v62);
          *a1 = v52;
          *(a1 + 8) = 0;
          *(a1 + 16) = 3;
          *(a1 + 24) = v47;
          *(a1 + 32) = v50;
          v63 = type metadata accessor for PrimarySettingsListSectionModel(0);
          sub_10002CA94(v5, a1 + *(v63 + 24));
          *(a1 + *(v63 + 28)) = v34;
          return (*(*(v63 - 8) + 56))(a1, 0, 1, v63);
        }

        __break(1u);
        goto LABEL_45;
      }
    }

    v34 = _swiftEmptyArrayStorage;
    v5 = v70;
    a1 = v71;
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_27;
    }

    goto LABEL_43;
  }

  v35 = type metadata accessor for PrimarySettingsListSectionModel(0);
  v36 = *(*(v35 - 8) + 56);

  return v36(a1, 1, 1, v35);
}

uint64_t sub_1000CEB0C(unsigned __int8 a1, id a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = [a2 identifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        goto LABEL_4;
      }
    }

    else if (!a1)
    {
LABEL_4:
      v14 = &FLGroupIdentifierAccount;
LABEL_13:
      v15 = *v14;
      goto LABEL_14;
    }

    v14 = &FLGroupIdentifierAppleServices;
    goto LABEL_13;
  }

  if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v14 = &FLGroupIdentifierDevice;
    }

    else
    {
      v14 = &FLGroupIdentifierSecureMicrophone;
    }

    goto LABEL_13;
  }

  if (a1 == 6)
  {
    v14 = &FLGroupIdentifierNewDeviceOutreach;
    goto LABEL_13;
  }

  v15 = String._bridgeToObjectiveC()();
LABEL_14:
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v11 == v17 && v13 == v19)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  if (a1 != 3)
  {
    if (a1)
    {
      v26 = 1;
      return v26 & 1;
    }

    v22 = [a2 accountID];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (a4)
    {
      if (v23 == a3 && v25 == a4)
      {
        v26 = 1;
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v26 = 0;
    }

LABEL_37:

    return v26 & 1;
  }

  if (a5[2])
  {
    v28 = a5[4];
    v27 = a5[5];

    v29 = [a2 accountID];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if (v30 == v28 && v32 == v27)
    {

      v26 = 1;
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_37;
  }

LABEL_31:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_1000CEE18(uint64_t a1)
{
  v4 = *(sub_10004DED0(&qword_10015C900, &qword_1001123C0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A924;

  return sub_1000CD45C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1000CEF44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000CDCE0(a1, v4, v5, v6);
}

uint64_t sub_1000CEFF8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&qword_10015C900, &qword_1001123C0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004DED0(&unk_10015FAA0, qword_100112870) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000ACE4;

  return sub_1000CCF64(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1000CF180()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultStore];
  if (!v2)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return _swift_continuation_await(v2);
  }

  v3 = v2;
  v4 = [v2 aa_primaryAppleAccount];
  if (v4 && (v5 = v4, v6 = [v4 identifier], v5, v6))
  {
    static String._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  else
  {
  }

  v0[19] = 0;
  v0[20] = 0;
  v2 = [v1 defaultStore];
  if (!v2)
  {
    goto LABEL_13;
  }

  v7 = v2;
  v0[21] = sub_100104DCC();

  v8 = [objc_allocWithZone(FLTopLevelViewModel) initWithBundleIdentifier:FLFollowUpPreferencesBundleIdentifier clientIdentifier:0];
  v0[22] = v8;
  if (qword_10015AB40 != -1)
  {
    swift_once();
  }

  v9 = qword_10015FA30;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000CF3DC;
  v10 = swift_continuation_init();
  v0[17] = sub_10004DED0(&unk_10015FA00, &qword_100115DA0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10009F7E8;
  v0[13] = &unk_1001512F8;
  v0[14] = v10;
  [v8 sapp_groupsWithQueue:v9 completion:v0 + 10];
  v2 = v0 + 2;

  return _swift_continuation_await(v2);
}

uint64_t sub_1000CF3DC()
{

  return _swift_task_switch(sub_1000CF4BC, 0, 0);
}

uint64_t sub_1000CF4BC()
{
  v2 = *(v0 + 184);
  v3 = *(v0 + 144);
  v4 = v3 >> 62;
  if ((v2 - 1) < 2)
  {
    if (v4)
    {
      goto LABEL_44;
    }

    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
LABEL_45:
      v18 = 1;
LABEL_46:

      v11 = 0;
      goto LABEL_47;
    }

LABEL_4:
    v6 = 0;
    v7 = v3 & 0xC000000000000001;
    v1 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v7)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          v5 = _CocoaArrayWrapper.endIndex.getter();
          if (!v5)
          {
            goto LABEL_45;
          }

          goto LABEL_4;
        }

        v8 = *(v3 + 8 * v6 + 32);
        swift_unknownObjectRetain();
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_13;
        }
      }

      if (sub_1000CEB0C(0, v8, *(v0 + 152), *(v0 + 160), *(v0 + 168)))
      {
        goto LABEL_26;
      }

      swift_unknownObjectRelease();
      ++v6;
      if (v9 == v5)
      {
        v15 = 1;
        goto LABEL_30;
      }
    }
  }

  if (v4)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_16;
    }

LABEL_53:

    v11 = 0;
    goto LABEL_54;
  }

  v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_53;
  }

LABEL_16:
  v5 = 0;
  v2 = v3 & 0xFFFFFFF8;
  while ((v3 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_25;
    }

LABEL_20:
    if (sub_1000CEB0C(*(v0 + 184), v11, *(v0 + 152), *(v0 + 160), *(v0 + 168)))
    {

LABEL_54:

      goto LABEL_55;
    }

    swift_unknownObjectRelease();
    ++v5;
    if (v7 == v10)
    {
      goto LABEL_53;
    }
  }

  if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_42;
  }

  v11 = *(v3 + 8 * v5 + 32);
  swift_unknownObjectRetain();
  v7 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  v12 = [swift_unknownObjectRetain() items];
  sub_100008294(0, &qword_10015F9A0, FLFollowUpItem_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_unknownObjectRelease();
  v15 = v14 == 0;
LABEL_30:
  v21 = v15;
  v16 = 0;
  while (2)
  {
    if (v7)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      goto LABEL_34;
    }

    if (v16 >= *(v1 + 16))
    {
      goto LABEL_43;
    }

    v11 = *(v3 + 8 * v16 + 32);
    swift_unknownObjectRetain();
    v17 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
LABEL_34:
      if (sub_1000CEB0C(2u, v11, *(v0 + 152), *(v0 + 160), *(v0 + 168)))
      {
        goto LABEL_40;
      }

      swift_unknownObjectRelease();
      ++v16;
      if (v17 == v5)
      {
        v18 = v21;
        goto LABEL_46;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_40:

  v18 = v21;
LABEL_47:

  swift_unknownObjectRelease();

  if (v2 != 1)
  {
    if (!v18)
    {
      goto LABEL_55;
    }

    goto LABEL_51;
  }

  if ((v18 & 1) == 0)
  {
LABEL_51:
    swift_unknownObjectRelease();
    v11 = 0;
  }

LABEL_55:
  v19 = *(v0 + 8);

  return v19(v11);
}

void *sub_1000CF860(void *a1, void *a2)
{
  v90 = type metadata accessor for PrimarySettingsListItemModel(0);
  v4 = *(v90 - 8);
  v5 = __chkstk_darwin(v90);
  v97 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = v79 - v8;
  __chkstk_darwin(v7);
  v11 = v79 - v10;
  p_base_meths = &WalletAndApplePayOrPaymentAndContactlessListItemProvider.base_meths;
  v91 = a2;
  v13 = [a2 identifier];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  if (([a1 displayStyle] & 2) != 0)
  {
    sub_1000D0018(a1, v91, v11);
    sub_10004DED0(&unk_10015FB80, &unk_100116A40);
    v28 = (v4[80] + 32) & ~v4[80];
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1001103C0;
    sub_1000D0C28(v11, v20 + v28, type metadata accessor for PrimarySettingsListItemModel);
    return v20;
  }

  result = [a1 uniqueIdentifier];
  if (!result)
  {
    goto LABEL_52;
  }

  v22 = result;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v24;

  v25 = sub_1000D0614();
  v26 = v25;
  if (v25)
  {
    v27 = 0;
    v98 = 0;
    v99 = v25;
  }

  else
  {
    v99 = sub_1000D0A24();
    v27 = v29;
    if (v29)
    {

      v30 = 1;
    }

    else
    {
      v99 = 0;
      v30 = 255;
    }

    v98 = v30;
  }

  v31 = v26;
  result = [a1 title];
  if (!result)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v32 = result;
  v96 = v23;
  v100 = v4;
  v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v88 = v33;

  result = [a1 informativeText];
  if (!result)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v34 = result;
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38 = v90;
  v39 = &v9[*(v90 + 20)];
  v40 = v9;
  v41 = v99;
  *v39 = v99;
  *(v39 + 1) = v27;
  v42 = v98;
  v39[16] = v98;
  v43 = v88;
  *(v39 + 3) = v95;
  *(v39 + 4) = v43;
  *(v39 + 5) = v35;
  *(v39 + 6) = v37;
  v87 = type metadata accessor for PrimarySettingsListItemViewType(0);
  swift_storeEnumTagMultiPayload();
  v44 = v80;
  *v40 = v96;
  *(v40 + 8) = v44;
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = 1;
  v45 = *(v38 + 24);
  v96 = v40;
  *(v40 + v45) = 4;

  sub_10005950C(v41, v27, v42);

  v79[1] = v37;

  v20 = sub_10002C850(0, 1, 1, _swiftEmptyArrayStorage);
  v47 = *(v20 + 16);
  v46 = *(v20 + 24);
  v48 = v47 + 1;
  if (v47 >= v46 >> 1)
  {
LABEL_45:
    v20 = sub_10002C850((v46 > 1), v48, 1, v20);
  }

  v49 = v100;
  *(v20 + 16) = v48;
  v86 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v85 = v49[9];
  sub_1000D0C28(v96, v20 + v86 + v85 * v47, type metadata accessor for PrimarySettingsListItemModel);
  result = [a1 actions];
  if (result)
  {
    v50 = result;
    sub_1000D0BDC();
    v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v47 >> 62)
    {
      v48 = _CocoaArrayWrapper.endIndex.getter();
      if (v48)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v48)
      {
LABEL_23:
        v51 = 0;
        v89 = v47 & 0xC000000000000001;
        v81 = v47 & 0xFFFFFFFFFFFFFF8;
        v82 = v48;
        v83 = v47;
        v84 = a1;
        do
        {
          if (v89)
          {
            v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v46 = *(v81 + 16);
            if (v51 >= v46)
            {
              goto LABEL_44;
            }

            v52 = *(v47 + 8 * v51 + 32);
          }

          v53 = v52;
          v54 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          v55 = [v52 p_base_meths[478]];
          if (v55 || (v55 = [v53 label]) != 0)
          {

            result = [v53 p_base_meths[478]];
            v95 = v51 + 1;
            v96 = v20;
            if (!result)
            {
              result = [v53 label];
              if (!result)
              {
                goto LABEL_51;
              }
            }

            v100 = v53;
            v56 = result;
            v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v94 = v57;

            result = [a1 uniqueIdentifier];
            if (!result)
            {
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

            v58 = result;
            v92 = v51;
            v59 = v27;
            v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v62 = v61;

            v63 = [v91 restrictionEnabled];
            result = [v100 label];
            if (!result)
            {
              goto LABEL_50;
            }

            v64 = result;
            if (v63)
            {
              v65 = 7;
            }

            else
            {
              v65 = 6;
            }

            v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v68 = v67;

            v69 = v90;
            v70 = v97;
            v71 = v97 + *(v90 + 20);
            v72 = v99;
            *v71 = v99;
            *(v71 + 8) = v59;
            v73 = v98;
            *(v71 + 16) = v98;
            *(v71 + 24) = v66;
            *(v71 + 32) = v68;
            swift_storeEnumTagMultiPayload();
            *v70 = v60;
            *(v70 + 8) = v62;
            v74 = v94;
            *(v70 + 16) = v93;
            *(v70 + 24) = v74;
            *(v70 + 32) = 2;
            *(v70 + *(v69 + 24)) = v65;
            v27 = v59;
            sub_10005950C(v72, v59, v73);
            sub_10005950C(v72, v59, v73);
            v20 = v96;
            v75 = *(v96 + 16);
            v76 = *(v96 + 24);

            if (v75 >= v76 >> 1)
            {
              v20 = sub_10002C850((v76 > 1), v75 + 1, 1, v20);
            }

            p_base_meths = (&WalletAndApplePayOrPaymentAndContactlessListItemProvider + 32);
            v47 = v83;
            v51 = v92;
            v54 = v95;

            sub_100054F18(v99, v27, v98);

            *(v20 + 16) = v75 + 1;
            sub_1000D0C28(v97, v20 + v86 + v75 * v85, type metadata accessor for PrimarySettingsListItemModel);
            a1 = v84;
            v48 = v82;
          }

          else
          {
          }

          ++v51;
        }

        while (v54 != v48);
      }
    }

    v77 = v99;
    v78 = v98;
    sub_100054F18(v99, v27, v98);
    sub_100054F18(v77, v27, v78);

    return v20;
  }

LABEL_55:
  __break(1u);
  return result;
}

id sub_1000D0018@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PrimarySettingsListItemViewType(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v65[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v65[-v10];
  v12 = [a1 displayStyle];
  v13 = [a1 title];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  v66 = [a2 restrictionEnabled];
  *v9 = v15;
  v9[1] = v17;
  if ((v12 & 0x10) == 0)
  {
    v9[2] = 1;
  }

  swift_storeEnumTagMultiPayload();
  sub_1000D0C28(v9, v11, type metadata accessor for PrimarySettingsListItemViewType);

  v18 = [a2 identifier];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {
    goto LABEL_8;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_11;
  }

  v44 = [a2 identifier];
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  if (v45 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v47 == v48)
  {
LABEL_8:

LABEL_9:

LABEL_11:
    v24 = [a2 identifier];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
    {
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    if (([a1 displayStyle] & 2) != 0)
    {
      result = [a1 actions];
      if (!result)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v31 = result;
      sub_1000D0BDC();
      v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v32 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result)
        {
          goto LABEL_19;
        }
      }

      else
      {
        result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
LABEL_19:
          if ((v32 & 0xC000000000000001) != 0)
          {
            v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
            v34 = v33;

            result = [a1 uniqueIdentifier];
            if (result)
            {
              v35 = result;
              v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v38 = v37;

              v39 = [v34 identifier];
              if (v39)
              {
                v40 = v39;
                v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v43 = v42;

LABEL_34:

                v59 = 2;
                goto LABEL_39;
              }

              result = [v34 label];
              if (result)
              {
                v40 = result;

                v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v43 = v60;

                goto LABEL_34;
              }

LABEL_48:
              __break(1u);
              return result;
            }

LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v33 = *(v32 + 32);
            goto LABEL_22;
          }

          __break(1u);
          goto LABEL_45;
        }
      }
    }

LABEL_37:
    result = [a1 uniqueIdentifier];
    if (result)
    {
      v61 = result;

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v62;

      v41 = 0;
      v43 = 0;
      v59 = 1;
      goto LABEL_39;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v49)
  {
    goto LABEL_11;
  }

  v50 = [a2 identifier];
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  if (v51 == 0xD000000000000020 && 0x8000000100124DA0 == v53)
  {
    goto LABEL_9;
  }

  v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v54)
  {
    goto LABEL_11;
  }

  v55 = [a2 identifier];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v56;

  v57 = [a2 accountID];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v58;

  v59 = 0;
LABEL_39:
  if (v66)
  {
    v63 = 5;
  }

  else
  {
    v63 = 4;
  }

  *a3 = v36;
  *(a3 + 8) = v38;
  *(a3 + 16) = v41;
  *(a3 + 24) = v43;
  *(a3 + 32) = v59;
  v64 = type metadata accessor for PrimarySettingsListItemModel(0);
  result = sub_1000D0C28(v11, a3 + *(v64 + 20), type metadata accessor for PrimarySettingsListItemViewType);
  *(a3 + *(v64 + 24)) = v63;
  return result;
}

id sub_1000D0614()
{
  result = [v0 representingBundlePath];
  if (result)
  {
    v2 = result;
    v3 = [v0 bundleIconName];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
      v8 = [objc_allocWithZone(NSBundle) initWithPath:v2];

      if (v8)
      {
        v9 = [objc_opt_self() imageNamed:v4 inBundle:v8];

        if (v9)
        {

          if ([v9 renderingMode] == 1)
          {

            return v9;
          }

          else
          {
            v16 = sub_1000D0884(v9);

            return v16;
          }
        }

        if (qword_10015AAC8 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_10000659C(v10, qword_1001696D0);

        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v17 = v14;
          *v13 = 136446210;
          v15 = sub_100025CF0(v5, v7, &v17);

          *(v13 + 4) = v15;
          _os_log_impl(&_mh_execute_header, v11, v12, "Could not find FLFollowUpItem resolvedImage %{public}s", v13, 0xCu);
          sub_10000665C(v14);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

id sub_1000D0884(void *a1)
{
  v2 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{43.5, 43.5}];
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = a1;
  *(v3 + 40) = vdupq_n_s64(0x4045C00000000000uLL);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000D0C90;
  *(v4 + 24) = v3;
  v9[4] = sub_1000D0CA0;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000D0B90;
  v9[3] = &unk_100151370;
  v5 = _Block_copy(v9);
  v6 = a1;

  v7 = [v2 imageWithActions:v5];

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

id sub_1000D0A24()
{
  result = [v0 representingBundlePath];
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(NSBundle) initWithPath:result];

    if (v3)
    {
      v4 = [v3 bundleIdentifier];
      if (v4)
      {
        v5 = v4;
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v6;
      }
    }

    return 0;
  }

  return result;
}

void sub_1000D0ADC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6)
{
  v11 = SFAppTintColor();
  [a6 drawInRect:{a1, a2, a3, a4}];
  [v11 setFill];
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  UIRectFillUsingBlendMode(v13, kCGBlendModeSourceIn);
}

void sub_1000D0B90(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

unint64_t sub_1000D0BDC()
{
  result = qword_10015E8F0;
  if (!qword_10015E8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10015E8F0);
  }

  return result;
}

uint64_t sub_1000D0C28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D0CC8()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100008294(0, &qword_10015C9D0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_1000D52AC(&qword_10015FA10, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10004DED0(&unk_10015FD30, &unk_100117260);
  sub_1000525A0(&qword_10015FA20, &unk_10015FD30, &unk_100117260, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10015FBA0 = result;
  return result;
}

objc_class *sub_1000D0F3C()
{
  ObjectType = swift_getObjectType();
  v0 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v79 = *(v0 - 8);
  v80 = v0;
  __chkstk_darwin(v0);
  v78 = v59 - v1;
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v2 - 8);
  v89 = v59 - v3;
  v73 = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  __chkstk_darwin(v73);
  v70 = (v59 - v4);
  v76 = sub_10004DED0(&unk_10015FCD8, &qword_100117348);
  v86 = *(v76 - 8);
  v75 = *(v86 + 64);
  v5 = __chkstk_darwin(v76);
  v71 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v85 = v59 - v7;
  v63 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v62 = *(v63 - 1);
  __chkstk_darwin(v63);
  v9 = (v59 - v8);
  v10 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v87 = *(v10 - 8);
  v88 = v10;
  v77 = *(v87 + 64);
  v11 = __chkstk_darwin(v10);
  v74 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = v59 - v13;
  v84 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v90 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = v59 - v14;
  v15 = sub_10004DED0(&unk_10015C7B0, &unk_100112AA0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (v59 - v17);
  v59[0] = sub_10004DED0(&qword_10015FCD0, &qword_100117340);
  v81 = *(v59[0] - 8);
  v19 = v81;
  v65 = *(v81 + 64);
  v20 = __chkstk_darwin(v59[0]);
  v64 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v59 - v22;
  v24 = sub_10004DED0(&qword_10015C7C0, &qword_100112AB0);
  v67 = v24;
  v68 = *(v24 - 8);
  v25 = v68;
  __chkstk_darwin(v24);
  v27 = v59 - v26;
  *v18 = 1;
  v28 = enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:);
  (*(v16 + 104))(v18, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v15);
  v59[1] = sub_10004DED0(&unk_10015FC00, &qword_100111C00);
  v66 = v27;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v16 + 8))(v18, v15);
  v29 = v69;
  (*(v25 + 16))(&v69[OBJC_IVAR____TtC11SettingsApp53CoreTelephonyClientActiveSubscriptionsDelegateAdaptor_satelliteCarrierNameStream], v27, v24);
  v60 = *(v19 + 16);
  v30 = v23;
  v61 = v23;
  v31 = v59[0];
  v60(&v29[OBJC_IVAR____TtC11SettingsApp53CoreTelephonyClientActiveSubscriptionsDelegateAdaptor_satelliteCarrierNameStreamContinuation], v23, v59[0]);
  *v9 = 1;
  v32 = v62;
  v33 = v63;
  (*(v62 + 104))(v9, v28, v63);
  v35 = v82;
  v34 = v83;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v32 + 8))(v9, v33);
  (*(v90 + 16))(&v29[OBJC_IVAR____TtC11SettingsApp53CoreTelephonyClientActiveSubscriptionsDelegateAdaptor_coreTelephonyUpdateStream], v34, v84);
  v36 = *(v87 + 16);
  v62 = v87 + 16;
  v63 = v36;
  (v36)(&v29[OBJC_IVAR____TtC11SettingsApp53CoreTelephonyClientActiveSubscriptionsDelegateAdaptor_coreTelephonyUpdateStreamContinuation], v35, v88);
  v91.receiver = v29;
  v91.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v91, "init");
  sub_1000525A0(&qword_10015C930, &qword_10015C900, &qword_1001123C0, &protocol conformance descriptor for AsyncStream<A>);
  ObjectType = v37;
  AsyncSequence.debounce<>(for:tolerance:)();
  sub_1000525A0(&qword_10015FCE8, &unk_10015F9E0, &unk_100112BB0, &protocol conformance descriptor for AsyncDebounceSequence<A, B>);
  v38 = v85;
  AsyncMapSequence.init(_:transform:)();
  v39 = type metadata accessor for TaskPriority();
  v40 = *(v39 - 8);
  v70 = *(v40 + 56);
  v73 = v40 + 56;
  v70(v89, 1, 1, v39);
  v41 = v86;
  v42 = v71;
  v43 = v76;
  (*(v86 + 16))(v71, v38, v76);
  v44 = v64;
  v60(v64, v30, v31);
  v45 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v46 = v81;
  v47 = (v75 + *(v81 + 80) + v45) & ~*(v81 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  (*(v41 + 32))(v48 + v45, v42, v43);
  (*(v46 + 32))(v48 + v47, v44, v31);
  v49 = v89;
  sub_100094AF4(0, 0, v89, &unk_100117360, v48);

  v70(v49, 1, 1, v39);
  v50 = v74;
  v51 = v82;
  v52 = v88;
  (v63)(v74, v82, v88);
  v53 = v87;
  v54 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  (*(v53 + 32))(v55 + v54, v50, v52);
  sub_100094AF4(0, 0, v49, &unk_100117370, v55);

  v56 = v78;
  AsyncStream.Continuation.yield<A>()();
  v57 = ObjectType;

  (*(v79 + 8))(v56, v80);
  (*(v86 + 8))(v85, v43);
  (*(v53 + 8))(v51, v52);
  (*(v90 + 8))(v83, v84);
  (*(v81 + 8))(v61, v31);
  (*(v68 + 8))(v66, v67);
  return v57;
}

uint64_t sub_1000D1ADC()
{
  if (qword_10015AB48 != -1)
  {
    swift_once();
  }

  v1 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:qword_10015FBA0];
  v0[40] = v1;
  v0[2] = v0;
  v0[7] = v0 + 37;
  v0[3] = sub_1000D1C4C;
  v2 = swift_continuation_init();
  v0[33] = sub_10004DED0(&qword_10015FD10, &qword_100117398);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_1000D5304;
  v0[29] = &unk_1001513E8;
  v0[30] = v2;
  [v1 getActiveContextsWithCallback:v0 + 26];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000D1C4C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_1000D2E74;
  }

  else
  {
    v2 = sub_1000D1D5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D1D5C()
{
  v46 = v0;
  v2 = v0[37];
  v0[42] = v2;
  v3 = [v2 subscriptions];
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = v3;
    sub_100008294(0, &qword_10015FD28, CTXPCContextInfo_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = _swiftEmptyArrayStorage;
    if (v6 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v44 = v0;
      v4 = 0;
      v1 = v6 & 0xC000000000000001;
      while (1)
      {
        if (v1)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v8 = *(v6 + 8 * v4 + 32);
        }

        v9 = v8;
        v0 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v10 = [v8 context];
        v11 = [v10 slotID];

        if (v11)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v4;
        if (v0 == i)
        {
          v0 = v44;
          v12 = v45;
          v4 = _swiftEmptyArrayStorage;
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
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13)
    {
      goto LABEL_23;
    }

LABEL_31:

    v20 = _swiftEmptyArrayStorage;
    goto LABEL_32;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_31;
  }

LABEL_23:
  v45 = v4;
  v14 = &v45;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  v15 = v4;
  v16 = 0;
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = *(v12 + 8 * v16 + 32);
    }

    v18 = v17;
    ++v16;
    v19 = [v17 context];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v13 != v16);

  v20 = v45;
  v4 = v15;
LABEL_32:
  v14 = (v0 + 26);
  v1 = (v0 + 39);
  v0[43] = v20;
  v0[37] = v4;
  v21 = v20 & 0xFFFFFFFFFFFFFF8;
  if (v20 >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[44] = v21;
  v0[45] = v22;
  v23 = kCTRegistrationStatusRegisteredRoaming;
  v0[46] = kCTRegistrationStatusRegisteredHome;
  v0[47] = v23;
  v0[54] = v4;
  v24 = v0[43];
  if (v22)
  {
    if ((v24 & 0xC000000000000001) == 0)
    {
      if (*(v21 + 16))
      {
        v25 = *(v24 + 32);
LABEL_38:
        v26 = v25;
        v0[48] = v25;
        v0[49] = 1;
        v27 = v0 + 10;
        v28 = v0[40];
        v0[10] = v0;
        v0[15] = v1;
        v0[11] = sub_1000D2374;
        v29 = swift_continuation_init();
        v0[33] = sub_10004DED0(&qword_10015FD18, &qword_1001173A0);
        v0[26] = _NSConcreteStackBlock;
        v0[27] = 1107296256;
        v0[28] = sub_1000D5304;
        v0[29] = &unk_100151410;
        v0[30] = v29;
        [v28 copyRegistrationDisplayStatus:v26 completion:v14];
        goto LABEL_46;
      }

      __break(1u);
      goto LABEL_56;
    }

LABEL_54:
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_38;
  }

  if (!(v4 >> 62))
  {
    v30 = v4 & 0xFFFFFFFFFFFFFF8;
    v31 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_41;
  }

LABEL_56:
  v30 = v4 & 0xFFFFFFFFFFFFFF8;
  v31 = _CocoaArrayWrapper.endIndex.getter();
LABEL_41:
  v32 = v0[54];
  v0[51] = v30;
  v0[52] = v31;
  v0[53] = v4;
  if (v31)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(v30 + 16))
      {
        __break(1u);
        return _swift_continuation_await(v31);
      }

      v33 = *(v32 + 32);
    }

    v34 = v33;
    v0[55] = v33;
    v0[56] = 1;
    v27 = v0 + 18;
    v35 = v0[40];
    v36 = String._bridgeToObjectiveC()();
    v0[57] = v36;
    v37 = [objc_allocWithZone(CTBundle) initWithBundleType:1];
    v0[58] = v37;
    v0[18] = v0;
    v0[23] = v1;
    v0[19] = sub_1000D2A20;
    v38 = swift_continuation_init();
    v0[33] = sub_10004DED0(&qword_10015FD20, qword_1001173A8);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_1000D5304;
    v0[29] = &unk_100151438;
    v0[30] = v38;
    [v35 copyCarrierBundleValueWithDefault:v34 key:v36 bundleType:v37 completion:v0 + 26];
LABEL_46:
    v31 = v27;

    return _swift_continuation_await(v31);
  }

  v39 = v0[42];
  v40 = v0[40];

  v41 = v0[53];
  v42 = v0[1];

  return v42(v41);
}

uint64_t sub_1000D2374()
{
  v1 = *(*v0 + 112);
  *(*v0 + 400) = v1;
  if (v1)
  {

    v2 = sub_1000D3054;
  }

  else
  {
    v2 = sub_1000D2498;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D2498()
{
  v1 = v0 + 312;
  v2 = *(v0 + 312);
  if (([v2 isSatelliteSystem] & 1) == 0)
  {
    v13 = *(v0 + 384);
LABEL_28:
    v24 = *(v0 + 392);
    v25 = *(v0 + 360);

    if (v24 == v25)
    {
      v23 = *(v0 + 432);
      goto LABEL_30;
    }

    v2 = *(v0 + 392);
    goto LABEL_38;
  }

  v3 = [v2 registrationDisplayStatus];
  v4 = *(v0 + 368);
  if (!v3)
  {
    if (v4)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      goto LABEL_14;
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v5 = v3;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (!v4)
  {
    goto LABEL_58;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v8)
  {
LABEL_14:

    goto LABEL_15;
  }

  if (v6 == v9 && v8 == v10)
  {
    goto LABEL_20;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_21;
  }

LABEL_15:
  v3 = [v2 registrationDisplayStatus];
  v14 = *(v0 + 376);
  if (v3)
  {
    v15 = v3;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (v14)
    {
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v18)
      {
        if (v16 == v19 && v18 == v20)
        {
LABEL_20:

LABEL_21:
          v21 = *(v0 + 384);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v0 + 296) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 296) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_57;
          }

          while (1)
          {
            v22 = *(v0 + 384);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v23 = *(v0 + 296);
            v2 = *(v0 + 392);
            *(v0 + 432) = v23;
            if (v2 != *(v0 + 360))
            {
              break;
            }

LABEL_30:

            if (v23 >> 62)
            {
              v26 = v23 & 0xFFFFFFFFFFFFFF8;
              v27 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v26 = v23 & 0xFFFFFFFFFFFFFF8;
              v27 = *(v26 + 16);
            }

            v28 = *(v0 + 432);
            *(v0 + 408) = v26;
            *(v0 + 416) = v27;
            *(v0 + 424) = _swiftEmptyArrayStorage;
            if (!v27)
            {
              v41 = *(v0 + 336);
              v42 = *(v0 + 320);

              v43 = *(v0 + 424);
              v44 = *(v0 + 8);

              return v44(v43);
            }

            if ((v28 & 0xC000000000000001) != 0)
            {
              goto LABEL_55;
            }

            if (*(v26 + 16))
            {
              v29 = *(v28 + 32);
              goto LABEL_36;
            }

            __break(1u);
LABEL_57:
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

LABEL_38:
          v36 = *(v0 + 344);
          if ((v36 & 0xC000000000000001) != 0)
          {
            v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v2 >= *(*(v0 + 352) + 16))
            {
              goto LABEL_54;
            }

            v37 = *(v36 + 8 * v2 + 32);
          }

          v38 = v37;
          *(v0 + 384) = v37;
          *(v0 + 392) = v2 + 1;
          if (!__OFADD__(v2, 1))
          {
            v31 = (v0 + 80);
            v39 = *(v0 + 320);
            *(v0 + 80) = v0;
            *(v0 + 120) = v1;
            *(v0 + 88) = sub_1000D2374;
            v40 = swift_continuation_init();
            *(v0 + 264) = sub_10004DED0(&qword_10015FD18, &qword_1001173A0);
            *(v0 + 208) = _NSConcreteStackBlock;
            *(v0 + 216) = 1107296256;
            *(v0 + 224) = sub_1000D5304;
            *(v0 + 232) = &unk_100151410;
            *(v0 + 240) = v40;
            [v39 copyRegistrationDisplayStatus:v38 completion:v0 + 208];
LABEL_43:
            v3 = v31;

            return _swift_continuation_await(v3);
          }

          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_36:
          v30 = v29;
          *(v0 + 440) = v29;
          *(v0 + 448) = 1;
          v31 = (v0 + 144);
          v32 = *(v0 + 320);
          v33 = String._bridgeToObjectiveC()();
          *(v0 + 456) = v33;
          v34 = [objc_allocWithZone(CTBundle) initWithBundleType:1];
          *(v0 + 464) = v34;
          *(v0 + 144) = v0;
          *(v0 + 184) = v1;
          *(v0 + 152) = sub_1000D2A20;
          v35 = swift_continuation_init();
          *(v0 + 264) = sub_10004DED0(&qword_10015FD20, qword_1001173A8);
          *(v0 + 208) = _NSConcreteStackBlock;
          *(v0 + 216) = 1107296256;
          *(v0 + 224) = sub_1000D5304;
          *(v0 + 232) = &unk_100151438;
          *(v0 + 240) = v35;
          [v32 copyCarrierBundleValueWithDefault:v30 key:v33 bundleType:v34 completion:v0 + 208];
          goto LABEL_43;
        }

        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v46)
        {
          goto LABEL_21;
        }

        goto LABEL_27;
      }

LABEL_26:

LABEL_27:
      v13 = v2;
      v2 = *(v0 + 384);
      goto LABEL_28;
    }
  }

  else if (v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_26;
  }

LABEL_59:
  __break(1u);
  return _swift_continuation_await(v3);
}

uint64_t sub_1000D2A20()
{
  v1 = *(*v0 + 176);
  *(*v0 + 472) = v1;
  if (v1)
  {

    v2 = sub_1000D3244;
  }

  else
  {
    v2 = sub_1000D2B38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D2B38()
{
  v1 = *(v0 + 312);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *(v0 + 208) = 0;
    *(v0 + 216) = 0;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v2 = *(v0 + 216);
    if (v2)
    {
      v3 = *(v0 + 208);
      v4 = *(v0 + 456);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1 = *(v0 + 424);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_25;
      }

      while (1)
      {
        v7 = *(v1 + 2);
        v6 = *(v1 + 3);
        if (v7 >= v6 >> 1)
        {
          v1 = sub_1000C4E44((v6 > 1), v7 + 1, 1, v1);
        }

        *(v1 + 2) = v7 + 1;
        v8 = &v1[16 * v7];
        *(v8 + 4) = v3;
        *(v8 + 5) = v2;
        v9 = *(v0 + 448);
        *(v0 + 424) = v1;
        if (v9 == *(v0 + 416))
        {
          goto LABEL_11;
        }

LABEL_15:
        v16 = *(v0 + 432);
        if ((v16 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(*(v0 + 408) + 16))
          {
            goto LABEL_24;
          }

          v17 = *(v16 + 8 * v9 + 32);
        }

        v1 = v17;
        *(v0 + 440) = v17;
        *(v0 + 448) = v9 + 1;
        if (!__OFADD__(v9, 1))
        {
          v18 = *(v0 + 320);
          v19 = String._bridgeToObjectiveC()();
          *(v0 + 456) = v19;
          v20 = [objc_allocWithZone(CTBundle) initWithBundleType:1];
          *(v0 + 464) = v20;
          *(v0 + 144) = v0;
          *(v0 + 184) = v0 + 312;
          *(v0 + 152) = sub_1000D2A20;
          v21 = swift_continuation_init();
          *(v0 + 264) = sub_10004DED0(&qword_10015FD20, qword_1001173A8);
          *(v0 + 208) = _NSConcreteStackBlock;
          *(v0 + 216) = 1107296256;
          *(v0 + 224) = sub_1000D5304;
          *(v0 + 232) = &unk_100151438;
          *(v0 + 240) = v21;
          [v18 copyCarrierBundleValueWithDefault:v1 key:v19 bundleType:v20 completion:v0 + 208];

          return _swift_continuation_await(v0 + 144);
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v1 = sub_1000C4E44(0, *(v1 + 2) + 1, 1, v1);
      }
    }

    v1 = *(v0 + 440);
  }

  else
  {
  }

  v10 = *(v0 + 456);
  v2 = *(v0 + 448);
  v3 = *(v0 + 416);

  if (v2 != v3)
  {
    v9 = *(v0 + 448);
    goto LABEL_15;
  }

LABEL_11:
  v11 = *(v0 + 336);
  v12 = *(v0 + 320);

  v13 = *(v0 + 424);
  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_1000D2E74(uint64_t a1)
{
  v15 = v1;
  swift_willThrow();
  if (qword_10015AA90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169628);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 320);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_100025CF0(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error occurred while attempting to resolve carrier name for satellite connectivity: %{public}s", v7, 0xCu);
    sub_10000665C(v8);
  }

  else
  {
  }

  v12 = *(v1 + 8);

  return v12(_swiftEmptyArrayStorage);
}

uint64_t sub_1000D3054(uint64_t a1)
{
  v17 = v1;
  v2 = v1[48];
  v3 = v1[42];
  swift_willThrow();

  if (qword_10015AA90 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000659C(v4, qword_100169628);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[40];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = sub_100025CF0(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error occurred while attempting to resolve carrier name for satellite connectivity: %{public}s", v9, 0xCu);
    sub_10000665C(v10);
  }

  else
  {
  }

  v14 = v1[1];

  return v14(_swiftEmptyArrayStorage);
}

uint64_t sub_1000D3244(uint64_t a1)
{
  v20 = v1;
  v2 = v1[58];
  v3 = v1[57];
  v4 = v1[55];
  v5 = v1[42];
  swift_willThrow();

  v6 = v1[53];
  if (qword_10015AA90 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000659C(v7, qword_100169628);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v1[40];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = sub_100025CF0(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error occurred while attempting to resolve carrier name for satellite connectivity: %{public}s", v12, 0xCu);
    sub_10000665C(v13);
  }

  else
  {
  }

  v17 = v1[1];

  return v17(v6);
}

uint64_t sub_1000D3440(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100018544((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_10004DED0(&unk_10015C800, &unk_100112BC0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000D3518(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000D35A8;

  return sub_1000D1AC0();
}

uint64_t sub_1000D35A8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000D36B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_10004DED0(&unk_10015C7A0, &unk_100112A90);
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  v5[16] = swift_task_alloc();
  v7 = sub_10004DED0(&unk_10015FD00, &unk_100117380);
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000D3828, 0, 0);
}

uint64_t sub_1000D3828()
{
  v1 = *(v0 + 128);
  sub_10004DED0(&unk_10015FCD8, &qword_100117348);
  AsyncMapSequence.base.getter();
  v2 = AsyncDebounceSequence.makeAsyncIterator()();
  sub_1000068B0(v1, &unk_10015F9E0, &unk_100112BB0);
  *(v0 + 48) = v2;
  AsyncMapSequence.transform.getter();
  sub_10004DED0(&unk_10015FC00, &qword_100111C00);
  sub_1000525A0(&qword_10015FCE8, &unk_10015F9E0, &unk_100112BB0, &protocol conformance descriptor for AsyncDebounceSequence<A, B>);
  AsyncMapSequence.Iterator.init(_:transform:)();

  return _swift_task_switch(sub_1000D397C, 0, 0);
}

uint64_t sub_1000D397C()
{
  *(v0 + 160) = AsyncMapSequence.Iterator.baseIterator.modify();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  v2 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v1 = v0;
  v1[1] = sub_1000D3A44;

  return AsyncDebounceSequence.Iterator.next()(v0 + 208, v2);
}

uint64_t sub_1000D3A44()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1000D3CB8;
  }

  else
  {
    *(v2 + 209) = *(v2 + 208);
    v3 = sub_1000D3B60;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000D3B60()
{
  v1 = *(v0 + 209);
  (*(v0 + 160))();
  if (v1)
  {

    return _swift_task_switch(sub_1000D3FFC, 0, 0);
  }

  else
  {
    v2 = AsyncMapSequence.Iterator.transform.getter();
    *(v0 + 184) = v3;
    v6 = (v2 + *v2);
    v4 = swift_task_alloc();
    *(v0 + 192) = v4;
    *v4 = v0;
    v4[1] = sub_1000D3D64;

    return v6(v0 + 64);
  }
}

uint64_t sub_1000D3CB8()
{
  v0[7] = v0[22];
  v2 = v0[20];
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();
  swift_willThrowTypedImpl();

  return v2();
}

uint64_t sub_1000D3D64()
{
  v1 = *v0;

  *(v1 + 200) = *(v1 + 64);

  return _swift_task_switch(sub_1000D3E9C, 0, 0);
}

uint64_t sub_1000D3EB8()
{
  if (static Task<>.isCancelled.getter())
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    v1 = v0[1];

    return v1();
  }

  else
  {
    v4 = v0[13];
    v3 = v0[14];
    v5 = v0[12];
    v0[9] = v0[25];
    sub_10004DED0(&qword_10015FCD0, &qword_100117340);
    AsyncStream.Continuation.yield(_:)();
    (*(v4 + 8))(v3, v5);

    return _swift_task_switch(sub_1000D397C, 0, 0);
  }
}

uint64_t sub_1000D3FFC()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000D408C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  sub_10004DED0(&unk_10015FCF0, &unk_100117B60);
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000D41EC, 0, 0);
}

uint64_t sub_1000D41EC()
{
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v2 = sub_1000D52AC(&qword_10015CB60, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1000D431C;
  v4 = v0[7];
  v5 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_1000D431C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1000D4668;
  }

  else
  {
    v2 = sub_1000D4430;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D444C()
{
  v1 = v0[7];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
LABEL_5:

    v4 = v0[1];

    return v4();
  }

  if (static Task<>.isCancelled.getter())
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);
    sub_1000068B0(v3, &unk_10015FCF0, &unk_100117B60);
    goto LABEL_5;
  }

  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  AsyncStream.Continuation.yield<A>()();
  (*(v9 + 8))(v7, v8);
  sub_1000068B0(v6, &unk_10015FCF0, &unk_100117B60);
  v10 = sub_1000D52AC(&qword_10015CB60, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_1000D431C;
  v12 = v0[7];
  v13 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v12, v13, v10);
}

uint64_t sub_1000D4668()
{
  *(v0 + 16) = *(v0 + 96);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

id sub_1000D4718()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v7 = sub_10004DED0(&qword_10015FCD0, &qword_100117340);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  (*(v8 + 16))(&v12 - v9, v1 + OBJC_IVAR____TtC11SettingsApp53CoreTelephonyClientActiveSubscriptionsDelegateAdaptor_satelliteCarrierNameStreamContinuation, v7);
  AsyncStream.Continuation.finish()();
  (*(v8 + 8))(v10, v7);
  (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC11SettingsApp53CoreTelephonyClientActiveSubscriptionsDelegateAdaptor_coreTelephonyUpdateStreamContinuation, v3);
  AsyncStream.Continuation.finish()();
  (*(v4 + 8))(v6, v3);
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t type metadata accessor for CoreTelephonyClientActiveSubscriptionsDelegateAdaptor(uint64_t a1)
{
  result = qword_10015FBE8;
  if (!qword_10015FBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D4CC0(uint64_t a1)
{
  sub_100016490(319, &unk_10015C610, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_100016490(319, &unk_10015C620, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      sub_10001D810(319, &unk_10015C500, &type metadata accessor for AsyncStream);
      if (v3 <= 0x3F)
      {
        sub_10001D810(319, &unk_10015C358, &type metadata accessor for AsyncStream.Continuation);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1000D5048(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&unk_10015FCD8, &qword_100117348) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004DED0(&qword_10015FCD0, &qword_100117340) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000A924;

  return sub_1000D36B8(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1000D51B0(uint64_t a1)
{
  v4 = *(sub_10004DED0(&unk_10015FAA0, qword_100112870) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000ACE4;

  return sub_1000D408C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000D52AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1000D559C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10004DED0(&unk_10015E9E0, &unk_1001173F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  (*(v4 + 16))(&v8 - v5, v1 + OBJC_IVAR____TtC11SettingsApp34OffGridStateManagerDelegateAdaptor_offGridModeEnabledStreamContinuation, v3);
  AsyncStream.Continuation.finish()();
  (*(v4 + 8))(v6, v3);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t type metadata accessor for OffGridStateManagerDelegateAdaptor(uint64_t a1)
{
  result = qword_10015FD68;
  if (!qword_10015FD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D58F8(uint64_t a1)
{
  sub_100024C10(319, &qword_10015FD78, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_100024C10(319, &qword_10015FD80, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000D5B18(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1000D5B34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1000D5B7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000D5BC0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1000D5BEC()
{
  result = qword_10015FE00;
  if (!qword_10015FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015FE00);
  }

  return result;
}

Swift::Int sub_1000D5C40(Swift::UInt a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (a3)
  {
    if (a3 == 1)
    {
      Hasher._combine(_:)(5uLL);
      v6 = a1;
    }

    else if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        v6 = 3;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = (a1 | a2) != 0;
    }

    Hasher._combine(_:)(v6);
  }

  else
  {
    Hasher._combine(_:)(4uLL);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void sub_1000D5D48(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      Hasher._combine(_:)(5uLL);
      v4 = v2;
    }

    else if (v2 > 1)
    {
      if (v2 ^ 2 | v3)
      {
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = (v2 | v3) != 0;
    }

    Hasher._combine(_:)(v4);
  }

  else
  {
    Hasher._combine(_:)(4uLL);

    String.hash(into:)();
  }
}

Swift::Int sub_1000D5E18(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  if (v4)
  {
    if (v4 == 1)
    {
      Hasher._combine(_:)(5uLL);
      v5 = v2;
    }

    else if (v2 > 1)
    {
      if (v2 ^ 2 | v3)
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }
    }

    else
    {
      v5 = (v2 | v3) != 0;
    }

    Hasher._combine(_:)(v5);
  }

  else
  {
    Hasher._combine(_:)(4uLL);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t sub_1000D5EEC(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return a1 == a4;
      }

      return 0;
    }

    if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        return a6 == 2 && a4 == 3 && !a5;
      }

      else
      {
        return a6 == 2 && a4 == 2 && !a5;
      }
    }

    else
    {
      if (!(a1 | a2))
      {
        return a6 == 2 && !(a5 | a4);
      }

      return a6 == 2 && a4 == 1 && !a5;
    }
  }

  else
  {
    if (a6)
    {
      return 0;
    }

    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }
}

unint64_t sub_1000D5FEC()
{
  result = qword_10015FE10;
  if (!qword_10015FE10)
  {
    sub_100052374(&qword_10015FE08, &qword_1001174F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015FE10);
  }

  return result;
}

uint64_t sub_1000D6050()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100003CAC();
  static DispatchQoS.userInteractive.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_10001F7D4();
  sub_10004DED0(&unk_10015FD30, &unk_100117260);
  sub_1000525A0(&qword_10015FA20, &unk_10015FD30, &unk_100117260, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10015FE18 = result;
  return result;
}

uint64_t sub_1000D6284()
{
  v1 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v1 - 8);
  v94 = &v73 - v2;
  v3 = sub_10004DED0(&qword_10015C7C0, &qword_100112AB0);
  v92 = *(v3 - 8);
  v93 = v3;
  __chkstk_darwin(v3);
  v89 = &v73 - v4;
  v88 = sub_10004DED0(&unk_10015FDF0, &qword_100115CC0);
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v83 = &v73 - v5;
  v82 = sub_10004DED0(&unk_1001600D0, &unk_100117720);
  v96 = *(v82 - 8);
  __chkstk_darwin(v82);
  v95 = &v73 - v6;
  v7 = sub_10004DED0(&qword_10015FF60, &qword_100117580);
  v81 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v87 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v9;
  __chkstk_darwin(v8);
  v98 = &v73 - v10;
  v99 = sub_10004DED0(&qword_10015FF68, &qword_100117588);
  v11 = *(v99 - 8);
  __chkstk_darwin(v99);
  v13 = (&v73 - v12);
  v97 = sub_10004DED0(&qword_10015FF70, &unk_100117590);
  v100 = *(v97 - 8);
  v14 = __chkstk_darwin(v97);
  v80 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v15;
  __chkstk_darwin(v14);
  v17 = &v73 - v16;
  v18 = sub_10004DED0(&qword_10015FF78, qword_100117630);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v73 - v20;
  swift_defaultActor_initialize();
  v22 = OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_stewieStateMonitorDelegateAdaptor;
  *(v0 + v22) = [objc_allocWithZone(type metadata accessor for StewieStateMonitorDelegateAdaptor(0)) init];
  v23 = OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_offGridStateManagerDelegateAdaptor;
  v24 = [objc_allocWithZone(type metadata accessor for OffGridStateManagerDelegateAdaptor(0)) init];
  v74 = v23;
  *(v0 + v23) = v24;
  *v13 = 1;
  v25 = v99;
  (*(v11 + 104))(v13, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v99);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v11 + 8))(v13, v25);
  v90 = v19;
  v91 = v18;
  v26 = *(v19 + 16);
  v85 = v21;
  v26(v0 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_snapshots, v21, v18);
  v27 = *(v100 + 16);
  v28 = v0;
  v99 = v17;
  v78 = v100 + 16;
  v77 = v27;
  v27((v0 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_snapshotsContinuation), v17, v97);
  v29 = qword_10015AB50;
  v30 = *(v0 + v22);
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = qword_10015FE18;
  v32 = objc_allocWithZone(CTStewieStateMonitor);
  v33 = v31;
  v34 = [v32 initWithDelegate:v30 queue:v33];

  [v34 start];
  *(v28 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_stewieStateMonitor) = v34;
  v35 = objc_allocWithZone(IDSOffGridStateManager);
  v101 = 0;
  v76 = v34;
  v36 = [v35 initWithQueue:v33 error:&v101];
  v37 = v101;
  if (v36)
  {
    *(v28 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_idsOffGridStateManager) = v36;
    v38 = *(v28 + v74);
    v39 = v36;
    v40 = v37;
    [v39 setDelegate:v38];
  }

  else
  {
    v41 = v101;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10015AA90 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000659C(v42, qword_100169628);
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138543362;
      swift_errorRetain();
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v47;
      *v46 = v47;
      _os_log_impl(&_mh_execute_header, v43, v44, "Failed to create IDS state manager: %{public}@", v45, 0xCu);
      sub_1000068B0(v46, &unk_10015F9C0, &unk_100115230);
    }

    else
    {
    }

    *(v28 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_idsOffGridStateManager) = 0;
  }

  v75 = v28;
  v48 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v33];

  *(v28 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_coreTelephonyClient) = v48;
  v49 = [objc_allocWithZone(type metadata accessor for CoreTelephonyClientActiveSubscriptionsDelegateAdaptor(0)) init];
  *(v28 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_coreTelephonyClientActiveSubscriptionsDelegateAdaptor) = v49;
  [*(v28 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_coreTelephonyClient) setDelegate:v49];
  v50 = v82;
  (*(v96 + 16))(v95, *(v28 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_stewieStateMonitorDelegateAdaptor) + OBJC_IVAR____TtC11SettingsApp33StewieStateMonitorDelegateAdaptor_stewieStateStream, v82);
  v51 = v86;
  v52 = v83;
  v53 = v88;
  (*(v86 + 16))(v83, *(v28 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_offGridStateManagerDelegateAdaptor) + OBJC_IVAR____TtC11SettingsApp34OffGridStateManagerDelegateAdaptor_offGridModeEnabledStream, v88);
  v55 = v92;
  v54 = v93;
  v56 = *(v28 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_coreTelephonyClientActiveSubscriptionsDelegateAdaptor) + OBJC_IVAR____TtC11SettingsApp53CoreTelephonyClientActiveSubscriptionsDelegateAdaptor_satelliteCarrierNameStream;
  v57 = v89;
  (*(v92 + 16))(v89, v56, v93);
  v74 = sub_1000525A0(&qword_10015FF80, &unk_1001600D0, &unk_100117720, &protocol conformance descriptor for AsyncStream<A>);
  sub_1000525A0(&qword_10015FF88, &unk_10015FDF0, &qword_100115CC0, &protocol conformance descriptor for AsyncStream<A>);
  sub_1000525A0(&qword_10015C7F0, &qword_10015C7C0, &qword_100112AB0, &protocol conformance descriptor for AsyncStream<A>);
  v58 = v98;
  v59 = v95;
  combineLatest<A, B, C>(_:_:_:)();
  (*(v55 + 8))(v57, v54);
  (*(v51 + 8))(v52, v53);
  (*(v96 + 8))(v59, v50);
  v60 = type metadata accessor for TaskPriority();
  v96 = *(*(v60 - 8) + 56);
  v61 = v94;
  (v96)(v94, 1, 1, v60);
  v62 = v87;
  sub_1000D7A7C(v58, v87);
  v63 = v80;
  v64 = v97;
  v77(v80, v99, v97);
  v65 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v66 = v100;
  v67 = (v84 + *(v100 + 80) + v65) & ~*(v100 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  *(v68 + 24) = 0;
  v69 = v62;
  v70 = v75;
  sub_1000D7AEC(v69, v68 + v65);
  (*(v66 + 32))(v68 + v67, v63, v64);
  sub_100094AF4(0, 0, v61, &unk_1001175A8, v68);

  (v96)(v61, 1, 1, v60);
  v71 = swift_allocObject();
  v71[2] = 0;
  v71[3] = 0;
  v71[4] = v70;

  sub_100094AF4(0, 0, v61, &unk_1001175B8, v71);

  sub_1000068B0(v98, &qword_10015FF60, &qword_100117580);
  (*(v66 + 8))(v99, v64);
  (*(v90 + 8))(v85, v91);
  return v70;
}

uint64_t sub_1000D6F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_10004DED0(&qword_10015FF90, &qword_1001175C8);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000D6FE0, 0, 0);
}

uint64_t sub_1000D6FE0()
{
  sub_10004DED0(&qword_10015FF60, &qword_100117580);
  v1 = AsyncCombineLatest3Sequence.makeAsyncIterator()();
  v0[14] = v1;
  v0[7] = v1;
  v2 = swift_task_alloc();
  v0[15] = v2;
  v3 = sub_10004DED0(&qword_10015FF98, &unk_1001175D0);
  *v2 = v0;
  v2[1] = sub_1000D70B8;

  return AsyncCombineLatest3Sequence.Iterator.next()(v0 + 5, v3);
}

uint64_t sub_1000D70B8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1000D7410;
  }

  else
  {
    *(v2 + 136) = *(v2 + 40);
    v3 = sub_1000D71D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000D71F0()
{
  v1 = *(v0 + 144);
  if (!v1)
  {
LABEL_4:

    v3 = *(v0 + 8);

    return v3();
  }

  v2 = *(v0 + 136);
  if (static Task<>.isCancelled.getter())
  {

    goto LABEL_4;
  }

  if (*(v0 + 138))
  {
    v5 = v1[2];
    if (v5 < 2)
    {
      if (v5)
      {
        v5 = v1[4];
        v6 = v1[5];

        v7 = 0;
      }

      else
      {

        v8 = 1;
        if ((v2 & 0x1000000) != 0)
        {
          v8 = 2;
        }

        if ((v2 & 0x100) != 0)
        {
          v8 = 3;
        }

        if (v2)
        {
          v5 = v8;
        }

        else
        {
          v5 = 0;
        }

        v6 = 0;
        v7 = 2;
      }
    }

    else
    {

      v6 = 0;
      v7 = 1;
    }
  }

  else
  {

    v5 = 0;
    v6 = 0;
    v7 = 2;
  }

  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  v11 = *(v0 + 88);
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 32) = v7;
  sub_10004DED0(&qword_10015FF70, &unk_100117590);
  AsyncStream.Continuation.yield(_:)();
  (*(v10 + 8))(v9, v11);
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  v13 = sub_10004DED0(&qword_10015FF98, &unk_1001175D0);
  *v12 = v0;
  v12[1] = sub_1000D70B8;

  return AsyncCombineLatest3Sequence.Iterator.next()(v0 + 40, v13);
}

uint64_t sub_1000D7410()
{
  *(v0 + 64) = *(v0 + 128);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000D749C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = sub_10004DED0(&unk_100160940, &unk_100117DF0);
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000D756C, a4, 0);
}

uint64_t sub_1000D756C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_idsOffGridStateManager);
  if (v2)
  {
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 24);
    *(v0 + 48) = [v2 offGridMode] == 2;
    sub_10004DED0(&unk_10015E9E0, &unk_1001173F0);
    AsyncStream.Continuation.yield(_:)();
    (*(v4 + 8))(v3, v5);
    v1 = *(v0 + 16);
  }

  v6 = *(v1 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_stewieStateMonitor);
  if (v6)
  {
    v7 = [v6 getState];
    if (v7)
    {
      v8 = v7;
      sub_1000D8A24(v7);
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000D76B4()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015FF70, &unk_100117590);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_snapshotsContinuation;
  (*(v3 + 16))(&v11 - v4, v1 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_snapshotsContinuation, v2);
  AsyncStream.Continuation.finish()();
  v7 = *(v3 + 8);
  v7(v5, v2);
  v8 = OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_snapshots;
  v9 = sub_10004DED0(&qword_10015FF78, qword_100117630);
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  v7((v1 + v6), v2);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1000D787C()
{
  sub_1000D76B4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SatelliteConnectivityStateProvider(uint64_t a1)
{
  result = qword_10015FE80;
  if (!qword_10015FE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D78FC(uint64_t a1)
{
  sub_1000D7A28(319, &qword_10015FE90, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_1000D7A28(319, &unk_10015FE98, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000D7A28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SatelliteConnectivityState);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000D7A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015FF60, &qword_100117580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D7AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015FF60, &qword_100117580);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D7B5C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&qword_10015FF60, &qword_100117580) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004DED0(&qword_10015FF70, &unk_100117590) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000ACE4;

  return sub_1000D6F14(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1000D7CC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_1000D749C(a1, v4, v5, v6);
}

id sub_1000D7D78()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_updateTask;
  if (*&v0[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_updateTask])
  {

    Task.cancel()();
  }

  *&v0[v2] = 0;

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000D7ED0()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  type metadata accessor for SatelliteConnectivityStateProvider(0);
  swift_allocObject();
  v5 = sub_1000D6284();
  *(v0 + OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityStateProvider) = v5;

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v5;
  v9[5] = v7;

  v10 = sub_100094AF4(0, 0, v4, &unk_100117620, v9);

  *(v1 + OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_updateTask) = v10;
}

uint64_t sub_1000D808C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_10004DED0(&unk_10015FFF0, &qword_100117628);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[15] = v8;
  v5[16] = v7;

  return _swift_task_switch(sub_1000D8190, v8, v7);
}

uint64_t sub_1000D8190()
{
  sub_10004DED0(&qword_10015FF78, qword_100117630);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v1 = static MainActor.shared.getter();
  v0[17] = v1;
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_1000D829C;
  v3 = v0[10];

  return AsyncStream.Iterator.next(isolation:)(v0 + 5, v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_1000D829C()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_1000D83E0, v3, v2);
}

uint64_t sub_1000D83E0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  if (v2 == 255)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

LABEL_8:

    v6 = *(v0 + 8);

    return v6();
  }

  v3 = *(v0 + 48);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    goto LABEL_7;
  }

  v5 = Strong;
  if (static Task<>.isCancelled.getter())
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

LABEL_7:

    sub_1000D8A10(v1, v3, v2);
    goto LABEL_8;
  }

  v8 = &v5[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityState];
  v9 = *&v5[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityState];
  v10 = *&v5[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityState + 8];
  v11 = v5[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityState + 16];
  if (!v2)
  {
    if (!v5[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityState + 16])
    {
      v13 = v1 == v9 && v3 == v10;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_48;
  }

  if (v2 != 1)
  {
    if (v1 > 1)
    {
      if (v1 ^ 2 | v3)
      {
        v15 = v11 == 2 && v9 == 3;
      }

      else
      {
        v15 = v11 == 2 && v9 == 2;
      }
    }

    else
    {
      if (!(v1 | v3))
      {
        if (v11 == 2 && (v10 | v9) == 0)
        {
          goto LABEL_50;
        }

LABEL_48:
        if (swift_unknownObjectWeakLoadStrong())
        {
          type metadata accessor for PrimarySettingsListModel(0);
          sub_1000A2E28("Satellite Connectivity State", 28, 2);
          swift_unknownObjectRelease();
        }

        goto LABEL_50;
      }

      v15 = v11 == 2 && v9 == 1;
    }

    if (v15 && v10 == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  if (v11 != 1 || v1 != v9)
  {
    goto LABEL_48;
  }

LABEL_50:
  v17 = *v8;
  v18 = *(v8 + 1);
  *v8 = v1;
  *(v8 + 1) = v3;
  v19 = v8[16];
  v8[16] = v2;
  sub_10002D78C(v17, v18, v19);

  v20 = static MainActor.shared.getter();
  *(v0 + 136) = v20;
  v21 = swift_task_alloc();
  *(v0 + 144) = v21;
  *v21 = v0;
  v21[1] = sub_1000D829C;
  v22 = *(v0 + 80);

  return AsyncStream.Iterator.next(isolation:)(v0 + 40, v20, &protocol witness table for MainActor, v22);
}

uint64_t sub_1000D86E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityState);
  v4 = *(v1 + OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityState + 8);
  v5 = *(v1 + OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityState + 16);
  sub_10002D778(v3, v4, v5);
  v6 = sub_10002D444(v3, v4, v5);
  v8 = v7;
  sub_10002D78C(v3, v4, v5);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_id + 16);
    v25 = *(v1 + OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_id);
    v26 = v9;
    v27 = *(v1 + OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_id + 32);
    v10 = sub_100029F88();
    v12 = v11;
    v14 = v13;
    v15 = sub_10002A770(v10, v11, v13);
    v17 = v16;
    v18 = type metadata accessor for PrimarySettingsListItemModel(0);
    v19 = a1 + *(v18 + 20);
    *v19 = v10;
    *(v19 + 8) = v12;
    *(v19 + 16) = v14;
    *(v19 + 24) = v15;
    *(v19 + 32) = v17;
    *(v19 + 40) = v6;
    *(v19 + 48) = v8;
    type metadata accessor for PrimarySettingsListItemViewType(0);
    swift_storeEnumTagMultiPayload();
    v20 = v26;
    *a1 = v25;
    *(a1 + 16) = v20;
    *(a1 + 32) = v27;
    *(a1 + *(v18 + 24)) = 4;
    (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
    return sub_10002698C(&v25, v24);
  }

  else
  {
    v22 = type metadata accessor for PrimarySettingsListItemModel(0);
    v23 = *(*(v22 - 8) + 56);

    return v23(a1, 1, 1, v22);
  }
}

uint64_t sub_1000D8950(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A924;

  return sub_1000D808C(a1, v4, v5, v7, v6);
}

uint64_t sub_1000D8A10(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10002D78C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1000D8A24(void *a1)
{
  v2 = sub_10004DED0(&qword_1001600B8, &qword_100117708);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-v4];
  v6 = [a1 displayStewieInStatusBar];
  v7 = [a1 isStewieActiveOverBB];
  if ([a1 isPermittedAtCurrentLocation:1] & 1) != 0 || (objc_msgSend(a1, "isPermittedAtCurrentLocation:", 4) & 1) != 0 || (objc_msgSend(a1, "isPermittedAtCurrentLocation:", 8) & 1) != 0 || (objc_msgSend(a1, "isPermittedAtCurrentLocation:", 16))
  {
    v8 = 1;
  }

  else
  {
    v8 = [a1 isPermittedAtCurrentLocation:32];
  }

  v10[13] = v6;
  v10[14] = v7;
  v10[15] = v8;
  sub_10004DED0(&qword_1001600C0, &qword_100117710);
  AsyncStream.Continuation.yield(_:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int sub_1000D8BE0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_1000D8C50()
{
  v1 = v0[1];
  v2 = v0[2];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_1000D8C9C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

id sub_1000D8FD4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10004DED0(&qword_1001600C0, &qword_100117710);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  (*(v4 + 16))(&v8 - v5, v1 + OBJC_IVAR____TtC11SettingsApp33StewieStateMonitorDelegateAdaptor_stewieStateStreamContinuation, v3);
  AsyncStream.Continuation.finish()();
  (*(v4 + 8))(v6, v3);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t type metadata accessor for StewieStateMonitorDelegateAdaptor(uint64_t a1)
{
  result = qword_100160030;
  if (!qword_100160030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D9330(uint64_t a1)
{
  sub_1000D9434(319, &qword_100160040, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_1000D9434(319, &qword_100160048, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000D9434(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for StewieStateMonitorDelegateAdaptor.StewieState);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for StewieStateMonitorDelegateAdaptor.StewieState(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StewieStateMonitorDelegateAdaptor.StewieState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for StewieStateMonitorDelegateAdaptor.StewieState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_1000D9624()
{
  result = qword_1001600B0;
  if (!qword_1001600B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001600B0);
  }

  return result;
}

uint64_t sub_1000D9678@<X0>(uint64_t *a1@<X0>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100057930();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v4 + 16);
  return result;
}

uint64_t sub_1000D9718()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    if (qword_10015AB58 != -1)
    {
      swift_once();
    }

    v2 = [qword_100169810 airplaneMode];
    v3 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for PrimarySettingsListToggleState(0);
    v1 = swift_allocObject();

    ObservationRegistrar.init()();
    *(v1 + 16) = v2;
    *(v1 + 24) = sub_1000D9DD0;
    *(v1 + 32) = v3;

    *(v0 + 64) = v1;
  }

  return v1;
}

void sub_1000D9834(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 56);

    [v4 setAirplaneMode:a1 & 1];
  }
}

uint64_t sub_1000D98B8()
{
  [*(v0 + 56) setDelegate:0];
  sub_10002C5C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1000D991C()
{
  v1 = sub_1000D9718();
  v2 = [*(v0 + 56) airplaneMode];
  if (v2 == *(v1 + 16))
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100057930();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000D9A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  v31 = *(v2 + 16);
  v32 = v5;
  v33 = *(v2 + 48);
  v6 = sub_100027320();
  LOBYTE(a1) = sub_100062250(0, v6, a1);

  if (a1)
  {
    if (qword_10015AAC8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000659C(v7, qword_1001696D0);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v30[0] = v11;
      *v10 = 136446210;
      v12 = sub_100026A58();
      v14 = sub_100025CF0(v12, v13, v30);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Not including %{public}s due to being hidden.", v10, 0xCu);
      sub_10000665C(v11);
    }

    v15 = type metadata accessor for PrimarySettingsListItemModel(0);
    v16 = *(*(v15 - 8) + 56);

    return v16(a2, 1, 1, v15);
  }

  else
  {
    v18 = sub_100029F88();
    v20 = v19;
    v22 = v21;
    v23 = sub_10002A770(v18, v19, v21);
    v25 = v24;
    v26 = sub_1000D9718();
    v27 = type metadata accessor for PrimarySettingsListItemModel(0);
    v28 = a2 + *(v27 + 20);
    *v28 = v18;
    *(v28 + 8) = v20;
    *(v28 + 16) = v22;
    *(v28 + 24) = v23;
    *(v28 + 32) = v25;
    *(v28 + 40) = v26;
    type metadata accessor for PrimarySettingsListItemViewType(0);
    swift_storeEnumTagMultiPayload();
    v29 = v32;
    *a2 = v31;
    *(a2 + 16) = v29;
    *(a2 + 32) = v33;
    *(a2 + *(v27 + 24)) = 4;
    (*(*(v27 - 8) + 56))(a2, 0, 1, v27);
    return sub_10002698C(&v31, v30);
  }
}

uint64_t sub_1000D9D24()
{
  v1 = *v0;
  [*(v1 + 56) setDelegate:v1];
  [*(v1 + 56) setNotifyForExternalChangeOnly:1];
  return sub_1000D991C();
}

uint64_t sub_1000D9DD8()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  v6 = *(v1 + 56);
  if (v6)
  {
    [v6 invalidate];
    v7 = *(v1 + 56);
  }

  else
  {
    v7 = 0;
  }

  *(v1 + 56) = 0;

  v8 = OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_stateChangeStreamContinuation;
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_stateChangeStreamContinuation, v2);
  AsyncStream.Continuation.finish()();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_observationTask;
  if (*(v1 + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_observationTask))
  {

    Task.cancel()();
  }

  *(v1 + v10) = 0;

  sub_10002C5C0(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));

  sub_1000122B4(v1 + 72);
  v11 = OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_stateChangeStream;
  v12 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  v9((v1 + v8), v2);

  return v1;
}

uint64_t sub_1000D9FE4()
{
  sub_1000D9DD8();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for BluetoothListItemProvider.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BluetoothListItemProvider.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000DA198()
{
  result = qword_1001602E8;
  if (!qword_1001602E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001602E8);
  }

  return result;
}

void sub_1000DA1EC()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = [objc_allocWithZone(CBController) init];
  v6 = *(v0 + 56);
  *(v0 + 56) = v5;
  v7 = v5;

  if (v7)
  {
    v8 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1000DBDD0;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000411C;
    aBlock[3] = &unk_100151770;
    v9 = _Block_copy(aBlock);

    [v7 setBluetoothStateChangedHandler:v9];
    _Block_release(v9);

    v10 = type metadata accessor for TaskPriority();
    v11 = *(*(v10 - 8) + 56);
    v11(v4, 1, 1, v10);
    v12 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();

    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v12;

    *(v1 + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_observationTask) = sub_100094AF4(0, 0, v4, &unk_1001178E8, v14);

    v11(v4, 1, 1, v10);
    v15 = swift_allocObject();
    swift_weakInit();

    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v15;

    sub_100094AF4(0, 0, v4, &unk_1001178F8, v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000DA4FC(uint64_t a1)
{
  v1 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - v3;
  v5 = sub_10004DED0(&qword_10015F818, &qword_100116F28);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v2 + 16))(v4, Strong + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_stateChangeStreamContinuation, v1);

    AsyncStream.Continuation.yield<A>()();
    (*(v2 + 8))(v4, v1);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  (*(*(v10 - 8) + 56))(v7, v9, 1, v10);
  return sub_1000068B0(v7, &qword_10015F818, &qword_100116F28);
}

uint64_t sub_1000DA6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v4[11] = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  v4[12] = swift_task_alloc();
  v5 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[19] = v7;
  v4[20] = v6;

  return _swift_task_switch(sub_1000DA830, v7, v6);
}

uint64_t sub_1000DA830()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[15];
    v3 = v0[16];
    v4 = v0[13];
    v5 = v0[14];
    v6 = v0[12];
    (*(v5 + 16))(v2, Strong + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_stateChangeStream, v4);

    (*(v5 + 32))(v3, v2, v4);
    sub_10001AE08();
    AsyncSequence.debounce<>(for:tolerance:)();
    v7 = AsyncDebounceSequence.makeAsyncIterator()();
    v0[21] = v7;
    sub_1000068B0(v6, &unk_10015F9E0, &unk_100112BB0);
    v0[8] = v7;
    swift_beginAccess();
    v0[22] = static MainActor.shared.getter();
    v8 = swift_task_alloc();
    v0[23] = v8;
    v9 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
    *v8 = v0;
    v8[1] = sub_1000DAA64;

    return AsyncDebounceSequence.Iterator.next()(v0 + 27, v9);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1000DAA64()
{
  v2 = *v1;
  *(v2 + 192) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000DAD9C;
  }

  else
  {
    *(v2 + 217) = *(v2 + 216);
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000DAC04;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1000DAC04()
{

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return _swift_task_switch(sub_1000DAC68, v1, v2);
}

uint64_t sub_1000DAC68()
{
  if ((*(v0 + 217) & 1) != 0 || (Strong = swift_weakLoadStrong(), (*(v0 + 200) = Strong) == 0))
  {
    v4 = *(v0 + 128);
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);

    (*(v6 + 8))(v4, v5);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    *(v0 + 208) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1000DAE28, v3, v2);
  }
}

uint64_t sub_1000DAD9C()
{
  *(v0 + 72) = *(v0 + 192);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000DAE28()
{
  v1 = v0[25];

  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 bluetoothState];
    if (qword_10015AB60 != -1)
    {
      v10 = v4;
      swift_once();
      v4 = v10;
    }

    v5 = (0x30200010000uLL >> (8 * v4)) & 3;
    if (v4 > 5)
    {
      LODWORD(v5) = 0;
    }

    if (qword_100169818 == v4)
    {
      v6 = 4;
    }

    else
    {
      v6 = v5;
    }

    v7 = v0[25];
    if (v6 != *(v7 + 64) && swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for PrimarySettingsListModel(0);
      sub_1000A2E28("Bluetooth State", 15, 2);
      swift_unknownObjectRelease();
    }

    *(v7 + 64) = v6;
  }

  v8 = v0[19];
  v9 = v0[20];

  return _swift_task_switch(sub_1000DAF98, v8, v9);
}

uint64_t sub_1000DAF98()
{

  *(v0 + 176) = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  v2 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v1 = v0;
  v1[1] = sub_1000DAA64;

  return AsyncDebounceSequence.Iterator.next()(v0 + 216, v2);
}

uint64_t sub_1000DB060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  sub_10004DED0(&qword_10015F818, &qword_100116F28);
  v4[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[14] = v7;
  v4[15] = v6;

  return _swift_task_switch(sub_1000DB198, v7, v6);
}

uint64_t sub_1000DB198()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 56);
    v0[16] = v2;
    if (v2)
    {
      v2;

      v3 = swift_task_alloc();
      v0[17] = v3;
      *v3 = v0;
      v3[1] = sub_1000DB3D4;

      return sub_1000DB68C();
    }
  }

  swift_beginAccess();
  v5 = swift_weakLoadStrong();
  if (v5)
  {
    v6 = v0[11];
    v7 = v0[9];
    v8 = v0[10];
    (*(v8 + 16))(v6, v5 + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_stateChangeStreamContinuation, v7);

    AsyncStream.Continuation.yield<A>()();
    (*(v8 + 8))(v6, v7);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v0[12];
  v11 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  (*(*(v11 - 8) + 56))(v10, v9, 1, v11);
  sub_1000068B0(v10, &qword_10015F818, &qword_100116F28);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000DB3D4()
{
  v1 = *v0;
  v2 = *(*v0 + 128);

  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return _swift_task_switch(sub_1000DB514, v4, v3);
}

uint64_t sub_1000DB514()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[11];
    v3 = v0[9];
    v4 = v0[10];
    (*(v4 + 16))(v2, Strong + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_stateChangeStreamContinuation, v3);

    AsyncStream.Continuation.yield<A>()();
    (*(v4 + 8))(v2, v3);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v0[12];
  v7 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  (*(*(v7 - 8) + 56))(v6, v5, 1, v7);
  sub_1000068B0(v6, &qword_10015F818, &qword_100116F28);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000DB6AC()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1000DB7A0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD000000000000018, 0x80000001001255E0, sub_1000DC100, v2, &type metadata for ()[8]);
}

uint64_t sub_1000DB7A0()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1000DB8D0;
  }

  else
  {

    v2 = sub_1000DB8BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DB8D0()
{

  if (qword_10015AAF0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000659C(v1, qword_100169748);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to activate Bluetooth controller: %@", v4, 0xCu);
    sub_1000068B0(v5, &unk_10015F9C0, &unk_100115230);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000DBA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PrimarySettingsListItemViewType(0);
  __chkstk_darwin(v6);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  __chkstk_darwin(v9 - 8);
  v11 = v37 - v10;
  v12 = type metadata accessor for PrimarySettingsListItemModel(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 32);
  v43 = *(v3 + 16);
  v44 = v16;
  v45 = *(v3 + 48);
  type metadata accessor for StaticPrimarySettingsListItemProvider();
  inited = swift_initStackObject();
  v18 = v45;
  v19 = v44;
  *(inited + 16) = v43;
  *(inited + 32) = v19;
  *(inited + 48) = v18;
  sub_10002698C(&v43, v42);
  sub_10005AFAC(a1, v11);
  swift_setDeallocating();
  sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000068B0(v11, &unk_10015EDB0, &unk_100111C70);
    return (*(v13 + 56))(a2, 1, 1, v12);
  }

  else
  {
    sub_10002C634(v11, v15);
    v41 = *(v12 + 24);
    v21 = *&v15[v41];
    v23 = (v21 & 1) == 0 && *(v3 + 64) == 1;
    v40 = v21 | v23;
    v24 = sub_100029F88();
    v26 = v25;
    v38 = v12;
    v28 = v27;
    v29 = sub_10002A770(v24, v25, v27);
    v39 = a2;
    v30 = v29;
    v37[1] = v6;
    v32 = v31;
    v33 = sub_10002CEF4();
    *v8 = v24;
    *(v8 + 1) = v26;
    v8[16] = v28;
    *(v8 + 3) = v30;
    *(v8 + 4) = v32;
    *(v8 + 5) = v33;
    *(v8 + 6) = v34;
    swift_storeEnumTagMultiPayload();
    v35 = v38;
    sub_10002CE90(v8, &v15[*(v38 + 20)]);
    *&v15[v41] = v40;
    v36 = v39;
    sub_10002C7EC(v15, v39);
    (*(v13 + 56))(v36, 0, 1, v35);
    return sub_10002D10C(v15);
  }
}

uint64_t sub_1000DBDD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_1000DA6E4(a1, v4, v5, v6);
}

uint64_t sub_1000DBE8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000DB060(a1, v4, v5, v6);
}

void sub_1000DBF50(uint64_t a1, void *a2)
{
  v4 = sub_10004DED0(&qword_1001602F0, &qword_100117908);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1000DC1E8;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DC17C;
  aBlock[3] = &unk_100151810;
  v10 = _Block_copy(aBlock);

  [a2 activateWithCompletion:v10];
  _Block_release(v10);
}

uint64_t sub_1000DC108(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_10004DED0(&qword_1001602F0, &qword_100117908);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10004DED0(&qword_1001602F0, &qword_100117908);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1000DC17C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1000DC1E8(uint64_t a1)
{
  sub_10004DED0(&qword_1001602F0, &qword_100117908);

  return sub_1000DC108(a1);
}

id sub_1000DC26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v50 = a1;
  v3 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  __chkstk_darwin(v3 - 8);
  v5 = &v47[-v4];
  v6 = type metadata accessor for PrimarySettingsListItemModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v12 = *(v2 + 32);
  v13 = *(v2 + 40);
  v14 = *(v2 + 48);
  type metadata accessor for StaticPrimarySettingsListItemProvider();
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  *(inited + 24) = v11;
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  *(inited + 48) = v14;
  v16 = v12;
  v17 = v6;
  v18 = v7;
  sub_100029920(v10, v11, v16, v13, v14);
  sub_10005AFAC(v50, v5);
  swift_setDeallocating();
  sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  if ((*(v7 + 48))(v5, 1, v17) == 1)
  {
    sub_10002C8C0(v5);
    if (qword_10015AAC8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000659C(v19, qword_1001696D0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Hiding Camera Settings because Shared iPad or ManagedConfiguration/Screen Time Restricted.", v22, 2u);
    }

    goto LABEL_27;
  }

  sub_10002C634(v5, v9);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v24 = result;
    v25 = v9;
    LODWORD(v9) = MobileGestalt_get_cameraButtonCapability();

    v26 = objc_allocWithZone(LSApplicationRecord);
    v27 = sub_10002D7CC(0xD000000000000010, 0x800000010011F0C0, 0);
    if (v27)
    {

      v28 = 1;
    }

    else
    {
      v28 = 0;
    }

    v29 = objc_allocWithZone(LSApplicationRecord);
    v30 = sub_10002D7CC(0xD000000000000013, 0x8000000100125670, 0);
    if (v30)
    {

      v31 = 1;
    }

    else
    {
      v31 = 0;
    }

    if (qword_10015AAC8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000659C(v32, qword_1001696D0);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_20;
    }

    v48 = v9;
    v50 = v18;
    v35 = v17;
    v9 = v25;
    v36 = swift_slowAlloc();
    *v36 = 67109632;
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v37 = result;
      cameraButtonCapability = MobileGestalt_get_cameraButtonCapability();

      *(v36 + 4) = cameraButtonCapability;
      *(v36 + 8) = 1024;
      *(v36 + 10) = v28;
      *(v36 + 14) = 1024;
      *(v36 + 16) = v31;
      _os_log_impl(&_mh_execute_header, v33, v34, "CameraSettingsListItemProvider (hasCameraControl: %{BOOL}d, isCameraInstalled: %{BOOL}d, isMessagesInstalled: %{BOOL}d)", v36, 0x14u);

      v25 = v9;
      v17 = v35;
      v18 = v50;
      LOBYTE(v9) = v48;
LABEL_20:

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      v41 = os_log_type_enabled(v39, v40);
      if (((v9 | v28) | v31))
      {
        if (v41)
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&_mh_execute_header, v39, v40, "Showing Camera Settings.", v42, 2u);
        }

        v43 = v49;
        sub_10002C634(v25, v49);
        v44 = v43;
        v45 = 0;
        return (*(v18 + 56))(v44, v45, 1, v17);
      }

      if (v41)
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Hiding Camera Settings because neither Camera nor Messages are installed (device does not support camera control).", v46, 2u);
      }

      sub_10002D10C(v25);
LABEL_27:
      v45 = 1;
      v44 = v49;
      return (*(v18 + 56))(v44, v45, 1, v17);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000DC7D8(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  sub_100029920(v4, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t sub_1000DC860@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - v6;
  v8 = type metadata accessor for PrimarySettingsListItemModel(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 32);
  v46 = *(v2 + 16);
  v47 = v12;
  v48 = *(v2 + 48);
  type metadata accessor for StaticPrimarySettingsListItemProvider();
  inited = swift_initStackObject();
  v14 = v48;
  v15 = v47;
  *(inited + 16) = v46;
  *(inited + 32) = v15;
  *(inited + 48) = v14;
  sub_10002698C(&v46, v45);
  sub_10005AFAC(a1, v7);
  swift_setDeallocating();
  sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10002C8C0(v7);
    return (*(v9 + 56))(a2, 1, 1, v8);
  }

  else
  {
    sub_10002C634(v7, v11);
    v43 = *(v8 + 24);
    v44 = a2;
    v17 = *&v11[v43];
    v18 = 0x10000000000;
    if (!a1[37])
    {
      v18 = 0;
    }

    v19 = v18 | (a1[38] << 48);
    v20 = &_mh_execute_header;
    if (!a1[36])
    {
      v20 = 0;
    }

    v21 = 0x1000000;
    if (!a1[35])
    {
      v21 = 0;
    }

    v22 = v20 | v21;
    v23 = 0x10000;
    if (!a1[34])
    {
      v23 = 0;
    }

    v24 = v19 | v22 | v23;
    v25 = 256;
    if (!a1[33])
    {
      v25 = 0;
    }

    v26 = sub_10002D168(v24 | v25 | a1[32]);
    v28 = v27;
    v41 = v26;
    v42 = v17 | v29 & ((v17 & 1) == 0);
    v30 = v8;
    v31 = sub_100029F88();
    v33 = v32;
    v35 = v34;
    v36 = sub_10002A770(v31, v32, v34);
    v38 = v37;
    v39 = &v11[*(v30 + 20)];
    sub_10002C758(v39, type metadata accessor for PrimarySettingsListItemViewType);
    *v39 = v31;
    *(v39 + 8) = v33;
    *(v39 + 16) = v35;
    *(v39 + 24) = v36;
    *(v39 + 32) = v38;
    *(v39 + 40) = v41;
    *(v39 + 48) = v28;
    type metadata accessor for PrimarySettingsListItemViewType(0);
    swift_storeEnumTagMultiPayload();
    *&v11[v43] = v42;
    v40 = v44;
    sub_10002C7EC(v11, v44);
    (*(v9 + 56))(v40, 0, 1, v30);
    return sub_10002C758(v11, type metadata accessor for PrimarySettingsListItemModel);
  }
}

uint64_t sub_1000DCBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  sub_10004DED0(&unk_10015FCF0, &unk_100117B60);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for Notification();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[14] = v7;
  v4[15] = v9;

  return _swift_task_switch(sub_1000DCCF0, v7, v9);
}

uint64_t sub_1000DCCF0()
{
  v0[16] = sub_10004DED0(&qword_1001604F8, &qword_100117A30);
  v0[17] = AsyncMapSequence.Iterator.baseIterator.modify();
  type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  sub_100042058(&qword_10015CB60, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_1000DCE10;
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v2, v3, v4);
}

uint64_t sub_1000DCE10()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1000DD110;
  }

  else
  {
    (*(v2 + 136))();
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1000DCF38;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000DCF38()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[6];
    sub_1000068B0(v3, &unk_10015FCF0, &unk_100117B60);
    *v4 = 0u;
    v4[1] = 0u;

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    v7 = AsyncMapSequence.Iterator.transform.getter();
    v0[19] = v8;
    v12 = (v7 + *v7);
    v9 = swift_task_alloc();
    v0[20] = v9;
    *v9 = v0;
    v9[1] = sub_1000DD19C;
    v10 = v0[13];
    v11 = v0[6];

    return v12(v11, v10);
  }
}

uint64_t sub_1000DD110()
{
  (*(v0 + 136))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DD19C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 120);
  v6 = *(v1 + 112);

  return _swift_task_switch(sub_1000DD33C, v6, v5);
}

uint64_t sub_1000DD33C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DD3AC(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 49) != (result & 1))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      type metadata accessor for PrimarySettingsListModel(0);
      sub_1000A2E28("ClassKit", 8, 2);
      result = swift_unknownObjectRelease();
    }
  }

  *(v1 + 49) = v2;
  return result;
}

uint64_t sub_1000DD454()
{
  swift_beginAccess();
  v1 = *(*(v0 + 72) + 16);
  if (v1)
  {

    v2 = 32;
    do
    {

      Task.cancel()();

      v2 += 8;
      --v1;
    }

    while (v1);
  }

  sub_10002C5C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_1000122B4(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1000DD53C()
{
  v1 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v1 - 8);
  v3 = &v29 - v2;
  v4 = type metadata accessor for TaskPriority();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v7 = v5 + 56;
  v6(v3, 1, 1, v4);
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;

  v11 = sub_100094AF4(0, 0, v3, &unk_100117A00, v10);
  swift_beginAccess();
  v12 = *(v0 + 72);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 72) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_100015698(0, v12[2] + 1, 1, v12);
    *(v0 + 72) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_100015698((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v12[v15 + 4] = v11;
  *(v0 + 72) = v12;
  swift_endAccess();
  v29 = v7;
  v6(v3, 1, 1, v4);
  v16 = swift_allocObject();
  swift_weakInit();

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v16;

  v19 = sub_100094AF4(0, 0, v3, &unk_100117A10, v18);
  swift_beginAccess();
  v20 = *(v0 + 72);

  v21 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 72) = v20;
  v22 = v6;
  if ((v21 & 1) == 0)
  {
    v20 = sub_100015698(0, v20[2] + 1, 1, v20);
    *(v0 + 72) = v20;
  }

  v24 = v20[2];
  v23 = v20[3];
  if (v24 >= v23 >> 1)
  {
    v20 = sub_100015698((v23 > 1), v24 + 1, 1, v20);
  }

  v20[2] = v24 + 1;
  v20[v24 + 4] = v19;
  *(v0 + 72) = v20;
  swift_endAccess();
  v22(v3, 1, 1, v4);
  v25 = swift_allocObject();
  swift_weakInit();

  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v25;

  sub_100094DF4(0, 0, v3, &unk_100117A20, v27);
}

uint64_t sub_1000DD95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[13] = swift_task_alloc();
  v5 = sub_10004DED0(&qword_1001604F0, &qword_100117A28);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = sub_10004DED0(&qword_1001604F8, &qword_100117A30);
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[22] = v8;
  v4[23] = v7;

  return _swift_task_switch(sub_1000DDAF4, v8, v7);
}

uint64_t sub_1000DDAF4()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = [objc_opt_self() defaultCenter];
  v0[9] = NSNotificationCenter.notifications(named:object:)();
  type metadata accessor for NSNotificationCenter.Notifications();
  sub_10004DED0(&qword_100160500, &qword_100117A40);
  sub_100042058(&qword_10015CF78, &type metadata accessor for NSNotificationCenter.Notifications, &protocol conformance descriptor for NSNotificationCenter.Notifications);
  AsyncMapSequence.init(_:transform:)();

  AsyncMapSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v1 + 8))(v2, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  v5 = static MainActor.shared.getter();
  v0[24] = v5;
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_1000DDD4C;

  return sub_1000DCBB8((v0 + 2), v5, &protocol witness table for MainActor);
}

uint64_t sub_1000DDD4C()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 176);
    v5 = *(v2 + 184);

    return _swift_task_switch(sub_1000DDE60, v4, v5);
  }

  return result;
}

uint64_t sub_1000DDE60()
{
  if (v0[5])
  {
    if (swift_weakLoadStrong())
    {
      sub_1000DE028();

      sub_1000068B0((v0 + 2), &qword_100160508, &unk_100117A50);
      v1 = static MainActor.shared.getter();
      v0[24] = v1;
      v2 = swift_task_alloc();
      v0[25] = v2;
      *v2 = v0;
      v2[1] = sub_1000DDD4C;

      return (sub_1000DCBB8)(v0 + 2, v1, &protocol witness table for MainActor, v0 + 11);
    }

    (*(v0[18] + 8))(v0[19], v0[17]);

    sub_1000068B0((v0 + 2), &qword_100160508, &unk_100117A50);
  }

  else
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
  }

  v4 = v0[1];

  return v4();
}

id sub_1000DE028()
{
  v18 = type metadata accessor for OSSignpostID();
  v0 = *(v18 - 8);
  __chkstk_darwin(v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OSSignposter();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v7 = sub_10000659C(v3, qword_100169718);
  (*(v4 + 16))(v6, v7, v3);
  static OSSignpostID.exclusive.getter();
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = OSSignposter.logHandle.getter();
  v10 = static os_signpost_type_t.begin.getter();
  v11 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v11, "ClassKitListItemProvider.updateClassKitVisibilityIfNeeded()", "", v8, 2u);
  result = [objc_opt_self() shared];
  if (result)
  {
    v13 = result;
    v14 = [result settingsUIVisible];

    sub_1000DD3AC(v14);
    v15 = static os_signpost_type_t.end.getter();
    v16 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v15, v16, "ClassKitListItemProvider.updateClassKitVisibilityIfNeeded()", "", v8, 2u);

    (*(v0 + 8))(v2, v18);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000DE2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[13] = swift_task_alloc();
  v5 = sub_10004DED0(&qword_1001604F0, &qword_100117A28);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = sub_10004DED0(&qword_1001604F8, &qword_100117A30);
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[22] = v8;
  v4[23] = v7;

  return _swift_task_switch(sub_1000DE490, v8, v7);
}

uint64_t sub_1000DE490()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = [objc_opt_self() defaultCenter];
  v0[9] = NSNotificationCenter.notifications(named:object:)();
  type metadata accessor for NSNotificationCenter.Notifications();
  sub_10004DED0(&qword_100160500, &qword_100117A40);
  sub_100042058(&qword_10015CF78, &type metadata accessor for NSNotificationCenter.Notifications, &protocol conformance descriptor for NSNotificationCenter.Notifications);
  AsyncMapSequence.init(_:transform:)();

  AsyncMapSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v1 + 8))(v2, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  v5 = static MainActor.shared.getter();
  v0[24] = v5;
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_1000DE6E8;

  return sub_1000DCBB8((v0 + 2), v5, &protocol witness table for MainActor);
}

uint64_t sub_1000DE6E8()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 176);
    v5 = *(v2 + 184);

    return _swift_task_switch(sub_1000DE7FC, v4, v5);
  }

  return result;
}

uint64_t sub_1000DE7FC()
{
  if (v0[5])
  {
    if (swift_weakLoadStrong())
    {
      sub_1000DE028();

      sub_1000068B0((v0 + 2), &qword_100160508, &unk_100117A50);
      v1 = static MainActor.shared.getter();
      v0[24] = v1;
      v2 = swift_task_alloc();
      v0[25] = v2;
      *v2 = v0;
      v2[1] = sub_1000DE6E8;

      return (sub_1000DCBB8)(v0 + 2, v1, &protocol witness table for MainActor, v0 + 11);
    }

    (*(v0[18] + 8))(v0[19], v0[17]);

    sub_1000068B0((v0 + 2), &qword_100160508, &unk_100117A50);
  }

  else
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000DE9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DEA5C, v6, v5);
}

uint64_t sub_1000DEA5C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1000DE028();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_1000DEB20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(*v2 + 49) == 1)
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v7 = *(v4 + 32);
    v8 = *(v4 + 40);
    v9 = *(v4 + 48);
    type metadata accessor for StaticPrimarySettingsListItemProvider();
    inited = swift_initStackObject();
    *(inited + 16) = v5;
    *(inited + 24) = v6;
    *(inited + 32) = v7;
    *(inited + 40) = v8;
    *(inited + 48) = v9;
    sub_100029920(v5, v6, v7, v8, v9);
    sub_10005AFAC(a1, a2);
    swift_setDeallocating();
    sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  }

  else
  {
    v12 = type metadata accessor for PrimarySettingsListItemModel(0);
    v13 = *(*(v12 - 8) + 56);

    v13(a2, 1, 1, v12);
  }
}

uint64_t sub_1000DEC48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000DD95C(a1, v4, v5, v6);
}

uint64_t sub_1000DECFC(uint64_t *a1)
{
  v3 = Notification.name.getter();
  type metadata accessor for Name(0);
  a1[3] = v4;
  *a1 = v3;
  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1000DED74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000DE2F8(a1, v4, v5, v6);
}

uint64_t sub_1000DEE28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_1000DE9C4(a1, v4, v5, v6);
}

id sub_1000DEEDC()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = [objc_allocWithZone(CRKDefaultSettingsUIVisibilityProvider) init];
    v4 = *(v0 + 72);
    *(v0 + 72) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1000DEF48(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 80) != (result & 1))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      type metadata accessor for PrimarySettingsListModel(0);
      sub_1000A2E28("Classroom Visibility", 20, 2);
      result = swift_unknownObjectRelease();
    }
  }

  *(v1 + 80) = v2;
  return result;
}

uint64_t sub_1000DEFF0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);
  if (a2)
  {
    if (v5)
    {
      v6 = *(v2 + 88) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_12;
      }
    }
  }

  else if (!v5)
  {
    goto LABEL_12;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for PrimarySettingsListModel(0);
    sub_1000A2E28("Classroom Status", 16, 2);
    swift_unknownObjectRelease();
  }

LABEL_12:
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

void sub_1000DF0DC()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(*(v0 + 104) + 16);
  if (v2)
  {

    v3 = 32;
    do
    {

      Task.cancel()();

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  *(v0 + 104) = _swiftEmptyArrayStorage;

  swift_beginAccess();
  v4 = *(v0 + 112);
  if ((v4 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for NSKeyValueObservation();
    sub_1000E094C(&qword_1001605E0, &type metadata accessor for NSKeyValueObservation, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);

    v7 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v12 = v7;
    v13 = v8;
    v14 = v7;
    if (!v8)
    {
      break;
    }

LABEL_16:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_22:
      sub_1000813A0(v4);
      *(v1 + 112) = &_swiftEmptySetSingleton;

      sub_10002C5C0(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
      sub_1000122B4(v1 + 56);

      return;
    }

    while (1)
    {
      dispatch thunk of NSKeyValueObservation.invalidate()();

      v7 = v14;
      v8 = v15;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSKeyValueObservation();
        swift_dynamicCast();
        v16 = v17;
        v14 = v7;
        v15 = v8;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1000DF3CC()
{
  sub_1000DF0DC();

  return swift_deallocClassInstance();
}

uint64_t sub_1000DF424()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_1000DEEDC();
  [v5 connectToDaemon];

  v24 = *(v1 + 72);
  v6 = v24;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v7 = v6;
  v8 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  swift_beginAccess();
  v9 = v8;
  sub_100068B14(&v25, v9);
  swift_endAccess();

  v24 = *(v1 + 72);
  v10 = v24;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v11 = v10;
  v12 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  swift_beginAccess();
  v13 = v12;
  sub_100068B14(&v25, v13);
  swift_endAccess();

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;

  v18 = sub_100094AF4(0, 0, v4, &unk_100117B58, v17);
  swift_beginAccess();
  v19 = *(v1 + 104);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 104) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_100015698(0, v19[2] + 1, 1, v19);
    *(v1 + 104) = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_100015698((v21 > 1), v22 + 1, 1, v19);
  }

  v19[2] = v22 + 1;
  v19[v22 + 4] = v18;
  *(v1 + 104) = v19;
  swift_endAccess();
}

void sub_1000DF7DC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 paneStatus];
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

uint64_t sub_1000DF8B4()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v22 = *(v2 - 8);
  v23 = v2;
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignposter();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v9 = sub_10000659C(v5, qword_100169718);
  (*(v6 + 16))(v8, v9, v5);
  static OSSignpostID.exclusive.getter();
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = OSSignposter.logHandle.getter();
  v12 = static os_signpost_type_t.begin.getter();
  v13 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v13, "ClassroomListItemProvider.updateClassroomListItemProviderState()", "", v10, 2u);
  v14 = sub_1000DEEDC();
  v15 = [v14 paneStatus];

  if (v15)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  sub_1000DEF48([*(v1 + 72) settingsUIVisible]);
  sub_1000DEFF0(v16, v18);
  v19 = static os_signpost_type_t.end.getter();
  v20 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v19, v20, "ClassroomListItemProvider.updateClassroomListItemProviderState()", "", v10, 2u);

  (*(v22 + 8))(v4, v23);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000DFBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, __n128 a7)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1000E0908();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v13._object = 0x80000001001258D0;
    v13._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v13);
    v14._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 46;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000DFD9C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000DF8B4();
  }

  return result;
}

uint64_t sub_1000DFDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_10004DED0(&unk_10015FCF0, &unk_100117B60);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_1000DFF2C, v7, v6);
}

uint64_t sub_1000DFF2C()
{
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v0[15] = static MainActor.shared.getter();
  v2 = sub_1000E094C(&qword_10015CB60, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1000E0080;
  v4 = v0[7];
  v5 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_1000E0080()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000E048C;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000E0218;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1000E0218()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_1000E027C, v1, v2);
}

uint64_t sub_1000E027C()
{
  v1 = v0[7];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

LABEL_8:

    v9 = v0[1];

    return v9();
  }

  if (!swift_weakLoadStrong())
  {
    v8 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    sub_1000068B0(v8, &unk_10015FCF0, &unk_100117B60);
    goto LABEL_8;
  }

  v3 = v0[7];
  sub_1000DF8B4();

  sub_1000068B0(v3, &unk_10015FCF0, &unk_100117B60);
  v0[15] = static MainActor.shared.getter();
  v4 = sub_1000E094C(&qword_10015CB60, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_1000E0080;
  v6 = v0[7];
  v7 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v7, v4);
}

uint64_t sub_1000E048C()
{
  *(v0 + 40) = *(v0 + 136);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000E0518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for PrimarySettingsListItemModel(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 80) != 1)
  {
    return (*(v10 + 56))(a2, 1, 1, v9);
  }

  v13 = *(v3 + 32);
  v32 = *(v3 + 16);
  v33 = v13;
  v34 = *(v3 + 48);
  type metadata accessor for StaticPrimarySettingsListItemProvider();
  inited = swift_initStackObject();
  v15 = v34;
  v16 = v33;
  *(inited + 16) = v32;
  *(inited + 32) = v16;
  *(inited + 48) = v15;
  sub_10002698C(&v32, v31);
  sub_10005AFAC(a1, v8);
  swift_setDeallocating();
  sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000068B0(v8, &unk_10015EDB0, &unk_100111C70);
    return (*(v10 + 56))(a2, 1, 1, v9);
  }

  sub_10002C634(v8, v12);
  v18 = sub_100029F88();
  v29 = v19;
  v30 = v18;
  v21 = v20;
  v22 = sub_10002A770(v18, v19, v20);
  v24 = v23;
  if (*(v3 + 96))
  {
    v25 = *(v3 + 88);
    v26 = *(v3 + 96);
  }

  else
  {
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  v27 = &v12[*(v9 + 20)];

  sub_10002C758(v27, type metadata accessor for PrimarySettingsListItemViewType);
  v28 = v29;
  *v27 = v30;
  *(v27 + 8) = v28;
  *(v27 + 16) = v21;
  *(v27 + 24) = v22;
  *(v27 + 32) = v24;
  *(v27 + 40) = v25;
  *(v27 + 48) = v26;
  type metadata accessor for PrimarySettingsListItemViewType(0);
  swift_storeEnumTagMultiPayload();
  sub_10002C7EC(v12, a2);
  (*(v10 + 56))(a2, 0, 1, v9);
  return sub_10002C758(v12, type metadata accessor for PrimarySettingsListItemModel);
}

uint64_t sub_1000E0854(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_1000DFDFC(a1, v4, v5, v6);
}

uint64_t sub_1000E094C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E09AC(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 49) != (result & 1))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      type metadata accessor for PrimarySettingsListModel(0);
      sub_1000A2E28("Ethernet", 8, 2);
      result = swift_unknownObjectRelease();
    }
  }

  *(v1 + 49) = v2;
  return result;
}

uint64_t sub_1000E0A54()
{
  if (*(v0 + 72))
  {

    Task.cancel()();
  }

  *(v0 + 72) = 0;

  sub_10002C5C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_1000122B4(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1000E0AF8()
{
  v1 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  v6 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;

  *(v0 + 72) = sub_100094AF4(0, 0, v3, &unk_100117BD0, v8);

  v5(v3, 1, 1, v4);
  v9 = swift_allocObject();
  swift_weakInit();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;

  sub_100094DF4(0, 0, v3, &unk_100117BE0, v11);
}

uint64_t sub_1000E0D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_10004DED0(&unk_10015FCF0, &unk_100117B60);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_1000E0E48, v7, v6);
}

uint64_t sub_1000E0E48()
{
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v0[15] = static MainActor.shared.getter();
  v2 = sub_1000E1930();
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1000E0F6C;
  v4 = v0[7];
  v5 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_1000E0F6C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000E048C;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000E1104;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1000E1104()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_1000E1168, v1, v2);
}

uint64_t sub_1000E1168()
{
  v1 = v0[7];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

LABEL_8:

    v7 = v0[1];

    return v7();
  }

  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (!Strong)
  {
    v6 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    sub_1000E1988(v6);
    goto LABEL_8;
  }

  v0[19] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E12E8, v5, v4);
}

uint64_t sub_1000E12E8()
{
  v1 = [objc_opt_self() sharedManager];
  if (v1)
  {
    v4 = v1;
    v5 = v0[18];

    v6 = [v4 hasEthernetNetworkInterfaces];

    if (v6 != *(v5 + 49) && swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for PrimarySettingsListModel(0);
      sub_1000A2E28("Ethernet", 8, 2);
      swift_unknownObjectRelease();
    }

    *(v5 + 49) = v6;
    v2 = v0[13];
    v3 = v0[14];
    v1 = sub_1000E1408;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000E1408()
{
  v1 = v0[7];

  sub_1000E1988(v1);
  v0[15] = static MainActor.shared.getter();
  v2 = sub_1000E1930();
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1000E0F6C;
  v4 = v0[7];
  v5 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_1000E14D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v4[7] = type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v6;
  v4[10] = v5;

  return _swift_task_switch(sub_1000E156C, v6, v5);
}

uint64_t sub_1000E156C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    *(v0 + 96) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1000E166C, v3, v2);
  }

  else
  {

    **(v0 + 40) = *(v0 + 88) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1000E166C()
{
  v1 = [objc_opt_self() sharedManager];
  if (v1)
  {
    v4 = v1;

    v5 = [v4 hasEthernetNetworkInterfaces];

    sub_1000E09AC(v5);

    v2 = *(v0 + 72);
    v3 = *(v0 + 80);
    v1 = sub_1000E1730;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000E1730()
{

  **(v0 + 40) = *(v0 + 88) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E17C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000E0D18(a1, v4, v5, v6);
}

uint64_t sub_1000E187C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_1000E14D0(a1, v4, v5, v6);
}

unint64_t sub_1000E1930()
{
  result = qword_10015CB60;
  if (!qword_10015CB60)
  {
    type metadata accessor for NSNotificationCenter.Notifications.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CB60);
  }

  return result;
}

uint64_t sub_1000E1988(uint64_t a1)
{
  v2 = sub_10004DED0(&unk_10015FCF0, &unk_100117B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E19F0(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 80) != (result & 1))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      type metadata accessor for PrimarySettingsListModel(0);
      sub_1000A2E28("Exposure Notifications", 22, 2);
      result = swift_unknownObjectRelease();
    }
  }

  *(v1 + 80) = v2;
  return result;
}

uint64_t sub_1000E1A98()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    [v1 invalidate];
  }

  sub_10002C5C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_1000122B4(v0 + 56);

  return swift_deallocClassInstance();
}

void sub_1000E1AFC()
{
  v0 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v0 - 8);
  v18 = &v17 - v1;
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = [objc_allocWithZone(ENManager) init];
  sub_100008294(0, &qword_10015C9D0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10001F7D4();
  sub_10004DED0(&unk_10015FD30, &unk_100117260);
  sub_100015390();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  [v7 setDispatchQueue:v8];

  v9 = type metadata accessor for TaskPriority();
  v10 = v18;
  (*(*(v9 - 8) + 56))(v18, 1, 1, v9);
  v11 = swift_allocObject();
  v12 = v19;
  swift_weakInit();
  type metadata accessor for MainActor();
  v13 = v7;

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;
  v15[5] = v11;

  sub_100094AF4(0, 0, v10, &unk_100117C50, v15);

  v16 = *(v12 + 72);
  *(v12 + 72) = v13;
}

uint64_t sub_1000E1E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a5;
  v5[10] = type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v5[12] = v6;
  *v6 = v5;
  v6[1] = sub_1000E1F40;

  return sub_1000E2308();
}

uint64_t sub_1000E1F40(char a1)
{
  v3 = *v2;
  *(*v2 + 128) = a1;

  if (v1)
  {

    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = sub_1000E317C;
    v8 = v4;
    v9 = v6;
  }

  else
  {
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v11;
    *(v3 + 104) = v10;
    *(v3 + 112) = v11;
    v7 = sub_1000E20E4;
    v8 = v10;
  }

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E20E4()
{
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  return _swift_task_switch(sub_1000E217C, 0, 0);
}

uint64_t sub_1000E217C(__n128 a1)
{
  *(v1 + 120) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E2208, v3, v2);
}

uint64_t sub_1000E2208()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000E19F0(*(v0 + 128));
  }

  swift_weakDestroy();
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_1000E22A8, v1, v2);
}

uint64_t sub_1000E22A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E2308()
{
  v1[2] = v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000E23D4, 0, 0);
}

uint64_t sub_1000E23D4()
{
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  sub_10000659C(v1, qword_100169718);
  static OSSignpostID.exclusive.getter();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v5, "ENManager.getter:shouldShowExposureNotifications", "", v4, 2u);
  }

  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  (*(v9 + 16))(v6, v7, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v11 = OSSignpostIntervalState.init(id:isOpen:)();
  v0[7] = v11;
  (*(v9 + 8))(v7, v8);
  v12 = swift_task_alloc();
  v0[8] = v12;
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_1000E2618;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 11, 0, 0, 0xD00000000000001FLL, 0x80000001001259C0, sub_1000E30C4, v12, &type metadata for Bool);
}

uint64_t sub_1000E2618()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1000E27BC;
  }

  else
  {

    v2 = sub_1000E2734;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E2734()
{

  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000E27BC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_1000E286C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(*v2 + 80) == 1)
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v7 = *(v4 + 32);
    v8 = *(v4 + 40);
    v9 = *(v4 + 48);
    type metadata accessor for StaticPrimarySettingsListItemProvider();
    inited = swift_initStackObject();
    *(inited + 16) = v5;
    *(inited + 24) = v6;
    *(inited + 32) = v7;
    *(inited + 40) = v8;
    *(inited + 48) = v9;
    sub_100029920(v5, v6, v7, v8, v9);
    sub_10005AFAC(a1, a2);
    swift_setDeallocating();
    sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  }

  else
  {
    v12 = type metadata accessor for PrimarySettingsListItemModel(0);
    v13 = *(*(v12 - 8) + 56);

    v13(a2, 1, 1, v12);
  }
}

uint64_t sub_1000E2994(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A924;

  return sub_1000E1E90(a1, v4, v5, v7, v6);
}

void sub_1000E2A54(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10004DED0(&qword_100160758, &unk_100117C60);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_1000E30CC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E2FAC;
  aBlock[3] = &unk_100151B30;
  v12 = _Block_copy(aBlock);

  [a2 getEntitiesWithCompletion:v12];
  _Block_release(v12);
}

uint64_t sub_1000E2C18(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a5)
  {
    if (a1)
    {
LABEL_4:
      sub_10004DED0(&qword_100160758, &unk_100117C60);
      CheckedContinuation.resume(returning:)();
      return sub_1000E2D20(a6);
    }

    if (a2)
    {
      if (a2 >> 62)
      {
        v9 = a3;
        v8 = _CocoaArrayWrapper.endIndex.getter();
        a3 = v9;
        if (v8)
        {
          goto LABEL_4;
        }
      }

      else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_4;
      }
    }

    if (a3 && a3 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    goto LABEL_4;
  }

  swift_errorRetain();
  sub_10004DED0(&qword_100160758, &unk_100117C60);
  CheckedContinuation.resume(throwing:)();
  return sub_1000E2D20(a6);
}

uint64_t sub_1000E2D20(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_10000659C(v9, qword_100169718);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "ENManager.getter:shouldShowExposureNotifications", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000E2FAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a3;
  v11 = *(a1 + 32);
  if (a3)
  {
    sub_100008294(0, &qword_100160760, ENEntity_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a4)
  {
    sub_100008294(0, &qword_100160760, ENEntity_ptr);
    a4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = a2;
  v13 = a5;
  v14 = a6;
  v11(a2, v9, a4, a5, a6);
}

uint64_t sub_1000E30CC(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10004DED0(&qword_100160758, &unk_100117C60);
  v11 = *(v5 + 16);

  return sub_1000E2C18(a1, a2, a3, a4, a5, v11);
}

uint64_t sub_1000E3180()
{
  v1 = OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_notificationTask;
  if (*(v0 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_notificationTask))
  {

    Task.cancel()();
  }

  *(v0 + v1) = 0;

  sub_10002C5C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v2 = OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_rowStatus;
  v3 = type metadata accessor for FamilyRowStatus();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_1000122B4(v0 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_invalidator);

  return v0;
}

uint64_t sub_1000E3278()
{
  sub_1000E3180();

  return swift_deallocClassInstance();
}

uint64_t sub_1000E32D8()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-1] - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;

  *(v1 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_notificationTask) = sub_100094AF4(0, 0, v4, &unk_100117D18, v8);

  static FamilySettingsFactory.sharedProvider.getter();
  sub_100018544(v11, v11[3]);
  dispatch thunk of FamilySettingsViewsProtocol.sendWakeupNotification()();
  return sub_10000665C(v11);
}

uint64_t sub_1000E347C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[41] = a4;
  sub_10004DED0(&unk_100160860, qword_100117D20);
  v4[42] = swift_task_alloc();
  v5 = type metadata accessor for FamilyRowStatus();
  v4[43] = v5;
  v4[44] = *(v5 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v6 = type metadata accessor for Notification();
  v4[47] = v6;
  v4[48] = *(v6 - 8);
  v4[49] = swift_task_alloc();
  sub_10004DED0(&unk_10015FCF0, &unk_100117B60);
  v4[50] = swift_task_alloc();
  v7 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[51] = v7;
  v4[52] = *(v7 - 8);
  v4[53] = swift_task_alloc();
  v4[54] = type metadata accessor for MainActor();
  v4[55] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[56] = v9;
  v4[57] = v8;

  return _swift_task_switch(sub_1000E36A8, v9, v8);
}

uint64_t sub_1000E36A8()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = static FamilySettingsFactory.FamilySettingsViewsHaveChanged.getter();
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v0[58] = static MainActor.shared.getter();
  v3 = sub_10002C878(&qword_10015CB60, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v4 = swift_task_alloc();
  v0[59] = v4;
  *v4 = v0;
  v4[1] = sub_1000E3804;
  v5 = v0[50];
  v6 = v0[51];

  return dispatch thunk of AsyncIteratorProtocol.next()(v5, v6, v3);
}

uint64_t sub_1000E3804()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  v3 = *(v2 + 464);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000E408C;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000E399C;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1000E399C()
{

  v1 = *(v0 + 448);
  v2 = *(v0 + 456);

  return _swift_task_switch(sub_1000E3A00, v1, v2);
}

uint64_t sub_1000E3A00()
{
  v1 = v0[50];
  v2 = v0[47];
  v3 = v0[48];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[52] + 8))(v0[53], v0[51]);

LABEL_31:

    v45 = v0[1];

    return v45();
  }

  (*(v3 + 32))(v0[49], v1, v2);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v40 = v0[52];
    v39 = v0[53];
    v41 = v0[51];
    v43 = v0[48];
    v42 = v0[49];
    v44 = v0[47];

    (*(v43 + 8))(v42, v44);
    (*(v40 + 8))(v39, v41);
    goto LABEL_31;
  }

  v5 = Strong;
  v6 = Notification.userInfo.getter();
  if (!v6)
  {
    v6 = sub_1000BA838(_swiftEmptyArrayStorage);
  }

  v7 = v6;
  v0[34] = static FamilySettingsFactory.Status.getter();
  v0[35] = v8;
  AnyHashable.init<A>(_:)();
  if (*(v7 + 16) && (v9 = sub_100017DC0((v0 + 2)), (v10 & 1) != 0))
  {
    v11 = v0[43];
    v12 = v0[44];
    v13 = v0[42];
    sub_10001EE30(*(v7 + 56) + 32 * v9, (v0 + 17));
    sub_100017E04((v0 + 2));
    v14 = swift_dynamicCast();
    (*(v12 + 56))(v13, v14 ^ 1u, 1, v11);
    if ((*(v12 + 48))(v13, 1, v11) != 1)
    {
      (*(v0[44] + 32))(v0[46], v0[42], v0[43]);
      goto LABEL_13;
    }
  }

  else
  {
    v15 = v0[43];
    v16 = v0[44];
    v17 = v0[42];
    sub_100017E04((v0 + 2));
    (*(v16 + 56))(v17, 1, 1, v15);
  }

  v18 = v0[43];
  v19 = v0[44];
  v20 = v0[42];
  static FamilySettingsFactory.sharedProvider.getter();
  sub_100018544(v0 + 7, v0[10]);
  dispatch thunk of FamilySettingsViewsProtocol.rowStatus.getter();
  sub_10000665C(v0 + 7);
  if ((*(v19 + 48))(v20, 1, v18) != 1)
  {
    sub_1000E4550(v0[42]);
  }

LABEL_13:
  v21 = v0[45];
  v22 = v0[43];
  v23 = v0[44];
  v24 = OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_rowStatus;
  swift_beginAccess();
  (*(v23 + 16))(v21, v5 + v24, v22);
  sub_10002C878(&qword_100160858, &type metadata accessor for FamilyRowStatus, &protocol conformance descriptor for FamilyRowStatus);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v23 + 8))(v21, v22);
  if ((v25 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for PrimarySettingsListModel(0);
    sub_1000A2E28("Family Row Status", 17, 2);
    swift_unknownObjectRelease();
  }

  v26 = v0[46];
  v27 = v0[43];
  v28 = v0[44];
  swift_beginAccess();
  (*(v28 + 40))(v5 + v24, v26, v27);
  swift_endAccess();
  v0[36] = static FamilySettingsFactory.Marquee.getter();
  v0[37] = v29;
  AnyHashable.init<A>(_:)();
  if (!*(v7 + 16) || (v30 = sub_100017DC0((v0 + 12)), (v31 & 1) == 0))
  {

    sub_100017E04((v0 + 12));
    goto LABEL_21;
  }

  sub_10001EE30(*(v7 + 56) + 32 * v30, (v0 + 21));
  sub_100017E04((v0 + 12));

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v32 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_22;
  }

  v32 = v0[38];
  v33 = v0[39];
LABEL_22:
  v34 = (v5 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_familyRowInfo);
  if ((v32 != *(v5 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_familyRowInfo) || v33 != *(v5 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_familyRowInfo + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for PrimarySettingsListModel(0);
    sub_1000A2E28("Family Row Info", 15, 2);
    swift_unknownObjectRelease();
  }

  (*(v0[48] + 8))(v0[49], v0[47]);
  *v34 = v32;
  v34[1] = v33;

  v0[58] = static MainActor.shared.getter();
  v35 = sub_10002C878(&qword_10015CB60, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v36 = swift_task_alloc();
  v0[59] = v36;
  *v36 = v0;
  v36[1] = sub_1000E3804;
  v37 = v0[50];
  v38 = v0[51];

  return dispatch thunk of AsyncIteratorProtocol.next()(v37, v38, v35);
}

uint64_t sub_1000E408C()
{
  *(v0 + 320) = *(v0 + 480);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void sub_1000E4118(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PrimarySettingsListFamilyLinkModel(0);
  __chkstk_darwin(v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FamilyRowStatus();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v24 - v12;
  v14 = OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_rowStatus;
  swift_beginAccess();
  (*(v8 + 16))(v13, v2 + v14, v7);
  (*(v8 + 104))(v11, enum case for FamilyRowStatus.hidden(_:), v7);
  sub_10002C878(&qword_100160858, &type metadata accessor for FamilyRowStatus, &protocol conformance descriptor for FamilyRowStatus);
  LOBYTE(v14) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v8 + 8);
  v15(v11, v7);
  v15(v13, v7);
  if (v14)
  {
    v16 = type metadata accessor for PrimarySettingsListItemModel(0);
    (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  else
  {
    static FamilySettingsFactory.sharedProvider.getter();
    sub_100018544(v24, v24[3]);
    dispatch thunk of FamilySettingsViewsProtocol.rowStatus.getter();
    v17 = &v6[*(v4 + 20)];
    *v17 = 0;
    *(v17 + 1) = 0xE000000000000000;
    sub_10000665C(v24);
    v18 = *(v2 + 16);
    v19 = *(v2 + 24);
    v20 = *(v2 + 32);
    v21 = *(v2 + 40);
    v22 = *(v2 + 48);
    v23 = type metadata accessor for PrimarySettingsListItemModel(0);
    sub_100057574(v6, a1 + *(v23 + 20));
    type metadata accessor for PrimarySettingsListItemViewType(0);
    swift_storeEnumTagMultiPayload();
    *a1 = v18;
    *(a1 + 8) = v19;
    *(a1 + 16) = v20;
    *(a1 + 24) = v21;
    *(a1 + 32) = v22;
    *(a1 + *(v23 + 24)) = 0;
    (*(*(v23 - 8) + 56))(a1, 0, 1, v23);
    sub_100029920(v18, v19, v20, v21, v22);
  }
}

uint64_t sub_1000E449C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_1000E347C(a1, v4, v5, v6);
}

uint64_t sub_1000E4550(uint64_t a1)
{
  v2 = sub_10004DED0(&unk_100160860, qword_100117D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000E45B8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10004DED0(&unk_10015E9E0, &unk_1001173F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v7 = OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_softwareUpdateClient;
  v8 = *&v1[OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_softwareUpdateClient];
  if (v8 && ([v8 setDelegate:0], (v9 = *&v1[v7]) != 0))
  {
    [v9 invalidate];
    v10 = *&v1[v7];
  }

  else
  {
    v10 = 0;
  }

  *&v1[v7] = 0;

  (*(v4 + 16))(v6, &v1[OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_shouldBadgeStreamContinuation], v3);
  AsyncStream.Continuation.finish()();
  (*(v4 + 8))(v6, v3);
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_1000E4850()
{
  v0 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v0 - 8);
  v26 = &v24 - v1;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  sub_100003CAC();
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_10001F7D4();
  sub_10004DED0(&unk_10015FD30, &unk_100117260);
  sub_100015390();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = objc_allocWithZone(SUManagerClient);
  v10 = v25;
  v11 = [v9 initWithDelegate:v25 queue:v8 clientType:1];

  v12 = *(v10 + OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_softwareUpdateClient);
  *(v10 + OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_softwareUpdateClient) = v11;

  v13 = type metadata accessor for TaskPriority();
  v14 = *(*(v13 - 8) + 56);
  v15 = v26;
  v14(v26, 1, 1, v13);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v16;

  v19 = v15;
  sub_100094AF4(0, 0, v15, &unk_100117DD8, v18);

  v14(v15, 1, 1, v13);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v22[4] = v20;

  sub_100094DF4(0, 0, v19, &unk_100117DE8, v22);
}

uint64_t sub_1000E4C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_10004DED0(&qword_100160950, &unk_100117E00);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_10004DED0(&unk_10015FDF0, &qword_100115CC0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v8;
  v4[19] = v7;

  return _swift_task_switch(sub_1000E4DF0, v8, v7);
}

uint64_t sub_1000E4DF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[14];
    v3 = v0[15];
    v4 = v0[12];
    v5 = v0[13];
    v6 = Strong;
    (*(v5 + 16))(v2, Strong + OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_shouldBadgeStream, v4);

    (*(v5 + 32))(v3, v2, v4);
    AsyncStream.makeAsyncIterator()();
    swift_beginAccess();
    v7 = static MainActor.shared.getter();
    v0[20] = v7;
    v8 = swift_task_alloc();
    v0[21] = v8;
    *v8 = v0;
    v8[1] = sub_1000E4FC4;
    v9 = v0[9];

    return AsyncStream.Iterator.next(isolation:)(v0 + 22, v7, &protocol witness table for MainActor, v9);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1000E4FC4()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_1000E5108, v3, v2);
}

uint64_t sub_1000E5108()
{
  v1 = *(v0 + 176);
  if (v1 == 2 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 96);
    v10 = *(v0 + 104);
    v12 = *(v0 + 80);
    v11 = *(v0 + 88);
    v13 = *(v0 + 72);

    (*(v12 + 8))(v11, v13);
    (*(v10 + 8))(v8, v9);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_badgedForSoftwareUpdate;
    if (*(Strong + OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_badgedForSoftwareUpdate) != (v1 & 1) && swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for PrimarySettingsListModel(0);
      sub_1000A2E28("General Software Update Badge", 29, 2);
      swift_unknownObjectRelease();
    }

    v3[v4] = v1 & 1;

    v5 = static MainActor.shared.getter();
    *(v0 + 160) = v5;
    v6 = swift_task_alloc();
    *(v0 + 168) = v6;
    *v6 = v0;
    v6[1] = sub_1000E4FC4;
    v7 = *(v0 + 72);

    return AsyncStream.Iterator.next(isolation:)(v0 + 176, v5, &protocol witness table for MainActor, v7);
  }
}

uint64_t sub_1000E531C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v5 = sub_10004DED0(&unk_100160940, &unk_100117DF0);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E541C, v7, v6);
}

uint64_t sub_1000E541C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 64);
    v2 = *(v0 + 72);
    v4 = *(v0 + 56);
    *(v0 + 88) = SUSUISettingsIsBadgedForSoftwareUpdate();
    sub_10004DED0(&unk_10015E9E0, &unk_1001173F0);
    AsyncStream.Continuation.yield(_:)();

    (*(v3 + 8))(v2, v4);
  }

  **(v0 + 40) = Strong == 0;

  v5 = *(v0 + 8);

  return v5();
}

void sub_1000E552C(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PrimarySettingsListItemViewType(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v9 = (v1 + OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_id);
  v10 = *(v1 + OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_id + 16);
  if (*(v1 + OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_badgedForSoftwareUpdate) == 1)
  {
    v29 = *v9;
    v30 = v29;
    v31 = v10;
    v11 = *(v9 + 32);
    v32 = v11;
    v28 = v9[1];
    v12 = sub_100029F88();
    v14 = v13;
    v16 = v15;
    v17 = sub_10002A770(v12, v13, v15);
    *v6 = v12;
    *(v6 + 1) = v14;
    v6[16] = v16;
    *(v6 + 3) = v17;
    *(v6 + 4) = v18;
    *(v6 + 5) = 1;
  }

  else
  {
    v29 = *v9;
    v30 = v29;
    v31 = v10;
    v11 = *(v9 + 32);
    v32 = v11;
    v28 = v9[1];
    v19 = sub_100029F88();
    v21 = v20;
    v23 = v22;
    v24 = sub_10002A770(v19, v20, v22);
    *v6 = v19;
    *(v6 + 1) = v21;
    v6[16] = v23;
    *(v6 + 3) = v24;
    *(v6 + 4) = v25;
  }

  swift_storeEnumTagMultiPayload();
  sub_10002C3F0(v6, v8);
  v26 = v28;
  *a1 = v29;
  *(a1 + 16) = v26;
  *(a1 + 32) = v11;
  v27 = type metadata accessor for PrimarySettingsListItemModel(0);
  sub_10002C3F0(v8, a1 + *(v27 + 20));
  *(a1 + *(v27 + 24)) = 0;
  (*(*(v27 - 8) + 56))(a1, 0, 1, v27);
  sub_100029920(v29, *(&v29 + 1), v28, *(&v28 + 1), v11);
}

uint64_t sub_1000E58E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000E4C78(a1, v4, v5, v6);
}

uint64_t sub_1000E5994(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_1000E531C(a1, v4, v5, v6);
}

uint64_t sub_1000E5A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PrimarySettingsListItemModel(0);
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = __chkstk_darwin(v5);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v45 - v8;
  v10 = *(a1 + 72);
  v11 = *(v10 + 16);
  if (v11)
  {
    v45 = v2;
    v46 = a2;
    v47 = 0x8000000100120300;
    v56 = _swiftEmptyArrayStorage;
    v12 = (v10 + 80);
    v48 = &v45 - v8;
    do
    {
      v15 = *(v12 - 6);
      v16 = *(v12 - 5);
      v18 = *(v12 - 4);
      v17 = *(v12 - 3);
      v19 = *(v12 - 2);
      v20 = *(v12 - 1);
      v21 = *v12;
      v55 = v19;
      v53 = v11;
      v54 = v18;
      v52 = v15;
      if (v21)
      {
        v22 = v51;
        v23 = v49;
        v24 = &v49[*(v51 + 20)];
        *v24 = v18;
        v24[1] = v17;
        v24[2] = 1;
        type metadata accessor for PrimarySettingsListItemViewType(0);
        swift_storeEnumTagMultiPayload();
        *v23 = v15;
        *(v23 + 1) = v16;
        *(v23 + 2) = 0;
        *(v23 + 3) = 0;
        v23[32] = 4;
        *&v23[*(v22 + 24)] = 0;
        sub_1000E5F90(v15, v16, v18, v17, v19, v20, 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_10002C850(0, v56[2] + 1, 1, v56);
        }

        v26 = v56[2];
        v25 = v56[3];
        v27 = v26 + 1;
        v9 = v48;
        v28 = v52;
        if (v26 >= v25 >> 1)
        {
          v29 = v52;
          v56 = sub_10002C850((v25 > 1), v26 + 1, 1, v56);
          v28 = v29;
        }

        sub_100065B0C(v28, v16, v54, v17, v55, v20, 1);
        v13 = v49;
      }

      else
      {
        v30 = v51;
        v31 = &v9[*(v51 + 20)];
        *v31 = 0xD00000000000001ALL;
        *(v31 + 1) = v47;
        v31[16] = 2;
        *(v31 + 3) = v18;
        *(v31 + 4) = v17;
        *(v31 + 5) = v19;
        *(v31 + 6) = v20;
        type metadata accessor for PrimarySettingsListItemViewType(0);
        swift_storeEnumTagMultiPayload();
        *v9 = v15;
        *(v9 + 1) = v16;
        *(v9 + 2) = 0;
        *(v9 + 3) = 0;
        v9[32] = 3;
        *&v9[*(v30 + 24)] = 0;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_1000E5F90(v15, v16, v18, v17, v19, v20, 0);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_10002C850(0, v56[2] + 1, 1, v56);
        }

        v26 = v56[2];
        v32 = v56[3];
        v27 = v26 + 1;
        v33 = v52;
        if (v26 >= v32 >> 1)
        {
          v34 = v52;
          v56 = sub_10002C850((v32 > 1), v26 + 1, 1, v56);
          v33 = v34;
        }

        sub_100065B0C(v33, v16, v54, v17, v55, v20, 0);

        v13 = v9;
      }

      v14 = v56;
      v56[2] = v27;
      sub_10002C634(v13, v14 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v26);
      v12 += 56;
      v11 = v53 - 1;
    }

    while (v53 != 1);
    v35 = *(v45 + 16);
    v36 = *(v45 + 24);
    v37 = *(v45 + 32);
    v38 = type metadata accessor for PrimarySettingsListSectionModel(0);
    v39 = *(v38 + 24);
    v40 = type metadata accessor for LocalizedStringResource();
    v41 = v46;
    (*(*(v40 - 8) + 56))(v46 + v39, 1, 1, v40);
    *v41 = v35;
    *(v41 + 8) = v36;
    *(v41 + 16) = v37;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0;
    *(v41 + *(v38 + 28)) = v56;
    (*(*(v38 - 8) + 56))(v41, 0, 1, v38);
    return sub_100025974(v35, v36, v37);
  }

  else
  {
    v43 = type metadata accessor for PrimarySettingsListSectionModel(0);
    v44 = *(*(v43 - 8) + 56);

    return v44(a2, 1, 1, v43);
  }
}

uint64_t sub_1000E5F30()
{
  sub_100025CD8(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1000E5F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
  }
}

unint64_t sub_1000E5FE4()
{
  result = qword_1001609F8;
  if (!qword_1001609F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001609F8);
  }

  return result;
}

uint64_t sub_1000E6038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  __chkstk_darwin(v5 - 8);
  v7 = &countAndFlagsBits - v6;
  v8 = type metadata accessor for PrimarySettingsListItemModel(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &countAndFlagsBits - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 32);
  v41 = *(v2 + 16);
  v42 = v12;
  v43 = *(v2 + 48);
  type metadata accessor for StaticPrimarySettingsListItemProvider();
  inited = swift_initStackObject();
  v14 = v43;
  v15 = v42;
  *(inited + 16) = v41;
  *(inited + 32) = v15;
  *(inited + 48) = v14;
  sub_10002698C(&v41, v40);
  sub_10005AFAC(a1, v7);
  swift_setDeallocating();
  sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10002C8C0(v7);
    return (*(v9 + 56))(a2, 1, 1, v8);
  }

  else
  {
    sub_10002C634(v7, v11);
    v38 = *(v8 + 24);
    v39 = a2;
    v17 = *&v11[v38];
    v18 = *(a1 + 38);
    v20 = (v17 & 1) == 0 && v18 == 1;
    v37 = v17 | v20;
    if ((v18 - 1) > 1)
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    else
    {
      v21 = [objc_opt_self() mainBundle];
      v44._object = 0x80000001001255B0;
      v22._countAndFlagsBits = 0x53544F485F46464FLL;
      v22._object = 0xEB00000000544F50;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      v44._countAndFlagsBits = 0xD000000000000026;
      v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v44);
      countAndFlagsBits = v24._countAndFlagsBits;
      object = v24._object;
    }

    v26 = sub_100029F88();
    v28 = v27;
    v30 = v29;
    v31 = sub_10002A770(v26, v27, v29);
    v33 = v32;
    v34 = &v11[*(v8 + 20)];
    sub_10002C758(v34, type metadata accessor for PrimarySettingsListItemViewType);
    *v34 = v26;
    *(v34 + 8) = v28;
    *(v34 + 16) = v30;
    *(v34 + 24) = v31;
    *(v34 + 32) = v33;
    *(v34 + 40) = countAndFlagsBits;
    *(v34 + 48) = object;
    type metadata accessor for PrimarySettingsListItemViewType(0);
    swift_storeEnumTagMultiPayload();
    *&v11[v38] = v37;
    v35 = v39;
    sub_10002C7EC(v11, v39);
    (*(v9 + 56))(v35, 0, 1, v8);
    return sub_10002C758(v11, type metadata accessor for PrimarySettingsListItemModel);
  }
}

void sub_1000E6390()
{
  v0 = [objc_opt_self() sharedManager];
}

uint64_t sub_1000E63F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v3 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for PrimarySettingsListItemModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v12 = *(v2 + 32);
  v13 = *(v2 + 40);
  v14 = *(v2 + 48);
  type metadata accessor for StaticPrimarySettingsListItemProvider();
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  *(inited + 24) = v11;
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  *(inited + 48) = v14;
  v16 = v10;
  v17 = v6;
  v18 = v28;
  sub_100029920(v16, v11, v12, v13, v14);
  sub_10005AFAC(v18, v5);
  swift_setDeallocating();
  sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  if ((*(v7 + 48))(v5, 1, v17) == 1)
  {
    sub_10002C8C0(v5);
    return (*(v7 + 56))(v29, 1, 1, v17);
  }

  else
  {
    sub_10002C634(v5, v9);
    v20 = *(v17 + 24);
    v21 = *&v9[v20];
    v22 = *(v18 + 48);
    v23 = *(v18 + 56);
    v24 = *(v18 + 64);
    if (v24 >= 0x40)
    {
      v21 |= 4uLL;
    }

    *&v9[v20] = v21;
    v25 = &v9[*(v17 + 20)];
    sub_10002C7B8(v22, v23, v24);
    sub_10002C758(v25, type metadata accessor for PrimarySettingsListItemViewType);
    *v25 = v22;
    *(v25 + 8) = v23;
    *(v25 + 16) = v24;
    type metadata accessor for PrimarySettingsListItemViewType(0);
    swift_storeEnumTagMultiPayload();
    v26 = v29;
    sub_10002C7EC(v9, v29);
    (*(v7 + 56))(v26, 0, 1, v17);
    return sub_10002C758(v9, type metadata accessor for PrimarySettingsListItemModel);
  }
}