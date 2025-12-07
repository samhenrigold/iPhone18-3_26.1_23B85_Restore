uint64_t sub_10071133C()
{

  return _swift_task_switch(sub_100711454, 0, 0);
}

uint64_t sub_100711454()
{
  v1 = *(v0 + 16);
  *(v0 + 88) = v1;
  if (*(v0 + 24) == 1)
  {
    v2 = *(v0 + 56);

    v3 = *(v0 + 40);
    v4 = *(v0 + 8);

    return v4(v1, 1);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = sub_10071154C;

    return sub_1007116FC(v1);
  }
}

uint64_t sub_10071154C(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  *(v3 + 104) = a1;
  *(v3 + 25) = a2;

  sub_100712464(v4, 0);

  return _swift_task_switch(sub_100711674, 0, 0);
}

uint64_t sub_100711674()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 25);
  v3 = *(v0 + 104);
  v4 = *(v0 + 40);

  v5 = *(v0 + 8);

  return v5(v3, v2 & 1);
}

uint64_t sub_1007116FC(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_10071171C, 0, 0);
}

uint64_t sub_10071171C()
{
  if (v0[4] && (v1 = *(v0[5] + OBJC_IVAR____TtC5Music13AuthPresenter_presentingViewController), (v0[6] = v1) != 0))
  {
    v2 = objc_allocWithZone(AMSAuthenticateOptions);
    v3 = v1;
    v4 = [v2 init];
    v0[7] = v4;
    [v4 setAuthenticationType:1];
    [v4 setIgnoreAccountConversion:1];
    v5 = objc_allocWithZone(AMSUIAuthenticateTask);
    v6 = v3;
    v7 = v4;
    sub_10010FC20(&qword_1011A0088, &qword_100EDF4F0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v9 = [v5 initWithAuthenticationResults:isa presentingViewController:v6 options:v7];
    v0[8] = v9;

    v10 = swift_task_alloc();
    v0[9] = v10;
    *(v10 + 16) = v9;
    v11 = swift_task_alloc();
    v0[10] = v11;
    v12 = sub_10010FC20(&qword_1011A0090, &qword_100EDF4F8);
    *v11 = v0;
    v11[1] = sub_10071196C;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000002CLL, 0x8000000100E55CF0, sub_1007124C4, v10, v12);
  }

  else
  {
    sub_100712470();
    v13 = swift_allocError();
    v14 = v0[1];

    return v14(v13, 1);
  }
}

uint64_t sub_10071196C()
{

  return _swift_task_switch(sub_100711A84, 0, 0);
}

uint64_t sub_100711A84()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 8);

  return v5(v3, v4);
}

double sub_100711AF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10010FC20(&qword_1011A0088, &qword_100EDF4F0);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

void sub_100711BA8(uint64_t a1, void *a2)
{
  v4 = sub_10010FC20(&qword_1011A0098, &qword_100EDF500);
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = aBlock - v7;
  v9 = [a2 performAuthentication];
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_1007124CC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B378;
  aBlock[3] = &unk_1010BC718;
  v12 = _Block_copy(aBlock);

  [v9 addFinishBlock:v12];
  _Block_release(v12);
}

uint64_t sub_100711D78(uint64_t a1, _BOOL8 a2)
{
  if (a2)
  {
    swift_errorRetain();
  }

  sub_10010FC20(&qword_1011A0098, &qword_100EDF500);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100711DEC()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_100711EF4()
{
  v1 = OBJC_IVAR____TtC5Music13AuthPresenter__isAuthenticating;
  v2 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AuthPresenter(uint64_t a1)
{
  result = qword_10119FFB8;
  if (!qword_10119FFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100712000(uint64_t a1)
{
  sub_100008E30();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_100712248()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresentingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1007122A4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10010FC20(&unk_1011A00A0, &unk_100EDF508);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_100712564;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100711AF8;
  aBlock[3] = &unk_1010BC768;
  v13 = _Block_copy(aBlock);

  [a2 authenticateWithContext:a3 completion:v13];
  _Block_release(v13);
}

double sub_100712464(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_100712470()
{
  result = qword_1011A0080;
  if (!qword_1011A0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0080);
  }

  return result;
}

uint64_t sub_1007124F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
  }

  sub_10010FC20(&unk_1011A00A0, &unk_100EDF508);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10071258C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_10010FC20(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

unint64_t sub_10071263C()
{
  result = qword_1011A00B0;
  if (!qword_1011A00B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A00B0);
  }

  return result;
}

uint64_t sub_100712698()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = type metadata accessor for MusicSubscription.PrivacyAcknowledgementPolicy();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = type metadata accessor for MusicSubscription();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_10071280C, 0, 0);
}

uint64_t sub_10071280C()
{
  (*(v0[6] + 104))(v0[7], enum case for MusicSubscription.PrivacyAcknowledgementPolicy.promptProhibited(_:), v0[5]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1007128CC;
  v2 = v0[10];
  v3 = v0[7];

  return static MusicSubscription.current(privacyAcknowledgementPolicy:)(v2, v3);
}

uint64_t sub_1007128CC()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100712AE4;
  }

  else
  {
    v5 = sub_100712A3C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100712A3C()
{
  v1 = MusicSubscription.canPlayCatalogContent.getter();
  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];

  return v2(v1 & 1);
}

uint64_t sub_100712AE4()
{
  static Logger.music(_:)(0xD000000000000018, 0x8000000100E55E60);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to get subscription state with error %{public}@", v3, 0xCu);
    sub_1000095E8(v4, &unk_101183D70, &unk_100EC6540);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_100712CA4()
{
  v1[2] = v0;
  v2 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_10010FC20(&qword_10118FE28, &unk_100EDF710);
  v1[7] = swift_task_alloc();
  sub_10010FC20(&qword_10118FE30, &qword_100ED77B0);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_100712E24, v4, v3);
}

uint64_t sub_100712E24()
{
  type metadata accessor for InternalMusicPlayer();
  v0[14] = static InternalMusicPlayer.localDevice.getter();
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = type metadata accessor for Playlist();
  *v1 = v0;
  v1[1] = sub_100712EEC;
  v3 = v0[10];
  v4 = v0[2];

  return InternalMusicPlayer.playabilityStatus<A>(for:)(v3, v4, v2, &protocol witness table for Playlist);
}

uint64_t sub_100712EEC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_100726824;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_100726820;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100713030()
{
  v1[2] = v0;
  v2 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_10010FC20(&qword_10118FE28, &unk_100EDF710);
  v1[7] = swift_task_alloc();
  sub_10010FC20(&qword_10118FE30, &qword_100ED77B0);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_1007131B0, v4, v3);
}

uint64_t sub_1007131B0()
{
  type metadata accessor for InternalMusicPlayer();
  v0[14] = static InternalMusicPlayer.localDevice.getter();
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = type metadata accessor for Album();
  *v1 = v0;
  v1[1] = sub_100712EEC;
  v3 = v0[10];
  v4 = v0[2];

  return InternalMusicPlayer.playabilityStatus<A>(for:)(v3, v4, v2, &protocol witness table for Album);
}

uint64_t sub_100713278()
{
  v1[2] = v0;
  v2 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_10010FC20(&qword_10118FE28, &unk_100EDF710);
  v1[7] = swift_task_alloc();
  sub_10010FC20(&qword_10118FE30, &qword_100ED77B0);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_1007133F8, v4, v3);
}

uint64_t sub_1007133F8()
{
  type metadata accessor for InternalMusicPlayer();
  v0[14] = static InternalMusicPlayer.localDevice.getter();
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = type metadata accessor for RecentlyPlayedMusicItem();
  *v1 = v0;
  v1[1] = sub_1007134C0;
  v3 = v0[10];
  v4 = v0[2];

  return InternalMusicPlayer.playabilityStatus<A>(for:)(v3, v4, v2, &protocol witness table for RecentlyPlayedMusicItem);
}

uint64_t sub_1007134C0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_10071399C;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_100713604;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100713604()
{
  v1 = v0[10];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[3];
  v6 = v0[4];

  v7 = *(v6 + 56);
  v7(v1, 0, 1, v5);
  (*(v6 + 104))(v2, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v5);
  v7(v2, 0, 1, v5);
  v8 = *(v4 + 48);
  sub_1000089F8(v1, v3, &qword_10118FE30, &qword_100ED77B0);
  sub_1000089F8(v2, v3 + v8, &qword_10118FE30, &qword_100ED77B0);
  v9 = *(v6 + 48);
  if (v9(v3, 1, v5) == 1)
  {
    v10 = v0[10];
    v11 = v0[3];
    sub_1000095E8(v0[9], &qword_10118FE30, &qword_100ED77B0);
    sub_1000095E8(v10, &qword_10118FE30, &qword_100ED77B0);
    if (v9(v3 + v8, 1, v11) == 1)
    {
      sub_1000095E8(v0[7], &qword_10118FE30, &qword_100ED77B0);
      v12 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v13 = v0[3];
  sub_1000089F8(v0[7], v0[8], &qword_10118FE30, &qword_100ED77B0);
  v14 = v9(v3 + v8, 1, v13);
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];
  if (v14 == 1)
  {
    v18 = v0[3];
    v19 = v0[4];
    sub_1000095E8(v0[9], &qword_10118FE30, &qword_100ED77B0);
    sub_1000095E8(v15, &qword_10118FE30, &qword_100ED77B0);
    (*(v19 + 8))(v17, v18);
LABEL_6:
    sub_1000095E8(v0[7], &qword_10118FE28, &unk_100EDF710);
    v12 = 0;
    goto LABEL_8;
  }

  v26 = v0[7];
  v21 = v0[4];
  v20 = v0[5];
  v22 = v0[3];
  (*(v21 + 32))(v20, v3 + v8, v22);
  sub_100726488(&qword_10118BFC0, &type metadata accessor for MusicPlayer.PlayabilityStatus, &protocol conformance descriptor for MusicPlayer.PlayabilityStatus);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v21 + 8);
  v23(v20, v22);
  sub_1000095E8(v16, &qword_10118FE30, &qword_100ED77B0);
  sub_1000095E8(v15, &qword_10118FE30, &qword_100ED77B0);
  v23(v17, v22);
  sub_1000095E8(v26, &qword_10118FE30, &qword_100ED77B0);
LABEL_8:

  v24 = v0[1];

  return v24(v12 & 1);
}

uint64_t sub_10071399C()
{
  v1 = v0[10];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[3];
  v6 = v0[4];

  v7 = *(v6 + 56);
  v7(v1, 1, 1, v5);
  (*(v6 + 104))(v2, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v5);
  v7(v2, 0, 1, v5);
  v8 = *(v4 + 48);
  sub_1000089F8(v1, v3, &qword_10118FE30, &qword_100ED77B0);
  sub_1000089F8(v2, v3 + v8, &qword_10118FE30, &qword_100ED77B0);
  v9 = *(v6 + 48);
  if (v9(v3, 1, v5) == 1)
  {
    v10 = v0[10];
    v11 = v0[3];
    sub_1000095E8(v0[9], &qword_10118FE30, &qword_100ED77B0);
    sub_1000095E8(v10, &qword_10118FE30, &qword_100ED77B0);
    if (v9(v3 + v8, 1, v11) == 1)
    {
      sub_1000095E8(v0[7], &qword_10118FE30, &qword_100ED77B0);
      v12 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v13 = v0[3];
  sub_1000089F8(v0[7], v0[8], &qword_10118FE30, &qword_100ED77B0);
  v14 = v9(v3 + v8, 1, v13);
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];
  if (v14 == 1)
  {
    v18 = v0[3];
    v19 = v0[4];
    sub_1000095E8(v0[9], &qword_10118FE30, &qword_100ED77B0);
    sub_1000095E8(v15, &qword_10118FE30, &qword_100ED77B0);
    (*(v19 + 8))(v17, v18);
LABEL_6:
    sub_1000095E8(v0[7], &qword_10118FE28, &unk_100EDF710);
    v12 = 0;
    goto LABEL_8;
  }

  v26 = v0[7];
  v21 = v0[4];
  v20 = v0[5];
  v22 = v0[3];
  (*(v21 + 32))(v20, v3 + v8, v22);
  sub_100726488(&qword_10118BFC0, &type metadata accessor for MusicPlayer.PlayabilityStatus, &protocol conformance descriptor for MusicPlayer.PlayabilityStatus);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v21 + 8);
  v23(v20, v22);
  sub_1000095E8(v16, &qword_10118FE30, &qword_100ED77B0);
  sub_1000095E8(v15, &qword_10118FE30, &qword_100ED77B0);
  v23(v17, v22);
  sub_1000095E8(v26, &qword_10118FE30, &qword_100ED77B0);
LABEL_8:

  v24 = v0[1];

  return v24(v12 & 1);
}

double sub_100713D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v58 = a3;
  v66 = a1;
  v67 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin();
  v61 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v60 = *(v62 - 8);
  __chkstk_darwin();
  v59 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for WidgetDiskCache(0);
  v55 = *(v65 - 8);
  __chkstk_darwin();
  v56 = v8;
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(sub_10010FC20(&qword_10118DA20, &qword_100EDF7F0) - 8);
  v9 = *(v53 + 64);
  __chkstk_darwin();
  v54 = &v46 - v10;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v12 = &v46 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v52 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v46 - v16;
  __chkstk_darwin();
  v19 = &v46 - v18;
  sub_1000089F8(v3, v12, &qword_101183A20, &unk_100EBCF80);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v20 = v66;
    sub_1000095E8(v12, &qword_101183A20, &unk_100EBCF80);
    v21 = v67;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_1000105AC(v20, v21, aBlock);
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to get widget cache url for saving item named %{public}s", v24, 0xCu);
      sub_10000959C(v25);
    }
  }

  else
  {
    URL.appending(_:)(v66, v67, 1);
    v27 = *(v14 + 8);
    v50 = v14 + 8;
    v51 = v27;
    v27(v12, v13);
    v48 = *(v14 + 32);
    v49 = v19;
    v28 = v17;
    v29 = v13;
    v47 = v13;
    v48(v19, v28, v13);
    v65 = *(v3 + *(v65 + 20));
    v30 = v54;
    sub_1000089F8(v58, v54, &qword_10118DA20, &qword_100EDF7F0);
    v31 = v57;
    sub_10072660C(v4, v57, type metadata accessor for WidgetDiskCache);
    v32 = v52;
    (*(v14 + 16))(v52, v19, v29);
    v33 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v34 = (v9 + *(v55 + 80) + v33) & ~*(v55 + 80);
    v35 = (v56 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (*(v14 + 80) + v35 + 16) & ~*(v14 + 80);
    v37 = swift_allocObject();
    sub_10003D17C(v30, v37 + v33, &qword_10118DA20, &qword_100EDF7F0);
    sub_100726674(v31, v37 + v34, type metadata accessor for WidgetDiskCache);
    v38 = (v37 + v35);
    v39 = v67;
    *v38 = v66;
    v38[1] = v39;
    v40 = v32;
    v41 = v47;
    v48((v37 + v36), v40, v47);
    aBlock[4] = sub_100726460;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010BC9B0;
    v42 = _Block_copy(aBlock);

    v43 = v59;
    static DispatchQoS.unspecified.getter();
    v68 = _swiftEmptyArrayStorage;
    sub_100726488(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970, &qword_100EBD250);
    sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
    v44 = v61;
    v45 = v64;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v42);
    (*(v63 + 8))(v44, v45);
    (*(v60 + 8))(v43, v62);
    v51(v49, v41);
  }

  return result;
}

double sub_100714544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = a3;
  v58 = a1;
  v59 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v5 - 8);
  v56 = v5;
  __chkstk_darwin();
  v53 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v52 = *(v54 - 8);
  __chkstk_darwin();
  v51 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for WidgetDiskCache(0);
  v48 = *(v57 - 8);
  v8 = *(v48 + 64);
  __chkstk_darwin();
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v10 = &v44 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v44 - v15;
  __chkstk_darwin();
  v18 = &v44 - v17;
  v19 = v4;
  sub_1000089F8(v4, v10, &qword_101183A20, &unk_100EBCF80);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v20 = v58;
    sub_1000095E8(v10, &qword_101183A20, &unk_100EBCF80);
    v21 = v59;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_1000105AC(v20, v21, aBlock);
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to get widget cache url for saving item named %{public}s", v24, 0xCu);
      sub_10000959C(v25);
    }
  }

  else
  {
    URL.appending(_:)(v58, v59, 1);
    v27 = v11;
    v46 = *(v12 + 8);
    v47 = v12 + 8;
    v46(v10, v11);
    v28 = *(v12 + 32);
    v45 = v18;
    v28(v18, v16, v27);
    v57 = *(v19 + *(v57 + 20));
    v29 = v19;
    v30 = v49;
    sub_10072660C(v29, v49, type metadata accessor for WidgetDiskCache);
    v31 = v18;
    v32 = v27;
    (*(v12 + 16))(v14, v31, v27);
    v33 = (*(v48 + 80) + 24) & ~*(v48 + 80);
    v34 = (v8 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = (*(v12 + 80) + v34 + 16) & ~*(v12 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = v50;
    sub_100726674(v30, v36 + v33, type metadata accessor for WidgetDiskCache);
    v37 = (v36 + v34);
    v38 = v59;
    *v37 = v58;
    v37[1] = v38;
    v39 = v32;
    v28((v36 + v35), v14, v32);
    aBlock[4] = sub_10072619C;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010BC870;
    v40 = _Block_copy(aBlock);

    v41 = v51;
    static DispatchQoS.unspecified.getter();
    v60 = _swiftEmptyArrayStorage;
    sub_100726488(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970, &qword_100EBD250);
    sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
    v42 = v53;
    v43 = v56;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v40);
    (*(v55 + 8))(v42, v43);
    (*(v52 + 8))(v41, v54);
    v46(v45, v39);
  }

  return result;
}

double sub_100714C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v58 = a3;
  v66 = a1;
  v67 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin();
  v61 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v60 = *(v62 - 8);
  __chkstk_darwin();
  v59 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for WidgetDiskCache(0);
  v55 = *(v65 - 8);
  __chkstk_darwin();
  v56 = v8;
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(sub_10010FC20(&qword_10118F120, &unk_100ED5660) - 8);
  v9 = *(v53 + 64);
  __chkstk_darwin();
  v54 = &v46 - v10;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v12 = &v46 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v52 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v46 - v16;
  __chkstk_darwin();
  v19 = &v46 - v18;
  sub_1000089F8(v3, v12, &qword_101183A20, &unk_100EBCF80);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v20 = v66;
    sub_1000095E8(v12, &qword_101183A20, &unk_100EBCF80);
    v21 = v67;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_1000105AC(v20, v21, aBlock);
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to get widget cache url for saving item named %{public}s", v24, 0xCu);
      sub_10000959C(v25);
    }
  }

  else
  {
    URL.appending(_:)(v66, v67, 1);
    v27 = *(v14 + 8);
    v50 = v14 + 8;
    v51 = v27;
    v27(v12, v13);
    v48 = *(v14 + 32);
    v49 = v19;
    v28 = v17;
    v29 = v13;
    v47 = v13;
    v48(v19, v28, v13);
    v65 = *(v3 + *(v65 + 20));
    v30 = v54;
    sub_1000089F8(v58, v54, &qword_10118F120, &unk_100ED5660);
    v31 = v57;
    sub_10072660C(v4, v57, type metadata accessor for WidgetDiskCache);
    v32 = v52;
    (*(v14 + 16))(v52, v19, v29);
    v33 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v34 = (v9 + *(v55 + 80) + v33) & ~*(v55 + 80);
    v35 = (v56 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (*(v14 + 80) + v35 + 16) & ~*(v14 + 80);
    v37 = swift_allocObject();
    sub_10003D17C(v30, v37 + v33, &qword_10118F120, &unk_100ED5660);
    sub_100726674(v31, v37 + v34, type metadata accessor for WidgetDiskCache);
    v38 = (v37 + v35);
    v39 = v67;
    *v38 = v66;
    v38[1] = v39;
    v40 = v32;
    v41 = v47;
    v48((v37 + v36), v40, v47);
    aBlock[4] = sub_1007262C4;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010BC910;
    v42 = _Block_copy(aBlock);

    v43 = v59;
    static DispatchQoS.unspecified.getter();
    v68 = _swiftEmptyArrayStorage;
    sub_100726488(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970, &qword_100EBD250);
    sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
    v44 = v61;
    v45 = v64;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v42);
    (*(v63 + 8))(v44, v45);
    (*(v60 + 8))(v43, v62);
    v51(v49, v41);
  }

  return result;
}

double sub_100715450(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v51 = a3;
  v59 = a1;
  v60 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin();
  v54 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  __chkstk_darwin();
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for WidgetDiskCache(0);
  v49 = *(v58 - 8);
  v8 = *(v49 + 64);
  __chkstk_darwin();
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v10 = &v45 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v45 - v15;
  __chkstk_darwin();
  v18 = &v45 - v17;
  v19 = v4;
  sub_1000089F8(v4, v10, &qword_101183A20, &unk_100EBCF80);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v20 = v59;
    sub_1000095E8(v10, &qword_101183A20, &unk_100EBCF80);
    v21 = v60;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_1000105AC(v20, v21, aBlock);
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to get widget cache url for saving item named %{public}s", v24, 0xCu);
      sub_10000959C(v25);
    }
  }

  else
  {
    URL.appending(_:)(v59, v60, 1);
    v27 = v11;
    v47 = *(v12 + 8);
    v48 = v12 + 8;
    v47(v10, v11);
    v28 = *(v12 + 32);
    v46 = v18;
    v28(v18, v16, v27);
    v58 = *(v19 + *(v58 + 20));
    v29 = v19;
    v30 = v50;
    sub_10072660C(v29, v50, type metadata accessor for WidgetDiskCache);
    v31 = v18;
    v32 = v27;
    (*(v12 + 16))(v14, v31, v27);
    v33 = (*(v49 + 80) + 24) & ~*(v49 + 80);
    v34 = (v8 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = (*(v12 + 80) + v34 + 16) & ~*(v12 + 80);
    v36 = swift_allocObject();
    v37 = v51;
    *(v36 + 16) = v51;
    sub_100726674(v30, v36 + v33, type metadata accessor for WidgetDiskCache);
    v38 = (v36 + v34);
    v39 = v60;
    *v38 = v59;
    v38[1] = v39;
    v40 = v32;
    v28((v36 + v35), v14, v32);
    aBlock[4] = sub_1007261B4;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010BC8C0;
    v41 = _Block_copy(aBlock);
    sub_10069B3BC(v37);

    v42 = v52;
    static DispatchQoS.unspecified.getter();
    v61 = _swiftEmptyArrayStorage;
    sub_100726488(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970, &qword_100EBD250);
    sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
    v43 = v54;
    v44 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v41);
    (*(v56 + 8))(v43, v44);
    (*(v53 + 8))(v42, v55);
    v47(v46, v40);
  }

  return result;
}

double sub_100715B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v58 = a3;
  v66 = a1;
  v67 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin();
  v61 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v60 = *(v62 - 8);
  __chkstk_darwin();
  v59 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for WidgetDiskCache(0);
  v55 = *(v65 - 8);
  __chkstk_darwin();
  v56 = v8;
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(sub_10010FC20(&qword_10118F130, &qword_100ECB640) - 8);
  v9 = *(v53 + 64);
  __chkstk_darwin();
  v54 = &v46 - v10;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v12 = &v46 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v52 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v46 - v16;
  __chkstk_darwin();
  v19 = &v46 - v18;
  sub_1000089F8(v3, v12, &qword_101183A20, &unk_100EBCF80);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v20 = v66;
    sub_1000095E8(v12, &qword_101183A20, &unk_100EBCF80);
    v21 = v67;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_1000105AC(v20, v21, aBlock);
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to get widget cache url for saving item named %{public}s", v24, 0xCu);
      sub_10000959C(v25);
    }
  }

  else
  {
    URL.appending(_:)(v66, v67, 1);
    v27 = *(v14 + 8);
    v50 = v14 + 8;
    v51 = v27;
    v27(v12, v13);
    v48 = *(v14 + 32);
    v49 = v19;
    v28 = v17;
    v29 = v13;
    v47 = v13;
    v48(v19, v28, v13);
    v65 = *(v3 + *(v65 + 20));
    v30 = v54;
    sub_1000089F8(v58, v54, &qword_10118F130, &qword_100ECB640);
    v31 = v57;
    sub_10072660C(v4, v57, type metadata accessor for WidgetDiskCache);
    v32 = v52;
    (*(v14 + 16))(v52, v19, v29);
    v33 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v34 = (v9 + *(v55 + 80) + v33) & ~*(v55 + 80);
    v35 = (v56 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (*(v14 + 80) + v35 + 16) & ~*(v14 + 80);
    v37 = swift_allocObject();
    sub_10003D17C(v30, v37 + v33, &qword_10118F130, &qword_100ECB640);
    sub_100726674(v31, v37 + v34, type metadata accessor for WidgetDiskCache);
    v38 = (v37 + v35);
    v39 = v67;
    *v38 = v66;
    v38[1] = v39;
    v40 = v32;
    v41 = v47;
    v48((v37 + v36), v40, v47);
    aBlock[4] = sub_1007262EC;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010BC960;
    v42 = _Block_copy(aBlock);

    v43 = v59;
    static DispatchQoS.unspecified.getter();
    v68 = _swiftEmptyArrayStorage;
    sub_100726488(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970, &qword_100EBD250);
    sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
    v44 = v61;
    v45 = v64;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v42);
    (*(v63 + 8))(v44, v45);
    (*(v60 + 8))(v43, v62);
    v51(v49, v41);
  }

  return result;
}

