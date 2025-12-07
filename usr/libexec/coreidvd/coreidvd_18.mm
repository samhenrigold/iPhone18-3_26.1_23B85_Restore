uint64_t sub_1001CB8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 112) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  v7 = type metadata accessor for Logger();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1001CB988, 0, 0);
}

uint64_t sub_1001CB988()
{
  v1 = *(v0 + 112);
  v2 = *(*(v0 + 48) + 120);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_1001CBA44;
  v4 = *(v0 + 112);
  v5 = *(v0 + 56);

  return sub_10018689C(v5, (v1 & 1) == 0, v4, v2);
}

uint64_t sub_1001CBA44()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1001CBC68;
  }

  else
  {
    v2 = sub_1001CBB58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001CBB58(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Assets uploaded to cloudkit successfully", v8, 2u);
  }

  (*(v7 + 8))(v5, v6);

  v9 = v1[1];

  return v9();
}

uint64_t sub_1001CBC68(uint64_t a1)
{
  v18 = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[9];
    v16 = v1[10];
    v5 = v1[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "received an error from uploads %s", v6, 0xCu);
    sub_10000BB78(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v12 = v1[9];
    v11 = v1[10];
    v13 = v1[8];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_1001CBE48(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 240) = a3;
  *(v4 + 248) = v3;
  *(v4 + 392) = a2;
  *(v4 + 232) = a1;
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  *(v4 + 256) = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  *(v4 + 264) = v5;
  *(v4 + 272) = *(v5 - 8);
  *(v4 + 280) = swift_task_alloc();
  v6 = type metadata accessor for IdentityDocumentType.Category();
  *(v4 + 288) = v6;
  *(v4 + 296) = *(v6 - 8);
  *(v4 + 304) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v4 + 312) = v7;
  *(v4 + 320) = *(v7 - 8);
  *(v4 + 328) = swift_task_alloc();

  return _swift_task_switch(sub_1001CC000, 0, 0);
}

uint64_t sub_1001CC000(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting opportunistic uploads flow", v4, 2u);
  }

  v6 = *(v1 + 320);
  v5 = *(v1 + 328);
  v7 = *(v1 + 312);

  (*(v6 + 8))(v5, v7);
  if (qword_100832B50 != -1)
  {
    swift_once();
  }

  v8 = *(v1 + 232);
  sub_10002ADA0(3);
  if (!v8)
  {
    (*(*(v1 + 272) + 104))(*(v1 + 280), enum case for DIPError.Code.proofingConfigurationUnavailable(_:), *(v1 + 264));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_21:

    v30 = *(v1 + 8);

    return v30();
  }

  v10 = *(v1 + 296);
  v9 = *(v1 + 304);
  v11 = *(v1 + 288);
  v12 = *(v1 + 232);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v13 = (*(v10 + 88))(v9, v11);
  if (v13 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v14 = IdentityProofingConfiguration.state.getter();
    if (!v15)
    {
      (*(*(v1 + 272) + 104))(*(v1 + 280), enum case for DIPError.Code.idStateUnavailable(_:), *(v1 + 264));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_20:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      goto LABEL_21;
    }

    goto LABEL_12;
  }

  if (v13 != enum case for IdentityDocumentType.Category.passport(_:))
  {
    v20 = *(v1 + 296);
    v19 = *(v1 + 304);
    v21 = *(v1 + 288);
    (*(*(v1 + 272) + 104))(*(v1 + 280), enum case for DIPError.Code.idTypeUnavailable(_:), *(v1 + 264));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v20 + 8))(v19, v21);
    goto LABEL_21;
  }

  v14 = IdentityProofingConfiguration.country.getter();
  if (!v15)
  {
    (*(*(v1 + 272) + 104))(*(v1 + 280), enum case for DIPError.Code.idCountryUnavailable(_:), *(v1 + 264));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_20;
  }

LABEL_12:
  v16 = v14;
  v17 = v15;
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v18 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v18 + 54);
  sub_1000318FC(&v18[4], v1 + 16);
  os_unfair_lock_unlock(v18 + 54);
  v23 = *(v1 + 240);
  v22 = *(v1 + 248);
  v24 = *(v1 + 392);
  *(v1 + 336) = *(v1 + 72);

  sub_100031918(v1 + 16);
  v25 = swift_allocObject();
  *(v1 + 344) = v25;
  *(v25 + 16) = v12;
  *(v25 + 24) = v16;
  *(v25 + 32) = v17;
  *(v25 + 40) = v23;
  *(v25 + 48) = v22;
  *(v25 + 56) = v24;
  v26 = swift_allocObject();
  *(v1 + 352) = v26;
  *(v26 + 16) = sub_1001D0948;
  *(v26 + 24) = v25;
  v27 = v12;

  v28 = swift_task_alloc();
  *(v1 + 360) = v28;
  v29 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v28 = v1;
  v28[1] = sub_1001CC7EC;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v1 + 216, sub_1001D09A8, v26, v29);
}

uint64_t sub_1001CC7EC()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_1001CCA94;
  }

  else
  {

    *(v2 + 376) = *(v2 + 216);
    v3 = sub_1001CC930;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001CC930()
{
  v1 = *(v0 + 384);
  if (v1)
  {
    v2 = *(v0 + 376);
    v3 = *(v0 + 248);
    v4 = *(v0 + 256);
    v5 = *(v0 + 392);
    v7 = *(v0 + 232);
    v6 = *(v0 + 240);
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = v3;
    *(v9 + 40) = v2;
    *(v9 + 48) = v1;
    *(v9 + 56) = v7;
    *(v9 + 64) = v6;
    *(v9 + 72) = v5;

    sub_1003E653C(0, 0, v4, &unk_1006DB420, v9);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1001CCA94()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v4 = v0[29];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

void *sub_1001CCC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W6>, uint64_t *a7@<X8>)
{
  LODWORD(v47) = a6;
  v48 = a7;
  v49 = a5;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = IdentityProofingConfiguration.documentType.getter();
  if (a4 == 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  result = sub_10057847C(v16, a2, a3, v17);
  if (!v7)
  {
    v19 = result;
    v45 = a1;
    v46 = 0;
    v20 = v49;
    if (result)
    {
      v21 = [result proofingSessionID];
      if (v21)
      {
        v22 = v21;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26 = IdentityProofingActionStatus.rawValue.getter();
        sub_10057F148(v26, 0);
        sub_10057F2D0(v47 & 1);
        v27 = v46;
        sub_1005783D4();
        if (v27)
        {
        }

        else
        {
          v40 = type metadata accessor for IdentityManagementSessionDelegate();
          v41 = [objc_opt_self() defaultCenter];
          v42 = String._bridgeToObjectiveC()();
          v50 = v40;
          sub_100007224(&qword_10083D698, &unk_1006DB6F0);
          [v41 postNotificationName:v42 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

          result = swift_unknownObjectRelease();
          v43 = v48;
          *v48 = v23;
          v43[1] = v25;
        }

        return result;
      }
    }

    defaultLogger()();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v47 = v12;
      v30 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v50 = v45;
      *v30 = 136315650;
      v31 = *(v20 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_documentType + 8);
      v44 = v13;
      if (v31)
      {
        v32 = 0xE300000000000000;
        v33 = 4999502;
      }

      else
      {
        v33 = IdentityDocumentType.description.getter();
        v32 = v34;
      }

      v35 = sub_100141FE4(v33, v32, &v50);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2082;
      *(v30 + 14) = sub_100141FE4(a2, a3, &v50);
      *(v30 + 22) = 2082;
      v36 = IdentityTarget.debugDescription.getter();
      v38 = sub_100141FE4(v36, v37, &v50);

      *(v30 + 24) = v38;
      _os_log_impl(&_mh_execute_header, v28, v29, "proofing session for document type: %s, identifier %{public}s and %{public}s doesn't exist ", v30, 0x20u);
      swift_arrayDestroy();

      result = (*(v44 + 8))(v15, v47);
    }

    else
    {

      result = (*(v13 + 8))(v15, v12);
    }

    v39 = v48;
    *v48 = 0;
    v39[1] = 0;
  }

  return result;
}

uint64_t sub_1001CD074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v12;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 48) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_1001CD154, 0, 0);
}

uint64_t sub_1001CD154(uint64_t a1)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = IdentityProofingConfiguration.documentType.getter();
  if (v2 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = swift_task_alloc();
  *(v1 + 120) = v6;
  *v6 = v1;
  v6[1] = sub_1001CD234;
  v7 = *(v1 + 136);
  v8 = *(v1 + 56);

  return sub_100316898(v8, v3, 0, 0, v4, v5, 1, v7);
}

uint64_t sub_1001CD234()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1001CD458;
  }

  else
  {
    v2 = sub_1001CD348;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001CD348(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[14];
  v6 = v1[11];
  v7 = v1[12];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Opportunistic Uploads complete", v8, 2u);
  }

  (*(v7 + 8))(v5, v6);

  v9 = v1[1];

  return v9();
}

uint64_t sub_1001CD458(uint64_t a1)
{
  v18 = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[12];
    v16 = v1[13];
    v5 = v1[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received an error during opportunistic uploads %s", v6, 0xCu);
    sub_10000BB78(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v12 = v1[12];
    v11 = v1[13];
    v13 = v1[11];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_1001CD638(uint64_t a1, char a2)
{
  *(v3 + 552) = a2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v2;
  v4 = type metadata accessor for DIPError();
  *(v3 + 344) = v4;
  *(v3 + 352) = *(v4 - 8);
  *(v3 + 360) = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  *(v3 + 368) = v5;
  *(v3 + 376) = *(v5 - 8);
  *(v3 + 384) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v3 + 392) = v6;
  *(v3 + 400) = *(v6 - 8);
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();

  return _swift_task_switch(sub_1001CD808, 0, 0);
}

uint64_t sub_1001CD808(uint64_t a1)
{
  v43 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 464);
  v6 = *(v1 + 392);
  v7 = *(v1 + 400);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v42 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD00000000000003CLL, 0x8000000100705300, &v42);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s start", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v1 + 472) = v10;
  v11 = *(v1 + 552);
  v12 = *(v1 + 328);
  v13 = *(v1 + 336);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  *(v13 + 48) = v11;
  v15 = *(v13 + 120);
  *(v1 + 480) = v15;
  v16 = v12;
  dispatch_group_enter(v15);
  v17 = *(v13 + 128);
  *(v1 + 488) = v17;
  dispatch_group_enter(v17);
  if (*(v13 + 184))
  {
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v1 + 448);
    v22 = *(v1 + 392);
    if (v20)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "LivenessStepUp upload video called", v23, 2u);
    }

    v10(v21, v22);
LABEL_16:
    *(v1 + 312) = _swiftEmptyArrayStorage;
    v30 = swift_task_alloc();
    *(v1 + 496) = v30;
    *v30 = v1;
    v30[1] = sub_1001CDE78;

    return OS_dispatch_group.wait()();
  }

  else
  {
    v24 = *(v1 + 336);
    swift_beginAccess();
    sub_10000BBC4(v24 + 56, v1 + 152, &qword_10083D0A0, &qword_1006DAFC0);
    if (*(v1 + 176))
    {
      sub_10001F358((v1 + 152), v1 + 112);
      v25 = sub_10000BA08((v1 + 112), *(v1 + 136));
      v26 = *(v25 + *(type metadata accessor for Workflow(0) + 80));
      v27 = (v26 + 40);
      v28 = *(v26 + 16) + 1;
      while (--v28)
      {
        if (*(v27 - 1) != 0x69566569666C6573 || *v27 != 0xEB000000006F6564)
        {
          v27 += 19;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        sub_10000BB78((v1 + 112));
        goto LABEL_16;
      }

      defaultLogger()();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "skipped video upload based on workflow settings", v38, 2u);
      }

      v39 = *(v1 + 456);
      v40 = *(v1 + 392);

      v10(v39, v40);
      dispatch_group_leave(v15);
      dispatch_group_leave(v17);
      sub_10000BB78((v1 + 112));
      sub_1001CF4EC();

      v35 = *(v1 + 8);
    }

    else
    {
      v32 = *(v1 + 376);
      v31 = *(v1 + 384);
      v33 = *(v1 + 368);
      v34 = *(v1 + 336);
      sub_10000BE18(v1 + 152, &qword_10083D0A0, &qword_1006DAFC0);
      dispatch_group_leave(v17);
      dispatch_group_leave(v15);
      *(v34 + 96) = 1;
      (*(v32 + 104))(v31, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v33);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_1001CF4EC();

      v35 = *(v1 + 8);
    }

    return v35();
  }
}

uint64_t sub_1001CDE78()
{

  return _swift_task_switch(sub_1001CDF74, 0, 0);
}

uint64_t sub_1001CDF74()
{
  v1 = *(v0 + 336);
  swift_beginAccess();
  sub_10000BBC4(v1 + 192, v0 + 64, &qword_10083D4B8, &qword_1006DB470);
  if (*(v0 + 88))
  {
    v2 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v2;
    *(v0 + 48) = *(v0 + 96);
    v3 = IdentityProofingLivenessVideoURL.fileHandle.getter();
    sub_100184250(v3, 3, (v0 + 16));
    *(v0 + 504) = v4;
    v17 = v4;
    v18 = *(v0 + 336);

    v19 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v18 + v19);
    *(v18 + v19) = 0x8000000000000000;
    sub_10016C328(v17, 0xD000000000000011, 0x80000001006FAE50, isUniquelyReferenced_nonNull_native);
    *(v18 + v19) = v57;
    swift_endAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 312) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 312) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v21 = *(v0 + 312);
    v22 = IdentityProofingLivenessVideoURL.auxiliaryFileHandle.getter();
    if (v22)
    {
      v23 = v22;
      v24 = [objc_opt_self() standardUserDefaults];
      v25._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipUploadAuxVideo.getter();
      v26 = NSUserDefaults.internalBool(forKey:)(v25);

      if (v26)
      {
        defaultLogger()();
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();
        v29 = os_log_type_enabled(v27, v28);
        v30 = *(v0 + 472);
        v56 = *(v0 + 440);
        v31 = *(v0 + 392);
        if (v29)
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Internal setting enabled, will skip uploading ILSU auxiliary video to cloudkit", v32, 2u);
        }

        else
        {
        }

        v30(v56, v31);
      }

      else
      {
        v33 = v23;
        sub_100184250(v23, 4, (v0 + 16));
        v35 = v34;

        swift_beginAccess();

        v36 = swift_isUniquelyReferenced_nonNull_native();
        v58 = *(v18 + v19);
        *(v18 + v19) = 0x8000000000000000;
        sub_10016C328(v35, 0xD000000000000014, 0x80000001006FAE30, v36);
        *(v18 + v19) = v58;
        swift_endAccess();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v0 + 312) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 312) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v21 = *(v0 + 312);
      }
    }

    *(v0 + 512) = v21;
    if (*(v0 + 552))
    {
      defaultLogger()();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "User has opted out of uploading liveness video on cellular network. Will attempt to upload in the background when the device connects to WIFI.", v39, 2u);
      }

      v40 = *(v0 + 472);
      v41 = *(v0 + 432);
      v42 = *(v0 + 392);

      v40(v41, v42);
      v43 = swift_task_alloc();
      *(v0 + 536) = v43;
      *v43 = v0;
      v43[1] = sub_1001CEAF0;
      v44 = v21;
      v45 = 0;
      v46 = 1;
    }

    else
    {
      v47 = *(v0 + 488);
      sub_1001B7154(v0 + 16);

      dispatch_group_leave(v47);
      v48 = swift_task_alloc();
      *(v0 + 520) = v48;
      *v48 = v0;
      v48[1] = sub_1001CE8E0;
      v44 = v21;
      v45 = 1;
      v46 = 0;
    }

    return sub_10018689C(v44, v45, v46, 0);
  }

  else
  {
    v6 = *(v0 + 376);
    v5 = *(v0 + 384);
    v7 = *(v0 + 368);
    sub_10000BE18(v0 + 64, &qword_10083D4B8, &qword_1006DB470);
    (*(v6 + 104))(v5, enum case for DIPError.Code.baaCertificateDoesntExist(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    group = *(v0 + 480);
    v55 = *(v0 + 488);
    v51 = *(v0 + 416);
    v52 = *(v0 + 392);
    v53 = *(v0 + 472);
    v8 = *(v0 + 376);
    v9 = *(v0 + 384);
    v10 = *(v0 + 368);
    v11 = *(v0 + 344);
    v49 = *(v0 + 360);
    v50 = *(v0 + 352);
    swift_errorRetain();
    swift_errorRetain();
    sub_1001CF684();
    (*(v8 + 104))(v9, enum case for DIPError.Code.internalError(_:), v10);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v12 = *(v50 + 16);
    v12(v13, v49, v11);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v53(v51, v52);

    dispatch_group_leave(group);
    dispatch_group_leave(v55);
    swift_allocError();
    v12(v14, v49, v11);
    swift_willThrow();

    (*(v50 + 8))(v49, v11);
    sub_1001CF4EC();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1001CE8E0()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_1001CF21C;
  }

  else
  {

    v2 = sub_1001CE9FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001CE9FC()
{
  dispatch_group_leave(*(v0 + 480));
  sub_1001CF4EC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001CEAF0()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_1001CEDBC;
  }

  else
  {

    v2 = sub_1001CEC0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001CEC0C()
{
  v1 = *(v0 + 480);
  dispatch_group_leave(*(v0 + 488));
  dispatch_group_leave(v1);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Upload assets saved to disk for scheduled upload to CloudKit", v4, 2u);
  }

  v5 = *(v0 + 472);
  v6 = *(v0 + 424);
  v7 = *(v0 + 392);

  v5(v6, v7);
  sub_1001B7154(v0 + 16);
  sub_1001CF4EC();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1001CEDBC()
{
  v31 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v28 = v0[59];
    v3 = v0[51];
    v4 = v0[49];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v30 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v30);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received an error during saving the uploads to disk for scheduled upload to CloudKit %s", v5, 0xCu);
    sub_10000BB78(v6);

    (v28)(v3, v4);
  }

  else
  {
    v10 = v0[59];
    v11 = v0[51];
    v12 = v0[49];

    v10(v11, v12);
  }

  swift_willThrow();

  sub_1001B7154((v0 + 2));
  group = v0[60];
  v29 = v0[61];
  v13 = v0[52];
  v25 = v0[49];
  v26 = v0[59];
  v14 = v0[47];
  v15 = v0[48];
  v16 = v0[46];
  v23 = v0[45];
  v17 = v0[43];
  v24 = v0[44];
  swift_errorRetain();
  swift_errorRetain();
  sub_1001CF684();
  (*(v14 + 104))(v15, enum case for DIPError.Code.internalError(_:), v16);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v18 = *(v24 + 16);
  v18(v19, v23, v17);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v26(v13, v25);

  dispatch_group_leave(group);
  dispatch_group_leave(v29);
  swift_allocError();
  v18(v20, v23, v17);
  swift_willThrow();

  (*(v24 + 8))(v23, v17);
  sub_1001CF4EC();

  v21 = v0[1];

  return v21();
}

uint64_t sub_1001CF21C()
{
  v14 = v0[59];
  group = v0[60];
  v12 = v0[52];
  v13 = v0[49];
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[46];
  v6 = v0[43];
  v5 = v0[44];

  swift_errorRetain();
  sub_1001CF684();
  (*(v1 + 104))(v2, enum case for DIPError.Code.internalError(_:), v4);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1001D26F4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v3, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v14(v12, v13);

  swift_allocError();
  v7(v9, v3, v6);
  swift_willThrow();

  (*(v5 + 8))(v3, v6);
  dispatch_group_leave(group);
  sub_1001CF4EC();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001CF4EC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100141FE4(0xD00000000000003CLL, 0x8000000100705300, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s end", v6, 0xCu);
    sub_10000BB78(v7);
  }

  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_1001CF684()
{
  v1 = type metadata accessor for DIPError.PropertyKey();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10003C9C0(_swiftEmptyArrayStorage);
  swift_beginAccess();
  sub_10000BBC4(v0 + 56, &v27, &qword_10083D0A0, &qword_1006DAFC0);
  if (v28)
  {
    sub_10001F358(&v27, v30);
    v6 = *(v2 + 104);
    v6(v4, enum case for DIPError.PropertyKey.inoWorkflowID(_:), v1);
    v7 = sub_10000BA08(v30, v31);
    v8 = *v7;
    v9 = v7[1];
    v28 = &type metadata for String;
    v29 = &protocol witness table for String;
    *&v27 = v8;
    *(&v27 + 1) = v9;
    sub_10001F358(&v27, v25);

    LOBYTE(v9) = swift_isUniquelyReferenced_nonNull_native();
    v24 = v5;
    v10 = sub_10001F370(v25, v26);
    __chkstk_darwin(v10);
    v12 = (&v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    sub_100658FF4(*v12, v12[1], v4, v9, &v24);
    v14 = *(v2 + 8);
    v14(v4, v1);
    sub_10000BB78(v25);
    v15 = v24;
    v6(v4, enum case for DIPError.PropertyKey.inoProviderID(_:), v1);
    v16 = sub_10000BA08(v30, v31);
    v17 = v16[6];
    v18 = v16[7];
    v28 = &type metadata for String;
    v29 = &protocol witness table for String;
    *&v27 = v17;
    *(&v27 + 1) = v18;
    sub_10001F358(&v27, v25);

    LOBYTE(v18) = swift_isUniquelyReferenced_nonNull_native();
    v24 = v15;
    v19 = sub_10001F370(v25, v26);
    __chkstk_darwin(v19);
    v21 = (&v25[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    sub_100658FF4(*v21, v21[1], v4, v18, &v24);
    v14(v4, v1);
    sub_10000BB78(v25);
    v5 = v24;
    sub_10000BB78(v30);
  }

  else
  {
    sub_10000BE18(&v27, &qword_10083D0A0, &qword_1006DAFC0);
  }

  return v5;
}

uint64_t sub_1001CFA4C()
{
  v1[2] = v0;
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1001CFB50, 0, 0);
}

uint64_t sub_1001CFB50()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipODIAssessment.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "skipping ODI payload", v6, 2u);
    }

    v7 = v0[7];
    v8 = v0[4];
    v9 = v0[5];
    v11 = v0[2];
    v10 = v0[3];

    (*(v9 + 8))(v7, v8);
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v11;

    sub_1003E653C(0, 0, v10, &unk_1006DB4B8, v13);
  }

  else
  {
    v14 = v0[2];
    v16 = *(v14 + 160);
    v15 = *(v14 + 168);
    if (v15)
    {
      v17 = v0[3];
      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v14;

      sub_1003E653C(0, 0, v17, &unk_1006DB4A8, v19);

      goto LABEL_11;
    }

    v20 = v0[3];
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v14;

    sub_1003E653C(v16, 0, v20, &unk_1006DB498, v22);

    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    v25 = os_log_type_enabled(v23, v24);
    v27 = v0[5];
    v26 = v0[6];
    v28 = v0[4];
    if (v25)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "ODI payload missing", v29, 2u);
    }

    (*(v27 + 8))(v26, v28);
  }

  v16 = 0;
  v15 = 0xE000000000000000;
LABEL_11:

  v30 = v0[1];

  return v30(v16, v15);
}

uint64_t sub_1001CFF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1001D0004, 0, 0);
}

uint64_t sub_1001D0004(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "providing ODI feedback discarded", v4, 2u);
  }

  v6 = v1[4];
  v5 = v1[5];
  v8 = v1[2];
  v7 = v1[3];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 152);
  if (v9)
  {
    [v9 provideFeedbackOnPayloadOutcome:1];
  }

  v10 = v1[1];

  return v10();
}

uint64_t sub_1001D0124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1001D01E4, 0, 0);
}

uint64_t sub_1001D01E4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "providing ODI feedback timedout or error", v4, 2u);
  }

  v6 = v1[4];
  v5 = v1[5];
  v8 = v1[2];
  v7 = v1[3];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 152);
  if (v9)
  {
    [v9 provideFeedbackOnPayloadOutcome:2];
  }

  v10 = v1[1];

  return v10();
}

uint64_t sub_1001D0304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1001D03C4, 0, 0);
}

uint64_t sub_1001D03C4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "providing ODI feedback ingested", v4, 2u);
  }

  v6 = v1[4];
  v5 = v1[5];
  v8 = v1[2];
  v7 = v1[3];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 152);
  if (v9)
  {
    [v9 provideFeedbackOnPayloadOutcome:0];
  }

  v10 = v1[1];

  return v10();
}

id *sub_1001D04E4()
{

  sub_10000BE18((v0 + 7), &qword_10083D0A0, &qword_1006DAFC0);

  sub_10000BE18((v0 + 24), &qword_10083D4B8, &qword_1006DB470);
  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_pdf417Data, &qword_10083D6A8, &qword_1006DB710);

  sub_10000BD94(*(v0 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportHash), *(v0 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportHash + 8));
  return v0;
}

