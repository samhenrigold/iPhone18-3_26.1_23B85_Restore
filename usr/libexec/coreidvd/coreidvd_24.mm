uint64_t sub_10027ACBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a3;
  v4[30] = a4;
  v4[27] = a1;
  v4[28] = a2;
  v5 = type metadata accessor for Logger();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_10027AD80, 0, 0);
}

uint64_t sub_10027AD80()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[28];
  v0[34] = v0[9];

  sub_100031918((v0 + 2));
  v5 = swift_allocObject();
  v0[35] = v5;
  v5[2] = v4;
  v5[3] = v2;
  v5[4] = v3;
  v6 = swift_allocObject();
  v0[36] = v6;
  *(v6 + 16) = sub_100282830;
  *(v6 + 24) = v5;

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  *v7 = v0;
  v7[1] = sub_10027AF5C;
  v9 = v0[27];

  return AsyncCoreDataContainer.performRead<A>(_:)(v9, sub_1000280B4, v6, v8);
}

uint64_t sub_10027AF5C()
{
  v2 = *v1;
  *(v2 + 304) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10027B0C0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10027B0C0()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[27];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v1, v2);
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

  v6 = v0[1];

  return v6();
}

void *sub_10027B1DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1005792EC(a1, a2, a3);
  if (!v4)
  {
    if (result)
    {
      v14 = result;
      v15 = [result provisioningAttemptDate];
      if (v15)
      {
        v16 = v15;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v17 = 0;
      }

      else
      {
        v17 = 1;
        v16 = v14;
      }

      v18 = type metadata accessor for Date();
      return (*(*(v18 - 8) + 56))(a4, v17, 1, v18);
    }

    else
    {
      (*(v10 + 104))(v12, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v9);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10017F790(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  return result;
}

void sub_10027B464(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  v16 = sub_1005792EC(a2, a3, a4);
  if (!v5)
  {
    v17 = v16;
    v38 = a2;
    v39 = v15;
    v40 = v10;
    v41 = 0;
    if (v16)
    {
      v18 = IdentityProofingActionStatus.rawValue.getter();
      sub_10057F148(v18, 0);
      v19 = v41;
      sub_1005783D4();
      v41 = v19;
      if (v19)
      {
      }

      else
      {
        v26 = type metadata accessor for IdentityManagementSessionDelegate();
        v27 = [objc_opt_self() defaultCenter];
        v28 = String._bridgeToObjectiveC()();
        v43 = v26;
        sub_100007224(&qword_10083D698, &unk_1006DB6F0);
        [v27 postNotificationName:v28 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

        swift_unknownObjectRelease();
        v29 = v39;
        defaultLogger()();
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v43 = v33;
          *v32 = 136315138;
          v34 = IdentityProofingActionStatus.debugDescription.getter();
          v36 = sub_100141FE4(v34, v35, &v43);

          *(v32 + 4) = v36;
          _os_log_impl(&_mh_execute_header, v30, v31, "Updated the proofing action status to %s", v32, 0xCu);
          sub_10000BB78(v33);
        }

        (*(v40 + 8))(v29, v9);
      }
    }

    else
    {
      defaultLogger()();
      v20 = a3;

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();

      v23 = v9;
      if (os_log_type_enabled(v21, v22))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v43 = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_100141FE4(v38, v20, &v43);
        _os_log_impl(&_mh_execute_header, v21, v22, "Proofing session with proofingSessionID %s doesn't exist.", v24, 0xCu);
        sub_10000BB78(v25);
      }

      (*(v40 + 8))(v13, v23);
    }
  }
}

uint64_t sub_10027B844(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for Logger();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_100007224(&unk_100834140, &qword_1006DC180);
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for NWPath();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v6 = type metadata accessor for ProofingSession.UploadAsset();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_10027BA34, 0, 0);
}

uint64_t sub_10027BA34()
{
  result = ProofingSession.uploadAssets.getter();
  v2 = result;
  v46 = *(result + 16);
  if (!v46)
  {
LABEL_12:

    v16 = _swiftEmptyArrayStorage[2];

    if (!v16)
    {

      v22 = v0[1];

      return v22(0);
    }

    v17 = v0[18];
    v18 = v0[19];
    v19 = v0[17];
    v20 = v0[9];

    NetworkMonitor.currentPath.getter();
    if ((*(v18 + 48))(v19, 1, v17) == 1)
    {
      v21 = v0[17];

      sub_10000BE18(v21, &unk_100834140, &qword_1006DC180);
    }

    else
    {
      (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
      v23 = NWPath.isExpensive.getter();
      v25 = v0[19];
      v24 = v0[20];
      v26 = v0[18];
      if (v23)
      {

        (*(v25 + 8))(v24, v26);
      }

      else
      {
        v27 = NWPath.isConstrained.getter();

        (*(v25 + 8))(v24, v26);
        if ((v27 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      if (ProofingSession.canUploadOnExpensiveNetwork.getter())
      {
        defaultLogger()();
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "Device is on expensive network but the user has given consent to upload over cellular network. Start uploads...", v30, 2u);
        }

        v31 = v0[16];
        v32 = v0[10];
        v33 = v0[11];

        (*(v33 + 8))(v31, v32);
        v34 = ProofingSession.proofingSessionID.getter();
        v36 = v35;
        v0[25] = v35;
        ProofingSession.target.getter();
        v37 = IdentityTarget.init(rawValue:)();
        v39 = v38;
        v40 = swift_task_alloc();
        v0[26] = v40;
        *v40 = v0;
        v40[1] = sub_10027BFA8;

        return sub_100281CC4(v34, v36, v37, v39 & 1, 1);
      }
    }

LABEL_27:
    v0[27] = *(v20 + 32);

    v41 = ProofingSession.totalUploadAssetsFileSizeInBytes.getter();
    v42 = ProofingSession.canUploadOnExpensiveNetwork.getter();
    v43 = swift_task_alloc();
    v0[28] = v43;
    *v43 = v0;
    v43[1] = sub_10027C1DC;
    v44 = v0[7];

    return sub_1002C7430(v44, v41, v42 & 1);
  }

  v3 = 0;
  v4 = v0[22];
  v47 = (v4 + 32);
  v45 = result;
  while (v3 < *(v2 + 16))
  {
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = *(v4 + 72);
    (*(v4 + 16))(v0[24], v2 + v5 + v6 * v3, v0[21]);
    ProofingSession.UploadAsset.assetFileURL.getter();
    v7 = v0[24];
    if (v8)
    {
      v9 = v0[23];
      v10 = v0[21];

      v11 = *v47;
      (*v47)(v9, v7, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100173084(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_100173084((v12 > 1), v13 + 1, 1);
      }

      v14 = v0[23];
      v15 = v0[21];
      _swiftEmptyArrayStorage[2] = v13 + 1;
      result = v11(_swiftEmptyArrayStorage + v5 + v13 * v6, v14, v15);
      v2 = v45;
    }

    else
    {
      result = (*(v4 + 8))(v0[24], v0[21]);
    }

    if (v46 == ++v3)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10027BFA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1(1);
}

uint64_t sub_10027C1DC(char a1)
{
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_10027C2FC, 0, 0);
}

uint64_t sub_10027C2FC(uint64_t a1)
{
  if (*(v1 + 280) == 1)
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Device is on an expensive network and the data size is greater than the threshold. No consent to upload on cellular. Will not upload the files.", v4, 2u);
    }

    v5 = *(v1 + 120);
    v6 = *(v1 + 80);
    v7 = *(v1 + 88);

    v8 = *(v7 + 8);
    *(v1 + 232) = v8;
    v8(v5, v6);
    v9 = ProofingSession.proofingSessionID.getter();
    v11 = v10;
    *(v1 + 240) = v10;
    ProofingSession.target.getter();
    v12 = IdentityTarget.init(rawValue:)();
    v14 = v13;
    v15 = swift_task_alloc();
    *(v1 + 248) = v15;
    *v15 = v1;
    v15[1] = sub_10027C538;

    return sub_100281CC4(v9, v11, v12, v14 & 1, 9);
  }

  else
  {

    v17 = *(v1 + 8);

    return v17(1);
  }
}

uint64_t sub_10027C538()
{

  return _swift_task_switch(sub_10027C650, 0, 0);
}

uint64_t sub_10027C650(uint64_t a1)
{
  sub_10027DDA8();
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking if connect to wifi reminder should be shown", v4, 2u);
  }

  v5 = v1[29];
  v6 = v1[14];
  v7 = v1[10];

  v5(v6, v7);
  if (ProofingSession.didShowWifiReminderAlert.getter())
  {
    defaultLogger()();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v1[29];
    v12 = v1[13];
    v13 = v1[10];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Connect to WiFi reminder alert has been shown to the user once already. Will not show it again.", v14, 2u);
    }

    v11(v12, v13);

    v15 = v1[1];

    return v15(0);
  }

  else
  {
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Connect to wifi reminder to be shown...", v19, 2u);
    }

    v20 = v1[29];
    v21 = v1[12];
    v23 = v1[9];
    v22 = v1[10];

    v20(v21, v22);
    sub_100020260(v23 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_connectToWifiAlertProvider, (v1 + 2));
    v24 = sub_10000BA08(v1 + 2, v1[5]);
    v25 = ProofingSession.proofingSessionID.getter();
    v27 = v26;
    v1[32] = v26;
    ProofingSession.target.getter();
    v28 = IdentityTarget.init(rawValue:)();
    v30 = v29;
    v31 = v24[2];
    v32 = swift_task_alloc();
    v1[33] = v32;
    *v32 = v1;
    v32[1] = sub_10027CA74;
    v33 = v1[7];

    return sub_10030771C(v33, v25, v27, v28, v30 & 1, v31);
  }
}

uint64_t sub_10027CA74()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_10027CC80;
  }

  else
  {
    v2 = sub_10027CBA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027CBA8()
{
  sub_10000BB78((v0 + 16));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10027CC80()
{
  sub_10000BB78((v0 + 16));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10027CD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for DIPBackgroundDeferralStatus();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_10027CF88, 0, 0);
}

uint64_t sub_10027CF88()
{
  v1 = *(ProofingSession.uploadAssets.getter() + 16);

  if (v1)
  {
    ProofingSession.documentType.getter();
    if (v2)
    {
      v3 = IdentityDocumentType.init(documentTypeString:)();
      v0[21] = v3;
      v4 = swift_task_alloc();
      v0[22] = v4;
      *v4 = v0;
      v4[1] = sub_10027D1CC;
      v5 = v0[2];

      return sub_10027B844(v3, v5);
    }

    v7 = v0 + 9;
    defaultLogger()();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Unable to retrieve document type";
      goto LABEL_10;
    }
  }

  else
  {
    v7 = v0 + 8;
    defaultLogger()();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Upload assets doesn't exist to be uploaded.";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v8, v9, v11, v10, 2u);
    }
  }

  (*(v0[7] + 8))(*v7, v0[6]);

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_10027D1CC(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 276) = a1 & 1;

    return _swift_task_switch(sub_10027D374, 0, 0);
  }
}

uint64_t sub_10027D374()
{
  v1 = *(v0 + 276);
  if (v1 != 1 || (v3 = *(v0 + 152), v2 = *(v0 + 160), v4 = *(v0 + 136), v5 = *(v0 + 144), (*(v0 + 24))(), *(v0 + 272) = enum case for DIPBackgroundDeferralStatus.shouldDefer(_:), v6 = *(v5 + 104), *(v0 + 184) = v6, *(v0 + 192) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000, v6(v3), v7 = static DIPBackgroundDeferralStatus.== infix(_:_:)(), v8 = *(v5 + 8), *(v0 + 200) = v8, *(v0 + 208) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000, v8(v3, v4), v8(v2, v4), (v7 & 1) != 0))
  {

    v9 = *(v0 + 8);
    v10 = v1 ^ 1u;
LABEL_4:

    return v9(v10);
  }

  ProofingSession.target.getter();
  v12 = IdentityTarget.init(rawValue:)();
  if (v13)
  {
    (*(*(v0 + 88) + 104))(*(v0 + 96), enum case for DIPError.Code.targetUnavailable(_:), *(v0 + 80));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10017F790(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v9 = *(v0 + 8);
    v10 = 0;
    goto LABEL_4;
  }

  *(v0 + 216) = v12;
  v14 = v12;
  v15 = ProofingSession.proofingSessionID.getter();
  v17 = v16;
  *(v0 + 224) = v16;
  v18 = swift_task_alloc();
  *(v0 + 232) = v18;
  *v18 = v0;
  v18[1] = sub_10027D6F8;

  return sub_100281CC4(v15, v17, v14, 0, 1);
}

uint64_t sub_10027D6F8()
{

  return _swift_task_switch(sub_10027D810, 0, 0);
}

uint64_t sub_10027D810()
{
  v0[30] = *(v0[5] + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_proofingUpdateManager);

  v1 = ProofingSession.proofingSessionID.getter();
  v3 = v2;
  v0[31] = v2;
  v4 = ProofingSession.canUploadOnExpensiveNetwork.getter();
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_10027D900;
  v6 = v0[27];
  v7 = v0[21];

  return sub_100316898(v1, v3, 0, 0, v7, v6, 0, v4 & 1);
}

uint64_t sub_10027D900()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_10027DC34;
  }

  else
  {

    v2 = sub_10027DA24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027DA24()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 272);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 136);
  (*(v0 + 24))();
  v2(v5, v3, v6);
  v7 = static DIPBackgroundDeferralStatus.== infix(_:_:)();
  v1(v5, v6);
  v1(v4, v6);
  if ((v7 & 1) == 0)
  {
    v8 = *(v0 + 112);
    v9 = *(v0 + 120);
    v10 = *(v0 + 104);

    ProofingSession.createdAt.getter();
    v11 = *(v9 + 48);
    if (v11(v10, 1, v8) == 1)
    {
      v13 = *(v0 + 104);
      v12 = *(v0 + 112);
      Date.init()();
      if (v11(v13, 1, v12) != 1)
      {
        sub_10000BE18(*(v0 + 104), &unk_100849400, &unk_1006BFBB0);
      }
    }

    else
    {
      (*(*(v0 + 120) + 32))(*(v0 + 128), *(v0 + 104), *(v0 + 112));
    }

    v14 = *(v0 + 128);
    v15 = ProofingSession.manualCheckInterval.getter();
    sub_1002FA39C(v14, v15);

    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  }

  v16 = *(v0 + 8);

  return v16((v7 & 1) == 0);
}

uint64_t sub_10027DC34()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10027DD00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027B9C;

  return sub_10027E038(a1, a2);
}

uint64_t sub_10027DDA8()
{
  v2 = type metadata accessor for Logger();
  v15 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v14[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BackgroundActivitySettings();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  BackgroundActivitySettings.init()();
  BackgroundActivitySettings.requiresNetworkConnectivity.setter();
  BackgroundActivitySettings.requiresInexpensiveNetworkConnectivity.setter();
  sub_100020260(v0 + 40, v14);
  sub_10000BA08(v14, v14[3]);
  dispatch thunk of BackgroundActivityManaging.scheduleActivity(identifier:after:gracePeriod:settings:)();
  if (v1)
  {
    (*(v6 + 8))(v8, v5);
    return sub_10000BB78(v14);
  }

  else
  {
    sub_10000BB78(v14);
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Scheduling background activity to be triggered when the device connects to wifi.", v12, 2u);
    }

    (*(v15 + 8))(v4, v2);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10027E038(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  v4 = type metadata accessor for Logger();
  v3[36] = v4;
  v3[37] = *(v4 - 8);
  v3[38] = swift_task_alloc();
  v5 = type metadata accessor for DIPBackgroundDeferralStatus();
  v3[39] = v5;
  v3[40] = *(v5 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[43] = v6;
  *v6 = v3;
  v6[1] = sub_10027E190;

  return sub_1002755E0();
}

uint64_t sub_10027E190()
{

  return _swift_task_switch(sub_10027E28C, 0, 0);
}

uint64_t sub_10027E28C()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  (*(v0 + 264))();
  (*(v4 + 104))(v2, enum case for DIPBackgroundDeferralStatus.shouldDefer(_:), v3);
  v5 = static DIPBackgroundDeferralStatus.== infix(_:_:)();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v9 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v9 + 54);
    sub_1000318FC(&v9[4], v0 + 16);
    os_unfair_lock_unlock(v9 + 54);
    v11 = *(v0 + 264);
    v10 = *(v0 + 272);
    *(v0 + 352) = *(v0 + 72);

    sub_100031918(v0 + 16);
    v12 = swift_allocObject();
    *(v0 + 360) = v12;
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    v13 = swift_allocObject();
    *(v0 + 368) = v13;
    *(v13 + 16) = sub_100280CF4;
    *(v13 + 24) = v12;

    v14 = swift_task_alloc();
    *(v0 + 376) = v14;
    v15 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
    *v14 = v0;
    v14[1] = sub_10027E544;

    return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 240, sub_100267820, v13, v15);
  }
}

uint64_t sub_10027E544()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_10027E8F4;
  }

  else
  {

    *(v2 + 392) = *(v2 + 240);
    v3 = sub_10027E684;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10027E684()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 280);
  type metadata accessor for OSTransaction();
  v3 = swift_task_alloc();
  *(v0 + 400) = v3;
  v4 = *(v0 + 264);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 408) = v5;
  v6 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  *v5 = v0;
  v5[1] = sub_10027E7CC;

  return __s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ(v6, 0xD00000000000002ALL, 0x80000001006DC0C0, &unk_1006DC168, v3, v6, &type metadata for () + 8, &protocol self-conformance witness table for Error);
}

uint64_t sub_10027E7CC()
{

  if (v0)
  {
    v1 = sub_10027EB6C;
  }

  else
  {

    v1 = sub_10027EAF8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10027E8F4()
{
  v17 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[37];
    v15 = v0[38];
    v4 = v0[36];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error received when attempting to retrieve proofing sessions to update %s", v5, 0xCu);
    sub_10000BB78(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[37];
    v10 = v0[38];
    v12 = v0[36];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_10027EAF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10027EB6C()
{
  v17 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[37];
    v15 = v0[38];
    v4 = v0[36];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error received when attempting to retrieve proofing sessions to update %s", v5, 0xCu);
    sub_10000BB78(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[37];
    v10 = v0[38];
    v12 = v0[36];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

void sub_10027ED5C(void (*a1)(void)@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v33 = a1;
  v31 = a3;
  v32 = a2;
  v35 = type metadata accessor for ProofingSession();
  v3 = *(v35 - 8);
  v4 = __chkstk_darwin(v35);
  v30 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v30 - v6;
  v8 = type metadata accessor for DIPBackgroundDeferralStatus();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  type metadata accessor for StoredProofingSession();
  v15 = static StoredProofingSession.fetchRequest()();
  v16 = v34;
  v17 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v16)
  {
    v34 = 0;
    v33();
    (*(v9 + 104))(v12, enum case for DIPBackgroundDeferralStatus.shouldDefer(_:), v8);
    v18 = static DIPBackgroundDeferralStatus.== infix(_:_:)();
    v19 = *(v9 + 8);
    v19(v12, v8);
    v19(v14, v8);
    if ((v18 & 1) != 0 || (v17 >> 62 ? (v20 = _CocoaArrayWrapper.endIndex.getter()) : (v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10)), v21 = v30, !v20))
    {

      *v31 = _swiftEmptyArrayStorage;
    }

    else
    {
      v36 = _swiftEmptyArrayStorage;
      sub_100173040(0, v20 & ~(v20 >> 63), 0);
      if (v20 < 0)
      {
        __break(1u);
      }

      else
      {
        v22 = v36;
        if ((v17 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v20; ++i)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            ProofingSession.init(_:)();
            v36 = v22;
            v25 = v22[2];
            v24 = v22[3];
            if (v25 >= v24 >> 1)
            {
              sub_100173040((v24 > 1), v25 + 1, 1);
              v22 = v36;
            }

            v22[2] = v25 + 1;
            (*(v3 + 32))(v22 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v25, v7, v35);
          }
        }

        else
        {
          v26 = 32;
          do
          {
            v27 = *(v17 + v26);
            ProofingSession.init(_:)();
            v36 = v22;
            v29 = v22[2];
            v28 = v22[3];
            if (v29 >= v28 >> 1)
            {
              sub_100173040((v28 > 1), v29 + 1, 1);
              v22 = v36;
            }

            v22[2] = v29 + 1;
            (*(v3 + 32))(v22 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v29, v21, v35);
            v26 += 8;
            --v20;
          }

          while (v20);
        }

        *v31 = v22;
      }
    }
  }
}

uint64_t sub_10027F170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = type metadata accessor for DIPBackgroundDeferralStatus();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v6[11] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v10 = type metadata accessor for ProofingSession();
  v6[23] = v10;
  v6[24] = *(v10 - 8);
  v6[25] = swift_task_alloc();

  return _swift_task_switch(sub_10027F3CC, 0, 0);
}

uint64_t sub_10027F3CC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 208) = v2;
  if (v2)
  {
    *(v0 + 344) = enum case for DIPBackgroundDeferralStatus.shouldDefer(_:);
    v3 = *(v0 + 184);
    v4 = *(v0 + 192);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 348) = v6;
    *(v0 + 216) = *(v4 + 56);
    *(v0 + 224) = v5;
    *(v0 + 232) = 0;
    v5(*(v0 + 200), v1 + ((v6 + 32) & ~v6), v3);
    v7 = swift_task_alloc();
    *(v0 + 240) = v7;
    *v7 = v0;
    v7[1] = sub_10027F59C;
    v8 = *(v0 + 200);
    v9 = *(v0 + 32);
    v10 = *(v0 + 40);

    return sub_10027CD60(v8, v9, v10);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_10027F59C(char a1)
{
  v4 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v5 = sub_100280698;
  }

  else
  {
    *(v4 + 352) = a1 & 1;
    v5 = sub_10027F6C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10027F6C8(uint64_t a1)
{
  if (*(v1 + 352))
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 176);
    v6 = *(v1 + 120);
    v7 = *(v1 + 128);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Wait for the schdeuled background task to be triggered to make pending actions request.", v8, 2u);
    }

    (*(v7 + 8))(v5, v6);
    goto LABEL_5;
  }

  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "No upload assets to upload to cloudkit, continuing with the proofing session update from the background task", v15, 2u);
  }

  v16 = *(v1 + 168);
  v17 = *(v1 + 120);
  v18 = *(v1 + 128);
  v19 = *(v1 + 96);
  v20 = *(v1 + 104);
  v21 = *(v1 + 88);

  v22 = *(v18 + 8);
  *(v1 + 256) = v22;
  v22(v16, v17);
  ProofingSession.createdAt.getter();
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
    sub_10000BE18(*(v1 + 88), &unk_100849400, &unk_1006BFBB0);
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v1 + 160);
    v27 = *(v1 + 120);
    if (v25)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "createdDate doesn't exist in the storedProofingSession, exiting idp background activity", v28, 2u);
    }

    v22(v26, v27);
    goto LABEL_5;
  }

  (*(*(v1 + 104) + 32))(*(v1 + 112), *(v1 + 88), *(v1 + 96));
  v35 = [objc_opt_self() standardUserDefaults];
  v36._countAndFlagsBits = static DaemonInternalDefaultsKeys.clearManualCheckTime.getter();
  v37 = NSUserDefaults.internalBool(forKey:)(v36);

  if (v37)
  {
    defaultLogger()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Skipping the time elapsed check as the clearManualCheckTime internal setting has been enabled", v40, 2u);
    }

    v41 = *(v1 + 152);
    v42 = *(v1 + 120);

    v22(v41, v42);
    v43 = ProofingSession.proofingSessionID.getter();
    v45 = v44;
    *(v1 + 264) = v44;
    ProofingSession.target.getter();
    v46 = IdentityTarget.init(rawValue:)();
    v48 = v47;
    v49 = swift_task_alloc();
    *(v1 + 272) = v49;
    *v49 = v1;
    v50 = sub_10027FF30;
    goto LABEL_22;
  }

  v51 = *(v1 + 344);
  v53 = *(v1 + 72);
  v52 = *(v1 + 80);
  v54 = *(v1 + 56);
  v55 = *(v1 + 64);
  (*(v1 + 32))();
  v56 = *(v55 + 104);
  *(v1 + 288) = v56;
  *(v1 + 296) = (v55 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v79 = v56;
  v56(v53, v51, v54);
  v57 = static DIPBackgroundDeferralStatus.== infix(_:_:)();
  v58 = *(v55 + 8);
  *(v1 + 304) = v58;
  *(v1 + 312) = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v58(v53, v54);
  v58(v52, v54);
  if (v57)
  {
    goto LABEL_27;
  }

  v59 = *(v1 + 112);
  v60 = ProofingSession.manualCheckInterval.getter();
  if ((sub_1002825C0(v59, v60) & 1) == 0)
  {
    v73 = *(v1 + 104);
    v72 = *(v1 + 112);
    v74 = *(v1 + 96);

    v75 = ProofingSession.manualCheckInterval.getter();
    sub_1002FA39C(v72, v75);

    (*(v73 + 8))(v72, v74);
LABEL_5:
    v9 = *(v1 + 208);
    v10 = *(v1 + 232) + 1;
    (*(*(v1 + 192) + 8))(*(v1 + 200), *(v1 + 184));
    if (v10 == v9)
    {

      v11 = *(v1 + 8);

      return v11();
    }

    else
    {
      v29 = *(v1 + 224);
      v30 = *(v1 + 232) + 1;
      *(v1 + 232) = v30;
      v29(*(v1 + 200), *(v1 + 16) + ((*(v1 + 348) + 32) & ~*(v1 + 348)) + *(v1 + 216) * v30, *(v1 + 184));
      v31 = swift_task_alloc();
      *(v1 + 240) = v31;
      *v31 = v1;
      v31[1] = sub_10027F59C;
      v32 = *(v1 + 200);
      v33 = *(v1 + 32);
      v34 = *(v1 + 40);

      return sub_10027CD60(v32, v33, v34);
    }
  }

  defaultLogger()();
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "Manual check time has elapsed. Will update proofing...", v63, 2u);
  }

  v78 = *(v1 + 344);
  v64 = v61;
  v65 = *(v1 + 120);
  v66 = *(v1 + 72);
  v67 = *(v1 + 80);
  v68 = *(v1 + 56);
  v77 = *(v1 + 144);
  v76 = *(v1 + 32);

  v69 = (v22)(v77, v65);
  v76(v69);
  v79(v66, v78, v68);
  LOBYTE(v65) = static DIPBackgroundDeferralStatus.== infix(_:_:)();
  v58(v66, v68);
  v58(v67, v68);
  if (v65)
  {
LABEL_27:
    (*(*(v1 + 104) + 8))(*(v1 + 112), *(v1 + 96));
    goto LABEL_5;
  }

  v43 = ProofingSession.proofingSessionID.getter();
  v45 = v70;
  *(v1 + 320) = v70;
  ProofingSession.target.getter();
  v46 = IdentityTarget.init(rawValue:)();
  v48 = v71;
  v49 = swift_task_alloc();
  *(v1 + 328) = v49;
  *v49 = v1;
  v50 = sub_100280258;