id sub_10071635C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v67 = a3;
  v68 = a4;
  v69 = a2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v59 - v10;
  sub_10010FC20(&qword_10118DA20, &qword_100EDF7F0);
  __chkstk_darwin();
  v13 = &v59 - v12;
  v14 = *(type metadata accessor for WidgetMusicRecommendation(0) - 8);
  __chkstk_darwin();
  v64 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v59 - v16;
  __chkstk_darwin();
  v18 = &v59 - v17;
  v20 = v19;
  sub_1000089F8(a1, v13, &qword_10118DA20, &qword_100EDF7F0);
  if ((*(v14 + 48))(v13, 1, v20) == 1)
  {
    sub_1000095E8(v13, &qword_10118DA20, &qword_100EDF7F0);
    type metadata accessor for WidgetDiskCache(0);
    (*(v8 + 16))(v11, a5, v7);
    v21 = v68;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    v24 = v7;
    if (os_log_type_enabled(v22, v23))
    {
      v25 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v25 = 136446466;
      *(v25 + 4) = sub_1000105AC(v67, v21, &v70);
      *(v25 + 12) = 2082;
      sub_100726488(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v8 + 8))(v11, v24);
      v29 = sub_1000105AC(v26, v28, &v70);

      *(v25 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Nil value set for item named %{public}s, removing file %{public}s", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    v36 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v37);
    v39 = v38;
    v70 = 0;
    v40 = [v36 removeItemAtURL:v38 error:&v70];

    v41 = v70;
    if (v40)
    {

      return v41;
    }

    else
    {
      v69 = v70;
      v43 = v70;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    v63 = a5;
    sub_100726674(v13, v18, type metadata accessor for WidgetMusicRecommendation);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_100726488(&qword_1011A0300, type metadata accessor for WidgetMusicRecommendation, &unk_100ED9AE8);
    v30 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v32 = v31;

    v33 = v20;
    v34 = v68;
    v62 = v33;
    v35 = v63;
    Data.write(to:options:)();
    v60 = v30;
    v61 = v32;
    type metadata accessor for WidgetDiskCache(0);
    v44 = v18;
    v45 = v66;
    (*(v8 + 16))(v66, v35, v7);
    v46 = v65;
    sub_10072660C(v44, v65, type metadata accessor for WidgetMusicRecommendation);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = v69;
      *v49 = 136446722;
      sub_100726488(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v63) = v48;
      v51 = v50;
      v53 = v52;
      (*(v8 + 8))(v45, v7);
      v54 = sub_1000105AC(v51, v53, &v70);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      *(v49 + 14) = sub_1000105AC(v67, v34, &v70);
      *(v49 + 22) = 2082;
      sub_10072660C(v46, v64, type metadata accessor for WidgetMusicRecommendation);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      sub_1007264D0(v46, type metadata accessor for WidgetMusicRecommendation);
      v58 = sub_1000105AC(v55, v57, &v70);

      *(v49 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v47, v63, "Saved cache file %{public}s for item named %{public}s, value %{public}s", v49, 0x20u);
      swift_arrayDestroy();

      sub_10002C064(v60, v61);
    }

    else
    {
      sub_10002C064(v60, v61);

      sub_1007264D0(v46, type metadata accessor for WidgetMusicRecommendation);
      (*(v8 + 8))(v45, v7);
    }

    return sub_1007264D0(v44, type metadata accessor for WidgetMusicRecommendation);
  }
}

void sub_100716D8C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v47 - v13;
  if (a1)
  {
    v51 = v10;
    v52 = a3;
    v56 = a1;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    v53 = a1;

    JSONEncoder.init()();
    v15 = sub_10010FC20(&qword_10119B110, &qword_100EDF680);
    sub_100722DA4(&qword_10119B118, &qword_10118EEB8, &unk_100ECC6F4, &protocol conformance descriptor for <A> [A]);
    v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v18 = v17;

    v50 = v15;
    Data.write(to:options:)();
    v48 = v16;
    type metadata accessor for WidgetDiskCache(0);
    v34 = v51;
    (*(v51 + 16))(v12, a5, v9);
    v35 = v53;

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    v49 = v36;
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v55 = v47;
      *v38 = 136446722;
      sub_100726488(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v34 + 8))(v12, v9);
      v42 = sub_1000105AC(v39, v41, &v55);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_1000105AC(v52, a4, &v55);
      *(v38 + 22) = 2082;
      v54[0] = v35;
      v43 = String.init<A>(describing:)();
      v45 = sub_1000105AC(v43, v44, &v55);

      *(v38 + 24) = v45;
      v46 = v49;
      _os_log_impl(&_mh_execute_header, v49, v37, "Saved cache file %{public}s for item named %{public}s, value %{public}s", v38, 0x20u);
      swift_arrayDestroy();

      sub_10002C064(v48, v18);
    }

    else
    {
      sub_10002C064(v48, v18);

      (*(v34 + 8))(v12, v9);
    }
  }

  else
  {
    type metadata accessor for WidgetDiskCache(0);
    (*(v10 + 16))(v14, a5, v9);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v21 = 136446466;
      *(v21 + 4) = sub_1000105AC(a3, a4, &v56);
      *(v21 + 12) = 2082;
      sub_100726488(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v10 + 8))(v14, v9);
      v25 = sub_1000105AC(v22, v24, &v56);

      *(v21 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Nil value set for item named %{public}s, removing file %{public}s", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v10 + 8))(v14, v9);
    }

    v26 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    v56 = 0;
    v30 = [v26 removeItemAtURL:v28 error:&v56];

    v31 = v56;
    if (v30)
    {

      v32 = v31;
    }

    else
    {
      v53 = v56;
      v33 = v56;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

id sub_1007175A8(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v67 = a3;
  v68 = a4;
  v69 = a2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v59 - v10;
  sub_10010FC20(&qword_10118F120, &unk_100ED5660);
  __chkstk_darwin();
  v13 = &v59 - v12;
  v14 = *(type metadata accessor for WidgetMusicItem(0) - 8);
  __chkstk_darwin();
  v64 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v59 - v16;
  __chkstk_darwin();
  v18 = &v59 - v17;
  v20 = v19;
  sub_1000089F8(a1, v13, &qword_10118F120, &unk_100ED5660);
  if ((*(v14 + 48))(v13, 1, v20) == 1)
  {
    sub_1000095E8(v13, &qword_10118F120, &unk_100ED5660);
    type metadata accessor for WidgetDiskCache(0);
    (*(v8 + 16))(v11, a5, v7);
    v21 = v68;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    v24 = v7;
    if (os_log_type_enabled(v22, v23))
    {
      v25 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v25 = 136446466;
      *(v25 + 4) = sub_1000105AC(v67, v21, &v70);
      *(v25 + 12) = 2082;
      sub_100726488(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v8 + 8))(v11, v24);
      v29 = sub_1000105AC(v26, v28, &v70);

      *(v25 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Nil value set for item named %{public}s, removing file %{public}s", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    v36 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v37);
    v39 = v38;
    v70 = 0;
    v40 = [v36 removeItemAtURL:v38 error:&v70];

    v41 = v70;
    if (v40)
    {

      return v41;
    }

    else
    {
      v69 = v70;
      v43 = v70;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    v63 = a5;
    sub_100726674(v13, v18, type metadata accessor for WidgetMusicItem);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_100726488(&qword_10118EEB8, type metadata accessor for WidgetMusicItem, &unk_100ECC6F4);
    v30 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v32 = v31;

    v33 = v20;
    v34 = v68;
    v62 = v33;
    v35 = v63;
    Data.write(to:options:)();
    v60 = v30;
    v61 = v32;
    type metadata accessor for WidgetDiskCache(0);
    v44 = v18;
    v45 = v66;
    (*(v8 + 16))(v66, v35, v7);
    v46 = v65;
    sub_10072660C(v44, v65, type metadata accessor for WidgetMusicItem);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = v69;
      *v49 = 136446722;
      sub_100726488(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v63) = v48;
      v51 = v50;
      v53 = v52;
      (*(v8 + 8))(v45, v7);
      v54 = sub_1000105AC(v51, v53, &v70);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      *(v49 + 14) = sub_1000105AC(v67, v34, &v70);
      *(v49 + 22) = 2082;
      sub_10072660C(v46, v64, type metadata accessor for WidgetMusicItem);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      sub_1007264D0(v46, type metadata accessor for WidgetMusicItem);
      v58 = sub_1000105AC(v55, v57, &v70);

      *(v49 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v47, v63, "Saved cache file %{public}s for item named %{public}s, value %{public}s", v49, 0x20u);
      swift_arrayDestroy();

      sub_10002C064(v60, v61);
    }

    else
    {
      sub_10002C064(v60, v61);

      sub_1007264D0(v46, type metadata accessor for WidgetMusicItem);
      (*(v8 + 8))(v45, v7);
    }

    return sub_1007264D0(v44, type metadata accessor for WidgetMusicItem);
  }
}

void sub_100717FD8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v49 = a3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v45 - v12;
  if (a1 == 1)
  {
    type metadata accessor for WidgetDiskCache(0);
    (*(v9 + 16))(v13, a5, v8);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v16 = 136446466;
      *(v16 + 4) = sub_1000105AC(v49, a4, &v52);
      *(v16 + 12) = 2082;
      sub_100726488(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v9 + 8))(v13, v8);
      v20 = sub_1000105AC(v17, v19, &v52);

      *(v16 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Nil value set for item named %{public}s, removing file %{public}s", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    v26 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    v52 = 0;
    v30 = [v26 removeItemAtURL:v28 error:&v52];

    v31 = v52;
    if (v30)
    {

      v32 = v31;
    }

    else
    {
      v49 = v52;
      v33 = v52;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    v21 = a5;
    v52 = a1;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    v48 = a1;
    v22 = a1;
    JSONEncoder.init()();
    sub_10041E680();
    v23 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v25 = v24;

    Data.write(to:options:)();
    v46 = v23;
    v47 = v25;
    type metadata accessor for WidgetDiskCache(0);
    (*(v9 + 16))(v11, v21, v8);
    v34 = v48;
    sub_10069B3BC(v48);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v51 = v45;
      *v37 = 136446722;
      sub_100726488(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v9 + 8))(v11, v8);
      v41 = sub_1000105AC(v38, v40, &v51);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      *(v37 + 14) = sub_1000105AC(v49, a4, &v51);
      *(v37 + 22) = 2082;
      v50 = v34;
      v42 = String.init<A>(describing:)();
      v44 = sub_1000105AC(v42, v43, &v51);

      *(v37 + 24) = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, "Saved cache file %{public}s for item named %{public}s, value %{public}s", v37, 0x20u);
      swift_arrayDestroy();

      sub_10002C064(v46, v47);
    }

    else
    {
      sub_10002C064(v46, v47);

      sub_10040DEF8(v34);
      (*(v9 + 8))(v11, v8);
    }

    sub_10040DEF8(v34);
  }
}

id sub_100718784(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v67 = a3;
  v68 = a4;
  v69 = a2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v59 - v10;
  sub_10010FC20(&qword_10118F130, &qword_100ECB640);
  __chkstk_darwin();
  v13 = &v59 - v12;
  v14 = *(type metadata accessor for NowPlayingDataProvider.ItemProgress(0) - 8);
  __chkstk_darwin();
  v64 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v59 - v16;
  __chkstk_darwin();
  v18 = &v59 - v17;
  v20 = v19;
  sub_1000089F8(a1, v13, &qword_10118F130, &qword_100ECB640);
  if ((*(v14 + 48))(v13, 1, v20) == 1)
  {
    sub_1000095E8(v13, &qword_10118F130, &qword_100ECB640);
    type metadata accessor for WidgetDiskCache(0);
    (*(v8 + 16))(v11, a5, v7);
    v21 = v68;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    v24 = v7;
    if (os_log_type_enabled(v22, v23))
    {
      v25 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v25 = 136446466;
      *(v25 + 4) = sub_1000105AC(v67, v21, &v70);
      *(v25 + 12) = 2082;
      sub_100726488(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v8 + 8))(v11, v24);
      v29 = sub_1000105AC(v26, v28, &v70);

      *(v25 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Nil value set for item named %{public}s, removing file %{public}s", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    v36 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v37);
    v39 = v38;
    v70 = 0;
    v40 = [v36 removeItemAtURL:v38 error:&v70];

    v41 = v70;
    if (v40)
    {

      return v41;
    }

    else
    {
      v69 = v70;
      v43 = v70;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    v63 = a5;
    sub_100726674(v13, v18, type metadata accessor for NowPlayingDataProvider.ItemProgress);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_100726488(&qword_10118EED0, type metadata accessor for NowPlayingDataProvider.ItemProgress, &unk_100ECB588);
    v30 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v32 = v31;

    v33 = v20;
    v34 = v68;
    v62 = v33;
    v35 = v63;
    Data.write(to:options:)();
    v60 = v30;
    v61 = v32;
    type metadata accessor for WidgetDiskCache(0);
    v44 = v18;
    v45 = v66;
    (*(v8 + 16))(v66, v35, v7);
    v46 = v65;
    sub_10072660C(v44, v65, type metadata accessor for NowPlayingDataProvider.ItemProgress);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = v69;
      *v49 = 136446722;
      sub_100726488(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v63) = v48;
      v51 = v50;
      v53 = v52;
      (*(v8 + 8))(v45, v7);
      v54 = sub_1000105AC(v51, v53, &v70);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      *(v49 + 14) = sub_1000105AC(v67, v34, &v70);
      *(v49 + 22) = 2082;
      sub_10072660C(v46, v64, type metadata accessor for NowPlayingDataProvider.ItemProgress);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      sub_1007264D0(v46, type metadata accessor for NowPlayingDataProvider.ItemProgress);
      v58 = sub_1000105AC(v55, v57, &v70);

      *(v49 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v47, v63, "Saved cache file %{public}s for item named %{public}s, value %{public}s", v49, 0x20u);
      swift_arrayDestroy();

      sub_10002C064(v60, v61);
    }

    else
    {
      sub_10002C064(v60, v61);

      sub_1007264D0(v46, type metadata accessor for NowPlayingDataProvider.ItemProgress);
      (*(v8 + 8))(v45, v7);
    }

    return sub_1007264D0(v44, type metadata accessor for NowPlayingDataProvider.ItemProgress);
  }
}

uint64_t sub_1007191B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v5 = sub_10010FC20(&qword_1011831B0, &qword_100ED2570);
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = *(sub_10010FC20(&qword_1011920D8, &qword_100ECF2F0) - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[2] = a3;

  return _swift_task_switch(sub_1007192FC, 0, 0);
}

uint64_t sub_1007192FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(v9 + 96);
  v11 = *(v9 + 48);
  v16 = *(v9 + 32);
  (*(*(v9 + 64) + 56))(v10, 1, 1, *(v9 + 56));
  *(v9 + 24) = sub_10059A09C(v10, *(v11 + 16));
  v12 = swift_task_alloc();
  *(v9 + 104) = v12;
  *(v12 + 16) = v9 + 16;
  *(v12 + 24) = v16;
  *(v12 + 40) = v9 + 24;
  v13 = sub_10010FC20(&qword_1011A0308, &qword_100EDF810);
  v14 = swift_task_alloc();
  *(v9 + 112) = v14;
  *v14 = v9;
  v14[1] = sub_100719450;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v14, v13, &type metadata for () + 1, 0, 0, &unk_100EDF808, v12, v13, a9);
}

uint64_t sub_100719450()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1007197A4;
  }

  else
  {
    v2 = sub_100719580;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100719580()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v16 = v0[8];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = _swiftEmptyArrayStorage;
    v6 = *(v3 + 72);
    do
    {
      v7 = v0[11];
      v8 = v0[7];
      sub_1000089F8(v4, v7, &qword_1011920D8, &qword_100ECF2F0);
      v9 = (*(v16 + 48))(v7, 1, v8);
      v10 = v0[11];
      if (v9 == 1)
      {
        sub_1000095E8(v10, &qword_1011920D8, &qword_100ECF2F0);
      }

      else
      {
        sub_10003D17C(v10, v0[9], &qword_1011831B0, &qword_100ED2570);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100498F38(0, v5[2] + 1, 1, v5);
        }

        v12 = v5[2];
        v11 = v5[3];
        if (v12 >= v11 >> 1)
        {
          v5 = sub_100498F38((v11 > 1), v12 + 1, 1, v5);
        }

        v13 = v0[9];
        v5[2] = v12 + 1;
        sub_10003D17C(v13, v5 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12, &qword_1011831B0, &qword_100ED2570);
      }

      v4 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v14 = v0[1];

  return v14(v5);
}

uint64_t sub_1007197A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100719830(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for WidgetMusicItem(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = *(sub_10010FC20(&qword_10118F120, &unk_100ED5660) - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100719964, 0, 0);
}

uint64_t sub_100719964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(v9 + 88);
  v11 = *(v9 + 40);
  v17 = *(v9 + 24);
  (*(*(v9 + 56) + 56))(v10, 1, 1, *(v9 + 48));
  sub_10010FC20(&qword_1011A0290, &qword_100EDF728);
  sub_100020674(&qword_1011A02B0, &qword_1011A0290, &qword_100EDF728, &protocol conformance descriptor for MusicItemCollection<A>);
  v12 = dispatch thunk of Collection.count.getter();
  *(v9 + 16) = sub_10059A0B0(v10, v12);
  v13 = swift_task_alloc();
  *(v9 + 96) = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v17;
  *(v13 + 40) = v9 + 16;
  v14 = sub_10010FC20(&qword_1011A02B8, &qword_100EDF770);
  v15 = swift_task_alloc();
  *(v9 + 104) = v15;
  *v15 = v9;
  v15[1] = sub_100719B10;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v15, v14, &type metadata for () + 1, 0, 0, &unk_100EDF768, v13, v14, a9);
}

uint64_t sub_100719B10()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100719E6C;
  }

  else
  {
    v2 = sub_100719C40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100719C40()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v16 = v0[7];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = _swiftEmptyArrayStorage;
    do
    {
      v7 = v0[10];
      v8 = v0[6];
      sub_1000089F8(v4, v7, &qword_10118F120, &unk_100ED5660);
      v9 = (*(v16 + 48))(v7, 1, v8);
      v10 = v0[10];
      if (v9 == 1)
      {
        sub_1000095E8(v10, &qword_10118F120, &unk_100ED5660);
      }

      else
      {
        sub_100726674(v10, v0[8], type metadata accessor for WidgetMusicItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_10049A030(0, v6[2] + 1, 1, v6);
        }

        v12 = v6[2];
        v11 = v6[3];
        if (v12 >= v11 >> 1)
        {
          v6 = sub_10049A030((v11 > 1), v12 + 1, 1, v6);
        }

        v13 = v0[8];
        v6[2] = v12 + 1;
        sub_100726674(v13, v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12, type metadata accessor for WidgetMusicItem);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v14 = v0[1];

  return v14(v6);
}

uint64_t sub_100719E6C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100719EF8()
{
  type metadata accessor for RecentlyPlayedWidgetDataProvider(0);
  swift_allocObject();
  result = sub_10071A3F4();
  qword_1012194C0 = result;
  return result;
}

uint64_t sub_100719F58(uint64_t a1)
{
  *(v1 + 56) = OBJC_IVAR____TtC5Music32RecentlyPlayedWidgetDataProvider_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "UPDATE ITEMS", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v1;
  v5[1] = sub_10071A070;

  return sub_10071A7CC();
}

uint64_t sub_10071A070(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_10071A25C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_10071A198;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10071A198()
{
  v1 = v0[10];
  v2 = v0[6];
  sub_1007228EC(v1);
  v3 = *(v2 + 16) + OBJC_IVAR____TtCC5Music32RecentlyPlayedWidgetDataProviderP33_23E5867D7557CCAE0A35FCF9C1439AE75Cache__items;
  swift_beginAccess();
  v4 = sub_10010FC20(&qword_1011A0288, &qword_100EDF688);
  sub_100714544(*(v3 + *(v4 + 44)), *(v3 + *(v4 + 44) + 8), v1);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10071A25C()
{
  v12 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[5] = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000105AC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Not updating cache - error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

id sub_10071A3F4()
{
  v1 = v0;
  v2 = type metadata accessor for MusicDataRequest.ExecutionMethod();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecentlyPlayedWidgetDataProvider.Cache(0);
  v6 = swift_allocObject();
  v7 = v6 + OBJC_IVAR____TtCC5Music32RecentlyPlayedWidgetDataProviderP33_23E5867D7557CCAE0A35FCF9C1439AE75Cache__items;
  sub_10050352C(0x796C746E65636552, 0xEE00646579616C50, v6 + OBJC_IVAR____TtCC5Music32RecentlyPlayedWidgetDataProviderP33_23E5867D7557CCAE0A35FCF9C1439AE75Cache__items);
  v8 = (v7 + *(sub_10010FC20(&qword_1011A0288, &qword_100EDF688) + 44));
  *v8 = 0x736D657469;
  v8[1] = 0xE500000000000000;
  *(v0 + 16) = v6;
  static Logger.music(_:)(0xD000000000000020, 0x8000000100EDF610);
  (*(v3 + 104))(v5, enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v2);
  static MusicDataRequest.preferredExecutionMethod.setter();
  v9 = [objc_opt_self() processInfo];
  v10 = [v9 processName];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == 0x646957636973754DLL && v13 == 0xEC00000073746567)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      return v1;
    }
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "running in widget process, disabling fallback cache", v17, 2u);
  }

  v18 = [objc_opt_self() defaultMediaLibrary];
  if ([v18 artworkDataSource])
  {
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      [v19 setUsesFallbackCache:0];
    }

    swift_unknownObjectRelease();
  }

  result = [objc_opt_self() sharedStoreArtworkDataSource];
  if (result)
  {
    v21 = result;
    [result setUsesFallbackCache:0];

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10071A758()
{
  sub_1000095E8(v0 + OBJC_IVAR____TtCC5Music32RecentlyPlayedWidgetDataProviderP33_23E5867D7557CCAE0A35FCF9C1439AE75Cache__items, &qword_1011A0288, &qword_100EDF688);

  return swift_deallocClassInstance();
}

id sub_10071A7EC()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 processName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == 0x636973754DLL && v5 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  *(v0 + 48) = v7 & 1;
  if (qword_10117F570 != -1)
  {
    swift_once();
  }

  if (qword_101218A18)
  {
    v8 = qword_101218A18;
    v9 = sub_100311FE0();
    v10 = (v9 == 2) | v9;
    v11 = sub_100311FE8();

    v12 = v11 | v10;
    if (v11 == 2)
    {
      v12 = v10;
    }
  }

  else
  {
    v12 = 1;
  }

  *(v0 + 49) = v12 & 1;
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v14 = result;
    *(v0 + 50) = [result hasProperNetworkConditionsToShowCloudMedia];

    v15 = swift_task_alloc();
    *(v0 + 24) = v15;
    *v15 = v0;
    v15[1] = sub_10071AA08;

    return sub_100712698();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10071AA08(char a1)
{
  *(*v1 + 51) = a1;

  return _swift_task_switch(sub_10071AB08, 0, 0);
}

uint64_t sub_10071AB08(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 51);
    v5 = *(v1 + 50);
    v6 = *(v1 + 49);
    v7 = *(v1 + 48);
    v8 = swift_slowAlloc();
    *v8 = 67240960;
    *(v8 + 4) = v7;
    *(v8 + 8) = 1026;
    *(v8 + 10) = v6;
    *(v8 + 14) = 1026;
    *(v8 + 16) = v5;
    *(v8 + 20) = 1026;
    *(v8 + 22) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "FETCH ITEMS: isMusicProcess: %{BOOL,public}d, areRemoteQueriesEnabled: %{BOOL,public}d, canShowCloudMedia: %{BOOL,public}d, canPlayCatalogContent: %{BOOL,public}d", v8, 0x1Au);
  }

  v9 = *(v1 + 51);
  v10 = *(v1 + 50);
  v11 = *(v1 + 49);
  v12 = *(v1 + 48);

  if (v12 != 1 || v11 == 0 || v10 == 0 || v9 == 0)
  {
    v16 = swift_task_alloc();
    *(v1 + 40) = v16;
    *v16 = v1;
    v16[1] = sub_10071AE68;

    return sub_10071CAE8();
  }

  else
  {
    v18 = swift_task_alloc();
    *(v1 + 32) = v18;
    *v18 = v1;
    v18[1] = sub_10071ACFC;

    return sub_10071AF68();
  }
}

uint64_t sub_10071ACFC(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v3 + 40) = v7;
    *v7 = v4;
    v7[1] = sub_10071AE68;

    return sub_10071CAE8();
  }
}

uint64_t sub_10071AE68(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_10071AF68()
{
  v1[3] = v0;
  v2 = sub_10010FC20(&qword_1011A0290, &qword_100EDF728);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_10010FC20(&qword_1011A0298, &qword_100EDF730);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = type metadata accessor for MusicDataRequest.Source();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011A02A0, &unk_100EDF738);
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_10071B160, 0, 0);
}

uint64_t sub_10071B160(uint64_t a1)
{
  v1[16] = OBJC_IVAR____TtC5Music32RecentlyPlayedWidgetDataProvider_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FETCH REMOTE ITEMS", v4, 2u);
  }

  v5 = v1[12];
  v6 = v1[10];
  v7 = v1[11];

  type metadata accessor for RecentlyPlayedMusicItem();
  sub_100726488(&qword_1011A02A8, &type metadata accessor for RecentlyPlayedMusicItem, &protocol conformance descriptor for RecentlyPlayedMusicItem);
  MusicRecentlyPlayedRequest.init()();
  (*(v7 + 104))(v5, enum case for MusicDataRequest.Source.widgets(_:), v6);
  MusicRecentlyPlayedRequest.source.setter();
  MusicRecentlyPlayedRequest.limit.setter();
  v8 = swift_task_alloc();
  v1[17] = v8;
  *v8 = v1;
  v8[1] = sub_10071B334;
  v9 = v1[13];
  v10 = v1[9];

  return MusicRecentlyPlayedRequest.response()(v10, v9);
}

uint64_t sub_10071B334()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10071B754;
  }

  else
  {
    v2 = sub_10071B448;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10071B448()
{
  MusicRecentlyPlayedResponse.items.getter();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_10071B510;

  return sub_100719830(&unk_100EDF748, 0);
}

uint64_t sub_10071B510(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    v7 = v4[5];
    v6 = v4[6];
    v8 = v4[4];
    v4[20] = a1;
    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(sub_10071B664, 0, 0);
  }
}

uint64_t sub_10071B664()
{
  v1 = v0[20];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  sub_1007228EC(v1);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8(v1);
}

uint64_t sub_10071B754()
{
  v18 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[18];
    v4 = v0[14];
    v16 = v0[15];
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "FETCH REMOTE ITEMS ERROR %{public}s", v6, 0xCu);
    sub_10000959C(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v12 = v0[14];
    v11 = v0[15];
    v13 = v0[13];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_10071B968(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for RecentlyPlayedMusicItem();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10071BA28, 0, 0);
}

uint64_t sub_10071BA28()
{
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_10071BAD8;
  v2 = v0[6];
  v3 = v0[2];

  return sub_10071BBEC(v3, v2);
}

uint64_t sub_10071BAD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10071BBEC(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for MusicSiriRepresentation();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  type metadata accessor for ArtworkImage.Placeholder(0);
  v2[15] = swift_task_alloc();
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v5 = type metadata accessor for Station();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v6 = type metadata accessor for Playlist();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v7 = type metadata accessor for Album();
  v2[26] = v7;
  v2[27] = *(v7 - 8);
  v2[28] = swift_task_alloc();
  v8 = type metadata accessor for RecentlyPlayedMusicItem();
  v2[29] = v8;
  v2[30] = *(v8 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_10071BF20, 0, 0);
}

