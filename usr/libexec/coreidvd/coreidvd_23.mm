uint64_t sub_100265210@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v58 = a6;
  v56 = a5;
  v51 = a4;
  v68 = a3;
  v69 = a7;
  v9 = type metadata accessor for DIPError.Code();
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v63 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPError();
  v66 = *(v11 - 8);
  v67 = v11;
  __chkstk_darwin(v11);
  v65 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPError.PropertyKey();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v52 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v60 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v49 - v20;
  defaultLogger()();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v70 = v17;
  v59 = v13;
  v55 = v14;
  v53 = a2;
  v50 = a1;
  if (v24)
  {
    v25 = swift_slowAlloc();
    *&v72 = swift_slowAlloc();
    *v25 = 136446466;
    *(v25 + 4) = sub_100141FE4(a1, a2, &v72);
    *(v25 + 12) = 2082;
    v26 = IdentityTarget.debugDescription.getter();
    v28 = sub_100141FE4(v26, v27, &v72);

    *(v25 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "fetchAndUpdateProofingSession called for proofingSessionID: %{public}s and target: %{public}s", v25, 0x16u);
    swift_arrayDestroy();

    v57 = *(v70 + 8);
  }

  else
  {

    v57 = *(v17 + 8);
  }

  v57(v21, v16);
  v64 = v16;
  v29 = swift_allocObject();
  type metadata accessor for IdentityProofingDataContext();
  *(v29 + 16) = 0;
  v54 = v29 + 16;
  *(v29 + 24) = 0;
  swift_allocObject();
  sub_10057E28C();
  v31 = v30;
  v32 = swift_allocObject();
  v32[1] = xmmword_1006D1BF0;
  v32[2] = 0u;
  v32[3] = 0u;
  v32[4] = 0u;
  v32[5] = 0u;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v35 = v51;
  v36 = *v51;
  v78 = v51[1];
  v79 = v36;
  v77 = v51[2];
  v37 = swift_allocObject();
  v38 = v35[1];
  *(v37 + 72) = *v35;
  v39 = v50;
  *(v37 + 16) = v31;
  *(v37 + 24) = v39;
  v40 = v68;
  *(v37 + 32) = v53;
  *(v37 + 40) = v40;
  *(v37 + 48) = v29;
  *(v37 + 56) = v34;
  *(v37 + 64) = v33;
  *(v37 + 88) = v38;
  *(v37 + 104) = v35[2];
  *(v37 + 120) = v32;

  sub_10004D7A0(&v79, &v72);
  sub_10004D7A0(&v78, &v72);
  sub_10004D7A0(&v77, &v72);

  sub_10057C18C(sub_10026C504, v37);

  swift_beginAccess();
  v42 = v32[4];
  v74 = v32[3];
  v75 = v42;
  v76 = v32[5];
  v43 = v32[2];
  v72 = v32[1];
  v73 = v43;
  sub_10000BBC4(&v72, &v71, &qword_10083E3F8, &unk_1006DBD40);

  v45 = v73;
  v46 = v74;
  v47 = v75;
  v48 = v76;
  v41 = v69;
  *v69 = v72;
  v41[1] = v45;
  v41[2] = v46;
  v41[3] = v47;
  v41[4] = v48;
  return result;
}

unint64_t sub_100265C7C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F8860, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100265CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 384) = a5;
  *(v5 + 232) = a3;
  *(v5 + 240) = a4;
  *(v5 + 216) = a1;
  *(v5 + 224) = a2;
  v6 = type metadata accessor for IdentityProofingDisplayMessage();
  *(v5 + 248) = v6;
  v7 = *(v6 - 8);
  *(v5 + 256) = v7;
  *(v5 + 264) = *(v7 + 64);
  *(v5 + 272) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v5 + 280) = v8;
  *(v5 + 288) = *(v8 - 8);
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();

  return _swift_task_switch(sub_100265E24, 0, 0);
}

uint64_t sub_100265E24()
{
  v48 = v0;
  v1 = IdentityTarget.rawValue.getter();
  if (v1 == IdentityTarget.rawValue.getter())
  {
    defaultLogger()();

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 328);
    v6 = *(v0 + 280);
    v7 = *(v0 + 288);
    if (v4)
    {
      v9 = *(v0 + 224);
      v8 = *(v0 + 232);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v47 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100141FE4(v9, v8, &v47);
      _os_log_impl(&_mh_execute_header, v2, v3, "PendingActionsFlow saving proofing error message to associated session: %s", v10, 0xCu);
      sub_10000BB78(v11);
    }

    v12 = *(v7 + 8);
    v12(v5, v6);
    *(v0 + 336) = v12;
    v13 = IdentityProofingDisplayMessage.messages.getter();
    if (v13[2])
    {
      v15 = v13[4];
      v14 = v13[5];

      if (qword_100832B60 != -1)
      {
        swift_once();
      }

      v16 = *(qword_100881E78 + 16);
      os_unfair_lock_lock(v16 + 54);
      sub_100031B5C(&v16[4], v0 + 16);
      os_unfair_lock_unlock(v16 + 54);
      v33 = *(v0 + 264);
      v32 = *(v0 + 272);
      v34 = *(v0 + 248);
      v35 = *(v0 + 256);
      v46 = *(v0 + 384);
      v36 = *(v0 + 232);
      v43 = *(v0 + 224);
      v44 = *(v0 + 240);
      v45 = v15;
      v37 = *(v0 + 216);
      *(v0 + 344) = *(v0 + 72);

      sub_100031918(v0 + 16);
      (*(v35 + 16))(v32, v37, v34);
      v38 = (*(v35 + 80) + 40) & ~*(v35 + 80);
      v39 = swift_allocObject();
      *(v0 + 352) = v39;
      *(v39 + 2) = v43;
      *(v39 + 3) = v36;
      *(v39 + 4) = v44;
      (*(v35 + 32))(&v39[v38], v32, v34);
      v40 = &v39[(v33 + v38 + 7) & 0xFFFFFFFFFFFFFFF8];
      *v40 = v45;
      *(v40 + 1) = v14;
      v40[16] = v46;
      v41 = swift_allocObject();
      *(v0 + 360) = v41;
      *(v41 + 16) = sub_1002676D8;
      *(v41 + 24) = v39;

      v42 = swift_task_alloc();
      *(v0 + 368) = v42;
      *v42 = v0;
      v42[1] = sub_100266380;

      return AsyncCoreDataContainer.performWrite<A>(_:)(v42, sub_10017F710, v41, &type metadata for () + 8);
    }

    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 304);
    v28 = *(v0 + 280);
    if (v26)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "PendingActionsFlow displayMessage message is empty; skipping storing displayMessage", v29, 2u);
    }

    v12(v27, v28);
  }

  else
  {
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 288);
    v20 = *(v0 + 296);
    v22 = *(v0 + 280);
    if (v19)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "PendingActionsFlow not saving error message for phone target", v23, 2u);
    }

    (*(v21 + 8))(v20, v22);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_100266380()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_100266688;
  }

  else
  {

    v2 = sub_1002664B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002664B0(uint64_t a1)
{
  v16 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[42];
  v6 = v1[40];
  v7 = v1[35];
  if (v4)
  {
    v14 = v1[42];
    v9 = v1[28];
    v8 = v1[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "PendingActionsFlow saved proofing error message to associated session: %s", v10, 0xCu);
    sub_10000BB78(v11);

    v14(v6, v7);
  }

  else
  {

    v5(v6, v7);
  }

  v12 = v1[1];

  return v12();
}

uint64_t sub_100266688()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[35];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002667A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_100266848, 0, 0);
}

uint64_t sub_100266848()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[29];
  v0[34] = v0[9];

  sub_100031918((v0 + 2));
  v5 = swift_allocObject();
  v0[35] = v5;
  v5[2] = v4;
  v5[3] = v2;
  v5[4] = v3;
  v6 = swift_allocObject();
  v0[36] = v6;
  *(v6 + 16) = sub_100267800;
  *(v6 + 24) = v5;

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
  *v7 = v0;
  v7[1] = sub_100266A24;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 27, sub_100267820, v6, v8);
}

