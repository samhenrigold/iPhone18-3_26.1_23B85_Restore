void sub_1004C3FE8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1004C4334();
}

id sub_1004C4068()
{
  ObjectType = swift_getObjectType();
  v2 = *((swift_isaMask & *v0) + 0x58);
  sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  *&v0[*((swift_isaMask & *v0) + 0x60)] = 0;
  v4 = *((swift_isaMask & *v0) + 0x68);
  type metadata accessor for Optional();
  sub_100280938(&unk_10097A930, &unk_1007F9050);
  v5 = type metadata accessor for CheckedContinuation();
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_1004C41EC(char *a1)
{

  v2 = *((swift_isaMask & *a1) + 0x68);
  type metadata accessor for Optional();
  sub_100280938(&unk_10097A930, &unk_1007F9050);
  type metadata accessor for CheckedContinuation();
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 8);

  return v4(&a1[v2], v3);
}

uint64_t sub_1004C4334()
{
  type metadata accessor for Optional();
  sub_100280938(&unk_10097A930, &unk_1007F9050);
  v0 = type metadata accessor for Result();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v12 - v2);
  if (qword_100973938 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100980650);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "SDAirDropRemoteViewController did deactivate", v7, 2u);
  }

  v8 = type metadata accessor for SFError();
  sub_10044FED8();
  v9 = swift_allocError();
  *v10 = 0xD000000000000018;
  v10[1] = 0x8000000100792CF0;
  v10[2] = 0xD000000000000064;
  v10[3] = 0x8000000100792D10;
  v10[4] = 114;
  (*(*(v8 - 8) + 104))(v10, enum case for SFError.unexpected(_:), v8);
  *v3 = v9;
  swift_storeEnumTagMultiPayload();
  sub_1004C3A6C(v3);
  return (*(v1 + 8))(v3, v0);
}

void sub_1004C45C4(const char *a1)
{
  if (qword_100973938 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100980650);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_1004C46B4()
{
  sub_10000C60C((v0 + 112));
  sub_1004C4868(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19UserProfilesMonitor_continuation);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for UserProfilesMonitor(uint64_t a1)
{
  result = qword_100980728;
  if (!qword_100980728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004C4750(uint64_t a1)
{
  sub_1004C47F4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1004C47F4(uint64_t a1)
{
  if (!qword_100980738)
  {
    sub_100280938(&unk_100980740, &qword_1008103E0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100980738);
    }
  }
}

uint64_t sub_1004C4868(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100980800, &unk_100806E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004C48E0(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_10028088C(&qword_100977DA8, &unk_100806FB0);
  v4 = sub_100011630(&unk_100980910, &qword_100977DA8, &unk_100806FB0, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_1004C49D8;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 2, v3, v4);
}

uint64_t sub_1004C49D8()
{
  v2 = *(*v1 + 32);
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1004C4B84;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1004C4B68;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_1004C4B84()
{
  v0[3] = v0[7];
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1004C4C2C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_10028088C(&qword_10097AD20, &qword_100806FA0);
  v4 = sub_100011630(&qword_100980908, &qword_10097AD20, &qword_100806FA0, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_1004C4D24;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 2, v3, v4);
}

uint64_t sub_1004C4D24()
{
  v2 = *(*v1 + 32);
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1004CDBF4;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1004CDBF8;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_1004C4EB4(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_10028088C(&qword_1009808D8, &qword_100806F08);
  v4 = sub_100011630(&qword_1009808F0, &qword_1009808D8, &qword_100806F08, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_1004C4D24;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 2, v3, v4);
}

uint64_t sub_1004C4FAC()
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  v4 = type metadata accessor for NWBrowser.Descriptor();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_browser;
  if (!*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_browser))
  {
    sub_1005C26B4(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_sessionLogger));
    v10 = [objc_allocWithZone(RPClient) init];
    v11 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_rpClient);
    *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_rpClient) = v10;

    strcpy(v8, "_airdrop._tcp.");
    v8[15] = -18;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    (*(v5 + 104))(v8, enum case for NWBrowser.Descriptor.bonjourWithTXTRecord(_:), v4);
    type metadata accessor for NWParameters();
    static NWParameters.tcp.getter();
    NWParameters.allowLocalEndpointReuse.setter();
    NWParameters.includePeerToPeer.setter();
    type metadata accessor for NWBrowser();
    swift_allocObject();
    *(v0 + v9) = NWBrowser.init(for:using:)();
    swift_retain_n();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    NWBrowser.browseResultsChangedHandler.setter();

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    swift_weakInit();

    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;

    NWBrowser.stateUpdateHandler.setter();

    NWBrowser.start(queue:)();
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = qword_1009735E0;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = static AirDropActor.shared;
    v19 = sub_1004CDBAC(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v20 = swift_allocObject();
    v20[2] = v18;
    v20[3] = v19;
    v20[4] = v16;

    sub_1002B281C(0, 0, v3, &unk_100806EF8, v20);
  }

  return result;
}

void sub_1004C5400()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_browser;
  if (!*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_browser))
  {
    return;
  }

  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_sessionLogger);

  sub_1005C26DC(v3);
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_rpClient;
  v5 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_rpClient);
  if (v5)
  {
    [v5 invalidate];
  }

  NWBrowser.cancel()();
  sub_10055FC6C();
  v6 = String._bridgeToObjectiveC()();

  v7 = *(v3 + 24);
  if (v7)
  {
    if (v7 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_7:
        if ((v7 & 0xC000000000000001) != 0)
        {
LABEL_29:

          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();

          v23 = *(v22 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
          swift_unknownObjectRelease();
          v8 = v23;
        }

        else
        {
          if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v8 = *(*(v7 + 32) + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
        }

        goto LABEL_12;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }
  }

  v8 = 0;
LABEL_12:
  sub_100086D20(@"BonjourBrowse", @"Stop", v6, v8);

  *(v2 + v1) = 0;

  v9 = *(v2 + v4);
  *(v2 + v4) = 0;

  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToCurrentDiscoverConnections;
  swift_beginAccess();
  v11 = *(v2 + v10);
  v1 = v11 + 64;
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v4 = (v12 + 63) >> 6;

  v15 = 0;
  while (v14)
  {
LABEL_21:
    v17 = *(*(v11 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (*&v17[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_discoverConnection])
    {
      v18 = v17;

      NWConnection.forceCancel()();
    }

    else
    {
      v19 = v17;
    }

    v6 = *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_identityShareConnection];
    if (v6)
    {

      NWConnection.forceCancel()();
    }

    v14 &= v14 - 1;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v16 >= v4)
    {
      break;
    }

    v14 = *(v1 + 8 * v16);
    ++v15;
    if (v14)
    {
      v15 = v16;
      goto LABEL_21;
    }
  }

  v20 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToBrowseResult;
  swift_beginAccess();
  *(v2 + v20) = &_swiftEmptyDictionarySingleton;

  *(v2 + v10) = &_swiftEmptyDictionarySingleton;

  v21 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToRetryCount;
  swift_beginAccess();
  *(v2 + v21) = &_swiftEmptyDictionarySingleton;

  CurrentValueSubject.send(completion:)();
}

uint64_t sub_1004C5738()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100980808);
  v1 = sub_10000C4AC(v0, qword_100980808);
  if (qword_1009736E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0900);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_1004C5800()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToCurrentDiscoverConnections;
  swift_beginAccess();
  v2 = *(*(v0 + v1) + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_transferringConnectables;
    v5 = Strong;
    swift_beginAccess();
    v6 = *(*(v5 + v4) + 16);
    swift_unknownObjectRelease();
    v7 = 2;
    if (!v6)
    {
      v7 = 5;
    }
  }

  else
  {
    v7 = 5;
  }

  return v7 >= v2;
}

uint64_t sub_1004C58B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v11 = qword_1009735E0;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v13 = sub_1004CDBAC(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = v9;
  v14[5] = a1;
  v14[6] = a2;

  sub_1002B3398(0, 0, v7, &unk_100806F88, v14);
}

uint64_t sub_1004C5ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004C5B5C, v7, 0);
}

uint64_t sub_1004C5B5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1004C5BF8(*(v0 + 56), *(v0 + 64));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004C5BF8(uint64_t a1, uint64_t a2)
{
  v152 = a1;
  v160 = type metadata accessor for NWEndpoint();
  v4 = *(v160 - 8);
  v5 = __chkstk_darwin(v160);
  v7 = (&v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v5);
  v146 = &v117 - v9;
  v10 = __chkstk_darwin(v8);
  v132 = (&v117 - v11);
  v12 = __chkstk_darwin(v10);
  v149 = &v117 - v13;
  v14 = __chkstk_darwin(v12);
  v119 = (&v117 - v15);
  v16 = __chkstk_darwin(v14);
  v118 = &v117 - v17;
  v18 = __chkstk_darwin(v16);
  v148 = &v117 - v19;
  __chkstk_darwin(v18);
  v127 = &v117 - v20;
  v134 = type metadata accessor for NWBrowser.Result.Change.Flags();
  v153 = *(v134 - 8);
  __chkstk_darwin(v134);
  v133 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for NWBrowser.Result();
  v22 = *(v164 - 8);
  v23 = __chkstk_darwin(v164);
  v163 = (&v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v23);
  v138 = &v117 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = (&v117 - v28);
  __chkstk_darwin(v27);
  v135 = &v117 - v30;
  v31 = type metadata accessor for NWBrowser.Result.Change();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v35 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v143 = &v117 - v36;
  v151 = v2;
  sub_100469844();
  v37 = v29;
  v38 = v32;
  v39 = v35;
  v161 = v41;
  v162 = v40;
  v42 = a2 + 56;
  v43 = 1 << *(a2 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(a2 + 56);
  v150 = (v43 + 63) >> 6;
  v142 = v38 + 16;
  v141 = v38 + 32;
  v140 = v38 + 88;
  v139 = enum case for NWBrowser.Result.Change.removed(_:);
  v130 = enum case for NWBrowser.Result.Change.changed(_:);
  v126 = (v38 + 8);
  v136 = (v38 + 96);
  v154 = (v22 + 32);
  v125 = (v153 + 4);
  v159 = (v4 + 16);
  v158 = (v4 + 88);
  v157 = enum case for NWEndpoint.service(_:);
  v46 = (v4 + 8);
  v47 = (v4 + 96);
  v48 = v31;
  v155 = v47;
  v156 = v46;
  v124 = v153 + 1;
  v145 = v22;
  v153 = (v22 + 8);
  v147 = a2;

  v49 = 0;
  v129 = v37;
  v137 = v31;
  v144 = a2 + 56;
  v131 = v38;
  while (1)
  {
    if (v45)
    {
      v50 = v149;
      v51 = v148;
      goto LABEL_11;
    }

    v50 = v149;
    v51 = v148;
    do
    {
      v52 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v52 >= v150)
      {

        v90 = v152 + 56;
        v91 = 1 << *(v152 + 32);
        v92 = -1;
        if (v91 < 64)
        {
          v92 = ~(-1 << v91);
        }

        v93 = v92 & *(v152 + 56);
        v94 = (v91 + 63) >> 6;

        v95 = 0;
        v96 = v164;
        while (1)
        {
          v97 = v146;
          if (!v93)
          {
            break;
          }

LABEL_40:
          v99 = v145;
          v100 = v138;
          (*(v145 + 16))(v138, *(v152 + 48) + *(v145 + 72) * (__clz(__rbit64(v93)) | (v95 << 6)), v96);
          v101 = *(v99 + 32);
          v37 = v163;
          v101(v163, v100, v96);
          NWBrowser.Result.endpoint.getter();
          v102 = v160;
          (*v159)(v7, v97, v160);
          v103 = (*v158)(v7, v102);
          if (v103 != v157)
          {
            goto LABEL_53;
          }

          v93 &= v93 - 1;
          (*v156)(v97, v102);
          (*v155)(v7, v102);
          v104 = *v7;
          v105 = v7[1];

          v106 = sub_10028088C(&qword_1009808E8, &qword_100806F50);
          sub_100005508(v7 + *(v106 + 80), &qword_1009787A8, &unk_1007FB990);
          if (v104 == v162 && v105 == v161 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v37 = v151, (sub_1004C6D44(v163) & 1) == 0))
          {
            v96 = v164;
            (*v153)(v163, v164);
          }

          else
          {
            v107 = v163;
            v37 = v151;
            sub_1004C7A80(v163, v104, v105);

            v96 = v164;
            (*v153)(v107, v164);
          }
        }

        while (1)
        {
          v98 = v95 + 1;
          if (__OFADD__(v95, 1))
          {
            goto LABEL_52;
          }

          if (v98 >= v94)
          {
            break;
          }

          v93 = *(v90 + 8 * v98);
          ++v95;
          if (v93)
          {
            v95 = v98;
            goto LABEL_40;
          }
        }

        v108 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToBrowseResult;
        v109 = v151;
        swift_beginAccess();
        v110 = *&v109[v108];
        v111 = *(v110 + 16);
        if (v111)
        {
          v112 = sub_10028F5DC(*(v110 + 16), 0);
          v113 = sub_100292394(&v165, v112 + 4, v111, v110);
          v114 = v165;

          sub_100027D64(v114);
          if (v113 != v111)
          {
            __break(1u);
            goto LABEL_49;
          }
        }

        else
        {
LABEL_49:
          v112 = _swiftEmptyArrayStorage;
        }

        v165 = v112;
        v115 = v151;

        sub_1004CCCD0(&v165, v115);

        CurrentValueSubject.send(_:)();
      }

      v45 = *(v42 + 8 * v52);
      ++v49;
    }

    while (!v45);
    v49 = v52;
LABEL_11:
    v53 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
    v54 = v143;
    (*(v38 + 16))(v143, *(v147 + 48) + *(v38 + 72) * (v53 | (v49 << 6)), v48);
    (*(v38 + 32))(v39, v54, v48);
    v55 = (*(v38 + 88))(v39, v48);
    if (v55 == v139)
    {
      break;
    }

    if (v55 == v130)
    {
      (*v136)(v39, v48);
      v64 = sub_10028088C(&qword_1009808F8, &qword_100806F90);
      v65 = *(v64 + 64);
      (*v154)(v135, v39, v164);
      (*v125)(v133, &v39[v65], v134);
      v66 = v127;
      NWBrowser.Result.endpoint.getter();
      v37 = v160;
      v123 = *v159;
      v123(v51, v66, v160);
      v122 = *v158;
      v67 = v122(v51, v37);
      if (v67 != v157)
      {
        goto LABEL_53;
      }

      v128 = *(v64 + 48);
      v68 = v66;
      v69 = *v156;
      (*v156)(v68, v37);
      v121 = *v155;
      v121(v51, v37);
      v71 = *v51;
      v70 = v51[1];

      v120 = sub_10028088C(&qword_1009808E8, &qword_100806F50);
      sub_100005508(v51 + *(v120 + 80), &qword_1009787A8, &unk_1007FB990);
      v42 = v144;
      if (v71 == v162 && v70 == v161)
      {

        v48 = v137;
LABEL_29:
        (*v124)(v133, v134);
        v88 = *v153;
        v89 = v164;
        (*v153)(v135, v164);
        v88(&v39[v128], v89);
        goto LABEL_30;
      }

      v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v48 = v137;
      if ((v77 & 1) != 0 || (sub_1004C6D44(v135) & 1) == 0)
      {
        goto LABEL_29;
      }

      v78 = v118;
      NWBrowser.Result.endpoint.getter();
      v37 = v119;
      v79 = v160;
      v123(v119, v78, v160);
      v80 = v122(v37, v79);
      if (v80 != v157)
      {
        goto LABEL_53;
      }

      v69(v78, v79);
      v121(v37, v79);
      v82 = *v37;
      v81 = v37[1];

      sub_100005508(v37 + *(v120 + 80), &qword_1009787A8, &unk_1007FB990);
      v83 = v135;
      v84 = v82;
      v85 = v133;
      sub_1004C716C(v135, v84, v81, v133);

      (*v124)(v85, v134);
      v86 = *v153;
      v87 = v164;
      (*v153)(v83, v164);
      v86(&v39[v128], v87);
      v37 = v129;
      v48 = v137;
LABEL_14:
      v42 = v144;
    }

    else
    {
      if (qword_100973940 != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      sub_10000C4AC(v72, qword_100980808);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();
      v75 = os_log_type_enabled(v73, v74);
      v42 = v144;
      if (v75)
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "Unknown bonjour result change", v76, 2u);
        v48 = v137;
      }

      (*v126)(v39, v48);
LABEL_30:
      v37 = v129;
    }
  }

  v56 = v7;
  (*v136)(v39, v48);
  v57 = v164;
  (*v154)(v37, v39, v164);
  v58 = v37;
  NWBrowser.Result.endpoint.getter();
  v59 = v160;
  v37 = v132;
  (*v159)(v132, v50, v160);
  v60 = (*v158)(v37, v59);
  if (v60 == v157)
  {
    (*v156)(v50, v59);
    (*v155)(v37, v59);
    v61 = *v37;
    v62 = v37[1];

    v63 = sub_10028088C(&qword_1009808E8, &qword_100806F50);
    sub_100005508(v37 + *(v63 + 80), &qword_1009787A8, &unk_1007FB990);
    sub_1004C7694(v61, v62);

    (*v153)(v58, v57);
    v37 = v58;
    v7 = v56;
    v48 = v137;
    v38 = v131;
    goto LABEL_14;
  }

LABEL_53:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);

  __break(1u);
  return result;
}

void *sub_1004C6CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    swift_weakLoadStrong();
    sub_1004CCD68(a1);
  }

  return result;
}

uint64_t sub_1004C6D44(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = type metadata accessor for NWBrowser.Result();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10062FEA4();
  if (v16)
  {
    return 0;
  }

  v18 = v15;
  v19 = sub_10057E764(*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_deviceFilters));
  result = 1;
  if ((v19 & 1) != 0 && (v18 & 0x4000) == 0)
  {
    if (qword_100973940 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_100980808);
    (*(v12 + 16))(v14, a1, v11);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v30 = v22;
      v23 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v23 = 136315138;
      NWBrowser.Result.endpoint.getter();
      (*(v5 + 16))(v8, v10, v4);
      if ((*(v5 + 88))(v8, v4) != enum case for NWEndpoint.service(_:))
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      (*(v5 + 8))(v10, v4);
      (*(v12 + 8))(v14, v11);
      (*(v5 + 96))(v8, v4);
      v24 = *v8;
      v25 = v8[1];

      v26 = sub_10028088C(&qword_1009808E8, &qword_100806F50);
      sub_100005508(v8 + *(v26 + 80), &qword_1009787A8, &unk_1007FB990);
      v27 = sub_10000C4E4(v24, v25, &v31);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v30, "Ignoring %s since it is missing nearby sharing flag", v23, 0xCu);
      sub_10000C60C(v29);
    }

    else
    {

      (*(v12 + 8))(v14, v11);
    }

    return 0;
  }

  return result;
}

void sub_1004C716C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = sub_10028088C(&qword_1009763D0, &unk_1007F95C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v32[-1] - v8;
  v10 = type metadata accessor for NWBrowser.Result.Change.Flags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static NWBrowser.Result.Change.Flags.metadataChanged.getter();
  sub_1004CDBAC(&qword_100980900, &type metadata accessor for NWBrowser.Result.Change.Flags, &protocol conformance descriptor for NWBrowser.Result.Change.Flags);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (sub_1006305DC())
    {
      if (qword_100973940 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_10000C4AC(v15, qword_100980808);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v32[0] = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_10000C4E4(a2, a3, v32);
        _os_log_impl(&_mh_execute_header, v16, v17, "Bonjour TXT record change for service name %s", v18, 0xCu);
        sub_10000C60C(v19);
      }

      sub_1004C7694(a2, a3);
      v20 = type metadata accessor for NWBrowser.Result();
      v21 = *(v20 - 8);
      (*(v21 + 16))(v9, a1, v20);
      (*(v21 + 56))(v9, 0, 1, v20);
      swift_beginAccess();

      sub_1002B1D78(v9, a2, a3);
      swift_endAccess();
    }

    else
    {
      if (qword_100973940 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000C4AC(v26, qword_100980808);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v32[0] = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_10000C4E4(a2, a3, v32);
        _os_log_impl(&_mh_execute_header, v27, v28, "AWDL not yet available for serviceName %s", v29, 0xCu);
        sub_10000C60C(v30);
      }
    }
  }

  else
  {
    if (qword_100973940 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_100980808);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unhandled Bonjour service change", v25, 2u);
    }
  }
}

uint64_t sub_1004C7694(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_10028088C(&qword_1009763D0, &unk_1007F95C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for NWBrowser.Result();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  swift_beginAccess();

  sub_1002B1D78(v11, a1, a2);
  swift_endAccess();
  swift_beginAccess();

  sub_1002B1F50(0, 1, a1, a2);
  swift_endAccess();
  v13 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToCurrentDiscoverConnections;
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (*(v14 + 16) && (v15 = sub_100012854(a1, a2), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();
    if (*&v17[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_discoverConnection])
    {
      v18 = v17;

      NWConnection.forceCancel()();
    }

    else
    {
      v19 = v17;
    }

    if (*&v17[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_identityShareConnection])
    {

      NWConnection.forceCancel()();
    }
  }

  else
  {
    swift_endAccess();
    v17 = 0;
  }

  swift_beginAccess();

  sub_1002B2084(0, a1, a2);
  swift_endAccess();
  v20 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v21 = *(v20 - 8);
  (*(v21 + 56))(v8, 1, 1, v20);
  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToAirDropEndpoints;
  swift_beginAccess();

  sub_1002B0958(v8, a1, a2);
  swift_endAccess();
  v23 = *(v3 + v22);
  v24 = v23[2];
  if (!v24)
  {
    (*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_endpointsUpdateHandler))(_swiftEmptyArrayStorage);
    goto LABEL_14;
  }

  v30 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_endpointsUpdateHandler);
  v31 = v17;
  v25 = sub_10028F688(v24, 0);
  v26 = sub_100291D40(&v32, &v25[(*(v21 + 80) + 32) & ~*(v21 + 80)], v24, v23);
  v27 = v32;

  result = sub_100027D64(v27);
  if (v26 == v24)
  {
    v17 = v31;
    v30(v25);
LABEL_14:
  }

  __break(1u);
  return result;
}