uint64_t sub_10071BF20()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  (*(v2 + 16))(v1, *(v0 + 72), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for RecentlyPlayedMusicItem.album(_:))
  {
    v5 = *(v0 + 248);
    v6 = *(v0 + 224);
    v7 = *(v0 + 208);
    v8 = *(v0 + 216);
    (*(*(v0 + 240) + 96))(v5, *(v0 + 232));
    (*(v8 + 32))(v6, v5, v7);
    v9 = Album.id.getter();
    v11 = v10;
    v12 = Album.catalogID.getter();
LABEL_5:
    v16 = v12;
    v17 = v13;
    (*(v8 + 8))(v6, v7);
    goto LABEL_10;
  }

  if (v4 == enum case for RecentlyPlayedMusicItem.playlist(_:))
  {
    v14 = *(v0 + 248);
    v8 = *(v0 + 192);
    v6 = *(v0 + 200);
    v7 = *(v0 + 184);
    (*(*(v0 + 240) + 96))(v14, *(v0 + 232));
    (*(v8 + 32))(v6, v14, v7);
    v9 = Playlist.id.getter();
    v11 = v15;
    v12 = Playlist.catalogID.getter();
    goto LABEL_5;
  }

  v19 = *(v0 + 240);
  v18 = *(v0 + 248);
  v20 = *(v0 + 232);
  if (v4 == enum case for RecentlyPlayedMusicItem.station(_:))
  {
    v22 = *(v0 + 168);
    v21 = *(v0 + 176);
    v23 = *(v0 + 160);
    (*(v19 + 96))(*(v0 + 248), *(v0 + 232));
    (*(v22 + 32))(v21, v18, v23);
    v9 = Station.id.getter();
    v11 = v24;
    (*(v22 + 8))(v21, v23);
  }

  else
  {
    v9 = RecentlyPlayedMusicItem.id.getter();
    v11 = v25;
    (*(v19 + 8))(v18, v20);
  }

  v16 = 0;
  v17 = 0;
LABEL_10:
  *(v0 + 16) = v9;
  *(v0 + 24) = v11;
  *(v0 + 256) = v16;
  *(v0 + 264) = v17;
  v26 = *(v0 + 152);
  v27 = *(v0 + 128);
  *(v0 + 32) = RecentlyPlayedMusicItem.title.getter();
  *(v0 + 40) = v28;
  *(v0 + 48) = RecentlyPlayedMusicItem.subtitle.getter();
  *(v0 + 56) = v29;
  sub_100722E40(v26);
  RecentlyPlayedMusicItem.artwork.getter();
  v30 = type metadata accessor for Artwork();
  *(v0 + 272) = v30;
  v31 = *(v30 - 8);
  *(v0 + 280) = v31;
  if ((*(v31 + 48))(v27, 1, v30) == 1)
  {
    sub_1000095E8(*(v0 + 128), &unk_101188920, &qword_100EBCC50);
    *(v0 + 304) = 0;
    v32 = *(v0 + 32);
    v33 = *(v0 + 40);
    v34 = *(v0 + 16);
    v35 = *(v0 + 24);
    v37 = *(v0 + 112);
    v36 = *(v0 + 120);
    v38 = *(v0 + 96);
    v39 = *(v0 + 104);
    *(v0 + 312) = vextq_s8(*(v0 + 48), *(v0 + 48), 8uLL);
    *(v0 + 328) = v33;
    *(v0 + 336) = v32;
    *(v0 + 344) = v35;
    *(v0 + 352) = v34;
    sub_100723634(v36);
    RecentlyPlayedMusicItem.siriRepresentation.getter();
    *(v0 + 360) = MusicSiriRepresentation.id.getter();
    *(v0 + 368) = v40;
    (*(v39 + 8))(v37, v38);
    *(v0 + 376) = sub_100723968();
    v41 = swift_task_alloc();
    *(v0 + 384) = v41;
    *v41 = v0;
    v41[1] = sub_10071C614;

    return sub_100713278();
  }

  else
  {
    if (*DeviceCapabilities.deviceType.unsafeMutableAddressor() == 2)
    {
      v43 = 140.0;
    }

    else
    {
      v43 = 125.0;
    }

    v44 = swift_task_alloc();
    *(v0 + 288) = v44;
    *v44 = v0;
    v44[1] = sub_10071C38C;

    return sub_1005F1854(v43);
  }
}

uint64_t sub_10071C38C(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 128);
  *(*v1 + 296) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_10071C4EC, 0, 0);
}

uint64_t sub_10071C4EC(uint64_t a1)
{
  *(v1 + 304) = *(v1 + 296);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 112);
  v6 = *(v1 + 120);
  v8 = *(v1 + 96);
  v9 = *(v1 + 104);
  *(v1 + 312) = vextq_s8(*(v1 + 48), *(v1 + 48), 8uLL);
  *(v1 + 328) = v3;
  *(v1 + 336) = v2;
  *(v1 + 344) = v5;
  *(v1 + 352) = v4;
  sub_100723634(v6);
  RecentlyPlayedMusicItem.siriRepresentation.getter();
  *(v1 + 360) = MusicSiriRepresentation.id.getter();
  *(v1 + 368) = v10;
  (*(v9 + 8))(v7, v8);
  *(v1 + 376) = sub_100723968();
  v11 = swift_task_alloc();
  *(v1 + 384) = v11;
  *v11 = v1;
  v11[1] = sub_10071C614;

  return sub_100713278();
}

uint64_t sub_10071C614(char a1)
{
  *(*v1 + 392) = a1;

  return _swift_task_switch(sub_10071C714, 0, 0);
}

uint64_t sub_10071C714()
{
  v34 = *(v0 + 392);
  v33 = *(v0 + 376);
  v31 = *(v0 + 360);
  v32 = *(v0 + 368);
  v29 = *(v0 + 344);
  v30 = *(v0 + 352);
  v25 = *(v0 + 328);
  v26 = *(v0 + 336);
  v23 = *(v0 + 312);
  v24 = *(v0 + 320);
  v38 = *(v0 + 304);
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);
  v36 = *(v0 + 240);
  v37 = *(v0 + 232);
  v1 = *(v0 + 144);
  v22 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v35 = *(v0 + 72);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);
  v8(v4, 1, 1, v7);
  v8(v5, 1, 1, v7);
  v9 = type metadata accessor for WidgetMusicItem(0);
  v10 = v9[25];
  *&v6[v10] = 0;
  *&v6[v9[26]] = _swiftEmptyArrayStorage;
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = v26;
  *(v6 + 3) = v25;
  *(v6 + 4) = v24;
  *(v6 + 5) = v23;
  (*(v1 + 16))(&v6[v9[7]], v22, v2);
  sub_10072660C(v3, &v6[v9[23]], type metadata accessor for ArtworkImage.Placeholder);
  *&v6[v9[24]] = 0x3FF0000000000000;
  v6[v9[8]] = 8;
  v11 = &v6[v9[9]];
  *v11 = v30;
  *(v11 + 1) = v29;
  v12 = &v6[v9[10]];
  *v12 = v27;
  *(v12 + 1) = v28;
  v13 = &v6[v9[11]];
  *v13 = v31;
  *(v13 + 1) = v32;
  v14 = &v6[v9[12]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v6[v9[13]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v6[v9[14]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v6[v9[15]] = v33;
  v6[v9[16]] = v34;
  sub_1000089F8(v4, &v6[v9[17]], &qword_101188C20, &qword_100EC2030);
  sub_1000089F8(v5, &v6[v9[18]], &qword_101188C20, &qword_100EC2030);
  v17 = &v6[v9[19]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v6[v9[20]] = _swiftEmptyArrayStorage;
  v18 = &v6[v9[21]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v18[24] = 1;
  v19 = &v6[v9[22]];
  *v19 = 0;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  v19[24] = 1;
  sub_10043975C(_swiftEmptyArrayStorage);
  (*(v36 + 8))(v35, v37);
  sub_1000095E8(v5, &qword_101188C20, &qword_100EC2030);
  sub_1000095E8(v4, &qword_101188C20, &qword_100EC2030);
  sub_1007264D0(v3, type metadata accessor for ArtworkImage.Placeholder);
  (*(v1 + 8))(v22, v2);
  *&v6[v10] = v38;

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10071CAE8()
{
  v1[14] = v0;
  v1[15] = *(type metadata accessor for WidgetMusicItem(0) - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = sub_10010FC20(&qword_10118F0F0, &unk_100EDF690);
  v1[25] = swift_task_alloc();
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v3 = type metadata accessor for Playlist();
  v1[28] = v3;
  v1[29] = *(v3 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v4 = type metadata accessor for Album();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_101181AC0, &unk_100EC9240);
  v1[40] = v5;
  v1[41] = *(v5 - 8);
  v1[42] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_101181BE8, &unk_100EBD710);
  v1[43] = v6;
  v1[44] = *(v6 - 8);
  v1[45] = swift_task_alloc();
  v7 = sub_10010FC20(&qword_101181AC8, &qword_100EBD570);
  v1[46] = v7;
  v1[47] = *(v7 - 8);
  v1[48] = swift_task_alloc();
  v8 = sub_10010FC20(&unk_1011929A0, &unk_100ECBC80);
  v1[49] = v8;
  v1[50] = *(v8 - 8);
  v1[51] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011815C0, &unk_100EBD040);
  v1[52] = v9;
  v1[53] = *(v9 - 8);
  v1[54] = swift_task_alloc();
  v10 = sub_10010FC20(&qword_101181B20, &qword_100EBD5E0);
  v1[55] = v10;
  v1[56] = *(v10 - 8);
  v1[57] = swift_task_alloc();

  return _swift_task_switch(sub_10071D020, 0, 0);
}

uint64_t sub_10071D020(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FETCH LOCAL ITEMS", v4, 2u);
  }

  MusicLibraryRequest.init()();
  MusicLibraryRequest.wantsDetailedLibraryResponse.setter();
  swift_getKeyPath();
  MusicLibraryRequest.sort<A>(by:ascending:)();

  MusicLibraryRequest.limit.setter();
  v5 = swift_task_alloc();
  v1[58] = v5;
  *v5 = v1;
  v5[1] = sub_10071D1A0;
  v6 = v1[55];
  v7 = v1[51];

  return MusicLibraryRequest.response()(v7, v6);
}

uint64_t sub_10071D1A0()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_10072099C;
  }

  else
  {
    v2 = sub_10071D2B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10071D2B4()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[49];
  MusicLibraryResponse.items.getter();
  (*(v2 + 8))(v1, v3);
  MusicLibraryRequest.init()();
  MusicLibraryRequest.wantsDetailedLibraryResponse.setter();
  swift_getKeyPath();
  MusicLibraryRequest.sort<A>(by:ascending:)();

  MusicLibraryRequest.limit.setter();
  v4 = swift_task_alloc();
  v0[60] = v4;
  *v4 = v0;
  v4[1] = sub_10071D3EC;
  v5 = v0[46];
  v6 = v0[42];

  return MusicLibraryRequest.response()(v6, v5);
}

uint64_t sub_10071D3EC()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_100720B4C;
  }

  else
  {
    v2 = sub_10071D500;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10071D500()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  MusicLibraryResponse.items.getter();
  (*(v2 + 8))(v1, v3);
  sub_100020674(&unk_10118C140, &qword_1011815C0, &unk_100EBD040, &protocol conformance descriptor for MusicItemCollection<A>);
  v4 = dispatch thunk of Collection.count.getter();
  if (v4)
  {
    v5 = v4;
    sub_10066CC30(0, v4 & ~(v4 >> 63), 0);
    result = dispatch thunk of Collection.startIndex.getter();
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_59;
    }

    v7 = *(v0 + 280);
    do
    {
      v8 = *(v0 + 312);
      v9 = dispatch thunk of Collection.subscript.read();
      (*(v7 + 16))(v8);
      v9(v0 + 16, 0);
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_10066CC30((v10 > 1), v11 + 1, 1);
      }

      v12 = *(v0 + 312);
      v13 = *(v0 + 272);
      _swiftEmptyArrayStorage[2] = v11 + 1;
      (*(v7 + 32))(_swiftEmptyArrayStorage + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v12, v13);
      dispatch thunk of Collection.formIndex(after:)();
      --v5;
    }

    while (v5);
  }

  sub_100020674(&unk_10118C130, &qword_101181BE8, &unk_100EBD710, &protocol conformance descriptor for MusicItemCollection<A>);
  v14 = dispatch thunk of Collection.count.getter();
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = v14;
  sub_10066CBEC(0, v14 & ~(v14 >> 63), 0);
  result = dispatch thunk of Collection.startIndex.getter();
  if (v15 < 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v16 = *(v0 + 232);
  do
  {
    v17 = *(v0 + 264);
    v18 = dispatch thunk of Collection.subscript.read();
    (*(v16 + 16))(v17);
    v18(v0 + 48, 0);
    v20 = _swiftEmptyArrayStorage[2];
    v19 = _swiftEmptyArrayStorage[3];
    if (v20 >= v19 >> 1)
    {
      sub_10066CBEC((v19 > 1), v20 + 1, 1);
    }

    v21 = *(v0 + 264);
    v22 = *(v0 + 224);
    _swiftEmptyArrayStorage[2] = v20 + 1;
    (*(v16 + 32))(_swiftEmptyArrayStorage + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v20, v21, v22);
    dispatch thunk of Collection.formIndex(after:)();
    --v15;
  }

  while (v15);
LABEL_13:
  v23 = *(v0 + 280);
  *(v0 + 560) = _swiftEmptyArrayStorage;
  *(v0 + 496) = _swiftEmptyArrayStorage;
  *(v0 + 504) = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2] || _swiftEmptyArrayStorage[2] > 5uLL)
  {
LABEL_23:
    v38 = *(v0 + 448);
    v39 = *(v0 + 456);
    v72 = *(v0 + 432);
    v73 = *(v0 + 440);
    v40 = *(v0 + 424);
    v41 = *(v0 + 376);
    v70 = *(v0 + 384);
    v71 = *(v0 + 416);
    v42 = *(v0 + 360);
    v69 = *(v0 + 368);
    v44 = *(v0 + 344);
    v43 = *(v0 + 352);

    sub_1007228EC(v45);
    (*(v43 + 8))(v42, v44);
    (*(v41 + 8))(v70, v69);
    (*(v40 + 8))(v72, v71);
    (*(v38 + 8))(v39, v73);

    v46 = *(v0 + 8);

    return v46(_swiftEmptyArrayStorage);
  }

  v24 = *(v0 + 304);
  v25 = *(v0 + 272);
  (*(v23 + 16))(v24, _swiftEmptyArrayStorage + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v25);
  Album.lastPlayedDate.getter();
  (*(v23 + 8))(v24, v25);
  *(v0 + 520) = &_swiftEmptyArrayStorage[2];
  *(v0 + 512) = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage[2])
  {
    v26 = *(v0 + 256);
    v28 = *(v0 + 224);
    v27 = *(v0 + 232);
    (*(v27 + 16))(v26, _swiftEmptyArrayStorage + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v28);
    Playlist.lastPlayedDate.getter();
    (*(v27 + 8))(v26, v28);
  }

  else
  {
    (*(*(v0 + 168) + 56))(*(v0 + 208), 1, 1, *(v0 + 160));
  }

  v30 = *(v0 + 208);
  v29 = *(v0 + 216);
  v31 = *(v0 + 200);
  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  v34 = *(*(v0 + 192) + 48);
  *(v0 + 600) = v34;
  sub_10003D17C(v29, v31, &qword_101188C20, &qword_100EC2030);
  sub_10003D17C(v30, v31 + v34, &qword_101188C20, &qword_100EC2030);
  v35 = *(v32 + 48);
  LODWORD(v33) = v35(v31, 1, v33);
  v36 = *(v0 + 160);
  result = v35(v31 + v34, 1, v36);
  if (v33 == 1)
  {
    v37 = result == 1;
    result = _swiftEmptyArrayStorage;
    if (!v37)
    {
      if (_swiftEmptyArrayStorage[2])
      {
        (*(*(v0 + 232) + 16))(*(v0 + 240), _swiftEmptyArrayStorage + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        result = _swiftEmptyArrayStorage;
        v53 = _swiftEmptyArrayStorage[2];
        if (v53)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = _swiftEmptyArrayStorage;
          *(v0 + 96) = _swiftEmptyArrayStorage;
          if (!isUniquelyReferenced_nonNull_native || (v53 - 1) > _swiftEmptyArrayStorage[3] >> 1)
          {
            v55 = sub_10049A07C(isUniquelyReferenced_nonNull_native, v53, 1, _swiftEmptyArrayStorage);
            *(v0 + 96) = v55;
          }

          *(v0 + 584) = v55;
          sub_1003BE48C(0, 1, 0);
          v56 = swift_task_alloc();
          *(v0 + 592) = v56;
          *v56 = v0;
          v56[1] = sub_10071FF78;
          v57 = *(v0 + 240);
          v58 = *(v0 + 128);
LABEL_46:

          return sub_100720D34(v58, v57);
        }

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    goto LABEL_23;
  }

  if (result == 1)
  {
    if (_swiftEmptyArrayStorage[2])
    {
      (*(*(v0 + 280) + 16))(*(v0 + 288), _swiftEmptyArrayStorage + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
      result = _swiftEmptyArrayStorage;
      v47 = _swiftEmptyArrayStorage[2];
      if (!v47)
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v48 = swift_isUniquelyReferenced_nonNull_native();
      v49 = _swiftEmptyArrayStorage;
      *(v0 + 80) = _swiftEmptyArrayStorage;
      if (!v48 || (v47 - 1) > _swiftEmptyArrayStorage[3] >> 1)
      {
        v49 = sub_10049935C(v48, v47, 1, _swiftEmptyArrayStorage);
        *(v0 + 80) = v49;
      }

      *(v0 + 568) = v49;
      sub_1003BE4A4(0, 1, 0);
      v50 = swift_task_alloc();
      *(v0 + 576) = v50;
      *v50 = v0;
      v50[1] = sub_10071F554;
      v51 = *(v0 + 288);
      v52 = *(v0 + 136);
      goto LABEL_55;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v59 = *(v0 + 176);
  v60 = *(*(v0 + 168) + 32);
  v60(*(v0 + 184), *(v0 + 200), v36);
  v60(v59, v31 + v34, v36);
  result = static Date.< infix(_:_:)();
  if (result)
  {
    if (_swiftEmptyArrayStorage[2])
    {
      (*(*(v0 + 232) + 16))(*(v0 + 248), _swiftEmptyArrayStorage + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
      result = _swiftEmptyArrayStorage;
      v61 = _swiftEmptyArrayStorage[2];
      if (v61)
      {
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v63 = _swiftEmptyArrayStorage;
        *(v0 + 96) = _swiftEmptyArrayStorage;
        if (!v62 || (v61 - 1) > _swiftEmptyArrayStorage[3] >> 1)
        {
          v63 = sub_10049A07C(v62, v61, 1, _swiftEmptyArrayStorage);
          *(v0 + 96) = v63;
        }

        *(v0 + 528) = v63;
        sub_1003BE48C(0, 1, 0);
        v64 = swift_task_alloc();
        *(v0 + 536) = v64;
        *v64 = v0;
        v64[1] = sub_10071E0E0;
        v57 = *(v0 + 248);
        v58 = *(v0 + 152);
        goto LABEL_46;
      }

      goto LABEL_66;
    }

    goto LABEL_64;
  }

  if (!_swiftEmptyArrayStorage[2])
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  (*(*(v0 + 280) + 16))(*(v0 + 296), _swiftEmptyArrayStorage + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
  result = _swiftEmptyArrayStorage;
  v65 = _swiftEmptyArrayStorage[2];
  if (!v65)
  {
LABEL_67:
    __break(1u);
    return result;
  }

  v66 = swift_isUniquelyReferenced_nonNull_native();
  v67 = _swiftEmptyArrayStorage;
  *(v0 + 80) = _swiftEmptyArrayStorage;
  if (!v66 || (v65 - 1) > _swiftEmptyArrayStorage[3] >> 1)
  {
    v67 = sub_10049935C(v66, v65, 1, _swiftEmptyArrayStorage);
    *(v0 + 80) = v67;
  }

  *(v0 + 544) = v67;
  sub_1003BE4A4(0, 1, 0);
  v68 = swift_task_alloc();
  *(v0 + 552) = v68;
  *v68 = v0;
  v68[1] = sub_10071EB1C;
  v51 = *(v0 + 296);
  v52 = *(v0 + 144);
LABEL_55:

  return sub_100721B1C(v52, v51);
}

uint64_t sub_10071E0E0()
{

  return _swift_task_switch(sub_10071E1DC, 0, 0);
}

uint64_t sub_10071E1DC()
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v1 = *(v0 + 496);
  }

  else
  {
    v1 = sub_10049A030(0, **(v0 + 520) + 1, 1, *(v0 + 496));
  }

  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_10049A030((v2 > 1), v3 + 1, 1, v1);
  }

  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 152);
  v7 = *(v0 + 120);
  v8 = *(*(v0 + 168) + 8);
  v8(*(v0 + 176), v5);
  v8(v4, v5);
  v1[2] = v3 + 1;
  v9 = v1 + 2;
  sub_100726674(v6, v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3, type metadata accessor for WidgetMusicItem);
  v10 = *(v0 + 528);
  v11 = *(v0 + 504);
  *(v0 + 560) = v10;
  *(v0 + 496) = v1;
  if (v11[2])
  {
    if (*v9 <= 5uLL)
    {
      v12 = *(v0 + 304);
      v13 = *(v0 + 272);
      v14 = *(v0 + 280);
      v62 = v11;
      (*(v14 + 16))(v12, v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);
      Album.lastPlayedDate.getter();
      (*(v14 + 8))(v12, v13);
      goto LABEL_11;
    }

LABEL_17:
    v28 = *(v0 + 448);
    v29 = *(v0 + 456);
    v60 = *(v0 + 432);
    v61 = *(v0 + 440);
    v30 = *(v0 + 424);
    v31 = *(v0 + 376);
    v58 = *(v0 + 384);
    v59 = *(v0 + 416);
    v32 = *(v0 + 360);
    v57 = *(v0 + 368);
    v34 = *(v0 + 344);
    v33 = *(v0 + 352);

    sub_1007228EC(v35);
    (*(v33 + 8))(v32, v34);
    (*(v31 + 8))(v58, v57);
    (*(v30 + 8))(v60, v59);
    (*(v28 + 8))(v29, v61);

    v36 = *(v0 + 8);

    return v36(v1);
  }

  if (!v10[2] || *v9 > 5uLL)
  {
    goto LABEL_17;
  }

  v62 = v11;
  (*(*(v0 + 168) + 56))(*(v0 + 216), 1, 1, *(v0 + 160));
  v10 = *(v0 + 560);
LABEL_11:
  *(v0 + 520) = v9;
  *(v0 + 512) = v10;
  if (v10[2])
  {
    v15 = *(v0 + 256);
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    (*(v16 + 16))(v15, v10 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v17);
    Playlist.lastPlayedDate.getter();
    (*(v16 + 8))(v15, v17);
  }

  else
  {
    (*(*(v0 + 168) + 56))(*(v0 + 208), 1, 1, *(v0 + 160));
  }

  v19 = *(v0 + 208);
  v18 = *(v0 + 216);
  v20 = *(v0 + 200);
  v21 = *(v0 + 160);
  v22 = *(v0 + 168);
  v23 = *(*(v0 + 192) + 48);
  *(v0 + 600) = v23;
  sub_10003D17C(v18, v20, &qword_101188C20, &qword_100EC2030);
  sub_10003D17C(v19, v20 + v23, &qword_101188C20, &qword_100EC2030);
  v24 = *(v22 + 48);
  LODWORD(v21) = v24(v20, 1, v21);
  v25 = *(v0 + 160);
  result = v24(v20 + v23, 1, v25);
  if (v21 == 1)
  {
    v27 = result == 1;
    result = v62;
    if (!v27)
    {
      if (v10[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 240), v10 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v43 = v10[2];
        if (v43)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v10;
          if (!isUniquelyReferenced_nonNull_native || (v43 - 1) > v10[3] >> 1)
          {
            v10 = sub_10049A07C(isUniquelyReferenced_nonNull_native, v43, 1, v10);
            *(v0 + 96) = v10;
          }

          *(v0 + 584) = v10;
          sub_1003BE48C(0, 1, 0);
          v45 = swift_task_alloc();
          *(v0 + 592) = v45;
          *v45 = v0;
          v45[1] = sub_10071FF78;
          v46 = *(v0 + 240);
          v47 = *(v0 + 128);
LABEL_40:

          return sub_100720D34(v47, v46);
        }

        goto LABEL_56;
      }

      goto LABEL_54;
    }

    goto LABEL_17;
  }

  if (result == 1)
  {
    if (!v62[2])
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 288), v62 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v37 = v62[2];
    if (!v37)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v38 = swift_isUniquelyReferenced_nonNull_native();
    v39 = v62;
    *(v0 + 80) = v62;
    if (!v38 || (v37 - 1) > v62[3] >> 1)
    {
      v39 = sub_10049935C(v38, v37, 1, v62);
      *(v0 + 80) = v39;
    }

    *(v0 + 568) = v39;
    sub_1003BE4A4(0, 1, 0);
    v40 = swift_task_alloc();
    *(v0 + 576) = v40;
    *v40 = v0;
    v40[1] = sub_10071F554;
    v41 = *(v0 + 288);
    v42 = *(v0 + 136);
  }

  else
  {
    v48 = *(v0 + 176);
    v49 = *(*(v0 + 168) + 32);
    v49(*(v0 + 184), *(v0 + 200), v25);
    v49(v48, v20 + v23, v25);
    result = static Date.< infix(_:_:)();
    if (result)
    {
      if (v10[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 248), v10 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v50 = v10[2];
        if (v50)
        {
          v51 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v10;
          if (!v51 || (v50 - 1) > v10[3] >> 1)
          {
            v10 = sub_10049A07C(v51, v50, 1, v10);
            *(v0 + 96) = v10;
          }

          *(v0 + 528) = v10;
          sub_1003BE48C(0, 1, 0);
          v52 = swift_task_alloc();
          *(v0 + 536) = v52;
          *v52 = v0;
          v52[1] = sub_10071E0E0;
          v46 = *(v0 + 248);
          v47 = *(v0 + 152);
          goto LABEL_40;
        }

        goto LABEL_59;
      }

      goto LABEL_57;
    }

    if (!v62[2])
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 296), v62 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v53 = v62[2];
    if (!v53)
    {
LABEL_60:
      __break(1u);
      return result;
    }

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v62;
    *(v0 + 80) = v62;
    if (!v54 || (v53 - 1) > v62[3] >> 1)
    {
      v55 = sub_10049935C(v54, v53, 1, v62);
      *(v0 + 80) = v55;
    }

    *(v0 + 544) = v55;
    sub_1003BE4A4(0, 1, 0);
    v56 = swift_task_alloc();
    *(v0 + 552) = v56;
    *v56 = v0;
    v56[1] = sub_10071EB1C;
    v41 = *(v0 + 296);
    v42 = *(v0 + 144);
  }

  return sub_100721B1C(v42, v41);
}

uint64_t sub_10071EB1C()
{

  return _swift_task_switch(sub_10071EC18, 0, 0);
}