uint64_t sub_100266A24()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_100266B64;
  }

  else
  {

    *(v2 + 312) = *(v2 + 216);
    v3 = sub_100266BEC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100266B64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100266BEC()
{
  v1 = v0[39];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;
  v6[5] = v2;
  v6[6] = v4;

  sub_1003E653C(0, 0, v3, &unk_1006DBCF0, v6);

  v7 = type metadata accessor for IdentityManagementSessionDelegate();
  v8 = [objc_opt_self() defaultCenter];
  v9 = String._bridgeToObjectiveC()();
  v0[28] = v7;
  sub_100007224(&qword_10083D698, &unk_1006DB6F0);
  [v8 postNotificationName:v9 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100266DA8(int a1, uint64_t a2)
{
  v47 = a2;
  v45 = a1;
  v2 = type metadata accessor for Logger();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityProofingPendingActionsWebService();
  memset(v55, 0, sizeof(v55));
  v56 = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v50 = sub_1002257FC();
  v7 = [objc_allocWithZone(PKPaymentService) init];
  v53 = sub_10001F8D4(0, &unk_1008458A0, PKPaymentService_ptr);
  v54 = &off_10080C410;
  *&v52 = v7;
  v8 = sub_1002255A0();
  v9 = sub_1002257FC();
  type metadata accessor for IdentityProofingExpirationActionProvider();
  v10 = swift_allocObject();
  sub_10001F358(&v52, v10 + 16);
  *(v10 + 56) = v8;
  *(v10 + 64) = v9;
  v11 = sub_1002255A0();
  v12 = sub_100224C64();
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  v13 = qword_1008823E0;
  type metadata accessor for IdentityWatchProvisioningManagerFactory();
  v44 = swift_allocObject();
  v14 = qword_100832C40;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_100882300;
  v53 = v5;
  v54 = &off_10080B7E8;
  *&v52 = v6;
  type metadata accessor for IdentityProofingPendingActionsFlow(0);
  v17 = swift_allocObject();
  v18 = sub_10001F370(&v52, v5);
  v46 = &v44;
  __chkstk_darwin(v18);
  v20 = (&v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v51[3] = v5;
  v51[4] = &off_10080B7E8;
  v51[0] = v22;
  *(v17 + 16) = 0;
  v23 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_workflowRecommendationResponse;
  v24 = type metadata accessor for WorkflowRecommendationResponse(0);
  (*(*(v24 - 8) + 56))(v17 + v23, 1, 1, v24);
  v25 = v17 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_paymentService;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  v26 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessConfigProvider;
  *(v17 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessConfigProvider) = 0;
  v27 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_staticWorkflow;
  v28 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  (*(*(v28 - 8) + 56))(v17 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_watchListener;
  *(v17 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_watchListener) = 0;
  *(v17 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessStepUpConfig) = 0;
  *(v17 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessStepUpIQSettings) = 0;
  swift_beginAccess();
  sub_100267578(v55, v25, &unk_100833B60, &qword_1006BF9E0);
  swift_endAccess();
  *(v17 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_trigger) = v45;
  sub_100020260(v51, v17 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_pendingActionsWebService);
  *(v17 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_userNotificationProvider) = v50;
  *(v17 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_expirationActionProvider) = v10;
  *(v17 + v26) = v47;
  *(v17 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_cleanupProvider) = v11;
  *(v17 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_biomeManager) = v12;
  *(v17 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_deviceInfo) = v15;
  if (qword_1008824A8)
  {
    v30 = *(qword_1008824A8 + 152);
    v31 = v30;
  }

  else
  {
    v30 = 0;
  }

  *(v17 + v29) = v30;
  v32 = qword_100832C18;
  v33 = v15;

  if (v32 != -1)
  {
    swift_once();
  }

  v34 = qword_100882220;
  v35 = type metadata accessor for IdentityBiometricStoreHelper();
  type metadata accessor for IdentityProofingCredentialProvider();
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = v34;
  v36[6] = v35;
  v36[7] = &off_10080A0A8;
  *(v17 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_credentialProvider) = v36;
  *(v17 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_identityWatchProvisioningManagerFactory) = v44;

  *(v17 + 24) = sub_10003D358(_swiftEmptyArrayStorage);
  *(v17 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_actionsRepository) = v16;

  defaultLogger()();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    v41 = *(v17 + v29);
    *(v39 + 4) = v41;
    *v40 = v41;
    v42 = v41;
    _os_log_impl(&_mh_execute_header, v37, v38, "IdentityProofingPendingActionsFlow: watchListener = %@", v39, 0xCu);
    sub_10000BE18(v40, &unk_100833B50, &unk_1006D8FB0);
  }

  (*(v48 + 8))(v4, v49);
  sub_10000BE18(v55, &unk_100833B60, &qword_1006BF9E0);
  sub_10000BB78(v51);
  sub_10000BB78(&v52);
  return v17;
}

unint64_t sub_100267450(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FB880, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10026749C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002674F8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100267578(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007224(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1002675FC()
{
  v1 = type metadata accessor for IdentityProofingDisplayMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

void sub_1002676D8(uint64_t a1)
{
  v3 = *(type metadata accessor for IdentityProofingDisplayMessage() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_100254670(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *v5, *(v5 + 8), *(v5 + 16));
}

uint64_t sub_100267790()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002677C8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10026783C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100267884(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_100226AF8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10026794C()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1002679A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1002679D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100267A1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100267AE4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100267B2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_100253B34(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100267C24()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100267C68()
{
  v1 = type metadata accessor for ActionRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3 + *(v1 + 20));
  v6 = type metadata accessor for PendingActionContext(0);
  if ((*(*(v6 - 1) + 48))(v5, 1, v6))
  {
    goto LABEL_895;
  }

  v7 = v5[15];
  if (v7 == 1)
  {
    goto LABEL_5;
  }

  if (v7 != 2)
  {

LABEL_5:
    if (v5[19] != 1)
    {
    }

    if (v5[23] != 1)
    {
    }
  }

  if (v5[27] != 1)
  {
  }

  if (v5[35] != 1)
  {
  }

  v8 = v5 + v6[18];
  v9 = type metadata accessor for WorkflowRecommendationResponse(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v27 = v5;
    v10 = v0;
    v11 = v4;
    v12 = (v2 + 48) & ~v2;
    v13 = v2;

    v14 = type metadata accessor for Workflow(0);
    v15 = *(v14 + 72);
    v16 = type metadata accessor for HardwareAttestationType();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(&v8[v15], 1, v16))
    {
      (*(v17 + 8))(&v8[v15], v16);
    }

    v18 = &v8[*(v14 + 156)];
    v2 = v13;
    v3 = v12;
    v4 = v11;
    v0 = v10;
    if (*(v18 + 1) != 1)
    {

      if (*(v18 + 124) != 1)
      {
        if (*(v18 + 2) != 1)
        {
        }

        if (*(v18 + 6) != 1)
        {
        }

        if (*(v18 + 10) != 1)
        {
        }

        if (*(v18 + 14) != 1)
        {
        }

        if (*(v18 + 18) != 1)
        {
        }

        if (*(v18 + 22) != 1)
        {
        }

        if (*(v18 + 26) != 1)
        {
        }

        if (*(v18 + 30) != 1)
        {
        }

        if (*(v18 + 34) != 1)
        {
        }

        if (*(v18 + 38) != 1)
        {
        }

        if (*(v18 + 42) != 1)
        {
        }

        if (*(v18 + 46) != 1)
        {
        }

        if (*(v18 + 50) != 1)
        {
        }

        if (*(v18 + 54) != 1)
        {
        }

        if (*(v18 + 58) != 1)
        {
        }

        if (*(v18 + 62) != 1)
        {
        }

        if (*(v18 + 66) != 1)
        {
        }

        if (*(v18 + 70) != 1)
        {
        }

        if (*(v18 + 74) != 1)
        {
        }

        if (*(v18 + 78) != 1)
        {
        }

        if (*(v18 + 82) != 1)
        {
        }

        if (*(v18 + 86) != 1)
        {
        }

        if (*(v18 + 90) != 1)
        {
        }

        if (*(v18 + 94) != 1)
        {
        }

        if (*(v18 + 98) != 1)
        {
        }

        if (*(v18 + 102) != 1)
        {
        }
      }

      if (*(v18 + 256) != 1)
      {
        if (*(v18 + 134) != 1)
        {
        }

        if (*(v18 + 138) != 1)
        {
        }

        if (*(v18 + 142) != 1)
        {
        }

        if (*(v18 + 146) != 1)
        {
        }

        if (*(v18 + 150) != 1)
        {
        }

        if (*(v18 + 154) != 1)
        {
        }

        if (*(v18 + 158) != 1)
        {
        }

        if (*(v18 + 162) != 1)
        {
        }

        if (*(v18 + 166) != 1)
        {
        }

        if (*(v18 + 170) != 1)
        {
        }

        if (*(v18 + 174) != 1)
        {
        }

        if (*(v18 + 178) != 1)
        {
        }

        if (*(v18 + 182) != 1)
        {
        }

        if (*(v18 + 186) != 1)
        {
        }

        if (*(v18 + 190) != 1)
        {
        }

        if (*(v18 + 194) != 1)
        {
        }

        if (*(v18 + 198) != 1)
        {
        }

        if (*(v18 + 202) != 1)
        {
        }

        if (*(v18 + 206) != 1)
        {
        }

        if (*(v18 + 210) != 1)
        {
        }

        if (*(v18 + 214) != 1)
        {
        }

        if (*(v18 + 218) != 1)
        {
        }

        if (*(v18 + 222) != 1)
        {
        }

        if (*(v18 + 226) != 1)
        {
        }

        if (*(v18 + 230) != 1)
        {
        }

        if (*(v18 + 234) != 1)
        {
        }
      }

      if (*(v18 + 388) != 1)
      {
        if (*(v18 + 266) != 1)
        {
        }

        if (*(v18 + 270) != 1)
        {
        }

        if (*(v18 + 274) != 1)
        {
        }

        if (*(v18 + 278) != 1)
        {
        }

        if (*(v18 + 282) != 1)
        {
        }

        if (*(v18 + 286) != 1)
        {
        }

        if (*(v18 + 290) != 1)
        {
        }

        if (*(v18 + 294) != 1)
        {
        }

        if (*(v18 + 298) != 1)
        {
        }

        if (*(v18 + 302) != 1)
        {
        }

        if (*(v18 + 306) != 1)
        {
        }

        if (*(v18 + 310) != 1)
        {
        }

        if (*(v18 + 314) != 1)
        {
        }

        if (*(v18 + 318) != 1)
        {
        }

        if (*(v18 + 322) != 1)
        {
        }

        if (*(v18 + 326) != 1)
        {
        }

        if (*(v18 + 330) != 1)
        {
        }

        if (*(v18 + 334) != 1)
        {
        }

        if (*(v18 + 338) != 1)
        {
        }

        if (*(v18 + 342) != 1)
        {
        }

        if (*(v18 + 346) != 1)
        {
        }

        if (*(v18 + 350) != 1)
        {
        }

        if (*(v18 + 354) != 1)
        {
        }

        if (*(v18 + 358) != 1)
        {
        }

        if (*(v18 + 362) != 1)
        {
        }

        if (*(v18 + 366) != 1)
        {
        }
      }

      if (*(v18 + 520) != 1)
      {
        if (*(v18 + 398) != 1)
        {
        }

        if (*(v18 + 402) != 1)
        {
        }

        if (*(v18 + 406) != 1)
        {
        }

        if (*(v18 + 410) != 1)
        {
        }

        if (*(v18 + 414) != 1)
        {
        }

        if (*(v18 + 418) != 1)
        {
        }

        if (*(v18 + 422) != 1)
        {
        }

        if (*(v18 + 426) != 1)
        {
        }

        if (*(v18 + 430) != 1)
        {
        }

        if (*(v18 + 434) != 1)
        {
        }

        if (*(v18 + 438) != 1)
        {
        }

        if (*(v18 + 442) != 1)
        {
        }

        if (*(v18 + 446) != 1)
        {
        }

        if (*(v18 + 450) != 1)
        {
        }

        if (*(v18 + 454) != 1)
        {
        }

        if (*(v18 + 458) != 1)
        {
        }

        if (*(v18 + 462) != 1)
        {
        }

        if (*(v18 + 466) != 1)
        {
        }

        if (*(v18 + 470) != 1)
        {
        }

        if (*(v18 + 474) != 1)
        {
        }

        if (*(v18 + 478) != 1)
        {
        }

        if (*(v18 + 482) != 1)
        {
        }

        if (*(v18 + 486) != 1)
        {
        }

        if (*(v18 + 490) != 1)
        {
        }

        if (*(v18 + 494) != 1)
        {
        }

        if (*(v18 + 498) != 1)
        {
        }
      }

      if (*(v18 + 652) != 1)
      {
        if (*(v18 + 530) != 1)
        {
        }

        if (*(v18 + 534) != 1)
        {
        }

        if (*(v18 + 538) != 1)
        {
        }

        if (*(v18 + 542) != 1)
        {
        }

        if (*(v18 + 546) != 1)
        {
        }

        if (*(v18 + 550) != 1)
        {
        }

        if (*(v18 + 554) != 1)
        {
        }

        if (*(v18 + 558) != 1)
        {
        }

        if (*(v18 + 562) != 1)
        {
        }

        if (*(v18 + 566) != 1)
        {
        }

        if (*(v18 + 570) != 1)
        {
        }

        if (*(v18 + 574) != 1)
        {
        }

        if (*(v18 + 578) != 1)
        {
        }

        if (*(v18 + 582) != 1)
        {
        }

        if (*(v18 + 586) != 1)
        {
        }

        if (*(v18 + 590) != 1)
        {
        }

        if (*(v18 + 594) != 1)
        {
        }

        if (*(v18 + 598) != 1)
        {
        }

        if (*(v18 + 602) != 1)
        {
        }

        if (*(v18 + 606) != 1)
        {
        }

        if (*(v18 + 610) != 1)
        {
        }

        if (*(v18 + 614) != 1)
        {
        }

        if (*(v18 + 618) != 1)
        {
        }

        if (*(v18 + 622) != 1)
        {
        }

        if (*(v18 + 626) != 1)
        {
        }

        if (*(v18 + 630) != 1)
        {
        }
      }

      if (*(v18 + 784) != 1)
      {
        if (*(v18 + 662) != 1)
        {
        }

        if (*(v18 + 666) != 1)
        {
        }

        if (*(v18 + 670) != 1)
        {
        }

        if (*(v18 + 674) != 1)
        {
        }

        if (*(v18 + 678) != 1)
        {
        }

        if (*(v18 + 682) != 1)
        {
        }

        if (*(v18 + 686) != 1)
        {
        }

        if (*(v18 + 690) != 1)
        {
        }

        if (*(v18 + 694) != 1)
        {
        }

        if (*(v18 + 698) != 1)
        {
        }

        if (*(v18 + 702) != 1)
        {
        }

        if (*(v18 + 706) != 1)
        {
        }

        if (*(v18 + 710) != 1)
        {
        }

        if (*(v18 + 714) != 1)
        {
        }

        if (*(v18 + 718) != 1)
        {
        }

        if (*(v18 + 722) != 1)
        {
        }

        if (*(v18 + 726) != 1)
        {
        }

        if (*(v18 + 730) != 1)
        {
        }

        if (*(v18 + 734) != 1)
        {
        }

        if (*(v18 + 738) != 1)
        {
        }

        if (*(v18 + 742) != 1)
        {
        }

        if (*(v18 + 746) != 1)
        {
        }

        if (*(v18 + 750) != 1)
        {
        }

        if (*(v18 + 754) != 1)
        {
        }

        if (*(v18 + 758) != 1)
        {
        }

        if (*(v18 + 762) != 1)
        {
        }
      }

      if (*(v18 + 916) != 1)
      {
        if (*(v18 + 794) != 1)
        {
        }

        if (*(v18 + 798) != 1)
        {
        }

        if (*(v18 + 802) != 1)
        {
        }

        if (*(v18 + 806) != 1)
        {
        }

        if (*(v18 + 810) != 1)
        {
        }

        if (*(v18 + 814) != 1)
        {
        }

        if (*(v18 + 818) != 1)
        {
        }

        if (*(v18 + 822) != 1)
        {
        }

        if (*(v18 + 826) != 1)
        {
        }

        if (*(v18 + 830) != 1)
        {
        }

        if (*(v18 + 834) != 1)
        {
        }

        if (*(v18 + 838) != 1)
        {
        }

        if (*(v18 + 842) != 1)
        {
        }

        if (*(v18 + 846) != 1)
        {
        }

        if (*(v18 + 850) != 1)
        {
        }

        if (*(v18 + 854) != 1)
        {
        }

        if (*(v18 + 858) != 1)
        {
        }

        if (*(v18 + 862) != 1)
        {
        }

        if (*(v18 + 866) != 1)
        {
        }

        if (*(v18 + 870) != 1)
        {
        }

        if (*(v18 + 874) != 1)
        {
        }

        if (*(v18 + 878) != 1)
        {
        }

        if (*(v18 + 882) != 1)
        {
        }

        if (*(v18 + 886) != 1)
        {
        }

        if (*(v18 + 890) != 1)
        {
        }

        if (*(v18 + 894) != 1)
        {
        }
      }

      if (*(v18 + 1059) != 1)
      {
        if (*(v18 + 937) != 1)
        {
        }

        if (*(v18 + 941) != 1)
        {
        }

        if (*(v18 + 945) != 1)
        {
        }

        if (*(v18 + 949) != 1)
        {
        }

        if (*(v18 + 953) != 1)
        {
        }

        if (*(v18 + 957) != 1)
        {
        }

        if (*(v18 + 961) != 1)
        {
        }

        if (*(v18 + 965) != 1)
        {
        }

        if (*(v18 + 969) != 1)
        {
        }

        if (*(v18 + 973) != 1)
        {
        }

        if (*(v18 + 977) != 1)
        {
        }

        if (*(v18 + 981) != 1)
        {
        }

        if (*(v18 + 985) != 1)
        {
        }

        if (*(v18 + 989) != 1)
        {
        }

        if (*(v18 + 993) != 1)
        {
        }

        if (*(v18 + 997) != 1)
        {
        }

        if (*(v18 + 1001) != 1)
        {
        }

        if (*(v18 + 1005) != 1)
        {
        }

        if (*(v18 + 1009) != 1)
        {
        }

        if (*(v18 + 1013) != 1)
        {
        }

        if (*(v18 + 1017) != 1)
        {
        }

        if (*(v18 + 1021) != 1)
        {
        }

        if (*(v18 + 1025) != 1)
        {
        }

        if (*(v18 + 1029) != 1)
        {
        }

        if (*(v18 + 1033) != 1)
        {
        }

        if (*(v18 + 1037) != 1)
        {
        }
      }
    }

    v5 = v27;
  }

  v19 = v2;
  v20 = v3;

  if (*(v5 + v6[26] + 8))
  {
  }

  v21 = v4;
  if (*(v5 + v6[27] + 8))
  {
  }

  v22 = v6[29];
  v23 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v5 + v22, 1, v23))
  {
    (*(v24 + 8))(v5 + v22, v23);
  }

  v25 = (v5 + v6[30]);
  v4 = v21;
  v3 = v20;
  v2 = v19;
  if (v25[1] != 1)
  {

    if (v25[124] != 1)
    {
      if (v25[2] != 1)
      {
      }

      if (v25[6] != 1)
      {
      }

      if (v25[10] != 1)
      {
      }

      if (v25[14] != 1)
      {
      }

      if (v25[18] != 1)
      {
      }

      if (v25[22] != 1)
      {
      }

      if (v25[26] != 1)
      {
      }

      if (v25[30] != 1)
      {
      }

      if (v25[34] != 1)
      {
      }

      if (v25[38] != 1)
      {
      }

      if (v25[42] != 1)
      {
      }

      if (v25[46] != 1)
      {
      }

      if (v25[50] != 1)
      {
      }

      if (v25[54] != 1)
      {
      }

      if (v25[58] != 1)
      {
      }

      if (v25[62] != 1)
      {
      }

      if (v25[66] != 1)
      {
      }

      if (v25[70] != 1)
      {
      }

      if (v25[74] != 1)
      {
      }

      if (v25[78] != 1)
      {
      }

      if (v25[82] != 1)
      {
      }

      if (v25[86] != 1)
      {
      }

      if (v25[90] != 1)
      {
      }

      if (v25[94] != 1)
      {
      }

      if (v25[98] != 1)
      {
      }

      if (v25[102] != 1)
      {
      }
    }

    if (v25[256] != 1)
    {
      if (v25[134] != 1)
      {
      }

      if (v25[138] != 1)
      {
      }

      if (v25[142] != 1)
      {
      }

      if (v25[146] != 1)
      {
      }

      if (v25[150] != 1)
      {
      }

      if (v25[154] != 1)
      {
      }

      if (v25[158] != 1)
      {
      }

      if (v25[162] != 1)
      {
      }

      if (v25[166] != 1)
      {
      }

      if (v25[170] != 1)
      {
      }

      if (v25[174] != 1)
      {
      }

      if (v25[178] != 1)
      {
      }

      if (v25[182] != 1)
      {
      }

      if (v25[186] != 1)
      {
      }

      if (v25[190] != 1)
      {
      }

      if (v25[194] != 1)
      {
      }

      if (v25[198] != 1)
      {
      }

      if (v25[202] != 1)
      {
      }

      if (v25[206] != 1)
      {
      }

      if (v25[210] != 1)
      {
      }

      if (v25[214] != 1)
      {
      }

      if (v25[218] != 1)
      {
      }

      if (v25[222] != 1)
      {
      }

      if (v25[226] != 1)
      {
      }

      if (v25[230] != 1)
      {
      }

      if (v25[234] != 1)
      {
      }
    }

    if (v25[388] != 1)
    {
      if (v25[266] != 1)
      {
      }

      if (v25[270] != 1)
      {
      }

      if (v25[274] != 1)
      {
      }

      if (v25[278] != 1)
      {
      }

      if (v25[282] != 1)
      {
      }

      if (v25[286] != 1)
      {
      }

      if (v25[290] != 1)
      {
      }

      if (v25[294] != 1)
      {
      }

      if (v25[298] != 1)
      {
      }

      if (v25[302] != 1)
      {
      }

      if (v25[306] != 1)
      {
      }

      if (v25[310] != 1)
      {
      }

      if (v25[314] != 1)
      {
      }

      if (v25[318] != 1)
      {
      }

      if (v25[322] != 1)
      {
      }

      if (v25[326] != 1)
      {
      }

      if (v25[330] != 1)
      {
      }

      if (v25[334] != 1)
      {
      }

      if (v25[338] != 1)
      {
      }

      if (v25[342] != 1)
      {
      }

      if (v25[346] != 1)
      {
      }

      if (v25[350] != 1)
      {
      }

      if (v25[354] != 1)
      {
      }

      if (v25[358] != 1)
      {
      }

      if (v25[362] != 1)
      {
      }

      if (v25[366] != 1)
      {
      }
    }

    if (v25[520] != 1)
    {
      if (v25[398] != 1)
      {
      }

      if (v25[402] != 1)
      {
      }

      if (v25[406] != 1)
      {
      }

      if (v25[410] != 1)
      {
      }

      if (v25[414] != 1)
      {
      }

      if (v25[418] != 1)
      {
      }

      if (v25[422] != 1)
      {
      }

      if (v25[426] != 1)
      {
      }

      if (v25[430] != 1)
      {
      }

      if (v25[434] != 1)
      {
      }

      if (v25[438] != 1)
      {
      }

      if (v25[442] != 1)
      {
      }

      if (v25[446] != 1)
      {
      }

      if (v25[450] != 1)
      {
      }

      if (v25[454] != 1)
      {
      }

      if (v25[458] != 1)
      {
      }

      if (v25[462] != 1)
      {
      }

      if (v25[466] != 1)
      {
      }

      if (v25[470] != 1)
      {
      }

      if (v25[474] != 1)
      {
      }

      if (v25[478] != 1)
      {
      }

      if (v25[482] != 1)
      {
      }

      if (v25[486] != 1)
      {
      }

      if (v25[490] != 1)
      {
      }

      if (v25[494] != 1)
      {
      }

      if (v25[498] != 1)
      {
      }
    }

    if (v25[652] != 1)
    {
      if (v25[530] != 1)
      {
      }

      if (v25[534] != 1)
      {
      }

      if (v25[538] != 1)
      {
      }

      if (v25[542] != 1)
      {
      }

      if (v25[546] != 1)
      {
      }

      if (v25[550] != 1)
      {
      }

      if (v25[554] != 1)
      {
      }

      if (v25[558] != 1)
      {
      }

      if (v25[562] != 1)
      {
      }

      if (v25[566] != 1)
      {
      }

      if (v25[570] != 1)
      {
      }

      if (v25[574] != 1)
      {
      }

      if (v25[578] != 1)
      {
      }

      if (v25[582] != 1)
      {
      }

      if (v25[586] != 1)
      {
      }

      if (v25[590] != 1)
      {
      }

      if (v25[594] != 1)
      {
      }

      if (v25[598] != 1)
      {
      }

      if (v25[602] != 1)
      {
      }

      if (v25[606] != 1)
      {
      }

      if (v25[610] != 1)
      {
      }

      if (v25[614] != 1)
      {
      }

      if (v25[618] != 1)
      {
      }

      if (v25[622] != 1)
      {
      }

      if (v25[626] != 1)
      {
      }

      if (v25[630] != 1)
      {
      }
    }

    if (v25[784] != 1)
    {
      if (v25[662] != 1)
      {
      }

      if (v25[666] != 1)
      {
      }

      if (v25[670] != 1)
      {
      }

      if (v25[674] != 1)
      {
      }

      if (v25[678] != 1)
      {
      }

      if (v25[682] != 1)
      {
      }

      if (v25[686] != 1)
      {
      }

      if (v25[690] != 1)
      {
      }

      if (v25[694] != 1)
      {
      }

      if (v25[698] != 1)
      {
      }

      if (v25[702] != 1)
      {
      }

      if (v25[706] != 1)
      {
      }

      if (v25[710] != 1)
      {
      }

      if (v25[714] != 1)
      {
      }

      if (v25[718] != 1)
      {
      }

      if (v25[722] != 1)
      {
      }

      if (v25[726] != 1)
      {
      }

      if (v25[730] != 1)
      {
      }

      if (v25[734] != 1)
      {
      }

      if (v25[738] != 1)
      {
      }

      if (v25[742] != 1)
      {
      }

      if (v25[746] != 1)
      {
      }

      if (v25[750] != 1)
      {
      }

      if (v25[754] != 1)
      {
      }

      if (v25[758] != 1)
      {
      }

      if (v25[762] != 1)
      {
      }
    }

    if (v25[916] != 1)
    {
      if (v25[794] != 1)
      {
      }

      if (v25[798] != 1)
      {
      }

      if (v25[802] != 1)
      {
      }

      if (v25[806] != 1)
      {
      }

      if (v25[810] != 1)
      {
      }

      if (v25[814] != 1)
      {
      }

      if (v25[818] != 1)
      {
      }

      if (v25[822] != 1)
      {
      }

      if (v25[826] != 1)
      {
      }

      if (v25[830] != 1)
      {
      }

      if (v25[834] != 1)
      {
      }

      if (v25[838] != 1)
      {
      }

      if (v25[842] != 1)
      {
      }

      if (v25[846] != 1)
      {
      }

      if (v25[850] != 1)
      {
      }

      if (v25[854] != 1)
      {
      }

      if (v25[858] != 1)
      {
      }

      if (v25[862] != 1)
      {
      }

      if (v25[866] != 1)
      {
      }

      if (v25[870] != 1)
      {
      }

      if (v25[874] != 1)
      {
      }

      if (v25[878] != 1)
      {
      }

      if (v25[882] != 1)
      {
      }

      if (v25[886] != 1)
      {
      }

      if (v25[890] != 1)
      {
      }

      if (v25[894] != 1)
      {
      }
    }

    if (v25[1059] != 1)
    {
      if (v25[937] != 1)
      {
      }

      if (v25[941] != 1)
      {
      }

      if (v25[945] != 1)
      {
      }

      if (v25[949] != 1)
      {
      }

      if (v25[953] != 1)
      {
      }

      if (v25[957] != 1)
      {
      }

      if (v25[961] != 1)
      {
      }

      if (v25[965] != 1)
      {
      }

      if (v25[969] != 1)
      {
      }

      if (v25[973] != 1)
      {
      }

      if (v25[977] != 1)
      {
      }

      if (v25[981] != 1)
      {
      }

      if (v25[985] != 1)
      {
      }

      if (v25[989] != 1)
      {
      }

      if (v25[993] != 1)
      {
      }

      if (v25[997] != 1)
      {
      }

      if (v25[1001] != 1)
      {
      }

      if (v25[1005] != 1)
      {
      }

      if (v25[1009] != 1)
      {
      }

      if (v25[1013] != 1)
      {
      }

      if (v25[1017] != 1)
      {
      }

      if (v25[1021] != 1)
      {
      }

      if (v25[1025] != 1)
      {
      }

      if (v25[1029] != 1)
      {
      }

      if (v25[1033] != 1)
      {
      }

      if (v25[1037] != 1)
      {
      }
    }
  }

  if (*(v5 + v6[32] + 8))
  {
  }

  if (*(v5 + v6[34] + 16))
  {
  }

  if (*(v5 + v6[35] + 16))
  {
  }

LABEL_895:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100269EAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100269F00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100269F40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100269F80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100269FE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10026A050()
{
  v1 = type metadata accessor for PendingActionContext(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 112) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  sub_10000B90C(*(v0 + 88), *(v0 + 96));
  v5 = (v0 + v3);

  v6 = *(v0 + v3 + 120);
  if (v6 != 1)
  {
    if (v6 == 2)
    {
      goto LABEL_8;
    }
  }

  if (*(v5 + 19) != 1)
  {
  }

  if (*(v5 + 23) != 1)
  {
  }

LABEL_8:
  if (*(v5 + 27) != 1)
  {
  }

  if (*(v5 + 35) != 1)
  {
  }

  v7 = &v5[v1[18]];
  v8 = type metadata accessor for WorkflowRecommendationResponse(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v23 = v1;
    v9 = v0;
    v10 = v2;
    v11 = (v2 + 112) & ~v2;
    v12 = v4;

    v13 = type metadata accessor for Workflow(0);
    v14 = *(v13 + 72);
    v15 = type metadata accessor for HardwareAttestationType();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&v7[v14], 1, v15))
    {
      (*(v16 + 8))(&v7[v14], v15);
    }

    v17 = &v7[*(v13 + 156)];
    v4 = v12;
    v3 = v11;
    v2 = v10;
    v0 = v9;
    if (*(v17 + 1) != 1)
    {

      if (*(v17 + 124) != 1)
      {
        if (*(v17 + 2) != 1)
        {
        }

        if (*(v17 + 6) != 1)
        {
        }

        if (*(v17 + 10) != 1)
        {
        }

        if (*(v17 + 14) != 1)
        {
        }

        if (*(v17 + 18) != 1)
        {
        }

        if (*(v17 + 22) != 1)
        {
        }

        if (*(v17 + 26) != 1)
        {
        }

        if (*(v17 + 30) != 1)
        {
        }

        if (*(v17 + 34) != 1)
        {
        }

        if (*(v17 + 38) != 1)
        {
        }

        if (*(v17 + 42) != 1)
        {
        }

        if (*(v17 + 46) != 1)
        {
        }

        if (*(v17 + 50) != 1)
        {
        }

        if (*(v17 + 54) != 1)
        {
        }

        if (*(v17 + 58) != 1)
        {
        }

        if (*(v17 + 62) != 1)
        {
        }

        if (*(v17 + 66) != 1)
        {
        }

        if (*(v17 + 70) != 1)
        {
        }

        if (*(v17 + 74) != 1)
        {
        }

        if (*(v17 + 78) != 1)
        {
        }

        if (*(v17 + 82) != 1)
        {
        }

        if (*(v17 + 86) != 1)
        {
        }

        if (*(v17 + 90) != 1)
        {
        }

        if (*(v17 + 94) != 1)
        {
        }

        if (*(v17 + 98) != 1)
        {
        }

        if (*(v17 + 102) != 1)
        {
        }
      }

      if (*(v17 + 256) != 1)
      {
        if (*(v17 + 134) != 1)
        {
        }

        if (*(v17 + 138) != 1)
        {
        }

        if (*(v17 + 142) != 1)
        {
        }

        if (*(v17 + 146) != 1)
        {
        }

        if (*(v17 + 150) != 1)
        {
        }

        if (*(v17 + 154) != 1)
        {
        }

        if (*(v17 + 158) != 1)
        {
        }

        if (*(v17 + 162) != 1)
        {
        }

        if (*(v17 + 166) != 1)
        {
        }

        if (*(v17 + 170) != 1)
        {
        }

        if (*(v17 + 174) != 1)
        {
        }

        if (*(v17 + 178) != 1)
        {
        }

        if (*(v17 + 182) != 1)
        {
        }

        if (*(v17 + 186) != 1)
        {
        }

        if (*(v17 + 190) != 1)
        {
        }

        if (*(v17 + 194) != 1)
        {
        }

        if (*(v17 + 198) != 1)
        {
        }

        if (*(v17 + 202) != 1)
        {
        }

        if (*(v17 + 206) != 1)
        {
        }

        if (*(v17 + 210) != 1)
        {
        }

        if (*(v17 + 214) != 1)
        {
        }

        if (*(v17 + 218) != 1)
        {
        }

        if (*(v17 + 222) != 1)
        {
        }

        if (*(v17 + 226) != 1)
        {
        }

        if (*(v17 + 230) != 1)
        {
        }

        if (*(v17 + 234) != 1)
        {
        }
      }

      if (*(v17 + 388) != 1)
      {
        if (*(v17 + 266) != 1)
        {
        }

        if (*(v17 + 270) != 1)
        {
        }

        if (*(v17 + 274) != 1)
        {
        }

        if (*(v17 + 278) != 1)
        {
        }

        if (*(v17 + 282) != 1)
        {
        }

        if (*(v17 + 286) != 1)
        {
        }

        if (*(v17 + 290) != 1)
        {
        }

        if (*(v17 + 294) != 1)
        {
        }

        if (*(v17 + 298) != 1)
        {
        }

        if (*(v17 + 302) != 1)
        {
        }

        if (*(v17 + 306) != 1)
        {
        }

        if (*(v17 + 310) != 1)
        {
        }

        if (*(v17 + 314) != 1)
        {
        }

        if (*(v17 + 318) != 1)
        {
        }

        if (*(v17 + 322) != 1)
        {
        }

        if (*(v17 + 326) != 1)
        {
        }

        if (*(v17 + 330) != 1)
        {
        }

        if (*(v17 + 334) != 1)
        {
        }

        if (*(v17 + 338) != 1)
        {
        }

        if (*(v17 + 342) != 1)
        {
        }

        if (*(v17 + 346) != 1)
        {
        }

        if (*(v17 + 350) != 1)
        {
        }

        if (*(v17 + 354) != 1)
        {
        }

        if (*(v17 + 358) != 1)
        {
        }

        if (*(v17 + 362) != 1)
        {
        }

        if (*(v17 + 366) != 1)
        {
        }
      }

      if (*(v17 + 520) != 1)
      {
        if (*(v17 + 398) != 1)
        {
        }

        if (*(v17 + 402) != 1)
        {
        }

        if (*(v17 + 406) != 1)
        {
        }

        if (*(v17 + 410) != 1)
        {
        }

        if (*(v17 + 414) != 1)
        {
        }

        if (*(v17 + 418) != 1)
        {
        }

        if (*(v17 + 422) != 1)
        {
        }

        if (*(v17 + 426) != 1)
        {
        }

        if (*(v17 + 430) != 1)
        {
        }

        if (*(v17 + 434) != 1)
        {
        }

        if (*(v17 + 438) != 1)
        {
        }

        if (*(v17 + 442) != 1)
        {
        }

        if (*(v17 + 446) != 1)
        {
        }

        if (*(v17 + 450) != 1)
        {
        }

        if (*(v17 + 454) != 1)
        {
        }

        if (*(v17 + 458) != 1)
        {
        }

        if (*(v17 + 462) != 1)
        {
        }

        if (*(v17 + 466) != 1)
        {
        }

        if (*(v17 + 470) != 1)
        {
        }

        if (*(v17 + 474) != 1)
        {
        }

        if (*(v17 + 478) != 1)
        {
        }

        if (*(v17 + 482) != 1)
        {
        }

        if (*(v17 + 486) != 1)
        {
        }

        if (*(v17 + 490) != 1)
        {
        }

        if (*(v17 + 494) != 1)
        {
        }

        if (*(v17 + 498) != 1)
        {
        }
      }

      if (*(v17 + 652) != 1)
      {
        if (*(v17 + 530) != 1)
        {
        }

        if (*(v17 + 534) != 1)
        {
        }

        if (*(v17 + 538) != 1)
        {
        }

        if (*(v17 + 542) != 1)
        {
        }

        if (*(v17 + 546) != 1)
        {
        }

        if (*(v17 + 550) != 1)
        {
        }

        if (*(v17 + 554) != 1)
        {
        }

        if (*(v17 + 558) != 1)
        {
        }

        if (*(v17 + 562) != 1)
        {
        }

        if (*(v17 + 566) != 1)
        {
        }

        if (*(v17 + 570) != 1)
        {
        }

        if (*(v17 + 574) != 1)
        {
        }

        if (*(v17 + 578) != 1)
        {
        }

        if (*(v17 + 582) != 1)
        {
        }

        if (*(v17 + 586) != 1)
        {
        }

        if (*(v17 + 590) != 1)
        {
        }

        if (*(v17 + 594) != 1)
        {
        }

        if (*(v17 + 598) != 1)
        {
        }

        if (*(v17 + 602) != 1)
        {
        }

        if (*(v17 + 606) != 1)
        {
        }

        if (*(v17 + 610) != 1)
        {
        }

        if (*(v17 + 614) != 1)
        {
        }

        if (*(v17 + 618) != 1)
        {
        }

        if (*(v17 + 622) != 1)
        {
        }

        if (*(v17 + 626) != 1)
        {
        }

        if (*(v17 + 630) != 1)
        {
        }
      }

      if (*(v17 + 784) != 1)
      {
        if (*(v17 + 662) != 1)
        {
        }

        if (*(v17 + 666) != 1)
        {
        }

        if (*(v17 + 670) != 1)
        {
        }

        if (*(v17 + 674) != 1)
        {
        }

        if (*(v17 + 678) != 1)
        {
        }

        if (*(v17 + 682) != 1)
        {
        }

        if (*(v17 + 686) != 1)
        {
        }

        if (*(v17 + 690) != 1)
        {
        }

        if (*(v17 + 694) != 1)
        {
        }

        if (*(v17 + 698) != 1)
        {
        }

        if (*(v17 + 702) != 1)
        {
        }

        if (*(v17 + 706) != 1)
        {
        }

        if (*(v17 + 710) != 1)
        {
        }

        if (*(v17 + 714) != 1)
        {
        }

        if (*(v17 + 718) != 1)
        {
        }

        if (*(v17 + 722) != 1)
        {
        }

        if (*(v17 + 726) != 1)
        {
        }

        if (*(v17 + 730) != 1)
        {
        }

        if (*(v17 + 734) != 1)
        {
        }

        if (*(v17 + 738) != 1)
        {
        }

        if (*(v17 + 742) != 1)
        {
        }

        if (*(v17 + 746) != 1)
        {
        }

        if (*(v17 + 750) != 1)
        {
        }

        if (*(v17 + 754) != 1)
        {
        }

        if (*(v17 + 758) != 1)
        {
        }

        if (*(v17 + 762) != 1)
        {
        }
      }

      if (*(v17 + 916) != 1)
      {
        if (*(v17 + 794) != 1)
        {
        }

        if (*(v17 + 798) != 1)
        {
        }

        if (*(v17 + 802) != 1)
        {
        }

        if (*(v17 + 806) != 1)
        {
        }

        if (*(v17 + 810) != 1)
        {
        }

        if (*(v17 + 814) != 1)
        {
        }

        if (*(v17 + 818) != 1)
        {
        }

        if (*(v17 + 822) != 1)
        {
        }

        if (*(v17 + 826) != 1)
        {
        }

        if (*(v17 + 830) != 1)
        {
        }

        if (*(v17 + 834) != 1)
        {
        }

        if (*(v17 + 838) != 1)
        {
        }

        if (*(v17 + 842) != 1)
        {
        }

        if (*(v17 + 846) != 1)
        {
        }

        if (*(v17 + 850) != 1)
        {
        }

        if (*(v17 + 854) != 1)
        {
        }

        if (*(v17 + 858) != 1)
        {
        }

        if (*(v17 + 862) != 1)
        {
        }

        if (*(v17 + 866) != 1)
        {
        }

        if (*(v17 + 870) != 1)
        {
        }

        if (*(v17 + 874) != 1)
        {
        }

        if (*(v17 + 878) != 1)
        {
        }

        if (*(v17 + 882) != 1)
        {
        }

        if (*(v17 + 886) != 1)
        {
        }

        if (*(v17 + 890) != 1)
        {
        }

        if (*(v17 + 894) != 1)
        {
        }
      }

      if (*(v17 + 1059) != 1)
      {
        if (*(v17 + 937) != 1)
        {
        }

        if (*(v17 + 941) != 1)
        {
        }

        if (*(v17 + 945) != 1)
        {
        }

        if (*(v17 + 949) != 1)
        {
        }

        if (*(v17 + 953) != 1)
        {
        }

        if (*(v17 + 957) != 1)
        {
        }

        if (*(v17 + 961) != 1)
        {
        }

        if (*(v17 + 965) != 1)
        {
        }

        if (*(v17 + 969) != 1)
        {
        }

        if (*(v17 + 973) != 1)
        {
        }

        if (*(v17 + 977) != 1)
        {
        }

        if (*(v17 + 981) != 1)
        {
        }

        if (*(v17 + 985) != 1)
        {
        }

        if (*(v17 + 989) != 1)
        {
        }

        if (*(v17 + 993) != 1)
        {
        }

        if (*(v17 + 997) != 1)
        {
        }

        if (*(v17 + 1001) != 1)
        {
        }

        if (*(v17 + 1005) != 1)
        {
        }

        if (*(v17 + 1009) != 1)
        {
        }

        if (*(v17 + 1013) != 1)
        {
        }

        if (*(v17 + 1017) != 1)
        {
        }

        if (*(v17 + 1021) != 1)
        {
        }

        if (*(v17 + 1025) != 1)
        {
        }

        if (*(v17 + 1029) != 1)
        {
        }

        if (*(v17 + 1033) != 1)
        {
        }

        if (*(v17 + 1037) != 1)
        {
        }
      }
    }

    v1 = v23;
  }

  if (*&v5[v1[26] + 8])
  {
  }

  if (*&v5[v1[27] + 8])
  {
  }

  v18 = v1[29];
  v19 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(&v5[v18], 1, v19))
  {
    (*(v20 + 8))(&v5[v18], v19);
  }

  v21 = &v5[v1[30]];
  if (*(v21 + 1) != 1)
  {

    if (*(v21 + 124) != 1)
    {
      if (*(v21 + 2) != 1)
      {
      }

      if (*(v21 + 6) != 1)
      {
      }

      if (*(v21 + 10) != 1)
      {
      }

      if (*(v21 + 14) != 1)
      {
      }

      if (*(v21 + 18) != 1)
      {
      }

      if (*(v21 + 22) != 1)
      {
      }

      if (*(v21 + 26) != 1)
      {
      }

      if (*(v21 + 30) != 1)
      {
      }

      if (*(v21 + 34) != 1)
      {
      }

      if (*(v21 + 38) != 1)
      {
      }

      if (*(v21 + 42) != 1)
      {
      }

      if (*(v21 + 46) != 1)
      {
      }

      if (*(v21 + 50) != 1)
      {
      }

      if (*(v21 + 54) != 1)
      {
      }

      if (*(v21 + 58) != 1)
      {
      }

      if (*(v21 + 62) != 1)
      {
      }

      if (*(v21 + 66) != 1)
      {
      }

      if (*(v21 + 70) != 1)
      {
      }

      if (*(v21 + 74) != 1)
      {
      }

      if (*(v21 + 78) != 1)
      {
      }

      if (*(v21 + 82) != 1)
      {
      }

      if (*(v21 + 86) != 1)
      {
      }

      if (*(v21 + 90) != 1)
      {
      }

      if (*(v21 + 94) != 1)
      {
      }

      if (*(v21 + 98) != 1)
      {
      }

      if (*(v21 + 102) != 1)
      {
      }
    }

    if (*(v21 + 256) != 1)
    {
      if (*(v21 + 134) != 1)
      {
      }

      if (*(v21 + 138) != 1)
      {
      }

      if (*(v21 + 142) != 1)
      {
      }

      if (*(v21 + 146) != 1)
      {
      }

      if (*(v21 + 150) != 1)
      {
      }

      if (*(v21 + 154) != 1)
      {
      }

      if (*(v21 + 158) != 1)
      {
      }

      if (*(v21 + 162) != 1)
      {
      }

      if (*(v21 + 166) != 1)
      {
      }

      if (*(v21 + 170) != 1)
      {
      }

      if (*(v21 + 174) != 1)
      {
      }

      if (*(v21 + 178) != 1)
      {
      }

      if (*(v21 + 182) != 1)
      {
      }

      if (*(v21 + 186) != 1)
      {
      }

      if (*(v21 + 190) != 1)
      {
      }

      if (*(v21 + 194) != 1)
      {
      }

      if (*(v21 + 198) != 1)
      {
      }

      if (*(v21 + 202) != 1)
      {
      }

      if (*(v21 + 206) != 1)
      {
      }

      if (*(v21 + 210) != 1)
      {
      }

      if (*(v21 + 214) != 1)
      {
      }

      if (*(v21 + 218) != 1)
      {
      }

      if (*(v21 + 222) != 1)
      {
      }

      if (*(v21 + 226) != 1)
      {
      }

      if (*(v21 + 230) != 1)
      {
      }

      if (*(v21 + 234) != 1)
      {
      }
    }

    if (*(v21 + 388) != 1)
    {
      if (*(v21 + 266) != 1)
      {
      }

      if (*(v21 + 270) != 1)
      {
      }

      if (*(v21 + 274) != 1)
      {
      }

      if (*(v21 + 278) != 1)
      {
      }

      if (*(v21 + 282) != 1)
      {
      }

      if (*(v21 + 286) != 1)
      {
      }

      if (*(v21 + 290) != 1)
      {
      }

      if (*(v21 + 294) != 1)
      {
      }

      if (*(v21 + 298) != 1)
      {
      }

      if (*(v21 + 302) != 1)
      {
      }

      if (*(v21 + 306) != 1)
      {
      }

      if (*(v21 + 310) != 1)
      {
      }

      if (*(v21 + 314) != 1)
      {
      }

      if (*(v21 + 318) != 1)
      {
      }

      if (*(v21 + 322) != 1)
      {
      }

      if (*(v21 + 326) != 1)
      {
      }

      if (*(v21 + 330) != 1)
      {
      }

      if (*(v21 + 334) != 1)
      {
      }

      if (*(v21 + 338) != 1)
      {
      }

      if (*(v21 + 342) != 1)
      {
      }

      if (*(v21 + 346) != 1)
      {
      }

      if (*(v21 + 350) != 1)
      {
      }

      if (*(v21 + 354) != 1)
      {
      }

      if (*(v21 + 358) != 1)
      {
      }

      if (*(v21 + 362) != 1)
      {
      }

      if (*(v21 + 366) != 1)
      {
      }
    }

    if (*(v21 + 520) != 1)
    {
      if (*(v21 + 398) != 1)
      {
      }

      if (*(v21 + 402) != 1)
      {
      }

      if (*(v21 + 406) != 1)
      {
      }

      if (*(v21 + 410) != 1)
      {
      }

      if (*(v21 + 414) != 1)
      {
      }

      if (*(v21 + 418) != 1)
      {
      }

      if (*(v21 + 422) != 1)
      {
      }

      if (*(v21 + 426) != 1)
      {
      }

      if (*(v21 + 430) != 1)
      {
      }

      if (*(v21 + 434) != 1)
      {
      }

      if (*(v21 + 438) != 1)
      {
      }

      if (*(v21 + 442) != 1)
      {
      }

      if (*(v21 + 446) != 1)
      {
      }

      if (*(v21 + 450) != 1)
      {
      }

      if (*(v21 + 454) != 1)
      {
      }

      if (*(v21 + 458) != 1)
      {
      }

      if (*(v21 + 462) != 1)
      {
      }

      if (*(v21 + 466) != 1)
      {
      }

      if (*(v21 + 470) != 1)
      {
      }

      if (*(v21 + 474) != 1)
      {
      }

      if (*(v21 + 478) != 1)
      {
      }

      if (*(v21 + 482) != 1)
      {
      }

      if (*(v21 + 486) != 1)
      {
      }

      if (*(v21 + 490) != 1)
      {
      }

      if (*(v21 + 494) != 1)
      {
      }

      if (*(v21 + 498) != 1)
      {
      }
    }

    if (*(v21 + 652) != 1)
    {
      if (*(v21 + 530) != 1)
      {
      }

      if (*(v21 + 534) != 1)
      {
      }

      if (*(v21 + 538) != 1)
      {
      }

      if (*(v21 + 542) != 1)
      {
      }

      if (*(v21 + 546) != 1)
      {
      }

      if (*(v21 + 550) != 1)
      {
      }

      if (*(v21 + 554) != 1)
      {
      }

      if (*(v21 + 558) != 1)
      {
      }

      if (*(v21 + 562) != 1)
      {
      }

      if (*(v21 + 566) != 1)
      {
      }

      if (*(v21 + 570) != 1)
      {
      }

      if (*(v21 + 574) != 1)
      {
      }

      if (*(v21 + 578) != 1)
      {
      }

      if (*(v21 + 582) != 1)
      {
      }

      if (*(v21 + 586) != 1)
      {
      }

      if (*(v21 + 590) != 1)
      {
      }

      if (*(v21 + 594) != 1)
      {
      }

      if (*(v21 + 598) != 1)
      {
      }

      if (*(v21 + 602) != 1)
      {
      }

      if (*(v21 + 606) != 1)
      {
      }

      if (*(v21 + 610) != 1)
      {
      }

      if (*(v21 + 614) != 1)
      {
      }

      if (*(v21 + 618) != 1)
      {
      }

      if (*(v21 + 622) != 1)
      {
      }

      if (*(v21 + 626) != 1)
      {
      }

      if (*(v21 + 630) != 1)
      {
      }
    }

    if (*(v21 + 784) != 1)
    {
      if (*(v21 + 662) != 1)
      {
      }

      if (*(v21 + 666) != 1)
      {
      }

      if (*(v21 + 670) != 1)
      {
      }

      if (*(v21 + 674) != 1)
      {
      }

      if (*(v21 + 678) != 1)
      {
      }

      if (*(v21 + 682) != 1)
      {
      }

      if (*(v21 + 686) != 1)
      {
      }

      if (*(v21 + 690) != 1)
      {
      }

      if (*(v21 + 694) != 1)
      {
      }

      if (*(v21 + 698) != 1)
      {
      }

      if (*(v21 + 702) != 1)
      {
      }

      if (*(v21 + 706) != 1)
      {
      }

      if (*(v21 + 710) != 1)
      {
      }

      if (*(v21 + 714) != 1)
      {
      }

      if (*(v21 + 718) != 1)
      {
      }

      if (*(v21 + 722) != 1)
      {
      }

      if (*(v21 + 726) != 1)
      {
      }

      if (*(v21 + 730) != 1)
      {
      }

      if (*(v21 + 734) != 1)
      {
      }

      if (*(v21 + 738) != 1)
      {
      }

      if (*(v21 + 742) != 1)
      {
      }

      if (*(v21 + 746) != 1)
      {
      }

      if (*(v21 + 750) != 1)
      {
      }

      if (*(v21 + 754) != 1)
      {
      }

      if (*(v21 + 758) != 1)
      {
      }

      if (*(v21 + 762) != 1)
      {
      }
    }

    if (*(v21 + 916) != 1)
    {
      if (*(v21 + 794) != 1)
      {
      }

      if (*(v21 + 798) != 1)
      {
      }

      if (*(v21 + 802) != 1)
      {
      }

      if (*(v21 + 806) != 1)
      {
      }

      if (*(v21 + 810) != 1)
      {
      }

      if (*(v21 + 814) != 1)
      {
      }

      if (*(v21 + 818) != 1)
      {
      }

      if (*(v21 + 822) != 1)
      {
      }

      if (*(v21 + 826) != 1)
      {
      }

      if (*(v21 + 830) != 1)
      {
      }

      if (*(v21 + 834) != 1)
      {
      }

      if (*(v21 + 838) != 1)
      {
      }

      if (*(v21 + 842) != 1)
      {
      }

      if (*(v21 + 846) != 1)
      {
      }

      if (*(v21 + 850) != 1)
      {
      }

      if (*(v21 + 854) != 1)
      {
      }

      if (*(v21 + 858) != 1)
      {
      }

      if (*(v21 + 862) != 1)
      {
      }

      if (*(v21 + 866) != 1)
      {
      }

      if (*(v21 + 870) != 1)
      {
      }

      if (*(v21 + 874) != 1)
      {
      }

      if (*(v21 + 878) != 1)
      {
      }

      if (*(v21 + 882) != 1)
      {
      }

      if (*(v21 + 886) != 1)
      {
      }

      if (*(v21 + 890) != 1)
      {
      }

      if (*(v21 + 894) != 1)
      {
      }
    }

    if (*(v21 + 1059) != 1)
    {
      if (*(v21 + 937) != 1)
      {
      }

      if (*(v21 + 941) != 1)
      {
      }

      if (*(v21 + 945) != 1)
      {
      }

      if (*(v21 + 949) != 1)
      {
      }

      if (*(v21 + 953) != 1)
      {
      }

      if (*(v21 + 957) != 1)
      {
      }

      if (*(v21 + 961) != 1)
      {
      }

      if (*(v21 + 965) != 1)
      {
      }

      if (*(v21 + 969) != 1)
      {
      }

      if (*(v21 + 973) != 1)
      {
      }

      if (*(v21 + 977) != 1)
      {
      }

      if (*(v21 + 981) != 1)
      {
      }

      if (*(v21 + 985) != 1)
      {
      }

      if (*(v21 + 989) != 1)
      {
      }

      if (*(v21 + 993) != 1)
      {
      }

      if (*(v21 + 997) != 1)
      {
      }

      if (*(v21 + 1001) != 1)
      {
      }

      if (*(v21 + 1005) != 1)
      {
      }

      if (*(v21 + 1009) != 1)
      {
      }

      if (*(v21 + 1013) != 1)
      {
      }

      if (*(v21 + 1017) != 1)
      {
      }

      if (*(v21 + 1021) != 1)
      {
      }

      if (*(v21 + 1025) != 1)
      {
      }

      if (*(v21 + 1029) != 1)
      {
      }

      if (*(v21 + 1033) != 1)
      {
      }

      if (*(v21 + 1037) != 1)
      {
      }
    }
  }

  if (*&v5[v1[32] + 8])
  {
  }

  if (*&v5[v1[34] + 16])
  {
  }

  if (*&v5[v1[35] + 16])
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10026C1FC()
{

  v1 = *(v0 + 80);
  if (v1 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + 72), v1);
  }

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10026C2AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_10000B8B8(a2, a3);
  }

  return result;
}

uint64_t sub_10026C2C8()
{

  v1 = v0[13];
  if (v1 >> 60 != 15)
  {
    sub_10000B90C(v0[12], v1);
  }

  v2 = v0[15];
  if (v2 >> 60 != 15)
  {
    sub_10000B90C(v0[14], v2);
  }

  sub_10000BB78(v0 + 16);

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_10026C3AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_10000B90C(a2, a3);
  }

  return result;
}

uint64_t sub_10026C41C()
{
  if (v0[3] != 1)
  {

    v1 = v0[11];
    if (v1 >> 60 != 15)
    {
      sub_10000B90C(v0[10], v1);
    }
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10026C48C()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_10026C5F0(uint64_t a1)
{
  v1[2] = a1;
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for ProofingDisplayMessageAction();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10026C744, 0, 0);
}

uint64_t sub_10026C744()
{
  result = ProofingDisplayMessage.actions.getter();
  v2 = result;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v0[8];
    v26 = *(result + 16);
    v25 = (v0[5] + 8);
    v6 = (v5 + 8);
    v24 = v3 - 1;
    while (1)
    {
      v7 = v4;
      while (1)
      {
        if (v7 >= *(v2 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v5 + 16))(v0[9], v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v7, v0[7]);
        ProofingDisplayMessageAction.title.getter();
        if (v12)
        {
          break;
        }

LABEL_9:
        defaultLogger()();
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "IdentityProofingPendingActionsFlow failed to map precursor pass message action from stored proofing session", v16, 2u);
        }

        ++v7;
        v8 = v0[9];
        v10 = v0[6];
        v9 = v0[7];
        v11 = v0[4];

        (*v25)(v10, v11);
        result = (*v6)(v8, v9);
        if (v26 == v7)
        {
          goto LABEL_14;
        }
      }

      ProofingDisplayMessageAction.actionType.getter();
      IdentityProofingPrecursorPassMessageActionType.init(rawValue:)();
      if (v13)
      {
        break;
      }

      v23 = v2;
      v17 = v0[9];
      v18 = v0[7];
      ProofingDisplayMessageAction.actionURL.getter();
      v19 = objc_allocWithZone(type metadata accessor for IdentityProofingPrecursorPassMessageAction());
      IdentityProofingPrecursorPassMessageAction.init(title:actionType:actionURL:)();
      (*v6)(v17, v18);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v4 = v7 + 1;
      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = v23;
      if (v24 == v7)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_9;
  }

LABEL_14:

  ProofingDisplayMessage.title.getter();
  ProofingDisplayMessage.message.getter();
  v20 = objc_allocWithZone(type metadata accessor for IdentityProofingPrecursorPassMessage());
  v21 = IdentityProofingPrecursorPassMessage.init(title:message:actions:)();

  v22 = v0[1];

  return v22(v21);
}

unint64_t sub_10026CAB4()
{
  result = qword_10083E408;
  if (!qword_10083E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083E408);
  }

  return result;
}