void sub_1004C7A80(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10028088C(&qword_1009763D0, &unk_1007F95C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19[-1] - v7;
  if (sub_1004C8A6C(a2, a3))
  {
    if (sub_1006305DC())
    {
      v9 = type metadata accessor for NWBrowser.Result();
      v10 = *(v9 - 8);
      (*(v10 + 16))(v8, a1, v9);
      (*(v10 + 56))(v8, 0, 1, v9);
      swift_beginAccess();

      sub_1002B1D78(v8, a2, a3);
      swift_endAccess();
      return;
    }

    if (qword_100973940 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_100980808);

    v18 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_10000C4E4(a2, a3, v19);
      v15 = "AWDL not yet available for serviceName %s";
      goto LABEL_12;
    }
  }

  else
  {
    if (qword_100973940 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_100980808);

    v18 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_10000C4E4(a2, a3, v19);
      v15 = "Already discovering/discovered %s";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v18, v12, v15, v13, 0xCu);
      sub_10000C60C(v14);

      return;
    }
  }

  v17 = v18;
}

uint64_t sub_1004C7E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004C7EB0, v5, 0);
}

uint64_t sub_1004C7EB0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_sessionLogger);
  sub_10055FC6C();
  v2 = String._bridgeToObjectiveC()();

  v3 = *(v1 + 24);
  if (!v3)
  {
    goto LABEL_8;
  }

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {

    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v8 = *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
    swift_unknownObjectRelease();
    v5 = v8;
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(*(v3 + 32) + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
  }

LABEL_9:
  sub_100086D20(@"BonjourBrowse", @"Start", v2, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1004C7FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004C8094, v5, 0);
}

uint64_t sub_1004C8094()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = swift_unknownObjectWeakLoadStrong(), v2, v3))
  {
    sub_10047FAC0();
    v4 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourBrowser;
    v5 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourBrowser);
    if (v5)
    {
      v6 = v5;
      sub_1004C5400();

      v5 = *(v3 + v4);
    }

    *(v3 + v4) = 0;

    swift_unknownObjectRelease();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  **(v0 + 40) = v7;
  v8 = *(v0 + 8);

  return v8();
}

id sub_1004C8188(uint64_t a1)
{
  v81 = type metadata accessor for NWBrowser.Result();
  v78 = *(v81 - 8);
  __chkstk_darwin(v81);
  v3 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = (&v70 - v10);
  __chkstk_darwin(v9);
  v13 = &v70 - v12;
  NWBrowser.Result.endpoint.getter();
  v79 = *(v5 + 16);
  v79(v11, v13, v4);
  if ((*(v5 + 88))(v11, v4) == enum case for NWEndpoint.service(_:))
  {
    v14 = v5 + 8;
    v80 = *(v5 + 8);
    v80(v13, v4);
    (*(v5 + 96))(v11, v4);
    v16 = *v11;
    v15 = v11[1];

    v17 = sub_10028088C(&qword_1009808E8, &qword_100806F50);
    sub_100005508(v11 + *(v17 + 80), &qword_1009787A8, &unk_1007FB990);
    v18 = sub_10062FEA4();
    if (v19)
    {
      if (qword_100973940 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000C4AC(v20, qword_100980808);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v21, v22))
      {

LABEL_18:

        return 0;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v16;
      v26 = v24;
      v85 = v24;
      *v23 = 136315138;
      v27 = sub_10000C4E4(v25, v15, &v85);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing TXT record for Bonjour service %s", v23, 0xCu);
      sub_10000C60C(v26);

LABEL_17:

      goto LABEL_18;
    }

    v28 = *(v82 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_rpClient);
    if (!v28)
    {

      if (qword_100973940 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_10000C4AC(v41, qword_100980808);
      v21 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v21, v42))
      {
        goto LABEL_18;
      }

      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v21, v42, "Missing RPClient for Bonjour browser", v43, 2u);
      goto LABEL_17;
    }

    v73 = v14;
    v75 = v18;
    v29 = qword_100973940;
    v74 = v28;
    if (v29 != -1)
    {
      swift_once();
    }

    v76 = v16;
    v30 = type metadata accessor for Logger();
    sub_10000C4AC(v30, qword_100980808);
    v31 = v78;
    v32 = v81;
    (*(v78 + 16))(v3, a1, v81);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    v72 = v34;
    v35 = os_log_type_enabled(v33, v34);
    v77 = v8;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v36 = 136315394;
      *(v36 + 4) = sub_10000C4E4(v76, v15, &v85);
      *(v36 + 12) = 2080;
      v71 = v33;
      NWBrowser.Result.interfaces.getter();
      type metadata accessor for NWInterface();
      v70 = Array.description.getter();
      v38 = v37;

      (*(v31 + 8))(v3, v81);
      v39 = sub_10000C4E4(v70, v38, &v85);
      v8 = v77;

      *(v36 + 14) = v39;
      v40 = v71;
      _os_log_impl(&_mh_execute_header, v71, v72, "Creating service %s from interfaces %s", v36, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v31 + 8))(v3, v32);
    }

    NWBrowser.Result.endpoint.getter();
    v45 = *(v82 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_deviceStatus);
    v46 = *(v82 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_nearbyAgent);
    v47 = v8;
    v48 = *(v82 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_idmsService);
    v49 = *(v82 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_browserQueue);
    v82 = type metadata accessor for SDAirDropBonjourDiscoverConnection(0);
    v50 = objc_allocWithZone(v82);
    *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_discoverConnection] = 0;
    *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_identityShareConnection] = 0;
    v51 = &v50[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_knownAltDSID];
    *v51 = 0;
    v51[1] = 0;
    *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_discoverConnectionTimeout] = 5;
    v52 = &v50[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_serviceName];
    *v52 = v76;
    v52[1] = v15;
    v79(&v50[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_endpoint], v47, v4);
    *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_deviceSupportFlags] = v75;
    *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_deviceStatus] = v45;
    *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_nearbyAgent] = v46;
    v53 = type metadata accessor for SDAirDropDeviceSupportManager();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropDeviceSupportManager_deviceStatus] = v45;
    *&v54[OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropDeviceSupportManager_nearbyAgent] = v46;
    v84.receiver = v54;
    v84.super_class = v53;
    v55 = v45;
    v56 = v46;
    v57 = v55;
    v58 = v56;
    *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_deviceSupportManager] = objc_msgSendSuper2(&v84, "init");
    *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_idmsService] = v48;
    *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_browserQueue] = v49;
    v59 = v74;
    *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_rpClient] = v74;
    v60 = v59;
    v61 = v48;
    v62 = v49;
    v63 = sub_10046938C();
    v64 = sub_100636668(v63);
    v66 = v65;

    v67 = &v50[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_tlsCertDigestDescription];
    *v67 = v64;
    v67[1] = v66;
    type metadata accessor for SFAirDropUserDefaults();
    v68 = static SFAirDropUserDefaults.shared.getter();
    LOBYTE(v64) = SFAirDropUserDefaults.privacyImprovements.getter();

    v50[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_privacyImprovements] = v64 & 1;
    v83.receiver = v50;
    v83.super_class = v82;
    v69 = objc_msgSendSuper2(&v83, "init");

    v80(v77, v4);
    return v69;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1004C8A6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToAirDropEndpoints;
  swift_beginAccess();
  v10 = *(v3 + v9);
  if (*(v10 + 16) && (v11 = sub_100012854(a1, a2), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
    v16 = *(v15 - 8);
    sub_1002940CC(v14 + *(v16 + 72) * v13, v8);
    (*(v16 + 56))(v8, 0, 1, v15);
  }

  else
  {
    v15 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  }

  swift_endAccess();
  type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v17 = (*(*(v15 - 8) + 48))(v8, 1, v15);
  sub_100005508(v8, &qword_1009763E0, &qword_1007F95D0);
  if (v17 == 1)
  {
    v18 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToCurrentDiscoverConnections;
    swift_beginAccess();
    if (*(*(v3 + v18) + 16))
    {
      sub_100012854(a1, a2);
      v20 = v19 ^ 1;
    }

    else
    {
      v20 = 1;
    }

    swift_endAccess();
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1004C8CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004C8D60, v5, 0);
}

uint64_t sub_1004C8D60()
{
  v1 = [*(*(v0 + 16) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_deviceStatus) bluetoothEnabled];
  v2 = *(v0 + 16);
  if (v1)
  {
    if (*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_browser))
    {
      sub_1005C26B4(*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_sessionLogger));
    }
  }

  else
  {
    sub_1005C26DC(*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_sessionLogger));
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004C9070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[30] = a3;
  v4[31] = v3;
  v4[28] = a1;
  v4[29] = a2;
  sub_10028088C(&qword_1009763D0, &unk_1007F95C0);
  v4[32] = swift_task_alloc();
  sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v4[33] = swift_task_alloc();
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v4[34] = v5;
  v4[35] = *(v5 - 8);
  v4[36] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v4[37] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004C91E0, v6, 0);
}

uint64_t sub_1004C91E0()
{
  v1 = sub_1004C8188(v0[28]);
  v0[38] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[30];
    v4 = v0[29];
    v0[39] = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToCurrentDiscoverConnections;
    swift_beginAccess();

    v2;
    sub_1002B2084(v2, v4, v3);
    swift_endAccess();
    v5 = swift_task_alloc();
    v0[40] = v5;
    *v5 = v0;
    v5[1] = sub_1004C9348;
    v6 = v0[36];

    return sub_1003C448C(v6);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1004C9348()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 296);
  if (v0)
  {
    v4 = sub_1004C9A08;
  }

  else
  {
    v4 = sub_1004C9474;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004C9474()
{
  v45 = v0;
  if (qword_100973940 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100980808);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v44 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10000C4E4(v5, v4, &v44);
    _os_log_impl(&_mh_execute_header, v2, v3, "Bonjour service %s completed discovery", v6, 0xCu);
    sub_10000C60C(v7);
  }

  v8 = *(v0 + 280);
  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v14 = *(v0 + 232);
  v13 = *(v0 + 240);
  sub_1002940CC(*(v0 + 288), v10);
  (*(v8 + 56))(v10, 0, 1, v9);
  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToAirDropEndpoints;
  swift_beginAccess();

  sub_1002B0958(v10, v14, v13);
  swift_endAccess();
  swift_beginAccess();

  sub_1002B1F50(0, 1, v14, v13);
  swift_endAccess();
  v16 = type metadata accessor for NWBrowser.Result();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = &unk_100980000;
  swift_beginAccess();

  sub_1002B1D78(v11, v14, v13);
  swift_endAccess();
  v18 = *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_endpointsUpdateHandler);
  v19 = *(v12 + v15);
  v20 = v19[2];
  if (v20)
  {
    v42 = *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_endpointsUpdateHandler);
    v21 = *(v0 + 280);
    v22 = sub_10028F688(v20, 0);
    v23 = sub_100291D40(&v44, &v22[(*(v21 + 80) + 32) & ~*(v21 + 80)], v20, v19);
    v24 = v44;

    result = sub_100027D64(v24);
    if (v23 != v20)
    {
      __break(1u);
      goto LABEL_25;
    }

    v17 = &unk_100980000;
    v18 = v42;
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  v26 = *(v0 + 288);
  v18(v22);

  sub_100294130(v26);
  v27 = *(v0 + 328);
  v28 = *(v0 + 304);
  v29 = *(v0 + 240);
  v30 = *(v0 + 232);
  swift_beginAccess();

  sub_1002B2084(0, v30, v29);
  swift_endAccess();
  if (*(v28 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_discoverConnection))
  {

    NWConnection.forceCancel()();
  }

  if (*(*(v0 + 304) + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_identityShareConnection))
  {

    NWConnection.forceCancel()();
  }

  v31 = *(v0 + 248);
  v32 = v17[270];
  swift_beginAccess();
  v33 = *(v31 + v32);
  v34 = *(v33 + 16);
  if (v34)
  {
    v43 = v27;
    v35 = sub_10028F5DC(v34, 0);
    v36 = sub_100292394(&v44, v35 + 4, v34, v33);
    v37 = v44;

    result = sub_100027D64(v37);
    if (v36 == v34)
    {
      v27 = v43;
      goto LABEL_17;
    }

LABEL_25:
    __break(1u);
    return result;
  }

  v35 = _swiftEmptyArrayStorage;
LABEL_17:
  v38 = *(v0 + 248);
  v44 = v35;
  v39 = v38;

  sub_1004CCCD0(&v44, v39);
  if (v27)
  {
  }

  else
  {
    v40 = *(v0 + 304);

    *(v0 + 208) = v44;
    CurrentValueSubject.send(_:)();

    sub_100015D04(0, 0);

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_1004C9A08()
{
  v47 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToRetryCount;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v2 + v4);
  v6 = v46;
  *(v2 + v4) = 0x8000000000000000;
  v7 = sub_100012854(v3, v1);
  v9 = *(v6 + 2);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_27;
  }

  v13 = v8;
  if (*(v6 + 3) < v12)
  {
    v15 = *(v0 + 232);
    v14 = *(v0 + 240);
    sub_100576804(v12, isUniquelyReferenced_nonNull_native);
    v6 = v46;
    v7 = sub_100012854(v15, v14);
    if ((v13 & 1) != (v16 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_8:
    *(v2 + v4) = v6;
    if (v13)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v45 = v7;
  sub_1002D1528();
  v7 = v45;
  v6 = v46;
  *(v2 + v4) = v46;
  if ((v13 & 1) == 0)
  {
LABEL_9:
    v18 = v7;
    sub_10057D230(v7, *(v0 + 232), *(v0 + 240), 0, v6);

    v7 = v18;
  }

LABEL_10:
  v19 = *(v6 + 7);
  v20 = *(v19 + 8 * v7);
  v11 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (!v11)
  {
    *(v19 + 8 * v7) = v21;
    swift_endAccess();
    if (qword_100973940 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  swift_once();
LABEL_12:
  v22 = type metadata accessor for Logger();
  sub_10000C4AC(v22, qword_100980808);

  swift_errorRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = *(v0 + 232);
    v25 = *(v0 + 240);
    v27 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v27 = 136315394;
    *(v27 + 4) = sub_10000C4E4(v26, v25, &v46);
    *(v27 + 12) = 2080;
    swift_getErrorValue();
    v28 = Error.flatDescription.getter();
    v30 = sub_10000C4E4(v28, v29, &v46);

    *(v27 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Bonjour service %s failed discovery -  %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v31 = *(v0 + 304);
  v32 = *(v0 + 240);
  v33 = *(v0 + 232);
  swift_beginAccess();

  sub_1002B2084(0, v33, v32);
  swift_endAccess();
  if (*(v31 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_discoverConnection))
  {

    NWConnection.forceCancel()();
  }

  if (*(*(v0 + 304) + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_identityShareConnection))
  {

    NWConnection.forceCancel()();
  }

  v34 = *(v0 + 248);
  v35 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToBrowseResult;
  swift_beginAccess();
  v36 = *(v34 + v35);
  v37 = *(v36 + 16);
  if (!v37)
  {
    goto LABEL_22;
  }

  v38 = sub_10028F5DC(*(v36 + 16), 0);
  v39 = sub_100292394(&v46, v38 + 4, v37, v36);
  v40 = v46;

  sub_100027D64(v40);
  if (v39 != v37)
  {
    __break(1u);
LABEL_22:
    v38 = _swiftEmptyArrayStorage;
  }

  v41 = *(v0 + 248);
  v46 = v38;
  v42 = v41;

  sub_1004CCCD0(&v46, v42);
  v43 = *(v0 + 304);

  *(v0 + 208) = v46;
  CurrentValueSubject.send(_:)();

  sub_100015D04(sub_100036738, 0);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1004C9F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_10028088C(&qword_1009808D0, &qword_100806F00);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_10028088C(&qword_1009808D8, &qword_100806F08);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v4[16] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004CA0E4, v7, 0);
}

uint64_t sub_1004CA0E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v3 = v0[11];
    v2 = v0[12];
    v4 = v0[10];
    v0[8] = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesNeedingDiscovery);
    sub_10028088C(&unk_10097F380, &qword_100806F10);
    sub_100011630(&qword_1009808E0, &unk_10097F380, &qword_100806F10, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    Publisher<>.values.getter();
    AsyncPublisher.makeAsyncIterator()();
    (*(v3 + 8))(v2, v4);
    v5 = sub_1004CDBAC(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v6 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToRetryCount;
    v0[18] = v5;
    v0[19] = v6;
    swift_beginAccess();
    v7 = v0[18];
    v8 = v0[16];
    v9 = swift_task_alloc();
    v0[20] = v9;
    *v9 = v0;
    v9[1] = sub_1004CA330;

    return sub_1004C4EB4(v8, v7);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1004CA330(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 168) = a1;

  if (!v1)
  {
    v5 = *(v3 + 128);

    return _swift_task_switch(sub_1004CA444, v5, 0);
  }

  return result;
}

uint64_t sub_1004CA444()
{
  v26 = v0;
  v1 = *(v0 + 168);
  if (v1)
  {
    if (qword_100973940 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100980808);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v25 = v6;
      *v5 = 136315138;
      v7 = Array.description.getter();
      v9 = sub_10000C4E4(v7, v8, &v25);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Service names to discover %s", v5, 0xCu);
      sub_10000C60C(v6);
    }

    v10 = *(v0 + 136);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315138;

      v15 = Dictionary.description.getter();
      v17 = v16;

      v18 = sub_10000C4E4(v15, v17, &v25);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Current service name timeouts %s", v13, 0xCu);
      sub_10000C60C(v14);
    }

    sub_1004CA7DC(v1);

    v19 = *(v0 + 144);
    v20 = *(v0 + 128);
    v21 = swift_task_alloc();
    *(v0 + 160) = v21;
    *v21 = v0;
    v21[1] = sub_1004CA330;

    return sub_1004C4EB4(v20, v19);
  }

  else
  {
    v23 = *(v0 + 136);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v24 = *(v0 + 8);

    return v24();
  }
}

void sub_1004CA7DC(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = __chkstk_darwin(v2 - 8);
  v64 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v63 - v5;
  v7 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  __chkstk_darwin(v7 - 8);
  v73 = &v63 - v8;
  v9 = *(a1 + 16);
  v70 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToCurrentDiscoverConnections;
  v71 = v9;
  if (!v9)
  {
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

  v10 = 0;
  v68 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToAirDropEndpoints;
  v11 = a1 + 40;
  v12 = _swiftEmptyArrayStorage;
  v69 = v6;
  v63 = a1 + 40;
  do
  {
    v67 = v12;
    v13 = (v11 + 16 * v10);
    v14 = v10;
    while (1)
    {
      if (v14 >= v71)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        swift_once();
LABEL_48:
        v59 = type metadata accessor for Logger();
        sub_10000C4AC(v59, qword_100980808);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&_mh_execute_header, v60, v61, "Discover requests maxed out, waiting for them to complete", v62, 2u);
        }

        return;
      }

      v10 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_52;
      }

      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = v72;
      v18 = v68;
      swift_beginAccess();
      v19 = *(v17 + v18);
      if (*(v19 + 16))
      {

        v20 = sub_100012854(v15, v16);
        if (v21)
        {
          v22 = v20;
          v65 = *(v19 + 56);
          v23 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
          v24 = *(v23 - 8);
          v66 = v15;
          v25 = v24;
          v26 = v65 + *(v24 + 72) * v22;
          v27 = v73;
          sub_1002940CC(v26, v73);
          (*(v25 + 56))(v27, 0, 1, v23);
          v10 = v14 + 1;
          v15 = v66;
        }

        else
        {
          v23 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
          (*(*(v23 - 8) + 56))(v73, 1, 1, v23);
        }
      }

      else
      {
        v23 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
        (*(*(v23 - 8) + 56))(v73, 1, 1, v23);
      }

      swift_endAccess();
      type metadata accessor for SDAirDropDiscoveredEndpoint(0);
      if ((*(*(v23 - 8) + 48))(v73, 1, v23) == 1)
      {
        break;
      }

      sub_100005508(v73, &qword_1009763E0, &qword_1007F95D0);
LABEL_5:
      ++v14;
      v13 += 2;
      v6 = v69;
      if (v10 == v71)
      {
        v12 = v67;
        goto LABEL_25;
      }
    }

    sub_100005508(v73, &qword_1009763E0, &qword_1007F95D0);
    v28 = v72;
    v29 = v70;
    swift_beginAccess();
    if (*(*(v28 + v29) + 16))
    {
      sub_100012854(v15, v16);
      if (v30)
      {
        swift_endAccess();

        goto LABEL_5;
      }
    }

    swift_endAccess();
    v12 = v67;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10028FBDC(0, v12[2] + 1, 1);
      v12 = v78;
    }

    v11 = v63;
    v33 = v12[2];
    v32 = v12[3];
    if (v33 >= v32 >> 1)
    {
      sub_10028FBDC((v32 > 1), v33 + 1, 1);
      v12 = v78;
    }

    v12[2] = v33 + 1;
    v34 = &v12[2 * v33];
    v34[4] = v15;
    v34[5] = v16;
    v6 = v69;
  }

  while (v10 != v71);
