uint64_t SharePlayTogetherSession.$pendingParticipantsCount.setter(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_1006083A0, &qword_1004D6D40);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003ABC(&qword_100608398, &qword_1004D6D38);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$pendingParticipantsCount.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100003ABC(&qword_1006083A0, &qword_1004D6D40);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__pendingParticipantsCount;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003ABC(&qword_100608398, &qword_1004D6D38);
  sub_1004B8574();
  swift_endAccess();
  return sub_1001D5144;
}

uint64_t property wrapper backing initializer of SharePlayTogetherSession.host(uint64_t a1)
{
  sub_100003ABC(&qword_1006083B0, &qword_1004D6D90);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_10000F778(a1, &v7 - v4, &qword_1006083B0, &qword_1004D6D90);
  sub_10000F778(v5, v3, &qword_1006083B0, &qword_1004D6D90);
  sub_1004B8564();
  sub_100007214(a1, &qword_1006083B0, &qword_1004D6D90);
  return sub_100007214(v5, &qword_1006083B0, &qword_1004D6D90);
}

double SharePlayTogetherSession.host.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return result;
}

double sub_100246388(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return result;
}

uint64_t sub_100246404(uint64_t a1, void **a2)
{
  sub_100003ABC(&qword_1006083B0, &qword_1004D6D90);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  sub_10000F778(a1, &v11 - v6, &qword_1006083B0, &qword_1004D6D90);
  v8 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000F778(v7, v5, &qword_1006083B0, &qword_1004D6D90);
  v9 = v8;
  sub_1004B85B4();
  return sub_100007214(v7, &qword_1006083B0, &qword_1004D6D90);
}

uint64_t SharePlayTogetherSession.host.setter(uint64_t a1)
{
  sub_100003ABC(&qword_1006083B0, &qword_1004D6D90);
  __chkstk_darwin();
  v4 = &v7 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000F778(a1, v4, &qword_1006083B0, &qword_1004D6D90);
  v5 = v1;
  sub_1004B85B4();
  return sub_100007214(a1, &qword_1006083B0, &qword_1004D6D90);
}

void (*SharePlayTogetherSession.host.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1004B8594();
  return sub_1001D5140;
}

uint64_t SharePlayTogetherSession.$host.setter(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_1006083C8, &qword_1004D6DE8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003ABC(&qword_1006083C0, &qword_1004D6DE0);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$host.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100003ABC(&qword_1006083C8, &qword_1004D6DE8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__host;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003ABC(&qword_1006083C0, &qword_1004D6DE0);
  sub_1004B8574();
  swift_endAccess();
  return sub_1001D5144;
}

void SharePlayTogetherSession.qrCode.getter(uint64_t *a1@<X8>)
{
  v3 = *(sub_1004BBEB4() - 8);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode);
  v10 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode);
  v9 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 8);
  v11 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 16);
  v12 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 24);
  v13 = v10;
  v14 = v9;
  v15 = v11;
  v16 = v12;
  v17 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 32);
  if (v12)
  {
LABEL_8:
    sub_10024C6A8(v10, v9, v11, v12);
    *a1 = v13;
    a1[1] = v14;
    a1[2] = v15;
    a1[3] = v16;
    a1[4] = v17;
    return;
  }

  v18 = v4;
  v34 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 32);
  v35 = 0;
  v32 = v9;
  v33 = v11;
  v31 = v10;
  v19 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (v19)
  {
    v20 = [v19 joinToken];
    if (v20 && (v21 = v20, v22 = [v20 joinURLString], v21, sub_1004BBE64(), v22, sub_1004BBEA4(), v23 = sub_1004BBE74(), v25 = v24, , (*(v3 + 8))(v7, v18), v25 >> 60 != 15))
    {
      sub_1002A4000(v23, v25, 76, v36);
      v26 = *v8;
      v27 = v8[1];
      v28 = v8[2];
      v29 = v8[3];
      v30 = v36[1];
      *v8 = v36[0];
      *(v8 + 1) = v30;
      v8[4] = v37;
      sub_10024E508(v26, v27, v28, v29);
      v13 = *v8;
      v14 = v8[1];
      v15 = v8[2];
      v16 = v8[3];
      v17 = v8[4];
      sub_10024C6A8(*v8, v14, v15, v16);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    v10 = v31;
    v9 = v32;
    v11 = v33;
    v12 = v35;
    goto LABEL_8;
  }

  __break(1u);
}

void SharePlayTogetherSession.joinURL.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (v3)
  {
    v4 = [v3 joinToken];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 joinURLString];

      sub_1004BBE64();
      sub_1004B6AC4();
    }

    else
    {
      v7 = sub_1004B6B04();
      v8 = *(*(v7 - 8) + 56);

      v8(a1, 1, 1, v7);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t SharePlayTogetherSession.isActive.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    if ([result isPlaceholder])
    {
      return 0;
    }

    else if (*(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004B85A4();

      return v2 > 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.isPersistent.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SharePlayTogetherSession.isPersistent.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_100246E80(void *a1, void *a2)
{
  v79 = a1;
  v80 = a2;
  v3 = sub_100003ABC(&qword_1006083C0, &qword_1004D6DE0);
  v77 = *(v3 - 8);
  v78 = v3;
  __chkstk_darwin();
  v76 = v75 - v4;
  v75[1] = sub_100003ABC(&qword_1006083B0, &qword_1004D6D90);
  __chkstk_darwin();
  v6 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v75 - v7;
  v9 = sub_100003ABC(&qword_100608398, &qword_1004D6D38);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v75 - v11;
  v13 = sub_100003ABC(&qword_100608380, &qword_1004D6CE0);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v75 - v15;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session] = 0;
  v17 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__participants;
  v84[0] = _swiftEmptyArrayStorage;
  sub_100003ABC(&qword_100608370, &qword_1004D6C90);
  sub_1004B8564();
  (*(v14 + 32))(&v2[v17], v16, v13);
  v18 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__connectedParticipantsCount;
  v84[0] = 0;
  sub_1004B8564();
  v19 = *(v10 + 32);
  v19(&v2[v18], v12, v9);
  v20 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__pendingParticipantsCount;
  v84[0] = 0;
  sub_1004B8564();
  v19(&v2[v20], v12, v9);
  v21 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__host;
  v22 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  sub_10000F778(v8, v6, &qword_1006083B0, &qword_1004D6D90);
  v23 = v76;
  sub_1004B8564();
  v24 = v8;
  v25 = v79;
  sub_100007214(v24, &qword_1006083B0, &qword_1004D6D90);
  (*(v77 + 32))(&v2[v21], v23, v78);
  v26 = &v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 4) = 0;
  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isConnected] = 0;
  v27 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
  *&v2[v27] = sub_10003DDDC(_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually] = 0;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpointNotificationObserver] = 0;
  v28 = [v25 identifier];
  v29 = sub_1004BBE64();
  v31 = v30;

  v32 = &v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier];
  *v32 = v29;
  v32[1] = v31;
  v33 = [v25 isHosted];
  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost] = v33;
  v34 = v80;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint] = v80;
  v35 = v34;
  v36 = [v25 hostInfo];
  LOBYTE(v31) = [v36 routeType];

  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_routeType] = v31;
  v37 = [v35 groupLeader];
  v38 = [v37 transportType];

  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent] = v38 != 6;
  v39 = [v25 hostInfo];
  LODWORD(v38) = [v39 routeType];

  if (v38 == 1 || (v40 = [v25 hostInfo], v41 = objc_msgSend(v40, "routeType"), v40, v41 == 2))
  {
    swift_beginAccess();
    v82 = 0x6C6C69662E726163;
    v83 = 0xE800000000000000;
    sub_1004B8564();
    swift_endAccess();
    v42 = 1;
  }

  else
  {
    v43 = [v35 outputDevices];
    if (v43)
    {
      v44 = v43;
      sub_100009130(0, &qword_1006085F8, MRAVOutputDevice_ptr);
      sub_1004BC2A4();
    }

    v45 = objc_opt_self();
    sub_100009130(0, &qword_1006085F8, MRAVOutputDevice_ptr);
    isa = sub_1004BC284().super.isa;

    v47 = [v45 symbolNameForOutputDevices:isa];

    v48 = sub_1004BBE64();
    v50 = v49;

    swift_beginAccess();
    v82 = v48;
    v83 = v50;
    sub_1004B8564();
    swift_endAccess();
    v42 = 0;
  }

  v51 = type metadata accessor for SharePlayTogetherSession(0);
  v81.receiver = v2;
  v81.super_class = v51;
  v52 = objc_msgSendSuper2(&v81, "init");
  v53 = [v25 identifier];
  if (!v53)
  {
    sub_1004BBE64();
    v53 = sub_1004BBE24();
  }

  v54 = objc_opt_self();
  v55 = v52;
  v56 = [v54 remoteControlGroupSessionWithIdentifier:v53 delegate:v55];

  v57 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  *&v55[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session] = v56;
  swift_unknownObjectRelease();
  v58 = MRAVEndpointOutputDevicesDidChangeNotification;
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = swift_allocObject();
  *(v60 + 16) = v42;
  *(v60 + 24) = v59;
  type metadata accessor for NotificationObserver(0, v61);
  swift_allocObject();
  v62 = v35;
  *&v55[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpointNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v58, v35, 1, 1, sub_10024F5F4, v60);

  if (qword_1006000D8 != -1)
  {
    swift_once();
  }

  v63 = sub_1004B80B4();
  sub_100007084(v63, static Logger.sharePlayTogether);
  v64 = sub_1004B8094();
  v65 = sub_1004BC9A4();
  if (!os_log_type_enabled(v64, v65))
  {

    goto LABEL_15;
  }

  v66 = swift_slowAlloc();
  v67 = swift_slowAlloc();
  v84[0] = v67;
  *v66 = 136446210;
  v68 = *&v55[v57];
  if (v68)
  {
    v69 = v67;
    swift_unknownObjectRetain();

    v70 = [v68 description];
    swift_unknownObjectRelease();
    v71 = sub_1004BBE64();
    v73 = v72;

    v74 = sub_100012018(v71, v73, v84);

    *(v66 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v64, v65, "Initialized SharePlayTogetherSession object with MR session %{public}s", v66, 0xCu);
    sub_100004C6C(v69);

LABEL_15:
    return;
  }

  __break(1u);
}

void sub_10024784C(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = *(Strong + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint);

        v6 = [v5 outputDevices];
        if (v6)
        {
          sub_100009130(0, &qword_1006085F8, MRAVOutputDevice_ptr);
          sub_1004BC2A4();
        }
      }

      v7 = objc_opt_self();
      sub_100009130(0, &qword_1006085F8, MRAVOutputDevice_ptr);
      isa = sub_1004BC284().super.isa;

      v9 = [v7 symbolNameForOutputDevices:isa];

      sub_1004BBE64();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004B85B4();
    }
  }
}