uint64_t sub_10026CC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[107] = v8;
  v9[106] = v21;
  v9[105] = v20;
  v9[104] = a8;
  v9[103] = a7;
  v9[102] = a6;
  v9[101] = a5;
  v9[100] = a4;
  v9[99] = a3;
  v9[98] = a2;
  v9[97] = a1;
  v10 = type metadata accessor for DIPError.Code();
  v9[108] = v10;
  v9[109] = *(v10 - 8);
  v9[110] = swift_task_alloc();
  v11 = sub_100007224(&qword_10083E4B0, &unk_1006E9710);
  v9[111] = v11;
  v9[112] = *(v11 - 8);
  v9[113] = swift_task_alloc();
  v12 = sub_100007224(&qword_10083E4B8, &unk_1006DBF30);
  v9[114] = v12;
  v9[115] = *(v12 - 8);
  v9[116] = swift_task_alloc();
  v13 = type metadata accessor for DeviceInformationProvider();
  v9[117] = v13;
  v9[118] = *(v13 - 8);
  v9[119] = swift_task_alloc();
  v14 = type metadata accessor for DIPKeyAlgorithm();
  v9[120] = v14;
  v9[121] = *(v14 - 8);
  v9[122] = swift_task_alloc();
  v15 = type metadata accessor for KeystoreKeyType();
  v9[123] = v15;
  v9[124] = *(v15 - 8);
  v9[125] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v9[126] = v16;
  v9[127] = *(v16 - 8);
  v9[128] = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  v9[129] = v17;
  v9[130] = *(v17 - 8);
  v9[131] = swift_task_alloc();

  return _swift_task_switch(sub_10026CFA8, 0, 0);
}