uint64_t sub_1001D05FC()
{
  sub_1001D04E4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityProofingProducedAssetManager(uint64_t a1)
{
  result = qword_10083D550;
  if (!qword_10083D550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001D06A8(uint64_t a1)
{
  sub_1001D07C4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001D07C4(uint64_t a1)
{
  if (!qword_10083D560)
  {
    type metadata accessor for PDF417Data();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10083D560);
    }
  }
}

unint64_t *sub_1001D081C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1001D225C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

double sub_1001D08B8@<D0>(void *a1@<X0>, void (*a2)(__int128 *__return_ptr, void)@<X1>, _OWORD *a3@<X8>)
{
  a2(&v6, *a1);
  if (!v3)
  {
    result = *&v6;
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1001D0900()
{

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_1001D0970()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1001D09A8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  (*(v2 + 16))(&v6, *a1);
  if (!v3)
  {
    result = *&v6;
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1001D09F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_1001D0A40(uint64_t a1)
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
  v11[1] = sub_100041F04;

  return sub_1001CD074(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001D0B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[44] = a4;
  v5[45] = v4;
  v5[42] = a2;
  v5[43] = a3;
  v5[41] = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[46] = v6;
  v5[47] = *(v6 - 8);
  v5[48] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[49] = v7;
  v5[50] = *(v7 - 8);
  v5[51] = swift_task_alloc();
  v8 = type metadata accessor for IdentityDocumentType.Category();
  v5[52] = v8;
  v5[53] = *(v8 - 8);
  v5[54] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[55] = v9;
  v5[56] = *(v9 - 8);
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();

  return _swift_task_switch(sub_1001D0D30, 0, 0);
}

id sub_1001D0D30(uint64_t a1)
{
  v71 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ProducedAssetManager warmup start", v4, 2u);
  }

  v5 = v1[60];
  v7 = v1[55];
  v6 = v1[56];
  v8 = v1[53];
  v64 = v1[54];
  v66 = v1[52];
  v10 = v1[44];
  v9 = v1[45];
  v12 = v1[42];
  v11 = v1[43];
  v63 = v1[41];

  v13 = v7;
  v14 = *(v6 + 8);
  v14(v5, v13);
  sub_100020260(v12, (v1 + 14));
  swift_beginAccess();
  sub_1000B2764((v1 + 14), v9 + 56, &qword_10083D0A0, &qword_1006DAFC0);
  swift_endAccess();
  sub_1001B6EF4(v11, (v1 + 2));
  swift_beginAccess();
  sub_1000B2764((v1 + 2), v9 + 192, &qword_10083D4B8, &qword_1006DB470);
  swift_endAccess();
  *(v9 + 176) = v10;

  v15 = v9 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_documentType;
  *v15 = v63;
  *(v15 + 8) = 0;
  IdentityDocumentType.category.getter();
  v16 = (*(v8 + 88))(v64, v66);
  if (v16 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v17 = v1[51];
    v18 = v1[48];
    v65 = v1[50];
    v67 = v1[49];
    v19 = v1[46];
    v20 = v1[47];
    v21 = v1[45];
    v22 = v1[42];
    dispatch_group_enter(*(v21 + 104));
    sub_100020260(v22, (v1 + 29));
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    sub_10001F358((v1 + 29), v23 + 24);
    v1[12] = sub_1001D26E8;
    v1[13] = v23;
    v1[8] = _NSConcreteStackBlock;
    v1[9] = 1107296256;
    v1[10] = sub_100503A7C;
    v1[11] = &unk_10080A778;
    v24 = _Block_copy(v1 + 8);

    static DispatchQoS.unspecified.getter();
    v1[40] = _swiftEmptyArrayStorage;
    sub_1001D26F4(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100007224(&qword_100848A40, &unk_1006BF8C0);
    sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);
    (*(v20 + 8))(v18, v19);
    (*(v65 + 8))(v17, v67);
  }

  else if (v16 == enum case for IdentityDocumentType.Category.passport(_:))
  {
    v25 = [objc_opt_self() standardUserDefaults];
    v26._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipODIAssessment.getter();
    v27 = NSUserDefaults.internalBool(forKey:)(v26);

    if (v27)
    {
      defaultLogger()();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      v30 = os_log_type_enabled(v28, v29);
      v31 = v1[59];
      v32 = v1[55];
      if (v30)
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "ProducedAssetManager skipping ODI warmup", v33, 2u);
      }

      v14(v31, v32);
    }

    else
    {
      v46 = v1[42];
      defaultLogger()();
      sub_100020260(v46, (v1 + 24));
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      v49 = os_log_type_enabled(v47, v48);
      v50 = v1[58];
      v51 = v1[55];
      if (v49)
      {
        v52 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v52 = 136315650;
        *(v52 + 4) = sub_100141FE4(0x6E6F736D697263, 0xE700000000000000, &v70);
        *(v52 + 12) = 2080;
        v53 = sub_10000BA08(v1 + 24, v1[27]);
        v69 = v14;
        v54 = *v53;
        v55 = v53[1];

        sub_10000BB78(v1 + 24);
        v56 = sub_100141FE4(v54, v55, &v70);

        *(v52 + 14) = v56;
        *(v52 + 22) = 2080;
        *(v52 + 24) = sub_100141FE4(0xD000000000000018, 0x8000000100705380, &v70);
        _os_log_impl(&_mh_execute_header, v47, v48, "ProducedAssetManager warmup ODI for %s - %s or %s", v52, 0x20u);
        swift_arrayDestroy();

        v69(v50, v51);
      }

      else
      {

        v14(v50, v51);
        sub_10000BB78(v1 + 24);
      }

      result = PKPassKitCoreBundle();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v58 = result;
      v59 = v1[45];
      v60 = [objc_allocWithZone(ODISession) initWithServiceIdentifier:ODIServiceProviderIdIDVAir forDSIDType:1 andLocationBundle:result];

      v61 = *(v59 + 152);
      *(v59 + 152) = v60;
    }
  }

  else
  {
    v34 = v1[42];
    defaultLogger()();
    sub_100020260(v34, (v1 + 19));
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v1[57];
    v39 = v1[55];
    if (v37)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v70 = v41;
      *v40 = 136315138;
      v42 = sub_10000BA08(v1 + 19, v1[22]);
      v68 = v14;
      v43 = *v42;
      v44 = v42[1];

      sub_10000BB78(v1 + 19);
      v45 = sub_100141FE4(v43, v44, &v70);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v35, v36, "ProducedAssetManager warmup unknown documentType skipping for - %s", v40, 0xCu);
      sub_10000BB78(v41);

      v68(v38, v39);
    }

    else
    {

      v14(v38, v39);
      sub_10000BB78(v1 + 19);
    }

    (*(v1[53] + 8))(v1[54], v1[52]);
  }

  sub_1001C87CC();

  v62 = v1[1];

  return v62();
}

uint64_t sub_1001D15CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v78 = a3;
  v79 = a4;
  v80 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v6 - 8);
  v86 = v6;
  __chkstk_darwin(v6);
  v82 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v83 = *(v8 - 8);
  v84 = v8;
  __chkstk_darwin(v8);
  v81 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for IdentityDocumentType.Category();
  v89 = *(v87 - 8);
  __chkstk_darwin(v87);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for Logger();
  v12 = *(v88 - 8);
  v13 = __chkstk_darwin(v88);
  v77 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v76 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v76 - v19;
  __chkstk_darwin(v18);
  v22 = &v76 - v21;
  defaultLogger()();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "prepareForProofingIdentity: performing proofing preparation", v25, 2u);
  }

  v26 = *(v12 + 8);
  v27 = v88;
  v26(v22, v88);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v28 = v87;
  v29 = (*(v89 + 88))(v11, v87);
  if (v29 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    defaultLogger()();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "documentWarmup for mdl or default", v32, 2u);
    }

    v26(v20, v27);
    dispatch_group_enter(*(v5 + 104));
    v33 = swift_allocObject();
    v35 = v79;
    v34 = v80;
    v33[2] = v5;
    v33[3] = v34;
    v33[4] = v78;
    v33[5] = v35;
    v94 = sub_1001D2120;
    v95 = v33;
    aBlock = _NSConcreteStackBlock;
    v91 = 1107296256;
    v92 = sub_100503A7C;
    v93 = &unk_10080A6D8;
    v36 = _Block_copy(&aBlock);

    v37 = v34;
    v38 = v81;
    static DispatchQoS.unspecified.getter();
    v96 = _swiftEmptyArrayStorage;
    sub_1001D26F4(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100007224(&qword_100848A40, &unk_1006BF8C0);
    sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
    v39 = v82;
    v40 = v86;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v36);
    (v85[1])(v39, v40);
    (v83[1])(v38, v84);
  }

  if (v29 == enum case for IdentityDocumentType.Category.passport(_:))
  {
    defaultLogger()();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "documentWarmup for passport", v43, 2u);
    }

    v26(v17, v27);
    v44 = IdentityProofingDocuments.nfc.getter();
    if (v44)
    {
      v45 = v44;
      v46 = IdentityDocument.nfcData.getter();
    }

    else
    {
      v46 = 0;
    }

    v61 = IdentityProofingDocuments.nfc.getter();
    if (v61)
    {
      v62 = v61;
      v63 = IdentityDocument.nfcHash.getter();
      v65 = v64;
    }

    else
    {
      v63 = 0;
      v65 = 0xF000000000000000;
    }

    *(v5 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportNFC) = v46;

    v66 = (v5 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportHash);
    v67 = *(v5 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportHash);
    v68 = *(v5 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportHash + 8);
    *v66 = v63;
    v66[1] = v65;
    sub_1000363B4(v63, v65);
    sub_10000BD94(v67, v68);
    dispatch_group_enter(*(v5 + 104));
    v69 = swift_allocObject();
    *(v69 + 16) = v5;
    *(v69 + 24) = v46;
    v94 = sub_1001D20B8;
    v95 = v69;
    aBlock = _NSConcreteStackBlock;
    v91 = 1107296256;
    v92 = sub_100503A7C;
    v93 = &unk_10080A688;
    v70 = _Block_copy(&aBlock);

    v71 = v81;
    static DispatchQoS.unspecified.getter();
    v96 = _swiftEmptyArrayStorage;
    sub_1001D26F4(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100007224(&qword_100848A40, &unk_1006BF8C0);
    sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
    v72 = v82;
    v73 = v86;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v70);
    sub_10000BD94(v63, v65);
    (v85[1])(v72, v73);
    (v83[1])(v71, v84);
  }

  v47 = v77;
  defaultLogger()();

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();

  LODWORD(v86) = v49;
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v96 = v85;
    *v50 = 136315138;
    swift_beginAccess();
    v51 = *(v5 + 80);
    if (v51)
    {
      v52 = sub_10000BA08((v5 + 56), *(v5 + 80));
      v83 = &v76;
      v84 = v50;
      v53 = *(v51 - 8);
      __chkstk_darwin(v52);
      v55 = (&v76 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v53 + 16))(v55);
      v56 = *v55;
      v57 = v55[1];
      v58 = *(v53 + 8);

      v59 = v55;
      v27 = v88;
      v58(v59, v51);
      v50 = v84;
      v28 = v87;
    }

    else
    {
      v57 = 0xE300000000000000;
      v56 = 7104878;
    }

    v75 = sub_100141FE4(v56, v57, &v96);

    *(v50 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v48, v86, "ProducedAssetManager document warmup unknown documentType skipping for - %s", v50, 0xCu);
    sub_10000BB78(v85);

    v60 = v77;
  }

  else
  {

    v60 = v47;
  }

  v26(v60, v27);
  return (*(v89 + 8))(v11, v28);
}

uint64_t sub_1001D2078()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001D20C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001D20D8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D212C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083D6A8, &qword_1006DB710);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D21A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_1001C9C34(a1, v4, v5, v6);
}

unint64_t *sub_1001D225C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = result;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v24 + 48) + 16 * v13);
    v15 = v14[1];
    v25[0] = *v14;
    v25[1] = v15;
    __chkstk_darwin(result);
    v19[2] = v25;

    v16 = v26;
    v17 = sub_10035C8E4(sub_1000307C0, v19, v23);
    v26 = v16;

    if (v17)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_1003D3DCC(v21, v20, v22, v24);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1003D3DCC(v21, v20, v22, v24);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1001D2420(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_1001D081C(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1001D225C((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_1001D25E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027B9C;

  return sub_1001CA888(a1, v1);
}

uint64_t sub_1001D26A8()
{

  sub_10000BB78((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001D26F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001D273C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1001D0124(a1, v4, v5, v6);
}

uint64_t sub_1001D27F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1001D0304(a1, v4, v5, v6);
}

uint64_t sub_1001D28A4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001D28E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1001CFF44(a1, v4, v5, v6);
}

uint64_t sub_1001D2998()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1001D29E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_1001CB8B8(a1, v4, v5, v6, v7, v8);
}

void *sub_1001D2AC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100172D4C(0, v1, 0);
    v3 = (a1 + 56);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];

      if (v7 >= v6 >> 1)
      {
        sub_100172D4C((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v7];
      v8[4] = v5;
      v8[5] = v4;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1001D2B9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 624) = v5;
  *(v6 + 616) = a5;
  *(v6 + 1209) = a4;
  *(v6 + 608) = a3;
  *(v6 + 600) = a2;
  *(v6 + 592) = a1;
  v7 = type metadata accessor for DIPError();
  *(v6 + 632) = v7;
  *(v6 + 640) = *(v7 - 8);
  *(v6 + 648) = swift_task_alloc();
  v8 = type metadata accessor for IdentityProofingAttributeConfiguration();
  *(v6 + 656) = v8;
  *(v6 + 664) = *(v8 - 8);
  *(v6 + 672) = swift_task_alloc();
  type metadata accessor for IdentityProofingStaticWorkflow(0);
  *(v6 + 680) = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  *(v6 + 688) = v9;
  *(v6 + 696) = *(v9 - 8);
  *(v6 + 704) = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  *(v6 + 712) = swift_task_alloc();
  v10 = sub_100007224(&qword_10083DC00, &qword_1006DB6E0);
  *(v6 + 720) = v10;
  *(v6 + 728) = *(v10 - 8);
  *(v6 + 736) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v6 + 744) = v11;
  *(v6 + 752) = *(v11 - 8);
  *(v6 + 760) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v6 + 768) = v12;
  *(v6 + 776) = *(v12 - 8);
  *(v6 + 784) = swift_task_alloc();
  *(v6 + 792) = swift_task_alloc();
  *(v6 + 800) = swift_task_alloc();
  *(v6 + 808) = swift_task_alloc();
  *(v6 + 816) = swift_task_alloc();
  *(v6 + 824) = swift_task_alloc();
  *(v6 + 832) = swift_task_alloc();
  *(v6 + 840) = swift_task_alloc();
  *(v6 + 848) = swift_task_alloc();
  *(v6 + 856) = swift_task_alloc();
  *(v6 + 864) = swift_task_alloc();
  *(v6 + 872) = swift_task_alloc();
  *(v6 + 880) = swift_task_alloc();

  return _swift_task_switch(sub_1001D2F3C, 0, 0);
}

uint64_t sub_1001D2F3C(uint64_t a1)
{
  IdentityProofingConfiguration.documentType.getter();
  v2 = IdentityDocumentType.rawValue.getter();
  v3 = IdentityDocumentType.rawValue.getter();
  v4 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_clientCreatedProofingSessionID;
  if (v2 == v3)
  {
    v5 = (*(v1 + 624) + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_clientCreatedProofingSessionID);
    if (!v5[1])
    {
      defaultLogger()();
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Expecting proofing session id but proofing session id doesnt exist. Creating new proofing session id", v8, 2u);
      }

      v9 = *(v1 + 880);
      v10 = *(v1 + 776);
      v11 = *(v1 + 768);
      v12 = *(v1 + 760);
      v13 = *(v1 + 752);
      v14 = *(v1 + 744);

      (*(v10 + 8))(v9, v11);
      UUID.init()();
      v15 = UUID.uuidString.getter();
      v17 = v16;
      (*(v13 + 8))(v12, v14);
      *v5 = v15;
      v5[1] = v17;

      v4 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_clientCreatedProofingSessionID;
    }
  }

  v18 = *(v1 + 592);
  v19 = (*(v1 + 624) + v4);
  v20 = *v19;
  v21 = v19[1];
  *(v1 + 888) = v21;

  v22 = swift_task_alloc();
  *(v1 + 896) = v22;
  *v22 = v1;
  v22[1] = sub_1001D314C;
  v23 = *(v1 + 736);
  v24 = *(v1 + 1209);
  v25 = *(v1 + 608);
  v26 = *(v1 + 600);

  return sub_1001DF838(v23, v18, v26, v25, v24, v20, v21);
}

uint64_t sub_1001D314C()
{
  *(*v1 + 904) = v0;

  if (v0)
  {
    v2 = sub_1001D81F8;
  }

  else
  {

    v2 = sub_1001D3268;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001D3268()
{
  v66 = v0;
  v1 = *(*(v0 + 624) + 112);
  swift_beginAccess();
  sub_10000BBC4(v1 + 144, v0 + 440, &qword_10083D0A0, &qword_1006DAFC0);
  if (!*(v0 + 464))
  {
    v6 = *(v0 + 728);
    v62 = *(v0 + 720);
    v63 = *(v0 + 736);
    v7 = *(v0 + 704);
    v8 = *(v0 + 696);
    v9 = *(v0 + 688);
    sub_10000BE18(v0 + 440, &qword_10083D0A0, &qword_1006DAFC0);
    (*(v8 + 104))(v7, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v9);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v5 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v6 + 8))(v63, v62);
    goto LABEL_5;
  }

  v2 = *(v0 + 904);
  sub_10001F358((v0 + 440), v0 + 400);
  v3 = IdentityProofingConfiguration.documentType.getter();
  v4 = sub_10058BF20(v3);
  if (v2)
  {
    v5 = v2;
    (*(*(v0 + 728) + 8))(*(v0 + 736), *(v0 + 720));
    sub_10000BB78((v0 + 400));
LABEL_5:
    v10._object = 0x8000000100707000;
    v10._countAndFlagsBits = 0xD000000000000010;
    debugLogFootprint(_:)(v10);
    *(v0 + 1112) = v5;
    defaultLogger()();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 808);
    v15 = *(v0 + 776);
    v16 = *(v0 + 768);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v65[0] = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = sub_100141FE4(v19, v20, v65);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "Received an error during the proofing flow %s", v17, 0xCu);
      sub_10000BB78(v18);
    }

    v22 = *(v15 + 8);
    v22(v14, v16);
    *(v0 + 1120) = v22;
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Cleaning up orphaned credentials after proofing", v25, 2u);
    }

    v26 = *(v0 + 792);
    v27 = *(v0 + 768);
    v28 = *(v0 + 624);

    v22(v26, v27);
    *(v0 + 1128) = *(v28 + 48);
    v29 = *(v28 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier);
    v30 = *(v28 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier + 8);
    *(v0 + 1136) = v30;
    v31 = *(v28 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier);
    v32 = *(v28 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier + 8);
    *(v0 + 1144) = v32;

    v33 = swift_task_alloc();
    *(v0 + 1152) = v33;
    *v33 = v0;
    v33[1] = sub_1001D705C;
    v34 = *(v0 + 608);

    return sub_10028B1CC(v34, v29, v30, v31, v32);
  }

  v36 = v4;
  v37 = *(v0 + 592);
  defaultLogger()();
  v38 = v37;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v41 = 136315394;
    IdentityProofingConfiguration.documentType.getter();
    v42 = IdentityDocumentType.description.getter();
    v44 = sub_100141FE4(v42, v43, v65);

    *(v41 + 4) = v44;
    *(v41 + 12) = 2080;
    if (v36)
    {
      if (v36 == 1)
      {
        v45 = 0xEB00000000305F32;
      }

      else
      {
        v45 = 0xEB00000000305F33;
      }
    }

    else
    {
      v45 = 0xEB00000000315F31;
    }

    v64 = *(v0 + 872);
    v50 = *(v0 + 776);
    v51 = *(v0 + 768);
    v52 = sub_100141FE4(0x5F6E6F6973726576, v45, v65);

    *(v41 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v39, v40, "PROOF-IDENTITY ==> DOCUMENT TYPE <==> %s <==> API VERSION == %s", v41, 0x16u);
    swift_arrayDestroy();

    v49 = *(v50 + 8);
    v49(v64, v51);
  }

  else
  {
    v46 = *(v0 + 872);
    v47 = *(v0 + 776);
    v48 = *(v0 + 768);

    v49 = *(v47 + 8);
    v49(v46, v48);
  }

  *(v0 + 912) = v49;
  v53 = sub_10000BA08((v0 + 400), *(v0 + 424));
  v55 = *v53;
  v54 = v53[1];
  *(v0 + 920) = v54;
  v56 = sub_10000BA08((v0 + 400), *(v0 + 424));
  v57 = v56[6];
  v58 = v56[7];
  *(v0 + 928) = v58;

  v59 = swift_task_alloc();
  *(v0 + 936) = v59;
  *v59 = v0;
  v59[1] = sub_1001D39A8;
  v60 = *(v0 + 736);
  v61 = *(v0 + 608);

  return sub_1001FF1C8(v0 + 216, v55, v54, v60, v36, v61, v57, v58);
}

uint64_t sub_1001D39A8()
{
  *(*v1 + 944) = v0;

  if (v0)
  {
    v2 = sub_1001D851C;
  }

  else
  {
    v2 = sub_1001D3AF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1001D3AF8()
{
  v111 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  *(v0 + 952) = v1;
  *(v0 + 960) = v2;
  if (!v2)
  {
    v107 = *(v0 + 736);
    v109 = 0;
    v20 = *(v0 + 728);
    v106 = *(v0 + 720);
    v21 = *(v0 + 704);
    v22 = *(v0 + 696);
    v23 = *(v0 + 688);
    sub_1000B1F44(v0 + 216);
    (*(v22 + 104))(v21, enum case for DIPError.Code.proofingSessionIDUnavailable(_:), v23);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v24 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v20 + 8))(v107, v106);
LABEL_5:
    sub_10000BB78((v0 + 400));
    v25._object = 0x8000000100707000;
    v25._countAndFlagsBits = 0xD000000000000010;
    debugLogFootprint(_:)(v25);
    *(v0 + 1112) = v24;
    defaultLogger()();
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 808);
    v30 = *(v0 + 776);
    v31 = *(v0 + 768);
    if (v28)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v110 = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v34 = Error.localizedDescription.getter();
      v36 = sub_100141FE4(v34, v35, &v110);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v26, v27, "Received an error during the proofing flow %s", v32, 0xCu);
      sub_10000BB78(v33);
    }

    v37 = *(v30 + 8);
    v37(v29, v31);
    *(v0 + 1120) = v37;
    if (v109)
    {
      defaultLogger()();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Calling proofing cancelled to cleanup state due to failure during proofing", v40, 2u);
      }

      v41 = *(v0 + 800);
      v42 = *(v0 + 768);
      v43 = *(v0 + 712);
      v44 = *(v0 + 624);
      v45 = *(v0 + 608);
      v46 = *(v0 + 592);

      v37(v41, v42);
      v47 = type metadata accessor for TaskPriority();
      (*(*(v47 - 8) + 56))(v43, 1, 1, v47);
      v48 = swift_allocObject();
      v48[2] = 0;
      v48[3] = 0;
      v48[4] = v44;
      v48[5] = v46;
      v48[6] = v45;
      v49 = v46;

      sub_1003E653C(0, 0, v43, &unk_1006DB7E8, v48);

      *(v0 + 1160) = *(*(v0 + 624) + 112);

      v50 = IdentityProofingConfiguration.documentType.getter();
      v51 = swift_task_alloc();
      *(v0 + 1168) = v51;
      *v51 = v0;
      v51[1] = sub_1001D7270;
      v52 = *(v0 + 680);

      sub_1001AA1E4(v52, v50);
    }

    else
    {
      defaultLogger()();
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "Cleaning up orphaned credentials after proofing", v78, 2u);
      }

      v79 = *(v0 + 792);
      v80 = *(v0 + 768);
      v81 = *(v0 + 624);

      v37(v79, v80);
      *(v0 + 1128) = *(v81 + 48);
      v82 = *(v81 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier);
      v83 = *(v81 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier + 8);
      *(v0 + 1136) = v83;
      v84 = *(v81 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier);
      v85 = *(v81 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier + 8);
      *(v0 + 1144) = v85;

      v86 = swift_task_alloc();
      *(v0 + 1152) = v86;
      *v86 = v0;
      v86[1] = sub_1001D705C;
      v87 = *(v0 + 608);

      sub_10028B1CC(v87, v82, v83, v84, v85);
    }

    return;
  }

  v3 = *(v0 + 624);
  type metadata accessor for IdentityProofingDatabaseProvider();
  v4 = swift_allocObject();
  v5 = type metadata accessor for IdentitySelfHealer();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_proofingSessionID];
  *v7 = v1;
  v7[1] = v2;
  *&v6[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_databaseProvider] = v4;
  *(v0 + 552) = v6;
  *(v0 + 560) = v5;
  swift_bridgeObjectRetain_n();
  v8 = objc_msgSendSuper2((v0 + 552), "init");
  v9 = *(v3 + 24);
  *(v3 + 24) = v8;

  defaultLogger()();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 912);
  v14 = *(v0 + 864);
  v15 = *(v0 + 768);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v108 = v13;
    v110 = swift_slowAlloc();
    v17 = v1;
    v18 = v2;
    v19 = v110;
    *v16 = 136315138;
    *(v16 + 4) = sub_100141FE4(v17, v18, &v110);
    _os_log_impl(&_mh_execute_header, v10, v11, "Proofing request successful with proofing session id %s", v16, 0xCu);
    sub_10000BB78(v19);
    v2 = v18;
    v1 = v17;

    v108(v14, v15);
  }

  else
  {

    v13(v14, v15);
  }

  v53._countAndFlagsBits = 0x3731363966616631;
  v54._countAndFlagsBits = 0xD00000000000001CLL;
  v54._object = 0x80000001007070B0;
  v53._object = 0xE800000000000000;
  logMilestone(tag:description:)(v53, v54);
  if ((*(v0 + 336) & 1) == 0)
  {
    v55 = *(v0 + 328);
    v56 = *(v0 + 624) + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_manualCheckInterval;
    *v56 = v55;
    *(v56 + 8) = 0;
    defaultLogger()();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 134217984;
      *(v59 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v57, v58, "Proofing finished, manual check commands instructed at %ld seconds", v59, 0xCu);
    }

    v60 = *(v0 + 912);
    v61 = *(v0 + 856);
    v62 = *(v0 + 768);

    v60(v61, v62);
  }

  if (*(*(*(v0 + 624) + 120) + 184))
  {
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v63 = *(v0 + 944);
    v64 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v64 + 54);
    sub_100031B5C(&v64[4], v0 + 16);
    os_unfair_lock_unlock(v64 + 54);
    if (!v63)
    {
      v95 = *(v0 + 624);
      v96 = *(v0 + 608);
      v97 = *(v0 + 592);
      sub_1000B1F44(v0 + 216);
      *(v0 + 1048) = *(v0 + 72);

      sub_100031918(v0 + 16);
      v98 = swift_allocObject();
      *(v0 + 1056) = v98;
      v98[2] = v96;
      v98[3] = v97;
      v98[4] = v95;
      v99 = swift_allocObject();
      *(v0 + 1064) = v99;
      *(v99 + 16) = sub_10021F1D0;
      *(v99 + 24) = v98;
      v100 = v97;

      v101 = swift_task_alloc();
      *(v0 + 1072) = v101;
      *v101 = v0;
      v101[1] = sub_1001D5FBC;

      AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 1208, sub_10017F7F4, v99, &type metadata for Bool);
    }

    return;
  }

  v65 = *(v0 + 608);
  sub_1000B1F44(v0 + 216);
  if (v65)
  {
    v88 = (*(v0 + 624) + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier);
    v90 = *v88;
    v89 = v88[1];
    *(v0 + 968) = v89;

    v91 = swift_task_alloc();
    *(v0 + 976) = v91;
    *v91 = v0;
    v91[1] = sub_1001D491C;
    v92 = *(v0 + 616);
    v93 = *(v0 + 1209);
    v94 = *(v0 + 592);
    v115 = (v65 & 2) != 0;
    v114 = v92;
    v113 = v93;

    sub_1001FFA50(v94, 1, v1, v2, v90, v89, 0, 0);
  }

  else
  {
    v66 = *(v0 + 944);
    *(v0 + 1210) = 0;
    *(v0 + 992) = v66;
    if ((*(v0 + 608) & 2) != 0 && !*(*(v0 + 624) + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure))
    {
      v105 = swift_task_alloc();
      *(v0 + 1000) = v105;
      *v105 = v0;
      v105[1] = sub_1001D50F4;

      sub_1006738C8();
    }

    else
    {
      v67 = type metadata accessor for IdentityManagementSessionDelegate();
      v68 = [objc_opt_self() defaultCenter];
      v69 = String._bridgeToObjectiveC()();
      *(v0 + 576) = v67;
      sub_100007224(&qword_10083D698, &unk_1006DB6F0);
      [v68 postNotificationName:v69 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();

      v70 = *(v0 + 960);
      v71 = *(v0 + 952);
      v72 = *(v0 + 608);
      v73 = *(*(v0 + 624) + 120);
      v74 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
      swift_beginAccess();
      v75 = *(v73 + v74);

      sub_1002E31A0(v72, v71, v70, v75);
      if (v66)
      {
        v24 = v66;
        v109 = v2;
        (*(*(v0 + 728) + 8))(*(v0 + 736), *(v0 + 720));

        goto LABEL_5;
      }

      v102 = swift_task_alloc();
      *(v0 + 1088) = v102;
      *v102 = v0;
      v102[1] = sub_1001D6BC8;
      v103 = *(v0 + 1209);
      v104 = *(v0 + 592);

      sub_100203A18(v104, v103);
    }
  }
}

