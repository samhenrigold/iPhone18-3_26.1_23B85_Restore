uint64_t sub_1001040FC()
{
  sub_100002BAC();

  *(v0 + 192) = sub_1000FD834(v1);
  v2 = sub_100002C10();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100104170()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[10];
  v6 = OBJC_IVAR____TtC13modelmanagerd13PolicyManager__currentPolicy;
  sub_100004BA0(v2 + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__currentPolicy, (v0 + 2));
  v7 = *(v4 + 16);
  v0[25] = v7;
  v0[26] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v2 + v6, v3);
  v0[27] = *v5;
  v8 = sub_10000A30C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10010422C()
{
  sub_100002BAC();
  v1 = v0[10];
  sub_100104AB0();
  v0[28] = v2;
  v0[29] = *(v1 + 24);
  v3 = sub_10000A30C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100104298()
{
  sub_100002BAC();
  v1 = v0[10];
  sub_100104B24();
  v0[30] = v2;
  v0[31] = *(v1 + 40);
  v3 = sub_10000A30C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100104304()
{
  v1 = v0[10];
  sub_1001061E8();
  v0[32] = v2;
  sub_100106CE8();
  v0[33] = v3;
  sub_100106D50();
  v0[34] = *(v1 + 32);
  v4 = sub_10000A30C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100104390()
{
  sub_100002BAC();
  v1 = v0[10];
  sub_100104B8C();
  v0[35] = v2;
  v0[8] = &_swiftEmptySetSingleton;
  v0[36] = *(v1 + 8);
  v3 = sub_10000A30C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100104408()
{
  sub_100002BAC();
  *(v0 + 296) = sub_100104F78(v1);
  v2 = sub_100003000();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100104468()
{
  sub_100002BAC();
  v1 = sub_10000E8DC(v0[37]);
  v0[38] = v1;
  if (!v1)
  {

    v1 = sub_100003C20();

    return _swift_task_switch(v1, v2, v3);
  }

  if (v1 < 1)
  {
    __break(1u);
    return _swift_task_switch(v1, v2, v3);
  }

  v4 = v0[37];
  v0[39] = 0;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v0[40] = v5;

  v6 = swift_task_alloc();
  v0[41] = v6;
  *v6 = v0;
  sub_1000084A0(v6);

  return sub_1001050B0();
}

uint64_t sub_100104560()
{
  sub_100002BAC();

  v0 = sub_100003000();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_100104650()
{
  v1 = v0[38];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[39] + 1;
  sub_10007E704();

  (*(v4 + 8))(v2, v3);
  if (v5 == v1)
  {

    v6 = sub_100003C20();

    return _swift_task_switch(v6, v7, v8);
  }

  else
  {
    v9 = v0[39] + 1;
    v0[39] = v9;
    v10 = v0[37];
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(v10 + 8 * v9 + 32);
    }

    v0[40] = v11;

    v12 = swift_task_alloc();
    v0[41] = v12;
    *v12 = v0;
    sub_1000084A0(v12);

    return sub_1001050B0();
  }
}

uint64_t sub_1001047A4()
{
  sub_100002BAC();
  v1 = v0[10];
  v0[43] = *(v0[42] + 192);
  v2 = *(v1 + 56);
  v0[44] = v2;

  return _swift_task_switch(sub_100104820, v2, 0);
}

uint64_t sub_100104820()
{
  sub_100002BAC();
  v1 = *(v0 + 352);
  v2 = OBJC_IVAR____TtC13modelmanagerd12TrialManager_enrollments;
  sub_100004BA0(v1 + OBJC_IVAR____TtC13modelmanagerd12TrialManager_enrollments, v0 + 40);
  *(v0 + 360) = *(v1 + v2);

  return _swift_task_switch(sub_1001048A8, 0, 0);
}

uint64_t sub_1001048A8()
{
  v12 = v0[25];
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v11 = v0[19];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  sub_100003370((v0[27] + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog), *(v0[27] + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog + 24));
  type metadata accessor for _OSTransaction();
  v8 = static _OSTransaction.transactions.getter();
  os_unfair_lock_lock(v8 + 6);

  os_unfair_lock_unlock(v8 + 6);

  v12(v1, v2, v11);
  (*(v7 + 16))(v4, v5, v6);
  StateDump.init(assertions:currentPolicy:assets:sessions:requests:runningRequests:remoteRequests:executionGroups:inferenceProviders:disabledUseCases:trials:budget:transactions:)();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v11);

  v9 = v0[1];

  return v9();
}

void sub_100104AB0()
{
  sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets + v0, v2);

  sub_100103028(v1, v0);
  sub_100003170();

  sub_100077310();
}

void sub_100104B24()
{
  sub_100004BA0(v0 + 112, v2);

  sub_1001033F4(v1, v0);
  sub_100003170();

  sub_100077448();
}

void sub_100104B8C()
{
  sub_1000055B0();
  v41 = type metadata accessor for RemoteInterfaceInformation();
  sub_100002BDC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100008624();
  v40 = v4;
  v39 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC();
  v6 = v5;
  sub_100004B1C();
  __chkstk_darwin(v7);
  sub_10000A930();
  v38 = v8;
  v37 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC();
  v10 = v9;
  sub_100004B1C();
  __chkstk_darwin(v11);
  sub_10000A930();
  v36 = v12;
  v35 = type metadata accessor for RemoteManager.InternalRemoteRequestState(0);
  sub_100002BDC();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100002B8C();
  v18 = v17 - v16;
  v34 = type metadata accessor for StateDump.RemoteRequestState();
  sub_100002BDC();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_100002B8C();
  v24 = v23 - v22;
  sub_100004BA0(v0 + 240, &v42);
  v25 = *(v0 + 240);
  v26 = *(v25 + 16);
  if (v26)
  {

    sub_100070E58();
    sub_10000657C();
    v27 = v14;
    v29 = v25 + v28;
    v33 = *(v27 + 72);
    do
    {
      sub_1001076CC(v29, v18, type metadata accessor for RemoteManager.InternalRemoteRequestState);
      (*(v10 + 16))(v36, v18, v37);
      (*(v6 + 16))(v38, v18 + *(v35 + 20), v39);
      (*(v2 + 16))(v40, v18 + *(v35 + 24), v41);
      StateDump.RemoteRequestState.init(sessionID:requestID:interface:)();
      sub_10010772C(v18, type metadata accessor for RemoteManager.InternalRemoteRequestState);
      v31 = _swiftEmptyArrayStorage[2];
      v30 = _swiftEmptyArrayStorage[3];
      if (v31 >= v30 >> 1)
      {
        sub_1000127D4(v30);
        sub_100070E58();
      }

      _swiftEmptyArrayStorage[2] = v31 + 1;
      sub_10000657C();
      (*(v20 + 32))(_swiftEmptyArrayStorage + v32 + *(v20 + 72) * v31, v24, v34);
      v29 += v33;
      --v26;
    }

    while (v26);
  }

  sub_100077864();
  sub_100002EEC();
}

void *sub_100104F78(uint64_t a1)
{
  v1 = InferenceProviderManager.allConnections.getter(a1);
  v9 = _swiftEmptyArrayStorage;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      sub_1000480AC(v3, v8);
      sub_100004A04(v8, v7);
      sub_100065020(&qword_1001BA8F8, "ޅ");
      type metadata accessor for InferenceProviderExtensionConnection(0);
      if ((swift_dynamicCast() & 1) != 0 && v7[5])
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v5 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v5 >> 1)
        {
          sub_1000127D4(v5);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v9;
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v4;
}

uint64_t sub_1001050B0()
{
  sub_100002BAC();
  v0[8] = v1;
  v0[9] = v2;
  v3 = sub_100065020(&qword_1001BC460, &qword_100172C38);
  v0[10] = v3;
  sub_100002F04(v3);
  v0[11] = sub_10000F0C0();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  active = type metadata accessor for StateDump.InferenceProviderState.ActiveRequest();
  v0[17] = active;
  sub_100002F44(active);
  v0[18] = v5;
  v0[19] = swift_task_alloc();
  v6 = type metadata accessor for RequestPriority();
  v0[20] = v6;
  sub_100002F44(v6);
  v0[21] = v7;
  v0[22] = swift_task_alloc();
  v8 = type metadata accessor for InferenceProviderDescriptor();
  v0[23] = v8;
  sub_100002F44(v8);
  v0[24] = v9;
  v0[25] = swift_task_alloc();
  v10 = sub_100002C10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100105274()
{
  sub_100002BAC();
  v1 = *(*(v0 + 72) + 120);
  if (v1)
  {
    v2 = [v1 pid];
  }

  else
  {
    v2 = -1;
  }

  *(v0 + 232) = v2;
  v3 = sub_100003000();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001052EC()
{
  sub_100002BAC();
  (*(v0[24] + 16))(v0[25], v0[9] + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_descriptor, v0[23]);
  v1 = sub_100002C10();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10010536C()
{
  sub_100002BAC();
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activeRequest;
  sub_100004BA0(v1 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activeRequest, v0 + 16);
  *(v0 + 208) = *(v1 + v2);

  return _swift_task_switch(sub_1001053F4, 0, 0);
}

uint64_t sub_1001053F4()
{
  v1 = v0;
  v2 = v0[26];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[21];
    v44 = v0[10];
    sub_100070EB0();
    v5 = sub_10014AFA0();
    v8 = v5;
    v9 = 0;
    v10 = v2 + 64;
    v56 = v4;
    v39 = v6;
    v40 = v3;
    v38 = v2 + 72;
    v41 = v2 + 64;
    v42 = v2;
    v43 = v1;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v2 + 32))
    {
      if ((*(v10 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v2 + 36) != v6)
      {
        goto LABEL_25;
      }

      v48 = 1 << v8;
      v49 = v8 >> 6;
      v46 = v9;
      v47 = v6;
      v45 = v7;
      v11 = *(v44 + 48);
      v12 = v1[20];
      v13 = v1[16];
      v57 = v1[15];
      v52 = v1[14];
      v50 = v1[13];
      v53 = v1[12];
      v54 = v1[11];
      v14 = *(v2 + 48);
      v15 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
      sub_100002BDC();
      v17 = v14 + *(v16 + 72) * v8;
      v19 = v18;
      v51 = v18;
      (*(v18 + 16))(v13, v17, v15);
      v55 = v8;
      (*(v56 + 16))(v13 + v11, *(v2 + 56) + *(v56 + 72) * v8, v12);
      v20 = *(v19 + 32);
      v20(v57, v13, v15);
      v21 = *(v56 + 32);
      v21(v57 + *(v44 + 48), v13 + v11, v12);
      sub_10002E90C(v57, v52, &qword_1001BC460, &qword_100172C38);
      v22 = *(v44 + 48);
      v20(v50, v52, v15);
      v21(v50 + *(v44 + 48), v52 + v22, v12);
      sub_10002E90C(v50, v53, &qword_1001BC460, &qword_100172C38);
      v23 = *(v44 + 48);
      sub_10002E90C(v50, v54, &qword_1001BC460, &qword_100172C38);
      StateDump.InferenceProviderState.ActiveRequest.init(request:priority:)();
      sub_10000ECD8(v50, &qword_1001BC460, &qword_100172C38);
      sub_10000ECD8(v57, &qword_1001BC460, &qword_100172C38);
      (*(v51 + 8))(v54, v15);
      (*(v56 + 8))(v53 + v23, v12);
      v25 = _swiftEmptyArrayStorage[2];
      v24 = _swiftEmptyArrayStorage[3];
      if (v25 >= v24 >> 1)
      {
        sub_1000127D4(v24);
        sub_100070EB0();
      }

      v1 = v43;
      _swiftEmptyArrayStorage[2] = v25 + 1;
      sub_10000657C();
      (*(v27 + 32))(_swiftEmptyArrayStorage + v26 + *(v27 + 72) * v25);
      v2 = v42;
      v8 = 1 << *(v42 + 32);
      v5 = v55;
      if (v55 >= v8)
      {
        goto LABEL_26;
      }

      v10 = v41;
      v28 = *(v41 + 8 * v49);
      if ((v28 & v48) == 0)
      {
        goto LABEL_27;
      }

      v6 = v47;
      if (*(v42 + 36) != v47)
      {
        goto LABEL_28;
      }

      v29 = v28 & (-2 << (v55 & 0x3F));
      if (v29)
      {
        v8 = __clz(__rbit64(v29)) | v55 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v49 << 6;
        v31 = (v38 + 8 * v49);
        v32 = v49 + 1;
        while (v32 < (v8 + 63) >> 6)
        {
          v34 = *v31++;
          v33 = v34;
          v30 += 64;
          ++v32;
          if (v34)
          {
            v5 = sub_100016E94(v55, v47, v45 & 1);
            v8 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        v5 = sub_100016E94(v55, v47, v45 & 1);
      }

LABEL_19:
      v7 = 0;
      v9 = v46 + 1;
      v6 = v39;
      if (v46 + 1 == v40)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_20:

    v35 = v1[9];
    sub_10007799C();
    v1[27] = v36;
    v5 = sub_100105918;
    v6 = v35;
    v7 = 0;
  }

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100105918()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activePriority;
  sub_100004BA0(v4 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activePriority, (v0 + 5));
  (*(v2 + 16))(v1, v4 + v5, v3);
  v0[28] = *(v4 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_loadingCount);
  v6 = sub_100003000();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1001059D4()
{
  StateDump.InferenceProviderState.init(pid:descriptor:activeRequests:activePriority:loadingCount:)();

  v1 = *(v0 + 8);

  return v1();
}

void sub_100105AD0()
{
  sub_1000055B0();
  v60 = v1;
  v61 = v0;
  v3 = v2;
  type metadata accessor for LoadState();
  sub_100002BDC();
  v57 = v5;
  v58 = v4;
  __chkstk_darwin(v4);
  sub_100008624();
  v63 = v6;
  v7 = type metadata accessor for InferenceProviderDescriptor();
  v8 = sub_100002F04(v7);
  __chkstk_darwin(v8);
  sub_100008624();
  v62 = v9;
  v10 = type metadata accessor for AssetCost();
  sub_100002BDC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100002B8C();
  v16 = v15 - v14;
  v54 = v15 - v14;
  v17 = type metadata accessor for InferenceProviderAssetDescriptor();
  sub_100002BDC();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_100002B8C();
  v23 = v22 - v21;
  v56 = v22 - v21;
  v24 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v25 = (v24 - 8);
  __chkstk_darwin(v24);
  sub_100002B8C();
  v28 = v27 - v26;
  v29 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  swift_beginAccess();
  v59 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState;
  sub_1001076CC(v29 + v3, v28, type metadata accessor for InferenceProviderAsset.ManagerOwnedState);
  (*(v19 + 16))(v23, v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor, v17);
  v30 = *(v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_path + 8);
  v55 = *(v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_path);
  v50[1] = v30;
  (*(v12 + 16))(v16, v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_cost, v10);
  v53 = *(v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_isCacheable);
  v52 = *(v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed);
  v51 = *(v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_useEnergyEfficientMode);
  v31 = *(v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
  v32 = *(v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
  sub_100003370((v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v31);
  v33 = *(v32 + 8);

  v33(v31, v32);
  (*(v57 + 16))(v63, v28, v58);
  v34 = (v28 + v25[17]);
  v35 = v34[4];
  sub_100003370(v34, v34[3]);
  v36 = sub_100003170();
  LODWORD(v58) = v37(v36, v35);
  v38 = v25[10];
  v39 = type metadata accessor for Date();
  sub_100002BDC();
  v41 = v40;
  v43 = *(v42 + 64);
  __chkstk_darwin(v44);
  v45 = v50 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(v41 + 16);
  v47 = v46(v45, v28 + v38, v39);
  __chkstk_darwin(v47);
  v46(v45, v28 + v48, v39);
  v49 = *(v28 + v25[14]);

  sub_100103B5C(v49);
  sub_100077D78();
  StateDump.AssetState.init(descriptor:path:cost:isCacheable:dynamicModeAllowed:useEnergyEfficientMode:inferenceProvider:loadState:isLocked:timeLastRequestEnded:timeLastForegroundSessionEnded:requiredByOtherAssets:foregroundSessions:executionGroups:)();

  sub_10010772C(v28, v59);
  sub_100002EEC();
}

void sub_100105FD8()
{
  sub_1000055B0();
  v0 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002F04(v0);
  sub_100004B1C();
  __chkstk_darwin(v1);
  Session.Metadata.id.getter();
  sub_100065020(&qword_1001B9090, &unk_100172C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016FF40;
  v3 = type metadata accessor for URL();
  sub_100002BDC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100002B8C();
  v9 = v8 - v7;
  Session.Metadata.assetBundleURI.getter();
  v10 = URL.absoluteString.getter();
  v12 = v11;
  (*(v5 + 8))(v9, v3);
  *(inited + 32) = v10;
  *(inited + 40) = v12;
  sub_100077254(inited);
  Session.Metadata.useCaseID.getter();
  Session.Metadata.onBehalfOfPID.getter();
  AuditToken.processIdentifier.getter();

  v14 = sub_1001037C0(v13);

  sub_1000776B8(v14);
  StateDump.SessionState.init(identifier:supportedAssets:useCaseIdentifier:onBehalfOfPID:createdByPID:requests:isCancelled:)();

  sub_100002EEC();
}

void sub_1001061E8()
{
  sub_1000055B0();
  v1 = 0;
  v2 = type metadata accessor for Version();
  v3 = sub_100002F04(v2);
  __chkstk_darwin(v3);
  sub_100008624();
  sub_100002DC4(v4);
  v90 = type metadata accessor for InferenceProviderRequestConfiguration();
  sub_100002BDC();
  v84 = v5;
  __chkstk_darwin(v6);
  sub_100008624();
  sub_100002DC4(v7);
  v8 = type metadata accessor for RequestPriority();
  v9 = sub_100002F04(v8);
  __chkstk_darwin(v9);
  sub_100008624();
  v11 = sub_100002DC4(v10);
  v12 = type metadata accessor for DaemonRequest.ManagerOwnedState(v11);
  v13 = sub_100002F04(v12);
  __chkstk_darwin(v13);
  sub_100008624();
  sub_100002DC4(v14);
  v15 = type metadata accessor for InferenceProviderDescriptor();
  v16 = sub_100002F04(v15);
  __chkstk_darwin(v16);
  sub_100008624();
  v17 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002F04(v17);
  sub_100004B1C();
  __chkstk_darwin(v18);
  sub_10000A930();
  v19 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002F04(v19);
  sub_100004B1C();
  __chkstk_darwin(v20);
  sub_10000A930();
  sub_100002DC4(v21);
  v87 = type metadata accessor for StateDump.RequestState();
  sub_100002BDC();
  __chkstk_darwin(v22);
  sub_100008624();
  v91 = v23;
  sub_100065020(&qword_1001BC488, &qword_100172C60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100172BA0;
  v25 = (v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups);
  sub_100004BA0(v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups, &v104);
  v27 = *v25;
  v26 = v25[1];
  *(inited + 32) = v27;
  v28 = inited + 32;
  *(inited + 40) = v26;
  v29 = (v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups);
  sub_100004BA0(v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups, &v103);
  v31 = *v29;
  v30 = v29[1];
  *(inited + 48) = v31;
  *(inited + 56) = v30;
  v32 = (v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingBackgroundGroups);
  sub_100004BA0(v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingBackgroundGroups, &v102);
  v34 = *v32;
  v33 = v32[1];
  *(inited + 64) = v34;
  *(inited + 72) = v33;
  v101 = _swiftEmptyArrayStorage;

  v85 = inited + 32;
LABEL_2:
  if (v1 == 3)
  {
    goto LABEL_55;
  }

  v86 = v1 + 1;
  v35 = *(v28 + 16 * v1 + 8);
  v94 = *(v35 + 16);
  v92 = v35 + 32;

  v96 = v35;

  v36 = 0;
  v37 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v36 == v94)
    {

      sub_100140864(v37);
      v28 = v85;
      v1 = v86;
      goto LABEL_2;
    }

    if (v36 >= *(v96 + 16))
    {
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
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v38 = *(v92 + 8 * v36) + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
    sub_100004BA0(v38, &v100);
    v39 = *(v38 + 32);
    v40 = *(v39 + 16);
    if (!v40)
    {
      v41 = _swiftEmptyArrayStorage;
      goto LABEL_20;
    }

    v98 = v36;
    sub_100065020(&dword_1001BA4A8, &qword_100171010);
    v41 = swift_allocObject();
    v42 = j__malloc_size(v41);
    v43 = 0;
    v44 = 0;
    *(v41 + 16) = v40;
    *(v41 + 24) = (2 * ((v42 - 32) / 8)) | 1;
    v45 = 1 << *(v39 + 32);
    v46 = v45 < 64 ? ~(-1 << v45) : -1;
    v47 = v46 & *(v39 + 64);
    v48 = (v41 + 32);
    v49 = (v45 + 63) >> 6;
    if (!v47)
    {
      break;
    }

    while (1)
    {
      v50 = v44;
LABEL_15:
      ++v43;
      *v48 = *(*(v39 + 48) + ((v50 << 9) | (8 * __clz(__rbit64(v47)))));
      if (v43 == v40)
      {
        break;
      }

      v47 &= v47 - 1;
      ++v48;

      v44 = v50;
      if (!v47)
      {
        goto LABEL_12;
      }
    }

    v36 = v98;
LABEL_20:
    v51 = v41 < 0 || (v41 & 0x4000000000000000) != 0;
    if (v51)
    {
      v52 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v52 = *(v41 + 16);
    }

    v53 = v37 >> 62;
    if (v37 >> 62)
    {
      v54 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v54 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v55 = v54 + v52;
    if (__OFADD__(v54, v52))
    {
      goto LABEL_66;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v53)
      {
LABEL_33:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_34:
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v56 = v37 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_35;
    }

    if (v53)
    {
      goto LABEL_33;
    }

    v56 = v37 & 0xFFFFFFFFFFFFFF8;
    if (v55 > *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_34;
    }

LABEL_35:
    v57 = *(v56 + 16);
    v58 = *(v56 + 24);
    if (v51)
    {
      v59 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v59 = *(v41 + 16);
    }

    ++v36;

    if (v59)
    {
      if (((v58 >> 1) - v57) < v52)
      {
        goto LABEL_68;
      }

      v60 = v56 + 8 * v57 + 32;
      if (v51)
      {
        if (v59 < 1)
        {
          goto LABEL_71;
        }

        sub_100107668();
        for (i = 0; i != v59; ++i)
        {
          sub_100065020(&qword_1001BC490, &qword_100174200);
          v62 = sub_1001494CC(v99, i, v41);
          v64 = *v63;

          v62(v99, 0);
          *(v60 + 8 * i) = v64;
        }
      }

      else
      {
        type metadata accessor for DaemonRequest(0);
        swift_arrayInitWithCopy();
      }

      if (v52 > 0)
      {
        v65 = *(v56 + 16);
        v66 = __OFADD__(v65, v52);
        v67 = v65 + v52;
        if (v66)
        {
          goto LABEL_70;
        }

        *(v56 + 16) = v67;
      }
    }

    else
    {

      if (v52 > 0)
      {
        goto LABEL_67;
      }
    }
  }

LABEL_12:
  while (1)
  {
    v50 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v50 >= v49)
    {
      goto LABEL_69;
    }

    v47 = *(v39 + 64 + 8 * v50);
    ++v44;
    if (v47)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_55:
  swift_setDeallocating();
  sub_1000D5FB0();
  v68 = v101;
  v69 = sub_10000E8DC(v101);
  if (v69)
  {
    v70 = v69;
    v101 = _swiftEmptyArrayStorage;
    sub_100070DA8();
    if ((v70 & 0x8000000000000000) == 0)
    {
      v71 = 0;
      v72 = v101;
      v93 = v68 & 0xC000000000000001;
      v97 = v68;
      v95 = v70;
      do
      {
        if (v93)
        {
          v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v73 = *(v68 + 8 * v71 + 32);
        }

        RequestMetadata.id.getter();
        RequestMetadata.sessionID.getter();

        v75 = sub_100102D48(v74);

        sub_100077254(v75);
        v76 = *(v73 + 7);
        v77 = *(v73 + 8);
        sub_100003370(v73 + 4, v76);
        (*(v77 + 8))(v76, v77);
        v78 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
        sub_100004BA0(&v73[OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState], v99);
        sub_1001076CC(&v73[v78], v88, type metadata accessor for DaemonRequest.ManagerOwnedState);
        InferenceProviderRequestConfiguration.requestPriority.getter();
        sub_10010772C(v88, type metadata accessor for DaemonRequest.ManagerOwnedState);
        (*(v84 + 16))(v89, &v73[v78], v90);
        InferenceProviderRequestConfiguration.requestVersion.getter();
        (*(v84 + 8))(v89, v90);
        v79 = v91;
        StateDump.RequestState.init(identifier:session:asset:inferenceProvider:priority:requestVersion:)();

        v101 = v72;
        v81 = v72[2];
        v80 = v72[3];
        if (v81 >= v80 >> 1)
        {
          sub_1000127D4(v80);
          sub_100070DA8();
          v79 = v91;
          v72 = v101;
        }

        ++v71;
        v72[2] = v81 + 1;
        sub_10000657C();
        (*(v83 + 32))(v72 + v82 + *(v83 + 72) * v81, v79, v87);
        v68 = v97;
      }

      while (v95 != v71);
      goto LABEL_64;
    }

LABEL_72:
    __break(1u);
  }

  else
  {
LABEL_64:

    sub_100077580();
    sub_100002EEC();
  }
}

void sub_100106CE8()
{
  sub_100004BA0(v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_extantRequests, v2);

  sub_1001037C0(v1);
  sub_100003170();

  sub_1000776B8(v0);
}

void sub_100106D50()
{
  sub_1000055B0();
  v1 = v0;
  v48[1] = v2;
  v52 = type metadata accessor for StateDump.ExecutionGroupState();
  sub_100002BDC();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v49 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = v48 - v9;
  __chkstk_darwin(v8);
  v12 = v48 - v11;
  v13 = (v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups);
  sub_100004BA0(v13, &v56);
  v14 = v13[1];
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *v13;
    v55 = _swiftEmptyArrayStorage;
    v48[0] = v16;

    sub_100008974();
    v17 = 0;
    v50 = v4 + 32;
    v51 = v55;
    while (v17 < *(v14 + 16))
    {

      sub_100107198();
      v18 = v51;
      v55 = v51;
      v20 = v51[2];
      v19 = v51[3];
      if (v20 >= v19 >> 1)
      {
        sub_1000127D4(v19);
        sub_100070E00();
        v18 = v55;
      }

      ++v17;
      v18[2] = v20 + 1;
      sub_10000657C();
      v51 = v21;
      v23 = sub_100003AC0(v21 + v22);
      v24(v23, v12, v52);
      if (v15 == v17)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v51 = _swiftEmptyArrayStorage;
LABEL_9:
  v25 = (v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups);
  sub_100004BA0(v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups, &v55);
  v26 = v25[1];
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = *v25;
    v54 = _swiftEmptyArrayStorage;
    v48[0] = v28;

    sub_100008974();
    v29 = 0;
    v30 = v54;
    v50 = v4 + 32;
    while (v29 < *(v26 + 16))
    {

      sub_100107198();
      v54 = v30;
      v32 = v30[2];
      v31 = v30[3];
      if (v32 >= v31 >> 1)
      {
        sub_1000127D4(v31);
        sub_100070E00();
        v30 = v54;
      }

      ++v29;
      v30[2] = v32 + 1;
      sub_10000657C();
      v34 = sub_100003AC0(v30 + v33);
      v35(v34, v10, v52);
      if (v27 == v29)
      {

        goto LABEL_16;
      }
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_16:
  v36 = (v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingBackgroundGroups);
  sub_100004BA0(v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingBackgroundGroups, &v54);
  v37 = v36[1];
  v38 = *(v37 + 16);
  if (!v38)
  {
LABEL_23:
    StateDump.ExecutionGroupsState.init(active:pendingForeground:pendingBackground:)();
    sub_100002EEC();
    return;
  }

  v39 = *v36;
  v53 = _swiftEmptyArrayStorage;
  v48[0] = v39;

  sub_100008974();
  v40 = 0;
  v41 = v53;
  v50 = v4 + 32;
  v42 = v49;
  while (v40 < *(v37 + 16))
  {

    sub_100107198();
    v53 = v41;
    v44 = v41[2];
    v43 = v41[3];
    if (v44 >= v43 >> 1)
    {
      sub_1000127D4(v43);
      sub_100070E00();
      v41 = v53;
    }

    ++v40;
    v41[2] = v44 + 1;
    sub_10000657C();
    v46 = sub_100003AC0(v41 + v45);
    v47(v46, v42, v52);
    if (v38 == v40)
    {

      goto LABEL_23;
    }
  }

LABEL_26:
  __break(1u);
}

void sub_100107198()
{
  sub_1000055B0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v35 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC();
  v7 = v6;
  sub_100004B1C();
  __chkstk_darwin(v8);
  sub_10000A930();
  v10 = v9;
  v11 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  sub_100002BDC();
  v13 = v12;
  sub_100004B1C();
  __chkstk_darwin(v14);
  v16 = v34 - v15;
  v17 = v3 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
  sub_100004BA0(v3 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState, &v39);
  v18 = *(v17 + 1);
  v40 = *v17;
  v41 = v18;
  v42 = *(v17 + 4);
  v43 = *(&v40 + 1);
  v44 = v18;
  v45[0] = v42;
  v38 = v3;
  sub_10002E90C(&v43, &v37, &qword_1001BC468, &qword_100172C40);
  sub_10002E90C(&v44, &v37, &qword_1001BC468, &qword_100172C40);
  sub_10002E90C(&v44 + 8, &v37, &qword_1001BC470, &unk_100172C48);
  sub_10002E90C(v45, &v37, &qword_1001B8F40, &unk_10016FB20);
  _s14ExecutionGroupCMa(0);
  sub_100107610();

  UUIDIdentifier.init(_:)();
  v19 = type metadata accessor for UUID();
  v20 = sub_100002F04(v19);
  __chkstk_darwin(v20);
  sub_100008624();
  v34[5] = v21;
  UUIDIdentifier.uuid.getter();
  (*(v13 + 8))(v16, v11);

  sub_100102D48(v22);
  sub_100003170();

  v23 = sub_100077254(v16);
  v24 = sub_10006CF3C();
  v25 = sub_10000E8DC(v24);
  if (!v25)
  {
LABEL_10:

    sub_10006C844(v40);
    StateDump.ExecutionGroupState.init(id:assets:requests:state:)();

    sub_10000ECD8(&v43, &qword_1001BC468, &qword_100172C40);
    sub_10000ECD8(&v44, &qword_1001BC468, &qword_100172C40);
    sub_10000ECD8(&v44 + 8, &qword_1001BC470, &unk_100172C48);
    sub_10000ECD8(v45, &qword_1001B8F40, &unk_10016FB20);

    sub_100002EEC();
    return;
  }

  v26 = v25;
  v36 = v24;
  v38 = _swiftEmptyArrayStorage;
  sub_100070A50(0, v25 & ~(v25 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v34[1] = v23;
    v34[2] = v5;
    v34[3] = v1;
    v34[4] = v3;
    v27 = 0;
    v28 = v38;
    v29 = v36 & 0xC000000000000001;
    do
    {
      if (v29)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      RequestMetadata.id.getter();

      v38 = v28;
      v31 = v28[2];
      v30 = v28[3];
      if (v31 >= v30 >> 1)
      {
        v33 = sub_1000127D4(v30);
        sub_100070A50(v33, v31 + 1, 1);
        v28 = v38;
      }

      ++v27;
      v28[2] = v31 + 1;
      sub_10000657C();
      (*(v7 + 32))(v28 + v32 + *(v7 + 72) * v31, v10, v35);
    }

    while (v26 != v27);
    goto LABEL_10;
  }

  __break(1u);
}

unint64_t sub_100107610()
{
  result = qword_1001BC478;
  if (!qword_1001BC478)
  {
    _s14ExecutionGroupCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BC478);
  }

  return result;
}

unint64_t sub_100107668()
{
  result = qword_1001BC498;
  if (!qword_1001BC498)
  {
    sub_10006A614(&qword_1001BC490, &qword_100174200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BC498);
  }

  return result;
}

uint64_t sub_1001076CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100002C00();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10010772C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100002C00();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100107784()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BC4A8);
  sub_10000641C(v0, qword_1001BC4A8);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t IPCCachedSession.sendAsyncWithRetry<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v10 = type metadata accessor for ModelManagerError();
  v5[8] = v10;
  v5[9] = *(v10 - 8);
  v5[10] = swift_task_alloc();
  v11 = sub_100005204();
  v5[11] = v11;
  *v11 = v5;
  v11[1] = sub_10010791C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_10010791C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    type metadata accessor for IPCCachedSession();
    sub_100107F08();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v2 + 104) = v5;
    *(v2 + 112) = v4;

    return _swift_task_switch(sub_100107A94, v5, v4);
  }

  else
  {

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_100107A94()
{
  v0[2] = v0[12];
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (swift_dynamicCast())
  {
    if ((*(v0[9] + 88))(v0[10], v0[8]) == enum case for ModelManagerError.ipcError(_:))
    {
      v2 = v0[9];
      v1 = v0[10];
      v3 = v0[8];

      (*(v2 + 8))(v1, v3);
      if (qword_1001B89A0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_10000641C(v4, qword_1001BC4A8);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "IPCCachedSession performing a retry on sendAsync", v7, 2u);
      }

      v8 = sub_100005204();
      v0[15] = v8;
      *v8 = v0;
      v8[1] = sub_100107CF0;
      v9 = v0[6];
      v10 = v0[4];
      v11 = v0[5];
      v12 = v0[3];

      return v15(v12, v10, v11, v9);
    }

    (*(v0[9] + 8))(v0[10], v0[8]);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100107CF0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_100107E98;
  }

  else
  {
    v5 = sub_100107E2C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100107E2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100107E98()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100107F08()
{
  result = qword_1001BC4C0;
  if (!qword_1001BC4C0)
  {
    type metadata accessor for IPCCachedSession();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BC4C0);
  }

  return result;
}

uint64_t sub_100107F60(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_100003370(a3, a3[3]);
  sub_10006AE54(v14);

  if (v5)
  {
  }

  else
  {
    sub_100003370(v14, v15);
    sub_1000480AC(a3, v13);
    v9 = swift_allocObject();
    sub_100004A04(v13, v9 + 16);
    *(v9 + 56) = a4;
    *(v9 + 64) = a5;
    v12[4] = sub_100108608;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1000BCB44;
    v12[3] = &unk_1001B1C30;
    v10 = _Block_copy(v12);

    xpc_remote_connection_set_event_handler();
    _Block_release(v10);

    sub_100003370(v14, v15);
    xpc_remote_connection_activate();

    sub_100003324(v14);
  }

  return sub_100003324(a3);
}

uint64_t sub_100108108()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BC4D0);
  sub_10000641C(v0, qword_1001BC4D0);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t (*sub_100108174(uint64_t a1, uint64_t a2))()
{
  sub_100065020(&qword_1001BC5A0, &qword_100172D28);
  v3 = *(a2 + 16);
  type metadata accessor for RemoteXPCMessageHandler();
  *(swift_allocObject() + 16) = v3;

  TaskCancellingIPCPeerHandler.__allocating_init(handler:)();

  return sub_1001089F8;
}

uint64_t sub_10010822C()
{
  sub_100065020(&qword_1001BC5A0, &qword_100172D28);
  sub_100108A08();
  return dispatch thunk of IPCPeerHandler.handleCancellation()();
}

uint64_t sub_100108280(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  sub_100065020(&qword_1001BC5A0, &qword_100172D28);
  sub_100108A08();
  dispatch thunk of IPCPeerHandler.handleIncomingRequest(_:)();
  return sub_100108A6C(v3);
}

uint64_t sub_100108314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_unknownObjectRetain();
  v13 = &type metadata for RemoteXPCConnection;
  v14 = &off_1001B1F68;
  *&aBlock = sub_10010D2F4(v7);
  sub_100004A04(&aBlock, v17);
  sub_100003370(v17, v18);
  sub_1000480AC(a2, v16);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_100004A04(v16, v8 + 32);
  v14 = sub_1001089A4;
  v15 = v8;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v12 = sub_1000BCB44;
  v13 = &unk_1001B1C80;
  v9 = _Block_copy(&aBlock);

  xpc_remote_connection_set_event_handler();
  _Block_release(v9);

  sub_100003370(v17, v18);
  xpc_remote_connection_activate();
  return sub_100003324(v17);
}

double sub_100108614(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  type metadata accessor for RemoteXPCListener.IncomingSessionRequest();
  swift_allocObject();
  v7 = a2();
  v9 = v8;

  type = xpc_get_type(a1);
  if (type == XPC_TYPE_ERROR.getter())
  {
    if (qword_1001B89A8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000641C(v15, qword_1001BC4D0);
    swift_unknownObjectRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28[0] = v19;
      *v18 = 136315138;
      swift_unknownObjectRetain();
      sub_100065020(&qword_1001BC588, &qword_100172D20);
      v20 = String.init<A>(describing:)();
      v22 = sub_100004A3C(v20, v21, v28);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Received remoteXPC error, assuming cancellation: %s", v18, 0xCu);
      sub_100003324(v19);
    }

    v23 = type metadata accessor for ModelManagerError();
    sub_1001089B0(&qword_1001B8F50, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
    v24 = swift_allocError();
    v26 = v25;
    v28[0] = a1;
    swift_unknownObjectRetain();
    sub_100065020(&qword_1001BC588, &qword_100172D20);
    *v26 = String.init<A>(describing:)();
    v26[1] = v27;
    (*(*(v23 - 8) + 104))(v26, enum case for ModelManagerError.remoteXPCError(_:), v23);
    v7(v24);
  }

  else
  {
    v11 = type metadata accessor for RemoteXPCReceivedMessage(0);
    v28[3] = v11;
    v28[4] = sub_1001089B0(&unk_1001BC590, type metadata accessor for RemoteXPCReceivedMessage, &unk_10017184C);
    v12 = sub_10000366C(v28);
    sub_1000480AC(a4, v12);
    swift_unknownObjectRetain();
    XPCDictionary.init(_:)();
    *(v12 + v11[6]) = 1;
    *(v12 + v11[7]) = 0;
    v13 = (v12 + v11[8]);
    *v13 = 0u;
    v13[1] = 0u;
    v9(v28);

    sub_100003324(v28);
  }

  return result;
}

uint64_t sub_1001089B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100108A08()
{
  result = qword_1001BC5A8;
  if (!qword_1001BC5A8)
  {
    sub_10006A614(&qword_1001BC5A0, &qword_100172D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BC5A8);
  }

  return result;
}

uint64_t sub_100108A6C(uint64_t a1)
{
  v2 = sub_100065020(&unk_1001BC5B0, qword_100172D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100108B20(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for XPCSession.InitializationOptions();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100108BB0, 0, 0);
}

uint64_t sub_100108BB0()
{
  static RemoteIPCRequest.simulatorServiceName.getter();
  v1 = String.utf8CString.getter();

  xpc_connection_create_mach_service((v1 + 32), 0, 0);

  xpc_connection_enable_sim2host_4sim();
  v2 = type metadata accessor for XPCSession();
  swift_unknownObjectRetain();
  static XPCSession.InitializationOptions.inactive.getter();
  v3 = XPCSession.__allocating_init(fromConnection:targetQueue:options:cancellationHandler:)();
  v4 = *(v0 + 16);
  v4[3] = v2;
  v4[4] = &protocol witness table for XPCSession;
  swift_unknownObjectRelease();
  *v4 = v3;

  v5 = *(v0 + 8);

  return v5();
}

void sub_100108D28()
{
  sub_10000A274();
  v1 = v0;
  v2 = type metadata accessor for ModelCatalogAsset(0);
  v3 = sub_100002F44(v2);
  v31 = v4;
  __chkstk_darwin(v3);
  sub_100002B8C();
  v30 = (v6 - v5);
  v7 = *(v1 + 16);
  if (v7)
  {
    sub_10002045C(0, v7, 0);
    v10 = sub_10001E724();
    v11 = 0;
    v34 = v1 + 56;
    v27 = v1 + 64;
    v28 = v7;
    v29 = v1;
    if ((v10 & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(v1 + 32))
      {
        v12 = v10 >> 6;
        if ((*(v34 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v1 + 36) != v8)
        {
          goto LABEL_25;
        }

        v33 = v9;
        v32 = v8;
        sub_100009370(*(v1 + 48) + *(v31 + 72) * v10, v30, type metadata accessor for ModelCatalogAsset);
        v14 = *v30;
        v13 = v30[1];

        sub_1000125E8(v30, type metadata accessor for ModelCatalogAsset);
        v16 = _swiftEmptyArrayStorage[2];
        v15 = _swiftEmptyArrayStorage[3];
        if (v16 >= v15 >> 1)
        {
          sub_10002045C((v15 > 1), v16 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v16 + 1;
        v17 = &_swiftEmptyArrayStorage[2 * v16];
        v17[4] = v14;
        v17[5] = v13;
        if (v33)
        {
          goto LABEL_29;
        }

        v1 = v29;
        v18 = 1 << *(v29 + 32);
        if (v10 >= v18)
        {
          goto LABEL_26;
        }

        v19 = *(v34 + 8 * v12);
        if ((v19 & (1 << v10)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v29 + 36) != v32)
        {
          goto LABEL_28;
        }

        v20 = v19 & (-2 << (v10 & 0x3F));
        if (v20)
        {
          v18 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v21 = v28;
        }

        else
        {
          v22 = v12 << 6;
          v23 = v12 + 1;
          v21 = v28;
          v24 = (v27 + 8 * v12);
          while (v23 < (v18 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              sub_100016E94(v10, v32, 0);
              v18 = __clz(__rbit64(v25)) + v22;
              goto LABEL_19;
            }
          }

          sub_100016E94(v10, v32, 0);
        }

LABEL_19:
        if (++v11 == v21)
        {
          goto LABEL_22;
        }

        v9 = 0;
        v8 = *(v29 + 36);
        v10 = v18;
        if (v18 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
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
LABEL_22:
    sub_100005874();
  }
}

uint64_t sub_100108FFC(uint64_t a1)
{
  v3 = sub_10000EF2C(OBJC_IVAR____TtC13modelmanagerd13DaemonSession_unsafeManagerOwnedState);

  sub_10007D34C(&v4, a1);

  sub_10000A93C(v3);
}

uint64_t sub_100109080()
{
  v1 = type metadata accessor for InferenceProviderDescriptor();
  sub_100002BDC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100002B8C();
  v7 = v6 - v5;
  v8 = *(v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession__lazyState);
  v9 = *(*v8 + class metadata base offset for ManagedBuffer + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_100109AC0(v8 + v9, v18);
  os_unfair_lock_unlock((v8 + v10));
  if (!v18[0])
  {
    sub_100021248(_swiftEmptyArrayStorage);
    sub_100003AD0();
    return sub_1000062B0();
  }

  sub_10001F04C();
  v12 = v11;
  v14 = v13;

  v18[0] = v12;
  v18[1] = v14;
  if (*(v14 + 16))
  {
    if (v12)
    {

      sub_10010BE98();
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    sub_100144030(0, v17);
    (*(v3 + 8))(v7, v1);
    return sub_1000062B0();
  }

  __break(1u);
  return result;
}

uint64_t sub_10010929C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1001092BC, a2, 0);
}

uint64_t sub_1001092BC()
{
  v1 = v0[2];
  v2 = *(v0[5] + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_unsafeManagerOwnedState + 8);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;

  v4 = sub_10012819C(sub_10010C508, v3, v2);
  v0[6] = v4;

  if (v4)
  {
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_1001094C8;

    return sub_10013C4DC();
  }

  else
  {
    v7 = type metadata accessor for ModelManagerError();
    sub_1000114EC();
    sub_1000218A0(v8, v9);
    swift_allocError();
    v11 = v10;
    sub_100065020(&qword_1001B8F48, &qword_10016FB30);
    UUIDIdentifier.uuid.getter();
    (*(*(v7 - 8) + 104))(v11, enum case for ModelManagerError.requestNotFound(_:), v7);
    swift_willThrow();
    sub_100001F00();

    return v12();
  }
}

uint64_t sub_1001094C8()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  return _swift_task_switch(sub_1001095C8, v2, 0);
}

uint64_t sub_1001095C8()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

uint64_t sub_100109624(uint64_t a1)
{
  v6 = variable initialization expression of InferenceProviderManager.updatesReceived();
  result = sub_1000216AC(&v39, a1, 0, 1, v6, &type metadata accessor for UUID, sub_10010B368, sub_10010AB30);
  v8 = *(a1 + 16);
  v9 = v39;
  if (v39 != v8)
  {
    if ((v39 & 0x8000000000000000) != 0)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v30 = result;
    v1 = sub_10010C2C4(0, v39, a1, &type metadata accessor for UUID);
    v2 = v10;
    v3 = v11;
    v4 = v12;
    if (v12)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
        swift_unknownObjectRelease();
        v14 = _swiftEmptyArrayStorage;
      }

      v15 = v14[2];

      if (__OFSUB__(v4 >> 1, v3))
      {
        goto LABEL_31;
      }

      if (v15 != (v4 >> 1) - v3)
      {
        goto LABEL_32;
      }

      v2 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v2)
      {
        goto LABEL_12;
      }

      v2 = _swiftEmptyArrayStorage;
      goto LABEL_11;
    }

    while (1)
    {
      sub_10010A594(v1, v2, v3, v4, sub_100140520, &type metadata accessor for UUID);
      v2 = v13;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      v40 = v30;
      v41 = v2;
      if (v8 >= v9)
      {
        break;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      swift_unknownObjectRelease();
    }

    v29[1] = sub_10010C2C4(v9, v8, a1, &type metadata accessor for UUID);
    v31 = v16;
    v9 = v17;
    v8 = v18;

    v32 = v8 >> 1;
    while (1)
    {
      if (v9 == v32)
      {
        swift_unknownObjectRelease();

        return v40;
      }

      if (v9 >= v32)
      {
        __break(1u);
        goto LABEL_29;
      }

      v3 = type metadata accessor for UUID();
      v34 = v29;
      sub_100002BDC();
      v1 = v19;
      v2 = *(v20 + 72);
      v35 = v9;
      v21 = *(v20 + 64);
      __chkstk_darwin(v22);
      v4 = *(v1 + 16);
      v23 = (v4)(v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      a1 = v41 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
      v24 = v41[2];
      v33 = v1;
      v38 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (!v40)
      {
        break;
      }

      sub_100142BF4();
      a1 = v25;
      v8 = v26;

      if (a1)
      {
        goto LABEL_25;
      }

LABEL_26:
      v9 = v35 + 1;
      (*(v33 + 8))(v38, v3);
    }

    v36 = v4;
    v37 = v2;
    v2 = (v1 + 8);
    v27 = v24 + 1;
    while (--v27)
    {
      v4 = v29;
      v1 = v37 + a1;
      __chkstk_darwin(v23);
      v8 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      v36(v8, a1, v3);
      sub_10005F300(&qword_1001B94A8);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = (*v2)(v8, v3);
      a1 = v1;
      if (v28)
      {
        goto LABEL_26;
      }
    }

    v8 = 0;
LABEL_25:
    a1 = &v40;
    sub_100141198();
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_100109A4C()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BC6C0);
  sub_10000641C(v0, qword_1001BC6C0);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

void sub_100109AC0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100065020(&qword_1001B9CD0, &qword_100170778);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for DaemonSession.LazyState(0);
  sub_10010C4AC(a1 + *(v7 + 24), v6, &qword_1001B9CD0, &qword_100170778);
  v8 = type metadata accessor for InferenceProviderDescriptor();
  v9 = sub_10000C6C0(v6, 1, v8);
  sub_10000ECD8(v6, &qword_1001B9CD0, &qword_100170778);
  if (v9 == 1)
  {
    if (qword_1001B89B0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000641C(v10, qword_1001BC6C0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Fallback inference provider not allowed: main inference provider not yet selected";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v11, v12, v14, v13, 2u);

LABEL_12:

    *a2 = 0;
    return;
  }

  if (*(a1 + *(v7 + 28)))
  {
    if (qword_1001B89B0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000641C(v15, qword_1001BC6C0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Fallback inference provider not allowed: inference provider selection has been locked";
    goto LABEL_11;
  }

  *a2 = *(a1 + 16);
}

uint64_t sub_100109D18(void *a1)
{

  *a1 = 0;
  a1[1] = 0;

  a1[2] = 0;
  v2 = type metadata accessor for DaemonSession.LazyState(0);
  v3 = *(v2 + 24);
  sub_10000ECD8(a1 + v3, &qword_1001B9CD0, &qword_100170778);
  v4 = type metadata accessor for InferenceProviderDescriptor();
  result = sub_100009BFC(a1 + v3, 1, 1, v4);
  *(a1 + *(v2 + 32)) = 0;
  return result;
}

uint64_t sub_100109DAC(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = *a1;
  return _swift_task_switch(sub_100109DD4, 0, 0);
}

uint64_t sub_100109DD4()
{
  sub_100002BAC();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100109E74;

  return sub_10013C4DC();
}

uint64_t sub_100109E74()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_100001F00();

  return v3();
}

uint64_t sub_100109F54(uint64_t a1, uint64_t a2)
{
  v2 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  RequestMetadata.id.getter();
  type metadata accessor for RequestMetadata();
  v6 = static UUIDIdentifier.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_10010A078(uint64_t a1)
{
  result = type metadata accessor for Session.Metadata();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AuditToken();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_10010A198(uint64_t a1)
{
  sub_10010A244();
  if (v1 <= 0x3F)
  {
    sub_10010A294(319);
    if (v2 <= 0x3F)
    {
      sub_10010A2F8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10010A244()
{
  if (!qword_1001BC830)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BC830);
    }
  }
}

void sub_10010A294(uint64_t a1)
{
  if (!qword_1001BC838)
  {
    sub_10006A614(&qword_1001BC840, &qword_100172E50);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001BC838);
    }
  }
}

void sub_10010A2F8(uint64_t a1)
{
  if (!qword_1001BC848)
  {
    type metadata accessor for InferenceProviderDescriptor();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001BC848);
    }
  }
}

__n128 sub_10010A350(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10010A364(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10010A3A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_10010A43C()
{
  Hasher.init(_seed:)();
  sub_100012C1C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10010A4C4(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100012C1C(v2);
  return Hasher._finalize()();
}

void sub_10010A594(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void), uint64_t (*a6)(void))
{
  v6 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    a5((a4 >> 1) - a3, 0);
    if (v6 != a3)
    {
      a6(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_10010A680(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_100065020(&qword_1001B90C8, &unk_10016FD40);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_10010A754(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_100065020(&dword_1001BA4A8, &qword_100171010);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for InferenceProviderAsset(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_10010A830(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v2 = sub_1000106D0();

    specialized _ArrayBuffer._copyContents(initializing:)();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (!v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

void sub_10010A8CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v8 = a4 >> 1;
  while (a3 != v8)
  {
    if (a3 >= v8)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    v9 = *(a2 + 8 * a3++);
    v11 = *v5;
    v10 = v5[1];
    v12 = v10 + 32;
    v13 = *(v10 + 16);
    if (*v5)
    {

      sub_100143334();
      v15 = v14;

      if ((v15 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {

      while (v13)
      {
        type metadata accessor for InferenceProviderAsset(0);
        v12 += 8;

        v17 = sub_100019CE4(v16, v9);

        --v13;
        if (v17)
        {
          goto LABEL_27;
        }
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v18 = v5[1];
    v19 = *(v18 + 16);
    if (v11)
    {
      swift_beginAccess();
      if (static _HashTable.maximumCapacity(forScale:)() >= v19)
      {
        isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
        v23 = *v5;
        if ((isUniquelyReferenced_native & 1) == 0)
        {
          if (!v23)
          {
            goto LABEL_30;
          }

          v24 = _HashTable.copy()();

          *v5 = v24;
          v23 = v24;
        }

        if (!v23)
        {
          goto LABEL_29;
        }

        _HashTable.UnsafeHandle.subscript.setter();
LABEL_27:
      }

      else
      {
        if (v19 > 0xF || (*(v11 + 24) & 0x3FLL) != 0)
        {
          goto LABEL_21;
        }

        *v5 = 0;
      }
    }

    else
    {
      if (v19 <= 0xF)
      {
        goto LABEL_27;
      }

LABEL_21:
      static _HashTable.scale(forCapacity:)();
      v21 = sub_100141B78(v18);

      *v5 = v21;
    }
  }
}

void sub_10010AB30(uint64_t a1, uint64_t a2)
{
  v27 = _swiftEmptyArrayStorage;
  sub_100070A90();
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  v19 = a1;
  for (i = a2; ; a2 = i)
  {
    if (v4 == a2)
    {

      return;
    }

    if (a2 < 0)
    {
      break;
    }

    v24 = v4 + 1;
    v6 = type metadata accessor for UUID();
    v26 = &v18;
    v7 = *(v6 - 8);
    __chkstk_darwin(v6);
    v23 = v8;
    v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = *(v10 + 72);
    v12 = *(v7 + 16);
    v21 = v4;
    v22 = v12;
    v13 = (v12)(v9, a1 + v11 * v4, v6);
    v14 = v5[2] + 1;
    v25 = v5;
    while (--v14)
    {
      sub_10005F300(&qword_1001B94A8);
      v13 = dispatch thunk of static Equatable.== infix(_:_:)();
      v5 = (v5 + v11);
      if (v13)
      {
        (*(v7 + 8))(v9, v6);

        return;
      }
    }

    __chkstk_darwin(v13);
    v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22(v16, v9, v6);
    v27 = v25;
    v17 = v25[2];
    if (v17 >= v25[3] >> 1)
    {
      sub_100070A90();
    }

    (*(v7 + 8))(v9, v6);
    v5 = v27;
    v27[2] = v17 + 1;
    (*(v7 + 32))(v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v17 * v11, v16, v6);
    v4 = v24;
    a1 = v19;
  }

  __break(1u);
}

void sub_10010AE04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceProviderDescriptor();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v21 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v18 - v8;
  v28 = _swiftEmptyArrayStorage;
  sub_100021200();
  v10 = 0;
  v11 = v28;
  v27 = v5 + 16;
  v25 = (v5 + 8);
  v18[1] = v5 + 32;
  v19 = a1;
  v20 = a2;
  while (1)
  {
    if (v10 == a2)
    {
LABEL_11:

      return;
    }

    if (a2 < 0)
    {
      break;
    }

    v12 = *(v5 + 72);
    v22 = v10;
    v23 = *(v5 + 16);
    v24 = v10 + 1;
    v23(v9, a1 + v12 * v10, v4);
    v13 = v11[2] + 1;
    v26 = v11;
    while (--v13)
    {
      sub_1000218A0(&qword_1001BBE20, &type metadata accessor for InferenceProviderDescriptor);
      v11 = (v11 + v12);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        (*v25)(v9, v4);
        goto LABEL_11;
      }
    }

    v14 = v21;
    v23(v21, v9, v4);
    v28 = v26;
    v15 = v26[2];
    a2 = v20;
    if (v15 >= v26[3] >> 1)
    {
      sub_100021200();
      v14 = v21;
    }

    (*(v5 + 8))(v9, v4);
    v16 = v28;
    v28[2] = v15 + 1;
    v17 = v14;
    v11 = v16;
    (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + v15 * v12, v17, v4);
    v10 = v24;
    a1 = v19;
  }

  __break(1u);
}

char *sub_10010B0EC(uint64_t a1, uint64_t a2)
{
  result = sub_10000C958(0, a2 & ~(a2 >> 63), 0);
  v4 = _swiftEmptyArrayStorage;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v22 = a2;
      while (!__OFADD__(v5, 1))
      {
        v24 = v5 + 1;
        v25 = v4;
        v6 = (a1 + 40 * v5);
        v7 = *v6;
        v8 = v6[1];
        v9 = v6[2];
        v10 = v6[3];
        v26 = *(v6 + 32);
        v11 = v4[2];
        if (v11)
        {
          v21 = v5;
          v12 = (v4 + 8);
          while (1)
          {
            v14 = *(v12 - 2);
            v13 = *(v12 - 1);
            v15 = *v12;
            v16 = v7 == *(v12 - 4) && v8 == *(v12 - 3);
            if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_24;
            }

            if (!v10)
            {
              break;
            }

            if (!v13)
            {
              goto LABEL_24;
            }

            if (v9 != v14 || v10 != v13)
            {
              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_24;
              }

LABEL_21:
              if (((v26 ^ v15) & 1) == 0)
              {
                goto LABEL_29;
              }

              goto LABEL_24;
            }

            if (v26 == v15)
            {
LABEL_29:

              return v21;
            }

LABEL_24:
            v12 += 40;
            if (!--v11)
            {
              goto LABEL_25;
            }
          }

          if (v13)
          {
            goto LABEL_24;
          }

          goto LABEL_21;
        }

LABEL_25:
        v4 = v25;
        v19 = v25[2];
        v18 = v25[3];

        if (v19 >= v18 >> 1)
        {
          result = sub_10000C958((v18 > 1), v19 + 1, 1);
          v4 = v25;
        }

        v4[2] = v19 + 1;
        v20 = &v4[5 * v19];
        v20[4] = v7;
        v20[5] = v8;
        v20[6] = v9;
        v20[7] = v10;
        *(v20 + 64) = v26;
        v5 = v24;
        if (v24 == v22)
        {

          return v22;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_10010B2E8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
  {
    v5 = sub_10010C18C(a2, sub_10010C490);
  }

  else
  {
    v5 = sub_10010BCDC((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), a3, a4);
  }

  *a1 = v6;
  return v5 & 1;
}

uint64_t sub_10010B368(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v35 = a4;
  v52 = result;
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v4 = a3;
    v5 = 0;
    v33 = a2;
    v32 = a3;
    while (2)
    {
      if (__OFADD__(v5, 1))
      {
        __break(1u);
      }

      else
      {
        v34 = v5 + 1;
        v6 = type metadata accessor for UUID();
        v7 = *(v6 - 8);
        __chkstk_darwin(v6);
        v39 = v8;
        v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
        v11 = *(v10 + 72);
        v37 = v5;
        v43 = v11;
        v12 = v52 + v11 * v5;
        v13 = *(v7 + 16);
        v41 = v7 + 16;
        v42 = v12;
        v40 = v13;
        (v13)(v9);
        sub_10005F300(&qword_1001B8C00);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v14 = 1 << *v4;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (!v15)
        {
          v17 = v16 & result;
          v18 = v35;
          v19 = _HashTable.UnsafeHandle._startIterator(bucket:)();
          v21 = v20;
          v36 = v22;
          v38 = *(v7 + 8);
          v38(v9, v6);
          *&v44 = v4;
          *(&v44 + 1) = v18;
          *&v45 = v17;
          *(&v45 + 1) = v19;
          *&v46 = v21;
          *(&v46 + 1) = v36;
          v47 = 0;
          while (1)
          {
            v48 = v44;
            v49 = v45;
            v50 = v46;
            v51 = v47;
            v23 = _HashTable.BucketIterator.currentValue.getter();
            if (v24)
            {
              break;
            }

            v25 = v39;
            v26 = __chkstk_darwin(v23);
            v27 = &v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
            v28 = v40;
            v29 = (v40)(v27, v52 + v26 * v43, v6);
            __chkstk_darwin(v29);
            v28(v27, v42, v6);
            sub_10005F300(&qword_1001B94A8);
            v30 = dispatch thunk of static Equatable.== infix(_:_:)();
            v31 = v38;
            v38(v27, v6);
            v31(v27, v6);
            if (v30)
            {
              return 0;
            }

            _HashTable.BucketIterator.advance()();
          }

          result = _HashTable.BucketIterator.currentValue.setter();
          v5 = v34;
          v4 = v32;
          if (v34 != v33)
          {
            continue;
          }

          return 1;
        }
      }

      break;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10010B6FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v37 = a4;
  v53 = a1;
  v7 = type metadata accessor for InferenceProviderDescriptor();
  v8 = __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v14 = &v32 - v13;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_16;
  }

  v43 = a3;
  v35 = v4;
  v15 = 0;
  v16 = (v12 + 8);
  v34 = a2;
  v33 = v12;
  while (2)
  {
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    v36 = v15 + 1;
    v17 = *(v12 + 72);
    v42 = v15;
    v44 = v17;
    v18 = v53 + v17 * v15;
    v19 = *(v12 + 16);
    v19(v14, v18, v7);
    v20 = v43;
    sub_1000218A0(&qword_1001BB6C0, &type metadata accessor for InferenceProviderDescriptor);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = 1 << *v20;
    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (v22)
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v41 = v23 & result;
    v24 = v37;
    v25 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    v39 = v26;
    v40 = v25;
    v38 = v27;
    v28 = *v16;
    (*v16)(v14, v7);
    *&v45 = v43;
    *(&v45 + 1) = v24;
    *&v46 = v41;
    *(&v46 + 1) = v40;
    *&v47 = v39;
    *(&v47 + 1) = v38;
    v48 = 0;
    while (1)
    {
      v49 = v45;
      v50 = v46;
      v51 = v47;
      v52 = v48;
      v29 = _HashTable.BucketIterator.currentValue.getter();
      if (v30)
      {
        break;
      }

      v19(v14, v53 + v29 * v44, v7);
      v19(v10, v18, v7);
      sub_1000218A0(&qword_1001BBE20, &type metadata accessor for InferenceProviderDescriptor);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28(v10, v7);
      v28(v14, v7);
      if (v31)
      {
        return 0;
      }

      _HashTable.BucketIterator.advance()();
    }

    result = _HashTable.BucketIterator.currentValue.setter();
    v15 = v36;
    v12 = v33;
    if (v36 != v34)
    {
      continue;
    }

    return 1;
  }
}

Swift::Int sub_10010BA6C(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v4 = a3;
  v5 = result;
  v6 = 0;
  while (2)
  {
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    v31 = v6 + 1;
    v7 = v5 + 40 * v6;
    v44 = *(v7 + 32);
    v8 = *(v7 + 16);
    v42 = *v7;
    v43 = v8;
    v45 = v42;
    v46[0] = v8;
    Hasher.init(_seed:)();
    sub_100020E14(&v45, v32);
    sub_10010C4AC(v46, v32, &qword_1001BC8C8, &qword_100172F48);
    AssetInferenceProvider.hash(into:)(v33);
    result = Hasher._finalize()();
    v9 = 1 << *v4;
    v10 = __OFSUB__(v9, 1);
    v11 = v9 - 1;
    if (v10)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v12 = v11 & result;
    v13 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    v15 = v14;
    v47 = v16;
    sub_100021010(&v45);
    sub_10000ECD8(v46, &qword_1001BC8C8, &qword_100172F48);
    *&v34 = v4;
    *(&v34 + 1) = a4;
    *&v35 = v12;
    *(&v35 + 1) = v13;
    *&v36 = v15;
    *(&v36 + 1) = v47;
    v37 = 0;
    while (1)
    {
      v38 = v34;
      v39 = v35;
      v40 = v36;
      v41 = v37;
      v17 = _HashTable.BucketIterator.currentValue.getter();
      if (v18)
      {
        break;
      }

      v19 = v5 + 40 * v17;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      v22 = *(v19 + 32);
      v24 = *(v7 + 16);
      v23 = *(v7 + 24);
      v25 = *(v7 + 32);
      v26 = *v19 == *v7 && *(v19 + 8) == *(v7 + 8);
      if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_25;
      }

      if (!v21)
      {
        if (v23)
        {
          goto LABEL_25;
        }

LABEL_22:
        if (((v22 ^ v25) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_25;
      }

      if (!v23)
      {
        goto LABEL_25;
      }

      if (v20 != v24 || v21 != v23)
      {
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }

      if (v22 == v25)
      {
        return 0;
      }

LABEL_25:
      _HashTable.BucketIterator.advance()();
    }

    result = _HashTable.BucketIterator.currentValue.setter();
    v6 = v31;
    v4 = a3;
    if (v31 != a2)
    {
      continue;
    }

    return 1;
  }
}

Swift::Int sub_10010BCDC(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  v33 = a4;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_16;
  }

  v5 = result;
  v6 = 0;
  while (2)
  {
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    Hasher.init(_seed:)();

    sub_10001214C(v24);
    result = Hasher._finalize()();
    v7 = 1 << *a3;
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v8)
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v23 = v6 + 1;
    v10 = v9 & result;
    v11 = v33;
    v12 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    v14 = v13;
    v16 = v15;

    *&v25 = a3;
    *(&v25 + 1) = v11;
    *&v26 = v10;
    *(&v26 + 1) = v12;
    *&v27 = v14;
    *(&v27 + 1) = v16;
    v28 = 0;
    while (1)
    {
      v29 = v25;
      v30 = v26;
      v31 = v27;
      v32 = v28;
      v17 = _HashTable.BucketIterator.currentValue.getter();
      if (v18)
      {
        break;
      }

      v19 = *(v5 + 8 * v17);
      v20 = *(v5 + 8 * v6);
      type metadata accessor for InferenceProviderAsset(0);

      v21 = sub_100019CE4(v19, v20);

      if (v21)
      {
        return 0;
      }

      _HashTable.BucketIterator.advance()();
    }

    result = _HashTable.BucketIterator.currentValue.setter();
    ++v6;
    if (v23 != v22)
    {
      continue;
    }

    return 1;
  }
}

void sub_10010BE98()
{
  sub_10000A274();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for InferenceProviderDescriptor();
  sub_100002BDC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100002B8C();
  v12 = v11 - v10;
  sub_100020444(v1, v3, v11 - v10);
  sub_10000A6A0();
  sub_1000218A0(v13, v14);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  if (__OFSUB__(1 << *v5, 1))
  {
    __break(1u);
  }

  else
  {
    v15 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    (*(v8 + 8))(v12, v6);
    if (!v15)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v18 = v15;
      v16 = _HashTable.BucketIterator.currentValue.getter();
      if ((v17 & 1) == 0 && v16 == v1)
      {
        break;
      }

      _HashTable.BucketIterator.advance()();
    }

    while (!v18)
    {
LABEL_6:
      __break(1u);
    }

    sub_100005874();
  }
}

Swift::Int sub_10010C050(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  AssetInferenceProvider.hash(into:)(v14);
  result = Hasher._finalize()();
  v7 = 1 << *a1;
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 & result;
    v11 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    v14[0] = a1;
    v14[1] = a2;
    v14[2] = v10;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = 0;
    while (v15)
    {
      _HashTable.BucketIterator.advance()();
    }

    return _HashTable.BucketIterator.currentValue.setter();
  }

  return result;
}

void *sub_10010C120(uint64_t a1, void *(*a2)(uint64_t *__return_ptr, uint64_t, uint64_t, __n128))
{
  v4 = sub_10010C208(a1);
  v5 = v4[2];

  result = (a2)(&v7, v4 + 4, v5);
  if (!v2)
  {
    return v7;
  }

  return result;
}

uint64_t sub_10010C18C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t, __n128))
{
  v4 = sub_10010C208(a1);
  v5 = v4[2];

  (a2)(&v8, v4 + 4, v5);
  if (!v2)
  {
    v6 = v8;
  }

  return v6 & 1;
}

void *sub_10010C208(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_10010A830(a1);

      objc_setAssociatedObject(v2, _swiftEmptyArrayStorage, v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

unint64_t sub_10010C2C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = a4(0);
    sub_100002F04(v6);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_10010C36C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10010C3D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_10010C430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_10002D12C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

Swift::Int sub_10010C45C@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_10010BCDC(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
    *(a5 + 8) = v8;
  }

  return result;
}

uint64_t sub_10010C4AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100065020(a3, a4);
  sub_100002C00();
  v5 = sub_1000062B0();
  v6(v5);
  return a2;
}

uint64_t sub_10010C528(void *a1)
{
  v4 = type metadata accessor for RequestCancellationReason();
  sub_100002F04(v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10006F558;

  return sub_100109DAC(a1, v7, v1 + v6);
}

__n128 sub_10010C608(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10010C61C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10010C65C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_10010C6AC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for XPCSession.InitializationOptions();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for XPCEndpoint();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100065020(&qword_1001BC8D8, &unk_1001730C0);
  v10 = swift_allocObject();
  type metadata accessor for XPCSession();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  (*(v7 + 16))(v9, a1, v6);
  static XPCSession.InitializationOptions.inactive.getter();
  v11 = XPCSession.__allocating_init(endpoint:targetQueue:options:cancellationHandler:)();
  if (v2)
  {
    type metadata accessor for AuditToken();
    sub_1000055EC();
    (*(v12 + 8))(a2);
    v13 = sub_100002DD4();
    v14(v13);
  }

  else
  {
    v9 = v11;

    v22 = a2;
    v15 = AuditToken.processIdentifier.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v9;
    *(v16 + 24) = v15;
    *(v16 + 32) = v10;
    swift_retain_n();
    swift_retain_n();
    dispatch thunk of XPCSession.setCancellationHandler(_:)();

    dispatch thunk of XPCSession.activate()();

    type metadata accessor for AuditToken();
    sub_1000055EC();
    (*(v18 + 8))(v22);
    v19 = sub_100002DD4();
    v20(v19);
  }

  return v9;
}

double sub_10010C9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  os_unfair_lock_lock((a4 + 32));
  v9 = *(a4 + 16);
  v8 = *(a4 + 24);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = &unk_1001730F0;
    *(v11 + 24) = v10;
    v8 = swift_allocObject();
    *(v8 + 16) = &unk_1001730F0;
    *(v8 + 24) = v10;

    v12 = &unk_1001730F8;
    v13 = &unk_100173100;
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v11 = *(a4 + 24);
  }

  *(a4 + 16) = v13;
  *(a4 + 24) = v8;
  os_unfair_lock_unlock((a4 + 32));
  if (v9)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    *(v15 + 24) = v11;
    v16 = type metadata accessor for TaskPriority();
    sub_100009BFC(v7, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = &unk_1001730D8;
    v17[5] = v15;
    sub_1000652FC();
  }

  return result;
}

uint64_t sub_10010CBA4(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10010D2F0;

  return v4();
}

uint64_t sub_10010CC8C(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10010D2F0;

  return v5();
}

uint64_t sub_10010CD74(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10010CE5C;

  return v7();
}

uint64_t sub_10010CE5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10010CF50(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    sub_100016484(v6, a1[1]);
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *a1 = &unk_1001730B8;
  a1[1] = v7;
}

Swift::Int sub_10010D000(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10010D058(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_10010D0AC()
{
  result = qword_1001BC8D0;
  if (!qword_1001BC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BC8D0);
  }

  return result;
}

uint64_t sub_10010D100()
{
  sub_100001ED0();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_100004F40(v1);

  return v4(v3);
}

uint64_t sub_10010D1A4()
{
  sub_100001ED0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_100011504(v1);

  return v3(v2);
}

uint64_t sub_10010D238(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_100004B00(v6);
  *v7 = v8;
  v7[1] = sub_10010CE5C;

  return sub_10010CD74(a1, v3, v4, v5);
}

uint64_t sub_10010D2F4(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    if (qword_1001B89B8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000641C(v2, qword_1001BC8E0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "xpc_object_t casting error into xpc_remote_connection_t", v5, 2u);
    }

    v6 = type metadata accessor for ModelManagerError();
    sub_1000FF0F4();
    swift_allocError();
    *v7 = 0xD000000000000037;
    v7[1] = 0x80000001001776C0;
    (*(*(v6 - 8) + 104))(v7, enum case for ModelManagerError.remoteXPCError(_:), v6);
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  return v1;
}

uint64_t sub_10010D494()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BC8E0);
  sub_10000641C(v0, qword_1001BC8E0);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10010D510(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  v4 = (result + 40);
  if (v3)
  {
    while (1)
    {
      v5 = *v4;
      v6[0] = *(v4 - 1);
      v6[1] = v5;

      sub_1001140B8(v6);
      if (v2)
      {
        break;
      }

      v4 += 2;
      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10010D5A0()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BC8F8);
  sub_10000641C(v0, qword_1001BC8F8);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10010D610(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10010D630, 0, 0);
}

uint64_t sub_10010D630()
{
  sub_100001ED0();
  v2 = v0[2];
  v1 = v0[3];
  type metadata accessor for CoherentAssetLock();
  sub_100065020(&qword_1001B9090, &unk_100172C70);
  sub_1000119E4();
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = xmmword_10016FF40;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_10010D71C;

  return static CoherentAssetLock.createUnlockedAssetLock(resources:)(v3);
}

uint64_t sub_10010D71C()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003960();
  *v3 = v2;
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;
  *(v7 + 48) = v6;
  *(v7 + 56) = v0;

  sub_1000059F8();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10010D838()
{
  sub_100001ED0();
  v1 = v0[7];

  dispatch thunk of CoherentAssetLock.lock()();
  if (v1)
  {

    sub_100001F00();

    return v2();
  }

  else
  {

    v4 = v0[1];
    v5 = v0[6];
    v6 = v0[2];
    v7 = v0[3];

    return v4(v5, v6, v7, 1);
  }
}

uint64_t sub_10010D90C()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

uint64_t sub_10010D968()
{
  sub_100002BAC();
  v1[2] = v0;
  v1[3] = *v0;
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_10010DA28;
  v3 = sub_1000062B0();

  return sub_10010D610(v3, v4);
}

uint64_t sub_10010DA28(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_100001EF4();
  v11 = v10;
  sub_100003960();
  *v12 = v11;
  v13 = *v5;
  sub_100002B9C();
  *v14 = v13;
  *(v11 + 40) = v4;

  if (!v4)
  {
    *(v11 + 72) = a4;
    *(v11 + 48) = a3;
    *(v11 + 56) = a2;
    *(v11 + 64) = a1;
  }

  sub_1000059F8();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_10010DB60()
{
  sub_100003884();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 72);
  v5 = *(v0 + 16);
  sub_100065020(&qword_1001BCB88, &unk_100173360);
  sub_1000119E4();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 44) = 0;
  *(v5 + 16) = v6;
  v7 = *(v0 + 8);
  v8 = *(v0 + 16);

  return v7(v8);
}

uint64_t sub_10010DC08()
{
  sub_100002BAC();
  swift_deallocPartialClassInstance();
  sub_100001F00();

  return v0();
}

uint64_t sub_10010DC88()
{
  v1 = *(v0[2] + 16);
  os_unfair_lock_lock((v1 + 44));
  v0[3] = *(v1 + 16);
  v0[4] = *(v1 + 24);
  v0[5] = *(v1 + 32);

  os_unfair_lock_unlock((v1 + 44));
  if (qword_1001B89C0 != -1)
  {
    sub_100005264();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[6] = sub_100002FD0(v2, qword_1001BC8F8);

  v3 = Logger.logObject.getter();
  static os_log_type_t.info.getter();

  if (sub_100010C0C())
  {
    sub_10000A05C();
    v4 = swift_slowAlloc();
    sub_1000033D0();
    v16 = swift_slowAlloc();
    *v4 = 136315138;
    v5 = sub_100003754();
    *(v4 + 4) = sub_100004A3C(v5, v6, v7);
    sub_10000A318();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_100003324(v16);
    sub_100005864();

    sub_100007C2C();
  }

  v15 = (&async function pointer to dispatch thunk of CoherentAssetLock.updateAvailable() + async function pointer to dispatch thunk of CoherentAssetLock.updateAvailable());
  v13 = swift_task_alloc();
  v0[7] = v13;
  *v13 = v0;
  v13[1] = sub_10010DE58;

  return v15();
}

uint64_t sub_10010DE58()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003960();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 64) = v3;

  sub_1000059F8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10010DF48()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 64);
    v4 = swift_slowAlloc();
    sub_1000033D0();
    v12 = swift_slowAlloc();
    sub_1000456DC(4.8151e-34);
    v5 = sub_100004CA4();
    v8 = sub_100004A3C(v5, v6, v7);

    *(v4 + 4) = v8;
    *(v4 + 12) = 1024;
    *(v4 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "updateAvailable for %s returned: [%{BOOL}d]", v4, 0x12u);
    sub_100003324(v12);
    sub_100005864();

    sub_100007C2C();
  }

  else
  {
  }

  v9 = *(v0 + 8);
  v10 = *(v0 + 64);

  return v9(v10);
}

uint64_t sub_10010E0B8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 11);
  os_unfair_lock_opaque = v1[10]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v1 + 11);
  if (os_unfair_lock_opaque)
  {
    os_unfair_lock_lock(v1 + 11);
    sub_10010E128(&v1[4]);
    os_unfair_lock_unlock(v1 + 11);
  }

  return v0;
}

uint64_t sub_10010E128(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (qword_1001B89C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000641C(v4, qword_1001BC8F8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315394;
    v9 = sub_100004A3C(v2, v1, &v11);

    *(v7 + 4) = v9;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "Lock deinited for %s while locked [%u]", v7, 0x12u);
    sub_100003324(v8);
  }

  else
  {
  }

  return dispatch thunk of CoherentAssetLock.unlock()();
}

uint64_t sub_10010E2A8()
{
  sub_10010E0B8();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10010E300()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100013EFC;

  return sub_10010DC6C();
}

void sub_10010E3A8(uint64_t a1, unint64_t a2, const char *a3)
{
  if (qword_1001B89C0 != -1)
  {
    sub_100005264();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002FD0(v6, qword_1001BC8F8);

  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    sub_10000A05C();
    v8 = swift_slowAlloc();
    sub_1000033D0();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100004A3C(a1, a2, &v11);
    _os_log_impl(&_mh_execute_header, oslog, v7, a3, v8, 0xCu);
    sub_100003324(v9);
    sub_1000039CC();

    sub_100002BD0();
  }
}

uint64_t sub_10010E534()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014870;

  return sub_10010E390();
}

uint64_t sub_10010E5C0()
{
  result = static Catalog.modelManagerDefaultMemoryBudget.getter();
  qword_1001BE960 = result;
  return result;
}

uint64_t sub_10010E5E0()
{
  result = static Catalog.modelManagerForegroundOvercommitBudget.getter();
  qword_1001BE968 = result;
  return result;
}

uint64_t sub_10010E600()
{
  type metadata accessor for CatalogClient();
  swift_allocObject();
  result = CatalogClient.init()();
  qword_1001BE970 = result;
  return result;
}

void sub_10010E640()
{
  v1 = v0;
  v44 = type metadata accessor for ModelCatalogAsset(0);
  sub_100002BDC();
  v46 = v2;
  __chkstk_darwin(v3);
  sub_100009C24();
  v43 = v4;
  sub_100002F1C();
  __chkstk_darwin(v5);
  sub_1000079F8();
  v47 = v6;
  sub_100002F1C();
  __chkstk_darwin(v7);
  v9 = v40 - v8;
  v42 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100002BDC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100002B8C();
  *&v41 = v14 - v13;
  sub_100003B1C();
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_100002C00();
  __chkstk_darwin(v15);
  sub_100002B8C();
  v16 = type metadata accessor for DispatchQoS();
  v17 = sub_100002F04(v16);
  __chkstk_darwin(v17);
  sub_100002B8C();
  swift_defaultActor_initialize();
  if (qword_1001B89C8 != -1)
  {
LABEL_21:
    swift_once();
  }

  v45 = v9;
  v1[14] = qword_1001BE960;
  if (qword_1001B89D0 != -1)
  {
    swift_once();
  }

  v1[15] = qword_1001BE968;
  sub_10006A92C();
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  sub_100015F54(&qword_1001B8BC8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100065020(&qword_1001B8BD0, &qword_10016F7A0);
  sub_10011681C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v11 + 104))(v41, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v42);
  v1[16] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for AssetLock();
  sub_100003978();
  sub_100009BFC(v18, v19, v20, v21);
  *(v1 + OBJC_IVAR____TtC13modelmanagerd20ModelCatalogProvider_ignoreAssetUpdates) = 0;
  *(v1 + OBJC_IVAR____TtC13modelmanagerd20ModelCatalogProvider_onAssetUpdateHandlers) = _swiftEmptyArrayStorage;
  if (qword_1001B89C0 != -1)
  {
    sub_100005264();
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100002FD0(v22, qword_1001BC8F8);
  v23 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v9))
  {
    sub_10000A05C();
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    if (qword_1001B8A68 != -1)
    {
      sub_1000030C4(&qword_1001B8A68);
    }

    *(v24 + 4) = *(qword_1001BEB10 + 16);
    _os_log_impl(&_mh_execute_header, v23, v9, "%ld builtin test assets", v24, 0xCu);
    sub_100005864();
  }

  v40[1] = v1;

  if (qword_1001B8A68 != -1)
  {
    sub_1000030C4(&qword_1001B8A68);
  }

  v26 = 0;
  v1 = qword_1001BEB10;
  v27 = *(qword_1001BEB10 + 16);
  *&v25 = 136315138;
  v41 = v25;
  v11 = v47;
  v28 = v45;
  v42 = qword_1001BEB10;
  while (v27 != v26)
  {
    if (v26 >= v1[2])
    {
      __break(1u);
      goto LABEL_21;
    }

    sub_10000657C();
    sub_100012570();
    sub_100116600(v29, v28);
    sub_100116600(v28, v11);
    v30 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v9))
    {
      sub_10000A05C();
      v31 = swift_slowAlloc();
      sub_1000033D0();
      v32 = v27;
      v33 = swift_slowAlloc();
      v48 = v33;
      *v31 = v41;
      sub_100116600(v11, v43);
      v34 = String.init<A>(describing:)();
      v36 = v35;
      sub_100116658(v47, type metadata accessor for ModelCatalogAsset);
      v37 = sub_100004A3C(v34, v36, &v48);
      v11 = v47;

      *(v31 + 4) = v37;
      v28 = v45;
      _os_log_impl(&_mh_execute_header, v30, v9, "%s", v31, 0xCu);
      sub_100003324(v33);
      v27 = v32;
      v1 = v42;
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {

      sub_10000574C();
      sub_100116658(v11, v38);
    }

    sub_10000574C();
    sub_100116658(v28, v39);
    ++v26;
  }

  sub_100002EEC();
}

uint64_t sub_10010EC34()
{
  static Catalog.Resource.DisabledUseCaseList.All()();
  sub_100003370(v1, v1[3]);
  sub_100003170();
  dispatch thunk of CatalogResource.id.getter();
  sub_100003324(v1);
  return sub_1000062B0();
}

void *sub_10010EC94(uint64_t a1, void (*a2)(void))
{
  v6 = sub_100065020(&qword_1001BCB68, &unk_100173328);
  sub_100002F04(v6);
  sub_100004B1C();
  __chkstk_darwin(v7);
  v8 = sub_100057858();
  sub_100002BDC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100002B8C();
  v14 = v13 - v12;
  type metadata accessor for ModelCatalogProvider(0);
  sub_10011275C(a1, a2, v3);
  if (sub_10000C6C0(v3, 1, v8) == 1)
  {
    sub_10000ECD8(v3, &qword_1001BCB68, &unk_100173328);
    if (qword_1001B89C0 != -1)
    {
      sub_100005264();
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000641C(v15, qword_1001BC8F8);
    sub_100003170();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      sub_10000A05C();
      swift_slowAlloc();
      sub_100007958();
      v18 = swift_slowAlloc();
      v34 = v18;
      *v3 = 136315138;
      *(v3 + 4) = sub_100004A3C(a1, a2, &v34);
      sub_100019C20();
      _os_log_impl(v19, v20, v21, v22, v23, v24);
      sub_100003324(v18);
      sub_100007C2C();

      sub_1000039CC();
    }

    type metadata accessor for ModelManagerError();
    sub_100008744();
    sub_100015F54(v25, v26, &protocol conformance descriptor for ModelManagerError);
    sub_100007894();
    swift_allocError();
    *v27 = a1;
    v27[1] = a2;
    sub_100006098();
    (*(v28 + 104))();
    swift_willThrow();
  }

  else
  {
    sub_100012570();
    sub_10000C43C(v3, v14);
    sub_100065020(&qword_1001BCB90, &qword_100173370);
    v30 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10016FF40;
    sub_100116600(v14, v31 + v30);
    sub_1000089FC(v31);
    v34 = v32;

    sub_10010D510(v33, &v34);
    sub_100116658(v14, a2);

    result = v34;
    if (v2)
    {
    }
  }

  return result;
}

uint64_t sub_10010EFD4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for CatalogErrors.AssetErrors();
  sub_100002BDC();
  __chkstk_darwin(v7);
  sub_100002B8C();
  if (qword_1001B89D8 != -1)
  {
    sub_100002DE4();
    swift_once();
  }

  sub_100004CA4();
  dispatch thunk of CatalogClient.resource(for:)();
  if (v3)
  {
    v48 = a3;
    v47[0] = v3;
    swift_errorRetain();
    sub_100065020(&qword_1001B8F60, &unk_100171260);
    if (swift_dynamicCast())
    {
      v8 = sub_100005980();
      if (v9(v8) == enum case for CatalogErrors.AssetErrors.failedToFindAsset(_:))
      {

        v10 = sub_100005980();
        v11(v10);
        type metadata accessor for URL();
        sub_100003978();
        sub_100009BFC(v12, v13, v14, v15);
      }

      v16 = sub_100005980();
      v17(v16);
    }

    v47[0] = v3;
    swift_errorRetain();
    v18 = String.init<A>(describing:)();
    v20 = v19;
    if (qword_1001B89C0 != -1)
    {
      sub_100005264();
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000641C(v21, qword_1001BC8F8);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      sub_100002F10();
      v24 = swift_slowAlloc();
      sub_100011828();
      v47[0] = swift_slowAlloc();
      *v24 = 136315394;
      *(v24 + 4) = sub_100004A3C(a1, a2, v47);
      *(v24 + 12) = 2080;
      v25 = sub_100004A3C(v18, v20, v47);

      *(v24 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to get asset location for %s: %s", v24, 0x16u);
      swift_arrayDestroy();
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {
    }

    type metadata accessor for ModelManagerError();
    sub_100008744();
    sub_100015F54(v26, v27, &protocol conformance descriptor for ModelManagerError);
    sub_10000EF40();
    swift_allocError();
    v29 = v28;
    v47[0] = v3;
    swift_errorRetain();
    *v29 = String.init<A>(describing:)();
    v29[1] = v30;
    sub_100006098();
    (*(v31 + 104))(v29);
    swift_willThrow();
  }

  if (v43)
  {
    sub_100065020(&qword_1001BCB38, &qword_1001732E0);
    sub_100065020(&qword_1001BCB40, &qword_1001732E8);
    if (swift_dynamicCast())
    {
      if (*(&v45 + 1))
      {
        v48 = a3;
        sub_100004A04(&v44, v47);
        sub_100003370(v47, v47[3]);
        *(&v45 + 1) = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        sub_10000366C(&v44);
        dispatch thunk of AssetBackedResource.fetchAsset()();
        sub_100003370(&v44, *(&v45 + 1));
        swift_getAssociatedTypeWitness();
        sub_100002BDC();
        sub_100004B1C();
        __chkstk_darwin(v36);
        dispatch thunk of CatalogAssetProtocol.contents.getter();
        sub_100004CA4();
        swift_getAssociatedConformanceWitness();
        v37 = v48;
        dispatch thunk of AssetContents.baseURL.getter();
        v38 = sub_100019678();
        v39(v38);
        v40 = type metadata accessor for URL();
        sub_100009BFC(v37, 0, 1, v40);
        sub_100003324(&v44);
        return sub_100003324(v47);
      }
    }

    else
    {
      AssociatedConformanceWitness = 0;
      v44 = 0u;
      v45 = 0u;
    }
  }

  else
  {
    sub_10000ECD8(v42, &qword_1001BCB70, &qword_100173338);
    v44 = 0u;
    v45 = 0u;
    AssociatedConformanceWitness = 0;
  }

  sub_10000ECD8(&v44, &qword_1001BCB48, &unk_1001732F0);
  type metadata accessor for URL();
  sub_100003978();
  return sub_100009BFC(v32, v33, v34, v35);
}

double sub_10010F63C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v6);
  sub_100004B1C();
  __chkstk_darwin(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = OBJC_IVAR____TtC13modelmanagerd20ModelCatalogProvider_onAssetUpdateHandlers;
  swift_beginAccess();

  sub_10013F9D0();
  v10 = *(*(v2 + v9) + 16);
  sub_10013FA6C(v10);
  v11 = *(v2 + v9);
  *(v11 + 16) = v10 + 1;
  v12 = v11 + 16 * v10;
  *(v12 + 32) = &unk_100173380;
  *(v12 + 40) = v8;
  *(v2 + v9) = v11;
  swift_endAccess();
  type metadata accessor for TaskPriority();
  sub_100003978();
  sub_100009BFC(v13, v14, v15, v16);
  sub_100013EC8();
  v19 = sub_100015F54(v17, v18, &unk_100173280);
  v20 = swift_allocObject();
  v20[2] = v3;
  v20[3] = v19;
  v20[4] = v3;
  v20[5] = a1;
  v20[6] = a2;
  swift_retain_n();

  sub_10000C65C();
  sub_1000652FC();

  return result;
}

uint64_t sub_10010F7EC(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, int *a4)
{
  v5 = *a2;
  v6 = *a3;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_10006F558;

  return v9(v5, v6);
}

uint64_t sub_10010F8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[39] = a5;
  v6[40] = a6;
  v6[38] = a4;
  v8 = sub_100065020(&qword_1001BCB58, &qword_100173318);
  v6[41] = v8;
  v6[42] = *(v8 - 8);
  v6[43] = swift_task_alloc();
  v9 = sub_100065020(&qword_1001BCB50, &qword_100173310);
  v6[44] = v9;
  v6[45] = *(v9 - 8);
  v6[46] = swift_task_alloc();

  return _swift_task_switch(sub_10010FA54, a4, 0);
}

uint64_t sub_10010FA54()
{
  if (qword_1001B89D8 != -1)
  {
    sub_100002DE4();
    swift_once();
  }

  v1 = dispatch thunk of CatalogClient.resources()();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      sub_100007130(v3, v0 + 16);
      sub_100004A04((v0 + 16), v0 + 136);
      sub_100065020(&qword_1001BCB38, &qword_1001732E0);
      sub_100065020(&qword_1001BCB40, &qword_1001732E8);
      if (swift_dynamicCast())
      {
        if (*(v0 + 120))
        {
          sub_100004A04((v0 + 96), v0 + 56);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1000080E4();
            sub_100140454();
            v4 = v7;
          }

          v6 = v4[2];
          v5 = v4[3];
          if (v6 >= v5 >> 1)
          {
            sub_1000127D4(v5);
            sub_100140454();
            v4 = v8;
          }

          v4[2] = v6 + 1;
          sub_100004A04((v0 + 56), &v4[5 * v6 + 4]);
          goto LABEL_14;
        }
      }

      else
      {
        *(v0 + 128) = 0;
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
      }

      sub_10000ECD8(v0 + 96, &qword_1001BCB48, &unk_1001732F0);
LABEL_14:
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  static Catalog.monitorUpdates(for:on:)();

  AsyncStream.makeAsyncIterator()();
  v9 = sub_100003754();
  v10(v9);
  sub_100013EC8();
  v13 = sub_100015F54(v11, v12, &unk_100173280);
  v14 = OBJC_IVAR____TtC13modelmanagerd20ModelCatalogProvider_ignoreAssetUpdates;
  *(v0 + 376) = v13;
  *(v0 + 384) = v14;
  v15 = swift_task_alloc();
  *(v0 + 392) = v15;
  *v15 = v0;
  sub_10000A6B8(v15);
  v16 = sub_100018A4C();

  return AsyncStream.Iterator.next(isolation:)(v16);
}

uint64_t sub_10010FEDC()
{
  sub_100002BAC();
  v1 = *(*v0 + 304);
  v2 = *v0;
  sub_100002B9C();
  *v3 = v2;

  return _swift_task_switch(sub_10011000C, v1, 0);
}

uint64_t sub_10011000C()
{
  v1 = v0[36];
  if (!v1)
  {
    (*(v0[45] + 8))(v0[46], v0[44]);
    if (qword_1001B89C0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

  if ((*(v0[38] + v0[48]) & 1) == 0)
  {
    type metadata accessor for _OSActivity();
    v0[50] = swift_initStackObject();
    v0[51] = sub_10001B160("Received asset update notifications from ModelCatalog", 53, 2);
    v11 = *(v1 + 16);
    if (v11)
    {
      v0[37] = _swiftEmptyArrayStorage;
      sub_10002045C(0, v11, 0);
      v12 = v0[37];
      v13 = v1 + 32;
      do
      {
        sub_100007130(v13, (v0 + 27));
        sub_100003370(v0 + 27, v0[30]);
        sub_100019498();
        v14 = dispatch thunk of CatalogResource.id.getter();
        v16 = v15;
        sub_100003324(v0 + 27);
        v0[37] = v12;
        v18 = v12[2];
        v17 = v12[3];
        if (v18 >= v17 >> 1)
        {
          v20 = sub_1000127D4(v17);
          sub_10002045C(v20, v18 + 1, 1);
          v12 = v0[37];
        }

        v12[2] = v18 + 1;
        v19 = &v12[2 * v18];
        v19[4] = v14;
        v19[5] = v16;
        v13 += 40;
        --v11;
      }

      while (v11);
    }

    else
    {

      v12 = _swiftEmptyArrayStorage;
    }

    v21 = sub_100077254(v12);
    v0[52] = v21;
    v22 = v21 + 56;
    v23 = -1;
    v24 = -1 << *(v21 + 32);
    if (-v24 < 64)
    {
      v23 = ~(-1 << -v24);
    }

    v25 = v23 & *(v21 + 56);
    v26 = (63 - v24) >> 6;

    v27 = 0;
    v42 = v22;
    while (v25)
    {
      v28 = v27;
LABEL_27:
      v29 = qword_1001B89C0;

      if (v29 != -1)
      {
        sub_100005264();
        swift_once();
      }

      v25 &= v25 - 1;
      v30 = type metadata accessor for Logger();
      sub_100002FD0(v30, qword_1001BC8F8);

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v31, v32))
      {
        sub_10000A05C();
        v33 = swift_slowAlloc();
        sub_1000033D0();
        v43 = swift_slowAlloc();
        *v33 = 136315138;
        v34 = sub_100019678();
        v37 = sub_100004A3C(v34, v35, v36);

        *(v33 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v31, v32, "Received asset update notification for %s", v33, 0xCu);
        sub_100003324(v43);
        sub_100002BD0();

        v22 = v42;
        sub_100002BD0();
      }

      else
      {
      }

      v27 = v28;
    }

    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v26)
      {

        v38 = swift_task_alloc();
        v0[53] = v38;
        *v38 = v0;
        v38[1] = sub_1001105B8;
        sub_1000037A0();

        __asm { BRAA            X2, X16 }
      }

      v25 = *(v22 + 8 * v28);
      ++v27;
      if (v25)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_37:
    sub_100005264();
    swift_once();
LABEL_7:
    v5 = type metadata accessor for Logger();
    sub_100002FD0(v5, qword_1001BC8F8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "ModelCatalog asset update stream ended unexpectedly", v8, 2u);
      sub_100002BD0();
    }

    sub_100001F00();
    sub_1000037A0();

    __asm { BRAA            X1, X16 }
  }

  v2 = swift_task_alloc();
  v0[49] = v2;
  *v2 = v0;
  sub_10000A6B8(v2);
  sub_100018A4C();
  sub_1000037A0();

  return AsyncStream.Iterator.next(isolation:)(v3);
}

uint64_t sub_1001105B8()
{
  sub_100001ED0();
  v1 = *(*v0 + 304);
  v2 = *v0;
  sub_100002B9C();
  *v3 = v2;

  return _swift_task_switch(sub_10011070C, v1, 0);
}

uint64_t sub_10011070C()
{
  sub_100001ED0();
  v1 = *(v0 + 408);
  swift_beginAccess();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  v2 = swift_task_alloc();
  *(v0 + 392) = v2;
  *v2 = v0;
  sub_10000A6B8(v2);
  v3 = sub_100018A4C();

  return AsyncStream.Iterator.next(isolation:)(v3);
}

uint64_t sub_1001107EC()
{
  sub_100002BAC();
  *(v1 + 616) = v2;
  *(v1 + 416) = v3;
  *(v1 + 424) = v0;
  *(v1 + 400) = v4;
  *(v1 + 408) = v5;
  v6 = type metadata accessor for CatalogErrors.AssetErrors();
  *(v1 + 432) = v6;
  sub_100002F44(v6);
  *(v1 + 440) = v7;
  *(v1 + 448) = sub_100002C58();
  v8 = type metadata accessor for ModelManagerError();
  *(v1 + 456) = v8;
  sub_100002F44(v8);
  *(v1 + 464) = v9;
  *(v1 + 472) = swift_task_alloc();
  *(v1 + 480) = swift_task_alloc();
  v10 = sub_100065020(&qword_1001BCB68, &unk_100173328);
  sub_100002F04(v10);
  *(v1 + 488) = sub_100002C58();
  v11 = sub_100065020(&qword_1001B9F18, &qword_1001708D0);
  sub_100002F04(v11);
  *(v1 + 496) = sub_100002C58();
  v12 = type metadata accessor for FilePath();
  *(v1 + 504) = v12;
  sub_100002F44(v12);
  *(v1 + 512) = v13;
  *(v1 + 520) = sub_100002C58();
  v14 = type metadata accessor for AssetVersion();
  *(v1 + 528) = v14;
  sub_100002F44(v14);
  *(v1 + 536) = v15;
  *(v1 + 544) = sub_100002C58();
  v16 = type metadata accessor for ModelCatalogProvider.CatalogAssetProtocolData(0);
  *(v1 + 552) = v16;
  sub_100002F04(v16);
  *(v1 + 560) = swift_task_alloc();
  *(v1 + 568) = swift_task_alloc();
  *(v1 + 576) = swift_task_alloc();

  return _swift_task_switch(sub_100110A34, v0, 0);
}

uint64_t sub_100110A34()
{
  if (qword_1001B89D8 != -1)
  {
    sub_100002DE4();
    swift_once();
  }

  dispatch thunk of CatalogClient.resource(for:)();
  if (!*(v0 + 80))
  {
    v38 = *(v0 + 488);
    v40 = *(v0 + 408);
    v39 = *(v0 + 416);
    sub_10000ECD8(v0 + 56, &qword_1001BCB70, &qword_100173338);
    type metadata accessor for ModelCatalogProvider(0);
    sub_10011275C(v40, v39, v38);
    v41 = type metadata accessor for ModelCatalogAsset(0);
    v42 = sub_10000C6C0(v38, 1, v41);
    sub_10000ECD8(v38, &qword_1001BCB68, &unk_100173328);
    if (v42 == 1)
    {
      sub_100011DE8();
      if (!v17)
      {
        sub_100005264();
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_100002FD0(v43, qword_1001BC8F8);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v45))
      {
        sub_10000A05C();
        swift_slowAlloc();
        sub_100007958();
        v137 = swift_slowAlloc();
        *v1 = 136315138;
        *(v1 + 4) = sub_1000126CC(v137, v46);
        sub_100019C20();
        _os_log_impl(v47, v48, v49, v50, v51, v52);
        sub_100003324(v137);
        sub_100007C2C();

        sub_1000039CC();
      }

      v53 = *(v0 + 456);
      v54 = *(v0 + 464);
      sub_100008744();
      sub_100015F54(v55, v56, &protocol conformance descriptor for ModelManagerError);
      sub_10000EF40();
      v57 = swift_allocError();
      v59 = sub_100003624(v57, v58);
      (*(v54 + 104))(v59, enum case for ModelManagerError.assetNotFound(_:), v53);
      v60 = v57;
      swift_willThrow();

LABEL_4:
      sub_10000AA64();
      v2 = sub_100065020(&qword_1001B8F60, &unk_100171260);
      if (sub_10000F1E0(v2, v0 + 376))
      {
        v3 = sub_10000EF54();
        v4(v3);
        sub_100008744();
        sub_100015F54(v5, v6, &protocol conformance descriptor for ModelManagerError);
        v7 = sub_100012B30();
        v9 = sub_100008990(v7, v8);
        v10(v9);
        swift_willThrow();

        v11 = sub_10000C9F4();
        v12(v11);
      }

      else
      {
        sub_100009B94();
        *(v0 + 384) = v57;
        v13 = swift_errorRetain();
        if (sub_10000F1E0(v13, v0 + 384))
        {
          v14 = sub_10000CE84();
          v15(v14);
          sub_100011980();
          if (v17)
          {
            (*(v16 + 96))(v60);
            sub_100011DE8();
            if (!v17)
            {
              sub_100005264();
              swift_once();
            }

            v18 = sub_1000111C8();
            sub_10000641C(v18, qword_1001BC8F8);
            sub_100019498();

            v19 = Logger.logObject.getter();
            static os_log_type_t.error.getter();
            sub_10001E6A4();

            if (sub_100010C0C())
            {
              sub_100002F10();
              v20 = swift_slowAlloc();
              sub_100011828();
              swift_slowAlloc();
              sub_1000456DC(4.8151e-34);
              v21 = sub_100005980();
              v24 = sub_100004A3C(v21, v22, v23);
              v27 = sub_100007E88(v24, v25, v26);

              *(v20 + 14) = v27;
              sub_10000A318();
              _os_log_impl(v28, v29, v30, v31, v32, 0x16u);
              swift_arrayDestroy();
              sub_100005864();

              sub_100007C2C();
            }

            else
            {
            }

            v112 = *(v0 + 456);
            v111 = *(v0 + 464);
            sub_100008744();
            sub_100015F54(v113, v114, &protocol conformance descriptor for ModelManagerError);
            sub_100007894();
            v115 = swift_allocError();
            v117 = sub_100003624(v115, v116);
            v118 = (*(v111 + 104))(v117, enum case for ModelManagerError.assetNotFound(_:), v112);
            sub_100036E50(v118);

            goto LABEL_43;
          }

          v78 = sub_10000C75C();
          v79(v78);
        }

        *(v0 + 392) = v57;
        swift_errorRetain();
        swift_errorRetain();
        v80 = String.init<A>(describing:)();
        v82 = v81;
        sub_100011DE8();
        if (!v17)
        {
          sub_100005264();
          swift_once();
        }

        v83 = sub_1000111C8();
        sub_10000641C(v83, qword_1001BC8F8);
        sub_100019498();

        v84 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        sub_10001E6A4();

        if (sub_100010C0C())
        {
          sub_100002F10();
          v85 = swift_slowAlloc();
          sub_100011828();
          swift_slowAlloc();
          sub_1000456DC(4.8151e-34);
          v86 = sub_100019678();
          v89 = sub_100004A3C(v86, v87, v88);
          *(v85 + 14) = sub_100007E88(v89, v90, v91);
          sub_10000A318();
          _os_log_impl(v92, v93, v94, v95, v96, 0x16u);
          sub_1000188F0();
          sub_100002BD0();

          sub_100007C2C();
        }

        v98 = *(v0 + 456);
        v97 = *(v0 + 464);
        sub_100008744();
        sub_100015F54(v99, v100, &protocol conformance descriptor for ModelManagerError);
        sub_100012B30();
        *v101 = v80;
        v101[1] = v82;
        v102 = (*(v97 + 104))(v101, enum case for ModelManagerError.modelCatalogError(_:), v98);
        sub_100036E50(v102);
      }

LABEL_43:

      sub_10000A950();

      sub_100001F00();
LABEL_44:
      sub_100003540();

      __asm { BRAA            X1, X16 }
    }

    v104 = *(v0 + 408);
    v103 = *(v0 + 416);
    v105 = *(v0 + 400);
    type metadata accessor for ModelCatalogAssetVersionedData(0);
    sub_1001169A8();
    v106 = (v105 + *(v42 + 24));
    v106[3] = &type metadata for NonAssetBackedResourceVersionLock;
    v106[4] = &off_1001B21B8;
    *v106 = v104;
    v106[1] = v103;
    *v105 = 0;
    v105[1] = v1;

LABEL_40:
    sub_100006138();

    sub_100001F00();
    goto LABEL_44;
  }

  sub_100004A04((v0 + 56), v0 + 16);
  sub_100007130(v0 + 16, v0 + 136);
  sub_100065020(&qword_1001BCB38, &qword_1001732E0);
  v33 = sub_100065020(&qword_1001BCB78, &qword_100173340);
  if (!swift_dynamicCast())
  {
    *(v0 + 208) = 0;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    sub_10000ECD8(v0 + 176, &qword_1001BCB80, &qword_100173348);
    sub_100011DE8();
    if (!v17)
    {
      sub_100005264();
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100002FD0(v61, qword_1001BC8F8);

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      sub_10000A05C();
      swift_slowAlloc();
      sub_100007958();
      v138 = swift_slowAlloc();
      *v1 = 136315138;
      *(v1 + 4) = sub_1000126CC(v138, v64);
      sub_100019C20();
      _os_log_impl(v65, v66, v67, v68, v69, v70);
      sub_100003324(v138);
      sub_100007C2C();

      sub_1000039CC();
    }

    v71 = *(v0 + 456);
    v72 = *(v0 + 464);
    sub_100008744();
    sub_100015F54(v73, v74, &protocol conformance descriptor for ModelManagerError);
    sub_10000EF40();
    v57 = swift_allocError();
    v76 = sub_100003624(v57, v75);
    (*(v72 + 104))(v76, enum case for ModelManagerError.unrecognizedModelCatalogResource(_:), v71);
    v60 = v57;
    swift_willThrow();

    v77 = (v0 + 16);
    goto LABEL_32;
  }

  v34 = *(v0 + 616);
  sub_100004A04((v0 + 176), v0 + 96);
  sub_100003370((v0 + 96), *(v0 + 120));
  if (dispatch thunk of CatalogResource.assetBacked.getter() & 1) == 0 || (v34)
  {
    v108 = *(v0 + 408);
    v107 = *(v0 + 416);
    v109 = *(v0 + 400);
    type metadata accessor for ModelCatalogAssetVersionedData(0);
    sub_1001169A8();
    v110 = (v109 + *(v33 + 24));
    v110[3] = &type metadata for NonAssetBackedResourceVersionLock;
    v110[4] = &off_1001B21B8;
    *v110 = v108;
    v110[1] = v107;

    sub_100003324((v0 + 16));
    *v109 = 0;
    v109[1] = v1;
    sub_100003324((v0 + 96));
    goto LABEL_40;
  }

  sub_100007130(v0 + 96, v0 + 256);
  sub_100065020(&qword_1001BCB40, &qword_1001732E8);
  if (!swift_dynamicCast())
  {
    *(v0 + 328) = 0;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    sub_10000ECD8(v0 + 296, &qword_1001BCB48, &unk_1001732F0);
    sub_100011DE8();
    if (!v17)
    {
      sub_100005264();
      swift_once();
    }

    v121 = type metadata accessor for Logger();
    sub_100002FD0(v121, qword_1001BC8F8);

    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v122, v123))
    {
      sub_10000A05C();
      swift_slowAlloc();
      sub_100007958();
      v139 = swift_slowAlloc();
      *v1 = 136315138;
      *(v1 + 4) = sub_1000126CC(v139, v124);
      sub_100019C20();
      _os_log_impl(v125, v126, v127, v128, v129, v130);
      sub_100003324(v139);
      sub_100007C2C();

      sub_1000039CC();
    }

    v131 = *(v0 + 456);
    v132 = *(v0 + 464);
    sub_100008744();
    sub_100015F54(v133, v134, &protocol conformance descriptor for ModelManagerError);
    sub_10000EF40();
    v57 = swift_allocError();
    v136 = sub_100003624(v57, v135);
    (*(v132 + 104))(v136, enum case for ModelManagerError.unrecognizedModelCatalogResource(_:), v131);
    v60 = v57;
    swift_willThrow();

    sub_100003324((v0 + 16));
    v77 = (v0 + 96);
LABEL_32:
    sub_100003324(v77);
    goto LABEL_4;
  }

  sub_100004A04((v0 + 296), v0 + 216);
  *(v0 + 584) = type metadata accessor for AssetBackedResourceVersionLock();
  swift_allocObject();

  v35 = swift_task_alloc();
  *(v0 + 592) = v35;
  *v35 = v0;
  v35[1] = sub_10011161C;
  sub_100003540();

  return sub_10010D968();
}

uint64_t sub_10011161C()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100003960();
  *v4 = v3;
  v5 = *v1;
  sub_100003960();
  *v6 = v5;
  *(v8 + 600) = v7;
  *(v8 + 608) = v0;

  v9 = *(v2 + 424);
  if (v0)
  {
    v10 = sub_100112288;
  }

  else
  {
    v10 = sub_100111748;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100111748()
{
  v140 = v0;
  v1 = v0[76];
  v2 = v0[75];
  sub_100003370(v0 + 27, v0[30]);
  v3 = *(v2 + 16);
  os_unfair_lock_lock(v3 + 11);

  os_unfair_lock_unlock(v3 + 11);
  v0[45] = swift_getAssociatedTypeWitness();
  v0[46] = swift_getAssociatedConformanceWitness();
  sub_10000366C(v0 + 42);
  dispatch thunk of AssetBackedResource.fetchLockedAsset(with:)();
  v4 = &selRef_addUpdateHandlerForNamespaceName_usingBlock_;
  if (v1)
  {
    v5 = v1;

    sub_1000B5008(v0 + 42);
    sub_1000284A0();
    swift_willThrow();
  }

  else
  {
    v130 = v0[69];
    v131 = v0[71];
    v132 = v0[68];
    v133 = v0[67];
    v134 = v0[66];
    v135 = v0[72];
    v136 = v0[62];
    v137 = v0[63];

    sub_100003370(v0 + 42, v0[45]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_100002BDC();
    v8 = v7;
    v9 = sub_100002C58();
    dispatch thunk of CatalogAssetProtocol.contents.getter();
    sub_100003754();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of AssetContents.baseURL.getter();
    (*(v8 + 8))(v9, AssociatedTypeWitness);

    dispatch thunk of CatalogAssetProtocol.version.getter();
    v10 = AssetVersion.number.getter();
    v12 = v11;
    (*(v133 + 8))(v132, v134);
    v13 = (v131 + *(v130 + 20));
    *v13 = v10;
    v13[1] = v12;
    sub_100003324(v0 + 42);
    sub_100019528();
    sub_10000C43C(v131, v135);
    type metadata accessor for URL();
    sub_100002BDC();
    v15 = v14;
    sub_100002C58();
    (*(v15 + 16))();
    FilePath.init(_:)();

    if (sub_10000C6C0(v136, 1, v137) != 1)
    {
      v32 = v0[75];
      v33 = v0[73];
      v34 = v0[72];
      v35 = v0[65];
      v36 = v0[63];
      v37 = v0[64];
      v38 = v0[50];
      (*(v37 + 32))(v35, v0[62], v36);
      v39 = (v34 + *(v130 + 20));
      v40 = v39[1];
      v138 = *v39;
      v41 = type metadata accessor for ModelCatalogAssetVersionedData(0);
      (*(v37 + 16))(&v38[*(v41 + 20)], v35, v36);
      v42 = &v38[*(v41 + 24)];
      *(v42 + 3) = v33;
      *(v42 + 4) = &off_1001B2030;
      *v42 = v32;
      v43 = *(v37 + 8);

      v43(v35, v36);
      sub_100011520();
      sub_100116658(v34, v44);
      sub_100003324(v0 + 2);
      *v38 = v138;
      *(v38 + 1) = v40;
      sub_100003324(v0 + 27);
      sub_100003324(v0 + 12);
      sub_100006138();

      sub_100001F00();
      goto LABEL_28;
    }

    sub_10000ECD8(v0[62], &qword_1001B9F18, &qword_1001708D0);
    if (qword_1001B89C0 != -1)
    {
      sub_100005264();
      swift_once();
    }

    v16 = v0[72];
    v17 = v0[70];
    v18 = type metadata accessor for Logger();
    sub_10000641C(v18, qword_1001BC8F8);
    sub_100019528();
    sub_100116600(v16, v17);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[70];
    if (v21)
    {
      sub_100002F10();
      v23 = swift_slowAlloc();
      sub_100011828();
      v139 = swift_slowAlloc();
      *v23 = 136315394;
      v24 = sub_100019678();
      *(v23 + 4) = sub_100004A3C(v24, v25, v26);
      *(v23 + 12) = 2080;
      sub_100007238();
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_100011520();
      sub_100116658(v22, v30);
      v31 = sub_100004A3C(v27, v29, &v139);

      *(v23 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to convert asset %s URL %s to file path", v23, 0x16u);
      swift_arrayDestroy();
      sub_100007C2C();

      sub_1000039CC();
    }

    else
    {

      sub_100011520();
      sub_100116658(v22, v46);
    }

    v47 = v0[72];
    v48 = v0[57];
    v49 = v0[58];
    v51 = v0[51];
    v50 = v0[52];
    sub_1000284A0();
    sub_100008744();
    sub_100015F54(v52, v53, &protocol conformance descriptor for ModelManagerError);
    sub_100007894();
    v5 = swift_allocError();
    *v54 = v51;
    v54[1] = v50;
    (*(v49 + 104))(v54, enum case for ModelManagerError.assetNotAvailableInModelCatalog(_:), v48);
    v1 = v5;
    swift_willThrow();

    sub_100011520();
    sub_100116658(v47, v55);
    v4 = &selRef_addUpdateHandlerForNamespaceName_usingBlock_;
  }

  sub_100003324(v0 + 2);
  sub_100003324(v0 + 27);
  sub_100003324(v0 + 12);
  sub_10000AA64();
  v56 = sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (sub_10000F1E0(v56, (v0 + 47)))
  {
    v57 = sub_10000EF54();
    v58(v57);
    sub_100008744();
    sub_100015F54(v59, v60, &protocol conformance descriptor for ModelManagerError);
    v61 = sub_100012B30();
    v63 = sub_100008990(v61, v62);
    v64(v63);
    swift_willThrow();

    v65 = sub_10000C9F4();
    v66(v65);
  }

  else
  {
    sub_100009B94();
    v0[48] = v5;
    v67 = swift_errorRetain();
    if (sub_10000F1E0(v67, (v0 + 48)))
    {
      v68 = sub_10000CE84();
      v69(v68);
      sub_100011980();
      if (v71)
      {
        (*(v70 + 96))(v1);
        if (v4[312] != -1)
        {
          sub_100005264();
          swift_once();
        }

        v72 = sub_1000111C8();
        sub_10000641C(v72, qword_1001BC8F8);
        sub_100019498();

        v73 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        sub_10001E6A4();

        if (sub_100010C0C())
        {
          sub_100002F10();
          v74 = swift_slowAlloc();
          sub_100011828();
          v139 = swift_slowAlloc();
          *v74 = 136315394;
          v75 = sub_100019678();
          v78 = sub_100004A3C(v75, v76, v77);
          v86 = sub_10002AB8C(v78, v79, v80, v81, v82, v83, v84, v85, v129, v130, v131, v132, v133, v134, v135, v136, v137);

          *(v74 + 14) = v86;
          sub_10000A318();
          _os_log_impl(v87, v88, v89, v90, v91, 0x16u);
          sub_1000188F0();
          sub_100002BD0();

          sub_100007C2C();
        }

        else
        {
        }

        v122 = v0[57];
        v121 = v0[58];
        sub_100008744();
        sub_100015F54(v123, v124, &protocol conformance descriptor for ModelManagerError);
        sub_100007894();
        v125 = swift_allocError();
        v127 = sub_100003624(v125, v126);
        (*(v121 + 104))(v127, enum case for ModelManagerError.assetNotFound(_:), v122);
        swift_willThrow();

        goto LABEL_27;
      }

      v92 = sub_10000C75C();
      v93(v92);
    }

    v0[49] = v5;
    swift_errorRetain();
    swift_errorRetain();
    v94 = String.init<A>(describing:)();
    v96 = v95;
    if (v4[312] != -1)
    {
      sub_100005264();
      swift_once();
    }

    v97 = sub_1000111C8();
    sub_10000641C(v97, qword_1001BC8F8);
    sub_100019498();

    v98 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_10001E6A4();

    if (sub_100010C0C())
    {
      sub_100002F10();
      v99 = swift_slowAlloc();
      sub_100011828();
      v139 = swift_slowAlloc();
      *v99 = 136315394;
      v100 = sub_100019678();
      v103 = sub_100004A3C(v100, v101, v102);
      *(v99 + 14) = sub_10002AB8C(v103, v104, v105, v106, v107, v108, v109, v110, v129, v130, v131, v132, v133, v134, v135, v136, v137);
      sub_10000A318();
      _os_log_impl(v111, v112, v113, v114, v115, 0x16u);
      sub_1000188F0();
      sub_100002BD0();

      sub_100007C2C();
    }

    v117 = v0[57];
    v116 = v0[58];
    sub_100008744();
    sub_100015F54(v118, v119, &protocol conformance descriptor for ModelManagerError);
    sub_100012B30();
    *v120 = v94;
    v120[1] = v96;
    (*(v116 + 104))(v120, enum case for ModelManagerError.modelCatalogError(_:), v117);
    swift_willThrow();
  }

LABEL_27:

  sub_10000A950();

  sub_100001F00();
LABEL_28:

  return v45();
}

void sub_100112288()
{
  sub_100003324(v1 + 2);
  sub_100003324(v1 + 27);
  sub_100003324(v1 + 12);
  v2 = v1[76];
  sub_10000AA64();
  v3 = sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (sub_10000F1E0(v3, (v1 + 47)))
  {
    v4 = sub_10000EF54();
    v5(v4);
    sub_100008744();
    sub_100015F54(v6, v7, &protocol conformance descriptor for ModelManagerError);
    v8 = sub_100012B30();
    v10 = sub_100008990(v8, v9);
    v11(v10);
    swift_willThrow();

    v12 = sub_10000C9F4();
    v13(v12);
    goto LABEL_17;
  }

  sub_100009B94();
  v1[48] = v2;
  v14 = swift_errorRetain();
  if (sub_10000F1E0(v14, (v1 + 48)))
  {
    v15 = sub_10000CE84();
    v16(v15);
    sub_100011980();
    if (v18)
    {
      (*(v17 + 96))(v0);
      if (qword_1001B89C0 != -1)
      {
        sub_100005264();
        swift_once();
      }

      v19 = sub_1000111C8();
      sub_10000641C(v19, qword_1001BC8F8);
      sub_100019498();

      v20 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      sub_10001E6A4();

      if (sub_100010C0C())
      {
        sub_100002F10();
        v21 = swift_slowAlloc();
        sub_100011828();
        swift_slowAlloc();
        sub_1000456DC(4.8151e-34);
        v22 = sub_100005980();
        v25 = sub_100004A3C(v22, v23, v24);
        v28 = sub_100007E88(v25, v26, v27);

        *(v21 + 14) = v28;
        sub_10000A318();
        _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
        swift_arrayDestroy();
        sub_100005864();

        sub_100007C2C();
      }

      else
      {
      }

      v60 = v1[57];
      v59 = v1[58];
      sub_100008744();
      sub_100015F54(v61, v62, &protocol conformance descriptor for ModelManagerError);
      sub_100007894();
      v63 = swift_allocError();
      v65 = sub_100003624(v63, v64);
      v66 = (*(v59 + 104))(v65, enum case for ModelManagerError.assetNotFound(_:), v60);
      sub_100036E50(v66);

LABEL_17:

      sub_10000A950();

      sub_100001F00();
      sub_100003540();

      __asm { BRAA            X1, X16 }
    }

    v34 = sub_10000C75C();
    v35(v34);
  }

  v1[49] = v2;
  swift_errorRetain();
  swift_errorRetain();
  v36 = String.init<A>(describing:)();
  v38 = v37;
  if (qword_1001B89C0 != -1)
  {
    sub_100005264();
    swift_once();
  }

  v39 = sub_1000111C8();
  sub_10000641C(v39, qword_1001BC8F8);
  sub_100019498();

  v40 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10001E6A4();

  if (sub_100010C0C())
  {
    sub_100002F10();
    v41 = swift_slowAlloc();
    sub_100011828();
    swift_slowAlloc();
    sub_1000456DC(4.8151e-34);
    v42 = sub_100019678();
    v45 = sub_100004A3C(v42, v43, v44);
    *(v41 + 14) = sub_100007E88(v45, v46, v47);
    sub_10000A318();
    _os_log_impl(v48, v49, v50, v51, v52, 0x16u);
    sub_1000188F0();
    sub_100002BD0();

    sub_100007C2C();
  }

  v54 = v1[57];
  v53 = v1[58];
  sub_100008744();
  sub_100015F54(v55, v56, &protocol conformance descriptor for ModelManagerError);
  sub_100012B30();
  *v57 = v36;
  v57[1] = v38;
  v58 = (*(v53 + 104))(v57, enum case for ModelManagerError.modelCatalogError(_:), v54);
  sub_100036E50(v58);

  goto LABEL_17;
}

void sub_10011275C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for ModelCatalogAsset(0);
  sub_100002BDC();
  __chkstk_darwin(v7);
  sub_100002B8C();
  v10 = (v9 - v8);
  v11._countAndFlagsBits = 0x706D655478616A41;
  v11._object = 0xE800000000000000;
  if (String.hasPrefix(_:)(v11))
  {
    AssetCost.init(onDeviceMemory:)();
    *a3 = a1;
    a3[1] = a2;
    a3[2] = _swiftEmptyArrayStorage;
    a3[3] = &off_1001AFEB0;
    a3[4] = _swiftEmptyArrayStorage;
    *(a3 + v6[9]) = 1;
    *(a3 + v6[10]) = 0;
    *(a3 + v6[11]) = 0;
    *(a3 + v6[12]) = 0;
    *(a3 + v6[13]) = 0;
    *(a3 + v6[14]) = _swiftEmptyArrayStorage;
    *(a3 + v6[15]) = 0;
    sub_100009BFC(a3, 0, 1, v6);
    sub_100002EEC();
  }

  else
  {
    if (qword_1001B8A68 != -1)
    {
LABEL_19:
      sub_1000030C4(&qword_1001B8A68);
    }

    v13 = 0;
    v14 = qword_1001BEB10;
    v15 = *(qword_1001BEB10 + 16);
    while (v15 != v13)
    {
      if (v13 >= *(v14 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      sub_10000657C();
      sub_100003C40();
      sub_100116600(v16, v10);
      v17 = *v10 == a1 && v10[1] == a2;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100003C40();
        sub_10000C43C(v10, a3);
        v19 = a3;
        v20 = 0;
        goto LABEL_17;
      }

      sub_10000574C();
      sub_100116658(v10, v18);
      ++v13;
    }

    v19 = a3;
    v20 = 1;
LABEL_17:
    sub_100009BFC(v19, v20, 1, v6);
    sub_100002EEC();
  }
}

void sub_1001129A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v4);
  sub_100004B1C();
  __chkstk_darwin(v5);
  type metadata accessor for TaskPriority();
  sub_100003978();
  sub_100009BFC(v6, v7, v8, v9);
  sub_1000119E4();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;

  sub_10000C65C();
  sub_100128ED0();
}

uint64_t sub_100112A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_100065020(&qword_1001BCB50, &qword_100173310);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_100065020(&qword_1001BCB58, &qword_100173318);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_100112BB0, 0, 0);
}

uint64_t sub_100112BB0()
{
  sub_100003884();
  sub_100065020(&qword_1001BCB60, &qword_100173320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10016FF40;
  static Catalog.Resource.DisabledUseCaseList.All()();
  v3 = v0[5];
  v2 = v0[6];
  sub_100003370(v0 + 2, v3);
  *(v1 + 56) = v3;
  *(v1 + 64) = *(v2 + 8);
  sub_10000366C((v1 + 32));
  sub_100006098();
  (*(v4 + 16))();
  sub_100003324(v0 + 2);
  static Catalog.monitorUpdates(for:on:)();

  AsyncStream.makeAsyncIterator()();
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  sub_100007CD4(v5);
  sub_1000059F8();

  return AsyncStream.Iterator.next(isolation:)(v6);
}

uint64_t sub_100112D6C()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_1000059F8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100112E54()
{
  sub_100003884();
  if (v0[7])
  {
    v1 = v0[8];

    v10 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = sub_100112FD0;

    return v10();
  }

  else
  {
    v5 = v0[14];
    v4 = v0[15];
    v6 = v0[13];
    v7 = sub_10000C75C();
    v8(v7);
    (*(v5 + 8))(v4, v6);

    sub_100001F00();

    return v9();
  }
}

uint64_t sub_100112FD0()
{
  sub_100001ED0();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 128) = v4;
  *v4 = v3;
  sub_100007CD4(v4);
  sub_1000059F8();

  return AsyncStream.Iterator.next(isolation:)(v5);
}

uint64_t sub_100113110(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return sub_100004B70(sub_10011312C, v1);
}

uint64_t sub_10011312C()
{
  sub_100003884();
  v1 = sub_1001134A4(v0[6]);
  v0[8] = v1;
  if (*(v1 + 16) && (v2 = v0[7], v3 = OBJC_IVAR____TtC13modelmanagerd20ModelCatalogProvider_onAssetUpdateHandlers, swift_beginAccess(), v4 = *(v2 + v3), v0[9] = v4, v5 = *(v4 + 16), (v0[10] = v5) != 0))
  {
    v0[11] = 0;
    v6 = v0[8];
    v0[12] = *(v4 + 40);

    v0[5] = v6;
    sub_100012BD8();
    sub_1000186EC();
    v20 = v7;
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v16 = sub_100013DC8(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20);

    return v16();
  }

  else
  {

    sub_100001F00();

    return v18();
  }
}

uint64_t sub_100113274()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 56);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  return _swift_task_switch(sub_100113390, v2, 0);
}

uint64_t sub_100113390()
{
  sub_100003884();
  v1 = v0[11] + 1;
  if (v1 == v0[10])
  {

    sub_100001F00();

    return v2();
  }

  else
  {
    v0[11] = v1;
    v4 = v0[8];
    v0[12] = *(v0[9] + 16 * v1 + 40);
    v0[5] = v4;
    sub_100012BD8();
    sub_1000186EC();
    v16 = v5;
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v14 = sub_100013DC8(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_1001134A4(uint64_t a1)
{
  if (a1 && (v1 = a1, *(a1 + 16)))
  {
    v2 = qword_1001B89C0;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000641C(v3, qword_1001BC8F8);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v32[0] = v7;
      *v6 = 136315138;
      v8 = Set.description.getter();
      v10 = sub_100004A3C(v8, v9, v32);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Setting assets have updated for %s", v6, 0xCu);
      sub_100003324(v7);
    }
  }

  else
  {
    if (qword_1001B89D8 != -1)
    {
      swift_once();
    }

    v11 = dispatch thunk of CatalogClient.resources()();
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = _swiftEmptyArrayStorage;
      v14 = v11 + 32;
      do
      {
        sub_100007130(v14, v32);
        sub_100007130(v32, v28);
        sub_100065020(&qword_1001BCB38, &qword_1001732E0);
        sub_100065020(&qword_1001BCB40, &qword_1001732E8);
        if (swift_dynamicCast())
        {
          sub_100003370(&v29, *(&v30 + 1));
          v15 = dispatch thunk of CatalogResource.id.getter();
          v17 = v16;
          sub_100003324(v32);
          sub_100003324(&v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10013FAFC(0, v13[2] + 1, 1, v13);
            v13 = v21;
          }

          v19 = v13[2];
          v18 = v13[3];
          if (v19 >= v18 >> 1)
          {
            sub_10013FAFC(v18 > 1, v19 + 1, 1, v13);
            v13 = v22;
          }

          v13[2] = v19 + 1;
          v20 = &v13[2 * v19];
          v20[4] = v15;
          v20[5] = v17;
        }

        else
        {
          sub_100003324(v32);
          v31 = 0;
          v29 = 0u;
          v30 = 0u;
          sub_10000ECD8(&v29, &qword_1001BCB48, &unk_1001732F0);
        }

        v14 += 40;
        --v12;
      }

      while (v12);
    }

    else
    {

      v13 = _swiftEmptyArrayStorage;
    }

    if (qword_1001B89C0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000641C(v23, qword_1001BC8F8);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Setting assets have updated for all assets", v26, 2u);
    }

    return sub_100077254(v13);
  }

  return v1;
}

void sub_100113988(char a1)
{
  *(v1 + OBJC_IVAR____TtC13modelmanagerd20ModelCatalogProvider_ignoreAssetUpdates) = a1;
  if (qword_1001B89C0 != -1)
  {
    sub_100005264();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100002FD0(v3, qword_1001BC8F8);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    sub_10000A05C();
    v5 = swift_slowAlloc();
    sub_1000033D0();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    if (a1)
    {
      v7 = 0x6465726F6E6769;
    }

    else
    {
      v7 = 0x65737365636F7270;
    }

    if (a1)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE900000000000064;
    }

    v9 = sub_100004A3C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v4, "ModelCatalog asset updates will be %s", v5, 0xCu);
    sub_100003324(v6);
    sub_100002BD0();

    sub_100002BD0();
  }
}

uint64_t sub_100113AF8()
{
  v1 = static Obfuscation.readObfuscatedData(fileURL:fallback:)();
  v3 = v2;
  if (v0)
  {
    v37 = v0;
    swift_errorRetain();
    sub_100065020(&qword_1001B8F60, &unk_100171260);
    v36 = String.init<A>(describing:)();
    v5 = v4;
    if (qword_1001B89C0 != -1)
    {
      sub_100005264();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000641C(v6, qword_1001BC8F8);
    v7 = type metadata accessor for URL();
    v35 = &v31;
    sub_100002BDC();
    v9 = v8;
    __chkstk_darwin(v10);
    sub_100002B8C();
    v13 = v12 - v11;
    v14 = sub_1000062B0();
    v15(v14);

    v16 = v5;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      sub_100002F10();
      v19 = swift_slowAlloc();
      v33 = v3;
      v20 = v19;
      sub_100011828();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v20 = 136315394;
      v31 = v16;
      v21 = URL.path(percentEncoded:)(1);
      v34 = v1;
      (*(v9 + 8))(v13, v7);
      v22 = sub_100004A3C(v21._countAndFlagsBits, v21._object, &v37);
      v1 = v34;

      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      v23 = v36;
      v24 = v31;
      *(v20 + 14) = sub_100004A3C(v36, v31, &v37);
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to get obfuscated data for file %s: %s", v20, 0x16u);
      swift_arrayDestroy();
      sub_100002BD0();

      sub_100002BD0();

      v25 = v24;
    }

    else
    {

      (*(v9 + 8))(v13, v7);
      v25 = v16;
      v23 = v36;
    }

    sub_100003B1C();
    type metadata accessor for ModelManagerError();
    sub_100008744();
    sub_100015F54(v26, v27, &protocol conformance descriptor for ModelManagerError);
    sub_100007894();
    swift_allocError();
    *v28 = v23;
    v28[1] = v25;
    sub_100006098();
    (*(v29 + 104))();
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_100113E5C()
{
  sub_10000ECD8(v0 + OBJC_IVAR____TtC13modelmanagerd20ModelCatalogProvider_assetLock, &qword_1001BCBB0, &unk_1001733A8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100113EB4()
{
  sub_100113E5C();

  return _swift_defaultActor_deallocate(v0);
}

void sub_100113EE8(uint64_t a1)
{
  sub_100113FB8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100113FB8(uint64_t a1)
{
  if (!qword_1001BC9F8)
  {
    type metadata accessor for AssetLock();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001BC9F8);
    }
  }
}

__n128 sub_100114010(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_100114024(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 28))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100114064(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001140B8(uint64_t *a1)
{
  v2 = sub_100065020(&qword_1001BCB68, &unk_100173328);
  __chkstk_darwin(v2 - 8);
  v4 = (&v24 - v3);
  v5 = type metadata accessor for ModelCatalogAsset(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v24 - v10;
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v15 = *a1;
  v14 = a1[1];
  type metadata accessor for ModelCatalogProvider(0);
  sub_10011275C(v15, v14, v4);
  if (sub_10000C6C0(v4, 1, v5) == 1)
  {
    sub_10000ECD8(v4, &qword_1001BCB68, &unk_100173328);
    if (qword_1001B89C0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000641C(v16, qword_1001BC8F8);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100004A3C(v15, v14, &v25);
      _os_log_impl(&_mh_execute_header, v17, v18, "Dependent asset %s not found in test assets", v19, 0xCu);
      sub_100003324(v20);
    }

    v21 = type metadata accessor for ModelManagerError();
    sub_100015F54(&qword_1001B8F50, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
    swift_allocError();
    *v22 = v15;
    v22[1] = v14;
    (*(*(v21 - 8) + 104))(v22, enum case for ModelManagerError.assetNotFound(_:), v21);
    swift_willThrow();
  }

  else
  {
    sub_10000C43C(v4, v13);
    sub_100116600(v13, v8);
    sub_100008B58();
    sub_100116658(v11, type metadata accessor for ModelCatalogAsset);
    return sub_100116658(v13, type metadata accessor for ModelCatalogAsset);
  }
}

uint64_t sub_10011443C()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v4, qword_1001BE978);
  v5 = sub_10000641C(v4, qword_1001BE978);
  AssetCost.init(onDeviceMemory:)();
  *v5 = 0xD00000000000001ALL;
  *(v5 + 1) = 0x8000000100175620;
  *(v5 + 2) = _swiftEmptyArrayStorage;
  *(v5 + 3) = &off_1001AF868;
  *(v5 + 4) = _swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v5[v4[8]], v3, v0);
  v5[v4[9]] = 1;
  v5[v4[10]] = 0;
  v5[v4[11]] = 0;
  v5[v4[12]] = 0;
  v5[v4[13]] = 0;
  *&v5[v4[14]] = _swiftEmptyArrayStorage;
  v5[v4[15]] = 0;
  return result;
}

uint64_t sub_1001145B4()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v4, qword_1001BE990);
  v5 = sub_10000641C(v4, qword_1001BE990);
  AssetCost.init(onDeviceMemory:)();
  *v5 = 0xD00000000000001ALL;
  *(v5 + 1) = 0x8000000100177810;
  *(v5 + 2) = _swiftEmptyArrayStorage;
  *(v5 + 3) = &off_1001AFD50;
  *(v5 + 4) = &off_1001AFD98;
  result = (*(v1 + 32))(&v5[v4[8]], v3, v0);
  v5[v4[9]] = 1;
  v5[v4[10]] = 0;
  v5[v4[11]] = 0;
  v5[v4[12]] = 0;
  v5[v4[13]] = 0;
  *&v5[v4[14]] = _swiftEmptyArrayStorage;
  v5[v4[15]] = 0;
  return result;
}

uint64_t sub_100114734()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v4, qword_1001BE9A8);
  v5 = sub_10000641C(v4, qword_1001BE9A8);
  AssetCost.init(onDeviceMemory:)();
  *v5 = 0xD000000000000019;
  *(v5 + 1) = 0x8000000100175640;
  *(v5 + 2) = _swiftEmptyArrayStorage;
  *(v5 + 3) = &off_1001AF8B0;
  *(v5 + 4) = _swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v5[v4[8]], v3, v0);
  v5[v4[9]] = 1;
  v5[v4[10]] = 0;
  v5[v4[11]] = 0;
  v5[v4[12]] = 0;
  v5[v4[13]] = 0;
  *&v5[v4[14]] = _swiftEmptyArrayStorage;
  v5[v4[15]] = 0;
  return result;
}

uint64_t sub_1001148A4()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v4, qword_1001BE9C0);
  v5 = sub_10000641C(v4, qword_1001BE9C0);
  if (qword_1001B89C8 != -1)
  {
    swift_once();
  }

  AssetCost.init(onDeviceMemory:)();
  *v5 = 0xD00000000000001BLL;
  *(v5 + 1) = 0x8000000100177A70;
  *(v5 + 2) = _swiftEmptyArrayStorage;
  *(v5 + 3) = &off_1001AF8F8;
  *(v5 + 4) = _swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v5[v4[8]], v3, v0);
  v5[v4[9]] = 1;
  v5[v4[10]] = 0;
  v5[v4[11]] = 0;
  v5[v4[12]] = 0;
  v5[v4[13]] = 0;
  *&v5[v4[14]] = _swiftEmptyArrayStorage;
  v5[v4[15]] = 0;
  return result;
}