uint64_t sub_10071EC18()
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v1 = *(v0 + 496);
  }

  else
  {
    v1 = sub_10049A030(0, **(v0 + 520) + 1, 1, *(v0 + 496));
  }

  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_10049A030((v2 > 1), v3 + 1, 1, v1);
  }

  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);
  v7 = *(v0 + 120);
  v8 = *(*(v0 + 168) + 8);
  v8(*(v0 + 176), v5);
  v8(v4, v5);
  v1[2] = v3 + 1;
  v9 = v1 + 2;
  sub_100726674(v6, v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3, type metadata accessor for WidgetMusicItem);
  v10 = *(v0 + 560);
  v11 = *(v0 + 544);
  v12 = *(v0 + 512);
  *(v0 + 496) = v1;
  *(v0 + 504) = v11;
  if (v11[2])
  {
    if (*v9 <= 5uLL)
    {
      v13 = *(v0 + 304);
      v14 = *(v0 + 272);
      v15 = *(v0 + 280);
      v63 = v11;
      (*(v15 + 16))(v13, v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v14);
      Album.lastPlayedDate.getter();
      (*(v15 + 8))(v13, v14);
      goto LABEL_11;
    }

LABEL_17:
    v29 = *(v0 + 448);
    v61 = *(v0 + 440);
    v62 = *(v0 + 456);
    v30 = *(v0 + 424);
    v59 = *(v0 + 416);
    v60 = *(v0 + 432);
    v31 = *(v0 + 376);
    v32 = *(v0 + 360);
    v57 = *(v0 + 368);
    v58 = *(v0 + 384);
    v33 = *(v0 + 344);
    v34 = *(v0 + 352);

    sub_1007228EC(v35);
    (*(v34 + 8))(v32, v33);
    (*(v31 + 8))(v58, v57);
    (*(v30 + 8))(v60, v59);
    (*(v29 + 8))(v62, v61);

    v36 = *(v0 + 8);

    return v36(v1);
  }

  if (!*(v10 + 16) || *v9 > 5uLL)
  {
    goto LABEL_17;
  }

  v63 = v11;
  (*(*(v0 + 168) + 56))(*(v0 + 216), 1, 1, *(v0 + 160));
  v12 = *(v0 + 560);
LABEL_11:
  *(v0 + 520) = v9;
  *(v0 + 512) = v12;
  if (v12[2])
  {
    v16 = *(v0 + 256);
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    (*(v17 + 16))(v16, v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v18);
    Playlist.lastPlayedDate.getter();
    (*(v17 + 8))(v16, v18);
  }

  else
  {
    (*(*(v0 + 168) + 56))(*(v0 + 208), 1, 1, *(v0 + 160));
  }

  v20 = *(v0 + 208);
  v19 = *(v0 + 216);
  v21 = *(v0 + 200);
  v22 = *(v0 + 160);
  v23 = *(v0 + 168);
  v24 = *(*(v0 + 192) + 48);
  *(v0 + 600) = v24;
  sub_10003D17C(v19, v21, &qword_101188C20, &qword_100EC2030);
  sub_10003D17C(v20, v21 + v24, &qword_101188C20, &qword_100EC2030);
  v25 = *(v23 + 48);
  LODWORD(v22) = v25(v21, 1, v22);
  v26 = *(v0 + 160);
  result = v25(v21 + v24, 1, v26);
  if (v22 == 1)
  {
    v28 = result == 1;
    result = v63;
    if (!v28)
    {
      if (v12[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 240), v12 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v43 = v12[2];
        if (v43)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v12;
          if (!isUniquelyReferenced_nonNull_native || (v43 - 1) > v12[3] >> 1)
          {
            v12 = sub_10049A07C(isUniquelyReferenced_nonNull_native, v43, 1, v12);
            *(v0 + 96) = v12;
          }

          *(v0 + 584) = v12;
          sub_1003BE48C(0, 1, 0);
          v45 = swift_task_alloc();
          *(v0 + 592) = v45;
          *v45 = v0;
          v45[1] = sub_10071FF78;
          v46 = *(v0 + 240);
          v47 = *(v0 + 128);
LABEL_40:

          return sub_100720D34(v47, v46);
        }

        goto LABEL_56;
      }

      goto LABEL_54;
    }

    goto LABEL_17;
  }

  if (result == 1)
  {
    if (!v63[2])
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 288), v63 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v37 = v63[2];
    if (!v37)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v38 = swift_isUniquelyReferenced_nonNull_native();
    v39 = v63;
    *(v0 + 80) = v63;
    if (!v38 || (v37 - 1) > v63[3] >> 1)
    {
      v39 = sub_10049935C(v38, v37, 1, v63);
      *(v0 + 80) = v39;
    }

    *(v0 + 568) = v39;
    sub_1003BE4A4(0, 1, 0);
    v40 = swift_task_alloc();
    *(v0 + 576) = v40;
    *v40 = v0;
    v40[1] = sub_10071F554;
    v41 = *(v0 + 288);
    v42 = *(v0 + 136);
  }

  else
  {
    v48 = *(v0 + 176);
    v49 = *(*(v0 + 168) + 32);
    v49(*(v0 + 184), *(v0 + 200), v26);
    v49(v48, v21 + v24, v26);
    result = static Date.< infix(_:_:)();
    if (result)
    {
      if (v12[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 248), v12 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v50 = v12[2];
        if (v50)
        {
          v51 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v12;
          if (!v51 || (v50 - 1) > v12[3] >> 1)
          {
            v12 = sub_10049A07C(v51, v50, 1, v12);
            *(v0 + 96) = v12;
          }

          *(v0 + 528) = v12;
          sub_1003BE48C(0, 1, 0);
          v52 = swift_task_alloc();
          *(v0 + 536) = v52;
          *v52 = v0;
          v52[1] = sub_10071E0E0;
          v46 = *(v0 + 248);
          v47 = *(v0 + 152);
          goto LABEL_40;
        }

        goto LABEL_59;
      }

      goto LABEL_57;
    }

    if (!v63[2])
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 296), v63 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v53 = v63[2];
    if (!v53)
    {
LABEL_60:
      __break(1u);
      return result;
    }

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v63;
    *(v0 + 80) = v63;
    if (!v54 || (v53 - 1) > v63[3] >> 1)
    {
      v55 = sub_10049935C(v54, v53, 1, v63);
      *(v0 + 80) = v55;
    }

    *(v0 + 544) = v55;
    sub_1003BE4A4(0, 1, 0);
    v56 = swift_task_alloc();
    *(v0 + 552) = v56;
    *v56 = v0;
    v56[1] = sub_10071EB1C;
    v41 = *(v0 + 296);
    v42 = *(v0 + 144);
  }

  return sub_100721B1C(v42, v41);
}

uint64_t sub_10071F554()
{

  return _swift_task_switch(sub_10071F650, 0, 0);
}

uint64_t sub_10071F650()
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v1 = *(v0 + 496);
  }

  else
  {
    v1 = sub_10049A030(0, **(v0 + 520) + 1, 1, *(v0 + 496));
  }

  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_10049A030((v2 > 1), v3 + 1, 1, v1);
  }

  v4 = *(v0 + 200);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 136);
  v8 = *(v0 + 120);
  v1[2] = v3 + 1;
  v9 = v1 + 2;
  sub_100726674(v7, v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v3, type metadata accessor for WidgetMusicItem);
  (*(v6 + 8))(v4, v5);
  v10 = *(v0 + 568);
  v11 = *(v0 + 512);
  *(v0 + 496) = v1;
  *(v0 + 504) = v10;
  if (v10[2])
  {
    if (*v9 <= 5uLL)
    {
      v12 = *(v0 + 304);
      v13 = *(v0 + 272);
      v14 = *(v0 + 280);
      v62 = v10;
      (*(v14 + 16))(v12, v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);
      Album.lastPlayedDate.getter();
      (*(v14 + 8))(v12, v13);
      goto LABEL_11;
    }

LABEL_17:
    v28 = *(v0 + 448);
    v29 = *(v0 + 456);
    v60 = *(v0 + 432);
    v61 = *(v0 + 440);
    v30 = *(v0 + 424);
    v31 = *(v0 + 376);
    v58 = *(v0 + 384);
    v59 = *(v0 + 416);
    v32 = *(v0 + 360);
    v57 = *(v0 + 368);
    v33 = *(v0 + 344);
    v34 = *(v0 + 352);

    sub_1007228EC(v35);
    (*(v34 + 8))(v32, v33);
    (*(v31 + 8))(v58, v57);
    (*(v30 + 8))(v60, v59);
    (*(v28 + 8))(v29, v61);

    v36 = *(v0 + 8);

    return v36(v1);
  }

  if (!*(*(v0 + 560) + 16) || *v9 > 5uLL)
  {
    goto LABEL_17;
  }

  v62 = v10;
  (*(*(v0 + 168) + 56))(*(v0 + 216), 1, 1, *(v0 + 160));
  v11 = *(v0 + 560);
LABEL_11:
  *(v0 + 520) = v9;
  *(v0 + 512) = v11;
  if (v11[2])
  {
    v15 = *(v0 + 256);
    v16 = *(v0 + 224);
    v17 = *(v0 + 232);
    (*(v17 + 16))(v15, v11 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v16);
    Playlist.lastPlayedDate.getter();
    (*(v17 + 8))(v15, v16);
  }

  else
  {
    (*(*(v0 + 168) + 56))(*(v0 + 208), 1, 1, *(v0 + 160));
  }

  v19 = *(v0 + 208);
  v18 = *(v0 + 216);
  v20 = *(v0 + 200);
  v21 = *(v0 + 160);
  v22 = *(v0 + 168);
  v23 = *(*(v0 + 192) + 48);
  *(v0 + 600) = v23;
  sub_10003D17C(v18, v20, &qword_101188C20, &qword_100EC2030);
  sub_10003D17C(v19, v20 + v23, &qword_101188C20, &qword_100EC2030);
  v24 = *(v22 + 48);
  LODWORD(v21) = v24(v20, 1, v21);
  v25 = *(v0 + 160);
  result = v24(v20 + v23, 1, v25);
  if (v21 == 1)
  {
    v27 = result == 1;
    result = v62;
    if (!v27)
    {
      if (v11[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 240), v11 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v43 = v11[2];
        if (v43)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v11;
          if (!isUniquelyReferenced_nonNull_native || (v43 - 1) > v11[3] >> 1)
          {
            v11 = sub_10049A07C(isUniquelyReferenced_nonNull_native, v43, 1, v11);
            *(v0 + 96) = v11;
          }

          *(v0 + 584) = v11;
          sub_1003BE48C(0, 1, 0);
          v45 = swift_task_alloc();
          *(v0 + 592) = v45;
          *v45 = v0;
          v45[1] = sub_10071FF78;
          v46 = *(v0 + 240);
          v47 = *(v0 + 128);
LABEL_40:

          return sub_100720D34(v47, v46);
        }

        goto LABEL_56;
      }

      goto LABEL_54;
    }

    goto LABEL_17;
  }

  if (result == 1)
  {
    if (!v62[2])
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 288), v62 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v37 = v62[2];
    if (!v37)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v38 = swift_isUniquelyReferenced_nonNull_native();
    v39 = v62;
    *(v0 + 80) = v62;
    if (!v38 || (v37 - 1) > v62[3] >> 1)
    {
      v39 = sub_10049935C(v38, v37, 1, v62);
      *(v0 + 80) = v39;
    }

    *(v0 + 568) = v39;
    sub_1003BE4A4(0, 1, 0);
    v40 = swift_task_alloc();
    *(v0 + 576) = v40;
    *v40 = v0;
    v40[1] = sub_10071F554;
    v41 = *(v0 + 288);
    v42 = *(v0 + 136);
  }

  else
  {
    v48 = *(v0 + 176);
    v49 = *(*(v0 + 168) + 32);
    v49(*(v0 + 184), *(v0 + 200), v25);
    v49(v48, v20 + v23, v25);
    result = static Date.< infix(_:_:)();
    if (result)
    {
      if (v11[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 248), v11 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v50 = v11[2];
        if (v50)
        {
          v51 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v11;
          if (!v51 || (v50 - 1) > v11[3] >> 1)
          {
            v11 = sub_10049A07C(v51, v50, 1, v11);
            *(v0 + 96) = v11;
          }

          *(v0 + 528) = v11;
          sub_1003BE48C(0, 1, 0);
          v52 = swift_task_alloc();
          *(v0 + 536) = v52;
          *v52 = v0;
          v52[1] = sub_10071E0E0;
          v46 = *(v0 + 248);
          v47 = *(v0 + 152);
          goto LABEL_40;
        }

        goto LABEL_59;
      }

      goto LABEL_57;
    }

    if (!v62[2])
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 296), v62 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v53 = v62[2];
    if (!v53)
    {
LABEL_60:
      __break(1u);
      return result;
    }

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v62;
    *(v0 + 80) = v62;
    if (!v54 || (v53 - 1) > v62[3] >> 1)
    {
      v55 = sub_10049935C(v54, v53, 1, v62);
      *(v0 + 80) = v55;
    }

    *(v0 + 544) = v55;
    sub_1003BE4A4(0, 1, 0);
    v56 = swift_task_alloc();
    *(v0 + 552) = v56;
    *v56 = v0;
    v56[1] = sub_10071EB1C;
    v41 = *(v0 + 296);
    v42 = *(v0 + 144);
  }

  return sub_100721B1C(v42, v41);
}

uint64_t sub_10071FF78()
{

  return _swift_task_switch(sub_100720074, 0, 0);
}

uint64_t sub_100720074()
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v1 = *(v0 + 496);
  }

  else
  {
    v1 = sub_10049A030(0, **(v0 + 520) + 1, 1, *(v0 + 496));
  }

  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_10049A030((v2 > 1), v3 + 1, 1, v1);
  }

  v4 = *(v0 + 600);
  v5 = *(v0 + 200);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v1[2] = v3 + 1;
  v8 = v1 + 2;
  sub_100726674(v6, v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3, type metadata accessor for WidgetMusicItem);
  sub_1000095E8(v5 + v4, &qword_101188C20, &qword_100EC2030);
  v9 = *(v0 + 584);
  v10 = *(v0 + 504);
  *(v0 + 560) = v9;
  *(v0 + 496) = v1;
  if (v10[2])
  {
    if (*v8 <= 5uLL)
    {
      v11 = *(v0 + 304);
      v12 = *(v0 + 272);
      v13 = *(v0 + 280);
      v61 = v10;
      (*(v13 + 16))(v11, v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12);
      Album.lastPlayedDate.getter();
      (*(v13 + 8))(v11, v12);
      goto LABEL_11;
    }

LABEL_17:
    v27 = *(v0 + 448);
    v28 = *(v0 + 456);
    v59 = *(v0 + 432);
    v60 = *(v0 + 440);
    v29 = *(v0 + 424);
    v30 = *(v0 + 376);
    v57 = *(v0 + 384);
    v58 = *(v0 + 416);
    v31 = *(v0 + 360);
    v56 = *(v0 + 368);
    v33 = *(v0 + 344);
    v32 = *(v0 + 352);

    sub_1007228EC(v34);
    (*(v32 + 8))(v31, v33);
    (*(v30 + 8))(v57, v56);
    (*(v29 + 8))(v59, v58);
    (*(v27 + 8))(v28, v60);

    v35 = *(v0 + 8);

    return v35(v1);
  }

  if (!v9[2] || *v8 > 5uLL)
  {
    goto LABEL_17;
  }

  v61 = v10;
  (*(*(v0 + 168) + 56))(*(v0 + 216), 1, 1, *(v0 + 160));
  v9 = *(v0 + 560);
LABEL_11:
  *(v0 + 520) = v8;
  *(v0 + 512) = v9;
  if (v9[2])
  {
    v14 = *(v0 + 256);
    v16 = *(v0 + 224);
    v15 = *(v0 + 232);
    (*(v15 + 16))(v14, v9 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v16);
    Playlist.lastPlayedDate.getter();
    (*(v15 + 8))(v14, v16);
  }

  else
  {
    (*(*(v0 + 168) + 56))(*(v0 + 208), 1, 1, *(v0 + 160));
  }

  v18 = *(v0 + 208);
  v17 = *(v0 + 216);
  v19 = *(v0 + 200);
  v20 = *(v0 + 160);
  v21 = *(v0 + 168);
  v22 = *(*(v0 + 192) + 48);
  *(v0 + 600) = v22;
  sub_10003D17C(v17, v19, &qword_101188C20, &qword_100EC2030);
  sub_10003D17C(v18, v19 + v22, &qword_101188C20, &qword_100EC2030);
  v23 = *(v21 + 48);
  LODWORD(v20) = v23(v19, 1, v20);
  v24 = *(v0 + 160);
  result = v23(v19 + v22, 1, v24);
  if (v20 == 1)
  {
    v26 = result == 1;
    result = v61;
    if (!v26)
    {
      if (v9[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 240), v9 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v42 = v9[2];
        if (v42)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v9;
          if (!isUniquelyReferenced_nonNull_native || (v42 - 1) > v9[3] >> 1)
          {
            v9 = sub_10049A07C(isUniquelyReferenced_nonNull_native, v42, 1, v9);
            *(v0 + 96) = v9;
          }

          *(v0 + 584) = v9;
          sub_1003BE48C(0, 1, 0);
          v44 = swift_task_alloc();
          *(v0 + 592) = v44;
          *v44 = v0;
          v44[1] = sub_10071FF78;
          v45 = *(v0 + 240);
          v46 = *(v0 + 128);
LABEL_40:

          return sub_100720D34(v46, v45);
        }

        goto LABEL_56;
      }

      goto LABEL_54;
    }

    goto LABEL_17;
  }

  if (result == 1)
  {
    if (!v61[2])
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 288), v61 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v36 = v61[2];
    if (!v36)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v37 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v61;
    *(v0 + 80) = v61;
    if (!v37 || (v36 - 1) > v61[3] >> 1)
    {
      v38 = sub_10049935C(v37, v36, 1, v61);
      *(v0 + 80) = v38;
    }

    *(v0 + 568) = v38;
    sub_1003BE4A4(0, 1, 0);
    v39 = swift_task_alloc();
    *(v0 + 576) = v39;
    *v39 = v0;
    v39[1] = sub_10071F554;
    v40 = *(v0 + 288);
    v41 = *(v0 + 136);
  }

  else
  {
    v47 = *(v0 + 176);
    v48 = *(*(v0 + 168) + 32);
    v48(*(v0 + 184), *(v0 + 200), v24);
    v48(v47, v19 + v22, v24);
    result = static Date.< infix(_:_:)();
    if (result)
    {
      if (v9[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 248), v9 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v49 = v9[2];
        if (v49)
        {
          v50 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v9;
          if (!v50 || (v49 - 1) > v9[3] >> 1)
          {
            v9 = sub_10049A07C(v50, v49, 1, v9);
            *(v0 + 96) = v9;
          }

          *(v0 + 528) = v9;
          sub_1003BE48C(0, 1, 0);
          v51 = swift_task_alloc();
          *(v0 + 536) = v51;
          *v51 = v0;
          v51[1] = sub_10071E0E0;
          v45 = *(v0 + 248);
          v46 = *(v0 + 152);
          goto LABEL_40;
        }

        goto LABEL_59;
      }

      goto LABEL_57;
    }

    if (!v61[2])
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 296), v61 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v52 = v61[2];
    if (!v52)
    {
LABEL_60:
      __break(1u);
      return result;
    }

    v53 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v61;
    *(v0 + 80) = v61;
    if (!v53 || (v52 - 1) > v61[3] >> 1)
    {
      v54 = sub_10049935C(v53, v52, 1, v61);
      *(v0 + 80) = v54;
    }

    *(v0 + 544) = v54;
    sub_1003BE4A4(0, 1, 0);
    v55 = swift_task_alloc();
    *(v0 + 552) = v55;
    *v55 = v0;
    v55[1] = sub_10071EB1C;
    v40 = *(v0 + 296);
    v41 = *(v0 + 144);
  }

  return sub_100721B1C(v41, v40);
}

uint64_t sub_10072099C()
{
  (*(v0[56] + 8))(v0[57], v0[55]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100720B4C()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  (*(v0[47] + 8))(v0[48], v0[46]);
  (*(v2 + 8))(v1, v3);
  (*(v0[56] + 8))(v0[57], v0[55]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100720D34(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  sub_10010FC20(&qword_1011831D0, &unk_100EC4CD0);
  v2[10] = swift_task_alloc();
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for MusicSiriRepresentation();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  type metadata accessor for ArtworkImage.Placeholder(0);
  v2[15] = swift_task_alloc();
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_100720F68, 0, 0);
}

uint64_t sub_100720F68(uint64_t a1)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 128);
  *(v1 + 16) = Playlist.name.getter();
  *(v1 + 24) = v4;
  *(v1 + 32) = Playlist.curatorName.getter();
  *(v1 + 40) = v5;
  v6 = Playlist.id.getter();
  sub_100734E88(v6, v7, v2);

  Playlist.artwork.getter();
  v8 = type metadata accessor for Artwork();
  *(v1 + 160) = v8;
  v9 = *(v8 - 8);
  *(v1 + 168) = v9;
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_1000095E8(*(v1 + 128), &unk_101188920, &qword_100EBCC50);
    *(v1 + 192) = 0;
    v10 = *(v1 + 16);
    v11 = *(v1 + 24);
    v12 = *(v1 + 112);
    v13 = *(v1 + 120);
    v14 = *(v1 + 96);
    v15 = *(v1 + 104);
    v16 = *(v1 + 80);
    v17 = *(v1 + 88);
    *(v1 + 200) = vextq_s8(*(v1 + 32), *(v1 + 32), 8uLL);
    *(v1 + 216) = v11;
    *(v1 + 224) = v10;
    Playlist.variant.getter();
    v18 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
    (*(*(v18 - 8) + 56))(v13, 0, 11, v18);
    *(v1 + 232) = Playlist.id.getter();
    *(v1 + 240) = v19;
    *(v1 + 248) = Playlist.catalogID.getter();
    *(v1 + 256) = v20;
    Playlist.siriRepresentation.getter();
    *(v1 + 264) = MusicSiriRepresentation.id.getter();
    *(v1 + 272) = v21;
    (*(v15 + 8))(v12, v14);
    sub_10010FC20(&qword_10118F128, &unk_100ECB620);
    v22 = swift_allocObject();
    *(v1 + 280) = v22;
    *(v22 + 16) = xmmword_100EBDC20;
    Playlist.contentRating.getter();
    *(v22 + 32) = TextBadge.init(for:isPlayable:)(v17, 1);
    Playlist.favoriteStatus.getter();
    v23 = type metadata accessor for MusicFavoriteStatus();
    (*(*(v23 - 8) + 56))(v16, 0, 1, v23);
    *(v22 + 33) = TextBadge.init(for:)(v16);
    v24 = swift_task_alloc();
    *(v1 + 288) = v24;
    *v24 = v1;
    v24[1] = sub_100721660;

    return sub_100712CA4();
  }

  else
  {
    if (*DeviceCapabilities.deviceType.unsafeMutableAddressor() == 2)
    {
      v26 = 140.0;
    }

    else
    {
      v26 = 125.0;
    }

    v27 = swift_task_alloc();
    *(v1 + 176) = v27;
    *v27 = v1;
    v27[1] = sub_1007212DC;

    return sub_1005F1854(v26);
  }
}

uint64_t sub_1007212DC(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 128);
  *(*v1 + 184) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_10072143C, 0, 0);
}

uint64_t sub_10072143C(uint64_t a1)
{
  *(v1 + 192) = *(v1 + 184);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  *(v1 + 200) = vextq_s8(*(v1 + 32), *(v1 + 32), 8uLL);
  *(v1 + 216) = v3;
  *(v1 + 224) = v2;
  Playlist.variant.getter();
  v10 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v10 - 8) + 56))(v5, 0, 11, v10);
  *(v1 + 232) = Playlist.id.getter();
  *(v1 + 240) = v11;
  *(v1 + 248) = Playlist.catalogID.getter();
  *(v1 + 256) = v12;
  Playlist.siriRepresentation.getter();
  *(v1 + 264) = MusicSiriRepresentation.id.getter();
  *(v1 + 272) = v13;
  (*(v7 + 8))(v4, v6);
  sub_10010FC20(&qword_10118F128, &unk_100ECB620);
  v14 = swift_allocObject();
  *(v1 + 280) = v14;
  *(v14 + 16) = xmmword_100EBDC20;
  Playlist.contentRating.getter();
  *(v14 + 32) = TextBadge.init(for:isPlayable:)(v9, 1);
  Playlist.favoriteStatus.getter();
  v15 = type metadata accessor for MusicFavoriteStatus();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  *(v14 + 33) = TextBadge.init(for:)(v8);
  v16 = swift_task_alloc();
  *(v1 + 288) = v16;
  *v16 = v1;
  v16[1] = sub_100721660;

  return sub_100712CA4();
}

uint64_t sub_100721660(char a1)
{
  *(*v1 + 296) = a1;

  return _swift_task_switch(sub_100721760, 0, 0);
}

