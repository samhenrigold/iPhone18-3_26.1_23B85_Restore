uint64_t sub_100001F18()
{
}

uint64_t sub_100001F40(uint64_t a1)
{
}

uint64_t sub_100001F88()
{
  sub_100003324(v0);
}

uint64_t sub_100001FD4(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

void sub_100002030(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4)
{
  v7 = *(v5 - 124);
  v8 = *(v5 - 168);
  v10 = *(v5 - 112);
  v9 = *(v5 - 104);

  _os_signpost_emit_with_name_impl(a1, v8, v7, a4, v9, v10, v4, 0x20u);
}

uint64_t sub_100002068()
{
  sub_10005D588(v0);
}

uint64_t sub_1000020C0@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ModelXPCRequest();
  sub_100002BDC();
  v5 = v4;
  __chkstk_darwin(v6);
  (*(v5 + 16))(&v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  v8 = sub_100007660();
  v10 = v9(v8);
  if (v10 == enum case for ModelXPCRequest.executeRequest(_:))
  {
    v11 = sub_100006618();
    v12(v11);
    v13 = type metadata accessor for ModelXPCRequest.ExecuteRequest();
    sub_100009E20(v13);
    v14 = &qword_1001BE478;
    v15 = &type metadata accessor for ModelXPCRequest.ExecuteRequest;
    v16 = &unk_100174FB0;
LABEL_49:
    a1[4] = sub_100003814(v14, v15, v16);
    sub_1000036CC(a1);
    sub_100006098();
    return (*(v86 + 32))();
  }

  if (v10 == enum case for ModelXPCRequest.executeInputStreamRequest(_:))
  {
    v17 = sub_100006618();
    v18(v17);
    v19 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest();
    sub_100009E20(v19);
    v14 = &qword_1001BE468;
    v15 = &type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest;
    v16 = &unk_100174F70;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.cancelRequest(_:))
  {
    v20 = sub_100006618();
    v21(v20);
    v22 = type metadata accessor for ModelXPCRequest.CancelRequest();
    sub_100009E20(v22);
    v14 = &qword_1001BE488;
    v15 = &type metadata accessor for ModelXPCRequest.CancelRequest;
    v16 = &unk_100174FF0;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.createSession(_:))
  {
    v23 = sub_100006618();
    v24(v23);
    SessionRequest = type metadata accessor for ModelXPCRequest.CreateSessionRequest();
    sub_100009E20(SessionRequest);
    v14 = &qword_1001BE428;
    v15 = &type metadata accessor for ModelXPCRequest.CreateSessionRequest;
    v16 = &unk_100174E70;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.deleteSession(_:))
  {
    v26 = sub_100006618();
    v27(v26);
    v28 = type metadata accessor for ModelXPCRequest.DeleteSessionRequest();
    sub_100009E20(v28);
    v14 = &qword_1001BE438;
    v15 = &type metadata accessor for ModelXPCRequest.DeleteSessionRequest;
    v16 = &unk_100174EB0;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.prewarmSession(_:))
  {
    v29 = sub_100006618();
    v30(v29);
    v31 = type metadata accessor for ModelXPCRequest.PrewarmSession();
    sub_100009E20(v31);
    v14 = &qword_1001BE448;
    v15 = &type metadata accessor for ModelXPCRequest.PrewarmSession;
    v16 = &unk_100174EF0;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.cancelSession(_:))
  {
    v32 = sub_100006618();
    v33(v32);
    v34 = type metadata accessor for ModelXPCRequest.CancelSessionRequest();
    sub_100009E20(v34);
    v14 = &qword_1001BE458;
    v15 = &type metadata accessor for ModelXPCRequest.CancelSessionRequest;
    v16 = &unk_100174F30;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.acquireAssertion(_:))
  {
    v35 = sub_100006618();
    v36(v35);
    v37 = type metadata accessor for ModelXPCRequest.AcquireRequest();
    sub_100009E20(v37);
    v14 = &qword_1001BE4A8;
    v15 = &type metadata accessor for ModelXPCRequest.AcquireRequest;
    v16 = &unk_100175070;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.releaseAssertion(_:))
  {
    v38 = sub_100006618();
    v39(v38);
    v40 = type metadata accessor for ModelXPCRequest.ReleaseRequest();
    sub_100009E20(v40);
    v14 = &qword_1001BE4B8;
    v15 = &type metadata accessor for ModelXPCRequest.ReleaseRequest;
    v16 = &unk_1001750B0;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.fetchAssertions(_:))
  {
    v41 = sub_100006618();
    v42(v41);
    AssertionsRequest = type metadata accessor for ModelXPCRequest.FetchAssertionsRequest();
    sub_100009E20(AssertionsRequest);
    v14 = &qword_1001BE4C8;
    v15 = &type metadata accessor for ModelXPCRequest.FetchAssertionsRequest;
    v16 = &unk_1001750F0;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.restoreAssertions(_:))
  {
    v44 = sub_100006618();
    v45(v44);
    v46 = type metadata accessor for ModelXPCRequest.RestoreAssertionsRequest();
    sub_100009E20(v46);
    v14 = &qword_1001BE4D8;
    v15 = &type metadata accessor for ModelXPCRequest.RestoreAssertionsRequest;
    v16 = &unk_100175130;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.fetchAssets(_:))
  {
    v47 = sub_100006618();
    v48(v47);
    AssetsRequest = type metadata accessor for ModelXPCRequest.FetchAssetsRequest();
    sub_100009E20(AssetsRequest);
    v14 = &qword_1001BE4E8;
    v15 = &type metadata accessor for ModelXPCRequest.FetchAssetsRequest;
    v16 = &unk_100175170;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.fetchDynamicAssets(_:))
  {
    v50 = sub_100006618();
    v51(v50);
    DynamicAssetsRequest = type metadata accessor for ModelXPCRequest.FetchDynamicAssetsRequest();
    sub_100009E20(DynamicAssetsRequest);
    v14 = &qword_1001BE4F8;
    v15 = &type metadata accessor for ModelXPCRequest.FetchDynamicAssetsRequest;
    v16 = &unk_1001751B0;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.fetchPolicy(_:))
  {
    v53 = sub_100006618();
    v54(v53);
    PolicyRequest = type metadata accessor for ModelXPCRequest.FetchPolicyRequest();
    sub_100009E20(PolicyRequest);
    v14 = &qword_1001BE508;
    v15 = &type metadata accessor for ModelXPCRequest.FetchPolicyRequest;
    v16 = &unk_1001751F0;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.fetchDisabledUseCases(_:))
  {
    v56 = sub_100006618();
    v57(v56);
    DisabledUseCasesRequest = type metadata accessor for ModelXPCRequest.FetchDisabledUseCasesRequest();
    sub_100009E20(DisabledUseCasesRequest);
    v14 = &qword_1001BE518;
    v15 = &type metadata accessor for ModelXPCRequest.FetchDisabledUseCasesRequest;
    v16 = &unk_100175230;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.fetchAvailability(_:))
  {
    v59 = sub_100006618();
    v60(v59);
    AvailabilityRequest = type metadata accessor for ModelXPCRequest.FetchAvailabilityRequest();
    sub_100009E20(AvailabilityRequest);
    v14 = &qword_1001BE528;
    v15 = &type metadata accessor for ModelXPCRequest.FetchAvailabilityRequest;
    v16 = &unk_100175270;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.loadAssetBundle(_:))
  {
    v62 = sub_100006618();
    v63(v62);
    AssetBundle = type metadata accessor for ModelXPCRequest.LoadAssetBundle();
    sub_100009E20(AssetBundle);
    v14 = &unk_1001BE690;
    v15 = &type metadata accessor for ModelXPCRequest.LoadAssetBundle;
    v16 = &unk_100175298;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.holdAssetBundle(_:))
  {
    v65 = sub_100006618();
    v66(v65);
    v67 = type metadata accessor for ModelXPCRequest.HoldAssetBundle();
    sub_100009E20(v67);
    v14 = &unk_1001BE680;
    v15 = &type metadata accessor for ModelXPCRequest.HoldAssetBundle;
    v16 = &unk_1001752C0;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.forceAssetVersionSwitch(_:))
  {
    v68 = sub_100006618();
    v69(v68);
    v70 = type metadata accessor for ModelXPCRequest.ForceAssetVersionSwitch();
    sub_100009E20(v70);
    v14 = &unk_1001BE668;
    v15 = &type metadata accessor for ModelXPCRequest.ForceAssetVersionSwitch;
    v16 = &unk_1001752E8;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.dumpState(_:))
  {
    v71 = sub_100006618();
    v72(v71);
    v73 = type metadata accessor for ModelXPCRequest.DumpState();
    sub_100009E20(v73);
    v14 = &unk_1001BE688;
    v15 = &type metadata accessor for ModelXPCRequest.DumpState;
    v16 = &unk_100175310;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.fetchModelInstance(_:))
  {
    v74 = sub_100006618();
    v75(v74);
    ModelInstance = type metadata accessor for ModelXPCRequest.FetchModelInstance();
    sub_100009E20(ModelInstance);
    v14 = &qword_1001BE498;
    v15 = &type metadata accessor for ModelXPCRequest.FetchModelInstance;
    v16 = &unk_100175030;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.setAssetsHaveUpdated(_:))
  {
    v77 = sub_100006618();
    v78(v77);
    HaveUpdated = type metadata accessor for ModelXPCRequest.SetAssetsHaveUpdated();
    sub_100009E20(HaveUpdated);
    v14 = &unk_1001BE678;
    v15 = &type metadata accessor for ModelXPCRequest.SetAssetsHaveUpdated;
    v16 = &unk_100175338;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.ignoreAssetUpdates(_:))
  {
    v80 = sub_100006618();
    v81(v80);
    v82 = type metadata accessor for ModelXPCRequest.IgnoreAssetUpdates();
    sub_100009E20(v82);
    v14 = &unk_1001BE670;
    v15 = &type metadata accessor for ModelXPCRequest.IgnoreAssetUpdates;
    v16 = &unk_100175360;
    goto LABEL_49;
  }

  if (v10 == enum case for ModelXPCRequest.startMonitoringInferences(_:))
  {
    v83 = sub_100006618();
    v84(v83);
    started = type metadata accessor for ModelXPCRequest.StartMonitoringInferences();
    sub_100009E20(started);
    v14 = &unk_1001BE660;
    v15 = &type metadata accessor for ModelXPCRequest.StartMonitoringInferences;
    v16 = &unk_100175388;
    goto LABEL_49;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ModelXPCRequest.needsCallback.getter()
{
  sub_1000020C0(v4);
  sub_100003370(v4, v4[3]);
  v0 = sub_1000060A4();
  v2 = v1(v0);
  sub_100003324(v4);
  return v2 & 1;
}

uint64_t sub_100002BB8(uint64_t a1)
{
}

uint64_t sub_100002C30(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return 0;
}

uint64_t sub_100002C58()
{

  return swift_task_alloc();
}

uint64_t sub_100002C88()
{
  sub_100003324(v0);
}

uint64_t sub_100002CEC(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_100002D30()
{

  return sub_100004A3C(v0, v1, (v2 - 112));
}

void sub_100002DA4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 8u);
}

uint64_t sub_100002F64()
{
}

BOOL sub_100002F80(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000030A4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000030C4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000030E4()
{

  return EventReporter.send(eventBuiltWithPresetsAnd:)();
}

void sub_100003138(uint64_t a1)
{
  *(v4 - 136) = *(v1 + 248);

  sub_100117EB0(v3, v2);
}

uint64_t sub_10000317C(uint64_t a1, uint64_t a2, ...)
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_1000031E0()
{

  return swift_slowAlloc();
}

BOOL sub_10000320C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100003268()
{

  return swift_task_alloc();
}

uint64_t sub_1000032C8()
{
  *(v1 + 440) = v0;

  return type metadata accessor for AuditToken();
}

uint64_t sub_100003324(void *a1)
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

void *sub_100003370(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000033B4()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_100003420()
{
}

uint64_t sub_100003474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return swift_beginAccess();
}

void sub_1000034C8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000034E8()
{
}

uint64_t sub_100003520()
{
  *(v0 + 4) = v1;
  *(v0 + 8) = 2080;

  return type metadata accessor for DaemonSession(0);
}

uint64_t sub_100003578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  *v13 = a13;
}

uint64_t sub_10000359C()
{

  return swift_slowAlloc();
}

unint64_t sub_1000035F4()
{
  *(v1 + 12) = v0;
  v4 = *(v2 - 120);
  v5 = *(v2 - 96);

  return sub_100004A3C(v4, v5, (v2 - 88));
}

void *sub_100003624(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v3;
  a2[1] = v2;
  return result;
}

void sub_100003630()
{
}

uint64_t *sub_10000366C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t *sub_1000036CC(uint64_t *a1)
{
  sub_1000191C8();
  if ((*(v2 + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v3;
  }

  return a1;
}

uint64_t sub_100003788()
{

  return swift_slowAlloc();
}

uint64_t sub_1000037C8()
{
  sub_100003370(*(v0 - 160), *(*(v0 - 160) + 24));

  return InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
}

uint64_t sub_100003814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100003890()
{

  return swift_slowAlloc();
}

BOOL sub_1000038BC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000038EC(uint64_t a1)
{

  return swift_allocObject();
}

void sub_100003920(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100003940(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t sub_1000039DC()
{

  return swift_slowAlloc();
}

double sub_1000039F8()
{
  *(v0 + 120) = 0;
  result = 0.0;
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 72) = 0u;
  return result;
}

BOOL sub_100003A34(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100003A4C()
{
}

uint64_t sub_100003A7C()
{
  sub_100003324(v0);
}

uint64_t sub_100003B28(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
}

BOOL sub_100003CBC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

void sub_100003D34()
{
  v2 = *(v0 + 80);

  sub_1000AF388(v2);
}

uint64_t sub_100003D98(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003E34()
{

  return swift_slowAlloc();
}

uint64_t sub_100003E80(uint64_t a1)
{
  v4 = sub_100065020(&qword_1001BCB68, &unk_100173328);
  sub_100002F04(v4);
  sub_100004B1C();
  __chkstk_darwin(v5);
  v111 = sub_100057858();
  sub_100002BDC();
  v94 = v6;
  __chkstk_darwin(v7);
  sub_100009C24();
  sub_100002BF0();
  __chkstk_darwin(v8);
  *(&v93 + 1) = &v93 - v9;
  if (qword_1001B89C0 != -1)
  {
LABEL_40:
    sub_100005264();
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000641C(v10, qword_1001BC8F8);
  sub_100005B00();
  v11 = type metadata accessor for URL();
  v102 = &v93;
  sub_100002BDC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100003E50();
  v17 = v15 - v16;
  v18 = *(v13 + 16);
  v100 = v13 + 16;
  v98 = v19;
  v99 = v18;
  (v18)(v17, a1, v11);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v101 = v13;
  if (v22)
  {
    sub_10000A05C();
    v23 = swift_slowAlloc();
    v95 = a1;
    v24 = v23;
    sub_1000033D0();
    v25 = swift_slowAlloc();
    v97 = v1;
    *&v93 = v25;
    *&v109[0] = v25;
    *v24 = 136315138;
    sub_100007238();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v13 + 8);
    v30 = sub_100005EC8();
    v29(v30);
    v31 = sub_100004A3C(v26, v28, v109);
    v32 = v11;

    *(v24 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "Looking up asset bundle %s in Model Catalog", v24, 0xCu);
    sub_100003324(v93);
    v33 = v97;
    sub_100002BD0();

    a1 = v95;
    sub_100002BD0();
  }

  else
  {

    v29 = *(v13 + 8);
    v34 = sub_100005EC8();
    v29(v34);
    v33 = v1;
    v32 = v11;
  }

  if (qword_1001B89D8 != -1)
  {
    sub_100002DE4();
    swift_once();
  }

  *&v104 = qword_1001BE970;
  type metadata accessor for CatalogClient();
  v35 = v103;
  CatalogClientProtocol.queryResourceBundle(with:)();
  if (v35)
  {
    *&v106 = v35;
    swift_errorRetain();
    sub_100065020(&qword_1001B8F60, &unk_100171260);
    v111 = String.init<A>(describing:)();
    v37 = v36;
    v103 = &v93;
    __chkstk_darwin(v111);
    sub_100003E50();
    v40 = v38 - v39;
    v41 = sub_100004CA4();
    v99(v41);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      sub_100002F10();
      v44 = swift_slowAlloc();
      sub_100011828();
      v102 = swift_slowAlloc();
      *&v106 = v102;
      *v44 = 136315394;
      sub_100007238();
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      sub_1000032E4();
      v48(v40, v32);
      v49 = sub_100004A3C(v45, v47, &v106);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2080;
      v50 = v111;
      *(v44 + 14) = sub_100004A3C(v111, v37, &v106);
      _os_log_impl(&_mh_execute_header, v42, v43, "Failed to get resource bundle for %s: %s", v44, 0x16u);
      swift_arrayDestroy();
      sub_1000039CC();

      sub_100002BD0();

      v51 = v50;
    }

    else
    {

      sub_1000032E4();
      (v29)(v40, v32);
      v51 = v111;
    }

    sub_100003B1C();
    type metadata accessor for ModelManagerError();
    sub_100008744();
    sub_100015F54(v63, v64, &protocol conformance descriptor for ModelManagerError);
    sub_10000EF40();
    swift_allocError();
    *v65 = v51;
    v65[1] = v37;
    sub_100006098();
    (*(v66 + 104))();
    swift_willThrow();
  }

  else
  {
    v109[0] = v106;
    v109[1] = v107;
    v110 = v108;
    sub_100007284(v109, &v104);
    if (v105)
    {
      v97 = v33;
      sub_100004A04(&v104, &v106);
      sub_100003370(&v106, *(&v107 + 1));
      a1 = dispatch thunk of ResourceBundle.resources.getter();
      v52 = 0;
      v1 = *(a1 + 16);
      v103 = _swiftEmptyArrayStorage;
      v53 = (a1 + 32);
LABEL_12:
      v54 = v53 + 40 * v52;
      while (v1 != v52)
      {
        if (v52 >= *(a1 + 16))
        {
          __break(1u);
          goto LABEL_40;
        }

        sub_100007130(v54, &v104);
        sub_1000072F4(&v104, v2);
        sub_100003324(&v104);
        if (sub_10000C6C0(v2, 1, v111) != 1)
        {
          v102 = v53;
          v55 = *(&v93 + 1);
          sub_10000C43C(v2, *(&v93 + 1));
          sub_10000C43C(v55, v96);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1000080E4();
            sub_1000093CC();
            v103 = v60;
          }

          v53 = v102;
          v57 = *(v103 + 2);
          v56 = *(v103 + 3);
          v58 = v57 + 1;
          if (v57 >= v56 >> 1)
          {
            sub_1000127D4(v56);
            v101 = v61;
            sub_1000093CC();
            v58 = v101;
            v103 = v62;
          }

          ++v52;
          *(v103 + 2) = v58;
          sub_100003C40();
          sub_10000C43C(v96, v59);
          goto LABEL_12;
        }

        sub_10000ECD8(v2, &qword_1001BCB68, &unk_100173328);
        v54 += 40;
        ++v52;
      }

      sub_1000089FC(v103);
      v68 = v67;
      sub_100003370(&v106, *(&v107 + 1));
      v37 = dispatch thunk of ResourceBundle.rawID.getter();
      v70 = v69;

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v71, v72))
      {
        sub_1000033D0();
        v73 = swift_slowAlloc();
        sub_100011828();
        v111 = swift_slowAlloc();
        *&v104 = v111;
        *v73 = 136315650;
        *(v73 + 4) = sub_100004A3C(v37, v70, &v104);
        *(v73 + 12) = 2048;
        *(v73 + 14) = *(v68 + 16);

        *(v73 + 22) = 2080;
        if (*(v68 + 16) == 1)
        {
          v74 = 0;
        }

        else
        {
          v74 = 115;
        }

        if (*(v68 + 16) == 1)
        {
          v75 = 0xE000000000000000;
        }

        else
        {
          v75 = 0xE100000000000000;
        }

        v76 = sub_100004A3C(v74, v75, &v104);

        *(v73 + 24) = v76;
        _os_log_impl(&_mh_execute_header, v71, v72, "Found asset bundle %s with %ld asset%s", v73, 0x20u);
        swift_arrayDestroy();
        sub_100005864();

        sub_100002BD0();
      }

      else
      {
      }

      sub_10000ECD8(v109, &qword_1001BCBA0, &qword_100173398);
      sub_100003324(&v106);
    }

    else
    {
      v77 = sub_10000ECD8(&v104, &qword_1001BCBA0, &qword_100173398);
      __chkstk_darwin(v77);
      sub_100003E50();
      v78 = a1;
      v81 = v79 - v80;
      v95 = v78;
      v99(v79 - v80);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v82, v83))
      {
        sub_10000A05C();
        swift_slowAlloc();
        v111 = &v93;
        sub_100007958();
        v84 = swift_slowAlloc();
        v103 = v29;
        v85 = v84;
        *&v106 = v84;
        LODWORD(v93) = 136315138;
        sub_100007238();
        v86 = dispatch thunk of CustomStringConvertible.description.getter();
        v88 = v87;
        sub_1000032E4();
        (v103)(v81, v32);
        v89 = sub_100004A3C(v86, v88, &v106);

        *(&v93 + 4) = v89;
        _os_log_impl(&_mh_execute_header, v82, v83, "Asset bundle %s not found in Model Catalog, falling back to test assets", &v93, 0xCu);
        sub_100003324(v85);
        sub_100005864();

        sub_100002BD0();
      }

      else
      {

        sub_1000032E4();
        (v29)(v81, v32);
      }

      v37 = URL.absoluteString.getter();
      v91 = URL.absoluteString.getter();
      sub_10010EC94(v91, v92);
      sub_10000ECD8(v109, &qword_1001BCBA0, &qword_100173398);
    }
  }

  return v37;
}

uint64_t sub_100004A04(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100004A3C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000061A0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10000603C(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100003324(v11);
  return v7;
}

uint64_t sub_100004B50(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_100004B78()
{
}

uint64_t sub_100004BA0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_100004BD8(uint64_t result)
{
  *(v4 + 440) = result;
  *(result + 16) = v3;
  *(result + 24) = v2;
  *(v4 + 224) = v1;
  return result;
}

uint64_t sub_100004C24()
{

  return swift_beginAccess();
}

__n128 sub_100004C68(_DWORD *a1)
{
  result = *(v2 - 240);
  *a1 = result.n128_u32[0];
  a1[1] = v1;
  return result;
}

void *sub_100004C7C()
{
  result = sub_100003370(*(v0 + 40), *(*(v0 + 40) + 24));
  *(v0 + 88) = *(*result + 128);
  return result;
}

BOOL sub_100004CFC()
{

  return sub_100128E20(sub_10014A5A0, v2, v0, v1);
}

uint64_t sub_100004D74(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10006FA64;

  return sub_100004E20();
}

uint64_t sub_100004E20()
{
  sub_100002BAC();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = type metadata accessor for AuditToken();
  v1[10] = v4;
  sub_100002F44(v4);
  v1[11] = v5;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v6 = type metadata accessor for ModelXPCRequest();
  v1[15] = v6;
  sub_100002F44(v6);
  v1[16] = v7;
  v1[17] = swift_task_alloc();
  sub_1000059F8();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100004F70(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100004FB4(uint64_t a1, ...)
{

  return String.hash(into:)();
}

uint64_t sub_100004FDC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100004FFC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100005038(unint64_t *a1)
{

  return sub_100091A48(a1, &protocol conformance descriptor for <> IPCResult<A, B>);
}

uint64_t sub_1000050B4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100005114(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100005134(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100005204()
{

  return swift_task_alloc();
}

uint64_t sub_100005224(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100005244(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000052BC(unint64_t *a1)
{

  return sub_10011C9EC(a1, &protocol conformance descriptor for <> IPCResult<A, B>);
}

uint64_t sub_1000052E0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100005314(uint64_t a1)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1000053A0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000053C0()
{
  sub_100003884();
  v1 = v0[9];
  sub_100005490();
  TaskCancellingXPCReceivedMessage.decode()();
  TaskCancellingXPCReceivedMessage.auditToken.getter();
  swift_task_alloc();
  sub_100004B34();
  v0[18] = v2;
  *v2 = v3;
  v2[1] = sub_1000138B4;
  v4 = v0[14];

  return sub_10015DED0(v1 + 16, v4);
}

void sub_100005490()
{
  v1 = type metadata accessor for AuditToken();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  TaskCancellingXPCReceivedMessage.auditToken.getter();
  v5 = AuditToken.processIdentifier.getter();
  (*(v2 + 8))(v4, v1);
  v6 = *(v0 + 56);
  os_unfair_lock_lock(v6 + 5);
  if (!v6[4]._os_unfair_lock_opaque)
  {
    v6[4]._os_unfair_lock_opaque = v5;
  }

  os_unfair_lock_unlock(v6 + 5);
}

uint64_t sub_100005730()
{

  return swift_slowAlloc();
}

uint64_t sub_100005790(uint64_t a1)
{
  sub_10000C6C0(v1, 1, a1);
}

void sub_1000057CC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_100005804(unint64_t *a1)
{

  return sub_1000B4F30(a1, &protocol conformance descriptor for <> IPCResult<A, B>);
}

uint64_t sub_100005844(uint64_t result)
{
  *(v4 + 440) = result;
  *(result + 16) = v1;
  *(result + 24) = v2;
  *(result + 32) = v3;
  *(v4 + 224) = v5;
  return result;
}

uint64_t sub_100005914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100009BFC(a1, v4, 1, a4);
}

uint64_t sub_10000598C()
{

  return swift_task_alloc();
}

uint64_t sub_1000059A8()
{
}

void sub_1000059D8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_100005A10()
{

  return swift_beginAccess();
}

uint64_t sub_100005A88(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_100005AA4()
{
  sub_100003324(v0);
}

uint64_t sub_100005AD8()
{
}

uint64_t sub_100005B6C()
{
}

__n128 sub_100005B8C()
{
  result = *(v0 - 128);
  *(v0 - 112) = *(v0 - 144);
  *(v0 - 96) = result;
  return result;
}

uint64_t sub_100005BB4()
{

  return sub_100009BFC(v0, 1, 1, v1);
}

uint64_t sub_100005C18(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100005C60()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100005CE0()
{

  return swift_beginAccess();
}

unint64_t sub_100005D74(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

unint64_t sub_100005DA0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  *v22 = a1;

  return sub_100004A3C(v21, v20, va);
}

void sub_100005EB0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_100005FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return swift_task_alloc();
}

uint64_t sub_100006010()
{

  return type metadata accessor for Logger();
}

uint64_t sub_10000603C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000060D8(uint64_t a1)
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_1000060F4()
{

  return swift_slowAlloc();
}

uint64_t sub_100006114(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1000082D4(a1, a2, a3, &protocol conformance descriptor for UUIDIdentifier<A>);
}

uint64_t sub_100006138()
{
}

BOOL sub_100006168(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t sub_1000061A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000CAF4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1000062D8()
{

  return swift_slowAlloc();
}

uint64_t sub_1000062F4@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_1000063F0()
{

  return type metadata accessor for ModelManagerError();
}

uint64_t sub_10000641C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

BOOL sub_100006468(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_1000064D0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_100006508(uint64_t result)
{
  *(v4 + 400) = result;
  *(result + 16) = v1;
  *(result + 24) = v2;
  *(result + 32) = v7;
  *(result + 40) = v5 & 1;
  *(result + 41) = v3;
  *(v4 + 216) = v6;
  return result;
}

void sub_100006628(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v112 = a2;
  v3 = sub_100065020(&qword_1001BCBA8, &qword_1001733A0);
  sub_100002F04(v3);
  sub_100004B1C();
  __chkstk_darwin(v4);
  v6 = v111 - v5;
  v7 = type metadata accessor for CostProfile();
  sub_100002BDC();
  v115 = v8;
  __chkstk_darwin(v9);
  sub_100009C24();
  sub_100002BF0();
  __chkstk_darwin(v10);
  sub_1000079F8();
  sub_100002BF0();
  __chkstk_darwin(v11);
  sub_1000079F8();
  sub_100002BF0();
  __chkstk_darwin(v12);
  sub_1000079F8();
  sub_100002BF0();
  __chkstk_darwin(v13);
  sub_1000079F8();
  sub_100002BF0();
  __chkstk_darwin(v14);
  sub_1000079F8();
  sub_100002BF0();
  __chkstk_darwin(v15);
  v17 = v111 - v16;
  v18 = type metadata accessor for InferenceProvider();
  sub_100002BDC();
  v119 = v19;
  __chkstk_darwin(v20);
  sub_100009C24();
  v130 = v21;
  sub_100002F1C();
  __chkstk_darwin(v22);
  v131 = v111 - v23;
  sub_100003B1C();
  v139 = type metadata accessor for ManagedRuntimeInformation();
  sub_100002BDC();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_100009C24();
  v128 = v27;
  sub_100002F1C();
  __chkstk_darwin(v28);
  sub_1000079F8();
  v129 = v29;
  sub_100002F1C();
  __chkstk_darwin(v30);
  v122 = v111 - v31;
  v32 = a1[3];
  v33 = a1[4];
  v116 = a1;
  v34 = sub_100005EC8();
  v113 = sub_100003370(v34, v35);
  sub_100019498();
  v114 = v33;
  v36 = dispatch thunk of ManagedResource.runtimeInformation.getter();
  v37 = *(v36 + 16);
  v120 = v6;
  v132 = v18;
  v118 = v7;
  v117 = v17;
  if (v37)
  {
    v111[2] = v32;
    v140 = _swiftEmptyArrayStorage;
    sub_10000C958(0, v37, 0);
    v121 = v25;
    v39 = *(v25 + 16);
    v38 = v25 + 16;
    v126 = v39;
    sub_10000657C();
    v111[1] = v36;
    v41 = v36 + v40;
    v125 = *(v38 + 56);
    v127 = v38;
    v123 = (v38 - 8);
    v124 = (v119 + 8);
    v42 = v139;
    v17 = v140;
    v43 = v128;
    v44 = v130;
    do
    {
      v138 = v37;
      v45 = v129;
      v46 = v126;
      v126(v129, v41, v42);
      v46(v43, v45, v42);
      v47 = v131;
      ManagedRuntimeInformation.inferenceProvider.getter();
      v48 = InferenceProvider.id.getter();
      v136 = v49;
      v137 = v48;
      v50 = *v124;
      v51 = v47;
      v52 = v132;
      (*v124)(v51, v132);
      v53 = ManagedRuntimeInformation.instanceID.getter();
      v134 = v54;
      v135 = v53;
      ManagedRuntimeInformation.inferenceProvider.getter();
      LODWORD(v133) = InferenceProvider.hostedOnServer.getter();
      v50(v44, v52);
      v55 = *v123;
      (*v123)(v43, v42);
      v55(v45, v42);
      v140 = v17;
      v57 = *(v17 + 2);
      v56 = *(v17 + 3);
      v7 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        v61 = sub_1000127D4(v56);
        sub_10000C958(v61, v57 + 1, 1);
        v17 = v140;
      }

      *(v17 + 2) = v7;
      v58 = &v17[40 * v57];
      v59 = v136;
      *(v58 + 4) = v137;
      *(v58 + 5) = v59;
      v60 = v134;
      *(v58 + 6) = v135;
      *(v58 + 7) = v60;
      v58[64] = v133 & 1;
      v41 += v125;
      v37 = v138 - 1;
    }

    while (v138 != 1);
    v130 = v17;

    sub_10001348C();
    v6 = v120;
    v18 = v132;
    v25 = v121;
    v62 = v119;
  }

  else
  {

    v130 = _swiftEmptyArrayStorage;
    v62 = v119;
  }

  v63 = *(dispatch thunk of ManagedResource.runtimeInformation.getter() + 16);
  v64 = v122;
  if (v63)
  {
    v67 = *(v25 + 16);
    v66 = v25 + 16;
    v65 = v67;
    sub_10000657C();
    v129 = v68;
    v7 = v68 + v69;
    v17 = *(v66 + 56);
    v134 = (v62 + 8);
    v138 = _swiftEmptyArrayStorage;
    v70 = (v66 - 8);
    v133 = xmmword_100173180;
    v71 = v139;
    v121 = v66;
    v135 = v17;
    do
    {
      v65(v64, v7, v71);
      ManagedRuntimeInformation.vmInferenceProvider.getter();
      if (sub_10000C6C0(v6, 1, v18) == 1)
      {
        (*v70)(v64, v71);
        sub_10000ECD8(v6, &qword_1001BCBA8, &qword_1001733A0);
      }

      else
      {
        v72 = v65;
        v73 = v64;
        v74 = InferenceProvider.id.getter();
        v136 = v75;
        v137 = v74;
        v76 = *v134;
        (*v134)(v6, v18);
        v77 = v131;
        ManagedRuntimeInformation.inferenceProvider.getter();
        v78 = InferenceProvider.hostedOnServer.getter();
        v76(v77, v18);
        (*v70)(v73, v139);
        v79 = v138;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000080E4();
          sub_10000758C();
          v79 = v84;
        }

        v81 = v79[2];
        v80 = v79[3];
        v65 = v72;
        if (v81 >= v80 >> 1)
        {
          sub_1000127D4(v80);
          sub_10000758C();
          v79 = v85;
        }

        v79[2] = v81 + 1;
        v138 = v79;
        v82 = &v79[5 * v81];
        v83 = v136;
        v82[4] = v137;
        v82[5] = v83;
        *(v82 + 3) = v133;
        *(v82 + 64) = v78 & 1;
        v6 = v120;
        v18 = v132;
        v71 = v139;
        v64 = v122;
        v17 = v135;
      }

      v7 += v17;
      --v63;
    }

    while (v63);

    sub_10001348C();
  }

  else
  {

    v138 = _swiftEmptyArrayStorage;
  }

  v86 = v116;
  sub_100011C00();
  sub_100003170();
  v139 = dispatch thunk of CatalogResource.id.getter();
  v88 = v87;
  sub_100011C00();
  sub_100003170();
  v89 = dispatch thunk of CatalogResource.dependentResourceIDs.getter();
  sub_100011C00();
  sub_100003170();
  dispatch thunk of ManagedResource.cost.getter();
  v90 = CostProfile.onDeviceMemory.getter();
  v91 = *(v115 + 8);
  (v91)(v17, v7);
  if (v90 < 0)
  {
    __break(1u);
  }

  else
  {
    v92 = type metadata accessor for ModelCatalogAsset(0);
    v136 = v88;
    v137 = v92;
    v93 = v112;
    AssetCost.init(onDeviceMemory:)();
    sub_100011C00();
    sub_100003170();
    dispatch thunk of ManagedResource.cost.getter();
    LODWORD(v135) = CostProfile.cacheable.getter();
    (v91)(v17, v7);
    v94 = v86[3];
    sub_100011C00();
    sub_100003170();
    dispatch thunk of ManagedResource.cost.getter();
    LODWORD(v134) = CostProfile.avoidUnload.getter();
    v95 = sub_100003754();
    v91(v95);
    sub_100003370(v86, v86[3]);
    sub_100012E00();
    dispatch thunk of ManagedResource.cost.getter();
    LODWORD(v133) = CostProfile.dynamicModeAllowed.getter();
    (v91)(v94, v7);
    v132 = v89;
    sub_100003370(v86, v86[3]);
    sub_100012E00();
    dispatch thunk of ManagedResource.cost.getter();
    LODWORD(v131) = CostProfile.energyEfficientMode.getter();
    v96 = v7;
    (v91)(v94, v7);
    sub_100003370(v86, v86[3]);
    sub_100012E00();
    dispatch thunk of ManagedResource.cost.getter();
    LODWORD(v129) = CostProfile.unentitledGatedByFoundationModels.getter();
    (v91)(v94, v7);
    sub_100003370(v86, v86[3]);
    v97 = v111[7];
    dispatch thunk of ManagedResource.cost.getter();
    v98 = CostProfile.unentitledUseCases.getter();
    (v91)(v97, v7);
    v99 = sub_100005EC8();
    sub_100003370(v99, v100);
    v101 = v111[8];
    sub_100019498();
    dispatch thunk of ManagedResource.cost.getter();
    v102 = CostProfile.preferUnload.getter();
    (v91)(v101, v96);
    v103 = v136;
    v104 = v137;
    *v93 = v139;
    v93[1] = v103;
    v105 = v130;
    v93[2] = v132;
    v93[3] = v105;
    v93[4] = v138;
    sub_100009534(*(v104 + 36));
    sub_100009534(*(v106 + 40));
    sub_100009534(*(v107 + 44));
    sub_100009534(*(v108 + 48));
    sub_100009534(*(v109 + 52));
    *(v93 + *(v110 + 56)) = v98;
    *(v93 + *(v110 + 60)) = v102 & 1;
    sub_100003324(v86);
    sub_100002EEC();
  }
}

uint64_t sub_10000706C()
{
}

uint64_t sub_100007098(uint64_t a1)
{

  return sub_100009BFC(v1, 1, 1, a1);
}

uint64_t sub_1000070D0(uint64_t a1)
{

  return sub_100009BFC(a1, 0, 1, v1);
}

uint64_t sub_1000070EC()
{
}

uint64_t sub_100007104()
{

  return type metadata accessor for Logger();
}

uint64_t sub_100007130(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_100006098();
  (*v3)(a2);
  return a2;
}

uint64_t sub_1000071F0(uint64_t result)
{
  *(v2 + 14) = result;
  *(v2 + 22) = v1;
  return result;
}

unint64_t sub_100007238()
{
  result = qword_1001B9CD8;
  if (!qword_1001B9CD8)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9CD8);
  }

  return result;
}

uint64_t sub_100007284(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BCBA0, &qword_100173398);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000072F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100007130(a1, v19);
  sub_100065020(&qword_1001BCB38, &qword_1001732E0);
  sub_100065020(&qword_1001BCB78, &qword_100173340);
  if (swift_dynamicCast())
  {
    sub_100004A04(v17, v20);
    sub_100007130(v20, v19);
    sub_100006628(v19, a2);
    sub_100003324(v20);
    v4 = type metadata accessor for ModelCatalogAsset(0);
    v5 = a2;
    v6 = 0;
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_10000ECD8(v17, &qword_1001BCB80, &qword_100173348);
    if (qword_1001B89C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000641C(v7, qword_1001BC8F8);
    sub_100007130(a1, v20);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19[0] = v11;
      *v10 = 136315138;
      sub_100003370(v20, v20[3]);
      v12 = dispatch thunk of CatalogResource.id.getter();
      v14 = v13;
      sub_100003324(v20);
      v15 = sub_100004A3C(v12, v14, v19);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Asset %s cannot be converted to a Model Catalog Managed Resource; ignoring", v10, 0xCu);
      sub_100003324(v11);
    }

    else
    {

      sub_100003324(v20);
    }

    v4 = type metadata accessor for ModelCatalogAsset(0);
    v5 = a2;
    v6 = 1;
  }

  return sub_100009BFC(v5, v6, 1, v4);
}

uint64_t sub_100007574()
{

  return type metadata accessor for Logger();
}

void sub_10000758C()
{
  sub_100004D68();
  if ((v3 & 1) == 0 || (sub_100012660(), v4 == v5))
  {
LABEL_6:
    sub_100006184();
    if (v2)
    {
      v6 = sub_100065020(&qword_1001B90C8, &unk_10016FD40);
      v7 = sub_100048628(v6);
      v8 = j__malloc_size(v7);
      sub_10014B01C(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_10001997C();
        sub_1000708B4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_10000D5B4();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_100005FE0();
  if (!v4)
  {
    sub_10000A210();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_100007648()
{

  return swift_slowAlloc();
}

uint64_t sub_10000767C()
{

  return swift_slowAlloc();
}

uint64_t sub_100007698()
{

  return swift_slowAlloc();
}

uint64_t sub_1000076D8()
{

  return type metadata accessor for ModelManagerError();
}

uint64_t sub_100007710()
{
}

uint64_t sub_100007748()
{

  return static _SetStorage.copy(original:)();
}

uint64_t sub_100007764()
{

  return swift_allocObject();
}

uint64_t sub_10000779C(uint64_t a1)
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_1000077CC()
{

  return type metadata accessor for Logger();
}

uint64_t sub_1000077EC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_10000781C()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1000078C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, char a20)
{
  v25 = (v23 + v22);
  *v25 = a18;
  v25[1] = a20;
  *(v21 + 104) = v20;
}

uint64_t sub_100007984()
{
}

void sub_1000079BC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x12u);
}

uint64_t sub_1000079DC()
{
}

uint64_t sub_100007A5C(uint64_t a1)
{
  *(v4 - 88) = a1;
  *v2 = v3;
  *(v2 + 1) = v1;
  *(v2 + 2) = 2082;

  return UUIDIdentifier.uuidString.getter();
}

void sub_100007AC8(uint64_t a1@<X8>)
{
  v3[9] = v2;
  v3[10] = v1;
  v3[17] = v4 + 3;
  v3[18] = (a1 - 32) | 0x8000000000000000;
}

uint64_t sub_100007AE0()
{

  return sub_100009BFC(v1, 1, 1, v0);
}

uint64_t sub_100007B38()
{
  v4 = (*(v0 + 56) + 40 * v1);

  return sub_100004A04(v4, v2);
}

uint64_t sub_100007BA0()
{
}

uint64_t sub_100007BCC()
{
}

uint64_t sub_100007BE4()
{
}

unint64_t sub_100007C14(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_100004A3C(v3, v4, a3);
}

uint64_t sub_100007C3C(uint64_t a1, uint64_t a2)
{
  sub_10000641C(a1, a2);

  return swift_errorRetain();
}

uint64_t sub_100007C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18)
{
  *(v18 + 352) = a1;
  *(a1 + 16) = v19;
  *(a1 + 24) = a18;
  *(a1 + 32) = a15;
  *(a1 + 40) = a17 & 1;
  return v20;
}

void sub_100007CF4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_100007D14()
{
  sub_100009BFC(v1, 0, 1, v0);
}

uint64_t sub_100007DC8()
{
}

uint64_t sub_100007DE0()
{
  v2 = *(*(v0 + 248) + *(*(v0 + 256) + 24));
  *(v0 + 272) = v2;
  *(v0 + 304) = *(v2 + 32);
}

unint64_t sub_100007E88(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v5 + 4) = a1;
  *(v5 + 12) = 2080;

  return sub_100004A3C(v4, v3, va);
}

uint64_t sub_100007ED0()
{

  return swift_beginAccess();
}

uint64_t sub_100007EF4()
{

  return swift_beginAccess();
}

uint64_t *sub_100008030(uint64_t a1)
{
  *(v1 + 48) = a1;

  return sub_10000366C((v1 + 16));
}

uint64_t sub_100008048()
{
}

uint64_t sub_100008080(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_1000080A4()
{

  return swift_slowAlloc();
}

void sub_1000080F4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

unint64_t sub_100008134(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_100004A3C(a1, a2, va);
}

uint64_t sub_10000814C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100008194()
{

  return swift_allocError();
}

uint64_t sub_1000081F4()
{
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  sub_100004A04((v1 + 168), v1 + 88);
}

uint64_t sub_100008244()
{
  v3 = v0[33];
  *(v1 - 120) = v0[32];
  v4 = v0[17] + v3 + *(v0[18] + 60);

  return sub_1000480AC(v4, (v0 + 2));
}

uint64_t sub_1000082B4()
{

  return swift_task_alloc();
}

uint64_t sub_1000082D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10006A614(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000831C@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_10006A65C(v2, &a2 - a1, v3, v4);
}

uint64_t (*sub_1000083FC())()
{
  *(v1 + 192) = *v0;
  *(v1 + 200) = v0[1];
  return sub_1000B9104;
}

uint64_t sub_100008510(float *a1, float a2)
{
  *a1 = a2;

  return swift_beginAccess();
}

uint64_t sub_100008598(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000085B8(unint64_t *a1)
{

  return sub_100091A48(a1, &protocol conformance descriptor for <> IPCResult<A, B>);
}

uint64_t sub_10000869C()
{
}

uint64_t sub_1000086EC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100008724(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000875C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000877C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000881C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000883C(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_10000884C()
{

  return sub_100009BFC(v0, 1, 1, v1);
}

uint64_t sub_10000887C(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_10000892C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return swift_beginAccess();
}

void sub_100008974()
{

  sub_100070E00();
}

uint64_t sub_1000089B8()
{
}

uint64_t sub_1000089D0(void x0_0, void x1_0, void x2_0, void x3_0, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayDestroy();
}

uint64_t sub_1000089F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = result;
  return result;
}

void sub_1000089FC(uint64_t a1)
{
  sub_1000134E8();
  v4 = sub_10002A104();
  v5 = type metadata accessor for ModelCatalogAsset(v4);
  sub_100002BDC();
  __chkstk_darwin(v6);
  sub_100005630();
  sub_100018C20();
  __chkstk_darwin(v7);
  sub_10001885C();
  sub_10000814C(&qword_1001B9450, type metadata accessor for ModelCatalogAsset, &unk_1001717C4);
  sub_100004CA4();
  Set.init(minimumCapacity:)();
  v8 = *(v1 + 16);
  if (v8)
  {
    sub_10000CB40();
    do
    {
      sub_10000CF04();
      sub_10000931C();
      sub_100008B58();
      sub_100011314();
      sub_10000D2AC(v2);
      v5 += v3;
      --v8;
    }

    while (v8);
  }

  sub_100009C38();
}

void sub_100008B58()
{
  sub_1000055B0();
  v3 = v2;
  v37 = v4;
  v38 = type metadata accessor for ModelCatalogAsset(0);
  sub_100002BDC();
  __chkstk_darwin(v5);
  sub_100005630();
  v8 = (v6 - v7);
  __chkstk_darwin(v9);
  v35 = (&v35 - v10);
  v36 = v0;
  v11 = *v0;
  Hasher.init(_seed:)();
  sub_10000C228(&v42);
  Hasher._finalize()();
  v40 = v11 + 56;
  v41 = v11;
  sub_100012A00();
  v14 = v13 & ~v12;
  if (((*(v15 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_47:
    v31 = v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v35;
    sub_10000931C();
    v42 = *v31;
    sub_100008EE4(v33, v14, isUniquelyReferenced_nonNull_native);
    *v31 = v42;
    sub_10000D460();
    goto LABEL_48;
  }

  v39 = ~v12;
  v16 = *v3;
  v17 = v3[1];
  while (1)
  {
    sub_100003B04();
    sub_10000931C();
    v18 = *v8 == v16 && v8[1] == v17;
    if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_46;
    }

    sub_100016458();
    if (!v18)
    {
      goto LABEL_46;
    }

    if (v1 && v20 != v19)
    {
      break;
    }

LABEL_22:
    if (sub_1000BB718(v8[3], v3[3]) & 1) != 0 && (sub_1000BB718(v8[4], v3[4]) & 1) != 0 && (static AssetCost.== infix(_:_:)())
    {
      sub_1000189B8();
      if (v18)
      {
        sub_1000189B8();
        if (v18)
        {
          sub_1000189B8();
          if (v18)
          {
            sub_1000189B8();
            if (v18)
            {
              sub_1000189B8();
              if (v18)
              {
                v25 = *(v38 + 56);
                v26 = *(v8 + v25);
                v27 = *(v3 + v25);
                v28 = *(v26 + 16);
                if (v28 == *(v27 + 16))
                {
                  if (!v28 || v26 == v27)
                  {
LABEL_45:
                    sub_1000189B8();
                    if (v18)
                    {
                      goto LABEL_50;
                    }
                  }

                  else
                  {
                    v29 = (v26 + 40);
                    v1 = (v27 + 40);
                    while (1)
                    {
                      v30 = *(v29 - 1) == *(v1 - 1) && *v29 == *v1;
                      if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                      {
                        break;
                      }

                      v29 += 2;
                      v1 += 2;
                      if (!--v28)
                      {
                        goto LABEL_45;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_46:
    sub_100011314();
    sub_10000D2AC(v8);
    v14 = (v14 + 1) & v39;
    if (((*(v40 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v22 = (v20 + 40);
  v23 = (v19 + 40);
  while (v1)
  {
    v24 = *(v22 - 1) == *(v23 - 1) && *v22 == *v23;
    if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_46;
    }

    v22 += 2;
    v23 += 2;
    v1 = (v1 - 1);
    if (!v1)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_50:
  sub_100007190();
  sub_10000D2AC(v8);
  v34 = sub_10000D01C();
  sub_10000D2AC(v34);
  sub_100003B04();
  sub_10000931C();
LABEL_48:
  sub_100002EEC();
}

uint64_t sub_100008EE4(uint64_t *a1, unint64_t a2, char a3)
{
  v39 = type metadata accessor for ModelCatalogAsset(0);
  v7 = *(v39 - 1);
  __chkstk_darwin(v39);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v37 = v7;
  v38 = v3;
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100080494(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        sub_100086848();
        goto LABEL_48;
      }

      sub_100087558(v10 + 1);
    }

    v12 = *v3;
    Hasher.init(_seed:)();
    sub_10000C228(v42);
    v13 = Hasher._finalize()();
    v14 = -1 << *(v12 + 32);
    a2 = v13 & ~v14;
    v41 = v12 + 56;
    if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v40 = ~v14;
      v15 = *a1;
      v16 = a1[1];
      do
      {
        sub_10000931C();
        v17 = *v9 == v15 && v9[1] == v16;
        if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v18 = v9[2];
          v19 = a1[2];
          v20 = *(v18 + 16);
          if (v20 == *(v19 + 16))
          {
            if (v20)
            {
              v21 = v18 == v19;
            }

            else
            {
              v21 = 1;
            }

            if (!v21)
            {
              v22 = (v18 + 40);
              v23 = (v19 + 40);
              while (v20)
              {
                v24 = *(v22 - 1) == *(v23 - 1) && *v22 == *v23;
                if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  goto LABEL_47;
                }

                v22 += 2;
                v23 += 2;
                if (!--v20)
                {
                  goto LABEL_28;
                }
              }

              __break(1u);
              goto LABEL_51;
            }

LABEL_28:
            if ((sub_1000BB718(v9[3], a1[3]) & 1) != 0 && (sub_1000BB718(v9[4], a1[4]) & 1) != 0 && (static AssetCost.== infix(_:_:)() & 1) != 0 && *(v9 + v39[9]) == *(a1 + v39[9]) && *(v9 + v39[10]) == *(a1 + v39[10]) && *(v9 + v39[11]) == *(a1 + v39[11]) && *(v9 + v39[12]) == *(a1 + v39[12]) && *(v9 + v39[13]) == *(a1 + v39[13]))
            {
              v25 = v39[14];
              v26 = *(v9 + v25);
              v27 = *(a1 + v25);
              v28 = *(v26 + 16);
              if (v28 == *(v27 + 16))
              {
                if (!v28 || v26 == v27)
                {
LABEL_46:
                  if (*(v9 + v39[15]) == *(a1 + v39[15]))
                  {
                    goto LABEL_52;
                  }
                }

                else
                {
                  v29 = (v26 + 40);
                  v30 = (v27 + 40);
                  while (1)
                  {
                    v31 = *(v29 - 1) == *(v30 - 1) && *v29 == *v30;
                    if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      break;
                    }

                    v29 += 2;
                    v30 += 2;
                    if (!--v28)
                    {
                      goto LABEL_46;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_47:
        sub_10000D2AC(v9);
        a2 = (a2 + 1) & v40;
      }

      while (((*(v41 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_48:
  v32 = *v38;
  *(*v38 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10000D460();
  v34 = *(v32 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
LABEL_51:
    __break(1u);
    __break(1u);
LABEL_52:
    sub_10000D2AC(v9);
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v32 + 16) = v36;
  }

  return result;
}

uint64_t sub_10000931C()
{
  v1 = sub_10000C1A0();
  v2(v1);
  sub_100002C00();
  v3 = sub_1000062B0();
  v4(v3);
  return v0;
}

uint64_t sub_100009370(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100002C00();
  v4 = sub_1000062B0();
  v5(v4);
  return a2;
}

void sub_1000093CC()
{
  sub_1000144A8();
  if (v3)
  {
    sub_100018970();
    if (v5 != v6)
    {
      sub_10014B39C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100029500();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_10000C348(*(v0 + 16), v4, &qword_1001BCB90, &qword_100173370, type metadata accessor for ModelCatalogAsset);
  v7 = sub_1000494E8();
  type metadata accessor for ModelCatalogAsset(v7);
  sub_1000191C8();
  sub_10000657C();
  if (v1)
  {
    v9 = sub_100005FBC(v8);
    sub_100009630(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000ECA0();
  }
}

uint64_t sub_1000094F0(uint64_t a1)
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_100009558()
{
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 120);
  v7 = *(v0 + 408) & 1;

  return sub_10003C8E8(v2, v6, v7, v4, v5, v3);
}

void sub_10000957C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1000189A4();
  if (v8 && (a4(0), sub_100002C00(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      sub_100003AF0();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    sub_100003AF0();

    swift_arrayInitWithTakeFrontToBack();
  }
}

void sub_100009648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000A274();
  v51 = v4;
  v53 = v5;
  v54 = v6;
  v8 = v7;
  type metadata accessor for ModelCatalogAsset(0);
  sub_100002BDC();
  v55 = v10;
  v56 = v9;
  __chkstk_darwin(v9);
  sub_100005630();
  v52 = v11 - v12;
  __chkstk_darwin(v13);
  v15 = &v50[-v14];
  v16 = v8 + 56;
  v17 = 1 << *(v8 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v8 + 56);
  v20 = (v17 + 63) >> 6;

  v21 = 0;
  while (v19)
  {
    v22 = v21;
LABEL_10:
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v24 = sub_100005D58(v23 | (v22 << 6));
    v26 = v25;
    v27 = sub_100009370(v24, v15, v25);
    v57[0] = v53;
    v57[1] = v54;
    __chkstk_darwin(v27);
    *&v50[-16] = v57;
    v29 = sub_100009A9C(sub_10001609C, &v50[-32], v28);
    sub_1000125E8(v15, v26);
    if (!v29)
    {

      if (qword_1001B89B0 != -1)
      {
LABEL_35:
        sub_100008724(&qword_1001B89B0);
      }

      v30 = type metadata accessor for Logger();
      sub_10000641C(v30, qword_1001BC6C0);
      v31 = v54;

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v57[0] = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_100004A3C(v53, v31, v57);
        _os_log_impl(&_mh_execute_header, v32, v33, "Not all assets in the bundle are eligible unentitled inference for: %s", v34, 0xCu);
        sub_100003324(v35);
        sub_100002BB8(v35);
LABEL_29:
        sub_100002BB8(v34);
      }

      goto LABEL_30;
    }
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v22 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v22);
    ++v21;
    if (v19)
    {
      v21 = v22;
      goto LABEL_10;
    }
  }

  v36 = 1 << *(v8 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v8 + 56);
  v39 = (v36 + 63) >> 6;

  v40 = 0;
  v41 = v52;
  do
  {
    if (!v38)
    {
      while (1)
      {
        v42 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_34;
        }

        if (v42 >= v39)
        {

          goto LABEL_32;
        }

        v38 = *(v16 + 8 * v42);
        ++v40;
        if (v38)
        {
          v40 = v42;
          goto LABEL_23;
        }
      }
    }

    v42 = v40;
LABEL_23:
    v43 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v44 = sub_100005D58(v43 | (v42 << 6));
    v46 = v45;
    sub_100009370(v44, v41, v45);
    v47 = *(v41 + *(v56 + 52));
    sub_1000125E8(v41, v46);
  }

  while (v47 != 1);

  if (v51)
  {
    goto LABEL_32;
  }

  if (qword_1001B89B0 != -1)
  {
    sub_100008724(&qword_1001B89B0);
  }

  v48 = type metadata accessor for Logger();
  sub_10000641C(v48, qword_1001BC6C0);
  v32 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v49))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v49, "Foundation models not available in region", v34, 2u);
    goto LABEL_29;
  }

LABEL_30:

LABEL_32:
  sub_100005874();
}

BOOL sub_100009A9C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_100009B78(uint64_t a1)
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_100009B94()
{
}

uint64_t sub_100009BE4()
{
}

uint64_t sub_100009C98(uint64_t a1, uint64_t a2)
{

  return StringProtocol.contains<A>(_:)(a1, a2, a2, v2, v2);
}

uint64_t sub_100009D14()
{
  sub_100003324(v0);
}

uint64_t sub_100009D70()
{
}

void sub_100009DDC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100009E64()
{

  return swift_dynamicCast();
}

uint64_t sub_100009EB0@<X0>(uint64_t a1@<X8>)
{

  return sub_1001419B0((a1 + 16), a1 + 32, v2, v1);
}

uint64_t sub_100009EE0()
{
}

uint64_t OSEligibilityChecking.isFoundationModelsEligible.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100118614;

  return v7(130, a1, a2);
}

uint64_t sub_10000A068()
{

  return swift_slowAlloc();
}

BOOL sub_10000A098()
{

  return os_log_type_enabled(v0, v1);
}

BOOL sub_10000A130(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  Hasher.init(_seed:)();
  sub_10002AB2C();
  String.hash(into:)();
  Hasher._finalize()();
  sub_100012A00();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (a3[6] + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_10000A220(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000A300(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  return result;
}

uint64_t sub_10000A350()
{
}

BOOL sub_10000A384()
{

  return os_log_type_enabled(v0, v1);
}

void sub_10000A39C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t sub_10000A3BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return sub_100004A3C(a1, a2, va);
}

uint64_t sub_10000A3F4()
{

  return swift_beginAccess();
}

uint64_t sub_10000A418()
{

  return swift_allocError();
}

uint64_t sub_10000A4F4(uint64_t a1, uint64_t a2)
{
  sub_10000641C(a1, a2);

  return Logger.logObject.getter();
}

uint64_t sub_10000A538()
{

  return sub_10000ED30(v0, v1, v2);
}

uint64_t sub_10000A5D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return 0;
}

BOOL sub_10000A668()
{
  v1 = 0x636F6C2F7273752FLL;
  v2 = 0xEF2F6E69622F6C61;

  return String.hasPrefix(_:)(*&v1);
}

uint64_t sub_10000A6F0(uint64_t a1)
{

  return sub_100009BFC(v1, v2, 1, a1);
}

uint64_t sub_10000A7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  result = a19;
  *(v22 - 140) = v21;
  *(v22 - 136) = v20;
  *(v22 - 152) = v19;
  return result;
}

uint64_t sub_10000A7DC()
{
  v3 = *(v1 - 116) & 1;
  v4 = *(v1 - 112);

  return sub_100029FE0(v4, v3, v0);
}

uint64_t sub_10000A93C@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  *v1 = v2;
  *(v1 + 8) = a1;
  *(v1 + 16) = v3;
  return result;
}

uint64_t sub_10000A950()
{
}

uint64_t sub_10000A9F8()
{

  return swift_beginAccess();
}

uint64_t sub_10000AA34()
{

  return OSSignpostIntervalState.signpostID.getter();
}

uint64_t sub_10000AA64()
{
  *(v1 + 376) = v0;

  return swift_errorRetain();
}

unint64_t sub_10000AA84()
{

  return sub_10002B0EC();
}

uint64_t sub_10000AAB4(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000AAD0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100006098();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10000AB2C()
{
  sub_100001ED0();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  v4[1] = sub_10001C260;

  return v7(v1);
}

uint64_t sub_10000AC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v23;
  a22 = v24;
  sub_100003284();
  a20 = v22;
  v25 = v22[8];
  v26 = AuditToken.processIdentifier.getter();
  ModelXPCRequest.CreateSessionRequest.metadata.getter();
  Session.Metadata.id.getter();
  v22[17] = *(v25 + 8);
  v22[18] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27 = sub_1000071D0();
  v28(v27);
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C(&qword_1001B8AE0);
  }

  v30 = v22[15];
  v29 = v22[16];
  v32 = v22[11];
  v31 = v22[12];
  v33 = type metadata accessor for Logger();
  v22[19] = sub_10000641C(v33, qword_1001BE400);
  v34 = *(v31 + 16);
  v22[20] = v34;
  v22[21] = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v34(v30, v29, v32);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  v37 = os_log_type_enabled(v35, v36);
  v38 = v22[15];
  v40 = v22[11];
  v39 = v22[12];
  if (v37)
  {
    v41 = swift_slowAlloc();
    a11 = sub_1000031E0();
    *v41 = 136315394;
    sub_100005070();
    sub_1000082D4(v42, v43, v44, v45);
    v56 = v26;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v49 = *(v39 + 8);
    v49(v38, v40);
    sub_100004A3C(v46, v48, &a11);
    sub_10001AFBC();
    *(v41 + 4) = v38;
    *(v41 + 12) = 1024;
    *(v41 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v35, v36, "XPC Handling createSessionRequest for client session %s from proceess %d", v41, 0x12u);
    sub_100003A7C();
    sub_100004B78();
  }

  else
  {

    v49 = *(v39 + 8);
    v49(v38, v40);
  }

  v22[22] = v49;
  v50 = v22[3];
  sub_10000A4C4(v50 + 2, v50[5]);
  v22[23] = *(v51 + 128);

  ModelXPCRequest.CreateSessionRequest.metadata.getter();
  ModelXPCRequest.CreateSessionRequest.alreadyLockedInferenceProvider.getter();
  v52 = v50[8];
  os_unfair_lock_lock((v52 + 24));
  sub_10000A130(0xD000000000000020, 0x8000000100178910, *(v52 + 16));
  os_unfair_lock_unlock((v52 + 24));
  v53 = swift_task_alloc();
  v22[24] = v53;
  *v53 = v22;
  v53[1] = sub_100045E88;
  sub_1000031B8(v22[9]);
  sub_100003540();

  return sub_100013FF4();
}

uint64_t sub_10000AF24()
{
  sub_100007B84();
  sub_100005EA4();
  v18 = *(v0 + 432);
  v1 = *(v0 + 264);
  v2 = type metadata accessor for URL();
  *(v0 + 440) = v2;
  sub_100002F44(v2);
  *(v0 + 448) = v3;
  *(v0 + 456) = *(v4 + 64);
  *(v0 + 464) = sub_100002C58();
  Session.Metadata.assetBundleURI.getter();
  v19 = Session.Metadata.useCaseID.getter();
  v6 = v5;
  *(v0 + 472) = v19;
  *(v0 + 480) = v5;
  v7 = Session.Metadata.onBehalfOfPID.getter();
  *(v0 + 636) = v7;
  Session.Metadata.id.getter();
  v8 = AuditToken.processIdentifier.getter();
  *(v0 + 640) = v8;
  v10 = v1[41];
  v9 = v1[42];
  sub_100003370(v1 + 38, v10);
  sub_100065020(&qword_1001B9090, &unk_100172C70);
  sub_1000119E4();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10016FF40;
  *(v11 + 32) = URL.absoluteString.getter();
  *(v11 + 40) = v12;
  *(v0 + 488) = (*(v9 + 56))(v11, v19, v6, v7, v8, 0, v18, v10);

  *(v0 + 496) = v1[43];
  sub_100003D04();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_10000B0C0()
{
  v48 = v0;
  v1 = sub_10000A130(*(v0 + 472), *(v0 + 480), *(v0 + 504));

  if (v1)
  {
    if (qword_1001B88F0 != -1)
    {
      sub_10000505C();
      swift_once();
    }

    v2 = *(v0 + 480);
    v3 = type metadata accessor for Logger();
    sub_10000641C(v3, qword_1001B9A18);
    v4 = sub_1000062B0();
    v5(v4);

    v6 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100019920();

    if (sub_10000A384())
    {
      v43 = *(v0 + 640);
      v44 = *(v0 + 472);
      v45 = *(v0 + 480);
      v7 = *(v0 + 408);
      swift_slowAlloc();
      v47[0] = sub_1000062D8();
      *v2 = 136315650;
      sub_100005070();
      sub_10001B27C(v8, v9, v10);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      v14 = sub_100004CB0();
      v46 = v15;
      (v15)(v14);
      sub_100004A3C(v11, v13, v47);
      sub_100019498();

      *(v2 + 4) = v7;
      *(v2 + 12) = 1024;
      *(v2 + 14) = v43;
      *(v2 + 18) = 2080;
      *(v2 + 20) = sub_100004A3C(v44, v45, v47);
      sub_1000033FC();
      _os_log_impl(v16, v17, v18, v19, v20, 0x1Cu);
      swift_arrayDestroy();
      sub_1000039CC();

      sub_100002BD0();
    }

    else
    {

      v24 = sub_100007660();
      v46 = v25;
      (v25)(v24);
    }

    v27 = *(v0 + 480);
    v26 = *(v0 + 488);
    v29 = *(v0 + 464);
    v28 = *(v0 + 472);
    v30 = *(v0 + 448);
    v31 = *(v0 + 432);
    v42 = *(v0 + 440);
    v41 = *(v0 + 392);
    v32 = *(v0 + 264);
    v33 = v32[41];
    v34 = v32[42];
    sub_100003370(v32 + 38, v33);
    (*(v34 + 64))(v31, 1, 1, v26, v33, v34);
    type metadata accessor for ModelManagerError();
    sub_100005C00();
    sub_100015F10(v35, 255, v36);
    sub_100008194();
    *v37 = v28;
    v37[1] = v27;
    sub_1000038AC();
    (*(v38 + 104))();
    swift_willThrow();

    v46(v31, v41);
    (*(v30 + 8))(v29, v42);

    sub_100001F00();
    sub_10000D138();

    __asm { BRAA            X1, X16 }
  }

  sub_10000D070(*(v0 + 264));
  v21 = swift_task_alloc();
  *(v0 + 512) = v21;
  *v21 = v0;
  v21[1] = sub_1000154D8;
  sub_10000D138();

  return sub_1000153F0();
}

uint64_t sub_10000B54C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = *(v0 + 88);
  *(v0 + 80) = v5;
  v6 = OBJC_IVAR____TtC13modelmanagerd20RunningBoardProvider__monitoredPids;
  swift_beginAccess();
  CountedSet.add(_:)();
  swift_endAccess();
  (*(v2 + 16))(v1, v4 + v6, v3);
  *(v0 + 84) = v5;
  v7 = CountedSet.count(of:)();
  (*(v2 + 8))(v1, v3);
  if (v7 == 1)
  {
    v8 = type metadata accessor for TaskPriority();
    sub_100007098(v8);
    sub_10000870C();
    sub_10000E784(v9, v10, &unk_1001728F8);
    v11 = swift_allocObject();
    sub_10000EEE0(v11);
    sub_1000186A4();
  }

  sub_100001F00();

  return v12();
}

uint64_t sub_10000B6E4()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[33];
  v5 = v0[30];
  v6 = *(v3 + 16);
  v0[65] = v6;
  v0[66] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);
  v7 = sub_100007660();
  v8(v7);
  v0[67] = v4[37];
  sub_100007130((v4 + 22), (v0 + 2));
  sub_100007130((v4 + 27), (v0 + 7));
  sub_100003370(v4 + 52, v4[55]);

  v9 = swift_task_alloc();
  v0[68] = v9;
  *v9 = v0;
  sub_100004B28(v9);
  sub_1000060A4();
  sub_100003D20();

  return OSEligibilityChecking.isFoundationModelsEligible.getter(v10, v11);
}

uint64_t sub_10000B80C()
{
  v60 = v0;
  if (sub_10000E8DC(_swiftEmptyArrayStorage))
  {
    sub_10006622C(_swiftEmptyArrayStorage);
    v55 = v1;
  }

  else
  {
    v55 = &_swiftEmptySetSingleton;
  }

  v54 = *(v0 + 647);
  v52 = *(v0 + 536);
  v2 = *(v0 + 368);
  v46 = *(v0 + 360);
  v47 = *(v0 + 384);
  v48 = *(v0 + 344);
  v3 = *(v0 + 328);
  v49 = *(v0 + 336);
  v50 = *(v0 + 352);
  v4 = *(v0 + 320);
  v45 = *(v0 + 288);
  v53 = *(v0 + 646);
  v56 = *(v0 + 256);
  v57 = *(v0 + 280);
  sub_100016494(v0 + 16, *(v0 + 40));
  sub_100004F60();
  v6 = v5;
  v51 = sub_100002C58();
  (*(v6 + 16))();
  v7 = *v51;
  v8 = type metadata accessor for ModelCatalogProvider(0);
  *(v0 + 120) = v8;
  *(v0 + 128) = &off_1001B2060;
  *(v0 + 96) = v7;
  type metadata accessor for DaemonSession(0);
  v9 = swift_allocObject();
  *(v0 + 552) = v9;
  v10 = sub_100016494(v0 + 96, v8);
  sub_100004F60();
  v12 = v11;
  v13 = sub_100002C58();
  (*(v12 + 16))(v13, v10, v8);
  v14 = *v13;
  *(v0 + 160) = v8;
  *(v0 + 168) = &off_1001B2060;
  *(v0 + 136) = v14;
  v15 = OBJC_IVAR____TtC13modelmanagerd13DaemonSession__lazyState;
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_100003978();
  sub_100009BFC(v16, v17, v18, v45);
  *(v3 + *(v4 + 28)) = 0;
  *(v3 + *(v4 + 32)) = 0;
  v19 = sub_100065020(&qword_1001B9C58, &qword_1001706B0);
  v20 = sub_1000184E0(v19);
  sub_100005FF8(v20, *(*v20 + 48));
  sub_100031660();
  v22 = v21;
  sub_10000C050(v3, v23 + v24);
  sub_10000AAD0(v3, v22);
  *(v9 + v15) = v20;
  (*(v2 + 32))(v9 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata, v47, v46);
  (*(v48 + 32))(v9 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_auditToken, v50, v49);
  *(v9 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_requestManager) = v52;
  sub_100004A04((v0 + 136), v9 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_modelCatalog);
  sub_100004A04((v0 + 56), v9 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_sysctl);
  v25 = v9 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_unsafeManagerOwnedState;
  *v25 = 0;
  *(v25 + 8) = v55;
  *(v25 + 16) = 0;
  *(v9 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_isFoundationModelsEligible) = v54;
  *(v9 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_isUnentitled) = v53;
  sub_100003324((v0 + 96));

  sub_100003324((v0 + 16));

  sub_100012EA4(v56, v57, &qword_1001B9CD0, &qword_100170778);
  if (sub_10000C6C0(v57, 1, v45) == 1)
  {
    sub_10001301C(*(v0 + 280), &qword_1001B9CD0);
  }

  else
  {
    (*(*(v0 + 296) + 32))(*(v0 + 312), *(v0 + 280), *(v0 + 288));
    sub_10005AEB0();
    v26 = sub_100003754();
    v27(v26);
  }

  v28 = *(v0 + 636);
  v29 = *(v0 + 264);
  v58 = *(v0 + 240);
  sub_100004B50(v29 + 112, v0 + 216);

  sub_1000160BC(v59, v9);
  swift_endAccess();

  v59[0] = 0;
  v59[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  strcpy(v59, "Get Process ");
  BYTE5(v59[1]) = 0;
  HIWORD(v59[1]) = -5120;
  *(v0 + 632) = v28;
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  v31._countAndFlagsBits = 0x7469726F69725020;
  v31._object = 0xEE006B7361542079;
  String.append(_:)(v31);
  type metadata accessor for TaskPriority();
  sub_100003978();
  sub_100009BFC(v32, v33, v34, v35);
  sub_100011344();
  v39 = sub_100015F10(v36, v37, v38);
  v40 = swift_allocObject();
  *(v40 + 16) = v29;
  *(v40 + 24) = v39;
  *(v40 + 32) = v29;
  *(v40 + 40) = v28;
  swift_retain_n();
  sub_100007B78();
  sub_10006574C();
  *(v0 + 560) = v41;
  sub_100007130(v29 + 176, v0 + 176);
  v42 = swift_task_alloc();
  *(v0 + 568) = v42;
  v42[2] = v29;
  v42[3] = v58;
  v42[4] = v0 + 176;
  v42[5] = v9;
  v43 = swift_task_alloc();
  *(v0 + 576) = v43;
  *v43 = v0;
  v43[1] = sub_10002281C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10000BEC8(void x0_0, void x1_0, void x2_0, uint64_t a1, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return swift_dynamicCast();
}

uint64_t sub_10000BEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

uint64_t sub_10000BF7C(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_10000BF98()
{

  return swift_task_alloc();
}

uint64_t sub_10000C00C()
{

  return swift_beginAccess();
}

uint64_t sub_10000C050(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005B00();
  v4(v3);
  sub_100006098();
  v5 = sub_1000062B0();
  v6(v5);
  return a2;
}

char *sub_10000C0AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100065020(&qword_1001B9070, &qword_10016FCE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10000C1CC()
{
}

uint64_t sub_10000C1F0(uint64_t a1)
{

  return sub_10000C6C0(a1, 1, v1);
}

uint64_t sub_10000C208()
{
}

void sub_10000C228(uint64_t a1)
{
  String.hash(into:)();
  sub_10000D234(a1, v1[2]);
  sub_10000D16C(a1, v1[3]);
  sub_10000D16C(a1, v1[4]);
  v3 = type metadata accessor for ModelCatalogAsset(0);
  type metadata accessor for AssetCost();
  sub_10000D50C(&qword_1001BAB08, &type metadata accessor for AssetCost, &protocol conformance descriptor for AssetCost);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v3[9]));
  Hasher._combine(_:)(*(v1 + v3[10]));
  Hasher._combine(_:)(*(v1 + v3[11]));
  Hasher._combine(_:)(*(v1 + v3[12]));
  Hasher._combine(_:)(*(v1 + v3[13]));
  sub_10000D234(a1, *(v1 + v3[14]));
  Hasher._combine(_:)(*(v1 + v3[15]));
}

char *sub_10000C348(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100065020(a3, a4);
  v8 = a5(0);
  sub_100002F44(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v10)
  {
    if (&result[-v12] != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * (&result[-v12] / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000C43C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005B00();
  v4(v3);
  sub_100002C00();
  v5 = sub_1000062B0();
  v6(v5);
  return a2;
}

char *sub_10000C494(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_10000C5AC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10000C5AC(uint64_t a1, uint64_t a2)
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

  sub_100065020(&qword_1001B9070, &qword_10016FCE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_10000C698()
{
  *(v1 + 96) = *(v0 + 112);
}

uint64_t sub_10000C6E8()
{
}

uint64_t sub_10000C700()
{

  return swift_allocError();
}

uint64_t sub_10000C790(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100065020(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000C7F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005F38(a1, a2);
  sub_100065020(v3, v4);
  sub_100002C00();
  (*(v5 + 8))(a1);
  return a1;
}

char *sub_10000C844(char *result, int64_t a2, char a3, char *a4)
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
    sub_100065020(&qword_1001B90C8, &unk_10016FD40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000C958(char *a1, int64_t a2, char a3)
{
  result = sub_10000C844(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10000C998()
{
}

uint64_t sub_10000C9B4()
{
}

char *sub_10000CA10(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (!result || v5 > *(v3 + 3) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_10000C0AC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 2))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_10000CAF4(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000C494(a1, a2);
  sub_10000CA10(&off_1001AFDE0);
  return v3;
}

unint64_t sub_10000CB58(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_100004A3C(a1, a2, va);
}

uint64_t sub_10000CB84()
{
  sub_100003324((v0 + 16));
}

uint64_t sub_10000CBE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100065020(a3, a4);
}

uint64_t sub_10000CC88()
{
  v3 = *(v0 + 224) + v1;
  v4 = *(v0 + 408);

  return sub_10001938C(v3, v4);
}

uint64_t sub_10000CCCC()
{
  *(v0 + 96) = *(v0 + 368);

  return swift_errorRetain();
}

uint64_t sub_10000CD00()
{
}

void sub_10000CD44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t sub_10000CD70(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000CDB0()
{
  v3 = v0[46];
  *(v1 - 104) = v0[45];
  *(v1 - 96) = v3;
  *(v1 - 112) = v0[36];

  return swift_slowAlloc();
}

void sub_10000CDEC(uint64_t a1@<X8>)
{
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v1;
}

uint64_t sub_10000CDF8(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t sub_10000CE38()
{

  return sub_100056B00();
}

uint64_t sub_10000CE64(uint64_t a1)
{

  return Set.Iterator.init(_cocoa:)();
}

void sub_10000CEA8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t sub_10000CEC8(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_10015D12C();
}

uint64_t sub_10000CEE0()
{
  *(v0 + 336) = *(v2 + 16);
  *(v0 + 344) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

void sub_10000CF1C()
{

  sub_1000652FC();
}

uint64_t sub_10000CF50()
{

  return dispatch thunk of RawRepresentable.rawValue.getter();
}

unint64_t sub_10000CF80(uint64_t a1)
{

  return sub_100004A3C(a1, v1, (v2 - 88));
}

uint64_t sub_10000CF98()
{
  *(v1 + 440) = v0;

  return swift_retain_n();
}

void sub_10000CFBC()
{
}

uint64_t sub_10000CFF4()
{
}

void *sub_10000D070@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 152);

  return sub_100003370((a1 + 128), v2);
}

uint64_t sub_10000D088(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return type metadata accessor for ModelManagerError();
}

void sub_10000D0AC(__n128 a1)
{
  *(v1 + 40) = a1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 1;
}

uint64_t sub_10000D0CC()
{
}

void sub_10000D104(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_log_type_t a11)
{

  _os_log_impl(a1, v11, a11, a4, v12, 0xCu);
}

void sub_10000D16C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 64);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      String.hash(into:)();
      if (v5)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(v6);

      v4 += 40;
      --v3;
    }

    while (v3);
  }
}

void sub_10000D234(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 40;
    do
    {

      String.hash(into:)();

      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_10000D2AC(uint64_t a1)
{
  v2 = sub_10002A104();
  v3(v2);
  sub_100002C00();
  (*(v4 + 8))(v1);
  return v1;
}

uint64_t sub_10000D300(uint64_t a1)
{
  v2 = sub_10002A104();
  v3(v2);
  sub_100002C00();
  (*(v4 + 8))(v1);
  return v1;
}

void sub_10000D368()
{
  sub_10001139C();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for AssetCost();
    v5 = sub_100002CE0(*(v4 + 32));

    sub_100009BFC(v5, v6, v0, v7);
  }
}

uint64_t sub_10000D3EC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100005C60();
  }

  type metadata accessor for AssetCost();
  v5 = sub_100002CE0(*(a3 + 32));

  return sub_10000C6C0(v5, v6, v7);
}

uint64_t sub_10000D460()
{
  v1 = sub_10000C1A0();
  v2(v1);
  sub_100002C00();
  v3 = sub_1000062B0();
  v4(v3);
  return v0;
}

uint64_t sub_10000D4B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005B00();
  v4(v3);
  sub_100002C00();
  v5 = sub_1000062B0();
  v6(v5);
  return a2;
}

uint64_t sub_10000D50C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000D598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return sub_100004A3C(v18, v19, va);
}

uint64_t sub_10000D5C4()
{
}

void sub_10000D5DC(void *a1, void *a2)
{
  sub_100065020(&dword_1001BA4A8, &qword_100171010);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100170BC0;
  *(v4 + 32) = a2;
  sub_10000E2C0(0, &qword_1001BC0C0, RBSProcessPredicate_ptr);
  v5 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setPredicates:isa];

  if (qword_1001B8968 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000641C(v7, qword_1001BBF20);
  v8 = v5;
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v8;
    *v11 = v8;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, oslog, v9, "New Predicate: %@", v10, 0xCu);
    sub_10000ED30(v11, &qword_1001B8F68, &qword_10016FB80);
  }
}

uint64_t sub_10000D7E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_10000D838(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10000D7B4;
  *(v5 + 24) = v4;
  v9[4] = sub_10000D7BC;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000D7E4;
  v9[3] = &unk_1001B1958;
  v6 = _Block_copy(v9);
  v7 = a2;

  [a1 updateConfiguration:v6];
  _Block_release(v6);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000D990()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DA10(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = sub_100065020(a1, a2);
  sub_100002F04(v4);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(v6, v7, v8);
}

uint64_t sub_10000DA80(void (*a1)(void))
{
  a1();
  sub_100065020(&qword_1001B90F8, &qword_10016FD70);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10000DACC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DADC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DAEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DAFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DB0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DB1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DB2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DB48()
{
  sub_100001ED0();
  v1 = swift_task_alloc();
  sub_100012AE8(v1);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_10001C820;
  sub_10000895C();

  return withCheckedContinuation<A>(isolation:function:_:)(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10000DC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10000DB48, 0, 0);
}

id sub_10000DC4C(uint64_t a1)
{
  sub_10000E2C0(0, &qword_1001B9488, RBSProcessIdentifier_ptr);
  sub_10000DEE4();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v2 = [swift_getObjCClassFromMetadata() predicateMatchingIdentifiers:isa];

  return v2;
}

uint64_t sub_10000DCDC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_10000E094();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_10007F978(v7, result + 1);
        v17 = v16[2];
        if (v16[3] <= v17)
        {
          sub_1000834A4(v17 + 1);
        }

        v18 = v8;
        sub_10008376C(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_10000E094();
    v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v18 = a2;
        sub_10000DF4C(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v23;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v20 = *(*(v6 + 48) + 8 * v13);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  return result;
}

unint64_t sub_10000DEE4()
{
  result = qword_1001B9490;
  if (!qword_1001B9490)
  {
    sub_10000E2C0(255, &qword_1001B9488, RBSProcessIdentifier_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9490);
  }

  return result;
}

unint64_t sub_10000DF4C(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000834A4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_10008A218(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_10000E094();
        v14 = *(*(v12 + 48) + 8 * a2);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_100086BA0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

unint64_t sub_10000E094()
{
  result = qword_1001B9488;
  if (!qword_1001B9488)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001B9488);
  }

  return result;
}

void sub_10000E0D8(uint64_t a1)
{
  sub_10000E8DC(a1);
  sub_10000E094();
  sub_10000814C(&qword_1001B9490, sub_10000E094, &protocol conformance descriptor for NSObject);
  sub_100012484();
  v5[1] = Set.init(minimumCapacity:)();
  v2 = sub_10000E8DC(a1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_10000DCDC(v5, v4);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_10000E1F0(uint64_t a1, uint64_t a2)
{
  v2[10] = a2;
  v4 = sub_100065020(&qword_1001BC0B0, &qword_100172970);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10000E300, a2, 0);
}

uint64_t sub_10000E2C0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000E300()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = OBJC_IVAR____TtC13modelmanagerd20RunningBoardProvider__monitoredPids;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  sub_1000082D4(&qword_1001BC0B8, &qword_1001BC0B0, &qword_100172970, &protocol conformance descriptor for CountedSet<A>);
  dispatch thunk of Sequence.makeIterator()();
  while (1)
  {
    result = v0[2];
    v7 = v0[6];
    if (!v7)
    {
      break;
    }

    v8 = v0[5];
LABEL_8:
    v10 = *(*(result + 48) + ((v8 << 8) | (4 * __clz(__rbit64(v7)))));
    v0[5] = v8;
    v0[6] = (v7 - 1) & v7;
    if ([objc_opt_self() identifierWithPid:v10])
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      if (qword_1001B8968 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100002FD0(v11, qword_1001BBF20);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = sub_100003788();
        *v14 = 67109120;
        *(v14 + 4) = v10;
        _os_log_impl(&_mh_execute_header, v12, v13, "Could not get RBSProcessIdentifier for %d", v14, 8u);
        sub_100002BB8(v14);
      }
    }
  }

  v9 = v0[5];
  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= ((v0[4] + 64) >> 6))
    {
      break;
    }

    v7 = *(v0[3] + 8 * v8);
    ++v9;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  v15 = v0[10];
  sub_100007F18(result);
  sub_10000E2C0(0, &qword_1001BC0C0, RBSProcessPredicate_ptr);
  sub_10000E0D8(_swiftEmptyArrayStorage);
  v17 = sub_10000DC4C(v16);
  v0[14] = v17;
  v18 = *(v15 + 112);
  v19 = swift_allocObject();
  v0[15] = v19;
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v20 = v18;
  v21 = v17;
  v22 = swift_task_alloc();
  v0[16] = v22;
  *v22 = v0;
  v22[1] = sub_10001C91C;

  return sub_10000DC28(sub_10000DC28, sub_10000DA08, v19);
}

uint64_t sub_10000E67C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E6BC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000E76C()
{

  return type metadata accessor for ModelManagerError();
}

uint64_t sub_10000E784(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000E7CC()
{
  sub_100001ED0();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  v4[1] = sub_10006F558;

  return sub_10000E1F0(v2, v0);
}

uint64_t sub_10000E884()
{

  return dispatch thunk of RawRepresentable.rawValue.getter();
}

uint64_t sub_10000E89C(float a1)
{
  *v1 = a1;

  return type metadata accessor for InferenceProviderAsset(0);
}

uint64_t sub_10000E8E4()
{
  sub_100003884();
  sub_100009DFC();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_10000A2E0(v1);

  return sub_10000E978(v3, v4, v5, v6, v7);
}

uint64_t sub_10000E978(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 32) = a4;
  return _swift_task_switch(sub_10000E99C, a5, 0);
}

uint64_t sub_10000E99C()
{
  sub_100001ED0();
  if (qword_1001B8968 != -1)
  {
    sub_100005224(&qword_1001B8968);
  }

  v1 = type metadata accessor for Logger();
  sub_100002FD0(v1, qword_1001BBF20);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100002F80(v3))
  {
    v4 = sub_100003788();
    sub_10000A300(v4, 1.5047e-36);
    sub_100002DA4(&_mh_execute_header, v5, v6, "Started monitoring: %d");
    sub_100002F64();
  }

  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_10001CB98;

  return sub_10000EAAC();
}

uint64_t sub_10000EAC8()
{
  sub_100001ED0();

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = sub_100065020(&qword_1001BC0A8, &qword_100172968);
  *v1 = v0;
  v1[1] = sub_10001CA9C;

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v2, 0xD000000000000019, 0x8000000100177310);
}

uint64_t sub_10000EBF0()
{
  sub_100001ED0();
  sub_100004B10();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_100004F40(v1);

  return v4(v3);
}

uint64_t sub_10000EC80()
{
  *(v1 + 145) = (v0 & 1) == 0;
}

uint64_t sub_10000ECA0()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_10000ECC0()
{
}

uint64_t sub_10000ECD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100065020(a2, a3);
  sub_100002C00();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10000ED30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100065020(a2, a3);
  sub_1000055EC();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10000ED84(uint64_t a1, uint64_t a2)
{
  v3 = sub_100011D90(a1, a2);
  sub_100065020(v3, v4);
  sub_100002C00();
  (*(v5 + 8))(v2);
  return v2;
}

void sub_10000EDF4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10000EE54(uint64_t a1)
{
  v5 = *(a1 + 56) + 40 * (__clz(__rbit64(v2)) | (v1 << 6));

  return sub_1000480AC(v5, v3 + 168);
}

void sub_10000EEC0(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

uint64_t sub_10000EEE0(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + 40) = v1;

  return swift_retain_n();
}

void sub_10000EF08(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2;
  *(v1 + 8) = 2080;
}

uint64_t sub_10000EFE0(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100065020(a1, a2);
  sub_100002BDC();
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 32) & ~v6;
  v9 = *(v8 + 64);

  (*(v5 + 8))(v2 + v7, v3);

  return _swift_deallocObject(v2, v7 + v9, v6 | 7);
}

void sub_10000F094()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

uint64_t sub_10000F0A4()
{

  return swift_arrayDestroy();
}

uint64_t sub_10000F0C0()
{

  return swift_task_alloc();
}

void sub_10000F160(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4)
{
  v8 = *(v6 - 120);
  v9 = *(v6 - 104);
  v10 = *(v6 - 136);

  _os_signpost_emit_with_name_impl(a1, v5, v8, a4, v9, v10, v4, 0x16u);
}

uint64_t sub_10000F1A8(uint64_t a1)
{
}

uint64_t sub_10000F1E0(uint64_t a1, uint64_t a2)
{

  return swift_dynamicCast();
}

uint64_t sub_10000F278()
{
  v193 = v0;
  if (qword_1001B8A78 != -1)
  {
    sub_10000877C(&qword_1001B8A78);
  }

  v2 = type metadata accessor for Logger();
  *(v0 + 360) = sub_100002FD0(v2, qword_1001BCD78);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = &OBJC_IVAR____TtC13modelmanagerd13PolicyManager_allowList;
  v6 = &OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  if (os_log_type_enabled(v3, v4))
  {
    v7 = *(v0 + 264);
    v8 = sub_100007698();
    *v8 = 134217984;
    v9 = v7 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
    sub_100004BA0(v9, v0 + 160);
    *(v8 + 4) = *(v9 + *(_s6PolicyVMa_0(0) + 28));
    sub_100003DD0();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_100002F64();
  }

  v15 = *(v0 + 264);
  v16 = type metadata accessor for Date();
  *(v0 + 368) = v16;
  sub_100002F44(v16);
  *(v0 + 376) = v17;
  *(v0 + 384) = *(v18 + 64);
  *(v0 + 392) = swift_task_alloc();
  static Date.now.getter();
  *(v0 + 248) = &_swiftEmptySetSingleton;
  v19 = swift_task_alloc();
  v20 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  *(v0 + 400) = v19;
  *(v0 + 408) = v20;
  sub_100004BA0(v15 + v20, v0 + 16);
  *(v0 + 416) = _s6PolicyVMa_0(0);
  static Date.- infix(_:_:)();
  v21 = sub_100010EB0();
  v22 = swift_task_alloc();
  *(v22 + 16) = v19;
  v23 = sub_10002B370(v15, sub_10002B910, v22, v21);

  sub_10002B918(v23);
  sub_10002B524();
  v25 = v24;
  *(v0 + 424) = v24;

  if (v25 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (v26)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
LABEL_7:
      *(v0 + 488) = enum case for LoadState.loaded(_:);
      v27 = __OFSUB__(v26, 1);
      v28 = v26 - 1;
      *(v0 + 432) = v28;
      if (!v27)
      {
        v29 = *(v0 + 424);
        if ((v29 & 0xC000000000000001) != 0)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_13;
        }

        if ((v28 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v28 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v30 = *(v29 + 8 * v28 + 32);

LABEL_13:
          sub_10000CF98();
          swift_retain_n();
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.default.getter();

          log = v31;
          if (os_log_type_enabled(v31, v32))
          {
            v183 = *(v0 + 336);
            v187 = *(v0 + 272);
            v33 = swift_slowAlloc();
            v189 = sub_1000031E0();
            v192[0] = v189;
            *v33 = 136315650;

            *(v0 + 216) = InferenceProviderAssetDescriptor.description.getter();
            *(v0 + 224) = v34;

            v35._countAndFlagsBits = 8250;
            v35._object = 0xE200000000000000;
            String.append(_:)(v35);

            v185 = v32;
            v36 = *(v0 + 216);
            v37 = *(v0 + 224);
            v39 = *(v30 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
            v38 = *(v30 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
            sub_100003370((v30 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v39);
            v40 = sub_100012588();
            v41(v40);
            InferenceProviderDescriptor.description.getter();
            v42 = sub_10000CE94();
            v43(v42, v183);
            *(v0 + 232) = v36;
            *(v0 + 240) = v37;

            v44._countAndFlagsBits = v38;
            v44._object = v39;
            String.append(_:)(v44);

            v45 = sub_100004A3C(*(v0 + 232), *(v0 + 240), v192);

            *(v33 + 4) = v45;
            *(v33 + 12) = 1024;
            v46 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v30;
            sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v30, v0 + 136);
            LODWORD(v46) = v46[*(v187 + 56)];

            *(v33 + 14) = v46;

            sub_10002ABB4();
            *(v33 + 20) = v46;

            _os_log_impl(&_mh_execute_header, log, v185, "Transitioning asset %s with update available %{BOOL}d and dynamic mode %{BOOL}d", v33, 0x18u);
            sub_100003324(v189);
            sub_100002F64();
            sub_100002BB8(v33);
          }

          else
          {
          }

          v47 = *(v0 + 272);
          v48 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          *(v0 + 448) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          v49 = &v48[v30];
          sub_100004BA0(&v48[v30], v0 + 40);
          if (v49[*(v47 + 56)] == 1)
          {
            type metadata accessor for AuditToken();
            sub_100003978();
            sub_100009BFC(v50, v51, v52, v53);
            v54 = swift_task_alloc();
            *(v0 + 456) = v54;
            *v54 = v0;
            sub_100007B00(v54);
          }

          else
          {
            if (*(v30 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed) == 1)
            {
              v55 = swift_task_alloc();
              *(v0 + 464) = v55;
              *v55 = v0;
              v55[1] = sub_100053C74;
              sub_100003C58();
              sub_100019CAC();

              return sub_1000486EC();
            }

            type metadata accessor for AuditToken();
            sub_100003978();
            sub_100009BFC(v58, v59, v60, v61);
            v62 = swift_task_alloc();
            *(v0 + 472) = v62;
            *v62 = v0;
            sub_100007EB0(v62);
          }

          sub_100003C58();
          sub_100019CAC();

          return sub_10002BA5C();
        }

        __break(1u);
LABEL_48:
        v105 = v6;
        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.fault.getter();
        if (sub_100006168(v107))
        {
          v108 = sub_100007698();
          v109 = sub_1000031E0();
          v192[0] = v109;
          *v108 = 136315138;
          type metadata accessor for InferenceProviderAsset(0);
          sub_100002E08();
          sub_10002C7C4(v110, v111, &unk_1001720DC);

          v112 = Set.description.getter();
          v114 = v113;

          v115 = sub_100004A3C(v112, v114, v192);

          *(v108 + 4) = v115;
          sub_100007CF4(&_mh_execute_header, v116, v117, "All remaining assets that need transitioning have failed to unload or move to dynamic, %s");
          sub_100003324(v109);
          sub_100012A9C();
          sub_100002F64();
        }

        v118 = *(v0 + 392);
        v120 = *(v0 + 368);
        v119 = *(v0 + 376);
        type metadata accessor for ModelManagerError();
        sub_10000528C();
        sub_10002C7C4(v121, v122, &protocol conformance descriptor for ModelManagerError);
        sub_100008194();
        sub_100006098();
        (*(v123 + 104))();
        swift_willThrow();

        v1 = *(v119 + 8);
        v1(v118, v120);
        goto LABEL_56;
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  v25 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  v65 = sub_100002F80(v64);
  v23 = *(v0 + 424);
  if (v65)
  {
    v66 = sub_100007648();
    *v66 = 0;

    sub_100010C24(&_mh_execute_header, v67, v68, "Finished transitioning assets");
    sub_100002BB8(v66);
    goto LABEL_31;
  }

LABEL_30:

LABEL_31:

  if (sub_100019684())
  {

    v69 = swift_task_alloc();
    *(v0 + 480) = v69;
    sub_100065020(&qword_1001BB430, &qword_100171E18);
    *v69 = v0;
    sub_100019AF4();
    v194 = &protocol witness table for Never;
    sub_1000058D8(&type metadata for Never);
    sub_100019CAC();

    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v70, v71, v72);
  }

  v73 = sub_100010EB0();
  v74 = v73;
  if (v73 >> 62)
  {
    goto LABEL_63;
  }

  if (!*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_64:

    Logger.logObject.getter();
    v162 = static os_log_type_t.default.getter();
    if (sub_100002F80(v162))
    {
      v163 = sub_100007648();
      sub_10000A240(v163);
      sub_100003DD0();
      _os_log_impl(v164, v165, v166, v167, v168, 2u);
      sub_100002F64();
    }

    sub_100003630();
    v169 = sub_100006348();
    (v1)(v169);
    sub_100003978();
    sub_100009BFC(v170, v171, v172, v23);
LABEL_67:
    v173 = sub_100006588();
    (v1)(v173);

    sub_100001F00();
    goto LABEL_68;
  }

LABEL_37:
  sub_10002CC90(v74);

  sub_100019274();
  v78 = sub_10002D264(v75, v76, v77);
  v6 = v79;

  v80 = v6[2];
  if (!v80)
  {
    goto LABEL_48;
  }

  v81 = *(v0 + 368);
  v74 = *(v0 + 376);
  v82 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v82);
  v178 = *(v83 + 64) + 15;
  v181 = swift_task_alloc();
  sub_100003978();
  sub_100009BFC(v84, v85, v86, v81);
  v184 = (v74 + 16);
  v87 = (v74 + 8);
  v180 = v78;

  v23 = 0;
  v186 = (v74 + 8);
  v182 = v6;
  while (1)
  {
    if (v23 >= v80)
    {
      __break(1u);
LABEL_63:
      if (!sub_10001890C())
      {
        goto LABEL_64;
      }

      goto LABEL_37;
    }

    v88 = *(v0 + 368);
    v89 = *(v0 + 280);
    v90 = v6[v23 + 4];
    v188 = swift_task_alloc();
    v91 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v90, v0 + 64);
    sub_10001938C(v91 + v90, v89);
    swift_task_alloc();
    sub_10000AA84();

    v92 = sub_100018A64();
    v74 = *v184;
    v93 = (v92 & 1) != 0 ? v87 : v6;
    (v74)(v91, v93, v88);
    sub_1000193F0(v89);
    static Date.+ infix(_:_:)();
    v87 = v186;
    v1 = *v186;
    v94 = sub_10000CDA4();
    (v1)(v94);

    v95 = static Date.> infix(_:_:)();

    if (v95)
    {
      break;
    }

    ++v23;
    v1(v188, *(v0 + 368));

    v6 = v182;
    v80 = v182[2];
    if (v23 == v80)
    {

      v96 = v182;

      goto LABEL_52;
    }
  }

  v124 = *(v0 + 368);
  v125 = *(v0 + 376);

  v96 = v182;

  sub_10002C278(v181, &qword_1001BBA80, &qword_100172440);
  (*(v125 + 32))(v181, v188, v124);
  sub_1000070D0(v181);

LABEL_52:
  v126 = *(v0 + 368);
  v127 = sub_100005FA4(v97, v98, v99, v100, v101, v102, v103, v104, v176, v178);
  sub_10002CC20(v181, v127);
  sub_100007204();
  sub_10002C278(v127, &qword_1001BBA80, &qword_100172440);

  if (v126 != 1)
  {
    sub_1000082B4();
    sub_100003904();
    (v74)();
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = *(v0 + 368);
      v142 = sub_100007698();
      *v142 = 134217984;
      v143 = sub_100004BA0(v181, v0 + 112);
      v151 = sub_100005FA4(v143, v144, v145, v146, v147, v148, v149, v150, v177, v179);
      sub_10002CC20(v181, v151);
      v152 = sub_10000205C();
      v70 = sub_10000C6C0(v152, v153, v141);
      if (v70 == 1)
      {
        __break(1u);
        return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v70, v71, v72);
      }

      loga = *(v0 + 392);
      v154 = *(v0 + 368);
      Date.timeIntervalSince(_:)();
      v156 = v155;
      v1(v127, v154);
      v157 = sub_100001F70();
      (v1)(v157);

      *(v142 + 4) = v156;
      sub_1000080F4(&_mh_execute_header, v158, v140, "Additional assets need transitioning, next task wake in %f seconds");
      sub_100002BB8(v142);

      v1(loga, v154);
    }

    else
    {
      v159 = *(v0 + 368);

      v1(v127, v159);
      v160 = sub_100001F70();
      (v1)(v160);
    }

    v161 = *(v0 + 256);
    sub_100004BA0(v181, v0 + 88);
    sub_10002CC20(v181, v161);
    sub_10002C278(v181, &qword_1001BBA80, &qword_100172440);

    goto LABEL_67;
  }

  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v128, v129))
  {
    v5 = sub_100007698();
    v130 = sub_1000031E0();
    v192[0] = v130;
    *v5 = 136315138;
    v131 = sub_1001196B4(v180, v96);
    v133 = sub_100004A3C(v131, v132, v192);

    *(v5 + 1) = v133;
    sub_1000034C8(&_mh_execute_header, v134, v135, "Remaining transition candidates %s generated task wake times in the past.  Ending asset transition task");
    sub_100003324(v130);
    sub_100002BB8(v130);
    sub_100012A9C();
  }

  v105 = sub_1000076D8();
  sub_10000528C();
  sub_10002C7C4(v136, v137, &protocol conformance descriptor for ModelManagerError);
  sub_10000A418();
  sub_100006098();
  (*(v138 + 104))();
  swift_willThrow();

  v1(v5, v90);
  sub_10002C278(v181, &qword_1001BBA80, &qword_100172440);

LABEL_56:
  sub_100012894();
  (v1)(v105);

  sub_100001F00();
LABEL_68:
  sub_100019CAC();

  return v174();
}

void sub_100010338()
{
  sub_1000055B0();
  v3 = v0;
  State = type metadata accessor for LoadState();
  sub_100002BDC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100002B8C();
  sub_1000DB2B0();
  v8 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_1000183F4();
  swift_beginAccess();
  if ((*(v8 + v3) & 0xC000000000000001) != 0)
  {
    v9 = &_swiftEmptySetSingleton;
    v48 = &_swiftEmptySetSingleton;
    sub_10005FA6C();

    v40 = __CocoaSet.makeIterator()();
    HIDWORD(v39) = enum case for LoadState.loaded(_:);
    while (1)
    {
      v10 = __CocoaSet.Iterator.next()();
      if (!v10)
      {

        State = 0;
        goto LABEL_26;
      }

      v41[0] = v10;
      type metadata accessor for InferenceProviderAsset(0);
      sub_1000358A4();
      swift_dynamicCast();
      v11 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v46;
      sub_100002D24();
      swift_beginAccess();
      (*(v6 + 104))(v1, HIDWORD(v39), State);
      sub_100002D0C();
      sub_100011B14(&dword_1001BA628, v12, &protocol conformance descriptor for LoadState);
      sub_1000DAF88();
      sub_1000DAEA4();
      if (v44 == v42 && v45 == v43)
      {
        break;
      }

      sub_100012D24();
      _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_1000DB45C();

      if (v2)
      {
        goto LABEL_16;
      }

      type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
      sub_1000DAF88();
      sub_1000DAEA4();
      if (v44 == v42 && v45 == v43)
      {
        break;
      }

      sub_100012D24();
      _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_1000DB45C();

      v15 = sub_10000CF04();
      v16(v15);
      if ((v2 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_17:
      v19 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
      if (*(*&v11[*(v19 + 48)] + 16))
      {
LABEL_18:
        swift_endAccess();
        goto LABEL_20;
      }

      v20 = *(*&v11[*(v19 + 44)] + 16);
      swift_endAccess();
      if (v20)
      {
LABEL_20:
      }

      else
      {
        v28 = v46;
        v29 = *(v9 + 2);
        if (*(v9 + 3) <= v29)
        {
          sub_1000DB474(v21, v22, v23, v24, v25, v26, v27, v29, v37, v38, v39, v40, v41[0], v41[1], v41[2], v41[3], v41[4], v41[5], v41[6], v41[7], v41[8], v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
        }

        v9 = v48;
        Hasher.init(_seed:)();
        sub_10001214C(v41);
        v30 = Hasher._finalize()();
        sub_100012B94(v30, *(v9 + 32));
        _HashTable.nextHole(atOrAfter:)();
        sub_1000119F0();
        sub_100027838(v31);
        *(*(v9 + 6) + 8 * v32) = v28;
        ++*(v9 + 2);
      }
    }

LABEL_16:
    v17 = sub_10000CF04();
    v18(v17);
    goto LABEL_17;
  }

  sub_1000DAF44();
  v9 = sub_100011E30(v33, v34, v35, v36);
LABEL_26:
  v41[0] = sub_100011CBC(v9);
  sub_10002ABFC();
  if (State)
  {

    __break(1u);
  }

  else
  {

    sub_100002EEC();
  }
}

uint64_t sub_1000106D8()
{
  v2 = *v1;
  sub_100004B40();
  *v3 = v2;
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;

  if (v0)
  {
    v6 = v2[39];
    v7 = v2[22];
    v10 = v2 + 20;
    v8 = v2[20];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);
    v11 = sub_100003754();
    v6(v11);
  }

  else
  {
    v12 = v2[39];
    v13 = v2[26];
    v14 = v2[23];
    (*(v2[21] + 8))(v2[22], v2[20]);
    v12(v13, v14);
  }

  return _swift_task_switch(sub_100010888, 0, 0);
}

uint64_t sub_100010888()
{
  sub_100003884();
  v5 = sub_1000166C4(v4);
  v3(v0, v1);
  if ((v5 & 1) == 0)
  {

    v6 = type metadata accessor for Date();
    v2[29] = v6;
    sub_100002BDC();
    v2[30] = v7;
    v2[31] = *(v8 + 64);
    v2[32] = sub_100002C58();
    v9 = sub_100065020(&qword_1001BBA80, &qword_100172440);
    sub_100002F04(v9);
    v2[33] = sub_100002C58();
    Strong = swift_weakLoadStrong();
    v2[34] = Strong;
    if (Strong)
    {
      v11 = swift_task_alloc();
      v2[35] = v11;
      *v11 = v2;
      sub_100011538(v11);
      sub_100003E20();
      sub_100003D20();

      return sub_100010CFC();
    }

    sub_100003978();
    sub_100009BFC(v14, v15, v16, v6);
    sub_10002C278(v2[33], &qword_1001BBA80, &qword_100172440);
  }

  sub_10000EC80();
  if (qword_1001B8A78 != -1)
  {
    sub_10000877C(&qword_1001B8A78);
  }

  v17 = type metadata accessor for Logger();
  sub_100002FD0(v17, qword_1001BCD78);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (sub_100002F80(v19))
  {
    v20 = sub_100007648();
    sub_10000A240(v20);
    sub_100003DD0();
    _os_log_impl(v21, v22, v23, v24, v25, 2u);
    sub_100002F64();
  }

  sub_100004C24();
  v26 = swift_weakLoadStrong();
  v2[42] = v26;
  if (!v26)
  {
    sub_100005CE0();
    os_activity_scope_leave((v18 + 24));
    swift_endAccess();

    sub_100001F00();
    sub_100003D20();

    __asm { BRAA            X1, X16 }
  }

  sub_100003D20();

  return _swift_task_switch(v27, v28, v29);
}

void sub_100010B98(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100010BF0()
{
}

BOOL sub_100010C0C()
{

  return os_log_type_enabled(v0, v1);
}

void sub_100010C24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_100010CFC()
{
  sub_100002BAC();
  v1[32] = v2;
  v1[33] = v0;
  v3 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v1[34] = v3;
  sub_100002F04(v3);
  v1[35] = sub_100002C58();
  State = type metadata accessor for LoadState();
  v1[36] = State;
  sub_100002F44(State);
  v1[37] = v5;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v6 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v6);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v7 = type metadata accessor for InferenceProviderDescriptor();
  v1[42] = v7;
  sub_100002F44(v7);
  v1[43] = v8;
  v1[44] = sub_100002C58();
  v9 = sub_100002C10();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t _s6PolicyVMa_0(uint64_t a1)
{
  result = qword_1001BACC8;
  if (!qword_1001BACC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *sub_100010EB0()
{
  sub_100010338();
  v1 = v0;
  result = sub_10000E8DC(v0);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return _swiftEmptyArrayStorage;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v5 = result;
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v5 = *(v1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v5[OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed] & 1) == 0 && (v5[OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_isCacheable] & 1) != 0 || (v5[OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_shouldAvoidUnload])
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

BOOL sub_100010FF8(uint64_t a1)
{
  sub_10002A104();
  type metadata accessor for LoadState();
  sub_100002BDC();
  __chkstk_darwin(v2);
  sub_100002B8C();
  v5 = v4 - v3;
  v6 = sub_1000DB320();
  v7(v6);
  v8 = sub_1000060A4();
  if (sub_100116D68(v8, v9))
  {
    v10 = sub_10000D01C();
    v11(v10);
  }

  else
  {
    v12 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
    v13 = sub_100116D68(v1 + *(v12 + 20), v5);
    v14 = sub_10000D01C();
    v15(v14);
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  if (*(*(v1 + *(v16 + 48)) + 16))
  {
    return 0;
  }

  return *(*(v1 + *(v16 + 44)) + 16) == 0;
}

uint64_t sub_100011158()
{
}

uint64_t sub_100011174(uint64_t a1, uint64_t a2)
{
}

void sub_1000111AC(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_1000111C8()
{

  return type metadata accessor for Logger();
}

uint64_t sub_1000111F8()
{
}

uint64_t sub_100011210()
{

  return type metadata accessor for Logger();
}

BOOL sub_100011230()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t sub_100011248()
{

  return type metadata accessor for TaskPriority();
}

unint64_t sub_10001127C(uint64_t a1, unint64_t a2)
{

  return sub_100004A3C(a1, a2, (v2 - 88));
}

void *sub_100011294(uint64_t a1, uint64_t a2)
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

  sub_100065020(&dword_1001BA4A8, &qword_100171010);
  v4 = sub_10014B308();
  j__malloc_size(v4);
  sub_1000316D4();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

uint64_t sub_1000113C8()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2080;
  v3 = v1[3];
  sub_100003370(v1, v3);
  return v3;
}

uint64_t sub_100011418(uint64_t a1)
{

  return swift_beginAccess();
}

BOOL sub_10001147C()
{
  v1 = 0x6E49656C7070412FLL;
  v2 = 0xEF2F6C616E726574;

  return String.hasPrefix(_:)(*&v1);
}

uint64_t sub_100011558(uint64_t a1)
{

  return swift_once();
}

void sub_100011578(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000115E0()
{
}

uint64_t sub_100011624(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10016FF50;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_100011688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_10000355C();
  a29 = v30;
  a30 = v37;
  v64 = v38;
  v39 = v34;
  if (!v33)
  {
LABEL_5:

    goto LABEL_6;
  }

  v40 = v33;
  if (*(v34 + 16) == v33)
  {
LABEL_6:
    sub_100005F10();
    return;
  }

  v41 = v32;
  v42 = v31;
  sub_100065020(v35, v36);
  v43 = static _SetStorage.allocate(capacity:)();
  v44 = v43;
  if (v41 < 1)
  {
    v45 = 0;
  }

  else
  {
    v45 = *v42;
  }

  v46 = 0;
  v47 = v43 + 56;
  while (v45)
  {
    sub_100012F5C();
LABEL_16:
    v52 = *(*(v39 + 48) + 8 * (v48 | (v46 << 6)));
    Hasher.init(_seed:)();

    v64(&a10);
    Hasher._finalize()();
    sub_10000D028();
    if (((v55 << v54) & ~*(v47 + 8 * v53)) == 0)
    {
      sub_10000783C();
      while (1)
      {
        sub_100060714();
        if (v59)
        {
          if (v57)
          {
            goto LABEL_30;
          }
        }

        if (v56 == v58)
        {
          v56 = 0;
        }

        if (*(v47 + 8 * v56) != -1)
        {
          sub_1000081CC();
          goto LABEL_26;
        }
      }
    }

    sub_1000033E8();
LABEL_26:
    sub_100045670();
    *(v47 + v60) |= v61;
    *(*(v44 + 48) + 8 * v62) = v52;
    ++*(v44 + 16);
    if (__OFSUB__(v40--, 1))
    {
      goto LABEL_31;
    }

    if (!v40)
    {
      goto LABEL_5;
    }
  }

  v49 = v46;
  while (1)
  {
    v46 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v46 >= v41)
    {
      goto LABEL_5;
    }

    ++v49;
    if (v42[v46])
    {
      sub_1000062A0();
      v45 = v51 & v50;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_100011834(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_100011854(uint64_t a1)
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_100011870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = 0;
  *v9 = a9;
  return result;
}

void *sub_100011880@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 104) = v3;
  *(v4 - 96) = v1;
  v5 = *(v2 + a1 + 24);
  *(v4 - 160) = v2 + a1;
  return sub_100003370((v2 + a1), v5);
}

uint64_t sub_1000118AC()
{
}

uint64_t sub_10001195C()
{
}

uint64_t sub_100011990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return static Date.+ infix(_:_:)();
}

uint64_t sub_1000119B4(uint64_t a1)
{

  return String.init<A>(describing:)();
}

uint64_t sub_100011A30(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_100011A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return static Date.> infix(_:_:)();
}

uint64_t sub_100011A90()
{
  *v0 = *(*(v1 + 48) + 8 * v2);
}

uint64_t sub_100011ABC()
{
}

uint64_t sub_100011B14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100011B5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_100011C00()
{

  return sub_100003370(v1, v0);
}

uint64_t sub_100011C28()
{
}

uint64_t sub_100011C40@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_descriptor;
  v5 = type metadata accessor for InferenceProviderDescriptor();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100011D6C()
{

  return sub_100065020(v1, v0);
}

uint64_t sub_100011D9C()
{
}

void *sub_100011E30(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4)
{
  v5 = v4;
  v39 = a3;
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;

  if (v10 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v35 = a2;
    v36 = v5;
    v33 = &v32;
    __chkstk_darwin(v13);
    v34 = v11;
    v37 = &v32 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_100011624(0, v11, v37);
    v38 = 0;
    v18 = 0;
    v5 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    a2 = v20 & *(a1 + 56);
    v11 = (v19 + 63) >> 6;
    while (a2)
    {
      v21 = __clz(__rbit64(a2));
      a2 &= a2 - 1;
LABEL_12:
      v12 = v21 | (v18 << 6);
      v25 = *(*(a1 + 48) + 8 * v12);
      v26 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      sub_100002D24();
      swift_beginAccess();

      LOBYTE(v26) = v39(&v26[v25]);
      swift_endAccess();

      if (v26)
      {
        *(v37 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1000120FC(v37, v34, v38, a1, v14, v15, v16, v17, v32, v33, v34, v35, v36, v37, v38, v39, *v40, *&v40[8], *&v40[16], v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
          v29 = v28;

          goto LABEL_17;
        }
      }
    }

    v22 = v18;
    while (1)
    {
      v18 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v18 >= v11)
      {
        goto LABEL_16;
      }

      ++v22;
      if (*(v5 + 8 * v18))
      {
        sub_1000062A0();
        a2 = v24 & v23;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v31 = swift_slowAlloc();

  v29 = sub_1000ECCAC(v31, v11, a1, a2, v39, a4);

  sub_100002BD0();

LABEL_17:

  return v29;
}

uint64_t sub_100012124()
{
}

uint64_t sub_10001214C(uint64_t a1)
{
  v35 = type metadata accessor for CustomAssetConfiguration();
  sub_100002BDC();
  v33 = v2;
  __chkstk_darwin(v3);
  sub_100002B8C();
  v32 = v5 - v4;
  v6 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  v7 = sub_100002F04(v6);
  __chkstk_darwin(v7);
  sub_100005630();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v34 = &v32 - v12;
  v13 = type metadata accessor for InferenceProviderDescriptor();
  sub_100002BDC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100002B8C();
  v19 = v18 - v17;
  InferenceProviderAssetDescriptor.identifier.getter();
  String.hash(into:)();

  v20 = *(v1 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
  sub_100003370((v1 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), *(v1 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24));
  v21 = sub_100005974();
  v22(v21, v20);
  sub_10000866C();
  sub_100011B5C(v23, v24, &protocol conformance descriptor for InferenceProviderDescriptor);
  dispatch thunk of Hashable.hash(into:)();
  (*(v15 + 8))(v19, v13);
  v26 = v34;
  v25 = v35;
  InferenceProviderAssetDescriptor.customAssetConfiguration.getter();
  sub_10001E72C(v26, v10, &qword_1001B9D00, &qword_100171E00);
  if (sub_10000C1F0(v10) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v28 = v32;
    v27 = v33;
    (*(v33 + 32))(v32, v10, v25);
    Hasher._combine(_:)(1u);
    sub_100035324();
    sub_100011B5C(v29, v30, &protocol conformance descriptor for CustomAssetConfiguration);
    dispatch thunk of Hashable.hash(into:)();
    (*(v27 + 8))(v28, v25);
  }

  return sub_10000ECD8(v26, &qword_1001B9D00, &qword_100171E00);
}

void sub_100012490()
{
  v1 = 0x6B73615420;
  v2 = 0xE500000000000000;

  String.append(_:)(*&v1);
}

BOOL sub_1000124B4()
{

  return os_log_type_enabled(v1, v0);
}

void sub_100012530()
{
}

uint64_t sub_100012550()
{

  return sub_100009BFC(v1, 0, 1, v0);
}

uint64_t sub_1000125A4(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_1000125E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100002C00();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100012640(uint64_t a1)
{

  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t sub_100012684()
{
}

uint64_t sub_1000126B4(uint64_t a1)
{

  return swift_allocObject();
}

unint64_t sub_1000126CC(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_100004A3C(v3, v2, va);
}

void sub_100012728()
{

  sub_1001577CC(v5 + 16, v2, v4 & 0x101, v3, v1, v0);
}

uint64_t sub_100012758(uint64_t a1)
{
}

uint64_t sub_100012794()
{
  v1 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 104);
  *(v0 + 64) = *(v0 + 120);
  return *(v0 + 24);
}

uint64_t sub_1000127B8(uint64_t result)
{
  *(v4 + 400) = result;
  *(result + 16) = v3;
  *(result + 24) = v2;
  *(v4 + 216) = v1;
  return result;
}

uint64_t sub_10001281C()
{
  result = v0[45];
  v2 = v0[39];
  v0[60] = *(v2 + 16);
  v0[61] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return result;
}

BOOL sub_100012874()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t sub_1000128AC()
{

  return type metadata accessor for GenerativeFunctionsInstrumentationEvent();
}

uint64_t sub_100012918()
{
}

uint64_t sub_100012930()
{
}

uint64_t sub_10001297C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_1000129AC(uint64_t a1@<X8>)
{
  *(v2 - 168) = 7;
  *(v2 - 160) = a1;
  *(v2 - 152) = v1;
}

uint64_t sub_1000129D8()
{

  return swift_allocObject();
}

uint64_t sub_100012A9C()
{
}

uint64_t sub_100012AB8(uint64_t a1)
{
  *(v3 - 96) = a1;
  *v2 = v1;
  *(v2 + 1) = v1;
  *(v2 + 2) = 2082;

  return UUIDIdentifier.uuidString.getter();
}

__n128 sub_100012AE8(uint64_t a1)
{
  *(v2 + 48) = a1;
  result = *(v2 + 24);
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_100012B30()
{

  return swift_allocError();
}

uint64_t sub_100012B64()
{

  return static _SetStorage.convert(_:capacity:)();
}

uint64_t sub_100012BB4(float a1)
{
  *v1 = a1;

  return type metadata accessor for InferenceProviderAssetDescriptor();
}

uint64_t sub_100012BD8()
{
  *(v0 + 112) = 1;
}

uint64_t sub_100012C1C(uint64_t a1)
{
  v1 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v8 - v5;
  Session.Metadata.id.getter();
  sub_1000130C8(&qword_1001B9500);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v3 + 8))(v6, v1);
}

void sub_100012D40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_100012D7C(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_100012DB0()
{

  return swift_slowAlloc();
}

uint64_t sub_100012E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v20 - 128) = v19;

  return InferenceProviderAssetDescriptor.version.getter(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_100012E8C()
{
}

uint64_t sub_100012EA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100065020(a3, a4);
  sub_100006098();
  v5 = sub_1000062B0();
  v6(v5);
  return a2;
}

uint64_t sub_100012F04()
{
  sub_10000C1C0();
  sub_100065020(v1, v2);
  sub_100002C00();
  v3 = sub_1000062B0();
  v4(v3);
  return v0;
}

uint64_t sub_100012FD0()
{
}

uint64_t sub_100012FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return InferenceProviderRequestConfiguration.requestUUID.getter();
}

uint64_t sub_10001301C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100011D90(a1, a2);
  sub_100065020(v3, v4);
  sub_100006098();
  (*(v5 + 8))(v2);
  return v2;
}

uint64_t sub_100013074(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10006A614(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000130C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10006A614(&qword_1001B94F0, &unk_100172060);
    sub_1000055A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100013114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v15 = v14[15];
  v16 = v14[10];
  v17 = *(v15 + 32);
  v35 = v15 + 32;
  swift_getAssociatedTypeWitness();
  type metadata accessor for ModelManagerError();
  sub_100003814(&qword_1001B8F50, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
  v18 = type metadata accessor for IPCResult();
  sub_100009E20(v18);
  sub_100004CA4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100004CA4();
  v20 = swift_getAssociatedConformanceWitness();
  v21 = sub_100003814(&qword_1001B9A00, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
  v22 = sub_100003814(&qword_1001B9A08, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
  v14[2] = AssociatedConformanceWitness;
  v14[3] = v20;
  v14[4] = v21;
  v14[5] = v22;
  v16[4] = swift_getWitnessTable();
  v14[6] = AssociatedConformanceWitness;
  v14[7] = v20;
  v14[8] = v21;
  v14[9] = v22;
  v16[5] = swift_getWitnessTable();
  sub_1000036CC(v16);
  v34 = v17 + *v17;
  swift_task_alloc();
  sub_100004B34();
  v14[16] = v23;
  *v23 = v24;
  v23[1] = sub_100046278;
  sub_100003540();

  return v30(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, v35, a12, a13, a14);
}

void sub_1000133B8()
{
}

uint64_t sub_100013430(uint64_t a1)
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

void sub_10001344C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_100013464()
{
}

Class sub_1000134FC()
{
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 520) & 1;

  return sub_10002ECE0(v2, v4, v5, v3);
}

uint64_t sub_100013528(uint64_t result)
{
  v3[44] = v2;
  v3[45] = v1;
  v3[43] = result;
  return result;
}

uint64_t sub_100013534(uint64_t a1)
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

void sub_100013624(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_10001364C()
{
  *(v0 + 376) = *(v1 + 8);
  *(v0 + 384) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v2;
}

id sub_100013668(int a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  *(v3 + 160) = a1;
  *(v3 + 152) = v4;

  return v4;
}

BOOL sub_1000136A8()
{
  if (&nominal type descriptor for GenerativeFunctionsInstrumentationMetadata)
  {
    v0 = &type metadata for GenerativeFunctionsInstrumentationMetadata == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0 && &type metadata accessor for GenerativeFunctionsInstrumentationMetadata != 0 && &protocol conformance descriptor for GenerativeFunctionsInstrumentationMetadata != 0 && &protocol conformance descriptor for GenerativeFunctionsInstrumentationMetadata != 0;
}

void sub_100013710(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100013730(float a1)
{
  *v1 = a1;

  return swift_errorRetain();
}

uint64_t sub_100013798(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_1000137BC()
{
  *(*(v0 + 48) + *(v0 + 104)) = 3;
}

uint64_t sub_100013850()
{

  return type metadata accessor for Logger();
}

uint64_t sub_100013894()
{

  return type metadata accessor for Logger();
}

uint64_t sub_1000138B4()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[19] = v0;

  v6 = v2[14];
  v7 = v2[11];
  v8 = v2[10];
  if (v0)
  {
    (*(v7 + 8))(v6, v8);
    sub_1000059F8();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = v3[9];
    v13 = *(v7 + 8);
    v3[20] = v13;
    v3[21] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v6, v8);
    v14 = swift_task_alloc();
    v3[22] = v14;
    *v14 = v5;
    v14[1] = sub_10008FA20;

    return sub_10015E158(v12 + 16);
  }
}

double sub_100013AB8()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t sub_100013AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = (*(v12 + 32) + *(v12 + 240));
  sub_100003370(v13, v13[3]);

  return InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
}

uint64_t sub_100013B50()
{
}

uint64_t sub_100013B74(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 256);

  return sub_10002D264(v5, a1, a2);
}

uint64_t sub_100013BD8()
{
}

uint64_t sub_100013BF8()
{
  sub_100001ED0();
  sub_1000020C0(v0 + 2);
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_100003370(v0 + 2, v2);
  swift_task_alloc();
  sub_100004B34();
  v0[11] = v4;
  *v4 = v5;
  v4[1] = sub_10004638C;
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];

  return sub_100013CD4(v8, v3, v6, v7, v2, v1);
}

uint64_t sub_100013CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return sub_1000051C8();
}

uint64_t sub_100013CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  return _swift_task_switch(sub_100013114, 0, 0);
}

uint64_t sub_100013DAC()
{
}

void sub_100013DFC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_100013E64()
{
}

uint64_t sub_100013E88()
{

  return swift_slowAlloc();
}

uint64_t sub_100013EFC()
{
  sub_100002BAC();
  v2 = v1;
  sub_100001EF4();
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_100013FF4()
{
  sub_100002BAC();
  *(v1 + 646) = v2;
  *(v1 + 256) = v3;
  *(v1 + 264) = v0;
  *(v1 + 240) = v4;
  *(v1 + 248) = v5;
  v6 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v6);
  *(v1 + 272) = sub_100002C58();
  v7 = sub_100065020(&qword_1001B9CD0, &qword_100170778);
  sub_100002F04(v7);
  *(v1 + 280) = sub_100002C58();
  v8 = type metadata accessor for InferenceProviderDescriptor();
  *(v1 + 288) = v8;
  sub_100002F44(v8);
  *(v1 + 296) = v9;
  *(v1 + 304) = sub_10000F0C0();
  *(v1 + 312) = swift_task_alloc();
  v10 = type metadata accessor for DaemonSession.LazyState(0);
  *(v1 + 320) = v10;
  sub_100002F04(v10);
  *(v1 + 328) = sub_100002C58();
  v11 = type metadata accessor for AuditToken();
  *(v1 + 336) = v11;
  sub_100002F44(v11);
  *(v1 + 344) = v12;
  *(v1 + 352) = sub_100002C58();
  v13 = type metadata accessor for Session.Metadata();
  *(v1 + 360) = v13;
  sub_100002F44(v13);
  *(v1 + 368) = v14;
  *(v1 + 376) = sub_10000F0C0();
  *(v1 + 384) = swift_task_alloc();
  v15 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  *(v1 + 392) = v15;
  sub_100002F44(v15);
  *(v1 + 400) = v16;
  *(v1 + 408) = sub_10000F0C0();
  *(v1 + 416) = swift_task_alloc();
  *(v1 + 424) = swift_task_alloc();
  *(v1 + 432) = swift_task_alloc();
  v17 = sub_100002C10();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_100014248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10006FA64;

  return sub_1000142F8();
}

uint64_t sub_1000142F8()
{
  sub_100002BAC();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_100065020(&qword_1001B9CD0, &qword_100170778);
  sub_100002F04(v5);
  v1[6] = sub_100002C58();
  v6 = type metadata accessor for Session.Metadata();
  v1[7] = v6;
  sub_100002F44(v6);
  v1[8] = v7;
  v1[9] = sub_10000BF98();
  v1[10] = swift_task_alloc();
  v8 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[11] = v8;
  sub_100002F44(v8);
  v1[12] = v9;
  v1[13] = sub_10000BF98();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v10 = sub_100003000();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100014454(uint64_t result)
{
  *(v3 - 296) = v1;
  *(v3 - 288) = v2;
  *(v3 - 248) = result;
  return result;
}

uint64_t sub_100014490()
{
}

uint64_t sub_1000144CC()
{
  v2 = v1[10];
  swift_beginAccess();
  v3 = *(v2 + 112);
  if (*(v3 + 16))
  {
    v4 = sub_100014804(v1[9]);
    if (v5 & 1) != 0 && (*(*(v3 + 56) + v4))
    {
      v6 = 1;
      goto LABEL_22;
    }
  }

  v1[8] = 0;
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer == noErr.getter())
  {
    if (v1[8] != 4)
    {
      if (qword_1001B8A70 != -1)
      {
        sub_10000875C(&qword_1001B8A70);
      }

      v18 = type metadata accessor for Logger();
      sub_10000641C(v18, qword_1001BCC48);
      v9 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();
      if (!sub_100006468(v19))
      {
        v6 = 0;
        goto LABEL_21;
      }

      v20 = v1[9];
      v13 = swift_slowAlloc();
      v6 = 0;
      *v13 = 134217984;
      *(v13 + 4) = v20;
      v14 = "Determined not eligible for domain %llu";
      v12 = 12;
      goto LABEL_20;
    }

    if (qword_1001B8A70 != -1)
    {
      sub_10000875C(&qword_1001B8A70);
    }

    v8 = type metadata accessor for Logger();
    sub_10000641C(v8, qword_1001BCC48);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (sub_100006468(v10))
    {
      v11 = v1[9];
      v12 = 12;
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v11;
      v6 = 1;
      v14 = "Determined eligible for domain %llu";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v9, v0, v14, v13, v12);

      goto LABEL_21;
    }
  }

  else
  {
    if (qword_1001B8A70 != -1)
    {
      sub_10000875C(&qword_1001B8A70);
    }

    v15 = type metadata accessor for Logger();
    sub_10000641C(v15, qword_1001BCC48);
    v9 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (sub_100006468(v16))
    {
      v17 = v1[9];
      v12 = 18;
      v13 = swift_slowAlloc();
      *v13 = 134218240;
      *(v13 + 4) = v17;
      *(v13 + 12) = 1024;
      *(v13 + 14) = domain_answer;
      v6 = 1;
      v14 = "Unable to determine eligibility for domain %llu, status: %d";
      goto LABEL_20;
    }
  }

  v6 = 1;
LABEL_21:
  v21 = v1[9];

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v2 + 112);
  sub_1001178C4(v6, v21, isUniquelyReferenced_nonNull_native);
  *(v2 + 112) = v25;
  swift_endAccess();
LABEL_22:
  v23 = v1[1];

  return v23(v6);
}

unint64_t sub_100014804(Swift::UInt64 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_100014874(a1, v2);
}

unint64_t sub_100014874(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_1000148D4(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100117250;

  return OSEligibilityChecker.isEligible(for:)();
}

uint64_t OSEligibilityChecker.isEligible(for:)()
{
  sub_100002BAC();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;

  return _swift_task_switch(sub_1000144CC, v0, 0);
}

uint64_t sub_1000149F8(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100014A18(uint64_t a1)
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_100014A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v34 = a7;
  v35 = a8;
  v26 = a6;
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v12 = sub_100065020(&qword_1001BD078, &qword_100173950);
  __chkstk_darwin(v12 - 8);
  v14 = &v25[-v13];
  v15 = enum case for GenerativeFunctionsInstrumentationEvent.Subtype.start(_:);
  v16 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  sub_100009BFC(v14, 0, 1, v16);
  GenerativeFunctionsInstrumentationEvent.subtype.setter();
  v17 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  __chkstk_darwin(v17);
  v31 = a2;
  v32 = a3;
  v33 = a4;
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  v18 = sub_100065020(&qword_1001BD090, &qword_100173970);
  __chkstk_darwin(v18 - 8);
  v20 = &v25[-v19];
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent();
  v21 = swift_allocBox();
  v27 = a5;
  v28 = v26;
  v29 = v34;
  v30 = v35;
  static Buildable.with(_:)();
  *v20 = v21;
  v22 = enum case for GenerativeFunctionsInstrumentationMetadata.modelManagerSessionEvent(_:);
  v23 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata();
  (*(*(v23 - 8) + 104))(v20, v22, v23);
  sub_100009BFC(v20, 0, 1, v23);
  return GenerativeFunctionsInstrumentationEvent.metadata.setter();
}

uint64_t sub_100014D20()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;
  *(v6 + 647) = v5;

  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

void sub_100014E3C()
{
  sub_1000055B0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (sub_1000136A8())
  {
    v16 = sub_100065020(&qword_1001BD070, &qword_100173948);
    v21[1] = v21;
    sub_100002F04(v16);
    sub_100004B1C();
    __chkstk_darwin(v17);
    sub_100003C70();
    v18 = sub_100003370((v1 + 40), *(v1 + 64));
    v21[0] = v21;
    __chkstk_darwin(v18);
    sub_10000A328();
    v21[2] = v3;
    *(v19 - 48) = v3;
    *(v19 - 40) = v13;
    *(v19 - 32) = v11;
    *(v19 - 24) = v15;
    *(v19 - 16) = v9;
    *(v19 - 12) = v7;
    *(v19 - 8) = v5 & 1;
    sub_1000084CC();
    sub_1000030E4();
    if (v3)
    {
    }

    v20 = sub_1000128AC();
    sub_10000A6F0(v20);
    sub_10000ECD8(v0, &qword_1001BD070, &qword_100173948);
  }

  sub_100014FA0();
  sub_100002EEC();
}

void sub_100014FA0()
{
  sub_1000055B0();
  v54 = v1;
  v51 = v3;
  v52 = v2;
  v50 = v4;
  v6 = v5;
  v49 = v7;
  v9 = v8;
  v10 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC();
  v12 = v11;
  sub_100004B1C();
  __chkstk_darwin(v13);
  sub_100018A10();
  sub_100003058();
  v55 = v14;
  v53 = *(v15 + 16);
  type metadata accessor for OSSignpostID();
  sub_100002BDC();
  __chkstk_darwin(v16);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  sub_100016624();

  v17 = sub_100013554();
  v20 = sub_100009C8C(v17, v18, v19);
  sub_100016484(v20, v21);
  v22 = sub_100013554();
  v25 = sub_100009C8C(v22, v23, v24);
  sub_100016484(v25, v26);
  (*(v12 + 16))(v0, v54, v10);
  v27 = OSSignposter.logHandle.getter();
  v28 = static os_signpost_type_t.begin.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_5;
  }

  v48 = v10;
  if ((v53 & 1) == 0)
  {

    if (!v55)
    {
      __break(1u);
LABEL_5:

      v29 = (*(v12 + 8))(v0, v10);
LABEL_14:
      __chkstk_darwin(v29);
      sub_100002D4C();
      v41 = sub_100018688();
      v42(v41);
      v43 = type metadata accessor for OSSignpostIntervalState();
      sub_1000038EC(v43);
      sub_100003170();
      OSSignpostIntervalState.init(id:isOpen:)();
      v44 = sub_100019BCC();
      v45(v44, v6);
      v46 = type metadata accessor for TelemetryIntervalState();
      v47 = sub_1000126B4(v46);
      sub_10003533C(v47);
      sub_100002EEC();
      return;
    }

LABEL_10:
    v32 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v32 = 136447490;
    v33 = Array.description.getter();
    sub_10001127C(v33, v34);
    sub_1000188B4();
    *(v32 + 4) = v9;
    *(v32 + 12) = 2082;
    *(v32 + 14) = sub_100004A3C(v49, v6, &v56);
    *(v32 + 22) = 1026;
    *(v32 + 24) = v50;
    *(v32 + 28) = 1026;
    if (v51)
    {
      v35 = 1702195828;
    }

    else
    {
      v35 = 0x65736C6166;
    }

    *(v32 + 30) = v52;
    *(v32 + 34) = 2082;
    v36 = sub_10000CF80(v35);

    *(v32 + 36) = v36;
    *(v32 + 44) = 2082;
    v37 = UUIDIdentifier.uuidString.getter();
    v39 = sub_10001127C(v37, v38);

    *(v32 + 46) = v39;
    (*(v12 + 8))(v0, v48);
    v40 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, v28, v40, v55, "bundeIdentifiers: %{public, signpost.description=attribute,public}s,\nuseCaseIdentifier: %{public, signpost.description=attribute,public}s,\nonBehalfOfPID: %{public, signpost.description=attribute,public}d,\ncreatedByPID: %{public, signpost.description=attribute,public}d,\ncontainsSensitiveData: %{public, signpost.description=attribute,public}s,\nuuid: %{public, signpost.description=attribute,public}s", v32, 0x36u);
    sub_100012500();
    swift_arrayDestroy();
    sub_100003A4C();
    sub_100002BB8(v32);

    goto LABEL_14;
  }

  if (v55 >> 32)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100011408();
  if (!v30)
  {
    sub_100005704();
    if (!(!v30 & v31))
    {

      v55 = &v56;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1000153F0()
{
  sub_100002BAC();
  *(v1 + 40) = v0;
  *(v1 + 88) = v2;
  v3 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v3);
  *(v1 + 48) = sub_100002C58();
  v4 = sub_100065020(&qword_1001BC0B0, &qword_100172970);
  *(v1 + 56) = v4;
  *(v1 + 64) = *(v4 - 8);
  *(v1 + 72) = sub_100002C58();
  v5 = sub_100002C10();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000154D8()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000155D0()
{
  sub_100002BAC();
  *(v0 + 504) = *(*(v0 + 496) + 192);

  sub_1000071A8();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100015640()
{
}

uint64_t sub_100015660()
{
}

uint64_t sub_100015684(uint64_t a1)
{
  sub_10000C6C0(v3, 1, a1);

  return sub_10000ECD8(v3, v1, v2);
}

uint64_t sub_1000156D8(uint64_t a1)
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_100015718(uint64_t a1, uint64_t a2, int a3, int a4, char a5)
{
  v5 = sub_100065020(&qword_1001BD098, &qword_100173978);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = enum case for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType.add(_:);
  v9 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  sub_100009BFC(v7, 0, 1, v9);
  GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.sessionEventType.setter();

  GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.supportedAssetBundleIdentifiers.setter();
  GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.onBehalfOfPID.setter();
  GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.createdByPID.setter();
  return GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.containsSensitiveData.setter();
}

uint64_t sub_100015884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v32 = a3;
  v30 = a2;
  v31 = a1;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v33 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  v28 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  v29 = &v28 - v11;
  v13 = type metadata accessor for Session.Metadata();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a2 + 120);
  (*(v14 + 16))(v16, v32, v13);
  sub_100007130(a4, v43);
  (*(v10 + 16))(v12, v31, v9);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v10 + 80) + v20 + 8) & ~*(v10 + 80);
  v22 = swift_allocObject();
  (*(v14 + 32))(v22 + v17, v16, v13);
  sub_100004A04(v43, v22 + v18);
  *(v22 + v19) = v30;
  *(v22 + v20) = v35;
  (*(v10 + 32))(v22 + v21, v29, v28);
  aBlock[4] = sub_10001C340;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000E6BC;
  aBlock[3] = &unk_1001B0A40;
  v23 = _Block_copy(aBlock);

  v24 = v33;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_100015F10(&qword_1001B9CE8, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100065020(&unk_1001BD3B0, &qword_100172950);
  sub_10001B27C(&qword_1001B9CF0, &unk_1001BD3B0, &qword_100172950);
  v25 = v36;
  v26 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v40 + 8))(v25, v26);
  (*(v37 + 8))(v24, v39);
}

uint64_t sub_100015D90()
{
  v17 = type metadata accessor for Session.Metadata();
  sub_100002BDC();
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  sub_100002BDC();
  v9 = v8;
  v11 = v10;
  v12 = *(v9 + 80);
  v13 = (v12 + ((((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12;
  v16 = *(v11 + 64);
  v14 = v3 | v12;
  (*(v2 + 8))(v0 + v4, v17);
  sub_100003324((v0 + v6));

  (*(v9 + 8))(v0 + v13, v7);

  return _swift_deallocObject(v0, v13 + v16, v14 | 7);
}

uint64_t sub_100015F10(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    sub_1000055A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100015F54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100015F9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100015FE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001602C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10001641C(uint64_t a1)
{
  *(v1 + 160) = a1;

  return type metadata accessor for DaemonRequest(0);
}

uint64_t sub_100016434()
{

  return swift_retain_n();
}

uint64_t sub_100016484(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100016494(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1000164E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t), uint64_t (*a8)(uint64_t, uint64_t))
{
  v14 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  sub_100002F04(v14);
  sub_100004B1C();
  __chkstk_darwin(v15);
  sub_100003C70();
  sub_100065020(a5, a6);
  UUIDIdentifier.uuid.getter();
  type metadata accessor for UUID();
  sub_1000039A8();
  sub_100009BFC(v16, v17, v18, v19);
  a7(v8);

  return a8(a3, a4);
}

unint64_t sub_100016624()
{
  result = qword_1001BB9A0;
  if (!qword_1001BB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BB9A0);
  }

  return result;
}

void sub_1000166A4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000166C4(uint64_t a1)
{

  return static Task<>.isCancelled.getter();
}

uint64_t sub_1000166E4()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;
}

uint64_t sub_100016730()
{
  v1 = sub_10004B7DC(v0[2]);
  v0[26] = v1;
  v2 = v1;
  v3 = (v1 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_unsafeManagerOwnedState);
  v4 = *(v1 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_unsafeManagerOwnedState + 16);
  *v3 = 1;
  v3[16] = v4;
  v5 = sub_10001CFA8();
  v0[27] = v5;
  v6 = v5;
  sub_10001D000(v0[25]);
  v60 = v6;
  v61 = sub_10004BB90();
  v56 = v7;
  v8 = v0[14];
  v9 = v0[4];
  v62 = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_auditToken;
  (*(v0[18] + 16))(v0[19], v2 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_auditToken, v0[17]);
  v10 = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata;
  Session.Metadata.id.getter();
  type metadata accessor for UUID();
  sub_100002BDC();
  v58 = v12;
  v59 = v11;
  swift_task_alloc();
  UUIDIdentifier.uuid.getter();
  v0[28] = *(v8 + 8);
  v0[29] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13 = sub_10000A9EC();
  v14(v13);
  Session.Metadata.useCaseID.getter();
  v63 = v2;
  v57 = v10;
  Session.Metadata.onBehalfOfPID.getter();
  v15 = *(v9 + 16);
  v16 = _swiftEmptyArrayStorage;
  if (v15)
  {
    v17 = v0[11];
    v68 = v0[8];
    v67 = v0[6];
    v18 = v0[4];
    sub_100070BF0();
    v16 = _swiftEmptyArrayStorage;
    result = sub_10014AFA0();
    v22 = v18;
    v23 = 0;
    v24 = v18 + 64;
    v64 = v18 + 72;
    v70 = v18;
    v65 = v15;
    v66 = v18 + 64;
    if ((result & 0x8000000000000000) == 0)
    {
      while (result < 1 << *(v22 + 32))
      {
        if ((*(v24 + 8 * (result >> 6)) & (1 << result)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v22 + 36) != v20)
        {
          goto LABEL_26;
        }

        v73 = 1 << result;
        v74 = result >> 6;
        v69 = v21;
        v71 = v23;
        v72 = v20;
        v25 = *(v67 + 48);
        v26 = v0[9];
        v27 = v0[10];
        v77 = result;
        v78 = v16;
        v29 = v0[7];
        v28 = v0[8];
        v30 = (*(v22 + 48) + 16 * result);
        v31 = *v30;
        v32 = v30[1];
        v75 = v0[12];
        v76 = *(v17 + 72);
        (*(v17 + 16))(v26 + v25, *(v22 + 56) + v76 * result, v27);
        *v28 = v31;
        *(v68 + 8) = v32;
        v33 = *(v17 + 32);
        v33(&v28[*(v67 + 48)], v26 + v25, v27);
        sub_10009FF08(v28, v29);

        v34 = v29 + *(v67 + 48);
        v16 = v78;
        v33(v75, v34, v27);
        v35 = v78[2];
        if (v35 >= v78[3] >> 1)
        {
          sub_100070BF0();
          v16 = v78;
        }

        v36 = v0[12];
        v37 = v0[10];
        v16[2] = v35 + 1;
        v33(v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + v35 * v76, v36, v37);
        v22 = v70;
        v38 = 1 << *(v70 + 32);
        result = v77;
        if (v77 >= v38)
        {
          goto LABEL_27;
        }

        v24 = v66;
        v39 = *(v66 + 8 * v74);
        if ((v39 & v73) == 0)
        {
          goto LABEL_28;
        }

        if (*(v70 + 36) != v72)
        {
          goto LABEL_29;
        }

        v40 = v39 & (-2 << (v77 & 0x3F));
        if (v40)
        {
          v38 = __clz(__rbit64(v40)) | v77 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v41 = v74 << 6;
          v42 = (v64 + 8 * v74);
          v43 = v74 + 1;
          while (v43 < (v38 + 63) >> 6)
          {
            v45 = *v42++;
            v44 = v45;
            v41 += 64;
            ++v43;
            if (v45)
            {
              sub_100016E94(v77, v72, v69 & 1);
              v22 = v70;
              v38 = __clz(__rbit64(v44)) + v41;
              goto LABEL_18;
            }
          }

          sub_100016E94(v77, v72, v69 & 1);
          v22 = v70;
        }

LABEL_18:
        v23 = v71 + 1;
        if (v71 + 1 == v65)
        {
          goto LABEL_21;
        }

        v21 = 0;
        v20 = *(v22 + 36);
        result = v38;
        if (v38 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_21:
    v46 = v0[5];
    v79 = v0[2];

    InferenceProviderPrewarmInformation.init(bundleIdentifier:requestorAuditToken:sessionUUID:useCaseIdentifier:onBehalfOfPid:metadata:customAssetConfigurations:)();

    v47 = v46[41];
    v48 = v46[42];
    sub_100003370(v46 + 38, v47);
    v49 = InferenceProviderDescriptor.id.getter();
    (*(v48 + 88))(v79, v49, v50, v61, v56, v63 + v62, v47, v48, v16);

    v51 = v46[50];
    v52 = v46[51];
    sub_100003370(v46 + 47, v51);
    v53 = swift_task_alloc();
    UUIDIdentifier.uuid.getter();
    Session.Metadata.useCaseID.getter();
    sub_1000294D0();
    v54 = sub_100091E08(v60);
    (*(v52 + 24))(v53, 2, v63 + v57, v79, v54, v51, v52);

    (*(v58 + 8))(v53, v59);

    v55 = swift_task_alloc();
    v0[30] = v55;
    *v55 = v0;
    v55[1] = sub_100054794;

    return sub_100017038();
  }

  return result;
}

uint64_t sub_100016E94(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_100016EA0()
{
  sub_1000055B0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (sub_1000136A8())
  {
    sub_10004BE14();
  }

  v13 = sub_100065020(&qword_1001BD070, &qword_100173948);
  sub_100002F04(v13);
  sub_100004B1C();
  __chkstk_darwin(v14);
  sub_100003C70();
  v15 = sub_100003370((v0 + 40), *(v0 + 64));
  __chkstk_darwin(v15);
  sub_10000A328();
  *(v16 - 48) = v12;
  *(v16 - 40) = v10;
  *(v16 - 32) = v8;
  *(v16 - 24) = v0;
  *(v16 - 16) = v6;
  *(v16 - 8) = v4;
  sub_1000084CC();
  sub_1000030E4();
  if (v4)
  {
  }

  v17 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
  sub_10000A6F0(v17);
  sub_10000ECD8(v2, &qword_1001BD070, &qword_100173948);
  sub_100002EEC();
}

uint64_t sub_100017038()
{
  sub_100002BAC();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v1[21] = v5;
  v1[22] = v6;
  v1[20] = v7;
  v8 = type metadata accessor for InferenceProviderDescriptor();
  v1[27] = v8;
  sub_100002F44(v8);
  v1[28] = v9;
  v1[29] = sub_100002C58();
  v10 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v10);
  v1[30] = sub_100002C58();
  v11 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  sub_100002F04(v11);
  v1[31] = sub_100002C58();
  v12 = sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100002F04(v12);
  v1[32] = sub_100002C58();
  v13 = type metadata accessor for AssetPolicy();
  v1[33] = v13;
  sub_100002F44(v13);
  v1[34] = v14;
  v1[35] = sub_10000F0C0();
  v1[36] = swift_task_alloc();
  v15 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[37] = v15;
  sub_100002F44(v15);
  v1[38] = v16;
  v1[39] = sub_10000F0C0();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v17 = sub_100002C10();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_100017264()
{
  sub_100001ED0();
  sub_100002EC0(v0[7]);
  v0[39] = *(v1 + 128);

  ModelXPCRequest.PrewarmSession.sessionID.getter();
  v0[40] = ModelXPCRequest.PrewarmSession.metadata.getter();
  v2 = swift_task_alloc();
  v0[41] = v2;
  *v2 = v0;
  v2[1] = sub_100054604;
  sub_1000031B8(v0[18]);

  return sub_100017334();
}

uint64_t sub_100017334()
{
  sub_100002BAC();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_100065020(&qword_1001B9C60, &qword_1001706B8);
  v1[6] = v5;
  sub_100002F04(v5);
  v1[7] = sub_10000F0C0();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v6 = type metadata accessor for CustomAssetConfiguration();
  v1[10] = v6;
  sub_100002F44(v6);
  v1[11] = v7;
  v1[12] = sub_100002C58();
  v8 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[13] = v8;
  sub_100002F44(v8);
  v1[14] = v9;
  v1[15] = sub_10000F0C0();
  v1[16] = swift_task_alloc();
  v10 = type metadata accessor for AuditToken();
  v1[17] = v10;
  sub_100002F44(v10);
  v1[18] = v11;
  v1[19] = sub_100002C58();
  v12 = type metadata accessor for InferenceProviderPrewarmInformation();
  v1[20] = v12;
  sub_100002F44(v12);
  v1[21] = v13;
  v1[22] = sub_100002C58();
  v14 = type metadata accessor for InferenceProviderDescriptor();
  v1[23] = v14;
  sub_100002F44(v14);
  v1[24] = v15;
  v1[25] = sub_100002C58();
  v16 = sub_100002C10();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_10001756C()
{
  sub_100002BAC();
  sub_100003324((v0 + 176));
  swift_task_alloc();
  sub_100004B34();
  *(v0 + 624) = v1;
  *v1 = v2;
  sub_100002FAC(v1);
  v3 = sub_1000A0258();

  return Task<>.value.getter(v3);
}

uint64_t sub_1000175F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  if (*(v14 + 320))
  {
  }

  else
  {
    (*(v14 + 288))(*(v14 + 224), *(v14 + 152), *(v14 + 208));
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = sub_1000038BC(v17);
    v19 = *(v14 + 304);
    v20 = *(v14 + 224);
    if (v18)
    {
      sub_10000A05C();
      swift_slowAlloc();
      a9 = v19;
      sub_10000A45C();
      swift_slowAlloc();
      sub_1000265BC();
      *v19 = 136315138;
      sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
      sub_100042FBC();
      v21 = sub_1000DABA4();
      (v19)(v21);
      v22 = sub_10000CD1C();
      sub_100004A3C(v22, v23, v24);
      sub_100005974();

      *(v19 + 4) = v20;
      sub_1000033FC();
      _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
      sub_100003324(v15);
      sub_1000039CC();

      sub_10000BFCC();
    }

    else
    {

      v30 = sub_100011BF0();
      (v19)(v30);
    }

    v31 = *(v14 + 176);
    v32 = *(v14 + 152);
    v33 = swift_task_alloc();
    *(v33 + 16) = v31;
    *(v33 + 24) = v32;
    v34 = sub_100032338();
    sub_100028248(v34, v35, v36);
  }

  sub_100003324((v14 + 56));
  sub_10000ED84(v14 + 16, &qword_1001B9CB0);

  sub_100002F54();
  sub_100003540();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000177D8()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  v4 = *v1;
  sub_100003744();
  *v5 = v4;
  *(v7 + 264) = v6;
  *(v7 + 272) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000178EC()
{
  sub_10000385C();
  sub_100003284();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 448) = v0;

  sub_10000A9E0();
  v5 = v2[33];
  v6 = v2[32];
  v7 = v2[31];

  v8 = sub_10000CF10();
  v9(v8);
  (*(v6 + 8))(v5, v7);
  sub_100003540();

  return _swift_task_switch(v10, v11, v12);
}

void sub_100017B34()
{
  sub_1000055B0();
  v76 = v1;
  v77 = v0;
  v75 = v2;
  v4 = v3;
  v6 = v5;
  v66 = type metadata accessor for AppleIntelligenceReportingError();
  sub_100002BDC();
  v64 = v7;
  __chkstk_darwin(v8);
  sub_100009C24();
  v68 = v9;
  sub_100002F1C();
  __chkstk_darwin(v10);
  sub_1000079F8();
  v65 = v11;
  sub_100002F1C();
  __chkstk_darwin(v12);
  sub_1000079F8();
  v67 = v13;
  sub_100002F1C();
  __chkstk_darwin(v14);
  v61[1] = v61 - v15;
  v16 = sub_100065020(&qword_1001B9048, &qword_10016FCB8);
  sub_100002F04(v16);
  sub_100004B1C();
  __chkstk_darwin(v17);
  v74 = v61 - v18;
  v19 = sub_100065020(&qword_1001B9050, &qword_10016FCC0);
  sub_100002F04(v19);
  sub_100004B1C();
  __chkstk_darwin(v20);
  v21 = sub_100065020(&qword_1001B9058, &qword_10016FCC8);
  sub_100002F04(v21);
  sub_100004B1C();
  __chkstk_darwin(v22);
  type metadata accessor for AppleIntelligenceEvent();
  sub_100002BDC();
  v79 = v24;
  v80 = v23;
  __chkstk_darwin(v23);
  sub_100002B8C();
  v78 = v26 - v25;
  v27 = subsystemName.getter();
  v72 = v28;
  v73 = v27;
  v29 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  v30 = sub_100002F04(v29);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v33 = type metadata accessor for UUID();
  v62 = *(v33 - 8);
  v63 = v6;
  v61[0] = *(v62 + 16);
  (v61[0])(v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v33);
  sub_1000039A8();
  sub_100009BFC(v34, v35, v36, v33);
  v37 = *&aExecuterqueuer[8 * v4];
  v70 = *&aExecuterqueuer[8 * v4 + 24];
  v71 = v37;
  type metadata accessor for UUIDIdentifier();
  sub_100003978();
  v42 = sub_100009BFC(v38, v39, v40, v41);
  v69 = v61;
  __chkstk_darwin(v42);
  sub_100003978();
  v46 = sub_100009BFC(v43, v44, v45, v33);
  __chkstk_darwin(v46);
  sub_100003978();
  sub_100009BFC(v47, v48, v49, v33);

  Dictionary.init(dictionaryLiteral:)();
  AppleIntelligenceUseCase.init(useCaseIdentifier:parameters:)();
  type metadata accessor for AppleIntelligenceUseCase();
  sub_1000039A8();
  sub_100009BFC(v50, v51, v52, v53);
  type metadata accessor for AppleIntelligenceReportingMetadata();
  sub_100003978();
  sub_100009BFC(v54, v55, v56, v57);

  v58 = v80;
  sub_100005600();
  v59 = v78;
  v60 = v79;
  AppleIntelligenceInferenceEvent.init(subsystem:sessionIdentifier:stepIdentifier:invocationRequestIdentifier:clientRequestIdentifier:modelManagerRequestIdentifier:errors:useCaseIdentifier:additionalUseCaseIdentifiers:requestorBundleIdentifier:onBehalfOfBundleIdentifier:inferenceProviderIdentifier:assetBundleIdentifier:assets:metadata:)();
  (*(v60 + 104))(v59, enum case for AppleIntelligenceEvent.inference(_:), v58);
  if (*(v77 + 16))
  {

    _s26AppleIntelligenceReporting13EventReporterC04emitabD09eventInfoyAA0abD0O_tAA0abC5ErrorOYKF();
    (*(v60 + 8))(v59, v58);
  }

  else
  {
    (*(v60 + 8))(v59, v58);
  }

  sub_100002EEC();
}

unint64_t sub_100018380()
{
  result = qword_1001BB998;
  if (!qword_1001BB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BB998);
  }

  return result;
}

void sub_1000183D4(uint64_t a1@<X8>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{

  sub_100026D78(a1 + 1, v30, v31, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_100018404()
{
}

uint64_t sub_100018428()
{
  sub_100004A04((v0 + 96), v0 + 56);
  v1 = *(v0 + 88);
  sub_100003370((v0 + 56), *(v0 + 80));
  return v1 + 16;
}

uint64_t sub_100018498()
{

  return swift_slowAlloc();
}

void *sub_1000184C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return Hasher.init(_seed:)();
}

uint64_t sub_1000184E0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_100018508(void *a1)
{
  a1[2] = v1;
  a1[3] = v2;
  a1[4] = v1;

  return swift_retain_n();
}

void sub_10001852C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_10001855C()
{
}

void sub_10001857C()
{
  *(v2 - 144) = 0;
  *(v2 - 136) = 0;
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
}

uint64_t sub_1000185C4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 184) = a1;
  v3 = *(v1 + 120) + 112;

  return sub_10006ABDC(v3, v1 + 16);
}

uint64_t sub_100018630()
{
  *(v1 - 120) = *(v0 + 232);
  *(v1 - 168) = *(v0 + 208);

  return type metadata accessor for RequestMetadata();
}

void sub_1000186A4()
{

  sub_1000652FC();
}

double sub_10001874C(uint64_t a1, double result)
{
  if (*&a1 < result)
  {
    return *&a1;
  }

  return result;
}

uint64_t sub_10001875C()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2112;

  return swift_errorRetain();
}

void sub_10001878C()
{

  sub_10003E244();
}

uint64_t sub_1000187B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_task_alloc();
}

uint64_t sub_1000187D8(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_1000187F4()
{
}

unint64_t sub_100018830(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_100004A3C(a1, a2, &a9);
}

uint64_t sub_1000188B4()
{
}

uint64_t sub_1000188CC()
{
}

uint64_t sub_1000188F0()
{

  return swift_arrayDestroy();
}

uint64_t sub_10001890C()
{

  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_100018958(uint64_t a1)
{

  return Set.description.getter();
}

uint64_t sub_1000189DC()
{
  v1 = *(v0 + 40);
  sub_100003370((v0 + 16), v1);
  return v1;
}

uint64_t sub_100018A64()
{

  return dispatch thunk of static Comparable.>= infix(_:_:)();
}

uint64_t sub_100018AB0()
{

  return swift_slowAlloc();
}

void sub_100018ACC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

uint64_t sub_100018AEC()
{
  v0 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  sub_100002F04(v0);
  sub_100004B1C();
  __chkstk_darwin(v1);
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  UUIDIdentifier.uuid.getter();
  type metadata accessor for UUID();
  sub_1000039A8();
  sub_100009BFC(v2, v3, v4, v5);
  return GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerSessionIdentifier.setter();
}

uint64_t sub_100018C30(uint64_t a1)
{
  *(v1 + 16) = a1;

  return swift_errorRetain();
}

uint64_t sub_100018CAC()
{
}

void sub_100018CCC(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0x16u);
}

uint64_t sub_100018D00()
{
  v2 = *(v0 + 216);

  return sub_100019334(v2);
}

uint64_t sub_100018D38(_WORD *a1)
{
  *a1 = 0;
}

void sub_100018D54(uint64_t a1)
{
  *(a1 + 16) = v1;

  sub_1001281F8(sub_10014A580, v3, v2);
}

uint64_t sub_100018D8C()
{

  return type metadata accessor for Logger();
}

uint64_t sub_100018DC4()
{
}

uint64_t sub_100018DEC(uint64_t a1)
{

  return sub_100009BFC(v1, 1, 1, a1);
}

void sub_100018E18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

uint64_t sub_100018E50(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100018E6C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v9 = v8;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    a4(0);
    sub_10005FAF0(a5, a6, a7);
    Set.Iterator.init(_cocoa:)();
    result = v34;
    v15 = v35;
    v7 = v36;
    v16 = v37;
    v17 = v38;
  }

  else
  {
    sub_100011E24();
    v15 = v18;
    sub_10000CFD8();
    v17 = v19 & v20;
    v22 = v21;

    result = v22;
    v16 = 0;
  }

  v33 = result;
  if (result < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v23 = v16;
  v24 = v17;
  v25 = v16;
  if (v17)
  {
LABEL_9:
    v26 = (v24 - 1) & v24;
    v27 = *(*(result + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

    if (v27)
    {
      while (1)
      {
        v39 = v27;
        v28 = a1(&v39);
        if (v9)
        {
          break;
        }

        if (v28)
        {
          goto LABEL_19;
        }

        v16 = v25;
        v17 = v26;
        result = v33;
        if ((v33 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_11:
        if (__CocoaSet.Iterator.next()())
        {
          a4(0);
          sub_1000358A4();
          swift_dynamicCast();
          v27 = v39;
          v25 = v16;
          v26 = v17;
          if (v39)
          {
            continue;
          }
        }

        goto LABEL_17;
      }

LABEL_19:
      sub_10014B068();
      sub_100007F18(v30);
    }

    else
    {
LABEL_17:
      sub_10014B068();
      sub_100007F18(v29);
      return 0;
    }

    return v27;
  }

  else
  {
    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= ((v7 + 64) >> 6))
      {
        goto LABEL_17;
      }

      v24 = *(v15 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1000190A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_100004A3C(v4, v5, va);
}

void *sub_1000190BC(unint64_t a1)
{

  return sub_100140DC4(a1, sub_100149310);
}

uint64_t sub_1000190EC(uint64_t a1)
{
  v4 = *(v2 + 56) + 40 * a1;

  return sub_100007130(v4, v1);
}

uint64_t sub_10001910C(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_100019130()
{
}

void *sub_100019148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  return Hasher.init(_seed:)();
}

uint64_t sub_100019164()
{
  v2 = *(v0 + 64);
  *(v2 + 164) = 0;
  *(v2 + 144) = 0;
}

uint64_t sub_100019194(void *a1)
{
  a1[2] = v1;
  a1[3] = v3;
  a1[4] = v2;
  a1[5] = v1;

  return swift_retain_n();
}

uint64_t sub_1000191D4()
{
  v1 = v0[11];
  sub_100003370(v0 + 7, v0[10]);
  return v1 + 40;
}

void sub_100019200()
{
  *(v0 + 136) = 0;
  *(v0 + 144) = 0xE000000000000000;

  _StringGuts.grow(_:)(29);
}

__n128 sub_1000192C0()
{
  v1 = *(v0 - 128);
  *(v0 - 224) = *(v0 - 144);
  *(v0 - 208) = v1;
  result = *(v0 - 112);
  *(v0 - 192) = result;
  *(v0 - 176) = *(v0 - 96);
  return result;
}

uint64_t sub_1000192DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005B00();
  v4(v3);
  sub_100002C00();
  v5 = sub_1000062B0();
  v6(v5);
  return a2;
}

uint64_t sub_100019338(uint64_t a1)
{
  v2 = sub_10002A104();
  v3(v2);
  sub_100002C00();
  (*(v4 + 8))(v1);
  return v1;
}

uint64_t sub_10001938C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000193F0(uint64_t a1)
{
  v2 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001944C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_task_create();
}

uint64_t sub_1000194D4()
{
}

uint64_t sub_100019540()
{

  return swift_task_alloc();
}

uint64_t sub_100019560()
{

  return swift_slowAlloc();
}

void sub_1000195D4(void *a1)
{

  _os_log_impl(a1, v2, v1, v3, v4, 2u);
}

uint64_t sub_1000195F8(float a1)
{
  *v1 = a1;

  return type metadata accessor for InferenceProviderAssetDescriptor();
}

uint64_t sub_10001961C()
{

  return sub_10000D4B4(v1, v0);
}

uint64_t sub_100019648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v22 + 4) = v21;
  *(v22 + 12) = 2112;

  return swift_errorRetain();
}

uint64_t sub_100019684()
{
  v20 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  sub_100006098();
  __chkstk_darwin(v2);
  sub_100007CB0();
  v3 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets + v0, v23);
  v4 = *&v3[v0];
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10001C150();
    sub_100011434();
    sub_1000EE39C(v5, v6, &unk_1001720DC);
    result = Set.Iterator.init(_cocoa:)();
    v4 = v24;
    v8 = v25;
    v0 = v26;
    v9 = v27;
    v10 = v28;
  }

  else
  {
    v8 = v4 + 56;
    sub_100018A20();
    v10 = v11 & v12;
    result = swift_bridgeObjectRetain_n();
    v9 = 0;
  }

  v13 = (v0 + 64) >> 6;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
LABEL_16:
      v18 = 0;
      goto LABEL_17;
    }

    type metadata accessor for InferenceProviderAsset(0);
    sub_100009E64();
    v18 = v21;
    if (!v21)
    {
      goto LABEL_17;
    }

LABEL_14:
    v19 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v18, v22);
    sub_10001938C(v19 + v18, v1);

    LODWORD(v19) = *(v1 + *(v20 + 56));
    result = sub_1000193F0(v1);
    if (v19 == 1)
    {
      v18 = 1;
LABEL_17:
      sub_100019334(v4);

      return v18;
    }
  }

  v14 = v9;
  if (v10)
  {
LABEL_10:
    sub_1000062A0();
    v10 = v16 & v15;
    v18 = *(*(v4 + 48) + ((v9 << 9) | (8 * v17)));

    if (!v18)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  while (1)
  {
    v9 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      goto LABEL_16;
    }

    ++v14;
    if (*(v8 + 8 * v9))
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1000198F0(uint64_t a1@<X8>)
{
  *(a1 + ((v1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= v4 << v1;
  *(*(v2 + 48) + 8 * v1) = v3;
  ++*(v2 + 16);
}

uint64_t sub_10001998C()
{
  *(v2 - 88) = v1;
  result = v0[26];
  v4 = v0[22];
  v0[49] = *(v4 + 8);
  v0[50] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return result;
}

uint64_t sub_100019A1C()
{

  return swift_storeEnumTagMultiPayload();
}

BOOL sub_100019A64()
{

  return os_log_type_enabled(v0, v1);
}

void sub_100019B18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

void sub_100019B38(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

void sub_100019B58()
{
  *(v0 + 136) = 0;
  *(v0 + 144) = 0xE000000000000000;

  _StringGuts.grow(_:)(29);
}

uint64_t sub_100019B9C()
{

  return swift_beginAccess();
}

uint64_t sub_100019BD8(uint64_t a1)
{
  *(v2 - 88) = *(v1 + 232);
}

BOOL sub_100019C50()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100019CC8()
{

  return sub_10009F90C(v0, v2, v1);
}

uint64_t sub_100019CE4(uint64_t a1, uint64_t a2)
{
  v78 = type metadata accessor for CustomAssetConfiguration();
  sub_100002BDC();
  v72 = v4;
  __chkstk_darwin(v5);
  sub_100002B8C();
  v69 = v7 - v6;
  v74 = sub_100065020(&qword_1001BB450, &qword_100171E68);
  sub_100002C00();
  __chkstk_darwin(v8);
  v77 = &v68 - v9;
  v10 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  v11 = sub_100002F04(v10);
  __chkstk_darwin(v11);
  sub_100005630();
  v71 = v12 - v13;
  v15 = __chkstk_darwin(v14);
  v75 = &v68 - v16;
  __chkstk_darwin(v15);
  v76 = &v68 - v17;
  v18 = type metadata accessor for InferenceProviderDescriptor();
  sub_100002BDC();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_100005630();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  v27 = &v68 - v26;
  v73 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
  v28 = InferenceProviderAssetDescriptor.identifier.getter();
  v30 = v29;
  v31 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
  v79 = a2;
  if (v28 == InferenceProviderAssetDescriptor.identifier.getter() && v30 == v32)
  {
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v70 = v31;
  v35 = *(a1 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
  sub_100013D6C((a1 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), *(a1 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24));
  v36 = sub_10000E86C();
  v37(v36, v35);
  v38 = *(v79 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
  sub_100013D6C((v79 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), *(v79 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24));
  v39 = sub_10000E86C();
  v40(v39, v38);
  v41 = static InferenceProviderDescriptor.== infix(_:_:)();
  v42 = *(v20 + 8);
  v42(v24, v18);
  v42(v27, v18);
  if ((v41 & 1) == 0)
  {
LABEL_15:
    v54 = 0;
    return v54 & 1;
  }

  v43 = v76;
  InferenceProviderAssetDescriptor.customAssetConfiguration.getter();
  v44 = v75;
  InferenceProviderAssetDescriptor.customAssetConfiguration.getter();
  v45 = *(v74 + 48);
  v46 = v77;
  sub_10001E72C(v43, v77, &qword_1001B9D00, &qword_100171E00);
  sub_10001E72C(v44, v46 + v45, &qword_1001B9D00, &qword_100171E00);
  v47 = v78;
  if (sub_10000C6C0(v46, 1, v78) != 1)
  {
    v55 = v71;
    sub_10001E72C(v46, v71, &qword_1001B9D00, &qword_100171E00);
    if (sub_10000C6C0(v46 + v45, 1, v47) != 1)
    {
      v63 = v72;
      v64 = v69;
      (*(v72 + 32))(v69, v46 + v45, v47);
      sub_100035324();
      sub_100011B5C(v65, v66, &protocol conformance descriptor for CustomAssetConfiguration);
      v54 = dispatch thunk of static Equatable.== infix(_:_:)();
      v67 = *(v63 + 8);
      v67(v64, v47);
      sub_10000ECD8(v44, &qword_1001B9D00, &qword_100171E00);
      sub_10000ECD8(v43, &qword_1001B9D00, &qword_100171E00);
      v67(v55, v47);
      sub_10000ECD8(v46, &qword_1001B9D00, &qword_100171E00);
      return v54 & 1;
    }

    sub_10000D154();
    sub_10000ECD8(v56, v57, v58);
    sub_10000D154();
    sub_10000ECD8(v59, v60, v61);
    (*(v72 + 8))(v55, v47);
    goto LABEL_14;
  }

  sub_10000D154();
  sub_10000ECD8(v48, v49, v50);
  sub_10000D154();
  sub_10000ECD8(v51, v52, v53);
  if (sub_10000C6C0(v46 + v45, 1, v47) != 1)
  {
LABEL_14:
    sub_10000ECD8(v46, &qword_1001BB450, &qword_100171E68);
    goto LABEL_15;
  }

  sub_10000ECD8(v46, &qword_1001B9D00, &qword_100171E00);
  v54 = 1;
  return v54 & 1;
}