LABEL_25:
  v71 = v12[2];
  if (v71)
  {
    v68 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_delegate;
    swift_beginAccess();
    v35 = 0;
    v36 = v12 + 5;
    v67 = v12;
    do
    {
      if (v35 >= v12[2])
      {
        goto LABEL_53;
      }

      v38 = *(v36 - 1);
      v37 = *v36;
      v39 = *(*(v72 + v70) + 16);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v41 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_transferringConnectables;
        v42 = Strong;
        swift_beginAccess();
        v43 = *(*(v42 + v41) + 16);

        swift_unknownObjectRelease();
        if (v43)
        {
          if (v39 > 2)
          {
            goto LABEL_47;
          }

          goto LABEL_36;
        }
      }

      else
      {
      }

      if (v39 > 5)
      {
LABEL_47:

        if (qword_100973940 != -1)
        {
          goto LABEL_54;
        }

        goto LABEL_48;
      }

LABEL_36:
      v73 = v35;
      v44 = type metadata accessor for TaskPriority();
      v45 = *(v44 - 8);
      (*(v45 + 56))(v6, 1, 1, v44);
      v46 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v47 = qword_1009735E0;

      v48 = v6;
      if (v47 != -1)
      {
        swift_once();
      }

      v49 = static AirDropActor.shared;
      v50 = sub_1004CDBAC(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
      v51 = swift_allocObject();
      v51[2] = v49;
      v51[3] = v50;
      v51[4] = v46;
      v51[5] = v38;
      v51[6] = v37;

      v52 = v64;
      sub_1004CBCCC(v48, v64);
      v53 = (*(v45 + 48))(v52, 1, v44);

      v6 = v48;
      if (v53 == 1)
      {
        sub_100005508(v52, &qword_100976160, &qword_1007F8770);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v45 + 8))(v52, v44);
      }

      v54 = v51[2];
      swift_unknownObjectRetain();

      if (v54)
      {
        swift_getObjectType();
        v55 = dispatch thunk of Actor.unownedExecutor.getter();
        v57 = v56;
        swift_unknownObjectRelease();
      }

      else
      {
        v55 = 0;
        v57 = 0;
      }

      sub_100005508(v48, &qword_100976160, &qword_1007F8770);
      v58 = swift_allocObject();
      *(v58 + 16) = &unk_100806F30;
      *(v58 + 24) = v51;
      if (v57 | v55)
      {
        v74 = 0;
        v75 = 0;
        v76 = v55;
        v77 = v57;
      }

      v35 = v73 + 1;
      swift_task_create();

      v36 += 2;
      v12 = v67;
    }

    while (v71 != v35);
  }
}

BOOL sub_1004CB0D0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToRetryCount;
  swift_beginAccess();
  v9 = *(a3 + v8);
  if (*(v9 + 16) && (v10 = sub_100012854(v5, v4), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a3 + v8);
  if (*(v13 + 16) && (v14 = sub_100012854(v6, v7), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
  }

  else
  {
    v16 = 0;
  }

  swift_endAccess();
  return v12 < v16;
}

uint64_t sub_1004CB1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = type metadata accessor for NWBrowser.Result();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v6[14] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004CB2A4, v8, 0);
}

uint64_t sub_1004CB2A4()
{
  v40 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToBrowseResult;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (*(v4 + 16) && (v5 = sub_100012854(v0[9], v0[10]), (v6 & 1) != 0))
    {
      v7 = v0[10];
      v8 = v0[9];
      (*(v0[12] + 16))(v0[13], *(v4 + 56) + *(v0[12] + 72) * v5, v0[11]);
      swift_endAccess();
      if (sub_1004C8A6C(v8, v7))
      {
        if (sub_1004C5800())
        {
          v9 = swift_task_alloc();
          v0[16] = v9;
          *v9 = v0;
          v9[1] = sub_1004CB758;
          v10 = v0[13];
          v11 = v0[9];
          v12 = v0[10];

          return sub_1004C9070(v10, v11, v12);
        }

        if (qword_100973940 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_10000C4AC(v30, qword_100980808);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        v33 = os_log_type_enabled(v31, v32);
        v35 = v0[12];
        v34 = v0[13];
        v36 = v0[11];
        if (v33)
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v31, v32, "Discover requests maxed out, waiting for them to complete", v37, 2u);
        }

        else
        {
        }

        (*(v35 + 8))(v34, v36);
      }

      else
      {
        if (qword_100973940 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_10000C4AC(v19, qword_100980808);

        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();

        v22 = os_log_type_enabled(v20, v21);
        v23 = v0[12];
        v24 = v0[13];
        v25 = v0[11];
        if (v22)
        {
          v38 = v0[13];
          v27 = v0[9];
          v26 = v0[10];
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v39 = v29;
          *v28 = 136315138;
          *(v28 + 4) = sub_10000C4E4(v27, v26, &v39);
          _os_log_impl(&_mh_execute_header, v20, v21, "Already discovering/discovered %s", v28, 0xCu);
          sub_10000C60C(v29);

          (*(v23 + 8))(v38, v25);
        }

        else
        {

          (*(v23 + 8))(v24, v25);
        }
      }
    }

    else
    {
      swift_endAccess();
      if (qword_100973940 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000C4AC(v14, qword_100980808);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Missing browse result for service name, endpoint may have disappeared", v17, 2u);
      }
    }
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1004CB758()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_1004CB868, v1, 0);
}

uint64_t sub_1004CB868()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1004CBA8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1004C8CC4(a1, v4, v5, v6);
}

uint64_t sub_1004CBB50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1004C9F74(a1, v4, v5, v6);
}

uint64_t sub_1004CBC04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1004CB1A4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1004CBCCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004CBD3C(char *__dst, char *__src, char *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 4;
  v12 = a3 - __src;
  v13 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 4;
  if (v11 >= v13 >> 4)
  {
    if (a4 != __src || &__src[16 * v14] <= a4)
    {
      memmove(a4, __src, 16 * v14);
    }

    v51 = &v5[2 * v14];
    if (v12 >= 16 && v7 > v8)
    {
      v48 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToRetryCount;
      v50 = v5;
LABEL_35:
      v47 = v7 - 2;
      v6 -= 16;
      v31 = v51;
      do
      {
        v32 = *(v31 - 2);
        v33 = *(v31 - 1);
        v31 -= 2;
        v34 = *(v7 - 2);
        v35 = *(v7 - 1);
        swift_beginAccess();
        v36 = *(a5 + v48);
        v37 = *(v36 + 16);

        if (v37 && (v38 = sub_100012854(v32, v33), (v39 & 1) != 0))
        {
          v40 = *(*(v36 + 56) + 8 * v38);
        }

        else
        {
          v40 = 0;
        }

        v41 = *(a5 + v48);
        if (*(v41 + 16) && (v42 = sub_100012854(v34, v35), (v43 & 1) != 0))
        {
          v44 = *(*(v41 + 56) + 8 * v42);
        }

        else
        {
          v44 = 0;
        }

        swift_endAccess();

        v45 = (v6 + 16);
        if (v40 < v44)
        {
          v5 = v50;
          if (v45 != v7)
          {
            *v6 = *v47;
          }

          if (v51 <= v50 || (v7 -= 2, v47 <= v8))
          {
            v7 = v47;
            goto LABEL_54;
          }

          goto LABEL_35;
        }

        v5 = v50;
        if (v45 != v51)
        {
          *v6 = *v31;
        }

        v6 -= 16;
        v51 = v31;
      }

      while (v31 > v50);
      v51 = v31;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[16 * v11] <= a4)
    {
      memmove(a4, __dst, 16 * v11);
    }

    v51 = &v5[2 * v11];
    if (v9 >= 16 && v7 < v6)
    {
      v15 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToRetryCount;
      while (1)
      {
        v16 = *v7;
        v17 = v7[1];
        v49 = v5;
        v18 = *v5;
        v19 = v5[1];
        swift_beginAccess();
        v20 = *(a5 + v15);
        v21 = *(v20 + 16);

        if (v21 && (v22 = sub_100012854(v16, v17), (v23 & 1) != 0))
        {
          v24 = *(*(v20 + 56) + 8 * v22);
        }

        else
        {
          v24 = 0;
        }

        v25 = *(a5 + v15);
        if (*(v25 + 16) && (v26 = sub_100012854(v18, v19), (v27 & 1) != 0))
        {
          v28 = *(*(v25 + 56) + 8 * v26);
        }

        else
        {
          v28 = 0;
        }

        swift_endAccess();

        if (v24 >= v28)
        {
          break;
        }

        v29 = v7;
        v30 = v8 == v7;
        v7 += 2;
        v5 = v49;
        if (!v30)
        {
          goto LABEL_25;
        }

LABEL_26:
        v8 += 16;
        if (v5 >= v51 || v7 >= v6)
        {
          goto LABEL_28;
        }
      }

      v29 = v49;
      v5 = v49 + 2;
      if (v8 == v49)
      {
        goto LABEL_26;
      }

LABEL_25:
      *v8 = *v29;
      goto LABEL_26;
    }

LABEL_28:
    v7 = v8;
  }

LABEL_54:
  if (v7 != v5 || v7 >= (v5 + ((v51 - v5 + (v51 - v5 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v7, v5, 16 * ((v51 - v5) / 16));
  }

  return 1;
}

void sub_1004CC0E0(char **a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_1004973B4(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      __dst = (v9 + 16 * *v10);
      __src = (v9 + 16 * *v13);
      v14 = (v9 + 16 * v5);
      v15 = v21;
      sub_1004CBD3C(__dst, __src, v14, a2, v15);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_1004CC280(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v6 = a3[1];
  v138 = _swiftEmptyArrayStorage;
  if (v6 >= 1)
  {
    v135 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToRetryCount;
    v124 = a5;
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v134 = v5;
    while (1)
    {
      v125 = v8;
      if (v7 + 1 >= v6)
      {
        v19 = v7 + 1;
      }

      else
      {
        v127 = v6;
        v9 = v7;
        v10 = *a3;
        v11 = (*a3 + 16 * (v7 + 1));
        v12 = v11[1];
        v137[0] = *v11;
        v137[1] = v12;
        v13 = (v10 + 16 * v7);
        v14 = v13[1];
        v136[0] = *v13;
        v136[1] = v14;

        v131 = sub_1004CB0D0(v137, v136, v124);
        if (v130)
        {

          goto LABEL_109;
        }

        v15 = (v9 + 2);
        v117 = v9;
        v16 = 16 * v9;
        v17 = (v10 + 16 * v9 + 40);
        while (1)
        {
          v19 = v127;
          if (v127 == v15)
          {
            break;
          }

          v20 = *(v17 - 1);
          v21 = *v17;
          v22 = *(v17 - 3);
          v23 = *(v17 - 2);
          swift_beginAccess();
          v24 = *(v5 + v135);
          v25 = *(v24 + 16);

          if (v25 && (v26 = sub_100012854(v20, v21), (v27 & 1) != 0))
          {
            v28 = *(*(v24 + 56) + 8 * v26);
          }

          else
          {
            v28 = 0;
          }

          v29 = *(v5 + v135);
          if (*(v29 + 16) && (v30 = sub_100012854(v22, v23), (v31 & 1) != 0))
          {
            v18 = *(*(v29 + 56) + 8 * v30);
          }

          else
          {
            v18 = 0;
          }

          v8 = v125;
          swift_endAccess();

          ++v15;
          v17 += 2;
          if (((v131 ^ (v28 >= v18)) & 1) == 0)
          {
            v19 = (v15 - 1);
            break;
          }
        }

        v7 = v117;
        if (v131)
        {
          if (v19 < v117)
          {
            goto LABEL_132;
          }

          if (v117 < v19)
          {
            v32 = 0;
            v33 = 16 * v19;
            v34 = v117;
            do
            {
              if (v34 != v19 + v32 - 1)
              {
                v35 = *a3;
                if (!*a3)
                {
                  goto LABEL_135;
                }

                v36 = (v35 + v16);
                v37 = v35 + v33;
                v38 = *v36;
                v39 = v36[1];
                *v36 = *(v37 - 16);
                *(v37 - 16) = v38;
                *(v37 - 8) = v39;
              }

              ++v34;
              --v32;
              v33 -= 16;
              v16 += 16;
            }

            while (v34 < v19 + v32);
          }
        }
      }

      v40 = a3[1];
      if (v19 >= v40)
      {
        goto LABEL_37;
      }

      if (__OFSUB__(v19, v7))
      {
        goto LABEL_129;
      }

      if (v19 - v7 >= a4)
      {
        goto LABEL_37;
      }

      if (__OFADD__(v7, a4))
      {
        goto LABEL_130;
      }

      if (v7 + a4 >= v40)
      {
        v41 = a3[1];
      }

      else
      {
        v41 = v7 + a4;
      }

      if (v41 < v7)
      {
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
        return;
      }

      if (v19 == v41)
      {
LABEL_37:
        v42 = v19;
        if (v19 < v7)
        {
          goto LABEL_128;
        }
      }

      else
      {
        v133 = *a3;
        v95 = (*a3 + 16 * v19);
        v118 = v7;
        v96 = v7 - v19;
        v121 = v41;
        do
        {
          v129 = v19;
          v97 = (v133 + 16 * v19);
          v98 = *v97;
          v99 = v97[1];
          v122 = v96;
          v123 = v95;
          v100 = v96;
          do
          {
            v101 = *(v95 - 2);
            v102 = *(v95 - 1);
            v5 = v95 - 2;
            swift_beginAccess();
            v103 = *(v134 + v135);
            v104 = *(v103 + 16);

            if (v104 && (v105 = sub_100012854(v98, v99), (v106 & 1) != 0))
            {
              v107 = *(*(v103 + 56) + 8 * v105);
            }

            else
            {
              v107 = 0;
            }

            v108 = *(v134 + v135);
            if (*(v108 + 16) && (v109 = sub_100012854(v101, v102), (v110 & 1) != 0))
            {
              v111 = *(*(v108 + 56) + 8 * v109);
            }

            else
            {
              v111 = 0;
            }

            swift_endAccess();

            if (v107 >= v111)
            {
              break;
            }

            if (!v133)
            {
              goto LABEL_133;
            }

            v98 = *v95;
            v99 = v95[1];
            *v95 = *v5;
            *(v95 - 1) = v99;
            *(v95 - 2) = v98;
            v95 -= 2;
          }

          while (!__CFADD__(v100++, 1));
          v19 = (v129 + 1);
          v95 = v123 + 2;
          v96 = v122 - 1;
          v42 = v121;
        }

        while (v129 + 1 != v121);
        v5 = v134;
        v8 = v125;
        v7 = v118;
        if (v121 < v118)
        {
          goto LABEL_128;
        }
      }

      v120 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_10028E6A8(0, *(v8 + 2) + 1, 1, v8);
      }

      v44 = *(v8 + 2);
      v43 = *(v8 + 3);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v8 = sub_10028E6A8((v43 > 1), v44 + 1, 1, v8);
      }

      *(v8 + 2) = v45;
      v46 = v8 + 32;
      v47 = &v8[16 * v44 + 32];
      *v47 = v7;
      *(v47 + 1) = v120;
      v138 = v8;
      v128 = *a1;
      if (!*a1)
      {
        goto LABEL_136;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v49 = *(v8 + 4);
            v50 = *(v8 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_57:
            if (v52)
            {
              goto LABEL_119;
            }

            v65 = &v8[16 * v45];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_122;
            }

            v71 = &v46[16 * v48];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_125;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_126;
            }

            if (v69 + v74 >= v51)
            {
              if (v51 < v74)
              {
                v48 = v45 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v75 = &v8[16 * v45];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_71:
          if (v70)
          {
            goto LABEL_121;
          }

          v78 = &v46[16 * v48];
          v80 = *v78;
          v79 = *(v78 + 1);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_124;
          }

          if (v81 < v69)
          {
            goto LABEL_3;
          }

LABEL_78:
          if (v48 - 1 >= v45)
          {
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
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          v86 = *a3;
          if (!*a3)
          {
            goto LABEL_134;
          }

          v87 = &v46[16 * v48 - 16];
          v5 = *v87;
          v88 = v48;
          v89 = &v46[16 * v48];
          v90 = *(v89 + 1);
          v132 = (v86 + 16 * *v87);
          v91 = (v86 + 16 * *v89);
          v92 = (v86 + 16 * v90);
          v93 = v124;
          sub_1004CBD3C(v132, v91, v92, v128, v93);
          if (v130)
          {

            v138 = v8;
            v5 = v134;
            goto LABEL_109;
          }

          if (v90 < v5)
          {
            goto LABEL_114;
          }

          v94 = *(v8 + 2);
          if (v88 > v94)
          {
            goto LABEL_115;
          }

          *v87 = v5;
          *(v87 + 1) = v90;
          if (v88 >= v94)
          {
            goto LABEL_116;
          }

          v45 = v94 - 1;
          memmove(v89, v89 + 16, 16 * (v94 - 1 - v88));
          *(v8 + 2) = v94 - 1;
          v5 = v134;
          v46 = v8 + 32;
          if (v94 <= 2)
          {
LABEL_3:
            v138 = v8;
            goto LABEL_4;
          }
        }

        v53 = &v46[16 * v45];
        v54 = *(v53 - 8);
        v55 = *(v53 - 7);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_117;
        }

        v58 = *(v53 - 6);
        v57 = *(v53 - 5);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_118;
        }

        v60 = &v8[16 * v45];
        v62 = *v60;
        v61 = *(v60 + 1);
        v59 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v59)
        {
          goto LABEL_120;
        }

        v59 = __OFADD__(v51, v63);
        v64 = v51 + v63;
        if (v59)
        {
          goto LABEL_123;
        }

        if (v64 >= v56)
        {
          v82 = &v46[16 * v48];
          v84 = *v82;
          v83 = *(v82 + 1);
          v59 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v59)
          {
            goto LABEL_127;
          }

          if (v51 < v85)
          {
            v48 = v45 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_4:
      v6 = a3[1];
      v7 = v120;
      if (v120 >= v6)
      {
        goto LABEL_106;
      }
    }
  }

  v113 = a5;
LABEL_106:
  v114 = *a1;
  if (!*a1)
  {
    goto LABEL_137;
  }

  v115 = v5;
  sub_1004CC0E0(&v138, v114, a3, v115);
  if (v130)
  {

LABEL_109:
  }

  else
  {
  }
}

uint64_t sub_1004CCA20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToRetryCount;
    v27 = *a4;
    v6 = (*a4 + 16 * a3);
    v7 = result - a3;
LABEL_5:
    v25 = v6;
    v26 = a3;
    v8 = (v27 + 16 * a3);
    v10 = *v8;
    v9 = v8[1];
    v24 = v7;
    while (1)
    {
      v12 = *(v6 - 2);
      v11 = *(v6 - 1);
      swift_beginAccess();
      v13 = *(a5 + v5);
      v14 = *(v13 + 16);

      if (v14 && (v15 = sub_100012854(v10, v9), (v16 & 1) != 0))
      {
        v17 = *(*(v13 + 56) + 8 * v15);
      }

      else
      {
        v17 = 0;
      }

      v18 = *(a5 + v5);
      if (*(v18 + 16) && (v19 = sub_100012854(v12, v11), (v20 & 1) != 0))
      {
        v21 = *(*(v18 + 56) + 8 * v19);
      }

      else
      {
        v21 = 0;
      }

      swift_endAccess();

      if (v17 >= v21)
      {
LABEL_4:
        a3 = v26 + 1;
        v6 = v25 + 2;
        v7 = v24 - 1;
        if (v26 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v27)
      {
        break;
      }

      v10 = *v6;
      v9 = v6[1];
      *v6 = *(v6 - 1);
      *(v6 - 1) = v9;
      *(v6 - 2) = v10;
      v6 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1004CCBA0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = _minimumMergeRunLength(_:)(v3);
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v7;
      }

      v10[0] = v8 + 4;
      v10[1] = v7;
      v9 = v4;
      sub_1004CC280(v10, v11, a1, v6, v9);

      v8[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_1004CCA20(0, v3, 1, a1, v4);
  }
}

void sub_1004CCCD0(char **a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1004978F4(v3);
  }

  v5 = *(v3 + 2);
  v7[0] = (v3 + 32);
  v7[1] = v5;
  v6 = v4;
  sub_1004CCBA0(v7, v6);

  *a1 = v3;
}

void sub_1004CCD68(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v4 = v73 - v3;
  v5 = type metadata accessor for NWError();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v73 - v11;
  v13 = __chkstk_darwin(v10);
  v74 = v73 - v14;
  __chkstk_darwin(v13);
  v16 = v73 - v15;
  v17 = type metadata accessor for NWBrowser.State();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, a1, v17);
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == enum case for NWBrowser.State.failed(_:))
  {
    v74 = v4;
    (*(v18 + 96))(v20, v17);
    (*(v6 + 32))(v12, v20, v5);
    if (qword_100973940 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_100980808);
    v23 = *(v6 + 16);
    v23(v9, v12, v5);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v73[1] = v6;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v73[0] = v12;
      v29 = v28;
      *v27 = 138412290;
      sub_1004CDBAC(&qword_100977BF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v23(v30, v9, v5);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      v32 = *(v6 + 8);
      v32(v9, v5);
      *(v27 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "AirDrop bonjour browser failed with error %@", v27, 0xCu);
      sub_100005508(v29, &qword_100975400, &qword_1007F65D0);
      v12 = v73[0];
    }

    else
    {

      v32 = *(v6 + 8);
      v32(v9, v5);
    }

    v44 = type metadata accessor for TaskPriority();
    v45 = v74;
    (*(*(v44 - 8) + 56))(v74, 1, 1, v44);
    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = qword_1009735E0;

    if (v47 != -1)
    {
      swift_once();
    }

    v48 = static AirDropActor.shared;
    v49 = sub_1004CDBAC(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v50 = swift_allocObject();
    v50[2] = v48;
    v50[3] = v49;
    v50[4] = v46;

    sub_1002B3398(0, 0, v45, &unk_100806F60, v50);

    v32(v12, v5);
    return;
  }

  if (v21 == enum case for NWBrowser.State.waiting(_:))
  {
    (*(v18 + 96))(v20, v17);
    v33 = v16;
    (*(v6 + 32))(v16, v20, v5);
    if (qword_100973940 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000C4AC(v34, qword_100980808);
    v35 = *(v6 + 16);
    v36 = v74;
    v35(v74, v33, v5);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v39 = 138412290;
      sub_1004CDBAC(&qword_100977BF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v35(v40, v36, v5);
      v41 = _swift_stdlib_bridgeErrorToNSError();
      v42 = *(v6 + 8);
      v42(v36, v5);
      *(v39 + 4) = v41;
      v43 = v75;
      *v75 = v41;
      _os_log_impl(&_mh_execute_header, v37, v38, "AirDrop bonjour browser waiting with error %@", v39, 0xCu);
      sub_100005508(v43, &qword_100975400, &qword_1007F65D0);

      v42(v33, v5);
    }

    else
    {

      v56 = *(v6 + 8);
      v56(v36, v5);
      v56(v33, v5);
    }

    return;
  }

  if (v21 == enum case for NWBrowser.State.setup(_:))
  {
    if (qword_100973940 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_10000C4AC(v51, qword_100980808);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_21;
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "AirDrop bonjour browser setting up";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v52, v53, v55, v54, 2u);

LABEL_21:

    return;
  }

  if (v21 == enum case for NWBrowser.State.ready(_:))
  {
    if (qword_100973940 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_10000C4AC(v57, qword_100980808);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "AirDrop bonjour browser ready", v60, 2u);
    }

    v61 = type metadata accessor for TaskPriority();
    (*(*(v61 - 8) + 56))(v4, 1, 1, v61);
    v62 = qword_1009735E0;
    v63 = v75;
    v64 = v4;
    if (v62 != -1)
    {
      swift_once();
    }

    v65 = static AirDropActor.shared;
    v66 = sub_1004CDBAC(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v67 = swift_allocObject();
    v67[2] = v65;
    v67[3] = v66;
    v67[4] = v63;

    sub_1002B3098(0, 0, v64, &unk_100806F78, v67);
  }

  else
  {
    if (v21 == enum case for NWBrowser.State.cancelled(_:))
    {
      if (qword_100973940 != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      sub_10000C4AC(v68, qword_100980808);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v52, v53))
      {
        goto LABEL_21;
      }

      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = "AirDrop bonjour browser cancelled";
      goto LABEL_20;
    }

    if (qword_100973940 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_10000C4AC(v69, qword_100980808);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "AirDrop bonjour browser in unknown state", v72, 2u);
    }

    (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_1004CD97C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1004C7FF8(a1, v4, v5, v6);
}

uint64_t sub_1004CDA30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1004C7E14(a1, v4, v5, v6);
}