uint64_t sub_100721760()
{
  v34 = *(v0 + 296);
  v32 = *(v0 + 272);
  v33 = *(v0 + 280);
  v30 = *(v0 + 256);
  v31 = *(v0 + 264);
  v28 = *(v0 + 240);
  v29 = *(v0 + 248);
  v27 = *(v0 + 232);
  v24 = *(v0 + 216);
  v25 = *(v0 + 224);
  v22 = *(v0 + 200);
  v23 = *(v0 + 208);
  v37 = *(v0 + 192);
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v26 = *(v0 + 120);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v36 = *(v0 + 56);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);
  v8(v5, 1, 1, v7);
  v8(v4, 1, 1, v7);
  v9 = type metadata accessor for WidgetMusicItem(0);
  v35 = v9[25];
  *&v6[v35] = 0;
  *&v6[v9[26]] = _swiftEmptyArrayStorage;
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = v25;
  *(v6 + 3) = v24;
  *(v6 + 4) = v23;
  *(v6 + 5) = v22;
  (*(v2 + 16))(&v6[v9[7]], v1, v3);
  sub_10072660C(v26, &v6[v9[23]], type metadata accessor for ArtworkImage.Placeholder);
  *&v6[v9[24]] = 0x3FF0000000000000;
  v6[v9[8]] = 8;
  v10 = &v6[v9[9]];
  *v10 = v27;
  *(v10 + 1) = v28;
  v11 = &v6[v9[10]];
  *v11 = v29;
  *(v11 + 1) = v30;
  v12 = &v6[v9[11]];
  *v12 = v31;
  *(v12 + 1) = v32;
  v13 = &v6[v9[12]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v6[v9[13]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v6[v9[14]];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v6[v9[15]] = v33;
  v6[v9[16]] = v34;
  sub_1000089F8(v5, &v6[v9[17]], &qword_101188C20, &qword_100EC2030);
  sub_1000089F8(v4, &v6[v9[18]], &qword_101188C20, &qword_100EC2030);
  v16 = &v6[v9[19]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v6[v9[20]] = _swiftEmptyArrayStorage;
  v17 = &v6[v9[21]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v17[24] = 1;
  v18 = &v6[v9[22]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v18[24] = 1;
  sub_10043975C(_swiftEmptyArrayStorage);
  v19 = type metadata accessor for Playlist();
  (*(*(v19 - 8) + 8))(v36, v19);
  sub_1000095E8(v4, &qword_101188C20, &qword_100EC2030);
  sub_1000095E8(v5, &qword_101188C20, &qword_100EC2030);
  sub_1007264D0(v26, type metadata accessor for ArtworkImage.Placeholder);
  (*(v2 + 8))(v1, v3);
  *&v6[v35] = v37;

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100721B1C(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  sub_10010FC20(&qword_1011831D0, &unk_100EC4CD0);
  v2[10] = swift_task_alloc();
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for MusicSiriRepresentation();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  type metadata accessor for ArtworkImage.Placeholder(0);
  v2[15] = swift_task_alloc();
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_100721D50, 0, 0);
}

uint64_t sub_100721D50(uint64_t a1)
{
  v2 = v1[19];
  v3 = v1[16];
  v1[2] = Album.title.getter();
  v1[3] = v4;
  v1[4] = Album.artistName.getter();
  v1[5] = v5;
  v6 = Album.id.getter();
  sub_100734E88(v6, v7, v2);

  Album.artwork.getter();
  v8 = type metadata accessor for Artwork();
  v1[20] = v8;
  v9 = *(v8 - 8);
  v1[21] = v9;
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_1000095E8(v1[16], &unk_101188920, &qword_100EBCC50);
    v10 = v1[4];
    v11 = v1[5];
    v12 = v1[2];
    v13 = v1[3];
    v15 = v1[14];
    v14 = v1[15];
    v16 = v1[12];
    v17 = v1[13];
    v18 = v1[10];
    v19 = v1[11];
    v1[24] = 0;
    v1[25] = v11;
    v1[26] = v10;
    v1[27] = v13;
    v1[28] = v12;
    v20 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
    (*(*(v20 - 8) + 56))(v14, 1, 11, v20);
    v1[29] = Album.id.getter();
    v1[30] = v21;
    v1[31] = Album.catalogID.getter();
    v1[32] = v22;
    Album.siriRepresentation.getter();
    v1[33] = MusicSiriRepresentation.id.getter();
    v1[34] = v23;
    (*(v17 + 8))(v15, v16);
    sub_10010FC20(&qword_10118F128, &unk_100ECB620);
    v24 = swift_allocObject();
    v1[35] = v24;
    *(v24 + 16) = xmmword_100EBDC20;
    Album.contentRating.getter();
    *(v24 + 32) = TextBadge.init(for:isPlayable:)(v19, 1);
    Album.favoriteStatus.getter();
    v25 = type metadata accessor for MusicFavoriteStatus();
    (*(*(v25 - 8) + 56))(v18, 0, 1, v25);
    *(v24 + 33) = TextBadge.init(for:)(v18);
    v26 = swift_task_alloc();
    v1[36] = v26;
    *v26 = v1;
    v26[1] = sub_100722430;

    return sub_100713030();
  }

  else
  {
    if (*DeviceCapabilities.deviceType.unsafeMutableAddressor() == 2)
    {
      v28 = 140.0;
    }

    else
    {
      v28 = 125.0;
    }

    v29 = swift_task_alloc();
    v1[22] = v29;
    *v29 = v1;
    v29[1] = sub_1007220BC;

    return sub_1005F1854(v28);
  }
}

uint64_t sub_1007220BC(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 128);
  *(*v1 + 184) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_10072221C, 0, 0);
}

uint64_t sub_10072221C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v0[24] = v0[23];
  v0[25] = v2;
  v0[26] = v1;
  v0[27] = v4;
  v0[28] = v3;
  v11 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v11 - 8) + 56))(v5, 1, 11, v11);
  v0[29] = Album.id.getter();
  v0[30] = v12;
  v0[31] = Album.catalogID.getter();
  v0[32] = v13;
  Album.siriRepresentation.getter();
  v0[33] = MusicSiriRepresentation.id.getter();
  v0[34] = v14;
  (*(v8 + 8))(v6, v7);
  sub_10010FC20(&qword_10118F128, &unk_100ECB620);
  v15 = swift_allocObject();
  v0[35] = v15;
  *(v15 + 16) = xmmword_100EBDC20;
  Album.contentRating.getter();
  *(v15 + 32) = TextBadge.init(for:isPlayable:)(v10, 1);
  Album.favoriteStatus.getter();
  v16 = type metadata accessor for MusicFavoriteStatus();
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  *(v15 + 33) = TextBadge.init(for:)(v9);
  v17 = swift_task_alloc();
  v0[36] = v17;
  *v17 = v0;
  v17[1] = sub_100722430;

  return sub_100713030();
}

uint64_t sub_100722430(char a1)
{
  *(*v1 + 296) = a1;

  return _swift_task_switch(sub_100722530, 0, 0);
}

uint64_t sub_100722530()
{
  v34 = *(v0 + 296);
  v32 = *(v0 + 272);
  v33 = *(v0 + 280);
  v30 = *(v0 + 256);
  v31 = *(v0 + 264);
  v28 = *(v0 + 240);
  v29 = *(v0 + 248);
  v27 = *(v0 + 232);
  v24 = *(v0 + 216);
  v25 = *(v0 + 224);
  v22 = *(v0 + 200);
  v23 = *(v0 + 208);
  v37 = *(v0 + 192);
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v26 = *(v0 + 120);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v36 = *(v0 + 56);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);
  v8(v5, 1, 1, v7);
  v8(v4, 1, 1, v7);
  v9 = type metadata accessor for WidgetMusicItem(0);
  v35 = v9[25];
  *&v6[v35] = 0;
  *&v6[v9[26]] = _swiftEmptyArrayStorage;
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = v25;
  *(v6 + 3) = v24;
  *(v6 + 4) = v23;
  *(v6 + 5) = v22;
  (*(v2 + 16))(&v6[v9[7]], v1, v3);
  sub_10072660C(v26, &v6[v9[23]], type metadata accessor for ArtworkImage.Placeholder);
  *&v6[v9[24]] = 0x3FF0000000000000;
  v6[v9[8]] = 8;
  v10 = &v6[v9[9]];
  *v10 = v27;
  *(v10 + 1) = v28;
  v11 = &v6[v9[10]];
  *v11 = v29;
  *(v11 + 1) = v30;
  v12 = &v6[v9[11]];
  *v12 = v31;
  *(v12 + 1) = v32;
  v13 = &v6[v9[12]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v6[v9[13]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v6[v9[14]];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v6[v9[15]] = v33;
  v6[v9[16]] = v34;
  sub_1000089F8(v5, &v6[v9[17]], &qword_101188C20, &qword_100EC2030);
  sub_1000089F8(v4, &v6[v9[18]], &qword_101188C20, &qword_100EC2030);
  v16 = &v6[v9[19]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v6[v9[20]] = _swiftEmptyArrayStorage;
  v17 = &v6[v9[21]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v17[24] = 1;
  v18 = &v6[v9[22]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v18[24] = 1;
  sub_10043975C(_swiftEmptyArrayStorage);
  v19 = type metadata accessor for Album();
  (*(*(v19 - 8) + 8))(v36, v19);
  sub_1000095E8(v4, &qword_101188C20, &qword_100EC2030);
  sub_1000095E8(v5, &qword_101188C20, &qword_100EC2030);
  sub_1007264D0(v26, type metadata accessor for ArtworkImage.Placeholder);
  (*(v2 + 8))(v1, v3);
  *&v6[v35] = v37;

  v20 = *(v0 + 8);

  return v20();
}

void sub_1007228EC(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for WidgetMusicItem(0);
  v5 = __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    v5.n128_u64[0] = 136446210;
    v20 = v5;
    v21 = v10;
    v22 = OBJC_IVAR____TtC5Music32RecentlyPlayedWidgetDataProvider_logger;
    do
    {
      sub_10072660C(v9, v7, type metadata accessor for WidgetMusicItem);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v23 = v12;
        *v11 = v20.n128_u32[0];
        v13 = sub_100439864();
        v14 = v2;
        v16 = v15;
        sub_1007264D0(v7, type metadata accessor for WidgetMusicItem);
        v17 = sub_1000105AC(v13, v16, &v23);
        v2 = v14;

        *(v11 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v18, v19, "ITEM %{public}s", v11, 0xCu);
        sub_10000959C(v12);

        v10 = v21;
      }

      else
      {

        sub_1007264D0(v7, type metadata accessor for WidgetMusicItem);
      }

      v9 += v10;
      --v8;
    }

    while (v8);
  }
}

uint64_t sub_100722B2C()
{

  v1 = OBJC_IVAR____TtC5Music32RecentlyPlayedWidgetDataProvider_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100722C20(uint64_t a1)
{
  sub_100722CB0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100722CB0(uint64_t a1)
{
  if (!qword_1011A01F0)
  {
    v2 = sub_1001109D0(&qword_10119B110, &qword_100EDF680);
    v3 = sub_100722DA4(&qword_10119B138, &qword_10118EEB0, &unk_100ECC71C, &protocol conformance descriptor for <A> [A]);
    v4 = sub_100722DA4(&qword_10119B118, &qword_10118EEB8, &unk_100ECC6F4, &protocol conformance descriptor for <A> [A]);
    v5 = type metadata accessor for FileBacked(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1011A01F0);
    }
  }
}

uint64_t sub_100722DA4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_10119B110, &qword_100EDF680);
    sub_100726488(a2, type metadata accessor for WidgetMusicItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100722E40@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = type metadata accessor for Station();
  v47 = *(v1 - 8);
  v48 = v1;
  __chkstk_darwin();
  v46 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Playlist();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin();
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v44 = &v43 - v8;
  __chkstk_darwin();
  v45 = &v43 - v9;
  __chkstk_darwin();
  v11 = &v43 - v10;
  __chkstk_darwin();
  v13 = &v43 - v12;
  v14 = type metadata accessor for Album();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RecentlyPlayedMusicItem();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin();
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, v52, v18, v20);
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 == enum case for RecentlyPlayedMusicItem.album(_:))
  {
    (*(v19 + 96))(v22, v18);
    (*(v15 + 32))(v17, v22, v14);
    Album.url.getter();
    v24 = type metadata accessor for URL();
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    if (v26(v13, 1, v24) == 1)
    {
      v27 = Album.id.getter();
      sub_100734D0C(v27, v28, v51);

      (*(v15 + 8))(v17, v14);
      result = v26(v13, 1, v24);
      if (result != 1)
      {
        return sub_1000095E8(v13, &qword_101183A20, &unk_100EBCF80);
      }
    }

    else
    {
      (*(v15 + 8))(v17, v14);
      return (*(v25 + 32))(v51, v13, v24);
    }

    return result;
  }

  if (v23 == enum case for RecentlyPlayedMusicItem.playlist(_:))
  {
    (*(v19 + 96))(v22, v18);
    v31 = v49;
    v30 = v50;
    (*(v49 + 32))(v5, v22, v50);
    Playlist.url.getter();
    v32 = type metadata accessor for URL();
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    if (v34(v11, 1, v32) == 1)
    {
      v35 = Playlist.id.getter();
      sub_100734E88(v35, v36, v51);

      (*(v31 + 8))(v5, v30);
      goto LABEL_13;
    }

    (*(v31 + 8))(v5, v30);
    return (*(v33 + 32))(v51, v11, v32);
  }

  if (v23 != enum case for RecentlyPlayedMusicItem.station(_:))
  {
    URL.init(string:)();
    v41 = type metadata accessor for URL();
    v42 = *(v41 - 8);
    result = (*(v42 + 48))(v7, 1, v41);
    if (result != 1)
    {
      (*(v42 + 32))(v51, v7, v41);
      return (*(v19 + 8))(v22, v18);
    }

    __break(1u);
    goto LABEL_22;
  }

  (*(v19 + 96))(v22, v18);
  v38 = v46;
  v37 = v47;
  v39 = v48;
  (*(v47 + 32))(v46, v22, v48);
  v11 = v45;
  Station.url.getter();
  v32 = type metadata accessor for URL();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  if (v34(v11, 1, v32) != 1)
  {
    (*(v37 + 8))(v38, v39);
    return (*(v33 + 32))(v51, v11, v32);
  }

  v40 = v44;
  URL.init(string:)();
  result = (v34)(v40, 1, v32);
  if (result == 1)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  (*(v37 + 8))(v38, v39);
  (*(v33 + 32))(v51, v40, v32);
LABEL_13:
  result = (v34)(v11, 1, v32);
  if (result != 1)
  {
    return sub_1000095E8(v11, &qword_101183A20, &unk_100EBCF80);
  }

  return result;
}

uint64_t sub_100723634@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecentlyPlayedMusicItem();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v2, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for RecentlyPlayedMusicItem.album(_:))
  {
    v14 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
    (*(*(v14 - 8) + 56))(a1, 1, 11, v14);
    return (*(v9 + 8))(v12, v8);
  }

  else if (v13 == enum case for RecentlyPlayedMusicItem.playlist(_:))
  {
    (*(v9 + 96))(v12, v8);
    (*(v5 + 32))(v7, v12, v4);
    Playlist.variant.getter();
    (*(v5 + 8))(v7, v4);
    v16 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
    return (*(*(v16 - 8) + 56))(a1, 0, 11, v16);
  }

  else
  {
    v17 = enum case for RecentlyPlayedMusicItem.station(_:);
    v18 = v13;
    v19 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
    if (v18 == v17)
    {
      v20 = 9;
    }

    else
    {
      v20 = 1;
    }

    (*(*(v19 - 8) + 56))(a1, v20, 11, v19);
    return (*(v9 + 8))(v12, v8);
  }
}

void *sub_100723968()
{
  v1 = v0;
  v2 = type metadata accessor for Station();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin();
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Playlist();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011831D0, &unk_100EC4CD0);
  __chkstk_darwin();
  v8 = &v30 - v7;
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v10 = &v30 - v9;
  v11 = type metadata accessor for Album();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RecentlyPlayedMusicItem();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin();
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v1, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == enum case for RecentlyPlayedMusicItem.album(_:))
  {
    (*(v16 + 96))(v19, v15);
    (*(v12 + 32))(v14, v19, v11);
    sub_10010FC20(&qword_10118F128, &unk_100ECB620);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100EBDC20;
    Album.contentRating.getter();
    *(v21 + 32) = TextBadge.init(for:isPlayable:)(v10, 1);
    Album.favoriteStatus.getter();
    v22 = type metadata accessor for MusicFavoriteStatus();
    (*(*(v22 - 8) + 56))(v8, 0, 1, v22);
    *(v21 + 33) = TextBadge.init(for:)(v8);
    (*(v12 + 8))(v14, v11);
  }

  else if (v20 == enum case for RecentlyPlayedMusicItem.playlist(_:))
  {
    (*(v16 + 96))(v19, v15);
    v24 = v34;
    v23 = v35;
    (*(v34 + 32))(v6, v19, v35);
    sub_10010FC20(&qword_10118F128, &unk_100ECB620);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100EBDC20;
    Playlist.contentRating.getter();
    *(v21 + 32) = TextBadge.init(for:isPlayable:)(v10, 1);
    Playlist.favoriteStatus.getter();
    v25 = type metadata accessor for MusicFavoriteStatus();
    (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
    *(v21 + 33) = TextBadge.init(for:)(v8);
    (*(v24 + 8))(v6, v23);
  }

  else if (v20 == enum case for RecentlyPlayedMusicItem.station(_:))
  {
    (*(v16 + 96))(v19, v15);
    v26 = v31;
    v27 = v32;
    v28 = v33;
    (*(v32 + 32))(v31, v19, v33);
    sub_10010FC20(&qword_10118F128, &unk_100ECB620);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100EBC6B0;
    Station.contentRating.getter();
    *(v21 + 32) = TextBadge.init(for:isPlayable:)(v10, 1);
    (*(v27 + 8))(v26, v28);
  }

  else
  {
    (*(v16 + 8))(v19, v15);
    return _swiftEmptyArrayStorage;
  }

  return v21;
}

uint64_t sub_100723F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[10] = a2;
  v6[15] = *(sub_10010FC20(&qword_1011920D8, &qword_100ECF2F0) - 8);
  v6[16] = swift_task_alloc();
  sub_10010FC20(&qword_1011A0310, &qword_100EDF820);
  v6[17] = swift_task_alloc();
  v7 = sub_10010FC20(&qword_1011A0318, &qword_100EDF828);
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v8 = *(type metadata accessor for DragDropToFolder(0) - 8);
  v6[21] = v8;
  v6[22] = *(v8 + 64);
  v6[23] = swift_task_alloc();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011A0320, &qword_100EDF830);
  v6[26] = v9;
  v6[27] = *(v9 - 8);
  v6[28] = swift_task_alloc();
  sub_10010FC20(&qword_1011A0328, &qword_100EDF838);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_10072420C, 0, 0);
}

uint64_t sub_10072420C()
{
  v2 = 0;
  v3 = *(v1 + 216);
  v38 = *(v1 + 168);
  v39 = *(v1 + 208);
  v36 = (v3 + 48);
  v37 = (v3 + 56);
  v4 = *(*(v1 + 88) + 16);
  v35 = v4;
  while (1)
  {
    if (v2 == v4)
    {
      v5 = 1;
      v6 = v4;
    }

    else
    {
      if (v2 >= v4)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v6 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_22;
      }

      v8 = *(v1 + 224);
      v7 = *(v1 + 232);
      v9 = *(v1 + 88) + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v2;
      v10 = *(v39 + 48);
      *v8 = v2;
      sub_10072660C(v9, v8 + v10, type metadata accessor for DragDropToFolder);
      sub_10003D17C(v8, v7, &qword_1011A0320, &qword_100EDF830);
      v5 = 0;
    }

    v12 = *(v1 + 232);
    v11 = *(v1 + 240);
    v13 = *(v1 + 208);
    (*v37)(v12, v5, 1, v13);
    sub_10003D17C(v12, v11, &qword_1011A0328, &qword_100EDF838);
    if ((*v36)(v11, 1, v13) == 1)
    {
      break;
    }

    v14 = *(v1 + 240);
    v15 = *(v1 + 200);
    v42 = *(v1 + 192);
    v43 = v6;
    v16 = *(v1 + 184);
    v17 = *(v1 + 104);
    v40 = *v14;
    v41 = *(v1 + 96);
    v18 = *(v39 + 48);
    v19 = type metadata accessor for TaskPriority();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v15, 1, 1, v19);
    sub_100726674(v14 + v18, v16, type metadata accessor for DragDropToFolder);
    v21 = (*(v38 + 80) + 56) & ~*(v38 + 80);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v40;
    v22[5] = v41;
    v22[6] = v17;
    sub_100726674(v16, v22 + v21, type metadata accessor for DragDropToFolder);
    sub_1000089F8(v15, v42, &unk_101181520, &qword_100EBCC60);
    LODWORD(v16) = (*(v20 + 48))(v42, 1, v19);

    v23 = *(v1 + 192);
    if (v16 == 1)
    {
      sub_1000095E8(*(v1 + 192), &unk_101181520, &qword_100EBCC60);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v20 + 8))(v23, v19);
    }

    if (v22[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v24 = dispatch thunk of Actor.unownedExecutor.getter();
      v26 = v25;
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v4 = v35;
    v2 = v43;
    v27 = **(v1 + 80);

    sub_10010FC20(&qword_1011A0308, &qword_100EDF810);
    v28 = v26 | v24;
    if (v26 | v24)
    {
      v28 = v1 + 16;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *(v1 + 32) = v24;
      *(v1 + 40) = v26;
    }

    v0 = *(v1 + 200);
    *(v1 + 48) = 1;
    *(v1 + 56) = v28;
    *(v1 + 64) = v27;
    swift_task_create();

    sub_1000095E8(v0, &unk_101181520, &qword_100EBCC60);
  }

  v29 = *(v1 + 112);
  *(v1 + 248) = sub_10010FC20(&qword_1011A0308, &qword_100EDF810);
  sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
  ThrowingTaskGroup.makeAsyncIterator()();
  v0 = *v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v29 = v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_18;
  }

LABEL_23:
  v0 = sub_1005014F8(v0);
LABEL_18:
  **(v1 + 112) = v0;
  v31 = swift_task_alloc();
  *(v1 + 256) = v31;
  *v31 = v1;
  v31[1] = sub_100724710;
  v32 = *(v1 + 136);
  v33 = *(v1 + 144);

  return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v32, 0, 0, v33, v1 + 72);
}

uint64_t sub_100724710()
{

  if (v0)
  {
    v1 = sub_100724AD4;
  }

  else
  {
    v1 = sub_100724820;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100724820()
{
  v1 = v0[31];
  v2 = v0[17];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) != 1)
  {
    v5 = v0[16];
    v6 = v0[14];
    v7 = *v2;
    sub_10003D17C(v2 + *(v1 + 48), v5, &qword_1011831B0, &qword_100ED2570);
    v8 = sub_10010FC20(&qword_1011831B0, &qword_100ED2570);
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v0[14];
      isUniquelyReferenced_nonNull_native = sub_1005014F8(v9);
      v9 = isUniquelyReferenced_nonNull_native;
      *v16 = isUniquelyReferenced_nonNull_native;
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v7 < v9[2])
        {
          sub_10006B010(v0[16], v9 + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)) + *(v0[15] + 72) * v7, &qword_1011920D8, &qword_100ECF2F0);
          v15 = swift_task_alloc();
          v0[32] = v15;
          *v15 = v0;
          v15[1] = sub_100724710;
          isUniquelyReferenced_nonNull_native = v0[17];
          v13 = v0[18];
          v14 = v0 + 9;
          v11 = 0;
          v12 = 0;

          return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
        }

LABEL_13:
        __break(1u);
        return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(v0[19] + 8))(v0[20], v0[18]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100724AD4()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100724BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[15] = a2;
  v6[20] = *(sub_10010FC20(&qword_10118F120, &unk_100ED5660) - 8);
  v6[21] = swift_task_alloc();
  sub_10010FC20(&qword_1011A02C0, &qword_100EDF778);
  v6[22] = swift_task_alloc();
  v7 = sub_10010FC20(&qword_1011A02C8, &unk_100EDF780);
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_1011A02D0, &qword_100EDF790);
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  v9 = type metadata accessor for RecentlyPlayedMusicItem();
  v6[31] = v9;
  v10 = *(v9 - 8);
  v6[32] = v10;
  v6[33] = *(v10 + 64);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  sub_10010FC20(&qword_1011A02D8, &qword_100EDF798);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_1011A0290, &qword_100EDF728);
  v6[38] = v11;
  v6[39] = *(v11 - 8);
  v6[40] = swift_task_alloc();
  sub_10010FC20(&qword_1011A02E0, &qword_100EDF7A0);
  v6[41] = swift_task_alloc();
  v6[42] = sub_10010FC20(&qword_1011A02E8, &qword_100EDF7A8);
  v6[43] = swift_task_alloc();

  return _swift_task_switch(sub_100724F7C, 0, 0);
}

uint64_t sub_100724F7C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 320);
  v4 = *(v0 + 328);
  v5 = *(v0 + 304);
  v6 = *(v0 + 312);
  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  v55 = *(v0 + 224);
  (*(v6 + 16))(v4, *(v0 + 128), v5);
  (*(v6 + 32))(v3, v4, v5);
  sub_100020674(&qword_1011A02F0, &qword_1011A0290, &qword_100EDF728, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v46 = *(v1 + 36);
  *(v2 + v46) = 0;
  v47 = (v7 + 16);
  v50 = v7;
  v54 = (v7 + 32);
  v9 = *(sub_10010FC20(&qword_1011A02F8, &qword_100EDF7B0) + 36);
  v52 = (v8 + 48);
  v53 = (v8 + 56);
  v51 = 0;
  sub_100020674(&qword_1011A02B0, &qword_1011A0290, &qword_100EDF728, &protocol conformance descriptor for MusicItemCollection<A>);
  v48 = v2;
  v49 = v9;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*(v2 + v9) == *(v0 + 104))
    {
      v11 = 1;
    }

    else
    {
      v12 = *(v0 + 280);
      v13 = *(v0 + 240);
      v14 = *(v0 + 248);
      v15 = dispatch thunk of Collection.subscript.read();
      (*v47)(v12);
      v15(v0 + 16, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v16 = *(v55 + 48);
      *v13 = v51;
      (*v54)(&v13[v16], v12, v14);
      v17 = (v51 + 1);
      if (__OFADD__(v51, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      v18 = *(v0 + 288);
      v19 = *(v0 + 240);
      ++v51;
      *(v2 + v46) = v17;
      sub_10003D17C(v19, v18, &qword_1011A02D0, &qword_100EDF790);
      v11 = 0;
    }

    v20 = *(v0 + 288);
    v21 = *(v0 + 296);
    v22 = *(v0 + 224);
    (*v53)(v20, v11, 1, v22);
    sub_10003D17C(v20, v21, &qword_1011A02D8, &qword_100EDF798);
    if ((*v52)(v21, 1, v22) == 1)
    {
      break;
    }

    v23 = *(v0 + 296);
    v24 = *(v0 + 272);
    v25 = *(v0 + 248);
    v26 = *(v0 + 216);
    v56 = v25;
    v57 = v26;
    v27 = *(v0 + 144);
    v59 = *(v0 + 136);
    v60 = *(v0 + 208);
    v58 = *v23;
    v28 = *(v55 + 48);
    v29 = type metadata accessor for TaskPriority();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v26, 1, 1, v29);
    v31 = *(v50 + 32);
    v31(v24, v23 + v28, v25);
    v32 = (*(v50 + 80) + 56) & ~*(v50 + 80);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v58;
    v33[5] = v59;
    v33[6] = v27;
    v31(v33 + v32, v24, v56);
    sub_1000089F8(v57, v60, &unk_101181520, &qword_100EBCC60);
    LODWORD(v28) = (*(v30 + 48))(v60, 1, v29);

    v34 = *(v0 + 208);
    if (v28 == 1)
    {
      sub_1000095E8(*(v0 + 208), &unk_101181520, &qword_100EBCC60);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v30 + 8))(v34, v29);
    }

    v9 = v49;
    if (v33[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v35 = dispatch thunk of Actor.unownedExecutor.getter();
      v37 = v36;
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v2 = v48;
    v38 = **(v0 + 120);

    sub_10010FC20(&qword_1011A02B8, &qword_100EDF770);
    v39 = v37 | v35;
    if (v37 | v35)
    {
      v39 = v0 + 48;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 64) = v35;
      *(v0 + 72) = v37;
    }

    v10 = *(v0 + 216);
    *(v0 + 80) = 1;
    *(v0 + 88) = v39;
    *(v0 + 96) = v38;
    swift_task_create();

    sub_1000095E8(v10, &unk_101181520, &qword_100EBCC60);
  }

  v40 = *(v0 + 152);
  sub_1000095E8(*(v0 + 344), &qword_1011A02E8, &qword_100EDF7A8);
  *(v0 + 352) = sub_10010FC20(&qword_1011A02B8, &qword_100EDF770);
  sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
  ThrowingTaskGroup.makeAsyncIterator()();
  v17 = *v40;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v40 = v17;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_17;
  }

LABEL_21:
  v17 = sub_100501534(v17);