uint64_t sub_1001D491C()
{
  *(*v1 + 984) = v0;

  if (v0)
  {

    v2 = sub_1001D885C;
  }

  else
  {
    v2 = sub_1001D4A60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001D4A60(uint64_t a1)
{
  v53 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Proofing session for phone information successfully saved", v4, 2u);
  }

  v5 = *(v1 + 912);
  v6 = *(v1 + 848);
  v7 = *(v1 + 768);

  v5(v6, v7);
  v8 = *(v1 + 984);
  v9 = *(v1 + 608);
  *(v1 + 1210) = (v9 & 2) != 0;
  *(v1 + 992) = v8;
  if ((v9 & 2) != 0 && !*(*(v1 + 624) + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure))
  {
    v51 = swift_task_alloc();
    *(v1 + 1000) = v51;
    *v51 = v1;
    v51[1] = sub_1001D50F4;

    return sub_1006738C8();
  }

  else
  {
    v10 = type metadata accessor for IdentityManagementSessionDelegate();
    v11 = [objc_opt_self() defaultCenter];
    v12 = String._bridgeToObjectiveC()();
    *(v1 + 576) = v10;
    sub_100007224(&qword_10083D698, &unk_1006DB6F0);
    [v11 postNotificationName:v12 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();

    v13 = *(v1 + 960);
    v14 = *(v1 + 952);
    v15 = *(v1 + 608);
    v16 = *(*(v1 + 624) + 120);
    v17 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
    swift_beginAccess();
    v18 = *(v16 + v17);

    sub_1002E31A0(v15, v14, v13, v18);
    if (v8)
    {
      (*(*(v1 + 728) + 8))(*(v1 + 736), *(v1 + 720));

      sub_10000BB78((v1 + 400));
      v19._object = 0x8000000100707000;
      v19._countAndFlagsBits = 0xD000000000000010;
      debugLogFootprint(_:)(v19);
      *(v1 + 1112) = v8;
      defaultLogger()();
      swift_errorRetain();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();

      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v1 + 808);
      v24 = *(v1 + 776);
      v25 = *(v1 + 768);
      if (v22)
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v52 = v27;
        *v26 = 136315138;
        swift_getErrorValue();
        v28 = Error.localizedDescription.getter();
        v30 = sub_100141FE4(v28, v29, &v52);

        *(v26 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v20, v21, "Received an error during the proofing flow %s", v26, 0xCu);
        sub_10000BB78(v27);
      }

      v31 = *(v24 + 8);
      v31(v23, v25);
      *(v1 + 1120) = v31;
      defaultLogger()();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Calling proofing cancelled to cleanup state due to failure during proofing", v34, 2u);
      }

      v35 = *(v1 + 800);
      v36 = *(v1 + 768);
      v37 = *(v1 + 712);
      v38 = *(v1 + 624);
      v39 = *(v1 + 608);
      v40 = *(v1 + 592);

      v31(v35, v36);
      v41 = type metadata accessor for TaskPriority();
      (*(*(v41 - 8) + 56))(v37, 1, 1, v41);
      v42 = swift_allocObject();
      v42[2] = 0;
      v42[3] = 0;
      v42[4] = v38;
      v42[5] = v40;
      v42[6] = v39;
      v43 = v40;

      sub_1003E653C(0, 0, v37, &unk_1006DB7E8, v42);

      *(v1 + 1160) = *(*(v1 + 624) + 112);

      v44 = IdentityProofingConfiguration.documentType.getter();
      v45 = swift_task_alloc();
      *(v1 + 1168) = v45;
      *v45 = v1;
      v45[1] = sub_1001D7270;
      v46 = *(v1 + 680);

      return sub_1001AA1E4(v46, v44);
    }

    else
    {

      v48 = swift_task_alloc();
      *(v1 + 1088) = v48;
      *v48 = v1;
      v48[1] = sub_1001D6BC8;
      v49 = *(v1 + 1209);
      v50 = *(v1 + 592);

      return sub_100203A18(v50, v49);
    }
  }
}

uint64_t sub_1001D50F4(uint64_t a1)
{
  *(*v1 + 1008) = a1;

  return _swift_task_switch(sub_1001D51F4, 0, 0);
}

uint64_t sub_1001D51F4()
{
  v59 = v0;
  v1 = *(v0 + 1008);
  if (v1)
  {
    v2 = *(v0 + 624);
    v3 = [*(v0 + 1008) deviceID];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    *(v0 + 1016) = v6;
    v7 = (v2 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier);
    v8 = *(v2 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier + 8);
    *(v0 + 1024) = v8;
    if (v8)
    {
      v9 = *(v0 + 960);
      v10 = *v7;

      v11 = swift_task_alloc();
      *(v0 + 1032) = v11;
      *v11 = v0;
      v11[1] = sub_1001D5868;
      v12 = *(v0 + 952);
      v13 = *(v0 + 616);
      v14 = *(v0 + 1209);
      v15 = *(v0 + 592);
      v63 = *(v0 + 1210);
      v62 = v13;
      v61 = v14;

      return sub_1001FFA50(v15, 2, v12, v9, v10, v8, v4, v6);
    }
  }

  v17 = *(v0 + 992);
  v18 = type metadata accessor for IdentityManagementSessionDelegate();
  v19 = [objc_opt_self() defaultCenter];
  v20 = String._bridgeToObjectiveC()();
  *(v0 + 576) = v18;
  sub_100007224(&qword_10083D698, &unk_1006DB6F0);
  [v19 postNotificationName:v20 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  v21 = *(v0 + 960);
  v22 = *(v0 + 952);
  v23 = *(v0 + 608);
  v24 = *(*(v0 + 624) + 120);
  v25 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
  swift_beginAccess();
  v26 = *(v24 + v25);

  sub_1002E31A0(v23, v22, v21, v26);
  if (v17)
  {
    (*(*(v0 + 728) + 8))(*(v0 + 736), *(v0 + 720));

    sub_10000BB78((v0 + 400));
    v27._object = 0x8000000100707000;
    v27._countAndFlagsBits = 0xD000000000000010;
    debugLogFootprint(_:)(v27);
    *(v0 + 1112) = v17;
    defaultLogger()();
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 808);
    v32 = *(v0 + 776);
    v33 = *(v0 + 768);
    if (v30)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v58 = v35;
      *v34 = 136315138;
      swift_getErrorValue();
      v36 = Error.localizedDescription.getter();
      v38 = sub_100141FE4(v36, v37, &v58);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v28, v29, "Received an error during the proofing flow %s", v34, 0xCu);
      sub_10000BB78(v35);
    }

    v39 = *(v32 + 8);
    v39(v31, v33);
    *(v0 + 1120) = v39;
    defaultLogger()();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Calling proofing cancelled to cleanup state due to failure during proofing", v42, 2u);
    }

    v43 = *(v0 + 800);
    v44 = *(v0 + 768);
    v45 = *(v0 + 712);
    v46 = *(v0 + 624);
    v47 = *(v0 + 608);
    v48 = *(v0 + 592);

    v39(v43, v44);
    v49 = type metadata accessor for TaskPriority();
    (*(*(v49 - 8) + 56))(v45, 1, 1, v49);
    v50 = swift_allocObject();
    v50[2] = 0;
    v50[3] = 0;
    v50[4] = v46;
    v50[5] = v48;
    v50[6] = v47;
    v51 = v48;

    sub_1003E653C(0, 0, v45, &unk_1006DB7E8, v50);

    *(v0 + 1160) = *(*(v0 + 624) + 112);

    v52 = IdentityProofingConfiguration.documentType.getter();
    v53 = swift_task_alloc();
    *(v0 + 1168) = v53;
    *v53 = v0;
    v53[1] = sub_1001D7270;
    v54 = *(v0 + 680);

    return sub_1001AA1E4(v54, v52);
  }

  else
  {

    v55 = swift_task_alloc();
    *(v0 + 1088) = v55;
    *v55 = v0;
    v55[1] = sub_1001D6BC8;
    v56 = *(v0 + 1209);
    v57 = *(v0 + 592);

    return sub_100203A18(v57, v56);
  }
}

uint64_t sub_1001D5868()
{
  *(*v1 + 1040) = v0;

  if (v0)
  {

    v2 = sub_1001D8C10;
  }

  else
  {
    v2 = sub_1001D59D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001D59D8(uint64_t a1)
{
  v52 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 912);
  v6 = *(v1 + 840);
  v7 = *(v1 + 768);
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Proofing session for watch successfully saved", v8, 2u);
  }

  v5(v6, v7);
  v9 = *(v1 + 1040);
  v10 = type metadata accessor for IdentityManagementSessionDelegate();
  v11 = [objc_opt_self() defaultCenter];
  v12 = String._bridgeToObjectiveC()();
  *(v1 + 576) = v10;
  sub_100007224(&qword_10083D698, &unk_1006DB6F0);
  [v11 postNotificationName:v12 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  v13 = *(v1 + 960);
  v14 = *(v1 + 952);
  v15 = *(v1 + 608);
  v16 = *(*(v1 + 624) + 120);
  v17 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
  swift_beginAccess();
  v18 = *(v16 + v17);

  sub_1002E31A0(v15, v14, v13, v18);
  if (v9)
  {
    (*(*(v1 + 728) + 8))(*(v1 + 736), *(v1 + 720));

    sub_10000BB78((v1 + 400));
    v19._object = 0x8000000100707000;
    v19._countAndFlagsBits = 0xD000000000000010;
    debugLogFootprint(_:)(v19);
    *(v1 + 1112) = v9;
    defaultLogger()();
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v1 + 808);
    v24 = *(v1 + 776);
    v25 = *(v1 + 768);
    if (v22)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v51 = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = sub_100141FE4(v28, v29, &v51);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v20, v21, "Received an error during the proofing flow %s", v26, 0xCu);
      sub_10000BB78(v27);
    }

    v31 = *(v24 + 8);
    v31(v23, v25);
    *(v1 + 1120) = v31;
    defaultLogger()();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Calling proofing cancelled to cleanup state due to failure during proofing", v34, 2u);
    }

    v35 = *(v1 + 800);
    v36 = *(v1 + 768);
    v37 = *(v1 + 712);
    v38 = *(v1 + 624);
    v39 = *(v1 + 608);
    v40 = *(v1 + 592);

    v31(v35, v36);
    v41 = type metadata accessor for TaskPriority();
    (*(*(v41 - 8) + 56))(v37, 1, 1, v41);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = v38;
    v42[5] = v40;
    v42[6] = v39;
    v43 = v40;

    sub_1003E653C(0, 0, v37, &unk_1006DB7E8, v42);

    *(v1 + 1160) = *(*(v1 + 624) + 112);

    v44 = IdentityProofingConfiguration.documentType.getter();
    v45 = swift_task_alloc();
    *(v1 + 1168) = v45;
    *v45 = v1;
    v45[1] = sub_1001D7270;
    v46 = *(v1 + 680);

    return sub_1001AA1E4(v46, v44);
  }

  else
  {

    v48 = swift_task_alloc();
    *(v1 + 1088) = v48;
    *v48 = v1;
    v48[1] = sub_1001D6BC8;
    v49 = *(v1 + 1209);
    v50 = *(v1 + 592);

    return sub_100203A18(v50, v49);
  }
}

uint64_t sub_1001D5FBC()
{
  v2 = *v1;
  *(*v1 + 1080) = v0;

  if (v0)
  {

    v3 = sub_1001D67F8;
  }

  else
  {

    *(v2 + 1211) = *(v2 + 1208);
    v3 = sub_1001D6114;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001D6114(uint64_t a1)
{
  v59 = v1;
  if (*(v1 + 1211) == 1)
  {
    v2 = type metadata accessor for IdentityManagementSessionDelegate();
    v3 = [objc_opt_self() defaultCenter];
    v4 = String._bridgeToObjectiveC()();
    *(v1 + 584) = v2;
    sub_100007224(&qword_10083D698, &unk_1006DB6F0);
    [v3 postNotificationName:v4 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();

    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "livenessStepUp triggered notification for Wallet status update", v7, 2u);
    }

    v8 = *(v1 + 912);
    v9 = *(v1 + 832);
    v10 = *(v1 + 768);

    v8(v9, v10);
  }

  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v1 + 912);
  v15 = *(v1 + 824);
  v16 = *(v1 + 768);
  if (v13)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v58[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100141FE4(0xD00000000000006ELL, 0x8000000100707020, v58);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s livenessStepUp finished. Don't need to save proofing session", v17, 0xCu);
    sub_10000BB78(v18);
  }

  v14(v15, v16);
  v19 = *(v1 + 1080);
  v20 = *(v1 + 960);
  v21 = *(v1 + 952);
  v22 = *(v1 + 608);
  v23 = *(*(v1 + 624) + 120);
  v24 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
  swift_beginAccess();
  v25 = *(v23 + v24);

  sub_1002E31A0(v22, v21, v20, v25);
  if (v19)
  {
    (*(*(v1 + 728) + 8))(*(v1 + 736), *(v1 + 720));

    sub_10000BB78((v1 + 400));
    v26._object = 0x8000000100707000;
    v26._countAndFlagsBits = 0xD000000000000010;
    debugLogFootprint(_:)(v26);
    *(v1 + 1112) = v19;
    defaultLogger()();
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v1 + 808);
    v31 = *(v1 + 776);
    v32 = *(v1 + 768);
    if (v29)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v58[0] = v34;
      *v33 = 136315138;
      swift_getErrorValue();
      v35 = Error.localizedDescription.getter();
      v37 = sub_100141FE4(v35, v36, v58);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v27, v28, "Received an error during the proofing flow %s", v33, 0xCu);
      sub_10000BB78(v34);
    }

    v38 = *(v31 + 8);
    v38(v30, v32);
    *(v1 + 1120) = v38;
    defaultLogger()();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Calling proofing cancelled to cleanup state due to failure during proofing", v41, 2u);
    }

    v42 = *(v1 + 800);
    v43 = *(v1 + 768);
    v44 = *(v1 + 712);
    v45 = *(v1 + 624);
    v46 = *(v1 + 608);
    v47 = *(v1 + 592);

    v38(v42, v43);
    v48 = type metadata accessor for TaskPriority();
    (*(*(v48 - 8) + 56))(v44, 1, 1, v48);
    v49 = swift_allocObject();
    v49[2] = 0;
    v49[3] = 0;
    v49[4] = v45;
    v49[5] = v47;
    v49[6] = v46;
    v50 = v47;

    sub_1003E653C(0, 0, v44, &unk_1006DB7E8, v49);

    *(v1 + 1160) = *(*(v1 + 624) + 112);

    v51 = IdentityProofingConfiguration.documentType.getter();
    v52 = swift_task_alloc();
    *(v1 + 1168) = v52;
    *v52 = v1;
    v52[1] = sub_1001D7270;
    v53 = *(v1 + 680);

    return sub_1001AA1E4(v53, v51);
  }

  else
  {

    v55 = swift_task_alloc();
    *(v1 + 1088) = v55;
    *v55 = v1;
    v55[1] = sub_1001D6BC8;
    v56 = *(v1 + 1209);
    v57 = *(v1 + 592);

    return sub_100203A18(v57, v56);
  }
}

uint64_t sub_1001D67F8()
{
  v36 = v0;
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];

  (*(v2 + 8))(v1, v3);
  sub_10000BB78(v0 + 50);
  v4._object = 0x8000000100707000;
  v4._countAndFlagsBits = 0xD000000000000010;
  debugLogFootprint(_:)(v4);
  v0[139] = v0[135];
  defaultLogger()();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[101];
    v8 = v0[97];
    v9 = v0[96];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v14 = sub_100141FE4(v12, v13, &v35);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received an error during the proofing flow %s", v10, 0xCu);
    sub_10000BB78(v11);

    v15 = *(v8 + 8);
    v15(v7, v9);
  }

  else
  {
    v16 = v0[101];
    v17 = v0[97];
    v18 = v0[96];

    v15 = *(v17 + 8);
    v15(v16, v18);
  }

  v0[140] = v15;
  defaultLogger()();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Calling proofing cancelled to cleanup state due to failure during proofing", v21, 2u);
  }

  v22 = v0[100];
  v23 = v0[96];
  v24 = v0[89];
  v25 = v0[78];
  v26 = v0[76];
  v27 = v0[74];

  v15(v22, v23);
  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v25;
  v29[5] = v27;
  v29[6] = v26;
  v30 = v27;

  sub_1003E653C(0, 0, v24, &unk_1006DB7E8, v29);

  v0[145] = *(v0[78] + 112);

  v31 = IdentityProofingConfiguration.documentType.getter();
  v32 = swift_task_alloc();
  v0[146] = v32;
  *v32 = v0;
  v32[1] = sub_1001D7270;
  v33 = v0[85];

  return sub_1001AA1E4(v33, v31);
}

uint64_t sub_1001D6BC8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1096) = a1;
  *(v3 + 1104) = v1;

  if (v1)
  {

    v4 = sub_1001D8FC4;
  }

  else
  {
    v4 = sub_1001D6CE8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001D6CE8()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 600);
  v3 = *(v1 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_proofingDocuments);
  *(v1 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_proofingDocuments) = v2;
  v4 = v2;

  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Pending state UI shown. Will listen to uploads completion and perform action notification request in the background", v7, 2u);
  }

  v23 = *(v0 + 952);
  v8 = *(v0 + 912);
  v9 = *(v0 + 816);
  v10 = *(v0 + 768);
  v25 = *(v0 + 736);
  v11 = *(v0 + 728);
  v24 = *(v0 + 720);
  v12 = *(v0 + 712);
  v13 = *(v0 + 624);
  v21 = *(v0 + 1209);
  v22 = *(v0 + 608);
  v14 = *(v0 + 592);

  v8(v9, v10);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v21;
  *(v16 + 40) = v13;
  *(v16 + 48) = v23;
  *(v16 + 64) = v22;
  *(v16 + 72) = v14;
  v17 = v14;

  sub_100130390(0, 0, v12, &unk_1006DB7F8, v16);

  (*(v11 + 8))(v25, v24);
  sub_10000BB78((v0 + 400));
  v18._object = 0x8000000100707000;
  v18._countAndFlagsBits = 0xD000000000000010;
  debugLogFootprint(_:)(v18);
  v26 = *(v0 + 1096);

  v19 = *(v0 + 8);

  return v19(v26);
}

uint64_t sub_1001D705C()
{

  return _swift_task_switch(sub_1001D71B4, 0, 0);
}

uint64_t sub_1001D71B4()
{
  v0[145] = *(v0[78] + 112);

  v1 = IdentityProofingConfiguration.documentType.getter();
  v2 = swift_task_alloc();
  v0[146] = v2;
  *v2 = v0;
  v2[1] = sub_1001D7270;
  v3 = v0[85];

  return sub_1001AA1E4(v3, v1);
}

uint64_t sub_1001D7270()
{
  *(*v1 + 1176) = v0;

  if (v0)
  {
    v2 = sub_1001D9378;
  }

  else
  {

    v2 = sub_1001D738C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001D738C()
{
  v1 = v0[85];
  v0[148] = *(v0[78] + 32);
  v2 = *(v1 + 64);

  v3 = IdentityProofingConfiguration.documentType.getter();
  v4 = swift_task_alloc();
  v0[149] = v4;
  *v4 = v0;
  v4[1] = sub_1001D745C;
  v5 = v0[84];

  return sub_1002A77FC(v5, v2, v3);
}

uint64_t sub_1001D745C()
{
  *(*v1 + 1200) = v0;

  if (v0)
  {
    v2 = sub_1001D7D80;
  }

  else
  {
    v2 = sub_1001D7570;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001D7570()
{
  v1 = *(v0 + 1200);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_10021E908(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration, &protocol conformance descriptor for IdentityProofingAttributeConfiguration);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    v4 = *(v0 + 672);
    v5 = *(v0 + 664);
    v6 = *(v0 + 656);

    (*(v5 + 8))(v4, v6);
    sub_10021EA28(*(v0 + 680), type metadata accessor for IdentityProofingStaticWorkflow);
    v30 = *(v0 + 1120);
    v31 = *(v0 + 784);
    v29 = *(v0 + 768);
    v7 = *(v0 + 704);
    v8 = *(v0 + 696);
    v28 = *(v0 + 688);
    v9 = *(v0 + 648);
    v33 = *(v0 + 640);
    v10 = *(v0 + 632);
    *(v0 + 392) = 0;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    swift_errorRetain();
    sub_100203358(v0 + 360);
    sub_10000BE18(v0 + 360, &qword_10083D0A0, &qword_1006DAFC0);
    v27 = enum case for DIPError.Code.internalError(_:);
    v25 = v7;
    v26 = *(v8 + 104);
    v26(v7);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v11 = *(v33 + 16);
    v11(v12, v9, v10);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v30(v31, v29);

    swift_allocError();
    v11(v13, v9, v10);
    (v26)(v25, v27, v28);
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v33 + 8))(v9, v10);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v34 = *(v0 + 680);
    v16 = *(v0 + 672);
    v17 = *(v0 + 664);
    v18 = *(v0 + 656);
    v19 = v2;
    v20 = v3;

    (*(v17 + 8))(v16, v18);
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1006DAE90;
    v22 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
    *(v21 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
    sub_10000B8B8(v19, v20);
    IdentityProofingConfiguration.documentType.getter();
    v23 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v32 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

    sub_10000B90C(v19, v20);
    sub_10021EA28(v34, type metadata accessor for IdentityProofingStaticWorkflow);

    v24 = *(v0 + 8);

    return v24(v32);
  }
}

uint64_t sub_1001D7D80()
{

  sub_10021EA28(*(v0 + 680), type metadata accessor for IdentityProofingStaticWorkflow);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 784);
  v14 = *(v0 + 768);
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v13 = *(v0 + 688);
  v3 = *(v0 + 648);
  v17 = *(v0 + 640);
  v4 = *(v0 + 632);
  *(v0 + 392) = 0;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0u;
  swift_errorRetain();
  sub_100203358(v0 + 360);
  sub_10000BE18(v0 + 360, &qword_10083D0A0, &qword_1006DAFC0);
  v12 = enum case for DIPError.Code.internalError(_:);
  v10 = v1;
  v11 = *(v2 + 104);
  v11(v1);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v17 + 16);
  v5(v6, v3, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v15(v16, v14);

  swift_allocError();
  v5(v7, v3, v4);
  (v11)(v10, v12, v13);
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v17 + 8))(v3, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1001D81F8()
{
  v30 = v0;

  v1._object = 0x8000000100707000;
  v1._countAndFlagsBits = 0xD000000000000010;
  debugLogFootprint(_:)(v1);
  v0[139] = v0[113];
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[101];
    v5 = v0[97];
    v6 = v0[96];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_100141FE4(v9, v10, &v29);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received an error during the proofing flow %s", v7, 0xCu);
    sub_10000BB78(v8);

    v12 = *(v5 + 8);
    v12(v4, v6);
  }

  else
  {
    v13 = v0[101];
    v14 = v0[97];
    v15 = v0[96];

    v12 = *(v14 + 8);
    v12(v13, v15);
  }

  v0[140] = v12;
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Cleaning up orphaned credentials after proofing", v18, 2u);
  }

  v19 = v0[99];
  v20 = v0[96];
  v21 = v0[78];

  v12(v19, v20);
  v0[141] = *(v21 + 48);
  v22 = *(v21 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier);
  v23 = *(v21 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier + 8);
  v0[142] = v23;
  v24 = *(v21 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier);
  v25 = *(v21 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier + 8);
  v0[143] = v25;

  v26 = swift_task_alloc();
  v0[144] = v26;
  *v26 = v0;
  v26[1] = sub_1001D705C;
  v27 = v0[76];

  return sub_10028B1CC(v27, v22, v23, v24, v25);
}

uint64_t sub_1001D851C()
{
  v30 = v0;
  (*(v0[91] + 8))(v0[92], v0[90]);
  sub_10000BB78(v0 + 50);
  v1._object = 0x8000000100707000;
  v1._countAndFlagsBits = 0xD000000000000010;
  debugLogFootprint(_:)(v1);
  v0[139] = v0[118];
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[101];
    v5 = v0[97];
    v6 = v0[96];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_100141FE4(v9, v10, &v29);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received an error during the proofing flow %s", v7, 0xCu);
    sub_10000BB78(v8);

    v12 = *(v5 + 8);
    v12(v4, v6);
  }

  else
  {
    v13 = v0[101];
    v14 = v0[97];
    v15 = v0[96];

    v12 = *(v14 + 8);
    v12(v13, v15);
  }

  v0[140] = v12;
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Cleaning up orphaned credentials after proofing", v18, 2u);
  }

  v19 = v0[99];
  v20 = v0[96];
  v21 = v0[78];

  v12(v19, v20);
  v0[141] = *(v21 + 48);
  v22 = *(v21 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier);
  v23 = *(v21 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier + 8);
  v0[142] = v23;
  v24 = *(v21 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier);
  v25 = *(v21 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier + 8);
  v0[143] = v25;

  v26 = swift_task_alloc();
  v0[144] = v26;
  *v26 = v0;
  v26[1] = sub_1001D705C;
  v27 = v0[76];

  return sub_10028B1CC(v27, v22, v23, v24, v25);
}