uint64_t sub_1004CDAE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1004C5ABC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1004CDBAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004CDBFC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100980920);
  v1 = sub_10000C4AC(v0, qword_100980920);
  if (qword_100973710 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0978);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004CDCC4()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_transferObserver;
  *&v0[v1] = [objc_allocWithZone(SFAirDropTransferObserver) init];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_rateLimiter;
  type metadata accessor for SDAirDropRateLimiter();
  v3 = swift_allocObject();
  *(v3 + 40) = _swiftEmptyArrayStorage;
  *(v3 + 16) = 3;
  *(v3 + 24) = xmmword_100806FC0;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_transfersToAlerts] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_queuedAlerts] = _swiftEmptyArrayStorage;
  v0[OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_hasActiveAlert] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SDAirDropAlertManager();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_1004CDDB8()
{
  v1 = v0;
  if (qword_100973948 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100980920);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Activate AirDrop alert manager.", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_transferObserver);
  [v6 setDelegate:v1];

  return [v6 activate];
}

void sub_1004CDF18()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_queuedAlerts;
  swift_beginAccess();
  v27 = v1;
  v2 = *(v0 + v1);
  v26 = v2 >> 62;
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    goto LABEL_70;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      if (v26)
      {
        v5 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v5 = *(v3 + 16);
      }

      goto LABEL_21;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_61;
      }

      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = [*(v6 + 16) metaData];
    v8 = [v7 isVerifiableIdentity];

    if (!v8)
    {
      break;
    }

    v9 = __OFADD__(v5++, 1);
    if (v9)
    {
      goto LABEL_62;
    }
  }

  v10 = [*(v6 + 16) cancelAction];
  [v10 triggerAction];

  v11 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    if (v26)
    {
      if (v11 != _CocoaArrayWrapper.endIndex.getter())
      {
LABEL_24:
        v3 = v5 + 5;
        do
        {
          v13 = v3 - 4;
          if ((v2 & 0xC000000000000001) != 0)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_63;
            }

            if (v13 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_64;
            }

            v14 = *(v2 + 8 * v3);
          }

          v15 = [*(v14 + 16) metaData];
          v16 = [v15 isVerifiableIdentity];

          if (v16)
          {

            if (v13 != v5)
            {
              if ((v2 & 0xC000000000000001) != 0)
              {
                v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if ((v5 & 0x8000000000000000) != 0)
                {
                  goto LABEL_73;
                }

                v21 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v5 >= v21)
                {
                  goto LABEL_74;
                }

                if (v13 >= v21)
                {
                  goto LABEL_75;
                }

                v17 = *(v2 + 8 * v5 + 32);
                v18 = *(v2 + 8 * v3);
              }

              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              *(v0 + v27) = v2;
              if (!isUniquelyReferenced_nonNull_bridgeObject || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
              {
                v2 = sub_1002D8B8C();
                *(v0 + v27) = v2;
              }

              if ((v5 & 0x8000000000000000) != 0)
              {
                goto LABEL_67;
              }

              v23 = v2 & 0xFFFFFFFFFFFFFF8;
              if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_68;
              }

              *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20) = v18;

              *(v0 + v27) = v2;
              if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
              {
                v2 = sub_1002D8B8C();
                *(v0 + v27) = v2;
                v23 = v2 & 0xFFFFFFFFFFFFFF8;
                if ((v13 & 0x8000000000000000) != 0)
                {
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
LABEL_66:
                  __break(1u);
LABEL_67:
                  __break(1u);
LABEL_68:
                  __break(1u);
LABEL_69:
                  __break(1u);
LABEL_70:
                  v4 = _CocoaArrayWrapper.endIndex.getter();
                  goto LABEL_3;
                }
              }

              else if ((v13 & 0x8000000000000000) != 0)
              {
                goto LABEL_60;
              }

              if (v13 >= *(v23 + 16))
              {
                goto LABEL_69;
              }

              *(v23 + 8 * v3) = v17;

              *(v0 + v27) = v2;
            }

            v9 = __OFADD__(v5++, 1);
            if (v9)
            {
              goto LABEL_66;
            }
          }

          else
          {
            v19 = [*(v14 + 16) cancelAction];
            if (v19)
            {
              v20 = v19;
              [v19 triggerAction];
            }
          }

          v9 = __OFADD__(v13, 1);
          v24 = v3 - 3;
          if (v9)
          {
            goto LABEL_65;
          }

          if (v2 >> 62)
          {
            v25 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v25 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          ++v3;
        }

        while (v24 != v25);
      }
    }

    else if (v11 != *(v3 + 16))
    {
      goto LABEL_24;
    }

LABEL_21:
    if (v2 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
      if (v12 >= v5)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12 >= v5)
      {
LABEL_23:
        sub_10057E738(v5, v12);
        swift_endAccess();
        return;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

  __break(1u);
}

id sub_1004CE350()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDAirDropAlertManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004CE414(void *a1)
{
  v2 = v1;
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v4 = static NSUserDefaults.airdrop.getter();
  v5 = SFAirDropUserDefaults.systemLevelProgressEnabled.getter();

  if (v5)
  {
    if (qword_100973948 != -1)
    {
LABEL_162:
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100980920);
    v7 = a1;
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v194 = v10;
      *v9 = 136315138;
      v11 = [v7 identifier];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_10000C4E4(v12, v14, &v194);

      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Feature Flag for ModernProgress turned on, Alert is not generated for AirDrop %s", v9, 0xCu);
      sub_10000C60C(v10);
    }

    else
    {
    }

    return;
  }

  v16 = [a1 identifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_transfersToAlerts;
  swift_beginAccess();
  v21 = *(v2 + v20);
  if (*(v21 + 16) && (, v22 = sub_100012854(v17, v19), v24 = v23, , (v24 & 1) != 0))
  {
    v25 = *(*(v21 + 56) + 8 * v22);
  }

  else
  {

    v25 = 0;
  }

  v193 = v25;
  v179 = [a1 userResponse];
  v186 = [a1 userResponse];
  if ([a1 transferState] == 2 && (v26 = objc_msgSend(a1, "transferProgress")) != 0)
  {

    v182 = 1;
  }

  else
  {
    v182 = 0;
  }

  v27 = [a1 transferState] == 3 || objc_msgSend(a1, "transferState") == 9;
  v180 = v27;
  v183 = [a1 transferState];
  v181 = [a1 transferState];
  v28 = [a1 transferState];
  if (v25)
  {
    v29 = *(v25 + 32);
  }

  else
  {
    v29 = 1;
  }

  v178 = v29;
  osloga = v25;
  v185 = v28;
  v30 = [a1 transferProgress];
  if (v30)
  {
    v31 = v30;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1007F5670;
    *(v32 + 56) = sub_1000276B4(0, &qword_1009809A0, NSProgress_ptr);
    *(v32 + 64) = sub_1004D0470(&qword_1009809A8, &qword_1009809A0, NSProgress_ptr, &protocol conformance descriptor for NSObject);
    *(v32 + 32) = v31;
    v33 = v31;
    v34 = String.init(format:_:)();
    v36 = v35;
  }

  else
  {
    v36 = 0xE600000000000000;
    v34 = 0x3E656E6F6E3CLL;
  }

  if (qword_100973948 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000C4AC(v37, qword_100980920);
  v38 = a1;

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  v188 = v38;
  v184 = v2;
  if (os_log_type_enabled(v39, v40))
  {
    v177 = v34;
    v41 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    *v41 = 136316162;
    v42 = [v38 identifier];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000C4E4(v43, v45, &v194);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2080;
    v47 = SFAirDropTransferStateToString();
    if (v47)
    {
      v48 = v47;
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;
    }

    else
    {
      v51 = 0x8000000100789F30;
      v49 = 0xD000000000000015;
    }

    v52 = sub_10000C4E4(v49, v51, &v194);

    *(v41 + 14) = v52;
    *(v41 + 22) = 2080;
    [v38 userResponse];
    v53 = SFAirDropTransferUserResponseToString();
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = sub_10000C4E4(v54, v56, &v194);

    *(v41 + 24) = v57;
    *(v41 + 32) = 2080;
    if (osloga)
    {
      v58 = 7562617;
    }

    else
    {
      v58 = 28526;
    }

    if (osloga)
    {
      v59 = 0xE300000000000000;
    }

    else
    {
      v59 = 0xE200000000000000;
    }

    v60 = sub_10000C4E4(v58, v59, &v194);

    *(v41 + 34) = v60;
    *(v41 + 42) = 2080;
    *(v41 + 44) = sub_10000C4E4(v177, v36, &v194);
    _os_log_impl(&_mh_execute_header, v39, v40, "Transfer %s updated with state: %s, userResponse: %s, alert item exists: %s, progress: %s", v41, 0x34u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (v186 == 2)
  {

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = 2;
      v64 = swift_slowAlloc();
      *v64 = 0;
      v65 = "Transfer cancelled by receiver";
LABEL_42:
      _os_log_impl(&_mh_execute_header, v61, v62, v65, v64, 2u);

      v66 = 0;
      v67 = 0;
      goto LABEL_52;
    }

LABEL_50:

    v66 = 0;
    v67 = 0;
LABEL_51:
    v63 = 2;
    goto LABEL_52;
  }

  if (v183 == 7)
  {

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "Transfer state changed to readyForOpen. Dismissing any existing alert.", v70, 2u);
    }

    v66 = 0;
    v67 = 0;
    v63 = 1;
  }

  else
  {
    if (v181 == 8)
    {

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = 2;
        v64 = swift_slowAlloc();
        *v64 = 0;
        v65 = "Transfer state changed to terminated. Dismissing any existing alert.";
        goto LABEL_42;
      }

      goto LABEL_50;
    }

    if (v180)
    {

      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&_mh_execute_header, v105, v106, "Sender cancelled or transfer failed", v107, 2u);
      }

      v66 = 0;
      v67 = v179 == 1 || [v38 failureReason] == 2;
      goto LABEL_51;
    }

    if (osloga)
    {
      v125 = BYTE1(osloga[4].isa);
    }

    else
    {
      v125 = 0;
    }

    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v194 = v149;
      *v148 = 136315138;
      if (v125)
      {
        v150 = 7562617;
      }

      else
      {
        v150 = 28526;
      }

      if (v125)
      {
        v151 = 0xE300000000000000;
      }

      else
      {
        v151 = 0xE200000000000000;
      }

      v152 = sub_10000C4E4(v150, v151, &v194);

      *(v148 + 4) = v152;
      _os_log_impl(&_mh_execute_header, v146, v147, "Current alert is showing progress: %s", v148, 0xCu);
      sub_10000C60C(v149);
    }

    v67 = [v38 needsAction];
    if (v125)
    {
      v153 = [v38 transferProgress];
      if (!v153)
      {
        __break(1u);
        return;
      }

      v154 = v153;

      v155 = [v154 isFinished];

      if ((v155 & 1) != 0 || (v185 | 2) == 6)
      {
        v66 = 0;
        v63 = 1;
        goto LABEL_52;
      }
    }

    else
    {

      v67 = (v182 | v67) & v178;
    }

    v63 = 0;
    v66 = 1;
  }

LABEL_52:
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v192[0] = swift_slowAlloc();
    *v73 = 136315394;
    if (v67)
    {
      v74 = 1702195828;
    }

    else
    {
      v74 = 0x65736C6166;
    }

    if (v67)
    {
      v75 = 0xE400000000000000;
    }

    else
    {
      v75 = 0xE500000000000000;
    }

    v76 = sub_10000C4E4(v74, v75, v192);

    *(v73 + 4) = v76;
    *(v73 + 12) = 2080;
    v194 = v63;
    LOBYTE(v195) = v66;
    sub_10028088C(&unk_100980990, &qword_100807018);
    v77 = String.init<A>(describing:)();
    v79 = sub_10000C4E4(v77, v78, v192);

    *(v73 + 14) = v79;
    _os_log_impl(&_mh_execute_header, v71, v72, "showAlert: %s, dismissAlert: %s", v73, 0x16u);
    swift_arrayDestroy();
  }

  if ((v67 | v66 ^ 1) != 1)
  {
    v100 = [v38 metaData];
    v101 = [v100 didAutoAccept];

    if ((v101 & 1) != 0 && v185 == 1)
    {
      [objc_opt_self() playAlertForType:12];
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&_mh_execute_header, v102, v103, "Play auto-accept sound", v104, 2u);
      }
    }

    goto LABEL_76;
  }

  if (osloga)
  {
    if (v66)
    {
      v80 = 0;
    }

    else
    {
      v80 = v63;
    }

    sub_1004FB9C8(v80);
  }

  swift_beginAccess();
  v193 = 0;

  v81 = [v38 identifier];
  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v83;

  v85 = v184;
  swift_beginAccess();
  sub_1002B20AC(0, v82, v84);
  swift_endAccess();
  if ((v67 & 1) == 0)
  {
    return;
  }

  if (!v182)
  {
    if (sub_10046738C())
    {
      if ([v38 needsAction])
      {
        v108 = [v38 metaData];
        v109 = [v108 isVerifiableIdentity];

        if ((v109 & 1) == 0)
        {
          v168 = v38;
          v169 = Logger.logObject.getter();
          v170 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v169, v170))
          {
            v171 = swift_slowAlloc();
            v172 = swift_slowAlloc();
            *v171 = 138412290;
            *(v171 + 4) = v168;
            *v172 = v168;
            v173 = v168;
            _os_log_impl(&_mh_execute_header, v169, v170, "Rate limited. Auto-declining transfer %@.", v171, 0xCu);
            sub_10028924C(v172);
          }

          v174 = [v168 cancelAction];
          [v174 triggerAction];

          return;
        }
      }
    }

    v110 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v111 = swift_allocObject();
    *(v111 + 16) = v110;
    *(v111 + 24) = v38;
    v112 = v38;
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      *v115 = 136315394;
      v116 = [v112 identifier];
      v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v119 = v118;

      v120 = sub_10000C4E4(v117, v119, &v194);

      *(v115 + 4) = v120;
      *(v115 + 12) = 2080;
      v121 = v185;
      if (v185 == 1)
      {
        v122 = 1702195828;
      }

      else
      {
        v122 = 0x65736C6166;
      }

      if (v185 == 1)
      {
        v123 = 0xE400000000000000;
      }

      else
      {
        v123 = 0xE500000000000000;
      }

      v124 = sub_10000C4E4(v122, v123, &v194);

      *(v115 + 14) = v124;
      _os_log_impl(&_mh_execute_header, v113, v114, "Making new IncomingAirDropAlert for transfer %s, playSound: %s", v115, 0x16u);
      swift_arrayDestroy();
      v85 = v184;
    }

    else
    {

      v121 = v185;
    }

    type metadata accessor for IncomingAirDropAlert();
    swift_allocObject();
    sub_1004FBC34(v112, v121 == 1, sub_1004D0468, v111);

LABEL_105:

    v136 = [v38 identifier];
    v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v139 = v138;

    swift_beginAccess();

    sub_1002B20AC(v140, v137, v139);
    swift_endAccess();
    if (!v182)
    {
      if (*(v85 + OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_hasActiveAlert) == 1)
      {
        v141 = Logger.logObject.getter();
        v142 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v141, v142))
        {
          v143 = swift_slowAlloc();
          *v143 = 0;
          _os_log_impl(&_mh_execute_header, v141, v142, "Active alert present, enqueue this one later.", v143, 2u);
        }

        v144 = OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_queuedAlerts;
        swift_beginAccess();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v85 + v144) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v85 + v144) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
LABEL_76:

        return;
      }

      *(v85 + OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_hasActiveAlert) = 1;
    }

    sub_1004FACFC();

    return;
  }

  v191 = [v38 transferProgress];
  sub_10028088C(&qword_100980988, &qword_100807010);
  Optional.unwrap(_:file:line:)();

  v86 = v194;
  *&v87 = COERCE_DOUBLE(NSProgress.estimatedTimeRemaining.getter());
  if (v88)
  {
    [objc_opt_self() airDropProgressUIMaxPercentage];
    v90 = v89;
    [v86 fractionCompleted];
    v92 = v91;
    v93 = [v38 metaData];
    v94 = [v93 items];

    sub_1000276B4(0, &qword_100974E40, SFAirDropTransferItem_ptr);
    sub_1004D0470(&qword_100974E48, &qword_100974E40, SFAirDropTransferItem_ptr, &protocol conformance descriptor for NSObject);
    v95 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v187 = v86;
    if ((v95 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v96 = v194;
      a1 = v195;
      v97 = v196;
      v98 = v197;
      v99 = v198;
    }

    else
    {
      v156 = -1 << *(v95 + 32);
      a1 = (v95 + 56);
      v97 = ~v156;
      v157 = -v156;
      if (v157 < 64)
      {
        v158 = ~(-1 << v157);
      }

      else
      {
        v158 = -1;
      }

      v99 = v158 & *(v95 + 56);

      v98 = 0;
      v96 = v95;
    }

    v159 = v90;
    v160 = (v97 + 64) >> 6;
    do
    {
      if (v96 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_148;
        }

        swift_dynamicCast();
        v161 = v191;
        if (!v191)
        {
          goto LABEL_148;
        }
      }

      else
      {
        v163 = v98;
        v164 = v99;
        if (!v99)
        {
          while (1)
          {
            v98 = v163 + 1;
            if (__OFADD__(v163, 1))
            {
              break;
            }

            if (v98 >= v160)
            {
              goto LABEL_148;
            }

            v164 = *(a1 + v98);
            ++v163;
            if (v164)
            {
              goto LABEL_138;
            }
          }

          __break(1u);
          goto LABEL_162;
        }

LABEL_138:
        v99 = (v164 - 1) & v164;
        v161 = *(*(v96 + 48) + ((v98 << 9) | (8 * __clz(__rbit64(v164)))));
        if (!v161)
        {
LABEL_148:
          sub_100027D64(v96);

          v165 = 0;
LABEL_149:
          v86 = v187;
          v128 = Logger.logObject.getter();
          v166 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v128, v166))
          {
            goto LABEL_152;
          }

          v167 = swift_slowAlloc();
          *v167 = 134218496;
          *(v167 + 4) = v92;
          *(v167 + 12) = 2048;
          *(v167 + 14) = v159;
          *(v167 + 22) = 1024;
          *(v167 + 24) = v165;
          _os_log_impl(&_mh_execute_header, v128, v166, "Skip showing progress. Completed: (%f), Show alert if progress below: (%f), transfer has files: %{BOOL}d.", v167, 0x1Cu);
          goto LABEL_151;
        }
      }

      v162 = [v161 isFile];
    }

    while (!v162);
    sub_100027D64(v96);

    if (v92 >= v159)
    {
      v165 = 1;
      goto LABEL_149;
    }

    v128 = Logger.logObject.getter();
    v175 = static os_log_type_t.default.getter();
    v86 = v187;
    if (os_log_type_enabled(v128, v175))
    {
      v176 = swift_slowAlloc();
      *v176 = 134218496;
      *(v176 + 4) = v92;
      *(v176 + 12) = 2048;
      *(v176 + 14) = v159;
      *(v176 + 22) = 1024;
      *(v176 + 24) = 1;
      _os_log_impl(&_mh_execute_header, v128, v175, "Progress: Showing, fracCompleted(%f). showAlertIfProgressBelow(%f). transferHasFiles = %{BOOL}d", v176, 0x1Cu);
      v85 = v184;
      v38 = v188;
      goto LABEL_99;
    }

    v85 = v184;
    v38 = v188;
    goto LABEL_100;
  }

  v126 = v87;
  v127 = *&v87;
  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.default.getter();
  v130 = os_log_type_enabled(v128, v129);
  if (v127 > 2.0)
  {
    if (v130)
    {
      v131 = swift_slowAlloc();
      *v131 = 134218240;
      *(v131 + 4) = v126;
      *(v131 + 12) = 2048;
      *(v131 + 14) = 0x4000000000000000;
      _os_log_impl(&_mh_execute_header, v128, v129, "Progress: Showing, timeRemaining(%f) > %f", v131, 0x16u);
LABEL_99:
    }

LABEL_100:

    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&_mh_execute_header, v132, v133, "Make new progress alert with no sound", v134, 2u);
    }

    type metadata accessor for IncomingAirDropAlert();
    swift_allocObject();
    v135 = sub_1004FBC34(v38, 0, 0, 0);

    *(v135 + 33) = 1;
    goto LABEL_105;
  }

  if (v130)
  {
    v145 = swift_slowAlloc();
    *v145 = 134218240;
    *(v145 + 4) = v126;
    *(v145 + 12) = 2048;
    *(v145 + 14) = 0x4000000000000000;
    _os_log_impl(&_mh_execute_header, v128, v129, "Progress: Skipping, timeRemaining(%f) ≤ %f", v145, 0x16u);
LABEL_151:
  }