uint64_t sub_100114A48()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v4, qword_1001BE9D8);
  v5 = sub_10000641C(v4, qword_1001BE9D8);
  AssetCost.init(onDeviceMemory:)();
  *v5 = 0xD000000000000021;
  *(v5 + 1) = 0x8000000100177A40;
  *(v5 + 2) = &off_1001AF940;
  *(v5 + 3) = &off_1001AF980;
  *(v5 + 4) = _swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v5[v4[8]], v3, v0);
  v5[v4[9]] = 1;
  v5[v4[10]] = 0;
  v5[v4[11]] = 0;
  v5[v4[12]] = 0;
  v5[v4[13]] = 0;
  *&v5[v4[14]] = _swiftEmptyArrayStorage;
  v5[v4[15]] = 0;
  return result;
}

uint64_t sub_100114BC0()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v4, qword_1001BE9F0);
  v5 = sub_10000641C(v4, qword_1001BE9F0);
  AssetCost.init(onDeviceMemory:)();
  *v5 = 0xD000000000000021;
  *(v5 + 1) = 0x8000000100177A10;
  *(v5 + 2) = _swiftEmptyArrayStorage;
  *(v5 + 3) = &off_1001AF9C8;
  *(v5 + 4) = _swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v5[v4[8]], v3, v0);
  v5[v4[9]] = 0;
  v5[v4[10]] = 0;
  v5[v4[11]] = 1;
  v5[v4[12]] = 0;
  v5[v4[13]] = 0;
  *&v5[v4[14]] = _swiftEmptyArrayStorage;
  v5[v4[15]] = 0;
  return result;
}