uint64_t sub_10026CFA8()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 856);
  v5 = *(v0 + 824);
  v6 = *(v0 + 816);
  type metadata accessor for IdentityProofingDatabaseProvider();
  v7 = swift_allocObject();
  v8 = type metadata accessor for IdentitySelfHealer();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_proofingSessionID];
  *v10 = v6;
  *(v10 + 1) = v5;
  *&v9[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_databaseProvider] = v7;
  *(v0 + 728) = v9;
  *(v0 + 736) = v8;

  v11 = objc_msgSendSuper2((v0 + 728), "init");
  *(v0 + 1056) = v11;
  v12 = *(v4 + 16);
  *(v4 + 16) = v11;
  v13 = v11;

  UUID.init()();
  UUID.uuidString.getter();
  *(v0 + 1064) = v14;
  v15 = *(v2 + 8);
  *(v0 + 1072) = v15;
  *(v0 + 1080) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v1, v3);
  *(v0 + 1088) = type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v16 = swift_task_alloc();
  *(v0 + 1096) = v16;
  *v16 = v0;
  v16[1] = sub_10026D170;

  return sub_1005FB45C(v0 + 528, v11, &off_10080DB50, 0, 0);
}

uint64_t sub_10026D170(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1056);
  *(v2 + 1104) = a1;

  sub_10000BB78((v2 + 528));

  return _swift_task_switch(sub_10026D2B8, 0, 0);
}

uint64_t sub_10026D2B8(uint64_t a1)
{
  v25 = v1;
  v2 = v1[105];
  if (v2)
  {
    defaultLogger()();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v1[128];
      v6 = v1[127];
      v7 = v1[126];
      v8 = v1[104];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v24 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_100141FE4(v8, v2, &v24);
      _os_log_impl(&_mh_execute_header, v3, v4, "lastExecutedActionIdentifier exists %s", v9, 0xCu);
      sub_10000BB78(v10);

      (*(v6 + 8))(v5, v7);
    }

    else
    {
      v11 = v1[128];
      v12 = v1[127];
      v13 = v1[126];

      (*(v12 + 8))(v11, v13);
    }
  }

  v14 = v1[125];
  v15 = v1[124];
  v16 = v1[123];
  type metadata accessor for DIPKeystoreManager();
  v17 = swift_allocObject();
  v1[139] = v17;
  *(v17 + 16) = sub_10003D56C(_swiftEmptyArrayStorage);
  *(v17 + 24) = 2;
  sub_100007224(&qword_100839BC0, &qword_1006D49B0);
  v18 = type metadata accessor for HardwareAttestationType();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v1[140] = v21;
  *(v21 + 16) = xmmword_1006BF520;
  (*(v19 + 104))(v21 + v20, enum case for HardwareAttestationType.SEP(_:), v18);
  (*(v15 + 104))(v14, enum case for KeystoreKeyType.temporary(_:), v16);
  v22 = swift_task_alloc();
  v1[141] = v22;
  *v22 = v1;
  v22[1] = sub_10026D5C8;

  return sub_10003736C((v1 + 71), v21, 0, 0, 0xF000000000000000);
}