uint64_t sub_1001D885C()
{
  v33 = v0;
  (*(v0[91] + 8))(v0[92], v0[90]);
  sub_10000BB78(v0 + 50);
  v1._object = 0x8000000100707000;
  v1._countAndFlagsBits = 0xD000000000000010;
  debugLogFootprint(_:)(v1);
  v0[139] = v0[123];
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[101];
    v5 = v0[97];
    v6 = v0[96];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_100141FE4(v9, v10, &v32);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received an error during the proofing flow %s", v7, 0xCu);
    sub_10000BB78(v8);

    v12 = *(v5 + 8);
    v12(v4, v6);
  }

  else
  {
    v13 = v0[101];
    v14 = v0[97];
    v15 = v0[96];

    v12 = *(v14 + 8);
    v12(v13, v15);
  }

  v0[140] = v12;
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Calling proofing cancelled to cleanup state due to failure during proofing", v18, 2u);
  }

  v19 = v0[100];
  v20 = v0[96];
  v21 = v0[89];
  v22 = v0[78];
  v23 = v0[76];
  v24 = v0[74];

  v12(v19, v20);
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v22;
  v26[5] = v24;
  v26[6] = v23;
  v27 = v24;

  sub_1003E653C(0, 0, v21, &unk_1006DB7E8, v26);

  v0[145] = *(v0[78] + 112);

  v28 = IdentityProofingConfiguration.documentType.getter();
  v29 = swift_task_alloc();
  v0[146] = v29;
  *v29 = v0;
  v29[1] = sub_1001D7270;
  v30 = v0[85];

  return sub_1001AA1E4(v30, v28);
}

uint64_t sub_1001D8C10()
{
  v33 = v0;
  (*(v0[91] + 8))(v0[92], v0[90]);
  sub_10000BB78(v0 + 50);
  v1._object = 0x8000000100707000;
  v1._countAndFlagsBits = 0xD000000000000010;
  debugLogFootprint(_:)(v1);
  v0[139] = v0[130];
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[101];
    v5 = v0[97];
    v6 = v0[96];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_100141FE4(v9, v10, &v32);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received an error during the proofing flow %s", v7, 0xCu);
    sub_10000BB78(v8);

    v12 = *(v5 + 8);
    v12(v4, v6);
  }

  else
  {
    v13 = v0[101];
    v14 = v0[97];
    v15 = v0[96];

    v12 = *(v14 + 8);
    v12(v13, v15);
  }

  v0[140] = v12;
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Calling proofing cancelled to cleanup state due to failure during proofing", v18, 2u);
  }

  v19 = v0[100];
  v20 = v0[96];
  v21 = v0[89];
  v22 = v0[78];
  v23 = v0[76];
  v24 = v0[74];

  v12(v19, v20);
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v22;
  v26[5] = v24;
  v26[6] = v23;
  v27 = v24;

  sub_1003E653C(0, 0, v21, &unk_1006DB7E8, v26);

  v0[145] = *(v0[78] + 112);

  v28 = IdentityProofingConfiguration.documentType.getter();
  v29 = swift_task_alloc();
  v0[146] = v29;
  *v29 = v0;
  v29[1] = sub_1001D7270;
  v30 = v0[85];

  return sub_1001AA1E4(v30, v28);
}

uint64_t sub_1001D8FC4()
{
  v33 = v0;
  (*(v0[91] + 8))(v0[92], v0[90]);
  sub_10000BB78(v0 + 50);
  v1._object = 0x8000000100707000;
  v1._countAndFlagsBits = 0xD000000000000010;
  debugLogFootprint(_:)(v1);
  v0[139] = v0[138];
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[101];
    v5 = v0[97];
    v6 = v0[96];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_100141FE4(v9, v10, &v32);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received an error during the proofing flow %s", v7, 0xCu);
    sub_10000BB78(v8);

    v12 = *(v5 + 8);
    v12(v4, v6);
  }

  else
  {
    v13 = v0[101];
    v14 = v0[97];
    v15 = v0[96];

    v12 = *(v14 + 8);
    v12(v13, v15);
  }

  v0[140] = v12;
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Calling proofing cancelled to cleanup state due to failure during proofing", v18, 2u);
  }

  v19 = v0[100];
  v20 = v0[96];
  v21 = v0[89];
  v22 = v0[78];
  v23 = v0[76];
  v24 = v0[74];

  v12(v19, v20);
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v22;
  v26[5] = v24;
  v26[6] = v23;
  v27 = v24;

  sub_1003E653C(0, 0, v21, &unk_1006DB7E8, v26);

  v0[145] = *(v0[78] + 112);

  v28 = IdentityProofingConfiguration.documentType.getter();
  v29 = swift_task_alloc();
  v0[146] = v29;
  *v29 = v0;
  v29[1] = sub_1001D7270;
  v30 = v0[85];

  return sub_1001AA1E4(v30, v28);
}

uint64_t sub_1001D9378()
{

  v15 = *(v0 + 1120);
  v16 = *(v0 + 784);
  v14 = *(v0 + 768);
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v13 = *(v0 + 688);
  v3 = *(v0 + 648);
  v17 = *(v0 + 640);
  v4 = *(v0 + 632);
  *(v0 + 392) = 0;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0u;
  swift_errorRetain();
  sub_100203358(v0 + 360);
  sub_10000BE18(v0 + 360, &qword_10083D0A0, &qword_1006DAFC0);
  v12 = enum case for DIPError.Code.internalError(_:);
  v11 = *(v2 + 104);
  v11(v1);
  v5 = v1;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v6 = *(v17 + 16);
  v6(v7, v3, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v15(v16, v14);

  swift_allocError();
  v6(v8, v3, v4);
  (v11)(v5, v12, v13);
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v17 + 8))(v3, v4);

  v9 = *(v0 + 8);

  return v9();
}

void sub_1001D97E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v43 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  if (a2 == 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v16 = IdentityProofingConfiguration.documentType.getter();
  v17 = sub_10057A388(v15, v16, 0);
  if (v4)
  {
    return;
  }

  v18 = v14;
  v41 = v12;
  v42 = a4;
  v19 = v43;
  if (!v17)
  {
LABEL_19:
    v36 = 0;
    goto LABEL_20;
  }

  v20 = v17 & 0xFFFFFFFFFFFFFF8;
  if (!(v17 >> 62))
  {
    v21 = v9;
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v37 = v17;
  v38 = _CocoaArrayWrapper.endIndex.getter();
  v17 = v37;
  v21 = v9;
  if (!v38)
  {
LABEL_18:

    goto LABEL_19;
  }

LABEL_8:
  v39 = a1;
  v40 = 0;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v22 = v8;
  }

  else
  {
    if (!*(v20 + 16))
    {
      __break(1u);
      return;
    }

    v22 = v8;
    v23 = *(v17 + 32);
  }

  v25 = *(v19 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_livenessManualReviewEncryptedMessage);
  v24 = *(v19 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_livenessManualReviewEncryptedMessage + 8);
  sub_1000363B4(v25, v24);
  sub_10057F454(v25, v24);
  sub_10000BD94(v25, v24);
  defaultLogger()();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Successfully stored the liveness manual review encrypted message", v28, 2u);
  }

  v29 = *(v21 + 8);
  v29(v18, v22);
  v30 = IdentityProofingActionStatus.rawValue.getter();
  sub_10057F148(v30, 0);
  v31 = v41;
  defaultLogger()();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "livenessStepUp proofing session updated to IdentityProofingActionStatus.statusPending", v34, 2u);
  }

  v29(v31, v22);
  v35 = v40;
  sub_1005783D4();

  if (!v35)
  {
    v36 = 1;
LABEL_20:
    *v42 = v36;
  }
}

uint64_t sub_1001D9B4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = a8;
  *(v8 + 128) = v12;
  *(v8 + 104) = a6;
  *(v8 + 112) = a7;
  *(v8 + 96) = a5;
  *(v8 + 224) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_1001D9C38, 0, 0);
}

uint64_t sub_1001D9C38(uint64_t a1)
{
  if (*(v1 + 224) == 1)
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "shouldScheduleUploads is set to true, will schedule the uploads in the background waiting for an inexpensive network.", v4, 2u);
    }

    v5 = *(v1 + 168);
    v6 = *(v1 + 136);
    v7 = *(v1 + 144);

    (*(v7 + 8))(v5, v6);
    if (qword_100832C28 != -1)
    {
      swift_once();
    }

    sub_10027DDA8();

    v10 = *(v1 + 104);
    v11 = *(v1 + 112);
    v12 = *(*(*(v1 + 96) + 120) + 16);
    swift_beginAccess();
    *(v12 + 16) = &_swiftEmptyDictionarySingleton;

    sub_1002E1B4C(v10, v11, 9);

    v13 = *(v1 + 8);

    return v13();
  }

  else
  {
    v8 = *(*(*(v1 + 96) + 120) + 120);
    *(v1 + 176) = v8;
    v8;
    v9 = swift_task_alloc();
    *(v1 + 184) = v9;
    *v9 = v1;
    v9[1] = sub_1001D9ED4;

    return OS_dispatch_group.wait()();
  }
}

uint64_t sub_1001D9ED4()
{
  v1 = *(*v0 + 176);

  return _swift_task_switch(sub_1001D9FE8, 0, 0);
}

uint64_t sub_1001D9FE8()
{
  v24 = v0;
  v1 = v0[12];
  if (*(*(*(v1 + 120) + 16) + 40))
  {
    swift_errorRetain();
    defaultLogger()();
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[20];
    v7 = v0[17];
    v6 = v0[18];
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = sub_100141FE4(v10, v11, &v23);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v2, v3, "Cloudkit uploads have failed. Will not trigger action notification %s", v8, 0xCu);
      sub_10000BB78(v9);

      (*(v6 + 8))(v5, v7);
    }

    else
    {

      (*(v6 + 8))(v5, v7);
    }

    sub_10021C2BC(v0[15], v0[13], v0[14]);

    v22 = v0[1];

    return v22();
  }

  else
  {
    v0[24] = *(v1 + 96);

    v13 = IdentityProofingConfiguration.country.getter();
    v0[25] = v14;
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17 = IdentityProofingConfiguration.documentType.getter();
    v18 = swift_task_alloc();
    v0[26] = v18;
    *v18 = v0;
    v18[1] = sub_1001DA298;
    v20 = v0[13];
    v19 = v0[14];

    return sub_10026E970(v20, v19, v15, v16, v17);
  }
}

uint64_t sub_1001DA298()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1001DA4E0;
  }

  else
  {
    v2 = sub_1001DA3F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001DA3F0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];

  sub_1002E1B4C(v3, v1, 1);

  sub_10021C2BC(v2, v3, v1);
  v4 = *(*(v0[12] + 120) + 16);
  swift_beginAccess();
  *(v4 + 16) = &_swiftEmptyDictionarySingleton;

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001DA4E0(uint64_t a1)
{
  v3 = v1[18];
  v2 = v1[19];
  v4 = v1[17];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v4);
  v5 = *(*(v1[12] + 120) + 16);
  swift_beginAccess();
  *(v5 + 16) = &_swiftEmptyDictionarySingleton;

  v6 = v1[1];

  return v6();
}

uint64_t sub_1001DA5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = type metadata accessor for Logger();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_1001DA6C0, 0, 0);
}

uint64_t sub_1001DA6C0()
{
  v0[12] = *(v0[6] + 80);

  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1001DA784;
  v2 = v0[7];

  return sub_100289E58(v2);
}

uint64_t sub_1001DA784()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1001DA9B0;
  }

  else
  {

    v2 = sub_1001DA8A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001DA8A0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully cancelled proofing", v8, 2u);
  }

  (*(v7 + 8))(v5, v6);

  v9 = v1[1];

  return v9();
}

uint64_t sub_1001DA9B0()
{
  v17 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v15 = v0[10];
    v4 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "received an error during proofing cancellation %s. Ignore the error.", v5, 0xCu);
    sub_10000BB78(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[9];
    v10 = v0[10];
    v12 = v0[8];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001DAB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[63] = a4;
  v5[64] = v4;
  v5[61] = a2;
  v5[62] = a3;
  v5[60] = a1;
  v6 = type metadata accessor for DeviceInformationProvider();
  v5[65] = v6;
  v5[66] = *(v6 - 8);
  v5[67] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[68] = v7;
  v5[69] = *(v7 - 8);
  v5[70] = swift_task_alloc();
  v5[71] = type metadata accessor for IdentityProofingRequestV2(0);
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  sub_100007224(&qword_100835E40, &qword_1006C49F8);
  v5[74] = swift_task_alloc();
  sub_100007224(&qword_100835E38, &qword_1006C49F0);
  v5[75] = swift_task_alloc();
  v8 = sub_100007224(&qword_10083DC00, &qword_1006DB6E0);
  v5[76] = v8;
  v9 = *(v8 - 8);
  v5[77] = v9;
  v5[78] = *(v9 + 64);
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  v5[81] = swift_task_alloc();
  sub_100007224(&qword_10083D6A8, &qword_1006DB710);
  v5[82] = swift_task_alloc();
  v10 = type metadata accessor for HPKESuiteKwV1();
  v5[83] = v10;
  v5[84] = *(v10 - 8);
  v5[85] = swift_task_alloc();
  v11 = type metadata accessor for DIPError.Code();
  v5[86] = v11;
  v5[87] = *(v11 - 8);
  v5[88] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v5[89] = v12;
  v5[90] = *(v12 - 8);
  v5[91] = swift_task_alloc();
  v5[92] = swift_task_alloc();

  return _swift_task_switch(sub_1001DAF48, 0, 0);
}

uint64_t sub_1001DAF48()
{
  v1 = *(*(v0[64] + 112) + 104);
  v0[93] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[94] = v2;
  *v2 = v0;
  v2[1] = sub_1001DAFF8;

  return OS_dispatch_group.wait()();
}

uint64_t sub_1001DAFF8()
{
  v1 = *(*v0 + 744);

  return _swift_task_switch(sub_1001DB10C, 0, 0);
}

uint64_t sub_1001DB10C(uint64_t a1)
{
  v43 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 736);
  v6 = *(v1 + 720);
  v7 = *(v1 + 712);
  if (v4)
  {
    v9 = *(v1 + 496);
    v8 = *(v1 + 504);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v42 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v42);
    _os_log_impl(&_mh_execute_header, v2, v3, "initiatePartialProofing: proofingSessionID %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  v12 = *(v6 + 8);
  v12(v5, v7);
  *(v1 + 760) = v12;
  v13 = *(*(v1 + 512) + 112);
  if (*(v13 + 112))
  {
    (*(*(v1 + 696) + 104))(*(v1 + 704), enum case for DIPError.Code.internalError(_:), *(v1 + 688));
    swift_errorRetain();
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

LABEL_5:

    v14 = *(v1 + 8);

    return v14();
  }

  swift_beginAccess();
  sub_10000BBC4(v13 + 144, v1 + 248, &qword_10083D0A0, &qword_1006DAFC0);
  if (!*(v1 + 272))
  {
    v19 = *(v1 + 704);
    v20 = *(v1 + 696);
    v21 = *(v1 + 688);
    sub_10000BE18(v1 + 248, &qword_10083D0A0, &qword_1006DAFC0);
    (*(v20 + 104))(v19, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v21);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  sub_10001F358((v1 + 248), v1 + 208);
  v16 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_identityKeyPair;
  swift_beginAccess();
  sub_10000BBC4(v13 + v16, v1 + 64, &qword_10083D4B8, &qword_1006DB470);
  if (!*(v1 + 88))
  {
    v22 = *(v1 + 704);
    v23 = *(v1 + 696);
    v24 = *(v1 + 688);
    sub_10000BE18(v1 + 64, &qword_10083D4B8, &qword_1006DB470);
    (*(v23 + 104))(v22, enum case for DIPError.Code.baaCertificateDoesntExist(_:), v24);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_15:
    sub_10000BB78((v1 + 208));
    goto LABEL_5;
  }

  v17 = *(v1 + 80);
  *(v1 + 16) = *(v1 + 64);
  *(v1 + 32) = v17;
  *(v1 + 48) = *(v1 + 96);
  v18 = *(v13 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_supplementalDataFetcher);
  *(v1 + 768) = v18;
  if (!v18)
  {
    (*(*(v1 + 696) + 104))(*(v1 + 704), enum case for DIPError.Code.cannotBuildDeviceDataForAssessor(_:), *(v1 + 688));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1001B7154(v1 + 16);
    goto LABEL_15;
  }

  sub_10000BA08((v1 + 16), *(v1 + 40));

  dispatch thunk of IdentityKey.getIdentityPublicKeyData()();
  v25 = *(v1 + 512);
  HPKESuiteKwV1.init(pkISm:info:)();
  v26 = *(v25 + 120);

  v27 = IdentityProofingDocuments.nfc.getter();
  if (v27)
  {
    v28 = v27;
    v29 = IdentityDocument.mrz.getter();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = *(v1 + 680);
  v33 = *(v1 + 672);
  v34 = *(v1 + 664);
  v35 = *(v1 + 656);
  v36 = (v26 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportMRZ);
  *v36 = v29;
  v36[1] = v31;

  v37 = type metadata accessor for PDF417Data();
  (*(*(v37 - 8) + 56))(v35, 1, 1, v37);
  *(v1 + 312) = v34;
  *(v1 + 320) = &protocol witness table for HPKESuiteKwV1;
  v38 = sub_100032DBC((v1 + 288));
  (*(v33 + 16))(v38, v32, v34);
  v39 = swift_task_alloc();
  *(v1 + 776) = v39;
  *v39 = v1;
  v39[1] = sub_1001DBA74;
  v40 = *(v1 + 656);
  v41 = *(v1 + 480);

  return sub_100212598(v40, v41, v1 + 16, v1 + 208, v18, v1 + 288, 1, 0);
}

uint64_t sub_1001DBA74(uint64_t a1)
{
  v3 = *v2;
  v3[98] = a1;
  v3[99] = v1;

  sub_10000BE18(v3[82], &qword_10083D6A8, &qword_1006DB710);
  if (v1)
  {
    v4 = sub_1001DC5A8;
  }

  else
  {
    sub_10000BB78(v3 + 36);
    v4 = sub_1001DBBC4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001DBBC4()
{
  v73 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v69 = *(v0 + 504);
  v3 = sub_10000BA08((v0 + 208), *(v0 + 232));
  v5 = *v3;
  v4 = v3[1];
  v6 = type metadata accessor for TiberiusWrappedAssessment(0);
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);

  v66 = IdentityProofingConfiguration.productIdentifier.getter();
  v70 = v7;
  v8 = type metadata accessor for LivenessDataV2(0);
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  defaultLogger()();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 760);
  v13 = *(v0 + 728);
  v14 = *(v0 + 712);
  v68 = v5;
  if (v11)
  {
    v64 = *(v0 + 760);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v72 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_100141FE4(v5, v4, &v72);
    _os_log_impl(&_mh_execute_header, v9, v10, "Building and signing proofing request for workflow ID %{public}s", v15, 0xCu);
    sub_10000BB78(v16);

    v64(v13, v14);
  }

  else
  {

    v12(v13, v14);
  }

  v17 = *(*(v0 + 512) + 112);
  v18 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_identityKeyPair;
  swift_beginAccess();
  sub_10000BBC4(v17 + v18, v0 + 160, &qword_10083D4B8, &qword_1006DB470);
  v19 = *(v0 + 784);
  if (!*(v0 + 184))
  {
    v47 = *(v0 + 704);
    v48 = *(v0 + 696);
    v49 = *(v0 + 688);
    v50 = *(v0 + 600);
    v51 = *(v0 + 592);

    sub_10000BE18(v0 + 160, &qword_10083D4B8, &qword_1006DB470);
    (*(v48 + 104))(v47, enum case for DIPError.Code.internalError(_:), v49);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v51, &qword_100835E40, &qword_1006C49F8);
    sub_10000BE18(v50, &qword_100835E38, &qword_1006C49F0);
    goto LABEL_11;
  }

  v20 = *(v0 + 600);
  v21 = *(v0 + 592);
  v22 = *(v0 + 584);
  v23 = *(v0 + 568);
  v24 = *(v0 + 560);
  v25 = *(v0 + 552);
  v26 = *(v0 + 544);
  v62 = *(v0 + 536);
  v63 = *(v0 + 528);
  v65 = *(v0 + 520);
  v59 = *(v0 + 496);
  v60 = *(v0 + 512);
  v27 = *(v0 + 176);
  *(v0 + 112) = *(v0 + 160);
  *(v0 + 128) = v27;
  *(v0 + 144) = *(v0 + 192);
  sub_10000BBC4(v20, v22 + v23[9], &qword_100835E38, &qword_1006C49F0);
  sub_10000BBC4(v21, v22 + v23[15], &qword_100835E40, &qword_1006C49F8);

  UUID.init()();
  v28 = UUID.uuidString.getter();
  v30 = v29;
  (*(v25 + 8))(v24, v26);
  *v22 = 0;
  *(v22 + 8) = 0xE000000000000000;
  *(v22 + 16) = v28;
  *(v22 + 24) = v30;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *(v22 + 64) = 0u;
  *(v22 + 80) = v68;
  *(v22 + 88) = v4;
  *(v22 + 96) = 0;
  *(v22 + 104) = 0;
  *(v22 + 112) = v19;
  *(v22 + v23[10]) = 0;
  *(v22 + v23[11]) = 0;
  *(v22 + v23[12]) = _swiftEmptyArrayStorage;
  v31 = (v22 + v23[13]);
  *v31 = v59;
  v31[1] = v69;
  v32 = (v22 + v23[14]);
  *v32 = v66;
  v32[1] = v70;
  *(v22 + v23[16]) = 0;
  v33 = (v22 + v23[17]);
  *v33 = 0;
  v33[1] = 0;
  *(v22 + v23[18]) = xmmword_1006DB4E0;
  v34 = *(v60 + 16);
  v35 = *&v34[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8];
  *v22 = *&v34[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
  *(v22 + 8) = v35;
  sub_100020260(*&v34[OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession] + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager, v0 + 328);
  sub_10000BA08((v0 + 328), *(v0 + 352));
  v71 = v34;

  v67 = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
  v61 = v36;
  sub_10000BB78((v0 + 328));
  DeviceInformationProvider.init()();
  v37 = DeviceInformationProvider.uniqueDeviceID.getter();
  v39 = v38;
  (*(v63 + 8))(v62, v65);
  if (qword_100832D18 != -1)
  {
    swift_once();
  }

  v40 = *(v0 + 584);
  v41 = *(v0 + 576);
  v42 = xmmword_100882478;

  *(v22 + 32) = v67;
  *(v22 + 40) = v61;
  *(v22 + 48) = v37;
  *(v22 + 56) = v39;
  *(v22 + 64) = v42;
  sub_10021E958(v40, v41, type metadata accessor for IdentityProofingRequestV2);
  sub_10021E908(&qword_100836910, type metadata accessor for IdentityProofingRequestV2, &unk_1006C8488);
  sub_10021E908(&qword_100836918, type metadata accessor for IdentityProofingRequestV2, &unk_1006C8460);
  JWSSignedJSON.init(payload:)();
  JWSSignedJSON.setCertificateChain(_:)(*(v0 + 152));
  if (v43)
  {
    v44 = *(v0 + 600);
    v45 = *(v0 + 592);
    v46 = *(v0 + 584);
    (*(*(v0 + 616) + 8))(*(v0 + 640), *(v0 + 608));
    sub_10000BE18(v45, &qword_100835E40, &qword_1006C49F8);
    sub_10000BE18(v44, &qword_100835E38, &qword_1006C49F0);
    sub_10021EA28(v46, type metadata accessor for IdentityProofingRequestV2);
    sub_1001B7154(v0 + 112);
LABEL_11:
    v52 = *(v0 + 680);
    v53 = *(v0 + 672);
    v54 = *(v0 + 664);

    (*(v53 + 8))(v52, v54);
    sub_1001B7154(v0 + 16);
    sub_10000BB78((v0 + 208));

    v55 = *(v0 + 8);

    return v55();
  }

  JWSSignedJSON.setKid(_:)();
  v57 = swift_task_alloc();
  *(v0 + 800) = v57;
  *v57 = v0;
  v57[1] = sub_1001DC71C;
  v58 = *(v0 + 608);

  return JWSSignedJSON.sign(_:)(v0 + 112, v58);
}

uint64_t sub_1001DC5A8()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];

  (*(v2 + 8))(v1, v3);
  sub_1001B7154((v0 + 2));
  sub_10000BB78(v0 + 36);
  sub_10000BB78(v0 + 26);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001DC71C()
{
  *(*v1 + 808) = v0;

  if (v0)
  {
    v2 = sub_1001DCBB8;
  }

  else
  {
    v2 = sub_1001DC830;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001DC830()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v20 = *(v0 + 632);
  v21 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);
  v5 = *(v0 + 600);
  v6 = *(v0 + 584);
  v8 = *(v0 + 504);
  v7 = *(v0 + 512);
  v9 = *(v0 + 488);
  v19 = *(v0 + 496);
  sub_10000BE18(*(v0 + 592), &qword_100835E40, &qword_1006C49F8);
  sub_10000BE18(v5, &qword_100835E38, &qword_1006C49F0);
  sub_10021EA28(v6, type metadata accessor for IdentityProofingRequestV2);
  sub_1001B7154(v0 + 112);
  v10 = *(v3 + 32);
  v10(v1, v2, v4);
  v11 = *(v7 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_proofingDocuments);
  *(v7 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_proofingDocuments) = v9;
  v12 = v9;

  v13 = (v7 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_clientCreatedProofingSessionID);
  *v13 = v19;
  v13[1] = v8;

  (*(v3 + 16))(v20, v1, v4);
  sub_100020260(v0 + 208, v0 + 368);
  v14 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *(v0 + 816) = v15;
  *(v15 + 16) = v7;
  v10(v15 + v14, v20, v4);
  sub_10001F358((v0 + 368), v15 + ((v21 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));

  v16 = swift_task_alloc();
  *(v0 + 824) = v16;
  *v16 = v0;
  v16[1] = sub_1001DCA84;
  v17.n128_u64[0] = 20.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v17);
}

uint64_t sub_1001DCA84()
{
  *(*v1 + 832) = v0;

  if (v0)
  {
    v2 = sub_1001DCF30;
  }

  else
  {
    v2 = sub_1001DCDA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001DCBB8()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[73];
  (*(v0[77] + 8))(v0[80], v0[76]);
  sub_10000BE18(v2, &qword_100835E40, &qword_1006C49F8);
  sub_10000BE18(v1, &qword_100835E38, &qword_1006C49F0);
  sub_10021EA28(v3, type metadata accessor for IdentityProofingRequestV2);
  sub_1001B7154((v0 + 14));
  v4 = v0[85];
  v5 = v0[84];
  v6 = v0[83];

  (*(v5 + 8))(v4, v6);
  sub_1001B7154((v0 + 2));
  sub_10000BB78(v0 + 26);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001DCDA0()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[81];
  v5 = v0[77];
  v6 = v0[76];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_1001B7154((v0 + 2));
  sub_10000BB78(v0 + 26);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001DCF30()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[81];
  v5 = v0[77];
  v6 = v0[76];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_1001B7154((v0 + 2));
  sub_10000BB78(v0 + 26);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001DD0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = sub_100007224(&qword_10083DBF8, &unk_1006DB6A0);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_1001DD190, 0, 0);
}

uint64_t sub_1001DD190()
{
  v1 = v0[4];
  v2 = *(v0[2] + 16);
  v0[8] = v2;
  v3 = sub_10000BA08(v1, v1[3]);
  v5 = *v3;
  v4 = v3[1];
  v0[9] = v4;
  v2;

  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1001DD28C;
  v7 = v0[7];
  v8 = v0[3];

  return sub_1005E7B5C(v7, v8, v5, v4, 0, 2, 0x6E6F736D697263, 0xE700000000000000);
}

uint64_t sub_1001DD28C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1001DD434;
  }

  else
  {
    v4 = v2[8];
    (*(v2[6] + 8))(v2[7], v2[5]);

    v3 = sub_1001DD3D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001DD3D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001DD434()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001DD4A8()
{
  v1[9] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1001DD568, 0, 0);
}