LABEL_17:
  **(v0 + 152) = v17;
  v42 = swift_task_alloc();
  *(v0 + 360) = v42;
  *v42 = v0;
  v42[1] = sub_100725618;
  v43 = *(v0 + 176);
  v44 = *(v0 + 184);

  return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v43, 0, 0, v44, v0 + 112);
}

uint64_t sub_100725618()
{

  if (v0)
  {
    v1 = sub_100725A04;
  }

  else
  {
    v1 = sub_100725728;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100725728()
{
  v1 = v0[44];
  v2 = v0[22];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) != 1)
  {
    v5 = v0[21];
    v6 = v0[19];
    v7 = *v2;
    sub_100726674(v2 + *(v1 + 48), v5, type metadata accessor for WidgetMusicItem);
    v8 = type metadata accessor for WidgetMusicItem(0);
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v0[19];
      isUniquelyReferenced_nonNull_native = sub_100501534(v9);
      v9 = isUniquelyReferenced_nonNull_native;
      *v16 = isUniquelyReferenced_nonNull_native;
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v7 < v9[2])
        {
          sub_10006B010(v0[21], v9 + ((*(v0[20] + 80) + 32) & ~*(v0[20] + 80)) + *(v0[20] + 72) * v7, &qword_10118F120, &unk_100ED5660);
          v15 = swift_task_alloc();
          v0[45] = v15;
          *v15 = v0;
          v15[1] = sub_100725618;
          isUniquelyReferenced_nonNull_native = v0[22];
          v13 = v0[23];
          v14 = v0 + 14;
          v11 = 0;
          v12 = 0;

          return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
        }

LABEL_13:
        __break(1u);
        return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(v0[24] + 8))(v0[25], v0[23]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100725A04()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100725B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_100725B5C, 0, 0);
}

uint64_t sub_100725B5C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(sub_10010FC20(&qword_1011A0308, &qword_100EDF810) + 48);
  *v3 = v1;
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_10072680C;
  v6 = v0[6];

  return v8(&v3[v4], v6);
}

uint64_t sub_100725C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_100725CA4, 0, 0);
}

uint64_t sub_100725CA4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(sub_10010FC20(&qword_1011A02B8, &qword_100EDF770) + 48);
  *v3 = v1;
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100725DC4;
  v6 = v0[6];

  return v8(&v3[v4], v6);
}

uint64_t sub_100725DC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100725EB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a3;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10002F3F4;

  return sub_100723F4C(a1, a2, v12, a4, a5, a6);
}

uint64_t sub_100725FA0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10002F3F4;

  return sub_100724BD0(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10072607C(uint64_t a1)
{
  v4 = *(type metadata accessor for RecentlyPlayedMusicItem() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100008F30;

  return sub_100725C7C(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1007261CC(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for WidgetDiskCache(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v1 + v4);
  v7 = *(v1 + v4 + 8);
  v8 = *(v1 + 16);
  v9 = v1 + ((v4 + *(v5 + 80) + 16) & ~*(v5 + 80));

  return a1(v8, v1 + v3, v6, v7, v9);
}

uint64_t sub_100726314(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(unint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_10010FC20(a1, a2) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for WidgetDiskCache(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for URL() - 8);
  v11 = *(v3 + v9);
  v12 = *(v3 + v9 + 8);
  v13 = v3 + ((v9 + *(v10 + 80) + 16) & ~*(v10 + 80));

  return a3(v3 + v5, v3 + v8, v11, v12, v13);
}

uint64_t sub_100726488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1007264D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100726530(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100008F30;

  return sub_100725EB8(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10072660C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100726674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007266DC(uint64_t a1)
{
  v4 = *(type metadata accessor for DragDropToFolder(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100008F30;

  return sub_100725B34(a1, v6, v7, v8, v9, v10, v1 + v5);
}

void sub_100726828(void *a1)
{
  v3 = OBJC_IVAR____TtC5Music12VolumeSlider_route;
  v4 = *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_route);
  if (v4)
  {
    if (a1)
    {
      sub_100009F78(0, &unk_1011A0470, MPAVRoute_ptr);
      v5 = v4;
      v6 = a1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        return;
      }

      v4 = *(v1 + v3);
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v4 = 0;
  }

  v12 = [objc_allocWithZone(MPVolumeControllerRouteDataSource) initWithGroupRoute:v4 outputDeviceRoute:0];
  *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_ignoreAnimationForVolumeEvents) = 1;
  v8 = [objc_allocWithZone(MPVolumeController) initWithDataSource:v12];
  v9 = OBJC_IVAR____TtC5Music12VolumeSlider_volumeController;
  v10 = *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_volumeController);
  *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_volumeController) = v8;
  v11 = v8;

  [v11 setDelegate:v1];
  [*(v1 + v9) updateVolumeValue];
  sub_100727300(0);
}

char *sub_1007269A0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC5Music12VolumeSlider_volumeController;
  v11 = [objc_allocWithZone(MPVolumeControllerSystemDataSource) init];
  v12 = [objc_allocWithZone(MPVolumeController) initWithDataSource:v11];

  *&v5[v10] = v12;
  v5[OBJC_IVAR____TtC5Music12VolumeSlider_isTracking] = 0;
  v5[OBJC_IVAR____TtC5Music12VolumeSlider_ignoreAnimationForVolumeEvents] = 0;
  v13 = OBJC_IVAR____TtC5Music12VolumeSlider_elapsedTrackColor;
  v14 = objc_opt_self();
  *&v5[v13] = [v14 whiteColor];
  v15 = OBJC_IVAR____TtC5Music12VolumeSlider_remainingTrackColor;
  *&v5[v15] = [v14 systemFillColor];
  v16 = OBJC_IVAR____TtC5Music12VolumeSlider_trackingColor;
  v17 = UIColor.MusicTint.normal.unsafeMutableAddressor();
  v18 = *v17;
  *&v5[v16] = *v17;
  v19 = OBJC_IVAR____TtC5Music12VolumeSlider_slider;
  v20 = objc_allocWithZone(UISlider);
  v21 = v18;
  v22 = [v20 init];
  v23 = UIView.forAutolayout.getter();

  *&v5[v19] = v23;
  v24 = OBJC_IVAR____TtC5Music12VolumeSlider_trackLayoutGuide;
  *&v5[v24] = [objc_allocWithZone(UILayoutGuide) init];
  *&v5[OBJC_IVAR____TtC5Music12VolumeSlider_route] = 0;
  v25 = &v5[OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler];
  v26 = type metadata accessor for VolumeSlider();
  *v25 = 0;
  v25[1] = 0;
  v81.receiver = v5;
  v81.super_class = v26;
  v27 = objc_msgSendSuper2(&v81, "initWithFrame:", a1, a2, a3, a4);
  v28 = *&v27[OBJC_IVAR____TtC5Music12VolumeSlider_volumeController];
  v29 = v27;
  [v28 setDelegate:v29];
  sub_100727300(0);
  v80 = [objc_allocWithZone(_UISliderFluidConfiguration) init];
  [v80 setDelegate:v29];
  v30 = *SliderView.Specs.expandedBarHeight.unsafeMutableAddressor();
  v79 = SliderView.Specs.barHeight.unsafeMutableAddressor();
  [v80 setExpansionFactor:v30 / *v79];
  [v80 setStretchLimit:*SliderView.Specs.stretchLimit.unsafeMutableAddressor()];
  v31 = OBJC_IVAR____TtC5Music12VolumeSlider_slider;
  [*&v29[OBJC_IVAR____TtC5Music12VolumeSlider_slider] _setSliderConfiguration:v80];
  [*&v29[v31] setMinimumValue:0.0];
  LODWORD(v32) = 1.0;
  [*&v29[v31] setMaximumValue:v32];
  v33 = *&v29[v31];
  v34 = sub_1007282A8();
  v35 = v33;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaControls, v34))
  {
    v36 = 111;
  }

  else
  {
    v36 = 110;
  }

  [v35 _setSliderStyle:v36];

  v37 = *&v29[v31];
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 configurationWithPointSize:14.0];
  v41 = String._bridgeToObjectiveC()();
  v42 = objc_opt_self();
  v43 = [v42 systemImageNamed:v41 withConfiguration:v40];

  [v39 setMinimumValueImage:v43];
  v44 = *&v29[v31];
  v45 = [v38 configurationWithPointSize:14.0];
  v46 = String._bridgeToObjectiveC()();
  v47 = [v42 systemImageNamed:v46 withConfiguration:v45];

  [v44 setMaximumValueImage:v47];
  [*&v29[v31] addTarget:v29 action:"sliderDidChangeValue:" forControlEvents:4096];
  v48 = v29;
  v49 = *&v29[v31];
  v50 = v48;
  [v50 addSubview:v49];
  v51 = OBJC_IVAR____TtC5Music12VolumeSlider_trackLayoutGuide;
  [v50 addLayoutGuide:*&v50[OBJC_IVAR____TtC5Music12VolumeSlider_trackLayoutGuide]];
  v78 = objc_opt_self();
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_100EBEEA0;
  v53 = [*&v29[v31] leadingAnchor];
  v54 = [v50 leadingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v52 + 32) = v55;
  v56 = [*&v29[v31] trailingAnchor];
  v57 = [v50 trailingAnchor];

  v58 = [v56 constraintEqualToAnchor:v57];
  *(v52 + 40) = v58;
  v59 = [*&v29[v31] topAnchor];
  v60 = [v50 topAnchor];

  v61 = [v59 constraintEqualToAnchor:v60];
  *(v52 + 48) = v61;
  v62 = [*&v29[v31] bottomAnchor];
  v63 = [v50 bottomAnchor];

  v64 = [v62 constraintEqualToAnchor:v63];
  *(v52 + 56) = v64;
  v65 = [*&v50[v51] leadingAnchor];
  v66 = [v50 leadingAnchor];

  v67 = [v65 constraintEqualToAnchor:v66];
  *(v52 + 64) = v67;
  v68 = [*&v50[v51] trailingAnchor];
  v69 = [v50 trailingAnchor];

  v70 = [v68 constraintEqualToAnchor:v69];
  *(v52 + 72) = v70;
  v71 = [*&v50[v51] centerYAnchor];
  v72 = [v50 centerYAnchor];

  v73 = [v71 constraintEqualToAnchor:v72];
  *(v52 + 80) = v73;
  v74 = [*&v50[v51] heightAnchor];
  v75 = [v74 constraintEqualToConstant:*v79];

  *(v52 + 88) = v75;
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v78 activateConstraints:isa];

  return v50;
}

void sub_10072720C(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for VolumeSlider();
  objc_msgSendSuper2(&v5, "didMoveToWindow");
  v2 = [v1 window];
  if (v2)
  {

    v3 = &selRef_addVolumeDisplay_;
  }

  else
  {
    v3 = &selRef_removeVolumeDisplay_;
  }

  v4 = [objc_opt_self() sharedInstance];
  [v4 *v3];
}

id sub_100727300(char a1)
{
  v3 = OBJC_IVAR____TtC5Music12VolumeSlider_volumeController;
  v4 = [*(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_volumeController) isVolumeControlAvailable];
  [*(v1 + v3) volumeValue];
  v6 = v5;
  v7 = OBJC_IVAR____TtC5Music12VolumeSlider_slider;
  [*(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_slider) value];
  v9 = vabds_f32(*&v8, v6);
  if (*(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_ignoreAnimationForVolumeEvents) == 1)
  {
    if (v9 <= 0.00000011921)
    {
      goto LABEL_6;
    }

    a1 = 0;
    *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_ignoreAnimationForVolumeEvents) = 0;
  }

  else if (v9 <= 0.00000011921)
  {
    goto LABEL_6;
  }

  *&v8 = v6;
  [*(v1 + v7) setValue:a1 & 1 animated:v8];
LABEL_6:
  [*(v1 + v7) setEnabled:v4];
  v10 = *(v1 + v7);

  return [v10 _setMinimumTrackVisible:v4 withDuration:0.0];
}

void sub_100727400(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_volumeController);
  [a1 value];
  [v3 setVolume:? withNotificationDelay:?];

  v4 = *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler + 8);

    v4(v6);

    sub_100020438(v4, v5);
  }
}

id sub_10072751C()
{
  v1 = OBJC_IVAR____TtC5Music12VolumeSlider_slider;
  if (*(v0 + OBJC_IVAR____TtC5Music12VolumeSlider_isTracking))
  {
    v2 = &OBJC_IVAR____TtC5Music12VolumeSlider_trackingColor;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC5Music12VolumeSlider_elapsedTrackColor;
  }

  [*(v0 + OBJC_IVAR____TtC5Music12VolumeSlider_slider) setMinimumTrackTintColor:*(v0 + *v2)];
  v3 = *(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC5Music12VolumeSlider_remainingTrackColor);

  return [v3 setMaximumTrackTintColor:v4];
}

id sub_1007275A4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VolumeSlider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100727944(char *a1)
{
  v2 = SliderView.Specs.expandedTransform.unsafeMutableAddressor();
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v12[0] = *v2;
  v12[1] = v3;
  v12[2] = v4;
  [a1 setTransform:v12];
  v5 = *&a1[OBJC_IVAR____TtC5Music12VolumeSlider_slider];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 labelColor];
  [v7 setTintColor:v8];

  v9 = OBJC_IVAR____TtC5Music12VolumeSlider_slider;
  if (a1[OBJC_IVAR____TtC5Music12VolumeSlider_isTracking])
  {
    v10 = &OBJC_IVAR____TtC5Music12VolumeSlider_trackingColor;
  }

  else
  {
    v10 = &OBJC_IVAR____TtC5Music12VolumeSlider_elapsedTrackColor;
  }

  [*&a1[OBJC_IVAR____TtC5Music12VolumeSlider_slider] setMinimumTrackTintColor:*&a1[*v10]];
  return [*&a1[v9] setMaximumTrackTintColor:*&a1[OBJC_IVAR____TtC5Music12VolumeSlider_remainingTrackColor]];
}

void sub_100727BBC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Music12VolumeSlider_isTracking;
  v2[OBJC_IVAR____TtC5Music12VolumeSlider_isTracking] = 0;
  v5 = *&v2[OBJC_IVAR____TtC5Music12VolumeSlider_volumeController];
  [a1 value];
  [v5 setVolume:? withNotificationDelay:?];

  v6 = *&v2[OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler];
  if (v6)
  {
    v7 = *&v2[OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler + 8];

    v6(v8);
    sub_100020438(v6, v7);
  }

  v9 = v2[v4];
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  if (v9)
  {
    v11 = 26.5;
  }

  else
  {
    v11 = 40.0;
  }

  if (v9)
  {
    v12 = 288.0;
  }

  else
  {
    v12 = 500.0;
  }

  if (v9)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 2.0;
  }

  v14 = objc_opt_self();
  v17[4] = sub_100727F0C;
  v17[5] = v10;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10002BC98;
  v17[3] = &unk_1010BCA28;
  v15 = _Block_copy(v17);
  v16 = v2;

  [v14 _animateUsingSpringWithDuration:2 delay:v15 options:0 mass:1.0 stiffness:0.0 damping:v13 initialVelocity:v12 animations:v11 completion:0.0];
  _Block_release(v15);
}

id sub_100727DB4(char *a1)
{
  v5[0] = 0x3FF0000000000000;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0x3FF0000000000000;
  v5[4] = 0;
  v5[5] = 0;
  [a1 setTransform:v5];
  [*&a1[OBJC_IVAR____TtC5Music12VolumeSlider_slider] setTintColor:0];
  v2 = OBJC_IVAR____TtC5Music12VolumeSlider_slider;
  if (a1[OBJC_IVAR____TtC5Music12VolumeSlider_isTracking])
  {
    v3 = &OBJC_IVAR____TtC5Music12VolumeSlider_trackingColor;
  }

  else
  {
    v3 = &OBJC_IVAR____TtC5Music12VolumeSlider_elapsedTrackColor;
  }

  [*&a1[OBJC_IVAR____TtC5Music12VolumeSlider_slider] setMinimumTrackTintColor:*&a1[*v3]];
  return [*&a1[v2] setMaximumTrackTintColor:*&a1[OBJC_IVAR____TtC5Music12VolumeSlider_remainingTrackColor]];
}

void sub_100727F14()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music12VolumeSlider_volumeController;
  v3 = [objc_allocWithZone(MPVolumeControllerSystemDataSource) init];
  v4 = [objc_allocWithZone(MPVolumeController) initWithDataSource:v3];

  *(v1 + v2) = v4;
  *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_isTracking) = 0;
  *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_ignoreAnimationForVolumeEvents) = 0;
  v5 = OBJC_IVAR____TtC5Music12VolumeSlider_elapsedTrackColor;
  v6 = objc_opt_self();
  *(v1 + v5) = [v6 whiteColor];
  v7 = OBJC_IVAR____TtC5Music12VolumeSlider_remainingTrackColor;
  *(v1 + v7) = [v6 systemFillColor];
  v8 = OBJC_IVAR____TtC5Music12VolumeSlider_trackingColor;
  v9 = UIColor.MusicTint.normal.unsafeMutableAddressor();
  v10 = *v9;
  *(v1 + v8) = *v9;
  v11 = OBJC_IVAR____TtC5Music12VolumeSlider_slider;
  v12 = objc_allocWithZone(UISlider);
  v13 = v10;
  v14 = [v12 init];
  v15 = UIView.forAutolayout.getter();

  *(v1 + v11) = v15;
  v16 = OBJC_IVAR____TtC5Music12VolumeSlider_trackLayoutGuide;
  *(v1 + v16) = [objc_allocWithZone(UILayoutGuide) init];
  *(v1 + OBJC_IVAR____TtC5Music12VolumeSlider_route) = 0;
  v17 = (v1 + OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler);
  *v17 = 0;
  v17[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1007280C4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music12VolumeSlider_isTracking;
  v0[OBJC_IVAR____TtC5Music12VolumeSlider_isTracking] = 1;
  v3 = *&v0[OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler + 8];

    v3(v5);
    sub_100020438(v3, v4);
    v6 = v1[v2];
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    if ((v6 & 1) == 0)
    {
      v8 = 0x4044000000000000;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v6 = 1;
  }

  v8 = 0x403A800000000000;
LABEL_6:
  v9 = *&v8;
  if (v6)
  {
    v10 = 288.0;
  }

  else
  {
    v10 = 500.0;
  }

  if (v6)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = 2.0;
  }

  v12 = objc_opt_self();
  v15[4] = sub_1007282A0;
  v15[5] = v7;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10002BC98;
  v15[3] = &unk_1010BCA78;
  v13 = _Block_copy(v15);
  v14 = v1;

  [v12 _animateUsingSpringWithDuration:2 delay:v13 options:0 mass:1.0 stiffness:0.0 damping:v11 initialVelocity:v10 animations:v9 completion:0.0];
  _Block_release(v13);
}

unint64_t sub_1007282A8()
{
  result = qword_1011A0468;
  if (!qword_1011A0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0468);
  }

  return result;
}

uint64_t type metadata accessor for VibrancyModifier(uint64_t a1)
{
  result = qword_1011A04D8;
  if (!qword_1011A04D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100728378(uint64_t a1)
{
  sub_1007283E4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1007283E4(uint64_t a1)
{
  if (!qword_1011878B0)
  {
    type metadata accessor for ColorScheme();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1011878B0);
    }
  }
}

uint64_t sub_100728458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = a1;
  v4 = type metadata accessor for EnvironmentValues();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin();
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118F250, &qword_100EC45B0);
  __chkstk_darwin();
  v8 = &v29 - v7;
  v9 = type metadata accessor for ColorScheme();
  v32 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BlendMode();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v29 - v16;
  sub_1007288A4(v3, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v32;
    (*(v32 + 32))(v11, v8, v9);
    v19 = v18;
  }

  else
  {
    v20 = static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v30 + 8))(v6, v31);
    v19 = v32;
  }

  v22 = (*(v19 + 88))(v11, v9);
  if (v22 == enum case for ColorScheme.light(_:))
  {
    (*(v13 + 104))(v15, enum case for BlendMode.plusDarker(_:), v12);
  }

  else
  {
    v23 = *(v13 + 104);
    if (v22 == enum case for ColorScheme.dark(_:))
    {
      v23(v15, enum case for BlendMode.plusLighter(_:), v12);
    }

    else
    {
      v23(v15, enum case for BlendMode.normal(_:), v12);
      (*(v19 + 8))(v11, v9);
    }
  }

  v24 = *(v13 + 32);
  v24(v17, v15, v12);
  v25 = sub_10010FC20(&qword_1011A0510, &qword_100EDF8F0);
  v26 = v33;
  v24((v33 + *(v25 + 36)), v17, v12);
  v27 = sub_10010FC20(&qword_1011A0518, &qword_100EDF8F8);
  return (*(*(v27 - 8) + 16))(v26, v34, v27);
}

uint64_t sub_1007288A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118F250, &qword_100EC45B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100728914()
{
  result = qword_1011A0520;
  if (!qword_1011A0520)
  {
    sub_1001109D0(&qword_1011A0510, &qword_100EDF8F0);
    sub_1007289A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0520);
  }

  return result;
}

unint64_t sub_1007289A0()
{
  result = qword_1011A0528;
  if (!qword_1011A0528)
  {
    sub_1001109D0(&qword_1011A0518, &qword_100EDF8F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0528);
  }

  return result;
}

uint64_t sub_100728A30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004530DC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = &unk_100EDFA20;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_100030444(v4, v5);
}

uint64_t sub_100728AEC(uint64_t a1, unsigned __int8 *a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = *a2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10002F3F4;

  return v8(a1, v5);
}

double sub_100728BF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = &unk_100EE2BB0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  swift_getKeyPath();
  __chkstk_darwin();
  sub_100030444(v2, v3);
  sub_1004530DC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_100020438(v5, v4);

  return result;
}

uint64_t sub_100728D1C(uint64_t a1, char a2, int *a3)
{
  *(v3 + 24) = a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10002F3F4;

  return v7(a1, v3 + 24);
}

double sub_100728E24@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004530DC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);

  return result;
}

__n128 sub_100728ECC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004530DC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 40);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(v3 + 72);
  result = *(v3 + 81);
  *(a2 + 41) = result;
  return result;
}

double sub_100728F58(__int128 *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  return sub_100452A3C(v3);
}

void sub_100728FA0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1004530DC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(a1 + 32);

  v5 = static Edge.Set.horizontal.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(a1 + 66) << 16;
  v7 = 0uLL;
  v8 = 0uLL;
  if (v6 != 0x20000)
  {
    EdgeInsets.init(_all:)();
    *(&v7 + 1) = v9;
    *(&v8 + 1) = v10;
  }

  *a2 = v4;
  *(a2 + 8) = sub_100729A48;
  *(a2 + 16) = a1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v6 == 0x20000;
}

double sub_1007290C8(char a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  *(v8 + 32) = a2;
  *(v8 + 40) = a1;
  sub_1001F4CB8(0, 0, v5, &unk_100EDF9E0, v8);

  return result;
}

uint64_t sub_1007291F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 272) = a5;
  *(v5 + 144) = a4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *(v5 + 152) = swift_task_alloc();
  sub_10010FC20(&qword_1011848A0, &unk_100EC64F0);
  *(v5 + 160) = swift_task_alloc();
  v6 = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v5 + 168) = v6;
  v7 = *(v6 - 8);
  *(v5 + 176) = v7;
  *(v5 + 184) = *(v7 + 64);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = type metadata accessor for MainActor();
  *(v5 + 224) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 232) = v9;
  *(v5 + 240) = v8;

  return _swift_task_switch(sub_100729380, v9, v8);
}

uint64_t sub_100729380()
{
  v1 = *(v0 + 144);
  swift_getKeyPath();
  *(v0 + 136) = v1;
  sub_1004530DC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 16);
  *(v0 + 248) = v2;
  if (v2)
  {
    *(v0 + 256) = *(*(v0 + 144) + 24);

    v11 = (v2 + *v2);
    v3 = swift_task_alloc();
    *(v0 + 264) = v3;
    *v3 = v0;
    v3[1] = sub_100729584;
    v4 = *(v0 + 160);
    v5 = *(v0 + 272);

    return v11(v4, v5);
  }

  else
  {
    v7 = *(v0 + 168);
    v8 = *(v0 + 176);
    v9 = *(v0 + 160);

    (*(v8 + 56))(v9, 1, 1, v7);
    sub_10042EF7C(*(v0 + 160));

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100729584()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);

  sub_100020438(v3, v2);
  v4 = *(v1 + 240);
  v5 = *(v1 + 232);

  return _swift_task_switch(sub_1007296E0, v5, v4);
}

uint64_t sub_1007296E0()
{
  v33 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10042EF7C(*(v0 + 160));
  }

  else
  {
    v4 = *(v0 + 272);
    sub_1001DFD58(*(v0 + 160), *(v0 + 208));
    _StringGuts.grow(_:)(16);

    strcpy(v32, "SearchHeader: ");
    HIBYTE(v32[1]) = -18;
    v5 = "PlayIntentButton.sing";
    v6 = 0xD000000000000018;
    if (v4 != 1)
    {
      v6 = 0xD000000000000015;
      v5 = "Header.PlaybackControls: ";
    }

    if (v4)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (v4)
    {
      v8 = v5;
    }

    else
    {
      v8 = "PlayIntentButton.shuffle";
    }

    v9 = *(v0 + 208);
    v10 = *(v0 + 168);
    v11 = v8 | 0x8000000000000000;
    String.append(_:)(*&v7);

    v13 = v32[0];
    v12 = v32[1];
    v14 = v9 + *(v10 + 32);
    if (*(v14 + 24))
    {
      sub_100008FE4(v14, v0 + 56);
      v16 = *(v0 + 80);
      v15 = *(v0 + 88);
      sub_10000954C((v0 + 56), v16);
      *(v0 + 120) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 128) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 96) = v13;
      *(v0 + 104) = v12;

      v17 = Player.CommandIssuer.appending(_:)(v0 + 96, v16, v15);
      v19 = v18;
      sub_10000959C((v0 + 96));
      sub_10000959C((v0 + 56));
      *(v0 + 40) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 48) = &protocol witness table for Player.CommandIssuerIdentity;
      if (v19)
      {

        v13 = v17;
        v12 = v19;
      }
    }

    else
    {
      *(v0 + 40) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 48) = &protocol witness table for Player.CommandIssuerIdentity;
    }

    v20 = *(v0 + 208);
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v23 = *(v0 + 176);
    v24 = *(v0 + 152);
    *(v0 + 16) = v13;
    *(v0 + 24) = v12;
    v25 = *(v0 + 272);
    sub_1003F8500(v0 + 16, v14);
    PlaybackIntentDescriptor.configure(for:)(v25);
    sub_1001DFCE4(v20, v21);
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
    sub_1001DFCE4(v21, v22);
    v27 = static MainActor.shared.getter();
    v28 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = &protocol witness table for MainActor;
    sub_1001DFD58(v22, v29 + v28);
    sub_1001F4F78(0, 0, v24, &unk_100ECA700, v29);

    sub_100188CDC(v21);
    sub_100188CDC(v20);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_100729A50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1007291F4(a1, v4, v5, v6, v7);
}