uint64_t sub_100114D34()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v4, qword_1001BEA08);
  v5 = sub_10000641C(v4, qword_1001BEA08);
  AssetCost.init(onDeviceMemory:)();
  *v5 = 0xD000000000000020;
  *(v5 + 1) = 0x80000001001779B0;
  *(v5 + 2) = _swiftEmptyArrayStorage;
  *(v5 + 3) = &off_1001AFA58;
  *(v5 + 4) = _swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v5[v4[8]], v3, v0);
  v5[v4[9]] = 1;
  v5[v4[10]] = 0;
  v5[v4[11]] = 0;
  v5[v4[12]] = 0;
  v5[v4[13]] = 0;
  *&v5[v4[14]] = _swiftEmptyArrayStorage;
  v5[v4[15]] = 0;
  return result;
}

uint64_t sub_100114EA8()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v4, qword_1001BEA20);
  v5 = sub_10000641C(v4, qword_1001BEA20);
  AssetCost.init(onDeviceMemory:)();
  *v5 = 0xD000000000000028;
  *(v5 + 1) = 0x80000001001779E0;
  *(v5 + 2) = _swiftEmptyArrayStorage;
  *(v5 + 3) = &off_1001AFA10;
  *(v5 + 4) = _swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v5[v4[8]], v3, v0);
  v5[v4[9]] = 1;
  v5[v4[10]] = 0;
  v5[v4[11]] = 0;
  v5[v4[12]] = 0;
  v5[v4[13]] = 0;
  *&v5[v4[14]] = _swiftEmptyArrayStorage;
  v5[v4[15]] = 0;
  return result;
}