LABEL_152:
}

void sub_1004CFD14(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a3 metaData];
    v8 = [v7 isVerifiableIdentity];

    if ((v8 & 1) == 0)
    {
      if (a1 == 1)
      {
        *(*&v6[OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_rateLimiter] + 40) = _swiftEmptyArrayStorage;

        v14 = airdrop_log();
        if (!v14)
        {
          __break(1u);
          return;
        }

        v15 = v14;
        v16 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Reset declines", 14, 2, &_mh_execute_header, v15, v16, _swiftEmptyArrayStorage);
      }

      else if (a1 == 2)
      {

        sub_100467580();

        v9 = sub_10046738C();

        if (v9)
        {
          if (qword_100973948 != -1)
          {
            swift_once();
          }

          v10 = type metadata accessor for Logger();
          sub_10000C4AC(v10, qword_100980920);
          v11 = Logger.logObject.getter();
          v12 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            *v13 = 0;
            _os_log_impl(&_mh_execute_header, v11, v12, "Rate limited. Auto-declining queued transfers.", v13, 2u);
          }

          sub_1004CDF18();
        }
      }
    }

    v17 = OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_queuedAlerts;
    swift_beginAccess();
    v18 = *&v6[v17];
    if (v18 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_15;
      }
    }

    else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_15:
      if (qword_100973948 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000C4AC(v19, qword_100980920);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Dequeuing last dismissed alert and presenting next", v22, 2u);
      }

      swift_beginAccess();
      sub_100450010();
      swift_endAccess();
      sub_1004FACFC();

LABEL_26:

      return;
    }

    v6[OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_hasActiveAlert] = 0;
    if (qword_100973948 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000C4AC(v23, qword_100980920);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Last alert dismissed", v26, 2u);
    }

    v6 = v24;
    goto LABEL_26;
  }
}

uint64_t sub_1004D01A0(void *a1)
{
  v2 = v1;
  if (qword_100973948 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100980920);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Clearing alerts for transfer: %@.", v8, 0xCu);
    sub_10028924C(v9);
  }

  v11 = [v5 identifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_transfersToAlerts;
  swift_beginAccess();
  v16 = *(v2 + v15);
  if (*(v16 + 16) && (, v17 = sub_100012854(v12, v14), v19 = v18, , (v19 & 1) != 0))
  {
    v20 = *(*(v16 + 56) + 8 * v17);

    if (*(v20 + 24))
    {
      sub_1004FB9C8(0);
    }
  }

  else
  {
  }

  v21 = [v5 identifier];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  swift_beginAccess();
  sub_1002B20AC(0, v22, v24);
  return swift_endAccess();
}

uint64_t sub_1004D0470(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000276B4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004D04B4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009809B0);
  v1 = sub_10000C4AC(v0, qword_1009809B0);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004D057C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);
  v3(a1, 1, 1, v2);
  v4 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  v3(a1 + v4[5], 1, 1, v2);
  v3(a1 + v4[6], 1, 1, v2);
  v3(a1 + v4[7], 1, 1, v2);
  v3(a1 + v4[8], 1, 1, v2);
  v3(a1 + v4[9], 1, 1, v2);
  v3(a1 + v4[10], 1, 1, v2);
  v3(a1 + v4[11], 1, 1, v2);
  v3(a1 + v4[12], 1, 1, v2);
  *(a1 + v4[13]) = 0;
  v3(a1 + v4[14], 1, 1, v2);
  v3(a1 + v4[15], 1, 1, v2);
  v3(a1 + v4[16], 1, 1, v2);
  result = (v3)(a1 + v4[17], 1, 1, v2);
  v6 = a1 + v4[18];
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a1 + v4[19]) = 2;
  v7 = (a1 + v4[20]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + v4[21]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

void sub_1004D07BC()
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v1 - 8);
  v43 = &v41 - v2;
  v3 = type metadata accessor for AuthenticationSecurityRequest(0);
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  v5 = __chkstk_darwin(v3);
  v6 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = (&v41 - v7);
  v9 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_11;
  }

  v18 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v19 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type];
  v20 = v19 > 0x16;
  v21 = (1 << v19) & 0x7E658E;
  if (!v20 && v21 != 0)
  {
    Date.init()();
    v23 = type metadata accessor for Date();
    (*(*(v23 - 8) + 56))(v11, 0, 1, v23);
    v24 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_metrics;
    swift_beginAccess();
    sub_10000C788(v11, &v0[v24], &qword_10097A7F0, &unk_1007FB600);
    swift_endAccess();
    v25 = *&v0[v18];
    if (v25 > 0x15)
    {
      v26 = 786431;
    }

    else
    {
      v26 = qword_100807180[v25];
    }

    static Date.distantFuture.getter();
    *v8 = v26;
    v27 = type metadata accessor for TaskPriority();
    v28 = v43;
    (*(*(v27 - 8) + 56))(v43, 1, 1, v27);
    sub_1004E57A0(v8, v6, type metadata accessor for AuthenticationSecurityRequest);
    v29 = (*(v42 + 80) + 40) & ~*(v42 + 80);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v0;
    sub_100464F60(v6, v30 + v29);
    v31 = v0;
    sub_1002B3098(0, 0, v28, &unk_100807140, v30);

    sub_1004E5900(v8, type metadata accessor for AuthenticationSecurityRequest);
    return;
  }

  if (qword_100973950 != -1)
  {
    goto LABEL_15;
  }

LABEL_11:
  v32 = type metadata accessor for Logger();
  sub_10000C4AC(v32, qword_1009809B0);
  v33 = v0;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v44[0] = v37;
    *v36 = 136315138;
    v38 = sub_100027340();
    v40 = sub_10000C4E4(v38, v39, v44);

    *(v36 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v34, v35, "Authentication type %s does not support this method", v36, 0xCu);
    sub_10000C60C(v37);
  }
}

uint64_t sub_1004D0D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[40] = a4;
  v5[41] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[42] = v6;
  v5[43] = *(v6 - 8);
  v5[44] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[45] = v7;
  v5[46] = *(v7 - 8);
  v5[47] = swift_task_alloc();

  return _swift_task_switch(sub_1004D0E20, 0, 0);
}

uint64_t sub_1004D0E20()
{
  v1 = v0[40];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(v1 + v2, (v0 + 20), &qword_10097A9C8, &unk_1007FDD40);
  if (v0[23])
  {
    sub_1002A9938((v0 + 20), (v0 + 25));
    sub_100005508((v0 + 20), &qword_10097A9C8, &unk_1007FDD40);
    v3 = (*sub_10002CDC0(v0 + 25, v0[28]) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_securityManager);
    swift_beginAccess();
    sub_10002CDC0(v3, v3[3]);
    v4 = swift_task_alloc();
    v0[48] = v4;
    *v4 = v0;
    v4[1] = sub_1004D11A0;
    v5 = v0[41];

    return sub_100351944(v5);
  }

  else
  {
    sub_100005508((v0 + 20), &qword_10097A9C8, &unk_1007FDD40);
    v7 = v0[47];
    v8 = v0[44];
    v16 = v0[46];
    v17 = v0[45];
    v9 = v0[42];
    v10 = v0[43];
    v11 = v0[40];
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v0[6] = sub_1004E5960;
    v0[7] = v12;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100011678;
    v0[5] = &unk_1008E4F20;
    v13 = _Block_copy(v0 + 2);
    v14 = v11;
    static DispatchQoS.unspecified.getter();
    v0[36] = _swiftEmptyArrayStorage;
    sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);
    (*(v10 + 8))(v8, v9);
    (*(v16 + 8))(v7, v17);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1004D11A0()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_1004D14FC;
  }

  else
  {
    v2 = sub_1004D12B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004D12B4()
{
  sub_10000C60C(v0 + 25);
  v1 = v0[47];
  v2 = v0[44];
  v11 = v0[46];
  v12 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v5 = v0[40];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v0[6] = sub_1004E5960;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100011678;
  v0[5] = &unk_1008E4F20;
  v7 = _Block_copy(v0 + 2);
  v8 = v5;
  static DispatchQoS.unspecified.getter();
  v0[36] = _swiftEmptyArrayStorage;
  sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);
  (*(v4 + 8))(v2, v3);
  (*(v11 + 8))(v1, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004D14FC()
{
  v1 = v0[49];
  sub_10000C60C(v0 + 25);
  v0[37] = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  type metadata accessor for SFAuthenticationErrorCode(0);
  v2 = swift_dynamicCast();
  v3 = v0[49];
  v4 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[42];
  v18 = v0[43];
  v19 = v0[46];
  v8 = v0[40];
  if (v2)
  {

    v9 = *(v0 + 100);
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v0[18] = sub_1004E5990;
    v0[19] = v10;
    v0[14] = _NSConcreteStackBlock;
    v0[15] = 1107296256;
    v0[16] = sub_100011678;
    v0[17] = &unk_1008E4FC0;
    v11 = _Block_copy(v0 + 14);
    v12 = v8;
    static DispatchQoS.unspecified.getter();
    v0[39] = _swiftEmptyArrayStorage;
    sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v11);
    (*(v18 + 8))(v6, v7);
    (*(v19 + 8))(v4, v5);
  }

  else
  {

    v13 = swift_allocObject();
    *(v13 + 16) = v3;
    *(v13 + 24) = v8;
    v0[12] = sub_1004E5988;
    v0[13] = v13;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100011678;
    v0[11] = &unk_1008E4F70;
    v14 = _Block_copy(v0 + 8);
    swift_errorRetain();
    v15 = v8;
    static DispatchQoS.unspecified.getter();
    v0[38] = _swiftEmptyArrayStorage;
    sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v18 + 8))(v6, v7);
    (*(v19 + 8))(v4, v5);
  }

  v16 = v0[1];

  return v16();
}

void sub_1004D1984()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v7 + 16) = 64;
  *(v7 + 32) = 0u;
  v8 = (v7 + 32);
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  v9 = SecRandomCopyBytes(kSecRandomDefault, 0x40uLL, (v7 + 32));
  if (!v9)
  {
    v14 = sub_1004E53D0(v8, 0x40uLL);
    v16 = v15;

    v17 = (v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingToken);
    v18 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingToken);
    v19 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingToken + 8);
    *v17 = v14;
    v17[1] = v16;
    sub_10028BCC0(v18, v19);
    return;
  }

  LODWORD(v1) = v9;

  if (qword_100973950 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_1009809B0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v11, v12, "Error generating ranging key (status = %d)", v13, 8u);
  }
}

uint64_t sub_1004D1BE8()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v68[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v68[-v6];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v68[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v68[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_55;
  }

  v19 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingToken + 8);
  if (v19 >> 60 == 15)
  {
    return sub_1004D2760(10);
  }

  v21 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingToken);
  v22 = objc_allocWithZone(SDAuthenticationRequest);
  v71 = v21;
  v72 = v19;
  sub_100294008(v21, v19);
  v23 = [v22 init];
  v18 = v23;
  if (v23)
  {
    v24 = v23;
    v25 = v23;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v25 setAwdlInfo:isa];

    [v25 setVersion:1];
    v27 = v25;
    UUID.uuidString.getter();
    v18 = String._bridgeToObjectiveC()();

    [v27 setSessionID:v18];

    if (!HIDWORD(*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type)))
    {
      [v27 setType:?];
      v18 = v24;
      goto LABEL_7;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
    goto LABEL_25;
  }

LABEL_7:
  v28 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v29 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
  if (v29 > 0x17 || ((1 << v29) & 0xFE7FF8) == 0)
  {
    if (v18)
    {
      v60 = v18;
      v61 = v18;
      v62 = Data._bridgeToObjectiveC()().super.isa;
      [v60 setRangingToken:v62];

      v18 = v61;
    }

    v63 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_lastUnlockDate;
    swift_beginAccess();
    sub_10000FF90(v1 + v63, v7, &qword_10097A7F0, &unk_1007FB600);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_100005508(v7, &qword_10097A7F0, &unk_1007FB600);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      if (v18)
      {
        v64 = v18;
        v65 = v18;
        Date.timeIntervalSince1970.getter();
        [v65 setUnlockDate:?];

        v18 = v64;
      }

      (*(v9 + 8))(v11, v8);
    }
  }

  Date.init()();
  (*(v9 + 56))(v5, 0, 1, v8);
  v30 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_metrics;
  swift_beginAccess();
  v31 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  sub_10000C788(v5, v30 + *(v31 + 32), &qword_10097A7F0, &unk_1007FB600);
  swift_endAccess();
  if (v18)
  {
    v32 = [v18 data];
    if (v32)
    {
      v33 = v32;
      v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      if (qword_100973950 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000C4AC(v37, qword_1009809B0);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Sending authentication request", v40, 2u);
      }

      v41 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
      swift_beginAccess();
      sub_10000FF90(v1 + v41, &v75, &qword_100982080, &unk_1007FDD30);
      if (v76)
      {
        sub_1000121F8(&v75, v77);
        v42 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(v1 + v42, &v75, &qword_10097A9C8, &unk_1007FDD40);
        if (v76)
        {
          sub_1002A9938(&v75, v74);
          sub_100005508(&v75, &qword_10097A9C8, &unk_1007FDD40);
          sub_10002CDC0(v74, v74[3]);
          LODWORD(v43) = sub_1004FE08C(*(v1 + v28));
          if (qword_100973C48 != -1)
          {
            swift_once();
          }

          sub_10000C4AC(v37, qword_1009895D8);
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v70 = v34;
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v73 = v47;
            *v46 = 136315138;
            v48 = v43;
            v69 = v43;
            if (v43 <= 2u)
            {
              v49 = 0xEB0000000074656ELL;
              v43 = v18;
              if (v48)
              {
                if (v48 == 1)
                {
                  v49 = 0xE800000000000000;
                  v50 = 0x6C61636F4C736469;
                }

                else
                {
                  v50 = 0x7265746E49736469;
                }
              }

              else
              {
                v49 = 0xEB00000000746E65;
                v50 = 0x674179627261656ELL;
              }
            }

            else
            {
              v43 = v18;
              if (v48 > 4)
              {
                if (v48 == 5)
                {
                  v49 = 0x80000001007888E0;
                  v50 = 0xD000000000000010;
                }

                else
                {
                  v49 = 0xED000068746F6F74;
                  v50 = 0x65756C4265726F63;
                }
              }

              else if (v48 == 3)
              {
                v49 = 0xE900000000000054;
                v50 = 0x4274726F70706172;
              }

              else
              {
                v49 = 0xEB000000004C4457;
                v50 = 0x4174726F70706172;
              }
            }

            v66 = sub_10000C4E4(v50, v49, &v73);

            *(v46 + 4) = v66;
            _os_log_impl(&_mh_execute_header, v44, v45, "Using transport type %s", v46, 0xCu);
            sub_10000C60C(v47);

            v18 = v43;
            v34 = v70;
            LOBYTE(v43) = v69;
          }

          else
          {
          }

          sub_1005CCC7C(v34, v36, v77, 0, v43);
          sub_10000C60C(v77);
          v58 = v74;
          goto LABEL_52;
        }

        sub_10000C60C(v77);
        v59 = &v75;
      }

      else
      {
        sub_100005508(&v75, &qword_100982080, &unk_1007FDD30);
        v57 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(v1 + v57, v77, &qword_10097A9C8, &unk_1007FDD40);
        if (v77[3])
        {
          sub_1002A9938(v77, &v75);
          sub_100005508(v77, &qword_10097A9C8, &unk_1007FDD40);
          sub_10002CDC0(&v75, v76);
          sub_1006D3874(v34, v36, 0, *(v1 + v28));
          v58 = &v75;
LABEL_52:
          sub_10000C60C(v58);
          goto LABEL_53;
        }

        v59 = v77;
      }

      sub_100005508(v59, &qword_10097A9C8, &unk_1007FDD40);
LABEL_53:
      v67 = v72;
      sub_1004FD4B0(0, 1);

      sub_10028BCC0(v71, v67);
      return sub_100026AC0(v34, v36);
    }
  }

  if (qword_100973950 != -1)
  {
    goto LABEL_56;
  }

LABEL_25:
  v51 = type metadata accessor for Logger();
  sub_10000C4AC(v51, qword_1009809B0);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  v54 = os_log_type_enabled(v52, v53);
  v55 = v72;
  if (v54)
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "Error converting request to data", v56, 2u);
  }

  sub_1004D2760(10);
  return sub_10028BCC0(v71, v55);
}