void sub_100247A1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100247AE4(uint64_t *result, SEL *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  v7 = *(v5 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  swift_unknownObjectRetain();
  v12 = sub_1004BBE24();
  v13 = [v7 *a2];

  swift_unknownObjectRelease();
  if (!v13)
  {
    return;
  }

  if (!*(v5 + v6))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v15[4] = a3;
  v15[5] = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100247A1C;
  v15[3] = a4;
  v14 = _Block_copy(v15);
  [swift_unknownObjectRetain() *a5];
  _Block_release(v14);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall SharePlayTogetherSession.endSession()()
{
  *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually) = 1;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session))
  {
    v2[4] = CFRange.init(_:);
    v2[5] = 0;
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_100247A1C;
    v2[3] = &unk_1005BBD48;
    v1 = _Block_copy(v2);
    [swift_unknownObjectRetain() removeAllParticipantsWithCompletion:v1];
    _Block_release(v1);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SharePlayTogetherSession.leave()()
{
  *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually) = 1;
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (v1)
  {
    v2 = [v1 identifier];
    if (!v2)
    {
      sub_1004BBE64();
      v2 = sub_1004BBE24();
    }

    v4[4] = CFRange.init(_:);
    v4[5] = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_1001460EC;
    v4[3] = &unk_1005BBD70;
    v3 = _Block_copy(v4);
    MRGroupSessionLeaveSessionWithIdentifier();
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SharePlayTogetherSession.cleanup(notifyObservers:)(Swift::Bool notifyObservers)
{
  if (notifyObservers)
  {
    v2 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
    swift_beginAccess();
    v3 = *(v1 + v2);
    v4 = *(v3 + 16);
    if (v4)
    {

      v5 = v3 + 40;
      do
      {
        v6 = *(v5 - 8);
        v9[0] = 1;

        v6(v9);

        v5 += 16;
        --v4;
      }

      while (v4);
    }
  }

  v7 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
  swift_beginAccess();
  *(v1 + v7) = _swiftEmptyArrayStorage;

  v8 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
  swift_beginAccess();
  *(v1 + v8) = _swiftEmptyArrayStorage;
}

uint64_t SharePlayTogetherSession.addSessionConnectionObserver(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isConnected) == 1)
  {
    return a1();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
  swift_beginAccess();
  v8 = *(v2 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1000183B0(0, v8[2] + 1, 1, v8);
    *(v2 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1000183B0((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = sub_1000081FC;
  v12[5] = v6;
  *(v2 + v7) = v8;
  return swift_endAccess();
}

uint64_t SharePlayTogetherSession.addSessionEndedObserver(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1000186A0(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1000186A0((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_10024E5A0;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

id SharePlayTogetherSession.assertSessionManagementScreenVisible()()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v2 = [result assertSessionManagementScreenVisible];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.socialProfile(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 identifierType] == 1 && (v5 = objc_msgSend(a1, "participantIdentifier")) != 0)
  {
    v6 = v5;
    v7 = sub_1004BBE64();
    v9 = v8;

    v10 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
    swift_beginAccess();
    v11 = *(v2 + v10);
    if (*(v11 + 16) && (, v12 = sub_1000346D4(v7, v9), v14 = v13, , (v14 & 1) != 0))
    {
      v15 = *(v11 + 56);
      v16 = sub_1004B7B14();
      v17 = *(v16 - 8);
      (*(v17 + 16))(a2, v15 + *(v17 + 72) * v12, v16);

      return (*(v17 + 56))(a2, 0, 1, v16);
    }

    else
    {

      v21 = sub_1004B7B14();
      return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
    }
  }

  else
  {
    v19 = sub_1004B7B14();
    v20 = *(*(v19 - 8) + 56);

    return v20(a2, 1, 1, v19);
  }
}

void *SharePlayTogetherSession.isEquivalent(to:)(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = [result isPlaceholder];
  result = *(a1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v4 == [result isPlaceholder])
  {
    v14 = 0;
  }

  else
  {
    v5 = [*(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint) uniqueIdentifier];
    v6 = sub_1004BBE64();
    v8 = v7;

    v9 = [*(a1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint) uniqueIdentifier];
    v10 = sub_1004BBE64();
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_1004BD9C4();
    }
  }

  return (v14 & 1);
}

void sub_1002484CC()
{
  v1 = v0;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v114 = &v108 - v2;
  v3 = sub_100003ABC(&qword_100608588, &qword_1004D6F70);
  v113 = *(v3 - 8);
  v4 = *(v113 + 64);
  __chkstk_darwin();
  v5 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v112 = &v108 - v6;
  sub_100003ABC(&qword_1006083B0, &qword_1004D6D90);
  __chkstk_darwin();
  v8 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v116 = &v108 - v9;
  sub_100003ABC(&unk_100608408, &unk_1004D6DF0);
  __chkstk_darwin();
  v124 = &v108 - v10;
  v115 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v128 = *(v115 - 8);
  __chkstk_darwin();
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006000D8 != -1)
  {
    swift_once();
  }

  v13 = sub_1004B80B4();
  v118 = sub_100007084(v13, static Logger.sharePlayTogether);
  v14 = sub_1004B8094();
  v15 = sub_1004BC9A4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Updating participants", v16, 2u);
  }

  v17 = swift_allocObject();
  v129 = v17;
  *(v17 + 16) = &_swiftEmptySetSingleton;
  v120 = v17 + 16;
  v125 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  v18 = *&v1[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session];
  if (!v18)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v19 = [v18 pendingParticipants];
  v20 = sub_1004BC664();

  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = sub_10024C928(*(v20 + 16), 0);
    v23 = sub_10024DD3C(v132, (v22 + 4), v21, v20);
    sub_1001A43F8(v132[0]);
    if (v23 == v21)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_10:
  sub_1001A5324(v22);

  v132[0] = sub_10024E0BC(v24);
  sub_10024C9B8(v132);
  v111 = v3;

  v25 = *&v1[v125];
  if (!v25)
  {
    goto LABEL_77;
  }

  v122 = v132[0];
  v26 = [v25 participants];
  v27 = sub_1004BC664();

  v28 = *(v27 + 16);
  if (!v28)
  {
LABEL_14:

    v29 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v29 = sub_10024C928(*(v27 + 16), 0);
  v30 = sub_10024DD3C(v132, (v29 + 4), v28, v27);
  sub_1001A43F8(v132[0]);
  if (v30 != v28)
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  sub_1001A5324(v29);

  v132[0] = sub_10024E0BC(v31);
  sub_10024C9B8(v132);

  v121 = v132[0];
  if ((v132[0] & 0x8000000000000000) == 0 && (v132[0] & 0x4000000000000000) == 0)
  {
    v32 = *(v132[0] + 16);
    goto LABEL_18;
  }

  while (1)
  {
    v32 = sub_1004BD6A4();
LABEL_18:
    swift_getKeyPath();
    swift_getKeyPath();
    v132[0] = v32;
    v33 = v1;
    sub_1004B85B4();
    v34 = v122;
    v110 = v8;
    if (v122 < 0 || (v122 & 0x4000000000000000) != 0)
    {
      v35 = sub_1004BD6A4();
    }

    else
    {
      v35 = *(v122 + 16);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v132[0] = v35;
    v36 = v33;
    sub_1004B85B4();
    v132[0] = v34;

    sub_1000235A0(v37);
    v38 = v132[0];
    v109 = v5;
    v108 = v4;
    v119 = v1;
    if (v132[0] >> 62)
    {
      v39 = sub_1004BD6A4();
      if (!v39)
      {
LABEL_33:

        v41 = _swiftEmptyArrayStorage;
        goto LABEL_34;
      }
    }

    else
    {
      v39 = *((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v39)
      {
        goto LABEL_33;
      }
    }

    v132[0] = _swiftEmptyArrayStorage;
    sub_1000151B0(0, v39 & ~(v39 >> 63), 0);
    if (v39 < 0)
    {
      __break(1u);
      goto LABEL_76;
    }

    v40 = 0;
    v41 = v132[0];
    do
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v42 = sub_1004BD484();
      }

      else
      {
        v42 = *(v38 + 8 * v40 + 32);
        swift_unknownObjectRetain();
      }

      sub_100249580(v42, v36, v129, v12);
      swift_unknownObjectRelease();
      v132[0] = v41;
      v44 = v41[2];
      v43 = v41[3];
      v5 = (v44 + 1);
      if (v44 >= v43 >> 1)
      {
        sub_1000151B0((v43 > 1), v44 + 1, 1);
        v41 = v132[0];
      }

      ++v40;
      v41[2] = v5;
      sub_10024EF78(v12, v41 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v44);
    }

    while (v39 != v40);

    v1 = v119;
LABEL_34:
    swift_getKeyPath();
    swift_getKeyPath();
    v132[0] = v41;
    v126 = v36;
    sub_1004B85B4();
    v45 = *&v1[v125];
    if (!v45)
    {
      goto LABEL_78;
    }

    v46 = [v45 members];
    v12 = sub_100009130(0, &qword_100608590, MRUserIdentity_ptr);
    sub_10024EFDC();
    v47 = sub_1004BC664();

    v4 = v120;
    if ((v47 & 0xC000000000000001) != 0)
    {
      sub_1004BD324();
      sub_1004BC6A4();
      v47 = v132[0];
      v1 = v132[1];
      v48 = v132[2];
      v49 = v132[3];
      v8 = v132[4];
    }

    else
    {
      v49 = 0;
      v50 = -1 << *(v47 + 32);
      v1 = (v47 + 56);
      v48 = ~v50;
      v51 = -v50;
      v52 = v51 < 64 ? ~(-1 << v51) : -1;
      v8 = (v52 & *(v47 + 56));
    }

    v117 = v48;
    v53 = (v48 + 64) >> 6;
    v123 = v12;
    if (v47 < 0)
    {
      break;
    }

    while (1)
    {
      v57 = v49;
      v58 = v8;
      v55 = v49;
      if (!v8)
      {
        break;
      }

LABEL_51:
      v56 = (v58 - 1) & v58;
      v5 = *(*(v47 + 48) + ((v55 << 9) | (8 * __clz(__rbit64(v58)))));
      if (!v5)
      {
        goto LABEL_59;
      }

LABEL_52:
      if ([v5 type] == 1)
      {
        v127 = v56;
        v59 = [v5 identifier];
        v60 = sub_1004BBE64();
        v62 = v61;

        v63 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
        v64 = v126;
        swift_beginAccess();
        v65 = *&v64[v63];
        if (*(v65 + 16) && (, v66 = sub_1000346D4(v60, v62), v68 = v67, , (v68 & 1) != 0))
        {
          v69 = *(v65 + 56);
          v70 = sub_1004B7B14();
          v71 = *(v70 - 8);
          v72 = v71;
          v73 = v69 + *(v71 + 72) * v66;
          v74 = v124;
          (*(v71 + 16))(v124, v73, v70);

          (*(v72 + 56))(v74, 0, 1, v70);
          v4 = v120;
          sub_100007214(v74, &unk_100608408, &unk_1004D6DF0);
        }

        else
        {

          v75 = sub_1004B7B14();
          v76 = v124;
          (*(*(v75 - 8) + 56))(v124, 1, 1, v75);
          sub_100007214(v76, &unk_100608408, &unk_1004D6DF0);
          v77 = [v5 identifier];
          sub_1004BBE64();

          v78 = sub_1004BAD24();
          v80 = v79;
          swift_beginAccess();
          sub_10019A6D4(&v131, v78, v80);
          swift_endAccess();
        }

        v49 = v55;
        v8 = v127;
        v12 = v123;
        if (v47 < 0)
        {
          goto LABEL_44;
        }
      }

      else
      {

        v49 = v55;
        v8 = v56;
        if (v47 < 0)
        {
          goto LABEL_44;
        }
      }
    }

    while (1)
    {
      v55 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v55 >= v53)
      {
        goto LABEL_59;
      }

      v58 = *&v1[8 * v55];
      ++v57;
      if (v58)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
  }

LABEL_44:
  v54 = sub_1004BD354();
  if (v54)
  {
    v131 = v54;
    swift_dynamicCast();
    v5 = v130[0];
    v55 = v49;
    v56 = v8;
    if (v130[0])
    {
      goto LABEL_52;
    }
  }

LABEL_59:
  sub_1001A43F8(v47);
  v81 = *&v119[v125];
  if (!v81)
  {
LABEL_79:
    __break(1u);

    __break(1u);
    return;
  }

  swift_unknownObjectRetain();

  v82 = [v81 host];
  swift_unknownObjectRelease();
  if (v82)
  {
    v83 = v116;
    v84 = v126;
    sub_100249580(v82, v126, v129, v116);
    (*(v128 + 56))(v83, 0, 1, v115);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10000F778(v83, v110, &qword_1006083B0, &qword_1004D6D90);
    v85 = v84;
    sub_1004B85B4();
    swift_unknownObjectRelease();
    sub_100007214(v83, &qword_1006083B0, &qword_1004D6D90);
  }

  swift_beginAccess();
  v86 = *v4;
  v87 = *(*v4 + 16);
  v88 = sub_1004B8094();
  v89 = sub_1004BC9A4();
  v90 = os_log_type_enabled(v88, v89);
  if (v87)
  {
    if (v90)
    {
      v91 = swift_slowAlloc();
      *v91 = 134349056;
      *(v91 + 4) = *(v86 + 16);
      _os_log_impl(&_mh_execute_header, v88, v89, "Fetching %{public}ld profiles", v91, 0xCu);
    }

    swift_getKeyPath();
    v92 = *(v86 + 16);
    if (!v92 || (v93 = sub_10024C81C(*(v86 + 16), 0), v89 = v93, v94 = sub_10024DBE4(v130, v93 + 4, v92, v86), v95 = v130[0], v88 = v130[4], , v90 = sub_1001A43F8(v95), v94 == v92))
    {
      sub_1004B7B14();
      sub_10024F08C(&qword_1006085A0, &type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
      sub_10024F08C(&qword_1006085A8, &type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
      v97 = v112;
      sub_1004BABE4();
      v98 = sub_1004BC4B4();
      v99 = v114;
      (*(*(v98 - 8) + 56))(v114, 1, 1, v98);
      v100 = v113;
      v101 = v109;
      v102 = v111;
      (*(v113 + 16))(v109, v97, v111);
      sub_1004BC474();
      v103 = v126;
      v104 = sub_1004BC464();
      v105 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v106 = (v108 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
      v107 = swift_allocObject();
      *(v107 + 16) = v104;
      *(v107 + 24) = &protocol witness table for MainActor;
      (*(v100 + 32))(v107 + v105, v101, v102);
      *(v107 + v106) = v103;
      sub_1001FA838(0, 0, v99, &unk_1004D6FA8, v107);

      (*(v100 + 8))(v97, v102);

      return;
    }

    __break(1u);
  }

  if (v90)
  {
    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&_mh_execute_header, v88, v89, "No pending profiles to fetch", v96, 2u);
  }
}

uint64_t sub_100249580@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100003ABC(&unk_100608408, &unk_1004D6DF0);
  __chkstk_darwin();
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v46 - v10;
  __chkstk_darwin();
  v13 = v46 - v12;
  v14 = sub_1004B7B14();
  v15 = *(v14 - 8);
  v49 = *(v15 + 56);
  v50 = v14;
  v49(v13, 1, 1);
  v16 = [a1 identity];
  v17 = &off_1005F2000;
  if (v16)
  {
    v18 = v16;
    if ([v16 type] == 1)
    {
      v46[1] = a3;
      v48 = v13;
      v19 = [v18 identifier];
      v47 = sub_1004BBE64();
      v21 = v20;

      v22 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
      swift_beginAccess();
      v23 = *(a2 + v22);
      if (*(v23 + 16) && (, v47 = sub_1000346D4(v47, v21), v25 = v24, , (v25 & 1) != 0))
      {
        (*(v15 + 16))(v11, *(v23 + 56) + *(v15 + 72) * v47, v50);
        v13 = v48;
        sub_100007214(v48, &unk_100608408, &unk_1004D6DF0);

        v26 = 0;
      }

      else
      {

        v13 = v48;
        sub_100007214(v48, &unk_100608408, &unk_1004D6DF0);
        v26 = 1;
      }

      v27 = v50;
      (v49)(v11, v26, 1, v50);
      sub_10024F54C(v11, v13);
      sub_10000F778(v13, v9, &unk_100608408, &unk_1004D6DF0);
      if ((*(v15 + 48))(v9, 1, v27) == 1)
      {
        sub_100007214(v9, &unk_100608408, &unk_1004D6DF0);
        v28 = [v18 identifier];
        sub_1004BBE64();

        v29 = sub_1004BAD24();
        v31 = v30;
        swift_beginAccess();
        sub_10019A6D4(&v51, v29, v31);
        swift_endAccess();

        v17 = &off_1005F2000;
        goto LABEL_12;
      }

      sub_100007214(v9, &unk_100608408, &unk_1004D6DF0);
    }

    else
    {
    }

    v17 = &off_1005F2000;
  }

LABEL_12:
  v32 = [a1 v17[496]];
  v33 = sub_1004BBE64();
  v35 = v34;

  v36 = [a1 identity];
  if (v36 && (v37 = v36, v38 = [v36 displayName], v37, v38))
  {
    v39 = sub_1004BBE64();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v42 = [a1 isPending];
  v43 = [a1 isGuest];
  v44 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  (v49)(a4 + v44, 1, 1, v50);
  *a4 = v33;
  *(a4 + 8) = v35;
  *(a4 + 16) = v39;
  *(a4 + 24) = v41;
  *(a4 + 32) = v42;
  *(a4 + 33) = v43;
  return sub_10024E5C8(v13, a4 + v44);
}

uint64_t SharePlayTogetherSession.Participant.init(id:displayName:isPending:isGuest:socialProfile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  v17 = sub_1004B7B14();
  (*(*(v17 - 8) + 56))(a8 + v16, 1, 1, v17);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 33) = a6;

  return sub_10024E5C8(a7, a8 + v16);
}

uint64_t sub_100249AF4(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 identity];
  if (v3 && (v4 = v3, v5 = [v3 displayName], v4, v5))
  {
    v6 = sub_1004BBE64();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = [v2 identity];
  if (v9 && (v10 = v9, v11 = [v9 displayName], v10, v11))
  {
    v12 = sub_1004BBE64();
    v14 = v13;

    if (v6 != v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0xE000000000000000;
    if (v6)
    {
LABEL_12:
      v15 = sub_1004BD9C4();
      goto LABEL_13;
    }
  }

  if (v8 != v14)
  {
    goto LABEL_12;
  }

  v15 = 0;
LABEL_13:

  return v15 & 1;
}

uint64_t sub_100249C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a5;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  v5[5] = swift_task_alloc();
  v6 = sub_100003ABC(&qword_1006085B0, &qword_1004D6FB0);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v7 = swift_task_alloc();
  v5[8] = v7;
  v8 = sub_100003ABC(&qword_1006085B8, &qword_1004D6FB8);
  v5[9] = v8;
  v9 = *(v8 - 8);
  v5[10] = v9;
  v5[11] = *(v9 + 64);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = sub_1004BC474();
  v5[16] = sub_1004BC464();
  v10 = swift_task_alloc();
  v5[17] = v10;
  v11 = sub_100003ABC(&qword_100608588, &qword_1004D6F70);
  *v10 = v5;
  v10[1] = sub_100249E44;

  return MusicCatalogResourceRequest.response()(v7, v11);
}

uint64_t sub_100249E44()
{
  *(*v1 + 144) = v0;

  v3 = sub_1004BC3E4();
  if (v0)
  {
    v4 = sub_10024A324;
  }

  else
  {
    v4 = sub_100249FA0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100249FA0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  sub_1004BAC04();
  (*(v2 + 8))(v1, v3);
  if (qword_1006000D8 != -1)
  {
    swift_once();
  }

  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[9];
  v7 = v0[10];
  v8 = sub_1004B80B4();
  sub_100007084(v8, static Logger.sharePlayTogether);
  v34 = *(v7 + 16);
  v34(v4, v5, v6);
  v9 = sub_1004B8094();
  v10 = sub_1004BC9A4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[13];
  v13 = v0[9];
  v14 = v0[10];
  if (v11)
  {
    v15 = swift_slowAlloc();
    *v15 = 134349056;
    sub_10024F428();
    sub_1004BC724();
    sub_1004BC764();
    v16 = sub_1004BC754();
    v33 = *(v14 + 8);
    v33(v12, v13);
    *(v15 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Finished fetching %{public}ld profiles", v15, 0xCu);
  }

  else
  {
    v33 = *(v14 + 8);
    v33(v12, v13);
  }

  v17 = v0[14];
  v18 = v0[12];
  v19 = v0[10];
  v20 = v0[11];
  v21 = v0[9];
  v23 = v0[4];
  v22 = v0[5];
  v32 = v22;
  v24 = sub_1004BC4B4();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  v34(v18, v17, v21);
  v25 = v23;
  v26 = sub_1004BC464();
  v27 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v28 = (v20 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = &protocol witness table for MainActor;
  (*(v19 + 32))(v29 + v27, v18, v21);
  *(v29 + v28) = v25;
  sub_1000FD6BC(0, 0, v32, &unk_1004D6FC8, v29);

  v33(v17, v21);

  v30 = v0[1];

  return v30();
}

uint64_t sub_10024A324()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10024A3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  sub_100003ABC(&unk_100608408, &unk_1004D6DF0);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  sub_100003ABC(&qword_1006083B0, &qword_1004D6D90);
  v5[35] = swift_task_alloc();
  v6 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v5[36] = v6;
  v5[37] = *(v6 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v7 = sub_1004B7B14();
  v5[40] = v7;
  v5[41] = *(v7 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = sub_100003ABC(&qword_1006085C8, &qword_1004D6FD0);
  v5[45] = swift_task_alloc();
  sub_1004BC474();
  v5[46] = sub_1004BC464();
  v9 = sub_1004BC3E4();

  return _swift_task_switch(sub_10024A5FC, v9, v8);
}

void sub_10024A5FC()
{
  v1 = v0;
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[30];
  v5 = v0[31];
  v6 = sub_100003ABC(&qword_1006085B8, &qword_1004D6FB8);
  (*(*(v6 - 8) + 16))(v3, v4, v6);
  v7 = *(v2 + 36);
  sub_10024F428();
  sub_1004BC724();
  v8 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
  sub_1004BC764();
  v114 = v1;
  v109 = v5;
  if (*(v3 + v7) != v1[27])
  {
    v57 = v1[41];
    v105 = (v57 + 16);
    v107 = v1 + 2;
    v108 = (v57 + 32);
    v103 = v57;
    v100 = v7;
    do
    {
      v60 = v1[43];
      v113 = v1[42];
      v61 = v1[40];
      v111 = sub_1004BC844();
      (*v105)(v60);
      v111(v107, 0);
      sub_1004BC774();
      v62 = sub_1004B7AE4();
      v64 = v63;
      swift_beginAccess();
      v65 = *v108;
      (*v108)(v113, v60, v61);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = *(v109 + v8);
      v115 = v67;
      *(v109 + v8) = 0x8000000000000000;
      v68 = sub_1000346D4(v62, v64);
      v70 = v67[2];
      v71 = (v69 & 1) == 0;
      v72 = __OFADD__(v70, v71);
      v73 = v70 + v71;
      if (v72)
      {
        goto LABEL_61;
      }

      v74 = v69;
      if (v67[3] >= v73)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v81 = v68;
          sub_10003AE20();
          v68 = v81;
        }
      }

      else
      {
        sub_100037DA0(v73, isUniquelyReferenced_nonNull_native);
        v68 = sub_1000346D4(v62, v64);
        if ((v74 & 1) != (v75 & 1))
        {

          sub_1004BDAA4();
          return;
        }
      }

      v76 = v114[42];
      v77 = v114[40];
      if (v74)
      {
        v58 = v68;

        v59 = v115;
        (*(v103 + 40))(v115[7] + *(v103 + 72) * v58, v76, v77);
      }

      else
      {
        v59 = v115;
        v115[(v68 >> 6) + 8] |= 1 << v68;
        v78 = (v115[6] + 16 * v68);
        *v78 = v62;
        v78[1] = v64;
        v65(v115[7] + *(v103 + 72) * v68, v76, v77);
        v79 = v115[2];
        v72 = __OFADD__(v79, 1);
        v80 = v79 + 1;
        if (v72)
        {
          goto LABEL_62;
        }

        v115[2] = v80;
      }

      v1 = v114;
      *(v109 + v8) = v59;

      swift_endAccess();
      sub_1004BC764();
    }

    while (*(v3 + v100) != v114[27]);
  }

  v98 = v8;
  sub_100007214(v1[45], &qword_1006085C8, &qword_1004D6FD0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v9 = *(v1[28] + 16);

  v10 = v1;
  if (!v9)
  {
LABEL_31:
    v53 = v10[36];
    v54 = v10[37];
    v55 = v10[35];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v56 = *(v54 + 48);
    if (v56(v55, 1, v53) == 1)
    {
      sub_100007214(v10[35], &qword_1006083B0, &qword_1004D6D90);
    }

    else
    {
      v82 = v10 + 6;
      v83 = v10[36];
      sub_10024EF78(v10[35], v10[39]);
      v84 = SharePlayTogetherSession.host.modify(v10 + 6);
      v86 = v85;
      v87 = v56(v85, 1, v83);
      v88 = v10[39];
      if (!v87)
      {
        v89 = *v88;
        v90 = v88[1];
        swift_beginAccess();
        v91 = *(v109 + v98);
        if (*(v91 + 16))
        {

          v92 = sub_1000346D4(v89, v90);
          if (v93)
          {
            v10 = v114;
            (*(v114[41] + 16))(v114[32], *(v91 + 56) + *(v114[41] + 72) * v92, v114[40]);
            v94 = 0;
          }

          else
          {
            v94 = 1;
            v10 = v114;
          }
        }

        else
        {
          v94 = 1;
          v10 = v114;
        }

        v88 = v10[39];
        v95 = v10[36];
        v96 = v10[32];
        (*(v10[41] + 56))(v96, v94, 1, v10[40]);
        sub_10024E5C8(v96, v86 + *(v95 + 32));
      }

      (v84)(v82, 0);
      sub_10024F4F0(v88);
    }

    type metadata accessor for SharePlayTogetherSession(0);
    sub_10024F08C(&qword_1006085D0, type metadata accessor for SharePlayTogetherSession, &protocol conformance descriptor for SharePlayTogetherSession);
    sub_1004B8534();
    sub_1004B8554();

    v97 = v10[1];

    v97();
    return;
  }

  v11 = v1[41];
  v13 = v1[37];
  v12 = v1[38];
  v101 = v1[36];
  v110 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  v112 = v1[31];
  swift_beginAccess();
  v14 = 0;
  v102 = v9;
  v104 = (v11 + 56);
  v99 = v11;
  v106 = v13;
  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v15 = v10[29];
    if (v14 >= *(v15 + 16))
    {
      break;
    }

    v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v17 = *(v13 + 72) * v14;
    sub_10024F48C(v15 + v16 + v17, v10[38]);

    if (*(v12 + 32) == 1)
    {
      v18 = *(v112 + v110);
      if (!v18)
      {
        goto LABEL_66;
      }

      swift_unknownObjectRetain();
      v19 = sub_1004BBE24();
      v20 = [v18 pendingParticipantForIdentifier:v19];
      swift_unknownObjectRelease();

      if (v20)
      {
        v21 = [v20 identity];
        swift_unknownObjectRelease();
        if (v21)
        {
          v22 = [v21 identifier];

          v23 = sub_1004BBE64();
          v25 = v24;

          v26 = *(v109 + v98);
          if (*(v26 + 16) && (, v27 = sub_1000346D4(v23, v25), v29 = v28, , (v29 & 1) != 0))
          {
            (*(v99 + 16))(v10[34], *(v26 + 56) + *(v99 + 72) * v27, v10[40]);

            v30 = 0;
          }

          else
          {

            v30 = 1;
          }

          (*v104)(v10[34], v30, 1, v10[40]);
          swift_getKeyPath();
          swift_getKeyPath();
          v44 = sub_1004B8594();
          v50 = v49;
          v51 = *v49;
          v52 = swift_isUniquelyReferenced_nonNull_native();
          *v50 = v51;
          if ((v52 & 1) == 0)
          {
            v51 = sub_10003B264(v51);
            *v50 = v51;
          }

          v13 = v106;
          if (v14 >= v51[2])
          {
            goto LABEL_64;
          }

          sub_10024E5C8(v10[34], v51 + v16 + v17 + *(v101 + 32));
LABEL_5:
          v44();

          v9 = v102;
          goto LABEL_6;
        }
      }
    }

    v31 = *(v112 + v110);
    if (!v31)
    {
      goto LABEL_65;
    }

    swift_unknownObjectRetain();
    v32 = sub_1004BBE24();
    v33 = [v31 participantForIdentifier:v32];
    swift_unknownObjectRelease();

    if (v33)
    {
      v34 = [v33 identity];
      swift_unknownObjectRelease();
      if (v34)
      {
        v35 = [v34 identifier];

        v36 = sub_1004BBE64();
        v38 = v37;

        v39 = *(v109 + v98);
        if (*(v39 + 16) && (, v40 = sub_1000346D4(v36, v38), v42 = v41, , (v42 & 1) != 0))
        {
          (*(v99 + 16))(v10[33], *(v39 + 56) + *(v99 + 72) * v40, v10[40]);

          v43 = 0;
        }

        else
        {

          v43 = 1;
        }

        (*v104)(v10[33], v43, 1, v10[40]);
        swift_getKeyPath();
        swift_getKeyPath();
        v44 = sub_1004B8594();
        v46 = v45;
        v47 = *v45;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        *v46 = v47;
        if ((v48 & 1) == 0)
        {
          v47 = sub_10003B264(v47);
          *v46 = v47;
        }

        v13 = v106;
        if (v14 >= v47[2])
        {
          goto LABEL_63;
        }

        sub_10024E5C8(v10[33], v47 + v16 + v17 + *(v101 + 32));
        goto LABEL_5;
      }
    }

LABEL_6:
    ++v14;
    sub_10024F4F0(v10[38]);
    if (v9 == v14)
    {
      goto LABEL_31;
    }
  }

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
}

id SharePlayTogetherSession.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SharePlayTogetherSession(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10024B4E4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SharePlayTogetherSession(0);
  result = sub_1004B8534();
  *a2 = result;
  return result;
}

uint64_t SharePlayTogetherSession.Participant.socialProfile.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);

  return sub_10024E5C8(a1, v3);
}

double SharePlayTogetherSession.groupSessionDidConnect(_:)(uint64_t a1)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v4 = &v10 - v3;
  v5 = sub_1004BC4B4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1004BC474();
  swift_unknownObjectRetain();
  v6 = v1;
  v7 = sub_1004BC464();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = a1;
  v8[5] = v6;
  sub_1000FD6BC(0, 0, v4, &unk_1004D6E10, v8);

  return result;
}

uint64_t sub_10024B734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_1004BC474();
  v5[12] = sub_1004BC464();
  v7 = sub_1004BC3E4();

  return _swift_task_switch(sub_10024B7CC, v7, v6);
}

uint64_t sub_10024B7CC()
{
  v22 = v0;

  if (qword_1006000D8 != -1)
  {
    swift_once();
  }

  v1 = sub_1004B80B4();
  sub_100007084(v1, static Logger.sharePlayTogether);
  swift_unknownObjectRetain();
  v2 = sub_1004B8094();
  v3 = sub_1004BC9A4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[10];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136446210;
    v7 = [v4 description];
    v8 = sub_1004BBE64();
    v10 = v9;

    v11 = sub_100012018(v8, v10, &v21);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "groupSessionDidConnect %{public}s", v5, 0xCu);
    sub_100004C6C(v6);
  }

  v12 = v0[11];
  *(v12 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isConnected) = 1;
  v13 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
  swift_beginAccess();
  v14 = *(v12 + v13);
  v15 = *(v14 + 16);
  if (v15)
  {

    v16 = v14 + 40;
    do
    {
      v17 = *(v16 - 8);

      v17(v18);

      v16 += 16;
      --v15;
    }

    while (v15);
  }

  *(v12 + v13) = _swiftEmptyArrayStorage;

  SharePlayTogetherSession.qrCode.getter(v0 + 2);
  sub_100007214((v0 + 2), &qword_100608610, &qword_1004D7030);
  type metadata accessor for SharePlayTogetherSession(0);
  sub_10024F08C(&qword_1006085D0, type metadata accessor for SharePlayTogetherSession, &protocol conformance descriptor for SharePlayTogetherSession);
  sub_1004B8534();
  sub_1004B8554();

  v19 = v0[1];

  return v19();
}

double SharePlayTogetherSession.groupSession(_:didInvalidateWithError:)(uint64_t a1, uint64_t a2)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v5 = &v11 - v4;
  v6 = sub_1004BC4B4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1004BC474();
  swift_errorRetain();
  v7 = v2;
  v8 = sub_1004BC464();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = a2;
  v9[5] = v7;
  sub_1000FD6BC(0, 0, v5, &unk_1004D6E20, v9);

  return result;
}

uint64_t sub_10024BD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  sub_1004BC474();
  v5[13] = sub_1004BC464();
  v7 = sub_1004BC3E4();

  return _swift_task_switch(sub_10024BDC0, v7, v6);
}

void sub_10024BDC0()
{
  v31 = v0;

  if (qword_1006000D8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_1004B80B4();
  sub_100007084(v2, static Logger.sharePlayTogether);
  swift_errorRetain();
  v3 = v1;
  v4 = sub_1004B8094();
  v5 = sub_1004BC9A4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v6 = 138543618;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2082;
    swift_beginAccess();

    sub_100003ABC(&unk_100608600, &unk_1004D7020);
    v10 = sub_1004BC2B4();
    v12 = v11;

    v13 = sub_100012018(v10, v12, &v30);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Session invalidated with error %{public}@. Calling %{public}s observers.", v6, 0x16u);
    sub_100007214(v7, &qword_100602710, &qword_1004CB540);

    sub_100004C6C(v8);
  }

  v14 = *(v0 + 96);
  v15 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
  swift_beginAccess();
  v16 = *(v14 + v15);
  v17 = *(v16 + 16);
  if (v17)
  {
    v26 = v15;
    v18 = *(v0 + 96);
    v19 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually;
    v20 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
    v28 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;

    v27 = v0;
    swift_beginAccess();
    v0 = 0;
    v21 = v16 + 40;
    while (1)
    {
      if (v0 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v23 = *(v21 - 8);
      if ((*(v18 + v19) & 1) != 0 || *(v18 + v20) == 1)
      {

        v22 = 1;
      }

      else
      {
        v24 = *(v18 + v28);
        if (!v24)
        {
          __break(1u);
          return;
        }

        v22 = [v24 isPlaceholder];
      }

      ++v0;
      v29 = v22;
      v23(&v29);

      v21 += 16;
      if (v17 == v0)
      {

        v15 = v26;
        v0 = v27;
        break;
      }
    }
  }

  *(v14 + v15) = _swiftEmptyArrayStorage;

  v25 = *(v0 + 8);

  v25();
}

uint64_t sub_10024C2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1004BC474();
  *(v4 + 24) = sub_1004BC464();
  v6 = sub_1004BC3E4();

  return _swift_task_switch(sub_10024F878, v6, v5);
}

