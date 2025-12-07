uint64_t specialized MOProcessingServer.keepProcessUp()()
{
  v1 = type metadata accessor for ContinuousClock();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.keepProcessUp(), 0, 0);
}

{
  v0[9] = type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[keepProcessUp] keeping MomentsUIService up for 300 seconds.", v3, 2u);
  }

  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];

  v7 = *(v6 + 8);
  v0[10] = v7;
  v7(v4, v5);
  v8 = static Duration.seconds(_:)();
  v10 = v9;
  static Clock<>.continuous.getter();
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = specialized MOProcessingServer.keepProcessUp();

  return specialized Clock.sleep(for:tolerance:)(v8, v10, 0, 0, 1);
}

{
  v2 = *v1;

  v3 = v2[4];
  v4 = v2[3];
  v5 = v2[2];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = specialized MOProcessingServer.keepProcessUp();
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = specialized MOProcessingServer.keepProcessUp();
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t specialized MOProcessingServer.keepProcessUp()(uint64_t a1)
{
  static CommonLogger.processing.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[keepProcessUp] exiting after 300 seconds.", v4, 2u);
  }

  v5 = v1[10];
  v6 = v1[7];
  v7 = v1[5];

  v5(v6, v7);

  v8 = v1[1];

  return v8();
}

uint64_t specialized MOProcessingServer.keepUIActive()()
{
  v1 = type metadata accessor for ContinuousClock();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v0[9] = v3;
  v0[10] = *(v3 - 8);
  v0[11] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.keepUIActive(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 96) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  UUID.init()();
  *(v0 + 104) = type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[keepUIActive] keeping MomentsUIService up for 300 seconds with UIActive retention.", v4, 2u);
  }

  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);

  (*(v10 + 8))(v8, v9);
  *(v0 + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  *(v0 + 120) = *(v6 + 72);
  v11 = *(v6 + 80);
  *(v0 + 184) = v11;
  v12 = (v11 + 32) & ~v11;
  v13 = swift_allocObject();
  *(v0 + 128) = v13;
  *(v13 + 16) = xmmword_1002A48B0;
  v14 = *(v6 + 16);
  *(v0 + 136) = v14;
  *(v0 + 144) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v13 + v12, v5, v7);
  v15 = swift_task_alloc();
  *(v0 + 152) = v15;
  *v15 = v0;
  v15[1] = specialized MOProcessingServer.keepUIActive();

  return CloudManager.retainUIActive(_:_:_:)(v13, "keepUIActive()", 14, 2, 114);
}

{

  return _swift_task_switch(specialized MOProcessingServer.keepUIActive(), 0, 0);
}

{
  v2 = *v1;

  v3 = v2[4];
  v4 = v2[3];
  v5 = v2[2];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = specialized MOProcessingServer.keepUIActive();
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = specialized MOProcessingServer.keepUIActive();
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = (*(v0 + 184) + 32) & ~*(v0 + 184);
  v5 = swift_allocObject();
  *(v0 + 168) = v5;
  *(v5 + 16) = xmmword_1002A48B0;
  v1(v5 + v4, v2, v3);
  v6 = swift_task_alloc();
  *(v0 + 176) = v6;
  *v6 = v0;
  v6[1] = specialized MOProcessingServer.keepUIActive();

  return CloudManager.releaseUIActive(_:_:_:)(v5, "keepUIActive()", 14, 2, 116);
}

{

  return _swift_task_switch(specialized MOProcessingServer.keepUIActive(), 0, 0);
}

uint64_t specialized MOProcessingServer.keepUIActive()(uint64_t a1)
{
  v2 = static Duration.seconds(_:)();
  v4 = v3;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v1 + 160) = v5;
  *v5 = v1;
  v5[1] = specialized MOProcessingServer.keepUIActive();

  return specialized Clock.sleep(for:tolerance:)(v2, v4, 0, 0, 1);
}

{
  static CommonLogger.processing.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[keepUIActive] exiting after 300 seconds.", v4, 2u);
  }

  v5 = v1[11];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[7];
  v9 = v1[5];
  v10 = v1[6];

  (*(v10 + 8))(v8, v9);
  (*(v7 + 8))(v5, v6);

  v11 = v1[1];

  return v11();
}

uint64_t specialized MOProcessingServer.testInjectBadRecordChange()()
{
  v1 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.testInjectBadRecordChange(), 0, 0);
}

{
  v0[9] = type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[testInjectBadRecordChange] Injecting bad record change to test infinite loop fix", v3, 2u);
  }

  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  v10 = *(v6 + 8);
  v0[10] = v10;
  v10(v4, v5);
  type metadata accessor for MomentsUIManager();
  v11 = static MomentsUIManager.shared.getter();
  v0[11] = dispatch thunk of MomentsUIManager.cloudManager.getter();

  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for CKRecordZoneID, CKRecordZoneID_ptr);
  v12._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12._object = v13;
  v14._countAndFlagsBits = 0x5A74736554646142;
  v14._object = 0xEB00000000656E6FLL;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v14, v12).super.isa;
  v0[12] = isa;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for CKRecordID, CKRecordID_ptr);
  v16 = isa;
  v17._countAndFlagsBits = 0x5274736554646142;
  v17._object = 0xED000064726F6365;
  v18 = CKRecordID.init(recordName:zoneID:)(v17, v16).super.isa;
  v0[13] = v18;
  *v7 = v18;
  (*(v8 + 104))(v7, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd, &_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMR);
  v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v20 = swift_allocObject();
  v0[14] = v20;
  *(v20 + 16) = xmmword_1002A48B0;
  (*(v8 + 16))(v20 + v19, v7, v9);
  v21 = v18;
  v22 = swift_task_alloc();
  v0[15] = v22;
  *v22 = v0;
  v22[1] = specialized MOProcessingServer.testInjectBadRecordChange();

  return CloudManager.add(pendingRecordZoneChanges:_:_:)(v20, 0xD00000000000001BLL, 0x80000001002B9C90, 133);
}

{

  return _swift_task_switch(specialized MOProcessingServer.testInjectBadRecordChange(), 0, 0);
}

uint64_t specialized MOProcessingServer.testInjectBadRecordChange()(uint64_t a1)
{
  static CommonLogger.processing.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[testInjectBadRecordChange] Successfully injected bad record change with invalid zone", v4, 2u);
  }

  v6 = v1[12];
  v5 = v1[13];
  v7 = v1[7];
  v14 = v1[10];
  v8 = v1[5];
  v10 = v1[3];
  v9 = v1[4];
  v11 = v1[2];

  v14(v7, v8);
  (*(v10 + 8))(v9, v11);

  v12 = v1[1];

  return v12(0);
}

uint64_t specialized MOProcessingServer.runFullProcessing()()
{
  return _swift_task_switch(specialized MOProcessingServer.runFullProcessing(), 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v0 + 48) = *(static MOPresenterServer.shared + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_session);

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = specialized MOProcessingServer.runFullProcessing();

  return specialized MOBundleProcessingSession.runFullProcessing(triggerRefresh:)();
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = specialized MOProcessingServer.runFullProcessing();
  }

  else
  {
    v2 = specialized MOProcessingServer.runFullProcessing();
  }

  return _swift_task_switch(v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1(0);
}

{
  v13 = v0;

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static MOAngelLogger.shared);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v9 = *(v0 + 64);
  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t specialized MOProcessingServer.databaseWipe()()
{
  return _swift_task_switch(specialized MOProcessingServer.databaseWipe(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 16) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = specialized MOProcessingServer.databaseWipe();

  return CloudManager.getDBManager()();
}

{
  if (*(v0 + 32))
  {
    type metadata accessor for DBManager();
    lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type DBManager and conformance DBManager, &type metadata accessor for DBManager, &protocol conformance descriptor for DBManager);

    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(specialized MOProcessingServer.databaseWipe(), v2, v1);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3(0);
  }
}

{
  dispatch thunk of DBManager.deleteAll()();
  *(v0 + 40) = 0;

  return _swift_task_switch(specialized MOProcessingServer.databaseWipe(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1(0);
}

{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t specialized MOProcessingServer.databaseWipe()(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(specialized MOProcessingServer.databaseWipe(), 0, 0);
}

uint64_t specialized MOProcessingServer.databaseSnapshotList()()
{
  v1 = type metadata accessor for Logger();
  v0[8] = v1;
  v0[9] = *(v1 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.databaseSnapshotList(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 88) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = specialized MOProcessingServer.databaseSnapshotList();

  return CloudManager.getDBManager()();
}

{
  v22 = v0;
  if (v0[13])
  {
    v0[14] = type metadata accessor for MainActor();

    v0[15] = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(specialized MOProcessingServer.databaseSnapshotList(), v2, v1);
  }

  else
  {
    _StringGuts.grow(_:)(23);

    v20 = 0xD000000000000011;
    v21 = 0x80000001002B9C50;
    outlined consume of (String?, UInt64, UInt64?)?(0, 1);
    v3._countAndFlagsBits = 7104878;
    v3._object = 0xE300000000000000;
    String.append(_:)(v3);

    v4._countAndFlagsBits = 46;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);
    v0[7] = -1;
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6._countAndFlagsBits = 10;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);

    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    String.append(_:)(v7);

    v8 = v20;
    v9 = v21;
    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[10];
    v15 = v0[8];
    v14 = v0[9];
    if (v12)
    {
      v19 = v0[10];
      v16 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v16 = 136446466;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x80000001002B9C70, &v20);
      *(v16 + 12) = 2080;
      *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v20);
      _os_log_impl(&_mh_execute_header, v10, v11, "MOProcessingServer.%{public}s result = %s", v16, 0x16u);
      swift_arrayDestroy();

      (*(v14 + 8))(v19, v15);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    v17 = v0[1];

    return v17(v8, v9);
  }
}

{

  *(v0 + 128) = dispatch thunk of DBManager.mainWriter.getter();

  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = specialized MOProcessingServer.databaseSnapshotList();

  return DBWriter.latestSnapshotSequenceWithGeneration()(v0 + 16);
}

{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(v2 + 152) = *(v2 + 16);
  *(v2 + 144) = v0;
  *(v2 + 168) = v3;
  *(v2 + 49) = *(v2 + 48);

  if (v0)
  {
    v4 = specialized MOProcessingServer.databaseSnapshotList();
  }

  else
  {

    v4 = specialized MOProcessingServer.databaseSnapshotList();
  }

  return _swift_task_switch(v4, 0, 0);
}

{

  *(v0 + 184) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(specialized MOProcessingServer.databaseSnapshotList(), v2, v1);
}

{

  *(v0 + 192) = dispatch thunk of DBManager.mainWriter.getter();

  return _swift_task_switch(specialized MOProcessingServer.databaseSnapshotList(), 0, 0);
}

{
  v1 = v0[18];

  v0[26] = DBWriter.latestSnapshots()();
  v0[27] = v1;

  if (v1)
  {

    v2 = specialized MOProcessingServer.databaseSnapshotList();
  }

  else
  {
    v2 = specialized MOProcessingServer.databaseSnapshotList();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v41 = v0;
  v2 = *(v0 + 208);
  v37 = 0xE000000000000000;
  if (v2 >> 62)
  {
LABEL_14:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v34[26];
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v2;
    if (v3)
    {
LABEL_3:
      v5 = 0;
      v6 = v2 & 0xC000000000000001;
      v7 = v2 & 0xFFFFFFFFFFFFFF8;
      v8 = v4 + 32;
      v2 = 0xE000000000000000;
      while (1)
      {
        if (v6)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_11:
            __break(1u);
LABEL_12:
            v11 = v34;
            goto LABEL_16;
          }
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            __break(1u);
            goto LABEL_14;
          }

          v9 = *(v8 + 8 * v5);

          v10 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_11;
          }
        }

        v38 = v9;
        closure #1 in MOProcessingServer.databaseSnapshotList()(&v36, &v39);

        v1 = v39;
        v2 = v40;
        v36 = v39;
        v37 = v40;
        ++v5;
        if (v10 == v3)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v1 = 0;
  v2 = 0xE000000000000000;
  v11 = v34;
LABEL_16:

  v12 = v11[21];
  v14 = v11[19];
  v13 = v11[20];
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v39 = 0xD000000000000011;
  v40 = 0x80000001002B9C50;
  if (v13 >= 2)
  {

    v16 = v14;
    v15 = v13;
  }

  else
  {
    outlined consume of (String?, UInt64, UInt64?)?(v14, v13);
    v15 = 0xE300000000000000;
    v16 = 7104878;
  }

  v17 = v15;
  String.append(_:)(*&v16);

  v18._countAndFlagsBits = 46;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  if (v13 == 1)
  {
    v12 = -1;
  }

  else
  {
    outlined consume of (String?, UInt64, UInt64?)?(v14, v13);
  }

  v11[7] = v12;
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 10;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  if (v2)
  {
    v21 = v1;
  }

  else
  {
    v21 = 0;
  }

  if (!v2)
  {
    v2 = 0xE000000000000000;
  }

  v22._countAndFlagsBits = v21;
  v22._object = v2;
  String.append(_:)(v22);

  v23 = v39;
  v24 = v40;
  type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v11[10];
  v30 = v11[8];
  v29 = v11[9];
  if (v27)
  {
    v35 = v11[8];
    v31 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v31 = 136446466;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x80000001002B9C70, &v39);
    *(v31 + 12) = 2080;
    *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v39);
    _os_log_impl(&_mh_execute_header, v25, v26, "MOProcessingServer.%{public}s result = %s", v31, 0x16u);
    swift_arrayDestroy();

    (*(v29 + 8))(v28, v35);
  }

  else
  {

    (*(v29 + 8))(v28, v30);
  }

  v32 = v11[1];

  return v32(v23, v24);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized MOProcessingServer.databaseSnapshotList()(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return _swift_task_switch(specialized MOProcessingServer.databaseSnapshotList(), 0, 0);
}

{
  *(v1 + 200) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(specialized MOProcessingServer.databaseSnapshotList(), v3, v2);
}

uint64_t specialized MOProcessingServer.deviceList()()
{
  v1 = type metadata accessor for CharacterSet();
  v0[8] = v1;
  v0[9] = *(v1 - 8);
  v0[10] = swift_task_alloc();
  v2 = type metadata accessor for CloudDevice.Capability();
  v0[11] = v2;
  v0[12] = *(v2 - 8);
  v0[13] = swift_task_alloc();
  v0[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSg_ADtMd, &_s9MomentsUI11CloudDeviceVSg_ADtMR);
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v3 = type metadata accessor for CloudManagerAccountState();
  v0[17] = v3;
  v0[18] = *(v3 - 8);
  v0[19] = swift_task_alloc();
  v4 = type metadata accessor for CloudDevice();
  v0[20] = v4;
  v0[21] = *(v4 - 8);
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v0[25] = v5;
  v0[26] = *(v5 - 8);
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI24CloudManagerAccountStateOSgMd, &_s9MomentsUI24CloudManagerAccountStateOSgMR);
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.deviceList(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 296) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 304) = v2;
  *v2 = v0;
  v2[1] = specialized MOProcessingServer.deviceList();

  return CloudManager.getDeviceDB()();
}

{
  if (v0[39])
  {
    v1 = swift_task_alloc();
    v0[40] = v1;
    *v1 = v0;
    v1[1] = specialized MOProcessingServer.deviceList();
    v2 = v0[36];

    return CloudManager.getAccountState()(v2);
  }

  else
  {

    v3 = v0[1];

    return v3(0, 0xE000000000000000);
  }
}

{

  return _swift_task_switch(specialized MOProcessingServer.deviceList(), 0, 0);
}

{
  type metadata accessor for CloudManager();
  v0[41] = static CloudManager.currentID.getter();
  v0[42] = v1;
  type metadata accessor for CloudDevicesDB();
  lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, &type metadata accessor for CloudDevicesDB, &protocol conformance descriptor for CloudDevicesDB);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[43] = v3;
  v0[44] = v2;

  return _swift_task_switch(specialized MOProcessingServer.deviceList(), v3, v2);
}

{
  CloudDevicesDB.primaryDevice.getter();
  CloudDevicesDB.nominatedDevice.getter();

  return _swift_task_switch(specialized MOProcessingServer.deviceList(), 0, 0);
}

{
  v17 = v0;
  v0[45] = type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[41];
    v3 = v0[42];
    v5 = v0[28];
    v6 = v0[25];
    v7 = v0[26];
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x694C656369766564, 0xEC00000029287473, &v16);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v16);
    _os_log_impl(&_mh_execute_header, v1, v2, "MOProcessingServer.%{public}s currentDeviceID = %s", v8, 0x16u);
    swift_arrayDestroy();

    v9 = *(v7 + 8);
    v9(v5, v6);
  }

  else
  {
    v10 = v0[28];
    v11 = v0[25];
    v12 = v0[26];

    v9 = *(v12 + 8);
    v9(v10, v11);
  }

  v0[46] = v9;
  v13 = v0[43];
  v14 = v0[44];

  return _swift_task_switch(specialized MOProcessingServer.deviceList(), v13, v14);
}

{
  *(v0 + 376) = dispatch thunk of CloudDevicesDB.devices.getter();

  return _swift_task_switch(specialized MOProcessingServer.deviceList(), 0, 0);
}

uint64_t specialized MOProcessingServer.deviceList()(uint64_t a1)
{
  *(*v1 + 312) = a1;

  return _swift_task_switch(specialized MOProcessingServer.deviceList(), 0, 0);
}

void specialized MOProcessingServer.deviceList()()
{
  v193 = v0;
  v1 = 0;
  v2 = v0[47];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v171 = v0[47];
  v7 = -1 << *(v171 + 32);
  v8 = v0[21];
  v9 = v0[18];
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v10 = v6 & v3;
  v179 = v0[14];
  v11 = (63 - v7) >> 6;
  v167 = (v9 + 48);
  v163 = (v9 + 8);
  v164 = (v9 + 32);
  v178 = (v8 + 56);
  v173 = (v8 + 48);
  v169 = v0[21];
  v180 = (v8 + 8);
  v165 = v0[12];
  v12 = _swiftEmptyArrayStorage;
  v166 = (v0[9] + 8);
  v170 = v4;
  v168 = v11;
  if ((v6 & v3) != 0)
  {
    while (1)
    {
      v183 = v10;
LABEL_9:
      v15 = v0[23];
      v14 = v0[24];
      v16 = v0[20];
      v176 = v1;
      v181 = v169[2];
      v181(v14, *(v171 + 56) + v169[9] * (__clz(__rbit64(v183)) | (v1 << 6)), v16);
      v172 = v169[4];
      v172(v15, v14, v16);
      v17 = CloudDevice.systemIdiomString.getter();
      v19 = v18;
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      v23 = v20;
      if (v22 >= v21 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v20);
      }

      v25 = v0[41];
      v24 = v0[42];
      *(v23 + 2) = v22 + 1;
      v26 = v23;
      v27 = &v23[2 * v22];
      *(v27 + 4) = v17;
      *(v27 + 5) = v19;
      if (CloudDevice.id.getter() == v25 && v28 == v24)
      {

        v29 = v173;
      }

      else
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v29 = v173;
        if ((v30 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v32 = *(v26 + 2);
      v31 = *(v26 + 3);
      if (v32 >= v31 >> 1)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v26);
      }

      v34 = v0[35];
      v33 = v0[36];
      v35 = v0[17];
      *(v26 + 2) = v32 + 1;
      v36 = &v26[2 * v32];
      v36[4] = 2.09263991e262;
      v36[5] = -2.56842574e207;
      outlined init with copy of (String, Date?)(v33, v34, &_s9MomentsUI24CloudManagerAccountStateOSgMd, &_s9MomentsUI24CloudManagerAccountStateOSgMR);
      if ((*v167)(v34, 1, v35) == 1)
      {
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[35], &_s9MomentsUI24CloudManagerAccountStateOSgMd, &_s9MomentsUI24CloudManagerAccountStateOSgMR);
      }

      else
      {
        (*v164)(v0[19], v0[35], v0[17]);
        v192._countAndFlagsBits = 46;
        v192._object = 0xE100000000000000;
        v37._countAndFlagsBits = CloudManagerAccountState.rawValue.getter();
        String.append(_:)(v37);

        v39 = *(v26 + 2);
        v38 = *(v26 + 3);
        if (v39 >= v38 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v26);
        }

        (*v163)(v0[19], v0[17]);
        *(v26 + 2) = v39 + 1;
        v40 = &v26[2 * v39];
        *(v40 + 4) = 46;
        v40[5] = -1.7573882e159;
        v29 = v173;
      }

LABEL_22:
      if (CloudDevice.onboarded.getter())
      {
        v42 = *(v26 + 2);
        v41 = *(v26 + 3);
        if (v42 >= v41 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v26);
        }

        *(v26 + 2) = v42 + 1;
        v184 = v26;
        v43 = &v26[2 * v42];
        v43[4] = 2.65138474e180;
        v43[5] = -5.98008217e197;
      }

      else
      {
        v184 = v26;
      }

      v44 = v0[34];
      v45 = v0[32];
      v46 = v0[20];
      v47 = v0[16];
      v181(v45, v0[23], v46);
      v174 = *v178;
      (*v178)(v45, 0, 1, v46);
      v48 = *(v179 + 48);
      outlined init with copy of (String, Date?)(v45, v47, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      outlined init with copy of (String, Date?)(v44, v47 + v48, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v49 = *v29;
      v50 = (*v29)(v47, 1, v46);
      v51 = v0[20];
      v177 = v12;
      v175 = v49;
      if (v50 == 1)
      {
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[32], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        v52 = v49(v47 + v48, 1, v51);
        v53 = v174;
        if (v52 != 1)
        {
          goto LABEL_32;
        }

        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[16], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
LABEL_34:
        v64 = *(v184 + 2);
        v63 = *(v184 + 3);
        if (v64 >= v63 >> 1)
        {
          v184 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v184);
        }

        *(v184 + 2) = v64 + 1;
        v65 = &v184[2 * v64];
        v65[4] = 2.2648403e-306;
        v65[5] = -1.39234638e188;
        goto LABEL_37;
      }

      outlined init with copy of (String, Date?)(v0[16], v0[31], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v54 = v49(v47 + v48, 1, v51);
      v55 = v0[31];
      v56 = v0[32];
      if (v54 == 1)
      {
        v57 = v0[20];
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[32], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        (*v180)(v55, v57);
        v53 = v174;
LABEL_32:
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[16], &_s9MomentsUI11CloudDeviceVSg_ADtMd, &_s9MomentsUI11CloudDeviceVSg_ADtMR);
        goto LABEL_37;
      }

      v58 = v0[22];
      v59 = v0[20];
      v162 = v0[16];
      v172(v58, v47 + v48, v59);
      lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevice and conformance CloudDevice, &type metadata accessor for CloudDevice, &protocol conformance descriptor for CloudDevice);
      v60 = dispatch thunk of static Equatable.== infix(_:_:)();
      v61 = *v180;
      (*v180)(v58, v59);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v56, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v62 = v59;
      v12 = v177;
      v61(v55, v62);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v162, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v53 = v174;
      if (v60)
      {
        goto LABEL_34;
      }