uint64_t sub_100729B34(uint64_t a1, unsigned __int8 *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return sub_100728AEC(a1, a2, v6);
}

uint64_t sub_100729BFC()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 connectedScenes];
  sub_100062364();
  sub_100061F5C();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v3);
  v5 = v4;

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_14:

    goto LABEL_15;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = sub_1007E90D4(0, v5);
    goto LABEL_6;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_6:
    v8 = v7;

    v9 = [v8 delegate];

    if (v9 && (v18 = v9, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v20 + 1))
      {
        v10 = *(*sub_10000954C(&v19, *(&v20 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

        sub_10000959C(&v19);
        if (v10)
        {
          return v10;
        }

LABEL_15:
        if (qword_10117F6D0 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        sub_1000060E4(v11, qword_101218C28);
        v12 = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v12, v10))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v18 = v14;
          *&v19 = ObjectType;
          *v13 = 136315138;
          swift_getMetatypeMetadata();
          v15 = String.init<A>(describing:)();
          v17 = sub_1000105AC(v15, v16, &v18);

          *(v13 + 4) = v17;
          _os_log_impl(&_mh_execute_header, v12, v10, "%s cannot obtain AppInterfaceContext", v13, 0xCu);
          sub_10000959C(v14);
        }

        sub_100729F5C();
        swift_allocError();
        swift_willThrow();
        return v10;
      }
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }

    sub_10069180C(&v19);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t sub_100729F5C()
{
  result = qword_1011A0538;
  if (!qword_1011A0538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0538);
  }

  return result;
}

unint64_t sub_100729FC4()
{
  result = qword_1011A0540;
  if (!qword_1011A0540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0540);
  }

  return result;
}

double sub_10072A018(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  ObjectType = swift_getObjectType();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v5 = &ObjectType - v4;
  v6 = sub_10010FC20(&qword_1011A0580, &qword_100EDFB40);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &ObjectType - v8;
  sub_10010FC20(&qword_1011A0588, &qword_100EDFB48);
  v10 = swift_allocBox();
  v12 = v11;
  v13 = sub_10010FC20(&qword_1011A0590, &qword_100EDFB50);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_10010FC20(&qword_1011A0598, &qword_100EDFB58);
  v14 = swift_allocBox();
  v27 = v12;
  (*(v7 + 104))(v9, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v6);
  AsyncStream.init(_:bufferingPolicy:_:)();
  v15 = [objc_opt_self() defaultCenter];
  v16 = MPCJinglePlayActivityReportingControllerDidFlushEventsNotification;
  aBlock[4] = sub_10072B360;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10072A6A4;
  aBlock[3] = &unk_1010BCC20;
  v17 = _Block_copy(aBlock);

  v18 = [v15 addObserverForName:v16 object:0 queue:0 usingBlock:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();

  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v2;
  v20[5] = v10;
  v21 = ObjectType;
  v22 = v26;
  v20[6] = v14;
  v20[7] = v22;
  v20[8] = a2;
  v20[9] = v21;

  v23 = v2;

  sub_1001F4CB8(0, 0, v5, &unk_100EDFB68, v20);

  return result;
}

uint64_t sub_10072A3D8(uint64_t a1, uint64_t a2)
{
  sub_1000095E8(a2, &qword_1011A0588, &qword_100EDFB48);
  v4 = sub_10010FC20(&qword_1011A0590, &qword_100EDFB50);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_10072A4B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_10010FC20(&qword_1011A0590, &qword_100EDFB50);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - v4;
  sub_10010FC20(&qword_1011A05B8, &qword_100EDFB88);
  __chkstk_darwin();
  v7 = &v12 - v6;
  v8 = swift_projectBox();
  swift_beginAccess();
  v9 = 1;
  if (!(*(v3 + 48))(v8, 1, v2))
  {
    (*(v3 + 16))(v5, v8, v2);
    AsyncStream.Continuation.yield<A>()();
    (*(v3 + 8))(v5, v2);
    v9 = 0;
  }

  v10 = sub_10010FC20(&qword_1011A05C0, &qword_100EDFB90);
  (*(*(v10 - 8) + 56))(v7, v9, 1, v10);
  return sub_1000095E8(v7, &qword_1011A05B8, &qword_100EDFB88);
}

uint64_t sub_10072A6A4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10072A798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a4;
  v8[7] = a5;
  v9 = sub_10010FC20(&qword_1011A0598, &qword_100EDFB58);
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v8[13] = sub_10010FC20(&qword_1011A05A0, &qword_100EDFB70);
  v8[14] = swift_task_alloc();
  v8[15] = sub_10010FC20(&qword_1011A05A8, &unk_100EDFB78);
  v8[16] = swift_task_alloc();
  type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  v8[17] = swift_task_alloc();
  v8[18] = swift_projectBox();

  return _swift_task_switch(sub_10072A920, 0, 0);
}

uint64_t sub_10072A920()
{
  v1 = *((swift_isaMask & **(v0[6] + OBJC_IVAR____TtC5Music22RecentlyPlayedObserver_pushObserver)) + 0x70);

  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_10072AA94;
  v3 = v0[17];
  v4 = v0[7];

  return v6(v3, 0xD000000000000016, 0x8000000100E560F0, sub_10072B454, v4);
}

uint64_t sub_10072AA94()
{
  v1 = *(*v0 + 136);

  sub_10072B45C(v1);

  return _swift_task_switch(sub_10072ABC8, 0, 0);
}

uint64_t sub_10072ABC8()
{
  v1 = v0[18];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  swift_beginAccess();
  (*(v4 + 16))(v3, v1, v5);
  static Duration.seconds(_:)();
  sub_10072B4B8();
  AsyncSequence._throttle(for:latest:)();
  (*(v4 + 8))(v3, v5);
  _AsyncThrottleSequence.makeAsyncIterator()();
  sub_1000095E8(v2, &qword_1011A05A0, &qword_100EDFB70);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_10072AD38;
  v7 = v0[15];

  return _AsyncThrottleSequence.Iterator.next()(v0 + 22, v7);
}

uint64_t sub_10072AD38()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_10072AFA4;
  }

  else
  {
    *(v2 + 177) = *(v2 + 176);
    v3 = sub_10072AE54;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10072AE70()
{
  if (*(v0 + 177) == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A05A8, &unk_100EDFB78);

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    (*(v0 + 64))();
    v3 = swift_task_alloc();
    *(v0 + 160) = v3;
    *v3 = v0;
    v3[1] = sub_10072AD38;
    v4 = *(v0 + 120);

    return _AsyncThrottleSequence.Iterator.next()(v0 + 176, v4);
  }
}

uint64_t sub_10072AFA4()
{
  *(v0 + 40) = *(v0 + 168);
  sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10072B030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10010FC20(&qword_1011A0590, &qword_100EDFB50);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - v6;
  sub_10010FC20(&qword_1011A05B8, &qword_100EDFB88);
  __chkstk_darwin();
  v9 = &v14 - v8;
  v10 = swift_projectBox();
  swift_beginAccess();
  v11 = 1;
  if (!(*(v5 + 48))(v10, 1, v4))
  {
    (*(v5 + 16))(v7, v10, v4);
    AsyncStream.Continuation.yield<A>()();
    (*(v5 + 8))(v7, v4);
    v11 = 0;
  }

  v12 = sub_10010FC20(&qword_1011A05C0, &qword_100EDFB90);
  (*(*(v12 - 8) + 56))(v9, v11, 1, v12);
  return sub_1000095E8(v9, &qword_1011A05B8, &qword_100EDFB88);
}

uint64_t sub_10072B368(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002F3F4;

  return sub_10072A798(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10072B45C(uint64_t a1)
{
  v2 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10072B4B8()
{
  result = qword_1011A05B0;
  if (!qword_1011A05B0)
  {
    sub_1001109D0(&qword_1011A0598, &qword_100EDFB58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A05B0);
  }

  return result;
}

double sub_10072B51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v27 = a2;
  v8 = type metadata accessor for URL();
  v26 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v13 = &v24 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v9 + 16))(v11, a1, v8);
  type metadata accessor for MainActor();

  v15 = a5;
  sub_100030444(a4, a5);
  v16 = static MainActor.shared.getter();
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = &protocol witness table for MainActor;
  (*(v9 + 32))(v19 + v17, v11, v26);
  v20 = (v19 + v18);
  v21 = v25;
  *v20 = v27;
  v20[1] = v21;
  v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = a4;
  v22[1] = v15;
  sub_1001F4CB8(0, 0, v13, &unk_100EDFBA0, v19);

  return result;
}

uint64_t sub_10072B770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[34] = a7;
  v8[35] = a8;
  v8[32] = a5;
  v8[33] = a6;
  v8[31] = a4;
  v9 = type metadata accessor for Logger();
  v8[36] = v9;
  v8[37] = *(v9 - 8);
  v8[38] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[39] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[40] = v11;
  v8[41] = v10;

  return _swift_task_switch(sub_10072B86C, v11, v10);
}

uint64_t sub_10072B86C()
{
  (*(v0 + 256))();
  if (*(v0 + 144) == 1)
  {
    sub_10072C178(v0 + 80);
    Strong = 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10012BA6C(v0 + 80);
  }

  *(v0 + 336) = Strong;
  v2 = swift_task_alloc();
  *(v0 + 344) = v2;
  *v2 = v0;
  v2[1] = sub_10072B948;
  v3 = *(v0 + 248);

  return static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)(v3, Strong);
}

uint64_t sub_10072B948()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_10072BAE4;
  }

  else
  {

    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_10072BA64;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10072BA64()
{
  v1 = v0[34];

  if (v1)
  {
    (v0[34])(v0[31]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_10072BAE4()
{
  v28 = v0;
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);

  v4 = Logger.classicalBridge.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 352);
    v9 = *(v0 + 296);
    v8 = *(v0 + 304);
    v10 = *(v0 + 288);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136446210;
    *(v0 + 240) = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v27);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to open in Apple Classical with error=%{public}s. Opening URL instead.", v11, 0xCu);
    sub_10000959C(v12);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v17 = *(v0 + 296);
    v16 = *(v0 + 304);
    v18 = *(v0 + 288);

    (*(v17 + 8))(v16, v18);
  }

  v19 = [objc_opt_self() sharedApplication];
  *(v0 + 360) = v19;
  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  *(v0 + 368) = v21;
  sub_10010CD7C(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_10072C1E0();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 376) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 384;
  *(v0 + 24) = sub_10072BE18;
  v24 = swift_continuation_init();
  *(v0 + 232) = sub_10010FC20(&qword_1011A05C8, &qword_100EDFBA8);
  *(v0 + 176) = _NSConcreteStackBlock;
  *(v0 + 184) = 1107296256;
  *(v0 + 192) = sub_10072BFC8;
  *(v0 + 200) = &unk_1010BCC98;
  *(v0 + 208) = v24;
  [v19 openURL:v22 options:isa completionHandler:v0 + 176];

  return _swift_continuation_await(v0 + 16, v25);
}

uint64_t sub_10072BE18()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);

  return _swift_task_switch(sub_10072BF20, v2, v1);
}

uint64_t sub_10072BF20()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  v4 = v0[34];

  if (v4)
  {
    (v0[34])(v0[31]);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_10072BFC8(uint64_t a1, char a2)
{
  **(*(*sub_10000954C((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t sub_10072C024(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10002F3F4;

  return sub_10072B770(a1, v9, v10, v1 + v6, v12, v13, v14, v15);
}

uint64_t sub_10072C178(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011845E0, &unk_100EBF3A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10072C1E0()
{
  result = qword_10118A3E0;
  if (!qword_10118A3E0)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118A3E0);
  }

  return result;
}

uint64_t _s12AddMusicCellVMa(uint64_t a1)
{
  result = qword_1011A0628;
  if (!qword_1011A0628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10072C2AC(uint64_t a1)
{
  sub_100117C38(319);
  if (v1 <= 0x3F)
  {
    sub_100237820(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10072C35C@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v65 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v64 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for AccessibilityTraits();
  v62 = *(v63 - 8);
  __chkstk_darwin();
  v61 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for AccessibilityChildBehavior();
  v58 = *(v59 - 8);
  __chkstk_darwin();
  v57 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v49 - v10;
  sub_10010FC20(&qword_1011A0668, &qword_100EDFC10);
  __chkstk_darwin();
  v13 = &v49 - v12;
  v49 = sub_10010FC20(&qword_1011A0670, &qword_100EDFC18);
  __chkstk_darwin();
  v15 = &v49 - v14;
  v50 = sub_10010FC20(&qword_1011A0678, &qword_100EDFC20);
  __chkstk_darwin();
  v17 = &v49 - v16;
  v52 = sub_10010FC20(&qword_1011A0680, &qword_100EDFC28);
  __chkstk_darwin();
  v19 = &v49 - v18;
  v54 = sub_10010FC20(&qword_1011A0688, &qword_100EDFC30);
  v53 = *(v54 - 8);
  __chkstk_darwin();
  v51 = &v49 - v20;
  v55 = sub_10010FC20(&qword_1011A0690, &qword_100EDFC38);
  __chkstk_darwin();
  v56 = &v49 - v21;
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v22 = sub_10010FC20(&qword_1011A0698, &qword_100EDFC40);
  sub_10072CCE0(v1, &v13[*(v22 + 44)]);
  _s12AddMusicCellVMa(0);
  v60 = v1;
  sub_10056CABC(v11);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 == 1)
  {
    (*(v7 + 8))(v11, v6);
  }

  else
  {
    (*(v7 + 104))(v9, enum case for DynamicTypeSize.accessibility3(_:), v6);
    static DynamicTypeSize.< infix(_:_:)();
    v23 = *(v7 + 8);
    v23(v9, v6);
    DynamicTypeSize.isAccessibilitySize.getter();
    v23(v11, v6);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10003D17C(v13, v15, &qword_1011A0668, &qword_100EDFC10);
  v24 = &v15[*(v49 + 36)];
  v25 = v70;
  *v24 = v69;
  *(v24 + 1) = v25;
  *(v24 + 2) = v71;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v15, v17, &qword_1011A0670, &qword_100EDFC18);
  v26 = &v17[*(v50 + 36)];
  v27 = v77;
  *(v26 + 4) = v76;
  *(v26 + 5) = v27;
  *(v26 + 6) = v78;
  v28 = v73;
  *v26 = v72;
  *(v26 + 1) = v28;
  v29 = v75;
  *(v26 + 2) = v74;
  *(v26 + 3) = v29;
  v30 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_10003D17C(v17, v19, &qword_1011A0678, &qword_100EDFC20);
  v39 = v52;
  v40 = &v19[*(v52 + 36)];
  *v40 = v30;
  *(v40 + 1) = v32;
  *(v40 + 2) = v34;
  *(v40 + 3) = v36;
  *(v40 + 4) = v38;
  v40[40] = 0;
  v41 = v57;
  static AccessibilityChildBehavior.combine.getter();
  v42 = sub_10072DF08();
  v43 = v51;
  View.accessibilityElement(children:)();
  (*(v58 + 8))(v41, v59);
  sub_1000095E8(v19, &qword_1011A0680, &qword_100EDFC28);
  v44 = v61;
  static AccessibilityTraits.isButton.getter();
  v67 = v39;
  v68 = v42;
  swift_getOpaqueTypeConformance2();
  v45 = v56;
  v46 = v54;
  View.accessibilityAddTraits(_:)();
  (*(v62 + 8))(v44, v63);
  (*(v53 + 8))(v43, v46);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v67 = String.init(localized:table:bundle:locale:comment:)();
  v68 = v47;
  sub_100009838();
  ModifiedContent<>.accessibilityLabel<A>(_:)();

  return sub_1000095E8(v45, &qword_1011A0690, &qword_100EDFC38);
}

uint64_t sub_10072CCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a1;
  v136 = a2;
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v135 = (&v112 - v2);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v132 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v131 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for DynamicTypeSize();
  v139 = *(v128 - 8);
  __chkstk_darwin();
  v6 = (&v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v129 = &v112 - v7;
  __chkstk_darwin();
  v130 = &v112 - v8;
  __chkstk_darwin();
  v123 = (&v112 - v9);
  __chkstk_darwin();
  v115 = &v112 - v10;
  __chkstk_darwin();
  v113 = (&v112 - v11);
  v12 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin();
  v14 = (&v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_10010FC20(&qword_10118E408, &unk_100ED5300);
  __chkstk_darwin();
  v17 = &v112 - v16;
  v18 = sub_10010FC20(&qword_1011A06C0, &qword_100EDFC48);
  v137 = *(v18 - 8);
  __chkstk_darwin();
  v20 = &v112 - v19;
  v118 = sub_10010FC20(&qword_1011A06C8, &qword_100EDFC50);
  v117 = *(v118 - 8);
  __chkstk_darwin();
  v138 = &v112 - v21;
  v116 = sub_10010FC20(&qword_1011A06D0, &qword_100EDFC58);
  __chkstk_darwin();
  v119 = &v112 - v22;
  v124 = sub_10010FC20(&qword_1011A06D8, &qword_100EDFC60);
  __chkstk_darwin();
  v126 = &v112 - v23;
  v127 = sub_10010FC20(&qword_1011A06E0, &qword_100EDFC68);
  v125 = *(v127 - 8);
  __chkstk_darwin();
  v122 = &v112 - v24;
  v121 = sub_10010FC20(&qword_1011A06E8, &qword_100EDFC70);
  __chkstk_darwin();
  v133 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v120 = &v112 - v26;
  __chkstk_darwin();
  v140 = &v112 - v27;
  if (qword_10117FC80 != -1)
  {
    swift_once();
  }

  v28 = xmmword_1012194E0;
  v29 = byte_1012194F0;
  v134 = v6;
  if (byte_1012194F0)
  {
    v30 = Int.seconds.getter(5);
  }

  else
  {
    v30 = *&xmmword_1012194E0;
  }

  v31 = *(v12 + 20);
  v32 = enum case for RoundedCornerStyle.continuous(_:);
  v33 = type metadata accessor for RoundedCornerStyle();
  (*(*(v33 - 8) + 104))(v14 + v31, v32, v33);
  *v14 = v30;
  v14[1] = v30;
  if (qword_10117FC78 != -1)
  {
    swift_once();
  }

  v34 = qword_1012194D0;
  KeyPath = swift_getKeyPath();
  sub_10072E0D8(v14, v17);
  v36 = &v17[*(v15 + 36)];
  *v36 = KeyPath;
  v36[1] = v34;
  v37 = sub_100596AA8();

  View.corner(_:)(v28, *(&v28 + 1), v29, v15, v37);
  sub_1000095E8(v17, &qword_10118E408, &unk_100ED5300);
  v38 = Border.artwork.unsafeMutableAddressor();
  v39 = *v38;
  v40 = *(v38 + 1);
  v41 = *(v38 + 16);

  v146 = v15;
  v147 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.border(_:corner:)(v39, v41, v28, *(&v28 + 1), v29, v18, OpaqueTypeConformance2, v40);

  (*(v137 + 8))(v20, v18);
  v114 = _s12AddMusicCellVMa(0);
  v43 = *(v114 + 24);
  v44 = v113;
  sub_10056CABC(v113);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  v45 = v139;
  v137 = v43;
  if (byte_10119CDC0 == 1)
  {
    v51 = v139[1];
    v112 = (v139 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50 = v128;
    (v51)(v44, v128);
    v46 = v123;
    sub_10056CABC(v123);
    (v51)(v46, v50);
    LODWORD(v113) = enum case for DynamicTypeSize.accessibility3(_:);
    v49 = v115;
  }

  else
  {
    v47 = enum case for DynamicTypeSize.accessibility3(_:);
    v48 = v139[13];
    v49 = v115;
    v50 = v128;
    v48(v115, enum case for DynamicTypeSize.accessibility3(_:), v128);
    static DynamicTypeSize.< infix(_:_:)();
    v51 = v139[1];
    v112 = (v139 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v51)(v49, v50);
    (v51)(v44, v50);
    v52 = v123;
    sub_10056CABC(v123);
    LODWORD(v113) = v47;
    v48(v49, v47, v50);
    v45 = v139;
    static DynamicTypeSize.< infix(_:_:)();
    (v51)(v49, v50);
    (v51)(v52, v50);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v53 = v119;
  (*(v117 + 32))(v119, v138, v118);
  v54 = (v53 + *(v116 + 36));
  v55 = v163;
  *v54 = v162;
  v54[1] = v55;
  v54[2] = v164;
  v56 = static Alignment.center.getter();
  v58 = v57;
  v59 = v126;
  v60 = &v126[*(v124 + 36)];
  sub_10072DD6C();
  v61 = &v60[*(sub_10010FC20(&qword_1011A06F0, &qword_100EDFCA8) + 36)];
  *v61 = v56;
  v61[1] = v58;
  sub_10003D17C(v53, v59, &qword_1011A06D0, &qword_100EDFC58);
  sub_10056CABC(v49);
  v62 = v45[13];
  v63 = v129;
  v64 = v113;
  v62(v129, v113, v50);
  LOBYTE(v56) = static DynamicTypeSize.< infix(_:_:)();
  (v51)(v63, v50);
  (v51)(v49, v50);
  if (v56)
  {
    v65 = enum case for DynamicTypeSize.large(_:);
  }

  else
  {
    v65 = v64;
  }

  v66 = v130;
  v62(v130, v65, v50);
  sub_10072E13C();
  v67 = v122;
  View.dynamicTypeSize(_:)();
  v139 = v51;
  (v51)(v66, v50);
  sub_1000095E8(v59, &qword_1011A06D8, &qword_100EDFC60);
  v68 = static HorizontalAlignment.listRowSeparatorLeading.getter();
  v69 = v120;
  (*(v125 + 32))(v120, v67, v127);
  v70 = (v69 + *(v121 + 36));
  *v70 = v68;
  v70[1] = sub_10072DE6C;
  v70[2] = 0;
  sub_10003D17C(v69, v140, &qword_1011A06E8, &qword_100EDFC70);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v146 = String.init(localized:table:bundle:locale:comment:)();
  v147 = v71;
  sub_100009838();
  v72 = Text.init<A>(_:)();
  v74 = v73;
  v76 = v75;
  v138 = v77;
  v78 = *(v141 + 8);
  v79 = v135;
  sub_10056CAE4(v135);
  v80 = v134;
  sub_10056CABC(v134);
  if (sub_10068D124(v79, v80, v78))
  {
    static Font.callout.getter();
  }

  else
  {
    static Font.body.getter();
  }

  (v139)(v80, v50);
  sub_1000095E8(v79, &unk_101184290, &qword_100EC0E60);
  v81 = Text.font(_:)();
  v83 = v82;
  v85 = v84;

  sub_10011895C(v72, v74, v76 & 1);

  static Color.primary.getter();
  v86 = Text.foregroundColor(_:)();
  v88 = v87;
  v90 = v89;
  v92 = v91;

  sub_10011895C(v81, v83, v85 & 1);

  v93 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v161 = v90 & 1;
  v158 = 0;
  v102 = v140;
  v103 = v133;
  sub_1000A4CE0(v140, v133);
  v104 = v136;
  sub_1000A4CE0(v103, v136);
  v105 = sub_10010FC20(&qword_1011A0710, &qword_100EDFCB0);
  v106 = (v104 + *(v105 + 48));
  *&v142 = v86;
  *(&v142 + 1) = v88;
  LOBYTE(v143) = v90 & 1;
  *(&v143 + 1) = *v160;
  DWORD1(v143) = *&v160[3];
  *(&v143 + 1) = v92;
  LOBYTE(v144) = v93;
  *(&v144 + 1) = *v159;
  DWORD1(v144) = *&v159[3];
  *(&v144 + 1) = v95;
  *v145 = v97;
  *&v145[8] = v99;
  *&v145[16] = v101;
  v145[24] = 0;
  v107 = v142;
  v108 = v143;
  *(v106 + 57) = *&v145[9];
  v109 = *v145;
  v106[2] = v144;
  v106[3] = v109;
  *v106 = v107;
  v106[1] = v108;
  v110 = v104 + *(v105 + 64);
  *v110 = 0;
  *(v110 + 8) = 1;
  sub_10072E300(&v142, &v146);
  sub_1000095E8(v102, &qword_1011A06E8, &qword_100EDFC70);
  v146 = v86;
  v147 = v88;
  v148 = v90 & 1;
  *v149 = *v160;
  *&v149[3] = *&v160[3];
  v150 = v92;
  v151 = v93;
  *v152 = *v159;
  *&v152[3] = *&v159[3];
  v153 = v95;
  v154 = v97;
  v155 = v99;
  v156 = v101;
  v157 = 0;
  sub_1000095E8(&v146, &qword_10117FF50, &qword_100ED7890);
  return sub_1000095E8(v103, &qword_1011A06E8, &qword_100EDFC70);
}

double sub_10072DD6C()
{
  Image.init(systemName:)();
  static Color.accentColor.getter();
  swift_getKeyPath();
  static Font.title3.getter();
  swift_getKeyPath();
  static Font.Weight.semibold.getter();
  sub_10010FC20(&qword_101196750, &qword_100EDBCC0);
  sub_1005963C0();
  View.fontWeight(_:)();

  return result;
}

double sub_10072DE6C(__n128 a1)
{
  static HorizontalAlignment.leading.getter();
  ViewDimensions.subscript.getter();
  return result;
}

uint64_t sub_10072DE94()
{
  v0 = [objc_opt_self() tertiarySystemFillColor];
  result = Color.init(_:)();
  qword_1012194D0 = result;
  return result;
}

__n128 sub_10072DED4(uint64_t a1)
{
  v1 = Corner.small.unsafeMutableAddressor();
  v2 = v1[1].n128_i8[0];
  result = *v1;
  xmmword_1012194E0 = *v1;
  byte_1012194F0 = v2;
  return result;
}

unint64_t sub_10072DF08()
{
  result = qword_1011A06A0;
  if (!qword_1011A06A0)
  {
    sub_1001109D0(&qword_1011A0680, &qword_100EDFC28);
    sub_10072DF94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A06A0);
  }

  return result;
}

unint64_t sub_10072DF94()
{
  result = qword_1011A06A8;
  if (!qword_1011A06A8)
  {
    sub_1001109D0(&qword_1011A0678, &qword_100EDFC20);
    sub_10072E020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A06A8);
  }

  return result;
}

unint64_t sub_10072E020()
{
  result = qword_1011A06B0;
  if (!qword_1011A06B0)
  {
    sub_1001109D0(&qword_1011A0670, &qword_100EDFC18);
    sub_100020674(&qword_1011A06B8, &qword_1011A0668, &qword_100EDFC10, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A06B0);
  }

  return result;
}

uint64_t sub_10072E0D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10072E13C()
{
  result = qword_1011A06F8;
  if (!qword_1011A06F8)
  {
    sub_1001109D0(&qword_1011A06D8, &qword_100EDFC60);
    sub_10072E1F4();
    sub_100020674(&qword_1011A0708, &qword_1011A06F0, &qword_100EDFCA8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A06F8);
  }

  return result;
}

unint64_t sub_10072E1F4()
{
  result = qword_1011A0700;
  if (!qword_1011A0700)
  {
    sub_1001109D0(&qword_1011A06D0, &qword_100EDFC58);
    sub_1001109D0(&qword_1011A06C0, &qword_100EDFC48);
    sub_1001109D0(&qword_10118E408, &unk_100ED5300);
    sub_100596AA8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0700);
  }

  return result;
}

uint64_t sub_10072E300(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10117FF50, &qword_100ED7890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10072E370()
{
  result = qword_1011A0718;
  if (!qword_1011A0718)
  {
    sub_1001109D0(&qword_1011A0690, &qword_100EDFC38);
    sub_1001109D0(&qword_1011A0680, &qword_100EDFC28);
    sub_10072DF08();
    swift_getOpaqueTypeConformance2();
    sub_10072E468(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0718);
  }

  return result;
}

uint64_t sub_10072E468(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10072E4B0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v9 = aBlock - v8;
  sub_1000089F8(a1, aBlock - v8, &qword_101183A20, &unk_100EBCF80);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v13 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v13 = v14;
    (*(v11 + 8))(v9, v10);
  }

  if (a2)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1005C3688;
    aBlock[3] = &unk_1010BCCC0;
    a2 = _Block_copy(aBlock);
  }

  [a4 openURL:v13 withCompletionHandler:a2];
  _Block_release(a2);
}

uint64_t sub_10072E678()
{
  v1[10] = v0;
  type metadata accessor for Locale();
  v1[11] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v1[12] = swift_task_alloc();
  v1[13] = type metadata accessor for StorySharingController.ShareData(0);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = type metadata accessor for MainActor();
  v1[17] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v3;
  v1[19] = v2;

  return _swift_task_switch(sub_10072E7A8, v3, v2);
}

uint64_t sub_10072E7A8(uint64_t a1)
{
  v2 = static MainActor.shared.getter();
  *(v1 + 160) = v2;
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

  return _swift_task_switch(sub_10072E83C, v3, v5);
}

uint64_t sub_10072E83C()
{
  v1 = v0 + 2;
  v2 = v0[14];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_10072E934;
  v4 = swift_continuation_init();
  v5 = *(v3 + OBJC_IVAR____TtC5Music22StorySharingController_shareDataBuilder);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v5(sub_100730B9C, v6);

  return _swift_continuation_await(v1, v7);
}

uint64_t sub_10072E934(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 168) = v3;
  if (v3)
  {
    swift_willThrow();

    v4 = v2[18];
    v5 = v2[19];
    v6 = sub_10072EC84;
  }

  else
  {
    v7 = v2[14];
    v8 = v2[15];

    sub_100730BA4(v7, v8);
    v4 = v2[18];
    v5 = v2[19];
    v6 = sub_10072EA8C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10072EA8C()
{
  v1 = (*(v0 + 80) + OBJC_IVAR____TtC5Music22StorySharingController_artworkSize);
  v2 = *v1;
  v3 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *v4 = v0;
  v4[1] = sub_10072EB40;

  return sub_1007300FC(v2, v3);
}

uint64_t sub_10072EB40(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v5 = *(v3 + 152);
  v6 = *(v3 + 144);
  if (v1)
  {
    v7 = sub_10072F278;
  }

  else
  {
    v7 = sub_10072EE9C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10072EC84()
{

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v1 = String._bridgeToObjectiveC()();

  v2 = [objc_opt_self() alertControllerWithTitle:0 message:v1 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() actionWithTitle:v3 style:1 handler:0];

  [v2 addAction:v4];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, 1, 1, 0, 0);
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10072EE9C()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC5Music22StorySharingController_renderer;
  v0[25] = OBJC_IVAR____TtC5Music22StorySharingController_renderer;
  v3 = (v1 + v2);
  v0[26] = *v3;
  v4 = v3[1];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 24);
  swift_unknownObjectRetain();
  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[27] = v7;
  *v7 = v0;
  v7[1] = sub_10072EFF4;
  v8 = v0[23];

  return v10(v8, ObjectType, v4);
}

uint64_t sub_10072EFF4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  swift_unknownObjectRelease();
  if (v1)
  {
    v5 = v4[18];
    v6 = v4[19];
    v7 = sub_10072F49C;
  }

  else
  {
    v4[29] = a1;
    v5 = v4[18];
    v6 = v4[19];
    v7 = sub_10072F138;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10072F138()
{
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[15];
  v12 = v0[13];
  v5 = v0[10];

  v6 = *(v5 + v2 + 8);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 32);
  swift_unknownObjectRetain();
  v9 = v8(v3, ObjectType, v6);
  swift_unknownObjectRelease();
  sub_10072F8F4(v1, v9, v4, v4 + *(v12 + 20));

  sub_100730C08(v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10072F278()
{
  v1 = *(v0 + 120);

  sub_100730C08(v1);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();

  v3 = [objc_opt_self() alertControllerWithTitle:0 message:v2 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() actionWithTitle:v4 style:1 handler:0];

  [v3 addAction:v5];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v3, 1, 1, 0, 0);
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10072F49C()
{
  v1 = v0[23];
  v2 = v0[15];

  sub_100730C08(v2);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() alertControllerWithTitle:0 message:v3 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() actionWithTitle:v5 style:1 handler:0];

  [v4 addAction:v6];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v4, 1, 1, 0, 0);
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10072F6C8(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_101194C20, &unk_100ED2940);
  __chkstk_darwin();
  v5 = &v15 - v4;
  v6 = type metadata accessor for StorySharingController.ShareData(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v15 - v10;
  sub_1000089F8(a1, v5, &qword_101194C20, &unk_100ED2940);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000095E8(v5, &qword_101194C20, &unk_100ED2940);
    sub_100730C64();
    v12 = swift_allocError();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    swift_allocError();
    *v13 = v12;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_100730BA4(v5, v11);
    sub_100730CB8(v11, v9);
    sub_100730BA4(v9, *(*(a2 + 64) + 40));
    swift_continuation_throwingResume();
    return sub_100730C08(v11);
  }
}

uint64_t sub_10072F8F4(UIImage *a1, UIImage *a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  *&v73 = a3;
  v66 = a2;
  v65 = a1;
  v5 = 0xD000000000000026;
  v69 = type metadata accessor for Date();
  v68 = *(v69 - 8);
  __chkstk_darwin();
  v67 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v71 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v63 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v63 - v14;
  v72 = v4;
  v16 = *(v4 + 16);
  v17 = sub_10044B4CC(*(v4 + 16));
  v74 = v11;
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_8;
    }

    v18 = "redSticker.backgroundVideo";
  }

  else if (v16)
  {
    v5 = 0xD000000000000025;
    v18 = "aredSticker.contentURL";
  }

  else
  {
    v18 = "ativekit.attachmentURL";
  }

  v19 = URL.absoluteString.getter();
  v78 = &type metadata for String;
  *&v77 = v19;
  *(&v77 + 1) = v20;
  sub_100016270(&v77, v76);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v17;
  sub_1006C5E68(v76, v5, v18 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);

  v11 = v74;
  v17 = v75;
LABEL_8:
  if (sub_10044C064(v16))
  {
    sub_1000089F8(v64, v9, &qword_101183A20, &unk_100EBCF80);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1000095E8(v9, &qword_101183A20, &unk_100EBCF80);
    }

    else
    {
      (*(v11 + 32))(v15, v9, v10);
      if ((v16 - 1) > 2)
      {
        v22 = URL.absoluteString.getter();
        v78 = &type metadata for String;
        *&v77 = v22;
        *(&v77 + 1) = v23;
        sub_100016270(&v77, v76);
        v24 = swift_isUniquelyReferenced_nonNull_native();
        v75 = v17;
        sub_1006C5E68(v76, 0xD000000000000026, 0x8000000100E561B0, v24);
        (*(v11 + 8))(v15, v10);
        v17 = v75;
      }

      else
      {
        (*(v11 + 8))(v15, v10);
      }
    }
  }

  v25 = UIImagePNGRepresentation(v65);
  if (v25)
  {
    v26 = v25;
    v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = sub_10044BA2C(v16);
    v32 = v31;
    v78 = &type metadata for Data;
    *&v77 = v27;
    *(&v77 + 1) = v29;
    sub_100016270(&v77, v76);
    sub_10002BC44(v27, v29);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v75 = v17;
    sub_1006C5E68(v76, v30, v32, v33);
    sub_10002C064(v27, v29);

    v17 = v75;
  }

  v34 = UIImagePNGRepresentation(v66);
  v70 = v10;
  if (v34)
  {
    v35 = v34;
    v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = sub_10044BAA0(v16);
    v41 = v40;
    v78 = &type metadata for Data;
    *&v77 = v36;
    *(&v77 + 1) = v38;
    sub_100016270(&v77, v76);
    sub_10002BC44(v36, v38);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v75 = v17;
    sub_1006C5E68(v76, v39, v41, v42);
    sub_10002C064(v36, v38);

    v17 = v75;
  }

  v43 = v72;
  v44 = *(v72 + OBJC_IVAR____TtC5Music22StorySharingController_renderer + 8);
  ObjectType = swift_getObjectType();
  v46 = *(v44 + 16);
  swift_unknownObjectRetain();
  v47 = v46(ObjectType, v44);
  v49 = v48;
  swift_unknownObjectRelease();
  sub_10044C294(v73, v47, v49, v16, v13);

  v50 = [objc_opt_self() generalPasteboard];
  sub_10010FC20(&unk_1011927C0, &unk_100ED6A50);
  v51 = swift_allocObject();
  v73 = xmmword_100EBC6B0;
  *(v51 + 16) = xmmword_100EBC6B0;
  *(v51 + 32) = v17;
  sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_10010FC20(&qword_101197BD8, &unk_100ED6A60);
  inited = swift_initStackObject();
  *(inited + 16) = v73;
  *(inited + 32) = UIPasteboardOptionExpirationDate;
  v54 = UIPasteboardOptionExpirationDate;
  v55 = v67;
  Date.init()();
  v56 = v69;
  *(inited + 64) = v69;
  sub_10001C8B8((inited + 40));
  Date.addingTimeInterval(_:)();
  (*(v68 + 8))(v55, v56);
  sub_10010D62C(inited);
  swift_setDeallocating();
  sub_1000095E8(inited + 32, &unk_101180460, &qword_100EDFDA0);
  type metadata accessor for OptionsKey(0);
  sub_100730B44();
  v57 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v50 setItems:isa options:v57];

  v58 = *(v43 + OBJC_IVAR____TtC5Music22StorySharingController_openURL);
  v59 = v74;
  v60 = v71;
  v61 = v70;
  (*(v74 + 16))(v71, v13, v70);
  (*(v59 + 56))(v60, 0, 1, v61);

  v58(v60, 0, 0);

  sub_1000095E8(v60, &qword_101183A20, &unk_100EBCF80);
  return (*(v59 + 8))(v13, v61);
}

uint64_t sub_1007300FC(double a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_10010FC20(&unk_101195200, &qword_100EBFA50);
  *(v3 + 40) = swift_task_alloc();
  sub_10010FC20(&unk_101184060, &qword_100EBDF50);
  *(v3 + 48) = swift_task_alloc();
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  *(v3 + 56) = swift_task_alloc();
  v4 = type metadata accessor for Artwork();
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100730268, 0, 0);
}

uint64_t sub_100730268()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_1000089F8(v0[4] + OBJC_IVAR____TtC5Music22StorySharingController_artwork, v3, &unk_101188920, &qword_100EBCC50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(v0[7], &unk_101188920, &qword_100EBCC50);
    sub_100730AF0();
    swift_allocError();
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[5];
    v6 = v0[6];
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v8 = [objc_opt_self() currentTraitCollection];
    [v8 displayScale];
    v10 = v9;

    v11 = type metadata accessor for Artwork.CropStyle();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = type metadata accessor for Artwork.ImageFormat();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = swift_task_alloc();
    v0[11] = v13;
    *v13 = v0;
    v13[1] = sub_1007304F4;
    v15 = v0[5];
    v16 = v0[6];
    v17.n128_u64[0] = v0[2];
    v18.n128_u64[0] = v0[3];

    v14.n128_f64[0] = 1.0 / v10;
    return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v16, v15, 0, 0, v17, v18, v14);
  }
}

uint64_t sub_1007304F4(uint64_t a1)
{
  v4 = *v2;
  v4[12] = v1;

  v5 = v4[6];
  v6 = v4[5];
  if (v1)
  {
    sub_1000095E8(v6, &unk_101195200, &qword_100EBFA50);
    sub_1000095E8(v5, &unk_101184060, &qword_100EBDF50);
    v7 = sub_100730748;
  }

  else
  {
    v4[13] = a1;
    sub_1000095E8(v6, &unk_101195200, &qword_100EBFA50);
    sub_1000095E8(v5, &unk_101184060, &qword_100EBDF50);
    v7 = sub_1007306A0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1007306A0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];
  v2 = v0[13];

  return v1(v2);
}

uint64_t sub_100730748()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1007307EC()
{
  sub_1000095E8(v0 + OBJC_IVAR____TtC5Music22StorySharingController_artwork, &unk_101188920, &qword_100EBCC50);
  sub_10012BA6C(v0 + OBJC_IVAR____TtC5Music22StorySharingController_presentationSource);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1007308D0(uint64_t a1)
{
  sub_100730A9C(319, &qword_1011A4570, &type metadata accessor for Artwork);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1007309FC(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_100730A9C(319, &qword_1011814C0, &type metadata accessor for URL);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100730A9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_100730AF0()
{
  result = qword_1011A0900;
  if (!qword_1011A0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0900);
  }

  return result;
}

unint64_t sub_100730B44()
{
  result = qword_1011808E8;
  if (!qword_1011808E8)
  {
    type metadata accessor for OptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011808E8);
  }

  return result;
}

uint64_t sub_100730BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorySharingController.ShareData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100730C08(uint64_t a1)
{
  v2 = type metadata accessor for StorySharingController.ShareData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100730C64()
{
  result = qword_1011A0908;
  if (!qword_1011A0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0908);
  }

  return result;
}

uint64_t sub_100730CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorySharingController.ShareData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100730D40()
{
  result = qword_1011A0910;
  if (!qword_1011A0910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0910);
  }

  return result;
}

unint64_t sub_100730D98()
{
  result = qword_1011A0918;
  if (!qword_1011A0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0918);
  }

  return result;
}