void sub_10024C3F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_10024E7E8(a5, a6, a7);
  swift_unknownObjectRelease();
}

uint64_t sub_10024C4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1004BC474();
  *(v4 + 24) = sub_1004BC464();
  v6 = sub_1004BC3E4();

  return _swift_task_switch(sub_10024C554, v6, v5);
}

uint64_t sub_10024C554()
{

  sub_1002484CC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10024C5E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, static Logger.sharePlayTogether);
  sub_100007084(v2, static Logger.sharePlayTogether);
  return sub_1004B80A4();
}

void sub_10024C6A8(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a4)
  {
    sub_10003E428(a2, a3);

    v4 = a4;
  }
}

uint64_t static Logger.sharePlayTogether.getter@<X0>(uint64_t a2@<X8>)
{
  if (qword_1006000D8 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  v4 = sub_100007084(v3, static Logger.sharePlayTogether);
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, v4, v3);
}

void *sub_10024C798(uint64_t a1, uint64_t a2)
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

  sub_100003ABC(&qword_1006085F0, &qword_1004D6FE8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_10024C81C(uint64_t a1, uint64_t a2)
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

  sub_100003ABC(&qword_1006085D8, &qword_1004D6FD8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_10024C8A0(uint64_t a1, uint64_t a2)
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

  sub_100003ABC(&qword_100603C50, &unk_1004CB550);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_10024C928(uint64_t a1, uint64_t a2)
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

  sub_100003ABC(&qword_1006085E8, &qword_1004D6FE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_10024C9B8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10024DBD0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10024CA34(v6);
  return sub_1004BD504();
}

void sub_10024CA34(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1004BD8B4(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100003ABC(&qword_1006085E0, &qword_1004C8808);
        v6 = sub_1004BC314();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_10024CD4C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10024CB44(0, v2, 1, a1);
  }
}

void sub_10024CB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
    v6 = &off_1005F2000;
LABEL_6:
    v26 = v4;
    v27 = a3;
    v7 = *(v28 + 8 * a3);
    v25 = v5;
    while (1)
    {
      v8 = *v4;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v9 = [v7 v6[501]];
      if (v9 && (v10 = v9, v11 = [v9 displayName], v10, v11))
      {
        v12 = sub_1004BBE64();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0xE000000000000000;
      }

      v15 = [v8 v6[501]];
      if (v15 && (v16 = v15, v17 = [v15 displayName], v16, v17))
      {
        v18 = sub_1004BBE64();
        v20 = v19;

        if (v12 != v18)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v20 = 0xE000000000000000;
        if (v12)
        {
          goto LABEL_17;
        }
      }

      if (v14 == v20)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v6 = &off_1005F2000;
LABEL_5:
        a3 = v27 + 1;
        v4 = v26 + 8;
        v5 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

LABEL_17:
      v21 = sub_1004BD9C4();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v6 = &off_1005F2000;
      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v28)
      {
        __break(1u);
        return;
      }

      v22 = *v4;
      v7 = *(v4 + 8);
      *v4 = v7;
      *(v4 + 8) = v22;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_10024CD4C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_115:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_156;
    }

    v4 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v96 = v4;
LABEL_118:
      v119 = v96;
      v4 = *(v96 + 2);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v97 = *&v96[16 * v4];
          v98 = v96;
          v99 = *&v96[16 * v4 + 24];
          sub_10024D600((*a3 + 8 * v97), (*a3 + 8 * *&v96[16 * v4 + 16]), (*a3 + 8 * v99), v5);
          if (v114)
          {
            goto LABEL_126;
          }

          if (v99 < v97)
          {
            goto LABEL_143;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_10024DB80(v98);
          }

          if (v4 - 2 >= *(v98 + 2))
          {
            goto LABEL_144;
          }

          v100 = &v98[16 * v4];
          *v100 = v97;
          *(v100 + 1) = v99;
          v119 = v98;
          sub_10024DAF4(v4 - 1);
          v96 = v119;
          v4 = *(v119 + 16);
          if (v4 <= 1)
          {
            goto LABEL_126;
          }
        }

        goto LABEL_154;
      }

LABEL_126:

      return;
    }

LABEL_150:
    v96 = sub_10024DB80(v4);
    goto LABEL_118;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
LABEL_4:
  v9 = v7;
  if (v7 + 1 >= v6)
  {
    v6 = v7 + 1;
    goto LABEL_33;
  }

  v104 = v8;
  v10 = *a3;
  v118 = *(*a3 + 8 * (v7 + 1));
  v5 = *(v10 + 8 * v7);
  v117 = v5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v115 = sub_100249AF4(&v118, &v117);
  if (v114)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v4 = v7 + 2;
  v102 = v7;
  v109 = 8 * v7;
  v111 = v6;
  v11 = (v10 + 8 * v7 + 16);
  while (v6 != v4)
  {
    v13 = *(v11 - 1);
    v14 = *v11;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v15 = [v14 identity];
    if (v15 && (v16 = v15, v17 = [v15 displayName], v16, v17))
    {
      v18 = sub_1004BBE64();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    v21 = [v13 identity];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 displayName];

      if (v23)
      {
        v24 = sub_1004BBE64();
        v5 = v25;
      }

      else
      {
        v24 = 0;
        v5 = 0xE000000000000000;
      }

      v6 = v111;
      if (v18 != v24)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v5 = 0xE000000000000000;
      if (v18)
      {
        goto LABEL_7;
      }
    }

    if (v20 == v5)
    {
      v12 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v12 = sub_1004BD9C4();
LABEL_8:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    ++v4;
    ++v11;
    if ((v115 ^ v12))
    {
      v6 = v4 - 1;
      break;
    }
  }

  v9 = v102;
  v8 = v104;
  v26 = v109;
  if ((v115 & 1) == 0)
  {
    goto LABEL_33;
  }

  if (v6 < v102)
  {
    goto LABEL_149;
  }

  if (v102 < v6)
  {
    v27 = 8 * v6 - 8;
    v28 = v6;
    v29 = v102;
    do
    {
      if (v29 != --v28)
      {
        v30 = *a3;
        if (!*a3)
        {
          goto LABEL_153;
        }

        v31 = *(v30 + v26);
        *(v30 + v26) = *(v30 + v27);
        *(v30 + v27) = v31;
      }

      ++v29;
      v27 -= 8;
      v26 += 8;
    }

    while (v29 < v28);
  }

LABEL_33:
  v32 = a3[1];
  if (v6 >= v32)
  {
    goto LABEL_41;
  }

  if (__OFSUB__(v6, v9))
  {
    goto LABEL_146;
  }

  if (v6 - v9 >= a4)
  {
LABEL_41:
    v7 = v6;
    if (v6 < v9)
    {
      goto LABEL_145;
    }

    goto LABEL_42;
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_147;
  }

  if (v9 + a4 < v32)
  {
    v32 = v9 + a4;
  }

  if (v32 < v9)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (v6 == v32)
  {
    goto LABEL_41;
  }

  v107 = v32;
  v103 = v9;
  v105 = v8;
  v116 = *a3;
  v4 = *a3 + 8 * v6 - 8;
  v79 = v9 - v6;
  while (2)
  {
    v110 = v4;
    v112 = v6;
    v80 = *(v116 + 8 * v6);
    v108 = v79;
LABEL_95:
    v81 = *v4;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v82 = [v80 identity];
    if (v82 && (v83 = v82, v84 = [v82 displayName], v83, v84))
    {
      v85 = sub_1004BBE64();
      v87 = v86;
    }

    else
    {
      v85 = 0;
      v87 = 0xE000000000000000;
    }

    v88 = [v81 identity];
    if (!v88 || (v89 = v88, v90 = [v88 displayName], v89, !v90))
    {
      v5 = 0;
      v92 = 0xE000000000000000;
      if (v85)
      {
        goto LABEL_105;
      }

LABEL_104:
      if (v87 != v92)
      {
        goto LABEL_105;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

LABEL_93:
      v6 = v112 + 1;
      v4 = v110 + 8;
      v79 = v108 - 1;
      if (v112 + 1 != v107)
      {
        continue;
      }

      v9 = v103;
      v8 = v105;
      v7 = v107;
      if (v107 < v103)
      {
        goto LABEL_145;
      }

LABEL_42:
      v33 = v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = v33;
      }

      else
      {
        v8 = sub_100018024(0, *(v33 + 2) + 1, 1, v33);
      }

      v4 = *(v8 + 2);
      v34 = *(v8 + 3);
      v35 = v4 + 1;
      if (v4 >= v34 >> 1)
      {
        v8 = sub_100018024((v34 > 1), v4 + 1, 1, v8);
      }

      *(v8 + 2) = v35;
      v36 = &v8[16 * v4];
      *(v36 + 4) = v9;
      *(v36 + 5) = v7;
      v37 = *a1;
      if (!*a1)
      {
        goto LABEL_155;
      }

      if (v4)
      {
        while (2)
        {
          v38 = v35 - 1;
          if (v35 >= 4)
          {
            v43 = &v8[16 * v35 + 32];
            v44 = *(v43 - 64);
            v45 = *(v43 - 56);
            v49 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            if (v49)
            {
              goto LABEL_132;
            }

            v48 = *(v43 - 48);
            v47 = *(v43 - 40);
            v49 = __OFSUB__(v47, v48);
            v41 = v47 - v48;
            v42 = v49;
            if (v49)
            {
              goto LABEL_133;
            }

            v50 = &v8[16 * v35];
            v52 = *v50;
            v51 = *(v50 + 1);
            v49 = __OFSUB__(v51, v52);
            v53 = v51 - v52;
            if (v49)
            {
              goto LABEL_135;
            }

            v49 = __OFADD__(v41, v53);
            v54 = v41 + v53;
            if (v49)
            {
              goto LABEL_138;
            }

            if (v54 >= v46)
            {
              v72 = &v8[16 * v38 + 32];
              v74 = *v72;
              v73 = *(v72 + 1);
              v49 = __OFSUB__(v73, v74);
              v75 = v73 - v74;
              if (v49)
              {
                goto LABEL_142;
              }

              if (v41 < v75)
              {
                v38 = v35 - 2;
              }
            }

            else
            {
LABEL_61:
              if (v42)
              {
                goto LABEL_134;
              }

              v55 = &v8[16 * v35];
              v57 = *v55;
              v56 = *(v55 + 1);
              v58 = __OFSUB__(v56, v57);
              v59 = v56 - v57;
              v60 = v58;
              if (v58)
              {
                goto LABEL_137;
              }

              v61 = &v8[16 * v38 + 32];
              v63 = *v61;
              v62 = *(v61 + 1);
              v49 = __OFSUB__(v62, v63);
              v64 = v62 - v63;
              if (v49)
              {
                goto LABEL_140;
              }

              if (__OFADD__(v59, v64))
              {
                goto LABEL_141;
              }

              if (v59 + v64 < v41)
              {
                goto LABEL_75;
              }

              if (v41 < v64)
              {
                v38 = v35 - 2;
              }
            }
          }

          else
          {
            if (v35 == 3)
            {
              v39 = *(v8 + 4);
              v40 = *(v8 + 5);
              v49 = __OFSUB__(v40, v39);
              v41 = v40 - v39;
              v42 = v49;
              goto LABEL_61;
            }

            v65 = &v8[16 * v35];
            v67 = *v65;
            v66 = *(v65 + 1);
            v49 = __OFSUB__(v66, v67);
            v59 = v66 - v67;
            v60 = v49;
LABEL_75:
            if (v60)
            {
              goto LABEL_136;
            }

            v68 = &v8[16 * v38];
            v70 = *(v68 + 4);
            v69 = *(v68 + 5);
            v49 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v49)
            {
              goto LABEL_139;
            }

            if (v71 < v59)
            {
              break;
            }
          }

          v4 = v38 - 1;
          if (v38 - 1 >= v35)
          {
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
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          if (!*a3)
          {
            goto LABEL_152;
          }

          v5 = v8;
          v76 = *&v8[16 * v4 + 32];
          v77 = *&v8[16 * v38 + 40];
          sub_10024D600((*a3 + 8 * v76), (*a3 + 8 * *&v8[16 * v38 + 32]), (*a3 + 8 * v77), v37);
          if (v114)
          {
            goto LABEL_126;
          }

          if (v77 < v76)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_10024DB80(v5);
          }

          if (v4 >= *(v5 + 16))
          {
            goto LABEL_131;
          }

          v78 = v5 + 16 * v4;
          *(v78 + 32) = v76;
          *(v78 + 40) = v77;
          v119 = v5;
          sub_10024DAF4(v38);
          v8 = v119;
          v35 = *(v119 + 16);
          if (v35 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_115;
      }

      goto LABEL_4;
    }

    break;
  }

  v5 = sub_1004BBE64();
  v92 = v91;

  if (v85 == v5)
  {
    goto LABEL_104;
  }

LABEL_105:
  v93 = sub_1004BD9C4();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if ((v93 & 1) == 0)
  {
    goto LABEL_93;
  }

  if (v116)
  {
    v94 = *v4;
    v80 = *(v4 + 8);
    *v4 = v80;
    *(v4 + 8) = v94;
    v4 -= 8;
    if (__CFADD__(v79++, 1))
    {
      goto LABEL_93;
    }

    goto LABEL_95;
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

uint64_t sub_10024D600(void **__src, void **a2, void **a3, void **a4)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a4;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
      v5 = a2;
    }

    v63 = &v13[v9];
    if (v7 < 8 || v5 >= v4)
    {
LABEL_30:
      v34 = v6;
      goto LABEL_61;
    }

    v15 = &off_1005F2000;
    while (1)
    {
      __dst = v5;
      v16 = *v5;
      v17 = *v13;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v18 = [v16 v15[501]];
      v59 = v6;
      if (v18 && (v19 = v18, v20 = [v18 displayName], v19, v20))
      {
        v21 = sub_1004BBE64();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0xE000000000000000;
      }

      v24 = [v17 v15[501]];
      if (v24 && (v25 = v24, v26 = [v24 displayName], v25, v26))
      {
        v27 = sub_1004BBE64();
        v29 = v28;

        if (v21 != v27)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v29 = 0xE000000000000000;
        if (v21)
        {
          goto LABEL_23;
        }
      }

      if (v23 == v29)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v15 = &off_1005F2000;
LABEL_26:
        v32 = v13;
        v31 = v59;
        v33 = v59 == v13++;
        v5 = __dst;
        if (v33)
        {
          goto LABEL_28;
        }

LABEL_27:
        *v31 = *v32;
        goto LABEL_28;
      }

LABEL_23:
      v30 = sub_1004BD9C4();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v15 = &off_1005F2000;
      if ((v30 & 1) == 0)
      {
        goto LABEL_26;
      }

      v31 = v59;
      v32 = __dst;
      v5 = __dst + 1;
      if (v59 != __dst)
      {
        goto LABEL_27;
      }

LABEL_28:
      v6 = v31 + 1;
      if (v13 >= v63 || v5 >= v4)
      {
        goto LABEL_30;
      }
    }
  }

  if (a4 != a2 || &a2[v12] <= a4)
  {
    v35 = a4;
    memmove(a4, a2, 8 * v12);
    v5 = a2;
    a4 = v35;
  }

  v63 = &a4[v12];
  v13 = a4;
  if (v10 < 8 || v5 <= v6)
  {
    v34 = v5;
    goto LABEL_61;
  }

  v37 = &off_1005F2000;
  v58 = a4;
  v60 = v6;
  do
  {
    __dsta = v5;
    v38 = v5 - 1;
    --v4;
    v39 = v63;
    v57 = v38;
    while (1)
    {
      v40 = *--v39;
      v41 = *v38;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v42 = [v40 v37[501]];
      if (v42 && (v43 = v42, v44 = [v42 displayName], v43, v44))
      {
        v45 = sub_1004BBE64();
        v47 = v46;
      }

      else
      {
        v45 = 0;
        v47 = 0xE000000000000000;
      }

      v48 = [v41 v37[501]];
      if (v48 && (v49 = v48, v50 = [v48 displayName], v49, v50))
      {
        v51 = sub_1004BBE64();
        v53 = v52;

        if (v45 != v51)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v53 = 0xE000000000000000;
        if (v45)
        {
          goto LABEL_50;
        }
      }

      if (v47 == v53)
      {
        v54 = 0;
        goto LABEL_51;
      }

LABEL_50:
      v54 = sub_1004BD9C4();
LABEL_51:

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v55 = v4 + 1;
      if (v54)
      {
        break;
      }

      v38 = v57;
      if (v55 != v63)
      {
        *v4 = *v39;
      }

      --v4;
      v63 = v39;
      v37 = &off_1005F2000;
      if (v39 <= v58)
      {
        v63 = v39;
        v13 = v58;
        v34 = __dsta;
        goto LABEL_61;
      }
    }

    v34 = v57;
    if (v55 != __dsta)
    {
      *v4 = *v57;
    }

    v13 = v58;
    v37 = &off_1005F2000;
    if (v63 <= v58)
    {
      break;
    }

    v5 = v57;
  }

  while (v57 > v60);