uint64_t sub_10026D5C8()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {

    v2 = sub_10026D970;
  }

  else
  {
    v2 = sub_10026D704;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026D704()
{
  v1 = *(v0 + 1136);
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08((v0 + 608), *(v0 + 632));
  v2 = dispatch thunk of DIPAccountManagerProtocol.primaryAppleAccountIdentifier()();
  *(v0 + 1144) = v3;
  if (v1)
  {
    (*(*(v0 + 992) + 8))(*(v0 + 1000), *(v0 + 984));

    sub_10000BB78((v0 + 608));
    sub_10000BB78((v0 + 568));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v8 = *(v0 + 976);
    v9 = *(v0 + 848);
    sub_10000BB78((v0 + 608));
    sub_10000BA08((v0 + 568), *(v0 + 592));
    sub_10061B2DC(v8);
    v10 = swift_task_alloc();
    *(v0 + 1152) = v10;
    *v10 = v0;
    v10[1] = sub_10026DA74;
    if (v9 == 3)
    {
      v11 = 0x6E6F736D697263;
    }

    else
    {
      v11 = 0x61746E6567616DLL;
    }

    v12 = *(v0 + 1000);
    v13 = *(v0 + 976);

    return DIPKeystoreProtocol.retrieveOrGenerateIdentityKey(name:userInfo:keyTypeToGenerate:algorithm:constraints:enableUAM:)(v0 + 648, v11, 0xE700000000000000, v6, v7, v12, v13, 0);
  }
}

uint64_t sub_10026D970()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 992);
  v3 = *(v0 + 984);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10026DA74()
{
  v2 = *v1;
  *(*v1 + 1160) = v0;

  (*(v2[121] + 8))(v2[122], v2[120]);

  if (v0)
  {
    v3 = sub_10026E080;
  }

  else
  {
    v3 = sub_10026DC00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10026DC00()
{
  v1 = *(v0 + 1160);
  sub_10000BA08((v0 + 648), *(v0 + 672));
  v2 = dispatch thunk of IdentityKey.attestation(_:)();
  if (v1)
  {
    (*(*(v0 + 992) + 8))(*(v0 + 1000), *(v0 + 984));

    sub_10000BB78((v0 + 648));
    sub_10000BB78((v0 + 568));

LABEL_8:

    v22 = *(v0 + 8);

    return v22();
  }

  v3 = *(v0 + 1104);
  v27 = *(v0 + 1072);
  v4 = *(v0 + 1048);
  v26 = *(v0 + 1032);
  v5 = v2;
  v31 = *(v0 + 952);
  v32 = *(v0 + 944);
  v33 = *(v0 + 936);
  (*(*(v0 + 992) + 8))(*(v0 + 1000), *(v0 + 984));
  swift_setDeallocating();

  swift_deallocClassInstance();
  sub_100020260(v0 + 648, v0 + 480);
  v34._rawValue = v5;
  *(v0 + 520) = v5;
  sub_10000BB78((v0 + 648));
  sub_10000BB78((v0 + 568));

  UUID.init()();
  v6 = UUID.uuidString.getter();
  v29 = v7;
  v30 = v6;
  v27(v4, v26);
  v8 = *(v3 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v28 = *(v3 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  sub_100020260(*(v3 + OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession) + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager, v0 + 688);
  sub_10000BA08((v0 + 688), *(v0 + 712));

  v9 = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
  v11 = v10;
  sub_10000BB78((v0 + 688));
  DeviceInformationProvider.init()();
  v12 = DeviceInformationProvider.uniqueDeviceID.getter();
  v14 = v13;
  (*(v32 + 8))(v31, v33);
  if (qword_100832D18 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 824);
  v16 = *(v0 + 816);
  v18 = *(v0 + 784);
  v17 = *(v0 + 800);
  v19 = xmmword_100882478;
  *(v0 + 336) = v28;
  *(v0 + 344) = v8;
  *(v0 + 352) = v30;
  *(v0 + 360) = v29;
  *(v0 + 368) = v9;
  *(v0 + 376) = v11;
  *(v0 + 384) = v12;
  *(v0 + 392) = v14;
  *(v0 + 400) = v19;
  *(v0 + 416) = v18;
  *(v0 + 432) = v17;
  *(v0 + 448) = v16;
  *(v0 + 456) = v15;
  *(v0 + 464) = *(v0 + 832);
  sub_1000A80FC();
  sub_1000A8150();

  JWSSignedJSON.init(payload:)();
  JWSSignedJSON.setCertificateChain(_:)(v34);
  if (v20)
  {
    v21 = *(v0 + 1104);
    (*(*(v0 + 920) + 8))(*(v0 + 928), *(v0 + 912));

    sub_1001B7154(v0 + 480);
    goto LABEL_8;
  }

  JWSSignedJSON.setKid(_:)();
  v24 = swift_task_alloc();
  *(v0 + 1168) = v24;
  *v24 = v0;
  v24[1] = sub_10026E18C;
  v25 = *(v0 + 912);

  return JWSSignedJSON.sign(_:)(v0 + 480, v25);
}

uint64_t sub_10026E080()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 992);
  v3 = *(v0 + 984);

  (*(v2 + 8))(v1, v3);
  sub_10000BB78((v0 + 568));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10026E18C()
{
  *(*v1 + 1176) = v0;

  if (v0)
  {
    v2 = sub_10026E654;
  }

  else
  {
    v2 = sub_10026E2A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026E2A0()
{
  v1 = v0[101];
  v0[93] = v0[100];
  v0[94] = v1;
  v0[95] = 0xD000000000000018;
  v0[96] = 0x8000000100705380;
  sub_1000348A0();
  sub_1000348F4();
  v2 = BidirectionalCollection<>.starts<A>(with:)();
  v3 = swift_task_alloc();
  v0[148] = v3;
  *v3 = v0;
  v3[1] = sub_10026E3A8;
  v4 = v0[116];
  v5 = v0[113];
  if (v2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  return sub_1005E1BAC(v5, v4, v6);
}

uint64_t sub_10026E3A8()
{
  *(*v1 + 1192) = v0;

  if (v0)
  {
    v2 = sub_10026E758;
  }

  else
  {
    v2 = sub_10026E4BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026E4BC()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 928);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 904);
  v6 = *(v0 + 896);
  v7 = *(v0 + 888);
  v8 = *(v0 + 776);
  JWSSignedJSON.payload.getter();

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_1001B7154(v0 + 480);
  v9 = *(v0 + 272);
  v10 = *(v0 + 288);
  *(v0 + 112) = v9;
  *(v0 + 128) = v10;
  v11 = *(v0 + 320);
  *(v0 + 144) = *(v0 + 304);
  *(v0 + 160) = v11;
  v12 = *(v0 + 208);
  v13 = *(v0 + 224);
  *(v0 + 48) = v12;
  *(v0 + 64) = v13;
  v14 = *(v0 + 256);
  *(v0 + 80) = *(v0 + 240);
  *(v0 + 96) = v14;
  v15 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v15;
  v16 = *(v0 + 32);
  *v8 = *(v0 + 16);
  v8[1] = v16;
  v17 = *(v0 + 64);
  v18 = *(v0 + 96);
  v8[4] = *(v0 + 80);
  v8[5] = v18;
  v8[2] = v12;
  v8[3] = v17;
  v19 = *(v0 + 128);
  v20 = *(v0 + 160);
  v8[8] = *(v0 + 144);
  v8[9] = v20;
  v8[6] = v9;
  v8[7] = v19;

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10026E654()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 920);
  v3 = *(v0 + 912);

  (*(v2 + 8))(v1, v3);
  sub_1001B7154(v0 + 480);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10026E758()
{
  v1 = v0[138];
  v2 = v0[115];
  v5 = v0[114];
  v6 = v0[116];
  (*(v0[109] + 104))(v0[110], enum case for DIPError.Code.internalError(_:), v0[108]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v2 + 8))(v6, v5);
  sub_1001B7154((v0 + 60));

  v3 = v0[1];

  return v3();
}

uint64_t sub_10026E970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[24] = v7;
  v6[25] = *(v7 - 8);
  v6[26] = swift_task_alloc();
  v8 = type metadata accessor for DIPError();
  v6[27] = v8;
  v6[28] = *(v8 - 8);
  v6[29] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v6[30] = v9;
  v6[31] = *(v9 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();

  return _swift_task_switch(sub_10026EB08, 0, 0);
}

void sub_10026EB08(uint64_t a1)
{
  v57 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[34];
  v6 = v1[30];
  v7 = v1[31];
  if (v4)
  {
    v9 = v1[18];
    v8 = v1[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v56 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v56);
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing uploads complete action notification request for proofing session ID %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[35] = v12;
  v13 = *(v1[23] + 64);
  v1[36] = v13;
  if (v13)
  {
    v14 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
    swift_beginAccess();
    v15 = *(v13 + v14);
    if (*(v15 + 16))
    {
      v52 = v1;
      v16 = v15 + 64;
      v17 = -1;
      v18 = -1 << *(v15 + 32);
      if (-v18 < 64)
      {
        v17 = ~(-1 << -v18);
      }

      v19 = v17 & *(v15 + 64);
      v20 = (63 - v18) >> 6;

      v21 = 0;
      v22 = _swiftEmptyArrayStorage;
      v53 = v15;
      if (v19)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
          return;
        }

        if (v23 >= v20)
        {
          break;
        }

        v19 = *(v16 + 8 * v23);
        ++v21;
        if (v19)
        {
          v21 = v23;
          do
          {
LABEL_12:
            v24 = *(*(v15 + 56) + 8 * (__clz(__rbit64(v19)) | (v21 << 6)));
            v25 = *(v24 + 16);
            v26 = *(v24 + 24);

            v54 = v25;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_1003C5110(0, *(v22 + 2) + 1, 1, v22);
            }

            v28 = *(v22 + 2);
            v27 = *(v22 + 3);
            if (v28 >= v27 >> 1)
            {
              v22 = sub_1003C5110((v27 > 1), v28 + 1, 1, v22);
            }

            v19 &= v19 - 1;

            *(v22 + 2) = v28 + 1;
            v29 = &v22[16 * v28];
            *(v29 + 4) = v54;
            *(v29 + 5) = v26;
            v15 = v53;
          }

          while (v19);
        }
      }

      v36 = v52[23];

      sub_100020260(v36 + 16, (v52 + 2));
      sub_10000BA08(v52 + 2, v52[5]);
      sub_100007224(&qword_10083E588, &unk_1006DDA70);
      v37 = swift_allocObject();
      v52[37] = v37;
      *(v37 + 16) = xmmword_1006BF520;
      strcpy((v37 + 32), "UPLOAD_RECORD");
      *(v37 + 46) = -4864;
      *(v37 + 48) = xmmword_1006DBF40;
      *(v37 + 64) = v22;
      *(v37 + 72) = 0;
      *(v37 + 80) = 0;
      *(v37 + 88) = 0;
      *(v37 + 96) = xmmword_1006DBF50;
      v38 = *(v36 + 56);
      if (v38)
      {
        swift_beginAccess();
        sub_1002207B4(v38 + 144, (v52 + 7));
        v39 = v52[10];
        if (v39)
        {
          v40 = sub_10000BA08(v52 + 7, v52[10]);
          v41 = *(v39 - 8);
          v42 = swift_task_alloc();
          (*(v41 + 16))(v42, v40, v39);
          sub_10022074C((v52 + 7));
          v44 = *v42;
          v43 = v42[1];
          v45 = *(v41 + 8);

          v45(v42, v39);

LABEL_26:
          v52[38] = v43;
          v46 = v52[19];
          v47 = swift_task_alloc();
          v52[39] = v47;
          *v47 = v52;
          v47[1] = sub_10026F1B4;
          v48 = v52[21];
          v49 = v52[22];
          v50 = v52[20];
          v51 = v52[18];

          sub_10022083C(v37, v50, v48, v44, v43, v51, v46, v49);
          return;
        }

        sub_10022074C((v52 + 7));
      }

      v44 = 0;
      v43 = 0;
      goto LABEL_26;
    }
  }

  v30 = v1[32];
  v31 = v1[29];
  v55 = v1[30];
  v32 = v1[27];
  v33 = v1[28];
  (*(v1[25] + 104))(v1[26], enum case for DIPError.Code.missingCloudKitImagesNotUploaded(_:), v1[24]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  (*(v33 + 16))(v34, v31, v32);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v12(v30, v55);
  (*(v33 + 8))(v31, v32);

  v35 = v1[1];

  v35();
}

uint64_t sub_10026F1B4()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_10026F538;
  }

  else
  {
    v2 = sub_10026F304;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026F304()
{
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Action notification successful, will delete the saved uploaded assets data", v3, 2u);
  }

  v4 = v0[40];
  v5 = v0[35];
  v6 = v0[33];
  v7 = v0[30];

  v5(v6, v7);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  if (!v4)
  {
    v9 = v8;
    v11 = v0[18];
    v10 = v0[19];
    v12 = swift_allocObject();
    v12[2] = v9;
    v12[3] = v11;
    v12[4] = v10;

    sub_10057C18C(sub_10026F69C, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_10026F538()
{

  sub_10000BB78((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026F5E8()
{
  sub_10000BB78((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10026F65C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10026F6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10026F7DC, 0, 0);
}

uint64_t sub_10026F7DC()
{
  v22 = v0;
  v0[4] = _swiftEmptyArrayStorage;
  v1 = *(v0[7] + 16);
  v0[15] = v1;
  if (v1)
  {
    v0[16] = _swiftEmptyArrayStorage;
    v0[17] = 0;

    v2 = dispatch thunk of IdentityProofingAttributeConfigHelper.fetchAttributeID(input:)();
    v4 = v3;

    if (v4)
    {
      v0[2] = v2;
      v0[3] = v4;
      v5._countAndFlagsBits = 46;
      v5._object = 0xE100000000000000;
      String.append(_:)(v5);
      v6 = String.lowercased()();
      String.append(_:)(v6);

      v7 = v0[2];
      v8 = v0[3];
      v0[18] = v8;
      defaultLogger()();

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();

      v11 = os_log_type_enabled(v9, v10);
      v13 = v0[13];
      v12 = v0[14];
      v14 = v0[12];
      if (v11)
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v21 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_100141FE4(v7, v8, &v21);
        _os_log_impl(&_mh_execute_header, v9, v10, "the assetID to be fetched is %s", v15, 0xCu);
        sub_10000BB78(v16);
      }

      (*(v13 + 8))(v12, v14);
      v0[19] = sub_1005A2ACC();
      v17 = swift_task_alloc();
      v0[20] = v17;
      *v17 = v0;
      v17[1] = sub_10026FBDC;

      return sub_1005A2BA0(v7, v8);
    }

    else
    {
      (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.invalidImageAssetPlaceholder(_:), v0[9]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v20 = v0[1];

      return v20();
    }
  }

  else
  {

    v19 = v0[1];

    return v19(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10026FBDC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {

    v4 = sub_1002701C0;
  }

  else
  {

    v4 = sub_10026FD5C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10026FD5C()
{
  v27 = v0;
  v1 = *(v0 + 168);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *(v0 + 168);
  v3 = *(v0 + 120);
  v4 = *(v0 + 136) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v5 = *(v0 + 32);
  if (v4 == v3)
  {

    v6 = *(v0 + 8);

    return v6(v5);
  }

  else
  {
    v8 = *(v0 + 136) + 1;
    *(v0 + 128) = v5;
    *(v0 + 136) = v8;

    v9 = dispatch thunk of IdentityProofingAttributeConfigHelper.fetchAttributeID(input:)();
    v11 = v10;

    if (v11)
    {
      *(v0 + 16) = v9;
      *(v0 + 24) = v11;
      v12._countAndFlagsBits = 46;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13 = String.lowercased()();
      String.append(_:)(v13);

      v14 = *(v0 + 16);
      v15 = *(v0 + 24);
      *(v0 + 144) = v15;
      defaultLogger()();

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();

      v18 = os_log_type_enabled(v16, v17);
      v20 = *(v0 + 104);
      v19 = *(v0 + 112);
      v21 = *(v0 + 96);
      if (v18)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v26 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_100141FE4(v14, v15, &v26);
        _os_log_impl(&_mh_execute_header, v16, v17, "the assetID to be fetched is %s", v22, 0xCu);
        sub_10000BB78(v23);
      }

      (*(v20 + 8))(v19, v21);
      *(v0 + 152) = sub_1005A2ACC();
      v24 = swift_task_alloc();
      *(v0 + 160) = v24;
      *v24 = v0;
      v24[1] = sub_10026FBDC;

      return sub_1005A2BA0(v14, v15);
    }

    else
    {
      (*(*(v0 + 80) + 104))(*(v0 + 88), enum case for DIPError.Code.invalidImageAssetPlaceholder(_:), *(v0 + 72));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v25 = *(v0 + 8);

      return v25();
    }
  }
}

uint64_t sub_1002701C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100270254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  sub_100007224(&qword_100835968, &qword_1006DBC90);
  v5[23] = swift_task_alloc();
  v7 = type metadata accessor for WorkflowRecommendationResponse(0);
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[27] = v8;
  v5[28] = *(v8 - 8);
  v5[29] = swift_task_alloc();

  return _swift_task_switch(sub_10027040C, 0, 0);
}

uint64_t sub_10027040C()
{
  v1 = *(*(*(v0 + 152) + 40) + 16);

  os_unfair_lock_lock(v1 + 14);
  sub_10000BBC4(&v1[4], v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
  os_unfair_lock_unlock(v1 + 14);

  if (*(v0 + 80))
  {
    v2 = *(v0 + 120);
    sub_10012D290((v0 + 56), v0 + 16);
    sub_10012D290((v0 + 16), v2);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    sub_10000BE18(v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Fetching the auth code workflow from the server as the actions repository is nil", v7, 2u);
    }

    v9 = *(v0 + 224);
    v8 = *(v0 + 232);
    v10 = *(v0 + 216);
    v11 = *(v0 + 136);

    (*(v9 + 8))(v8, v10);

    *(v0 + 240) = sub_100266DA8(3, 0);

    v12 = swift_task_alloc();
    *(v0 + 248) = v12;
    *v12 = v0;
    v12[1] = sub_100270670;
    v13 = *(v0 + 144);
    v14 = *(v0 + 128);

    return sub_10025AE6C(v14, v11, v13, 0);
  }
}

uint64_t sub_100270670(uint64_t a1)
{
  *(*v2 + 256) = v1;

  if (v1)
  {
    v3 = sub_100270A6C;
  }

  else
  {

    v3 = sub_100270790;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100270790()
{
  v1 = v0[30];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[23];
  v5 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_workflowRecommendationResponse;
  swift_beginAccess();
  sub_10000BBC4(v1 + v5, v4, &qword_100835968, &qword_1006DBC90);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v6 = v0[22];
    v7 = v0[20];
    v8 = v0[21];
    sub_10000BE18(v0[23], &qword_100835968, &qword_1006DBC90);
    (*(v8 + 104))(v6, enum case for DIPError.Code.topekaInternalServerError(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v10 = v0[26];
    v11 = v0[15];
    sub_100275578(v0[23], v10, type metadata accessor for WorkflowRecommendationResponse);
    v11[3] = type metadata accessor for Workflow(0);
    v11[4] = &off_100808FE8;
    v12 = sub_100032DBC(v11);
    sub_100275578(v10, v12, type metadata accessor for Workflow);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100270A6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100270B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[25] = a7;
  v8[26] = v7;
  v8[23] = a2;
  v8[24] = a6;
  v8[22] = a1;
  v12 = type metadata accessor for DIPError.Code();
  v8[27] = v12;
  v8[28] = *(v12 - 8);
  v8[29] = swift_task_alloc();
  v13 = type metadata accessor for IdentityProofingAttributeConfiguration();
  v8[30] = v13;
  v8[31] = *(v13 - 8);
  v8[32] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v8[33] = v14;
  v8[34] = *(v14 - 8);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[40] = v15;
  *v15 = v8;
  v15[1] = sub_100270D0C;

  return sub_100270254((v8 + 2), a3, a4, a5);
}

uint64_t sub_100270D0C()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_100271F18;
  }

  else
  {
    v2 = sub_100270E20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100270E20(uint64_t a1)
{
  v54 = v1;
  v2 = v1[26];
  *(v2 + 48) = IdentityProofingConfiguration.state.getter();
  *(v2 + 56) = v3;

  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "-----BEGIN LOGGING SAVED WORKFLOW-----", v6, 2u);
  }

  v7 = v1[39];
  v8 = v1[33];
  v9 = v1[34];

  v10 = *(v9 + 8);
  v10(v7, v8);
  defaultLogger()();
  sub_100020260((v1 + 2), (v1 + 7));
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v1[38];
  v15 = v1[33];
  v52 = v10;
  if (v13)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v53 = v17;
    *v16 = 136446210;
    v18 = sub_10000BA08(v1 + 7, v1[10]);
    v19 = *v18;
    v20 = v18[1];

    sub_10000BB78(v1 + 7);
    v21 = sub_100141FE4(v19, v20, &v53);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, " WORKFLOWID: %{public}s", v16, 0xCu);
    sub_10000BB78(v17);
    v10 = v52;

    v52(v14, v15);
  }

  else
  {

    v10(v14, v15);
    sub_10000BB78(v1 + 7);
  }

  defaultLogger()();
  sub_100020260((v1 + 2), (v1 + 12));
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v1[37];
  v26 = v1[33];
  if (v24)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v53 = v28;
    *v27 = 136446210;
    v29 = sub_10000BA08(v1 + 12, v1[15]);
    v30 = v29[6];
    v31 = v29[7];

    sub_10000BB78(v1 + 12);
    v32 = sub_100141FE4(v30, v31, &v53);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v22, v23, " PROVIDERID: %{public}s", v27, 0xCu);
    sub_10000BB78(v28);
    v10 = v52;

    v52(v25, v26);
  }

  else
  {

    v10(v25, v26);
    sub_10000BB78(v1 + 12);
  }

  defaultLogger()();
  sub_100020260((v1 + 2), (v1 + 17));
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v1[36];
  v37 = v1[33];
  if (v35)
  {
    v51 = v1[36];
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v53 = v39;
    *v38 = 136446210;
    sub_10000BA08(v1 + 17, v1[20]);
    type metadata accessor for Workflow(0);

    v40 = Array.description.getter();
    v42 = v41;

    sub_10000BB78(v1 + 17);
    v43 = sub_100141FE4(v40, v42, &v53);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v33, v34, " PAGINATION: %{public}s", v38, 0xCu);
    sub_10000BB78(v39);
    v10 = v52;

    v52(v51, v37);
  }

  else
  {

    v10(v36, v37);
    sub_10000BB78(v1 + 17);
  }

  defaultLogger()();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "-----END LOGGING SAVED WORKFLOW-----", v46, 2u);
  }

  v47 = v1[35];
  v48 = v1[33];

  v10(v47, v48);
  v49 = swift_task_alloc();
  v1[42] = v49;
  *v49 = v1;
  v49[1] = sub_100271438;

  return sub_100272098((v1 + 2));
}

uint64_t sub_100271438(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {
    v4 = sub_100271FD4;
  }

  else
  {
    v4 = sub_10027154C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10027154C()
{
  v1 = v0[43];
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:
    v0[45] = *(v0[26] + 24);
    v2 = sub_10000BA08(v0 + 2, v0[5])[20];
    v0[46] = v2;

    v3 = IdentityProofingConfiguration.documentType.getter();
    v4 = swift_task_alloc();
    v0[47] = v4;
    *v4 = v0;
    v4[1] = sub_100271814;
    v5 = v0[32];

    return sub_1002A77FC(v5, v2, v3);
  }

  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[27];

  (*(v8 + 104))(v7, enum case for DIPError.Code.invalidWorkflowPackage(_:), v9);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10000BB78(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100271814()
{
  *(*v1 + 384) = v0;

  if (v0)
  {

    v2 = sub_100271CF8;
  }

  else
  {
    v2 = sub_100271958;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100271958()
{
  v1 = v0[48];
  v2 = v0[31];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001A6758(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration, &protocol conformance descriptor for IdentityProofingAttributeConfiguration);
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = (v2 + 8);
  v6 = v0[32];
  v7 = v0[30];
  if (v1)
  {

    (*v5)(v6, v7);
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1006DAE90;
    v9 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
    *(v8 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

    IdentityProofingConfiguration.documentType.getter();
    v10 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v11 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
  }

  else
  {
    v12 = v3;
    v13 = v4;

    (*v5)(v6, v7);
    sub_10000B8B8(v12, v13);

    IdentityProofingConfiguration.documentType.getter();
    v14 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v11 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
    sub_10000B90C(v12, v13);
  }

  sub_100020260((v0 + 2), v0[22]);
  sub_10000BB78(v0 + 2);

  v15 = v0[1];

  return v15(v11);
}

uint64_t sub_100271CF8()
{

  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006DAE90;
  v2 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  *(v1 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

  IdentityProofingConfiguration.documentType.getter();
  v3 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
  v4 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

  sub_100020260((v0 + 2), v0[22]);
  sub_10000BB78(v0 + 2);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_100271F18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100271FD4()
{
  sub_10000BB78((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100272098(uint64_t a1)
{
  v2[222] = v1;
  v2[221] = a1;
  v3 = type metadata accessor for DIPError.Code();
  v2[223] = v3;
  v2[224] = *(v3 - 8);
  v2[225] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[226] = v4;
  v2[227] = *(v4 - 8);
  v2[228] = swift_task_alloc();
  v2[229] = swift_task_alloc();
  v2[230] = swift_task_alloc();
  v2[231] = swift_task_alloc();

  return _swift_task_switch(sub_1002721DC, 0, 0);
}

uint64_t sub_1002721DC()
{
  v1 = *(v0 + 1768);
  v2 = sub_10000BA08(v1, v1[3]);
  v3 = *(v2 + *(type metadata accessor for Workflow(0) + 116));
  if (v3 && *(v3 + 2))
  {
    v4 = (v0 + 1752);
    v5 = objc_opt_self();

    v6 = [v5 standardUserDefaults];
    v7._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceAuthCodeRetry.getter();
    v8 = NSUserDefaults.internalBool(forKey:)(v7);

    if (v8)
    {
      defaultLogger()();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Internal setting to force enable retry auth code scenario has been enabled. Adding an additional page to auth code workflow", v11, 2u);
      }

      v12 = *(v0 + 1848);
      v13 = *(v0 + 1816);
      v14 = *(v0 + 1808);

      (*(v13 + 8))(v12, v14);
      *(v0 + 1624) = 0;
      *(v0 + 1632) = 0xD00000000000001ELL;
      *(v0 + 1640) = 0x8000000100708490;
      *(v0 + 1648) = 0xD00000000000009DLL;
      *(v0 + 1656) = 0x80000001007084B0;
      *(v0 + 1664) = _swiftEmptyArrayStorage;
      *(v0 + 1672) = 0;
      *(v0 + 1688) = 0;
      *(v0 + 1680) = 0;
      *(v0 + 1696) = xmmword_1006DC000;
      *(v0 + 1712) = 0;
      *(v0 + 1728) = 0;
      *(v0 + 1720) = 0;
      v15 = *(v3 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 1752) = v3;
      v4 = (v0 + 1752);
      if (!isUniquelyReferenced_nonNull_native || v15 >= *(v3 + 3) >> 1)
      {
        v3 = sub_1003C58F0(isUniquelyReferenced_nonNull_native, v15 + 1, 1, v3);
        *(v0 + 1752) = v3;
      }

      v17 = *(v0 + 1704);
      *(v0 + 568) = *(v0 + 1688);
      *(v0 + 584) = v17;
      *(v0 + 600) = *(v0 + 1720);
      v18 = *(v0 + 1640);
      *(v0 + 504) = *(v0 + 1624);
      *(v0 + 520) = v18;
      v19 = *(v0 + 1672);
      *(v0 + 536) = *(v0 + 1656);
      *(v0 + 552) = v19;
      sub_10027545C(0, 0, 1, (v0 + 504));
      sub_1000F01E8(v0 + 1624);
    }

    *(v0 + 1760) = _swiftEmptyArrayStorage;
    v20 = [v5 standardUserDefaults];
    v21._countAndFlagsBits = static DaemonInternalDefaultsKeys.addXMASWatchAuthCodeUI.getter();
    v22 = NSUserDefaults.internalBool(forKey:)(v21);

    if (v22)
    {
      *(v0 + 1512) = 0;
      *(v0 + 1520) = 0xD00000000000002ELL;
      *(v0 + 1528) = 0x8000000100708420;
      *(v0 + 1536) = 0xD000000000000031;
      *(v0 + 1544) = 0x8000000100708450;
      *(v0 + 1552) = _swiftEmptyArrayStorage;
      *(v0 + 1560) = 0;
      *(v0 + 1576) = 0;
      *(v0 + 1568) = 0;
      *(v0 + 1584) = 0xD00000000000001ELL;
      *(v0 + 1592) = 0x8000000100703F80;
      *(v0 + 1600) = 0;
      *(v0 + 1616) = 0;
      *(v0 + 1608) = 0;
      v23 = *(v3 + 2);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 1752) = v3;
      if (!v24 || v23 >= *(v3 + 3) >> 1)
      {
        v3 = sub_1003C58F0(v24, v23 + 1, 1, v3);
        *v4 = v3;
      }

      v25 = *(v0 + 1592);
      *(v0 + 680) = *(v0 + 1576);
      *(v0 + 696) = v25;
      *(v0 + 712) = *(v0 + 1608);
      v26 = *(v0 + 1528);
      *(v0 + 616) = *(v0 + 1512);
      *(v0 + 632) = v26;
      v27 = *(v0 + 1560);
      *(v0 + 648) = *(v0 + 1544);
      *(v0 + 664) = v27;
      sub_10027545C(0, 0, 1, (v0 + 616));
      sub_1000F01E8(v0 + 1512);
    }

    v28 = [v5 standardUserDefaults];
    v29._countAndFlagsBits = static DaemonInternalDefaultsKeys.addXMASWatchRetryAuthCodeUI.getter();
    v30 = NSUserDefaults.internalBool(forKey:)(v29);

    if (v30)
    {
      *(v0 + 1400) = 0;
      *(v0 + 1408) = 0xD000000000000027;
      *(v0 + 1416) = 0x80000001007083C0;
      *(v0 + 1424) = 0xD00000000000002ALL;
      *(v0 + 1432) = 0x80000001007083F0;
      *(v0 + 1440) = _swiftEmptyArrayStorage;
      *(v0 + 1448) = 0;
      *(v0 + 1464) = 0;
      *(v0 + 1456) = 0;
      *(v0 + 1472) = 0xD000000000000017;
      *(v0 + 1480) = 0x8000000100703FA0;
      *(v0 + 1488) = 0;
      *(v0 + 1504) = 0;
      *(v0 + 1496) = 0;
      v31 = *(v3 + 2);
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 1752) = v3;
      if (!v32 || v31 >= *(v3 + 3) >> 1)
      {
        v3 = sub_1003C58F0(v32, v31 + 1, 1, v3);
        *v4 = v3;
      }

      v33 = *(v0 + 1480);
      *(v0 + 792) = *(v0 + 1464);
      *(v0 + 808) = v33;
      *(v0 + 824) = *(v0 + 1496);
      v34 = *(v0 + 1416);
      *(v0 + 728) = *(v0 + 1400);
      *(v0 + 744) = v34;
      v35 = *(v0 + 1448);
      *(v0 + 760) = *(v0 + 1432);
      *(v0 + 776) = v35;
      sub_10027545C(0, 0, 1, (v0 + 728));
      sub_1000F01E8(v0 + 1400);
    }

    *(v0 + 1856) = v3;
    defaultLogger()();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Fetch activeConfig from prepareProofingUI", v38, 2u);
    }

    v39 = *(v0 + 1840);
    v40 = *(v0 + 1816);
    v41 = *(v0 + 1808);
    v42 = *(v0 + 1776);
    v43 = *(v0 + 1768);

    v44 = *(v40 + 8);
    *(v0 + 1864) = v44;
    v44(v39, v41);
    *(v0 + 1872) = *(v42 + 24);
    v45 = sub_10000BA08(v43, v1[3])[20];
    *(v0 + 1880) = v45;

    v46 = swift_task_alloc();
    *(v0 + 1888) = v46;
    *v46 = v0;
    v46[1] = sub_100272998;

    return sub_1002A8D74(v0 + 16, v45, 0);
  }

  else
  {
    (*(*(v0 + 1792) + 104))(*(v0 + 1800), enum case for DIPError.Code.workflowPaginationUnavailable(_:), *(v0 + 1784));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v48 = *(v0 + 8);

    return v48();
  }
}

uint64_t sub_100272998()
{
  *(*v1 + 1896) = v0;

  if (v0)
  {

    v2 = sub_100272FE4;
  }

  else
  {
    v2 = sub_100272B00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100272B00()
{
  v29 = v0;
  result = *(v0 + 1856);
  v2 = *(result + 16);
  *(v0 + 1904) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = (v0 + 840);
    while (1)
    {
      *(v0 + 1928) = _swiftEmptyArrayStorage;
      *(v0 + 1920) = _swiftEmptyArrayStorage;
      *(v0 + 1912) = v3;
      v5 = *(v0 + 1856);
      if (v3 >= *(v5 + 16))
      {
        __break(1u);
        return result;
      }

      v6 = (v5 + 112 * v3);
      v7 = v6[5];
      v8 = v6[6];
      v9 = v6[8];
      *(v0 + 920) = v6[7];
      *(v0 + 936) = v9;
      *(v0 + 904) = v8;
      v10 = v6[3];
      v11 = v6[4];
      *v4 = v6[2];
      *(v0 + 856) = v10;
      *(v0 + 872) = v11;
      *(v0 + 888) = v7;
      v12 = *(v0 + 912);
      v13 = *(v0 + 920);
      if (!v13)
      {
        break;
      }

      if ((v12 != 0xD00000000000001ELL || 0x8000000100703F80 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v12 != 0xD000000000000017 || 0x8000000100703FA0 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v12 != 0xD000000000000016 || 0x8000000100703FC0 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (v12 == 0x6E695F646579656BLL && v13 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          sub_1000F01B0(v0 + 840, v0 + 1064);
          v23 = swift_task_alloc();
          *(v0 + 1936) = v23;
          *v23 = v0;
          v23[1] = sub_100273088;

          return sub_10027428C(v4, v0 + 16);
        }

        break;
      }

      sub_1000F01B0(v0 + 840, v0 + 1176);
      defaultLogger()();
      sub_1000F01B0(v0 + 840, v0 + 1288);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      sub_1000F01E8(v0 + 840);
      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 1832);
      v18 = *(v0 + 1808);
      v27 = *(v0 + 1864);
      if (v16)
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v28 = v20;
        *v19 = 136315138;

        sub_1000F01E8(v0 + 840);
        v21 = sub_100141FE4(v12, v13, &v28);

        *(v19 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v14, v15, "IdentityProofingDisplayManager skipping mapping deprecated page: %s", v19, 0xCu);
        sub_10000BB78(v20);
      }

      else
      {
        sub_1000F01E8(v0 + 840);
      }

      result = v27(v17, v18);
      v3 = *(v0 + 1912) + 1;
      if (v3 == *(v0 + 1904))
      {
        goto LABEL_18;
      }
    }

    v24 = *(v0 + 944);
    *(v0 + 1736) = sub_100308788(v12, v13);
    *(v0 + 1744) = v25;
    *(v0 + 1960) = v25;
    sub_1000F01B0(v0 + 840, v0 + 952);
    v26 = swift_task_alloc();
    *(v0 + 1968) = v26;
    *v26 = v0;
    v26[1] = sub_100273884;

    return sub_100274B50(v24);
  }

  else
  {
LABEL_18:

    sub_1000F2758(v0 + 16);

    v22 = *(v0 + 8);

    return v22(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100272FE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100273088(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1944) = a1;
  *(v3 + 1952) = v1;

  if (v1)
  {
    sub_1000F2758(v3 + 16);
    sub_1000F01E8(v3 + 840);

    v4 = sub_10027413C;
  }

  else
  {
    sub_1000F01E8(v3 + 840);
    v4 = sub_1002731D8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002731D8(unint64_t a1)
{
  v49 = v1;
  v2 = *(v1 + 1944);
  if (v2)
  {
    v3 = (v1 + 1760);
    v4 = v2;
    defaultLogger()();
    v5 = v4;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v1 + 1864);
    v10 = *(v1 + 1824);
    v11 = *(v1 + 1808);
    if (v8)
    {
      v46 = *(v1 + 1824);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v48 = v13;
      *v12 = 136446210;
      v14 = IdentityProofingUIConfig.view.getter();
      v45 = v9;
      v16 = sub_100141FE4(v14, v15, &v48);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s to be shown to the user", v12, 0xCu);
      sub_10000BB78(v13);

      v45(v46, v11);
    }

    else
    {

      v9(v10, v11);
    }

    v17 = v5;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_38:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v18 = *v3;
    v17 = *v3;
  }

  else
  {
    v17 = *(v1 + 1928);
    v18 = *(v1 + 1920);
  }

  v19 = *(v1 + 1912) + 1;
  if (v19 == *(v1 + 1904))
  {
LABEL_9:

    sub_1000F2758(v1 + 16);

    v20 = *(v1 + 8);

    return v20(v17);
  }

  else
  {
    v3 = (v1 + 840);
    v43 = v18;
    v44 = v17;
    while (1)
    {
      *(v1 + 1928) = v17;
      *(v1 + 1920) = v18;
      *(v1 + 1912) = v19;
      v25 = *(v1 + 1856);
      if (v19 >= *(v25 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      v26 = (v25 + 112 * v19);
      v27 = v26[5];
      v28 = v26[6];
      v29 = v26[8];
      *(v1 + 920) = v26[7];
      *(v1 + 936) = v29;
      *(v1 + 904) = v28;
      v30 = v26[3];
      v31 = v26[4];
      *v3 = v26[2];
      *(v1 + 856) = v30;
      *(v1 + 872) = v31;
      *(v1 + 888) = v27;
      v32 = *(v1 + 912);
      v33 = *(v1 + 920);
      if (!v33)
      {
        break;
      }

      if ((v32 != 0xD00000000000001ELL || 0x8000000100703F80 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v32 != 0xD000000000000017 || 0x8000000100703FA0 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v32 != 0xD000000000000016 || 0x8000000100703FC0 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (v32 == 0x6E695F646579656BLL && v33 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          sub_1000F01B0(v1 + 840, v1 + 1064);
          v39 = swift_task_alloc();
          *(v1 + 1936) = v39;
          *v39 = v1;
          v39[1] = sub_100273088;

          return sub_10027428C(v3, v1 + 16);
        }

        break;
      }

      sub_1000F01B0(v1 + 840, v1 + 1176);
      defaultLogger()();
      sub_1000F01B0(v1 + 840, v1 + 1288);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      sub_1000F01E8(v1 + 840);
      v36 = os_log_type_enabled(v34, v35);
      v37 = *(v1 + 1832);
      v38 = *(v1 + 1808);
      v47 = *(v1 + 1864);
      if (v36)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v48 = v23;
        *v22 = 136315138;

        sub_1000F01E8(v1 + 840);
        v24 = sub_100141FE4(v32, v33, &v48);

        *(v22 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v34, v35, "IdentityProofingDisplayManager skipping mapping deprecated page: %s", v22, 0xCu);
        sub_10000BB78(v23);
        v18 = v43;

        v17 = v44;
      }

      else
      {
        sub_1000F01E8(v1 + 840);
      }

      v47(v37, v38);
      v19 = *(v1 + 1912) + 1;
      if (v19 == *(v1 + 1904))
      {
        goto LABEL_9;
      }
    }

    v40 = *(v1 + 944);
    *(v1 + 1736) = sub_100308788(v32, v33);
    *(v1 + 1744) = v41;
    *(v1 + 1960) = v41;
    sub_1000F01B0(v1 + 840, v1 + 952);
    v42 = swift_task_alloc();
    *(v1 + 1968) = v42;
    *v42 = v1;
    v42[1] = sub_100273884;

    return sub_100274B50(v40);
  }
}

uint64_t sub_100273884(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1976) = v1;

  if (v1)
  {
    sub_1000F2758(v4 + 16);

    v5 = sub_1002741E0;
  }

  else
  {
    v6 = *(v4 + 1736);
    *(v4 + 1984) = a1;
    *(v4 + 1992) = v6;
    *(v4 + 2000) = *(v4 + 880);
    *(v4 + 2008) = *(v4 + 864);
    *(v4 + 2024) = *(v4 + 848);
    *(v4 + 2032) = *(v4 + 856);
    v5 = sub_100273A00;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100273A00()
{
  v48 = v0;
  v1 = (v0 + 840);
  v2 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());

  v3 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  sub_1000F01E8(v0 + 840);
  v4 = v3;
  defaultLogger()();
  v5 = v4;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1864);
  v10 = *(v0 + 1824);
  v11 = *(v0 + 1808);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v45 = v9;
    v13 = swift_slowAlloc();
    v47[0] = v13;
    *v12 = 136446210;
    v14 = IdentityProofingUIConfig.view.getter();
    v43 = v10;
    v16 = sub_100141FE4(v14, v15, v47);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s to be shown to the user", v12, 0xCu);
    sub_10000BB78(v13);

    v45(v43, v11);
  }

  else
  {

    v9(v10, v11);
  }

  v17 = v5;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 1760) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 1760) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_35:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v18 = *(v0 + 1760);
  v19 = *(v0 + 1912) + 1;
  if (v19 == *(v0 + 1904))
  {
LABEL_6:

    sub_1000F2758(v0 + 16);

    v20 = *(v0 + 8);

    return v20(v18);
  }

  else
  {
    v17 = 0xD000000000000016;
    v44 = *(v0 + 1760);
    while (1)
    {
      *(v0 + 1928) = v18;
      *(v0 + 1920) = v18;
      *(v0 + 1912) = v19;
      v25 = *(v0 + 1856);
      if (v19 >= *(v25 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v26 = (v25 + 112 * v19);
      v27 = v26[5];
      v28 = v26[6];
      v29 = v26[8];
      *(v0 + 920) = v26[7];
      *(v0 + 936) = v29;
      *(v0 + 904) = v28;
      v30 = v26[3];
      v31 = v26[4];
      *v1 = v26[2];
      *(v0 + 856) = v30;
      *(v0 + 872) = v31;
      *(v0 + 888) = v27;
      v32 = *(v0 + 912);
      v33 = *(v0 + 920);
      if (!v33)
      {
        break;
      }

      if ((v32 != 0xD00000000000001ELL || 0x8000000100703F80 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v32 != 0xD000000000000017 || 0x8000000100703FA0 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v32 != 0xD000000000000016 || 0x8000000100703FC0 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (v32 == 0x6E695F646579656BLL && v33 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          sub_1000F01B0(v0 + 840, v0 + 1064);
          v39 = swift_task_alloc();
          *(v0 + 1936) = v39;
          *v39 = v0;
          v39[1] = sub_100273088;

          return sub_10027428C(v1, v0 + 16);
        }

        break;
      }

      sub_1000F01B0(v0 + 840, v0 + 1176);
      defaultLogger()();
      sub_1000F01B0(v0 + 840, v0 + 1288);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      sub_1000F01E8(v0 + 840);
      v36 = os_log_type_enabled(v34, v35);
      v37 = *(v0 + 1832);
      v38 = *(v0 + 1808);
      v46 = *(v0 + 1864);
      if (v36)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v47[0] = v23;
        *v22 = 136315138;

        sub_1000F01E8(v0 + 840);
        v24 = sub_100141FE4(v32, v33, v47);

        *(v22 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v34, v35, "IdentityProofingDisplayManager skipping mapping deprecated page: %s", v22, 0xCu);
        sub_10000BB78(v23);
        v18 = v44;

        v17 = 0xD000000000000016;
      }

      else
      {
        sub_1000F01E8(v0 + 840);
      }

      v46(v37, v38);
      v19 = *(v0 + 1912) + 1;
      if (v19 == *(v0 + 1904))
      {
        goto LABEL_6;
      }
    }

    v40 = *(v0 + 944);
    *(v0 + 1736) = sub_100308788(v32, v33);
    *(v0 + 1744) = v41;
    *(v0 + 1960) = v41;
    sub_1000F01B0(v0 + 840, v0 + 952);
    v42 = swift_task_alloc();
    *(v0 + 1968) = v42;
    *v42 = v0;
    v42[1] = sub_100273884;

    return sub_100274B50(v40);
  }
}

uint64_t sub_10027413C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002741E0()
{
  sub_1000F01E8(v0 + 840);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10027428C(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = type metadata accessor for Logger();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_100274368, 0, 0);
}

uint64_t sub_100274368(uint64_t a1)
{
  v47 = v1;
  v2 = v1[16];
  defaultLogger()();
  sub_1000F01B0(v2, (v1 + 2));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  sub_1000F01E8(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v46 = v7;
    *v6 = 136315138;
    if (*(v5 + 80))
    {
      v8 = *(v1[16] + 72);
      v9 = *(v5 + 80);
    }

    else
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    v14 = v1[23];
    v15 = v1[19];
    v16 = v1[20];

    v17 = sub_100141FE4(v8, v9, &v46);

    *(v6 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "fetching the proofing view from the page type: %s", v6, 0xCu);
    sub_10000BB78(v7);

    v13 = *(v16 + 8);
    v13(v14, v15);
  }

  else
  {
    v10 = v1[23];
    v11 = v1[19];
    v12 = v1[20];

    v13 = *(v12 + 8);
    v13(v10, v11);
  }

  v18 = *(v1[16] + 40);
  if (v18[2])
  {
    v20 = v18[4];
    v19 = v18[5];

    defaultLogger()();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    v23 = os_log_type_enabled(v21, v22);
    v24 = v1[22];
    v25 = v1[19];
    if (v23)
    {
      v45 = v13;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v46 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_100141FE4(v20, v19, &v46);
      _os_log_impl(&_mh_execute_header, v21, v22, "The keyedInType is %s", v26, 0xCu);
      sub_10000BB78(v27);

      v13 = v45;
    }

    v13(v24, v25);
    v28 = v1[17];
    v1[24] = sub_100308788(v20, v19);
    v1[25] = v29;
    v30 = *(v28 + 456);
    if (v30 && *(v30 + 16))
    {
      v31 = sub_10003ADCC(v20, v19);
      v33 = v32;

      if (v33)
      {
        v34 = (*(v30 + 56) + 152 * v31);
        v1[26] = v34[1];
        v1[27] = v34[2];
        v1[28] = v34[3];
        v1[29] = v34[4];
        v1[30] = v34[11];
        v1[31] = v34[12];

        defaultLogger()();
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "an active config exists", v37, 2u);
        }

        v38 = v1[21];
        v39 = v1[19];
        v40 = v1[16];

        v13(v38, v39);
        v41 = *(v40 + 104);
        v42 = swift_task_alloc();
        v1[32] = v42;
        *v42 = v1;
        v42[1] = sub_100274830;

        return sub_100274B50(v41);
      }
    }

    else
    {
    }
  }

  v44 = v1[1];

  return v44(0);
}

uint64_t sub_100274830(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = sub_100274AA4;
  }

  else
  {
    *(v4 + 272) = a1;
    v5 = sub_100274958;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100274958()
{
  v1 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());

  v2 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100274AA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100274B50(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100274C1C, 0, 0);
}

uint64_t sub_100274C1C(uint64_t a1)
{
  v39 = v1;
  v2 = v1[3];
  if (*(v2 + 56))
  {
    v3 = v1[2];
    String.lowercased()();
    if (v3)
    {
      v4 = v1[2];
      defaultLogger()();

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();

      v7 = os_log_type_enabled(v5, v6);
      v8 = v1[7];
      v10 = v1[4];
      v9 = v1[5];
      if (v7)
      {
        v35 = v1[4];
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v38 = v12;
        *v11 = 136315138;
        v13 = Array.description.getter();
        v34 = v8;
        v15 = sub_100141FE4(v13, v14, &v38);

        *(v11 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v5, v6, "Fetching asset images for: %s", v11, 0xCu);
        sub_10000BB78(v12);

        (*(v9 + 8))(v34, v35);
      }

      else
      {

        (*(v9 + 8))(v8, v10);
      }

      v1[8] = *(v1[3] + 32);
      v24 = String.lowercased()();
      v1[9] = v24._object;

      v25 = swift_task_alloc();
      v1[10] = v25;
      *v25 = v1;
      v25[1] = sub_1002750A0;

      return sub_10026F6BC(v24._countAndFlagsBits, v24._object, v4);
    }
  }

  defaultLogger()();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v18 = 136315394;
    if (*(v2 + 56))
    {
      v19 = *(v2 + 48);
      v20 = *(v2 + 56);
    }

    else
    {
      v20 = 0xE300000000000000;
      v19 = 7104878;
    }

    v27 = v1[5];
    v36 = v1[4];
    v37 = v1[6];

    v28 = sub_100141FE4(v19, v20, &v38);

    *(v18 + 4) = v28;
    *(v18 + 12) = 2080;

    v29 = Array.description.getter();
    v31 = v30;

    v32 = sub_100141FE4(v29, v31, &v38);

    *(v18 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v16, v17, "Not fetching assets because state or image assets is nil. state=%s imageAssets=%s", v18, 0x16u);
    swift_arrayDestroy();

    (*(v27 + 8))(v37, v36);
  }

  else
  {
    v22 = v1[5];
    v21 = v1[6];
    v23 = v1[4];

    (*(v22 + 8))(v21, v23);
  }

  v33 = v1[1];

  return v33(0);
}

uint64_t sub_1002750A0(uint64_t a1)
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

    return v7(a1);
  }
}

uint64_t sub_100275244()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1002752C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for IQCType();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_10000BE18(v25, &qword_10083D4F8, &qword_1006DC0A0);
  }

  if (v18 < 1)
  {
    return sub_10000BE18(v25, &qword_10083D4F8, &qword_1006DC0A0);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_10000BE18(v25, &qword_10083D4F8, &qword_1006DC0A0);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_10027545C(unint64_t result, _BYTE *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = *v4;
  v10 = (v9 + 32 + 112 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 112 * v7;
  a2 = (v9 + 32 + 112 * v8);
  if (result != a2 || result >= &a2[112 * v14])
  {
    result = memmove(result, a2, 112 * v14);
  }

  v16 = *(v9 + 16);
  v11 = __OFADD__(v16, v12);
  v17 = v16 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v17;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  memmove(v10, v6, 0x70uLL);
  a3 = &qword_10083E7D0;
  a4 = &unk_1006DC090;
  a2 = v18;
  result = v6;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_10000BBC4(result, a2, a3, a4);
    __break(1u);
    return result;
  }

  return sub_10000BBC4(v6, v18, &qword_10083E7D0, &unk_1006DC090);
}

uint64_t sub_100275578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002755E0()
{
  v1[17] = v0;
  v2 = type metadata accessor for Logger();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v3 = type metadata accessor for Locale.Language();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  v4 = type metadata accessor for Locale();
  v1[28] = v4;
  v1[29] = *(v4 - 8);
  v1[30] = swift_task_alloc();
  sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_1002757C0, 0, 0);
}

uint64_t sub_1002757C0()
{
  v39 = v0;
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  (*(v4 + 16))(v2, v0[17] + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_locale, v3);
  Locale.language.getter();
  (*(v4 + 8))(v2, v3);
  Locale.Language.region.getter();
  (*(v6 + 8))(v5, v7);
  v8 = type metadata accessor for Locale.Region();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v1, 1, v8);
  v11 = v0[31];
  if (v10 == 1)
  {
    sub_10000BE18(v0[31], &unk_100849BA0, &qword_1006D95F0);
LABEL_9:
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[22];
    v23 = v0[18];
    v24 = v0[19];
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Invalid current region code. Will not refresh static content", v25, 2u);
    }

    (*(v24 + 8))(v22, v23);
    goto LABEL_12;
  }

  v12 = Locale.Region.identifier.getter();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    goto LABEL_9;
  }

  v16 = *(v0[17] + 16);
  v0[13] = v12;
  v0[14] = v14;
  v17 = swift_task_alloc();
  *(v17 + 16) = v0 + 13;
  LOBYTE(v16) = sub_10035C8E4(sub_1000307C0, v17, v16);

  if ((v16 & 1) == 0)
  {
    defaultLogger()();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[24];
    v32 = v0[18];
    v33 = v0[19];
    if (v30)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38 = v35;
      *v34 = 136315138;
      v36 = sub_100141FE4(v12, v14, &v38);

      *(v34 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "current region %s is not in the allow list, will not attempt to refresh static workflow", v34, 0xCu);
      sub_10000BB78(v35);
    }

    else
    {
    }

    (*(v33 + 8))(v31, v32);
LABEL_12:

    v26 = v0[1];

    return v26();
  }

  v18 = v0[17];

  sub_100020260(v18 + 80, (v0 + 2));
  sub_10000BA08(v0 + 2, v0[5]);
  dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  sub_10000BB78(v0 + 2);
  v0[32] = sub_1006146AC();
  sub_1006146AC();

  v37 = swift_task_alloc();
  v0[33] = v37;
  *v37 = v0;
  v37[1] = sub_100275E14;

  return sub_100614918(0xD000000000000024, 0x80000001007089E0, 0xD000000000000027, 0x8000000100708A10);
}

uint64_t sub_100275E14()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_100276164;
  }

  else
  {
    v2 = sub_100275F48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100275F48(uint64_t a1)
{
  *(v1 + 280) = sub_1006146AC();
  sub_1006146AC();

  v2 = swift_task_alloc();
  *(v1 + 288) = v2;
  *v2 = v1;
  v2[1] = sub_100276030;

  return sub_100614918(0xD000000000000024, 0x8000000100708A40, 0xD000000000000027, 0x8000000100708A70);
}

uint64_t sub_100276030()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_100276508;
  }

  else
  {
    v2 = sub_100276380;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100276164(uint64_t a1)
{
  v18 = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[19];
    v16 = v1[20];
    v5 = v1[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "received an error during refreshing static content %s", v6, 0xCu);
    sub_10000BB78(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v12 = v1[19];
    v11 = v1[20];
    v13 = v1[18];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_100276380(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to fetch Identity Proofing static assets", v4, 2u);
  }

  v5 = v1[23];
  v6 = v1[18];
  v7 = v1[19];

  (*(v7 + 8))(v5, v6);
  v1[38] = sub_1005A2ACC();
  sub_1005A2ACC();

  v8 = swift_task_alloc();
  v1[39] = v8;
  *v8 = v1;
  v8[1] = sub_100276724;

  return sub_1005A41DC(0xD000000000000024, 0x80000001007089E0, 0x6A2E737465737361, 0xEB000000006E6F73);
}

uint64_t sub_100276508(uint64_t a1)
{
  v18 = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[19];
    v16 = v1[20];
    v5 = v1[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "received an error during refreshing static content %s", v6, 0xCu);
    sub_10000BB78(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v12 = v1[19];
    v11 = v1[20];
    v13 = v1[18];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_100276724()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_100276AD4;
  }

  else
  {

    v2 = sub_100276840;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100276840(uint64_t a1)
{
  *(v1 + 328) = sub_1005A2ACC();
  sub_1005A2ACC();

  v2 = swift_task_alloc();
  *(v1 + 336) = v2;
  *v2 = v1;
  v2[1] = sub_100276924;

  return sub_1005A41DC(0xD000000000000024, 0x8000000100708A40, 0x6A2E737465737361, 0xEB000000006E6F73);
}

uint64_t sub_100276924()
{
  v2 = *v1;
  *(v2 + 344) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100276CF8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100276AD4()
{
  v17 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[19];
    v15 = v0[20];
    v4 = v0[18];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "received an error during refreshing static content %s", v5, 0xCu);
    sub_10000BB78(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[19];
    v10 = v0[20];
    v12 = v0[18];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100276CF8()
{
  v17 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[19];
    v15 = v0[20];
    v4 = v0[18];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "received an error during refreshing static content %s", v5, 0xCu);
    sub_10000BB78(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[19];
    v10 = v0[20];
    v12 = v0[18];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100276F1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 440) = a4;
  *(v5 + 64) = a3;
  *(v5 + 72) = v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  sub_100007224(&unk_100849400, &unk_1006BFBB0);
  *(v5 + 80) = swift_task_alloc();
  v6 = type metadata accessor for Date();
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();

  return _swift_task_switch(sub_100277144, 0, 0);
}

uint64_t sub_100277144(uint64_t a1)
{
  v31 = v1;
  v2 = *(v1 + 56);
  if (!v2)
  {
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v3, v4);
    v6 = *(v1 + 144);
    v7 = *(v1 + 120);
    v8 = *(v1 + 128);
    if (v11)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Unable to update proofing as proofingSessionID doesn't exist";
      goto LABEL_7;
    }

LABEL_8:

    (*(v8 + 8))(v6, v7);

    v12 = *(v1 + 8);

    return v12();
  }

  if (*(v1 + 440))
  {
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v1 + 152);
    v7 = *(v1 + 120);
    v8 = *(v1 + 128);
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Unable to update proofing as target doesn't exist";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v3, v4, v10, v9, 2u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  defaultLogger()();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v1 + 264);
  v19 = *(v1 + 120);
  v18 = *(v1 + 128);
  if (v16)
  {
    v20 = *(v1 + 48);
    v29 = *(v1 + 264);
    v21 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v21 = 136315394;
    *(v21 + 4) = sub_100141FE4(v20, v2, &v30);
    *(v21 + 12) = 2080;
    v22 = IdentityTarget.debugDescription.getter();
    v24 = sub_100141FE4(v22, v23, &v30);

    *(v21 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "check if an identity pass exists for proofingSessionID: %s and target %s", v21, 0x16u);
    swift_arrayDestroy();

    v25 = *(v18 + 8);
    v25(v29, v19);
  }

  else
  {

    v25 = *(v18 + 8);
    v25(v17, v19);
  }

  *(v1 + 272) = v25;
  v26 = swift_task_alloc();
  *(v1 + 280) = v26;
  *v26 = v1;
  v26[1] = sub_100277584;
  v27 = *(v1 + 64);
  v28 = *(v1 + 48);

  return sub_100280DD8(v28, v2, v27);
}

uint64_t sub_100277584(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = a2;

  return _swift_task_switch(sub_100277684, 0, 0);
}

uint64_t sub_100277684(uint64_t a1)
{
  v64 = v1;
  v2 = v1[37];
  if (v2)
  {
    v3 = v1[36];

    sub_100511C48(v3, v2);
    v5 = v4;

    if (v5)
    {

      defaultLogger()();

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = v1[36];
        v60 = v1[32];
        v61 = v1[34];
        v59 = v1[15];
        v10 = v1[6];
        v9 = v1[7];
        v11 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v11 = 136315394;
        *(v11 + 4) = sub_100141FE4(v10, v9, &v63);
        *(v11 + 12) = 2080;
        *(v11 + 14) = sub_100141FE4(v8, v2, &v63);
        _os_log_impl(&_mh_execute_header, v6, v7, "Pass exists for a given proofingSessionID %s and %s. Delete locally stored data", v11, 0x16u);
        swift_arrayDestroy();

        v61(v60, v59);
      }

      else
      {
        v36 = v1[34];
        v37 = v1[32];
        v38 = v1[15];

        v36(v37, v38);
      }

      v1[38] = *(v1[9] + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_cleanupProvider);

      defaultLogger()();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Attempting to notify provisioning complete to the server", v41, 2u);
      }

      v42 = v1[34];
      v43 = v1[31];
      v44 = v1[15];

      v42(v43, v44);
      v45 = swift_task_alloc();
      v1[39] = v45;
      *v45 = v1;
      v45[1] = sub_100277D84;
      v46 = v1[36];
      v47 = v1[8];

      return sub_10029AFAC(v46, v2, 0, v47);
    }

    else
    {
      defaultLogger()();

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      v26 = os_log_type_enabled(v24, v25);
      v27 = v1[34];
      v28 = v1[30];
      v29 = v1[15];
      if (v26)
      {
        v30 = v1[7];
        v31 = v1[6];
        v62 = v1[34];
        v32 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v32 = 136315394;
        *(v32 + 4) = sub_100141FE4(v31, v30, &v63);
        *(v32 + 12) = 2080;
        v33 = IdentityTarget.debugDescription.getter();
        v35 = sub_100141FE4(v33, v34, &v63);

        *(v32 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v24, v25, "Manual check time interval has elapsed for the storedProofingSession with proofingSessionID: %s and target: %s. Will update proofing data...", v32, 0x16u);
        swift_arrayDestroy();

        v62(v28, v29);
      }

      else
      {

        v27(v28, v29);
      }

      defaultLogger()();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "Check if there was a provisioning attempt", v50, 2u);
      }

      v51 = v1[34];
      v52 = v1[29];
      v53 = v1[15];
      v54 = v1[7];

      v51(v52, v53);
      v55 = swift_task_alloc();
      v1[40] = v55;
      *v55 = v1;
      v55[1] = sub_100278008;
      v56 = v1[10];
      v57 = v1[8];
      v58 = v1[6];

      return sub_10027ACBC(v56, v58, v54, v57);
    }
  }

  else
  {
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "The proofing Session does not have a credential identifier, this is an invalid state. Delete locally stored data", v14, 2u);
    }

    v15 = v1[34];
    v16 = v1[20];
    v17 = v1[15];
    v18 = v1[9];

    v15(v16, v17);
    v1[53] = *(v18 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_cleanupProvider);

    v19 = swift_task_alloc();
    v1[54] = v19;
    *v19 = v1;
    v19[1] = sub_10027980C;
    v20 = v1[7];
    v21 = v1[8];
    v22 = v1[6];

    return sub_10029E160(0, 0, v22, v20, v21, 0);
  }
}

uint64_t sub_100277D84()
{

  return _swift_task_switch(sub_100277E80, 0, 0);
}

uint64_t sub_100277E80()
{
  sub_1002A3AF8(v0[36], v0[37], 0, 0, v0[8], 0);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100278008()
{

  return _swift_task_switch(sub_100278104, 0, 0);
}

uint64_t sub_100278104()
{
  v49 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10000BE18(v3, &unk_100849400, &unk_1006BFBB0);
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Provisioning has never been attempted. Will call pending actions.", v6, 2u);
    }

    v7 = v0[34];
    v8 = v0[22];
    v9 = v0[15];

    v7(v8, v9);

    v0[49] = sub_100266DA8(1, 0);

    v10 = swift_task_alloc();
    v0[50] = v10;
    *v10 = v0;
    v10[1] = sub_10027939C;
    v11 = v0[7];
    v12 = v0[8];
    v13 = v0[6];

    return sub_10025AE6C(v13, v11, v12, 0);
  }

  else
  {
    v16 = v0[13];
    v15 = v0[14];
    (*(v2 + 32))(v15, v3, v1);
    defaultLogger()();
    (*(v2 + 16))(v16, v15, v1);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[34];
    v21 = v0[28];
    v22 = v0[15];
    v24 = v0[12];
    v23 = v0[13];
    v25 = v0[11];
    if (v19)
    {
      v47 = v0[28];
      v26 = swift_slowAlloc();
      v46 = v22;
      v27 = swift_slowAlloc();
      v48 = v27;
      *v26 = 136315138;
      sub_10017F790(&qword_10083ACE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v45 = v20;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      v44 = v18;
      v31 = *(v24 + 8);
      v31(v23, v25);
      v32 = sub_100141FE4(v28, v30, &v48);

      *(v26 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v17, v44, "Provisioning has already been attempted. %s", v26, 0xCu);
      sub_10000BB78(v27);

      v45(v47, v46);
    }

    else
    {

      v31 = *(v24 + 8);
      v31(v23, v25);
      v20(v21, v22);
    }

    v0[41] = v31;
    defaultLogger()();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Check if there are any pending provisioning", v35, 2u);
    }

    v36 = v0[34];
    v37 = v0[27];
    v38 = v0[15];
    v39 = v0[9];
    v40 = v0[7];

    v36(v37, v38);
    v0[42] = *(v39 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_pendingProvisioning);

    v41 = swift_task_alloc();
    v0[43] = v41;
    *v41 = v0;
    v41[1] = sub_100278614;
    v42 = v0[8];
    v43 = v0[6];

    return sub_100180164(v43, v40, v42);
  }
}

uint64_t sub_100278614(char a1)
{
  v4 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {

    v5 = sub_100279B98;
  }

  else
  {
    *(v4 + 441) = a1 & 1;
    v5 = sub_10027876C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10027876C(uint64_t a1)
{
  if (*(v1 + 441) == 1)
  {

    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 328);
    v23 = *(v1 + 272);
    v6 = *(v1 + 208);
    v7 = *(v1 + 120);
    v8 = *(v1 + 112);
    v9 = *(v1 + 88);
    if (v4)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Pending provisioning exists", v10, 2u);
    }

    v23(v6, v7);
    v5(v8, v9);

    v11 = *(v1 + 8);

    return v11();
  }

  else
  {
    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Pending provisioning doesn't exist. Checking for provisioning timeout to delete provisioning data", v15, 2u);
    }

    v16 = *(v1 + 272);
    v17 = *(v1 + 200);
    v18 = *(v1 + 120);

    v16(v17, v18);
    v19 = swift_task_alloc();
    *(v1 + 360) = v19;
    *v19 = v1;
    v19[1] = sub_100278AC8;
    v20 = *(v1 + 56);
    v21 = *(v1 + 64);
    v22 = *(v1 + 48);

    return sub_1002812C0(v22, v20, v21, 0);
  }
}

uint64_t sub_100278AC8(char a1)
{
  *(*v1 + 442) = a1;

  return _swift_task_switch(sub_100278BC8, 0, 0);
}

uint64_t sub_100278BC8(uint64_t a1)
{
  if (*(v1 + 442) == 1)
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Provisioning time out has occurred. Deleting the locally stored proofing data.", v4, 2u);
    }

    v5 = *(v1 + 272);
    v6 = *(v1 + 192);
    v7 = *(v1 + 120);
    v8 = *(v1 + 72);

    v5(v6, v7);
    *(v1 + 368) = *(v8 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_cleanupProvider);

    v9 = swift_task_alloc();
    *(v1 + 376) = v9;
    *v9 = v1;
    v9[1] = sub_100278EA4;
    v11 = *(v1 + 288);
    v10 = *(v1 + 296);

    return sub_1002A2920(v11, v10, 0, 0);
  }

  else
  {
    (*(v1 + 328))(*(v1 + 112), *(v1 + 88));

    v13 = *(v1 + 8);

    return v13();
  }
}