LABEL_22:
  v49[1] = v50;

  return sub_100276F1C(v43, v45, v46, v48 & 1);
}

uint64_t sub_10027FF30()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1002807B8;
  }

  else
  {
    v2 = sub_100280064;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100280064()
{
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  v1 = *(v0 + 208);
  v2 = *(v0 + 232) + 1;
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  if (v2 == v1)
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 224);
    v6 = *(v0 + 232) + 1;
    *(v0 + 232) = v6;
    v5(*(v0 + 200), *(v0 + 16) + ((*(v0 + 348) + 32) & ~*(v0 + 348)) + *(v0 + 216) * v6, *(v0 + 184));
    v7 = swift_task_alloc();
    *(v0 + 240) = v7;
    *v7 = v0;
    v7[1] = sub_10027F59C;
    v8 = *(v0 + 200);
    v9 = *(v0 + 32);
    v10 = *(v0 + 40);

    return sub_10027CD60(v8, v9, v10);
  }
}

uint64_t sub_100280258()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1002808F0;
  }

  else
  {
    v2 = sub_10028038C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10028038C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Pending actions request complete from Identity Proofing Background activity", v4, 2u);
  }

  v26 = *(v1 + 304);
  v25 = *(v1 + 288);
  v23 = *(v1 + 256);
  v24 = *(v1 + 344);
  v5 = *(v1 + 136);
  v6 = *(v1 + 120);
  v7 = *(v1 + 104);
  v27 = *(v1 + 96);
  v28 = *(v1 + 112);
  v9 = *(v1 + 72);
  v8 = *(v1 + 80);
  v10 = *(v1 + 56);
  v11 = *(v1 + 32);

  v12 = v23(v5, v6);
  v11(v12);
  v25(v9, v24, v10);
  static DIPBackgroundDeferralStatus.== infix(_:_:)();
  v26(v9, v10);
  v26(v8, v10);
  (*(v7 + 8))(v28, v27);
  v13 = *(v1 + 208);
  v14 = *(v1 + 232) + 1;
  (*(*(v1 + 192) + 8))(*(v1 + 200), *(v1 + 184));
  if (v14 == v13)
  {

    v15 = *(v1 + 8);

    return v15();
  }

  else
  {
    v17 = *(v1 + 224);
    v18 = *(v1 + 232) + 1;
    *(v1 + 232) = v18;
    v17(*(v1 + 200), *(v1 + 16) + ((*(v1 + 348) + 32) & ~*(v1 + 348)) + *(v1 + 216) * v18, *(v1 + 184));
    v19 = swift_task_alloc();
    *(v1 + 240) = v19;
    *v19 = v1;
    v19[1] = sub_10027F59C;
    v20 = *(v1 + 200);
    v21 = *(v1 + 32);
    v22 = *(v1 + 40);

    return sub_10027CD60(v20, v21, v22);
  }
}

uint64_t sub_100280698()
{
  v1 = v0[31];
  v2 = v0[6];
  (*(v0[24] + 8))(v0[25], v0[23]);
  *v2 = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002807B8()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[35];
  v2 = v0[6];
  (*(v0[24] + 8))(v0[25], v0[23]);
  *v2 = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002808F0()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[42];
  v2 = v0[6];
  (*(v0[24] + 8))(v0[25], v0[23]);
  *v2 = v1;

  v3 = v0[1];

  return v3();
}

char *sub_100280A28()
{

  sub_10000BB78((v0 + 40));
  sub_10000BB78((v0 + 80));
  v1 = OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_locale;
  v2 = type metadata accessor for Locale();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000BB78((v0 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_connectToWifiAlertProvider));

  return v0;
}

uint64_t sub_100280B40()
{
  sub_100280A28();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityProofingBackgroundActivityProvider(uint64_t a1)
{
  result = qword_10083E850;
  if (!qword_10083E850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100280BEC(uint64_t a1)
{
  result = type metadata accessor for Locale();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100280CBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100280D10(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100027B9C;

  return sub_10027F170(a1, v6, v7, v9, v8, a2);
}

uint64_t sub_100280DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[30] = a2;
  v3[31] = a3;
  v3[29] = a1;
  v4 = type metadata accessor for Logger();
  v3[32] = v4;
  v3[33] = *(v4 - 8);
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_100280E9C, 0, 0);
}

uint64_t sub_100280E9C()
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
  v0[35] = v0[9];

  sub_100031918((v0 + 2));
  v5 = swift_allocObject();
  v0[36] = v5;
  v5[2] = v4;
  v5[3] = v2;
  v5[4] = v3;
  v6 = swift_allocObject();
  v0[37] = v6;
  *(v6 + 16) = sub_1002828A8;
  *(v6 + 24) = v5;

  v7 = swift_task_alloc();
  v0[38] = v7;
  v8 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v7 = v0;
  v7[1] = sub_100281078;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 27, sub_100267AC8, v6, v8);
}

uint64_t sub_100281078()
{
  v2 = *v1;
  v2[39] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002811E8, 0, 0);
  }

  else
  {

    v3 = v2[27];
    v4 = v2[28];

    v5 = v2[1];

    return v5(v3, v4);
  }
}

uint64_t sub_1002811E8()
{
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[33];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4(0, 0);
}

uint64_t sub_1002812C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 377) = a4;
  *(v4 + 256) = a2;
  *(v4 + 264) = a3;
  *(v4 + 248) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 272) = v5;
  *(v4 + 280) = *(v5 - 8);
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();

  return _swift_task_switch(sub_1002813B8, 0, 0);
}

uint64_t sub_1002813B8(uint64_t a1)
{
  v41 = v1;
  v2 = *(v1 + 256);
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 320);
  v7 = *(v1 + 272);
  v8 = *(v1 + 280);
  if (v5)
  {
    v10 = *(v1 + 248);
    v9 = *(v1 + 256);
    v39 = *(v1 + 320);
    v11 = v2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v40 = v13;
    *v12 = 136315138;
    v14 = v9 == 0;
    if (v9)
    {
      v15 = v10;
    }

    else
    {
      v15 = 7104878;
    }

    if (v14)
    {
      v16 = 0xE300000000000000;
    }

    else
    {
      v16 = v11;
    }

    v17 = sub_100141FE4(v15, v16, &v40);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Checking if the data has to be cleared for proofingSession with ID %s", v12, 0xCu);
    sub_10000BB78(v13);

    v2 = v11;

    v18 = *(v8 + 8);
    v18(v39, v7);
  }

  else
  {

    v18 = *(v8 + 8);
    v18(v6, v7);
  }

  *(v1 + 328) = v18;
  v19 = [objc_opt_self() standardUserDefaults];
  v20._countAndFlagsBits = static DaemonInternalDefaultsKeys.clearProvisioningRetryTimeout.getter();
  v21 = NSUserDefaults.internalBool(forKey:)(v20);

  if (v21)
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v1 + 312);
    v26 = *(v1 + 272);
    if (v24)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "ClearProvisioningRetryTimeout Interval setting has been enabled.";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v22, v23, v28, v27, 2u);

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (!*(v1 + 256))
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    v30 = os_log_type_enabled(v22, v23);
    v25 = *(v1 + 288);
    v26 = *(v1 + 272);
    if (v30)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "Unable to update proofing as proofingSessionID doesn't exist";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (*(v1 + 377))
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    v29 = os_log_type_enabled(v22, v23);
    v25 = *(v1 + 296);
    v26 = *(v1 + 272);
    if (v29)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "Unable to update proofing as target doesn't exist";
      goto LABEL_19;
    }

LABEL_20:

    v18(v25, v26);

    v31 = *(v1 + 8);

    return v31(v21);
  }

  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v33 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v33 + 54);
  sub_100031B5C(&v33[4], v1 + 16);
  os_unfair_lock_unlock(v33 + 54);
  v34 = *(v1 + 264);
  v35 = *(v1 + 248);
  *(v1 + 336) = *(v1 + 72);

  sub_100031918(v1 + 16);
  v36 = swift_allocObject();
  *(v1 + 344) = v36;
  v36[2] = v35;
  v36[3] = v2;
  v36[4] = v34;
  v37 = swift_allocObject();
  *(v1 + 352) = v37;
  *(v37 + 16) = sub_100282850;
  *(v37 + 24) = v36;

  v38 = swift_task_alloc();
  *(v1 + 360) = v38;
  *v38 = v1;
  v38[1] = sub_1002818F8;

  return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 376, sub_10017F7F4, v37, &type metadata for Bool);
}

uint64_t sub_1002818F8()
{
  v2 = *v1;
  *(v2 + 368) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100281A98, 0, 0);
  }

  else
  {

    v3 = *(v2 + 376);

    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_100281A98()
{
  v17 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v14 = v0[38];
    v15 = v0[41];
    v3 = v0[34];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_100141FE4(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "received an error while checking if data has to be cleared. %s", v4, 0xCu);
    sub_10000BB78(v5);

    v15(v14, v3);
  }

  else
  {
    v9 = v0[41];
    v10 = v0[38];
    v11 = v0[34];

    v9(v10, v11);
  }

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_100281CC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 376) = a4;
  *(v5 + 232) = a3;
  *(v5 + 240) = a5;
  *(v5 + 216) = a1;
  *(v5 + 224) = a2;
  v6 = type metadata accessor for Logger();
  *(v5 + 248) = v6;
  *(v5 + 256) = *(v6 - 8);
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  *(v5 + 288) = v7;
  *(v5 + 296) = *(v7 - 8);
  *(v5 + 304) = swift_task_alloc();
  v8 = type metadata accessor for DIPError();
  *(v5 + 312) = v8;
  *(v5 + 320) = *(v8 - 8);
  *(v5 + 328) = swift_task_alloc();

  return _swift_task_switch(sub_100281E5C, 0, 0);
}

uint64_t sub_100281E5C(uint64_t a1)
{
  v2 = *(v1 + 224);
  if (!v2)
  {
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v3, v4);
    v8 = *(v1 + 256);
    v6 = *(v1 + 264);
    v7 = *(v1 + 248);
    if (v11)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Unable to clearProofingSession as proofingSessionID doesn't exist";
      goto LABEL_7;
    }

LABEL_8:

    (*(v8 + 8))(v6, v7);

    v12 = *(v1 + 8);

    return v12();
  }

  if (*(v1 + 376))
  {
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v1 + 272);
    v7 = *(v1 + 248);
    v8 = *(v1 + 256);
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

  v14 = qword_100832B60;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v15 + 54);
  sub_100031B5C(&v15[4], v1 + 16);
  os_unfair_lock_unlock(v15 + 54);
  v17 = *(v1 + 232);
  v16 = *(v1 + 240);
  v18 = *(v1 + 216);
  *(v1 + 336) = *(v1 + 72);

  sub_100031918(v1 + 16);
  v19 = swift_allocObject();
  *(v1 + 344) = v19;
  v19[2] = v18;
  v19[3] = v2;
  v19[4] = v17;
  v19[5] = v16;
  v20 = swift_allocObject();
  *(v1 + 352) = v20;
  *(v20 + 16) = sub_100282810;
  *(v20 + 24) = v19;

  v21 = swift_task_alloc();
  *(v1 + 360) = v21;
  *v21 = v1;
  v21[1] = sub_1002821A4;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v21, sub_10017F710, v20, &type metadata for () + 8);
}

uint64_t sub_1002821A4()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_100282368;
  }

  else
  {

    v2 = sub_1002822D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002822D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100282368()
{
  v1 = v0[40];
  v9 = v0[41];
  v10 = v0[39];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  v11 = v0[32];
  v12 = v0[31];

  (*(v2 + 104))(v3, enum case for DIPError.Code.internalError(_:), v5);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10017F790(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v1 + 16))(v6, v9, v10);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v11 + 8))(v4, v12);
  (*(v1 + 8))(v9, v10);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002825C0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v16 = v2;
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "checking if the manual check interval has elapsed...", v12, 2u);
    v2 = v16;
  }

  (*(v7 + 8))(v9, v6);
  Date.init()();
  v13 = Date.isAtLeast(seconds:after:)();
  (*(v3 + 8))(v5, v2);
  return v13 & 1;
}