LABEL_61:
  if (v34 != v13 || v34 >= (v13 + ((v63 - v13 + (v63 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v34, v13, 8 * (v63 - v13));
  }

  return 1;
}

uint64_t sub_10024DAF4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10024DB80(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_10024DBE4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_10024DD3C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_10003D034(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t (*sub_10024DEA4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1004BD484();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10024DF24;
  }

  __break(1u);
  return result;
}

uint64_t *sub_10024DF2C(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1004BD484();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10024F890;
  }

  __break(1u);
  return result;
}

void (*sub_10024DFAC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1004BD484();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10024E02C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10024E034(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1004BD484();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_10024E0B4;
  }

  __break(1u);
  return result;
}

void *sub_10024E0BC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1004BD6A4();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10024C8A0(v3, 0);
  sub_100023D18((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

BOOL _s9MusicCore24SharePlayTogetherSessionC11ParticipantV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004B7B14();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&unk_100608408, &unk_1004D6DF0);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = sub_100003ABC(&qword_100608618, &qword_1004D7038);
  __chkstk_darwin();
  v12 = &v21 - v11;
  if (*a1 != *a2 && (sub_1004BD9C4() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 24);
  v14 = *(a2 + 24);
  if (v13)
  {
    if (!v14 || (*(a1 + 16) != *(a2 + 16) || v13 != v14) && (sub_1004BD9C4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  v15 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  v16 = *(v10 + 48);
  sub_10000F778(a1 + v15, v12, &unk_100608408, &unk_1004D6DF0);
  sub_10000F778(a2 + v15, &v12[v16], &unk_100608408, &unk_1004D6DF0);
  v17 = *(v5 + 48);
  if (v17(v12, 1, v4) != 1)
  {
    sub_10000F778(v12, v9, &unk_100608408, &unk_1004D6DF0);
    if (v17(&v12[v16], 1, v4) == 1)
    {
      (*(v5 + 8))(v9, v4);
      goto LABEL_17;
    }

    (*(v5 + 32))(v7, &v12[v16], v4);
    sub_10024F08C(&unk_100608620, &type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    v19 = sub_1004BBD84();
    v20 = *(v5 + 8);
    v20(v7, v4);
    v20(v9, v4);
    sub_100007214(v12, &unk_100608408, &unk_1004D6DF0);
    return (v19 & 1) != 0;
  }

  if (v17(&v12[v16], 1, v4) != 1)
  {
LABEL_17:
    sub_100007214(v12, &qword_100608618, &qword_1004D7038);
    return 0;
  }

  sub_100007214(v12, &unk_100608408, &unk_1004D6DF0);
  return 1;
}

void sub_10024E508(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a4)
  {
    sub_100004D90(a2, a3);
  }
}

uint64_t sub_10024E550(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10024E568()
{

  return swift_deallocObject();
}

uint64_t sub_10024E5C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&unk_100608408, &unk_1004D6DF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024E650(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001384C;

  return sub_10024B734(a1, v4, v5, v7, v6);
}

uint64_t sub_10024E728(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001384C;

  return sub_10024BD28(a1, v4, v5, v7, v6);
}

double sub_10024E7E8(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v8 = &v18 - v7;
  if (qword_1006000D8 != -1)
  {
    swift_once();
  }

  v9 = sub_1004B80B4();
  sub_100007084(v9, static Logger.sharePlayTogether);
  v10 = sub_1004B8094();
  v11 = sub_1004BC9A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, a1, v12, 2u);
  }

  v13 = sub_1004BC4B4();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  sub_1004BC474();
  v14 = v6;
  v15 = sub_1004BC464();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v14;
  sub_1000FD6BC(0, 0, v8, a3, v16);

  return result;
}

void sub_10024E9CC(uint64_t a1)
{
  sub_10024EE40(319, &qword_100608458, &type metadata for String, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_100214418(319, &qword_100608460, &qword_100608370, &qword_1004D6C90);
    if (v2 <= 0x3F)
    {
      sub_10024EE40(319, &qword_100608468, &type metadata for Int, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_100214418(319, &qword_100608470, &qword_1006083B0, &qword_1004D6D90);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_10024EC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003ABC(&unk_100608408, &unk_1004D6DF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10024ECD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&unk_100608408, &unk_1004D6DF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10024ED80(uint64_t a1)
{
  sub_10024EE40(319, &qword_1006084E0, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10024EE90(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10024EE40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10024EE90(uint64_t a1)
{
  if (!qword_1006084E8)
  {
    sub_1004B7B14();
    v1 = sub_1004BD174();
    if (!v2)
    {
      atomic_store(v1, &qword_1006084E8);
    }
  }
}

uint64_t sub_10024EEE8(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_10024EF40()
{

  return swift_deallocObject();
}

uint64_t sub_10024EF78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10024EFDC()
{
  result = qword_100608598;
  if (!qword_100608598)
  {
    sub_100009130(255, &qword_100608590, MRUserIdentity_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100608598);
  }

  return result;
}

uint64_t sub_10024F044@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100009178(a1, a1[3]);
  result = sub_1004B7BE4();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10024F08C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10024F0E8(uint64_t a1)
{
  v4 = *(sub_100003ABC(&qword_100608588, &qword_1004D6F70) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000136EC;

  return sub_100249C3C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10024F228(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100003ABC(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v5, v3);

  return swift_deallocObject();
}

uint64_t sub_10024F2FC(uint64_t a1)
{
  v4 = *(sub_100003ABC(&qword_1006085B8, &qword_1004D6FB8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001384C;

  return sub_10024A3D0(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_10024F428()
{
  result = qword_1006085C0;
  if (!qword_1006085C0)
  {
    sub_100003B68(&qword_1006085B8, &qword_1004D6FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006085C0);
  }

  return result;
}

uint64_t sub_10024F48C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024F4F0(uint64_t a1)
{
  v2 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10024F54C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&unk_100608408, &unk_1004D6DF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024F5BC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10024F604(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000136EC;

  return sub_10024C4BC(a1, v4, v5, v6);
}

uint64_t sub_10024F6B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001384C;

  return sub_10024C2D4(a1, v4, v5, v6);
}

uint64_t sub_10024F76C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10024F7AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001384C;

  return sub_10024C2D4(a1, v4, v5, v6);
}

uint64_t GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(uint64_t a1, char a2, char a3)
{
  *(v4 + 225) = a3;
  *(v4 + 224) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  *(v4 + 32) = swift_task_alloc();
  v5 = type metadata accessor for GroupActivitiesManager.Activity(0);
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  *(v4 + 56) = *(v6 + 64);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  sub_100003ABC(&qword_100608670, &qword_1004D7050);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = type metadata accessor for GroupActivitiesManager.PrepareResult(0);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v7 = sub_1004B7554();
  *(v4 + 136) = v7;
  *(v4 + 144) = *(v7 - 8);
  *(v4 + 152) = swift_task_alloc();
  v8 = sub_1004B7574();
  *(v4 + 160) = v8;
  *(v4 + 168) = *(v8 - 8);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = sub_1004BC474();
  *(v4 + 192) = sub_1004BC464();
  v10 = sub_1004BC3E4();
  *(v4 + 200) = v10;
  *(v4 + 208) = v9;

  return _swift_task_switch(sub_10024FB40, v10, v9);
}

uint64_t sub_10024FB40()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 80);
  v5 = &enum case for AuthorizationPromptOptions.PromptCondition.always(_:);
  if (!*(v0 + 224))
  {
    v5 = &enum case for AuthorizationPromptOptions.PromptCondition.automatic(_:);
  }

  (*(*(v0 + 144) + 104))(*(v0 + 152), *v5, *(v0 + 136));
  sub_1004B7564();
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = sub_10024FCAC;
  v7 = *(v0 + 128);
  v8 = *(v0 + 80);

  return sub_10025C788(v7, v8);
}

uint64_t sub_10024FCAC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  sub_100007214(v2, &qword_100608670, &qword_1004D7050);
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);

  return _swift_task_switch(sub_10024FE00, v4, v3);
}

uint64_t sub_10024FE00()
{
  v43 = v0;

  if (qword_100600120 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = sub_1004B80B4();
  sub_100007084(v3, static Logger.groupActivities);
  sub_10026A2D0(v2, v1, type metadata accessor for GroupActivitiesManager.PrepareResult);
  v4 = sub_1004B8094();
  v5 = sub_1004BC9A4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v42 = v10;
    *v9 = 136446210;
    sub_10026A2D0(v7, v8, type metadata accessor for GroupActivitiesManager.PrepareResult);
    v11 = sub_1004BBF04();
    v13 = v12;
    sub_10026A624(v7, type metadata accessor for GroupActivitiesManager.PrepareResult);
    v14 = sub_100012018(v11, v13, &v42);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "prepareForActivation result=%{public}s", v9, 0xCu);
    sub_100004C6C(v10);
  }

  else
  {

    sub_10026A624(v7, type metadata accessor for GroupActivitiesManager.PrepareResult);
  }

  v15 = v0[13];
  v16 = v0[5];
  v17 = v0[6];
  sub_10026A2D0(v0[16], v15, type metadata accessor for GroupActivitiesManager.PrepareResult);
  v18 = *(v17 + 48);
  if (v18(v15, 4, v16))
  {
    v19 = v0[16];
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[5];
    (*(v0[21] + 8))(v0[22], v0[20]);
    sub_10026A624(v20, type metadata accessor for GroupActivitiesManager.PrepareResult);
    sub_10026A268(v19, v21, type metadata accessor for GroupActivitiesManager.PrepareResult);
    if ((v18(v21, 4, v22) | 2) == 3)
    {
      v41 = 0;
    }

    else
    {
      sub_10026A624(v0[12], type metadata accessor for GroupActivitiesManager.PrepareResult);
      v41 = 1;
    }
  }

  else
  {
    v23 = v0[21];
    v39 = v0[20];
    v40 = v0[22];
    v38 = v0[16];
    v25 = v0[8];
    v24 = v0[9];
    v26 = v0[6];
    v27 = v0[3];
    v28 = v0[4];
    v37 = v28;
    v29 = v0[2];
    sub_10026A268(v0[13], v24, type metadata accessor for GroupActivitiesManager.Activity);
    sub_10025D1B0();
    v30 = sub_1004BC4B4();
    v41 = 1;
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    sub_10026A2D0(v24, v25, type metadata accessor for GroupActivitiesManager.Activity);
    v31 = v29;

    v32 = sub_1004BC464();
    v33 = (*(v26 + 80) + 48) & ~*(v26 + 80);
    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = &protocol witness table for MainActor;
    v34[4] = v29;
    v34[5] = v27;
    sub_10026A268(v25, v34 + v33, type metadata accessor for GroupActivitiesManager.Activity);
    sub_1000FD6BC(0, 0, v37, &unk_1004D7068, v34);

    sub_10026A624(v24, type metadata accessor for GroupActivitiesManager.Activity);
    sub_10026A624(v38, type metadata accessor for GroupActivitiesManager.PrepareResult);
    (*(v23 + 8))(v40, v39);
  }

  v35 = v0[1];

  return v35(v41);
}

uint64_t GroupActivitiesManager.leave(performLeaveCommand:)(char a1)
{
  *(v2 + 136) = v1;
  *(v2 + 280) = a1;
  *(v2 + 144) = sub_1004BC474();
  *(v2 + 152) = sub_1004BC464();
  v4 = sub_1004BC3E4();
  *(v2 + 160) = v4;
  *(v2 + 168) = v3;

  return _swift_task_switch(sub_100250404, v4, v3);
}

uint64_t sub_100250404(uint64_t a1, uint64_t a2)
{
  if (qword_100600120 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  *(v2 + 176) = sub_100007084(v3, static Logger.groupActivities);
  v4 = sub_1004B8094();
  v5 = sub_1004BC9A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v2 + 280);
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "👋🏻 Leaving session. Will perform leaveCommand=%{BOOL,public}d", v7, 8u);
  }

  v8 = *(v2 + 280);

  if (v8 == 1)
  {
    v9 = *(v2 + 136);
    v10 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress;
    *(v2 + 184) = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress;
    *(v9 + v10) = 1;
    swift_beginAccess();
    v11 = v9[5];
    v12 = v9[6];
    sub_100009178(v9 + 2, v11);
    v13 = *(v11 - 8);
    v14 = swift_task_alloc();
    *(v2 + 192) = v14;
    (*(v13 + 16))();
    v15 = (*(v12 + 48))(v11, v12);
    *(v2 + 200) = v15;
    (*(v13 + 8))(v14, v11);
    if (v15)
    {
      v16 = *(v2 + 136);
      *(v2 + 40) = &type metadata for Player.LeaveSessionCommand;
      *(v2 + 48) = &protocol witness table for Player.LeaveSessionCommand;
      *(v2 + 208) = [objc_opt_self() systemRoute];
      *(v2 + 120) = v16;

      v17 = sub_1004BBF34();
      *(v2 + 80) = &type metadata for Player.CommandIssuerIdentity;
      *(v2 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v2 + 56) = v17;
      *(v2 + 64) = v18;
      *(v2 + 216) = sub_1004BC464();
      v20 = sub_1004BC3E4();
      *(v2 + 224) = v20;
      *(v2 + 232) = v19;

      return _swift_task_switch(sub_100250864, v20, v19);
    }

    *(*(v2 + 136) + *(v2 + 184)) = 0;
  }

  else
  {
  }

  v21 = *(v2 + 136);
  v22 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  if (*(v21 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    sub_1004B7484();
  }

  v23 = *(v2 + 136);
  *(v21 + v22) = 0;

  sub_10026012C();
  v24 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v25 = *(v23 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v25)
  {

    v26 = sub_1004B8094();
    v27 = sub_1004BC9A4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Leave completed, pending session found", v28, 2u);
    }

    *(v21 + v22) = v25;
    swift_retain_n();

    sub_10026012C();

    *(v23 + v24) = 0;
  }

  v29 = *(v2 + 8);

  return v29();
}

uint64_t sub_100250864()
{
  v1 = v0[26];
  sub_100003ABC(&unk_100606020, &unk_1004C8190);
  v2 = swift_allocObject();
  v0[30] = v2;
  *(v2 + 16) = xmmword_1004C50A0;
  sub_10001342C((v0 + 2), v2 + 32);
  v0[31] = sub_1004BC464();
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = sub_100250964;

  return sub_1001E4818(v2, 0x10000, 1, v1, 0, (v0 + 7));
}

uint64_t sub_100250964(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {

    v4 = sub_1004BC3E4();
    v6 = v5;
    v7 = sub_100250C58;
  }

  else
  {
    v4 = sub_1004BC3E4();
    v6 = v8;
    v7 = sub_100250ADC;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100250ADC()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(sub_100250B48, v1, v2);
}

uint64_t sub_100250B48()
{
  v1 = *(v0 + 264);

  if (v1 >> 62)
  {
    v4 = sub_1004BD6A4();
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    sub_1004BD484();
    swift_unknownObjectRelease();
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return _swift_task_switch(v4, v2, v3);
  }

LABEL_5:
  v5 = *(v0 + 200);

  sub_100007214(v0 + 56, &qword_100601C48, &unk_1004D50E0);
  sub_100004C6C((v0 + 16));

  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = sub_100251018;

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_100250C58()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(sub_100250CBC, v1, v2);
}

uint64_t sub_100250CBC()
{
  v1 = v0[26];
  v2 = v0[25];

  v3 = v0[20];
  v4 = v0[21];

  return _swift_task_switch(sub_100250D2C, v3, v4);
}

uint64_t sub_100250D2C()
{
  v20 = v0;

  sub_100007214((v0 + 7), &qword_100601C48, &unk_1004D50E0);
  sub_100004C6C(v0 + 2);

  swift_errorRetain();
  v1 = sub_1004B8094();
  v2 = sub_1004BC9A4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[34];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136446210;
    v0[16] = v3;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v6 = sub_1004BBF04();
    v8 = sub_100012018(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to perform leaveCommand with error=%{public}s", v4, 0xCu);
    sub_100004C6C(v5);
  }

  else
  {
  }

  *(v0[17] + v0[23]) = 0;
  v9 = v0[17];
  v10 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  if (*(v9 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    sub_1004B7484();
  }

  v11 = v0[17];
  *(v9 + v10) = 0;

  sub_10026012C();
  v12 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v13 = *(v11 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v13)
  {

    v14 = sub_1004B8094();
    v15 = sub_1004BC9A4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Leave completed, pending session found", v16, 2u);
    }

    *(v9 + v10) = v13;
    swift_retain_n();

    sub_10026012C();

    *(v11 + v12) = 0;
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_100251018()
{

  *(v0[17] + v0[23]) = 0;
  v1 = v0[17];
  v2 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  if (*(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    sub_1004B7484();
  }

  v3 = v0[17];
  *(v1 + v2) = 0;

  sub_10026012C();
  v4 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v5 = *(v3 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v5)
  {

    v6 = sub_1004B8094();
    v7 = sub_1004BC9A4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Leave completed, pending session found", v8, 2u);
    }

    *(v1 + v2) = v5;
    swift_retain_n();

    sub_10026012C();

    *(v3 + v4) = 0;
  }

  v9 = v0[1];

  return v9();
}

void GroupActivitiesManager.postEvent(_:participantID:)(id *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v187 = a3;
  v185 = a2;
  v6 = a1[1];
  v170 = *a1;
  v169 = v6;
  v7 = a1[3];
  v168 = a1[2];
  v167 = v7;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v174 = v156 - v8;
  v177 = sub_1004B7304();
  v176 = *(v177 - 8);
  __chkstk_darwin();
  v171 = v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v175 = v156 - v10;
  __chkstk_darwin();
  v178 = v156 - v11;
  v166 = sub_1004B7244();
  v162 = *(v166 - 8);
  __chkstk_darwin();
  v164 = v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_1004B7264();
  v161 = *(v165 - 8);
  __chkstk_darwin();
  v163 = v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_1004B72F4();
  v180 = *(v181 - 8);
  __chkstk_darwin();
  v173 = v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v179 = v156 - v15;
  v191 = sub_1004B6D14();
  v184 = *(v191 - 8);
  __chkstk_darwin();
  v190 = v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100608690, &qword_1004D7078);
  __chkstk_darwin();
  v182 = v156 - v17;
  v192 = sub_1004B7544();
  v193 = *(v192 - 8);
  __chkstk_darwin();
  v172 = v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v194 = v156 - v19;
  __chkstk_darwin();
  v189 = v156 - v20;
  __chkstk_darwin();
  v186 = v156 - v21;
  v22 = sub_100003ABC(&qword_100608698, &qword_1004D7080);
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v25 = v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = v156 - v26;
  swift_beginAccess();
  v28 = v3[7];
  v29 = v3[8];
  v30 = v3[9];
  v31 = v3[10];
  *(v3 + 7) = xmmword_1004C5080;
  v3[9] = 0;
  v3[10] = 0;
  sub_10026A684(v28, v29, v30, v31);
  swift_beginAccess();
  v33 = v3[5];
  v32 = v3[6];
  sub_100009178(v3 + 2, v33);
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin();
  v37 = v156 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v37, v35);
  v38 = (*(v32 + 56))(v33, v32);
  (*(v34 + 8))(v37, v33);
  v39 = [v38 applicationState];

  v183 = a1;
  if ((*(a1 + 48) | 4) == 4 && v39 || !*(v4 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {
    return;
  }

  sub_1004B7494();
  (*(v23 + 104))(v25, enum case for GroupSession.State.joined<A>(_:), v22);
  v41 = type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_10026ACA4(&qword_1006086A0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  v156[0] = v41;
  v42 = sub_1004B7474();
  v43 = *(v23 + 8);
  v43(v25, v22);
  v43(v27, v22);
  if ((v42 & 1) == 0)
  {
LABEL_27:

    return;
  }

  v188 = sub_10025F620(v185, v187);
  v160 = v44;
  v156[1] = v40;
  v45 = sub_1004B7434();
  v46 = v45;
  v47 = v45 + 56;
  v48 = 1 << *(v45 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v45 + 56);
  v51 = (v48 + 63) >> 6;
  v158 = (v193 + 16);
  v159 = (v193 + 32);
  v157 = v184 + 1;
  v184 = (v193 + 8);

  v52 = 0;
  v53 = v192;
  if (!v50)
  {
LABEL_9:
    while (1)
    {
      v54 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v54 >= v51)
      {

        v66 = 1;
        v67 = v186;
        v68 = v182;
        goto LABEL_22;
      }

      v50 = *(v47 + 8 * v54);
      ++v52;
      if (v50)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_82;
  }

  while (1)
  {
    v54 = v52;
LABEL_12:
    v55 = v46;
    v56 = v193;
    v57 = *(v46 + 48) + *(v193 + 72) * (__clz(__rbit64(v50)) | (v54 << 6));
    v58 = v189;
    (*(v193 + 16))(v189, v57, v53);
    v59 = v53;
    v60 = *(v56 + 32);
    v60(v194, v58, v59);
    v61 = v190;
    sub_1004B7534();
    v62 = sub_1004B6CE4();
    v64 = v63;
    (*v157)(v61, v191);
    if (v62 == v188 && v64 == v160)
    {

      goto LABEL_21;
    }

    v65 = sub_1004BD9C4();

    if (v65)
    {
      break;
    }

    v50 &= v50 - 1;
    v53 = v192;
    (*v184)(v194, v192);
    v52 = v54;
    v46 = v55;
    if (!v50)
    {
      goto LABEL_9;
    }
  }

LABEL_21:

  v68 = v182;
  v69 = v192;
  v60(v182, v194, v192);
  v53 = v69;
  v66 = 0;
  v67 = v186;
LABEL_22:
  v70 = v193;
  (*(v193 + 56))(v68, v66, 1, v53);

  if ((*(v70 + 48))(v68, 1, v53) == 1)
  {
    sub_100007214(v68, &qword_100608690, &qword_1004D7078);
    if (qword_100600120 == -1)
    {
LABEL_24:
      v71 = sub_1004B80B4();
      sub_100007084(v71, static Logger.groupActivities);
      v72 = v187;

      v73 = sub_1004B8094();
      v74 = sub_1004BC984();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *&v197[0] = v76;
        *v75 = 136446210;
        *(v75 + 4) = sub_100012018(v185, v72, v197);
        _os_log_impl(&_mh_execute_header, v73, v74, "No active participant with identifier=%{public}s", v75, 0xCu);
        sub_100004C6C(v76);
      }

      goto LABEL_27;
    }

LABEL_82:
    swift_once();
    goto LABEL_24;
  }

  v77 = v53;
  (*v159)(v67, v68, v53);
  v78 = *v183;
  v79 = *(v183 + 8);
  v80 = *(v183 + 9) | ((*(v183 + 13) | (*(v183 + 15) << 16)) << 32);
  v82 = v183[2];
  v81 = v183[3];
  v83 = *(v183 + 48);
  v84 = v79 | (v80 << 8);
  if (v83 <= 2)
  {
    if (*(v183 + 48))
    {
      v85 = v53;
      v86 = v181;
      v87 = v183;
      if (v83 != 1)
      {
        if (v83 == 2)
        {
          v88 = v179;
          sub_1004B72B4();
          goto LABEL_53;
        }

        goto LABEL_76;
      }

      v88 = v179;
      sub_1004B72D4();
LABEL_53:
      (*v158)(v172, v67, v85);
      (*(v180 + 16))(v173, v88, v86);
      v118 = *(v87 + 8);
      v119 = *(v87 + 48);
      if (v119 == 4)
      {
        v120 = v177;
      }

      else
      {
        v120 = v177;
        v121 = v174;
        if (v119 == 5)
        {
          v123 = *(v87 + 32);
          v122 = *(v87 + 40);
          v124 = *(v87 + 16);
          v125 = *(v87 + 24);
          if (!(v118 | *v87 | v122 | v123 | v125 | v124) || *v87 == 2 && !(v122 | v118 | v123 | v125 | v124))
          {
            v126 = sub_1004B6B04();
            (*(*(v126 - 8) + 56))(v121, 1, 1, v126);
LABEL_61:
            v127 = v178;
            sub_1004B7214();
            sub_1004B7404();
            v128 = v176;
            v129 = v175;
            if (qword_100600120 != -1)
            {
              swift_once();
            }

            v130 = sub_1004B80B4();
            sub_100007084(v130, static Logger.groupActivities);
            v131 = *(v128 + 16);
            v131(v129, v127, v120);
            v132 = sub_1004B8094();
            v133 = sub_1004BC9A4();
            if (os_log_type_enabled(v132, v133))
            {
              v134 = swift_slowAlloc();
              v135 = v120;
              v136 = swift_slowAlloc();
              *&v197[0] = v136;
              *v134 = 136446210;
              v131(v171, v129, v135);
              v137 = sub_1004BBF04();
              v139 = v138;
              v140 = *(v128 + 8);
              v140(v129, v135);
              v141 = sub_100012018(v137, v139, v197);

              *(v134 + 4) = v141;
              _os_log_impl(&_mh_execute_header, v132, v133, "Posting event=%{public}s", v134, 0xCu);
              sub_100004C6C(v136);

              v140(v178, v135);
              (*(v180 + 8))(v179, v181);
              (*v184)(v186, v192);
              return;
            }

            v142 = *(v128 + 8);
            v142(v129, v120);
            v142(v127, v120);
            (*(v180 + 8))(v88, v181);
            goto LABEL_66;
          }
        }
      }

      sub_1004B6AC4();
      goto LABEL_61;
    }

    v90 = (v162 + 8);
    v91 = (v161 + 8);
    v86 = v181;
    v92 = *v183;
    if (v79)
    {
      SharedListening.Event.Content.title.getter(v92, 1);
      v93 = v164;
      sub_1004B7234();
    }

    else
    {
      SharedListening.Event.Content.title.getter(v92, 0);
      v93 = v164;
      sub_1004B7224();
    }

    v117 = v163;
    sub_1004B7254();
    (*v90)(v93, v166);
    v88 = v179;
    sub_1004B7284();
    (*v91)(v117, v165);
    v85 = v77;
LABEL_52:
    v87 = v183;
    goto LABEL_53;
  }

  if (v83 == 3)
  {
    sub_1004B72E4();
    v94 = v4 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    v95 = (*(*(v156[0] - 8) + 48))(v94, 1);
    v85 = v53;
    v86 = v181;
    v87 = v183;
    if (v95 || (v143 = *(v94 + 7)) == 0 || (v144 = [*(v143 + 16) identifiers], v145 = objc_msgSend(v78, "identifiers"), v146 = objc_msgSend(v144, "intersectsSet:", v145), v144, v145, v88 = v179, (v146 & 1) == 0))
    {
      if (qword_100600120 != -1)
      {
        swift_once();
      }

      v96 = sub_1004B80B4();
      sub_100007084(v96, static Logger.groupActivities);
      v97 = v170;
      v98 = sub_1004B8094();
      v99 = sub_1004BC9A4();
      sub_10026A728(v87);
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *&v197[0] = v101;
        *v100 = 136446210;
        v102 = v97;
        v103 = [v78 description];
        v104 = sub_1004BBE64();
        v106 = v105;

        sub_10026A728(v87);
        v107 = sub_100012018(v104, v106, v197);

        *(v100 + 4) = v107;
        _os_log_impl(&_mh_execute_header, v98, v99, "Dispatching event for=%{public}s", v100, 0xCu);
        sub_100004C6C(v101);
      }

      sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
      v108 = sub_1004BCB44();
      v109 = swift_allocObject();
      *(v109 + 16) = v4;
      v110 = *(v87 + 16);
      *(v109 + 24) = *v87;
      *(v109 + 40) = v110;
      *(v109 + 56) = *(v87 + 32);
      *(v109 + 72) = *(v87 + 48);
      v111 = v187;
      *(v109 + 80) = v185;
      *(v109 + 88) = v111;
      sub_10026A6CC(v87, v197);

      OS_dispatch_queue.asyncAfter(_:block:)(sub_10026A880, v109, 1.0);

      (*(v180 + 8))(v179, v181);
LABEL_66:
      (*v184)(v186, v85);
      return;
    }

    goto LABEL_53;
  }

  if (v83 == 4)
  {
    v112 = v179;
    sub_1004B7274();
    v113 = v4[8];
    v194 = v4[7];
    v193 = v113;
    v114 = v4[9];
    v115 = v4[10];
    v4[7] = v78;
    *(v4 + 64) = v79;
    *(v4 + 71) = BYTE6(v80);
    *(v4 + 69) = WORD2(v80);
    *(v4 + 65) = v80;
    v4[9] = v82;
    v4[10] = v81;
    v88 = v112;
    sub_10026A8B0(v170, v169, v168, v167);
    v116 = v114;
    v67 = v186;
    sub_10026A684(v194, v193, v116, v115);
    v85 = v77;
    v86 = v181;
    goto LABEL_52;
  }

  v85 = v53;
  v86 = v181;
  v87 = v183;
  if (v83 == 5)
  {
    v89 = v183[5] | v183[4] | v82 | v81 | v84;
    if (v78 == 1 && !v89)
    {
      v88 = v179;
      sub_1004B72A4();
      goto LABEL_53;
    }

    if (v78 == 3 && !v89)
    {
      v88 = v179;
      sub_1004B72C4();
      goto LABEL_53;
    }

    if (v78 == 4 && !v89)
    {
      v88 = v179;
      sub_1004B7294();
      goto LABEL_53;
    }
  }

LABEL_76:
  if (qword_100600120 != -1)
  {
    swift_once();
  }

  v147 = sub_1004B80B4();
  sub_100007084(v147, static Logger.groupActivities);
  sub_10026A6CC(v87, v197);
  v148 = sub_1004B8094();
  v149 = sub_1004BC9A4();
  sub_10026A728(v87);
  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v196 = v151;
    *v150 = 136446210;
    v152 = *(v87 + 16);
    v197[0] = *v87;
    v197[1] = v152;
    v197[2] = *(v87 + 32);
    v198 = *(v87 + 48);
    sub_10026A6CC(v87, v195);
    v153 = sub_1004BBF04();
    v155 = sub_100012018(v153, v154, &v196);

    *(v150 + 4) = v155;
    _os_log_impl(&_mh_execute_header, v148, v149, "Event case not handle for event=%{public}s", v150, 0xCu);
    sub_100004C6C(v151);
  }

  (*v184)(v67, v85);
}

int64x2_t GroupActivitiesManager.Activity.Metadata.init()@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v3 = *(v2 + 28);
  v4 = sub_1004B6B04();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  result = vdupq_n_s64(0x4072C00000000000uLL);
  *(a1 + *(v2 + 32)) = result;
  return result;
}

uint64_t GroupActivitiesManager.Activity.Metadata.artworkSize.setter(double a1, double a2)
{
  result = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v6 = (v2 + *(result + 32));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t GroupActivitiesManager.Activity.Metadata.init(modelObject:)(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  sub_1004B6E64();
  v2[21] = swift_task_alloc();
  v3 = sub_1004BBE14();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_100252CBC, 0, 0);
}

uint64_t sub_100252CBC()
{
  v1 = *(v0 + 152);
  *(v1 + 4) = 0;
  v2 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v3 = *(v2 + 28);
  v4 = sub_1004B6B04();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[*(v2 + 32)] = vdupq_n_s64(0x4072C00000000000uLL);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 title];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1004BBE64();
      v11 = v10;
    }

    else
    {
      v18 = *(v0 + 192);
      v17 = *(v0 + 200);
      v19 = *(v0 + 176);
      v20 = *(v0 + 184);
      sub_1004BBDA4();
      (*(v20 + 16))(v18, v17, v19);
      if (qword_1005FFD30 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 200);
      v22 = *(v0 + 176);
      v23 = *(v0 + 184);
      v24 = qword_100617118;
      sub_1004B6DF4();
      v9 = sub_1004BBED4();
      v11 = v25;
      (*(v23 + 8))(v21, v22);
    }

    v26 = [v6 artist];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 name];

      if (v28)
      {
LABEL_12:
        v29 = sub_1004BBE64();
        v31 = v30;

LABEL_15:
        v43 = *(v0 + 152);
        v44 = [v6 artworkCatalog];
        goto LABEL_27;
      }
    }

    v144 = v11;
    v32 = v9;
    v33 = v1;
    v35 = *(v0 + 192);
    v34 = *(v0 + 200);
    v36 = *(v0 + 176);
    v37 = *(v0 + 184);
    sub_1004BBDA4();
    (*(v37 + 16))(v35, v34, v36);
    if (qword_1005FFD30 == -1)
    {
LABEL_14:
      v38 = *(v0 + 200);
      v39 = *(v0 + 176);
      v40 = *(v0 + 184);
      v41 = qword_100617118;
      sub_1004B6DF4();
      v29 = sub_1004BBED4();
      v31 = v42;
      (*(v40 + 8))(v38, v39);
      v1 = v33;
      v9 = v32;
      v11 = v144;
      goto LABEL_15;
    }

LABEL_69:
    swift_once();
    goto LABEL_14;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    objc_opt_self();
    v46 = swift_dynamicCastObjCClass();
    if (v46)
    {
      v6 = v46;
      v47 = [v46 name];
      if (v47)
      {
        v48 = v47;
        v9 = sub_1004BBE64();
        v11 = v49;
      }

      else
      {
        v75 = *(v0 + 192);
        v74 = *(v0 + 200);
        v76 = *(v0 + 176);
        v77 = *(v0 + 184);
        sub_1004BBDA4();
        (*(v77 + 16))(v75, v74, v76);
        if (qword_1005FFD30 != -1)
        {
          swift_once();
        }

        v78 = *(v0 + 200);
        v79 = *(v0 + 176);
        v80 = *(v0 + 184);
        v81 = qword_100617118;
        sub_1004B6DF4();
        v9 = sub_1004BBED4();
        v11 = v82;
        (*(v80 + 8))(v78, v79);
      }

      v83 = [v6 providerName];
      if (v83)
      {
        v84 = v83;
        v29 = sub_1004BBE64();
        v31 = v85;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      goto LABEL_15;
    }

    objc_opt_self();
    v70 = swift_dynamicCastObjCClass();
    if (v70)
    {
      v6 = v70;
      v71 = [v70 title];
      if (v71)
      {
        v72 = v71;
        v9 = sub_1004BBE64();
        v11 = v73;
      }

      else
      {
        v91 = *(v0 + 192);
        v90 = *(v0 + 200);
        v92 = *(v0 + 176);
        v93 = *(v0 + 184);
        sub_1004BBDA4();
        (*(v93 + 16))(v91, v90, v92);
        if (qword_1005FFD30 != -1)
        {
          swift_once();
        }

        v94 = *(v0 + 200);
        v95 = *(v0 + 176);
        v96 = *(v0 + 184);
        v97 = qword_100617118;
        sub_1004B6DF4();
        v9 = sub_1004BBED4();
        v11 = v98;
        (*(v96 + 8))(v94, v95);
      }

      v99 = [v6 artist];
      if (v99)
      {
        v100 = v99;
        v28 = [v99 name];

        if (v28)
        {
          goto LABEL_12;
        }
      }

      v144 = v11;
      v32 = v9;
      v33 = v1;
      v102 = *(v0 + 192);
      v101 = *(v0 + 200);
      v103 = *(v0 + 176);
      v104 = *(v0 + 184);
      sub_1004BBDA4();
      (*(v104 + 16))(v102, v101, v103);
      if (qword_1005FFD30 == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      objc_opt_self();
      v86 = swift_dynamicCastObjCClass();
      if (!v86)
      {
        objc_opt_self();
        v105 = swift_dynamicCastObjCClass();
        if (!v105)
        {
          sub_1004BD404(29);

          v127 = sub_10026AA98(&off_1005A6720);
          MPModelObject.humanDescription(including:)(v127);
          v129 = v128;
          v131 = v130;

          v146._countAndFlagsBits = v129;
          v146._object = v131;
          sub_1004BC024(v146);

          return sub_1004BD624();
        }

        v106 = v105;
        v107 = [v105 title];
        if (v107)
        {
          v108 = v107;
          v109 = sub_1004BBE64();
          v111 = v110;
        }

        else
        {
          v133 = *(v0 + 192);
          v132 = *(v0 + 200);
          v134 = *(v0 + 176);
          v135 = *(v0 + 184);
          sub_1004BBDA4();
          (*(v135 + 16))(v133, v132, v134);
          if (qword_1005FFD30 != -1)
          {
            swift_once();
          }

          v136 = *(v0 + 200);
          v137 = *(v0 + 176);
          v138 = *(v0 + 184);
          v139 = qword_100617118;
          sub_1004B6DF4();
          v109 = sub_1004BBED4();
          v111 = v140;
          (*(v138 + 8))(v136, v137);
        }

        v141 = *(v0 + 152);
        v44 = [v106 artworkCatalog];
        *v141 = v109;
        v141[1] = v111;
        *(v1 + 2) = 0;
        *(v1 + 3) = 0;
        if (v44)
        {
          goto LABEL_28;
        }

        goto LABEL_66;
      }

      v6 = v86;
      v87 = [v86 title];
      if (v87)
      {
        v88 = v87;
        v9 = sub_1004BBE64();
        v11 = v89;
      }

      else
      {
        v113 = *(v0 + 192);
        v112 = *(v0 + 200);
        v114 = *(v0 + 176);
        v115 = *(v0 + 184);
        sub_1004BBDA4();
        (*(v115 + 16))(v113, v112, v114);
        if (qword_1005FFD30 != -1)
        {
          swift_once();
        }

        v116 = *(v0 + 200);
        v117 = *(v0 + 176);
        v118 = *(v0 + 184);
        v119 = qword_100617118;
        sub_1004B6DF4();
        v9 = sub_1004BBED4();
        v11 = v120;
        (*(v118 + 8))(v116, v117);
      }

      v121 = [v6 show];
      if (v121)
      {
        v122 = v121;
        v28 = [v121 title];

        if (v28)
        {
          goto LABEL_12;
        }
      }

      v144 = v11;
      v32 = v9;
      v33 = v1;
      v124 = *(v0 + 192);
      v123 = *(v0 + 200);
      v125 = *(v0 + 176);
      v126 = *(v0 + 184);
      sub_1004BBDA4();
      (*(v126 + 16))(v124, v123, v125);
      if (qword_1005FFD30 == -1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_69;
  }

  v13 = v12;
  v14 = [v12 name];
  if (v14)
  {
    v15 = v14;
    v9 = sub_1004BBE64();
    v11 = v16;
  }

  else
  {
    v51 = *(v0 + 192);
    v50 = *(v0 + 200);
    v52 = *(v0 + 176);
    v53 = *(v0 + 184);
    sub_1004BBDA4();
    (*(v53 + 16))(v51, v50, v52);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v54 = *(v0 + 200);
    v55 = *(v0 + 176);
    v56 = *(v0 + 184);
    v57 = qword_100617118;
    sub_1004B6DF4();
    v9 = sub_1004BBED4();
    v11 = v58;
    (*(v56 + 8))(v54, v55);
  }

  v59 = [v13 curator];
  if (v59 && (v60 = v59, v61 = [v59 name], v60, v61))
  {
    v29 = sub_1004BBE64();
    v31 = v62;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v43 = *(v0 + 152);
  v44 = MPModelPlaylist.preferredArtworkCatalog.getter();
LABEL_27:
  *v43 = v9;
  v43[1] = v11;
  *(v1 + 2) = v29;
  v43[3] = v31;
  if (v44)
  {
LABEL_28:
    *(v0 + 208) = v44;
    v63 = v44;
    type metadata accessor for GroupActivitiesManager.ArtworkCachingReference(0, v45);
    v64 = swift_allocObject();
    *(v0 + 216) = v64;
    *(v64 + 16) = 0xD00000000000001ELL;
    *(v64 + 24) = 0x8000000100505030;
    v65 = v63;
    v66 = objc_opt_self();
    v67 = sub_1004BBE24();
    [v66 setCacheLimit:0 forCacheIdentifier:v67 cacheReference:v64];

    v68 = sub_1004BBE24();

    [v65 setCacheIdentifier:v68 forCacheReference:v64];

    [v65 setFittingSize:{300.0, 300.0}];
    [v65 setDestinationScale:0.0];
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_100253CDC;
    v69 = swift_continuation_init();
    *(v0 + 136) = sub_100003ABC(&qword_100604000, &qword_1004CE840);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10011DD78;
    *(v0 + 104) = &unk_1005BC028;
    *(v0 + 112) = v69;
    [v65 requestImageWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

LABEL_66:

  v142 = *(v0 + 8);

  return v142();
}

uint64_t sub_100253CDC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_100253EB4;
  }

  else
  {
    v2 = sub_100253DEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100253DEC()
{
  v1 = v0[26];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = [v4 CGImage];

  *(v3 + 32) = v5;

  v6 = v0[1];

  return v6();
}

uint64_t sub_100253EB4(uint64_t a1)
{
  v2 = v1[26];
  v4 = v1[19];
  v3 = v1[20];
  swift_willThrow();

  *(v4 + 32) = 0;

  v5 = v1[1];

  return v5();
}

uint64_t sub_100253F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  sub_100003ABC(&qword_1006086B0, &qword_1004D70A0);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_100254014, 0, 0);
}

uint64_t sub_100254014()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = type metadata accessor for GroupActivitiesManager.Activity(0);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  v4 = *(v3 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2 + v4, 1, 1, v5);
  if (v1 && (v7 = v1, v8 = [v7 sharedListeningProperties], v0[24] = v8, v7, v8))
  {
    v9 = v0[22];
    v10 = v0[21];
    v27 = v0[20];
    v28 = v0[23];
    v11 = v0[19];
    sub_100007214(v11, &qword_1006086B8, &qword_1004D70A8);
    sub_10001342C(v9, v11);
    sub_10003F42C(v10, v2 + v4, &qword_1006086B0, &qword_1004D70A0);
    type metadata accessor for CodableListeningProperties(0, v12);
    v13 = swift_allocObject();
    *(v13 + 16) = v8;
    *(v2 + 40) = v27;
    *(v2 + 48) = v13;
    sub_10000F778(v2 + v4, v28, &qword_1006086B0, &qword_1004D70A0);
    v14 = (*(v6 + 48))(v28, 1, v5);
    v15 = v0[23];
    if (v14 == 1)
    {
      v16 = v7;
      v17 = v8;
      sub_100007214(v15, &qword_1006086B0, &qword_1004D70A0);
      if (qword_100600118 != -1)
      {
        swift_once();
      }

      v18 = qword_100608660;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_100254418;
      v19 = swift_continuation_init();
      v0[17] = sub_100003ABC(&qword_100608F78, &unk_1004D7800);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_10011DD78;
      v0[13] = &unk_1005BC268;
      v0[14] = v19;
      [v16 getRepresentativeObjectWithProperties:v18 completion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    v25 = v0[21];
    sub_100004C6C(v0[22]);
    sub_100007214(v25, &qword_1006086B0, &qword_1004D70A0);
    sub_100007214(v15, &qword_1006086B0, &qword_1004D70A0);

    v24 = v0[1];
  }

  else
  {
    v20 = v0[22];
    v21 = v0[21];
    v22 = v0[19];
    sub_10026C44C();
    swift_allocError();
    *v23 = 96;
    swift_willThrow();

    sub_100004C6C(v20);
    sub_100007214(v21, &qword_1006086B0, &qword_1004D70A0);
    sub_10026A624(v22, type metadata accessor for GroupActivitiesManager.Activity);

    v24 = v0[1];
  }

  return v24();
}

uint64_t sub_100254418()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_100254608;
  }

  else
  {
    v2 = sub_100254528;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100254528()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[19];
  v6 = [v4 innermostModelObject];

  sub_100004C6C(v3);
  sub_100007214(v2, &qword_1006086B0, &qword_1004D70A0);
  type metadata accessor for CodableModelObjectIdentity(0, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v5 + 56) = v8;

  v9 = v0[1];

  return v9();
}

uint64_t sub_100254608(uint64_t a1)
{
  v2 = v1[24];
  v4 = v1[21];
  v3 = v1[22];
  v5 = v1[19];
  swift_willThrow();

  sub_100004C6C(v3);
  sub_100007214(v4, &qword_1006086B0, &qword_1004D70A0);
  type metadata accessor for CodableModelObjectIdentity(0, v6);
  swift_allocObject();
  swift_deallocPartialClassInstance();
  *(v5 + 56) = 0;

  v7 = v1[1];

  return v7();
}

uint64_t GroupActivitiesManager.Activity.metadata.getter(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[9] = swift_task_alloc();
  sub_100003ABC(&qword_1006086B0, &qword_1004D70A0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  sub_1004B7354();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10025488C, 0, 0);
}

uint64_t sub_10025488C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = sub_1004B73D4();
  v0[17] = v5;
  v6 = swift_allocBox();
  v8 = v7;
  v0[18] = v6;
  v0[19] = v7;
  sub_1004B73C4();
  sub_1004B7384();
  sub_1004B7344();
  sub_1004B7394();
  v9 = type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_10000F778(v4 + *(v9 + 32), v3, &qword_1006086B0, &qword_1004D70A0);
  v10 = *(v2 + 48);
  v0[20] = v10;
  v0[21] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v3, 1, v1) != 1)
  {
    v22 = v0[15];
    v23 = v0[12];
    v24 = v0[9];
    v57 = v0[7];
    sub_10026A268(v0[11], v22, type metadata accessor for GroupActivitiesManager.Activity.Metadata);

    sub_1004B73A4();

    sub_1004B73B4();
    v25 = *(v22 + 32);
    sub_1004B7374();
    sub_10000F778(v22 + *(v23 + 28), v24, &qword_100600DE0, &unk_1004C66D0);
    sub_1004B7364();
    sub_10026A624(v22, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
    (*(*(v5 - 8) + 16))(v57, v8, v5);
    goto LABEL_30;
  }

  v11 = v0[8];
  sub_100007214(v0[11], &qword_1006086B0, &qword_1004D70A0);
  v12 = *(v11 + 56);
  if (!v12)
  {
    (*(*(v5 - 8) + 16))(v0[7], v8, v5);
    goto LABEL_30;
  }

  v13 = *(v12 + 16);
  v0[22] = v13;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v14 = qword_100600100;
    v15 = v13;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = qword_100608648;
    v17 = objc_opt_self();
    v18 = objc_opt_self();
    v19 = v16;
    v20 = [v18 kindWithVariants:3];
    v21 = [v17 kindWithSongKind:v20];

    goto LABEL_25;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v26 = objc_opt_self();
    v27 = v13;
    v28 = _sSo20MPModelPlaylistEntryC9MusicCoreE07defaultD4KindSo0abcG0CvgZ_0();
    v21 = [v26 kindWithPlaylistEntryKind:v28 options:0];

    if (qword_100600108 != -1)
    {
      swift_once();
    }

    v29 = qword_100608650;
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100009130(0, &qword_1006086C0, MPModelRadioStationKind_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v31 = v13;
      v21 = [ObjCClassFromMetadata identityKind];
      if (qword_100600110 != -1)
      {
        swift_once();
      }

      v29 = qword_100608658;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v32 = objc_opt_self();
        v33 = v13;
        v34 = [v32 kindWithVariants:7];
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            v51 = v13;
            sub_1004BD404(29);

            v52 = sub_10026AA98(&off_1005A6748);
            MPModelObject.humanDescription(including:)(v52);
            v54 = v53;
            v56 = v55;

            v60._countAndFlagsBits = v54;
            v60._object = v56;
            sub_1004BC024(v60);

            return sub_1004BD624();
          }

          v49 = objc_opt_self();
          v50 = v13;
          v21 = [v49 kindWithVariants:3];
          if (qword_1006000F0 != -1)
          {
            swift_once();
          }

          v29 = qword_100608640;
          goto LABEL_24;
        }

        v35 = objc_opt_self();
        v36 = v13;
        v34 = [v35 kindWithVariants:3];
      }

      v21 = v34;
      if (qword_1006000E0 != -1)
      {
        swift_once();
      }

      v29 = qword_100608630;
    }
  }

LABEL_24:
  v19 = v29;
LABEL_25:
  v0[23] = v19;
  v0[24] = v21;
  sub_10000F778(v0[8], (v0 + 2), &qword_1006086B8, &qword_1004D70A8);
  v37 = v0[5];
  if (v37)
  {
    v38 = v0[6];
    sub_100009178(v0 + 2, v0[5]);
    v58 = (*(v38 + 8) + **(v38 + 8));
    v39 = swift_task_alloc();
    v0[25] = v39;
    *v39 = v0;
    v39[1] = sub_100255120;
    v40 = v0[10];

    return v58(v40, v13, v21, v19, v37, v38);
  }

  v42 = v0[12];
  v43 = v0[13];
  v44 = v0[10];

  sub_100007214((v0 + 2), &qword_1006086B8, &qword_1004D70A8);
  (*(v43 + 56))(v44, 1, 1, v42);
  v6 = v0[18];
  v45 = v0[19];
  v46 = v0[17];
  v47 = v0[7];
  sub_100007214(v0[10], &qword_1006086B0, &qword_1004D70A0);
  (*(*(v46 - 8) + 16))(v47, v45, v46);
LABEL_30:
  sub_100255460(v6);

  v48 = v0[1];

  return v48();
}

uint64_t sub_100255120()
{

  return _swift_task_switch(sub_10025521C, 0, 0);
}

uint64_t sub_10025521C()
{
  v1 = v0[20];
  v2 = v0[12];
  v3 = v0[10];
  sub_100004C6C(v0 + 2);
  v4 = v1(v3, 1, v2);
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[22];
  if (v4 == 1)
  {

    v8 = v0[18];
    v9 = v0[19];
    v10 = v0[17];
    v11 = v0[7];
    sub_100007214(v0[10], &qword_1006086B0, &qword_1004D70A0);
    (*(*(v10 - 8) + 16))(v11, v9, v10);
  }

  else
  {
    v8 = v0[18];
    v12 = v0[19];
    v13 = v0[14];
    v14 = v0[9];
    v19 = v0[17];
    v20 = v0[7];
    v18 = v0[12];
    sub_10026A268(v0[10], v13, type metadata accessor for GroupActivitiesManager.Activity.Metadata);

    sub_1004B73A4();

    sub_1004B73B4();
    v15 = *(v13 + 32);
    sub_1004B7374();
    sub_10000F778(v13 + *(v18 + 28), v14, &qword_100600DE0, &unk_1004C66D0);
    sub_1004B7364();

    sub_10026A624(v13, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
    (*(*(v19 - 8) + 16))(v20, v12, v19);
  }

  sub_100255460(v8);

  v16 = v0[1];

  return v16();
}

void sub_100255460(uint64_t a1)
{
  v1 = sub_1004B73D4();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100600120 != -1)
  {
    swift_once();
  }

  v5 = sub_1004B80B4();
  sub_100007084(v5, static Logger.groupActivities);

  v15 = sub_1004B8094();
  v6 = sub_1004BC9A4();

  if (os_log_type_enabled(v15, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v9 = swift_projectBox();
    swift_beginAccess();
    (*(v2 + 16))(v4, v9, v1);
    v10 = sub_1004BBF34();
    v12 = sub_100012018(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v15, v6, "Sending activity metadata=%{public}s", v7, 0xCu);
    sub_100004C6C(v8);
  }

  else
  {
    v13 = v15;
  }
}

void sub_1002556A4()
{
  sub_100003ABC(&unk_1006040A0, &unk_1004CF310);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C50C0;
  *(v0 + 32) = sub_1004BBE64();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1004BBE64();
  *(v0 + 56) = v2;
  sub_100003ABC(&qword_100604210, &unk_1004D4030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50C0;
  *(inited + 32) = sub_1004BBE64();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004C50A0;
  *(v5 + 32) = sub_1004BBE64();
  *(v5 + 40) = v6;
  isa = sub_1004BC284().super.isa;

  v8 = objc_opt_self();
  v9 = [v8 propertySetWithProperties:isa];

  *(inited + 48) = v9;
  *(inited + 56) = sub_1004BBE64();
  *(inited + 64) = v10;
  v11 = sub_1004BC284().super.isa;
  v12 = [v8 propertySetWithProperties:v11];

  *(inited + 72) = v12;
  sub_10003D14C(inited);
  swift_setDeallocating();
  sub_100003ABC(&qword_100604218, qword_1004CEE50);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MPPropertySet);
  v14 = sub_1004BC284().super.isa;

  sub_100009130(0, &qword_100605EC0, MPPropertySet_ptr);
  v15 = sub_1004BBC24().super.isa;

  v16 = [v13 initWithProperties:v14 relationships:v15];

  qword_100608630 = v16;
}

void sub_100255924()
{
  sub_100003ABC(&unk_1006040A0, &unk_1004CF310);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C50C0;
  *(v0 + 32) = sub_1004BBE64();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1004BBE64();
  *(v0 + 56) = v2;
  sub_100003ABC(&qword_100604210, &unk_1004D4030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50A0;
  *(inited + 32) = sub_1004BBE64();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004C50A0;
  *(v5 + 32) = sub_1004BBE64();
  *(v5 + 40) = v6;
  isa = sub_1004BC284().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  sub_10003D14C(inited);
  swift_setDeallocating();
  sub_100007214(inited + 32, &qword_100604218, qword_1004CEE50);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = sub_1004BC284().super.isa;

  sub_100009130(0, &qword_100605EC0, MPPropertySet_ptr);
  v11 = sub_1004BBC24().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  qword_100608638 = v12;
}

void sub_100255B5C()
{
  sub_100003ABC(&qword_100604210, &unk_1004D4030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C5070;
  *(inited + 32) = sub_1004BBE64();
  *(inited + 40) = v1;
  if (qword_1006000E0 != -1)
  {
    swift_once();
  }

  v2 = qword_100608630;
  *(inited + 48) = qword_100608630;
  *(inited + 56) = sub_1004BBE64();
  *(inited + 64) = v3;
  v4 = qword_1006000E8;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_100608638;
  *(inited + 72) = qword_100608638;
  *(inited + 80) = sub_1004BBE64();
  *(inited + 88) = v7;
  v8 = qword_1006000F0;
  v9 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_100608640;
  *(inited + 96) = qword_100608640;
  v11 = v10;
  sub_10003D14C(inited);
  swift_setDeallocating();
  sub_100003ABC(&qword_100604218, qword_1004CEE50);
  swift_arrayDestroy();
  v12 = objc_allocWithZone(MPPropertySet);
  isa = sub_1004BC284().super.isa;
  sub_100009130(0, &qword_100605EC0, MPPropertySet_ptr);
  v14 = sub_1004BBC24().super.isa;

  v15 = [v12 initWithProperties:isa relationships:v14];

  static GroupActivitiesManager.Activity.playingProperties = v15;
}

uint64_t *GroupActivitiesManager.Activity.playingProperties.unsafeMutableAddressor()
{
  if (qword_1006000F8 != -1)
  {
    swift_once();
  }

  return &static GroupActivitiesManager.Activity.playingProperties;
}

id static GroupActivitiesManager.Activity.playingProperties.getter()
{
  if (qword_1006000F8 != -1)
  {
    swift_once();
  }

  v1 = static GroupActivitiesManager.Activity.playingProperties;

  return v1;
}

void sub_100255E38()
{
  sub_100003ABC(&unk_1006040A0, &unk_1004CF310);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C50C0;
  *(v0 + 32) = sub_1004BBE64();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1004BBE64();
  *(v0 + 56) = v2;
  sub_100003ABC(&qword_100604210, &unk_1004D4030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50A0;
  *(inited + 32) = sub_1004BBE64();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004C50A0;
  *(v5 + 32) = sub_1004BBE64();
  *(v5 + 40) = v6;
  isa = sub_1004BC284().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  sub_10003D14C(inited);
  swift_setDeallocating();
  sub_100007214(inited + 32, &qword_100604218, qword_1004CEE50);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = sub_1004BC284().super.isa;

  sub_100009130(0, &qword_100605EC0, MPPropertySet_ptr);
  v11 = sub_1004BBC24().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  qword_100608648 = v12;
}

void sub_100256054()
{
  sub_100003ABC(&unk_1006040A0, &unk_1004CF310);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C50C0;
  *(v0 + 32) = sub_1004BBE64();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1004BBE64();
  *(v0 + 56) = v2;
  sub_100003ABC(&qword_100604210, &unk_1004D4030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50A0;
  *(inited + 32) = sub_1004BBE64();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004C50A0;
  *(v5 + 32) = sub_1004BBE64();
  *(v5 + 40) = v6;
  isa = sub_1004BC284().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  sub_10003D14C(inited);
  swift_setDeallocating();
  sub_100007214(inited + 32, &qword_100604218, qword_1004CEE50);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = sub_1004BC284().super.isa;

  sub_100009130(0, &qword_100605EC0, MPPropertySet_ptr);
  v11 = sub_1004BBC24().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  qword_100608650 = v12;
}

void sub_10025628C(uint64_t a1, void *a2, void *a3, void *a4)
{
  sub_100003ABC(&unk_1006040A0, &unk_1004CF310);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004C50C0;
  *(v5 + 32) = sub_1004BBE64();
  *(v5 + 40) = v6;
  *(v5 + 48) = sub_1004BBE64();
  *(v5 + 56) = v7;
  isa = sub_1004BC284().super.isa;

  v9 = [objc_opt_self() propertySetWithProperties:isa];

  *a4 = v9;
}

id sub_100256350()
{
  result = sub_100256370();
  qword_100608660 = result;
  return result;
}

id sub_100256370()
{
  if (qword_1006000F8 != -1)
  {
    swift_once();
  }

  v0 = static GroupActivitiesManager.Activity.playingProperties;
  sub_100003ABC(&qword_100604210, &unk_1004D4030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C5070;
  *(inited + 32) = sub_1004BBE64();
  *(inited + 40) = v2;
  if (qword_100600108 != -1)
  {
    swift_once();
  }

  v3 = qword_100608650;
  *(inited + 48) = qword_100608650;
  *(inited + 56) = sub_1004BBE64();
  *(inited + 64) = v4;
  v5 = qword_100600100;
  v6 = v3;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_100608648;
  *(inited + 72) = qword_100608648;
  *(inited + 80) = sub_1004BBE64();
  *(inited + 88) = v8;
  v9 = qword_100600110;
  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_100608658;
  *(inited + 96) = qword_100608658;
  v12 = v11;
  sub_10003D14C(inited);
  swift_setDeallocating();
  sub_100003ABC(&qword_100604218, qword_1004CEE50);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MPPropertySet);
  isa = sub_1004BC284().super.isa;
  sub_100009130(0, &qword_100605EC0, MPPropertySet_ptr);
  v15 = sub_1004BBC24().super.isa;

  v16 = [v13 initWithProperties:isa relationships:v15];

  v17 = [v0 propertySetByCombiningWithPropertySet:v16];
  return v17;
}

unint64_t sub_1002565F8()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

void sub_100256634(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD00000000000001BLL && 0x80000001005053E0 == a2;
  if (v5 || (sub_1004BD9C4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100505400 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1004BD9C4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_100256718(uint64_t a1)
{
  v2 = sub_10026AC2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100256754(uint64_t a1)
{
  v2 = sub_10026AC2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GroupActivitiesManager.Activity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_100003ABC(&qword_1006086C8, &qword_1004D70B0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - v6;
  type metadata accessor for GroupActivitiesManager.Activity(0);
  __chkstk_darwin();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v11 = *(v10 + 40);
  v12 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v12 - 8) + 56))(&v9[v11], 1, 1, v12);
  sub_100009178(a1, a1[3]);
  sub_10026AC2C();
  sub_1004BDC34();
  if (!v2)
  {
    v14 = v5;
    v15 = v19;
    type metadata accessor for CodableListeningProperties(0, v13);
    v20 = 0;
    sub_10026ACA4(&qword_1006086D8, type metadata accessor for CodableListeningProperties, &unk_1004D7734);
    sub_1004BD804();
    *(v9 + 6) = v21;
    type metadata accessor for CodableModelObjectIdentity(0, v16);
    v20 = 1;
    sub_10026ACA4(&qword_1006086E0, type metadata accessor for CodableModelObjectIdentity, &unk_1004D770C);
    sub_1004BD804();
    v17 = v21;
    (*(v14 + 8))(v7, v4);
    *(v9 + 7) = v17;
    sub_10026A2D0(v9, v15, type metadata accessor for GroupActivitiesManager.Activity);
  }

  sub_100004C6C(a1);
  return sub_10026A624(v9, type metadata accessor for GroupActivitiesManager.Activity);
}

uint64_t GroupActivitiesManager.Activity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100003ABC(&qword_1006086E8, &qword_1004D70B8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10 - v7;
  sub_100009178(a1, a1[3]);
  sub_10026AC2C();
  sub_1004BDC44();
  v11 = *(v3 + 48);
  HIBYTE(v10) = 0;
  sub_100003ABC(&qword_1006086F0, &qword_1004D70C0);
  sub_10026AD10();
  sub_1004BD894();
  if (!v2)
  {
    v11 = *(v3 + 56);
    HIBYTE(v10) = 1;
    sub_100003ABC(&qword_100608708, &qword_1004D70C8);
    sub_10026ADC4();
    sub_1004BD894();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100256C84(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return GroupActivitiesManager.Activity.metadata.getter(a1);
}

void sub_100256D54(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10026ACA4(&qword_100608728, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
  sub_1004B7104();

  *a2 = *(v3 + 16);
}

uint64_t GroupActivitiesManager.State.isSharePlaySessionActive.getter()
{
  swift_getKeyPath();
  sub_10026ACA4(&qword_100608728, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
  sub_1004B7104();

  return *(v0 + 16);
}

void sub_100256EC4(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_10026ACA4(&qword_100608728, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
    sub_1004B70F4();
  }
}

void sub_100256FD4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10026ACA4(&qword_100608728, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
  sub_1004B7104();

  *a2 = *(v3 + 17);
}

uint64_t GroupActivitiesManager.State.isLoading.getter()
{
  swift_getKeyPath();
  sub_10026ACA4(&qword_100608728, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
  sub_1004B7104();

  return *(v0 + 17);
}

void sub_100257144(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_10026ACA4(&qword_100608728, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
    sub_1004B70F4();
  }
}

uint64_t GroupActivitiesManager.State.deinit(__n128 a1)
{
  v2 = OBJC_IVAR____TtCC9MusicCore22GroupActivitiesManager5State___observationRegistrar;
  v3 = sub_1004B7144();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t GroupActivitiesManager.State.__deallocating_deinit(__n128 a1)
{
  v2 = OBJC_IVAR____TtCC9MusicCore22GroupActivitiesManager5State___observationRegistrar;
  v3 = sub_1004B7144();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t GroupActivitiesManager.coordinator.setter(__int128 *a1)
{
  swift_beginAccess();
  sub_100004C6C((v1 + 16));
  sub_100013414(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t GroupActivitiesManager.pendingNoticeAlert.getter()
{
  swift_beginAccess();
  v1 = v0[7];
  sub_10026A8B0(v1, v0[8], v0[9], v0[10]);
  return v1;
}

void GroupActivitiesManager.isSharePlaySessionActive.setter(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  v4 = a1 & 1;
  *(v1 + 96) = a1;
  if (v3 != v4)
  {
    v5 = *(v1 + 88);
    if (*(v5 + 16) == v4)
    {
      *(v5 + 16) = v4;
    }

    else
    {
      swift_getKeyPath();
      __chkstk_darwin();
      sub_10026ACA4(&qword_100608728, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
      sub_1004B70F4();
    }
  }
}

void (*GroupActivitiesManager.isSharePlaySessionActive.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + 96);
  return sub_100257618;
}

void sub_100257618(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = v2[4];
  if (a2)
  {
    GroupActivitiesManager.isSharePlaySessionActive.setter(v3);
  }

  else
  {
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;
    if (v3 != v5)
    {
      v6 = *(v2[4] + 88);
      if (v3 == *(v6 + 16))
      {
        *(v6 + 16) = v3;
      }

      else
      {
        swift_getKeyPath();
        __chkstk_darwin();
        v2[3] = v6;
        sub_10026ACA4(&qword_100608728, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
        sub_1004B70F4();
      }
    }
  }

  free(v2);
}

uint64_t GroupActivitiesManager.participantsCount.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

void sub_1002577D8(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a2 = v3;
}

void sub_100257858(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85B4();
  sub_100257924(v2);
}

void sub_100257924(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v10 != a1)
  {
    if (qword_100600120 != -1)
    {
      swift_once();
    }

    v4 = sub_1004B80B4();
    sub_100007084(v4, static Logger.groupActivities);

    v5 = sub_1004B8094();
    v6 = sub_1004BC9A4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004B85A4();

      *(v7 + 4) = v10;

      _os_log_impl(&_mh_execute_header, v5, v6, "👤 Participants count update=%{public}ld", v7, 0xCu);
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v8 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    if (*(v2 + v8) < v10)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004B85A4();

      *(v2 + v8) = v9;
    }
  }
}

uint64_t Logger.groupActivities.unsafeMutableAddressor(uint64_t a1, uint64_t a2)
{
  if (qword_100600120 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();

  return sub_100007084(v2, static Logger.groupActivities);
}

uint64_t sub_100257C14(_BYTE *a1, uint64_t *a2)
{
  v3 = sub_100003ABC(&qword_1006083A0, &qword_1004D6D40);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  sub_100003ABC(&qword_100608398, &qword_1004D6D38);
  sub_1004B8584();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t GroupActivitiesManager.isLoading.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

void sub_100257E0C(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a2 = v3;
}

void sub_100257E8C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85B4();
  sub_100257F58(v2);
}

void sub_100257F58(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v9 != v3)
  {
    if (qword_100600120 != -1)
    {
      swift_once();
    }

    v4 = sub_1004B80B4();
    sub_100007084(v4, static Logger.groupActivities);

    v5 = sub_1004B8094();
    v6 = sub_1004BC9A4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004B85A4();

      *(v7 + 4) = v9;

      _os_log_impl(&_mh_execute_header, v5, v6, "⏳ Session is loading=%{BOOL,public}d", v7, 8u);
    }

    else
    {
    }

    v8 = *(v2 + 88);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    if (v9 == *(v8 + 17))
    {
      *(v8 + 17) = v9;
    }

    else
    {
      swift_getKeyPath();
      __chkstk_darwin();
      sub_10026ACA4(&qword_100608728, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
      sub_1004B70F4();
    }

    sub_100258238();
  }
}

void sub_100258238()
{
  v1 = v0;
  v2 = sub_100003ABC(&qword_100608698, &qword_1004D7080);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v56 = &v45[-v4];
  v59 = sub_100003ABC(&qword_100608768, &qword_1004D7218);
  __chkstk_darwin();
  v6 = &v45[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v45[-v7];
  sub_100003ABC(&qword_100608770, &qword_1004D7220);
  __chkstk_darwin();
  v55 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v58 = &v45[-v10];
  __chkstk_darwin();
  v57 = &v45[-v11];
  __chkstk_darwin();
  v13 = &v45[-v12];
  __chkstk_darwin();
  v15 = &v45[-v14];
  __chkstk_darwin();
  v17 = &v45[-v16];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v60)
  {
    goto LABEL_2;
  }

  v49 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v19 = *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session);
  v53 = v1;
  v51 = v6;
  if (v19)
  {

    sub_1004B7494();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = v3[7];
  v21(v17, v20, 1, v2);
  v47 = v3[13];
  v48 = v3 + 13;
  v47(v15, enum case for GroupSession.State.waiting<A>(_:), v2);
  v50 = v21;
  v21(v15, 0, 1, v2);
  v22 = *(v59 + 48);
  sub_10000F778(v17, v8, &qword_100608770, &qword_1004D7220);
  sub_10000F778(v15, &v8[v22], &qword_100608770, &qword_1004D7220);
  v54 = v3;
  v23 = v3[6];
  if (v23(v8, 1, v2) == 1)
  {
    sub_100007214(v15, &qword_100608770, &qword_1004D7220);
    sub_100007214(v17, &qword_100608770, &qword_1004D7220);
    if (v23(&v8[v22], 1, v2) == 1)
    {
      sub_100007214(v8, &qword_100608770, &qword_1004D7220);
      v18 = 1;
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  sub_10000F778(v8, v13, &qword_100608770, &qword_1004D7220);
  if (v23(&v8[v22], 1, v2) == 1)
  {
    sub_100007214(v15, &qword_100608770, &qword_1004D7220);
    sub_100007214(v17, &qword_100608770, &qword_1004D7220);
    (v54[1])(v13, v2);
LABEL_11:
    sub_100007214(v8, &qword_100608768, &qword_1004D7218);
    v24 = v53;
    goto LABEL_12;
  }

  v28 = v54[4];
  v52 = v23;
  v29 = v56;
  v28(v56, &v8[v22], v2);
  sub_1000206D4(&qword_100608778, &qword_100608698, &qword_1004D7080, &protocol conformance descriptor for GroupSession<A>.State);
  v46 = sub_1004BBD84();
  v30 = v54[1];
  v31 = v29;
  v23 = v52;
  v30(v31, v2);
  sub_100007214(v15, &qword_100608770, &qword_1004D7220);
  sub_100007214(v17, &qword_100608770, &qword_1004D7220);
  v30(v13, v2);
  sub_100007214(v8, &qword_100608770, &qword_1004D7220);
  v24 = v53;
  if ((v46 & 1) == 0)
  {
LABEL_12:
    v25 = *(v24 + v49);
    v52 = v23;
    if (v25)
    {

      v26 = v57;
      sub_1004B7494();

      v27 = 0;
    }

    else
    {
      v27 = 1;
      v26 = v57;
    }

    v32 = v58;
    v33 = v50;
    v50(v26, v27, 1, v2);
    v47(v32, enum case for GroupSession.State.joined<A>(_:), v2);
    v33(v32, 0, 1, v2);
    v34 = *(v59 + 48);
    v35 = v51;
    sub_10000F778(v26, v51, &qword_100608770, &qword_1004D7220);
    sub_10000F778(v32, v35 + v34, &qword_100608770, &qword_1004D7220);
    v36 = v52;
    if (v52(v35, 1, v2) == 1)
    {
      sub_100007214(v32, &qword_100608770, &qword_1004D7220);
      sub_100007214(v26, &qword_100608770, &qword_1004D7220);
      if (v36(v35 + v34, 1, v2) == 1)
      {
        sub_100007214(v35, &qword_100608770, &qword_1004D7220);
        goto LABEL_2;
      }
    }

    else
    {
      v37 = v55;
      sub_10000F778(v35, v55, &qword_100608770, &qword_1004D7220);
      if (v36(v35 + v34, 1, v2) != 1)
      {
        v41 = v54;
        v42 = v56;
        (v54[4])(v56, v35 + v34, v2);
        sub_1000206D4(&qword_100608778, &qword_100608698, &qword_1004D7080, &protocol conformance descriptor for GroupSession<A>.State);
        v43 = sub_1004BBD84();
        v44 = v41[1];
        v44(v42, v2);
        sub_100007214(v58, &qword_100608770, &qword_1004D7220);
        sub_100007214(v26, &qword_100608770, &qword_1004D7220);
        v44(v37, v2);
        sub_100007214(v35, &qword_100608770, &qword_1004D7220);
        if (v43)
        {
          goto LABEL_2;
        }

LABEL_23:
        v38 = [objc_opt_self() standardUserDefaults];
        v39 = sub_1004BBE24();
        v40 = [v38 BOOLForKey:v39];

        v18 = v40;
        goto LABEL_24;
      }

      sub_100007214(v32, &qword_100608770, &qword_1004D7220);
      sub_100007214(v26, &qword_100608770, &qword_1004D7220);
      (v54[1])(v37, v2);
    }

    sub_100007214(v35, &qword_100608768, &qword_1004D7218);
    goto LABEL_23;
  }

LABEL_2:
  v18 = 1;
LABEL_24:
  GroupActivitiesManager.isSharePlaySessionActive.setter(v18);
}

uint64_t sub_100258B58(_BYTE *a1, uint64_t *a2)
{
  v3 = sub_100003ABC(&qword_100605D10, &qword_1004D5F60);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  sub_100003ABC(&qword_1006051A8, &qword_1004D8F60);
  sub_1004B8584();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

double GroupActivitiesManager.reaction.getter@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

double sub_100258DBC@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_100258E44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10026D010(v2, v3, v4, v5, v6, v7);
  sub_1004B85A4();

  v12[0] = v9;
  v12[1] = v10;
  v12[2] = v11;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85B4();
  sub_100258F70(v12);
  return sub_100007214(v12, &qword_100608750, &qword_1004D71C0);
}

void sub_100258F70(void **a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  v53 = a1[2];
  v55 = v5;
  v6 = a1[5];
  v51 = a1[4];
  v54 = v6;
  v7 = sub_1004B6D14();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004B7544();
  v50 = *(v11 - 8);
  __chkstk_darwin();
  v49 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v56 = v1;
  sub_1004B85A4();

  v13 = v62;
  if (v62)
  {
    v45 = v11;
    v46 = v10;
    v47 = v8;
    v48 = v7;
    v14 = v61;
    v16 = v63;
    v15 = v64;
    v17 = v65;
    v18 = v66;
    v52 = v65;
    if (!v3)
    {

      v43 = v14;
      sub_10026D060(v14, v13, v16, v15, v17, v18);
      sub_10026D060(v4, 0, v53, v55, v51, v54);
      v19 = v17;
      goto LABEL_23;
    }

    v44 = v63;
    if (v61 == v4 && v62 == v3 || (sub_1004BD9C4() & 1) != 0)
    {
      v16 = v44;
      if (v44 == v53 && v15 == v55 || (sub_1004BD9C4() & 1) != 0)
      {
        if (!v18)
        {
          if (!v54)
          {
            sub_10026D060(v14, v13, v16, v15, v52, 0);
            return;
          }

          sub_10000F778(a1, &v61, &qword_100608750, &qword_1004D71C0);

          v43 = v14;
          v20 = v14;
          v21 = v13;
          v22 = v16;
          v23 = v15;
          v19 = v52;
          v24 = v52;
          v25 = 0;
          goto LABEL_22;
        }

        if (v54)
        {
          if (v52 == v51 && v18 == v54)
          {

            sub_10000F778(a1, &v61, &qword_100608750, &qword_1004D71C0);

LABEL_40:

            sub_10026D060(v14, v13, v16, v15, v52, v18);
            return;
          }

          v40 = v52;
          v41 = sub_1004BD9C4();

          sub_10000F778(a1, &v61, &qword_100608750, &qword_1004D71C0);

          if (v41)
          {
            v16 = v44;
            goto LABEL_40;
          }

          v43 = v14;
          v42 = v44;
          sub_10026D060(v14, v13, v44, v15, v40, v18);
          v19 = v40;
          v16 = v42;
LABEL_23:
          if (qword_100600120 != -1)
          {
            swift_once();
          }

          v26 = sub_1004B80B4();
          sub_100007084(v26, static Logger.groupActivities);

          v27 = sub_1004B8094();
          v28 = sub_1004BC964();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            *&v60[0] = v30;
            *v29 = 136446210;
            v61 = v16;
            v62 = v15;

            v31 = sub_1004BBF34();
            v33 = sub_100012018(v31, v32, v60);

            *(v29 + 4) = v33;
            _os_log_impl(&_mh_execute_header, v27, v28, "🌚 received: %{public}s)", v29, 0xCu);
            sub_100004C6C(v30);

            v19 = v52;
          }

          if (!v18)
          {
            goto LABEL_36;
          }

          if (*(v56 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
          {

            v34 = v49;
            sub_1004B7424();

            v35 = v46;
            sub_1004B7534();
            (*(v50 + 8))(v34, v45);
            v36 = sub_1004B6CE4();
            v38 = v37;
            (*(v47 + 8))(v35, v48);
            if (v19 == v36 && v18 == v38)
            {

LABEL_36:

              swift_getKeyPath();
              swift_getKeyPath();
              sub_1004B85A4();

              v60[0] = v57;
              v60[1] = v58;
              v60[2] = v59;
              swift_getKeyPath();
              swift_getKeyPath();
              v58 = 0u;
              v59 = 0u;
              v57 = 0u;

              sub_1004B85B4();
              sub_100258F70(v60);
              sub_100007214(v60, &qword_100608750, &qword_1004D71C0);
              return;
            }

            v39 = sub_1004BD9C4();

            if (v39)
            {

              goto LABEL_36;
            }
          }

          else
          {
          }

          v61 = v43;
          v62 = v13;
          v63 = v16;
          v64 = v15;
          v65 = v19;
          v66 = v18;
          v67 = 1;
          GroupActivitiesManager.postEvent(_:participantID:)(&v61, v19, v18);
          swift_bridgeObjectRelease_n();
          goto LABEL_36;
        }

        sub_10000F778(a1, &v61, &qword_100608750, &qword_1004D71C0);
      }

      else
      {

        sub_10000F778(a1, &v61, &qword_100608750, &qword_1004D71C0);
      }

      v43 = v14;
      v20 = v14;
      v21 = v13;
    }

    else
    {

      sub_10000F778(a1, &v61, &qword_100608750, &qword_1004D71C0);

      v43 = v14;
      v20 = v14;
      v21 = v13;
      v16 = v44;
    }

    v22 = v16;
    v23 = v15;
    v19 = v52;
    v24 = v52;
    v25 = v18;
LABEL_22:
    sub_10026D060(v20, v21, v22, v23, v24, v25);
    goto LABEL_23;
  }
}

uint64_t sub_100259938(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100003ABC(&qword_100608F48, &qword_1004D77D0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  sub_100003ABC(&qword_100608760, &qword_1004D7210);
  sub_1004B8584();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t GroupActivitiesManager.maxParticipantsCount.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupActivitiesManager.hasJoined.getter()
{
  v1 = sub_100003ABC(&qword_100608698, &qword_1004D7080);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v21 = &v20 - v3;
  v4 = sub_100003ABC(&qword_100608768, &qword_1004D7218);
  __chkstk_darwin();
  v6 = &v20 - v5;
  sub_100003ABC(&qword_100608770, &qword_1004D7220);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v20 - v9;
  __chkstk_darwin();
  v12 = &v20 - v11;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    sub_1004B7494();

    v13 = *(v2 + 56);
    v13(v12, 0, 1, v1);
  }

  else
  {
    v13 = *(v2 + 56);
    v13(&v20 - v11, 1, 1, v1);
  }

  (*(v2 + 104))(v10, enum case for GroupSession.State.joined<A>(_:), v1);
  v13(v10, 0, 1, v1);
  v14 = *(v4 + 48);
  sub_10000F778(v12, v6, &qword_100608770, &qword_1004D7220);
  sub_10000F778(v10, &v6[v14], &qword_100608770, &qword_1004D7220);
  v15 = *(v2 + 48);
  if (v15(v6, 1, v1) != 1)
  {
    sub_10000F778(v6, v8, &qword_100608770, &qword_1004D7220);
    if (v15(&v6[v14], 1, v1) != 1)
    {
      v17 = v21;
      (*(v2 + 32))(v21, &v6[v14], v1);
      sub_1000206D4(&qword_100608778, &qword_100608698, &qword_1004D7080, &protocol conformance descriptor for GroupSession<A>.State);
      v16 = sub_1004BBD84();
      v18 = *(v2 + 8);
      v18(v17, v1);
      sub_100007214(v10, &qword_100608770, &qword_1004D7220);
      sub_100007214(v12, &qword_100608770, &qword_1004D7220);
      v18(v8, v1);
      sub_100007214(v6, &qword_100608770, &qword_1004D7220);
      return v16 & 1;
    }

    sub_100007214(v10, &qword_100608770, &qword_1004D7220);
    sub_100007214(v12, &qword_100608770, &qword_1004D7220);
    (*(v2 + 8))(v8, v1);
    goto LABEL_9;
  }

  sub_100007214(v10, &qword_100608770, &qword_1004D7220);
  sub_100007214(v12, &qword_100608770, &qword_1004D7220);
  if (v15(&v6[v14], 1, v1) != 1)
  {
LABEL_9:
    sub_100007214(v6, &qword_100608768, &qword_1004D7218);
    v16 = 0;
    return v16 & 1;
  }

  sub_100007214(v6, &qword_100608770, &qword_1004D7220);
  v16 = 1;
  return v16 & 1;
}

uint64_t GroupActivitiesManager.isSessionEligible.getter()
{
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v10[4] = v6;
  v10[5] = v7;
  v11 = v8;
  v12 = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  if ((GroupActivitiesManager.hasJoined.getter() & 1) != 0 || (sub_1004B7314() & 1) == 0)
  {
    sub_100051DEC(v10);
    return 0;
  }

  else
  {
    if (v11 == 2)
    {

      sub_100051DEC(v10);
      return BYTE1(v10[0]);
    }

    v1 = sub_1004BD9C4();

    sub_100051DEC(v10);
    result = 0;
    if (v1)
    {
      return BYTE1(v10[0]);
    }
  }

  return result;
}

id GroupActivitiesManager.itemProvider(with:metadata:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *(sub_100003ABC(&qword_1006086B0, &qword_1004D70A0) - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v46 - v8;
  if (a1)
  {
    goto LABEL_2;
  }

  v47 = v6;
  v49 = a2;
  swift_beginAccess();
  v18 = v2[5];
  v19 = v2[6];
  sub_100009178(v2 + 2, v18);
  v48 = &v46;
  v20 = *(v18 - 8);
  v21 = __chkstk_darwin();
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v21);
  v24 = (*(v19 + 48))(v18, v19);
  (*(v20 + 8))(v23, v18);
  if (!v24)
  {
LABEL_12:
    if (qword_100600120 != -1)
    {
      swift_once();
    }

    v26 = sub_1004B80B4();
    v14 = sub_100007084(v26, static Logger.groupActivities);

    v27 = sub_1004B8094();
    v28 = sub_1004BC984();

    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_21;
    }

    v29 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v29 = 136446466;
    v50 = 0;
    sub_100003ABC(&unk_100608790, &unk_1004D7270);
    v30 = sub_1004BBF04();
    v32 = sub_100012018(v30, v31, &v52);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    v33 = v3[5];
    v34 = v3[6];
    sub_100009178(v3 + 2, v33);
    v49 = &v46;
    v35 = *(v33 - 8);
    v36 = __chkstk_darwin();
    v38 = &v46 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v38, v36);
    v39 = (*(v34 + 48))(v33, v34);
    (*(v35 + 8))(v38, v33);
    if (v39)
    {
      v40 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
      swift_beginAccess();
      if (*&v39[v40])
      {

        swift_getKeyPath();
        swift_getKeyPath();
        sub_1004B85A4();

        v41 = v51;
LABEL_20:
        v51 = v41;
        sub_100003ABC(&qword_100606630, &unk_1004D2B80);
        v42 = sub_1004BBF04();
        v14 = sub_100012018(v42, v43, &v52);

        *(v29 + 14) = v14;
        _os_log_impl(&_mh_execute_header, v27, v28, "    Cannot build itemProvider with intent=%{public}s)\n    and player=%{public}s)", v29, 0x16u);
        swift_arrayDestroy();

LABEL_21:

        sub_10026AF20();
        swift_allocError();
        *v44 = 0;
        *(v44 + 8) = 4;
        swift_willThrow();
        return v14;
      }
    }

    v41 = 0;
    goto LABEL_20;
  }

  v25 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*&v24[v25])
  {

    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (!v50)
  {
    goto LABEL_12;
  }

  a2 = v49;
  v6 = v47;
LABEL_2:
  if (qword_100600120 != -1)
  {
    swift_once();
  }

  v10 = sub_1004B80B4();
  sub_100007084(v10, static Logger.groupActivities);
  v11 = sub_1004B8094();
  v12 = sub_1004BC9A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v49 = a2;
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Building GroupActivity item provider", v13, 2u);
    a2 = v49;
  }

  v14 = [objc_allocWithZone(NSItemProvider) init];
  sub_10000F778(a2, v9, &qword_1006086B0, &qword_1004D70A0);
  v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  sub_10026B11C(v9, v16 + v15);
  *(v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_10026ACA4(&qword_1006086A0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  v17 = a1;

  sub_1004BC9B4();

  return v14;
}

uint64_t sub_10025A918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  sub_100003ABC(&qword_1006086B0, &qword_1004D70A0);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10025A9B8, 0, 0);
}

uint64_t sub_10025A9B8()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *v3 = v0;
    v3[1] = sub_10025AB4C;

    return sub_100275CF4(v2);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *(v5 + 16) = *(v0 + 96);
    *(v5 + 32) = 0;
    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    v7 = type metadata accessor for GroupActivitiesManager.Activity(0);
    *v6 = v0;
    v6[1] = sub_10025AC74;
    v8 = *(v0 + 80);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD00000000000001CLL, 0x8000000100505420, sub_10026C440, v5, v7);
  }
}

uint64_t sub_10025AB4C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_10025AFB4;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_10025ADB8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10025AC74()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10025B27C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10025ADB8()
{
  v1 = v0[20];
  v2 = v0[13];
  sub_10000F778(v0[12], v0[14], &qword_1006086B0, &qword_1004D70A0);
  swift_beginAccess();
  sub_10001342C(v2 + 16, (v0 + 2));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_10025AEA0;
  v5 = v0[20];
  v6 = v0[14];
  v7 = v0[10];

  return sub_100253F74(v7, v5, v6, (v0 + 2));
}

uint64_t sub_10025AEA0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10025B1D0;
  }

  else
  {
    v2 = sub_10025B058;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10025AFB4()
{
  v0[23] = v0[16];
  v1 = v0[11];
  sub_1004BC474();
  v2 = v1;
  v0[24] = sub_1004BC464();
  v4 = sub_1004BC3E4();

  return _swift_task_switch(sub_10025B0CC, v4, v3);
}

uint64_t sub_10025B058()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10025B0CC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 88);

  sub_10025B2E8(v1, v2);

  return _swift_task_switch(sub_10025B154, 0, 0);
}

uint64_t sub_10025B154(uint64_t a1)
{
  v2 = *(v1 + 88);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10025B1D0()
{
  *(v0 + 184) = *(v0 + 176);
  v1 = *(v0 + 88);
  sub_1004BC474();
  v2 = v1;
  *(v0 + 192) = sub_1004BC464();
  v4 = sub_1004BC3E4();

  return _swift_task_switch(sub_10025B0CC, v4, v3);
}

uint64_t sub_10025B27C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10025B2E8(uint64_t a1, void *a2)
{
  v3 = v2;
  *&v23[0] = a1;
  swift_errorRetain();
  sub_100003ABC(&qword_100604C30, &qword_1004C8490);
  if (swift_dynamicCast())
  {
    v5 = *&v27[0];
    v6 = BYTE8(v27[0]);
    swift_beginAccess();
    v7 = v2[5];
    v8 = v2[6];
    sub_100009178(v2 + 2, v7);
    v9 = *(v7 - 8);
    v10 = __chkstk_darwin();
    v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v9 + 16))(v12, v10);
    v13 = (*(v8 + 48))(v7, v8);
    (*(v9 + 8))(v12, v7);
    if (v13)
    {
      v14 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
      swift_beginAccess();
      v15 = *&v13[v14];
    }

    else
    {
      v15 = 0;
    }

    v16 = a2;

    sub_10026EF2C(v5, v6);
    sub_10026F5E8(a2, v3, v15, v5, v6, v23);
    if (v25)
    {
      v27[0] = v23[0];
      v27[1] = v23[1];
      v27[2] = v23[2];
      v28 = v24;
      v29 = v25;
      v30 = v26;
      sub_10001342C(v3 + 16, v20);
      v17 = v21;
      v18 = v22;
      sub_100009178(v20, v21);
      (*(v18 + 32))(v27, v17, v18);
      sub_100007214(v23, &qword_100602B60, &qword_1004D0580);

      sub_10026C4A0(v5, v6);
      sub_100004C6C(v20);
    }

    else
    {

      sub_10026C4A0(v5, v6);
    }
  }
}

double sub_10025B5BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = a3;
  v26 = a4;
  v6 = sub_100003ABC(&unk_100608F80, &qword_1004D7810);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v25 - v9;
  v11 = *(sub_100003ABC(&qword_1006086B0, &qword_1004D70A0) - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v25 - v13;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v16 = &v25 - v15;
  v17 = sub_1004BC4B4();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_10000F778(a2, v14, &qword_1006086B0, &qword_1004D70A0);
  (*(v7 + 16))(v10, a1, v6);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v7 + 80) + v19 + 8) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_10026B11C(v14, v21 + v18);
  *(v21 + v19) = v25;
  (*(v7 + 32))(v21 + v20, v10, v6);
  v22 = v26;
  *(v21 + ((v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v23 = v22;

  sub_1000FD6BC(0, 0, v16, &unk_1004D7820, v21);

  return result;
}

uint64_t sub_10025B898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_100003ABC(&unk_100608F80, &qword_1004D7810);
  v7[15] = v8;
  v9 = *(v8 - 8);
  v7[16] = v9;
  v7[17] = *(v9 + 64);
  v7[18] = swift_task_alloc();
  v10 = *(sub_100003ABC(&qword_1006086B0, &qword_1004D70A0) - 8);
  v7[19] = v10;
  v7[20] = *(v10 + 64);
  v7[21] = swift_task_alloc();

  return _swift_task_switch(sub_10025B9DC, 0, 0);
}

uint64_t sub_10025B9DC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[15];
  v7 = v0[13];
  v23 = v0[12];
  sub_10000F778(v0[11], v1, &qword_1006086B0, &qword_1004D70A0);
  (*(v5 + 16))(v3, v7, v6);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (*(v5 + 80) + v9 + 8) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v0[22] = v11;
  sub_10026B11C(v1, v11 + v8);
  *(v11 + v9) = v23;
  (*(v5 + 32))(v11 + v10, v3, v6);
  v12 = objc_allocWithZone(ICLiveLinkIdentity);
  v0[6] = CFRange.init(_:);
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10011FE68;
  v0[5] = &unk_1005BC2E0;
  v13 = _Block_copy(v0 + 2);

  v14 = [v12 initWithBlock:v13];
  v0[23] = v14;
  _Block_release(v13);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v16 = v0[12];
    swift_beginAccess();
    v17 = v16[5];
    v18 = v16[6];
    sub_100009178(v16 + 2, v17);
    v19 = *(v17 - 8);
    v20 = swift_task_alloc();
    v0[24] = v20;
    (*(v19 + 16))();
    v21 = (*(v18 + 48))(v17, v18);
    v0[25] = v21;
    (*(v19 + 8))(v20, v17);
    v22 = swift_task_alloc();
    v0[26] = v22;
    *v22 = v0;
    v22[1] = sub_10025BD38;

    return sub_1002763B4(v14, sub_10026CB38, v11, v21);
  }

  return result;
}

uint64_t sub_10025BD38()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_10025BED8;
  }

  else
  {

    v3 = sub_10025BE5C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10025BE5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10025BED8()
{

  sub_1004BC474();
  *(v0 + 224) = sub_1004BC464();
  v2 = sub_1004BC3E4();

  return _swift_task_switch(sub_10025BF7C, v2, v1);
}

uint64_t sub_10025BF7C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 112);

  sub_10025B2E8(v1, v2);

  return _swift_task_switch(sub_10025C000, 0, 0);
}

uint64_t sub_10025C000()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_10025C088(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v28 = a3;
  v6 = sub_100003ABC(&unk_100608F80, &qword_1004D7810);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v25 - v8;
  v26 = &v25 - v8;
  v10 = *(sub_100003ABC(&qword_1006086B0, &qword_1004D70A0) - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v25 - v12;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v15 = &v25 - v14;
  v16 = sub_1004BC4B4();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_10000F778(a2, v13, &qword_1006086B0, &qword_1004D70A0);
  v17 = v9;
  v18 = v6;
  (*(v7 + 16))(v17, v27, v6);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v7 + 80) + v20 + 8) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = a1;
  sub_10026B11C(v13, &v22[v19]);
  *&v22[v20] = v28;
  (*(v7 + 32))(&v22[v21], v26, v18);
  v23 = a1;

  sub_1001FA838(0, 0, v15, &unk_1004D7830, v22);

  return result;
}

uint64_t sub_10025C35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  sub_100003ABC(&qword_1006086B0, &qword_1004D70A0);
  v7[14] = swift_task_alloc();
  type metadata accessor for GroupActivitiesManager.Activity(0);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();

  return _swift_task_switch(sub_10025C434, 0, 0);
}

uint64_t sub_10025C434()
{
  v1 = v0[12];
  v2 = v0[10];
  sub_10000F778(v0[11], v0[14], &qword_1006086B0, &qword_1004D70A0);
  swift_beginAccess();
  sub_10001342C(v1 + 16, (v0 + 2));
  v3 = v2;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_10025C51C;
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[10];

  return sub_100253F74(v5, v7, v6, (v0 + 2));
}

uint64_t sub_10025C51C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10025C710;
  }

  else
  {
    v2 = sub_10025C630;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10025C630()
{
  v1 = v0[16];
  sub_10026A2D0(v1, v0[15], type metadata accessor for GroupActivitiesManager.Activity);
  sub_100003ABC(&unk_100608F80, &qword_1004D7810);
  sub_1004BC404();
  sub_10026A624(v1, type metadata accessor for GroupActivitiesManager.Activity);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10025C710()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10025C788(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1004B73F4();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10025C8C0, 0, 0);
}

uint64_t sub_10025C8C0(uint64_t a1, uint64_t a2)
{
  v28 = v2;
  if (qword_100600120 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  *(v2 + 144) = sub_100007084(v3, static Logger.groupActivities);
  v4 = sub_1004B8094();
  v5 = sub_1004BC9A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "GroupActivitiesManager prepareForActivation", v6, 2u);
  }

  if ((GroupActivitiesManager.isSessionEligible.getter() & 1) == 0)
  {
    v14 = 1;
LABEL_11:
    (*(*(v2 + 128) + 56))(*(v2 + 56), v14, 4, *(v2 + 120));

    v15 = *(v2 + 8);

    return v15();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (*(v2 + 49))
  {
    v7 = sub_1004B8094();
    v8 = sub_1004BC984();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v27 = v10;
      *v9 = 136446210;
      *(v2 + 40) = 1;
      *(v2 + 48) = 4;
      v11 = sub_1004BBF04();
      v13 = sub_100012018(v11, v12, &v27);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Prepare error=%{public}s", v9, 0xCu);
      sub_100004C6C(v10);
    }

    v14 = 2;
    goto LABEL_11;
  }

  v17 = *(v2 + 136);
  v18 = *(v2 + 120);
  v19 = *(v2 + 72);
  *(v17 + 2) = 0u;
  *(v17 + 3) = 0u;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v20 = *(v18 + 32);
  v21 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v21 - 8) + 56))(&v17[v20], 1, 1, v21);
  sub_100007214(v17, &qword_1006086B8, &qword_1004D70A8);
  swift_beginAccess();
  sub_10001342C(v19 + 16, v17);
  v22 = swift_task_alloc();
  *(v2 + 152) = v22;
  v23 = sub_10026ACA4(&qword_1006086A0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  *v22 = v2;
  v22[1] = sub_10025CCC8;
  v24 = *(v2 + 112);
  v25 = *(v2 + 120);
  v26 = *(v2 + 64);

  return GroupActivity.prepareForActivation(options:)(v24, v26, v25, v23);
}

uint64_t sub_10025CCC8()
{

  return _swift_task_switch(sub_10025CDC4, 0, 0);
}

uint64_t sub_10025CDC4()
{
  v38 = v0;
  v1 = *(*(v0 + 88) + 16);
  v1(*(v0 + 104), *(v0 + 112), *(v0 + 80));
  v2 = sub_1004B8094();
  v3 = sub_1004BC9A4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 104);
  if (v4)
  {
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v9 = 136446210;
    v1(v6, v5, v8);
    v10 = sub_1004BBF34();
    v12 = v11;
    v13 = *(v7 + 8);
    v13(v5, v8);
    v14 = v13;
    v15 = sub_100012018(v10, v12, &v37);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "User choice=%{public}s", v9, 0xCu);
    sub_100004C6C(v35);
  }

  else
  {
    v16 = *(v0 + 80);
    v17 = *(v0 + 88);

    v14 = *(v17 + 8);
    v14(v5, v16);
  }

  v18 = *(v0 + 96);
  v19 = *(v0 + 80);
  v20 = *(*(v0 + 88) + 104);
  v20(v18, enum case for GroupActivityActivationResult.activationPreferred(_:), v19);
  v21 = sub_1004B73E4();
  v14(v18, v19);
  v23 = *(v0 + 128);
  v22 = *(v0 + 136);
  v24 = *(v0 + 112);
  v36 = *(v0 + 120);
  if (v21)
  {
    v34 = *(v0 + 80);
    v25 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v26 = *(v0 + 50);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 51) = 1;

    sub_1004B85B4();
    sub_100257F58(v26);
    v14(v24, v34);
    sub_10026A2D0(v22, v25, type metadata accessor for GroupActivitiesManager.Activity);
    (*(v23 + 56))(v25, 0, 4, v36);
  }

  else
  {
    v27 = *(v0 + 96);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    v20(v27, enum case for GroupActivityActivationResult.activationDisabled(_:), v28);
    v30 = sub_1004B73E4();
    v14(v27, v28);
    v14(v24, v28);
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 4;
    }

    (*(v23 + 56))(v29, v31, 4, v36);
  }

  sub_10026A624(v22, type metadata accessor for GroupActivitiesManager.Activity);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_10025D1B0()
{
  v1 = v0;
  sub_100003ABC(&qword_100603110, &qword_1004CD2B0);
  __chkstk_darwin();
  v3 = &v19 - v2;
  sub_100003ABC(&qword_1006038C0, qword_1004D72F0);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = type metadata accessor for Signpost(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100600120 != -1)
  {
    swift_once();
  }

  v10 = sub_1004B80B4();
  sub_100007084(v10, static Logger.groupActivities);
  v11 = sub_1004B8094();
  v12 = sub_1004BC9A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "beginMeasuringInitiationTime", v13, 2u);
  }

  if (qword_100600760 != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.sharePlay;

  Signpost.init(name:object:log:)("InitiationToFirstAudioFrame", 27, 2, v14, v9);
  Signpost.begin(dso:_:_:)(&_mh_execute_header, "enableTelemetry=YES", 19, 2, _swiftEmptyArrayStorage);
  sub_10026A2D0(v9, v5, type metadata accessor for Signpost);
  (*(v7 + 56))(v5, 0, 1, v6);
  v15 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  swift_beginAccess();
  sub_100047A5C(v5, v1 + v15, &qword_1006038C0, qword_1004D72F0);
  swift_endAccess();
  sub_1004B6CC4();
  sub_10026A624(v9, type metadata accessor for Signpost);
  v16 = sub_1004B6CD4();
  (*(*(v16 - 8) + 56))(v3, 0, 1, v16);
  v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  swift_beginAccess();
  sub_100047A5C(v3, v1 + v17, &qword_100603110, &qword_1004CD2B0);
  return swift_endAccess();
}

uint64_t sub_10025D574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v6[14] = v7;
  v6[15] = *(v7 + 64);
  v6[16] = swift_task_alloc();
  sub_1004BC474();
  v6[17] = sub_1004BC464();
  v9 = sub_1004BC3E4();
  v6[18] = v9;
  v6[19] = v8;

  return _swift_task_switch(sub_10025D670, v9, v8);
}

uint64_t sub_10025D670()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = sub_10025DA08;

    return sub_100275CF4(v2);
  }

  else
  {
    v5 = v0[16];
    v6 = v0[14];
    v7 = v0[12];
    sub_10026A2D0(v0[13], v5, type metadata accessor for GroupActivitiesManager.Activity);
    v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v9 = swift_allocObject();
    v0[22] = v9;
    *(v9 + 16) = v7;
    sub_10026A268(v5, v9 + v8, type metadata accessor for GroupActivitiesManager.Activity);
    v10 = objc_allocWithZone(ICLiveLinkIdentity);
    v0[6] = CFRange.init(_:);
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10011FE68;
    v0[5] = &unk_1005BC538;
    v11 = _Block_copy(v0 + 2);

    v12 = [v10 initWithBlock:v11];
    v0[23] = v12;
    _Block_release(v11);

    result = swift_isEscapingClosureAtFileLocation();
    if (result)
    {
      __break(1u);
    }

    else
    {
      v13 = v0[12];
      swift_beginAccess();
      v14 = v13[5];
      v15 = v13[6];
      sub_100009178(v13 + 2, v14);
      v16 = *(v14 - 8);
      v17 = swift_task_alloc();
      v0[24] = v17;
      (*(v16 + 16))();
      v18 = (*(v15 + 48))(v14, v15);
      v0[25] = v18;
      (*(v16 + 8))(v17, v14);
      v19 = swift_task_alloc();
      v0[26] = v19;
      *v19 = v0;
      v19[1] = sub_10025DB8C;

      return sub_1002763B4(v12, sub_10026D984, v9, v18);
    }
  }

  return result;
}