uint64_t sub_1004D2760(uint64_t a1)
{
  v3 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v3 - 8);
  v5 = &v20[-1] - v4;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    Date.init()();
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
    v14 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_metrics];
    swift_beginAccess();
    v15 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
    sub_10000C788(v5, &v14[*(v15 + 20)], &qword_10097A7F0, &unk_1007FB600);
    v16 = &v14[*(v15 + 72)];
    *v16 = a1;
    v16[4] = 0;
    swift_endAccess();
    sub_1004D8F00();
    v17 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
    swift_beginAccess();
    sub_10000FF90(&v1[v17], v21, &qword_10097A9C8, &unk_1007FDD40);
    if (v22)
    {
      sub_1002A9938(v21, v20);
      sub_100005508(v21, &qword_10097A9C8, &unk_1007FDD40);
      v18 = sub_10002CDC0(v20, v20[3]);
      sub_100461318(v1, a1, 0, 0xE000000000000000, *v18);
      return sub_10000C60C(v20);
    }

    else
    {
      return sub_100005508(v21, &qword_10097A9C8, &unk_1007FDD40);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D2A30(uint64_t a1)
{
  if (qword_100973950 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_1009809B0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000C4E4(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected error: %s", v4, 0xCu);
    sub_10000C60C(v5);
  }

  return sub_1004D2760(10);
}

void sub_1004D2BBC(void *a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v159 = &v145 - v4;
  v165 = type metadata accessor for DispatchWorkItemFlags();
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v162 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for DispatchQoS();
  v161 = *(v163 - 8);
  __chkstk_darwin(v163);
  v160 = &v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v166 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v145 - v14;
  v168 = type metadata accessor for Date();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v169 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = v1;
  v21 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v20 = v21;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if (v21)
  {
    v158 = v22;
    if (qword_100973950 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v23 = type metadata accessor for Logger();
  v24 = sub_10000C4AC(v23, qword_1009809B0);
  v25 = a1;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&_mh_execute_header, v26, v27, "Handling authentication request %@", v28, 0xCu);
    sub_100005508(v29, &qword_100975400, &qword_1007F65D0);
  }

  v31 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v32 = v170;
  v33 = *&v170[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type];
  if (v33 <= 0x16 && ((1 << v33) & 0x7E658E) != 0)
  {
    v34 = v170;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&aBlock = v38;
      *v37 = 136315138;
      v39 = sub_100027340();
      v41 = sub_10000C4E4(v39, v40, &aBlock);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Authentication type %s does not support handling this message", v37, 0xCu);
      sub_10000C60C(v38);
    }

    return;
  }

  v153 = v24;
  v42 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  swift_beginAccess();
  sub_10000FF90(&v32[v42], &aBlock, &qword_100982080, &unk_1007FDD30);
  sub_10000FF90(&aBlock, &v177, &qword_100982080, &unk_1007FDD30);
  if (!v178)
  {
    sub_100005508(&v177, &qword_100982080, &unk_1007FDD30);
    v49 = sub_100010F88(10, 0x2072656570206F4ELL, 0xEE00656369766564);
    v51 = v50;
    sub_1000115C8();
    v52 = swift_allocError();
    *v53 = v49;
    *(v53 + 8) = v51;
    swift_willThrow();
    sub_100005508(&aBlock, &qword_100982080, &unk_1007FDD30);
LABEL_30:
    v179 = v52;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {

      sub_1004D610C(aBlock, *(&aBlock + 1));
    }

    else
    {

      v83 = sub_100010F88(10, 0, 0xE000000000000000);
      sub_1004D610C(v83, v84);
    }

    return;
  }

  v154 = v31;
  sub_100005508(&aBlock, &qword_100982080, &unk_1007FDD30);
  sub_1000121F8(&v177, &v179);
  [v25 sessionStartDate];
  v43 = v169;
  Date.init(timeIntervalSince1970:)();
  v44 = v167;
  v45 = *(v167 + 16);
  v46 = v168;
  v156 = v167 + 16;
  v155 = v45;
  v45(v15, v43, v168);
  v157 = *(v44 + 56);
  v157(v15, 0, 1, v46);
  v47 = &v32[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_metrics];
  swift_beginAccess();
  sub_10000C788(v15, v47, &qword_10097A7F0, &unk_1007FB600);
  swift_endAccess();
  if ([v25 hasUnlockDate])
  {
    [v25 unlockDate];
    if (v48 == 0.0)
    {
      v46 = v168;
      v155(v13, v169, v168);
    }

    else
    {
      [v25 unlockDate];
      Date.init(timeIntervalSince1970:)();
      v46 = v168;
    }

    v157(v13, 0, 1, v46);
    swift_beginAccess();
    v54 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
    sub_10000C788(v13, v47 + *(v54 + 68), &qword_10097A7F0, &unk_1007FB600);
    swift_endAccess();
  }

  v155(v15, v169, v46);
  v157(v15, 0, 1, v46);
  swift_beginAccess();
  v55 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  sub_10000C788(v15, v47 + v55[7], &qword_10097A7F0, &unk_1007FB600);
  v56 = v55[8];
  sub_100005508(v47 + v56, &qword_10097A7F0, &unk_1007FB600);
  v155((v47 + v56), v169, v46);
  v57 = (v47 + v56);
  v58 = v157;
  v157(v57, 0, 1, v46);
  swift_endAccess();
  Date.init()();
  v58(v15, 0, 1, v46);
  swift_beginAccess();
  sub_10000C788(v15, v47 + v55[9], &qword_10097A7F0, &unk_1007FB600);
  swift_endAccess();
  v59 = v154;
  v60 = *&v32[v154];
  if ((v60 - 1) < 4 || (v61 = 0, v60 == 19))
  {
    v62 = [v25 awdlInfo];
    if (v62)
    {
      v63 = v62;
      v64 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      isa = Data._bridgeToObjectiveC()().super.isa;
      v68 = sub_1001114F4(isa);

      if (v68)
      {
        v61 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100026AC0(v64, v66);

        goto LABEL_22;
      }

      sub_100026AC0(v64, v66);
    }

    v78 = 0x8000000100791890;
LABEL_28:
    v79 = sub_100010F88(10, 0xD00000000000001FLL, v78);
    v81 = v80;
    sub_1000115C8();
    v52 = swift_allocError();
    *v82 = v79;
    *(v82 + 8) = v81;
    swift_willThrow();
LABEL_29:
    (*(v167 + 8))(v169, v168);
    sub_10000C60C(&v179);
    goto LABEL_30;
  }

LABEL_22:
  v69 = [v25 aksToken];
  v70 = v166;
  if (!v69)
  {

    v78 = 0x80000001007931E0;
    goto LABEL_28;
  }

  v157 = v61;
  v71 = v69;
  v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;

  sub_1002A9938(&v179, &aBlock);
  (*(v70 + 16))(v9, &v32[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID], v7);
  v75 = *&v32[v59];
  type metadata accessor for SDAuthenticationAKSAuthSession(0);
  v76 = swift_allocObject();
  *(v76 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksSession) = 0;
  v77 = [objc_opt_self() sharedManager];
  if (!v77)
  {
    __break(1u);
    return;
  }

  *(v76 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksManager) = v77;
  *(v76 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_role) = 0;
  sub_1000121F8(&aBlock, v76 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice);
  (*(v70 + 32))(v76 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_sessionID, v9, v7);
  *(v76 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_type) = v75;
  *&v32[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_aksAuthSession] = v76;

  sub_100294008(v72, v74);
  sub_100669814(0, 0xF000000000000000);
  sub_100669484(v72, v74);
  v86 = v85;
  sub_100026AC0(v72, v74);
  v166 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v88 = v87;

  v89 = sub_1006696B8();
  v156 = v88;
  v151 = v76;
  v152 = v89;
  v155 = v90;
  v91 = [objc_allocWithZone(SDAuthenticationResponse) init];
  if (!v91)
  {

    v102 = sub_100010F88(10, 0xD000000000000031, 0x8000000100793200);
    v104 = v103;
    sub_1000115C8();
    v52 = swift_allocError();
    *v105 = v102;
    *(v105 + 8) = v104;
    swift_willThrow();
    sub_100026AC0(v166, v156);
    sub_100026AC0(v152, v155);
LABEL_52:
    sub_100026AC0(v72, v74);

    goto LABEL_29;
  }

  v92 = v91;
  UUID.uuidString.getter();
  v93 = String._bridgeToObjectiveC()();

  [v92 setSessionID:v93];

  [v92 setVersion:1];
  v94 = v166;
  v95 = v156;
  v96 = Data._bridgeToObjectiveC()().super.isa;
  [v92 setAksToken:v96];

  v97 = *&v32[v59];
  if ((v97 - 1) < 4 || v97 == 19)
  {
    v98 = *&v32[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession];
    if (v98)
    {
      v99 = *(v98 + 16);
      v100 = *(v98 + 24);
      sub_100294008(v99, v100);
      v101.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100026AC0(v99, v100);
    }

    else
    {
      v101.super.isa = 0;
    }

    [v92 setAwdlInfo:v101.super.isa];
  }

  v106 = [v92 data];
  if (!v106)
  {

    v131 = sub_100010F88(10, 0xD000000000000022, 0x8000000100793240);
    v133 = v132;
    sub_1000115C8();
    v134 = v94;
    v135 = v95;
    v52 = swift_allocError();
    *v136 = v131;
    *(v136 + 8) = v133;
    swift_willThrow();
    sub_100026AC0(v134, v135);
    sub_100026AC0(v152, v155);

    goto LABEL_52;
  }

  v148 = v72;
  v149 = v74;
  v107 = v106;
  v150 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v109 = v108;

  v110 = v92;
  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *v113 = 138412290;
    *(v113 + 4) = v110;
    *v114 = v92;
    v115 = v110;
    _os_log_impl(&_mh_execute_header, v111, v112, "Sending authentication response: %@", v113, 0xCu);
    sub_100005508(v114, &qword_100975400, &qword_1007F65D0);
  }

  sub_1002A9938(&v179, &v177);
  v116 = swift_allocObject();
  v117 = v170;
  v118 = v150;
  v116[2] = v170;
  v116[3] = v118;
  v116[4] = v109;
  sub_1000121F8(&v177, (v116 + 5));
  v175 = sub_1004E5648;
  v176 = v116;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v173 = sub_100011678;
  v174 = &unk_1008E4D90;
  v119 = _Block_copy(&aBlock);
  v146 = v117;
  v147 = v109;
  sub_100294008(v118, v109);
  v120 = v160;
  static DispatchQoS.unspecified.getter();
  v171 = _swiftEmptyArrayStorage;
  sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  v121 = v162;
  v122 = v165;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v119);
  (*(v164 + 8))(v121, v122);
  (*(v161 + 8))(v120, v163);

  v123 = [objc_opt_self() standardUserDefaults];
  v124 = String._bridgeToObjectiveC()();
  LOBYTE(v119) = [v123 BOOLForKey:v124];

  if ((v119 & 1) != 0 || (v137 = *&v117[v59], (v137 - 1) >= 4) && v137 != 19)
  {

    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.default.getter();
    v127 = os_log_type_enabled(v125, v126);
    v128 = v148;
    v129 = v156;
    if (v127)
    {
      v130 = swift_slowAlloc();
      *v130 = 0;
      _os_log_impl(&_mh_execute_header, v125, v126, "Skipping ranging", v130, 2u);
    }

    sub_100026AC0(v94, v129);

    sub_100026AC0(v152, v155);
    sub_100026AC0(v150, v147);

    sub_100026AC0(v128, v149);

    (*(v167 + 8))(v169, v168);
    sub_10000C60C(&v179);
    v146[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingSucceeded] = 1;
  }

  else
  {
    v138 = type metadata accessor for TaskPriority();
    v139 = v159;
    (*(*(v138 - 8) + 56))(v159, 1, 1, v138);
    v140 = swift_allocObject();
    v140[2] = 0;
    v140[3] = 0;
    v141 = v146;
    v140[4] = v157;
    v140[5] = v141;
    v142 = v152;
    v143 = v155;
    v140[6] = v152;
    v140[7] = v143;
    v144 = v141;
    sub_100294008(v142, v143);
    sub_1002B3098(0, 0, v139, &unk_100807130, v140);
    sub_100026AC0(v94, v156);

    sub_100026AC0(v142, v143);
    sub_100026AC0(v150, v147);

    sub_100026AC0(v148, v149);

    (*(v167 + 8))(v169, v168);
    sub_10000C60C(&v179);
  }
}

uint64_t sub_1004D4304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(a1 + v8, v21, &qword_10097A9C8, &unk_1007FDD40);
  if (!v22)
  {
    return sub_100005508(v21, &qword_10097A9C8, &unk_1007FDD40);
  }

  sub_1002A9938(v21, v20);
  sub_100005508(v21, &qword_10097A9C8, &unk_1007FDD40);
  sub_10002CDC0(v20, v20[3]);
  v9 = sub_1004FE08C(*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type));
  if (qword_100973C48 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_1009895D8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136315138;
    v19 = v14;
    if (v9 <= 2u)
    {
      v15 = 0xEB0000000074656ELL;
      if (v9)
      {
        if (v9 == 1)
        {
          v15 = 0xE800000000000000;
          v16 = 0x6C61636F4C736469;
        }

        else
        {
          v16 = 0x7265746E49736469;
        }
      }

      else
      {
        v15 = 0xEB00000000746E65;
        v16 = 0x674179627261656ELL;
      }
    }

    else if (v9 > 4u)
    {
      if (v9 == 5)
      {
        v15 = 0x80000001007888E0;
        v16 = 0xD000000000000010;
      }

      else
      {
        v15 = 0xED000068746F6F74;
        v16 = 0x65756C4265726F63;
      }
    }

    else if (v9 == 3)
    {
      v15 = 0xE900000000000054;
      v16 = 0x4274726F70706172;
    }

    else
    {
      v15 = 0xEB000000004C4457;
      v16 = 0x4174726F70706172;
    }

    v18 = sub_10000C4E4(v16, v15, &v19);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Using transport type %s", v13, 0xCu);
    sub_10000C60C(v14);
  }

  else
  {
  }

  sub_1005CCC7C(a2, a3, a4, 1u, v9);
  return sub_10000C60C(v20);
}

uint64_t sub_1004D463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v7[16] = v8;
  v7[17] = *(v8 - 8);
  v7[18] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v7[19] = v9;
  v7[20] = *(v9 - 8);
  v7[21] = swift_task_alloc();

  return _swift_task_switch(sub_1004D475C, 0, 0);
}

uint64_t sub_1004D475C()
{
  v1 = 0xD000000000000012;
  v2 = *(v0 + 96);
  if (v2)
  {
    v3 = *(*(v0 + 104) + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession);
    *(v0 + 176) = v3;
    if (v3)
    {

      v4 = swift_task_alloc();
      *(v0 + 184) = v4;
      *v4 = v0;
      v4[1] = sub_1004D4988;
      v5 = *(v0 + 112);
      v6 = *(v0 + 120);

      return sub_10042CEDC(v2, v5, v6);
    }

    v8 = " have AWDL info";
  }

  else
  {
    v8 = "t response to data";
    v1 = 0xD00000000000004FLL;
  }

  v9 = sub_100010F88(10, v1, v8 | 0x8000000000000000);
  v11 = v10;
  sub_1000115C8();
  v12 = swift_allocError();
  *v13 = v9;
  *(v13 + 8) = v11;
  swift_willThrow();
  *(v0 + 80) = v12;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {

    sub_1004D610C(*(v0 + 64), *(v0 + 72));
  }

  else
  {

    v14 = sub_100010F88(10, 0, 0xE000000000000000);
    sub_1004D610C(v14, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1004D4988(char a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_1004D4E8C;
  }

  else
  {
    *(v4 + 200) = a1 & 1;
    v5 = sub_1004D4AB4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004D4AB4()
{
  v1 = *(v0 + 200);
  *(v0[13] + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingSucceeded) = v1;
  if (v1 == 1)
  {
    v2 = v0[24];
    sub_1004D4FB0();

    if (v2)
    {
      v0[10] = v2;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      if (swift_dynamicCast())
      {

        sub_1004D610C(*(v0 + 16), v0[9]);
      }

      else
      {

        v15 = sub_100010F88(10, 0, 0xE000000000000000);
        sub_1004D610C(v15, v16);
      }
    }
  }

  else
  {
    if (qword_100973950 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_1009809B0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Out of range", v6, 2u);
    }

    v7 = v0[21];
    v19 = v0[20];
    v20 = v0[19];
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[16];
    v11 = v0[13];

    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v0[6] = sub_1004E572C;
    v0[7] = v12;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100011678;
    v0[5] = &unk_1008E4E08;
    v13 = _Block_copy(v0 + 2);
    v14 = v11;
    static DispatchQoS.unspecified.getter();
    v0[11] = _swiftEmptyArrayStorage;
    sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v13);
    (*(v9 + 8))(v8, v10);
    (*(v19 + 8))(v7, v20);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1004D4E8C()
{

  *(v0 + 80) = *(v0 + 192);
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {

    sub_1004D610C(*(v0 + 64), *(v0 + 72));
  }

  else
  {

    v1 = sub_100010F88(10, 0, 0xE000000000000000);
    sub_1004D610C(v1, v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_1004D4FB0()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = __chkstk_darwin(v8);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_authToken + 8];
  if (v13 >> 60 == 15)
  {
    if (qword_100973950 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_1009809B0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Auth token not present yet", v17, 2u);
    }

LABEL_19:

    return;
  }

  v48 = v10;
  v49 = v9;
  v18 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_authToken];
  v19 = v0[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingSucceeded];
  sub_100294008(v18, v13);
  if (v19 != 1)
  {
    if (qword_100973950 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_1009809B0);
    v15 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v15, v27, "Ranging not succeeded yet", v28, 2u);
    }

    sub_10028BCC0(v18, v13);
    goto LABEL_19;
  }

  v47 = v5;
  if (qword_100973950 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000C4AC(v20, qword_1009809B0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v46 = v4;
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Consuming auth token", v23, 2u);
    v2 = v1;
    v4 = v46;
  }

  if (*&v3[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_aksAuthSession])
  {
    sub_1002A9924(v18, v13);

    sub_100669484(v18, v13);
    v25 = v24;
    sub_10028BCC0(v18, v13);
    if (v2)
    {
    }

    else
    {
      v46 = v18;
      v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100026AC0(v34, v35);

      if (sub_1004D9EE0())
      {
        v45 = *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
        v36 = swift_allocObject();
        *(v36 + 16) = v3;
        aBlock[4] = sub_1004E5768;
        aBlock[5] = v36;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100011678;
        aBlock[3] = &unk_1008E4E58;
        v44 = _Block_copy(aBlock);
        v37 = v3;
        static DispatchQoS.unspecified.getter();
        aBlock[7] = _swiftEmptyArrayStorage;
        v43[1] = sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
        sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v38 = v44;
        OS_dispatch_queue.async(group:qos:flags:execute:)();

        _Block_release(v38);
        sub_10028BCC0(v46, v13);
        (*(v47 + 8))(v7, v4);
        (*(v48 + 8))(v12, v49);

        return;
      }

      v39 = sub_100010F88(10, 0xD000000000000045, 0x80000001007932C0);
      v41 = v40;
      sub_1000115C8();
      swift_allocError();
      *v42 = v39;
      *(v42 + 8) = v41;
      swift_willThrow();

      v18 = v46;
    }
  }

  else
  {
    v29 = sub_100010F88(10, 0xD000000000000013, 0x8000000100791830);
    v30 = v18;
    v32 = v31;
    sub_1000115C8();
    swift_allocError();
    *v33 = v29;
    *(v33 + 8) = v32;
    v18 = v30;
    swift_willThrow();
  }

  sub_10028BCC0(v18, v13);
}

void sub_1004D568C(unint64_t a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v5 - 8);
  v7 = v57 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_50:
    swift_once();
    goto LABEL_21;
  }

  v14 = [objc_allocWithZone(SDAuthenticationConfirmation) init];
  v2 = v14;
  if (v14)
  {
    [v14 setVersion:1];
    v15 = v2;
    UUID.uuidString.getter();
    v16 = String._bridgeToObjectiveC()();

    [v15 setSessionID:v16];

    [v15 setSuccess:HIDWORD(a1) & 1];
    if ((a1 & 0x100000000) == 0)
    {
      [v15 setErrorCode:a1];
    }

    v17 = [v15 data];
    if (v17)
    {
      v18 = v17;
      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if (qword_100973950 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000C4AC(v22, qword_1009809B0);
      v23 = v15;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v60 = a1;
        v59 = v7;
        v27 = v19;
        v28 = v21;
        v29 = v26;
        v30 = v22;
        v31 = swift_slowAlloc();
        *v29 = 138412290;
        *(v29 + 4) = v23;
        *v31 = v2;
        v32 = v23;
        _os_log_impl(&_mh_execute_header, v24, v25, "Sending confirmation: %@", v29, 0xCu);
        sub_100005508(v31, &qword_100975400, &qword_1007F65D0);
        v22 = v30;

        v21 = v28;
        v19 = v27;
        v7 = v59;
        a1 = v60;
      }

      v33 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
      swift_beginAccess();
      sub_10000FF90(&v3[v33], &v63, &qword_100982080, &unk_1007FDD30);
      if (v64)
      {
        sub_1000121F8(&v63, v65);
        v34 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(&v3[v34], &v63, &qword_10097A9C8, &unk_1007FDD40);
        if (v64)
        {
          sub_1002A9938(&v63, v61);
          sub_100005508(&v63, &qword_10097A9C8, &unk_1007FDD40);
          v35 = *sub_10002CDC0(v61, v61[3]);
          LODWORD(v36) = sub_1004FE08C(*&v3[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type]);
          if (qword_100973C48 != -1)
          {
            swift_once();
          }

          sub_10000C4AC(v22, qword_1009895D8);
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v57[1] = v35;
            v60 = v23;
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v62[0] = v40;
            *v39 = 136315138;
            v58 = v21;
            LODWORD(v59) = v36;
            if (v36 <= 2u)
            {
              v41 = 0xEB0000000074656ELL;
              if (v36)
              {
                if (v36 == 1)
                {
                  v41 = 0xE800000000000000;
                  v42 = 0x6C61636F4C736469;
                }

                else
                {
                  v42 = 0x7265746E49736469;
                }
              }

              else
              {
                v41 = 0xEB00000000746E65;
                v42 = 0x674179627261656ELL;
              }
            }

            else if (v36 > 4u)
            {
              if (v36 == 5)
              {
                v41 = 0x80000001007888E0;
                v42 = 0xD000000000000010;
              }

              else
              {
                v41 = 0xED000068746F6F74;
                v42 = 0x65756C4265726F63;
              }
            }

            else if (v36 == 3)
            {
              v41 = 0xE900000000000054;
              v42 = 0x4274726F70706172;
            }

            else
            {
              v41 = 0xEB000000004C4457;
              v42 = 0x4174726F70706172;
            }

            v36 = sub_10000C4E4(v42, v41, v62);

            *(v39 + 4) = v36;
            _os_log_impl(&_mh_execute_header, v37, v38, "Using transport type %s", v39, 0xCu);
            sub_10000C60C(v40);

            v21 = v58;
            v23 = v60;
            LOBYTE(v36) = v59;
          }

          else
          {
          }

          v48 = sub_1005CCC7C(v19, v21, v65, 2u, v36);
          v49 = HIDWORD(v48) & 1;
          sub_10000C60C(v65);
          sub_10000C60C(v61);
LABEL_41:
          v3[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_isConfirmationSent] = 1;
          if ((a1 & 0x100000000) != 0)
          {
            if (v49)
            {
              Date.init()();
              v51 = type metadata accessor for Date();
              (*(*(v51 - 8) + 56))(v7, 0, 1, v51);
              v52 = &v3[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_metrics];
              swift_beginAccess();
              v53 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
              sub_10000C788(v7, &v52[*(v53 + 20)], &qword_10097A7F0, &unk_1007FB600);
              swift_endAccess();
              sub_1004D8F00();
              v54 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
              swift_beginAccess();
              sub_10000FF90(&v3[v54], v65, &qword_10097A9C8, &unk_1007FDD40);
              if (v66)
              {
                sub_1002A9938(v65, &v63);
                sub_100005508(v65, &qword_10097A9C8, &unk_1007FDD40);
                v55 = sub_10002CDC0(&v63, v64);
                sub_1004E0C14(v3, *v55);

                sub_100026AC0(v19, v21);
                sub_10000C60C(&v63);
              }

              else
              {

                sub_100026AC0(v19, v21);
                sub_100005508(v65, &qword_10097A9C8, &unk_1007FDD40);
              }

              return;
            }

            v56 = v48;
          }

          else
          {
            v56 = a1;
          }

          sub_1004D2760(v56);

          sub_100026AC0(v19, v21);
          return;
        }

        sub_10000C60C(v65);
        v50 = &v63;
      }

      else
      {
        sub_100005508(&v63, &qword_100982080, &unk_1007FDD30);
        v47 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(&v3[v47], v65, &qword_10097A9C8, &unk_1007FDD40);
        if (v66)
        {
          sub_1002A9938(v65, &v63);
          sub_100005508(v65, &qword_10097A9C8, &unk_1007FDD40);
          sub_10002CDC0(&v63, v64);
          v48 = sub_1006D3874(v19, v21, 2u, *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type]);
          v49 = HIDWORD(v48) & 1;
          sub_10000C60C(&v63);
          goto LABEL_41;
        }

        v50 = v65;
      }

      sub_100005508(v50, &qword_10097A9C8, &unk_1007FDD40);
      v48 = 0;
      LOBYTE(v49) = 1;
      goto LABEL_41;
    }
  }

  else
  {
    [0 setSuccess:HIDWORD(a1) & 1];
  }

  if (qword_100973950 != -1)
  {
    goto LABEL_50;
  }

LABEL_21:
  v43 = type metadata accessor for Logger();
  sub_10000C4AC(v43, qword_1009809B0);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Error converting confirmation to data", v46, 2u);
  }

  sub_1004D2760(10);
}