LABEL_37:
      v66 = v0[33];
      v67 = v0[30];
      v68 = v0[20];
      v69 = v0[15];
      v181(v67, v0[23], v68);
      v53(v67, 0, 1, v68);
      v70 = *(v179 + 48);
      outlined init with copy of (String, Date?)(v67, v69, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      outlined init with copy of (String, Date?)(v66, v69 + v70, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v71 = v175(v69, 1, v68);
      v72 = v0[20];
      if (v71 == 1)
      {
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[30], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        if (v175(v69 + v70, 1, v72) == 1)
        {
          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[15], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
LABEL_45:
          v77 = v184;
          v83 = *(v184 + 2);
          v82 = *(v184 + 3);
          if (v83 >= v82 >> 1)
          {
            v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v184);
          }

          *(v77 + 2) = v83 + 1;
          v84 = &v77[2 * v83];
          v84[4] = 5.28559873e180;
          v84[5] = -5.98008217e197;
          goto LABEL_48;
        }

        goto LABEL_42;
      }

      outlined init with copy of (String, Date?)(v0[15], v0[29], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v73 = v175(v69 + v70, 1, v72);
      v74 = v0[29];
      v75 = v0[30];
      if (v73 == 1)
      {
        v76 = v0[20];
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[30], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        (*v180)(v74, v76);
        v12 = v177;
LABEL_42:
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[15], &_s9MomentsUI11CloudDeviceVSg_ADtMd, &_s9MomentsUI11CloudDeviceVSg_ADtMR);
        goto LABEL_43;
      }

      v78 = v0[22];
      v79 = v0[20];
      v182 = v0[15];
      v172(v78, v69 + v70, v79);
      lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevice and conformance CloudDevice, &type metadata accessor for CloudDevice, &protocol conformance descriptor for CloudDevice);
      v80 = dispatch thunk of static Equatable.== infix(_:_:)();
      v81 = *v180;
      (*v180)(v78, v79);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v75, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v81(v74, v79);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v182, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v12 = v177;
      if (v80)
      {
        goto LABEL_45;
      }

LABEL_43:
      v77 = v184;
LABEL_48:
      v85 = CloudDevice.snapshotGeneration.getter();
      if (v86)
      {
        v192._countAndFlagsBits = 1030645095;
        v192._object = 0xE400000000000000;
        specialized Collection.prefix(_:)(8, v85, v86);

        v87 = static String._fromSubstring(_:)();
        v89 = v88;

        v90._countAndFlagsBits = v87;
        v90._object = v89;
        String.append(_:)(v90);

        v92 = *(v77 + 2);
        v91 = *(v77 + 3);
        if (v92 >= v91 >> 1)
        {
          v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v77);
        }

        *(v77 + 2) = v92 + 1;
        v93 = &v77[2 * v92];
        *(v93 + 4) = 1030645095;
        v93[5] = -4.94660803e173;
      }

      v94 = CloudDevice.deviceCapabilities.getter();
      if (v94)
      {
        v95 = v12;
        v192._countAndFlagsBits = 0;
        v192._object = 0xE000000000000000;
        v96 = *(v94 + 16);
        if (v96)
        {
          v185 = v77;
          v97 = v94;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v96, 0);
          v98 = v97 + ((*(v165 + 80) + 32) & ~*(v165 + 80));
          v99 = *(v165 + 72);
          v100 = *(v165 + 16);
          do
          {
            v101 = v0[13];
            v102 = v0[11];
            v100(v101, v98, v102);
            v0[4] = 0;
            v0[5] = 0xE000000000000000;
            _print_unlocked<A, B>(_:_:)();
            v104 = v0[4];
            v103 = v0[5];
            (*(v165 + 8))(v101, v102);
            v106 = _swiftEmptyArrayStorage[2];
            v105 = _swiftEmptyArrayStorage[3];
            if (*&v106 >= *&v105 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((*&v105 > 1uLL), *&v106 + 1, 1);
            }

            *&_swiftEmptyArrayStorage[2] = *&v106 + 1;
            v107 = &_swiftEmptyArrayStorage[2 * *&v106];
            *(v107 + 4) = v104;
            *(v107 + 5) = v103;
            v98 += v99;
            --v96;
          }

          while (v96);

          v12 = v177;
          v77 = v185;
        }

        else
        {

          v12 = v95;
        }

        v108 = Array.description.getter();
        v110 = v109;

        v111._countAndFlagsBits = v108;
        v111._object = v110;
        String.append(_:)(v111);

        countAndFlagsBits = v192._countAndFlagsBits;
        object = v192._object;
        v115 = *(v77 + 2);
        v114 = *(v77 + 3);
        if (v115 >= v114 >> 1)
        {
          v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1, v77);
        }

        *(v77 + 2) = v115 + 1;
        v116 = &v77[2 * v115];
        *(v116 + 4) = countAndFlagsBits;
        *(v116 + 5) = object;
      }

      v192._countAndFlagsBits = 0;
      v192._object = 0xE000000000000000;
      v117 = CloudDevice.name.getter();
      if (v118)
      {
        v119 = v118;
      }

      else
      {
        v117 = 0x6E776F6E6B6E553CLL;
        v119 = 0xE90000000000003ELL;
      }

      v120 = v119;
      String.append(_:)(*&v117);

      v191 = v192;
      v121 = CloudDevice.deviceID.getter();
      if (v122)
      {
        v192._countAndFlagsBits = 46;
        v192._object = 0xE100000000000000;
        specialized Collection.prefix(_:)(8, v121, v122);

        v123 = static String._fromSubstring(_:)();
        v125 = v124;

        v126._countAndFlagsBits = v123;
        v126._object = v125;
        String.append(_:)(v126);

        v127._countAndFlagsBits = 46;
        v127._object = 0xE100000000000000;
        String.append(_:)(v127);
      }

      v128 = CloudDevice.bundleID.getter();
      if (v129)
      {
        v130 = v0[10];
        v131 = v0[8];
        v0[2] = v128;
        v0[3] = v129;
        static CharacterSet.punctuationCharacters.getter();
        lazy protocol witness table accessor for type String and conformance String();
        v132 = StringProtocol.components(separatedBy:)();
        (*v166)(v130, v131);

        v133 = *(v132 + 16);
        if (v133)
        {
          v134 = (v132 + 16 + 16 * v133);
          v135 = *v134;
          v136 = v134[1];

          v137._countAndFlagsBits = v135;
          v137._object = v136;
          String.append(_:)(v137);

          v138._countAndFlagsBits = 46;
          v138._object = 0xE100000000000000;
          String.append(_:)(v138);
        }
      }

      v192._countAndFlagsBits = 10272;
      v192._object = 0xE200000000000000;
      v0[6] = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, &protocol conformance descriptor for [A]);
      v139 = BidirectionalCollection<>.joined(separator:)();
      v141 = v140;

      v142._countAndFlagsBits = v139;
      v142._object = v141;
      String.append(_:)(v142);

      v143._countAndFlagsBits = 41;
      v143._object = 0xE100000000000000;
      String.append(_:)(v143);
      String.append(_:)(v192);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v145 = *(v12 + 2);
      v144 = *(v12 + 3);
      if (v145 >= v144 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v144 > 1), v145 + 1, 1, v12);
      }

      v10 = (v183 - 1) & v183;
      (*v180)(v0[23], v0[20]);
      *(v12 + 2) = v145 + 1;
      *&v12[2 * v145 + 4] = v191;
      v1 = v176;
      v4 = v170;
      v11 = v168;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v13 >= v11)
    {
      break;
    }

    ++v1;
    if (*(v4 + 8 * v13))
    {
      v183 = *(v4 + 8 * v13);
      v1 = v13;
      goto LABEL_9;
    }
  }

  static CommonLogger.processing.getter();
  v146 = Logger.logObject.getter();
  v147 = static os_log_type_t.default.getter();
  v148 = os_log_type_enabled(v146, v147);
  v149 = v0[46];
  v150 = v0[27];
  v151 = v0[25];
  if (v148)
  {
    v189 = v0[27];
    v152 = swift_slowAlloc();
    v192._countAndFlagsBits = swift_slowAlloc();
    *v152 = 136446466;
    *(v152 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x694C656369766564, 0xEC00000029287473, &v192._countAndFlagsBits);
    *(v152 + 12) = 2080;

    v187 = v149;
    v153 = Array.description.getter();
    v155 = v154;

    v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v155, &v192._countAndFlagsBits);

    *(v152 + 14) = v156;
    _os_log_impl(&_mh_execute_header, v146, v147, "MOProcessingServer.%{public}s result = %s", v152, 0x16u);
    swift_arrayDestroy();

    v187(v189, v151);
  }

  else
  {

    v149(v150, v151);
  }

  v186 = v0[36];
  v158 = v0[33];
  v157 = v0[34];
  v0[7] = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, &protocol conformance descriptor for [A]);
  v159 = BidirectionalCollection<>.joined(separator:)();
  v188 = v160;
  v190 = v159;

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v158, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v157, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v186, &_s9MomentsUI24CloudManagerAccountStateOSgMd, &_s9MomentsUI24CloudManagerAccountStateOSgMR);

  v161 = v0[1];

  v161(v190, v188);
}

uint64_t specialized MOProcessingServer.deviceListJSON()()
{
  type metadata accessor for String.Encoding();
  v0[107] = swift_task_alloc();
  v1 = type metadata accessor for CloudDevice.Capability();
  v0[108] = v1;
  v0[109] = *(v1 - 8);
  v0[110] = swift_task_alloc();
  v0[111] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSg_ADtMd, &_s9MomentsUI11CloudDeviceVSg_ADtMR);
  v0[112] = swift_task_alloc();
  v0[113] = swift_task_alloc();
  v2 = type metadata accessor for CloudDevice();
  v0[114] = v2;
  v0[115] = *(v2 - 8);
  v0[116] = swift_task_alloc();
  v0[117] = swift_task_alloc();
  v0[118] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v0[119] = v3;
  v0[120] = *(v3 - 8);
  v0[121] = swift_task_alloc();
  v0[122] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v0[123] = swift_task_alloc();
  v0[124] = swift_task_alloc();
  v0[125] = swift_task_alloc();
  v0[126] = swift_task_alloc();
  v0[127] = swift_task_alloc();
  v0[128] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI24CloudManagerAccountStateOSgMd, &_s9MomentsUI24CloudManagerAccountStateOSgMR);
  v0[129] = swift_task_alloc();
  v0[130] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.deviceListJSON(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 1048) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 1056) = v2;
  *v2 = v0;
  v2[1] = specialized MOProcessingServer.deviceListJSON();

  return CloudManager.getDeviceDB()();
}

{
  if (v0[133])
  {
    v1 = swift_task_alloc();
    v0[134] = v1;
    *v1 = v0;
    v1[1] = specialized MOProcessingServer.deviceListJSON();
    v2 = v0[130];

    return CloudManager.getAccountState()(v2);
  }

  else
  {

    v3 = v0[1];

    return v3(0, 0xE000000000000000);
  }
}

{

  return _swift_task_switch(specialized MOProcessingServer.deviceListJSON(), 0, 0);
}

{
  type metadata accessor for CloudManager();
  v0[135] = static CloudManager.currentID.getter();
  v0[136] = v1;
  type metadata accessor for CloudDevicesDB();
  lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, &type metadata accessor for CloudDevicesDB, &protocol conformance descriptor for CloudDevicesDB);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[137] = v2;
  v0[138] = v3;

  return _swift_task_switch(specialized MOProcessingServer.deviceListJSON(), v2, v3);
}

{
  CloudDevicesDB.primaryDevice.getter();
  CloudDevicesDB.nominatedDevice.getter();

  return _swift_task_switch(specialized MOProcessingServer.deviceListJSON(), 0, 0);
}

{
  v17 = v0;
  v0[139] = type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[136];
    v4 = v0[135];
    v5 = v0[122];
    v6 = v0[120];
    v7 = v0[119];
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001002B9C30, &v16);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v16);
    _os_log_impl(&_mh_execute_header, v1, v2, "MOProcessingServer.%{public}s currentDeviceID = %s", v8, 0x16u);
    swift_arrayDestroy();

    v9 = *(v6 + 8);
    v9(v5, v7);
  }

  else
  {
    v10 = v0[122];
    v11 = v0[120];
    v12 = v0[119];

    v9 = *(v11 + 8);
    v9(v10, v12);
  }

  v0[140] = v9;
  v0[141] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSSe_SEpGTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v13 = v0[138];
  v14 = v0[137];

  return _swift_task_switch(specialized MOProcessingServer.deviceListJSON(), v14, v13);
}

{
  *(v0 + 1136) = dispatch thunk of CloudDevicesDB.devices.getter();

  return _swift_task_switch(specialized MOProcessingServer.deviceListJSON(), 0, 0);
}

{
  v166 = v0;
  v1 = 0;
  v2 = *(v0 + 1136);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v142 = *(v0 + 1136);
  v7 = -1 << *(v142 + 32);
  v8 = *(v0 + 920);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v152 = *(v0 + 888);
  v9 = v6 & v3;
  v10 = (63 - v7) >> 6;
  v151 = (v8 + 56);
  v143 = (v8 + 48);
  v140 = *(v0 + 920);
  v154 = (v8 + 8);
  v138 = *(v0 + 872);
  v156 = *(v0 + 1128);
  v141 = v4;
  v139 = v10;
  while (v9)
  {
LABEL_11:
    v146 = *(v0 + 1088);
    v148 = v9;
    v19 = *(v0 + 1080);
    v20 = *(v0 + 944);
    v21 = *(v0 + 936);
    v22 = *(v0 + 912);
    v149 = v1;
    v23 = v140[2];
    v23(v20, *(v142 + 56) + v140[9] * (__clz(__rbit64(v9)) | (v1 << 6)), v22);
    v144 = v140[4];
    v144(v21, v20, v22);
    v24 = CloudDevice.jsonDict.getter();
    v25 = CloudDevice.systemIdiomString.getter();
    *(v0 + 40) = &type metadata for String;
    *(v0 + 48) = &protocol witness table for String;
    *(v0 + 56) = &protocol witness table for String;
    *(v0 + 16) = v25;
    *(v0 + 24) = v26;
    outlined init with take of Decodable & Encodable((v0 + 16), (v0 + 64));
    LOBYTE(v22) = swift_isUniquelyReferenced_nonNull_native();
    v165[0] = v24;
    v27 = *(v0 + 88);
    v28 = __swift_mutable_project_boxed_opaque_existential_2(v0 + 64, v27);
    v29 = *(v27 - 8);
    v30 = swift_task_alloc();
    (*(v29 + 16))(v30, v28, v27);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v30, v30[1], 0x6D6F696469, 0xE500000000000000, v22, v165);
    __swift_destroy_boxed_opaque_existential_0((v0 + 64));

    v31 = v165[0];
    v164 = v165[0];
    if (CloudDevice.id.getter() == v19 && v32 == v146)
    {

      v33 = v143;
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v33 = v143;
      if ((v34 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v35 = *(v0 + 1040);
    v36 = *(v0 + 1032);
    *(v0 + 616) = &type metadata for Bool;
    *(v0 + 624) = &protocol witness table for Bool;
    *(v0 + 632) = &protocol witness table for Bool;
    *(v0 + 592) = 1;
    outlined init with take of Decodable & Encodable((v0 + 592), (v0 + 640));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v165[0] = v31;
    v38 = __swift_mutable_project_boxed_opaque_existential_2(v0 + 640, *(v0 + 664));
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v38, 0x6976654473696874, 0xEA00000000006563, isUniquelyReferenced_nonNull_native, v165);
    __swift_destroy_boxed_opaque_existential_0((v0 + 640));
    v39 = v165[0];
    v164 = v165[0];
    outlined init with copy of (String, Date?)(v35, v36, &_s9MomentsUI24CloudManagerAccountStateOSgMd, &_s9MomentsUI24CloudManagerAccountStateOSgMR);
    v40 = type metadata accessor for CloudManagerAccountState();
    v41 = *(v40 - 8);
    v42 = (*(v41 + 48))(v36, 1, v40);
    v43 = *(v0 + 1032);
    if (v42 == 1)
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 1032), &_s9MomentsUI24CloudManagerAccountStateOSgMd, &_s9MomentsUI24CloudManagerAccountStateOSgMR);
      specialized Dictionary._Variant.removeValue(forKey:)(0x53746E756F636361, 0xEC00000065746174, (v0 + 736));
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0 + 736, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
    }

    else
    {
      v44 = CloudManagerAccountState.rawValue.getter();
      *(v0 + 712) = &type metadata for String;
      *(v0 + 720) = &protocol witness table for String;
      *(v0 + 728) = &protocol witness table for String;
      *(v0 + 688) = v44;
      *(v0 + 696) = v45;
      (*(v41 + 8))(v43, v40);
      outlined init with take of Decodable & Encodable((v0 + 688), (v0 + 784));
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v165[0] = v39;
      v47 = *(v0 + 808);
      v48 = __swift_mutable_project_boxed_opaque_existential_2(v0 + 784, v47);
      v49 = *(v47 - 8);
      v50 = swift_task_alloc();
      (*(v49 + 16))(v50, v48, v47);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v50, 0x53746E756F636361, 0xEC00000065746174, v46, v165, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
      __swift_destroy_boxed_opaque_existential_0((v0 + 784));

      v164 = v165[0];
    }

LABEL_18:
    if (CloudDevice.onboarded.getter())
    {
      *(v0 + 520) = &type metadata for Bool;
      *(v0 + 528) = &protocol witness table for Bool;
      *(v0 + 536) = &protocol witness table for Bool;
      *(v0 + 496) = 1;
      outlined init with take of Decodable & Encodable((v0 + 496), (v0 + 544));
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v165[0] = v164;
      v52 = __swift_mutable_project_boxed_opaque_existential_2(v0 + 544, *(v0 + 568));
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v52, 0x656472616F626E6FLL, 0xE900000000000064, v51, v165);
      __swift_destroy_boxed_opaque_existential_0((v0 + 544));
      v164 = v165[0];
    }

    v53 = *(v0 + 1024);
    v54 = *(v0 + 1008);
    v55 = *(v0 + 912);
    v56 = *(v0 + 904);
    v23(v54, *(v0 + 936), v55);
    v145 = *v151;
    (*v151)(v54, 0, 1, v55);
    v57 = *(v152 + 48);
    outlined init with copy of (String, Date?)(v54, v56, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined init with copy of (String, Date?)(v53, v56 + v57, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v58 = *v33;
    v59 = (*v33)(v56, 1, v55);
    v60 = *(v0 + 912);
    v147 = v58;
    if (v59 == 1)
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 1008), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      if (v58(v56 + v57, 1, v60) != 1)
      {
        goto LABEL_25;
      }

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 904), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v61 = v23;
      v62 = v145;
LABEL_27:
      *(v0 + 424) = &type metadata for Bool;
      *(v0 + 432) = &protocol witness table for Bool;
      *(v0 + 440) = &protocol witness table for Bool;
      *(v0 + 400) = 1;
      outlined init with take of Decodable & Encodable((v0 + 400), (v0 + 448));
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v165[0] = v164;
      v72 = __swift_mutable_project_boxed_opaque_existential_2(v0 + 448, *(v0 + 472));
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v72, 0x7972616D697270, 0xE700000000000000, v71, v165);
      __swift_destroy_boxed_opaque_existential_0((v0 + 448));
      v164 = v165[0];
      goto LABEL_28;
    }

    outlined init with copy of (String, Date?)(*(v0 + 904), *(v0 + 1000), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v63 = v58(v56 + v57, 1, v60);
    v64 = *(v0 + 1008);
    v65 = *(v0 + 1000);
    if (v63 == 1)
    {
      v66 = *(v0 + 912);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 1008), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      (*v154)(v65, v66);
LABEL_25:
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 904), &_s9MomentsUI11CloudDeviceVSg_ADtMd, &_s9MomentsUI11CloudDeviceVSg_ADtMR);
      v61 = v23;
      v62 = v145;
      goto LABEL_28;
    }

    v67 = *(v0 + 928);
    v68 = *(v0 + 912);
    v137 = *(v0 + 904);
    v144(v67, v56 + v57, v68);
    lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevice and conformance CloudDevice, &type metadata accessor for CloudDevice, &protocol conformance descriptor for CloudDevice);
    v69 = dispatch thunk of static Equatable.== infix(_:_:)();
    v70 = *v154;
    (*v154)(v67, v68);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v64, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v70(v65, v68);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v137, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v61 = v23;
    v62 = v145;
    if (v69)
    {
      goto LABEL_27;
    }

LABEL_28:
    v73 = *(v0 + 1016);
    v74 = *(v0 + 992);
    v75 = *(v0 + 912);
    v76 = *(v0 + 896);
    v61(v74, *(v0 + 936), v75);
    v62(v74, 0, 1, v75);
    v77 = *(v152 + 48);
    outlined init with copy of (String, Date?)(v74, v76, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined init with copy of (String, Date?)(v73, v76 + v77, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v78 = v147(v76, 1, v75);
    v79 = *(v0 + 912);
    if (v78 == 1)
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 992), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      if (v147(v76 + v77, 1, v79) != 1)
      {
        goto LABEL_33;
      }

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 896), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
LABEL_35:
      *(v0 + 328) = &type metadata for Bool;
      *(v0 + 336) = &protocol witness table for Bool;
      *(v0 + 344) = &protocol witness table for Bool;
      *(v0 + 304) = 1;
      outlined init with take of Decodable & Encodable((v0 + 304), (v0 + 352));
      v89 = swift_isUniquelyReferenced_nonNull_native();
      v165[0] = v164;
      v90 = __swift_mutable_project_boxed_opaque_existential_2(v0 + 352, *(v0 + 376));
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v90, 0x6574616E696D6F6ELL, 0xE900000000000064, v89, v165);
      __swift_destroy_boxed_opaque_existential_0((v0 + 352));
      v164 = v165[0];
      goto LABEL_36;
    }

    outlined init with copy of (String, Date?)(*(v0 + 896), *(v0 + 984), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v80 = v147(v76 + v77, 1, v79);
    v81 = *(v0 + 992);
    v82 = *(v0 + 984);
    if (v80 == 1)
    {
      v83 = *(v0 + 912);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 992), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      (*v154)(v82, v83);
LABEL_33:
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 896), &_s9MomentsUI11CloudDeviceVSg_ADtMd, &_s9MomentsUI11CloudDeviceVSg_ADtMR);
      goto LABEL_36;
    }

    v84 = *(v0 + 928);
    v85 = *(v0 + 912);
    v86 = *(v0 + 896);
    v144(v84, v76 + v77, v85);
    lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevice and conformance CloudDevice, &type metadata accessor for CloudDevice, &protocol conformance descriptor for CloudDevice);
    v87 = dispatch thunk of static Equatable.== infix(_:_:)();
    v88 = *v154;
    (*v154)(v84, v85);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v81, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v88(v82, v85);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v86, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    if (v87)
    {
      goto LABEL_35;
    }