uint64_t sub_100278EA4()
{

  return _swift_task_switch(sub_100278FA0, 0, 0);
}

uint64_t sub_100278FA0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to notify provisioning complete to the server", v4, 2u);
  }

  v5 = v1[37];
  v6 = v1[34];
  v7 = v1[23];
  v8 = v1[15];

  v6(v7, v8);
  v9 = swift_task_alloc();
  v1[48] = v9;
  *v9 = v1;
  v9[1] = sub_1002790F4;
  v10 = v1[36];
  v11 = v1[8];

  return sub_10029AFAC(v10, v5, 1, v11);
}

uint64_t sub_1002790F4()
{

  return _swift_task_switch(sub_1002791F0, 0, 0);
}

uint64_t sub_1002791F0()
{
  v1 = v0[41];
  v2 = v0[14];
  v3 = v0[11];
  sub_1002A3AF8(v0[36], v0[37], 0, 0, v0[8], 0);

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10027939C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 408) = a1;
  *(v3 + 416) = v1;

  if (v1)
  {
    v4 = sub_100279D14;
  }

  else
  {
    v4 = sub_1002794B0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002794B0()
{
  v23 = v0;
  v1 = v0[51];
  if (v1)
  {
    if (*(v1 + 16) && (v2 = sub_10003ADCC(0xD000000000000010, 0x8000000100707760), (v3 & 1) != 0))
    {
      v4 = *(*(v1 + 56) + 8 * v2);

      defaultLogger()();

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();

      v7 = os_log_type_enabled(v5, v6);
      v8 = v0[34];
      v9 = v0[21];
      v10 = v0[15];
      if (v7)
      {
        v21 = v0[21];
        v11 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v11 = 136315394;
        v20 = v8;
        v13 = *(v4 + 16);
        v12 = *(v4 + 24);

        v14 = sub_100141FE4(v13, v12, &v22);

        *(v11 + 4) = v14;
        *(v11 + 12) = 2080;
        v15 = IdentityTarget.debugDescription.getter();
        v17 = sub_100141FE4(v15, v16, &v22);

        *(v11 + 14) = v17;
        _os_log_impl(&_mh_execute_header, v5, v6, "Get pending actions called for proofingSessionID: %s and target: %s", v11, 0x16u);
        swift_arrayDestroy();

        v20(v21, v10);
      }

      else
      {

        v8(v9, v10);
      }
    }

    else
    {
    }
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_10027980C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100279B98()
{
  (*(v0 + 328))(*(v0 + 112), *(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100279D14()
{
  v17 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v14 = v0[17];
    v15 = v0[34];
    v3 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_100141FE4(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received an error while updating proofing from background activity %s", v4, 0xCu);
    sub_10000BB78(v5);

    v15(v14, v3);
  }

  else
  {
    v9 = v0[34];
    v10 = v0[17];
    v11 = v0[15];

    v9(v10, v11);
  }

  v12 = v0[1];

  return v12();
}

void sub_100279FD4(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v90 = a4;
  v89 = a1;
  v83 = a5;
  v88 = type metadata accessor for Logger();
  v84 = *(v88 - 8);
  v7 = __chkstk_darwin(v88);
  v86 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v81 = &v76 - v10;
  __chkstk_darwin(v9);
  v85 = &v76 - v11;
  v12 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v12 - 8);
  v82 = &v76 - v13;
  v14 = type metadata accessor for Date();
  v87 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v76 - v18;
  v20 = type metadata accessor for DIPError.Code();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v91;
  v25 = sub_1005792EC(a2, a3, v90);
  if (v24)
  {
    return;
  }

  v90 = v21;
  v91 = v20;
  v79 = v14;
  v80 = a2;
  v89 = a3;
  v26 = v85;
  v27 = v86;
  v77 = v17;
  v78 = v19;
  v28 = v87;
  v29 = v88;
  if (!v25)
  {
    v92 = 0;
    v93 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v92 = 0xD000000000000015;
    v93 = 0x80000001007088D0;
    v31._countAndFlagsBits = v80;
    v31._object = v89;
    String.append(_:)(v31);
    v32._countAndFlagsBits = 0x74276E73656F6420;
    v32._object = 0xEE00747369786520;
    String.append(_:)(v32);
    (*(v90 + 104))(v23, enum case for DIPError.Code.internalError(_:), v91);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10017F790(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v80 = 0;
  v89 = v25;
  [v25 proofingActionStatus];
  IdentityProofingActionStatus.init(rawValue:)();
  if (v30)
  {
    (*(v90 + 104))(v23, enum case for DIPError.Code.storedProofingActionStatusDoesntExist(_:), v91);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10017F790(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v33 = IdentityProofingActionStatus.rawValue.getter();
  if (v33 == IdentityProofingActionStatus.rawValue.getter())
  {
    v34 = [v89 provisioningRetryTimeout];
    v35 = 86400 * v34;
    if ((v34 * 86400) >> 64 == (86400 * v34) >> 63)
    {
      v36 = [v89 provisioningAttemptDate];
      v37 = v79;
      v38 = v77;
      if (v36)
      {
        v39 = v36;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v40 = *(v28 + 32);
        v41 = v35;
        v42 = v82;
        v40(v82, v38, v37);
        (*(v28 + 56))(v42, 0, 1, v37);
        v43 = v42;
        v35 = v41;
        v40(v78, v43, v37);
        v38 = v77;
      }

      else
      {
        v47 = v82;
        (*(v28 + 56))(v82, 1, 1, v79);
        Date.init()();
        if ((*(v28 + 48))(v47, 1, v37) != 1)
        {
          sub_10000BE18(v47, &unk_100849400, &unk_1006BFBB0);
        }
      }

      Date.init()();
      v48 = Date.isAtLeast(seconds:after:)();
      v50 = *(v28 + 8);
      v49 = v28 + 8;
      v91 = v50;
      v50(v38, v37);
      if (v48)
      {
        v51 = v26;
        defaultLogger()();
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.debug.getter();
        v54 = os_log_type_enabled(v52, v53);
        v56 = v83;
        v55 = v84;
        v57 = v88;
        if (v54)
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "Time has elapsed to delete the provisioning timeout", v58, 2u);
          v55 = v84;
        }

        (*(v55 + 8))(v51, v57);
        v91(v78, v79);
        *v56 = 1;
        return;
      }

      Date.timeIntervalSinceNow.getter();
      v60 = v59;
      v61 = v83;
      v62 = v88;
      if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v63 = v81;
        v64 = v84;
        if (v59 < 9.22337204e18)
        {
          if (v59 > -9.22337204e18)
          {
            defaultLogger()();
            v65 = Logger.logObject.getter();
            v66 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v65, v66))
            {
              v67 = v35 / 3600;
              v68 = v35 % 3600;
              v69 = (((34953 * v68) >> 16) >> 5) + (((v68 + ((-30583 * v68) >> 16)) & 0x8000) >> 15);
              v70 = (v68 - 60 * v69);
              v90 = v69;
              v71 = -v60;
              v72 = v71 / 3600;
              v73 = v71 % 3600;
              LODWORD(v71) = (v73 + ((-30583 * v73) >> 16)) & 0x8000;
              v86 = (v73 - 60 * ((((34953 * v73) >> 16) >> 5) + (v71 >> 15)));
              v87 = v49;
              v74 = ((((34953 * v73) >> 16) >> 5) + (v71 >> 15));
              v75 = swift_slowAlloc();
              *v75 = 134219264;
              *(v75 + 4) = v67;
              v61 = v83;
              *(v75 + 12) = 2048;
              *(v75 + 14) = v90;
              *(v75 + 22) = 2048;
              *(v75 + 24) = v70;
              *(v75 + 32) = 2048;
              *(v75 + 34) = v72;
              v63 = v81;
              v62 = v29;
              *(v75 + 42) = 2048;
              *(v75 + 44) = v74;
              *(v75 + 52) = 2048;
              *(v75 + 54) = v86;
              _os_log_impl(&_mh_execute_header, v65, v66, "%ldhour(s) %ld minutes(s) %ldseconds(s) not elapsed yet. Time elapsed since provisioning failure is %ldhour(s) %ldminute(s) %ldsecond(s)", v75, 0x3Eu);
              v64 = v84;
            }

            (*(v64 + 8))(v63, v62);
            v91(v78, v79);
            *v61 = 0;
            return;
          }

LABEL_28:
          __break(1u);
          return;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  defaultLogger()();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Proofing status is not claim ready", v46, 2u);
  }

  (*(v84 + 8))(v27, v29);
  *v83 = 0;
}

void sub_10027AA3C(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005792EC(a1, a2, a3);
  if (!v4)
  {
    if (v13)
    {
      v14 = v13;
      v15 = [v13 credentialIdentifier];
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

      *a4 = v17;
      a4[1] = v19;
    }

    else
    {
      v22[0] = 0;
      v22[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(66);
      v20._countAndFlagsBits = 0xD000000000000040;
      v20._object = 0x8000000100708960;
      String.append(_:)(v20);
      v21._countAndFlagsBits = a1;
      v21._object = a2;
      String.append(_:)(v21);
      (*(v10 + 104))(v12, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v9);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10017F790(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}