uint64_t sub_1002827D8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100282870()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1002828E4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7972746E756F63;
    v6 = 0x6E69747465537861;
    if (a1 != 8)
    {
      v6 = 1701736302;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0xD000000000000012;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 6645601;
    v2 = 0x6574617473;
    v3 = 1701011826;
    if (a1 != 3)
    {
      v3 = 0x656E6F546E696B73;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 7890291;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100282A04(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1002828E4(*a1);
  v5 = v4;
  if (v3 == sub_1002828E4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100282A8C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1002828E4(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100282AF0(uint64_t a1)
{
  sub_1002828E4(*v1);
  String.hash(into:)();
}

Swift::Int sub_100282B44(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1002828E4(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100282BA4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100285200(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100282BD4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1002828E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_100282C00(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083EBD8, &qword_1006DC2B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v31 = sub_100007224(&qword_10083EBE0, &qword_1006DC2B8);
  v5 = *(v31 - 8);
  __chkstk_darwin(v31);
  v26 = &v23 - v6;
  v7 = sub_100007224(&qword_10083EBE8, &qword_1006DC2C0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v36 = &_swiftEmptySetSingleton;
  sub_100007224(&qword_10083EBF0, &qword_1006DC2C8);
  v14 = sub_1000BA30C(&qword_10083EBF8, &qword_10083EBE8, &qword_1006DC2C0, &protocol conformance descriptor for Regex<A>);
  v33 = v13;
  v30 = v14;
  Regex.init<A>(_:)();
  v15 = *(a1 + 16);
  if (v15)
  {
    v32 = (v8 + 8);
    v28 = v5 + 56;
    v29 = v4;
    v27 = (v5 + 48);
    v24 = (v5 + 8);
    v25 = (v5 + 32);
    v16 = a1 + 40;
    do
    {

      dispatch thunk of RegexComponent.regex.getter();
      String.subscript.getter();

      v17 = v29;
      Regex.wholeMatch(in:)();
      v18 = *v32;
      (*v32)(v11, v7);

      v19 = v31;
      if ((*v27)(v17, 1, v31) == 1)
      {
        sub_10000BE18(v17, &qword_10083EBD8, &qword_1006DC2B0);
      }

      else
      {
        v20 = v26;
        (*v25)(v26, v17, v19);
        swift_getKeyPath();
        Regex.Match.subscript.getter();

        sub_1001516C4(v35, v34);
        (*v24)(v20, v19);
      }

      v16 += 16;
      --v15;
    }

    while (v15);
    v21 = v36;
  }

  else
  {
    v18 = *(v8 + 8);
    v21 = &_swiftEmptySetSingleton;
  }

  v18(v33, v7);
  return v21;
}

uint64_t sub_100283090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v109 = sub_100007224(&qword_10083EC00, &qword_1006DC2F0);
  v110 = *(v109 - 8);
  v3 = __chkstk_darwin(v109);
  v100 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v101 = &v87 - v5;
  v105 = sub_100007224(&qword_10083EBE8, &qword_1006DC2C0);
  v106 = *(v105 - 8);
  __chkstk_darwin(v105);
  v117 = &v87 - v6;
  v7 = sub_100007224(&qword_10083EC08, &qword_1006DC2F8);
  v8 = *(v7 - 8);
  v126 = v7;
  v127 = v8;
  v9 = __chkstk_darwin(v7);
  v102 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v128 = &v87 - v11;
  v116 = sub_100007224(&qword_10083EC10, &qword_1006DC300);
  v125 = *(v116 - 8);
  v12 = __chkstk_darwin(v116);
  v104 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v103 = &v87 - v15;
  v16 = __chkstk_darwin(v14);
  v118 = &v87 - v17;
  __chkstk_darwin(v16);
  v108 = &v87 - v18;
  v119 = type metadata accessor for _RegexFactory();
  v19 = *(v119 - 8);
  __chkstk_darwin(v119);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100007224(&qword_10083EC18, &qword_1006DC308);
  __chkstk_darwin(v22 - 8);
  v24 = &v87 - v23;
  v25 = type metadata accessor for CharacterClass();
  v123 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_100007224(&qword_10083EC20, &qword_1006DC310);
  v122 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &v87 - v28;
  v121 = sub_100007224(&qword_10083EC28, &qword_1006DC318);
  v131 = *(v121 - 8);
  v29 = __chkstk_darwin(v121);
  v99 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v130 = &v87 - v32;
  __chkstk_darwin(v31);
  v124 = &v87 - v33;
  v88 = a1;
  v34 = *(a1 + 32);
  v132 = *(a1 + 24);
  v133 = v34;
  v98 = sub_1000348F4();
  static RegexComponentBuilder.buildExpression<A>(_:)();
  static RegexComponent<>.any.getter();
  v35 = type metadata accessor for RegexRepetitionBehavior();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v38 = v36 + 56;
  v114 = v35;
  v37(v24, 1, 1, v35);
  v90 = v38;
  v91 = v37;
  makeFactory()();
  v97 = sub_100285254();
  v92 = v27;
  v39 = v25;
  v93 = v25;
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  v129 = *(v19 + 8);
  v40 = v119;
  v129(v21, v119);
  v120 = v19 + 8;
  v41 = v24;
  sub_10000BE18(v24, &qword_10083EC18, &qword_1006DC308);
  v42 = *(v123 + 8);
  v123 += 8;
  v96 = v42;
  v42(v27, v39);
  v43 = v111;
  v44 = v108;
  OneOrMore.init(_:)();
  v87 = v41;
  v37(v41, 1, 1, v35);
  makeFactory()();
  v95 = sub_1000BA30C(&qword_10083EC38, &qword_10083EC20, &qword_1006DC310, &protocol conformance descriptor for OneOrMore<A>);
  v45 = v44;
  v46 = v43;
  v47 = v112;
  _RegexFactory.zeroOrOne<A, B>(_:_:)();
  v129(v21, v40);
  sub_10000BE18(v41, &qword_10083EC18, &qword_1006DC308);
  v48 = *(v122 + 8);
  v122 += 8;
  v94 = v48;
  v48(v46, v47);
  v49 = v130;
  Optionally.init(_:)();
  v113 = sub_1000BA30C(&qword_10083EC40, &qword_10083EC28, &qword_1006DC318, &protocol conformance descriptor for Optionally<A>);
  v50 = v121;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v51 = *(v131 + 8);
  v131 += 8;
  v115 = v51;
  v51(v49, v50);

  makeFactory()();
  v52 = v100;
  ChoiceOf.init(_:)();
  sub_1000BA30C(&qword_10083EC48, &qword_10083EC00, &qword_1006DC2F0, &protocol conformance descriptor for ChoiceOf<A>);
  v53 = v101;
  v54 = v52;
  v55 = v109;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v56 = *(v110 + 1);
  v56(v54, v55);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  v56(v53, v55);
  v57 = sub_100007224(&qword_10083EBF0, &qword_1006DC2C8);
  v101 = &protocol conformance descriptor for Regex<A>;
  v109 = sub_1000BA30C(&qword_10083EC50, &qword_10083EC10, &qword_1006DC300, &protocol conformance descriptor for Regex<A>);
  v58 = v116;
  v89 = v57;
  _RegexFactory.capture<A, B, C, D>(_:_:_:)();

  v59 = *(v125 + 8);
  v125 += 8;
  v110 = v59;
  v59(v45, v58);
  v60 = v119;
  v61 = v129;
  v129(v21, v119);
  v62 = v102;
  Capture.init(_:)();
  v88 = sub_1000BA30C(&qword_10083EC58, &qword_10083EC08, &qword_1006DC2F8, &protocol conformance descriptor for Capture<A>);
  v63 = v126;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v64 = *(v127 + 8);
  v127 += 8;
  v100 = v64;
  (v64)(v62, v63);
  v65 = v92;
  static RegexComponent<>.any.getter();
  v66 = v87;
  v67 = v91;
  v91(v87, 1, 1, v114);
  makeFactory()();
  v68 = v93;
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  v61(v21, v60);
  sub_10000BE18(v66, &qword_10083EC18, &qword_1006DC308);
  v96(v65, v68);
  v69 = v111;
  OneOrMore.init(_:)();
  v67(v66, 1, 1, v114);
  makeFactory()();
  v70 = v112;
  _RegexFactory.zeroOrOne<A, B>(_:_:)();
  v71 = v60;
  v61(v21, v60);
  sub_10000BE18(v66, &qword_10083EC18, &qword_1006DC308);
  v94(v69, v70);
  v72 = v99;
  Optionally.init(_:)();
  v73 = v121;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v115(v72, v73);
  v132 = v134;
  v133 = v135;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();

  makeFactory()();
  v74 = v103;
  v75 = v116;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v76 = v104;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v77 = v75;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v78 = v110;
  v110(v76, v75);
  v78(v74, v75);
  v79 = v129;
  v129(v21, v71);
  makeFactory()();
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v80 = v117;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v81 = v110;
  v110(v74, v77);
  v79(v21, v71);
  makeFactory()();
  v82 = v121;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  sub_1000BA30C(&qword_10083EBF8, &qword_10083EBE8, &qword_1006DC2C0, v101);
  v83 = v80;
  v84 = v105;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v81(v74, v77);
  v129(v21, v119);
  (*(v106 + 8))(v83, v84);
  v81(v118, v77);
  v81(v108, v77);
  v85 = v115;
  v115(v130, v82);
  (v100)(v128, v126);
  return v85(v124, v82);
}

uint64_t sub_100284080@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_100007224(&qword_10083EC10, &qword_1006DC300);
  __chkstk_darwin(v3 - 8);
  v51 = type metadata accessor for _RegexFactory();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_10083EC00, &qword_1006DC2F0);
  v40 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v48 = &v37 - v10;
  v11 = __chkstk_darwin(v9);
  v47 = &v37 - v12;
  v13 = __chkstk_darwin(v11);
  v46 = &v37 - v14;
  v15 = __chkstk_darwin(v13);
  v45 = &v37 - v16;
  v17 = __chkstk_darwin(v15);
  v44 = &v37 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v37 - v20;
  __chkstk_darwin(v19);
  v23 = &v37 - v22;
  v68 = 6645601;
  v69 = 0xE300000000000000;
  v24 = sub_1000348F4();
  static AlternationBuilder.buildExpression<A>(_:)();
  v66 = 7890291;
  v67 = 0xE300000000000000;
  static AlternationBuilder.buildExpression<A>(_:)();
  v64 = 0x6574617473;
  v65 = 0xE500000000000000;
  static AlternationBuilder.buildExpression<A>(_:)();
  v62 = 1701011826;
  v63 = 0xE400000000000000;
  static AlternationBuilder.buildExpression<A>(_:)();
  v60 = 0xD000000000000012;
  v61 = 0x80000001006FA480;
  static AlternationBuilder.buildExpression<A>(_:)();
  v58 = 0x7972746E756F63;
  v59 = 0xE700000000000000;
  static AlternationBuilder.buildExpression<A>(_:)();
  v56 = 0x6E69747465537861;
  v57 = 0xEA00000000007367;
  static AlternationBuilder.buildExpression<A>(_:)();
  v25 = a1[6];
  v54 = a1[5];
  v55 = v25;
  static AlternationBuilder.buildExpression<A>(_:)();
  v26 = a1[8];
  v52 = a1[7];
  v53 = v26;
  static AlternationBuilder.buildExpression<A>(_:)();
  v52 = v70;
  v53 = v71;
  v38 = v23;
  v49 = v24;
  static AlternationBuilder.buildPartialBlock<A>(first:)();

  v52 = v68;
  v53 = v69;
  makeFactory()();
  v27 = v6;
  v28 = sub_1000BA30C(&qword_10083EC48, &qword_10083EC00, &qword_1006DC2F0, &protocol conformance descriptor for ChoiceOf<A>);
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  v29 = *(v50 + 8);
  v50 += 8;
  v30 = v51;
  v29(v5, v51);

  v37 = v21;
  ChoiceOf.init(_:)();
  v52 = v66;
  v53 = v67;
  makeFactory()();
  v42 = v27;
  v43 = v28;
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  v29(v5, v30);

  ChoiceOf.init(_:)();
  v52 = v64;
  v53 = v65;
  makeFactory()();
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  v31 = v51;
  v29(v5, v51);

  ChoiceOf.init(_:)();
  v52 = v62;
  v53 = v63;
  makeFactory()();
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  v29(v5, v31);

  ChoiceOf.init(_:)();
  v52 = v60;
  v53 = v61;
  makeFactory()();
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  v29(v5, v31);

  ChoiceOf.init(_:)();
  v52 = v58;
  v53 = v59;
  makeFactory()();
  v32 = v42;
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  v29(v5, v31);

  ChoiceOf.init(_:)();
  v52 = v56;
  v53 = v57;
  makeFactory()();
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  v33 = v51;
  v29(v5, v51);

  v34 = v39;
  ChoiceOf.init(_:)();
  v52 = v54;
  v53 = v55;
  makeFactory()();
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  v29(v5, v33);

  ChoiceOf.init(_:)();
  v35 = *(v40 + 8);
  v35(v34, v32);
  v35(v48, v32);
  v35(v47, v32);
  v35(v46, v32);
  v35(v45, v32);
  v35(v44, v32);
  v35(v37, v32);
  return (v35)(v38, v32);
}

uint64_t sub_1002849E0@<X0>(void *a2@<X1>, char *a3@<X8>)
{
  if (static String._fromSubstring(_:)() == a2[5] && v5 == a2[6])
  {

    goto LABEL_13;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_13:
    v12 = 4;
    goto LABEL_14;
  }

  if (static String._fromSubstring(_:)() == a2[7] && v9 == a2[8])
  {

    v12 = 5;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      v12 = 5;
    }

    else
    {
      v13._countAndFlagsBits = static String._fromSubstring(_:)();
      result = sub_100285200(v13);
      if (result == 10)
      {
        v12 = 9;
      }

      else
      {
        v12 = result;
      }
    }
  }

LABEL_14:
  *a3 = v12;
  return result;
}

id sub_100284B08(uint64_t a1, int a2)
{
  v3 = v2;
  v58 = a2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v52 - v9;
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "fetchBiomeFedStatsUI: fetching biome-fedstats UI from fedStatsOptInUIElement", v13, 2u);
  }

  v14 = *(v5 + 8);
  v14(v10, v4);
  v15 = IdentityProofingUnorderedUIElement.title.getter();
  v17 = v16;
  if (v16)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  v57 = v18;
  v19 = IdentityProofingUnorderedUIElement.messages.getter();
  if (v19)
  {
    if (v19[2])
    {
      v20 = v19[4];
      v55 = v19[5];
      v56 = v20;

      goto LABEL_11;
    }
  }

  v55 = 0;
  v56 = 0;
LABEL_11:
  v21 = IdentityProofingUnorderedUIElement.actions.getter();
  if (v21)
  {
    if (v21[2])
    {
      v22 = v21[4];
      v53 = v21[5];
      v54 = v22;

      goto LABEL_16;
    }
  }

  v53 = 0;
  v54 = 0;
LABEL_16:
  v23 = IdentityProofingUnorderedUIElement.options.getter();
  v59 = v23 >> 62;
  if (v23)
  {
    if (v23 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = _swiftEmptyArrayStorage;
    if (v24)
    {
      v52[1] = v17;
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = v3;
        v27 = v8;
        v28 = v14;
        v29 = v4;
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_53;
        }

        v26 = v3;
        v27 = v8;
        v28 = v14;
        v29 = v4;
        v30 = *(v23 + 32);
      }

      v31 = v30;
      v32 = IdentityProofingUnorderedUIElementOption.bullets.getter();

      if (v32)
      {
        v25 = v32;
      }

      v4 = v29;
      v14 = v28;
      v8 = v27;
      v3 = v26;
    }
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

  v33 = sub_100282C00(v25);

  swift_beginAccess();
  *(v3 + 16) = v33;

  if (!v23)
  {
    goto LABEL_44;
  }

  v34 = v59;
  if (v59)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_30;
    }
  }

  else
  {
    result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_30:
      if ((v23 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_55;
        }

        v36 = *(v23 + 32);
      }

      v37 = v36;
      v38 = IdentityProofingUnorderedUIElementOption.assessments.getter();

      v39 = v38;
      v34 = v59;
      if (v39)
      {

        swift_beginAccess();
        sub_1001516C4(&v60, 6);
        swift_endAccess();
      }
    }
  }

  if (!v34)
  {
    result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_44;
    }

LABEL_39:
    if ((v23 & 0xC000000000000001) == 0)
    {
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v40 = *(v23 + 32);
        goto LABEL_42;
      }

LABEL_55:
      __break(1u);
      return result;
    }

LABEL_53:
    v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_42:
    v41 = v40;
    v42 = IdentityProofingUnorderedUIElementOption.accessibility.getter();

    if (v42)
    {

      swift_beginAccess();
      sub_1001516C4(&v60, 8);
      swift_endAccess();
    }

    goto LABEL_44;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_39;
  }

LABEL_44:
  IdentityProofingUnorderedUIElement.learnMoreURL.getter();
  v43 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  v44 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  defaultLogger()();
  v45 = v44;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = v14;
    v50 = swift_slowAlloc();
    *v48 = 138412290;
    *(v48 + 4) = v45;
    *v50 = v45;
    v51 = v45;
    _os_log_impl(&_mh_execute_header, v46, v47, "fetchBiomeFedStatsUI: returning biome-fedstats UI config %@", v48, 0xCu);
    sub_10000BE18(v50, &unk_100833B50, &unk_1006D8FB0);
    v14 = v49;
  }

  v14(v8, v4);
  return v45;
}

uint64_t sub_100285124()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1002851AC()
{
  result = qword_10083EBD0;
  if (!qword_10083EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083EBD0);
  }

  return result;
}

unint64_t sub_100285200(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FB900, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100285254()
{
  result = qword_10083EC30;
  if (!qword_10083EC30)
  {
    type metadata accessor for CharacterClass();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083EC30);
  }

  return result;
}

uint64_t sub_1002852D0@<X0>(void *a1@<X8>)
{
  v30 = type metadata accessor for ProofingSession();
  v2 = *(v30 - 8);
  v3 = __chkstk_darwin(v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  IdentityProofingConfiguration.state.getter();
  if (!v12)
  {
    (*(v9 + 104))(v11, enum case for DIPError.Code.idStateUnavailable(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  v13 = String.lowercased()();

  v14 = v29;
  v15 = sub_1005795AC(v13._countAndFlagsBits, v13._object);
  if (v14)
  {
  }

  v17 = v15;

  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_7;
    }

LABEL_20:

    *a1 = _swiftEmptyArrayStorage;
    return result;
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
  if (!v18)
  {
    goto LABEL_20;
  }

LABEL_7:
  v29 = 0;
  v31 = _swiftEmptyArrayStorage;
  result = sub_100173040(0, v18 & ~(v18 >> 63), 0);
  if (v18 < 0)
  {
    __break(1u);
  }

  else
  {
    v28 = a1;
    v19 = v31;
    if ((v17 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v18; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        ProofingSession.init(_:)();
        v31 = v19;
        v22 = v19[2];
        v21 = v19[3];
        if (v22 >= v21 >> 1)
        {
          sub_100173040((v21 > 1), v22 + 1, 1);
          v19 = v31;
        }

        v19[2] = v22 + 1;
        (*(v2 + 32))(v19 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v22, v7, v30);
      }
    }

    else
    {
      v23 = 32;
      do
      {
        v24 = *(v17 + v23);
        ProofingSession.init(_:)();
        v31 = v19;
        v26 = v19[2];
        v25 = v19[3];
        if (v26 >= v25 >> 1)
        {
          sub_100173040((v25 > 1), v26 + 1, 1);
          v19 = v31;
        }

        v19[2] = v26 + 1;
        (*(v2 + 32))(v19 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v26, v5, v30);
        v23 += 8;
        --v18;
      }

      while (v18);
    }

    *v28 = v19;
  }

  return result;
}

uint64_t sub_100285720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100285744, 0, 0);
}

uint64_t sub_100285744()
{
  if (*(v0[3] + 16))
  {
    type metadata accessor for ProofingSession();
    v1 = ProofingSession.workflowID.getter();
    v3 = v2;
    v4 = ProofingSession.country.getter();
    if (v5)
    {
      v6 = v4;
      v7 = v5;
    }

    else
    {

      v6 = 0;
      v7 = 0xE000000000000000;
    }

    v8 = ProofingSession.proofingSessionID.getter();
    v9 = v10;
  }

  else
  {

    v8 = 0;
    v9 = 0;
    v6 = 0;
    v1 = 0;
    v3 = 0;
    v7 = 0xE000000000000000;
  }

  v0[6] = v7;
  v0[7] = v3;
  v0[5] = v9;
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_1002858C4;
  v12 = v0[4];

  return sub_1002890C4(v1, v3, v6, v7, v8, v9, v12);
}

uint64_t sub_1002858C4()
{
  v1 = *v0;

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100285A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[31] = a4;
  v5[32] = v4;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[33] = v6;
  v5[34] = *(v6 - 8);
  v5[35] = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v5[36] = swift_task_alloc();
  v7 = type metadata accessor for ProofingSession();
  v5[37] = v7;
  v8 = *(v7 - 8);
  v5[38] = v8;
  v5[39] = *(v8 + 64);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[42] = v9;
  v5[43] = *(v9 - 8);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();

  return _swift_task_switch(sub_100285C10, 0, 0);
}

uint64_t sub_100285C10(uint64_t a1)
{
  v26 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[45];
  v7 = v1[42];
  v6 = v1[43];
  if (v4)
  {
    v8 = v1[30];
    v23 = v1[31];
    v10 = v1[28];
    v9 = v1[29];
    v24 = v1[45];
    v11 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100141FE4(v10, v9, v25);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100141FE4(v8, v23, v25);
    _os_log_impl(&_mh_execute_header, v2, v3, "Proofing has been cancelled by the user, will attempt to clean up all (%s, %s proofing sessions and notify the server", v11, 0x16u);
    swift_arrayDestroy();

    v12 = *(v6 + 8);
    v12(v24, v7);
  }

  else
  {

    v12 = *(v6 + 8);
    v12(v5, v7);
  }

  v1[46] = v12;
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v13 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v13 + 54);
  sub_100031B5C(&v13[4], (v1 + 2));
  os_unfair_lock_unlock(v13 + 54);
  v15 = v1[30];
  v14 = v1[31];
  v17 = v1[28];
  v16 = v1[29];
  v1[47] = v1[9];

  sub_100031918((v1 + 2));
  v18 = swift_allocObject();
  v1[48] = v18;
  v18[2] = v17;
  v18[3] = v16;
  v18[4] = v15;
  v18[5] = v14;
  v19 = swift_allocObject();
  v1[49] = v19;
  *(v19 + 16) = sub_10028AE28;
  *(v19 + 24) = v18;

  v20 = swift_task_alloc();
  v1[50] = v20;
  v21 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
  *v20 = v1;
  v20[1] = sub_100285F64;

  return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 27, sub_10026CBEC, v19, v21);
}

uint64_t sub_100285F64()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_100286574;
  }

  else
  {

    *(v2 + 416) = *(v2 + 216);
    v3 = sub_1002860A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002860A4()
{
  v32 = v0;
  v1 = *(v0 + 416);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 328);
    v3 = *(v0 + 296);
    v4 = *(v0 + 304);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 464) = v6;
    *(v0 + 424) = v5;
    *(v0 + 432) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v2, v1 + ((v6 + 32) & ~v6), v3);
    ProofingSession.documentType.getter();
    if (v7)
    {
      v8 = IdentityDocumentType.init(documentTypeString:)();
      *(v0 + 440) = v8;
      v9 = swift_task_alloc();
      *(v0 + 448) = v9;
      *v9 = v0;
      v9[1] = sub_100286634;
      v10 = *(v0 + 416);

      return sub_100287040(v10, v8);
    }

    v21 = *(v0 + 328);
    v22 = *(v0 + 296);
    v23 = *(v0 + 304);
    v25 = *(v0 + 272);
    v24 = *(v0 + 280);
    v26 = *(v0 + 264);

    (*(v25 + 104))(v24, enum case for DIPError.Code.idTypeUnavailable(_:), v26);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v23 + 8))(v21, v22);
  }

  else
  {

    defaultLogger()();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 368);
    v16 = *(v0 + 352);
    v17 = *(v0 + 336);
    if (v14)
    {
      v28 = *(v0 + 240);
      v29 = *(v0 + 248);
      v19 = *(v0 + 224);
      v18 = *(v0 + 232);
      v30 = *(v0 + 368);
      v20 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_100141FE4(v19, v18, v31);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_100141FE4(v28, v29, v31);
      _os_log_impl(&_mh_execute_header, v12, v13, "IdentityProofingCancellationProvider no proofing sessions found for %s, %s", v20, 0x16u);
      swift_arrayDestroy();

      v30(v16, v17);
    }

    else
    {

      v15(v16, v17);
    }

    (*(*(v0 + 272) + 104))(*(v0 + 280), enum case for DIPError.Code.proofingSessionDoesntExist(_:), *(v0 + 264));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100286574()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100286634()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_1002869FC;
  }

  else
  {
    v2 = sub_100286768;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100286768()
{
  v17 = *(v0 + 424);
  v1 = *(v0 + 464);
  v22 = *(v0 + 440);
  v2 = *(v0 + 328);
  v15 = *(v0 + 320);
  v16 = *(v0 + 312);
  v19 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v18 = *(v0 + 256);
  v20 = *(v0 + 240);
  v21 = *(v0 + 248);
  v5 = *(v18 + 16);
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v3, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;

  sub_1003E653C(0, 0, v3, &unk_1006DC3A8, v8);

  v7(v3, 1, 1, v6);
  v17(v15, v2, v4);
  v9 = (v1 + 40) & ~v1;
  v10 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v18;
  (*(v19 + 32))(&v11[v9], v15, v4);
  v12 = &v11[v10];
  *v12 = v20;
  *(v12 + 1) = v21;
  *&v11[(v10 + 23) & 0xFFFFFFFFFFFFFFF8] = v22;

  sub_100130390(0, 0, v3, &unk_1006DC3B8, v11);

  (*(v19 + 8))(v2, v4);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002869FC()
{
  (*(v0[38] + 8))(v0[41], v0[37]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_100286AB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v30 = a5;
  v9 = type metadata accessor for ProofingSession();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v29 - v14;
  v16 = v31;
  result = sub_1005796D0(a1, a2, a3, a4);
  if (v16)
  {
    return result;
  }

  v18 = result;
  v19 = v30;
  v31 = v9;
  v29[1] = 0;
  if (!(result >> 62))
  {
    v20 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_4;
    }

LABEL_17:

    *v19 = _swiftEmptyArrayStorage;
    return result;
  }

  v20 = _CocoaArrayWrapper.endIndex.getter();
  if (!v20)
  {
    goto LABEL_17;
  }

LABEL_4:
  v32 = _swiftEmptyArrayStorage;
  result = sub_100173040(0, v20 & ~(v20 >> 63), 0);
  if (v20 < 0)
  {
    __break(1u);
  }

  else
  {
    v21 = v32;
    if ((v18 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v20; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        ProofingSession.init(_:)();
        v32 = v21;
        v24 = v21[2];
        v23 = v21[3];
        if (v24 >= v23 >> 1)
        {
          sub_100173040((v23 > 1), v24 + 1, 1);
          v21 = v32;
        }

        v21[2] = v24 + 1;
        (*(v10 + 32))(v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24, v15, v31);
      }
    }

    else
    {
      v25 = 32;
      do
      {
        v26 = *(v18 + v25);
        ProofingSession.init(_:)();
        v32 = v21;
        v28 = v21[2];
        v27 = v21[3];
        if (v28 >= v27 >> 1)
        {
          sub_100173040((v27 > 1), v28 + 1, 1);
          v21 = v32;
        }

        v21[2] = v28 + 1;
        (*(v10 + 32))(v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v28, v13, v31);
        v25 += 8;
        --v20;
      }

      while (v20);
    }

    *v30 = v21;
  }

  return result;
}

uint64_t sub_100286D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_100286DB0, 0, 0);
}

uint64_t sub_100286DB0()
{
  v1 = ProofingSession.workflowID.getter();
  v3 = v2;
  v0[7] = v2;
  v4 = ProofingSession.proofingSessionID.getter();
  v6 = v5;
  v0[8] = v5;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_100286E8C;
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[4];

  return sub_1002890C4(v1, v3, v10, v8, v4, v6, v9);
}

uint64_t sub_100286E8C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100286FD4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100286FD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100287040(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3[31] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v3[32] = v4;
  v3[33] = *(v4 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v3[38] = v5;
  v3[39] = *(v5 - 8);
  v3[40] = swift_task_alloc();
  v6 = type metadata accessor for DIPError();
  v3[41] = v6;
  v3[42] = *(v6 - 8);
  v3[43] = swift_task_alloc();
  v7 = type metadata accessor for ProofingSession();
  v3[44] = v7;
  v8 = *(v7 - 8);
  v3[45] = v8;
  v3[46] = *(v8 + 64);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return _swift_task_switch(sub_100287294, 0, 0);
}

uint64_t sub_100287294()
{
  v1 = *(v0 + 224);
  v2 = *(v1 + 16);
  *(v0 + 400) = v2;
  if (!v2)
  {
    v13 = type metadata accessor for IdentityManagementSessionDelegate();
    v14 = [objc_opt_self() defaultCenter];
    v15 = String._bridgeToObjectiveC()();
    *(v0 + 216) = v13;
    sub_100007224(&qword_10083D698, &unk_1006DB6F0);
    [v14 postNotificationName:v15 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();

    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Will attempt to delete biome meta data", v18, 2u);
    }

    v19 = *(v0 + 280);
    v20 = *(v0 + 256);
    v21 = *(v0 + 264);
    v22 = *(v0 + 232);

    v23 = *(v21 + 8);
    v23(v19, v20);
    sub_1002A5038(v22);
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Will attempt to delete biome proofing data", v26, 2u);
    }

    v27 = *(v0 + 272);
    v28 = *(v0 + 256);
    v30 = *(v0 + 240);
    v29 = *(v0 + 248);
    v31 = *(v0 + 232);

    v23(v27, v28);
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v30;
    v33[5] = v31;

    sub_1003E653C(0, 0, v29, &unk_1006DC3A0, v33);

    v34 = *(v0 + 8);
    goto LABEL_16;
  }

  v3 = *(v0 + 352);
  v4 = *(v0 + 360);
  v5 = *(v4 + 16);
  v4 += 16;
  v6 = *(v4 + 64);
  *(v0 + 552) = v6;
  *(v0 + 556) = enum case for DIPError.Code.failedToDeletePIITokenNoIdentifier(_:);
  *(v0 + 408) = *(v4 + 56);
  *(v0 + 416) = v5;
  *(v0 + 424) = 0;
  *(v0 + 432) = 0;
  v7 = *(v0 + 392);
  *(v0 + 440) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v7, v1 + ((v6 + 32) & ~v6), v3);
  ProofingSession.target.getter();
  v8 = IdentityTarget.init(rawValue:)();
  *(v0 + 448) = v8;
  v9 = *(v0 + 392);
  if (v10)
  {
    v11 = *(v0 + 352);
    v12 = *(v0 + 360);
    (*(*(v0 + 312) + 104))(*(v0 + 320), enum case for DIPError.Code.targetUnavailable(_:), *(v0 + 304));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v12 + 8))(v9, v11);