uint64_t sub_10025DA08(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v6 = v4[18];
    v7 = v4[19];

    return _swift_task_switch(sub_10025E014, v6, v7);
  }

  else
  {
    v4[28] = a1;
    v8 = swift_task_alloc();
    v4[29] = v8;
    *v8 = v5;
    v8[1] = sub_10025DE7C;
    v9 = v4[13];

    return sub_10025E154(a1, v9);
  }
}

uint64_t sub_10025DB8C()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_10025DD2C;
  }

  else
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_10025DCB0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10025DCB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10025DD2C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  LOBYTE(v2) = *(v0 + 240);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 241) = 0;

  sub_1004B85B4();
  sub_100257F58(v2);
  sub_10025B2E8(v1, 0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10025DE7C()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_10025DF9C, v3, v2);
}

uint64_t sub_10025DF9C()
{
  v1 = v0[28];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10025E014()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 88);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v3 = *(v0 + 242);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 243) = 0;

  sub_1004B85B4();
  sub_100257F58(v3);
  v4 = v2;
  sub_10025B2E8(v1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10025E154(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v3[34] = type metadata accessor for GroupActivitiesManager.Activity(0);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_10025E204, 0, 0);
}

uint64_t sub_10025E204()
{
  v22 = v0;
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 sharedListeningProperties];
    *(v0 + 304) = v3;
    if (v3)
    {
      if (qword_100600118 != -1)
      {
        swift_once();
      }

      v4 = qword_100608660;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 224;
      *(v0 + 24) = sub_10025E5C0;
      v5 = swift_continuation_init();
      *(v0 + 136) = sub_100003ABC(&qword_100608F78, &unk_1004D7800);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_10011DD78;
      *(v0 + 104) = &unk_1005BC560;
      *(v0 + 112) = v5;
      [v2 getRepresentativeObjectWithProperties:v4 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v6 = *(v0 + 352);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 353) = 0;

  sub_1004B85B4();
  sub_100257F58(v6);
  if (qword_100600120 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 248);
  v8 = sub_1004B80B4();
  sub_100007084(v8, static Logger.groupActivities);
  v9 = v7;
  v10 = sub_1004B8094();
  v11 = sub_1004BC9A4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 248);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    *(v0 + 216) = v12;
    v15 = v9;
    sub_100003ABC(&unk_100608790, &unk_1004D7270);
    v16 = sub_1004BBF34();
    v18 = sub_100012018(v16, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Cannot activate intent=%{public}s", v13, 0xCu);
    sub_100004C6C(v14);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10025E5C0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_10025ED3C;
  }

  else
  {
    v2 = sub_10025E6D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10025E6D0(uint64_t a1, uint64_t a2)
{
  v41 = v2;
  v3 = v2[28];
  v2[40] = v3;
  if (qword_100600120 != -1)
  {
    swift_once();
  }

  v4 = sub_1004B80B4();
  v2[41] = sub_100007084(v4, static Logger.groupActivities);
  v5 = v3;
  v6 = sub_1004B8094();
  v7 = sub_1004BC9A4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40 = v9;
    *v8 = 136446210;
    v2[30] = v3;
    v10 = v5;
    sub_100003ABC(&qword_1006090E8, &qword_1004D7968);
    v11 = sub_1004BBF04();
    v13 = sub_100012018(v11, v12, &v40);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Activity starting item=%{public}s", v8, 0xCu);
    sub_100004C6C(v9);
  }

  v14 = v2[37];
  v15 = v2[33];
  sub_10026A2D0(v2[32], v14, type metadata accessor for GroupActivitiesManager.Activity);
  sub_100007214(v14, &qword_1006086B8, &qword_1004D70A8);
  swift_beginAccess();
  sub_10001342C(v15 + 16, v14);
  if (v5)
  {
    v17 = [v5 innermostModelObject];
    type metadata accessor for CodableModelObjectIdentity(0, v18);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
  }

  else
  {
    type metadata accessor for CodableModelObjectIdentity(0, v16);
    swift_allocObject();
    swift_deallocPartialClassInstance();
    v19 = 0;
  }

  v21 = v2[37];
  v20 = v2[38];

  *(v21 + 56) = v19;
  type metadata accessor for CodableListeningProperties(0, v22);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v21 + 48) = v23;
  v24 = v20;

  v25 = sub_1004B8094();
  v26 = sub_1004BC9A4();
  if (os_log_type_enabled(v25, v26))
  {
    v28 = v2[36];
    v27 = v2[37];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40 = v30;
    *v29 = 136446210;
    swift_beginAccess();
    sub_10026A2D0(v27, v28, type metadata accessor for GroupActivitiesManager.Activity);
    v31 = sub_1004BBF04();
    v33 = sub_100012018(v31, v32, &v40);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "🚀 Activiting activity=%{public}s", v29, 0xCu);
    sub_100004C6C(v30);
  }

  v34 = v2[37];
  v35 = v2[35];
  swift_beginAccess();
  sub_10026A2D0(v34, v35, type metadata accessor for GroupActivitiesManager.Activity);
  v36 = swift_task_alloc();
  v2[42] = v36;
  v37 = sub_10026ACA4(&qword_1006086A0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  *v36 = v2;
  v36[1] = sub_10025EB44;
  v38 = v2[34];

  return GroupActivity.activate()(v38, v37);
}