uint64_t sub_10011501C()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v4, qword_1001BEA38);
  v5 = sub_10000641C(v4, qword_1001BEA38);
  AssetCost.init(onDeviceMemory:)();
  *v5 = 0xD00000000000001ELL;
  *(v5 + 1) = 0x8000000100177990;
  *(v5 + 2) = _swiftEmptyArrayStorage;
  *(v5 + 3) = &off_1001AFAA0;
  *(v5 + 4) = _swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v5[v4[8]], v3, v0);
  v5[v4[9]] = 1;
  v5[v4[10]] = 0;
  v5[v4[11]] = 0;
  v5[v4[12]] = 0;
  v5[v4[13]] = 0;
  *&v5[v4[14]] = _swiftEmptyArrayStorage;
  v5[v4[15]] = 0;
  return result;
}

uint64_t sub_100115190()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v4, qword_1001BEA50);
  v5 = sub_10000641C(v4, qword_1001BEA50);
  AssetCost.init(onDeviceMemory:)();
  *v5 = 0xD000000000000025;
  *(v5 + 1) = 0x8000000100177960;
  *(v5 + 2) = _swiftEmptyArrayStorage;
  *(v5 + 3) = &off_1001AFAE8;
  *(v5 + 4) = _swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v5[v4[8]], v3, v0);
  v5[v4[9]] = 1;
  v5[v4[10]] = 0;
  v5[v4[11]] = 1;
  v5[v4[12]] = 0;
  v5[v4[13]] = 0;
  *&v5[v4[14]] = _swiftEmptyArrayStorage;
  v5[v4[15]] = 0;
  return result;
}