LABEL_15:

    v34 = *(v0 + 8);
LABEL_16:

    return v34();
  }

  v35 = v8;
  v36 = ProofingSession.credentialIdentifier.getter();
  *(v0 + 456) = v36;
  *(v0 + 464) = v37;
  v38 = *(v0 + 392);
  if (!v37)
  {
    v47 = *(v0 + 352);
    v48 = *(v0 + 360);
    (*(*(v0 + 312) + 104))(*(v0 + 320), enum case for DIPError.Code.credentialIdentifierDoesNotExist(_:), *(v0 + 304));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v48 + 8))(v38, v47);
    goto LABEL_15;
  }

  v39 = v36;
  v40 = v37;
  v41 = ProofingSession.proofingSessionID.getter();
  *(v0 + 472) = v42;
  if (v42)
  {
    v43 = v41;
    v44 = v42;
    v45 = swift_task_alloc();
    *(v0 + 480) = v45;
    *v45 = v0;
    v45[1] = sub_100287BB8;

    return sub_1002A2920(v43, v44, v35, 128);
  }

  else
  {
    v49 = ProofingSession.piiTokenIdentifier.getter();
    *(v0 + 488) = v50;
    if (v50)
    {
      v51 = v49;
      v52 = v50;
      v53 = swift_task_alloc();
      *(v0 + 496) = v53;
      *v53 = v0;
      v53[1] = sub_100287D74;

      return sub_1002A2314(v51, v52, v39, v40);
    }

    else
    {
      v55 = *(v0 + 336);
      v54 = *(v0 + 344);
      v56 = *(v0 + 328);
      v57 = *(v0 + 296);
      v58 = *(v0 + 264);
      v64 = *(v0 + 256);
      (*(*(v0 + 312) + 104))(*(v0 + 320), *(v0 + 556), *(v0 + 304));
      sub_1000402AC(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      sub_100037214();
      swift_allocError();
      (*(v55 + 16))(v59, v54, v56);
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      (*(v58 + 8))(v57, v64);
      (*(v55 + 8))(v54, v56);

      v60 = *(v0 + 464);
      v61 = swift_task_alloc();
      *(v0 + 504) = v61;
      *v61 = v0;
      v61[1] = sub_100287E8C;
      v63 = *(v0 + 448);
      v62 = *(v0 + 456);

      return sub_10028B9DC(v63, v62, v60);
    }
  }
}

uint64_t sub_100287BB8()
{

  return _swift_task_switch(sub_100287CD0, 0, 0);
}

uint64_t sub_100287CD0()
{
  v1 = v0[58];
  v2 = swift_task_alloc();
  v0[63] = v2;
  *v2 = v0;
  v2[1] = sub_100287E8C;
  v4 = v0[56];
  v3 = v0[57];

  return sub_10028B9DC(v4, v3, v1);
}

uint64_t sub_100287D74()
{

  return _swift_task_switch(sub_10028B1A4, 0, 0);
}

uint64_t sub_100287E8C()
{

  return _swift_task_switch(sub_100287F88, 0, 0);
}

void sub_100287F88()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 424);
  v2 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], v0 + 16);
  if (v1)
  {

    os_unfair_lock_unlock(v2 + 54);
  }

  else
  {
    v3 = *(v0 + 416);
    v4 = *(v0 + 384);
    v5 = *(v0 + 392);
    v6 = *(v0 + 360);
    v7 = *(v0 + 352);
    v8 = (*(v0 + 552) + 16) & ~*(v0 + 552);
    os_unfair_lock_unlock(v2 + 54);
    *(v0 + 512) = *(v0 + 72);

    sub_100031918(v0 + 16);
    v3(v4, v5, v7);
    v9 = swift_allocObject();
    *(v0 + 520) = v9;
    (*(v6 + 32))(v9 + v8, v4, v7);
    v10 = swift_allocObject();
    *(v0 + 528) = v10;
    *(v10 + 16) = sub_10028AC6C;
    *(v10 + 24) = v9;

    v11 = swift_task_alloc();
    *(v0 + 536) = v11;
    *v11 = v0;
    v11[1] = sub_1002881B8;

    AsyncCoreDataContainer.performWrite<A>(_:)(v11, sub_10017F710, v10, &type metadata for () + 8);
  }
}

uint64_t sub_1002881B8()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_100288E64;
  }

  else
  {

    v2 = sub_1002882EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002882EC(uint64_t a1)
{
  v99 = v1;
  v2 = *(v1 + 416);
  v3 = *(v1 + 392);
  v4 = *(v1 + 376);
  v5 = *(v1 + 352);
  defaultLogger()();
  v2(v4, v3, v5);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 464);
  if (v8)
  {
    v91 = *(v1 + 456);
    v92 = v7;
    v10 = *(v1 + 376);
    v12 = *(v1 + 352);
    v11 = *(v1 + 360);
    v95 = *(v1 + 288);
    v96 = *(v1 + 392);
    v93 = *(v1 + 264);
    v94 = *(v1 + 256);
    v13 = swift_slowAlloc();
    v98[0] = swift_slowAlloc();
    *v13 = 136315650;
    v14 = ProofingSession.proofingSessionID.getter();
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 4999502;
    }

    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0xE300000000000000;
    }

    v18 = *(v11 + 8);
    v18(v10, v12);
    v19 = sub_100141FE4(v16, v17, v98);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = sub_100141FE4(v91, v9, v98);

    *(v13 + 14) = v20;
    *(v13 + 22) = 2080;
    v21 = IdentityTarget.debugDescription.getter();
    v23 = sub_100141FE4(v21, v22, v98);

    *(v13 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v6, v92, "Deleted proofing session with proofingSessionID %s and credentialIdentifier %s and target %s", v13, 0x20u);
    swift_arrayDestroy();

    (*(v93 + 8))(v95, v94);
    v18(v96, v12);
  }

  else
  {
    v24 = *(v1 + 392);
    v25 = *(v1 + 376);
    v26 = *(v1 + 352);
    v27 = *(v1 + 360);
    v28 = *(v1 + 288);
    v29 = *(v1 + 256);
    v30 = *(v1 + 264);

    v31 = *(v27 + 8);
    v31(v25, v26);
    (*(v30 + 8))(v28, v29);
    v31(v24, v26);
  }

  v32 = *(v1 + 432) + 1;
  v33 = *(v1 + 544);
  if (v32 == *(v1 + 400))
  {
    v34 = type metadata accessor for IdentityManagementSessionDelegate();
    v35 = [objc_opt_self() defaultCenter];
    v36 = String._bridgeToObjectiveC()();
    *(v1 + 216) = v34;
    sub_100007224(&qword_10083D698, &unk_1006DB6F0);
    [v35 postNotificationName:v36 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();

    defaultLogger()();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Will attempt to delete biome meta data", v39, 2u);
    }

    v40 = *(v1 + 280);
    v41 = *(v1 + 256);
    v42 = *(v1 + 264);
    v43 = *(v1 + 232);

    v44 = *(v42 + 8);
    v44(v40, v41);
    sub_1002A5038(v43);
    if (!v33)
    {
      defaultLogger()();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Will attempt to delete biome proofing data", v47, 2u);
      }

      v48 = *(v1 + 272);
      v49 = *(v1 + 256);
      v51 = *(v1 + 240);
      v50 = *(v1 + 248);
      v52 = *(v1 + 232);

      v44(v48, v49);
      v53 = type metadata accessor for TaskPriority();
      (*(*(v53 - 8) + 56))(v50, 1, 1, v53);
      v54 = swift_allocObject();
      v54[2] = 0;
      v54[3] = 0;
      v54[4] = v51;
      v54[5] = v52;

      sub_1003E653C(0, 0, v50, &unk_1006DC3A0, v54);

      v55 = *(v1 + 8);
      goto LABEL_27;
    }

LABEL_26:

    v55 = *(v1 + 8);
LABEL_27:

    return v55();
  }

  *(v1 + 424) = v33;
  *(v1 + 432) = v32;
  v56 = *(v1 + 416);
  v57 = *(v1 + 392);
  v58 = *(v1 + 352);
  v59 = *(v1 + 224) + ((*(v1 + 552) + 32) & ~*(v1 + 552)) + *(v1 + 408) * v32;
  *(v1 + 440) = (*(v1 + 360) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v56(v57, v59, v58);
  ProofingSession.target.getter();
  v60 = IdentityTarget.init(rawValue:)();
  *(v1 + 448) = v60;
  v61 = *(v1 + 392);
  if (v62)
  {
    v63 = *(v1 + 352);
    v64 = *(v1 + 360);
    (*(*(v1 + 312) + 104))(*(v1 + 320), enum case for DIPError.Code.targetUnavailable(_:), *(v1 + 304));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
LABEL_25:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v64 + 8))(v61, v63);
    goto LABEL_26;
  }

  v65 = v60;
  v66 = ProofingSession.credentialIdentifier.getter();
  *(v1 + 456) = v66;
  *(v1 + 464) = v67;
  v61 = *(v1 + 392);
  if (!v67)
  {
    v63 = *(v1 + 352);
    v64 = *(v1 + 360);
    (*(*(v1 + 312) + 104))(*(v1 + 320), enum case for DIPError.Code.credentialIdentifierDoesNotExist(_:), *(v1 + 304));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
    goto LABEL_25;
  }

  v68 = v66;
  v69 = v67;
  v70 = ProofingSession.proofingSessionID.getter();
  *(v1 + 472) = v71;
  if (v71)
  {
    v72 = v70;
    v73 = v71;
    v74 = swift_task_alloc();
    *(v1 + 480) = v74;
    *v74 = v1;
    v74[1] = sub_100287BB8;

    return sub_1002A2920(v72, v73, v65, 128);
  }

  else
  {
    v76 = ProofingSession.piiTokenIdentifier.getter();
    *(v1 + 488) = v77;
    if (v77)
    {
      v78 = v76;
      v79 = v77;
      v80 = swift_task_alloc();
      *(v1 + 496) = v80;
      *v80 = v1;
      v80[1] = sub_100287D74;

      return sub_1002A2314(v78, v79, v68, v69);
    }

    else
    {
      v82 = *(v1 + 336);
      v81 = *(v1 + 344);
      v83 = *(v1 + 328);
      v84 = *(v1 + 296);
      v85 = *(v1 + 264);
      v97 = *(v1 + 256);
      (*(*(v1 + 312) + 104))(*(v1 + 320), *(v1 + 556), *(v1 + 304));
      sub_1000402AC(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      sub_100037214();
      swift_allocError();
      (*(v82 + 16))(v86, v81, v83);
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      (*(v85 + 8))(v84, v97);
      (*(v82 + 8))(v81, v83);

      v87 = *(v1 + 464);
      v88 = swift_task_alloc();
      *(v1 + 504) = v88;
      *v88 = v1;
      v88[1] = sub_100287E8C;
      v90 = *(v1 + 448);
      v89 = *(v1 + 456);

      return sub_10028B9DC(v90, v89, v87);
    }
  }
}

uint64_t sub_100288E64()
{
  v1 = v0[49];
  v2 = v0[44];
  v3 = v0[45];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_100288F9C(uint64_t a1)
{
  v3 = ProofingSession.objectID.getter();
  v4 = sub_10057886C(v3);

  if (!v1)
  {
    [*(a1 + 16) deleteObject:v4];

    sub_1005783D4();
  }
}

uint64_t sub_10028901C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100027B9C;

  return sub_1002A54D0(a5);
}

uint64_t sub_1002890C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = type metadata accessor for Logger();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v10 = type metadata accessor for DIPError();
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v11 = type metadata accessor for DIPError.Code();
  v8[18] = v11;
  v8[19] = *(v11 - 8);
  v8[20] = swift_task_alloc();

  return _swift_task_switch(sub_100289260, 0, 0);
}

uint64_t sub_100289260()
{
  v42 = v0;
  if (v0[3])
  {
    if (v0[7])
    {
      sub_10000BA08((*(v0[9] + 24) + 16), *(*(v0[9] + 24) + 40));
      v1 = swift_task_alloc();
      v0[21] = v1;
      *v1 = v0;
      v1[1] = sub_10028981C;
      v2 = v0[7];
      v3 = v0[8];
      v4 = v0[5];
      v5 = v0[6];
      v7 = v0[3];
      v6 = v0[4];
      v8 = v0[2];

      return sub_10022083C(&off_1007FBA10, v6, v4, v8, v7, v5, v2, v3);
    }

    v39 = *(v0[19] + 104);
    v39(v0[20], enum case for DIPError.Code.proofingSessionIDUnavailable(_:), v0[18]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
  }

  else
  {
    v39 = *(v0[19] + 104);
    v39(v0[20], enum case for DIPError.Code.workflowIdDoesNotExist(_:), v0[18]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v10 = v0[17];
  v11 = v0[15];
  v13 = v0[13];
  v12 = v0[14];
  v14 = v0[11];
  v34 = v0[10];
  v35 = v0[16];
  v39(v0[20], enum case for DIPError.Code.internalError(_:), v0[18]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  v15 = *(v11 + 16);
  v15(v16, v10, v12);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v40 = *(v14 + 8);
  v40(v13, v34);

  defaultLogger()();
  v15(v35, v10, v12);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[16];
  v21 = v0[17];
  v23 = v0[14];
  v22 = v0[15];
  v24 = v0[12];
  v38 = v0[10];
  if (v19)
  {
    v25 = swift_slowAlloc();
    v37 = v21;
    v26 = swift_slowAlloc();
    v41 = v26;
    *v25 = 136315138;
    v27 = Error.localizedDescription.getter();
    v36 = v24;
    v29 = v28;
    v30 = *(v22 + 8);
    v30(v20, v23);
    v31 = sub_100141FE4(v27, v29, &v41);

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v17, v18, "Received an error communicating user cancelling the proofing flow with the server - %s. Treating this as a non fatal error as this has not user impact.", v25, 0xCu);
    sub_10000BB78(v26);

    v40(v36, v38);
    v30(v37, v23);
  }

  else
  {

    v32 = *(v22 + 8);
    v32(v20, v23);
    v40(v24, v38);
    v32(v21, v23);
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_10028981C()
{
  v2 = *v1;
  *(v2 + 176) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100289990, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100289990()
{
  v36 = v0;
  v34 = enum case for DIPError.Code.internalError(_:);
  v33 = *(v0[19] + 104);
  v33(v0[20]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[17];
  v2 = v0[15];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v31 = v0[16];
  v27 = v0[10];
  (v33)(v0[20], v34, v0[18]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  v6 = v1;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_allocError();
  v7 = *(v2 + 16);
  v7(v8, v6, v3);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v9 = *(v5 + 8);
  v9(v4, v27);

  defaultLogger()();
  v7(v31, v6, v3);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[16];
  v14 = v0[17];
  v16 = v0[14];
  v15 = v0[15];
  v30 = v0[10];
  v32 = v0[12];
  if (v12)
  {
    v17 = swift_slowAlloc();
    v28 = v14;
    v18 = swift_slowAlloc();
    v35 = v18;
    *v17 = 136315138;
    v19 = Error.localizedDescription.getter();
    v29 = v9;
    v21 = v20;
    v22 = *(v15 + 8);
    v22(v13, v16);
    v23 = sub_100141FE4(v19, v21, &v35);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received an error communicating user cancelling the proofing flow with the server - %s. Treating this as a non fatal error as this has not user impact.", v17, 0xCu);
    sub_10000BB78(v18);

    v29(v32, v30);
    v22(v28, v16);
  }

  else
  {

    v24 = *(v15 + 8);
    v24(v13, v16);
    v9(v32, v30);
    v24(v14, v16);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_100289DF4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100289E58(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  v4 = type metadata accessor for ProofingSession();
  v2[33] = v4;
  v2[34] = *(v4 - 8);
  v2[35] = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v2[36] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[37] = v5;
  v2[38] = *(v5 - 8);
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_10028A008, 0, 0);
}

uint64_t sub_10028A008(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Proofing has been cancelled by the user, will attempt to clean up and notify the server using proofing configuration and proofing options", v4, 2u);
  }

  v6 = v1[38];
  v5 = v1[39];
  v7 = v1[37];

  (*(v6 + 8))(v5, v7);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v8 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v8 + 54);
  sub_1000318FC(&v8[4], (v1 + 2));
  os_unfair_lock_unlock(v8 + 54);
  v9 = v1[28];
  v1[40] = v1[9];

  sub_100031918((v1 + 2));
  v10 = swift_allocObject();
  v1[41] = v10;
  *(v10 + 16) = v9;
  v11 = swift_allocObject();
  v1[42] = v11;
  *(v11 + 16) = sub_10028AA04;
  *(v11 + 24) = v10;
  v12 = v9;

  v13 = swift_task_alloc();
  v1[43] = v13;
  v14 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
  *v13 = v1;
  v13[1] = sub_10028A270;

  return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 27, sub_100267820, v11, v14);
}

uint64_t sub_10028A270()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_10028A5C4;
  }

  else
  {

    *(v2 + 360) = *(v2 + 216);
    v3 = sub_10028A3B0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10028A3B0(uint64_t a1)
{
  v2 = IdentityProofingConfiguration.documentType.getter();
  v3 = swift_task_alloc();
  *(v1 + 368) = v3;
  *v3 = v1;
  v3[1] = sub_10028A458;
  v4 = *(v1 + 360);

  return sub_100287040(v4, v2);
}

uint64_t sub_10028A458()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10028A66C, 0, 0);
  }
}

uint64_t sub_10028A5C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10028A66C()
{
  v1 = v0[45];
  v2 = v0[36];
  v3 = *(v0[29] + 16);
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 56);
  v5(v2, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;

  sub_1003E653C(0, 0, v2, &unk_1006DC378, v6);

  if (*(v1 + 16) && (v8 = v0[34], v7 = v0[35], v9 = v0[33], (*(v8 + 16))(v7, v0[45] + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v9), ProofingSession.documentType.getter(), v11 = v10, (*(v8 + 8))(v7, v9), v11))
  {
    v12 = v0[45];
    v13 = v0[36];
    v14 = v0[29];
    v15 = IdentityDocumentType.init(documentTypeString:)();
    v5(v13, 1, 1, v4);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = v12;
    v16[6] = v15;

    sub_100130390(0, 0, v13, &unk_1006DC388, v16);

    v17 = v0[1];
  }

  else
  {
    v19 = v0[31];
    v18 = v0[32];
    v20 = v0[30];

    (*(v19 + 104))(v18, enum case for DIPError.Code.unexpectedIDType(_:), v20);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v17 = v0[1];
  }

  return v17();
}

uint64_t sub_10028A9CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10028AA20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_100293CE4(a1, v4, v5, v6);
}

uint64_t sub_10028AAD4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10028AB1C(uint64_t a1)
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

  return sub_100285720(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10028ABE4()
{
  v1 = type metadata accessor for ProofingSession();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10028ACE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10028AD28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100041F04;

  return sub_10028901C(a1, v4, v5, v7, v6);
}

uint64_t sub_10028ADE8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10028AE50(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10028AE9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_100293CE4(a1, v4, v5, v6);
}

uint64_t sub_10028AF50()
{
  v1 = type metadata accessor for ProofingSession();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10028B044(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ProofingSession() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100041F04;

  return sub_100286D88(a1, v9, v10, v11, v1 + v6, v13, v14, v15);
}

uint64_t sub_10028B1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for Logger();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_10028B294, 0, 0);
}

uint64_t sub_10028B294()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[4];
    if (v2)
    {
      if (qword_100832C20 != -1)
      {
        swift_once();
      }

      v3 = *(qword_100882228 + 16);
      v0[11] = v3;
      v17 = sub_1002A4034;
      v4 = v3;
      v5 = swift_task_alloc();
      v0[12] = v5;
      *v5 = v0;
      v5[1] = sub_10028B490;
      v6 = v0[3];
      v7 = v2;
      v8 = v4;
      goto LABEL_10;
    }
  }

  if ((v1 & 2) != 0)
  {
    if (v0[6])
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = v0[6];
        v11 = *(Strong + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
        v0[14] = v11;
        v12 = Strong;
        v13 = v11;

        v17 = sub_1002A472C;
        v14 = swift_task_alloc();
        v0[15] = v14;
        *v14 = v0;
        v14[1] = sub_10028B7A8;
        v6 = v0[5];
        v7 = v10;
        v8 = v13;
LABEL_10:

        return v17(v6, v7, v8);
      }
    }
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10028B490()
{
  v2 = *(*v1 + 88);
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_10028B5BC;
  }

  else
  {
    v3 = sub_10028B66C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10028B5BC(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[8];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10028B66C, 0, 0);
}

uint64_t sub_10028B66C()
{
  if ((*(v0 + 16) & 2) != 0 && *(v0 + 48) && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v2 = *(v0 + 48);
    v3 = *(Strong + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
    *(v0 + 112) = v3;
    v4 = Strong;
    v5 = v3;

    v6 = swift_task_alloc();
    *(v0 + 120) = v6;
    *v6 = v0;
    v6[1] = sub_10028B7A8;
    v7 = *(v0 + 40);

    return sub_1002A472C(v7, v2, v5);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10028B7A8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10028B924;
  }

  else
  {
    v2 = sub_10028B8BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10028B8BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10028B924()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10028B9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_10028BAFC, 0, 0);
}

uint64_t sub_10028BAFC()
{
  v1 = v0[2];
  if (v1 == 2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = *(Strong + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
      v0[15] = v9;
      v10 = Strong;
      v11 = v9;

      v18 = sub_1002A472C;
      v12 = swift_task_alloc();
      v0[16] = v12;
      *v12 = v0;
      v12[1] = sub_10028C078;
      v5 = v0[4];
      v6 = v0[3];
      v7 = v11;
LABEL_8:

      return v18(v6, v5, v7);
    }
  }

  else
  {
    if (v1 == 1)
    {
      if (qword_100832C20 != -1)
      {
        swift_once();
      }

      v2 = *(qword_100882228 + 16);
      v0[12] = v2;
      v18 = sub_1002A4034;
      v3 = v2;
      v4 = swift_task_alloc();
      v0[13] = v4;
      *v4 = v0;
      v4[1] = sub_10028BE50;
      v5 = v0[4];
      v6 = v0[3];
      v7 = v3;
      goto LABEL_8;
    }

    (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.targetUnavailable(_:), v0[9]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v15 = v0[7];
    v14 = v0[8];
    v16 = v0[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_10028BE50()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  *(v3 + 112) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10028BFBC, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_10028BFBC(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  v4 = v1[6];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_10028C078()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_10028C200;
  }

  else
  {
    v2 = sub_10028C18C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10028C18C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10028C200()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10028C2C4()
{
  v1[57] = v0;
  v2 = type metadata accessor for Logger();
  v1[58] = v2;
  v1[59] = *(v2 - 8);
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v3 = type metadata accessor for ProofingSession();
  v1[62] = v3;
  v4 = *(v3 - 8);
  v1[63] = v4;
  v1[64] = *(v4 + 64);
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();

  return _swift_task_switch(sub_10028C400, 0, 0);
}

uint64_t sub_10028C400()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = qword_100881E78;
  v0[67] = qword_100881E78;
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], (v0 + 2));
  os_unfair_lock_unlock(v2 + 54);
  v0[68] = v0[9];

  sub_100031918((v0 + 2));
  v3 = swift_task_alloc();
  v0[69] = v3;
  v4 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
  *v3 = v0;
  v3[1] = sub_10028C564;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 55, sub_10029FAA0, 0, v4);
}

uint64_t sub_10028C564()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = sub_10028C89C;
  }

  else
  {

    *(v2 + 568) = *(v2 + 440);
    v3 = sub_10028C688;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10028C688()
{
  result = *(v0 + 568);
  v2 = *(result + 16);
  *(v0 + 576) = v2;
  if (v2)
  {
    v3 = *(v0 + 504);
    v4 = *(v0 + 560);
    *(v0 + 592) = 0;
    *(v0 + 584) = v4;
    if (*(result + 16))
    {
      v5 = *(v0 + 528);
      v6 = *(v0 + 496);
      v8 = *(v3 + 16);
      v7 = v3 + 16;
      v9 = *(v7 + 64);
      *(v0 + 664) = v9;
      *(v0 + 600) = v8;
      *(v0 + 608) = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v8(v5, result + ((v9 + 32) & ~v9), v6);
      v10 = swift_task_alloc();
      *(v0 + 616) = v10;
      *v10 = v0;
      v10[1] = sub_10028CA98;
      v11 = *(v0 + 528);

      return sub_100299718(v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 488);
    v16 = *(v0 + 464);
    v17 = *(v0 + 472);
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Deleted all the proofing sessions successfully", v18, 2u);
    }

    (*(v17 + 8))(v15, v16);

    v19 = *(v0 + 8);

    return v19();
  }

  return result;
}

uint64_t sub_10028C89C()
{
  v17 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[59];
    v15 = v0[60];
    v4 = v0[58];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received an error during clearing of all proofing sessions %s", v5, 0xCu);
    sub_10000BB78(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[59];
    v10 = v0[60];
    v12 = v0[58];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_10028CA98()
{

  return _swift_task_switch(sub_10028CB94, 0, 0);
}

void sub_10028CB94()
{
  v1 = *(v0 + 584);
  v2 = *(*(v0 + 536) + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], v0 + 216);
  if (v1)
  {

    os_unfair_lock_unlock(v2 + 54);
  }

  else
  {
    v3 = *(v0 + 600);
    v4 = *(v0 + 664);
    v5 = *(v0 + 528);
    v6 = *(v0 + 520);
    v7 = *(v0 + 504);
    v8 = *(v0 + 496);
    os_unfair_lock_unlock(v2 + 54);
    *(v0 + 624) = *(v0 + 272);

    sub_100031918(v0 + 216);
    v3(v6, v5, v8);
    v9 = swift_allocObject();
    *(v0 + 632) = v9;
    (*(v7 + 32))(v9 + ((v4 + 16) & ~v4), v6, v8);
    v10 = swift_allocObject();
    *(v0 + 640) = v10;
    *(v10 + 16) = sub_1002A7788;
    *(v10 + 24) = v9;

    v11 = swift_task_alloc();
    *(v0 + 648) = v11;
    *v11 = v0;
    v11[1] = sub_10028CD8C;

    AsyncCoreDataContainer.performWrite<A>(_:)(v11, sub_10021F3D0, v10, &type metadata for () + 8);
  }
}

uint64_t sub_10028CD8C()
{
  *(*v1 + 656) = v0;

  if (v0)
  {
    v2 = sub_10028D104;
  }

  else
  {

    v2 = sub_10028CEC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10028CEC0()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 592) + 1;
  result = (*(*(v0 + 504) + 8))(*(v0 + 528), *(v0 + 496));
  if (v2 == v1)
  {

    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 488);
    v8 = *(v0 + 464);
    v9 = *(v0 + 472);
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Deleted all the proofing sessions successfully", v10, 2u);
    }

    (*(v9 + 8))(v7, v8);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v12 = *(v0 + 656);
    v13 = *(v0 + 592) + 1;
    *(v0 + 592) = v13;
    *(v0 + 584) = v12;
    v14 = *(v0 + 568);
    if (v13 >= *(v14 + 16))
    {
      __break(1u);
    }

    else
    {
      v15 = *(v0 + 528);
      v16 = *(v0 + 496);
      v17 = *(v0 + 504);
      v18 = *(v17 + 16);
      v17 += 16;
      v19 = *(v17 + 64);
      *(v0 + 664) = v19;
      v20 = v14 + ((v19 + 32) & ~v19) + *(v17 + 56) * v13;
      *(v0 + 600) = v18;
      *(v0 + 608) = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v18(v15, v20, v16);
      v21 = swift_task_alloc();
      *(v0 + 616) = v21;
      *v21 = v0;
      v21[1] = sub_10028CA98;
      v22 = *(v0 + 528);

      return sub_100299718(v22);
    }
  }

  return result;
}

uint64_t sub_10028D104()
{
  v20 = v0;
  v1 = v0[66];
  v2 = v0[62];
  v3 = v0[63];

  (*(v3 + 8))(v1, v2);
  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[59];
    v18 = v0[60];
    v7 = v0[58];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = sub_100141FE4(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received an error during clearing of all proofing sessions %s", v8, 0xCu);
    sub_10000BB78(v9);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = v0[59];
    v13 = v0[60];
    v15 = v0[58];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[1];

  return v16();
}

void sub_10028D344(void *a1@<X8>)
{
  v23 = a1;
  v2 = type metadata accessor for ProofingSession();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v22 - v7;
  type metadata accessor for StoredProofingSession();
  v9 = static StoredProofingSession.fetchRequest()();
  v10 = NSManagedObjectContext.fetch<A>(_:)();

  if (v1)
  {
    return;
  }

  v11 = v23;
  v24 = v2;
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = v23;
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_17:

    *v13 = _swiftEmptyArrayStorage;
    return;
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  v13 = v11;
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_4:
  v25 = _swiftEmptyArrayStorage;
  sub_100173040(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v22[1] = 0;
    v14 = v25;
    if ((v10 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v12; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        ProofingSession.init(_:)();
        v25 = v14;
        v17 = v14[2];
        v16 = v14[3];
        if (v17 >= v16 >> 1)
        {
          sub_100173040((v16 > 1), v17 + 1, 1);
          v14 = v25;
        }

        v14[2] = v17 + 1;
        (*(v3 + 32))(v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v8, v24);
      }
    }

    else
    {
      v18 = 32;
      do
      {
        v19 = *(v10 + v18);
        ProofingSession.init(_:)();
        v25 = v14;
        v21 = v14[2];
        v20 = v14[3];
        if (v21 >= v20 >> 1)
        {
          sub_100173040((v20 > 1), v21 + 1, 1);
          v14 = v25;
        }

        v14[2] = v21 + 1;
        (*(v3 + 32))(v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v21, v6, v24);
        v18 += 8;
        --v12;
      }

      while (v12);
    }

    *v23 = v14;
  }
}

uint64_t sub_10028D628()
{
  v1[57] = v0;
  v2 = type metadata accessor for Logger();
  v1[58] = v2;
  v1[59] = *(v2 - 8);
  v1[60] = swift_task_alloc();
  v3 = type metadata accessor for ProofingSession();
  v1[61] = v3;
  v1[62] = *(v3 - 8);
  v1[63] = swift_task_alloc();

  return _swift_task_switch(sub_10028D744, 0, 0);
}

uint64_t sub_10028D744()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = qword_100881E78;
  v0[64] = qword_100881E78;
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], (v0 + 2));
  os_unfair_lock_unlock(v2 + 54);
  v3 = v0[57];
  v0[65] = v0[9];

  sub_100031918((v0 + 2));
  v4 = swift_allocObject();
  v0[66] = v4;
  *(v4 + 16) = sub_1002A758C;
  *(v4 + 24) = v3;
  swift_retain_n();
  v5 = swift_task_alloc();
  v0[67] = v5;
  v6 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
  *v5 = v0;
  v5[1] = sub_10028D8F8;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 55, sub_10026CBEC, v4, v6);
}