uint64_t sub_10025EB44()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  sub_10026A624(*(v2 + 280), type metadata accessor for GroupActivitiesManager.Activity);
  if (v0)
  {
    v3 = sub_10025F16C;
  }

  else
  {
    v3 = sub_10025EC8C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10025EC8C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v0 + 248);

  sub_10026A624(v2, type metadata accessor for GroupActivitiesManager.Activity);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10025ED3C(uint64_t a1)
{
  v34 = v1;
  swift_willThrow();

  v1[40] = 0;
  if (qword_100600120 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();
  v1[41] = sub_100007084(v2, static Logger.groupActivities);
  v3 = sub_1004B8094();
  v4 = sub_1004BC9A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33[0] = v6;
    *v5 = 136446210;
    v1[30] = 0;
    sub_100003ABC(&qword_1006090E8, &qword_1004D7968);
    v7 = sub_1004BBF04();
    v9 = sub_100012018(v7, v8, v33);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Activity starting item=%{public}s", v5, 0xCu);
    sub_100004C6C(v6);
  }

  v10 = v1[37];
  v11 = v1[33];
  sub_10026A2D0(v1[32], v10, type metadata accessor for GroupActivitiesManager.Activity);
  sub_100007214(v10, &qword_1006086B8, &qword_1004D70A8);
  swift_beginAccess();
  sub_10001342C(v11 + 16, v10);
  type metadata accessor for CodableModelObjectIdentity(0, v12);
  swift_allocObject();
  swift_deallocPartialClassInstance();
  v14 = v1[37];
  v13 = v1[38];

  *(v14 + 56) = 0;
  type metadata accessor for CodableListeningProperties(0, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v14 + 48) = v16;
  v17 = v13;

  v18 = sub_1004B8094();
  v19 = sub_1004BC9A4();
  if (os_log_type_enabled(v18, v19))
  {
    v21 = v1[36];
    v20 = v1[37];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33[0] = v23;
    *v22 = 136446210;
    swift_beginAccess();
    sub_10026A2D0(v20, v21, type metadata accessor for GroupActivitiesManager.Activity);
    v24 = sub_1004BBF04();
    v26 = sub_100012018(v24, v25, v33);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "🚀 Activiting activity=%{public}s", v22, 0xCu);
    sub_100004C6C(v23);
  }

  v27 = v1[37];
  v28 = v1[35];
  swift_beginAccess();
  sub_10026A2D0(v27, v28, type metadata accessor for GroupActivitiesManager.Activity);
  v29 = swift_task_alloc();
  v1[42] = v29;
  v30 = sub_10026ACA4(&qword_1006086A0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  *v29 = v1;
  v29[1] = sub_10025EB44;
  v31 = v1[34];

  return GroupActivity.activate()(v31, v30);
}