uint64_t sub_100115300()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v4, qword_1001BEA68);
  v5 = sub_10000641C(v4, qword_1001BEA68);
  if (qword_1001B89C8 != -1)
  {
    swift_once();
  }

  AssetCost.init(onDeviceMemory:)();
  *v5 = 0xD000000000000025;
  *(v5 + 1) = 0x8000000100177930;
  *(v5 + 2) = _swiftEmptyArrayStorage;
  *(v5 + 3) = &off_1001AFB30;
  *(v5 + 4) = _swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v5[v4[8]], v3, v0);
  v5[v4[9]] = 1;
  v5[v4[10]] = 0;
  v5[v4[11]] = 0;
  v5[v4[12]] = 0;
  v5[v4[13]] = 0;
  *&v5[v4[14]] = _swiftEmptyArrayStorage;
  v5[v4[15]] = 0;
  return result;
}

uint64_t sub_1001154A4()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v4, qword_1001BEA80);
  v5 = sub_10000641C(v4, qword_1001BEA80);
  if (qword_1001B89C8 != -1)
  {
    swift_once();
  }

  AssetCost.init(onDeviceMemory:)();
  *v5 = 0xD000000000000026;
  *(v5 + 1) = 0x8000000100177900;
  *(v5 + 2) = _swiftEmptyArrayStorage;
  *(v5 + 3) = &off_1001AFB78;
  *(v5 + 4) = _swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v5[v4[8]], v3, v0);
  v5[v4[9]] = 1;
  v5[v4[10]] = 0;
  v5[v4[11]] = 0;
  v5[v4[12]] = 0;
  v5[v4[13]] = 0;
  *&v5[v4[14]] = _swiftEmptyArrayStorage;
  v5[v4[15]] = 0;
  return result;
}