uint64_t sub_1004D610C(int a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  aBlock[4] = sub_1004E5770;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E4EA8;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

void sub_1004D63F8(void *a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v6 = &v70 - v5;
  v7 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v7 - 8);
  v9 = &v70 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (qword_100973950 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = type metadata accessor for Logger();
  v17 = sub_10000C4AC(v16, qword_1009809B0);
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "Handling authentication response %@", v21, 0xCu);
    sub_100005508(v22, &qword_100975400, &qword_1007F65D0);
  }

  v24 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v25 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type];
  if (v25 <= 0x16 && ((1 << v25) & 0x7E658E) != 0)
  {
    v75 = v6;
    v76 = v17;
    Date.init()();
    v26 = type metadata accessor for Date();
    v27 = *(*(v26 - 8) + 56);
    v27(v9, 0, 1, v26);
    v28 = &v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_metrics];
    swift_beginAccess();
    v29 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
    sub_10000C788(v9, &v28[*(v29 + 36)], &qword_10097A7F0, &unk_1007FB600);
    swift_endAccess();
    sub_1004FDD9C();
    if ([v18 hasErrorCode])
    {
      sub_1004D2760([v18 errorCode]);
      return;
    }

    v30 = [v18 awdlInfo];
    if (v30)
    {
      v74 = v2;
      v71 = v24;
      v31 = v30;
      v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      isa = Data._bridgeToObjectiveC()().super.isa;
      v36 = sub_1001114F4(isa);

      if (v36)
      {
        v72 = v32;
        v73 = v34;
        v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v38 = v74;
        v39 = &v74[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingToken];
        v40 = *&v74[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingToken + 8];
        if (v40 >> 60 == 15)
        {

          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            *v43 = 0;
            _os_log_impl(&_mh_execute_header, v41, v42, "Could not find ranging token", v43, 2u);
          }

          LOBYTE(v77[0]) = 0;
          sub_1004D568C(0xAuLL);
          sub_100026AC0(v72, v73);
        }

        else
        {
          v47 = *v39;
          sub_100294008(*v39, *&v74[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingToken + 8]);
          Date.init()();
          v27(v9, 0, 1, v26);
          swift_beginAccess();
          sub_10000C788(v9, &v28[*(v29 + 40)], &qword_10097A7F0, &unk_1007FB600);
          swift_endAccess();
          v48 = [objc_opt_self() standardUserDefaults];
          v49 = String._bridgeToObjectiveC()();
          v50 = [v48 BOOLForKey:v49];

          if (v50)
          {
            v51 = v47;

            v52 = Logger.logObject.getter();
            v53 = static os_log_type_t.default.getter();
            v54 = os_log_type_enabled(v52, v53);
            v55 = v72;
            if (v54)
            {
              v56 = swift_slowAlloc();
              *v56 = 0;
              _os_log_impl(&_mh_execute_header, v52, v53, "Default classCUnlockSkipRanging is set. Skipping ranging", v56, 2u);
            }

            v38[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingSucceeded] = 1;
            v57 = v73;
            if (*&v38[v71] == 1)
            {
              LOBYTE(v77[0]) = 1;
              sub_1004D568C(0x100000000uLL);
            }

            sub_100026AC0(v55, v57);
            sub_10028BCC0(v51, v40);
          }

          else
          {
            v66 = type metadata accessor for TaskPriority();
            v67 = v75;
            (*(*(v66 - 8) + 56))(v75, 1, 1, v66);
            v68 = swift_allocObject();
            v68[2] = 0;
            v68[3] = 0;
            v68[4] = v38;
            v68[5] = v37;
            v68[6] = v47;
            v68[7] = v40;
            v69 = v38;
            sub_1002A9924(v47, v40);
            sub_1002B3098(0, 0, v67, &unk_1008070E8, v68);
            sub_100026AC0(v72, v73);
            sub_10028BCC0(v47, v40);
          }
        }

        return;
      }

      sub_100026AC0(v32, v34);
    }

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Message does not have AWDL info", v46, 2u);
    }

    LOBYTE(v77[0]) = 0;
    sub_1004D568C(0xAuLL);
  }

  else
  {
    v58 = v2;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v77[0] = v62;
      *v61 = 136315138;
      v63 = sub_100027340();
      v65 = sub_10000C4E4(v63, v64, v77);

      *(v61 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v59, v60, "Authentication type %s does not support handling this message", v61, 0xCu);
      sub_10000C60C(v62);
    }
  }
}

uint64_t sub_1004D6D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();

  return _swift_task_switch(sub_1004D6E20, 0, 0);
}

uint64_t sub_1004D6E20()
{
  if (qword_100973950 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_1009809B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting ranging as initiator", v4, 2u);
  }

  v5 = v0[16];

  v6 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession);
  v0[26] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[27] = v7;
    *v7 = v0;
    v7[1] = sub_1004D71CC;
    v8 = v0[18];
    v9 = v0[19];
    v10 = v0[17];

    return sub_10042CEDC(v10, v8, v9);
  }

  else
  {
    v20 = v0[25];
    v12 = v0[22];
    v21 = v0[24];
    v22 = v0[23];
    v14 = v0[20];
    v13 = v0[21];
    v15 = v0[16];
    v16 = swift_allocObject();
    *(v16 + 16) = 2;
    *(v16 + 24) = v15;
    v0[12] = sub_1004E52EC;
    v0[13] = v16;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100011678;
    v0[11] = &unk_1008E4CF0;
    v17 = _Block_copy(v0 + 8);
    v18 = v15;
    static DispatchQoS.unspecified.getter();
    v0[15] = _swiftEmptyArrayStorage;
    sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v13 + 8))(v12, v14);
    (*(v21 + 8))(v20, v22);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1004D71CC(char a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = sub_1004D7550;
  }

  else
  {

    *(v4 + 232) = a1 & 1;
    v5 = sub_1004D7300;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004D7300()
{
  v1 = *(v0 + 232);
  v11 = v0[25];
  v2 = v0[22];
  v12 = v0[24];
  v13 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[16];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  v0[12] = sub_1004E52EC;
  v0[13] = v6;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100011678;
  v0[11] = &unk_1008E4CF0;
  v7 = _Block_copy(v0 + 8);
  v8 = v5;
  static DispatchQoS.unspecified.getter();
  v0[15] = _swiftEmptyArrayStorage;
  sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);
  (*(v3 + 8))(v2, v4);
  (*(v12 + 8))(v11, v13);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004D7550()
{
  v1 = v0[28];
  v2 = v0[25];
  v12 = v0[24];
  v13 = v0[23];
  v3 = v0[22];
  v11 = v0[21];
  v4 = v0[20];
  v5 = v0[16];

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  v0[6] = sub_1004E52E4;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100011678;
  v0[5] = &unk_1008E4CA0;
  v7 = _Block_copy(v0 + 2);
  v8 = v5;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);

  (*(v11 + 8))(v3, v4);
  (*(v12 + 8))(v2, v13);

  v9 = v0[1];

  return v9();
}

void sub_1004D77C0(char a1)
{
  if (a1 == 2 || (a1 & 1) == 0)
  {
    v1 = 9;
  }

  else
  {
    v1 = 0x100000000;
  }

  sub_1004D568C(v1);
}

void sub_1004D7820(uint64_t a1)
{
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    sub_1004D568C(v1);
  }

  else
  {
    sub_1004D568C(0xAuLL);
  }
}

uint64_t sub_1004D78BC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (qword_100973950 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_1009809B0);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "Handling token %@", v14, 0xCu);
    sub_100005508(v15, &qword_100975400, &qword_1007F65D0);
  }

  v17 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
  v18 = v17 > 0x16;
  v19 = (1 << v17) & 0x7E658E;
  if (v18 || v19 == 0)
  {
    v34 = [v11 aksToken];
    if (v34)
    {
      v35 = v34;
      v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = (v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_authToken);
      v40 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_authToken);
      v41 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_authToken + 8);
      *v39 = v36;
      v39[1] = v38;
      sub_100294008(v36, v38);
      sub_10028BCC0(v40, v41);
      sub_1004D4FB0();
      return sub_100026AC0(v36, v38);
    }

    v24 = 0xD000000000000024;
    v25 = 0x8000000100793310;
  }

  else
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v21._object = 0x8000000100793340;
    v21._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v21);
    v22._countAndFlagsBits = sub_100027340();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 0xD000000000000027;
    v23._object = 0x8000000100793360;
    String.append(_:)(v23);
    v24 = v42;
    v25 = v43;
  }

  v26 = sub_100010F88(10, v24, v25);
  v28 = v27;
  sub_1000115C8();
  v29 = swift_allocError();
  *v30 = v26;
  *(v30 + 8) = v28;
  swift_willThrow();
  v44 = v29;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v31 = v42;
    v32 = v43;
  }

  else
  {
    v31 = sub_100010F88(10, 0, 0xE000000000000000);
  }

  sub_1004D610C(v31, v32);

  LOBYTE(v42) = 0;
  sub_1004D568C(0xAuLL);
}

void sub_1004D7D10()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  sub_1004FDD9C();
  if ((*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_isConfirmationSent) & 1) == 0)
  {
    v11[12] = 0;
    sub_1004D568C(0xEuLL);
    return;
  }

  if (qword_100973950 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_1009809B0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Can't cancel session that is already finished", v10, 2u);
  }
}

void sub_1004D7F08()
{
  v1 = type metadata accessor for RangingMetrics(0);
  __chkstk_darwin(v1);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1002E3A98();
  v4 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics;
    swift_beginAccess();
    sub_1004E57A0(v4 + v5, v3, type metadata accessor for RangingMetrics);
    v6 = v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_metrics;
    swift_beginAccess();
    v7 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
    sub_1000168F4(v3, v6 + v7[10]);
    sub_1000168F4(&v3[v1[5]], v6 + v7[11]);
    sub_1000168F4(&v3[v1[6]], v6 + v7[12]);
    *(v6 + v7[13]) = v3[v1[7]];
    sub_1000168F4(&v3[v1[8]], v6 + v7[14]);
    sub_1000168F4(&v3[v1[9]], v6 + v7[15]);
    swift_endAccess();
    sub_1004E5900(v3, type metadata accessor for RangingMetrics);
  }

  sub_1004D8098();
}