uint64_t sub_10025F16C()
{
  v20 = v0;
  swift_errorRetain();
  v1 = sub_1004B8094();
  v2 = sub_1004BC9A4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 344);
    v4 = *(v0 + 320);
    v17 = *(v0 + 304);
    v18 = *(v0 + 296);
    v5 = *(v0 + 248);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446210;
    *(v0 + 232) = v3;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v8 = sub_1004BBF04();
    v10 = sub_100012018(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Activation failed=%{public}s", v6, 0xCu);
    sub_100004C6C(v7);

    v11 = v18;
  }

  else
  {
    v12 = *(v0 + 320);
    v13 = *(v0 + 296);
    v14 = *(v0 + 248);

    v11 = v13;
  }

  sub_10026A624(v11, type metadata accessor for GroupActivitiesManager.Activity);

  v15 = *(v0 + 8);

  return v15();
}

double sub_10025F390(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = sub_1004BC4B4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_10026A2D0(a3, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupActivitiesManager.Activity);
  v11 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a1;
  sub_10026A268(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for GroupActivitiesManager.Activity);
  v13 = a1;

  sub_1000FD6BC(0, 0, v9, &unk_1004D7978, v12);

  return result;
}

uint64_t sub_10025F574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_10001384C;

  return sub_10025E154(a5, a6);
}