uint64_t sub_100115648()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v4, qword_1001BEA98);
  v5 = sub_10000641C(v4, qword_1001BEA98);
  if (qword_1001B89D0 != -1)
  {
    swift_once();
  }

  AssetCost.init(onDeviceMemory:)();
  *v5 = 0xD000000000000025;
  *(v5 + 1) = 0x80000001001778D0;
  *(v5 + 2) = _swiftEmptyArrayStorage;
  *(v5 + 3) = &off_1001AFBC0;
  *(v5 + 4) = _swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v5[v4[8]], v3, v0);
  v5[v4[9]] = 1;
  v5[v4[10]] = 0;
  v5[v4[11]] = 0;
  v5[v4[12]] = 0;
  v5[v4[13]] = 0;
  *&v5[v4[14]] = _swiftEmptyArrayStorage;
  v5[v4[15]] = 0;
  return result;
}

uint64_t sub_1001157EC()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v4, qword_1001BEAB0);
  v5 = sub_10000641C(v4, qword_1001BEAB0);
  if (qword_1001B89D0 != -1)
  {
    swift_once();
  }

  result = qword_1001BE968 + 1;
  if (qword_1001BE968 == -1)
  {
    __break(1u);
  }

  else
  {
    AssetCost.init(onDeviceMemory:)();
    *v5 = 0xD00000000000002FLL;
    *(v5 + 1) = 0x80000001001778A0;
    *(v5 + 2) = _swiftEmptyArrayStorage;
    *(v5 + 3) = &off_1001AFC08;
    *(v5 + 4) = _swiftEmptyArrayStorage;
    result = (*(v1 + 32))(&v5[v4[8]], v3, v0);
    v5[v4[9]] = 1;
    v5[v4[10]] = 0;
    v5[v4[11]] = 0;
    v5[v4[12]] = 0;
    v5[v4[13]] = 0;
    *&v5[v4[14]] = _swiftEmptyArrayStorage;
    v5[v4[15]] = 0;
  }

  return result;
}