uint64_t sub_1001DD568()
{
  v1 = v0[9];
  v2 = *(v1 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_clientCreatedProofingSessionID + 8);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_clientCreatedProofingSessionID);
    v4 = swift_allocObject();
    v0[13] = v4;
    v4[2] = v3;
    v4[3] = v2;
    v4[4] = v1;

    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_1001DD7D4;
    v6.n128_u64[0] = 20.0;

    return withTaskTimeoutHandler<A>(timeout:operation:)(v6);
  }

  else
  {
    (*(v0[11] + 104))(v0[12], enum case for DIPError.Code.proofingSessionIDUnavailable(_:), v0[10]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1001DD7D4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1001DD9B8;
  }

  else
  {

    v2 = sub_1001DD8F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001DD8F0()
{
  v1 = objc_allocWithZone(type metadata accessor for NFCPendingCommandsStatus());
  v2 = NFCPendingCommandsStatus.init(isReady:retryInterval:)();

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1001DD9B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001DDA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  v5 = type metadata accessor for UUID();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_1001DDAE8, 0, 0);
}

uint64_t sub_1001DDAE8()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];

  UUID.init()();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v2 + 8))(v1, v3);
  v10 = *(v4 + 16);
  v0[23] = v10;
  v11 = *&v10[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8];
  v0[2] = *&v10[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
  v0[3] = v11;
  v0[4] = v7;
  v0[5] = v9;
  v0[6] = 1;
  v0[7] = v6;
  v0[8] = v5;

  v10;
  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  v12[1] = sub_1001DDC20;

  return sub_1005E9738((v0 + 9), (v0 + 2));
}