LABEL_36:
    v91 = CloudDevice.snapshotGeneration.getter();
    if (v92)
    {
      *(v0 + 232) = &type metadata for String;
      *(v0 + 240) = &protocol witness table for String;
      *(v0 + 248) = &protocol witness table for String;
      *(v0 + 208) = v91;
      *(v0 + 216) = v92;
      outlined init with take of Decodable & Encodable((v0 + 208), (v0 + 256));
      v93 = swift_isUniquelyReferenced_nonNull_native();
      v165[0] = v164;
      v94 = *(v0 + 280);
      v95 = __swift_mutable_project_boxed_opaque_existential_2(v0 + 256, v94);
      v96 = *(v94 - 8);
      v97 = swift_task_alloc();
      (*(v96 + 16))(v97, v95, v94);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v97, v97[1], 0x69746172656E6567, 0xEA00000000006E6FLL, v93, v165);
      __swift_destroy_boxed_opaque_existential_0((v0 + 256));

      v164 = v165[0];
    }

    v98 = CloudDevice.deviceCapabilities.getter();
    if (v98)
    {
      v99 = *(v98 + 16);
      if (v99)
      {
        v165[0] = _swiftEmptyArrayStorage;
        v100 = v98;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v99, 0);
        v101 = v165[0];
        v102 = v100 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
        v161 = *(v138 + 72);
        v103 = *(v138 + 16);
        do
        {
          v104 = *(v0 + 880);
          v105 = *(v0 + 864);
          v103(v104, v102, v105);
          *(v0 + 832) = 0;
          *(v0 + 840) = 0xE000000000000000;
          _print_unlocked<A, B>(_:_:)();
          v106 = *(v0 + 832);
          v107 = *(v0 + 840);
          (*(v138 + 8))(v104, v105);
          v165[0] = v101;
          v109 = *(v101 + 2);
          v108 = *(v101 + 3);
          if (v109 >= v108 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v108 > 1), v109 + 1, 1);
            v101 = v165[0];
          }

          *(v101 + 2) = v109 + 1;
          v110 = &v101[2 * v109];
          *(v110 + 4) = v106;
          *(v110 + 5) = v107;
          v0 = v163;
          v102 += v161;
          --v99;
        }

        while (v99);
      }

      else
      {

        v101 = _swiftEmptyArrayStorage;
      }

      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      *(v0 + 144) = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
      *(v0 + 152) = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
      *(v0 + 112) = v101;
      outlined init with take of Decodable & Encodable((v0 + 112), (v0 + 160));
      v111 = swift_isUniquelyReferenced_nonNull_native();
      v165[0] = v164;
      v112 = *(v0 + 184);
      v113 = __swift_mutable_project_boxed_opaque_existential_2(v0 + 160, v112);
      v114 = *(v112 - 8);
      v115 = swift_task_alloc();
      (*(v114 + 16))(v115, v113, v112);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v115, 0xD000000000000012, 0x80000001002B9C10, v111, v165);
      __swift_destroy_boxed_opaque_existential_0((v0 + 160));

      v11 = v165[0];
    }

    else
    {
      v11 = v164;
    }

    v12 = *(v0 + 936);
    v13 = *(v0 + 912);
    v14 = CloudDevice.id.getter();
    v16 = v15;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v165[0] = v156;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v14, v16, v17);

    v156 = v165[0];
    (*v154)(v12, v13);
    v9 = (v148 - 1) & v148;
    v1 = v149;
    v4 = v141;
    v10 = v139;
  }

  while (1)
  {
    v18 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
    }

    if (v18 >= v10)
    {
      break;
    }

    v9 = *(v4 + 8 * v18);
    ++v1;
    if (v9)
    {
      v1 = v18;
      goto LABEL_11;
    }
  }

  v116 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSe_SEpGMd, &_sSDySSSe_SEpGMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 848) = 0;
  v118 = [v116 dataWithJSONObject:isa options:11 error:v0 + 848];

  v119 = *(v0 + 848);
  if (v118)
  {
    v120 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = v121;

    outlined copy of Data._Representation(v120, v122);
    static String.Encoding.utf8.getter();
    v162 = String.init(data:encoding:)();
    if (v123)
    {
      v124 = v123;
      outlined consume of Data._Representation(v120, v122);
    }

    else
    {
      outlined consume of Data._Representation(v120, v122);

      v124 = 0xE200000000000000;
      v162 = 32123;
    }
  }

  else
  {
    v125 = v119;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v120 = 0;
    v122 = 0xF000000000000000;
    v124 = 0xE200000000000000;
    v162 = 32123;
  }

  static CommonLogger.processing.getter();

  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.default.getter();

  v128 = os_log_type_enabled(v126, v127);
  v129 = *(v0 + 1040);
  v159 = *(v0 + 1120);
  v160 = *(v0 + 1024);
  v157 = *(v0 + 968);
  v158 = *(v0 + 1016);
  v155 = *(v0 + 952);
  v150 = v124;
  if (v128)
  {
    v153 = *(v0 + 1040);
    v130 = swift_slowAlloc();
    v165[0] = swift_slowAlloc();
    *v130 = 136446466;
    *(v130 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001002B9C30, v165);
    *(v130 + 12) = 2080;
    v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v162, v124, v165);

    *(v130 + 14) = v131;
    _os_log_impl(&_mh_execute_header, v126, v127, "MOProcessingServer.%{public}s result = %s", v130, 0x16u);
    swift_arrayDestroy();

    v132 = outlined consume of Data?(v120, v122);
    v159(v157, v155, v132);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v158, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v160, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v133 = v153;
  }

  else
  {

    v134 = outlined consume of Data?(v120, v122);
    v159(v157, v155, v134);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v158, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v160, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v133 = v129;
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v133, &_s9MomentsUI24CloudManagerAccountStateOSgMd, &_s9MomentsUI24CloudManagerAccountStateOSgMR);

  v135 = *(v163 + 8);

  return v135(v162, v150);
}

uint64_t specialized MOProcessingServer.deviceListJSON()(uint64_t a1)
{
  *(*v1 + 1064) = a1;

  return _swift_task_switch(specialized MOProcessingServer.deviceListJSON(), 0, 0);
}

uint64_t specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  v5 = type metadata accessor for CloudDevice();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:), 0, 0);
}

uint64_t specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:)()
{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 216) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:);

  return CloudManager.getDeviceDB()();
}

{
  if (v0[29])
  {
    v1 = v0[26];
    v2 = v0[20];
    v3 = v0[21];
    v4 = *(v3 + 56);
    v0[30] = v4;
    v0[31] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v4(v1, 1, 1, v2);
    type metadata accessor for CloudDevicesDB();
    lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, &type metadata accessor for CloudDevicesDB, &protocol conformance descriptor for CloudDevicesDB);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:), v6, v5);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

{
  *(v0 + 256) = dispatch thunk of CloudDevicesDB.devices.getter();

  return _swift_task_switch(specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:), 0, 0);
}

{

  return _swift_task_switch(specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:), 0, 0);
}

{
  v1 = v0[26];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];

  (*(v3 + 8))(v2, v4);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v1, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);

  v5 = v0[1];

  return v5();
}

uint64_t specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:)(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return _swift_task_switch(specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:), 0, 0);
}

{
  v2 = 0;
  v57 = 0;
  v62 = 0;
  v3 = v1[21];
  v4 = v1[32];
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v65 = v1[32];
  v8 = -1;
  v9 = -1 << *(v65 + 32);
  v60 = v1[19];
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & v5;
  v11 = (63 - v9) >> 6;
  v66 = (v3 + 32);
  v64 = v1[21];
  v12 = (v3 + 8);
  v58 = (v3 + 8);
LABEL_4:
  v54 = 0;
  while (1)
  {
    v13 = v2;
    if (!v10)
    {
      break;
    }

LABEL_10:
    v15 = v1[23];
    v14 = v1[24];
    v16 = v1[20];
    v17 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    (*(v64 + 16))(v14, *(v65 + 56) + *(v64 + 72) * (v17 | (v2 << 6)), v16);
    v63 = *(v64 + 32);
    v63(v15, v14, v16);
    v18 = CloudDevice.deviceID.getter();
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      v22 = CloudDevice.bundleID.getter();
      if (v23)
      {
        v24 = v23;
        v59 = v22;
        v25 = v1[17];
        v1[2] = v1[16];
        v1[3] = v25;
        v1[4] = v20;
        v1[5] = v21;
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol.commonPrefix<A>(with:options:)();
        v61 = v26;

        if (v60)
        {
          v1[6] = v1[18];
          v1[7] = v60;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR);
          lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>, &_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR, &protocol conformance descriptor for ReversedCollection<A>);
          v55 = String.init<A>(_:)();
          v28 = v27;
          v1[8] = v59;
          v1[9] = v24;
          v29 = String.init<A>(_:)();
          v1[10] = v55;
          v1[11] = v28;
          v1[12] = v29;
          v1[13] = v30;
          v31 = StringProtocol.commonPrefix<A>(with:options:)();
          v33 = v32;

          v1[14] = v31;
          v1[15] = v33;
          String.init<A>(_:)();
          v35 = v34;
          if (!v62)
          {
            goto LABEL_17;
          }
        }

        else
        {

          v35 = 0xE000000000000000;
          if (!v62)
          {
LABEL_17:
            v36 = 0;
            goto LABEL_18;
          }
        }

        v36 = String.count.getter();
LABEL_18:
        v37 = String.count.getter();
        if (v36 < v37)
        {
          goto LABEL_28;
        }

        if (v37 == v36)
        {
          if (v60)
          {
            if (v57)
            {
              v38 = String.count.getter();
            }

            else
            {
              v38 = 0;
            }

            v39 = String.count.getter();
            if (v38 < v39)
            {
LABEL_28:
              v56 = v1[30];
              v41 = v1[26];
              v42 = v1[23];
              v43 = v1[20];

              outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v41, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
              v63(v41, v42, v43);
              a1 = v56(v41, 0, 1, v43);
              v57 = v35;
              v62 = v61;
              v12 = v58;
              goto LABEL_4;
            }

            v40 = v39;
            v12 = v58;
            (*v58)(v1[23], v1[20]);

            v54 |= v40 == v38;
          }

          else
          {
            v12 = v58;
            (*v58)(v1[23], v1[20]);

            v54 = 1;
          }
        }

        else
        {
          v12 = v58;
          (*v58)(v1[23], v1[20]);
        }
      }

      else
      {
        (*v12)(v1[23], v1[20]);
      }
    }

    else
    {
      a1 = (*v12)(v1[23], v1[20]);
    }
  }

  while (2)
  {
    v2 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return CloudDevicesDB.nominateDevice(_:)(a1);
    }

    if (v2 < v11)
    {
      v10 = *(v6 + 8 * v2);
      ++v13;
      if (v10)
      {
        goto LABEL_10;
      }

      continue;
    }

    break;
  }

  v44 = v1[25];
  v45 = v1[26];
  v46 = v1[20];
  v47 = v1[21];

  outlined init with copy of (String, Date?)(v45, v44, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if ((*(v47 + 48))(v44, 1, v46) != 1)
  {
    (*v66)(v1[22], v1[25], v1[20]);
    if (v54)
    {
      v48 = v1[26];
      v49 = v1[22];
      v50 = v1[20];

      (*v12)(v49, v50);
      goto LABEL_33;
    }

    v53 = swift_task_alloc();
    v1[33] = v53;
    *v53 = v1;
    v53[1] = specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:);
    a1 = v1[22];

    return CloudDevicesDB.nominateDevice(_:)(a1);
  }

  v48 = v1[25];
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v1[26], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);

LABEL_33:
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v48, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);

  v51 = v1[1];

  return v51();
}

uint64_t specialized MOProcessingServer.deviceNewlyOnboarded()()
{
  v1 = type metadata accessor for Logger();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.deviceNewlyOnboarded(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 72) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  type metadata accessor for CloudManager();
  lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, &type metadata accessor for CloudManager, &protocol conformance descriptor for CloudManager);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(specialized MOProcessingServer.deviceNewlyOnboarded(), v3, v2);
}

{
  *(v0 + 80) = CloudManager.newlyOnboardedDevices.getter();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = specialized MOProcessingServer.deviceNewlyOnboarded();

  return CloudManager.getDeviceDB()();
}

{
  if (*(v0 + 96))
  {
    type metadata accessor for CloudDevicesDB();
    lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, &type metadata accessor for CloudDevicesDB, &protocol conformance descriptor for CloudDevicesDB);
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(specialized MOProcessingServer.deviceNewlyOnboarded(), v2, v1);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3(0, 0xE000000000000000);
  }
}

{
  CloudDevicesDB.currentDevice.getter();
  CloudDevicesDB.primaryDevice.getter();
  CloudDevicesDB.nominatedDevice.getter();

  return _swift_task_switch(specialized MOProcessingServer.deviceNewlyOnboarded(), 0, 0);
}

{
  v27 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v3[1] = vextq_s8(*(v0 + 56), *(v0 + 56), 8uLL);
  v3[2].i64[0] = v2;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9MomentsUI11CloudDeviceVG_SSs5NeverOTg5(partial apply for closure #1 in MOProcessingServer.deviceNewlyOnboarded(), v3, v1);
  v5 = v4;

  type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v11 = *(v0 + 24);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v12 = 136446466;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x80000001002B9BF0, v26);
    *(v12 + 12) = 2080;
    v13 = Array.description.getter();
    v24 = v10;
    v14 = v5;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v26);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "MOProcessingServer.%{public}s result = %s", v12, 0x16u);
    swift_arrayDestroy();

    (*(v9 + 8))(v24, v11);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
    v14 = v5;
  }

  v25 = *(v0 + 64);
  v18 = *(v0 + 48);
  v17 = *(v0 + 56);
  *(v0 + 16) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, &protocol conformance descriptor for [A]);
  v19 = BidirectionalCollection<>.joined(separator:)();
  v21 = v20;

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v18, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v17, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v25, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);

  v22 = *(v0 + 8);

  return v22(v19, v21);
}

uint64_t specialized MOProcessingServer.deviceNewlyOnboarded()(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(specialized MOProcessingServer.deviceNewlyOnboarded(), 0, 0);
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for CloudDevice.Capability();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      specialized Set._Variant.insert(_:)(v9, v6);
      result = (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t specialized MOProcessingServer.cap()()
{
  v1 = type metadata accessor for Logger();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v0[6] = swift_task_alloc();
  v2 = type metadata accessor for CloudDevice.Capability();
  v0[7] = v2;
  v0[8] = *(v2 - 8);
  v0[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceV10CapabilityOSgMd, &_s9MomentsUI11CloudDeviceV10CapabilityOSgMR);
  v0[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.cap(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 104) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = specialized MOProcessingServer.cap();

  return CloudManager.getDeviceDB()();
}

{
  v72 = v0;
  if (*(v0 + 120))
  {
    type metadata accessor for CloudDevicesDB();
    lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, &type metadata accessor for CloudDevicesDB, &protocol conformance descriptor for CloudDevicesDB);

    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(specialized MOProcessingServer.cap(), v2, v1);
  }

  v3 = *(v0 + 96);
  v4 = type metadata accessor for CloudDevice();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 1, 1, v4);
  v6 = *(v0 + 88);
  outlined init with copy of (String, Date?)(*(v0 + 96), v6, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v7 = (*(v5 + 48))(v6, 1, v4);
  v8 = *(v0 + 88);
  if (v7 == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 88), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
LABEL_8:

    v9 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  v9 = CloudDevice.deviceCapabilities.getter();
  (*(v5 + 8))(v8, v4);
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_9:
  v10 = static DefaultsManager.Cloud.capabilitiesMock.getter();
  v11 = static DefaultsManager.Cloud.capabilitiesBlock.getter();
  v12 = static DefaultsManager.Cloud.capabilitiesForce.getter();
  if (v10)
  {

    v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI11CloudDeviceV10CapabilityO_SayAHGTt0g5Tf4g_n(v10);
  }

  else
  {
    v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI11CloudDeviceV10CapabilityO_SayAHGTt0g5Tf4g_n(v9);
  }

  v70 = v13;
  if (v11)
  {
    if (*(v13 + 16))
    {
      v14 = *(v11 + 16);
      if (v14)
      {
        v15 = *(v0 + 64);
        v16 = v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v17 = *(v15 + 72);

        do
        {
          v18 = *(v0 + 80);
          specialized Set._Variant.remove(_:)(v16, v18);
          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v18, &_s9MomentsUI11CloudDeviceV10CapabilityOSgMd, &_s9MomentsUI11CloudDeviceV10CapabilityOSgMR);
          v16 += v17;
          --v14;
        }

        while (v14);
      }
    }
  }

  if (v12)
  {

    specialized Set.formUnion<A>(_:)(v19);
  }

  v20 = *(v70 + 16);
  v21 = _swiftEmptyArrayStorage;
  v69 = v0;
  if (v20)
  {
    v22 = *(v0 + 64);
    v21 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9MomentsUI11CloudDeviceV10CapabilityO_Tt1g5(v20, 0);
    v23 = specialized Sequence._copySequenceContents(initializing:)(&v71, v21 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v20, v70);
    v24 = v71;

    outlined consume of Set<MOSuggestionAssetMapsClusterer.Cluster>.Iterator._Variant(v24);
    if (v23 != v20)
    {
      __break(1u);
    }

    v0 = v69;
  }

  v71 = v21;
  specialized MutableCollection<>.sort(by:)(&v71);

  v25 = v71;
  v26 = *(v71 + 2);
  if (v26)
  {
    v27 = *(v0 + 64);
    v71 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
    v28 = v71;
    v29 = *(v27 + 16);
    v27 += 16;
    v30 = v25 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
    v65 = *(v27 + 56);
    v67 = v29;
    v31 = (v27 - 8);
    do
    {
      v32 = *(v0 + 72);
      v33 = *(v0 + 56);
      v67(v32, v30, v33);
      v34 = CloudDevice.Capability.rawValue.getter();
      v36 = v35;
      (*v31)(v32, v33);
      v71 = v28;
      v38 = *(v28 + 2);
      v37 = *(v28 + 3);
      if (v38 >= v37 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
        v28 = v71;
      }

      *(v28 + 2) = v38 + 1;
      v39 = &v28[2 * v38];
      *(v39 + 4) = v34;
      *(v39 + 5) = v36;
      v30 += v65;
      --v26;
      v0 = v69;
    }

    while (v26);
  }

  v40 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v42 = [v40 dataWithJSONObject:isa options:0 error:v0 + 16];

  v43 = *(v0 + 16);
  if (v42)
  {
    v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    static String.Encoding.utf8.getter();
    v47 = String.init(data:encoding:)();
    if (v48)
    {
      v49 = v47;
    }

    else
    {
      v49 = 0;
    }

    if (v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0xE000000000000000;
    }

    type metadata accessor for CommonLogger();
    static CommonLogger.cloud.getter();

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 96);
    v55 = *(v0 + 32);
    v68 = *(v0 + 40);
    v56 = *(v0 + 24);
    v66 = v49;
    if (v53)
    {
      v64 = v56;
      v57 = v49;
      v58 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v58 = 136446466;
      *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2928706163, 0xE500000000000000, &v71);
      *(v58 + 12) = 2080;
      *(v58 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v50, &v71);
      _os_log_impl(&_mh_execute_header, v51, v52, "MOProcessingServer.%{public}s result = %s", v58, 0x16u);
      swift_arrayDestroy();

      outlined consume of Data._Representation(v44, v46);

      (*(v55 + 8))(v68, v64);
    }

    else
    {
      outlined consume of Data._Representation(v44, v46);

      (*(v55 + 8))(v68, v56);
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v54, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);

    v62 = *(v69 + 8);

    return v62(v66, v50);
  }

  else
  {
    v59 = *(v0 + 96);
    v60 = v43;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v59, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);

    v61 = *(v69 + 8);

    return v61();
  }
}

{
  CloudDevicesDB.currentDevice.getter();

  return _swift_task_switch(specialized MOProcessingServer.cap(), 0, 0);
}

{
  v69 = v0;
  v1 = *(v0 + 88);
  outlined init with copy of (String, Date?)(*(v0 + 96), v1, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v2 = type metadata accessor for CloudDevice();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 88);
  if (v4 == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 88), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  }

  else
  {
    v6 = CloudDevice.deviceCapabilities.getter();
    (*(v3 + 8))(v5, v2);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_5:
  v7 = static DefaultsManager.Cloud.capabilitiesMock.getter();
  v8 = static DefaultsManager.Cloud.capabilitiesBlock.getter();
  v9 = static DefaultsManager.Cloud.capabilitiesForce.getter();
  if (v7)
  {

    v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI11CloudDeviceV10CapabilityO_SayAHGTt0g5Tf4g_n(v7);
  }

  else
  {
    v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI11CloudDeviceV10CapabilityO_SayAHGTt0g5Tf4g_n(v6);
  }

  v67 = v10;
  if (v8)
  {
    if (*(v10 + 16))
    {
      v11 = *(v8 + 16);
      if (v11)
      {
        v12 = *(v0 + 64);
        v13 = v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
        v14 = *(v12 + 72);

        do
        {
          v15 = *(v0 + 80);
          specialized Set._Variant.remove(_:)(v13, v15);
          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v15, &_s9MomentsUI11CloudDeviceV10CapabilityOSgMd, &_s9MomentsUI11CloudDeviceV10CapabilityOSgMR);
          v13 += v14;
          --v11;
        }

        while (v11);
      }
    }
  }

  if (v9)
  {

    specialized Set.formUnion<A>(_:)(v16);
  }

  v17 = *(v67 + 16);
  v18 = _swiftEmptyArrayStorage;
  v66 = v0;
  if (v17)
  {
    v19 = *(v0 + 64);
    v18 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9MomentsUI11CloudDeviceV10CapabilityO_Tt1g5(v17, 0);
    v20 = specialized Sequence._copySequenceContents(initializing:)(&v68, v18 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v17, v67);
    v21 = v68;

    outlined consume of Set<MOSuggestionAssetMapsClusterer.Cluster>.Iterator._Variant(v21);
    if (v20 != v17)
    {
      __break(1u);
    }

    v0 = v66;
  }

  v68 = v18;
  specialized MutableCollection<>.sort(by:)(&v68);

  v22 = v68;
  v23 = *(v68 + 2);
  if (v23)
  {
    v24 = *(v0 + 64);
    v68 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
    v25 = v68;
    v26 = *(v24 + 16);
    v24 += 16;
    v27 = v22 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v62 = *(v24 + 56);
    v64 = v26;
    v28 = (v24 - 8);
    do
    {
      v29 = *(v0 + 72);
      v30 = *(v0 + 56);
      v64(v29, v27, v30);
      v31 = CloudDevice.Capability.rawValue.getter();
      v33 = v32;
      (*v28)(v29, v30);
      v68 = v25;
      v35 = *(v25 + 2);
      v34 = *(v25 + 3);
      if (v35 >= v34 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
        v25 = v68;
      }

      *(v25 + 2) = v35 + 1;
      v36 = &v25[2 * v35];
      *(v36 + 4) = v31;
      *(v36 + 5) = v33;
      v27 += v62;
      --v23;
      v0 = v66;
    }

    while (v23);
  }

  v37 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v39 = [v37 dataWithJSONObject:isa options:0 error:v0 + 16];

  v40 = *(v0 + 16);
  if (v39)
  {
    v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    static String.Encoding.utf8.getter();
    v44 = String.init(data:encoding:)();
    if (v45)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0;
    }

    if (v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = 0xE000000000000000;
    }

    type metadata accessor for CommonLogger();
    static CommonLogger.cloud.getter();

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 96);
    v52 = *(v0 + 32);
    v65 = *(v0 + 40);
    v53 = *(v0 + 24);
    v63 = v46;
    if (v50)
    {
      v61 = v53;
      v54 = v46;
      v55 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v55 = 136446466;
      *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2928706163, 0xE500000000000000, &v68);
      *(v55 + 12) = 2080;
      *(v55 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v47, &v68);
      _os_log_impl(&_mh_execute_header, v48, v49, "MOProcessingServer.%{public}s result = %s", v55, 0x16u);
      swift_arrayDestroy();

      outlined consume of Data._Representation(v41, v43);

      (*(v52 + 8))(v65, v61);
    }

    else
    {
      outlined consume of Data._Representation(v41, v43);

      (*(v52 + 8))(v65, v53);
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v51, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);

    v60 = *(v66 + 8);

    return v60(v63, v47);
  }

  else
  {
    v56 = *(v0 + 96);
    v57 = v40;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v56, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);

    v58 = *(v66 + 8);

    return v58();
  }
}