uint64_t sub_10011599C()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v4, qword_1001BEAC8);
  v5 = sub_10000641C(v4, qword_1001BEAC8);
  AssetCost.init(onDeviceMemory:)();
  *v5 = 0xD000000000000023;
  *(v5 + 1) = 0x8000000100177870;
  *(v5 + 2) = _swiftEmptyArrayStorage;
  *(v5 + 3) = &off_1001AFC50;
  *(v5 + 4) = _swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v5[v4[8]], v3, v0);
  v5[v4[9]] = 1;
  v5[v4[10]] = 0;
  v5[v4[11]] = 0;
  v5[v4[12]] = 0;
  v5[v4[13]] = 0;
  *&v5[v4[14]] = _swiftEmptyArrayStorage;
  v5[v4[15]] = 0;
  return result;
}

uint64_t sub_100115B14()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v4, qword_1001BEAE0);
  v5 = sub_10000641C(v4, qword_1001BEAE0);
  AssetCost.init(onDeviceMemory:)();
  *v5 = 0xD000000000000017;
  *(v5 + 1) = 0x8000000100177850;
  *(v5 + 2) = _swiftEmptyArrayStorage;
  *(v5 + 3) = &off_1001AFCC0;
  *(v5 + 4) = _swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v5[v4[8]], v3, v0);
  v5[v4[9]] = 1;
  v5[v4[10]] = 0;
  v5[v4[11]] = 0;
  v5[v4[12]] = 0;
  v5[v4[13]] = 0;
  *&v5[v4[14]] = _swiftEmptyArrayStorage;
  v5[v4[15]] = 0;
  return result;
}

uint64_t sub_100115C88()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v4, qword_1001BEAF8);
  v5 = sub_10000641C(v4, qword_1001BEAF8);
  AssetCost.init(onDeviceMemory:)();
  *v5 = 0xD000000000000018;
  *(v5 + 1) = 0x8000000100177830;
  *(v5 + 2) = _swiftEmptyArrayStorage;
  *(v5 + 3) = &off_1001AFD08;
  *(v5 + 4) = _swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v5[v4[8]], v3, v0);
  v5[v4[9]] = 1;
  v5[v4[10]] = 0;
  v5[v4[11]] = 0;
  v5[v4[12]] = 0;
  v5[v4[13]] = 0;
  *&v5[v4[14]] = _swiftEmptyArrayStorage;
  v5[v4[15]] = 0;
  return result;
}

uint64_t sub_100115DFC()
{
  sub_100065020(&qword_1001BCB90, &qword_100173370);
  v0 = type metadata accessor for ModelCatalogAsset(0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100173190;
  v4 = v3 + v2;
  if (qword_1001B89E0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000641C(v0, qword_1001BE978);
  sub_100116600(v5, v4);
  if (qword_1001B89F0 != -1)
  {
    swift_once();
  }

  v6 = sub_10000641C(v0, qword_1001BE9A8);
  sub_100116600(v6, v4 + v1);
  if (qword_1001B89F8 != -1)
  {
    swift_once();
  }

  v7 = sub_10000641C(v0, qword_1001BE9C0);
  sub_100116600(v7, v4 + 2 * v1);
  if (qword_1001B8A00 != -1)
  {
    swift_once();
  }

  v8 = sub_10000641C(v0, qword_1001BE9D8);
  sub_100116600(v8, v4 + 3 * v1);
  if (qword_1001B8A08 != -1)
  {
    swift_once();
  }

  v9 = sub_10000641C(v0, qword_1001BE9F0);
  sub_100116600(v9, v4 + 4 * v1);
  if (qword_1001B8A18 != -1)
  {
    swift_once();
  }

  v10 = sub_10000641C(v0, qword_1001BEA20);
  sub_100116600(v10, v4 + 5 * v1);
  if (qword_1001B8A10 != -1)
  {
    swift_once();
  }

  v11 = sub_10000641C(v0, qword_1001BEA08);
  sub_100116600(v11, v4 + 6 * v1);
  if (qword_1001B8A20 != -1)
  {
    swift_once();
  }

  v12 = sub_10000641C(v0, qword_1001BEA38);
  sub_100116600(v12, v4 - v1 + 8 * v1);
  if (qword_1001B8A28 != -1)
  {
    swift_once();
  }

  v13 = sub_10000641C(v0, qword_1001BEA50);
  sub_100116600(v13, v4 + 8 * v1);
  if (qword_1001B8A30 != -1)
  {
    swift_once();
  }

  v14 = sub_10000641C(v0, qword_1001BEA68);
  sub_100116600(v14, v4 + 9 * v1);
  if (qword_1001B8A38 != -1)
  {
    swift_once();
  }

  v15 = sub_10000641C(v0, qword_1001BEA80);
  sub_100116600(v15, v4 + 10 * v1);
  if (qword_1001B8A40 != -1)
  {
    swift_once();
  }

  v16 = sub_10000641C(v0, qword_1001BEA98);
  sub_100116600(v16, v4 + 11 * v1);
  if (qword_1001B8A48 != -1)
  {
    swift_once();
  }

  v17 = sub_10000641C(v0, qword_1001BEAB0);
  sub_100116600(v17, v4 + 12 * v1);
  if (qword_1001B8A50 != -1)
  {
    swift_once();
  }

  v18 = sub_10000641C(v0, qword_1001BEAC8);
  sub_100116600(v18, v4 + 13 * v1);
  if (qword_1001B8A58 != -1)
  {
    swift_once();
  }

  v19 = sub_10000641C(v0, qword_1001BEAE0);
  sub_100116600(v19, v4 + 14 * v1);
  if (qword_1001B8A60 != -1)
  {
    swift_once();
  }

  v20 = sub_10000641C(v0, qword_1001BEAF8);
  sub_100116600(v20, v4 - v1 + 16 * v1);
  if (qword_1001B89E8 != -1)
  {
    swift_once();
  }

  v21 = sub_10000641C(v0, qword_1001BE990);
  result = sub_100116600(v21, v4 + 16 * v1);
  qword_1001BEB10 = v3;
  return result;
}

uint64_t sub_100116540()
{
  sub_100003884();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = sub_100004B00(v2);
  *v3 = v4;
  v5 = sub_100007D94(v3);

  return sub_100112A7C(v5, v6, v7, v8, v1);
}

uint64_t sub_100116600(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005B00();
  v4(v3);
  sub_100002C00();
  v5 = sub_1000062B0();
  v6(v5);
  return a2;
}

uint64_t sub_100116658(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100002C00();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001166B0()
{
  sub_100003884();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  v9 = sub_100004B00(v8);
  *v9 = v10;
  v9[1] = sub_10006FA64;

  return sub_10010F7EC(v6, v4, v2, v7);
}

uint64_t sub_100116774()
{
  sub_100003884();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  v6 = sub_100007D94(v4);

  return sub_10010F8EC(v6, v7, v8, v9, v1, v2);
}

unint64_t sub_10011681C()
{
  result = qword_1001B8BD8;
  if (!qword_1001B8BD8)
  {
    sub_10006A614(&qword_1001B8BD0, &qword_10016F7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B8BD8);
  }

  return result;
}

uint64_t sub_100116880(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001168C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100116934(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001169A8()
{

  return FilePath.init(stringLiteral:)();
}

uint64_t OSEligibilityChecker.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_100065AC4();
  *(v0 + 112) = Dictionary.init(dictionaryLiteral:)();
  return v0;
}

uint64_t sub_100116A78(unsigned __int8 a1, char a2)
{
  v2 = 0xEE00747365757165;
  v3 = 0x5265747563657865;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x7165526575657571;
    }

    else
    {
      v5 = 0x536D726177657270;
    }

    if (v4 == 1)
    {
      v6 = 0xEC00000074736575;
    }

    else
    {
      v6 = 0xEE006E6F69737365;
    }
  }

  else
  {
    v5 = 0x5265747563657865;
    v6 = 0xEE00747365757165;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x7165526575657571;
    }

    else
    {
      v3 = 0x536D726177657270;
    }

    if (a2 == 1)
    {
      v2 = 0xEC00000074736575;
    }

    else
    {
      v2 = 0xEE006E6F69737365;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100116BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_10011859C(a4, a5);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v13 == v11 && v14 == v12)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100116CC4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x73694C776F6C6C41;
  }

  else
  {
    v3 = 0x73656963696C6F50;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000074;
  }

  if (a2)
  {
    v5 = 0x73694C776F6C6C41;
  }

  else
  {
    v5 = 0x73656963696C6F50;
  }

  if (a2)
  {
    v6 = 0xE900000000000074;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100116DB0()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BCC48);
  sub_10000641C(v0, qword_1001BCC48);
  return generalLogHandle.getter();
}

uint64_t OSEligibilityChecker.init()()
{
  swift_defaultActor_initialize();
  sub_100065AC4();
  *(v0 + 112) = Dictionary.init(dictionaryLiteral:)();
  return v0;
}

Swift::Void __swiftcall OSEligibilityChecker.prewarm(for:)(modelmanagerd::OSEligibilityDomain a1)
{
  v3 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v10[2] = 0;
  v10[3] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);
  v6._object = 0x8000000100177AD0;
  v6._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v6);
  v10[1] = a1.rawValue;
  _print_unlocked<A, B>(_:_:)();
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8 = type metadata accessor for TaskPriority();
  sub_100009BFC(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2].rawValue = 0;
  v9[3].rawValue = 0;
  v9[4].rawValue = v1;
  v9[5].rawValue = a1.rawValue;

  sub_1000652FC();
}