uint64_t sub_1001DDC20()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1001DDDC4;
  }

  else
  {
    v4 = *(v2 + 184);
    sub_10021ECE4(v2 + 16);

    v3 = sub_1001DDD44;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001DDD44()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 88);
  v3 = *(v0 + 104);
  v4 = *(v0 + 128);
  *(v4 + 48) = *(v0 + 120);
  *(v4 + 16) = v2;
  *(v4 + 32) = v3;
  *v4 = v1;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001DDDC4()
{
  v1 = *(v0 + 184);
  sub_10021ECE4(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001DDE38(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1001DDF60, 0, 0);
}

uint64_t sub_1001DDF60()
{
  v1 = v0[24];
  v2 = *(v1 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_clientCreatedProofingSessionID + 8);
  if (v2)
  {
    v22 = *(v1 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_clientCreatedProofingSessionID);
    if (v0[23])
    {

      v3 = NFCPendingCommands.commandAPDUs.getter();
      v1 = v0[24];
    }

    else
    {

      v3 = 0;
    }

    v7 = v0[30];
    v6 = v0[31];
    v8 = v0[28];
    v9 = v0[29];
    UUID.init()();
    v10 = UUID.uuidString.getter();
    v20 = v11;
    v21 = v10;
    v12 = *(v9 + 8);
    v12(v6, v8);
    if (v3)
    {
      v13 = v3;
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }

    UUID.init()();
    v14 = UUID.uuidString.getter();
    v16 = v15;
    v12(v7, v8);
    v17 = *(v1 + 16);
    v0[32] = v17;
    v18 = *&v17[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8];
    v0[13] = *&v17[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
    v0[14] = v18;
    v0[15] = v14;
    v0[16] = v16;
    v0[17] = 1;
    v0[18] = v22;
    v0[19] = v2;
    v0[20] = v21;
    v0[21] = v20;
    v0[22] = v13;

    v17;
    v19 = swift_task_alloc();
    v0[33] = v19;
    *v19 = v0;
    v19[1] = sub_1001DE288;

    return sub_1005EB62C((v0 + 2), (v0 + 13));
  }

  else
  {
    (*(v0[26] + 104))(v0[27], enum case for DIPError.Code.proofingSessionIDUnavailable(_:), v0[25]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001DE288()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_1001DE4B8;
  }

  else
  {
    v4 = *(v2 + 256);
    sub_1000B1684(v2 + 104);

    v3 = sub_1001DE3AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001DE3AC()
{
  v1 = objc_allocWithZone(type metadata accessor for NFCPendingCommands());

  v2 = NFCPendingCommands.init(batchId:taskId:commandAPDUs:maxReadSize:)();
  sub_1000ACF44(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1001DE4B8()
{
  v1 = *(v0 + 256);
  sub_1000B1684(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001DE548()
{
  v1[2190] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[2191] = v2;
  v1[2192] = *(v2 - 8);
  v1[2193] = swift_task_alloc();
  v3 = type metadata accessor for Locale.Language();
  v1[2194] = v3;
  v1[2195] = *(v3 - 8);
  v1[2196] = swift_task_alloc();
  sub_100007224(&qword_10083DC48, &unk_1006DB7B0);
  v1[2197] = swift_task_alloc();
  v4 = type metadata accessor for Locale();
  v1[2198] = v4;
  v1[2199] = *(v4 - 8);
  v1[2200] = swift_task_alloc();
  v1[2201] = swift_task_alloc();
  sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  v1[2202] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[2203] = v5;
  v1[2204] = *(v5 - 8);
  v1[2205] = swift_task_alloc();
  v1[2206] = swift_task_alloc();
  v1[2207] = swift_task_alloc();
  v1[2208] = swift_task_alloc();

  return _swift_task_switch(sub_1001DE7BC, 0, 0);
}

uint64_t sub_1001DE7BC()
{
  v103 = v0;
  type metadata accessor for IdentityProofingImageQualitySettingsProvider();
  v1 = swift_allocObject();
  *(v0 + 17672) = v1;
  *(v1 + 16) = vdupq_n_s64(5uLL);
  *(v1 + 32) = 5;
  *(v1 + 40) = 1036831949;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v1 + 48) = JSONEncoder.init()();
  *(v1 + 56) = xmmword_1006DAFF0;
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4._countAndFlagsBits = static DaemonInternalDefaultsKeys.overrideImageQualitySettings.getter();
  v5 = NSUserDefaults.internalBool(forKey:)(v4);

  if (v5)
  {
    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Overriding workflow image quality settings, using internal settings.", v8, 2u);
    }

    v9 = *(v0 + 17664);
    v10 = *(v0 + 17632);
    v11 = *(v0 + 17624);

    (*(v10 + 8))(v9, v11);
    v100 = sub_1002BC714();

    v12 = *(v0 + 8);

    return v12(v100);
  }

  v14 = *(*(v0 + 17520) + 112);
  swift_beginAccess();
  sub_10000BBC4(v14 + 144, v0 + 17360, &qword_10083D0A0, &qword_1006DAFC0);
  v15 = *(v0 + 17384);
  if (v15)
  {
    v93 = v2;
    v16 = sub_10000BA08((v0 + 17360), v15);
    v17 = *(v15 - 8);
    v18 = swift_task_alloc();
    (*(v17 + 16))(v18, v16, v15);
    sub_10000BE18(v0 + 17360, &qword_10083D0A0, &qword_1006DAFC0);
    v99 = *v18;
    v19 = *(v17 + 8);
    v101 = v18[1];

    v19(v18, v15);

    v20 = [objc_opt_self() mainBundle];
    v21 = [v20 infoDictionary];

    if (!v21 || (v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v21, !v22))
    {
      v25 = 0xE700000000000000;
      v97 = 0x6E776F6E6B6E75;
      v98 = 0xE700000000000000;
      v95 = 0x6E776F6E6B6E75;
LABEL_15:
      v96 = v25;
      goto LABEL_27;
    }

    if (*(v22 + 16))
    {

      v23 = sub_10003ADCC(0xD000000000000011, 0x8000000100706F10);
      if (v24)
      {
        sub_10001F2EC(*(v22 + 56) + 32 * v23, v0 + 17400);

        if (swift_dynamicCast())
        {
          v97 = *(v0 + 17504);
          v98 = *(v0 + 17512);
LABEL_21:
          if (*(v22 + 16) && (v30 = sub_10003ADCC(0x656C646E75424643, 0xEF6E6F6973726556), (v31 & 1) != 0))
          {
            sub_10001F2EC(*(v22 + 56) + 32 * v30, v0 + 17432);

            if (swift_dynamicCast())
            {
              v95 = *(v0 + 17488);
              v25 = *(v0 + 17496);
              goto LABEL_15;
            }
          }

          else
          {
          }

          v95 = 0x6E776F6E6B6E75;
          v96 = 0xE700000000000000;
LABEL_27:
          v32 = *(v0 + 17616);
          v33 = *(v0 + 17608);
          v34 = *(v0 + 17592);
          v35 = *(v0 + 17584);
          static Locale.current.getter();
          Locale.region.getter();
          v36 = *(v34 + 8);
          v36(v33, v35);
          v37 = type metadata accessor for Locale.Region();
          v38 = *(v37 - 8);
          v39 = (*(v38 + 48))(v32, 1, v37);
          v40 = *(v0 + 17616);
          if (v39 == 1)
          {
            sub_10000BE18(*(v0 + 17616), &unk_100849BA0, &qword_1006D95F0);
            v91 = 0x6E776F6E6B6E75;
            v92 = 0xE700000000000000;
          }

          else
          {
            v91 = Locale.Region.identifier.getter();
            v92 = v41;
            (*(v38 + 8))(v40, v37);
          }

          v42 = (v0 + 17184);
          v43 = *(v0 + 17600);
          v44 = *(v0 + 17584);
          v45 = *(v0 + 17576);
          v46 = *(v0 + 17568);
          v47 = *(v0 + 17560);
          v48 = *(v0 + 17552);
          static Locale.current.getter();
          Locale.language.getter();
          v36(v43, v44);
          Locale.Language.languageCode.getter();
          (*(v47 + 8))(v46, v48);
          v49 = type metadata accessor for Locale.LanguageCode();
          v50 = *(v49 - 8);
          v51 = (*(v50 + 48))(v45, 1, v49);
          v52 = *(v0 + 17576);
          if (v51 == 1)
          {
            sub_10000BE18(*(v0 + 17576), &qword_10083DC48, &unk_1006DB7B0);
            v53 = 0xE700000000000000;
            v54 = 0x6E776F6E6B6E75;
          }

          else
          {
            v54 = Locale.LanguageCode.identifier.getter();
            v53 = v55;
            (*(v50 + 8))(v52, v49);
          }

          v56 = [v93 standardUserDefaults];
          v57._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceIMQModelBucket.getter();
          v58 = NSUserDefaults.internalString(forKey:)(v57);

          if (v58.value._object)
          {

            v59 = sub_100082140(v58.value);
            if (v59 != 4)
            {
              v67 = v59;
              v94 = v54;
              defaultLogger()();

              v75 = Logger.logObject.getter();
              v76 = static os_log_type_t.debug.getter();

              v77 = os_log_type_enabled(v75, v76);
              v78 = *(v0 + 17656);
              v79 = *(v0 + 17632);
              v90 = *(v0 + 17624);
              if (v77)
              {
                v88 = *(v0 + 17656);
                v80 = swift_slowAlloc();
                v89 = v53;
                v81 = swift_slowAlloc();
                v102 = v81;
                *v80 = 136315138;
                v82 = sub_100141FE4(v58.value._countAndFlagsBits, v58.value._object, &v102);

                *(v80 + 4) = v82;
                _os_log_impl(&_mh_execute_header, v75, v76, "Forcing imq profile bucket %s from internal settings", v80, 0xCu);
                sub_10000BB78(v81);
                v53 = v89;

                (*(v79 + 8))(v88, v90);
              }

              else
              {

                (*(v79 + 8))(v78, v90);
              }

              v54 = v94;
LABEL_47:
              v83 = *(v0 + 17520);
              *(v0 + 17272) = v99;
              *(v0 + 17280) = v101;
              *(v0 + 17288) = v97;
              *(v0 + 17296) = v98;
              *(v0 + 17304) = v95;
              *(v0 + 17312) = v96;
              *(v0 + 17320) = v91;
              *(v0 + 17328) = v92;
              *(v0 + 17336) = v54;
              *(v0 + 17344) = v53;
              *(v0 + 17352) = v67;
              *(v0 + 17264) = v67;
              v84 = *(v0 + 17320);
              *(v0 + 17216) = *(v0 + 17304);
              *(v0 + 17232) = v84;
              *(v0 + 17248) = *(v0 + 17336);
              v85 = *(v0 + 17288);
              *v42 = *(v0 + 17272);
              *(v0 + 17200) = v85;
              v86 = *(v83 + 16);
              *(v0 + 17680) = v86;
              v86;
              v87 = swift_task_alloc();
              *(v0 + 17688) = v87;
              *v87 = v0;
              v87[1] = sub_1001DF4B8;

              return sub_1005ECD74(v0 + 8600, v42);
            }
          }

          if (isInternalBuild()())
          {
            defaultLogger()();
            v60 = Logger.logObject.getter();
            v61 = static os_log_type_t.debug.getter();
            v62 = os_log_type_enabled(v60, v61);
            v63 = *(v0 + 17648);
            v64 = *(v0 + 17632);
            v65 = *(v0 + 17624);
            if (v62)
            {
              v66 = swift_slowAlloc();
              *v66 = 0;
              _os_log_impl(&_mh_execute_header, v60, v61, "Using internal build imq bucket", v66, 2u);
            }

            (*(v64 + 8))(v63, v65);
            v67 = 3;
          }

          else
          {
            defaultLogger()();
            v68 = Logger.logObject.getter();
            v69 = static os_log_type_t.debug.getter();
            v70 = os_log_type_enabled(v68, v69);
            v71 = *(v0 + 17640);
            v72 = *(v0 + 17632);
            v73 = *(v0 + 17624);
            if (v70)
            {
              v74 = swift_slowAlloc();
              *v74 = 0;
              _os_log_impl(&_mh_execute_header, v68, v69, "Using production imq bucket", v74, 2u);
            }

            (*(v72 + 8))(v71, v73);
            v67 = 1;
          }

          goto LABEL_47;
        }
      }

      else
      {
      }
    }

    v97 = 0x6E776F6E6B6E75;
    v98 = 0xE700000000000000;
    goto LABEL_21;
  }

  v26 = *(v0 + 17544);
  v27 = *(v0 + 17536);
  v28 = *(v0 + 17528);
  sub_10000BE18(v0 + 17360, &qword_10083D0A0, &qword_1006DAFC0);
  (*(v27 + 104))(v26, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v28);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1001DF4B8()
{
  v2 = *v1;
  *(v2 + 17696) = v0;

  v3 = *(v2 + 17680);
  if (v0)
  {

    sub_1000AFF90(v2 + 17272);
    v4 = sub_1001DF738;
  }

  else
  {
    sub_1000AFF90(v2 + 17272);

    v4 = sub_1001DF60C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001DF738()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001DF838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 1280) = v7;
  *(v8 + 1272) = a7;
  *(v8 + 1264) = a6;
  *(v8 + 458) = a5;
  *(v8 + 1256) = a4;
  *(v8 + 1248) = a3;
  *(v8 + 1240) = a2;
  *(v8 + 1232) = a1;
  v9 = type metadata accessor for DIPError();
  *(v8 + 1288) = v9;
  *(v8 + 1296) = *(v9 - 8);
  *(v8 + 1304) = swift_task_alloc();
  *(v8 + 1312) = swift_task_alloc();
  sub_100007224(&qword_100835E38, &qword_1006C49F0);
  *(v8 + 1320) = swift_task_alloc();
  *(v8 + 1328) = swift_task_alloc();
  sub_100007224(&qword_100836328, &unk_1006C51B0);
  *(v8 + 1336) = swift_task_alloc();
  *(v8 + 1344) = swift_task_alloc();
  v10 = type metadata accessor for PDF417Data();
  *(v8 + 1352) = v10;
  *(v8 + 1360) = *(v10 - 8);
  *(v8 + 1368) = swift_task_alloc();
  sub_100007224(&qword_10083D6A0, &unk_1006DB700);
  *(v8 + 1376) = swift_task_alloc();
  *(v8 + 1384) = swift_task_alloc();
  sub_100007224(&unk_10084A140, &unk_1006DB430);
  *(v8 + 1392) = swift_task_alloc();
  *(v8 + 1400) = swift_task_alloc();
  *(v8 + 1408) = swift_task_alloc();
  *(v8 + 1416) = swift_task_alloc();
  *(v8 + 1424) = swift_task_alloc();
  *(v8 + 1432) = swift_task_alloc();
  *(v8 + 1440) = swift_task_alloc();
  *(v8 + 1448) = swift_task_alloc();
  *(v8 + 1456) = swift_task_alloc();
  *(v8 + 1464) = swift_task_alloc();
  *(v8 + 1472) = swift_task_alloc();
  *(v8 + 1480) = swift_task_alloc();
  v11 = type metadata accessor for TiberiusWrappedAssessment(0);
  *(v8 + 1488) = v11;
  *(v8 + 1496) = *(v11 - 8);
  *(v8 + 1504) = swift_task_alloc();
  *(v8 + 1512) = swift_task_alloc();
  *(v8 + 1520) = swift_task_alloc();
  sub_100007224(&qword_100835E40, &qword_1006C49F8);
  *(v8 + 1528) = swift_task_alloc();
  sub_100007224(&qword_10083D6A8, &qword_1006DB710);
  *(v8 + 1536) = swift_task_alloc();
  *(v8 + 1544) = swift_task_alloc();
  *(v8 + 1552) = swift_task_alloc();
  *(v8 + 1560) = swift_task_alloc();
  *(v8 + 1568) = swift_task_alloc();
  v12 = type metadata accessor for HPKESuiteKwV1();
  *(v8 + 1576) = v12;
  *(v8 + 1584) = *(v12 - 8);
  *(v8 + 1592) = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  *(v8 + 1600) = swift_task_alloc();
  v13 = type metadata accessor for IdentityDocumentType.Category();
  *(v8 + 1608) = v13;
  *(v8 + 1616) = *(v13 - 8);
  *(v8 + 1624) = swift_task_alloc();
  *(v8 + 1632) = swift_task_alloc();
  *(v8 + 1640) = swift_task_alloc();
  *(v8 + 1648) = swift_task_alloc();
  v14 = type metadata accessor for DIPError.Code();
  *(v8 + 1656) = v14;
  *(v8 + 1664) = *(v14 - 8);
  *(v8 + 1672) = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  *(v8 + 1680) = v15;
  *(v8 + 1688) = *(v15 - 8);
  *(v8 + 1696) = swift_task_alloc();
  *(v8 + 1704) = swift_task_alloc();
  *(v8 + 1712) = swift_task_alloc();
  *(v8 + 1720) = swift_task_alloc();
  *(v8 + 1728) = swift_task_alloc();
  *(v8 + 1736) = swift_task_alloc();
  *(v8 + 1744) = swift_task_alloc();
  *(v8 + 1752) = swift_task_alloc();
  *(v8 + 1760) = swift_task_alloc();
  *(v8 + 1768) = swift_task_alloc();
  *(v8 + 1776) = swift_task_alloc();
  *(v8 + 1784) = swift_task_alloc();
  *(v8 + 1792) = swift_task_alloc();
  *(v8 + 1800) = swift_task_alloc();
  *(v8 + 1808) = swift_task_alloc();
  *(v8 + 1816) = swift_task_alloc();
  *(v8 + 1824) = swift_task_alloc();
  *(v8 + 1832) = swift_task_alloc();
  *(v8 + 1840) = swift_task_alloc();
  *(v8 + 1848) = swift_task_alloc();
  *(v8 + 1856) = swift_task_alloc();
  *(v8 + 1864) = swift_task_alloc();
  *(v8 + 1872) = swift_task_alloc();
  *(v8 + 1880) = swift_task_alloc();
  *(v8 + 1888) = swift_task_alloc();

  return _swift_task_switch(sub_1001DFF04, 0, 0);
}

uint64_t sub_1001DFF04(uint64_t a1)
{
  v27 = v1;
  v2 = v1[155];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[155];
    v7 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100141FE4(0xD000000000000069, 0x8000000100706280, v26);
    *(v7 + 12) = 2080;
    if (v6 && (v8 = IdentityProofingConfiguration.credentialIdentifier.getter(), v9))
    {
      v10 = v9;
    }

    else
    {

      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    v15 = v1[236];
    v16 = v1[211];
    v17 = v1[210];
    v18 = sub_100141FE4(v8, v10, v26);

    *(v7 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s , credentialIdentifier = %s", v7, 0x16u);
    swift_arrayDestroy();

    v14 = *(v16 + 8);
    v14(v15, v17);
  }

  else
  {
    v11 = v1[236];
    v12 = v1[211];
    v13 = v1[210];

    v14 = *(v12 + 8);
    v14(v11, v13);
  }

  v1[237] = v14;
  v19 = objc_opt_self();
  v1[238] = v19;
  v20 = [v19 standardUserDefaults];
  v21._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceProofingFailure.getter();
  v22 = NSUserDefaults.internalBool(forKey:)(v21);

  if (v22)
  {
    (*(v1[208] + 104))(v1[209], enum case for DIPError.Code.unableToAddID(_:), v1[207]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1001F3808();

    v23 = v1[1];

    return v23();
  }

  else
  {
    v25 = swift_task_alloc();
    v1[239] = v25;
    *v25 = v1;
    v25[1] = sub_1001E0638;

    return sub_10020861C();
  }
}

uint64_t sub_1001E0638()
{
  *(*v1 + 1920) = v0;

  if (v0)
  {
    v2 = sub_1001E1040;
  }

  else
  {
    v2 = sub_1001E074C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001E074C()
{
  v36 = v0;
  v1 = *(v0 + 1240);
  v2._object = 0x8000000100706230;
  v2._countAndFlagsBits = 0xD000000000000012;
  debugLogFootprint(_:)(v2);
  if (v1)
  {
    v3 = *(v0 + 1240);
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v35[0] = v7;
      *v6 = 136446210;
      v8 = stringsArrayFromIdentityProofingOptions();
      if (!v8)
      {
        __break(1u);
        return OS_dispatch_group.wait()();
      }

      v9 = v8;
      v33 = *(v0 + 1880);
      v34 = *(v0 + 1896);
      v10 = *(v0 + 1680);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = Array.description.getter();
      v13 = v12;

      v14 = sub_100141FE4(v11, v13, v35);

      *(v6 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v4, v5, "Proof identity called with proofing options: %{public}s", v6, 0xCu);
      sub_10000BB78(v7);

      v34(v33, v10);
    }

    else
    {
      v17 = *(v0 + 1896);
      v18 = *(v0 + 1880);
      v19 = *(v0 + 1680);

      v17(v18, v19);
    }

    v20 = *(v0 + 1280);
    v21 = *(v20 + 112);
    swift_beginAccess();
    sub_10000BBC4(v21 + 144, v0 + 752, &qword_10083D0A0, &qword_1006DAFC0);
    v22 = *(v0 + 776);
    sub_10000BE18(v0 + 752, &qword_10083D0A0, &qword_1006DAFC0);
    if (v22)
    {
      v23 = *(v20 + 112);
      swift_beginAccess();
      sub_10000BBC4(v23 + 144, v0 + 1032, &qword_10083D0A0, &qword_1006DAFC0);
      sub_10000BE18(v0 + 1032, &qword_10083D0A0, &qword_1006DAFC0);
      IdentityProofingConfiguration.documentType.getter();
      type metadata accessor for DaemonAnalytics();
      static DaemonAnalytics.sendDynamicWorkflowNeededEvent(providerID:wasFetchedInTime:didError:)();
    }

    else
    {
      defaultLogger()();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "The dynamic workflow is nil. Will attempt to refetch workflow", v26, 2u);
      }

      v27 = *(v0 + 1896);
      v28 = *(v0 + 1872);
      v29 = *(v0 + 1680);
      v30 = *(v0 + 1240);

      v27(v28, v29);

      sub_1001A6ED4(v30);
    }

    v31 = *(*(v20 + 112) + 104);
    *(v0 + 1928) = v31;
    v31;
    v32 = swift_task_alloc();
    *(v0 + 1936) = v32;
    *v32 = v0;
    v32[1] = sub_1001E141C;

    return OS_dispatch_group.wait()();
  }

  (*(*(v0 + 1664) + 104))(*(v0 + 1672), enum case for DIPError.Code.proofingConfigurationUnavailable(_:), *(v0 + 1656));
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_1001F3808();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1001E1040(uint64_t a1)
{
  sub_1001F3808();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1001E141C()
{
  v1 = *(*v0 + 1928);

  return _swift_task_switch(sub_1001E1530, 0, 0);
}

uint64_t sub_1001E1530()
{
  v169 = v0;
  v1 = *(*(v0 + 1280) + 112);
  if (*(v1 + 112))
  {
    v2 = *(v0 + 1240);
    (*(*(v0 + 1664) + 104))(*(v0 + 1672), enum case for DIPError.Code.internalError(_:), *(v0 + 1656));
    swift_errorRetain();
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

LABEL_20:
    sub_1001F3808();

    v32 = *(v0 + 8);

    return v32();
  }

  swift_beginAccess();
  sub_10000BBC4(v1 + 144, v0 + 952, &qword_10083D0A0, &qword_1006DAFC0);
  if (!*(v0 + 976))
  {
    v17 = *(v0 + 1672);
    v18 = *(v0 + 1664);
    v19 = *(v0 + 1656);
    v20 = *(v0 + 1240);
    sub_10000BE18(v0 + 952, &qword_10083D0A0, &qword_1006DAFC0);
    (*(v18 + 104))(v17, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v19);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_20;
  }

  sub_10001F358((v0 + 952), v0 + 992);
  v3 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_identityKeyPair;
  swift_beginAccess();
  sub_10000BBC4(v1 + v3, v0 + 704, &qword_10083D4B8, &qword_1006DB470);
  if (!*(v0 + 728))
  {
    v21 = *(v0 + 1672);
    v22 = *(v0 + 1664);
    v23 = *(v0 + 1656);
    v24 = *(v0 + 1240);
    sub_10000BE18(v0 + 704, &qword_10083D4B8, &qword_1006DB470);
    (*(v22 + 104))(v21, enum case for DIPError.Code.baaCertificateDoesntExist(_:), v23);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

LABEL_19:
    sub_10000BB78((v0 + 992));
    goto LABEL_20;
  }

  v4 = *(v0 + 720);
  *(v0 + 656) = *(v0 + 704);
  *(v0 + 672) = v4;
  *(v0 + 688) = *(v0 + 736);
  v5 = *(v1 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_supplementalDataFetcher);
  *(v0 + 1944) = v5;
  if (!v5)
  {
    v25 = *(v0 + 1240);
    (*(*(v0 + 1664) + 104))(*(v0 + 1672), enum case for DIPError.Code.cannotBuildDeviceDataForAssessor(_:), *(v0 + 1656));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

LABEL_18:
    sub_1001B7154(v0 + 656);
    goto LABEL_19;
  }

  v6 = *(v0 + 1648);
  v7 = *(v0 + 1640);
  v8 = *(v0 + 1616);
  v9 = *(v0 + 1608);
  v10 = *(v0 + 1280);
  v11 = *(*(v10 + 120) + 144);
  *(v0 + 1952) = v11;

  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  *(v0 + 460) = enum case for IdentityDocumentType.Category.mDL(_:);
  v12 = *(v8 + 104);
  *(v0 + 1960) = v12;
  *(v0 + 1968) = (v8 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v12(v7);
  v13 = static IdentityDocumentType.Category.== infix(_:_:)();
  v14 = *(v8 + 8);
  *(v0 + 1976) = v14;
  *(v0 + 1984) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v7, v9);
  v14(v6, v9);
  if ((v13 & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!v11)
  {
    v26 = *(v0 + 1240);
    (*(*(v0 + 1664) + 104))(*(v0 + 1672), enum case for DIPError.Code.odnNotInitialized(_:), *(v0 + 1656));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_18;
  }

  if (v11[13])
  {
    v15 = v11[12];
    v16 = v11[13];
  }

  else
  {
    v15 = v11[14];
    v16 = v11[15];
  }

  v27 = *(v0 + 1600);
  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v11;
  v29[5] = v15;
  v29[6] = v16;

  sub_1003E653C(0, 0, v27, &unk_1006E9F00, v29);

LABEL_16:
  v30 = *(v0 + 1920);
  sub_10000BA08((v0 + 656), *(v0 + 680));
  dispatch thunk of IdentityKey.getIdentityPublicKeyData()();
  if (v30)
  {
    v31 = *(v0 + 1240);

    goto LABEL_18;
  }

  v34 = *(v0 + 1592);
  v35 = *(v0 + 1584);
  v36 = *(v0 + 1576);
  v37 = *(v0 + 458);
  v38 = *(v0 + 1248);
  HPKESuiteKwV1.init(pkISm:info:)();
  *(v0 + 936) = v36;
  *(v0 + 944) = &protocol witness table for HPKESuiteKwV1;
  v39 = sub_100032DBC((v0 + 912));
  v40 = *(v35 + 16);
  *(v0 + 1992) = v40;
  *(v0 + 2000) = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v40(v39, v34, v36);

  sub_1001CABFC(v38, (v0 + 912), v37);
  *(v0 + 2008) = 0;
  v41 = *(v0 + 1568);
  v42 = *(v0 + 1280);

  sub_10000BB78((v0 + 912));
  v43 = *(v10 + 120);
  v44 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_pdf417Data;
  swift_beginAccess();
  sub_10000BBC4(v43 + v44, v41, &qword_10083D6A8, &qword_1006DB710);
  v45 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data;
  *(v0 + 2016) = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data;
  swift_beginAccess();
  sub_1000B2764(v41, v42 + v45, &qword_10083D6A8, &qword_1006DB710);
  swift_endAccess();
  sub_10000BBC4(v42 + v45, v41, &qword_10083D6A8, &qword_1006DB710);
  IdentityDocumentType.init(pdf417Data:)();
  if (v46)
  {
    IdentityProofingConfiguration.state.getter();
    if (v47)
    {
      IdentityProofingConfiguration.country.getter();
      if (v48)
      {
        v49 = sub_1005127B4();

        if (v49 != 6)
        {
          sub_10050E574(v49);
        }

        defaultLogger()();
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.debug.getter();
        v52 = os_log_type_enabled(v50, v51);
        v53 = *(v0 + 1896);
        v54 = *(v0 + 1864);
        v55 = *(v0 + 1680);
        if (v52)
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v168[0] = v57;
          *v56 = 136315138;
          *(v56 + 4) = sub_100141FE4(0x3E6C696E3CLL, 0xE500000000000000, v168);
          _os_log_impl(&_mh_execute_header, v50, v51, "IdentityProofingRequestManager got docSubType: %s from existing device pass", v56, 0xCu);
          sub_10000BB78(v57);
        }

        v53(v54, v55);
      }

      else
      {
      }
    }
  }

  v58 = *(v0 + 1896);
  v59 = *(v0 + 1856);
  v60 = *(v0 + 1688);
  v61 = *(v0 + 1680);
  v62 = *(v0 + 1256);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.rawValue.getter();
  IdentityDocumentType.rawValue.getter();
  defaultLogger()();
  Logger.sensitive(_:)();
  *(v0 + 2024) = (v60 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v58(v59, v61);
  v63 = sub_1005A0FE0();
  if ((v62 & 1) != 0 || (v63 & v62) != v63)
  {
    IdentityProofingConfiguration.accountKeyIdentifier.getter();
    if (v65)
    {

      v64 = 3;
    }

    else
    {
      v64 = 0;
    }
  }

  else
  {
    v64 = 2;
  }

  *(v0 + 459) = v64;
  IdentityProofingConfiguration.documentType.getter();
  v66 = IdentityDocumentType.rawValue.getter();
  if (v66 == IdentityDocumentType.rawValue.getter())
  {
    IdentityProofingConfiguration.piiTokenIdentifier.getter();
    if (v67)
    {
      if (qword_100832C20 != -1)
      {
        swift_once();
      }

      v68 = *(qword_100882228 + 16);
      *(v0 + 2032) = v68;
      v69 = v68;
      v70 = String._bridgeToObjectiveC()();
      *(v0 + 2040) = v70;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 457;
      *(v0 + 24) = sub_1001E306C;
      v71 = swift_continuation_init();
      *(v0 + 136) = sub_100007224(&qword_1008486C0, &unk_1006DAFB0);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_10058DEE8;
      *(v0 + 104) = &unk_10080AA98;
      *(v0 + 112) = v71;
      [v69 isPIITokenAvailableForIdentifier:v70 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }

    v64 = 0;
  }

  *(v0 + 521) = v64;
  v72 = IdentityProofingDocuments.frontID.getter();
  if (v72)
  {
    v73 = v72;
    v167 = IdentityDocument.scanMetrics.getter();
  }

  else
  {
    v167 = 0;
  }

  v74 = IdentityProofingDocuments.backID.getter();
  if (v74)
  {
    v75 = v74;
    v163 = IdentityDocument.scanMetrics.getter();
  }

  else
  {
    v163 = 0;
  }

  v76 = IdentityProofingDocuments.frontID.getter();
  if (v76)
  {
    v77 = v76;
    v78 = IdentityDocument.imageMetrics.getter();
  }

  else
  {
    v78 = 0;
  }

  v79 = IdentityProofingDocuments.backID.getter();
  if (v79)
  {
    v80 = v79;
    v165 = IdentityDocument.imageMetrics.getter();
  }

  else
  {
    v165 = 0;
  }

  v81 = IdentityProofingDocuments.selfie.getter();
  if (v81)
  {
    v82 = v81;
    v162 = IdentityDocument.imageMetrics.getter();
  }

  else
  {
    v162 = 0;
  }

  v83 = IdentityProofingDocuments.liveness.getter();
  if (v83)
  {
    v84 = v83;
    v161 = IdentityLivenessResults.activeMetrics.getter();
  }

  else
  {
    v161 = 0;
  }

  v85 = IdentityProofingDocuments.liveness.getter();
  if (v85)
  {
    v86 = v85;
    v87 = IdentityLivenessResults.passiveMetrics.getter();
  }

  else
  {
    v87 = 0;
  }

  v88 = IdentityProofingDocuments.nfc.getter();
  if (v88)
  {
    v89 = v88;
    v90 = IdentityDocument.imageMetrics.getter();
  }

  else
  {
    v90 = 0;
  }

  v91 = *(v0 + 2008);
  v158 = *(v0 + 1528);
  v159 = *(v0 + 1240);
  v160 = *(v0 + 1256);
  *(v0 + 2056) = sub_1002B0020(v167, v163, v78, v165, v162, v161, v87, v90);

  v92 = IdentityProofingDocuments.liveness.getter();
  sub_1002BFF90(v92, v158);

  v93 = sub_10020442C(v159, v160);
  if (v91)
  {
    v94 = *(v0 + 1592);
    v95 = *(v0 + 1584);
    v96 = *(v0 + 1576);
    v97 = *(v0 + 1528);
    v98 = *(v0 + 1240);

    sub_10000BE18(v97, &qword_100835E40, &qword_1006C49F8);
    (*(v95 + 8))(v94, v96);
    sub_1001B7154(v0 + 656);
    sub_10000BB78((v0 + 992));
    goto LABEL_20;
  }

  if (v93)
  {
    defaultLogger()();
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&_mh_execute_header, v99, v100, "Preparing proofing request for Async Step Up.", v101, 2u);
    }

    v102 = *(v0 + 1896);
    v103 = *(v0 + 1848);
    v104 = *(v0 + 1680);
    v105 = *(v0 + 1256);
    v106 = *(v0 + 1240);

    v102(v103, v104);
    sub_1002094C0(v106, v105);
    *(v0 + 2064) = v107;
    *(v0 + 2072) = v108;
    v118 = *(*(*(v0 + 1280) + 120) + 128);
    *(v0 + 2080) = v118;
    v118;
    v119 = swift_task_alloc();
    *(v0 + 2088) = v119;
    *v119 = v0;
    v119[1] = sub_1001E3E74;

    return OS_dispatch_group.wait()();
  }

  v109 = *(v0 + 1976);
  v110 = *(v0 + 1960);
  v111 = *(v0 + 460);
  v112 = *(v0 + 1648);
  v113 = *(v0 + 1640);
  v114 = *(v0 + 1608);
  *(v0 + 1224) = &_swiftEmptyDictionarySingleton;
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v110(v113, v111, v114);
  v115 = static IdentityDocumentType.Category.== infix(_:_:)();
  v109(v113, v114);
  v109(v112, v114);
  v116 = _swiftEmptyArrayStorage;
  if (v115)
  {
    v117 = sub_1005A0C74();
    if (v117)
    {
      v120 = v117;
    }

    else
    {
      v120 = _swiftEmptyArrayStorage;
    }

    v116 = sub_1001D2AC4(v120);

    defaultLogger()();
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.debug.getter();
    v123 = os_log_type_enabled(v121, v122);
    v124 = *(v0 + 1896);
    v125 = *(v0 + 1816);
    v126 = *(v0 + 1680);
    if (v123)
    {
      v127 = swift_slowAlloc();
      v166 = v124;
      v128 = swift_slowAlloc();
      v168[0] = v128;
      *v127 = 136315138;

      v164 = v125;
      v129 = Array.description.getter();
      v131 = v130;

      v132 = sub_100141FE4(v129, v131, v168);

      *(v127 + 4) = v132;
      _os_log_impl(&_mh_execute_header, v121, v122, "PAC Signatures: %s", v127, 0xCu);
      sub_10000BB78(v128);

      v166(v164, v126);
    }

    else
    {

      v124(v125, v126);
    }
  }

  *(v0 + 2200) = v116;
  *(v0 + 1216) = _swiftEmptyArrayStorage;
  v133 = IdentityProofingConfiguration.credentialIdentifier.getter();
  if (v134)
  {
    v135 = v133;
    v136 = v134;
    v137 = HIBYTE(v134) & 0xF;
    if ((v134 & 0x2000000000000000) == 0)
    {
      v137 = v133 & 0xFFFFFFFFFFFFLL;
    }

    if (v137)
    {
      v138 = *(v0 + 1672);
      v139 = *(v0 + 1664);
      v140 = *(v0 + 1656);
      v141 = *(v0 + 1512);
      v142 = *(v0 + 1488);
      (*(v139 + 104))(v138, enum case for DIPError.Code.odnNoAssessmentAvailableForWatch(_:), v140);
      v143 = DIPError.Code.rawValue.getter();
      (*(v139 + 8))(v138, v140);
      LOBYTE(v168[0]) = 1;
      v144 = *(v142 + 32);
      v145 = type metadata accessor for AssessmentAdditionalInfo(0);
      (*(*(v145 - 8) + 56))(v141 + v144, 1, 1, v145);
      *(v141 + 48) = 0u;
      *(v141 + 64) = 0u;
      *(v141 + 16) = 0u;
      *(v141 + 32) = 0u;
      *v141 = 0u;
      *(v141 + 80) = v143;
      *(v141 + 88) = 0;
      *(v141 + 96) = 1;
      *(v141 + 104) = 0u;
      *(v141 + 120) = 0u;
      *(v141 + 136) = 2;
      *(v141 + 144) = 0;
      *(v141 + 152) = 0;
      *(v0 + 2304) = v136;
      *(v0 + 2296) = v135;
      v146 = *(v0 + 1280);
      v147 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier;
      *(v0 + 2312) = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier;
      v148 = (v146 + v147);
      *v148 = v135;
      v148[1] = v136;

      *(v0 + 2320) = *(v146 + 72);
      v149 = qword_100832C20;

      if (v149 != -1)
      {
        swift_once();
      }

      v150 = qword_100882228;
      *(v0 + 2328) = qword_100882228;
      v151 = *(v150 + 16);
      *(v0 + 2336) = v151;
      v152 = v151;
      v153 = swift_task_alloc();
      *(v0 + 2344) = v153;
      *v153 = v0;
      v153[1] = sub_1001E7310;

      return sub_10021A4D8(v135, v136, v152);
    }
  }

  *(v0 + 2208) = *(*(v0 + 1280) + 72);
  v154 = qword_100832C20;

  if (v154 != -1)
  {
    swift_once();
  }

  v155 = *(qword_100882228 + 16);
  *(v0 + 2216) = v155;
  v156 = v155;
  v157 = swift_task_alloc();
  *(v0 + 2224) = v157;
  *v157 = v0;
  v157[1] = sub_1001E61AC;

  return sub_100206178(1, v156);
}

uint64_t sub_1001E306C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 2048) = v1;
  if (v1)
  {
    v2 = sub_1001EF978;
  }

  else
  {
    v2 = sub_1001E317C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001E317C()
{
  v104 = v0;
  v1 = *(v0 + 2040);
  v2 = *(v0 + 459);

  v3 = *(v0 + 457);
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 521) = v4;
  v5 = IdentityProofingDocuments.frontID.getter();
  if (v5)
  {
    v6 = v5;
    v7 = IdentityDocument.scanMetrics.getter();
  }

  else
  {
    v7 = 0;
  }

  v8 = IdentityProofingDocuments.backID.getter();
  if (v8)
  {
    v9 = v8;
    v102 = IdentityDocument.scanMetrics.getter();
  }

  else
  {
    v102 = 0;
  }

  v10 = IdentityProofingDocuments.frontID.getter();
  if (v10)
  {
    v11 = v10;
    v100 = IdentityDocument.imageMetrics.getter();
  }

  else
  {
    v100 = 0;
  }

  v12 = IdentityProofingDocuments.backID.getter();
  if (v12)
  {
    v13 = v12;
    v98 = IdentityDocument.imageMetrics.getter();
  }

  else
  {
    v98 = 0;
  }

  v14 = IdentityProofingDocuments.selfie.getter();
  if (v14)
  {
    v15 = v14;
    v97 = IdentityDocument.imageMetrics.getter();
  }

  else
  {
    v97 = 0;
  }

  v16 = IdentityProofingDocuments.liveness.getter();
  if (v16)
  {
    v17 = v16;
    v96 = IdentityLivenessResults.activeMetrics.getter();
  }

  else
  {
    v96 = 0;
  }

  v18 = IdentityProofingDocuments.liveness.getter();
  if (v18)
  {
    v19 = v18;
    v20 = IdentityLivenessResults.passiveMetrics.getter();
  }

  else
  {
    v20 = 0;
  }

  v21 = IdentityProofingDocuments.nfc.getter();
  if (v21)
  {
    v22 = v21;
    v23 = IdentityDocument.imageMetrics.getter();
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v0 + 2008);
  v93 = *(v0 + 1528);
  v94 = *(v0 + 1240);
  v95 = *(v0 + 1256);
  *(v0 + 2056) = sub_1002B0020(v7, v102, v100, v98, v97, v96, v20, v23);

  v25 = IdentityProofingDocuments.liveness.getter();
  sub_1002BFF90(v25, v93);

  v26 = sub_10020442C(v94, v95);
  if (v24)
  {
    v27 = *(v0 + 1592);
    v28 = *(v0 + 1584);
    v29 = *(v0 + 1576);
    v30 = *(v0 + 1528);
    v31 = *(v0 + 1240);

    sub_10000BE18(v30, &qword_100835E40, &qword_1006C49F8);
    (*(v28 + 8))(v27, v29);
    sub_1001B7154(v0 + 656);
    sub_10000BB78((v0 + 992));
    sub_1001F3808();

    v32 = *(v0 + 8);

    return v32();
  }

  if (v26)
  {
    defaultLogger()();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Preparing proofing request for Async Step Up.", v36, 2u);
    }

    v37 = *(v0 + 1896);
    v38 = *(v0 + 1848);
    v39 = *(v0 + 1680);
    v40 = *(v0 + 1256);
    v41 = *(v0 + 1240);

    v37(v38, v39);
    sub_1002094C0(v41, v40);
    *(v0 + 2064) = v42;
    *(v0 + 2072) = v43;
    v53 = *(*(*(v0 + 1280) + 120) + 128);
    *(v0 + 2080) = v53;
    v53;
    v54 = swift_task_alloc();
    *(v0 + 2088) = v54;
    *v54 = v0;
    v54[1] = sub_1001E3E74;

    return OS_dispatch_group.wait()();
  }

  v44 = *(v0 + 1976);
  v45 = *(v0 + 1960);
  v46 = *(v0 + 460);
  v47 = *(v0 + 1648);
  v48 = *(v0 + 1640);
  v49 = *(v0 + 1608);
  *(v0 + 1224) = &_swiftEmptyDictionarySingleton;
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v45(v48, v46, v49);
  v50 = static IdentityDocumentType.Category.== infix(_:_:)();
  v44(v48, v49);
  v44(v47, v49);
  v51 = _swiftEmptyArrayStorage;
  if (v50)
  {
    v52 = sub_1005A0C74();
    if (v52)
    {
      v55 = v52;
    }

    else
    {
      v55 = _swiftEmptyArrayStorage;
    }

    v51 = sub_1001D2AC4(v55);

    defaultLogger()();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    v58 = os_log_type_enabled(v56, v57);
    v59 = *(v0 + 1896);
    v60 = *(v0 + 1816);
    v61 = *(v0 + 1680);
    if (v58)
    {
      v62 = swift_slowAlloc();
      v101 = v59;
      v63 = swift_slowAlloc();
      v103[0] = v63;
      *v62 = 136315138;

      v99 = v60;
      v64 = Array.description.getter();
      v66 = v65;

      v67 = sub_100141FE4(v64, v66, v103);

      *(v62 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v56, v57, "PAC Signatures: %s", v62, 0xCu);
      sub_10000BB78(v63);

      v101(v99, v61);
    }

    else
    {

      v59(v60, v61);
    }
  }

  *(v0 + 2200) = v51;
  *(v0 + 1216) = _swiftEmptyArrayStorage;
  v68 = IdentityProofingConfiguration.credentialIdentifier.getter();
  if (v69)
  {
    v70 = v68;
    v71 = v69;
    v72 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v72 = v68 & 0xFFFFFFFFFFFFLL;
    }

    if (v72)
    {
      v73 = *(v0 + 1672);
      v74 = *(v0 + 1664);
      v75 = *(v0 + 1656);
      v76 = *(v0 + 1512);
      v77 = *(v0 + 1488);
      (*(v74 + 104))(v73, enum case for DIPError.Code.odnNoAssessmentAvailableForWatch(_:), v75);
      v78 = DIPError.Code.rawValue.getter();
      (*(v74 + 8))(v73, v75);
      LOBYTE(v103[0]) = 1;
      v79 = *(v77 + 32);
      v80 = type metadata accessor for AssessmentAdditionalInfo(0);
      (*(*(v80 - 8) + 56))(v76 + v79, 1, 1, v80);
      *(v76 + 48) = 0u;
      *(v76 + 64) = 0u;
      *(v76 + 16) = 0u;
      *(v76 + 32) = 0u;
      *v76 = 0u;
      *(v76 + 80) = v78;
      *(v76 + 88) = 0;
      *(v76 + 96) = 1;
      *(v76 + 104) = 0u;
      *(v76 + 120) = 0u;
      *(v76 + 136) = 2;
      *(v76 + 144) = 0;
      *(v76 + 152) = 0;
      *(v0 + 2304) = v71;
      *(v0 + 2296) = v70;
      v81 = *(v0 + 1280);
      v82 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier;
      *(v0 + 2312) = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier;
      v83 = (v81 + v82);
      *v83 = v70;
      v83[1] = v71;

      *(v0 + 2320) = *(v81 + 72);
      v84 = qword_100832C20;

      if (v84 != -1)
      {
        swift_once();
      }

      v85 = qword_100882228;
      *(v0 + 2328) = qword_100882228;
      v86 = *(v85 + 16);
      *(v0 + 2336) = v86;
      v87 = v86;
      v88 = swift_task_alloc();
      *(v0 + 2344) = v88;
      *v88 = v0;
      v88[1] = sub_1001E7310;

      return sub_10021A4D8(v70, v71, v87);
    }
  }

  *(v0 + 2208) = *(*(v0 + 1280) + 72);
  v89 = qword_100832C20;

  if (v89 != -1)
  {
    swift_once();
  }

  v90 = *(qword_100882228 + 16);
  *(v0 + 2216) = v90;
  v91 = v90;
  v92 = swift_task_alloc();
  *(v0 + 2224) = v92;
  *v92 = v0;
  v92[1] = sub_1001E61AC;

  return sub_100206178(1, v91);
}

uint64_t sub_1001E3E74()
{
  v1 = *(*v0 + 2080);

  return _swift_task_switch(sub_1001E3F88, 0, 0);
}

uint64_t sub_1001E3F88()
{
  v1 = v0[249];
  v2 = v0[243];
  v3 = v0[199];
  v4 = v0[197];
  v5 = v0[155];
  (*(v0[170] + 56))(v0[195], 1, 1, v0[169]);
  v0[112] = v4;
  v0[113] = &protocol witness table for HPKESuiteKwV1;
  v6 = sub_100032DBC(v0 + 109);
  v1(v6, v3, v4);
  v7 = swift_task_alloc();
  v0[262] = v7;
  *v7 = v0;
  v7[1] = sub_1001E40AC;
  v8 = v0[195];
  v9 = v0[157];

  return sub_100212598(v8, v5, (v0 + 82), (v0 + 124), v2, (v0 + 109), 4, v9);
}

uint64_t sub_1001E40AC(uint64_t a1)
{
  v3 = *v2;
  v3[263] = a1;
  v3[264] = v1;

  sub_10000BE18(v3[195], &qword_10083D6A8, &qword_1006DB710);
  if (v1)
  {

    v4 = sub_1001E529C;
  }

  else
  {
    sub_10000BB78(v3 + 109);
    v4 = sub_1001E421C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001E421C(uint64_t a1)
{
  v2 = *(v1 + 460);
  v3 = *(v1 + 1632);
  v4 = *(v1 + 1616);
  v5 = *(v1 + 1608);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v6 = (*(v4 + 88))(v3, v5);
  if (v6 == v2)
  {
    if (*(v1 + 1952))
    {
      v7 = *(v1 + 1552);
      v8 = *(v1 + 1360);
      v9 = *(v1 + 1352);
      sub_10000BBC4(*(v1 + 1280) + *(v1 + 2016), v7, &qword_10083D6A8, &qword_1006DB710);
      v10 = (*(v8 + 48))(v7, 1, v9);
      v11 = *(v1 + 1552);
      v12 = *(v1 + 1384);
      if (v10)
      {

        sub_10000BE18(v11, &qword_10083D6A8, &qword_1006DB710);
        v13 = type metadata accessor for PDF417ParsedData();
        (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
      }

      else
      {
        v43 = *(v1 + 1368);
        v44 = *(v1 + 1360);
        v45 = *(v1 + 1352);
        (*(v44 + 16))(v43, *(v1 + 1552), v45);

        sub_10000BE18(v11, &qword_10083D6A8, &qword_1006DB710);
        PDF417Data.parsedData.getter();
        (*(v44 + 8))(v43, v45);
      }

      v46 = *(v1 + 1944);
      v47 = *(v1 + 1480);
      v48 = *(v1 + 1384);
      v49 = IdentityProofingConfiguration.country.getter();
      v51 = v50;

      sub_100531168(v48, v49, v51, v46, v47);

      sub_10000BE18(v48, &qword_10083D6A0, &unk_1006DB700);
      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v52 = *(v1 + 1480);
    v53 = *(v1 + 1472);
    v54 = type metadata accessor for ODNAssessmentResult(0);
    v55 = *(v54 - 8);
    (*(v55 + 56))(v52, v29, 1, v54);
    sub_10000BBC4(v52, v53, &unk_10084A140, &unk_1006DB430);
    v56 = *(v55 + 48);
    v57 = v56(v53, 1, v54);
    v58 = *(v1 + 1472);
    if (v57 == 1)
    {
      sub_10000BE18(*(v1 + 1472), &unk_10084A140, &unk_1006DB430);
      v117 = 0;
      v118 = 0;
    }

    else
    {
      v117 = *(v58 + 64);
      v118 = *(v58 + 56);

      sub_10021EA28(v58, type metadata accessor for ODNAssessmentResult);
    }

    v59 = *(v1 + 1464);
    sub_10000BBC4(*(v1 + 1480), v59, &unk_10084A140, &unk_1006DB430);
    v60 = v56(v59, 1, v54);
    v61 = *(v1 + 1464);
    if (v60 == 1)
    {
      sub_10000BE18(*(v1 + 1464), &unk_10084A140, &unk_1006DB430);
      v111 = 0u;
      v114 = 0u;
      v106 = 0u;
      v109 = 0u;
    }

    else
    {
      v62 = *(v61 + 152);
      v63 = *(v61 + 168);
      v64 = *(v61 + 200);
      *(v1 + 240) = *(v61 + 184);
      *(v1 + 256) = v64;
      *(v1 + 208) = v62;
      *(v1 + 224) = v63;
      sub_10000BBC4(v1 + 208, v1 + 144, &qword_100835770, &qword_1006C1AD0);
      sub_10021EA28(v61, type metadata accessor for ODNAssessmentResult);
      v111 = *(v1 + 224);
      v114 = *(v1 + 208);
      v106 = *(v1 + 256);
      v109 = *(v1 + 240);
    }

    v65 = *(v1 + 1456);
    sub_10000BBC4(*(v1 + 1480), v65, &unk_10084A140, &unk_1006DB430);
    v66 = v56(v65, 1, v54);
    v67 = *(v1 + 1456);
    if (v66 == 1)
    {
      sub_10000BE18(*(v1 + 1456), &unk_10084A140, &unk_1006DB430);
      v105 = 0;
      v68 = 0;
      v69 = 0;
      v103 = 0u;
      v104 = 0u;
      v70 = 1;
    }

    else
    {
      v71 = *(v67 + 88);
      v72 = *(v67 + 104);
      v73 = *(v67 + 120);
      *(v1 + 569) = *(v67 + 129);
      *(v1 + 544) = v72;
      *(v1 + 560) = v73;
      *(v1 + 528) = v71;
      sub_10000BBC4(v1 + 528, v1 + 464, &qword_100835768, &qword_1006DB770);
      sub_10021EA28(v67, type metadata accessor for ODNAssessmentResult);
      v103 = *(v1 + 544);
      v104 = *(v1 + 528);
      v70 = *(v1 + 560);
      v68 = *(v1 + 568);
      v105 = *(v1 + 576);
      v69 = *(v1 + 584);
    }

    v74 = *(v1 + 1448);
    sub_10000BBC4(*(v1 + 1480), v74, &unk_10084A140, &unk_1006DB430);
    v75 = v56(v74, 1, v54);
    v76 = *(v1 + 1448);
    if (v75 == 1)
    {
      sub_10000BE18(*(v1 + 1448), &unk_10084A140, &unk_1006DB430);
      v77 = 0;
      v78 = 0;
    }

    else
    {
      v77 = *(v76 + 216);
      v78 = *(v76 + 224);

      sub_10021EA28(v76, type metadata accessor for ODNAssessmentResult);
    }

    v79 = *(v1 + 1440);
    sub_1000B1FC8(*(v1 + 1480), v79, &unk_10084A140, &unk_1006DB430);
    v80 = v56(v79, 1, v54);
    v81 = *(v1 + 1440);
    v82 = *(v1 + 1344);
    if (v80 == 1)
    {
      sub_10000BE18(v81, &unk_10084A140, &unk_1006DB430);
      v83 = type metadata accessor for AssessmentAdditionalInfo(0);
      (*(*(v83 - 8) + 56))(v82, 1, 1, v83);
    }

    else
    {
      v84 = *(v54 + 44);
      v85 = *(v1 + 1440);
      sub_10000BBC4(v81 + v84, *(v1 + 1344), &qword_100836328, &unk_1006C51B0);
      sub_10021EA28(v85, type metadata accessor for ODNAssessmentResult);
    }

    v86 = *(v1 + 1520);
    v87 = *(v1 + 1488);
    v88 = *(v1 + 1344);
    *v86 = v118;
    *(v86 + 8) = v117;
    *(v86 + 16) = v114;
    *(v86 + 32) = v111;
    *(v86 + 48) = v109;
    *(v86 + 64) = v106;
    *(v86 + 80) = v104;
    *(v86 + 96) = v103;
    *(v86 + 112) = v70;
    *(v86 + 120) = v68;
    *(v86 + 128) = v105;
    *(v86 + 136) = v69;
    *(v86 + 144) = v77;
    *(v86 + 152) = v78;
    sub_1000B1FC8(v88, v86 + *(v87 + 32), &qword_100836328, &unk_1006C51B0);
LABEL_37:
    v89 = *(v1 + 2056);
    v90 = *(v1 + 1520);
    v91 = *(v1 + 1496);
    v92 = *(v1 + 1488);
    v93 = *(v1 + 1328);
    v94 = sub_10000BA08((v1 + 992), *(v1 + 1016));
    v95 = *v94;
    v96 = v94[1];
    *(v1 + 2160) = v96;
    sub_10021E958(v90, v93, type metadata accessor for TiberiusWrappedAssessment);
    (*(v91 + 56))(v93, 0, 1, v92);

    IdentityProofingConfiguration.productIdentifier.getter();
    *(v1 + 2168) = v97;
    IdentityProofingConfiguration.accountKeyIdentifier.getter();
    *(v1 + 2176) = v98;
    v99 = swift_task_alloc();
    *(v1 + 2184) = v99;
    *v99 = v1;
    v99[1] = sub_1001E5B40;
    v100 = *(v1 + 2104);
    v101 = *(v1 + 1328);
    v102 = *(v1 + 1232);

    return sub_1001FD70C(v102, v95, v96, v100, v101, 0, v89, _swiftEmptyArrayStorage);
  }

  if (v6 == enum case for IdentityDocumentType.Category.passport(_:))
  {
    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "deviceConfidenceAssessment: Crimson ILSU", v16, 2u);
    }

    v17 = *(v1 + 1896);
    v18 = *(v1 + 1840);
    v19 = *(v1 + 1680);
    v20 = *(v1 + 1280);

    v17(v18, v19);
    *(v1 + 2120) = *(v20 + 120);

    v21 = swift_task_alloc();
    *(v1 + 2128) = v21;
    *v21 = v1;
    v21[1] = sub_1001E56EC;

    return sub_1001CFA4C();
  }

  else
  {
    if (v6 != enum case for IdentityDocumentType.Category.unknown(_:))
    {
      defaultLogger()();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "deviceConfidenceAssessment: unknown", v32, 2u);
      }

      v116 = *(v1 + 1976);
      v33 = *(v1 + 1896);
      v34 = *(v1 + 1824);
      v35 = *(v1 + 1680);
      v36 = *(v1 + 1672);
      v37 = *(v1 + 1664);
      v38 = *(v1 + 1656);
      v113 = *(v1 + 1632);
      v110 = *(v1 + 1608);
      v39 = *(v1 + 1520);
      v108 = *(v1 + 1488);

      v33(v34, v35);
      (*(v37 + 104))(v36, enum case for DIPError.Code.odnErrorUnsupportedDocType(_:), v38);
      v40 = DIPError.Code.rawValue.getter();
      (*(v37 + 8))(v36, v38);
      v41 = *(v108 + 32);
      v42 = type metadata accessor for AssessmentAdditionalInfo(0);
      (*(*(v42 - 8) + 56))(v39 + v41, 1, 1, v42);
      *(v39 + 48) = 0u;
      *(v39 + 64) = 0u;
      *(v39 + 16) = 0u;
      *(v39 + 32) = 0u;
      *v39 = 0u;
      *(v39 + 80) = v40;
      *(v39 + 88) = 0;
      *(v39 + 96) = 1;
      *(v39 + 104) = 0u;
      *(v39 + 120) = 0u;
      *(v39 + 136) = 2;
      *(v39 + 144) = 0;
      *(v39 + 152) = 0;
      v116(v113, v110);
      goto LABEL_37;
    }

    v23 = *(v1 + 1672);
    v24 = *(v1 + 1664);
    v25 = *(v1 + 1656);
    v115 = *(v1 + 1592);
    v26 = *(v1 + 1584);
    v112 = *(v1 + 1576);
    v107 = *(v1 + 1528);
    v27 = *(v1 + 1240);

    (*(v24 + 104))(v23, enum case for DIPError.Code.unexpectedIDType(_:), v25);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BE18(v107, &qword_100835E40, &qword_1006C49F8);
    (*(v26 + 8))(v115, v112);
    sub_1001B7154(v1 + 656);
    sub_10000BB78((v1 + 992));
    sub_1001F3808();

    v28 = *(v1 + 8);

    return v28();
  }
}

uint64_t sub_1001E529C()
{
  v1 = v0[199];
  v2 = v0[198];
  v3 = v0[197];
  v4 = v0[191];
  v5 = v0[155];

  sub_10000BE18(v4, &qword_100835E40, &qword_1006C49F8);
  (*(v2 + 8))(v1, v3);
  sub_1001B7154((v0 + 82));
  sub_10000BB78(v0 + 109);
  sub_10000BB78(v0 + 124);
  sub_1001F3808();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001E56EC(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[267] = a1;
  v5[268] = v2;

  if (v2)
  {

    v6 = sub_1001EFDC0;
  }

  else
  {
    v5[269] = a2;
    v6 = sub_1001E5864;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001E5864(uint64_t a1)
{
  v2 = v1[269];
  v3 = v1[267];
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "deviceConfidenceAssessment: <present>", v7, 2u);
    }

    v8 = v1[237];
    v9 = v1[229];
    v10 = v1[210];

    v8(v9, v10);
    v3 = v1[267];
  }

  v11 = v1[190];
  v12 = *(v1[186] + 32);
  v13 = type metadata accessor for AssessmentAdditionalInfo(0);
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  *v11 = v3;
  *(v11 + 8) = v2;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 120) = 0;
  *(v11 + 128) = 0;
  *(v11 + 112) = 1;
  *(v11 + 136) = 0;
  *(v11 + 144) = 0;
  *(v11 + 152) = 0;
  v14 = v1[257];
  v15 = v1[190];
  v16 = v1[187];
  v17 = v1[186];
  v18 = v1[166];
  v19 = sub_10000BA08(v1 + 124, v1[127]);
  v20 = *v19;
  v21 = v19[1];
  v1[270] = v21;
  sub_10021E958(v15, v18, type metadata accessor for TiberiusWrappedAssessment);
  (*(v16 + 56))(v18, 0, 1, v17);

  IdentityProofingConfiguration.productIdentifier.getter();
  v1[271] = v22;
  IdentityProofingConfiguration.accountKeyIdentifier.getter();
  v1[272] = v23;
  v24 = swift_task_alloc();
  v1[273] = v24;
  *v24 = v1;
  v24[1] = sub_1001E5B40;
  v25 = v1[263];
  v26 = v1[166];
  v27 = v1[154];

  return sub_1001FD70C(v27, v20, v21, v25, v26, 0, v14, _swiftEmptyArrayStorage);
}

uint64_t sub_1001E5B40()
{
  v2 = *v1;
  *(*v1 + 2192) = v0;

  sub_10000BE18(*(v2 + 1328), &qword_100835E38, &qword_1006C49F0);

  if (v0)
  {
    v3 = sub_1001F0208;
  }

  else
  {
    v3 = sub_1001E5D44;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001E5D44()
{
  v1 = v0[199];
  v2 = v0[198];
  v3 = v0[197];
  v4 = v0[191];
  v5 = v0[190];
  v6 = v0[155];

  sub_10021EA28(v5, type metadata accessor for TiberiusWrappedAssessment);
  sub_10000BE18(v4, &qword_100835E40, &qword_1006C49F8);
  (*(v2 + 8))(v1, v3);
  sub_1001B7154((v0 + 82));
  sub_10000BB78(v0 + 124);
  sub_1001F3808();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001E61AC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[279] = a1;
  v5[280] = a2;
  v5[281] = v2;

  v6 = v4[277];
  if (v2)
  {

    v7 = sub_1001F0670;
  }

  else
  {

    v7 = sub_1001E6328;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001E6328()
{
  v1 = *(v0 + 2240);
  v2 = *(v0 + 460);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1616);
  v5 = *(v0 + 1608);
  v6 = (*(v0 + 1280) + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier);
  *v6 = *(v0 + 2232);
  v6[1] = v1;

  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v7 = (*(v4 + 88))(v3, v5);
  if (v7 == v2)
  {
    if (*(v0 + 1952))
    {
      v8 = *(v0 + 1544);
      v9 = *(v0 + 1360);
      v10 = *(v0 + 1352);
      sub_10000BBC4(*(v0 + 1280) + *(v0 + 2016), v8, &qword_10083D6A8, &qword_1006DB710);
      v11 = (*(v9 + 48))(v8, 1, v10);
      v12 = *(v0 + 1544);
      v13 = *(v0 + 1376);
      if (v11)
      {

        sub_10000BE18(v12, &qword_10083D6A8, &qword_1006DB710);
        v14 = type metadata accessor for PDF417ParsedData();
        (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
      }

      else
      {
        v38 = *(v0 + 1368);
        v39 = *(v0 + 1360);
        v40 = *(v0 + 1352);
        (*(v39 + 16))(v38, *(v0 + 1544), v40);

        sub_10000BE18(v12, &qword_10083D6A8, &qword_1006DB710);
        PDF417Data.parsedData.getter();
        (*(v39 + 8))(v38, v40);
      }

      v41 = *(v0 + 1944);
      v42 = *(v0 + 1432);
      v43 = *(v0 + 1376);
      v44 = IdentityProofingConfiguration.country.getter();
      v46 = v45;

      sub_100531168(v43, v44, v46, v41, v42);

      sub_10000BE18(v43, &qword_10083D6A0, &unk_1006DB700);
      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v47 = *(v0 + 1432);
    v48 = *(v0 + 1424);
    v49 = type metadata accessor for ODNAssessmentResult(0);
    v50 = *(v49 - 8);
    (*(v50 + 56))(v47, v37, 1, v49);
    sub_10000BBC4(v47, v48, &unk_10084A140, &unk_1006DB430);
    v51 = *(v50 + 48);
    v52 = v51(v48, 1, v49);
    v53 = *(v0 + 1424);
    if (v52 == 1)
    {
      sub_10000BE18(*(v0 + 1424), &unk_10084A140, &unk_1006DB430);
      v115 = 0;
      v116 = 0;
    }

    else
    {
      v115 = *(v53 + 64);
      v116 = *(v53 + 56);

      sub_10021EA28(v53, type metadata accessor for ODNAssessmentResult);
    }

    v54 = *(v0 + 1416);
    sub_10000BBC4(*(v0 + 1432), v54, &unk_10084A140, &unk_1006DB430);
    v55 = v51(v54, 1, v49);
    v56 = *(v0 + 1416);
    if (v55 == 1)
    {
      sub_10000BE18(*(v0 + 1416), &unk_10084A140, &unk_1006DB430);
      v111 = 0u;
      v113 = 0u;
      v107 = 0u;
      v109 = 0u;
    }

    else
    {
      v57 = *(v56 + 152);
      v58 = *(v56 + 168);
      v59 = *(v56 + 200);
      *(v0 + 368) = *(v56 + 184);
      *(v0 + 384) = v59;
      *(v0 + 336) = v57;
      *(v0 + 352) = v58;
      sub_10000BBC4(v0 + 336, v0 + 272, &qword_100835770, &qword_1006C1AD0);
      sub_10021EA28(v56, type metadata accessor for ODNAssessmentResult);
      v111 = *(v0 + 352);
      v113 = *(v0 + 336);
      v107 = *(v0 + 384);
      v109 = *(v0 + 368);
    }

    v60 = *(v0 + 1408);
    sub_10000BBC4(*(v0 + 1432), v60, &unk_10084A140, &unk_1006DB430);
    v61 = v51(v60, 1, v49);
    v62 = *(v0 + 1408);
    if (v61 == 1)
    {
      sub_10000BE18(*(v0 + 1408), &unk_10084A140, &unk_1006DB430);
      v106 = 0;
      v63 = 0;
      v64 = 0;
      v104 = 0u;
      v105 = 0u;
      v65 = 1;
    }

    else
    {
      v66 = *(v62 + 88);
      v67 = *(v62 + 104);
      v68 = *(v62 + 120);
      *(v0 + 441) = *(v62 + 129);
      *(v0 + 416) = v67;
      *(v0 + 432) = v68;
      *(v0 + 400) = v66;
      sub_10000BBC4(v0 + 400, v0 + 592, &qword_100835768, &qword_1006DB770);
      sub_10021EA28(v62, type metadata accessor for ODNAssessmentResult);
      v104 = *(v0 + 416);
      v105 = *(v0 + 400);
      v65 = *(v0 + 432);
      v106 = *(v0 + 440);
      v63 = *(v0 + 448);
      v64 = *(v0 + 456);
    }

    v117 = v1;
    v69 = *(v0 + 1400);
    sub_10000BBC4(*(v0 + 1432), v69, &unk_10084A140, &unk_1006DB430);
    v70 = v51(v69, 1, v49);
    v71 = *(v0 + 1400);
    if (v70 == 1)
    {
      sub_10000BE18(*(v0 + 1400), &unk_10084A140, &unk_1006DB430);
      v72 = 0;
      v73 = 0;
    }

    else
    {
      v72 = *(v71 + 216);
      v73 = *(v71 + 224);

      sub_10021EA28(v71, type metadata accessor for ODNAssessmentResult);
    }

    v74 = *(v0 + 1392);
    sub_10000BBC4(*(v0 + 1432), v74, &unk_10084A140, &unk_1006DB430);
    v75 = v51(v74, 1, v49);
    v76 = *(v0 + 1392);
    v77 = *(v0 + 1336);
    if (v75 == 1)
    {
      sub_10000BE18(v76, &unk_10084A140, &unk_1006DB430);
      v78 = type metadata accessor for AssessmentAdditionalInfo(0);
      (*(*(v78 - 8) + 56))(v77, 1, 1, v78);
    }

    else
    {
      v79 = *(v49 + 44);
      v80 = *(v0 + 1392);
      sub_10000BBC4(v76 + v79, *(v0 + 1336), &qword_100836328, &unk_1006C51B0);
      sub_10021EA28(v80, type metadata accessor for ODNAssessmentResult);
    }

    v81 = *(v0 + 1512);
    v82 = *(v0 + 1504);
    v83 = *(v0 + 1488);
    v84 = *(v0 + 1336);
    *v82 = v116;
    *(v82 + 8) = v115;
    *(v82 + 16) = v113;
    *(v82 + 32) = v111;
    *(v82 + 48) = v109;
    *(v82 + 64) = v107;
    *(v82 + 80) = v105;
    *(v82 + 96) = v104;
    *(v82 + 112) = v65;
    *(v82 + 120) = v106;
    *(v82 + 128) = v63;
    *(v82 + 136) = v64;
    *(v82 + 144) = v72;
    *(v82 + 152) = v73;
    sub_1000B1FC8(v84, v82 + *(v83 + 32), &qword_100836328, &unk_1006C51B0);
    sub_10021E9C0(v82, v81, type metadata accessor for TiberiusWrappedAssessment);
    if (*(v81 + 8))
    {
      defaultLogger()();
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.debug.getter();
      v87 = os_log_type_enabled(v85, v86);
      v88 = *(v0 + 1896);
      v89 = *(v0 + 1808);
      v90 = *(v0 + 1680);
      v91 = *(v0 + 1432);
      v92 = v117;
      if (v87)
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&_mh_execute_header, v85, v86, "deviceConfidenceAssessment: <present>", v93, 2u);
      }

      v88(v89, v90);
      sub_10000BE18(v91, &unk_10084A140, &unk_1006DB430);
      goto LABEL_38;
    }

    sub_10000BE18(*(v0 + 1432), &unk_10084A140, &unk_1006DB430);
LABEL_37:
    v92 = v117;
LABEL_38:
    v94 = *(v0 + 2240);
    v95 = *(v0 + 2232);
    *(v0 + 2304) = v94;
    *(v0 + 2296) = v95;
    v96 = *(v0 + 1280);
    v97 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier;
    *(v0 + 2312) = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier;
    v98 = (v96 + v97);
    *v98 = v95;
    v98[1] = v92;

    *(v0 + 2320) = *(v96 + 72);
    v99 = qword_100832C20;

    if (v99 != -1)
    {
      swift_once();
    }

    v100 = qword_100882228;
    *(v0 + 2328) = qword_100882228;
    v101 = *(v100 + 16);
    *(v0 + 2336) = v101;
    v102 = v101;
    v103 = swift_task_alloc();
    *(v0 + 2344) = v103;
    *v103 = v0;
    v103[1] = sub_1001E7310;

    return sub_10021A4D8(v95, v94, v102);
  }

  if (v7 != enum case for IdentityDocumentType.Category.passport(_:))
  {
    v117 = v1;
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "deviceConfidenceAssessment: unknown", v26, 2u);
    }

    v114 = *(v0 + 1976);
    v27 = *(v0 + 1896);
    v28 = *(v0 + 1784);
    v29 = *(v0 + 1680);
    v30 = *(v0 + 1672);
    v31 = *(v0 + 1664);
    v32 = *(v0 + 1656);
    v112 = *(v0 + 1624);
    v110 = *(v0 + 1608);
    v33 = *(v0 + 1512);
    v108 = *(v0 + 1488);

    v27(v28, v29);
    (*(v31 + 104))(v30, enum case for DIPError.Code.odnErrorUnsupportedDocType(_:), v32);
    v34 = DIPError.Code.rawValue.getter();
    (*(v31 + 8))(v30, v32);
    v35 = *(v108 + 32);
    v36 = type metadata accessor for AssessmentAdditionalInfo(0);
    (*(*(v36 - 8) + 56))(v33 + v35, 1, 1, v36);
    *(v33 + 48) = 0u;
    *(v33 + 64) = 0u;
    *(v33 + 16) = 0u;
    *(v33 + 32) = 0u;
    *v33 = 0u;
    *(v33 + 80) = v34;
    *(v33 + 88) = 0;
    *(v33 + 96) = 1;
    *(v33 + 104) = 0u;
    *(v33 + 120) = 0u;
    *(v33 + 136) = 2;
    *(v33 + 144) = 0;
    *(v33 + 152) = 0;
    v114(v112, v110);
    goto LABEL_37;
  }

  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "deviceConfidenceAssessment: Crimson", v17, 2u);
  }

  v18 = *(v0 + 1896);
  v19 = *(v0 + 1800);
  v20 = *(v0 + 1680);
  v21 = *(v0 + 1280);

  v18(v19, v20);
  *(v0 + 2256) = *(v21 + 120);

  v22 = swift_task_alloc();
  *(v0 + 2264) = v22;
  *v22 = v0;
  v22[1] = sub_1001E6F20;

  return sub_1001CFA4C();
}

uint64_t sub_1001E6F20(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[284] = a1;
  v5[285] = v2;

  if (v2)
  {

    v6 = sub_1001F0AC4;
  }

  else
  {

    v5[286] = a2;
    v6 = sub_1001E7090;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001E7090(uint64_t a1)
{
  v2 = v1[286];
  v3 = v1[284];
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "deviceConfidenceAssessment: <present>", v7, 2u);
    }

    v8 = v1[237];
    v9 = v1[224];
    v10 = v1[210];

    v8(v9, v10);
    v3 = v1[284];
  }

  v11 = v1[189];
  v12 = *(v1[186] + 32);
  v13 = type metadata accessor for AssessmentAdditionalInfo(0);
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  *v11 = v3;
  *(v11 + 8) = v2;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 120) = 0;
  *(v11 + 128) = 0;
  *(v11 + 112) = 1;
  *(v11 + 136) = 0;
  *(v11 + 144) = 0;
  *(v11 + 152) = 0;
  v14 = v1[280];
  v15 = v1[279];
  v1[288] = v14;
  v1[287] = v15;
  v16 = v1[160];
  v17 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier;
  v1[289] = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier;
  v18 = (v16 + v17);
  *v18 = v15;
  v18[1] = v14;

  v1[290] = *(v16 + 72);
  v19 = qword_100832C20;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_100882228;
  v1[291] = qword_100882228;
  v21 = *(v20 + 16);
  v1[292] = v21;
  v22 = v21;
  v23 = swift_task_alloc();
  v1[293] = v23;
  *v23 = v1;
  v23[1] = sub_1001E7310;

  return sub_10021A4D8(v15, v14, v22);
}

uint64_t sub_1001E7310(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 2352) = a1;
  *(v4 + 2360) = v1;

  v5 = *(v3 + 2336);
  if (v1)
  {

    v6 = sub_1001E8010;
  }

  else
  {

    v6 = sub_1001E7494;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001E7494(uint64_t a1)
{
  v65 = v1;
  v2 = v1[294];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[294];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully generated key signing key for phone : %@.", v7, 0xCu);
    sub_10000BE18(v8, &unk_100833B50, &unk_1006D8FB0);
  }

  v10 = v1[294];
  v11 = v1[237];
  v12 = v1[222];
  v13 = v1[210];

  v11(v12, v13);
  v14._countAndFlagsBits = 0x6266346138663430;
  v15._object = 0x8000000100706360;
  v14._object = 0xE800000000000000;
  v15._countAndFlagsBits = 0xD000000000000020;
  logMilestone(tag:description:)(v14, v15);
  v16 = [v10 attestation];
  if (!v16)
  {
    v38 = v1[209];
    v39 = v1[208];
    v40 = v1[207];
    v61 = v1[199];
    v41 = v1[198];
    v57 = v1[294];
    v59 = v1[197];
    v56 = v1[191];
    v62 = v1[189];
    v55 = v1[155];

    (*(v39 + 104))(v38, enum case for DIPError.Code.internalError(_:), v40);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BE18(v56, &qword_100835E40, &qword_1006C49F8);
    (*(v41 + 8))(v61, v59);
    goto LABEL_9;
  }

  v17 = v16;
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v1[296] = v18;

  defaultLogger()();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  v21 = os_log_type_enabled(v19, v20);
  v22 = v1[237];
  v23 = v1[221];
  v24 = v1[210];
  if (!v21)
  {

    v22(v23, v24);
    v30 = v1[157];
    if (v30)
    {
      goto LABEL_6;
    }

LABEL_13:
    if ((v30 & 2) != 0)
    {
      v1[321] = *(v1[160] + 40);
      v46 = swift_task_alloc();
      v1[322] = v46;
      *v46 = v1;
      v46[1] = sub_1001EAAB4;

      return sub_1004B1A60();
    }

    else
    {

      v44 = *(*(v1[160] + 120) + 128);
      v1[364] = v44;
      v44;
      v45 = swift_task_alloc();
      v1[365] = v45;
      *v45 = v1;
      v45[1] = sub_1001EE834;

      return OS_dispatch_group.wait()();
    }
  }

  v25 = swift_slowAlloc();
  v63 = v22;
  v26 = swift_slowAlloc();
  v64[0] = v26;
  *v25 = 136315138;
  v27 = Array.description.getter();
  v29 = sub_100141FE4(v27, v28, v64);

  *(v25 + 4) = v29;
  _os_log_impl(&_mh_execute_header, v19, v20, "kakCertificates created for phone : %s", v25, 0xCu);
  sub_10000BB78(v26);

  v63(v23, v24);
  v30 = v1[157];
  if ((v30 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v31 = v1[295];
  v32 = v1[294];

  v1[297] = sub_1002AB8D4(v32, v1 + 82);
  v1[298] = v33;
  if (v31)
  {
    v34 = v1[294];
    v35 = v1[198];
    v58 = v1[197];
    v60 = v1[199];
    v36 = v1[191];
    v62 = v1[189];
    v37 = v1[155];

    sub_10000BE18(v36, &qword_100835E40, &qword_1006C49F8);
    (*(v35 + 8))(v60, v58);
LABEL_9:
    sub_10021EA28(v62, type metadata accessor for TiberiusWrappedAssessment);
    sub_1001B7154((v1 + 82));

    sub_10000BB78(v1 + 124);
    sub_1001F3808();

    v42 = v1[1];

    return v42();
  }

  v47 = Data.base64EncodedString(options:)(0);
  v48 = v1[87];

  v49 = sub_1003C5E7C(0, 1, 1, _swiftEmptyArrayStorage);
  v51 = *(v49 + 2);
  v50 = *(v49 + 3);
  if (v51 >= v50 >> 1)
  {
    v49 = sub_1003C5E7C((v50 > 1), v51 + 1, 1, v49);
  }

  v1[299] = v49;
  v52 = v1[160];
  *(v49 + 2) = v51 + 1;
  v53 = &v49[32 * v51];
  v53[2] = v47;
  v53[3]._countAndFlagsBits = v18;
  v53[3]._object = v48;
  v1[152] = v49;
  v1[300] = *(v52 + 72);

  v54 = swift_task_alloc();
  v1[301] = v54;
  *v54 = v1;
  v54[1] = sub_1001E8484;

  return sub_1002A9EAC();
}

uint64_t sub_1001E8010()
{
  v1 = v0[199];
  v2 = v0[198];
  v3 = v0[197];
  v4 = v0[191];
  v5 = v0[189];
  v6 = v0[155];

  sub_10000BE18(v4, &qword_100835E40, &qword_1006C49F8);
  (*(v2 + 8))(v1, v3);
  sub_10021EA28(v5, type metadata accessor for TiberiusWrappedAssessment);
  sub_1001B7154((v0 + 82));

  sub_10000BB78(v0 + 124);
  sub_1001F3808();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001E8484(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[302] = a1;
  v4[303] = a2;
  v4[304] = v2;

  if (v2)
  {

    v5 = sub_1001F0F18;
  }

  else
  {

    v5 = sub_1001E8608;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001E8608()
{
  v0[305] = *(v0[160] + 72);

  v1 = swift_task_alloc();
  v0[306] = v1;
  *v1 = v0;
  v1[1] = sub_1001E86AC;

  return sub_1002AA438();
}

uint64_t sub_1001E86AC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[307] = a1;
  v4[308] = a2;
  v4[309] = v2;

  if (v2)
  {

    v5 = sub_1001F13B0;
  }

  else
  {

    v5 = sub_1001E8830;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001E8830()
{
  v1 = v0[243];
  OS_dispatch_group.wait()();
  v2 = *(v1 + 128);
  if (v2)
  {
    v3 = *(v1 + 120);
    v4 = v0[308];

    v7 = Data.base16EncodedString()();
    object = v7._object;
    countAndFlagsBits = v7._countAndFlagsBits;
    if (v4 >> 60 == 15)
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      v17 = v0[308];
      v18 = v0[307];
      sub_10000B8B8(v18, v17);
      v19 = Data.base16EncodedString()();
      v8 = v19._countAndFlagsBits;
      v9 = v19._object;
      sub_10000BD94(v18, v17);
      object = v7._object;
      countAndFlagsBits = v7._countAndFlagsBits;
    }

    v20 = v0[296];
    v21 = v0[155];
    v22 = (v0[160] + v0[289]);
    sub_10014C730(countAndFlagsBits, object, v8, v9, v3, v2);
    v24 = *v22;
    v23 = v22[1];
    v0[310] = v23;

    v25 = swift_task_alloc();
    v0[311] = v25;
    *v25 = v0;
    v25[1] = sub_1001E8FAC;

    return sub_1001F3C70(v21, (v0 + 82), v24, v23, v20);
  }

  else
  {
    v34 = v0[308];
    v28 = v0[303];
    v29 = v0[298];
    v26 = v0[302];
    v27 = v0[297];
    v31 = v0[294];
    v32 = v0[307];
    v10 = v0[209];
    v11 = v0[208];
    v12 = v0[207];
    v35 = v0[199];
    v13 = v0[198];
    v33 = v0[197];
    v30 = v0[191];
    v36 = v0[189];
    v14 = v0[155];

    (*(v11 + 104))(v10, enum case for DIPError.Code.unexpectedDeviceState(_:), v12);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v26, v28);
    sub_10000B90C(v27, v29);

    sub_10000BD94(v32, v34);

    sub_10000BE18(v30, &qword_100835E40, &qword_1006C49F8);
    (*(v13 + 8))(v35, v33);
    sub_10021EA28(v36, type metadata accessor for TiberiusWrappedAssessment);
    sub_1001B7154((v0 + 82));

    sub_10000BB78(v0 + 124);
    sub_1001F3808();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1001E8FAC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2496) = v1;

  if (v1)
  {
    swift_bridgeObjectRelease_n();

    v5 = sub_1001F185C;
  }

  else
  {
    *(v4 + 2504) = a1;
    v5 = sub_1001E9134;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001E9134()
{
  sub_10031CAA4(*(v0 + 2504));
  v1 = sub_10000BA08((v0 + 992), *(v0 + 1016));
  v2 = type metadata accessor for Workflow(0);
  *(v0 + 2512) = v2;
  v3 = *(v1 + *(v2 + 176));
  if (v3 == 2 || (v3 & 1) == 0)
  {
    v32 = *(v0 + 2424);
    v33 = *(v0 + 2416);
    v34 = *(v0 + 2384);
    v35 = *(v0 + 2376);
    sub_10000BD94(*(v0 + 2456), *(v0 + 2464));
    sub_10000B90C(v33, v32);
    sub_10000B90C(v35, v34);
    if ((*(v0 + 1256) & 2) != 0)
    {
LABEL_20:
      *(v0 + 2568) = *(*(v0 + 1280) + 40);
      v52 = swift_task_alloc();
      *(v0 + 2576) = v52;
      *v52 = v0;
      v52[1] = sub_1001EAAB4;

      return sub_1004B1A60();
    }

    goto LABEL_13;
  }

  v4 = *(v0 + 1280);
  v5 = (*(v4 + 120) + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportHash);
  v6 = *v5;
  *(v0 + 2520) = *v5;
  v7 = v5[1];
  *(v0 + 2528) = v7;
  if (v7 >> 60 == 15)
  {
    (*(*(v0 + 1664) + 104))(*(v0 + 1672), enum case for DIPError.Code.failedToStoreHashIsNil(_:), *(v0 + 1656));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    defaultLogger()();
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "(Non terminal error): Failed to store PII hash on phone with error: %@", v10, 0xCu);
      sub_10000BE18(v11, &unk_100833B50, &unk_1006D8FB0);
    }

    v13 = *(v0 + 1896);
    v14 = *(v0 + 1712);
    v15 = *(v0 + 1680);
    v16 = *(v0 + 1672);
    v17 = *(v0 + 1664);
    v18 = *(v0 + 1656);
    v62 = *(v0 + 2512);

    v13(v14, v15);
    (*(v17 + 104))(v16, enum case for DIPError.Code.internalError(_:), v18);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v19 = *(sub_10000BA08((v0 + 992), *(v0 + 1016)) + *(v62 + 180));
    if (v19 != 2 && (v19 & 1) != 0 || (v20 = [*(v0 + 1904) standardUserDefaults], v21._countAndFlagsBits = static SharedInternalDefaultsKeys.makeDeviceCrossCheckErrorsTerminal.getter(), v22 = NSUserDefaults.internalBool(forKey:)(v21), , v20, v22))
    {
      v23 = *(v0 + 2416);
      v55 = *(v0 + 2384);
      v53 = *(v0 + 2424);
      v54 = *(v0 + 2376);
      v57 = *(v0 + 2352);
      v58 = *(v0 + 2464);
      v56 = *(v0 + 2456);
      v24 = *(v0 + 1584);
      v63 = *(v0 + 1576);
      v65 = *(v0 + 1592);
      v60 = *(v0 + 1528);
      v67 = *(v0 + 1512);
      v25 = *(v0 + 1312);
      v26 = *(v0 + 1296);
      v27 = *(v0 + 1288);
      v28 = *(v0 + 1240);

      swift_allocError();
      (*(v26 + 16))(v29, v25, v27);
      swift_willThrow();

      sub_10000B90C(v23, v53);
      sub_10000B90C(v54, v55);

      sub_10000BD94(v56, v58);

      (*(v26 + 8))(v25, v27);
      sub_10000BE18(v60, &qword_100835E40, &qword_1006C49F8);
      (*(v24 + 8))(v65, v63);
      sub_10021EA28(v67, type metadata accessor for TiberiusWrappedAssessment);
      sub_1001B7154(v0 + 656);

      sub_10000BB78((v0 + 992));
      sub_1001F3808();

      v30 = *(v0 + 8);

      return v30();
    }

    v44 = *(v0 + 2424);
    v45 = *(v0 + 2416);
    v46 = *(v0 + 2376);
    v68 = *(v0 + 2464);
    v64 = *(v0 + 2456);
    v66 = *(v0 + 1896);
    v47 = *(v0 + 1856);
    v59 = *(v0 + 2384);
    v61 = *(v0 + 1680);
    v48 = *(v0 + 1312);
    v49 = *(v0 + 1296);
    v50 = *(v0 + 1288);
    swift_allocError();
    (*(v49 + 16))(v51, v48, v50);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    sub_10000B90C(v45, v44);
    sub_10000B90C(v46, v59);

    sub_10000BD94(v64, v68);
    v66(v47, v61);
    (*(v49 + 8))(v48, v50);

    if ((*(v0 + 1256) & 2) != 0)
    {
      goto LABEL_20;
    }

LABEL_13:

    v36 = *(*(*(v0 + 1280) + 120) + 128);
    *(v0 + 2912) = v36;
    v36;
    v37 = swift_task_alloc();
    *(v0 + 2920) = v37;
    *v37 = v0;
    v37[1] = sub_1001EE834;

    return OS_dispatch_group.wait()();
  }

  v38 = *(v0 + 2328);
  *(v0 + 2536) = *(v4 + 72);
  v39 = *(v38 + 16);
  *(v0 + 2544) = v39;

  sub_1000363B4(v6, v7);

  v40 = v39;
  v41 = swift_task_alloc();
  *(v0 + 2552) = v41;
  *v41 = v0;
  v41[1] = sub_1001E9D80;
  v42 = *(v0 + 2304);
  v43 = *(v0 + 2296);

  return sub_10021AC40(1, v40, v43, v42, v6, v7);
}

uint64_t sub_1001E9D80()
{
  v2 = *v1;
  *(*v1 + 2560) = v0;

  v3 = *(v2 + 2544);

  if (v0)
  {
    v4 = sub_1001EA084;
  }

  else
  {
    v4 = sub_1001E9EE8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001E9EE8()
{
  v1 = *(v0 + 2528);
  v2 = *(v0 + 2520);
  v3 = *(v0 + 2424);
  v4 = *(v0 + 2416);
  v5 = *(v0 + 2384);
  v6 = *(v0 + 2376);
  sub_10000BD94(*(v0 + 2456), *(v0 + 2464));
  sub_10000B90C(v4, v3);
  sub_10000B90C(v6, v5);
  sub_10000BD94(v2, v1);
  if ((*(v0 + 1256) & 2) != 0)
  {
    *(v0 + 2568) = *(*(v0 + 1280) + 40);
    v9 = swift_task_alloc();
    *(v0 + 2576) = v9;
    *v9 = v0;
    v9[1] = sub_1001EAAB4;

    return sub_1004B1A60();
  }

  else
  {

    v7 = *(*(*(v0 + 1280) + 120) + 128);
    *(v0 + 2912) = v7;
    v7;
    v8 = swift_task_alloc();
    *(v0 + 2920) = v8;
    *v8 = v0;
    v8[1] = sub_1001EE834;

    return OS_dispatch_group.wait()();
  }
}

uint64_t sub_1001EA084()
{
  sub_10000BD94(*(v0 + 2520), *(v0 + 2528));
  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "(Non terminal error): Failed to store PII hash on phone with error: %@", v3, 0xCu);
    sub_10000BE18(v4, &unk_100833B50, &unk_1006D8FB0);
  }

  v6 = *(v0 + 1896);
  v7 = *(v0 + 1712);
  v8 = *(v0 + 1680);
  v9 = *(v0 + 1672);
  v10 = *(v0 + 1664);
  v11 = *(v0 + 1656);
  v50 = *(v0 + 2512);

  v6(v7, v8);
  (*(v10 + 104))(v9, enum case for DIPError.Code.internalError(_:), v11);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  v12 = *(sub_10000BA08((v0 + 992), *(v0 + 1016)) + *(v50 + 180));
  if (v12 != 2 && (v12 & 1) != 0 || (v13 = [*(v0 + 1904) standardUserDefaults], v14._countAndFlagsBits = static SharedInternalDefaultsKeys.makeDeviceCrossCheckErrorsTerminal.getter(), v15 = NSUserDefaults.internalBool(forKey:)(v14), , v13, v15))
  {
    v16 = *(v0 + 2416);
    v38 = *(v0 + 2384);
    v36 = *(v0 + 2424);
    v37 = *(v0 + 2376);
    v40 = *(v0 + 2352);
    v41 = *(v0 + 2464);
    v39 = *(v0 + 2456);
    v17 = *(v0 + 1584);
    v44 = *(v0 + 1576);
    v46 = *(v0 + 1592);
    v42 = *(v0 + 1528);
    v48 = *(v0 + 1512);
    v18 = *(v0 + 1312);
    v19 = *(v0 + 1296);
    v20 = *(v0 + 1288);
    v21 = *(v0 + 1240);

    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    (*(v19 + 16))(v22, v18, v20);
    swift_willThrow();

    sub_10000B90C(v16, v36);
    sub_10000B90C(v37, v38);

    sub_10000BD94(v39, v41);

    (*(v19 + 8))(v18, v20);
    sub_10000BE18(v42, &qword_100835E40, &qword_1006C49F8);
    (*(v17 + 8))(v46, v44);
    sub_10021EA28(v48, type metadata accessor for TiberiusWrappedAssessment);
    sub_1001B7154(v0 + 656);

    sub_10000BB78((v0 + 992));
    sub_1001F3808();

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = *(v0 + 2424);
    v26 = *(v0 + 2416);
    v27 = *(v0 + 2376);
    v51 = *(v0 + 2464);
    v47 = *(v0 + 2456);
    v49 = *(v0 + 1896);
    v28 = *(v0 + 1856);
    v43 = *(v0 + 2384);
    v45 = *(v0 + 1680);
    v29 = *(v0 + 1312);
    v30 = *(v0 + 1296);
    v31 = *(v0 + 1288);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    (*(v30 + 16))(v32, v29, v31);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    sub_10000B90C(v26, v25);
    sub_10000B90C(v27, v43);

    sub_10000BD94(v47, v51);
    v49(v28, v45);
    (*(v30 + 8))(v29, v31);

    if ((*(v0 + 1256) & 2) != 0)
    {
      *(v0 + 2568) = *(*(v0 + 1280) + 40);
      v35 = swift_task_alloc();
      *(v0 + 2576) = v35;
      *v35 = v0;
      v35[1] = sub_1001EAAB4;

      return sub_1004B1A60();
    }

    else
    {

      v33 = *(*(*(v0 + 1280) + 120) + 128);
      *(v0 + 2912) = v33;
      v33;
      v34 = swift_task_alloc();
      *(v0 + 2920) = v34;
      *v34 = v0;
      v34[1] = sub_1001EE834;

      return OS_dispatch_group.wait()();
    }
  }
}

uint64_t sub_1001EAAB4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2584) = a1;
  *(v3 + 2592) = a2;

  return _swift_task_switch(sub_1001EABB8, 0, 0);
}

uint64_t sub_1001EABB8(uint64_t a1)
{
  v19 = v1;
  v2 = v1[324];
  if (v2)
  {
    defaultLogger()();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v1[323];
      v6 = v1[237];
      v7 = v1[220];
      v8 = v1[210];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_100141FE4(v5, v2, &v18);
      _os_log_impl(&_mh_execute_header, v3, v4, "Trying to register for watch events with pairingID : %s", v9, 0xCu);
      sub_10000BB78(v10);

      v6(v7, v8);
    }

    else
    {
      v13 = v1[237];
      v14 = v1[220];
      v15 = v1[210];

      v13(v14, v15);
    }

    v1[325] = *(v1[160] + 64);

    v16 = swift_task_alloc();
    v1[326] = v16;
    *v16 = v1;
    v16[1] = sub_1001EAE4C;

    return sub_1002D515C();
  }

  else
  {

    v11 = *(*(v1[160] + 120) + 128);
    v1[364] = v11;
    v11;
    v12 = swift_task_alloc();
    v1[365] = v12;
    *v12 = v1;
    v12[1] = sub_1001EE834;

    return OS_dispatch_group.wait()();
  }
}

uint64_t sub_1001EAE4C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2616) = a1;
  *(v3 + 2624) = v1;

  if (v1)
  {

    v4 = sub_1001F1D24;
  }

  else
  {

    v4 = sub_1001EAFB8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001EAFB8(uint64_t a1)
{
  v22 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[237];
  v6 = v1[219];
  v7 = v1[210];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v20 = v5;
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    v10 = Array.description.getter();
    v12 = v11;

    v13 = sub_100141FE4(v10, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully registered for watch events : %s", v8, 0xCu);
    sub_10000BB78(v9);

    v20(v6, v7);
  }

  else
  {

    v5(v6, v7);
  }

  v14 = v1[321];
  v1[329] = *(v1[160] + 72);
  v15 = OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService;
  v1[330] = OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService;
  v16 = *(v14 + v15);
  v1[331] = v16;

  v17 = v16;
  v18 = swift_task_alloc();
  v1[332] = v18;
  *v18 = v1;
  v18[1] = sub_1001EB204;

  return sub_100207100(2, v17);
}

uint64_t sub_1001EB204(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[333] = a1;
  v5[334] = a2;
  v5[335] = v2;

  v6 = v4[331];

  if (v2)
  {

    v7 = sub_1001F2360;
  }

  else
  {

    v7 = sub_1001EB394;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001EB394()
{
  v1 = v0[334];
  v2 = v0[330];
  v3 = v0[321];
  v4 = v0[160];
  v5 = (v4 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier);
  *v5 = v0[333];
  v5[1] = v1;

  v0[336] = *(v4 + 72);
  v6 = *(v3 + v2);
  v0[337] = v6;

  v7 = v6;
  v8 = swift_task_alloc();
  v0[338] = v8;
  *v8 = v0;
  v8[1] = sub_1001EB4A4;
  v9 = v0[334];
  v10 = v0[333];

  return sub_10021B130(v10, v9, v7);
}

uint64_t sub_1001EB4A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 2712) = a1;
  *(v4 + 2720) = v1;

  v5 = *(v3 + 2696);

  if (v1)
  {

    v6 = sub_1001EC0D4;
  }

  else
  {

    v6 = sub_1001EB63C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001EB63C(uint64_t a1)
{
  v57 = v1;
  v2 = *(v1 + 2712);
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 2712);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully generated key signing key for watch : %@.", v7, 0xCu);
    sub_10000BE18(v8, &unk_100833B50, &unk_1006D8FB0);
  }

  v10 = *(v1 + 2712);
  v11 = *(v1 + 1896);
  v12 = *(v1 + 1744);
  v13 = *(v1 + 1680);

  v11(v12, v13);
  v14._countAndFlagsBits = 0x3333386162633964;
  v15._object = 0x8000000100706400;
  v14._object = 0xE800000000000000;
  v15._countAndFlagsBits = 0xD000000000000020;
  logMilestone(tag:description:)(v14, v15);
  v16 = [v10 attestation];
  if (v16)
  {
    v17 = v16;
    *(v1 + 2728) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    defaultLogger()();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v1 + 1896);
    v22 = *(v1 + 1736);
    v23 = *(v1 + 1680);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v56[0] = v25;
      *v24 = 136315138;
      v26 = Array.description.getter();
      v28 = sub_100141FE4(v26, v27, v56);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v18, v19, "kakCertificates created for watch : %s", v24, 0xCu);
      sub_10000BB78(v25);

      v21(v22, v23);
    }

    else
    {

      v21(v22, v23);
    }

    v40 = *(v1 + 2592);
    *(v1 + 2736) = *(*(v1 + 1280) + 64);

    v41 = swift_task_alloc();
    *(v1 + 2744) = v41;
    *v41 = v1;
    v41[1] = sub_1001EC710;
    v42 = *(v1 + 2584);

    return sub_1002D3138(v42, v40);
  }

  else
  {
    v55 = *(v1 + 2712);
    v29 = *(v1 + 1672);
    v30 = *(v1 + 1664);
    v31 = *(v1 + 1656);

    (*(v30 + 104))(v29, enum case for DIPError.Code.internalError(_:), v31);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v32 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    if (*(v1 + 1256))
    {
      defaultLogger()();
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Encountered a watch specific failure during combo proofing, will skip saving watch proofing session in the database", v45, 2u);
      }

      v46 = *(v1 + 1896);
      v47 = *(v1 + 1856);
      v48 = *(v1 + 1704);
      v49 = *(v1 + 1680);
      v50 = *(v1 + 1280);

      v46(v48, v49);
      *(v50 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure) = v32;
      swift_errorRetain();

      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v46(v47, v49);
      v51 = *(*(*(v1 + 1280) + 120) + 128);
      *(v1 + 2912) = v51;
      v51;
      v52 = swift_task_alloc();
      *(v1 + 2920) = v52;
      *v52 = v1;
      v52[1] = sub_1001EE834;

      return OS_dispatch_group.wait()();
    }

    else
    {
      v33 = *(v1 + 2352);
      v34 = *(v1 + 1584);
      v35 = *(v1 + 1576);
      v36 = *(v1 + 1528);
      v53 = *(v1 + 1592);
      v54 = *(v1 + 1512);
      v37 = *(v1 + 1240);

      swift_willThrow();

      sub_10000BE18(v36, &qword_100835E40, &qword_1006C49F8);
      (*(v34 + 8))(v53, v35);
      sub_10021EA28(v54, type metadata accessor for TiberiusWrappedAssessment);
      sub_1001B7154(v1 + 656);

      sub_10000BB78((v1 + 992));
      sub_1001F3808();

      v38 = *(v1 + 8);

      return v38();
    }
  }
}

uint64_t sub_1001EC0D4(uint64_t a1)
{
  v2 = *(v1 + 2720);
  if (*(v1 + 1256))
  {
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Encountered a watch specific failure during combo proofing, will skip saving watch proofing session in the database", v12, 2u);
    }

    v13 = *(v1 + 1896);
    v14 = *(v1 + 1856);
    v15 = *(v1 + 1704);
    v16 = *(v1 + 1680);
    v17 = *(v1 + 1280);

    v13(v15, v16);
    *(v17 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure) = v2;
    swift_errorRetain();

    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v13(v14, v16);
    v18 = *(*(*(v1 + 1280) + 120) + 128);
    *(v1 + 2912) = v18;
    v18;
    v19 = swift_task_alloc();
    *(v1 + 2920) = v19;
    *v19 = v1;
    v19[1] = sub_1001EE834;

    return OS_dispatch_group.wait()();
  }

  else
  {
    v3 = *(v1 + 2352);
    v4 = *(v1 + 1584);
    v5 = *(v1 + 1576);
    v6 = *(v1 + 1528);
    v20 = *(v1 + 1592);
    v21 = *(v1 + 1512);
    v7 = *(v1 + 1240);

    swift_willThrow();

    sub_10000BE18(v6, &qword_100835E40, &qword_1006C49F8);
    (*(v4 + 8))(v20, v5);
    sub_10021EA28(v21, type metadata accessor for TiberiusWrappedAssessment);
    sub_1001B7154(v1 + 656);

    sub_10000BB78((v1 + 992));
    sub_1001F3808();

    v8 = *(v1 + 8);

    return v8();
  }
}