uint64_t sub_10028D8F8()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = sub_10028DC88;
  }

  else
  {

    *(v2 + 552) = *(v2 + 440);
    v3 = sub_10028DA3C;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_10028DA3C()
{
  v1 = *(v0 + 552);
  v2 = *(v1 + 16);
  *(v0 + 560) = v2;
  if (v2)
  {
    v3 = *(v0 + 488);
    v4 = *(v0 + 496);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 640) = v6;
    *(v0 + 568) = *(v4 + 56);
    *(v0 + 576) = v5;
    *(v0 + 584) = 0;
    v5(*(v0 + 504), v1 + ((v6 + 32) & ~v6), v3);
    v7 = swift_task_alloc();
    *(v0 + 592) = v7;
    *v7 = v0;
    v7[1] = sub_10028DE88;
    v8 = *(v0 + 504);

    sub_100299718(v8);
  }

  else
  {
    v9 = *(v0 + 544);
    v10 = *(*(v0 + 512) + 16);
    os_unfair_lock_lock(v10 + 54);
    sub_100031B5C(&v10[4], v0 + 216);
    os_unfair_lock_unlock(v10 + 54);
    if (!v9)
    {
      v11 = *(v0 + 552);
      *(v0 + 600) = *(v0 + 272);

      sub_100031918(v0 + 216);
      v12 = swift_allocObject();
      *(v0 + 608) = v12;
      *(v12 + 16) = v11;
      v13 = swift_allocObject();
      *(v0 + 616) = v13;
      *(v13 + 16) = sub_1002A75E0;
      *(v13 + 24) = v12;

      v14 = swift_task_alloc();
      *(v0 + 624) = v14;
      *v14 = v0;
      v14[1] = sub_10028E22C;

      AsyncCoreDataContainer.performWrite<A>(_:)(v14, sub_10021F3D0, v13, &type metadata for () + 8);
    }
  }
}

uint64_t sub_10028DC88()
{
  v17 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[59];
    v15 = v0[60];
    v4 = v0[58];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received an error during clearing of all proofing sessions %s", v5, 0xCu);
    sub_10000BB78(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[59];
    v10 = v0[60];
    v12 = v0[58];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_10028DE88()
{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 496);
  v3 = *(*v0 + 488);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10028DFE0, 0, 0);
}

void sub_10028DFE0()
{
  v1 = *(v0 + 584) + 1;
  if (v1 == *(v0 + 560))
  {
    v2 = *(v0 + 544);
    v3 = *(*(v0 + 512) + 16);
    os_unfair_lock_lock(v3 + 54);
    sub_100031B5C(&v3[4], v0 + 216);
    os_unfair_lock_unlock(v3 + 54);
    if (!v2)
    {
      v6 = *(v0 + 552);
      *(v0 + 600) = *(v0 + 272);

      sub_100031918(v0 + 216);
      v7 = swift_allocObject();
      *(v0 + 608) = v7;
      *(v7 + 16) = v6;
      v8 = swift_allocObject();
      *(v0 + 616) = v8;
      *(v8 + 16) = sub_1002A75E0;
      *(v8 + 24) = v7;

      v9 = swift_task_alloc();
      *(v0 + 624) = v9;
      *v9 = v0;
      v9[1] = sub_10028E22C;

      AsyncCoreDataContainer.performWrite<A>(_:)(v9, sub_10021F3D0, v8, &type metadata for () + 8);
    }
  }

  else
  {
    *(v0 + 584) = v1;
    (*(v0 + 576))(*(v0 + 504), *(v0 + 552) + ((*(v0 + 640) + 32) & ~*(v0 + 640)) + *(v0 + 568) * v1, *(v0 + 488));
    v4 = swift_task_alloc();
    *(v0 + 592) = v4;
    *v4 = v0;
    v4[1] = sub_10028DE88;
    v5 = *(v0 + 504);

    sub_100299718(v5);
  }
}

uint64_t sub_10028E22C()
{
  *(*v1 + 632) = v0;

  if (v0)
  {
    v2 = sub_10028E3CC;
  }

  else
  {

    v2 = sub_10028E360;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10028E360()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10028E3CC()
{
  v17 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[59];
    v15 = v0[60];
    v4 = v0[58];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received an error during clearing of all proofing sessions %s", v5, 0xCu);
    sub_10000BB78(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[59];
    v10 = v0[60];
    v12 = v0[58];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

void sub_10028E5CC(uint64_t a1@<X1>, void *a2@<X8>)
{
  v98 = a1;
  v93 = a2;
  v3 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v3 - 8);
  v97 = &v92 - v4;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v110 = v5;
  v111 = v6;
  v7 = __chkstk_darwin(v5);
  v95 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v96 = &v92 - v10;
  v11 = __chkstk_darwin(v9);
  v102 = &v92 - v12;
  v13 = __chkstk_darwin(v11);
  v100 = &v92 - v14;
  __chkstk_darwin(v13);
  v104 = &v92 - v15;
  v16 = type metadata accessor for ProofingSession();
  v109 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v92 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v92 - v24;
  __chkstk_darwin(v23);
  v27 = &v92 - v26;
  v117 = &_swiftEmptySetSingleton;
  type metadata accessor for StoredProofingSession();
  v28 = static StoredProofingSession.fetchRequest()();
  v29 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v2)
  {
    v105 = v22;
    v106 = v25;
    v115 = v16;
    if (v29 >> 62)
    {
      goto LABEL_63;
    }

    for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v31 = v104;
      v32 = v115;
      v92 = v2;
      if (i)
      {
        v116 = _swiftEmptyArrayStorage;
        sub_100173040(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          __break(1u);
          return;
        }

        v33 = v116;
        v34 = v109;
        if ((v29 & 0xC000000000000001) != 0)
        {
          for (j = 0; j != i; ++j)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            ProofingSession.init(_:)();
            v116 = v33;
            v37 = v33[2];
            v36 = v33[3];
            if (v37 >= v36 >> 1)
            {
              sub_100173040((v36 > 1), v37 + 1, 1);
              v34 = v109;
              v33 = v116;
            }

            v33[2] = v37 + 1;
            (*(v34 + 32))(v33 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v37, v27, v115);
          }
        }

        else
        {
          v39 = 32;
          do
          {
            v40 = *(v29 + v39);
            ProofingSession.init(_:)();
            v116 = v33;
            v27 = v33[2];
            v41 = v33[3];
            if (v27 >= v41 >> 1)
            {
              sub_100173040((v41 > 1), v27 + 1, 1);
              v34 = v109;
              v33 = v116;
            }

            v33[2] = v27 + 1;
            (*(v34 + 32))(v33 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v27, v19, v115);
            v39 += 8;
            --i;
          }

          while (i);
        }

        v31 = v104;
        v32 = v115;
      }

      else
      {

        v33 = _swiftEmptyArrayStorage;
        v34 = v109;
      }

      v19 = v106;
      v107 = v33[2];
      if (!v107)
      {
LABEL_59:

        *v93 = v33;
        return;
      }

      v42 = 0;
      v114 = v33 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
      v112 = (v34 + 8);
      v113 = v34 + 16;
      v108 = (v111 + 8);
      *&v38 = 136315138;
      v94 = v38;
      v99 = v33;
      while (v42 < v33[2])
      {
        v29 = *(v34 + 16);
        (v29)(v19, &v114[*(v34 + 72) * v42], v32);
        v43 = ProofingSession.proofingSessionID.getter();
        if (v44)
        {
          if (!v33[2])
          {
            goto LABEL_62;
          }

          v45 = v43;
          v27 = v44;
          v46 = v105;
          (v29)(v105, v114, v32);
          ProofingSession.documentType.getter();
          v48 = v47;
          v111 = *v112;
          (v111)(v46, v32);
          if (v48)
          {
            v49 = IdentityDocumentType.init(documentTypeString:)();
            v50 = v117;
            v51 = v117[2];
            v19 = v106;
            v103 = v49;
            if (v51 && (Hasher.init(_seed:)(), String.hash(into:)(), v52 = Hasher._finalize()(), v53 = -1 << *(v50 + 32), v54 = v52 & ~v53, ((*(v50 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v54) & 1) != 0))
            {
              v55 = ~v53;
              while (1)
              {
                v56 = (v50[6] + 16 * v54);
                v57 = *v56 == v45 && v27 == v56[1];
                if (v57 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v54 = (v54 + 1) & v55;
                if (((*(v50 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v54) & 1) == 0)
                {
                  goto LABEL_35;
                }
              }

              v89 = v95;
              defaultLogger()();
              v29 = Logger.logObject.getter();
              v90 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v29, v90))
              {
                v91 = swift_slowAlloc();
                *v91 = 0;
                _os_log_impl(&_mh_execute_header, v29, v90, "No proofingSessions exist to notify the server on terminal state", v91, 2u);
              }

              (*v108)(v89, v110);
              v32 = v115;
              (v111)(v19, v115);
              v31 = v104;
            }

            else
            {
LABEL_35:
              v58 = v102;
              defaultLogger()();

              v59 = Logger.logObject.getter();
              v60 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v59, v60))
              {
                v61 = v58;
                v62 = swift_slowAlloc();
                v63 = swift_slowAlloc();
                v116 = v63;
                *v62 = v94;
                *(v62 + 4) = sub_100141FE4(v45, v27, &v116);
                _os_log_impl(&_mh_execute_header, v59, v60, "Server has not been notified of about terminal state for proofingSessionID %s", v62, 0xCu);
                sub_10000BB78(v63);

                v64 = *v108;
                v65 = v61;
                v19 = v106;
              }

              else
              {

                v64 = *v108;
                v65 = v58;
              }

              v101 = v64;
              v64(v65, v110);

              sub_100151120(&v116, v45, v27);

              v72 = v19;
              v74 = ProofingSession.country.getter();
              v75 = v73;
              if (v73)
              {
                v29 = v73;
              }

              else
              {
                v29 = 0xE000000000000000;
              }

              v76 = ProofingSession.workflowID.getter();
              if (v77)
              {
                v78 = v76;
                v79 = v77;
                if (v75)
                {
                  v80 = v74;
                }

                else
                {
                  v80 = 0;
                }

                v81 = type metadata accessor for TaskPriority();
                v82 = v97;
                (*(*(v81 - 8) + 56))(v97, 1, 1, v81);
                v2 = swift_allocObject();
                v2[2] = 0;
                v2[3] = 0;
                v2[4] = v45;
                v2[5] = v27;
                v2[6] = v98;
                v2[7] = v80;
                v2[8] = v29;
                v2[9] = v78;
                v83 = v103;
                v2[10] = v79;
                v2[11] = v83;

                sub_1003E653C(0, 0, v82, &unk_1006DC540, v2);

                v32 = v115;
                (v111)(v72, v115);
                v31 = v104;
                v19 = v72;
              }

              else
              {

                v84 = v96;
                defaultLogger()();

                v29 = Logger.logObject.getter();
                v85 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v29, v85))
                {
                  v86 = swift_slowAlloc();
                  v87 = swift_slowAlloc();
                  v116 = v87;
                  *v86 = v94;
                  v88 = sub_100141FE4(v45, v27, &v116);

                  *(v86 + 4) = v88;
                  _os_log_impl(&_mh_execute_header, v29, v85, "unable to notify server of terminal state for proofingSessionID %s as workflowID doesn't exist", v86, 0xCu);
                  sub_10000BB78(v87);
                }

                else
                {
                }

                v101(v84, v110);
                v19 = v106;
                v32 = v115;
                (v111)(v106, v115);
                v31 = v104;
              }

              v33 = v99;
            }
          }

          else
          {

            v68 = v100;
            defaultLogger()();
            v29 = Logger.logObject.getter();
            v69 = static os_log_type_t.debug.getter();
            v70 = os_log_type_enabled(v29, v69);
            v19 = v106;
            if (v70)
            {
              v71 = swift_slowAlloc();
              *v71 = 0;
              _os_log_impl(&_mh_execute_header, v29, v69, "documentTypeString doesn't doesn't exist. Cannot continue with clearAllProofingSessionsAndNotifyServer", v71, 2u);
              v32 = v115;
            }

            (*v108)(v68, v110);
            (v111)(v19, v32);
          }
        }

        else
        {
          defaultLogger()();
          v29 = Logger.logObject.getter();
          v66 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v29, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 0;
            _os_log_impl(&_mh_execute_header, v29, v66, "ProofingSessionID doesn't doesn't exist. Cannot continue with clearAllProofingSessionsAndNotifyServer", v67, 2u);
            v32 = v115;
          }

          (*v108)(v31, v110);
          (*v112)(v19, v32);
        }

        ++v42;
        v34 = v109;
        if (v42 == v107)
        {
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      ;
    }
  }
}

void sub_10028F254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPError.Code();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(type metadata accessor for ProofingSession() - 8);
    v10 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      v12 = ProofingSession.objectID.getter();
      v13 = *(a1 + 16);
      v14 = [v13 objectWithID:v12];
      type metadata accessor for StoredProofingSession();
      v15 = swift_dynamicCastClass();
      if (!v15)
      {
        break;
      }

      v16 = v15;

      [v13 deleteObject:v16];
      v10 += v11;
      if (!--v8)
      {
        goto LABEL_5;
      }
    }

    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v34 = 0xD000000000000010;
    v35 = 0x80000001007094D0;
    v22 = [v12 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    v27._countAndFlagsBits = 0xD00000000000001FLL;
    v27._object = 0x80000001007094F0;
    String.append(_:)(v27);
    (*(v31 + 104))(v33, enum case for DIPError.Code.coreDataError(_:), v32);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
LABEL_5:
    v17 = v36;
    sub_1005783D4();
    if (!v17)
    {
      v18 = v28;
      defaultLogger()();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Deleted all the proofing sessions successfully", v21, 2u);
      }

      (*(v29 + 8))(v18, v30);
    }
  }
}