uint64_t specialized MOProcessingServer.cap()(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return _swift_task_switch(specialized MOProcessingServer.cap(), 0, 0);
}

uint64_t specialized MOProcessingServer.capList()()
{
  v1 = type metadata accessor for CloudDevice.Capability();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.capList(), 0, 0);
}

{
  v1 = static CloudDevice.Capability.allCases.getter();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[3];
    v4 = *(v3 + 16);
    v3 += 16;
    v35 = v4;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v34 = (v3 + 72);
    v6 = (v3 - 8);
    v33 = *(v3 + 56);
    v32 = enum case for CloudDevice.Capability.neverOnboarded(_:);
    v30 = enum case for CloudDevice.Capability.lowCloudStorage(_:);
    v31 = enum case for CloudDevice.Capability.lowLocalStorage(_:);
    v29 = enum case for CloudDevice.Capability.noProviders(_:);
    v28 = enum case for CloudDevice.Capability.iCPL(_:);
    v27 = enum case for CloudDevice.Capability.Health(_:);
    v26 = enum case for CloudDevice.Capability.assetRouteBlob(_:);
    v25 = enum case for CloudDevice.Capability.debugStale(_:);
    v7 = 1;
    do
    {
      v16 = v0[4];
      v15 = v0[5];
      v17 = v0[2];
      v35(v15, v5, v17);
      v35(v16, v15, v17);
      v18 = (*v34)(v16, v17);
      v19 = 0xD000000000000021;
      v20 = 0x80000001002B9BC0;
      if (v18 != v32)
      {
        if (v18 == v31)
        {
          v19 = 0xD000000000000018;
          v20 = 0x80000001002B9BA0;
          if ((v7 & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_3;
        }

        if (v18 == v30)
        {
          v19 = 0xD000000000000039;
          v20 = 0x80000001002B9B60;
          if ((v7 & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_3;
        }

        if (v18 == v29)
        {
          v19 = 0xD000000000000022;
          v20 = 0x80000001002B9B30;
          if ((v7 & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_3;
        }

        v20 = 0x80000001002B9B00;
        if (v18 != v28)
        {
          if (v18 == v27)
          {
            v19 = 0xD000000000000013;
            v20 = 0x80000001002B9AE0;
            if ((v7 & 1) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_3;
          }

          if (v18 == v26)
          {
            v19 = 0xD000000000000020;
            v20 = 0x80000001002B9A60;
            if ((v7 & 1) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_3;
          }

          if (v18 != v25)
          {
            (*v6)(v0[4], v0[2]);
            v20 = 0xE90000000000003ELL;
            v19 = 0x6E776F6E6B6E753CLL;
            if (v7)
            {
              goto LABEL_3;
            }

LABEL_24:
            v21._countAndFlagsBits = 538970668;
            v21._object = 0xE400000000000000;
            String.append(_:)(v21);
            goto LABEL_3;
          }

          v19 = 0xD000000000000041;
          v20 = 0x80000001002B9A90;
        }
      }

      if ((v7 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_3:
      v8 = v0[5];
      v9 = v0[2];
      v10._countAndFlagsBits = CloudDevice.Capability.rawValue.getter();
      String.append(_:)(v10);

      v11._countAndFlagsBits = 0x22203A2022;
      v11._object = 0xE500000000000000;
      String.append(_:)(v11);
      v12._countAndFlagsBits = v19;
      v12._object = v20;
      String.append(_:)(v12);

      v13._countAndFlagsBits = 34;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = 34;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      (*v6)(v8, v9);
      v7 = 0;
      v5 += v33;
      --v2;
    }

    while (v2);
  }

  v22._countAndFlagsBits = 32032;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);

  v23 = v0[1];

  return v23(8315, 0xE200000000000000);
}

uint64_t specialized MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  v7 = type metadata accessor for Logger();
  v6[31] = v7;
  v6[32] = *(v7 - 8);
  v6[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceV10CapabilityOSgMd, &_s9MomentsUI11CloudDeviceV10CapabilityOSgMR);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v8 = type metadata accessor for CloudDevice.Capability();
  v6[37] = v8;
  v6[38] = *(v8 - 8);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v9 = type metadata accessor for String.Encoding();
  v6[48] = v9;
  v6[49] = *(v9 - 8);
  v6[50] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:), 0, 0);
}

uint64_t specialized MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:)(uint64_t a1)
{
  v242 = v1;
  v2 = v1[26];
  if (v2)
  {
    if (v2 == 0xE000000000000000 && !v1[25] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1[25] == 1819047278 && v1[26] == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1[25] == 7104878 && v1[26] == 0xE300000000000000)
    {
      v234 = 1;
      v3 = v1[28];
      if (v3)
      {
        goto LABEL_11;
      }

LABEL_32:
      v229 = 0;
      v4 = v1[30];
      if (v4)
      {
        goto LABEL_20;
      }

LABEL_33:
      v219 = 0;
      if (!v2)
      {
        goto LABEL_34;
      }

      goto LABEL_29;
    }

    v234 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v3 = v1[28];
    if (!v3)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v234 = 0;
    v3 = v1[28];
    if (!v3)
    {
      goto LABEL_32;
    }
  }

LABEL_11:
  if ((v3 != 0xE000000000000000 || v1[27]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v1[27] != 1819047278 || v1[28] != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v1[27] != 7104878 || v1[28] != 0xE300000000000000))
  {
    v229 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v4 = v1[30];
    if (v4)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

  v229 = 1;
  v4 = v1[30];
  if (!v4)
  {
    goto LABEL_33;
  }

LABEL_20:
  if (v4 == 0xE000000000000000 && !v1[29] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1[29] == 1819047278 && v1[30] == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1[29] == 7104878 && v1[30] == 0xE300000000000000)
  {
    v219 = 1;
    if (v2)
    {
      goto LABEL_29;
    }

LABEL_34:
    v8 = 0;
    v10 = 0xF000000000000000;
    v1[51] = 0;
    v1[52] = 0xF000000000000000;
    if (v3)
    {
      goto LABEL_30;
    }

    goto LABEL_35;
  }

  v219 = _stringCompareWithSmolCheck(_:_:expecting:)();
  if (!v2)
  {
    goto LABEL_34;
  }

LABEL_29:
  v6 = v1[49];
  v5 = v1[50];
  v7 = v1[48];
  static String.Encoding.utf8.getter();
  v8 = String.data(using:allowLossyConversion:)();
  v10 = v9;
  (*(v6 + 8))(v5, v7);
  v1[51] = v8;
  v1[52] = v10;
  if (v3)
  {
LABEL_30:
    v12 = v1[49];
    v11 = v1[50];
    v13 = v1[48];
    static String.Encoding.utf8.getter();
    v14 = String.data(using:allowLossyConversion:)();
    v16 = v15;
    (*(v12 + 8))(v11, v13);
    goto LABEL_36;
  }

LABEL_35:
  v14 = 0;
  v16 = 0xF000000000000000;
LABEL_36:
  v240 = v16;
  v1[53] = v14;
  v1[54] = v16;
  if (v4)
  {
    v18 = v1[49];
    v17 = v1[50];
    v19 = v1[48];
    static String.Encoding.utf8.getter();
    v20 = String.data(using:allowLossyConversion:)();
    v22 = v21;
    (*(v18 + 8))(v17, v19);
  }

  else
  {
    v20 = 0;
    v22 = 0xF000000000000000;
  }

  v239 = v22;
  v228 = v20;
  v1[55] = v20;
  v1[56] = v22;
  if (v234 & 1 | (v10 >> 60 == 15))
  {
    countAndFlagsBits = 0;
  }

  else
  {
    v24 = objc_opt_self();
    outlined copy of Data._Representation(v8, v10);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v1[23] = 0;
    v26 = [v24 JSONObjectWithData:isa options:0 error:v1 + 23];

    v27 = v1[23];
    if (!v26)
    {
      v215 = v14;
      v43 = v27;
      outlined consume of Data?(v8, v10);
LABEL_66:
      _convertNSErrorToError(_:)();

      goto LABEL_67;
    }

    v28 = v27;
    _bridgeAnyObjectToAny(_:)();
    outlined consume of Data?(v8, v10);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      countAndFlagsBits = v1[24];
    }

    else
    {
      countAndFlagsBits = 0;
    }
  }

  if (v229 & 1 | (v240 >> 60 == 15))
  {
    v29 = 0;
LABEL_51:
    if (v219 & 1 | (v239 >> 60 == 15))
    {
      v35 = 0;
      if (countAndFlagsBits)
      {
        goto LABEL_53;
      }

      goto LABEL_61;
    }

    v215 = v14;
    v38 = objc_opt_self();
    outlined copy of Data._Representation(v228, v239);
    v39 = Data._bridgeToObjectiveC()().super.isa;
    v1[19] = 0;
    v40 = [v38 JSONObjectWithData:v39 options:0 error:v1 + 19];

    v41 = v1[19];
    if (v40)
    {
      v42 = v41;
      _bridgeAnyObjectToAny(_:)();
      outlined consume of Data?(v228, v239);
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (swift_dynamicCast())
      {
        v35 = v1[20];
      }

      else
      {
        v35 = 0;
      }

      v14 = v215;
      if (countAndFlagsBits)
      {
LABEL_53:
        v241._countAndFlagsBits = countAndFlagsBits;

        specialized MutableCollection<>.sort(by:)(&v241);

        countAndFlagsBits = v241._countAndFlagsBits;
        if (!v29)
        {
          goto LABEL_54;
        }

        goto LABEL_62;
      }

LABEL_61:
      if (!v29)
      {
LABEL_54:
        v36 = 0;
        v222 = 0;
        if (v35)
        {
LABEL_55:
          v241._countAndFlagsBits = v35;

          specialized MutableCollection<>.sort(by:)(&v241);

          v37 = v241._countAndFlagsBits;
          v36 = v222;
          goto LABEL_72;
        }

LABEL_71:
        v37 = 0;
LABEL_72:
        v204 = v10;
        v205 = v8;
        v216 = v14;
        v217 = v37;
        if (countAndFlagsBits)
        {
          v211 = *(countAndFlagsBits + 16);
          if (v211)
          {
            v47 = 0;
            v48 = v1[38];
            v49 = (v48 + 48);
            v206 = v48;
            v208 = (v48 + 32);
            v50 = countAndFlagsBits + 40;
            v51 = _swiftEmptyArrayStorage;
            while (v47 < *(countAndFlagsBits + 16))
            {
              v52 = countAndFlagsBits;
              v53 = v51;
              v55 = v1[36];
              v54 = v1[37];

              CloudDevice.Capability.init(rawValue:)();
              if ((*v49)(v55, 1, v54) == 1)
              {
                outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v1[36], &_s9MomentsUI11CloudDeviceV10CapabilityOSgMd, &_s9MomentsUI11CloudDeviceV10CapabilityOSgMR);
                v51 = v53;
                countAndFlagsBits = v52;
              }

              else
              {
                v56 = *v208;
                (*v208)(v1[47], v1[36], v1[37]);
                v51 = v53;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 2) + 1, 1, v53);
                }

                countAndFlagsBits = v52;
                v58 = *(v51 + 2);
                v57 = *(v51 + 3);
                if (v58 >= v57 >> 1)
                {
                  v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v51);
                }

                v59 = v1[47];
                v60 = v1[37];
                *(v51 + 2) = v58 + 1;
                v56(v51 + ((*(v206 + 80) + 32) & ~*(v206 + 80)) + *(v206 + 72) * v58, v59, v60);
              }

              ++v47;
              v50 += 16;
              if (v211 == v47)
              {
                goto LABEL_88;
              }
            }

            __break(1u);
            goto LABEL_207;
          }

          v51 = _swiftEmptyArrayStorage;
LABEL_88:
          v207 = v51;

          v37 = v217;
          v36 = v222;
          if (v222)
          {
LABEL_89:
            v212 = *(v36 + 16);
            if (v212)
            {
              v61 = 0;
              v62 = v1[38];
              v63 = (v62 + 48);
              v210 = v62;
              v64 = (v62 + 32);
              v65 = v36 + 40;
              v66 = _swiftEmptyArrayStorage;
              while (v61 < *(v36 + 16))
              {
                v67 = v1[37];
                v68 = v1[35];

                CloudDevice.Capability.init(rawValue:)();
                if ((*v63)(v68, 1, v67) == 1)
                {
                  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v1[35], &_s9MomentsUI11CloudDeviceV10CapabilityOSgMd, &_s9MomentsUI11CloudDeviceV10CapabilityOSgMR);
                }

                else
                {
                  v69 = *v64;
                  (*v64)(v1[46], v1[35], v1[37]);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v66 + 2) + 1, 1, v66);
                  }

                  v71 = *(v66 + 2);
                  v70 = *(v66 + 3);
                  if (v71 >= v70 >> 1)
                  {
                    v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v66);
                  }

                  v72 = v1[46];
                  v73 = v1[37];
                  *(v66 + 2) = v71 + 1;
                  v69(v66 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v71, v72, v73);
                }

                ++v61;
                v65 += 16;
                v36 = v222;
                if (v212 == v61)
                {
                  goto LABEL_101;
                }
              }

LABEL_207:
              __break(1u);
              goto LABEL_208;
            }

            v66 = _swiftEmptyArrayStorage;
LABEL_101:
            v209 = v66;

            v37 = v217;
            if (v217)
            {
              goto LABEL_102;
            }

            goto LABEL_86;
          }
        }

        else
        {
          v207 = 0;
          if (v36)
          {
            goto LABEL_89;
          }
        }

        v209 = 0;
        if (v37)
        {
LABEL_102:
          v223 = *(v37 + 16);
          if (v223)
          {
            v74 = 0;
            v75 = v1[38];
            v76 = (v75 + 48);
            v213 = v75;
            v77 = (v75 + 32);
            v78 = v37 + 40;
            v79 = _swiftEmptyArrayStorage;
            while (v74 < *(v37 + 16))
            {
              v80 = v1[37];
              v81 = v1[34];

              CloudDevice.Capability.init(rawValue:)();
              if ((*v76)(v81, 1, v80) == 1)
              {
                outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v1[34], &_s9MomentsUI11CloudDeviceV10CapabilityOSgMd, &_s9MomentsUI11CloudDeviceV10CapabilityOSgMR);
              }

              else
              {
                v82 = *v77;
                (*v77)(v1[45], v1[34], v1[37]);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v79 + 2) + 1, 1, v79);
                }

                v84 = *(v79 + 2);
                v83 = *(v79 + 3);
                if (v84 >= v83 >> 1)
                {
                  v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1, v79);
                }

                v85 = v1[45];
                v86 = v1[37];
                *(v79 + 2) = v84 + 1;
                v82(v79 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v84, v85, v86);
              }

              ++v74;
              v78 += 16;
              v37 = v217;
              if (v223 == v74)
              {
                goto LABEL_114;
              }
            }

LABEL_208:
            __break(1u);
          }

          v79 = _swiftEmptyArrayStorage;
LABEL_114:
          v218 = v79;

LABEL_115:
          if (v234 & 1 | (v207 != 0))
          {

            static DefaultsManager.Cloud.capabilitiesMock.setter();
            if (v207)
            {
              v87 = *(v207 + 2);
              if (v87)
              {
                v88 = v1[38];
                v90 = *(v88 + 16);
                v89 = v88 + 16;
                v235 = v90;
                v91 = v207 + ((*(v89 + 64) + 32) & ~*(v89 + 64));
                v224 = *(v89 + 56);
                v92 = _swiftEmptyArrayStorage;
                do
                {
                  v93 = v1[44];
                  v94 = v1[37];
                  v235(v93, v91, v94);
                  v95 = CloudDevice.Capability.rawValue.getter();
                  v97 = v96;
                  (*(v89 - 8))(v93, v94);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v92 + 2) + 1, 1, v92);
                  }

                  v99 = *(v92 + 2);
                  v98 = *(v92 + 3);
                  if (v99 >= v98 >> 1)
                  {
                    v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1, v92);
                  }

                  *(v92 + 2) = v99 + 1;
                  v100 = &v92[2 * v99];
                  *(v100 + 4) = v95;
                  *(v100 + 5) = v97;
                  v91 += v224;
                  --v87;
                }

                while (v87);
LABEL_133:
                v214 = v92;
LABEL_136:

LABEL_137:
                if (v229 & 1 | (v209 != 0))
                {

                  static DefaultsManager.Cloud.capabilitiesBlock.setter();
                  if (v209)
                  {
                    v115 = *(v209 + 2);
                    if (v115)
                    {
                      v116 = v1[38];
                      v117 = *(v116 + 16);
                      v116 += 16;
                      v118 = v209 + ((*(v116 + 64) + 32) & ~*(v116 + 64));
                      v230 = *(v116 + 56);
                      v237 = v117;
                      v119 = (v116 - 8);
                      v120 = _swiftEmptyArrayStorage;
                      do
                      {
                        v121 = v1[42];
                        v122 = v1[37];
                        v237(v121, v118, v122);
                        v123 = CloudDevice.Capability.rawValue.getter();
                        v125 = v124;
                        (*v119)(v121, v122);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v120 + 2) + 1, 1, v120);
                        }

                        v127 = *(v120 + 2);
                        v126 = *(v120 + 3);
                        if (v127 >= v126 >> 1)
                        {
                          v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1, v120);
                        }

                        *(v120 + 2) = v127 + 1;
                        v128 = &v120[2 * v127];
                        *(v128 + 4) = v123;
                        *(v128 + 5) = v125;
                        v118 += v230;
                        --v115;
                      }

                      while (v115);
                      goto LABEL_158;
                    }

LABEL_157:
                    v120 = _swiftEmptyArrayStorage;
LABEL_158:

LABEL_159:
                    v143 = v219 | (v218 != 0);
                    if (v219 & 1 | (v218 != 0))
                    {

                      static DefaultsManager.Cloud.capabilitiesForce.setter();
                      if (v218)
                      {
                        v144 = *(v218 + 2);
                        if (v144)
                        {
                          v220 = v219 | (v218 != 0);
                          v145 = v1[38];
                          v232 = *(v145 + 16);
                          v146 = v218 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
                          v226 = *(v145 + 72);
                          v147 = (v145 + 8);
                          v148 = _swiftEmptyArrayStorage;
                          do
                          {
                            v149 = v1[40];
                            v150 = v1[37];
                            v232(v149, v146, v150);
                            v151 = CloudDevice.Capability.rawValue.getter();
                            v153 = v152;
                            (*v147)(v149, v150);
                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              v148 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v148 + 2) + 1, 1, v148);
                            }

                            v155 = *(v148 + 2);
                            v154 = *(v148 + 3);
                            if (v155 >= v154 >> 1)
                            {
                              v148 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v154 > 1), v155 + 1, 1, v148);
                            }

                            *(v148 + 2) = v155 + 1;
                            v156 = &v148[2 * v155];
                            *(v156 + 4) = v151;
                            *(v156 + 5) = v153;
                            v146 += v226;
                            --v144;
                          }

                          while (v144);
LABEL_177:
                          v143 = v220;
LABEL_180:

LABEL_181:
                          v1[14] = 8315;
                          v1[15] = 0xE200000000000000;
                          if (v214)
                          {
                            v241._countAndFlagsBits = 0x3A20226B636F6D22;
                            v241._object = 0xEB00000000205B20;
                            v1[18] = v214;
                            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
                            lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, &protocol conformance descriptor for [A]);
                            v170 = BidirectionalCollection<>.joined(separator:)();
                            v172 = v171;

                            v173._countAndFlagsBits = v170;
                            v173._object = v172;
                            String.append(_:)(v173);

                            v174._countAndFlagsBits = 23840;
                            v174._object = 0xE200000000000000;
                            String.append(_:)(v174);
                            String.append(_:)(v241);

                            if (!v120)
                            {
LABEL_186:
                              if (!v148)
                              {
LABEL_189:
                                v187._countAndFlagsBits = 32032;
                                v187._object = 0xE200000000000000;
                                String.append(_:)(v187);
                                type metadata accessor for CommonLogger();
                                static CommonLogger.cloud.getter();
                                v188 = v1[14];
                                v189 = v1[15];
                                v1[57] = v188;
                                v1[58] = v189;

                                v190 = Logger.logObject.getter();
                                v191 = static os_log_type_t.default.getter();

                                v192 = os_log_type_enabled(v190, v191);
                                v194 = v1[32];
                                v193 = v1[33];
                                v195 = v1[31];
                                if (v192)
                                {
                                  v221 = v143;
                                  v196 = swift_slowAlloc();
                                  v241._countAndFlagsBits = swift_slowAlloc();
                                  *v196 = 136446466;
                                  *(v196 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001002B9A30, &v241._countAndFlagsBits);
                                  *(v196 + 12) = 2080;
                                  *(v196 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v188, v189, &v241._countAndFlagsBits);
                                  _os_log_impl(&_mh_execute_header, v190, v191, "MOProcessingServer.%{public}s result = %s", v196, 0x16u);
                                  swift_arrayDestroy();

                                  v143 = v221;
                                }

                                (*(v194 + 8))(v193, v195);
                                if (v143)
                                {
                                  type metadata accessor for MomentsUIManager();
                                  v197 = static MomentsUIManager.shared.getter();
                                  v1[59] = dispatch thunk of MomentsUIManager.cloudManager.getter();

                                  v198 = swift_task_alloc();
                                  v1[60] = v198;
                                  v199 = type metadata accessor for CloudManager();
                                  v200 = lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, &type metadata accessor for CloudManager, &protocol conformance descriptor for CloudManager);
                                  *v198 = v1;
                                  v198[1] = specialized MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:);

                                  return CloudManagerProtocol.refresh(force:wait:_:_:)(1, 0, 0xD000000000000025, 0x80000001002B9A30, 689, v199, v200);
                                }

                                else
                                {
                                  outlined consume of Data?(v205, v204);
                                  outlined consume of Data?(v216, v240);
                                  outlined consume of Data?(v228, v239);

                                  v201 = v1[1];
                                  v202 = v1[57];
                                  v203 = v1[58];

                                  return v201(v202, v203);
                                }
                              }

                              v181._countAndFlagsBits = 538970668;
                              v181._object = 0xE400000000000000;
                              String.append(_:)(v181);