void sub_1004D8098()
{
  v1 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  v2 = __chkstk_darwin(v1);
  v100 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v99 = &v95 - v5;
  v6 = __chkstk_darwin(v4);
  v98 = &v95 - v7;
  v8 = __chkstk_darwin(v6);
  v97 = &v95 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v95 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v95 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v95 - v17;
  __chkstk_darwin(v16);
  v20 = &v95 - v19;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = (&v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue);
  *v24 = v25;
  (*(v22 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v21);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v24, v21);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v27 = [objc_allocWithZone(SFWatchAuthenticationEvent) init];
  if ((*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type) & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v28 = v27;
  v96 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  [v27 setAuthenticationType:?];
  v101 = v0;
  v29 = v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_metrics;
  swift_beginAccess();
  v30 = (v29 + *(v1 + 72));
  v31 = *(v30 + 4);
  if ((v31 & 1) == 0)
  {
    [v28 setFailureReason:*v30];
  }

  [v28 setSucceeded:v31];
  [v28 setScreenOn:*(v29 + *(v1 + 76)) & 1];
  sub_1004E57A0(v29, v20, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v32 = sub_1004DB10C();
  v95 = v1;
  v34 = v33;
  sub_1004E5900(v20, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v35 = *&v32;
  if (v34)
  {
    v35 = 0.0;
  }

  [v28 setDiscoveryDuration:v35];
  sub_1004E57A0(v29, v18, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v36 = sub_1004DB3CC();
  v38 = v37;
  sub_1004E5900(v18, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v39 = *&v36;
  if (v38)
  {
    v39 = 0.0;
  }

  [v28 setKeyExchangeDuration:v39];
  sub_1004E57A0(v29, v15, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v40 = sub_1004DB68C();
  v42 = v41;
  sub_1004E5900(v15, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v43 = *&v40;
  if (v42)
  {
    v43 = 0.0;
  }

  [v28 setAwdlBringUpDuration:v43];
  sub_1004E57A0(v29, v12, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v44 = sub_1004DBC50();
  v46 = v45;
  sub_1004E5900(v12, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v47 = *&v44;
  if (v46)
  {
    v47 = 0.0;
  }

  [v28 setRangingDuration:v47];
  v48 = v97;
  sub_1004E57A0(v29, v97, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v49 = sub_1004DB94C();
  v51 = v50;
  sub_1004E5900(v48, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v52 = *&v49;
  if (v51)
  {
    v52 = 0.0;
  }

  [v28 setPeerFoundDuration:v52];
  v53 = v98;
  sub_1004E57A0(v29, v98, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v54 = sub_1004DAE5C();
  v56 = v55;
  sub_1004E5900(v53, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v57 = *&v54;
  if (v56)
  {
    v57 = 0.0;
  }

  [v28 setTotalDuration:v57];
  v58 = v99;
  sub_1004E57A0(v29, v99, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v59 = sub_1004DBF10();
  v61 = v60;
  sub_1004E5900(v58, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v62 = *&v59;
  if (v61)
  {
    v62 = 0.0;
  }

  [v28 setTimeSinceBoot:v62];
  v63 = v100;
  sub_1004E57A0(v29, v100, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v64 = sub_1004DC1C0();
  v66 = v65;
  sub_1004E5900(v63, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v67 = *&v64;
  if (v66)
  {
    v67 = 0.0;
  }

  [v28 setTimeSinceRemoteUnlocked:v67];
  v68 = v101;
  v69 = sub_10000D6C4(*(v101 + v96));
  v70 = sub_100693048(v69);

  v71 = sub_10000EEDC(v70);

  LOBYTE(v70) = sub_10000CEB0(1uLL, v71);

  if (v70)
  {
    v72 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
    swift_beginAccess();
    sub_10000FF90(v68 + v72, v102, &qword_10097A9C8, &unk_1007FDD40);
    v73 = v103;
    if (v103)
    {
      v74 = sub_10002CDC0(v102, v103);
      v75 = *(v73 - 8);
      __chkstk_darwin(v74);
      v77 = &v95 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v75 + 16))(v77);
      v78 = sub_100005508(v102, &qword_10097A9C8, &unk_1007FDD40);
      sub_1006D2C1C(v78);
      (*(v75 + 8))(v77, v73);

      v68 = v101;
    }

    else
    {
      sub_100005508(v102, &qword_10097A9C8, &unk_1007FDD40);
    }

    v79 = String._bridgeToObjectiveC()();

    [v28 setWatchHardwareModel:v79];

    sub_10000FF90(v68 + v72, v102, &qword_10097A9C8, &unk_1007FDD40);
    v80 = v103;
    if (v103)
    {
      v81 = sub_10002CDC0(v102, v103);
      v82 = *(v80 - 8);
      __chkstk_darwin(v81);
      v84 = &v95 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v82 + 16))(v84);
      v85 = sub_100005508(v102, &qword_10097A9C8, &unk_1007FDD40);
      sub_1006D2C1C(v85);
      (*(v82 + 8))(v84, v80);
    }

    else
    {
      sub_100005508(v102, &qword_10097A9C8, &unk_1007FDD40);
    }

    v87 = String._bridgeToObjectiveC()();

    [v28 setWatchSoftwareVersion:v87];

    v88 = [v28 watchHardwareModel];
    if (!v88)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = String._bridgeToObjectiveC()();
    }

    [v28 setRemoteHardwareModel:v88];

    v89 = [v28 watchSoftwareVersion];
    if (v89)
    {
      v92 = v89;
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = String._bridgeToObjectiveC()();
    }

    v93 = &selRef_setRemoteSoftwareVersion_;
  }

  else
  {

    v86 = String._bridgeToObjectiveC()();

    [v28 setRemoteHardwareModel:v86];

    v90 = String._bridgeToObjectiveC()();

    [v28 setRemoteSoftwareVersion:v90];

    v91 = String._bridgeToObjectiveC()();
    [v28 setWatchHardwareModel:v91];

    v92 = String._bridgeToObjectiveC()();
    v93 = &selRef_setWatchSoftwareVersion_;
  }

  [v28 *v93];

  v94 = String._bridgeToObjectiveC()();
  [v28 setApproveClientBundleID:v94];

  [v28 submitEvent];
}

uint64_t sub_1004D8B4C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (qword_100973950 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_1009809B0);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    type metadata accessor for UUID();
    sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = sub_10000C4E4(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Response timer fired for %s", v11, 0xCu);
    sub_10000C60C(v12);
  }

  return sub_1004D2760(12);
}

uint64_t sub_1004D8DE8(_BYTE *a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = _s12StateMetricsVMa(0);
  v7 = v6[5];
  v8 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  sub_1000168F4(&a1[v7], v3 + v8[16]);
  *(v3 + v8[19]) = *a1;
  v9 = *&a1[v6[7]];
  if (*(v9 + 16) && (v10 = sub_10057091C(a2), (v11 & 1) != 0))
  {
    v12 = (*(v9 + 56) + 16 * v10);
    v14 = *v12;
    v13 = v12[1];
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = (v3 + v8[20]);

  *v15 = v14;
  v15[1] = v13;
  v16 = *&a1[v6[8]];
  if (*(v16 + 16) && (v17 = sub_10057091C(a2), (v18 & 1) != 0))
  {
    v19 = (*(v16 + 56) + 16 * v17);
    v21 = *v19;
    v20 = v19[1];
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  v22 = (v3 + v8[21]);

  *v22 = v21;
  v22[1] = v20;
  return result;
}

void sub_1004D8F00()
{
  v1 = v0;
  v2 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  v3 = __chkstk_darwin(v2);
  v157 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v163 = &v156 - v6;
  v7 = __chkstk_darwin(v5);
  v162 = &v156 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v156 - v10;
  v12 = __chkstk_darwin(v9);
  v161 = &v156 - v13;
  v14 = __chkstk_darwin(v12);
  v160 = &v156 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v156 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v156 - v20;
  __chkstk_darwin(v19);
  v23 = &v156 - v22;
  v24 = type metadata accessor for DispatchPredicate();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue);
  *v27 = v28;
  (*(v25 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v24);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  (*(v25 + 8))(v27, v24);
  if (v28)
  {
    sub_10028088C(&qword_1009750C0, &qword_1007F90F0);
    v27 = swift_allocObject();
    v164 = xmmword_1007F5670;
    *(v27 + 1) = xmmword_1007F5670;
    *(v27 + 4) = UUID.uuidString.getter();
    *(v27 + 5) = v30;
    if (qword_100973950 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v31 = type metadata accessor for Logger();
  v159 = sub_10000C4AC(v31, qword_1009809B0);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Logging metrics", v34, 2u);
  }

  v35 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_metrics;
  swift_beginAccess();
  v36 = *(v35 + *(v2 + 76));
  if (v36 != 2)
  {
    v165 = 0;
    v166 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v165 = 0xD000000000000016;
    v166 = 0x80000001007931C0;
    if (v36)
    {
      v37 = 1702195828;
    }

    else
    {
      v37 = 0x65736C6166;
    }

    if (v36)
    {
      v38 = 0xE400000000000000;
    }

    else
    {
      v38 = 0xE500000000000000;
    }

    v39 = v38;
    String.append(_:)(*&v37);

    v40 = v165;
    v41 = v166;
    v43 = *(v27 + 2);
    v42 = *(v27 + 3);
    if (v43 >= v42 >> 1)
    {
      v27 = sub_10028E1C8((v42 > 1), v43 + 1, 1, v27);
    }

    *(v27 + 2) = v43 + 1;
    v44 = &v27[16 * v43];
    *(v44 + 4) = v40;
    *(v44 + 5) = v41;
  }

  v158 = v11;
  sub_1004E57A0(v35, v23, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v45 = sub_1004DBF10();
  v47 = v46;
  sub_1004E5900(v23, type metadata accessor for SDAuthenticationLockSession.Metrics);
  if ((v47 & 1) == 0)
  {
    v165 = 0;
    v166 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v165 = 0xD00000000000001ELL;
    v166 = 0x80000001007931A0;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v48 = swift_allocObject();
    *(v48 + 16) = v164;
    *(v48 + 56) = &type metadata for Double;
    *(v48 + 64) = &protocol witness table for Double;
    *(v48 + 32) = v45;
    v49._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v49);

    v50._countAndFlagsBits = 115;
    v50._object = 0xE100000000000000;
    String.append(_:)(v50);
    v51 = v165;
    v52 = v166;
    v54 = *(v27 + 2);
    v53 = *(v27 + 3);
    if (v54 >= v53 >> 1)
    {
      v27 = sub_10028E1C8((v53 > 1), v54 + 1, 1, v27);
    }

    *(v27 + 2) = v54 + 1;
    v55 = &v27[16 * v54];
    *(v55 + 4) = v51;
    *(v55 + 5) = v52;
  }

  sub_1004E57A0(v35, v21, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v56 = sub_1004DC1C0();
  v58 = v57;
  sub_1004E5900(v21, type metadata accessor for SDAuthenticationLockSession.Metrics);
  if ((v58 & 1) == 0)
  {
    v165 = 0;
    v166 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v165 = 0xD000000000000029;
    v166 = 0x8000000100793170;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v59 = swift_allocObject();
    *(v59 + 16) = v164;
    *(v59 + 56) = &type metadata for Double;
    *(v59 + 64) = &protocol witness table for Double;
    *(v59 + 32) = v56;
    v60._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v60);

    v61._countAndFlagsBits = 115;
    v61._object = 0xE100000000000000;
    String.append(_:)(v61);
    v62 = v165;
    v63 = v166;
    v65 = *(v27 + 2);
    v64 = *(v27 + 3);
    if (v65 >= v64 >> 1)
    {
      v27 = sub_10028E1C8((v64 > 1), v65 + 1, 1, v27);
    }

    *(v27 + 2) = v65 + 1;
    v66 = &v27[16 * v65];
    *(v66 + 4) = v62;
    *(v66 + 5) = v63;
  }

  sub_1004E57A0(v35, v18, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v67 = sub_1004DB10C();
  v69 = v68;
  sub_1004E5900(v18, type metadata accessor for SDAuthenticationLockSession.Metrics);
  if (v69)
  {
    v70 = v158;
  }

  else
  {
    v165 = 0;
    v166 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v165 = 0xD000000000000018;
    v166 = 0x8000000100793150;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v71 = swift_allocObject();
    *(v71 + 16) = v164;
    *(v71 + 56) = &type metadata for Double;
    *(v71 + 64) = &protocol witness table for Double;
    *(v71 + 32) = v67;
    v72._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v72);

    v73._countAndFlagsBits = 115;
    v73._object = 0xE100000000000000;
    String.append(_:)(v73);
    v74 = v165;
    v75 = v166;
    v77 = *(v27 + 2);
    v76 = *(v27 + 3);
    v70 = v158;
    if (v77 >= v76 >> 1)
    {
      v27 = sub_10028E1C8((v76 > 1), v77 + 1, 1, v27);
    }

    *(v27 + 2) = v77 + 1;
    v78 = &v27[16 * v77];
    *(v78 + 4) = v74;
    *(v78 + 5) = v75;
  }

  v79 = v160;
  sub_1004E57A0(v35, v160, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v80 = sub_1004DB3CC();
  v82 = v81;
  sub_1004E5900(v79, type metadata accessor for SDAuthenticationLockSession.Metrics);
  if ((v82 & 1) == 0)
  {
    v165 = 0;
    v166 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v165 = 0xD00000000000001BLL;
    v166 = 0x8000000100793130;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v83 = swift_allocObject();
    *(v83 + 16) = v164;
    *(v83 + 56) = &type metadata for Double;
    *(v83 + 64) = &protocol witness table for Double;
    *(v83 + 32) = v80;
    v84._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v84);

    v85._countAndFlagsBits = 115;
    v85._object = 0xE100000000000000;
    String.append(_:)(v85);
    v86 = v165;
    v87 = v166;
    v89 = *(v27 + 2);
    v88 = *(v27 + 3);
    if (v89 >= v88 >> 1)
    {
      v27 = sub_10028E1C8((v88 > 1), v89 + 1, 1, v27);
    }

    *(v27 + 2) = v89 + 1;
    v90 = &v27[16 * v89];
    *(v90 + 4) = v86;
    *(v90 + 5) = v87;
  }

  v91 = v161;
  sub_1004E57A0(v35, v161, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v92 = sub_1004DB68C();
  v94 = v93;
  sub_1004E5900(v91, type metadata accessor for SDAuthenticationLockSession.Metrics);
  if ((v94 & 1) == 0)
  {
    v165 = 0;
    v166 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v165 = 0xD00000000000001CLL;
    v166 = 0x8000000100793110;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v95 = swift_allocObject();
    *(v95 + 16) = v164;
    *(v95 + 56) = &type metadata for Double;
    *(v95 + 64) = &protocol witness table for Double;
    *(v95 + 32) = v92;
    v96._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v96);

    v97._countAndFlagsBits = 115;
    v97._object = 0xE100000000000000;
    String.append(_:)(v97);
    v98 = v165;
    v99 = v166;
    v101 = *(v27 + 2);
    v100 = *(v27 + 3);
    if (v101 >= v100 >> 1)
    {
      v27 = sub_10028E1C8((v100 > 1), v101 + 1, 1, v27);
    }

    *(v27 + 2) = v101 + 1;
    v102 = &v27[16 * v101];
    *(v102 + 4) = v98;
    *(v102 + 5) = v99;
  }

  sub_1004E57A0(v35, v70, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v103 = sub_1004DB94C();
  v105 = v104;
  sub_1004E5900(v70, type metadata accessor for SDAuthenticationLockSession.Metrics);
  if ((v105 & 1) == 0)
  {
    v165 = 0;
    v166 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v165 = 0xD000000000000019;
    v166 = 0x80000001007930F0;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v106 = swift_allocObject();
    *(v106 + 16) = v164;
    *(v106 + 56) = &type metadata for Double;
    *(v106 + 64) = &protocol witness table for Double;
    *(v106 + 32) = v103;
    v107._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v107);

    v108._countAndFlagsBits = 115;
    v108._object = 0xE100000000000000;
    String.append(_:)(v108);
    v109 = v165;
    v110 = v166;
    v112 = *(v27 + 2);
    v111 = *(v27 + 3);
    if (v112 >= v111 >> 1)
    {
      v27 = sub_10028E1C8((v111 > 1), v112 + 1, 1, v27);
    }

    *(v27 + 2) = v112 + 1;
    v113 = &v27[16 * v112];
    *(v113 + 4) = v109;
    *(v113 + 5) = v110;
  }

  v114 = v162;
  sub_1004E57A0(v35, v162, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v115 = sub_1004DBC50();
  v117 = v116;
  sub_1004E5900(v114, type metadata accessor for SDAuthenticationLockSession.Metrics);
  if ((v117 & 1) == 0)
  {
    v165 = 0;
    v166 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v165 = 0xD000000000000016;
    v166 = 0x80000001007930D0;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v118 = swift_allocObject();
    *(v118 + 16) = v164;
    *(v118 + 56) = &type metadata for Double;
    *(v118 + 64) = &protocol witness table for Double;
    *(v118 + 32) = v115;
    v119._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v119);

    v120._countAndFlagsBits = 115;
    v120._object = 0xE100000000000000;
    String.append(_:)(v120);
    v121 = v165;
    v122 = v166;
    v124 = *(v27 + 2);
    v123 = *(v27 + 3);
    if (v124 >= v123 >> 1)
    {
      v27 = sub_10028E1C8((v123 > 1), v124 + 1, 1, v27);
    }

    *(v27 + 2) = v124 + 1;
    v125 = &v27[16 * v124];
    *(v125 + 4) = v121;
    *(v125 + 5) = v122;
  }

  v126 = v163;
  sub_1004E57A0(v35, v163, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v127 = sub_1004DAE5C();
  v129 = v128;
  sub_1004E5900(v126, type metadata accessor for SDAuthenticationLockSession.Metrics);
  if ((v129 & 1) == 0)
  {
    v130 = v157;
    sub_1004E57A0(v35, v157, type metadata accessor for SDAuthenticationLockSession.Metrics);
    sub_1004DB10C();
    v132 = v131;
    sub_1004E5900(v130, type metadata accessor for SDAuthenticationLockSession.Metrics);
    if (v132)
    {
      v133 = 0;
    }

    else
    {
      v133 = 0xD000000000000013;
    }

    if (v132)
    {
      v134 = 0xE000000000000000;
    }

    else
    {
      v134 = 0x80000001007930B0;
    }

    v165 = 0;
    v166 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v165 = 0xD000000000000017;
    v166 = 0x8000000100793090;
    v135._countAndFlagsBits = v133;
    v135._object = v134;
    String.append(_:)(v135);

    v136._countAndFlagsBits = 2112800;
    v136._object = 0xE300000000000000;
    String.append(_:)(v136);
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v137 = swift_allocObject();
    *(v137 + 16) = v164;
    *(v137 + 56) = &type metadata for Double;
    *(v137 + 64) = &protocol witness table for Double;
    *(v137 + 32) = v127;
    v138._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v138);

    v139._countAndFlagsBits = 115;
    v139._object = 0xE100000000000000;
    String.append(_:)(v139);
    v140 = v165;
    v141 = v166;
    v143 = *(v27 + 2);
    v142 = *(v27 + 3);
    if (v143 >= v142 >> 1)
    {
      v27 = sub_10028E1C8((v142 > 1), v143 + 1, 1, v27);
    }

    *(v27 + 2) = v143 + 1;
    v144 = &v27[16 * v143];
    *(v144 + 4) = v140;
    *(v144 + 5) = v141;
  }

  v165 = v27;
  sub_10028088C(&unk_100976C20, &unk_1007F9D80);
  sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80, &protocol conformance descriptor for [A]);
  v145 = BidirectionalCollection<>.joined(separator:)();
  v147 = v146;

  v148 = [objc_opt_self() standardUserDefaults];
  v149 = String._bridgeToObjectiveC()();
  v150 = String._bridgeToObjectiveC()();
  [v148 setObject:v149 forKey:v150];

  v151 = Logger.logObject.getter();
  v152 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v165 = v154;
    *v153 = 136315138;
    v155 = sub_10000C4E4(v145, v147, &v165);

    *(v153 + 4) = v155;
    _os_log_impl(&_mh_execute_header, v151, v152, "%s", v153, 0xCu);
    sub_10000C60C(v154);
  }

  else
  {
  }
}

uint64_t sub_1004D9EE0()
{
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type) == 4)
  {
    result = sub_10005CF6C();
    if (!result)
    {
      return result;
    }

    if (qword_100973950 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_1009809B0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "BIO ARM SUCCEEDED", v5, 2u);
    }
  }

  return 1;
}

void sub_1004D9FDC(void *a1)
{
  if (qword_100973950 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009809B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Sending confirmation", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(a1 + v6, v9, &qword_10097A9C8, &unk_1007FDD40);
  if (v10)
  {
    sub_1002A9938(v9, v8);
    sub_100005508(v9, &qword_10097A9C8, &unk_1007FDD40);
    v7 = sub_10002CDC0(v8, v8[3]);
    sub_1004E0C14(a1, *v7);
    sub_10000C60C(v8);
  }

  else
  {
    sub_100005508(v9, &qword_10097A9C8, &unk_1007FDD40);
  }

  v9[0] = 1;
  sub_1004D568C(0x100000000uLL);
}

void sub_1004DA17C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(SDAuthenticationResponse) init];
  v7 = v6;
  p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
  if (v6)
  {
    [v6 setVersion:1];
    v9 = v7;
    UUID.uuidString.getter();
    v10 = String._bridgeToObjectiveC()();

    [v9 setSessionID:v10];

    [v9 setErrorCode:a1];
    v11 = [v9 data];
    if (v11)
    {
      v12 = v11;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
      swift_beginAccess();
      sub_10000FF90(&v3[v16], &v51, &qword_100982080, &unk_1007FDD30);
      if (v52)
      {
        sub_1000121F8(&v51, v53);
        v17 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(&v3[v17], &v51, &qword_10097A9C8, &unk_1007FDD40);
        if (v52)
        {
          sub_1002A9938(&v51, v50);
          sub_100005508(&v51, &qword_10097A9C8, &unk_1007FDD40);
          sub_10002CDC0(v50, v50[3]);
          v18 = sub_1004FE08C(*&v3[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type]);
          if (qword_100973C48 != -1)
          {
            swift_once();
          }

          v19 = type metadata accessor for Logger();
          sub_10000C4AC(v19, qword_1009895D8);
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v49 = v23;
            *v22 = 136315138;
            v24 = v18;
            v48 = v18;
            v46 = v23;
            buf = v22;
            if (v18 <= 2u)
            {
              v25 = 0xEB0000000074656ELL;
              if (v24)
              {
                if (v24 == 1)
                {
                  v25 = 0xE800000000000000;
                  v26 = 0x6C61636F4C736469;
                }

                else
                {
                  v26 = 0x7265746E49736469;
                }
              }

              else
              {
                v25 = 0xEB00000000746E65;
                v26 = 0x674179627261656ELL;
              }
            }

            else if (v18 > 4u)
            {
              if (v18 == 5)
              {
                v25 = 0x80000001007888E0;
                v26 = 0xD000000000000010;
              }

              else
              {
                v25 = 0xED000068746F6F74;
                v26 = 0x65756C4265726F63;
              }
            }

            else if (v18 == 3)
            {
              v25 = 0xE900000000000054;
              v26 = 0x4274726F70706172;
            }

            else
            {
              v25 = 0xEB000000004C4457;
              v26 = 0x4174726F70706172;
            }

            v45 = sub_10000C4E4(v26, v25, &v49);

            *(buf + 4) = v45;
            _os_log_impl(&_mh_execute_header, v20, v21, "Using transport type %s", buf, 0xCu);
            sub_10000C60C(v46);

            v18 = v48;
          }

          else
          {
          }

          sub_1005CCC7C(v13, v15, v53, 1u, v18);
          sub_100026AC0(v13, v15);
          sub_10000C60C(v53);
          sub_10000C60C(v50);
          p_opt_class_meths = (&OBJC_PROTOCOL___BLSBacklightStateObserving + 48);
        }

        else
        {
          sub_10000C60C(v53);
          sub_100026AC0(v13, v15);
          sub_100005508(&v51, &qword_10097A9C8, &unk_1007FDD40);
        }

        goto LABEL_18;
      }

      sub_100026AC0(v13, v15);
      sub_100005508(&v51, &qword_100982080, &unk_1007FDD30);
    }
  }

  if (qword_100973950 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000C4AC(v27, qword_1009809B0);
  v28 = v7;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v7;
    v33 = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "Could not convert response to data: %@", v31, 0xCu);
    sub_100005508(v32, &qword_100975400, &qword_1007F65D0);
  }

LABEL_18:
  v34 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(&v3[v34], v53, &qword_10097A9C8, &unk_1007FDD40);
  if (v53[3])
  {
    sub_1002A9938(v53, &v51);
    sub_100005508(v53, &qword_10097A9C8, &unk_1007FDD40);
    v35 = sub_10002CDC0(&v51, v52);
    v36 = sub_1000116BC(a1, a2);
    sub_100461318(v3, a1, v36, v37, *v35);

    sub_10000C60C(&v51);
  }

  else
  {
    sub_100005508(v53, &qword_10097A9C8, &unk_1007FDD40);
  }

  if (p_opt_class_meths[298] != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_10000C4AC(v38, qword_1009809B0);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    sub_1000115C8();
    swift_allocError();
    *v43 = a1;
    *(v43 + 8) = a2;

    v44 = _swift_stdlib_bridgeErrorToNSError();
    *(v41 + 4) = v44;
    *v42 = v44;
    _os_log_impl(&_mh_execute_header, v39, v40, "Session failed with error: %@", v41, 0xCu);
    sub_100005508(v42, &qword_100975400, &qword_1007F65D0);
  }
}

uint64_t sub_1004DA950()
{
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_lastUnlockDate, &qword_10097A7F0, &unk_1007FB600);
  sub_10028BCC0(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingToken), *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingToken + 8));

  sub_10028BCC0(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_authToken), *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_authToken + 8));
  return sub_1004E5900(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_metrics, type metadata accessor for SDAuthenticationLockSession.Metrics);
}

void sub_1004DAAA4(uint64_t a1)
{
  sub_1004DAD28(319, &qword_10097DB80, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationLockSession.Metrics(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1004DABF0(uint64_t a1)
{
  sub_1004DAD28(319, &qword_10097DB80, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_1004DAD28(319, &unk_100980A98, type metadata accessor for SFAuthenticationErrorCode);
    if (v2 <= 0x3F)
    {
      sub_1002F2B90(319, &qword_100975790, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        sub_1002F2B90(319, qword_1009771F0, &type metadata for String);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004DAD28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1004DAD7C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_lastUnlockDate;
  swift_beginAccess();
  sub_10000C788(a1, v3 + v4, &qword_10097A7F0, &unk_1007FB600);
  return swift_endAccess();
}

uint64_t sub_1004DAE5C()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  sub_10000FF90(v0, v6, &qword_10097A7F0, &unk_1007FB600);
  v14 = *(v8 + 48);
  if (v14(v6, 1, v7) == 1)
  {
    v15 = v6;
LABEL_5:
    sub_100005508(v15, &qword_10097A7F0, &unk_1007FB600);
    return 0;
  }

  v16 = v6;
  v17 = *(v8 + 32);
  v17(v13, v16, v7);
  v18 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  sub_10000FF90(v0 + *(v18 + 20), v4, &qword_10097A7F0, &unk_1007FB600);
  if (v14(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v15 = v4;
    goto LABEL_5;
  }

  v17(v11, v4, v7);
  Date.timeIntervalSince(_:)();
  v21 = v20;
  v22 = *(v8 + 8);
  v22(v11, v7);
  v22(v13, v7);
  return v21;
}

uint64_t sub_1004DB10C()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  sub_10000FF90(v0 + *(v14 + 24), v6, &qword_10097A7F0, &unk_1007FB600);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
LABEL_5:
    sub_100005508(v16, &qword_10097A7F0, &unk_1007FB600);
    return 0;
  }

  v25 = v11;
  v17 = v6;
  v18 = *(v8 + 32);
  v18(v13, v17, v7);
  sub_10000FF90(v0 + *(v14 + 28), v4, &qword_10097A7F0, &unk_1007FB600);
  if (v15(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v16 = v4;
    goto LABEL_5;
  }

  v20 = v25;
  v18(v25, v4, v7);
  Date.timeIntervalSince(_:)();
  v22 = v21;
  v23 = *(v8 + 8);
  v23(v20, v7);
  v23(v13, v7);
  return v22;
}

uint64_t sub_1004DB3CC()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  sub_10000FF90(v0 + *(v14 + 32), v6, &qword_10097A7F0, &unk_1007FB600);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
LABEL_5:
    sub_100005508(v16, &qword_10097A7F0, &unk_1007FB600);
    return 0;
  }

  v25 = v11;
  v17 = v6;
  v18 = *(v8 + 32);
  v18(v13, v17, v7);
  sub_10000FF90(v0 + *(v14 + 36), v4, &qword_10097A7F0, &unk_1007FB600);
  if (v15(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v16 = v4;
    goto LABEL_5;
  }

  v20 = v25;
  v18(v25, v4, v7);
  Date.timeIntervalSince(_:)();
  v22 = v21;
  v23 = *(v8 + 8);
  v23(v20, v7);
  v23(v13, v7);
  return v22;
}

uint64_t sub_1004DB68C()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  sub_10000FF90(v0 + *(v14 + 40), v6, &qword_10097A7F0, &unk_1007FB600);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
LABEL_5:
    sub_100005508(v16, &qword_10097A7F0, &unk_1007FB600);
    return 0;
  }

  v25 = v11;
  v17 = v6;
  v18 = *(v8 + 32);
  v18(v13, v17, v7);
  sub_10000FF90(v0 + *(v14 + 44), v4, &qword_10097A7F0, &unk_1007FB600);
  if (v15(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v16 = v4;
    goto LABEL_5;
  }

  v20 = v25;
  v18(v25, v4, v7);
  Date.timeIntervalSince(_:)();
  v22 = v21;
  v23 = *(v8 + 8);
  v23(v20, v7);
  v23(v13, v7);
  return v22;
}

uint64_t sub_1004DB94C()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v28 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  if (*(v0 + *(v14 + 52)))
  {
    *&result = 0.0;
    return result;
  }

  v16 = v14;
  sub_10000FF90(v0 + *(v14 + 48), v6, &qword_10097A7F0, &unk_1007FB600);
  v17 = *(v8 + 48);
  if (v17(v6, 1, v7) == 1)
  {
    v18 = v6;
LABEL_7:
    sub_100005508(v18, &qword_10097A7F0, &unk_1007FB600);
    *&result = 0.0;
    return result;
  }

  v29 = v8;
  v19 = v6;
  v20 = *(v8 + 32);
  v20(v13, v19, v7);
  sub_10000FF90(v0 + *(v16 + 40), v4, &qword_10097A7F0, &unk_1007FB600);
  if (v17(v4, 1, v7) == 1)
  {
    (*(v29 + 8))(v13, v7);
    v18 = v4;
    goto LABEL_7;
  }

  v20(v11, v4, v7);
  Date.timeIntervalSince(_:)();
  v22 = v21;
  *&v23 = COERCE_DOUBLE(sub_1004DB68C());
  v25 = v24;
  v26 = *(v29 + 8);
  v26(v11, v7);
  v26(v13, v7);
  v27 = *&v23;
  if (v25)
  {
    v27 = 0.0;
  }

  *&result = v22 - v27;
  return result;
}

uint64_t sub_1004DBC50()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  sub_10000FF90(v0 + *(v14 + 56), v6, &qword_10097A7F0, &unk_1007FB600);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
LABEL_5:
    sub_100005508(v16, &qword_10097A7F0, &unk_1007FB600);
    return 0;
  }

  v25 = v11;
  v17 = v6;
  v18 = *(v8 + 32);
  v18(v13, v17, v7);
  sub_10000FF90(v0 + *(v14 + 60), v4, &qword_10097A7F0, &unk_1007FB600);
  if (v15(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v16 = v4;
    goto LABEL_5;
  }

  v20 = v25;
  v18(v25, v4, v7);
  Date.timeIntervalSince(_:)();
  v22 = v21;
  v23 = *(v8 + 8);
  v23(v20, v7);
  v23(v13, v7);
  return v22;
}

uint64_t sub_1004DBF10()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  sub_10000FF90(v0 + *(v14 + 64), v6, &qword_10097A7F0, &unk_1007FB600);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
LABEL_5:
    sub_100005508(v16, &qword_10097A7F0, &unk_1007FB600);
    return 0;
  }

  v17 = v6;
  v18 = *(v8 + 32);
  v18(v13, v17, v7);
  sub_10000FF90(v0, v4, &qword_10097A7F0, &unk_1007FB600);
  if (v15(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v16 = v4;
    goto LABEL_5;
  }

  v18(v11, v4, v7);
  Date.timeIntervalSince(_:)();
  v21 = v20;
  v22 = *(v8 + 8);
  v22(v11, v7);
  v22(v13, v7);
  return v21;
}