uint64_t sub_10028F6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 728) = v6;
  *(v7 + 1140) = a6;
  *(v7 + 720) = a5;
  *(v7 + 712) = a4;
  *(v7 + 704) = a3;
  *(v7 + 696) = a2;
  *(v7 + 688) = a1;
  v8 = type metadata accessor for DIPError.Code();
  *(v7 + 736) = v8;
  *(v7 + 744) = *(v8 - 8);
  *(v7 + 752) = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  *(v7 + 760) = swift_task_alloc();
  v9 = type metadata accessor for ProofingSession();
  *(v7 + 768) = v9;
  *(v7 + 776) = *(v9 - 8);
  *(v7 + 784) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v7 + 792) = v10;
  *(v7 + 800) = *(v10 - 8);
  *(v7 + 808) = swift_task_alloc();
  *(v7 + 816) = swift_task_alloc();
  *(v7 + 824) = swift_task_alloc();
  *(v7 + 832) = swift_task_alloc();
  *(v7 + 840) = swift_task_alloc();
  *(v7 + 848) = swift_task_alloc();

  return _swift_task_switch(sub_10028F8AC, 0, 0);
}

uint64_t sub_10028F8AC(uint64_t a1)
{
  v51 = v1;
  if (*(v1 + 1140))
  {
    defaultLogger()();

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 840);
    v6 = *(v1 + 800);
    v7 = *(v1 + 792);
    if (v4)
    {
      v46 = *(v1 + 712);
      v8 = *(v1 + 704);
      v9 = *(v1 + 696);
      v10 = *(v1 + 688);
      v48 = *(v1 + 840);
      v11 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v11 = 136315394;
      *(v11 + 4) = sub_100141FE4(v10, v9, v50);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_100141FE4(v8, v46, v50);
      _os_log_impl(&_mh_execute_header, v2, v3, "IdentityProofingCleanupProvider clearing all proofing sessions for %s, and %s...", v11, 0x16u);
      swift_arrayDestroy();

      v12 = *(v6 + 8);
      v12(v48, v7);
    }

    else
    {

      v12 = *(v6 + 8);
      v12(v5, v7);
    }

    *(v1 + 920) = v12;
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v25 = qword_100881E78;
    *(v1 + 928) = qword_100881E78;
    v26 = *(v25 + 16);
    os_unfair_lock_lock(v26 + 54);
    sub_100031B5C(&v26[4], v1 + 16);
    os_unfair_lock_unlock(v26 + 54);
    v27 = *(v1 + 712);
    v28 = *(v1 + 704);
    v29 = *(v1 + 696);
    v30 = *(v1 + 688);
    *(v1 + 936) = *(v1 + 72);

    sub_100031918(v1 + 16);
    v31 = swift_allocObject();
    *(v1 + 944) = v31;
    v31[2] = v30;
    v31[3] = v29;
    v31[4] = v28;
    v31[5] = v27;
    v32 = swift_allocObject();
    *(v1 + 952) = v32;
    *(v32 + 16) = sub_1002A7484;
    *(v32 + 24) = v31;

    v33 = swift_task_alloc();
    *(v1 + 960) = v33;
    v34 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
    *v33 = v1;
    v33[1] = sub_100290CF8;
    v35 = v1 + 656;
  }

  else
  {
    defaultLogger()();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v1 + 848);
    v17 = *(v1 + 800);
    v18 = *(v1 + 792);
    if (v15)
    {
      v19 = *(v1 + 712);
      v20 = *(v1 + 704);
      v21 = *(v1 + 696);
      v49 = *(v1 + 848);
      v22 = *(v1 + 688);
      v47 = *(v1 + 792);
      v23 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v23 = 136315650;
      *(v23 + 4) = sub_100141FE4(v22, v21, v50);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_100141FE4(v20, v19, v50);
      *(v23 + 22) = 2048;
      *(v23 + 24) = IdentityTarget.rawValue.getter();
      _os_log_impl(&_mh_execute_header, v13, v14, "IdentityProofingCleanupProvider clearing all proofing sessions for %s, %s, target: %lld...", v23, 0x20u);
      swift_arrayDestroy();

      v24 = *(v17 + 8);
      v24(v49, v47);
    }

    else
    {

      v24 = *(v17 + 8);
      v24(v16, v18);
    }

    *(v1 + 856) = v24;
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v36 = qword_100881E78;
    *(v1 + 864) = qword_100881E78;
    v37 = *(v36 + 16);
    os_unfair_lock_lock(v37 + 54);
    sub_100031B5C(&v37[4], v1 + 416);
    os_unfair_lock_unlock(v37 + 54);
    v38 = *(v1 + 720);
    v39 = *(v1 + 712);
    v40 = *(v1 + 704);
    v41 = *(v1 + 696);
    v42 = *(v1 + 688);
    *(v1 + 872) = *(v1 + 472);

    sub_100031918(v1 + 416);
    v43 = swift_allocObject();
    *(v1 + 880) = v43;
    v43[2] = v42;
    v43[3] = v41;
    v43[4] = v40;
    v43[5] = v39;
    v43[6] = v38;
    v32 = swift_allocObject();
    *(v1 + 888) = v32;
    *(v32 + 16) = sub_1002A7568;
    *(v32 + 24) = v43;

    v44 = swift_task_alloc();
    *(v1 + 896) = v44;
    v34 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
    *v44 = v1;
    v44[1] = sub_10028FF24;
    v35 = v1 + 680;
  }

  return AsyncCoreDataContainer.performRead<A>(_:)(v35, sub_10026CBEC, v32, v34);
}

uint64_t sub_10028FF24()
{
  v2 = *v1;
  *(*v1 + 904) = v0;

  if (v0)
  {
    v3 = sub_1002908BC;
  }

  else
  {

    *(v2 + 912) = *(v2 + 680);
    v3 = sub_100290068;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100290068()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 904);
  v3 = *(v0 + 856);
  *(v0 + 1008) = *(v0 + 864);
  *(v0 + 1000) = v1;
  *(v0 + 992) = v3;
  *(v0 + 984) = v2;
  *(v0 + 672) = &_swiftEmptySetSingleton;
  v4 = *(v1 + 16);
  *(v0 + 1016) = v4;
  if (!v4)
  {
LABEL_31:

    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 984);
    v49 = *(*(v0 + 1008) + 16);
    os_unfair_lock_lock(v49 + 54);
    sub_100031B5C(&v49[4], v0 + 216);
    os_unfair_lock_unlock(v49 + 54);
    if (!v48)
    {
      v50 = *(v0 + 1000);
      v51 = *(v0 + 1140);
      v52 = *(v0 + 720);
      v53 = *(v0 + 712);
      v54 = *(v0 + 704);
      v55 = *(v0 + 696);
      v56 = *(v0 + 688);
      *(v0 + 1096) = *(v0 + 272);

      sub_100031918(v0 + 216);
      v57 = swift_allocObject();
      *(v0 + 1104) = v57;
      *(v57 + 16) = v50;
      *(v57 + 24) = v56;
      *(v57 + 32) = v55;
      *(v57 + 40) = v54;
      *(v57 + 48) = v53;
      *(v57 + 56) = v52;
      *(v57 + 64) = v51 & 1;
      v58 = swift_allocObject();
      *(v0 + 1112) = v58;
      *(v58 + 16) = sub_1002A74EC;
      *(v58 + 24) = v57;

      v59 = swift_task_alloc();
      *(v0 + 1120) = v59;
      *v59 = v0;
      v59[1] = sub_100292704;

      AsyncCoreDataContainer.performWrite<A>(_:)(v59, sub_10021F3D0, v58, &type metadata for () + 8);
    }

    return;
  }

  *(v0 + 1136) = *(*(v0 + 776) + 80);
  *(v0 + 1064) = 0;
  *(v0 + 1056) = v3;
  *(v0 + 1048) = v3;
  *(v0 + 1040) = v3;
  *(v0 + 1032) = v3;
  *(v0 + 1024) = v3;
  v5 = *(v1 + 16);

  if (!v5)
  {
LABEL_29:
    __break(1u);
LABEL_30:

    goto LABEL_31;
  }

  v7 = 0;
  v8 = (v0 + 672);
  while (1)
  {
    (*(*(v0 + 776) + 16))(*(v0 + 784), v6 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 776) + 72) * v7, *(v0 + 768));
    v9 = ProofingSession.proofingSessionID.getter();
    *(v0 + 1072) = v10;
    if (!v10)
    {
      break;
    }

    v11 = v9;
    v12 = v10;
    v13 = *v8;
    if (*(*v8 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v14 = Hasher._finalize()();
      v15 = -1 << *(v13 + 32);
      v16 = v14 & ~v15;
      if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (1)
        {
          v18 = (*(v13 + 48) + 16 * v16);
          v19 = *v18 == v11 && v12 == v18[1];
          if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

LABEL_41:

        break;
      }
    }

LABEL_14:
    v20 = ProofingSession.workflowID.getter();
    if (v21)
    {
      v22 = v20;
      v23 = v21;
      v24 = ProofingSession.country.getter();
      if (v25)
      {
        v26 = v24;
        v27 = v25;
        ProofingSession.documentType.getter();
        if (v28)
        {
          v60 = *(v0 + 760);
          v70 = *(v0 + 728);
          v69 = IdentityDocumentType.init(documentTypeString:)();

          sub_100151120((v0 + 640), v11, v12);

          v61 = type metadata accessor for TaskPriority();
          (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
          v62 = swift_allocObject();
          v62[2] = 0;
          v62[3] = 0;
          v62[4] = v11;
          v62[5] = v12;
          v62[6] = v70;
          v62[7] = v26;
          v62[8] = v27;
          v62[9] = v22;
          v62[10] = v23;
          v62[11] = v69;

          sub_1003E653C(0, 0, v60, &unk_1006DC538, v62);

          v63 = IdentityDocumentType.rawValue.getter();
          if (v63 == IdentityDocumentType.rawValue.getter())
          {
            v64 = *(v0 + 1140);
            v65 = swift_task_alloc();
            *(v0 + 1080) = v65;
            *v65 = v0;
            v65[1] = sub_100291ACC;
            v66 = *(v0 + 720);

            sub_1002A2920(v11, v12, v66, v64 & 1 | 0x80);
            return;
          }

          goto LABEL_41;
        }

        defaultLogger()();
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        v31 = os_log_type_enabled(v29, v30);
        v32 = *(v0 + 832);
        v33 = *(v0 + 792);
        if (!v31)
        {
LABEL_24:

LABEL_26:
          v3(v32, v33);
          goto LABEL_27;
        }

        v34 = swift_slowAlloc();
        *v34 = 0;
        v35 = v30;
        v36 = v29;
        v37 = "IdentityProofingCleanupProvider: Unable to retrieve the documentTypeString from the database";
      }

      else
      {

        defaultLogger()();
        v29 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();
        v45 = os_log_type_enabled(v29, v44);
        v32 = *(v0 + 824);
        v33 = *(v0 + 792);
        if (!v45)
        {
          goto LABEL_24;
        }

        v34 = swift_slowAlloc();
        *v34 = 0;
        v35 = v44;
        v36 = v29;
        v37 = "IdentityProofingCleanupProvider country does not exist; skipping notifying server";
      }

      _os_log_impl(&_mh_execute_header, v36, v35, v37, v34, 2u);

      v3(v32, v33);
    }

    else
    {

      defaultLogger()();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v38, v39))
      {
        v32 = *(v0 + 816);
        v33 = *(v0 + 792);

        goto LABEL_26;
      }

      v40 = *(v0 + 992);
      v41 = *(v0 + 816);
      v42 = *(v0 + 792);
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "IdentityProofingCleanupProvider workflow id does not exist; skipping notifying server", v43, 2u);

      v40(v41, v42);
      v3 = *(v0 + 992);
    }

LABEL_27:
    v46 = *(v0 + 1016);
    v47 = *(v0 + 1064) + 1;
    (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));
    if (v47 == v46)
    {
      goto LABEL_30;
    }

    v7 = *(v0 + 1064) + 1;
    *(v0 + 1064) = v7;
    *(v0 + 1056) = v3;
    *(v0 + 1048) = v3;
    *(v0 + 1040) = v3;
    *(v0 + 1032) = v3;
    *(v0 + 1024) = v3;
    v6 = *(v0 + 1000);
    if (v7 >= *(v6 + 16))
    {
      goto LABEL_29;
    }
  }

  v67 = swift_task_alloc();
  *(v0 + 1088) = v67;
  *v67 = v0;
  v67[1] = sub_100291C3C;
  v68 = *(v0 + 784);

  sub_100299718(v68);
}

uint64_t sub_1002908BC()
{
  v25 = v0;

  v1 = *(v0 + 856);
  defaultLogger()();

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v23 = v1;
    v4 = *(v0 + 1140);
    v5 = *(v0 + 712);
    v6 = *(v0 + 704);
    v7 = *(v0 + 696);
    v8 = *(v0 + 688);
    v9 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v9 = 136315906;
    *(v9 + 4) = sub_100141FE4(v8, v7, v24);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100141FE4(v6, v5, v24);
    *(v9 + 22) = 2080;
    if (v4)
    {
      v10 = 0xE500000000000000;
      v11 = 0x3E6C696E3CLL;
    }

    else
    {
      v11 = IdentityTarget.debugDescription.getter();
      v10 = v14;
    }

    v22 = *(v0 + 808);
    v15 = *(v0 + 792);
    v16 = sub_100141FE4(v11, v10, v24);

    *(v9 + 24) = v16;
    *(v9 + 32) = 2080;
    swift_getErrorValue();
    v17 = Error.localizedDescription.getter();
    v19 = sub_100141FE4(v17, v18, v24);

    *(v9 + 34) = v19;
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityProofingCleanupProvider Received an error during clearing all proofing sessions for %s, %s, %s: %s", v9, 0x2Au);
    swift_arrayDestroy();

    v23(v22, v15);
  }

  else
  {
    v12 = *(v0 + 808);
    v13 = *(v0 + 792);

    v1(v12, v13);
  }

  (*(*(v0 + 744) + 104))(*(v0 + 752), enum case for DIPError.Code.unableToClearWatchProofingSession(_:), *(v0 + 736));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100290CF8()
{
  v2 = *v1;
  *(*v1 + 968) = v0;

  if (v0)
  {
    v3 = sub_100291690;
  }

  else
  {

    *(v2 + 976) = *(v2 + 656);
    v3 = sub_100290E3C;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100290E3C()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 968);
  v3 = *(v0 + 920);
  *(v0 + 1008) = *(v0 + 928);
  *(v0 + 1000) = v1;
  *(v0 + 992) = v3;
  *(v0 + 984) = v2;
  *(v0 + 672) = &_swiftEmptySetSingleton;
  v4 = *(v1 + 16);
  *(v0 + 1016) = v4;
  if (!v4)
  {
LABEL_31:

    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 984);
    v49 = *(*(v0 + 1008) + 16);
    os_unfair_lock_lock(v49 + 54);
    sub_100031B5C(&v49[4], v0 + 216);
    os_unfair_lock_unlock(v49 + 54);
    if (!v48)
    {
      v50 = *(v0 + 1000);
      v51 = *(v0 + 1140);
      v52 = *(v0 + 720);
      v53 = *(v0 + 712);
      v54 = *(v0 + 704);
      v55 = *(v0 + 696);
      v56 = *(v0 + 688);
      *(v0 + 1096) = *(v0 + 272);

      sub_100031918(v0 + 216);
      v57 = swift_allocObject();
      *(v0 + 1104) = v57;
      *(v57 + 16) = v50;
      *(v57 + 24) = v56;
      *(v57 + 32) = v55;
      *(v57 + 40) = v54;
      *(v57 + 48) = v53;
      *(v57 + 56) = v52;
      *(v57 + 64) = v51 & 1;
      v58 = swift_allocObject();
      *(v0 + 1112) = v58;
      *(v58 + 16) = sub_1002A74EC;
      *(v58 + 24) = v57;

      v59 = swift_task_alloc();
      *(v0 + 1120) = v59;
      *v59 = v0;
      v59[1] = sub_100292704;

      AsyncCoreDataContainer.performWrite<A>(_:)(v59, sub_10021F3D0, v58, &type metadata for () + 8);
    }

    return;
  }

  *(v0 + 1136) = *(*(v0 + 776) + 80);
  *(v0 + 1064) = 0;
  *(v0 + 1056) = v3;
  *(v0 + 1048) = v3;
  *(v0 + 1040) = v3;
  *(v0 + 1032) = v3;
  *(v0 + 1024) = v3;
  v5 = *(v1 + 16);

  if (!v5)
  {
LABEL_29:
    __break(1u);
LABEL_30:

    goto LABEL_31;
  }

  v7 = 0;
  v8 = (v0 + 672);
  while (1)
  {
    (*(*(v0 + 776) + 16))(*(v0 + 784), v6 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 776) + 72) * v7, *(v0 + 768));
    v9 = ProofingSession.proofingSessionID.getter();
    *(v0 + 1072) = v10;
    if (!v10)
    {
      break;
    }

    v11 = v9;
    v12 = v10;
    v13 = *v8;
    if (*(*v8 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v14 = Hasher._finalize()();
      v15 = -1 << *(v13 + 32);
      v16 = v14 & ~v15;
      if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (1)
        {
          v18 = (*(v13 + 48) + 16 * v16);
          v19 = *v18 == v11 && v12 == v18[1];
          if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

LABEL_41:

        break;
      }
    }

LABEL_14:
    v20 = ProofingSession.workflowID.getter();
    if (v21)
    {
      v22 = v20;
      v23 = v21;
      v24 = ProofingSession.country.getter();
      if (v25)
      {
        v26 = v24;
        v27 = v25;
        ProofingSession.documentType.getter();
        if (v28)
        {
          v60 = *(v0 + 760);
          v70 = *(v0 + 728);
          v69 = IdentityDocumentType.init(documentTypeString:)();

          sub_100151120((v0 + 640), v11, v12);

          v61 = type metadata accessor for TaskPriority();
          (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
          v62 = swift_allocObject();
          v62[2] = 0;
          v62[3] = 0;
          v62[4] = v11;
          v62[5] = v12;
          v62[6] = v70;
          v62[7] = v26;
          v62[8] = v27;
          v62[9] = v22;
          v62[10] = v23;
          v62[11] = v69;

          sub_1003E653C(0, 0, v60, &unk_1006DC538, v62);

          v63 = IdentityDocumentType.rawValue.getter();
          if (v63 == IdentityDocumentType.rawValue.getter())
          {
            v64 = *(v0 + 1140);
            v65 = swift_task_alloc();
            *(v0 + 1080) = v65;
            *v65 = v0;
            v65[1] = sub_100291ACC;
            v66 = *(v0 + 720);

            sub_1002A2920(v11, v12, v66, v64 & 1 | 0x80);
            return;
          }

          goto LABEL_41;
        }

        defaultLogger()();
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        v31 = os_log_type_enabled(v29, v30);
        v32 = *(v0 + 832);
        v33 = *(v0 + 792);
        if (!v31)
        {
LABEL_24:

LABEL_26:
          v3(v32, v33);
          goto LABEL_27;
        }

        v34 = swift_slowAlloc();
        *v34 = 0;
        v35 = v30;
        v36 = v29;
        v37 = "IdentityProofingCleanupProvider: Unable to retrieve the documentTypeString from the database";
      }

      else
      {

        defaultLogger()();
        v29 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();
        v45 = os_log_type_enabled(v29, v44);
        v32 = *(v0 + 824);
        v33 = *(v0 + 792);
        if (!v45)
        {
          goto LABEL_24;
        }

        v34 = swift_slowAlloc();
        *v34 = 0;
        v35 = v44;
        v36 = v29;
        v37 = "IdentityProofingCleanupProvider country does not exist; skipping notifying server";
      }

      _os_log_impl(&_mh_execute_header, v36, v35, v37, v34, 2u);

      v3(v32, v33);
    }

    else
    {

      defaultLogger()();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v38, v39))
      {
        v32 = *(v0 + 816);
        v33 = *(v0 + 792);

        goto LABEL_26;
      }

      v40 = *(v0 + 992);
      v41 = *(v0 + 816);
      v42 = *(v0 + 792);
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "IdentityProofingCleanupProvider workflow id does not exist; skipping notifying server", v43, 2u);

      v40(v41, v42);
      v3 = *(v0 + 992);
    }

LABEL_27:
    v46 = *(v0 + 1016);
    v47 = *(v0 + 1064) + 1;
    (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));
    if (v47 == v46)
    {
      goto LABEL_30;
    }

    v7 = *(v0 + 1064) + 1;
    *(v0 + 1064) = v7;
    *(v0 + 1056) = v3;
    *(v0 + 1048) = v3;
    *(v0 + 1040) = v3;
    *(v0 + 1032) = v3;
    *(v0 + 1024) = v3;
    v6 = *(v0 + 1000);
    if (v7 >= *(v6 + 16))
    {
      goto LABEL_29;
    }
  }

  v67 = swift_task_alloc();
  *(v0 + 1088) = v67;
  *v67 = v0;
  v67[1] = sub_100291C3C;
  v68 = *(v0 + 784);

  sub_100299718(v68);
}

uint64_t sub_100291690()
{
  v25 = v0;

  v1 = *(v0 + 920);
  defaultLogger()();

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v23 = v1;
    v4 = *(v0 + 1140);
    v5 = *(v0 + 712);
    v6 = *(v0 + 704);
    v7 = *(v0 + 696);
    v8 = *(v0 + 688);
    v9 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v9 = 136315906;
    *(v9 + 4) = sub_100141FE4(v8, v7, v24);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100141FE4(v6, v5, v24);
    *(v9 + 22) = 2080;
    if (v4)
    {
      v10 = 0xE500000000000000;
      v11 = 0x3E6C696E3CLL;
    }

    else
    {
      v11 = IdentityTarget.debugDescription.getter();
      v10 = v14;
    }

    v22 = *(v0 + 808);
    v15 = *(v0 + 792);
    v16 = sub_100141FE4(v11, v10, v24);

    *(v9 + 24) = v16;
    *(v9 + 32) = 2080;
    swift_getErrorValue();
    v17 = Error.localizedDescription.getter();
    v19 = sub_100141FE4(v17, v18, v24);

    *(v9 + 34) = v19;
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityProofingCleanupProvider Received an error during clearing all proofing sessions for %s, %s, %s: %s", v9, 0x2Au);
    swift_arrayDestroy();

    v23(v22, v15);
  }

  else
  {
    v12 = *(v0 + 808);
    v13 = *(v0 + 792);

    v1(v12, v13);
  }

  (*(*(v0 + 744) + 104))(*(v0 + 752), enum case for DIPError.Code.unableToClearWatchProofingSession(_:), *(v0 + 736));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100291ACC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 1088) = v3;
  *v3 = v2;
  v3[1] = sub_100291C3C;
  v4 = *(v1 + 784);

  return sub_100299718(v4);
}

uint64_t sub_100291C3C()
{

  return _swift_task_switch(sub_100291D38, 0, 0);
}