LABEL_188:
                              v241._countAndFlagsBits = 0;
                              v241._object = 0xE000000000000000;
                              _StringGuts.grow(_:)(16);

                              strcpy(&v241, "force : [ ");
                              BYTE5(v241._object) = 0;
                              HIWORD(v241._object) = -5120;
                              v1[16] = v148;
                              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
                              lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, &protocol conformance descriptor for [A]);
                              v182 = BidirectionalCollection<>.joined(separator:)();
                              v184 = v183;

                              v185._countAndFlagsBits = v182;
                              v185._object = v184;
                              String.append(_:)(v185);

                              v186._countAndFlagsBits = 23840;
                              v186._object = 0xE200000000000000;
                              String.append(_:)(v186);
                              String.append(_:)(v241);

                              goto LABEL_189;
                            }

                            v175._countAndFlagsBits = 538970668;
                            v175._object = 0xE400000000000000;
                            String.append(_:)(v175);
                          }

                          else if (!v120)
                          {
                            if (!v148)
                            {
                              goto LABEL_189;
                            }

                            goto LABEL_188;
                          }

                          v241._countAndFlagsBits = 0;
                          v241._object = 0xE000000000000000;
                          _StringGuts.grow(_:)(16);

                          strcpy(&v241, "block : [ ");
                          BYTE5(v241._object) = 0;
                          HIWORD(v241._object) = -5120;
                          v1[17] = v120;
                          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
                          lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, &protocol conformance descriptor for [A]);
                          v176 = BidirectionalCollection<>.joined(separator:)();
                          v178 = v177;

                          v179._countAndFlagsBits = v176;
                          v179._object = v178;
                          String.append(_:)(v179);

                          v180._countAndFlagsBits = 23840;
                          v180._object = 0xE200000000000000;
                          String.append(_:)(v180);
                          String.append(_:)(v241);

                          goto LABEL_186;
                        }

                        goto LABEL_179;
                      }
                    }

                    else
                    {
                      v157 = static DefaultsManager.Cloud.capabilitiesForce.getter();
                      if (v157)
                      {
                        v158 = *(v157 + 16);
                        if (v158)
                        {
                          v220 = v219 | (v218 != 0);
                          v159 = v1[38];
                          v233 = *(v159 + 16);
                          v160 = v157 + ((*(v159 + 80) + 32) & ~*(v159 + 80));
                          v227 = *(v159 + 72);
                          v161 = (v159 + 8);
                          v148 = _swiftEmptyArrayStorage;
                          do
                          {
                            v162 = v1[39];
                            v163 = v1[37];
                            v233(v162, v160, v163);
                            v164 = CloudDevice.Capability.rawValue.getter();
                            v166 = v165;
                            (*v161)(v162, v163);
                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              v148 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v148 + 2) + 1, 1, v148);
                            }

                            v168 = *(v148 + 2);
                            v167 = *(v148 + 3);
                            if (v168 >= v167 >> 1)
                            {
                              v148 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v167 > 1), v168 + 1, 1, v148);
                            }

                            *(v148 + 2) = v168 + 1;
                            v169 = &v148[2 * v168];
                            *(v169 + 4) = v164;
                            *(v169 + 5) = v166;
                            v160 += v227;
                            --v158;
                          }

                          while (v158);
                          goto LABEL_177;
                        }

LABEL_179:
                        v148 = _swiftEmptyArrayStorage;
                        goto LABEL_180;
                      }
                    }

                    v148 = 0;
                    goto LABEL_181;
                  }
                }

                else
                {
                  v129 = static DefaultsManager.Cloud.capabilitiesBlock.getter();
                  if (v129)
                  {
                    v130 = *(v129 + 16);
                    if (v130)
                    {
                      v131 = v1[38];
                      v132 = *(v131 + 16);
                      v131 += 16;
                      v133 = v129 + ((*(v131 + 64) + 32) & ~*(v131 + 64));
                      v231 = *(v131 + 56);
                      v238 = v132;
                      v134 = (v131 - 8);
                      v120 = _swiftEmptyArrayStorage;
                      do
                      {
                        v135 = v1[41];
                        v136 = v1[37];
                        v238(v135, v133, v136);
                        v137 = CloudDevice.Capability.rawValue.getter();
                        v139 = v138;
                        (*v134)(v135, v136);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v120 + 2) + 1, 1, v120);
                        }

                        v141 = *(v120 + 2);
                        v140 = *(v120 + 3);
                        if (v141 >= v140 >> 1)
                        {
                          v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v140 > 1), v141 + 1, 1, v120);
                        }

                        *(v120 + 2) = v141 + 1;
                        v142 = &v120[2 * v141];
                        *(v142 + 4) = v137;
                        *(v142 + 5) = v139;
                        v133 += v231;
                        --v130;
                      }

                      while (v130);
                      goto LABEL_158;
                    }

                    goto LABEL_157;
                  }
                }

                v120 = 0;
                goto LABEL_159;
              }

              goto LABEL_135;
            }
          }

          else
          {
            v101 = static DefaultsManager.Cloud.capabilitiesMock.getter();
            if (v101)
            {
              v102 = *(v101 + 16);
              if (v102)
              {
                v103 = v1[38];
                v105 = *(v103 + 16);
                v104 = v103 + 16;
                v236 = v105;
                v106 = v101 + ((*(v104 + 64) + 32) & ~*(v104 + 64));
                v225 = *(v104 + 56);
                v92 = _swiftEmptyArrayStorage;
                do
                {
                  v107 = v1[43];
                  v108 = v1[37];
                  v236(v107, v106, v108);
                  v109 = CloudDevice.Capability.rawValue.getter();
                  v111 = v110;
                  (*(v104 - 8))(v107, v108);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v92 + 2) + 1, 1, v92);
                  }

                  v113 = *(v92 + 2);
                  v112 = *(v92 + 3);
                  if (v113 >= v112 >> 1)
                  {
                    v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v112 > 1), v113 + 1, 1, v92);
                  }

                  *(v92 + 2) = v113 + 1;
                  v114 = &v92[2 * v113];
                  *(v114 + 4) = v109;
                  *(v114 + 5) = v111;
                  v106 += v225;
                  --v102;
                }

                while (v102);
                goto LABEL_133;
              }

LABEL_135:
              v214 = _swiftEmptyArrayStorage;
              goto LABEL_136;
            }
          }

          v214 = 0;
          goto LABEL_137;
        }

LABEL_86:
        v218 = 0;
        goto LABEL_115;
      }

LABEL_62:
      v241._countAndFlagsBits = v29;

      specialized MutableCollection<>.sort(by:)(&v241);

      v36 = v241._countAndFlagsBits;
      v222 = v241._countAndFlagsBits;
      if (v35)
      {
        goto LABEL_55;
      }

      goto LABEL_71;
    }

    v43 = v41;
    outlined consume of Data?(v228, v239);

    goto LABEL_66;
  }

  v30 = objc_opt_self();
  outlined copy of Data._Representation(v14, v240);
  v31 = Data._bridgeToObjectiveC()().super.isa;
  v1[21] = 0;
  v32 = [v30 JSONObjectWithData:v31 options:0 error:v1 + 21];

  v33 = v1[21];
  if (v32)
  {
    v34 = v33;
    _bridgeAnyObjectToAny(_:)();
    outlined consume of Data?(v14, v240);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v29 = v1[22];
    }

    else
    {
      v29 = 0;
    }

    goto LABEL_51;
  }

  v44 = v33;
  v215 = v14;
  outlined consume of Data?(v14, v240);

  _convertNSErrorToError(_:)();

LABEL_67:
  swift_willThrow();
  outlined consume of Data?(v8, v10);
  outlined consume of Data?(v215, v240);
  outlined consume of Data?(v228, v239);

  v45 = v1[1];

  return v45();
}

uint64_t specialized MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:)()
{

  return _swift_task_switch(specialized MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:), 0, 0);
}

uint64_t specialized MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:)(__n128 a1)
{
  v3 = v1[55];
  v2 = v1[56];
  v5 = v1[53];
  v4 = v1[54];
  outlined consume of Data?(v1[51], v1[52]);
  outlined consume of Data?(v5, v4);
  outlined consume of Data?(v3, v2);

  v6 = v1[1];
  v7 = v1[57];
  v8 = v1[58];

  return v6(v7, v8);
}

uint64_t specialized MOProcessingServer.capCommon()()
{
  v1 = type metadata accessor for Logger();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v0[6] = swift_task_alloc();
  v2 = type metadata accessor for CloudDevice.Capability();
  v0[7] = v2;
  v0[8] = *(v2 - 8);
  v0[9] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.capCommon(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 80) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = specialized MOProcessingServer.capCommon();

  return CloudManager.getDeviceDB()();
}

{
  if (*(v0 + 96))
  {
    type metadata accessor for CloudDevicesDB();
    lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, &type metadata accessor for CloudDevicesDB, &protocol conformance descriptor for CloudDevicesDB);
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(specialized MOProcessingServer.capCommon(), v2, v1);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3(0, 0xE000000000000000);
  }
}

{
  *(v0 + 104) = CloudDevicesDB.commonSecondaryCapabilities()();

  return _swift_task_switch(specialized MOProcessingServer.capCommon(), 0, 0);
}

{
  v50 = v0;
  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0;
    v4 = *(v0 + 64);
    v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9MomentsUI11CloudDeviceV10CapabilityO_Tt1g5(*(v1 + 16), 0);
    v6 = specialized Sequence._copySequenceContents(initializing:)(&v49, v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v1);
    v7 = v49;

    outlined consume of Set<MOSuggestionAssetMapsClusterer.Cluster>.Iterator._Variant(v7);
    if (v6 != v2)
    {
      __break(1u);
    }

    v0 = v3;
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v49 = v5;
  specialized MutableCollection<>.sort(by:)(&v49);
  v8 = v49;
  v9 = *(v49 + 2);
  if (v9)
  {
    v48 = v0;
    v10 = *(v0 + 64);
    v49 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v11 = v49;
    v12 = *(v10 + 16);
    v10 += 16;
    v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v46 = *(v10 + 56);
    v47 = v12;
    v14 = (v10 - 8);
    do
    {
      v15 = *(v48 + 72);
      v16 = *(v48 + 56);
      v47(v15, v13, v16);
      v17 = CloudDevice.Capability.rawValue.getter();
      v19 = v18;
      (*v14)(v15, v16);
      v49 = v11;
      v21 = *(v11 + 2);
      v20 = *(v11 + 3);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v11 = v49;
      }

      *(v11 + 2) = v21 + 1;
      v22 = &v11[2 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
      v13 += v46;
      --v9;
    }

    while (v9);

    v0 = v48;
  }

  else
  {
  }

  v23 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v25 = [v23 dataWithJSONObject:isa options:0 error:v0 + 16];

  v26 = *(v0 + 16);
  if (v25)
  {
    v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    static String.Encoding.utf8.getter();
    v30 = String.init(data:encoding:)();
    if (v31)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0;
    }

    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = 0xE000000000000000;
    }

    type metadata accessor for CommonLogger();
    static CommonLogger.cloud.getter();

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    v36 = os_log_type_enabled(v34, v35);
    v38 = *(v0 + 32);
    v37 = *(v0 + 40);
    v39 = *(v0 + 24);
    if (v36)
    {
      v45 = *(v0 + 40);
      v40 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v40 = 136446466;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6F6D6D6F43706163, 0xEB0000000029286ELL, &v49);
      *(v40 + 12) = 2080;
      *(v40 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v49);
      _os_log_impl(&_mh_execute_header, v34, v35, "MOProcessingServer.%{public}s result = %s", v40, 0x16u);
      swift_arrayDestroy();

      outlined consume of Data._Representation(v27, v29);

      (*(v38 + 8))(v45, v39);
    }

    else
    {
      outlined consume of Data._Representation(v27, v29);

      (*(v38 + 8))(v37, v39);
    }

    v44 = *(v0 + 8);

    return v44(v32, v33);
  }

  else
  {
    v41 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t specialized MOProcessingServer.capCommon()(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(specialized MOProcessingServer.capCommon(), 0, 0);
}

uint64_t partial apply for closure #1 in MOProcessingServer.beginSystemTask(withTask:completionHandler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in MOProcessingServer.beginSystemTask(withTask:completionHandler:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in MOProcessingServer.continueSystemTask(withToken:completionHandler:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in MOProcessingServer.continueSystemTask(withToken:completionHandler:)(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t partial apply for closure #1 in MOProcessingServer.endSystemTask(withToken:completionHandler:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in MOProcessingServer.endSystemTask(withToken:completionHandler:)(a1, v7, v8, v9, v1 + v6, v11, v12);
}

void specialized MOProcessingServer.resetOnboardingDeferralCount(_:)(void *a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    if (v3 == 1)
    {
      [a1 integerValue];

      static DefaultsManager.SyncOnboarding.resetDeferralCount(_:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    [a1 integerValue];

    static DefaultsManager.Onboarding.resetDeferralCount(_:)();
  }
}

uint64_t partial apply for closure #1 in MOProcessingServer.setOnboarded(flag:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in MOProcessingServer.setOnboarded(flag:)(a1, v4, v5, v7, v6);
}

uint64_t sub_1001FE2D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t partial apply for closure #1 in MOProcessingServer.setNotificationSettingWith(_:shouldUpdateDefaults:completionHandler:)(uint64_t a1)
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
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in MOProcessingServer.setNotificationSettingWith(_:shouldUpdateDefaults:completionHandler:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001FE408()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t partial apply for closure #1 in MOProcessingServer.handleDefaultAppChange(toBundleID:handler:)(uint64_t a1)
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
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in MOProcessingServer.handleDefaultAppChange(toBundleID:handler:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in MOProcessingServer.getAuthorizedAppsForNotificationServicing(handler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in MOProcessingServer.getAuthorizedAppsForNotificationServicing(handler:)(a1, v4, v5, v6, v7, v8);
}

uint64_t specialized MOProcessingServer.getApplicationsWithDataAccess()()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.getApplicationsWithDataAccess(), 0, 0);
}

{
  v41 = v0;
  type metadata accessor for CommonLogger();
  static CommonLogger.services.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[MOProcessingServer] getApplicationsWithDataAccess", v4, 2u);
  }

  v5 = v0[6];
  v7 = v0[2];
  v6 = v0[3];

  v8 = *(v6 + 8);
  v8(v5, v7);
  v9 = specialized static MOAngelDefaultsManager.dictionaryValueFor(_:)();
  if (v9 && (v10 = v9, specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v9), v12 = v11, , v12))
  {
    v38 = v8;
    v13 = 0;
    v14 = *(v12 + 64);
    v39 = _swiftEmptyArrayStorage;
    v40 = _swiftEmptyArrayStorage;
    v15 = -1;
    v16 = -1 << *(v12 + 32);
    if (-v16 < 64)
    {
      v15 = ~(-1 << -v16);
    }

    v17 = v15 & v14;
    v18 = (63 - v16) >> 6;
    if ((v15 & v14) == 0)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_8:
      while (1)
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v1 = *(*(v12 + 56) + 8 * (v19 | (v13 << 6)));
        v8 = objc_allocWithZone(type metadata accessor for ApprovedApplication());

        v10 = v8;
        v20 = ApprovedApplication.init(bundleID:timestamp:)();
        if (v20)
        {
          break;
        }

        if (!v17)
        {
          goto LABEL_10;
        }
      }

      v22 = v20;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v1 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v10 = &v40;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v39 = v40;
    }

    while (v17);
    while (1)
    {
LABEL_10:
      v21 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v21 >= v18)
      {
        break;
      }

      v17 = *(v12 + 64 + 8 * v21);
      ++v13;
      if (v17)
      {
        v13 = v21;
        goto LABEL_8;
      }
    }

    static CommonLogger.services.getter();

    v10 = Logger.logObject.getter();
    LOBYTE(v17) = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v17))
    {
      v1 = swift_slowAlloc();
      *v1 = 134217984;
      v8 = v38;
      if (!(v39 >> 62))
      {
        v30 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_24:
        v31 = v0[5];
        v32 = v0[2];
        *(v1 + 4) = v30;

        _os_log_impl(&_mh_execute_header, v10, v17, "[MOProcessingServer] result for dataAccess: %ld", v1, 0xCu);

        v8(v31, v32);
        goto LABEL_26;
      }

LABEL_31:
      v30 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_24;
    }

    v33 = v0[5];
    v34 = v0[2];

    v38(v33, v34);

LABEL_26:
    v35 = objc_allocWithZone(type metadata accessor for ApprovedApplicationList());
    v29 = ApprovedApplicationList.init(apps:)();
  }

  else
  {
    static CommonLogger.services.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[4];
    v27 = v0[2];
    if (v25)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "[MOProcessingServer] no defaults for authorizedAppsArray", v28, 2u);
    }

    v8(v26, v27);
    v29 = 0;
  }

  v36 = v0[1];

  return v36(v29);
}

void specialized MOProcessingServer.listener(_:didReceive:withContext:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v56 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v54 - v9;
  __chkstk_darwin(v8);
  v12 = &v54 - v11;
  type metadata accessor for CommonLogger();
  static CommonLogger.services.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "[BSServiceConnectionHost] connection received", v15, 2u);
  }

  v16 = *(v5 + 8);
  v58 = v5 + 8;
  v59 = v4;
  v57 = v16;
  v16(v12, v4);
  static ViewServiceConstants.momentsUIServiceProcessorIdentifier.getter();
  v17 = String._bridgeToObjectiveC()();

  v18 = [objc_opt_self() interfaceWithIdentifier:v17];

  v19 = [objc_opt_self() protocolForProtocol:&OBJC_PROTOCOL____TtP9MomentsUI16ProcessingServer_];
  [v18 setServer:v19];

  swift_getObjectType();
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v2;
  v20[4] = a1;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for closure #1 in MOProcessingServer.listener(_:didReceive:withContext:);
  *(v21 + 24) = v20;
  aBlock[4] = _sSo30UIGraphicsImageRendererContextCIgg_ABIegg_TRTA_0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  aBlock[3] = &block_descriptor_721;
  v22 = _Block_copy(aBlock);
  v23 = v18;
  v24 = v2;
  v25 = a1;

  [v25 configureConnection:v22];
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if ((v22 & 1) == 0)
  {
    if (BSServiceConnectionHost.isEntitled.getter())
    {
      static CommonLogger.services.getter();
      v26 = v25;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v55 = v23;
        v29 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        aBlock[0] = v56;
        *v29 = 67109378;
        v30 = [v26 remoteToken];
        v31 = [v30 pid];

        *(v29 + 4) = v31;
        *(v29 + 8) = 2080;
        v32 = [v26 remoteToken];
        v33 = [v32 bundleID];

        if (v33)
        {
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;
        }

        else
        {
          v34 = 7104878;
          v36 = 0xE300000000000000;
        }

        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, aBlock);

        *(v29 + 10) = v51;
        _os_log_impl(&_mh_execute_header, v27, v28, "[BSServiceConnectionHost] valid connection, activating, processPID=%d, processBundleID=%s", v29, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v56);

        v57(v10, v59);
        v50 = &selRef_activate;
LABEL_17:
        v23 = v55;
        goto LABEL_18;
      }

      v57(v10, v59);
      v50 = &selRef_activate;
    }

    else
    {
      v37 = v56;
      static CommonLogger.services.getter();
      v38 = v25;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v55 = v23;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        aBlock[0] = v42;
        *v41 = 67109378;
        v43 = [v38 remoteToken];
        v44 = [v43 pid];

        *(v41 + 4) = v44;
        *(v41 + 8) = 2080;
        v45 = [v38 remoteToken];
        v46 = [v45 bundleID];

        if (v46)
        {
          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v49 = v48;
        }

        else
        {
          v47 = 7104878;
          v49 = 0xE300000000000000;
        }

        v52 = v59;
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, aBlock);

        *(v41 + 10) = v53;
        _os_log_impl(&_mh_execute_header, v39, v40, "[BSServiceConnectionHost] invalid entitlement, processPID=%d, processBundleID=%s", v41, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v42);

        v57(v56, v52);
        v50 = &selRef_invalidate;
        goto LABEL_17;
      }

      v57(v37, v59);
      v50 = &selRef_invalidate;
    }

LABEL_18:
    [v25 *v50];

    return;
  }

  __break(1u);
}

uint64_t sub_1001FF2B0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_1001FF30C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x80);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1001FF374@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t sub_1001FF3D0(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x98);

  return v2(v3);
}

uint64_t sub_1001FF434@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.getApplicationsWithDataAccess()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.getApplicationsWithDataAccess()(v2);
}

uint64_t sub_1001FF5A8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.runNotificationServicing(for:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.runNotificationServicing(for:)(v2, v3, v4);
}

uint64_t objectdestroy_137Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.isUIActive()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.isUIActive()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.setOnboardedAsync(flag:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.setOnboardedAsync(flag:)(v2, v3, v4);
}

uint64_t objectdestroy_124Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t objectdestroy_120Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.capCommon()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.capCommon()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.capReset()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.capReset()(v2, v3);
}

uint64_t sub_1001FFAEC()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:)(v2, v3, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.capList()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.capList()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.cap()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.cap()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceNewlyOnboardedClear()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceNewlyOnboardedClear()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceNewlyOnboarded()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceNewlyOnboarded()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceNominateDeclineJSON()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceNominateDeclineJSON()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceNominateDecline()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceNominateDecline()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceNominateJSON(devicePrefix:bundleSuffix:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceNominateJSON(devicePrefix:bundleSuffix:)(v2, v3, v5, v4);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceNominate(devicePrefix:bundleSuffix:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceNominate(devicePrefix:bundleSuffix:)(v2, v3, v5, v4);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceAutoNominateJSON()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceAutoNominateJSON()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceAutoNominate()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceAutoNominate()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceAbdicatePrimaryJSON()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceAbdicatePrimaryJSON()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceAbdicatePrimary()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceAbdicatePrimary()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceMakePrimaryJSON()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceMakePrimaryJSON()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceMakePrimary()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceMakePrimary()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceListJSON()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceListJSON()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceList()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return @objc closure #1 in MOProcessingServer.deviceList()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceRefresh()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceRefresh()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.databaseSnapshotDelete(sequence:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.databaseSnapshotDelete(sequence:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.databaseSnapshotList()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.databaseSnapshotList()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.databaseWipe()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.databaseWipe()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.cloudCancelSync()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.cloudCancelSync()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.cloudSync()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.cloudSync()(v2);
}

uint64_t objectdestroy_191Tm()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.realTimeCheckForNotification(significantLocationEnabled:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.realTimeCheckForNotification(significantLocationEnabled:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.runFullProcessing()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.runFullProcessing()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.testInjectBadRecordChange()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.testInjectBadRecordChange()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.keepUIActive()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.keepUIActive()(v2);
}

uint64_t objectdestroy_163Tm()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.keepProcessUp()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.keepProcessUp()(v2);
}

uint64_t sub_100200EF4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100200F48()
{

  return _swift_deallocObject(v0, 24, 7);
}

double outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_2(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double outlined consume of (String?, UInt64, UInt64?)?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100201118()
{
  v1 = type metadata accessor for CloudDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in static MOProcessingServer.sendAlertFor(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for CloudDevice() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in static MOProcessingServer.sendAlertFor(_:)(a1, v6, v7, v1 + v5);
}

uint64_t sub_1002012CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for closure #1 in closure #1 in MOProcessingServer.subscribeToCloudOnboardingChanges()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in closure #1 in MOProcessingServer.subscribeToCloudOnboardingChanges()();
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0(a1) & 1;
}

void thunk for @escaping @callee_guaranteed (@unowned MODatabaseUpgradeStatus, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t *MOEventBundleStore.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static MOEventBundleStore.shared;
}

BOOL MOEventBundle.recommendedEligible.getter()
{
  v1 = [v0 rankingDictionary];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v5 & 1) == 0))
  {

    outlined destroy of AnyHashable(v7);
LABEL_9:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_10;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, &v8);
  outlined destroy of AnyHashable(v7);

  if (!*(&v9 + 1))
  {
LABEL_10:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v8, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  return (swift_dynamicCast() & 1) != 0 && (v7[0] - 1) < 2;
}

uint64_t MOEventBundle.visibilityCategory.getter()
{
  v1 = [v0 rankingDictionary];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v8 = 0xD000000000000017;
  *(&v8 + 1) = 0x80000001002B6760;
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v5 & 1) == 0))
  {

    outlined destroy of AnyHashable(v7);
LABEL_8:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_9;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, &v8);
  outlined destroy of AnyHashable(v7);

  if (!*(&v9 + 1))
  {
LABEL_9:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v8, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v7[0];
  }

  return 0;
}