uint64_t sub_10025F620(uint64_t a1, unint64_t a2)
{
  v5._countAndFlagsBits = 0x616C506572616853;
  v5._object = 0xEC0000003D444979;
  if (sub_1004BC0B4(v5))
  {
    sub_100269220(0xC0007uLL, a1, a2);
    a1 = sub_1004BBF64();
  }

  else
  {
  }

  return a1;
}

uint64_t GroupActivitiesManager.sessionForReactionAssociation()()
{
  if (GroupActivitiesManager.hasJoined.getter())
  {
  }

  else
  {
    return 0;
  }
}

void sub_10025F6F0()
{
  v1 = sub_100003ABC(&qword_1006090E0, &qword_1004D7958);
  __chkstk_darwin();
  v68 = &v60 - v2;
  sub_100003ABC(&qword_1006087D8, &qword_1004D72E8);
  __chkstk_darwin();
  v67 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v60 - v4;
  __chkstk_darwin();
  v7 = &v60 - v6;
  __chkstk_darwin();
  v9 = &v60 - v8;
  v10 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  __chkstk_darwin();
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  __chkstk_darwin();
  v14 = &v60 - v13;
  __chkstk_darwin();
  v16 = &v60 - v15;
  __chkstk_darwin();
  v20 = &v60 - v19;
  v70 = v0;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {
    v64 = v18;
    v65 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
    v69 = v17;

    sub_1004B74C4();

    v21 = *(v20 + 6);
    if (!v21)
    {
      v29 = v20;
LABEL_9:
      sub_10026A624(v29, type metadata accessor for GroupActivitiesManager.Activity);
      return;
    }

    v62 = v12;
    v63 = v16;
    v66 = *(v21 + 16);
    sub_10026A624(v20, type metadata accessor for GroupActivitiesManager.Activity);
    v22 = v70 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    v23 = *(v10 + 48);
    if (!v23(v22, 1, v69))
    {
      type metadata accessor for CodableListeningProperties(0, v24);
      v25 = swift_allocObject();
      v26 = v66;
      *(v25 + 16) = v66;
      *(v22 + 48) = v25;
      v27 = v26;
    }

    swift_endAccess();
    if ((GroupActivitiesManager.hasJoined.getter() & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_10000F778(v22, v9, &qword_1006087D8, &qword_1004D72E8);
    v28 = v69;
    if (v23(v9, 1, v69) == 1)
    {

      sub_100007214(v9, &qword_1006087D8, &qword_1004D72E8);
      return;
    }

    v30 = v63;
    sub_10026A268(v9, v63, type metadata accessor for GroupActivitiesManager.Activity);
    sub_10026A2D0(v30, v7, type metadata accessor for GroupActivitiesManager.Activity);
    v31 = 1;
    v61 = *(v10 + 56);
    v61(v7, 0, 1, v28);
    if (*(v70 + v65))
    {

      sub_1004B74C4();

      v31 = 0;
    }

    v33 = v68;
    v32 = v69;
    v61(v5, v31, 1, v69);
    v34 = *(v1 + 48);
    sub_10000F778(v7, v33, &qword_1006087D8, &qword_1004D72E8);
    sub_10000F778(v5, v33 + v34, &qword_1006087D8, &qword_1004D72E8);
    if (v23(v33, 1, v32) == 1)
    {
      sub_100007214(v5, &qword_1006087D8, &qword_1004D72E8);
      sub_100007214(v7, &qword_1006087D8, &qword_1004D72E8);
      v35 = v23(v33 + v34, 1, v32);
      v36 = v63;
      if (v35 == 1)
      {
        sub_100007214(v33, &qword_1006087D8, &qword_1004D72E8);
LABEL_15:
        sub_10026A624(v36, type metadata accessor for GroupActivitiesManager.Activity);
LABEL_16:

        return;
      }
    }

    else
    {
      v37 = v67;
      sub_10000F778(v33, v67, &qword_1006087D8, &qword_1004D72E8);
      if (v23(v33 + v34, 1, v32) != 1)
      {
        sub_10026A268(v33 + v34, v14, type metadata accessor for GroupActivitiesManager.Activity);
        v41 = *(v37 + 56);
        v36 = v63;
        if (v41)
        {
          v42 = *(v14 + 7);
          if (v42)
          {
            v43 = *(v42 + 16);
            v44 = *(v41 + 16);
            v45 = v43;
            v46 = [v44 identifiers];
            v47 = v33;
            v48 = [v45 identifiers];
            v49 = [v46 intersectsSet:v48];

            sub_10026A624(v14, type metadata accessor for GroupActivitiesManager.Activity);
            sub_100007214(v5, &qword_1006087D8, &qword_1004D72E8);
            sub_100007214(v7, &qword_1006087D8, &qword_1004D72E8);
            sub_10026A624(v67, type metadata accessor for GroupActivitiesManager.Activity);
            sub_100007214(v47, &qword_1006087D8, &qword_1004D72E8);
            if (v49)
            {
              goto LABEL_15;
            }

            goto LABEL_27;
          }
        }

        sub_10026A624(v14, type metadata accessor for GroupActivitiesManager.Activity);
        sub_100007214(v5, &qword_1006087D8, &qword_1004D72E8);
        sub_100007214(v7, &qword_1006087D8, &qword_1004D72E8);
        sub_10026A624(v67, type metadata accessor for GroupActivitiesManager.Activity);
        v40 = v33;
        v38 = &qword_1006087D8;
        v39 = &qword_1004D72E8;
LABEL_26:
        sub_100007214(v40, v38, v39);
LABEL_27:
        if (*(v70 + v65))
        {
          sub_10026A2D0(v36, v64, type metadata accessor for GroupActivitiesManager.Activity);

          sub_1004B74D4();
        }

        if (qword_100600120 != -1)
        {
          swift_once();
        }

        v50 = sub_1004B80B4();
        sub_100007084(v50, static Logger.groupActivities);
        v51 = v62;
        sub_10026A2D0(v36, v62, type metadata accessor for GroupActivitiesManager.Activity);
        v52 = sub_1004B8094();
        v53 = sub_1004BC9A4();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v71[0] = v55;
          *v54 = 136446210;
          sub_10026A2D0(v51, v64, type metadata accessor for GroupActivitiesManager.Activity);
          v56 = sub_1004BBF04();
          v58 = v57;
          sub_10026A624(v51, type metadata accessor for GroupActivitiesManager.Activity);
          v59 = sub_100012018(v56, v58, v71);

          *(v54 + 4) = v59;
          _os_log_impl(&_mh_execute_header, v52, v53, "Updating session activity=%{public}s", v54, 0xCu);
          sub_100004C6C(v55);
        }

        else
        {

          sub_10026A624(v51, type metadata accessor for GroupActivitiesManager.Activity);
        }

        v29 = v36;
        goto LABEL_9;
      }

      sub_100007214(v5, &qword_1006087D8, &qword_1004D72E8);
      sub_100007214(v7, &qword_1006087D8, &qword_1004D72E8);
      sub_10026A624(v37, type metadata accessor for GroupActivitiesManager.Activity);
      v36 = v63;
    }

    v38 = &qword_1006090E0;
    v39 = &qword_1004D7958;
    v40 = v33;
    goto LABEL_26;
  }
}