void sub_100291D38()
{
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 1024);
  v6 = *(v0 + 1016);
  v7 = *(v0 + 1064) + 1;
  (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));
  if (v7 != v6)
  {
    v85 = (v0 + 672);
LABEL_6:
    v83 = v3;
LABEL_7:
    v82 = v2;
LABEL_8:
    v81 = v1;
    while (1)
    {
      v10 = *(v0 + 1064) + 1;
      *(v0 + 1064) = v10;
      *(v0 + 1056) = v1;
      *(v0 + 1048) = v2;
      *(v0 + 1040) = v3;
      *(v0 + 1032) = v4;
      *(v0 + 1024) = v5;
      v11 = *(v0 + 1000);
      if (v10 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_49;
      }

      (*(*(v0 + 776) + 16))(*(v0 + 784), v11 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 776) + 72) * v10, *(v0 + 768));
      v12 = ProofingSession.proofingSessionID.getter();
      *(v0 + 1072) = v13;
      if (!v13)
      {
        goto LABEL_45;
      }

      v14 = v12;
      v15 = v13;
      v16 = *v85;
      if (*(*v85 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v17 = Hasher._finalize()();
        v18 = -1 << *(v16 + 32);
        v19 = v17 & ~v18;
        if ((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
        {
          v20 = ~v18;
          while (1)
          {
            v21 = (*(v16 + 48) + 16 * v19);
            v22 = *v21 == v14 && v15 == v21[1];
            if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v19 = (v19 + 1) & v20;
            if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

LABEL_44:

LABEL_45:
          v79 = swift_task_alloc();
          *(v0 + 1088) = v79;
          *v79 = v0;
          v79[1] = sub_100291C3C;
          v80 = *(v0 + 784);

          sub_100299718(v80);
          return;
        }
      }

LABEL_20:
      v23 = ProofingSession.workflowID.getter();
      if (!v24)
      {
        break;
      }

      v25 = v23;
      v26 = v24;
      v27 = ProofingSession.country.getter();
      if (!v28)
      {

        defaultLogger()();
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();
        v45 = os_log_type_enabled(v43, v44);
        v46 = *(v0 + 824);
        v47 = *(v0 + 792);
        if (!v45)
        {

          v3 = v83;
          v83(v46, v47);
          v48 = *(v0 + 1016);
          v49 = *(v0 + 1064) + 1;
          (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));
          v1 = v83;
          v2 = v83;
          if (v49 != v48)
          {
            goto LABEL_7;
          }

          goto LABEL_2;
        }

        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "IdentityProofingCleanupProvider country does not exist; skipping notifying server", v60, 2u);

        v4(v46, v47);
        v54 = *(v0 + 1016);
        v55 = *(v0 + 1064) + 1;
        (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));
        v1 = v4;
        v2 = v4;
        v3 = v4;
LABEL_33:
        if (v55 != v54)
        {
          goto LABEL_6;
        }

        goto LABEL_2;
      }

      v29 = v27;
      v30 = v28;
      ProofingSession.documentType.getter();
      if (v31)
      {
        v71 = *(v0 + 760);
        v72 = *(v0 + 728);
        v84 = IdentityDocumentType.init(documentTypeString:)();

        sub_100151120((v0 + 640), v14, v15);

        v73 = type metadata accessor for TaskPriority();
        (*(*(v73 - 8) + 56))(v71, 1, 1, v73);
        v74 = swift_allocObject();
        v74[2] = 0;
        v74[3] = 0;
        v74[4] = v14;
        v74[5] = v15;
        v74[6] = v72;
        v74[7] = v29;
        v74[8] = v30;
        v74[9] = v25;
        v74[10] = v26;
        v74[11] = v84;

        sub_1003E653C(0, 0, v71, &unk_1006DC538, v74);

        v75 = IdentityDocumentType.rawValue.getter();
        if (v75 == IdentityDocumentType.rawValue.getter())
        {
          v76 = *(v0 + 1140);
          v77 = swift_task_alloc();
          *(v0 + 1080) = v77;
          *v77 = v0;
          v77[1] = sub_100291ACC;
          v78 = *(v0 + 720);

          sub_1002A2920(v14, v15, v78, v76 & 1 | 0x80);
          return;
        }

        goto LABEL_44;
      }

      defaultLogger()();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 832);
      v36 = *(v0 + 792);
      if (v34)
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "IdentityProofingCleanupProvider: Unable to retrieve the documentTypeString from the database", v39, 2u);

        v40 = v36;
        v2 = v82;
        v82(v35, v40);
        v41 = *(v0 + 1016);
        v42 = *(v0 + 1064) + 1;
        (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));
        v1 = v82;
        v3 = v83;
        if (v42 != v41)
        {
          goto LABEL_8;
        }

        goto LABEL_2;
      }

      v1 = v81;
      v81(v35, v36);
      v37 = *(v0 + 1016);
      v38 = *(v0 + 1064) + 1;
      (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));
      v2 = v82;
      v3 = v83;
      if (v38 == v37)
      {
        goto LABEL_2;
      }
    }

    defaultLogger()();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v56 = *(v0 + 992);
      v57 = *(v0 + 816);
      v58 = *(v0 + 792);
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "IdentityProofingCleanupProvider workflow id does not exist; skipping notifying server", v59, 2u);

      v56(v57, v58);
      v1 = *(v0 + 992);
      v54 = *(v0 + 1016);
      v55 = *(v0 + 1064) + 1;
      (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));
      v2 = v1;
      v3 = v1;
      v4 = v1;
      v5 = v1;
    }

    else
    {
      v52 = *(v0 + 816);
      v53 = *(v0 + 792);

      v5(v52, v53);
      v54 = *(v0 + 1016);
      v55 = *(v0 + 1064) + 1;
      (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));
      v1 = v5;
      v2 = v5;
      v3 = v5;
      v4 = v5;
    }

    goto LABEL_33;
  }

LABEL_2:

  if (qword_100832B60 != -1)
  {
LABEL_49:
    swift_once();
  }

  v8 = *(v0 + 984);
  v9 = *(*(v0 + 1008) + 16);
  os_unfair_lock_lock(v9 + 54);
  sub_100031B5C(&v9[4], v0 + 216);
  os_unfair_lock_unlock(v9 + 54);
  if (!v8)
  {
    v61 = *(v0 + 1000);
    v62 = *(v0 + 1140);
    v63 = *(v0 + 720);
    v64 = *(v0 + 712);
    v65 = *(v0 + 704);
    v66 = *(v0 + 696);
    v67 = *(v0 + 688);
    *(v0 + 1096) = *(v0 + 272);

    sub_100031918(v0 + 216);
    v68 = swift_allocObject();
    *(v0 + 1104) = v68;
    *(v68 + 16) = v61;
    *(v68 + 24) = v67;
    *(v68 + 32) = v66;
    *(v68 + 40) = v65;
    *(v68 + 48) = v64;
    *(v68 + 56) = v63;
    *(v68 + 64) = v62 & 1;
    v69 = swift_allocObject();
    *(v0 + 1112) = v69;
    *(v69 + 16) = sub_1002A74EC;
    *(v69 + 24) = v68;

    v70 = swift_task_alloc();
    *(v0 + 1120) = v70;
    *v70 = v0;
    v70[1] = sub_100292704;

    AsyncCoreDataContainer.performWrite<A>(_:)(v70, sub_10021F3D0, v69, &type metadata for () + 8);
  }
}

uint64_t sub_100292704()
{
  *(*v1 + 1128) = v0;

  if (v0)
  {
    v2 = sub_100292914;
  }

  else
  {

    v2 = sub_100292838;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100292838()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100292914()
{
  v25 = v0;

  v1 = *(v0 + 992);
  defaultLogger()();

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v23 = v1;
    v4 = *(v0 + 1140);
    v5 = *(v0 + 712);
    v6 = *(v0 + 704);
    v7 = *(v0 + 696);
    v8 = *(v0 + 688);
    v9 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v9 = 136315906;
    *(v9 + 4) = sub_100141FE4(v8, v7, v24);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100141FE4(v6, v5, v24);
    *(v9 + 22) = 2080;
    if (v4)
    {
      v10 = 0xE500000000000000;
      v11 = 0x3E6C696E3CLL;
    }

    else
    {
      v11 = IdentityTarget.debugDescription.getter();
      v10 = v14;
    }

    v22 = *(v0 + 808);
    v15 = *(v0 + 792);
    v16 = sub_100141FE4(v11, v10, v24);

    *(v9 + 24) = v16;
    *(v9 + 32) = 2080;
    swift_getErrorValue();
    v17 = Error.localizedDescription.getter();
    v19 = sub_100141FE4(v17, v18, v24);

    *(v9 + 34) = v19;
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityProofingCleanupProvider Received an error during clearing all proofing sessions for %s, %s, %s: %s", v9, 0x2Au);
    swift_arrayDestroy();

    v23(v22, v15);
  }

  else
  {
    v12 = *(v0 + 808);
    v13 = *(v0 + 792);

    v1(v12, v13);
  }

  (*(*(v0 + 744) + 104))(*(v0 + 752), enum case for DIPError.Code.unableToClearWatchProofingSession(_:), *(v0 + 736));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

unint64_t sub_100292D50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v32 = a5;
  v31 = a6;
  v10 = type metadata accessor for ProofingSession();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  v17 = v33;
  result = sub_100578AD0(a1, a2, a3, a4, v32);
  if (v17)
  {
    return result;
  }

  v19 = result;
  v20 = v31;
  v32 = 0;
  v33 = v10;
  if (!(result >> 62))
  {
    v21 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_4;
    }

LABEL_17:

    *v20 = _swiftEmptyArrayStorage;
    return result;
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (!v21)
  {
    goto LABEL_17;
  }

LABEL_4:
  v34 = _swiftEmptyArrayStorage;
  result = sub_100173040(0, v21 & ~(v21 >> 63), 0);
  if (v21 < 0)
  {
    __break(1u);
  }

  else
  {
    v22 = v34;
    if ((v19 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v21; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        ProofingSession.init(_:)();
        v34 = v22;
        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          sub_100173040((v24 > 1), v25 + 1, 1);
          v22 = v34;
        }

        v22[2] = v25 + 1;
        (*(v11 + 32))(v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v25, v16, v33);
      }
    }

    else
    {
      v26 = 32;
      do
      {
        v27 = *(v19 + v26);
        ProofingSession.init(_:)();
        v34 = v22;
        v29 = v22[2];
        v28 = v22[3];
        if (v29 >= v28 >> 1)
        {
          sub_100173040((v28 > 1), v29 + 1, 1);
          v22 = v34;
        }

        v22[2] = v29 + 1;
        (*(v11 + 32))(v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v29, v14, v33);
        v26 += 8;
        --v21;
      }

      while (v21);
    }

    *v31 = v22;
  }

  return result;
}

unint64_t sub_100293020@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v30 = a5;
  v9 = type metadata accessor for ProofingSession();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v29 - v14;
  v16 = v31;
  result = sub_1005796D0(a1, a2, a3, a4);
  if (v16)
  {
    return result;
  }

  v18 = result;
  v19 = v30;
  v31 = v9;
  v29[1] = 0;
  if (!(result >> 62))
  {
    v20 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_4;
    }

LABEL_17:

    *v19 = _swiftEmptyArrayStorage;
    return result;
  }

  v20 = _CocoaArrayWrapper.endIndex.getter();
  if (!v20)
  {
    goto LABEL_17;
  }

LABEL_4:
  v32 = _swiftEmptyArrayStorage;
  result = sub_100173040(0, v20 & ~(v20 >> 63), 0);
  if (v20 < 0)
  {
    __break(1u);
  }

  else
  {
    v21 = v32;
    if ((v18 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v20; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        ProofingSession.init(_:)();
        v32 = v21;
        v24 = v21[2];
        v23 = v21[3];
        if (v24 >= v23 >> 1)
        {
          sub_100173040((v23 > 1), v24 + 1, 1);
          v21 = v32;
        }

        v21[2] = v24 + 1;
        (*(v10 + 32))(v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24, v15, v31);
      }
    }

    else
    {
      v25 = 32;
      do
      {
        v26 = *(v18 + v25);
        ProofingSession.init(_:)();
        v32 = v21;
        v28 = v21[2];
        v27 = v21[3];
        if (v28 >= v27 >> 1)
        {
          sub_100173040((v27 > 1), v28 + 1, 1);
          v21 = v32;
        }

        v21[2] = v28 + 1;
        (*(v10 + 32))(v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v28, v13, v31);
        v25 += 8;
        --v20;
      }

      while (v20);
    }

    *v30 = v21;
  }

  return result;
}

void sub_1002932F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v43 = a8;
  v40 = a7;
  v41 = a3;
  v44 = a4;
  v45 = a6;
  v42 = a5;
  v10 = type metadata accessor for Logger();
  v47 = *(v10 - 8);
  v48 = v10;
  __chkstk_darwin(v10);
  v46 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPError.Code();
  v49 = *(v12 - 8);
  v50 = v12;
  __chkstk_darwin(v12);
  v51 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = *(type metadata accessor for ProofingSession() - 8);
    v16 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = *(v15 + 72);
    while (1)
    {
      v18 = ProofingSession.objectID.getter();
      v19 = *(a1 + 16);
      v20 = [v19 objectWithID:{v18, v40, v41, v42}];
      type metadata accessor for StoredProofingSession();
      v21 = swift_dynamicCastClass();
      if (!v21)
      {
        break;
      }

      v22 = v21;

      [v19 deleteObject:v22];
      v16 += v17;
      if (!--v14)
      {
        goto LABEL_5;
      }
    }

    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v52 = 0xD000000000000010;
    v53 = 0x80000001007094D0;
    v32 = [v18 description];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36._countAndFlagsBits = v33;
    v36._object = v35;
    String.append(_:)(v36);

    v37._countAndFlagsBits = 0xD00000000000001FLL;
    v37._object = 0x80000001007094F0;
    String.append(_:)(v37);
    (*(v49 + 104))(v51, enum case for DIPError.Code.coreDataError(_:), v50);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
LABEL_5:
    v23 = v54;
    sub_1005783D4();
    if (!v23)
    {
      v24 = v46;
      defaultLogger()();
      v25 = v44;

      v26 = v45;

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v29 = 136315650;
        *(v29 + 4) = sub_100141FE4(v41, v25, &v52);
        *(v29 + 12) = 2080;
        *(v29 + 14) = sub_100141FE4(v42, v26, &v52);
        *(v29 + 22) = 2080;
        if (v43)
        {
          v30 = 0xE500000000000000;
          v31 = 0x3E6C696E3CLL;
        }

        else
        {
          v31 = IdentityTarget.debugDescription.getter();
          v30 = v38;
        }

        v39 = sub_100141FE4(v31, v30, &v52);

        *(v29 + 24) = v39;
        _os_log_impl(&_mh_execute_header, v27, v28, "IdentityProofingCleanupProvider cleared all proofing sessions for %s, %s, target: %s successfully", v29, 0x20u);
        swift_arrayDestroy();
      }

      (*(v47 + 8))(v24, v48);
    }
  }
}

void sub_100293838(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7)
{
  v15 = type metadata accessor for Logger();
  v16 = __chkstk_darwin(v15);
  v18 = &v47[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  if (a2)
  {
    v22 = &v47[-v20];
    v23 = v21;
    v24 = v19;
    v25 = sub_10057C738(a1, a2);
    if (!v7)
    {
      v26 = v25;
      if (v25)
      {
        v27 = [v25 proofingSessionID];
        if (v27)
        {
          v28 = v27;
          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v29;

          [*(a3 + 16) deleteObject:v26];
          sub_10057BA64();
          defaultLogger()();

          v50 = v22;
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v48 = v35;
            v37 = v36;
            v49 = swift_slowAlloc();
            v53 = v49;
            *v37 = 136315394;
            v38 = sub_100141FE4(v51, v52, &v53);
            v51 = v34;
            v39 = v38;

            *(v37 + 4) = v39;
            *(v37 + 12) = 2080;
            *(v37 + 14) = sub_100141FE4(a1, a2, &v53);
            v40 = v51;
            _os_log_impl(&_mh_execute_header, v51, v48, "Successfully deleted proofing session for with proofingSessionID: %s and credentialIdentifier: %s", v37, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          (*(v23 + 8))(v50, v24);
        }

        else
        {
        }
      }
    }
  }

  else if (a5)
  {
    if ((a7 & 1) == 0)
    {
      v30 = a4;
      v31 = v21;
      v52 = v19;
      sub_10057BE48(a4, a5, a6);
      if (!v7)
      {
        v33 = v32;
        if (v32)
        {
          [*(a3 + 16) deleteObject:v32];
          sub_10057BA64();
          v51 = 0;
          defaultLogger()();

          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v53 = v50;
            *v43 = 136315394;
            *(v43 + 4) = sub_100141FE4(v30, a5, &v53);
            *(v43 + 12) = 2080;
            v44 = IdentityTarget.debugDescription.getter();
            v46 = sub_100141FE4(v44, v45, &v53);

            *(v43 + 14) = v46;
            _os_log_impl(&_mh_execute_header, v41, v42, "Successfully deleted proofing session for with proofingSessionID: %s and target: %s", v43, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          (*(v31 + 8))(v18, v52);
        }
      }
    }
  }
}

uint64_t sub_100293CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v5 = type metadata accessor for DIPError.Code();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v6 = type metadata accessor for DIPError();
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[30] = v7;
  v4[31] = *(v7 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return _swift_task_switch(sub_100293E8C, 0, 0);
}

uint64_t sub_100293E8C(uint64_t a1)
{
  v25 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[36];
  v6 = v1[30];
  v7 = v1[31];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD00000000000001CLL, 0x80000001007090B0, &v24);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Kicked off prearm trust cleanup", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[37] = v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
    v1[38] = v12;
    v13 = Strong;
    v12;

    v14 = swift_task_alloc();
    v1[39] = v14;
    *v14 = v1;
    v14[1] = sub_10029417C;

    return sub_1006738C8();
  }

  else
  {
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v1[37];
    v20 = v1[34];
    v21 = v1[30];
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Nothing done. no watch connection or watch has > 0 passes", v22, 2u);
    }

    v19(v20, v21);
    sub_100294F18();

    v23 = v1[1];

    return v23();
  }
}

uint64_t sub_10029417C(uint64_t a1)
{
  v2 = *(*v1 + 304);
  *(*v1 + 320) = a1;

  return _swift_task_switch(sub_100294298, 0, 0);
}

uint64_t sub_100294298(uint64_t a1)
{
  v2 = v1[40];
  if (v2)
  {
    v1[2] = v1;
    v1[7] = v1 + 21;
    v1[3] = sub_1002944EC;
    v3 = swift_continuation_init();
    v1[17] = sub_100007224(&unk_10084A490, &qword_1006DC480);
    v1[10] = _NSConcreteStackBlock;
    v1[11] = 1107296256;
    v1[12] = sub_10067FE58;
    v1[13] = &unk_10080BC70;
    v1[14] = v3;
    [v2 provisionedCredentialCountForType:1 completion:v1 + 10];

    return _swift_continuation_await(v1 + 2);
  }

  else
  {
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v1[37];
    v8 = v1[34];
    v9 = v1[30];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Nothing done. no watch connection or watch has > 0 passes", v10, 2u);
    }

    v7(v8, v9);
    sub_100294F18();

    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_1002944EC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_100294BB4;
  }

  else
  {
    v2 = sub_1002945FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002945FC(uint64_t a1)
{
  v26 = v1;
  if (*(v1 + 168))
  {

    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 296);
    v6 = *(v1 + 272);
    v7 = *(v1 + 240);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Nothing done. no watch connection or watch has > 0 passes", v8, 2u);
    }

    v5(v6, v7);
  }

  else
  {
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v1 + 296);
    v13 = *(v1 + 280);
    v14 = *(v1 + 240);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_100141FE4(0xD00000000000001CLL, 0x80000001007090B0, &v25);
      _os_log_impl(&_mh_execute_header, v9, v10, "%s - clearing prearmtrust because there are 0 provisioned passes on the watch", v15, 0xCu);
      sub_10000BB78(v16);
    }

    v12(v13, v14);
    type metadata accessor for IdentityProofingDataContext();
    swift_allocObject();
    sub_10057E28C();
    v17 = *(v1 + 320);
    v19 = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v17;

    v21 = v17;
    sub_10057C18C(sub_1002A65BC, v20);
    v22 = *(v1 + 320);
  }

  sub_100294F18();

  v23 = *(v1 + 8);

  return v23();
}

uint64_t sub_100294BB4(uint64_t a1)
{
  v2 = v1[40];
  swift_willThrow();

  v3 = v1[33];
  v25 = v1[37];
  v24 = v1[30];
  v4 = v1[28];
  v5 = v1[26];
  v22 = v1[29];
  v23 = v1[27];
  v6 = v1[25];
  v21 = v1[24];
  sub_100294F18();
  _StringGuts.grow(_:)(40);

  swift_getErrorValue();
  v7._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v7);

  (*(v6 + 104))(v5, enum case for DIPError.Code.internalError(_:), v21);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v4 + 16))(v8, v22, v23);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v25(v3, v24);

  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v1[37];
  v13 = v1[32];
  v14 = v1[29];
  v15 = v1[30];
  v16 = v1[27];
  v17 = v1[28];
  if (v11)
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Ignoring the delete prearm trust error", v18, 2u);
  }

  v12(v13, v15);
  (*(v17 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_100294F18()
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
    *(v6 + 4) = sub_100141FE4(0xD00000000000001CLL, 0x80000001007090B0, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - Finished prearm trust cleanup", v6, 0xCu);
    sub_10000BB78(v7);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002950B0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 deviceID];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  sub_10057C8F0(v9, v11);
  if (v2)
  {
  }

  sub_10057BA64();
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Successfully deleted prearm trust blob", v15, 2u);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100295264(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3[30] = swift_task_alloc();
  v4 = type metadata accessor for ProofingSession();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = sub_100007224(&qword_10083DC18, &unk_1006DB720);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();

  return _swift_task_switch(sub_1002953A8, 0, 0);
}

uint64_t sub_1002953A8()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v2 = v0[27];
  v3 = v0[28];
  v0[37] = v0[9];

  sub_100031918((v0 + 2));
  v4 = swift_allocObject();
  v0[38] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  v0[39] = v5;
  *(v5 + 16) = sub_1002A73F0;
  *(v5 + 24) = v4;

  v6 = swift_task_alloc();
  v0[40] = v6;
  *v6 = v0;
  v6[1] = sub_100295568;
  v7 = v0[36];
  v8 = v0[34];

  return AsyncCoreDataContainer.performWrite<A>(_:)(v7, sub_10017F710, v5, v8);
}