BOOL MOEventBundle.recentEligible.getter()
{
  v1 = [v0 rankingDictionary];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v5 & 1) == 0))
  {

    outlined destroy of AnyHashable(v7);
LABEL_8:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_9;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, &v8);
  outlined destroy of AnyHashable(v7);

  if (!*(&v9 + 1))
  {
LABEL_9:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v8, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return ((v7[0] - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  return 0;
}

double MOEventBundle.bundleRankingScore.getter(uint64_t a1, uint64_t a2)
{
  v4 = [v2 rankingDictionary];
  v5 = 0.0;
  if (v4)
  {
    v6 = v4;
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    AnyHashable.init<A>(_:)();
    if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v9 & 1) != 0))
    {
      outlined init with copy of Any(*(v7 + 56) + 32 * v8, v12);
      outlined destroy of AnyHashable(v11);

      if (swift_dynamicCast())
      {
        return *&a1;
      }
    }

    else
    {

      outlined destroy of AnyHashable(v11);
    }
  }

  return v5;
}

uint64_t MOEventBundleStore.__allocating_init()()
{
  v0 = swift_allocObject();
  MOEventBundleStore.init()();
  return v0;
}

uint64_t static MOEventBundleStore.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for defaultQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  v8 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static MOEventBundleStore.defaultQueue = result;
  return result;
}

uint64_t key path getter for MOEventBundleStore.allBundles : MOEventBundleStore@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t key path setter for MOEventBundleStore.allBundles : MOEventBundleStore(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 200);

  return v2(v3);
}

uint64_t (*MOEventBundleStore.allBundles.modify(uint64_t *a1))()
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
  *(v3 + 48) = static Published.subscript.modify();
  return MOAngelControllerWrapper.isExpanded.modify;
}

uint64_t key path setter for MOEventBundleStore.$allBundles : MOEventBundleStore(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMd, &_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMR);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 224))(v6);
}

uint64_t (*MOEventBundleStore.$allBundles.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMd, &_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMR);
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

  v9 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore__allBundles;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay16MomentsUIService22MOEventBundleWithAssetCGGMd, &_s7Combine9PublishedVySay16MomentsUIService22MOEventBundleWithAssetCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MOAngelControllerWrapper.$isExpanded.modify;
}

uint64_t key path getter for MOEventBundleStore.privateUIBundles : MOEventBundleStore@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  return result;
}

uint64_t key path setter for MOEventBundleStore.privateUIBundles : MOEventBundleStore(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 248);

  return v2(v3);
}

uint64_t (*MOEventBundleStore.privateUIBundles.modify(uint64_t *a1))()
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
  *(v3 + 48) = static Published.subscript.modify();
  return MOAngelControllerWrapper.isVisible.modify;
}

uint64_t key path setter for MOEventBundleStore.$privateUIBundles : MOEventBundleStore(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMd, &_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMR);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 272))(v6);
}

uint64_t (*MOEventBundleStore.$privateUIBundles.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMd, &_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMR);
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

  v9 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore__privateUIBundles;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay16MomentsUIService22MOEventBundleWithAssetCGGMd, &_s7Combine9PublishedVySay16MomentsUIService22MOEventBundleWithAssetCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MOAngelControllerWrapper.$isExpanded.modify;
}

uint64_t key path getter for MOEventBundleStore.publicUIBundles : MOEventBundleStore@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result;
  return result;
}

uint64_t key path setter for MOEventBundleStore.publicUIBundles : MOEventBundleStore(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 296);

  return v2(v3);
}

uint64_t MOEventBundleStore.allBundles.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t MOEventBundleStore.allBundles.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*MOEventBundleStore.publicUIBundles.modify(uint64_t *a1))()
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
  *(v3 + 48) = static Published.subscript.modify();
  return MOAngelControllerWrapper.isVisible.modify;
}

uint64_t key path setter for MOEventBundleStore.$publicUIBundles : MOEventBundleStore(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMd, &_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMR);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 320))(v6);
}

uint64_t MOEventBundleStore.$allBundles.setter(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMd, &_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMR);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  (*(v4 + 16))(&v7 - v5, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay16MomentsUIService22MOEventBundleWithAssetCGGMd, &_s7Combine9PublishedVySay16MomentsUIService22MOEventBundleWithAssetCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*MOEventBundleStore.$publicUIBundles.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMd, &_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMR);
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

  v9 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore__publicUIBundles;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay16MomentsUIService22MOEventBundleWithAssetCGGMd, &_s7Combine9PublishedVySay16MomentsUIService22MOEventBundleWithAssetCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MOAngelControllerWrapper.$isExpanded.modify;
}

uint64_t key path getter for MOEventBundleStore.isLoading : MOEventBundleStore@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result & 1;
  return result;
}

uint64_t MOEventBundleStore.isLoading.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t MOEventBundleStore.isLoading.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*MOEventBundleStore.isLoading.modify(uint64_t *a1))()
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
  *(v3 + 48) = static Published.subscript.modify();
  return MOAngelControllerWrapper.isVisible.modify;
}

uint64_t key path setter for MOEventBundleStore.$isLoading : MOEventBundleStore(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 368))(v6);
}

uint64_t MOEventBundleStore.$allBundles.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t MOEventBundleStore.$isLoading.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MOEventBundleStore.$isLoading.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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

  v9 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore__isLoading;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MOAngelControllerWrapper.$isVisible.modify;
}

uint64_t MOEventBundleStore.isFirstRefresh.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_isFirstRefresh;
  swift_beginAccess();
  return *(v0 + v1);
}

void MOEventBundleStore.isFirstRefresh.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_isFirstRefresh;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MOEventBundleStore.isRunningSoftRefresh.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_isRunningSoftRefresh;
  swift_beginAccess();
  return *(v0 + v1);
}

void MOEventBundleStore.isRunningSoftRefresh.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_isRunningSoftRefresh;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MOEventBundleStore.isRunningDatabaseUpgrade.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_isRunningDatabaseUpgrade;
  swift_beginAccess();
  return *(v0 + v1);
}

double MOEventBundleStore.isRunningDatabaseUpgrade.setter(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_isRunningDatabaseUpgrade;
  swift_beginAccess();
  *(v2 + v4) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static MOAngelLogger.shared);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = *(v2 + v4);

    _os_log_impl(&_mh_execute_header, v6, v7, "Performing DB Upgrade state update: %{BOOL}d", v8, 8u);
  }

  else
  {
  }

  return result;
}

uint64_t (*MOEventBundleStore.isRunningDatabaseUpgrade.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_isRunningDatabaseUpgrade;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return MOEventBundleStore.isRunningDatabaseUpgrade.modify;
}

void MOEventBundleStore.isRunningDatabaseUpgrade.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static MOAngelLogger.shared);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v3[3];
      v8 = v3[4];
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = *(v7 + v8);

      _os_log_impl(&_mh_execute_header, v5, v6, "Performing DB Upgrade state update: %{BOOL}d", v9, 8u);
    }

    else
    {
    }
  }

  free(v3);
}

void MOEventBundleStore.serviceFetchHandlers()()
{
  v1 = (*(*v0 + 528))();
  (*(*v0 + 536))(_swiftEmptyArrayStorage);
  v2 = v1;
  v22 = *(v1 + 16);
  if (!v22)
  {
LABEL_25:

    return;
  }

  v3 = 0;
  v21 = *(*v0 + 456);
  v19 = *(*v0 + 480);
  v20 = v2 + 32;
  while (1)
  {
    v24 = v3;
    v8 = (v20 + 32 * v3);
    v9 = *v8;
    v10 = *(v8 + 1);
    v11 = *(v8 + 2);

    v5 = v21(v12);
    v6 = v5;
    v13 = v9 == 1 && (v10 & 1) == 0;
    v23 = v11;
    if (v13)
    {
      break;
    }

LABEL_5:
    v3 = v24 + 1;
    v7 = v19(v5);
    v26 = v6;
    v25 = v7;
    v23(&v26, &v25);

    if (v24 + 1 == v22)
    {
      goto LABEL_25;
    }
  }

  v26 = _swiftEmptyArrayStorage;
  if (!(v5 >> 62))
  {
    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  if (!v14)
  {
LABEL_24:
    v4 = _swiftEmptyArrayStorage;
LABEL_4:

    v6 = v4;
    goto LABEL_5;
  }

LABEL_13:
  v15 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v16 = *(v6 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if ([v16 interfaceType] == 11)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++v15;
    if (v18 == v14)
    {
      v4 = v26;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

double static MOEventBundleStore.bundlesSubset(presentationDetails:bundles:)(char a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    specialized static MOEventBundleStore.filterBundlesForPublicUI(presentationDetails:bundles:)(a2, a3);
  }

  else
  {
  }

  return result;
}

double MOEventBundleStore.refreshAndFetchBundles(presentationDetails:queue:completionHandler:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v23 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v14 = *(v21 - 8);
  __chkstk_darwin(v21);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = v6;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  *(v18 + 56) = partial apply for closure #1 in MOEventBundleStore.refreshAndFetchBundles(presentationDetails:queue:completionHandler:);
  *(v18 + 64) = v17;
  aBlock[4] = partial apply for closure #2 in MOEventBundleStore.refreshAndFetchBundles(presentationDetails:queue:completionHandler:);
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_36;
  v19 = _Block_copy(aBlock);
  swift_retain_n();
  swift_retain_n();

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v22 + 8))(v13, v11);
  (*(v14 + 8))(v16, v21);

  return result;
}

void closure #1 in MOEventBundleStore.refreshAndFetchBundles(presentationDetails:queue:completionHandler:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static MOAngelLogger.shared);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[Pull Refresh] soft refresh from pull finished, execute fetch.", v3, 2u);
  }

  specialized MOEventBundleStore._fetchAvailableBundles(presentationDetails:completionHandler:)();
}

void closure #2 in MOEventBundleStore.refreshAndFetchBundles(presentationDetails:queue:completionHandler:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v14 = *(*a1 + 544);

  v15 = v14(aBlock);
  v17 = v16;
  v18 = *v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
    *v17 = v18;
  }

  v21 = *(v18 + 2);
  v20 = *(v18 + 3);
  if (v21 >= v20 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
    *v17 = v18;
  }

  *(v18 + 2) = v21 + 1;
  v22 = &v18[4 * v21];
  *(v22 + 32) = a2 & 1;
  *(v22 + 5) = a3;
  *(v22 + 6) = thunk for @escaping @callee_guaranteed (@guaranteed [MOEventBundle], @guaranteed Set<String>?) -> ()partial apply;
  *(v22 + 7) = v13;
  v23 = v15(aBlock, 0);
  if ((*(*a1 + 408))(v23))
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static MOAngelLogger.shared);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "[Pull Refresh] existing soft refresh running during pull, wait for it to finish.", v27, 2u);
    }

    v28 = swift_allocObject();
    *(v28 + 16) = a6;
    *(v28 + 24) = a7;
    v29 = *(*a1 + 568);

    v30 = v29(aBlock);
    v32 = v31;
    v33 = *v31;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    *v32 = v33;
    if ((v34 & 1) == 0)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
      *v32 = v33;
    }

    v36 = *(v33 + 2);
    v35 = *(v33 + 3);
    if (v36 >= v35 >> 1)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v33);
      *v32 = v33;
    }

    *(v33 + 2) = v36 + 1;
    v37 = &v33[2 * v36];
    *(v37 + 4) = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    *(v37 + 5) = v28;
    v30(aBlock, 0);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static MOAngelLogger.shared);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "[Pull Refresh] no existing soft refresh during pull, trigger soft refresh.", v41, 2u);
    }

    (*(*a1 + 416))(1);
    v42 = *(a1 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_promptManager);
    v43 = swift_allocObject();
    v43[2] = a1;
    v43[3] = a6;
    v43[4] = a7;
    aBlock[4] = partial apply for closure #1 in closure #2 in MOEventBundleStore.refreshAndFetchBundles(presentationDetails:queue:completionHandler:);
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_166;
    v44 = _Block_copy(aBlock);

    [v42 softRefreshEventsWithRefreshVariant:1536 andIgnoreLastTrigger:1 andHandler:v44];
    _Block_release(v44);
  }
}

void closure #1 in closure #2 in MOEventBundleStore.refreshAndFetchBundles(presentationDetails:queue:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static MOAngelLogger.shared);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "[MOEventBundleStore][Pull Refresh] softRefresh failed, retrying...", v10, 2u);
    }

    v11 = *(a2 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_promptManager);
    v12 = swift_allocObject();
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = a4;
    v25[4] = partial apply for closure #1 in closure #1 in closure #2 in MOEventBundleStore.refreshAndFetchBundles(presentationDetails:queue:completionHandler:);
    v25[5] = v12;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 1107296256;
    v25[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v25[3] = &block_descriptor_179;
    v13 = _Block_copy(v25);

    [v11 softRefreshEventsWithRefreshVariant:1536 andHandler:v13];
    _Block_release(v13);
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    v15 = *(*a2 + 568);

    v16 = v15(v25);
    v18 = v17;
    v19 = *v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v18 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
      *v18 = v19;
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    if (v22 >= v21 >> 1)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
      *v18 = v19;
    }

    *(v19 + 2) = v22 + 1;
    v23 = &v19[2 * v22];
    *(v23 + 4) = thunk for @callee_guaranteed () -> ()partial apply;
    *(v23 + 5) = v14;
    v24 = v16(v25, 0);
    (*(*a2 + 632))(v24);
  }
}

uint64_t closure #1 in closure #1 in closure #2 in MOEventBundleStore.refreshAndFetchBundles(presentationDetails:queue:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = *(*a2 + 568);

  v9 = v8(v19);
  v11 = v10;
  v12 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v11 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
    *v11 = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
    *v11 = v12;
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[2 * v15];
  *(v16 + 4) = thunk for @callee_guaranteed () -> ()partial apply;
  *(v16 + 5) = v7;
  v17 = v9(v19, 0);
  return (*(*a2 + 632))(v17);
}

double MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v32 = a4;
  v33 = a5;
  v35 = a3;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v16 = *(v36 - 8);
  v17 = __chkstk_darwin(v36);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v7 + 336))(v17))
  {
    v32 = a2;
    v33 = v16;
    v20 = a7;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static MOAngelLogger.shared);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "A loading process is already in progress: queued", v24, 2u);
    }

    v25 = swift_allocObject();
    *(v25 + 16) = v8;
    *(v25 + 24) = a1 & 1;
    *(v25 + 32) = v32;
    *(v25 + 40) = a6;
    *(v25 + 48) = v20;
    v42 = partial apply for closure #1 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:);
    v43 = v25;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed () -> ();
    v41 = &block_descriptor_42_3;
    v26 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v37 = _swiftEmptyArrayStorage;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);
    (*(v34 + 8))(v15, v13);
    (*(v33 + 8))(v19, v36);
  }

  else
  {
    (*(*v7 + 344))(1);
    (*(*v7 + 200))(_swiftEmptyArrayStorage);
    v27 = swift_allocObject();
    *(v27 + 16) = v7;
    *(v27 + 24) = a1 & 1;
    *(v27 + 32) = a2;
    *(v27 + 40) = a6;
    v29 = v32;
    v28 = v33;
    *(v27 + 48) = a7;
    *(v27 + 56) = v29;
    *(v27 + 64) = v28;
    v42 = partial apply for closure #2 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:);
    v43 = v27;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed () -> ();
    v41 = &block_descriptor_36_2;
    v30 = _Block_copy(&aBlock);

    outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(v29);
    static DispatchQoS.unspecified.getter();
    v37 = _swiftEmptyArrayStorage;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);
    (*(v34 + 8))(v15, v13);
    (*(v16 + 8))(v19, v36);
  }

  return result;
}

void closure #1 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = *(*a1 + 544);

  v12 = v11(v21);
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    *v14 = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
    *v14 = v15;
  }

  *(v15 + 2) = v18 + 1;
  v19 = &v15[4 * v18];
  *(v19 + 32) = a2 & 1;
  *(v19 + 5) = a3;
  *(v19 + 6) = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [MOEventBundle], @guaranteed Set<String>?) -> ();
  *(v19 + 7) = v10;
  v20 = v12(v21, 0);
  if (((*(*a1 + 336))(v20) & 1) == 0)
  {
    MOEventBundleStore.serviceFetchHandlers()();
  }
}

void closure #2 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  v37 = a4;
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v13 = *(*a1 + 544);

  v14 = v13(aBlock);
  v16 = v15;
  v17 = *v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    *v16 = v17;
  }

  v20 = *(v17 + 2);
  v19 = *(v17 + 3);
  if (v20 >= v19 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    *v16 = v17;
  }

  *(v17 + 2) = v20 + 1;
  v21 = &v17[4 * v20];
  v22 = a2 & 1;
  *(v21 + 32) = v22;
  *(v21 + 5) = a3;
  *(v21 + 6) = thunk for @escaping @callee_guaranteed (@guaranteed [MOEventBundle], @guaranteed Set<String>?) -> ()partial apply;
  *(v21 + 7) = v12;
  v14(aBlock, 0);
  v23 = [objc_opt_self() sharedInstance];
  v24 = [v23 onboardingFlowCompletionStatus];

  if (v24 >= 2 && ((*(*a1 + 384))() & 1) != 0)
  {
    (*(*a1 + 392))(0);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static MOAngelLogger.shared);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "[MOEventBundleStore] calling scheduleDatabaseUpgrade", v28, 2u);
    }

    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    *(v29 + 24) = a6;
    *(v29 + 32) = a7;
    *(v29 + 40) = v22;
    *(v29 + 48) = a3;
    *(v29 + 56) = v37;
    *(v29 + 64) = a5;
    v30 = *(a1 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_promptManager);
    v31 = swift_allocObject();
    *(v31 + 16) = partial apply for closure #1 in closure #2 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:);
    *(v31 + 24) = v29;
    aBlock[4] = partial apply for closure #2 in closure #2 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:);
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned MODatabaseUpgradeStatus, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_136;
    v32 = _Block_copy(aBlock);

    outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(a6);

    [v30 scheduleDatabaseUpgradeWithHandler:v32];
    _Block_release(v32);
  }

  else if ((*(*a1 + 408))() & 1) != 0 || ((*(*a1 + 432))())
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static MOAngelLogger.shared);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "[MOEventBundleStore] softRefreshEvents still running, skipping _fetchAvailableBundles", v36, 2u);
    }

    (*(*a1 + 344))(0);
    MOEventBundleStore.serviceFetchHandlers()();
  }

  else
  {
    specialized MOEventBundleStore._fetchAvailableBundles(presentationDetails:completionHandler:)();
  }
}

void closure #1 in closure #2 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static MOAngelLogger.shared);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "[MOEventBundleStore] returning from scheduleDatabaseUpgrade", v9, 2u);
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      goto LABEL_15;
    }

    if (a1 == 1)
    {
      v10 = (*(*a2 + 440))(0);
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      v10 = (*(*a2 + 440))(0);
      LODWORD(a1) = 0;
LABEL_16:
      if (a3)
      {
        v13 = (*(*a2 + 432))(v10);
        a3(v13 & 1);
      }

      if (a1)
      {
        (*(*a2 + 416))(1);
        specialized MOEventBundleStore._fetchAvailableBundles(presentationDetails:completionHandler:)();
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "[MOEventBundleStore] calling softRefreshEvents", v16, 2u);
        }

        v17 = *(a2 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_promptManager);
        v19[4] = partial apply for closure #1 in closure #1 in closure #2 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:);
        v19[5] = a2;
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 1107296256;
        v19[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
        v19[3] = &block_descriptor_139_0;
        v18 = _Block_copy(v19);

        [v17 softRefreshEventsWithRefreshVariant:1536 andHandler:v18];
        _Block_release(v18);
      }

      else
      {
        specialized MOEventBundleStore._fetchAvailableBundles(presentationDetails:completionHandler:)();
      }

      return;
    }

    if (a1 == 4)
    {
LABEL_15:
      v10 = (*(*a2 + 440))(0);
      LODWORD(a1) = 1;
      goto LABEL_16;
    }

LABEL_24:
    type metadata accessor for MODatabaseUpgradeStatus(0);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  v11 = (*(*a2 + 440))(1);
  if (a3)
  {
    v12 = (*(*a2 + 432))(v11);
    a3(v12 & 1);
  }
}

void closure #1 in closure #1 in closure #2 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static MOAngelLogger.shared);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "[MOEventBundleStore] softRefresh failed, retrying...", v6, 2u);
    }

    v7 = *(a2 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_promptManager);
    v9[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #2 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:);
    v9[5] = a2;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v9[3] = &block_descriptor_142;
    v8 = _Block_copy(v9);

    [v7 softRefreshEventsWithRefreshVariant:1536 andHandler:v8];
    _Block_release(v8);
  }

  else
  {
    (*(*a2 + 632))();
  }
}

uint64_t closure #2 in closure #2 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = a1;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static MOAngelLogger.shared);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[MOEventBundleStore] scheduleDatabaseUpgrade failed...", v8, 2u);
    }

    a1 = v4;
  }

  return a3(a1);
}

double closure #1 in MOEventBundleStore._fetchAvailableBundles(presentationDetails:completionHandler:)(unint64_t a1, uint64_t a2)
{
  v176 = a1;
  v164 = type metadata accessor for UUID();
  v2 = *(v164 - 8);
  __chkstk_darwin(v164);
  v163 = &v145 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  if (one-time initialization token for shared != -1)
  {
LABEL_123:
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, static MOAngelLogger.shared);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "[MOEventBundleStore] returning from fetchEventBundles", v9, 2u);
  }

  v10 = (*Strong + 344);
  v151 = *v10;
  v150 = v10;
  v151(0);
  if (!v176)
  {
    goto LABEL_125;
  }

  v11 = v176 >> 62;
  if (v176 >> 62)
  {
    v177 = _CocoaArrayWrapper.endIndex.getter();
    if (v177)
    {
      goto LABEL_8;
    }

LABEL_125:
    v142 = Logger.logObject.getter();
    v143 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      *v144 = 0;
      _os_log_impl(&_mh_execute_header, v142, v143, "[MOEventBundleStore] got nothing from fetchEventBundles", v144, 2u);
    }

    (*(*Strong + 464))(_swiftEmptyArrayStorage);
    MOEventBundleStore.serviceFetchHandlers()();