uint64_t sub_1001EC710(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2752) = a1;
  *(v3 + 2760) = v1;

  if (v1)
  {

    v4 = sub_1001F299C;
  }

  else
  {

    v4 = sub_1001EC8A8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001EC8A8(uint64_t a1)
{
  v24 = v1;
  v2 = v1[344];
  if (v2)
  {
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "watch attestations present, adding in to keyAttestations", v5, 2u);
    }

    v6 = v1[237];
    v7 = v1[216];
    v8 = v1[210];

    v6(v7, v8);
    v9 = v1[153];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v9;
    sub_10021B768(v2, sub_1002083B4, 0, isUniquelyReferenced_nonNull_native, &v23);

    v1[153] = v23;
  }

  v11 = v1[339];
  v12 = v1[291];
  v1[346] = *(v1[160] + 72);

  v13 = [v11 publicKeyCOSEKey];
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v1[347] = v14;
  v1[348] = v16;
  v17 = *(v12 + 16);
  v1[349] = v17;
  v18 = v17;
  v19 = swift_task_alloc();
  v1[350] = v19;
  *v19 = v1;
  v19[1] = sub_1001ECAC0;
  v20 = v1[288];
  v21 = v1[287];

  return sub_1002ACF14(v21, v20, v14, v16, v18);
}