uint64_t type metadata accessor for Uber(uint64_t a1)
{
  result = qword_1011A0980;
  if (!qword_1011A0980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100730E7C(uint64_t a1)
{
  _s13ConfigurationCMa_0(319);
  if (v1 <= 0x3F)
  {
    sub_100730F78(319, &unk_1011954D0, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100730F78(319, &unk_1011A0990, &type metadata accessor for MotionViewStateObserver, &type metadata accessor for LazyState);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100730F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100731068@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *a3;
  swift_beginAccess();
  return sub_1000089F8(v10 + v11, a6, a4, a5);
}

uint64_t sub_100731174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  sub_10010FC20(a5, a6);
  __chkstk_darwin();
  v12 = &v14 - v11;
  sub_1000089F8(a1, &v14 - v11, a5, a6);
  return a7(v12);
}

double sub_100731220@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + OBJC_IVAR____TtCV5Music4Uber13Configuration__frameHeight);
  *a2 = result;
  return result;
}

double sub_1007312F8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCV5Music4Uber13Configuration__accessibilityArtworkLabel + 8);
  *a2 = *(v3 + OBJC_IVAR____TtCV5Music4Uber13Configuration__accessibilityArtworkLabel);
  a2[1] = v4;

  return result;
}

double sub_1007313B0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_100731480@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkUsedChanged);
  v5 = *(v3 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkUsedChanged + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1004303F0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_100030444(v4, v5);
}

double sub_100731578(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_100733E3C;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  swift_getKeyPath();
  __chkstk_darwin();
  sub_100030444(v2, v3);
  sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_100020438(v5, v4);

  return result;
}

uint64_t sub_1007316D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v104 = a1;
  v3 = type metadata accessor for Uber(0);
  v98 = *(v3 - 8);
  __chkstk_darwin();
  v99 = v4;
  v100 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MotionViewStateObserver.State();
  v102 = *(v5 - 8);
  v103 = v5;
  __chkstk_darwin();
  v101 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessibilityTraits();
  v94 = *(v7 - 8);
  v95 = v7;
  __chkstk_darwin();
  v93 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for AccessibilityChildBehavior();
  v86 = *(v88 - 8);
  __chkstk_darwin();
  v81 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for LayoutDirection();
  v10 = *(v78 - 8);
  __chkstk_darwin();
  v77 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v71 - v12;
  v85 = sub_10010FC20(&qword_1011A09C8, &qword_100EDFF90);
  v82 = *(v85 - 8);
  __chkstk_darwin();
  v80 = &v71 - v14;
  v84 = sub_10010FC20(&qword_1011A09D0, &qword_100EDFF98);
  __chkstk_darwin();
  v87 = &v71 - v15;
  v92 = sub_10010FC20(&qword_1011A09D8, &qword_100EDFFA0);
  __chkstk_darwin();
  v91 = &v71 - v16;
  v96 = sub_10010FC20(&qword_1011A09E0, &qword_100EDFFA8);
  __chkstk_darwin();
  v97 = &v71 - v17;
  v18 = *v2;
  v79 = v3;
  v19 = v2 + *(v3 + 24);
  v83 = v18;

  v89 = sub_10010FC20(&qword_1011A0920, &qword_100EDFF28);
  v90 = v19;
  LazyState.wrappedValue.getter();
  v76 = v106[0];
  KeyPath = swift_getKeyPath();
  v20 = static Alignment.center.getter();
  v22 = v21;
  v23 = sub_1007321F8();
  if (v23)
  {

    v24 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v33 = v24;
    v34 = 256;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v26 = 0;
    v28 = 0;
    v30 = 0;
    v32 = 0;
  }

  *&v114 = v23;
  *(&v114 + 1) = v34;
  *&v115 = v33;
  *(&v115 + 1) = v26;
  *&v116 = v28;
  *(&v116 + 1) = v30;
  *&v117 = v32;
  BYTE8(v117) = 0;
  *&v123[23] = v115;
  *&v123[39] = v116;
  *&v118 = v20;
  *(&v118 + 1) = v22;
  *&v123[55] = v117;
  *&v123[71] = v118;
  v124 = 0;
  *&v123[7] = v114;
  v119[0] = v23;
  v119[1] = v34;
  v119[2] = v33;
  v119[3] = v26;
  v119[4] = v28;
  v119[5] = v30;
  v119[6] = v32;
  v120 = 0;
  v121 = v20;
  v122 = v22;
  sub_1000089F8(&v114, v106, &qword_1011A09E8, &qword_100EDFFE0);
  sub_1000095E8(v119, &qword_1011A09E8, &qword_100EDFFE0);
  v74 = v124;
  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v35 = static Alignment.center.getter();
  v72 = v36;
  v73 = v35;
  v37 = sub_100732850();
  v38 = v13;
  sub_10056CF64(v13);
  v39 = v77;
  v40 = v78;
  (*(v10 + 104))(v77, enum case for LayoutDirection.rightToLeft(_:), v78);
  v41 = static LayoutDirection.== infix(_:_:)();
  v79 = v2;
  v42 = *(v10 + 8);
  v42(v39, v40);
  v42(v38, v40);
  if (v41)
  {
    v43 = -1.0;
  }

  else
  {
    v43 = 1.0;
  }

  static UnitPoint.center.getter();
  v44 = v83;
  *v105 = v83;
  *&v105[8] = v76;
  *&v105[16] = KeyPath;
  v105[24] = v74;
  *&v105[57] = *&v123[32];
  *&v105[73] = *&v123[48];
  *&v105[89] = *&v123[64];
  *&v105[104] = *&v123[79];
  *&v105[25] = *v123;
  *&v105[41] = *&v123[16];
  *&v105[128] = v108;
  *&v105[144] = v109;
  *&v105[112] = v107;
  *&v105[192] = v112;
  *&v105[208] = v113;
  *&v105[160] = v110;
  *&v105[176] = v111;
  *&v105[224] = v37;
  *&v105[232] = v73;
  *&v105[240] = v72;
  *&v105[248] = v43;
  *&v105[256] = 0x3FF0000000000000;
  *&v105[264] = v45;
  *&v105[272] = v46;
  v47 = v81;
  static AccessibilityChildBehavior.ignore.getter();
  v48 = sub_10010FC20(&qword_1011A09F0, &qword_100EDFFE8);
  v49 = sub_10073383C();
  v50 = v80;
  View.accessibilityElement(children:)();
  (*(v86 + 8))(v47, v88);
  memcpy(v106, v105, sizeof(v106));
  sub_1000095E8(v106, &qword_1011A09F0, &qword_100EDFFE8);
  v51 = v93;
  static AccessibilityTraits.isImage.getter();
  *v105 = v48;
  *&v105[8] = v49;
  swift_getOpaqueTypeConformance2();
  v52 = v87;
  v53 = v85;
  View.accessibilityAddTraits(_:)();
  (*(v94 + 8))(v51, v95);
  (*(v82 + 8))(v50, v53);
  v54 = AccessibilityIdentifier.containerDetailHeaderArtwork.unsafeMutableAddressor();
  v55 = *v54;
  v56 = v54[1];
  v57 = v54[2];
  v58 = v54[3];
  v59 = sub_100733B18();

  v60 = v91;
  View.accessibilityIdentifier(_:)(v55, v56, v57, v58, v84, v59);

  sub_1000095E8(v52, &qword_1011A09D0, &qword_100EDFF98);
  swift_getKeyPath();
  *v105 = v44;
  sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v61 = *(v44 + OBJC_IVAR____TtCV5Music4Uber13Configuration__accessibilityArtworkLabel);
  v62 = *(v44 + OBJC_IVAR____TtCV5Music4Uber13Configuration__accessibilityArtworkLabel + 8);
  v63 = sub_100733C10();

  v64 = v97;
  View.accessibilityLabel(_:)(v61, v62, v92, v63);

  sub_1000095E8(v60, &qword_1011A09D8, &qword_100EDFFA0);
  LazyState.wrappedValue.getter();
  v65 = v101;
  dispatch thunk of MotionViewStateObserver.state.getter();

  v66 = v100;
  sub_100733CF4(v79, v100);
  v67 = (*(v98 + 80) + 16) & ~*(v98 + 80);
  v68 = swift_allocObject();
  sub_100733D58(v66, v68 + v67);
  sub_100733C40(&qword_1011A0A60, &qword_1011A09E0, &qword_100EDFFA8, sub_100733C10);
  sub_10073411C(&qword_1011A0A68, &type metadata accessor for MotionViewStateObserver.State, &protocol conformance descriptor for MotionViewStateObserver.State);
  v69 = v103;
  View.onChange<A>(of:initial:_:)();

  (*(v102 + 8))(v65, v69);
  return sub_1000095E8(v64, &qword_1011A09E0, &qword_100EDFFA8);
}

uint64_t sub_1007321F8()
{
  v1 = v0;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  *&v48 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v46 - v3;
  __chkstk_darwin();
  v6 = &v46 - v5;
  sub_10010FC20(&qword_1011A0A70, &qword_100EE00B0);
  __chkstk_darwin();
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v46 - v8;
  __chkstk_darwin();
  v11 = &v46 - v10;
  sub_100732D38(v6);
  v12 = type metadata accessor for Artwork();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v6, 1, v12) == 1)
  {
    sub_1000095E8(v6, &unk_101188920, &qword_100EBCC50);
  }

  else
  {
    v46 = v0;
    Artwork.gradient.getter();
    (*(v13 + 8))(v6, v12);
    v15 = type metadata accessor for Artwork.Gradient();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v11, 1, v15) == 1)
    {
      sub_1000095E8(v11, &qword_1011A0A70, &qword_100EE00B0);
      v1 = v46;
    }

    else
    {
      v17 = Artwork.Gradient.isDisabled.getter();
      (*(v16 + 8))(v11, v15);
      v1 = v46;
      if (v17)
      {
        return 0;
      }
    }
  }

  result = sub_100732850();
  if (result)
  {
    v19 = result;
    sub_100732D38(v4);
    if (v14(v4, 1, v12) == 1)
    {
      v20 = &unk_101188920;
      v21 = &qword_100EBCC50;
      v22 = v4;
    }

    else
    {
      Artwork.gradient.getter();
      (*(v13 + 8))(v4, v12);
      v23 = type metadata accessor for Artwork.Gradient();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v9, 1, v23) != 1)
      {
        v26 = COERCE_DOUBLE(Artwork.Gradient.y1.getter());
        v46 = v19;
        v28 = v27;
        (*(v24 + 8))(v9, v23);
        v29 = (v28 & 1) == 0;
        v19 = v46;
        if (v29)
        {
          v25 = v26;
        }

        else
        {
          v25 = 0.0;
        }

LABEL_16:
        v30 = v48;
        sub_100732D38(v48);
        v31 = v1;
        if (v14(v30, 1, v12) == 1)
        {
          v32 = &unk_101188920;
          v33 = &qword_100EBCC50;
          v34 = v30;
        }

        else
        {
          v35 = v47;
          Artwork.gradient.getter();
          (*(v13 + 8))(v30, v12);
          v36 = type metadata accessor for Artwork.Gradient();
          v37 = *(v36 - 8);
          if ((*(v37 + 48))(v35, 1, v36) != 1)
          {
            v40 = COERCE_DOUBLE(Artwork.Gradient.y2.getter());
            v38 = v41;
            (*(v37 + 8))(v35, v36);
            v39 = v40;
            goto LABEL_22;
          }

          v32 = &qword_1011A0A70;
          v33 = &qword_100EE00B0;
          v34 = v35;
        }

        sub_1000095E8(v34, v32, v33);
        v38 = 1;
        v39 = 0.0;
LABEL_22:
        v42 = *v31;
        swift_getKeyPath();
        v49 = v42;
        sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v43 = *(v42 + OBJC_IVAR____TtCV5Music4Uber13Configuration__frameHeight);
        sub_10010FC20(&qword_1011A0A78, &qword_100EE00E0);
        v44 = swift_allocObject();
        v48 = xmmword_100EBDC20;
        *(v44 + 16) = xmmword_100EBDC20;
        *(v44 + 32) = static Color.clear.getter();
        *(v44 + 40) = v19;
        sub_10010FC20(&qword_101191EF8, &qword_100ECF048);
        v45 = swift_allocObject();
        *(v45 + 16) = v48;
        if (v38)
        {
          v39 = 250.0 / v43;
        }

        *(v45 + 32) = 1.0 - v39;
        *(v45 + 36) = 1.0 - v25;
        return AnyGradient.init(colors:locations:interpolations:)();
      }

      v20 = &qword_1011A0A70;
      v21 = &qword_100EE00B0;
      v22 = v9;
    }

    sub_1000095E8(v22, v20, v21);
    v25 = 0.0;
    goto LABEL_16;
  }

  return result;
}