LABEL_128:

    return result;
  }

  v177 = *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v177)
  {
    goto LABEL_125;
  }

LABEL_8:

  v167 = v6;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    if (v11)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v15 = *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v15;

    _os_log_impl(&_mh_execute_header, v12, v13, "[MOEventBundleStore] bundles received from fetch: count=%ld", v14, 0xCu);
  }

  else
  {
  }

  v149 = 0;
  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  v175 = v176 & 0xC000000000000001;
  v184 = _swiftEmptyArrayStorage;
  v158 = v176 & 0xFFFFFFFFFFFFFF8;
  v157 = v176 + 32;
  v168 = 0x80000001002B6760;
  v156 = (v2 + 8);
  *&v16 = 134217984;
  v148 = v16;
  *&v16 = 136315138;
  v146 = v16;
  *&v16 = 134218754;
  v147 = v16;
  *&v16 = 134218242;
  v152 = v16;
  *&v16 = 136316418;
  v145 = v16;
  do
  {
    if (v175)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *(v158 + 16))
      {
        goto LABEL_121;
      }

      v30 = *(v157 + 8 * v17);
    }

    v2 = v30;
    if (__OFADD__(v17++, 1))
    {
      goto LABEL_119;
    }

    v32 = [v30 rankingDictionary];
    if (!v32)
    {
      goto LABEL_34;
    }

    v33 = v32;
    v34 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v179 = 0xD000000000000017;
    v180 = v168;
    AnyHashable.init<A>(_:)();
    if (!*(v34 + 16) || (v35 = specialized __RawDictionaryStorage.find<A>(_:)(&v181), (v36 & 1) == 0))
    {

      outlined destroy of AnyHashable(&v181);
LABEL_34:
      v182 = 0u;
      v183 = 0u;
LABEL_35:
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v182, &_sypSgMd, &_sypSgMR);
      goto LABEL_36;
    }

    outlined init with copy of Any(*(v34 + 56) + 32 * v35, &v182);
    outlined destroy of AnyHashable(&v181);

    if (!*(&v183 + 1))
    {
      goto LABEL_35;
    }

    if (swift_dynamicCast() && v181 == 4)
    {
      v2 = v2;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v181 = v20;
        *v19 = v146;
        v21 = [v2 bundleIdentifier];
        v159 = v18;
        v22 = v163;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v23 = v164;
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v17;
        v27 = v26;
        v28 = v22;
        v18 = v159;
        (*v156)(v28, v23);
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v27, &v181);
        v17 = v25;

        *(v19 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v37, v38, "[MOEventBundleStore] Filtering out bundle due to rejected ranking category id=%s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);

LABEL_16:

LABEL_17:

LABEL_18:
        continue;
      }

      continue;
    }

LABEL_36:
    v39 = [v2 resources];
    if (!v39)
    {
      goto LABEL_18;
    }

    v40 = v39;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOResource, MOResource_ptr);
    v178 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = [v2 promptLanguages];
    if (!v41 || (v42 = v41, v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v42, v44 = *(v43 + 16), , !v44))
    {

      v37 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v37, v66))
      {
        goto LABEL_17;
      }

      v67 = v2;
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v37, v66, "[MOEventBundleStore] Filtering out bundle due to missing prompts", v2, 2u);

      continue;
    }

    v162 = v40;
    v45 = v178;
    v46 = (*(*Strong + 616))(v178);
    v172 = v2;
    if (v46)
    {
      v49 = v46;
      v173 = v48;
      v170 = v47;
      v159 = v18;
      v50 = v2;

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      v174 = v50;

      v53 = os_log_type_enabled(v51, v52);
      v171 = v45 >> 62;
      if (v53)
      {
        v54 = v17;
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v181 = v56;
        *v55 = v147;
        *(v55 + 4) = *(v49 + 16);
        *(v55 + 12) = 2048;
        if (v45 >> 62)
        {
          *(v55 + 14) = _CocoaArrayWrapper.endIndex.getter();
          *(v55 + 22) = 2048;
          v57 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          *(v55 + 14) = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          *(v55 + 22) = 2048;
          v57 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v55 + 24) = v57 / 2;

        *(v55 + 32) = 2080;
        v58 = [v174 bundleIdentifier];
        v59 = v163;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v60 = v164;
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v62;
        v64 = v59;
        v45 = v178;
        (*v156)(v64, v60);
        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v181);

        *(v55 + 34) = v65;
        _os_log_impl(&_mh_execute_header, v51, v52, "[MOEventBundleStore.failedResources] failed resource count=%ld, totalCount=%ld, threshold=%ld, bundleId: %s", v55, 0x2Au);
        __swift_destroy_boxed_opaque_existential_0(v56);

        v17 = v54;
      }

      else
      {
      }

      v68 = *(v49 + 16);
      v165 = v17;
      if (v171)
      {
        v69 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v69 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (*(v49 + 16))
      {
        v70 = v69 < 4;
      }

      else
      {
        v70 = 0;
      }

      v71 = v70;
      if ([v174 interfaceType] == 11 || (v69 > 3 ? (v72 = v68 < v69 / 2) : (v72 = 1), v72 ? (v73 = 0) : (v73 = 1), ((v73 | v170 | v71) & 1) == 0))
      {
        v87 = v49;
        v88 = 0;
        v170 = v87;
        v91 = *(v87 + 56);
        v90 = v87 + 56;
        v89 = v91;
        v92 = 1 << *(v90 - 24);
        if (v92 < 64)
        {
          v93 = ~(-1 << v92);
        }

        else
        {
          v93 = -1;
        }

        v94 = v93 & v89;
        v2 = (v92 + 63) >> 6;
        v95 = v178 & 0xFFFFFFFFFFFFFF8;
        v166 = v178 & 0xFFFFFFFFFFFFFF8;
        if (v178 < 0)
        {
          v95 = v178;
        }

        v155 = v95;
        v154 = v178 & 0xC000000000000001;
        v153 = v178 + 32;
        v17 = v165;
        while (v94)
        {
LABEL_78:
          v97 = *(*(v170 + 48) + ((v88 << 9) | (8 * __clz(__rbit64(v94)))));
          v98 = v174;
          v99 = Logger.logObject.getter();
          v100 = static os_log_type_t.default.getter();

          v101 = os_log_type_enabled(v99, v100);
          v173 = v97;
          if (v101)
          {
            v102 = swift_slowAlloc();
            v161 = swift_slowAlloc();
            v181 = v161;
            *v102 = v152;
            *(v102 + 4) = v97;
            *(v102 + 12) = 2080;
            v103 = [v98 bundleIdentifier];
            v160 = v100;
            v104 = v103;
            v105 = v163;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v106 = v164;
            v107 = dispatch thunk of CustomStringConvertible.description.getter();
            v109 = v108;
            v110 = v105;
            v17 = v165;
            (*v156)(v110, v106);
            v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v109, &v181);

            *(v102 + 14) = v111;
            _os_log_impl(&_mh_execute_header, v99, v160, "[MOEventBundleStore.failedResources] hiding resource at index=%ld, bundleId: %s", v102, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v161);
          }

          if (v171)
          {
            v112 = _CocoaArrayWrapper.endIndex.getter();
            if ((v112 & 0x8000000000000000) != 0)
            {
              goto LABEL_120;
            }
          }

          else
          {
            v112 = *(v166 + 16);
          }

          v94 &= v94 - 1;
          if (v173 < v112)
          {
            if (v154)
            {
              v113 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v173 >= *(v166 + 16))
              {
                goto LABEL_122;
              }

              v113 = *(v153 + 8 * v173);
            }

            v114 = v113;
            [v113 setPriorityScore:20000.0];
          }
        }

        while (1)
        {
          v96 = v88 + 1;
          if (__OFADD__(v88, 1))
          {
            break;
          }

          if (v96 >= v2)
          {

            v115 = v162;
            [v174 setResources:v162];

            v2 = 1;
            v18 = v159;
            goto LABEL_94;
          }

          v94 = *(v90 + 8 * v96);
          ++v88;
          if (v94)
          {
            v88 = v96;
            goto LABEL_78;
          }
        }

        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      v74 = v174;

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v174 = swift_slowAlloc();
        v181 = v174;
        *v77 = v145;
        v78 = [v74 bundleIdentifier];
        v79 = v163;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v80 = v164;
        v81 = dispatch thunk of CustomStringConvertible.description.getter();
        v83 = v82;
        (*v156)(v79, v80);
        v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &v181);

        *(v77 + 4) = v84;
        *(v77 + 12) = 2048;
        v85 = *(v49 + 16);

        *(v77 + 14) = v85;

        *(v77 + 22) = 2048;
        if (v171)
        {
          v86 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v86 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v77 + 24) = v86;

        *(v77 + 32) = 1024;
        *(v77 + 34) = v73;
        *(v77 + 38) = 1024;
        *(v77 + 40) = v170 & 1;
        *(v77 + 44) = 1024;
        *(v77 + 46) = v71;
        _os_log_impl(&_mh_execute_header, v75, v76, "[BundleEventStore.failedResources] exceeded resource prevalidation failure count, removing bundle id: %s, resource failure count:%ld out of total resource count:%ld, hasMoreInvalidsThanValids=%{BOOL}d, shouldForceDropBundle=%{BOOL}d, hasNotEnoughVariety=%{BOOL}d", v77, 0x32u);
        __swift_destroy_boxed_opaque_existential_0(v174);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v2 = 0;
      v18 = v159;
      v17 = v165;
    }

    else
    {

      v2 = 1;
    }

LABEL_94:
    MOEventBundle._orderedAssetReferences()();
    if (v116)
    {
      if (v116 >> 62)
      {
        v119 = _CocoaArrayWrapper.endIndex.getter();

        if (!v119)
        {
LABEL_103:
          v159 = v18;
          v120 = v172;
          v121 = Logger.logObject.getter();
          v2 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v121, v2))
          {
            v122 = swift_slowAlloc();
            v123 = swift_slowAlloc();
            v181 = v123;
            *v122 = v146;
            v124 = [v120 bundleIdentifier];
            v125 = v163;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v126 = v17;
            v127 = v164;
            v128 = dispatch thunk of CustomStringConvertible.description.getter();
            v130 = v129;
            v131 = v127;
            v17 = v126;
            (*v156)(v125, v131);
            v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v130, &v181);

            *(v122 + 4) = v132;
            _os_log_impl(&_mh_execute_header, v121, v2, "[BundleEventStore] Dropping bundleId: %s due to no renderable resources", v122, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v123);
          }

          v18 = v159;
          goto LABEL_106;
        }
      }

      else
      {
        v117 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v117)
        {
          goto LABEL_103;
        }
      }
    }

    if (v2)
    {
      swift_beginAccess();
      v118 = v172;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v184 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v184 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v2 = *((v184 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v18 = v184;
      swift_endAccess();
      v151(0);
      v149 = 1;
    }

LABEL_106:
    v37 = Logger.logObject.getter();
    v133 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v133))
    {
      v134 = swift_slowAlloc();
      *v134 = v148;
      v2 = v172;
      if (v18 >> 62)
      {
        v136 = v134;
        v135 = _CocoaArrayWrapper.endIndex.getter();
        v134 = v136;
        v2 = v172;
      }

      else
      {
        v135 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v134 + 4) = v135;
      _os_log_impl(&_mh_execute_header, v37, v133, "[BundleEventStore] Added n=%ld allowed bundles to store", v134, 0xCu);
      goto LABEL_16;
    }
  }

  while (v17 != v177);
  v137 = *(*Strong + 464);

  v137(v138);
  MOEventBundleStore.serviceFetchHandlers()();
  if (v149)
  {

    goto LABEL_128;
  }

  v139 = Logger.logObject.getter();
  v140 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    *v141 = 0;
    _os_log_impl(&_mh_execute_header, v139, v140, "[BundleEventStore] No bundles added as suggestions", v141, 2u);
  }

  return result;
}

BOOL MOEventBundle.rejected.getter()
{
  v1 = [v0 rankingDictionary];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v5 & 1) == 0))
  {

    outlined destroy of AnyHashable(v7);
LABEL_9:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_10;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, &v8);
  outlined destroy of AnyHashable(v7);

  if (!*(&v9 + 1))
  {
LABEL_10:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v8, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  return (swift_dynamicCast() & 1) != 0 && v7[0] == 4;
}

double closure #2 in MOEventBundleStore._fetchAvailableBundles(presentationDetails:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a2)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static MOAngelLogger.shared);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "[BundleEventStore] fetchEventBundles failed, retring...", v15, 2u);
      }

      v16 = *(v11 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_promptManager);
      specialized MOBundleProcessingSession.allowedSourceTypes.getter();
      type metadata accessor for MOEventBundleSourceType(0);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type MOEventBundleSourceType and conformance MOEventBundleSourceType, type metadata accessor for MOEventBundleSourceType, &protocol conformance descriptor for MOEventBundleSourceType);
      isa = Set._bridgeToObjectiveC()().super.isa;

      v18 = swift_allocObject();
      v18[2] = v11;
      v18[3] = a4;
      v18[4] = a5;
      aBlock[4] = partial apply for closure #1 in closure #2 in MOEventBundleStore._fetchAvailableBundles(presentationDetails:completionHandler:);
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed _HKCurrentWorkoutSnapshot?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_156;
      v19 = _Block_copy(aBlock);

      [v16 fetchEventBundlesWithAllowedSourceTypes:isa respectOnboardingDates:1 respectLearnFromThisApp:1 handler:v19];

      _Block_release(v19);
    }

    else
    {
      if (a1)
      {
        v20 = [a1 sourceAppBundleIds];
        if (v20)
        {
          v21 = v20;
          v22 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          (*(*v11 + 488))(v22);
        }

        v23 = [a1 processedBundles];
        if (v23)
        {
          v24 = v23;
          type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOEventBundle, MOEventBundle_ptr);
          a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          a1 = 0;
        }
      }

      a4(a1);
    }
  }

  return result;
}

double closure #1 in closure #2 in MOEventBundleStore._fetchAvailableBundles(presentationDetails:completionHandler:)(id a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t, uint64_t))
{
  v5 = a1;
  if (a1)
  {
    v7 = [a1 sourceAppBundleIds];
    if (v7)
    {
      v8 = v7;
      v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      (*(*a3 + 488))(v9);
    }

    v10 = [v5 processedBundles];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOEventBundle, MOEventBundle_ptr);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v5 = 0;
    }
  }

  a4(v5, a2, a3);

  return result;
}

uint64_t MOEventBundleStore._failedResources(resources:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchTime();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = __chkstk_darwin(v2);
  v32 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v33 = v27 - v5;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v10[2] = 0;
  v36 = v10 + 2;
  v10[3] = 0;
  v10[4] = 0;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  if (one-time initialization token for defaultQueue != -1)
  {
    swift_once();
  }

  v27[1] = static MOEventBundleStore.defaultQueue;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = v11;
  v13[5] = v10;
  aBlock[4] = partial apply for closure #1 in MOEventBundleStore._failedResources(resources:);
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_54_0;
  v14 = _Block_copy(aBlock);

  v15 = v11;

  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v16 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v31 + 8))(v7, v16);
  (*(v28 + 8))(v9, v30);

  v17 = v32;
  static DispatchTime.now()();
  v18 = v33;
  + infix(_:_:)();
  v19 = v35;
  v20 = *(v34 + 8);
  v20(v17, v35);
  OS_dispatch_group.wait(timeout:)();
  v20(v18, v19);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static MOAngelLogger.shared);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "[BundleEventStore.failedResources] timed out while validating assets", v24, 2u);
    }
  }

  swift_beginAccess();
  v25 = v10[2];
  outlined copy of MOEventBundleStore.ResourceValidationResult?(v25, v10[3], v10[4]);

  return v25;
}

double closure #1 in MOEventBundleStore._failedResources(resources:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = a4;
    v11 = *(*v9 + 624);
    v12 = a3;

    v11(a2, partial apply for closure #1 in closure #1 in MOEventBundleStore._failedResources(resources:), v10);
  }

  return result;
}

double closure #1 in closure #1 in MOEventBundleStore._failedResources(resources:)(uint64_t a1, char a2, uint64_t a3, dispatch_group_t group, void *a5)
{
  dispatch_group_leave(group);
  swift_beginAccess();
  v9 = a5[2];
  v10 = a5[3];
  v11 = a5[4];
  a5[2] = a1;
  a5[3] = a2 & 1;
  a5[4] = a3;
  outlined consume of MOEventBundleStore.ResourceValidationResult?(v9, v10, v11);

  return result;
}

double MOEventBundleStore._failedResourcesAsync(resources:completion:)(unint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, __n128), unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = __chkstk_darwin(v6 - 8);
  v245 = &v200 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v247 = &v200 - v9;
  v240 = type metadata accessor for UUID();
  v229 = *(v240 - 8);
  v10 = *(v229 + 64);
  v11 = __chkstk_darwin(v240);
  v218 = &v200 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v220 = &v200 - v13;
  v14 = __chkstk_darwin(v12);
  v221 = &v200 - v15;
  v16 = __chkstk_darwin(v14);
  v217 = &v200 - v17;
  __chkstk_darwin(v16);
  v219 = &v200 - v18;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  v239 = (v19 + 16);
  v20 = swift_allocObject();
  *(v20 + 16) = &_swiftEmptySetSingleton;
  v228 = (v20 + 16);
  v21 = swift_allocObject();
  v244 = v21;
  *(v21 + 16) = 0;
  v22 = v21 + 16;
  v23 = swift_allocObject();
  v243 = v23;
  *(v23 + 16) = 0;
  v241 = (v23 + 16);
  v24 = swift_allocObject();
  v242 = v24;
  *(v24 + 16) = 0;
  v248 = (v24 + 16);
  *&address.sa_len = 528;
  *&address.sa_data[6] = 0;
  v25 = SCNetworkReachabilityCreateWithAddress(0, &address);
  v28 = v25 && (flags[0] = 0, v26 = v25, v27 = SCNetworkReachabilityGetFlags(v25, flags), v26, v27) && (flags[0] & 6) == 2;
  v225 = v22;
  v234 = v28;
  v29 = !v28;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v238 = (v30 + 16);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  v231 = (v31 + 16);
  v32 = swift_allocObject();
  v236 = v30;
  v237 = v31;
  *(v32 + 16) = v31;
  *(v32 + 24) = v30;
  v33 = v242;
  *(v32 + 32) = v243;
  v222 = v29;
  *(v32 + 40) = v29;
  *(v32 + 48) = v33;
  *(v32 + 56) = a1;
  v34 = v244;
  *(v32 + 64) = v19;
  *(v32 + 72) = v34;
  *(v32 + 80) = a2;
  *(v32 + 88) = a3;
  v232 = v32;
  *(v32 + 96) = v20;
  v224 = a1 >> 62;
  v227 = a2;
  if (a1 >> 62)
  {
    goto LABEL_144;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v226 = a3;

    v230 = v20;

    v233 = v19;

    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v19 = v245;
    v37 = v247;
    if (!i)
    {
      break;
    }

    v20 = 0;
    v38 = a1 & 0xC000000000000001;
    v216 = @"MOStateOfMindMetaDataKeyStateOfMindID";
    v213 = (v229 + 32);
    v214 = (v229 + 48);
    v211 = (v229 + 8);
    v212 = (v229 + 16);
    v210 = v10 + 7;
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    v235 = (v229 + 56);
    v215 = @"MOWorkoutMetaDataKeyWorkoutID";
    *&v36 = 136315394;
    v208 = v36;
    *&v36 = 136315138;
    v209 = v36;
    v246 = a1 & 0xC000000000000001;
    v249 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v38)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *(v10 + 16))
        {
          goto LABEL_141;
        }

        v39 = *(a1 + 8 * v20 + 32);
      }

      v40 = v39;
      a3 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      switch([v39 type])
      {
        case 2uLL:
          if (__OFADD__(*v241, 1))
          {
            goto LABEL_143;
          }

          ++*v241;
          v91 = MOResource.photoLocalIdentifier.getter();
          if (!v92)
          {

            v10 = v249;
            goto LABEL_10;
          }

          v93 = specialized static MOSuggestionAssetPhotoLivePhotoVideosProvider.assetTypeFromIdentifier(_:)(v91, v92);

          if (v93 == 3)
          {
            goto LABEL_65;
          }

          goto LABEL_66;
        case 3uLL:
          if (!v234)
          {
            if (one-time initialization token for shared != -1)
            {
              swift_once();
            }

            v94 = type metadata accessor for Logger();
            __swift_project_value_buffer(v94, static MOAngelLogger.shared);
            v95 = Logger.logObject.getter();
            v96 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v95, v96))
            {
              v97 = swift_slowAlloc();
              *v97 = 0;
              v98 = v96;
              v99 = v95;
              v100 = "[BundleEventStore.failedResources] no internet";
              goto LABEL_63;
            }

LABEL_64:

LABEL_65:
            swift_beginAccess();
            specialized Set._Variant.insert(_:)(v250, v20);
            swift_endAccess();
LABEL_66:

LABEL_67:
            v38 = v246;
            v10 = v249;
            goto LABEL_10;
          }

          MOResource.bundleId.getter();
          if (!v82)
          {
            if (one-time initialization token for shared != -1)
            {
              swift_once();
            }

            v104 = type metadata accessor for Logger();
            __swift_project_value_buffer(v104, static MOAngelLogger.shared);
            v95 = Logger.logObject.getter();
            v105 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v95, v105))
            {
              v97 = swift_slowAlloc();
              *v97 = 0;
              v98 = v105;
              v99 = v95;
              v100 = "[BundleEventStore.failedResources] bundleId is null";
LABEL_63:
              _os_log_impl(&_mh_execute_header, v99, v98, v100, v97, 2u);
              v37 = v247;
            }

            goto LABEL_64;
          }

          v83 = MOResource.bundleId.getter();
          if (!v84)
          {

LABEL_69:
            v19 = v245;
            v10 = v249;
            goto LABEL_10;
          }

          v10 = v249;
          if (v83 == *(v223 + 16) && v84 == *(v223 + 24))
          {

            v19 = v245;
            goto LABEL_10;
          }

          v106 = v84;
          v107 = v83;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v108 = objc_allocWithZone(LSApplicationRecord);
            v207 = v107;
            v109 = String._bridgeToObjectiveC()();
            *&address.sa_len = 0;
            v110 = [v108 initWithBundleIdentifier:v109 allowPlaceholder:1 error:&address];

            v206 = v110;
            v111 = v106;
            if (v110)
            {
              v112 = *&address.sa_len;
              v113 = [v110 localizedName];
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v205 = v114;
            }

            else
            {
              v115 = *&address.sa_len;
              _convertNSErrorToError(_:)();

              swift_willThrow();

              v205 = 0;
            }

            v37 = v247;
            v116 = v207;
            *&address.sa_len = v207;
            *&address.sa_data[6] = v111;
            v250[0] = 0x6C7070612E6D6F63;
            v250[1] = 0xEA00000000002E65;
            lazy protocol witness table accessor for type String and conformance String();
            if ((StringProtocol.contains<A>(_:)() & 1) == 0)
            {
              swift_beginAccess();

              specialized Set._Variant.insert(_:)(v250, v116, v111);
              swift_endAccess();
            }

            v117 = objc_opt_self();
            v118 = String._bridgeToObjectiveC()();
            v119 = [v117 applicationWithBundleIdentifier:v118];

            LODWORD(v118) = [v119 isHidden];
            if (v118)
            {
              swift_beginAccess();
              specialized Set._Variant.insert(_:)(v250, v20);
              swift_endAccess();
              if (one-time initialization token for shared != -1)
              {
                swift_once();
              }

              v120 = type metadata accessor for Logger();
              __swift_project_value_buffer(v120, static MOAngelLogger.shared);

              v121 = Logger.logObject.getter();
              v122 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v121, v122))
              {
                v123 = swift_slowAlloc();
                v124 = swift_slowAlloc();
                v204 = v121;
                v125 = v124;
                *&address.sa_len = v124;
                *v123 = v208;
                *(v123 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v207, v111, &address);
                *(v123 + 12) = 1024;
                *(v123 + 14) = 1;
                v126 = v122;
                v127 = v204;
                _os_log_impl(&_mh_execute_header, v204, v126, "[BundleEventStore.failedResources] bundleId %s, shouldDropApp=%{BOOL}d", v123, 0x12u);
                __swift_destroy_boxed_opaque_existential_0(v125);

                v37 = v247;
              }

              else
              {
              }
            }

            if (!v205)
            {
              if (one-time initialization token for shared != -1)
              {
                swift_once();
              }

              v153 = type metadata accessor for Logger();
              __swift_project_value_buffer(v153, static MOAngelLogger.shared);

              v154 = Logger.logObject.getter();
              v155 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v154, v155))
              {
                v156 = swift_slowAlloc();
                v157 = swift_slowAlloc();
                v205 = v154;
                v158 = v157;
                *&address.sa_len = v157;
                *v156 = v209;
                v207 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v207, v111, &address);

                *(v156 + 4) = v207;
                v159 = v155;
                v160 = v205;
                _os_log_impl(&_mh_execute_header, v205, v159, "[BundleEventStore.failedResources] app name is nil for bundleId %s", v156, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v158);

                v37 = v247;
              }

              else
              {
              }

              v38 = v246;
              swift_beginAccess();
              specialized Set._Variant.insert(_:)(v250, v20);
              swift_endAccess();

              goto LABEL_69;
            }

            v19 = v245;
            goto LABEL_67;
          }

          v19 = v245;
          v37 = v247;
LABEL_10:
          ++v20;
          if (a3 == i)
          {
            goto LABEL_123;
          }

          break;
        case 6uLL:
        case 0xCuLL:

          if (__OFADD__(*v248, 1))
          {
            goto LABEL_142;
          }

          ++*v248;
          goto LABEL_10;
        case 0xAuLL:
          v62 = [v40 data];
          if (!v62)
          {

            goto LABEL_83;
          }

          v63 = v62;
          v64 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v66 = v65;

          v67 = objc_opt_self();
          isa = Data._bridgeToObjectiveC()().super.isa;
          *&address.sa_len = 0;
          v69 = [v67 JSONObjectWithData:isa options:0 error:&address];

          if (!v69)
          {
            v102 = *&address.sa_len;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            outlined consume of Data._Representation(v64, v66);

LABEL_81:
            v19 = v245;
            v37 = v247;
            goto LABEL_82;
          }

          v70 = *&address.sa_len;
          _bridgeAnyObjectToAny(_:)();
          outlined consume of Data._Representation(v64, v66);
          swift_unknownObjectRelease();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_80;
          }

          v71 = v250[0];
          v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (!*(v71 + 16))
          {

LABEL_79:

LABEL_80:

            goto LABEL_81;
          }

          v74 = specialized __RawDictionaryStorage.find<A>(_:)(v72, v73);
          v76 = v75;

          if ((v76 & 1) == 0)
          {
            goto LABEL_79;
          }

          v77 = *(*(v71 + 56) + 8 * v74);
          swift_unknownObjectRetain();

          v250[0] = v77;
          v78 = swift_dynamicCast();
          v37 = v247;
          if ((v78 & 1) == 0)
          {

            v19 = v245;
LABEL_82:
            v38 = v246;
            v10 = v249;
LABEL_83:
            (*v235)(v37, 1, 1, v240);
LABEL_84:
            v61 = v37;
            goto LABEL_85;
          }

          UUID.init(uuidString:)();

          v79 = v240;
          v80 = (*v214)(v37, 1, v240);
          v19 = v245;
          v81 = v217;
          if (v80 == 1)
          {

            v38 = v246;
            v10 = v249;
            goto LABEL_84;
          }

          v140 = v219;
          v205 = *v213;
          (v205)(v219, v37, v79);
          type metadata accessor for MOSuggestionAssetWorkoutProvider();
          inited = swift_initStackObject();
          v206 = [objc_allocWithZone(HKHealthStore) init];
          v207 = inited;
          *(inited + 24) = v206;
          v142 = v79;
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          v143 = type metadata accessor for Logger();
          __swift_project_value_buffer(v143, static MOAngelLogger.shared);
          v203 = *v212;
          v203(v81, v140, v79);
          v144 = v81;
          v145 = Logger.logObject.getter();
          LODWORD(v202) = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v145, v202))
          {
            v146 = swift_slowAlloc();
            v201 = v146;
            v200 = swift_slowAlloc();
            *&address.sa_len = v200;
            *v146 = v209;
            _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v147 = dispatch thunk of CustomStringConvertible.description.getter();
            v149 = v148;
            v204 = *v211;
            (v204)(v144, v240);
            v150 = v147;
            v140 = v219;
            v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v149, &address);
            v142 = v240;

            v152 = v201;
            *(v201 + 4) = v151;
            _os_log_impl(&_mh_execute_header, v145, v202, "[MOEventBundleStore.failedResources] calling HK, id=%s", v152, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v200);
          }

          else
          {

            v204 = *v211;
            (v204)(v144, v142);
          }

          if (__OFADD__(*v238, 1))
          {
            __break(1u);
LABEL_148:
            __break(1u);
          }

          ++*v238;
          v203(v221, v140, v142);
          v169 = (*(v229 + 80) + 16) & ~*(v229 + 80);
          v203 = ((v210 + v169) & 0xFFFFFFFFFFFFFFF8);
          v170 = (v203 + 15) & 0xFFFFFFFFFFFFFFF8;
          v201 = ((v170 + 31) & 0xFFFFFFFFFFFFFFF8);
          v202 = (v170 + 15) & 0xFFFFFFFFFFFFFFF8;
          v200 = ((v201 + 15) & 0xFFFFFFFFFFFFFFF8);
          v171 = swift_allocObject();
          (v205)(v171 + v169, v221, v142);
          v172 = v202;
          *(v203 + v171) = v244;
          v173 = v232;
          *(v171 + v170) = v233;
          v174 = v171 + v172;
          *v174 = v20;
          *(v174 + 8) = v222;
          v175 = v200;
          *(v201 + v171) = v237;
          v176 = (v175 + v171);
          *v176 = partial apply for closure #1 in MOEventBundleStore._failedResourcesAsync(resources:completion:);
          v176[1] = v173;

          v168 = v219;
          MOSuggestionAssetWorkoutProvider.getWorkout(workoutUUID:completion:)(v219, partial apply for closure #2 in MOEventBundleStore._failedResourcesAsync(resources:completion:), v171);
          goto LABEL_122;
        case 0xBuLL:
          v85 = [v40 contactIdentifier];
          if (!v85)
          {

            v38 = v246;
            goto LABEL_10;
          }

          v86 = v85;
          v87 = [objc_allocWithZone(CNContactStore) init];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
          v88 = Array._bridgeToObjectiveC()().super.isa;
          *&address.sa_len = 0;
          v89 = [v87 unifiedContactWithIdentifier:v86 keysToFetch:v88 error:&address];

          if (v89)
          {
            v90 = *&address.sa_len;
          }

          else
          {
            v103 = *&address.sa_len;
            _convertNSErrorToError(_:)();

            swift_willThrow();

            swift_beginAccess();
            specialized Set._Variant.insert(_:)(v250, v20);
            swift_endAccess();
          }

          goto LABEL_58;
        case 0x10uLL:
          v41 = [v40 data];
          if (!v41)
          {

            goto LABEL_77;
          }

          v42 = v41;
          v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;

          v46 = objc_opt_self();
          v47 = Data._bridgeToObjectiveC()().super.isa;
          *&address.sa_len = 0;
          v48 = [v46 JSONObjectWithData:v47 options:0 error:&address];

          if (!v48)
          {
            v101 = *&address.sa_len;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            outlined consume of Data._Representation(v43, v45);

LABEL_75:
            v19 = v245;
            v37 = v247;
            goto LABEL_76;
          }

          v49 = *&address.sa_len;
          _bridgeAnyObjectToAny(_:)();
          outlined consume of Data._Representation(v43, v45);
          swift_unknownObjectRelease();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_74;
          }

          v50 = v250[0];
          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (!*(v50 + 16))
          {

LABEL_73:

LABEL_74:

            goto LABEL_75;
          }

          v53 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v52);
          v55 = v54;

          if ((v55 & 1) == 0)
          {
            goto LABEL_73;
          }

          v56 = *(*(v50 + 56) + 8 * v53);
          swift_unknownObjectRetain();

          v250[0] = v56;
          v57 = swift_dynamicCast();
          v37 = v247;
          if ((v57 & 1) == 0)
          {

            v19 = v245;
LABEL_76:
            v38 = v246;
            v10 = v249;
LABEL_77:
            (*v235)(v19, 1, 1, v240);
            v61 = v19;
LABEL_85:
            outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v61, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            goto LABEL_10;
          }

          v19 = v245;
          UUID.init(uuidString:)();

          v58 = v240;
          v59 = (*v214)(v19, 1, v240);
          v60 = v218;
          if (v59 == 1)
          {

            v38 = v246;
            v10 = v249;
            v61 = v19;
            goto LABEL_85;
          }

          v128 = v220;
          v205 = *v213;
          (v205)(v220, v19, v58);
          type metadata accessor for MOSuggestionAssetStateOfMindProvider();
          v129 = swift_initStackObject();
          v206 = [objc_allocWithZone(HKHealthStore) init];
          v207 = v129;
          *(v129 + 16) = v206;
          v130 = v58;
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          v131 = type metadata accessor for Logger();
          __swift_project_value_buffer(v131, static MOAngelLogger.shared);
          v203 = *v212;
          v203(v60, v128, v58);
          v132 = v60;
          v133 = Logger.logObject.getter();
          LODWORD(v202) = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v133, v202))
          {
            v134 = swift_slowAlloc();
            v200 = v134;
            v201 = swift_slowAlloc();
            *&address.sa_len = v201;
            *v134 = v209;
            _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v135 = dispatch thunk of CustomStringConvertible.description.getter();
            v137 = v136;
            v204 = *v211;
            (v204)(v132, v240);
            v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v137, &address);
            v130 = v240;

            v139 = v200;
            *(v200 + 4) = v138;
            _os_log_impl(&_mh_execute_header, v133, v202, "[MOEventBundleStore.failedResources] calling HK for state of mind, id=%s", v139, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v201);
          }

          else
          {

            v204 = *v211;
            (v204)(v132, v130);
          }

          if (__OFADD__(*v238, 1))
          {
            goto LABEL_148;
          }

          ++*v238;
          v203(v221, v220, v130);
          v161 = (*(v229 + 80) + 16) & ~*(v229 + 80);
          v203 = ((v210 + v161) & 0xFFFFFFFFFFFFFFF8);
          v202 = (v203 + 15) & 0xFFFFFFFFFFFFFFF8;
          v201 = ((v202 + 15) & 0xFFFFFFFFFFFFFFF8);
          v200 = ((v201 + 15) & 0xFFFFFFFFFFFFFFF8);
          v162 = (v200 + 15) & 0xFFFFFFFFFFFFFFF8;
          v163 = swift_allocObject();
          (v205)(v163 + v161, v221, v130);
          v164 = v202;
          *(v203 + v163) = v244;
          *(v163 + v164) = v233;
          v165 = v200;
          *(v201 + v163) = v20;
          *(v165 + v163) = v237;
          v166 = (v163 + v162);
          v167 = v232;
          *v166 = partial apply for closure #1 in MOEventBundleStore._failedResourcesAsync(resources:completion:);
          v166[1] = v167;

          v168 = v220;
          MOSuggestionAssetStateOfMindProvider.getStateOfMind(stateOfMindUUID:completion:)(v220, partial apply for closure #3 in MOEventBundleStore._failedResourcesAsync(resources:completion:), v163);
LABEL_122:

          (v204)(v168, v240);
LABEL_58:
          v19 = v245;
          v37 = v247;
          goto LABEL_67;
        default:

          goto LABEL_10;
      }
    }

    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    ;
  }

LABEL_123:
  v177 = v231;
  swift_beginAccess();
  v178 = *v177;
  v179 = v238;
  swift_beginAccess();
  if (v178 == *v179)
  {
    v180 = v241;
    swift_beginAccess();
    v181 = *v180 != 1;
    v182 = v248;
    swift_beginAccess();
    v183 = *v182;
    if (v224)
    {
      v184 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v184 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v185 = v227;
    v186 = v225;
    v187 = v239;
    swift_beginAccess();
    v188 = *v187;
    v189 = *(v188 + 16);
    v190 = __OFSUB__(v184, v189);
    v191 = v184 - v189;
    if (v190)
    {
      __break(1u);
      goto LABEL_146;
    }

    v181 |= v234;
    if (v183 == v191)
    {
      if (!v234)
      {
        LOBYTE(v183) = v181 | v222;
        goto LABEL_134;
      }
    }

    else if ((v181 & 1) == 0)
    {
      LOBYTE(v183) = 0;
LABEL_134:
      if (one-time initialization token for shared == -1)
      {
LABEL_135:
        v192 = type metadata accessor for Logger();
        __swift_project_value_buffer(v192, static MOAngelLogger.shared);
        v193 = Logger.logObject.getter();
        v194 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          *v195 = 67109376;
          *(v195 + 4) = (v181 & 1) == 0;
          *(v195 + 8) = 1024;
          *(v195 + 10) = v183 & 1;
          _os_log_impl(&_mh_execute_header, v193, v194, "[BundleEventStore.failedResources] forceDrop, shouldForceDropPhoto=%{BOOL}d, shouldForceDropSingleMap=%{BOOL}d", v195, 0xEu);
        }

        swift_beginAccess();
        *v186 = 1;
        v188 = *v239;
        goto LABEL_138;
      }

LABEL_146:
      swift_once();
      goto LABEL_135;
    }

LABEL_138:
    swift_beginAccess();
    v196 = *v186;
    v197 = v228;
    swift_beginAccess();
    v198 = *v197;

    (v185)(v188, v196, v198);

    goto LABEL_139;
  }

LABEL_139:

  return result;
}

double closure #1 in MOEventBundleStore._failedResourcesAsync(resources:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  swift_beginAccess();
  v20 = *(a1 + 16);
  swift_beginAccess();
  if (v20 == *(a2 + 16))
  {
    swift_beginAccess();
    v22 = *(a3 + 16) == 1;
    swift_beginAccess();
    v23 = *(a5 + 16);
    if (a6 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    v25 = *(*(a7 + 16) + 16);
    v26 = v24 - v25;
    if (__OFSUB__(v24, v25))
    {
      __break(1u);
    }

    else
    {
      a2 = a9;
      v11 = v22 & a4;
      v22 = a11;
      if (v23 == v26)
      {
        if ((a4 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else if ((v11 & 1) == 0)
      {
LABEL_13:
        swift_beginAccess();
        v31 = *(a7 + 16);
        swift_beginAccess();
        v32 = *(a8 + 16);
        swift_beginAccess();
        v33 = *(v22 + 16);

        (a2)(v31, v32, v33);

        return result;
      }

      if (one-time initialization token for shared == -1)
      {
LABEL_10:
        v27 = type metadata accessor for Logger();
        __swift_project_value_buffer(v27, static MOAngelLogger.shared);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 67109376;
          *(v30 + 4) = v11;
          *(v30 + 8) = 1024;
          *(v30 + 10) = v23 == v26;
          _os_log_impl(&_mh_execute_header, v28, v29, "[BundleEventStore.failedResources] forceDrop, shouldForceDropPhoto=%{BOOL}d, shouldForceDropSingleMap=%{BOOL}d", v30, 0xEu);
        }

        swift_beginAccess();
        *(a8 + 16) = 1;
        goto LABEL_13;
      }
    }

    swift_once();
    goto LABEL_10;
  }

  return result;
}

double closure #2 in MOEventBundleStore._failedResourcesAsync(resources:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v56 = a8;
  v57 = a1;
  v59 = a4;
  v60 = a7;
  v55 = a6;
  v54 = a5;
  v58 = a3;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v10 - 8);
  v66 = v10;
  __chkstk_darwin(v10);
  v63 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v53 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static MOAngelLogger.shared);
  v52 = *(v14 + 16);
  v52(v18, a2, v13);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v50 = v15;
    v23 = v22;
    v24 = swift_slowAlloc();
    v51 = a2;
    v25 = v24;
    aBlock[0] = v24;
    *v23 = 136315138;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v13;
    v29 = v28;
    (*(v14 + 8))(v18, v27);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v29, aBlock);
    v13 = v27;

    *(v23 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v20, v21, "[MOEventBundleStore.failedResources] returning from HK, id=%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    a2 = v51;

    v15 = v50;
  }

  else
  {

    (*(v14 + 8))(v18, v13);
  }

  v50 = a9;
  if (one-time initialization token for defaultQueue != -1)
  {
    swift_once();
  }

  v51 = static MOEventBundleStore.defaultQueue;
  v31 = v53;
  v52(v53, a2, v13);
  v32 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v52 = v13;
  v33 = (v15 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 31) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v14 + 32))(v37 + v32, v31, v52);
  v38 = v57;
  *(v37 + v33) = v57;
  v39 = v59;
  *(v37 + v34) = v58;
  *(v37 + v35) = v39;
  v40 = v37 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v40 = v54;
  *(v40 + 8) = v55 & 1;
  *(v37 + v36) = v60;
  v41 = (v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8));
  v42 = v50;
  *v41 = v56;
  v41[1] = v42;
  aBlock[4] = partial apply for closure #1 in closure #2 in MOEventBundleStore._failedResourcesAsync(resources:completion:);
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_111;
  v43 = _Block_copy(aBlock);
  v44 = v38;

  v45 = v61;
  static DispatchQoS.unspecified.getter();
  v67 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v46 = v63;
  v47 = v66;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v43);
  (*(v65 + 8))(v46, v47);
  (*(v62 + 8))(v45, v64);

  return result;
}

void closure #1 in closure #2 in MOEventBundleStore._failedResourcesAsync(resources:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, void (*a8)(__n128))
{
  v39 = a6;
  v38 = a3;
  v40 = a2;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static MOAngelLogger.shared);
  (*(v13 + 16))(v15, a1, v12);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36 = a5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v37 = a8;
    v35 = v21;
    v43[0] = v21;
    *v20 = 136315138;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v13 + 8))(v15, v12);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v43);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "[MOEventBundleStore.failedResources] back on queue, id=%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    a8 = v37;

    a5 = v36;

    v26 = v40;
    if (v40)
    {
      goto LABEL_5;
    }

LABEL_10:
    v29 = v38;
    swift_beginAccess();
    *(v29 + 16) = 1;
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(&v42, a5);
    swift_endAccess();
    goto LABEL_11;
  }

  (*(v13 + 8))(v15, v12);
  v26 = v40;
  if (!v40)
  {
    goto LABEL_10;
  }

LABEL_5:
  v27 = v26;
  v28 = HKWorkout.distanceQuantityTypeForWorkoutType()();
  if (v28)
  {

    if (v39)
    {
      swift_beginAccess();
      specialized Set._Variant.insert(_:)(v41, a5);
      swift_endAccess();
    }
  }

LABEL_11:
  v30 = swift_beginAccess();
  v31 = *(a7 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(a7 + 16) = v33;
    (a8)(v30);
  }
}

double closure #3 in MOEventBundleStore._failedResourcesAsync(resources:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = a6;
  v61 = a8;
  v55 = a5;
  v56 = a7;
  v58 = a3;
  v59 = a4;
  v57 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v64 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v54 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static MOAngelLogger.shared);
  v53 = *(v13 + 16);
  v53(v17, a2, v12);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v52 = a2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v51 = v14;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136315138;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v12;
    v28 = v27;
    (*(v13 + 8))(v17, v26);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v28, aBlock);
    v12 = v26;

    *(v22 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v19, v20, "[MOEventBundleStore.failedResources] returning from HK for state of mind, id=%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v14 = v51;

    a2 = v52;
  }

  else
  {

    (*(v13 + 8))(v17, v12);
  }

  if (one-time initialization token for defaultQueue != -1)
  {
    swift_once();
  }

  v52 = static MOEventBundleStore.defaultQueue;
  v30 = v54;
  v53(v54, a2, v12);
  v31 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v32 = (v14 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v53 = v12;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v13 + 32))(v37 + v31, v30, v53);
  v39 = v57;
  v38 = v58;
  *(v37 + v32) = v57;
  *(v37 + v33) = v38;
  v40 = v60;
  *(v37 + v34) = v59;
  v41 = v56;
  *(v37 + v35) = v55;
  *(v37 + v36) = v40;
  v42 = (v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8));
  v43 = v61;
  *v42 = v41;
  v42[1] = v43;
  aBlock[4] = partial apply for closure #1 in closure #3 in MOEventBundleStore._failedResourcesAsync(resources:completion:);
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_117;
  v44 = _Block_copy(aBlock);
  v45 = v39;

  v46 = v62;
  static DispatchQoS.unspecified.getter();
  v68 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v47 = v64;
  v48 = v67;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v44);
  (*(v66 + 8))(v47, v48);
  (*(v63 + 8))(v46, v65);

  return result;
}

void closure #1 in closure #3 in MOEventBundleStore._failedResourcesAsync(resources:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(__n128), uint64_t a8)
{
  v38 = a3;
  v39 = a4;
  v40 = a2;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static MOAngelLogger.shared);
  (*(v14 + 16))(v16, a1, v13);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36 = a8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v37 = a7;
    v35 = v22;
    v42[0] = v22;
    *v21 = 136315138;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = a6;
    v25 = a5;
    v27 = v26;
    (*(v14 + 8))(v16, v13);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v27, v42);
    a5 = v25;
    a6 = v24;

    *(v21 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "[MOEventBundleStore.failedResources] back on queue for state of mind, id=%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    a7 = v37;

    if (v40)
    {
      goto LABEL_8;
    }
  }

  else
  {

    (*(v14 + 8))(v16, v13);
    if (v40)
    {
      goto LABEL_8;
    }
  }

  v29 = v38;
  swift_beginAccess();
  *(v29 + 16) = 1;
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(&v41, a5);
  swift_endAccess();
LABEL_8:
  v30 = swift_beginAccess();
  v31 = *(a6 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(a6 + 16) = v33;
    (a7)(v30);
  }
}