uint64_t sub_100295568()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_100295974;
  }

  else
  {

    v2 = sub_100295698;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100295698()
{
  v1 = v0 + 36;
  v2 = v0[35];
  v3 = v0[31];
  v4 = v0[32];
  sub_1002A740C(v0[36], v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10000BE18(*v1, &qword_10083DC18, &unk_1006DB720);
    v1 = v0 + 35;
  }

  else
  {
    (*(v0[32] + 32))(v0[33], v0[35], v0[31]);
    v5 = ProofingSession.country.getter();
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      v9 = ProofingSession.workflowID.getter();
      v11 = v0[33];
      if (v10)
      {
        v12 = v9;
        v13 = v10;
        ProofingSession.documentType.getter();
        v14 = v0[32];
        v15 = v0[33];
        v16 = v0[31];
        if (v17)
        {
          v29 = v12;
          v31 = v0[31];
          v19 = v0[29];
          v18 = v0[30];
          v20 = v0[28];
          v27 = v0[27];
          v28 = IdentityDocumentType.init(documentTypeString:)();
          v21 = type metadata accessor for TaskPriority();
          (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
          v30 = v15;
          v22 = swift_allocObject();
          v22[2] = 0;
          v22[3] = 0;
          v22[4] = v27;
          v22[5] = v20;
          v22[6] = v19;
          v22[7] = v7;
          v22[8] = v8;
          v22[9] = v29;
          v22[10] = v13;
          v22[11] = v28;

          sub_1003E653C(0, 0, v18, &unk_1006DC530, v22);

          (*(v14 + 8))(v30, v31);
        }

        else
        {

          (*(v14 + 8))(v15, v16);
        }
      }

      else
      {
        v23 = v0[31];
        v24 = v0[32];

        (*(v24 + 8))(v11, v23);
      }
    }

    else
    {
      (*(v0[32] + 8))(v0[33], v0[31]);
    }
  }

  sub_10000BE18(*v1, &qword_10083DC18, &unk_1006DB720);

  v25 = v0[1];

  return v25();
}

uint64_t sub_100295974()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100295A28(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v46 - v13;
  v15 = sub_1005791C8(a2, a3);
  if (!v4)
  {
    v16 = v15;
    v48 = v12;
    v49 = a3;
    v50 = v9;
    v51 = a1;
    v17 = v53;
    v46 = v14;
    v47 = a2;
    v18 = v15 >> 62;
    if (v15 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
      v52 = 0;
      if (v30)
      {
LABEL_4:
        if ((v16 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_32;
          }

          v20 = *(v16 + 32);
        }

        v21 = v20;
        v48 = v8;
        if (v18)
        {
          sub_10001F8D4(0, &qword_10083EF78, NSManagedObject_ptr);

          v22 = _bridgeCocoaArray<A>(_:)();
          swift_bridgeObjectRelease_n();
          v16 = v22;
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_10001F8D4(0, &qword_10083EF78, NSManagedObject_ptr);

          v22 = v16;
        }

        if (v16 >> 62)
        {
          v23 = _CocoaArrayWrapper.endIndex.getter();
          v24 = v51;
          if (v23)
          {
LABEL_12:
            if (v23 >= 1)
            {
              v25 = 0;
              v26 = *(v24 + 16);
              v27 = v22 & 0xC000000000000001;
              do
              {
                if (v27)
                {
                  v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v28 = *(v16 + 8 * v25 + 32);
                }

                v29 = v28;
                ++v25;
                [v26 deleteObject:{v28, v46, v47}];
              }

              while (v23 != v25);
              goto LABEL_24;
            }

LABEL_32:
            __break(1u);
            return;
          }
        }

        else
        {
          v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v24 = v51;
          if (v23)
          {
            goto LABEL_12;
          }
        }

LABEL_24:

        v38 = v52;
        sub_1005783D4();
        v52 = v38;
        if (v38)
        {

          return;
        }

        v39 = v46;
        defaultLogger()();
        v40 = v49;

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v54 = v44;
          *v43 = 136315138;
          *(v43 + 4) = sub_100141FE4(v47, v40, &v54);
          _os_log_impl(&_mh_execute_header, v41, v42, "IdentityProofingCleanUpProvider successfully deleted all proofing sessions with proofingSessionID: %s", v43, 0xCu);
          sub_10000BB78(v44);
        }

        (*(v50 + 8))(v39, v48);
        v17 = v53;
        ProofingSession.init(_:)();
        v37 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v52 = 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }

    v31 = v48;
    defaultLogger()();
    v32 = v49;

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v54 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_100141FE4(v47, v32, &v54);
      _os_log_impl(&_mh_execute_header, v33, v34, "IdentityProofingCleanUpProvider no proofing sessions with proofingSessionID: %s", v35, 0xCu);
      sub_10000BB78(v36);
    }

    (*(v50 + 8))(v31, v8);
    v37 = 1;
LABEL_29:
    v45 = type metadata accessor for ProofingSession();
    (*(*(v45 - 8) + 56))(v17, v37, 1, v45);
  }
}

uint64_t sub_100295F44(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 788) = a4;
  *(v5 + 480) = a3;
  *(v5 + 488) = v4;
  *(v5 + 464) = a1;
  *(v5 + 472) = a2;
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  *(v5 + 496) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v5 + 504) = v6;
  *(v5 + 512) = *(v6 - 8);
  *(v5 + 520) = swift_task_alloc();
  *(v5 + 528) = swift_task_alloc();
  *(v5 + 536) = swift_task_alloc();
  *(v5 + 544) = swift_task_alloc();
  *(v5 + 552) = swift_task_alloc();
  v7 = type metadata accessor for ProofingSession();
  *(v5 + 560) = v7;
  v8 = *(v7 - 8);
  *(v5 + 568) = v8;
  *(v5 + 576) = *(v8 + 64);
  *(v5 + 584) = swift_task_alloc();
  *(v5 + 592) = swift_task_alloc();
  *(v5 + 600) = swift_task_alloc();
  *(v5 + 608) = swift_task_alloc();
  *(v5 + 616) = swift_task_alloc();

  return _swift_task_switch(sub_100296108, 0, 0);
}

uint64_t sub_100296108()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = qword_100881E78;
  *(v0 + 624) = qword_100881E78;
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], v0 + 16);
  os_unfair_lock_unlock(v2 + 54);
  v3 = *(v0 + 788);
  v4 = *(v0 + 472);
  v5 = *(v0 + 480);
  v6 = *(v0 + 464);
  *(v0 + 632) = *(v0 + 72);

  sub_100031918(v0 + 16);
  v7 = swift_allocObject();
  *(v0 + 640) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v3 & 1;
  *(v7 + 32) = v6;
  *(v7 + 40) = v4;
  v8 = swift_allocObject();
  *(v0 + 648) = v8;
  *(v8 + 16) = sub_1002A723C;
  *(v8 + 24) = v7;

  v9 = swift_task_alloc();
  *(v0 + 656) = v9;
  v10 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
  *v9 = v0;
  v9[1] = sub_100296300;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 440, sub_100267820, v8, v10);
}

uint64_t sub_100296300()
{
  v2 = *v1;
  *(v2 + 664) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100296A0C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 788);
    v4 = *(v2 + 472);

    *(v2 + 672) = *(v2 + 440);
    v5 = swift_task_alloc();
    *(v2 + 680) = v5;
    *v5 = v2;
    v5[1] = sub_1002964E0;
    v6 = *(v2 + 480);
    v7 = *(v2 + 464);

    return sub_1002A2920(v7, v4, v6, v3 & 1 | 0x80u);
  }
}

uint64_t sub_1002964E0()
{

  return _swift_task_switch(sub_1002965DC, 0, 0);
}

void sub_1002965DC()
{
  v35 = v0;
  v1 = *(v0 + 672);
  v2 = *(v1 + 16);
  *(v0 + 688) = v2;
  if (v2)
  {
    v3 = *(v0 + 568);
    v4 = *(v3 + 80);
    *(v0 + 784) = v4;
    v5 = *(v0 + 664);
    *(v0 + 704) = 0;
    *(v0 + 696) = v5;
    if (*(v1 + 16))
    {
      v6 = *(v0 + 616);
      v7 = *(v0 + 560);
      v9 = *(v3 + 16);
      v8 = v3 + 16;
      *(v0 + 712) = *(v8 + 56);
      *(v0 + 720) = v9;
      *(v0 + 728) = v8 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v9(v6, v1 + ((v4 + 32) & ~v4), v7);
      ProofingSession.target.getter();
      IdentityTarget.init(rawValue:)();
      if ((v10 & 1) == 0)
      {
        defaultLogger()();

        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.debug.getter();

        v13 = os_log_type_enabled(v11, v12);
        v14 = *(v0 + 552);
        v16 = *(v0 + 504);
        v15 = *(v0 + 512);
        if (v13)
        {
          v18 = *(v0 + 464);
          v17 = *(v0 + 472);
          v33 = *(v0 + 552);
          v19 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v19 = 136315394;
          *(v19 + 4) = sub_100141FE4(v18, v17, &v34);
          *(v19 + 12) = 2080;
          v20 = IdentityTarget.debugDescription.getter();
          v22 = sub_100141FE4(v20, v21, &v34);

          *(v19 + 14) = v22;
          _os_log_impl(&_mh_execute_header, v11, v12, "Will attempt to delete the proofing session with ID %s and target %s", v19, 0x16u);
          swift_arrayDestroy();

          (*(v15 + 8))(v33, v16);
        }

        else
        {

          (*(v15 + 8))(v14, v16);
        }
      }

      v23 = swift_task_alloc();
      *(v0 + 736) = v23;
      *v23 = v0;
      v23[1] = sub_100296CC0;
      v24 = *(v0 + 616);

      sub_100299718(v24);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (_swiftEmptyArrayStorage[2])
    {
    }

    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 528);
    v29 = *(v0 + 504);
    v30 = *(v0 + 512);
    if (v27)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Document Type Sub String is not stored in the database", v31, 2u);
    }

    (*(v30 + 8))(v28, v29);

    v32 = *(v0 + 8);

    v32();
  }
}

uint64_t sub_100296A0C()
{
  v18 = v0;

  defaultLogger()();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[64];
    v15 = v0[63];
    v16 = v0[65];
    v4 = v0[58];
    v14 = v0[59];
    v5 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v5 = 136315394;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_100141FE4(v6, v7, &v17);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_100141FE4(v4, v14, &v17);
    _os_log_impl(&_mh_execute_header, v1, v2, "received an error %s while clearning proofing session with ID %s", v5, 0x16u);
    swift_arrayDestroy();

    (*(v3 + 8))(v16, v15);
  }

  else
  {
    v9 = v0[65];
    v10 = v0[63];
    v11 = v0[64];

    (*(v11 + 8))(v9, v10);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100296CC0()
{

  return _swift_task_switch(sub_100296DBC, 0, 0);
}

void sub_100296DBC()
{
  v1 = *(v0 + 696);
  v2 = *(*(v0 + 624) + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], v0 + 216);
  if (v1)
  {

    os_unfair_lock_unlock(v2 + 54);
  }

  else
  {
    v3 = *(v0 + 720);
    v4 = *(v0 + 616);
    v5 = *(v0 + 608);
    v6 = *(v0 + 568);
    v7 = *(v0 + 560);
    v8 = (*(v0 + 784) + 16) & ~*(v0 + 784);
    os_unfair_lock_unlock(v2 + 54);
    *(v0 + 744) = *(v0 + 272);

    sub_100031918(v0 + 216);
    v3(v5, v4, v7);
    v9 = swift_allocObject();
    *(v0 + 752) = v9;
    (*(v6 + 32))(v9 + v8, v5, v7);
    v10 = swift_allocObject();
    *(v0 + 760) = v10;
    *(v10 + 16) = sub_1002A729C;
    *(v10 + 24) = v9;

    v11 = swift_task_alloc();
    *(v0 + 768) = v11;
    *v11 = v0;
    v11[1] = sub_100296FC0;

    AsyncCoreDataContainer.performWrite<A>(_:)(v11, sub_10021F3D0, v10, &type metadata for () + 8);
  }
}

uint64_t sub_100296FC0()
{
  *(*v1 + 776) = v0;

  if (v0)
  {
    v2 = sub_100297AFC;
  }

  else
  {

    v2 = sub_1002970F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002970F4(uint64_t a1)
{
  v107 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 616);
  v6 = *(v1 + 568);
  v7 = *(v1 + 560);
  v8 = *(v1 + 544);
  v10 = *(v1 + 504);
  v9 = *(v1 + 512);
  if (v4)
  {
    v100 = *(v1 + 544);
    v102 = *(v1 + 560);
    v12 = *(v1 + 464);
    v11 = *(v1 + 472);
    v13 = swift_slowAlloc();
    v98 = v5;
    v14 = swift_slowAlloc();
    v106 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100141FE4(v12, v11, &v106);
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully cleared the stored proofing session with proofingSessionID: %s", v13, 0xCu);
    sub_10000BB78(v14);

    (*(v9 + 8))(v100, v10);
    v15 = *(v6 + 8);
    result = v15(v98, v102);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
    v15 = *(v6 + 8);
    result = v15(v5, v7);
  }

  v17 = *(v1 + 704) + 1;
  if (v17 == *(v1 + 688))
  {
    v18 = 0;
    v19 = _swiftEmptyArrayStorage;
    do
    {
      v21 = *(v1 + 600);
      v22 = *(v1 + 560);
      (*(v1 + 720))(v21, *(v1 + 672) + ((*(v1 + 784) + 32) & ~*(v1 + 784)) + *(v1 + 712) * v18, v22);
      v23 = ProofingSession.workflowID.getter();
      v25 = v24;
      v15(v21, v22);
      if (v25)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1003C5110(0, *(v19 + 2) + 1, 1, v19);
        }

        v27 = *(v19 + 2);
        v26 = *(v19 + 3);
        if (v27 >= v26 >> 1)
        {
          v19 = sub_1003C5110((v26 > 1), v27 + 1, 1, v19);
        }

        *(v19 + 2) = v27 + 1;
        v20 = &v19[16 * v27];
        *(v20 + 4) = v23;
        *(v20 + 5) = v25;
      }

      ++v18;
    }

    while (v18 != *(v1 + 688));
    if (*(v19 + 2))
    {
      v50 = *(v19 + 4);
      v49 = *(v19 + 5);
    }

    else
    {
      v50 = 0;
      v49 = 0;
    }

    v51 = *(v1 + 688);
    v52 = *(v1 + 672);
    if (v51 <= *(v52 + 16))
    {
      v101 = v50;
      v104 = v49;
      v53 = *(v1 + 592);
      v54 = *(v1 + 568);
      v55 = *(v1 + 560);
      v56 = v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
      v57 = *(v54 + 16);
      v57(v53, v56 + *(v54 + 72) * (v51 - 1), v55);
      v99 = ProofingSession.country.getter();
      v59 = v58;
      v60 = *(v54 + 8);
      result = v60(v53, v55);
      if (*(v52 + 16))
      {
        v61 = *(v1 + 584);
        v62 = *(v1 + 560);
        v57(v61, v56, v62);

        ProofingSession.documentType.getter();
        v64 = v63;
        v60(v61, v62);
        if (v64)
        {
          v65 = IdentityDocumentType.init(documentTypeString:)();
          if (v59)
          {
            v66 = v59;
          }

          else
          {
            v66 = 0xE000000000000000;
          }

          if (v104)
          {
            v67 = v65;
            v69 = *(v1 + 488);
            v68 = *(v1 + 496);
            v70 = *(v1 + 464);
            v71 = *(v1 + 472);
            if (v59)
            {
              v72 = v99;
            }

            else
            {
              v72 = 0;
            }

            v73 = type metadata accessor for TaskPriority();
            (*(*(v73 - 8) + 56))(v68, 1, 1, v73);
            v74 = swift_allocObject();
            v74[2] = 0;
            v74[3] = 0;
            v74[4] = v70;
            v74[5] = v71;
            v74[6] = v69;
            v74[7] = v72;
            v74[8] = v66;
            v74[9] = v101;
            v74[10] = v104;
            v74[11] = v67;

            sub_1003E653C(0, 0, v68, &unk_1006DC518, v74);
          }

          else
          {
            defaultLogger()();

            v84 = Logger.logObject.getter();
            v85 = static os_log_type_t.debug.getter();

            v86 = os_log_type_enabled(v84, v85);
            v87 = *(v1 + 536);
            v89 = *(v1 + 504);
            v88 = *(v1 + 512);
            if (v86)
            {
              v105 = *(v1 + 536);
              v91 = *(v1 + 464);
              v90 = *(v1 + 472);
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              v106 = v93;
              *v92 = 136315138;
              *(v92 + 4) = sub_100141FE4(v91, v90, &v106);
              _os_log_impl(&_mh_execute_header, v84, v85, "unable to notify server of terminal state for proofingSessionID %s as workflowID doesn't exist", v92, 0xCu);
              sub_10000BB78(v93);

              (*(v88 + 8))(v105, v89);
            }

            else
            {

              (*(v88 + 8))(v87, v89);
            }
          }

          v94 = type metadata accessor for IdentityManagementSessionDelegate();
          v95 = [objc_opt_self() defaultCenter];
          v96 = String._bridgeToObjectiveC()();
          *(v1 + 456) = v94;
          sub_100007224(&qword_10083D698, &unk_1006DB6F0);
          [v95 postNotificationName:v96 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
          swift_unknownObjectRelease();
        }

        else
        {

          defaultLogger()();
          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.error.getter();
          v77 = os_log_type_enabled(v75, v76);
          v78 = *(v1 + 528);
          v79 = *(v1 + 504);
          v80 = *(v1 + 512);
          if (v77)
          {
            v81 = swift_slowAlloc();
            *v81 = 0;
            _os_log_impl(&_mh_execute_header, v75, v76, "Document Type Sub String is not stored in the database", v81, 2u);
          }

          (*(v80 + 8))(v78, v79);
        }

        v97 = *(v1 + 8);

        return v97();
      }

LABEL_47:
      __break(1u);
      return result;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v28 = *(v1 + 776);
  *(v1 + 704) = v17;
  *(v1 + 696) = v28;
  v29 = *(v1 + 672);
  if (v17 >= *(v29 + 16))
  {
    __break(1u);
    goto LABEL_46;
  }

  v30 = *(v1 + 616);
  v31 = *(v1 + 568);
  v32 = *(v1 + 560);
  v33 = v29 + ((*(v1 + 784) + 32) & ~*(v1 + 784));
  v34 = *(v31 + 16);
  v31 += 16;
  v35 = *(v31 + 56);
  *(v1 + 712) = v35;
  *(v1 + 720) = v34;
  *(v1 + 728) = v31 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v34(v30, v33 + v35 * v17, v32);
  ProofingSession.target.getter();
  IdentityTarget.init(rawValue:)();
  if ((v36 & 1) == 0)
  {
    defaultLogger()();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v1 + 552);
    v42 = *(v1 + 504);
    v41 = *(v1 + 512);
    if (v39)
    {
      v44 = *(v1 + 464);
      v43 = *(v1 + 472);
      v103 = *(v1 + 552);
      v45 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *v45 = 136315394;
      *(v45 + 4) = sub_100141FE4(v44, v43, &v106);
      *(v45 + 12) = 2080;
      v46 = IdentityTarget.debugDescription.getter();
      v48 = sub_100141FE4(v46, v47, &v106);

      *(v45 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v37, v38, "Will attempt to delete the proofing session with ID %s and target %s", v45, 0x16u);
      swift_arrayDestroy();

      (*(v41 + 8))(v103, v42);
    }

    else
    {

      (*(v41 + 8))(v40, v42);
    }
  }

  v82 = swift_task_alloc();
  *(v1 + 736) = v82;
  *v82 = v1;
  v82[1] = sub_100296CC0;
  v83 = *(v1 + 616);

  return sub_100299718(v83);
}

uint64_t sub_100297AFC()
{
  v21 = v0;
  v1 = v0[77];
  v2 = v0[71];
  v3 = v0[70];

  (*(v2 + 8))(v1, v3);
  defaultLogger()();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[64];
    v18 = v0[63];
    v19 = v0[65];
    v7 = v0[58];
    v17 = v0[59];
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136315394;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_100141FE4(v9, v10, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100141FE4(v7, v17, &v20);
    _os_log_impl(&_mh_execute_header, v4, v5, "received an error %s while clearning proofing session with ID %s", v8, 0x16u);
    swift_arrayDestroy();

    (*(v6 + 8))(v19, v18);
  }

  else
  {
    v12 = v0[65];
    v13 = v0[63];
    v14 = v0[64];

    (*(v14 + 8))(v12, v13);
  }

  v15 = v0[1];

  return v15();
}

void sub_100297DE0(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v49 = a1;
  v50 = type metadata accessor for ProofingSession();
  v10 = *(v50 - 1);
  v11 = __chkstk_darwin(v50);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v47 - v14;
  v16 = type metadata accessor for Logger();
  v17 = __chkstk_darwin(v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v21 = sub_1005791C8(a3, a4);
    if (v5)
    {
      return;
    }

    v22 = v21;
    v47 = 0;
    if (v21 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      if (v23)
      {
LABEL_5:
        v51 = _swiftEmptyArrayStorage;
        sub_100173040(0, v23 & ~(v23 >> 63), 0);
        if (v23 < 0)
        {
          __break(1u);
        }

        else
        {
          v48 = a5;
          v24 = v51;
          if ((v22 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v23; ++i)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
              ProofingSession.init(_:)();
              v51 = v24;
              v27 = v24[2];
              v26 = v24[3];
              if (v27 >= v26 >> 1)
              {
                sub_100173040((v26 > 1), v27 + 1, 1);
                v24 = v51;
              }

              v24[2] = v27 + 1;
              (*(v10 + 32))(v24 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v27, v15, v50);
            }
          }

          else
          {
            v43 = 32;
            do
            {
              v44 = *(v22 + v43);
              ProofingSession.init(_:)();
              v51 = v24;
              v46 = v24[2];
              v45 = v24[3];
              if (v46 >= v45 >> 1)
              {
                sub_100173040((v45 > 1), v46 + 1, 1);
                v24 = v51;
              }

              v24[2] = v46 + 1;
              (*(v10 + 32))(v24 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v46, v13, v50);
              v43 += 8;
              --v23;
            }

            while (v23);
          }

          *v48 = v24;
        }

        return;
      }
    }

    else
    {
      v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        goto LABEL_5;
      }
    }

    *a5 = _swiftEmptyArrayStorage;
    return;
  }

  v28 = v20;
  v29 = v18;
  v48 = a5;
  v30 = v17;
  v31 = sub_1005792EC(a3, a4, v49);
  if (!v5)
  {
    v47 = 0;
    if (v31)
    {
      v32 = v31;
      sub_100007224(&qword_10083C0E8, &unk_1006DC520);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1006BF520;
      v34 = v32;
      ProofingSession.init(_:)();

      *v48 = v33;
    }

    else
    {
      v35 = a4;
      defaultLogger()();

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v51 = v50;
        *v38 = 136315394;
        *(v38 + 4) = sub_100141FE4(a3, v35, &v51);
        *(v38 + 12) = 2080;
        v39 = IdentityTarget.debugDescription.getter();
        v41 = v28;
        v42 = sub_100141FE4(v39, v40, &v51);

        *(v38 + 14) = v42;
        _os_log_impl(&_mh_execute_header, v36, v37, "Proofing session doesn't exist for a %s and target %s", v38, 0x16u);
        swift_arrayDestroy();

        (*(v29 + 8))(v41, v30);
      }

      else
      {

        (*(v29 + 8))(v28, v30);
      }

      *v48 = _swiftEmptyArrayStorage;
    }
  }
}