uint64_t sub_100116FAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100117048;

  return OSEligibilityChecker.isEligible(for:)();
}

uint64_t sub_100117048()
{
  sub_100002BAC();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100117130()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100117048;

  return sub_100116FAC();
}

uint64_t OSEligibilityChecker.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t OSEligibilityChecker.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100117250()
{
  sub_100002BAC();
  v2 = v1;
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

unint64_t sub_10011739C(uint64_t a1)
{
  v1 = a1;
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_100117458(v1, v2);
}

unint64_t sub_1001173E4()
{
  type metadata accessor for UUID();
  sub_10005F300(&qword_1001B8C00);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v0 = sub_1000055A4();

  return sub_1001174B8(v0, v1);
}

unint64_t sub_100117458(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1001174B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v14[1] = a1;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v7 = type metadata accessor for UUID();
    v8 = *(v7 - 8);
    __chkstk_darwin(v7);
    v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10, *(v3 + 48) + *(v11 + 72) * i, v7);
    sub_10005F300(&qword_1001B94A8);
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v8 + 8))(v10, v7);
    if (v12)
    {
      break;
    }
  }

  return i;
}

void sub_100117650(uint64_t a1, uint64_t a2)
{
  sub_10005E2C8(a2);
  sub_100005278();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  sub_100065020(&qword_1001B8F80, &qword_10016FB90);
  v10 = sub_100002DF8();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    goto LABEL_5;
  }

  v12 = sub_10005E2C8(a2);
  if ((v9 & 1) != (v13 & 1))
  {
LABEL_13:
    type metadata accessor for DaemonRequest(0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v8 = v12;
LABEL_5:
  v14 = *v2;
  if (v9)
  {
    *(v14[7] + 8 * v8) = a1;
    sub_100009C38();
  }

  else
  {
    sub_1001181C8(v8, a2, a1, v14);
    sub_100009C38();
  }
}

void sub_10011778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  sub_1000236F4(a3, a4);
  sub_100005278();
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  sub_100065020(&qword_1001BCD30, &qword_1001734F0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v12))
  {
    goto LABEL_5;
  }

  v18 = sub_1000236F4(a3, a4);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v6;
  if (v17)
  {
    v21 = (v20[7] + 16 * v16);
    *v21 = a1;
    v21[1] = a2;
    sub_100002EEC();
  }

  else
  {
    sub_10011820C(v16, a3, a4, a1, a2, v20);
    sub_100002EEC();
  }
}

uint64_t sub_1001178C4(char a1, Swift::UInt64 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100014804(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v9;
  v15 = v10;
  sub_100065020(&qword_1001BCD70, &qword_100173528);
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_100014804(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(v18[7] + v14) = a1 & 1;
  }

  else
  {

    return sub_100118258(v14, a2, a1 & 1, v18);
  }

  return result;
}

uint64_t sub_1001179FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000A6E0(a1, a2);
  sub_1000236F4(v7, v8);
  sub_100005278();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  sub_100065020(&qword_1001BCD58, &unk_100173508);
  if (!sub_100012874())
  {
    goto LABEL_5;
  }

  v14 = sub_1000236F4(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v4;
  if (v13)
  {
    sub_100003324((v16[7] + 40 * v12));
    sub_100009C38();

    return sub_100004A04(v17, v18);
  }

  else
  {
    sub_10011829C(v12, a2, a3, v3, v16);
    sub_100009C38();
  }
}

void sub_100117B1C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  sub_10005E448(a2, &qword_1001B8F48, &qword_10016FB30, &qword_1001B9580, &qword_1001B9588);
  sub_100005278();
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v11;
  v15 = v12;
  sub_100065020(&qword_1001BCD60, &qword_100173518);
  if (sub_100012874())
  {
    sub_10005E448(a2, &qword_1001B8F48, &qword_10016FB30, &qword_1001B9580, &qword_1001B9588);
    if ((v15 & 1) == (v17 & 1))
    {
      v14 = v16;
      goto LABEL_5;
    }

LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_5:
  v18 = *v2;
  if (v15)
  {
    type metadata accessor for RequestPriority();
    sub_100002C00();
    sub_1000058C4(*(v19 + 72));
    sub_100002EEC();

    __asm { BRAA            X3, X16 }
  }

  (*(v7 + 16))(v10, a2, v5);
  sub_10011830C(v14, v10, a1, v18);
  sub_100002EEC();
}

uint64_t sub_100117D3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t a8)
{
  v15 = sub_10000A6E0(a1, a2);
  sub_1000236F4(v15, v16);
  sub_100005278();
  if (v19)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = v17;
  v21 = v18;
  sub_100065020(a5, a6);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v9))
  {
    goto LABEL_5;
  }

  v22 = sub_1000236F4(a2, a3);
  if ((v21 & 1) != (v23 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v20 = v22;
LABEL_5:
  if (v21)
  {
    a7(0);
    sub_100002C00();
    v25 = sub_1000058C4(*(v24 + 72));

    return v26(v25);
  }

  else
  {
    sub_10011840C(v20, a2, a3, v8, *v9);
  }
}

void sub_100117EB0(uint64_t a1, uint64_t a2)
{
  sub_10011739C(a2);
  sub_100005278();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  sub_100065020(&qword_1001BCD48, &qword_1001734F8);
  v10 = sub_100002DF8();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    goto LABEL_5;
  }

  v12 = sub_10011739C(a2);
  if ((v9 & 1) != (v13 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v8 = v12;
LABEL_5:
  if (v9)
  {
    *(*(*v2 + 56) + 8 * v8) = a1;
    sub_100009C38();
  }

  else
  {
    sub_100009C38();

    sub_100118494(v15, v16, v17, v18);
  }
}

void sub_100117FB8(uint64_t a1, uint64_t a2)
{
  sub_10000A6E0(a1, a2);
  sub_1001173E4();
  sub_100005278();
  if (v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v5;
  v9 = v6;
  sub_100065020(&qword_1001BCD50, &qword_100173500);
  v10 = sub_100002DF8();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    goto LABEL_5;
  }

  v12 = sub_1001173E4();
  if ((v9 & 1) != (v13 & 1))
  {
LABEL_11:
    type metadata accessor for UUID();
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v8 = v12;
LABEL_5:
  v14 = *v3;
  if (v9)
  {
    sub_100003324((v14[7] + 40 * v8));
    sub_100009C38();

    sub_100004A04(v15, v16);
  }

  else
  {
    type metadata accessor for UUID();
    sub_100002BDC();
    __chkstk_darwin(v18);
    v20 = &v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v20, a2);
    sub_1001184D8(v8, v20, v2, v14);
    sub_100009C38();
  }
}

uint64_t sub_100118154(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100005D74(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  v10 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
  result = sub_100025E18(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = *(a5 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v14;
  }

  return result;
}

unint64_t sub_1001181C8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_10011820C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_100118258(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_10011829C(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100004A04(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_10011830C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for RequestPriority();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_10011840C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100005D74(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  v10(0);
  sub_100002C00();
  result = (*(v11 + 32))(v9 + *(v11 + 72) * a1, a4);
  v13 = *(a5 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }

  return result;
}

unint64_t sub_100118494(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1001184D8(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_100004A04(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_10011859C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1000055A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001185E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_100005D74(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

uint64_t sub_10011863C()
{
  sub_100002BAC();
  v1 = *(v0[2] + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_delayedAssetTransitionTask);
  v0[3] = v1;
  if (v1)
  {

    Task.cancel()();
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_100118744;

    return Task<>.value.getter(v2);
  }

  else
  {
    sub_100043844();
    sub_100001F00();

    return v3();
  }
}

uint64_t sub_100118744()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10011883C()
{
  sub_100002BAC();

  sub_100043844();
  sub_100001F00();

  return v0();
}

uint64_t sub_10011889C()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BCD78);
  sub_10000641C(v0, qword_1001BCD78);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10011890C()
{
  sub_100003884();

  *(v0 + 145) = 0;

  if (qword_1001B8A78 != -1)
  {
    sub_10000877C(&qword_1001B8A78);
  }

  v1 = type metadata accessor for Logger();
  sub_100002FD0(v1, qword_1001BCD78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100002F80(v3))
  {
    v4 = sub_100007648();
    sub_10000A240(v4);
    sub_100003DD0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100002F64();
  }

  sub_100004C24();
  Strong = swift_weakLoadStrong();
  *(v0 + 336) = Strong;
  if (!Strong)
  {
    sub_100005CE0();
    os_activity_scope_leave((v2 + 24));
    swift_endAccess();

    sub_100001F00();
    sub_100004CC8();

    __asm { BRAA            X1, X16 }
  }

  sub_100004CC8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100118AD0()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;

  v5 = *(v2 + 328);
  v6 = *(v2 + 264);
  if (v0)
  {
  }

  sub_10002C278(v5, &qword_1001BB3F8, &qword_100171D50);

  return _swift_task_switch(sub_100041C40, v6, 0);
}

uint64_t sub_100118C40()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  if (!v0)
  {

    v8 = sub_100002C10();

    return _swift_task_switch(v8, v9, v10);
  }

  return result;
}

uint64_t sub_100118D3C()
{
  v129 = v1;
  v3 = sub_100010EB0();
  v4 = v3;
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_25:

    Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();
    if (sub_100002F80(v100))
    {
      v101 = sub_100007648();
      sub_10000A240(v101);
      sub_100003DD0();
      _os_log_impl(v102, v103, v104, v105, v106, 2u);
      sub_100002F64();
    }

    sub_100003630();
    v107 = sub_100006348();
    v2(v107);
    sub_100003978();
    sub_100009BFC(v108, v109, v110, v0);
LABEL_28:
    v111 = sub_100006588();
    v2(v111);

    sub_100001F00();
LABEL_29:
    sub_100007968();

    return v112();
  }

LABEL_24:
  if (!sub_10001890C())
  {
    goto LABEL_25;
  }

LABEL_3:
  sub_10002CC90(v4);
  sub_100036758();
  sub_100019274();
  v8 = sub_10002D264(v5, v6, v7);
  v10 = v9;
  v119 = v0;

  v0 = *(v10 + 16);
  if (!v0)
  {
    v42 = v1;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.fault.getter();
    if (sub_100006168(v44))
    {
      v45 = sub_100007698();
      v46 = sub_1000031E0();
      v128[0] = v46;
      *v45 = 136315138;
      type metadata accessor for InferenceProviderAsset(0);
      sub_100002E08();
      sub_10002C7C4(v47, v48, &unk_1001720DC);

      v49 = Set.description.getter();
      v51 = v50;

      v52 = sub_100004A3C(v49, v51, v128);

      *(v45 + 4) = v52;
      sub_100007CF4(&_mh_execute_header, v53, v54, "All remaining assets that need transitioning have failed to unload or move to dynamic, %s");
      sub_100003324(v46);
      sub_100012A9C();
      sub_100002F64();
    }

    v55 = v1[49];
    v56 = v1[46];
    v57 = v1[47];
    type metadata accessor for ModelManagerError();
    sub_10000528C();
    sub_10002C7C4(v58, v59, &protocol conformance descriptor for ModelManagerError);
    sub_100008194();
    sub_100006098();
    (*(v60 + 104))();
    swift_willThrow();

    v2 = *(v57 + 8);
    (v2)(v55, v56);
LABEL_17:
    sub_100012894();
    v2(v42);

    sub_100001F00();
    goto LABEL_29;
  }

  v11 = v1[46];
  v4 = v1[47];
  v122 = v1[34];
  v12 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v12);
  v116 = *(v13 + 64) + 15;
  v120 = swift_task_alloc();
  sub_100003978();
  sub_100009BFC(v14, v15, v16, v11);
  v123 = v4 + 16;
  v118 = v8;

  v17 = 0;
  v124 = (v4 + 8);
  v114 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v121 = v10;
  while (1)
  {
    if (v17 >= v0)
    {
      __break(1u);
      goto LABEL_24;
    }

    sub_10000A980();
    v18 = *(v10 + 8 * v17 + 32);
    v19 = swift_task_alloc();
    v20 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v18, (v1 + 8));
    sub_10001938C(v20 + v18, v2);
    swift_task_alloc();
    v4 = sub_10000AA84();

    sub_100018A64();
    v21 = sub_100013EE0();
    v4(v21);
    v22 = sub_1000193F0(v2);
    sub_100011990(v22, v23, v24, v25, v26, v27, v28, v29, v114, v116, v118, v119, v120, v121, v122, v123, v124, v125, v126);
    v2 = *v124;
    v30 = sub_10000CDA4();
    v2(v30);

    v31 = static Date.> infix(_:_:)();

    if (v31)
    {
      break;
    }

    ++v17;
    (v2)(v19, v1[46]);

    v10 = v121;
    v0 = *(v121 + 16);
    if (v17 == v0)
    {
      v32 = v118;

      v41 = v120;
      goto LABEL_13;
    }
  }

  v61 = v1[46];
  v62 = v1[47];
  v32 = v118;

  v10 = v121;

  v41 = v120;
  sub_10002C278(v120, &qword_1001BBA80, &qword_100172440);
  (*(v62 + 32))(v120, v19, v61);
  sub_1000070D0(v120);

LABEL_13:
  v63 = v1[46];
  v64 = sub_100005FA4(v33, v34, v35, v36, v37, v38, v39, v40, v114, v116);
  sub_10002CC20(v41, v64);
  sub_100007204();
  sub_10002C278(v64, &qword_1001BBA80, &qword_100172440);

  if (v63 == 1)
  {

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v41 = sub_100007698();
      v67 = sub_1000031E0();
      v128[0] = v67;
      *v41 = 136315138;
      v68 = sub_1001196B4(v32, v10);
      v18 = v32;
      v70 = sub_100004A3C(v68, v69, v128);

      *(v41 + 4) = v70;
      sub_1000034C8(&_mh_execute_header, v71, v72, "Remaining transition candidates %s generated task wake times in the past.  Ending asset transition task");
      sub_100003324(v67);
      sub_100002BB8(v67);
      sub_100012A9C();
    }

    v42 = sub_1000076D8();
    sub_10000528C();
    sub_10002C7C4(v73, v74, &protocol conformance descriptor for ModelManagerError);
    sub_10000A418();
    sub_100006098();
    (*(v75 + 104))();
    swift_willThrow();

    (v2)(v41, v18);
    sub_10002C278(v120, &qword_1001BBA80, &qword_100172440);

    goto LABEL_17;
  }

  sub_1000082B4();
  sub_100003904();
  (v4)();
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v76, v77))
  {

    v97 = sub_10000F200();
    v2(v97);
    v98 = sub_100001F70();
    v2(v98);

    goto LABEL_22;
  }

  v78 = v1[46];
  v79 = sub_100007698();
  *v79 = 134217984;
  v80 = sub_100004BA0(v120, (v1 + 14));
  sub_100005FA4(v80, v81, v82, v83, v84, v85, v86, v87, v115, v117);
  v88 = sub_10000CDA4();
  sub_10002CC20(v88, v89);
  v90 = sub_10000205C();
  result = sub_10000C6C0(v90, v91, v78);
  if (result != 1)
  {
    v93 = sub_1000456E8();
    v94 = sub_10000F200();
    v2(v94);
    v95 = sub_100001F70();
    v2(v95);

    *(v79 + 4) = v93;
    sub_1000080F4(&_mh_execute_header, v96, v77, "Additional assets need transitioning, next task wake in %f seconds");
    sub_100002BB8(v79);

    (v2)(v127, v78);
LABEL_22:
    v99 = v1[32];
    sub_100004BA0(v120, (v1 + 11));
    sub_10002CC20(v120, v99);
    sub_10002C278(v120, &qword_1001BBA80, &qword_100172440);

    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_100119624()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000B4668;

  return sub_100025A00();
}

uint64_t sub_1001196B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  for (i = 1; v2; --v2)
  {
    v5 = *v3;

    if ((i & 1) == 0)
    {
      v6._countAndFlagsBits = 8236;
      v6._object = 0xE200000000000000;
      String.append(_:)(v6);
    }

    sub_100065020(&unk_1001BCD90, &qword_100173570);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10016FF40;
    *(v7 + 56) = type metadata accessor for InferenceProviderAsset(0);
    *(v7 + 32) = v5;

    debugPrint<A>(_:separator:terminator:to:)();

    i = 0;
    ++v3;
  }

  v8._countAndFlagsBits = 93;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 91;
}

uint64_t sub_1001197EC()
{
  sub_100001ED0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006F558;
  sub_100019274();

  return sub_100119624();
}

uint64_t sub_100119890()
{
  sub_100065020(&unk_1001BCE50, &qword_1001735B0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_1001BCDA0 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ModelManager(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ModelManager(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100119A3C()
{
  result = qword_1001BCE60;
  if (!qword_1001BCE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BCE60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GenerativeModels(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100119B40()
{
  result = qword_1001BCE68;
  if (!qword_1001BCE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BCE68);
  }

  return result;
}

uint64_t ProcessHandle.bundleIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ProcessHandle.executablePath.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

__n128 sub_100119BF4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100119C10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_100119C7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 5))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 4);
      v4 = v3 >= 5;
      v2 = v3 - 5;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_BYTE *sub_100119CC4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100119DA0()
{
  result = qword_1001BCE70;
  if (!qword_1001BCE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BCE70);
  }

  return result;
}

void *sub_100119DF4(uint64_t a1, uint64_t a2)
{
  v65 = type metadata accessor for InferenceProviderAssetDescriptor();
  v5 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v52 = a2;
    v74 = v2;
    v75 = _swiftEmptyArrayStorage;
    sub_100071060();
    v8 = v75;
    v9 = sub_10001E724();
    v11 = v10;
    v12 = a1 + 56;
    result = type metadata accessor for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion();
    v73 = 0;
    v58 = v5 + 8;
    v59 = v5 + 16;
    v60 = result;
    v14 = v9;
    v15 = *(result - 1);
    v63 = *(v15 + 64);
    v56 = v15 + 32;
    v57 = v15;
    v53 = a1 + 64;
    v54 = v7;
    v55 = a1;
    v61 = v5;
    v62 = a1 + 56;
    while (1)
    {
      result = __chkstk_darwin(result);
      v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      if ((v14 & 0x8000000000000000) != 0 || v14 >= v17 << *(a1 + 32))
      {
        break;
      }

      if ((*(v12 + 8 * (v14 >> 6)) & (v17 << v14)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v16)
      {
        goto LABEL_27;
      }

      v66 = v17 << v14;
      v67 = v14 >> 6;
      v69 = v16;
      v70 = v18;
      v71 = v11;
      v21 = *(a1 + 48);
      v22 = *(v5 + 72);
      v68 = v14;
      v23 = v21 + v22 * v14;
      v24 = *(v5 + 16);
      v72 = v8;
      v26 = v64;
      v25 = v65;
      v24(v64, v23, v65);
      v27 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
      v29 = v28;
      v36 = InferenceProviderAssetDescriptor.version.getter(v27, v28, v30, v31, v32, v33, v34, v35, v52, v53, v54, v55);
      v38 = v37;
      v39 = __chkstk_darwin(v36);
      *(&v52 - 4) = v27;
      *(&v52 - 3) = v29;
      *(&v52 - 2) = v39;
      *(&v52 - 1) = v38;
      v40 = v60;
      v41 = v74;
      static Buildable.with(_:)();
      v74 = v41;
      v5 = v61;

      v42 = v26;
      v8 = v72;
      (*(v5 + 8))(v42, v25);
      v75 = v8;
      v43 = v8[2];
      if (v43 >= v8[3] >> 1)
      {
        sub_100071060();
        v8 = v75;
      }

      v8[2] = v43 + 1;
      result = (*(v57 + 32))(v8 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v43, v20, v40);
      v12 = v62;
      if (v71)
      {
        goto LABEL_31;
      }

      v44 = v54;
      a1 = v55;
      v14 = 1 << *(v55 + 32);
      result = v68;
      if (v68 >= v14)
      {
        goto LABEL_28;
      }

      v45 = *(v62 + 8 * v67);
      if ((v45 & v66) == 0)
      {
        goto LABEL_29;
      }

      if (*(v55 + 36) != v69)
      {
        goto LABEL_30;
      }

      v46 = v45 & (-2 << (v68 & 0x3F));
      if (v46)
      {
        v14 = __clz(__rbit64(v46)) | v68 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v47 = v67 << 6;
        v48 = v67 + 1;
        v49 = (v53 + 8 * v67);
        while (v48 < (v14 + 63) >> 6)
        {
          v51 = *v49++;
          v50 = v51;
          v47 += 64;
          ++v48;
          if (v51)
          {
            result = sub_100016E94(v68, v69, 0);
            v14 = __clz(__rbit64(v50)) + v47;
            goto LABEL_20;
          }
        }

        result = sub_100016E94(v68, v69, 0);
      }

LABEL_20:
      if (v73 + 1 == v44)
      {

        return v8;
      }

      ++v73;
      v11 = 0;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}