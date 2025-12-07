uint64_t sub_1000FA9DC(uint64_t a1, char *a2, void *a3, uint64_t a4, void *a5, void *a6, int a7)
{
  v60 = a7;
  v59 = a3;
  v56 = a2;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v73 = *(v11 - 8);
  v74 = v11;
  __chkstk_darwin(v11, v12);
  v71 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for DispatchQoS();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72, v14);
  v69 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v16 - 8, v17);
  v68 = &v55 - v18;
  v62 = sub_1000F5104(&unk_100936F50, &unk_100791B40);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62, v19);
  v57 = &v55 - v20;
  v21 = sub_1000F5104(&unk_100939970, &unk_10079ADB0);
  v64 = *(v21 - 8);
  v65 = v21;
  __chkstk_darwin(v21, v22);
  v58 = &v55 - v23;
  v24 = sub_1000F5104(&unk_100936F60, &unk_100791B50);
  v66 = *(v24 - 8);
  v67 = v24;
  __chkstk_darwin(v24, v25);
  v63 = &v55 - v26;
  if (qword_100935B78 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_10093B990);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Starting RDAssignmentNotificationEngineAssembly", v30, 2u);
  }

  type metadata accessor for RDAssignmentNotificationEngine(0);
  v31 = swift_allocObject();
  *(v31 + 16) = 0xD000000000000017;
  *(v31 + 24) = 0x80000001007EB2C0;
  *(v31 + 32) = 0xD00000000000001FLL;
  *(v31 + 40) = 0x80000001007EB2E0;
  *(v31 + 48) = 0xD00000000000003CLL;
  *(v31 + 56) = 0x80000001007EB4A0;
  *(v31 + 64) = [objc_allocWithZone(type metadata accessor for RDAssignmentNotificationEngine.BabysitTarget()) init];
  v32 = OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_storeControllerObservationToken;
  v33 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  (*(*(v33 - 8) + 56))(v31 + v32, 1, 1, v33);
  *(v31 + OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_started) = 0;
  *(v31 + OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_currentUserShareParticipantIDsOverrideByListID) = 0;
  *(v31 + 72) = a6;
  *(v31 + 80) = a5;
  *(v31 + 88) = &off_1008F5BC0;
  *(v31 + 96) = a4;
  v34 = type metadata accessor for RDDaemonController();
  v35 = objc_allocWithZone(v34);
  v36 = &v35[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
  v37 = v56;
  *v36 = a1;
  *(v36 + 1) = v37;
  v38 = &v35[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
  *v38 = 0xD00000000000001CLL;
  *(v38 + 1) = 0x80000001007EB4E0;
  *(v38 + 38) = 0;
  *(v38 + 3) = 0;
  *(v38 + 4) = 0;
  *(v38 + 2) = 0;
  *&v35[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
  v77.receiver = v35;
  v77.super_class = v34;
  v55 = a6;

  v56 = a5;
  swift_unknownObjectRetain();
  v39 = objc_msgSendSuper2(&v77, "init");
  v40 = v59;
  *(v31 + 104) = v39;
  *(v31 + 112) = v40;
  *(v31 + 120) = v60 & 1;
  *(v31 + OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_cloudKitAccountsDidChangeSubscriptions) = &_swiftEmptyArrayStorage;
  v41 = v40;
  aBlock[0] = sub_100441A9C(0xD00000000000001CLL, 0x80000001007EB4E0, 0);
  sub_1000F5104(&unk_10093D140, qword_1007969F0);
  sub_1000F5104(&unk_100936F70, &unk_100791B60);
  sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v42 = v57;
  Publisher.map<A>(_:)();
  sub_10000CB48(&unk_100936F80, &unk_100936F50, &unk_100791B40, &protocol conformance descriptor for Publishers.Map<A, B>);
  v43 = v58;
  v44 = v62;
  Publisher.filter(_:)();

  (*(v61 + 8))(v42, v44);
  aBlock[0] = v55;
  v45 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v46 = v68;
  (*(*(v45 - 8) + 56))(v68, 1, 1, v45);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000CB48(&unk_10093D160, &unk_100939970, &unk_10079ADB0, &protocol conformance descriptor for Publishers.Filter<A>);
  sub_100006CA4();
  v47 = v63;
  v48 = v65;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v46, &qword_100939980, &unk_10079ADA0);
  (*(v64 + 8))(v43, v48);
  sub_10000CB48(&unk_100936F90, &unk_100936F60, &unk_100791B50, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v49 = v67;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (*(v66 + 8))(v47, v49);
  swift_beginAccess();
  sub_1000F5104(&unk_10093D1B0, &unk_10079ADC0);
  sub_10000CB48(&qword_100936FA0, &unk_10093D1B0, &unk_10079ADC0, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  *&v56[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_assignmentNotificationDelegate + 8] = &off_1008E6140;
  swift_unknownObjectWeakAssign();
  aBlock[4] = sub_1000FC570;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E4F88;
  v50 = _Block_copy(aBlock);

  v51 = v69;
  static DispatchQoS.unspecified.getter();
  v75 = &_swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  v52 = v71;
  v53 = v74;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v50);
  (*(v73 + 8))(v52, v53);
  (*(v70 + 8))(v51, v72);

  return v31;
}

uint64_t sub_1000FB4B8(void *a1, void *a2, void *a3, void *a4, unsigned __int8 *a5)
{
  v53 = a3;
  v54 = a4;
  v51 = a1;
  v52 = a2;
  v5 = *a5;
  v6 = *(a5 + 1);
  v7 = a5[16];
  v8 = *(a5 + 3);
  v9 = a5[32];
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v10 - 8);
  v60 = v10;
  __chkstk_darwin(v10, v11);
  v58 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v56 = *(v13 - 8);
  v57 = v13;
  __chkstk_darwin(v13, v14);
  v55 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v16, v17);
  v50 = v9;
  if ((v9 & 1) != 0 || (sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr), v18 = [swift_getObjCClassFromMetadata() daemonUserDefaults], v19 = objc_msgSend(v18, "sharedListActivityNotifications_demoMode"), v18, (v19 & 1) == 0))
  {
    v46 = v7;
    v47 = v6;
    v48 = v8;
    v49 = v5;
  }

  else
  {
    if (qword_100936188 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_100947718);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "📔 RDSyncActivityEngine: Starting in demo mode", v23, 2u);
    }

    v49 = 1;
    v48 = 10;
    v47 = 5;
    v46 = 1;
  }

  type metadata accessor for RDSharedListActivityNotificationsEngine(0);
  v24 = swift_allocObject();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000F5104(&qword_100937018, &unk_100791C00);
  Published.init(initialValue:)();
  aBlock[0] = _swiftEmptyDictionarySingleton;
  sub_1000F5104(&qword_100937020, &unk_1007A2840);
  Published.init(initialValue:)();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000F5104(&qword_100937028, &qword_100791C10);
  Published.init(initialValue:)();
  *(v24 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_cancellables) = _swiftEmptySetSingleton;
  LOBYTE(aBlock[0]) = 0;
  Published.init(initialValue:)();
  v25 = OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_journalUpdatesSubscriptionTransactionRegistrar;
  v44 = type metadata accessor for RDTransactionRegistrar();
  v26 = swift_allocObject();
  v26[4] = 0;
  v26[5] = 0;
  v26[2] = 0xD000000000000041;
  v26[3] = 0x80000001007EB600;
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E60, &type metadata accessor for UnfairLock.Options, &protocol conformance descriptor for UnfairLock.Options);
  sub_1000F5104(&qword_100936E68, &unk_100791AB0);
  v45 = &protocol conformance descriptor for [A];
  sub_10000CB48(&qword_100936E70, &qword_100936E68, &unk_100791AB0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v26[6] = UnfairLock.init(options:)();
  *(v24 + v25) = v26;
  v27 = OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_accountSignInOrOutSubscriptionTransactionRegistrar;
  v28 = swift_allocObject();
  v28[4] = 0;
  v28[5] = 0;
  v28[2] = 0xD000000000000045;
  v28[3] = 0x80000001007EB650;
  aBlock[0] = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  swift_allocObject();
  v28[6] = UnfairLock.init(options:)();
  *(v24 + v27) = v28;
  v29 = v51;
  v30 = v52;
  *(v24 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_scheduler) = v51;
  *(v24 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_storeController) = v30;
  v31 = (v24 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userNotificationCenter);
  v33 = v53;
  v32 = v54;
  *v31 = v53;
  v31[1] = &off_1008F5BC0;
  v34 = (v24 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userDefaults);
  *v34 = v32;
  v34[1] = &off_1008EE510;
  v35 = v24 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration;
  *v35 = v49 & 1;
  *(v35 + 8) = v47;
  *(v35 + 16) = v46 & 1;
  *(v35 + 24) = v48;
  *(v35 + 32) = v50 & 1;
  aBlock[4] = sub_1000FCE94;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E52A8;
  v36 = _Block_copy(aBlock);
  v29;
  v37 = v30;
  v38 = v33;
  v39 = v32;

  v40 = v55;
  static DispatchQoS.unspecified.getter();
  v61 = &_swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, v45);
  v41 = v58;
  v42 = v60;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);
  (*(v59 + 8))(v41, v42);
  (*(v56 + 8))(v40, v57);

  return v24;
}

void sub_1000FBC64(char a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for Logger();
  sub_100006654(v4, &unk_1009359A0);
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "remindd is now exiting in response to first unlock", v7, 2u);
      }

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Notifying stores must refresh due to relaunching upon first unlock notification", v10, 2u);
      }

      v11 = notify_post(_REMStoreMustRefreshNotificationName);
      a2(v11);
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "first unlock handler should not be called before first unlock happens", v13, 2u);
    }
  }
}

uint64_t sub_1000FBE54(uint64_t a1)
{
  v2 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000FBEB0(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for RDAlarmProducerDataSource();
  *&a4[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_connectedToken] = -1;
  *&a4[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_disconnectedToken] = -1;
  v13[4] = &off_1008F0830;
  v13[3] = v8;
  v13[0] = a2;
  a4[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_started] = 0;
  *&a4[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_queue] = a1;
  sub_10000A87C(v13, &a4[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_dataSource]);
  *&a4[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_delegate + 8] = &off_1008FDFD0;
  swift_unknownObjectUnownedInit();
  v9 = a1;

  v12.receiver = a4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_10000607C(v13);
  return v10;
}

id sub_1000FBFCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a2;
  v8 = type metadata accessor for RDUserInteractionSessionManager();
  v42[3] = v8;
  v42[4] = &off_1008EC870;
  v42[0] = a3;
  v9 = type metadata accessor for RDAlarmProducerDataSource();
  v40 = v9;
  v41 = &off_1008F0810;
  v39[0] = a4;
  v10 = type metadata accessor for RDContactInteractionAlarmProducer();
  v11 = objc_allocWithZone(v10);
  v12 = sub_10000C9DC(v42, v8);
  v13 = __chkstk_darwin(v12, v12);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = sub_10000C9DC(v39, v40);
  v18 = __chkstk_darwin(v17, v17);
  v20 = (&v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v18);
  v22 = *v15;
  v23 = *v20;
  v38[3] = v8;
  v38[4] = &off_1008EC870;
  v37[4] = &off_1008F0810;
  v38[0] = v22;
  v37[3] = v9;
  v37[0] = v23;
  *&v11[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_queue] = a1;
  sub_10000A87C(v37, &v11[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_dataSource]);
  *&v11[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_delegate + 8] = &off_1008FDFD0;
  swift_unknownObjectUnownedInit();
  v24 = a1;

  sub_10000A87C(v38, &v11[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_userInteractionSessionManager]);
  out_token = 0;
  v25 = notify_register_check(_REMStoreShouldNotifyOfInteractionWithPeopleNotificationName, &out_token);
  if (v25)
  {
    v26 = v25;
    if (qword_100935DC8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006654(v27, qword_10093FE40);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 67109120;
      *(v30 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to register notify token for _REMStoreShouldNotifyOfInteractionWithPeopleNotificationName {status: %u}", v30, 8u);
    }

    v31 = -1;
  }

  else
  {
    v31 = out_token;
  }

  *&v11[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeopleNotifyToken] = v31;
  v11[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeople] = 0;
  v35.receiver = v11;
  v35.super_class = v10;
  v32 = objc_msgSendSuper2(&v35, "init", v34);
  sub_1000EC890(v32, v24, sub_100290534, 0);

  sub_10000607C(v37);
  sub_10000607C(v38);
  sub_10000607C(v39);
  sub_10000607C(v42);
  return v32;
}

uint64_t sub_1000FC434(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100939ED0, &qword_100791B10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1000FC4A4()
{
  sub_1000ED658();

  sub_1000ED9E8();
}

uint64_t sub_1000FC508()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000FC580(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000FDA74;

  return sub_1000F21FC(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1000FC6BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000FDA74;

  return sub_1000F36C8(v2, v3, v4);
}

void sub_1000FC788(void *a1, uint64_t a2)
{
  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094B320);
  sub_100030E2C(a2, v35);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = [v5 waiterID];

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = sub_10000668C(v10, v12, &v34);
      v12, v14, v15, v16, v17, v18, v19, v20;
      *(v8 + 4) = v13;
      *(v8 + 12) = 2082;
      v21 = v36;
      v22 = v37;
      sub_10000F61C(v35, v36);
      v23 = (*(v22 + 8))(v21, v22);
      v25 = v24;
      sub_10000607C(v35);
      v26 = sub_10000668C(v23, v25, &v34);
      v25, v27, v28, v29, v30, v31, v32, v33;
      *(v8 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v6, v7, "Released babysitter token for {waiterID: %{public}s, executable: %{public}s}", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_10000607C(v35);
  }
}

uint64_t sub_1000FC9E8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000FCAC0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000FCBFC;

  return sub_1000F1330(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1000FCBFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000FCCF0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000FCD30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000FCBFC;

  return sub_1000F2DF8(v2, v3, v4);
}

_TtC7remindd19RDXPCStorePerformer *sub_1000FCE1C@<X0>(unint64_t a1@<X0>, _TtC7remindd19RDXPCStorePerformer **a2@<X8>)
{
  result = sub_10034CBCC(*(v2 + 16), a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for RDSavedDayOfWeek(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for RDSavedDayOfWeek(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RDSavedDayOfWeek(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_1000FD81C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1000FD8B4()
{
  result = qword_1009371D8;
  if (!qword_1009371D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009371D8);
  }

  return result;
}

void sub_1000FDB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v60 = a2;
  v61 = a3;
  v75 = type metadata accessor for TimeZone();
  v5 = *(v75 - 8);
  __chkstk_darwin(v75, v6);
  v74 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Calendar.Identifier();
  v8 = *(v73 - 8);
  __chkstk_darwin(v73, v9);
  v72 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for Calendar();
  v64 = *(v71 - 8);
  __chkstk_darwin(v71, v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DateComponents();
  v14 = *(v70 - 8);
  __chkstk_darwin(v70, v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for Date();
  __chkstk_darwin(v69, v18);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = v8;
    v24 = a1 + 32;
    v68 = enum case for Calendar.Identifier.gregorian(_:);
    v66 = (v23 + 8);
    v67 = (v23 + 104);
    ++v64;
    v65 = (v5 + 8);
    v63 = (v14 + 8);
    v25 = (v19 + 8);
    do
    {
      v24 += 8;
      Date.init(timeIntervalSinceReferenceDate:)();
      v27 = v72;
      v26 = v73;
      (*v67)(v72, v68, v73);
      Calendar.init(identifier:)();
      (*v66)(v27, v26);
      v28 = v74;
      static TimeZone.current.getter();
      Calendar.dateComponents(in:from:)();
      (*v65)(v28, v75);
      (*v64)(v13, v71);
      v29 = objc_allocWithZone(REMAlarmDateTrigger);
      isa = DateComponents._bridgeToObjectiveC()().super.isa;
      v31 = [v29 initWithDateComponents:isa];

      (*v63)(v17, v70);
      (*v25)(v21, v69);

      --v22;
    }

    while (v22);
  }

  v32 = *(v60 + 16);
  v33 = v76;
  if (v32)
  {
    v34 = (v60 + 32);
    do
    {
      v74 = v32;
      v41 = v34[8];
      v85 = v34[7];
      v86 = v41;
      v42 = v34[6];
      v43 = v34[3];
      v80 = v34[2];
      v81 = v43;
      v44 = v34[4];
      v83 = v34[5];
      v84 = v42;
      v82 = v44;
      v45 = v34[1];
      v78 = *v34;
      v79 = v45;
      v75 = v83;
      if (*(&v86 + 1))
      {
        sub_1000FE280(&v78, v77);
        sub_1000FE280(&v78, v77);
        v46 = String._bridgeToObjectiveC()();
        if (v81)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1000FE280(&v78, v77);
        sub_1000FE280(&v78, v77);
        v46 = 0;
        if (v81)
        {
LABEL_10:
          v47 = String._bridgeToObjectiveC()();
          if (*(&v78 + 1))
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }

      v47 = 0;
      if (*(&v78 + 1))
      {
LABEL_11:
        v48 = String._bridgeToObjectiveC()();
        if (*(&v85 + 1))
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }

LABEL_17:
      v48 = 0;
      if (*(&v85 + 1))
      {
LABEL_12:
        v49 = String._bridgeToObjectiveC()();
        if (*(&v84 + 1))
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }

LABEL_18:
      v49 = 0;
      if (*(&v84 + 1))
      {
LABEL_13:
        v50 = String._bridgeToObjectiveC()();
        if (!*(&v79 + 1))
        {
          goto LABEL_20;
        }

        goto LABEL_14;
      }

LABEL_19:
      v50 = 0;
      if (!*(&v79 + 1))
      {
LABEL_20:
        v51 = 0;
        goto LABEL_21;
      }

LABEL_14:
      v51 = String._bridgeToObjectiveC()();
LABEL_21:
      if (*(&v82 + 1) >> 60 == 15)
      {
        v35 = 0;
      }

      else
      {
        v35 = Data._bridgeToObjectiveC()().super.isa;
      }

      v36 = [objc_allocWithZone(REMStructuredLocation) initWithTitle:v46 locationUID:v47 latitude:v48 longitude:v49 radius:v50 address:v51 routing:*&v80 referenceFrameString:*(&v81 + 1) contactLabel:*(&v83 + 1) mapKitHandle:v35];
      v37 = v46;
      v38 = v36;

      v39 = objc_allocWithZone(REMAlarmLocationTrigger);
      v40 = [v39 initWithStructuredLocation:v38 proximity:v75];

      sub_1000FE2DC(&v78);
      v33 = v76;

      sub_1000FE2DC(&v78);
      v34 += 9;
      v32 = v74 - 1;
    }

    while (v74 != 1);
  }

  v52 = *(v61 + 16);
  if (v52)
  {
    v53 = (v61 + 32);
    do
    {
      v54 = *v53++;
      v55 = [objc_allocWithZone(REMAlarmTimeIntervalTrigger) initWithTimeInterval:v54];

      --v52;
    }

    while (v52);
  }

  v56 = *(v62 + 16);
  if (v56)
  {
    v57 = (v62 + 32);
    do
    {
      v58 = *v57++;
      v59 = [objc_allocWithZone(REMAlarmVehicleTrigger) initWithEvent:v58];

      --v56;
    }

    while (v56);
  }
}

id sub_1000FE330(uint64_t a1)
{
  v12 = *(a1 + 80);
  if (*(a1 + 136))
  {
    v2 = String._bridgeToObjectiveC()();
    if (*(a1 + 48))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = 0;
    if (*(a1 + 48))
    {
LABEL_3:
      v3 = String._bridgeToObjectiveC()();
      if (*(a1 + 8))
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v3 = 0;
  if (*(a1 + 8))
  {
LABEL_4:
    v4 = String._bridgeToObjectiveC()();
    if (*(a1 + 120))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if (*(a1 + 120))
  {
LABEL_5:
    v5 = String._bridgeToObjectiveC()();
    if (*(a1 + 104))
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if (*(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v5 = 0;
  if (!*(a1 + 104))
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = String._bridgeToObjectiveC()();
  if (*(a1 + 24))
  {
LABEL_7:
    v7 = String._bridgeToObjectiveC()();
    goto LABEL_14;
  }

LABEL_13:
  v7 = 0;
LABEL_14:
  if (*(a1 + 72) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v9 = [objc_allocWithZone(REMStructuredLocation) initWithTitle:v2 locationUID:v3 latitude:v4 longitude:v5 radius:v6 address:v7 routing:*(a1 + 32) referenceFrameString:*(a1 + 56) contactLabel:*(a1 + 88) mapKitHandle:isa];

  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStructuredLocation:v9 proximity:v12];
  return v10;
}

void sub_1000FE510(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v56 = a3;
  v58 = a2;
  v55 = type metadata accessor for UUID();
  v6 = *(v55 - 8);
  __chkstk_darwin(v55, v7);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_34:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v52 = a1 & 0xFFFFFFFFFFFFFF8;
      v53 = a1 & 0xC000000000000001;
      v11 = v56;
      v51 = v56 - v58;
      if (v56 <= v58)
      {
        v11 = v58;
      }

      v49 = (v6 + 1);
      v50 = v11 - v58;
      v47 = v9;
      v48 = a1;
      do
      {
        if (v53)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v20 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (v10 >= *(v52 + 16))
          {
            goto LABEL_29;
          }

          v19 = *(a1 + 8 * v10 + 32);
          v20 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }
        }

        if (v51 == v10)
        {

          return;
        }

        if (v56 < v58)
        {
          goto LABEL_30;
        }

        if (v50 == v10)
        {
          goto LABEL_31;
        }

        v57 = v20;
        v21 = v19;
        v22 = [v21 uuid];
        v23 = v54;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v24 = UUID.uuidString.getter();
        v26 = v25;
        (*v49)(v23, v55);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = *a4;
        v6 = v59;
        a1 = a4;
        *a4 = 0x8000000000000000;
        v35 = sub_100005F4C(v24, v26);
        v36 = v6[2];
        v37 = (v28 & 1) == 0;
        v38 = v36 + v37;
        if (__OFADD__(v36, v37))
        {
          goto LABEL_32;
        }

        a4 = v28;
        if (v6[3] >= v38)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v6 = &v59;
            sub_100372EDC();
          }
        }

        else
        {
          sub_100369CB8(v38, isUniquelyReferenced_nonNull_native);
          v6 = v59;
          v39 = sub_100005F4C(v24, v26);
          if ((a4 & 1) != (v28 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v35 = v39;
        }

        v40 = v58 + v10;
        v41 = v59;
        if (a4)
        {
          *(v59[7] + 4 * v35) = v40;
          v26, v28, v29, v30, v31, v32, v33, v34;
        }

        else
        {
          v59[(v35 >> 6) + 8] |= 1 << v35;
          v42 = (v41[6] + 16 * v35);
          *v42 = v24;
          v42[1] = v26;
          *(v41[7] + 4 * v35) = v40;
          v43 = v41[2];
          v44 = __OFADD__(v43, 1);
          v45 = v43 + 1;
          if (v44)
          {
            goto LABEL_33;
          }

          v41[2] = v45;
        }

        a4 = a1;
        v6 = *a1;
        *a1 = v41;

        v6, v12, v13, v14, v15, v16, v17, v18;
        ++v10;
        a1 = v48;
      }

      while (v57 != v47);
    }
  }
}

uint64_t sub_1000FE874()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009374B0);
  v1 = sub_100006654(v0, qword_1009374B0);
  if (qword_1009364F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975218);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000FE93C(void *a1, uint64_t a2)
{
  v2 = a2;
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
  sub_100101058(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr);
  v4 = Sequence.elements<A>(ofType:)();
  if (v4 >> 62)
  {
    v21 = v4;
    v11 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v21;
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
LABEL_5:
      v4, v5, v11, v6, v7, v8, v9, v10;
      return;
    }
  }

  v22 = _swiftEmptyDictionarySingleton;
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = v4;
    sub_1000FE510(v4, 0, v11, &v22);
    v12, v13, v14, v15, v16, v17, v18, v19;
    v20 = v22;
    sub_1000FEA70(a1, v22, v2);
    v4 = v20;
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1000FEA70(void *a1, uint64_t isUniquelyReferenced_nonNull_native, char a3)
{
  v158 = _swiftEmptyDictionarySingleton;
  aBlock[0] = a1;
  sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
  sub_1000060C8(0, &unk_100950C20, NSMutableOrderedSet_ptr);
  sub_100101058(&qword_1009374C8, &unk_100950C20, NSMutableOrderedSet_ptr);
  v4 = Sequence.elements<A>(ofType:)();
  v12 = v4;
  v13 = (v4 >> 62);
  if (v4 >> 62)
  {
LABEL_87:
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14 != *(isUniquelyReferenced_nonNull_native + 16))
  {
    if (qword_1009359B8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_1009374B0);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v25 = swift_slowAlloc();
      *v25 = 134218240;
      if (v13)
      {
        v26 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v26 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v25 + 4) = v26;
      v12, v18, v19, v20, v21, v22, v23, v24;
      *(v25 + 12) = 2048;
      *(v25 + 14) = *(isUniquelyReferenced_nonNull_native + 16);
      isUniquelyReferenced_nonNull_native, v41, v42, v43, v44, v45, v46, v47;
      _os_log_impl(&_mh_execute_header, v16, v17, "[implSort] Count of CD objects is not same as that of the Ordering Map {allCDObjects#: %ld, orderingIndexMap#: %ld}", v25, 0x16u);
    }

    else
    {

      v12, v27, v28, v29, v30, v31, v32, v33;
      isUniquelyReferenced_nonNull_native, v34, v35, v36, v37, v38, v39, v40;
    }
  }

  v147 = v13;
  if (v13)
  {
    v48 = _CocoaArrayWrapper.endIndex.getter();
    if (!v48)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v48 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v48)
    {
LABEL_66:
      v12, v5, v6, v7, v8, v9, v10, v11;
      if (qword_1009359B8 != -1)
      {
        swift_once();
      }

      v113 = type metadata accessor for Logger();
      sub_100006654(v113, qword_1009374B0);
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        v112 = "[implSort] Objects are already in correct order. Will skip sorting";
LABEL_70:
        _os_log_impl(&_mh_execute_header, v109, v110, v112, v111, 2u);
      }

      goto LABEL_71;
    }
  }

  v49 = 0;
  v50 = 0;
  v152 = v12 & 0xC000000000000001;
  v149 = v12 & 0xFFFFFFFFFFFFFF8;
  v153 = isUniquelyReferenced_nonNull_native;
  v150 = v48;
  v151 = v12;
  v148 = 0;
  do
  {
    while (1)
    {
      if (v152)
      {
        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v50 >= *(v149 + 16))
        {
          goto LABEL_86;
        }

        v51 = *(v12 + 8 * v50 + 32);
      }

      v52 = v51;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_83;
      }

      v155 = v50 + 1;
      objc_opt_self();
      v53 = swift_dynamicCastObjCClass();
      v154 = v49;
      if (v53 || (objc_opt_self(), (v53 = swift_dynamicCastObjCClass()) != 0))
      {
        v54 = [v53 parentList];
        goto LABEL_27;
      }

      objc_opt_self();
      v55 = swift_dynamicCastObjCClass();
      if (v55)
      {
        v54 = [v55 parentReminder];
LABEL_27:
        v56 = v54;
        v57 = v56;
        if (v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = v52;
        }

        goto LABEL_30;
      }

      if (qword_1009359B8 != -1)
      {
        swift_once();
      }

      v80 = type metadata accessor for Logger();
      sub_100006654(v80, qword_1009374B0);
      v58 = v52;
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        aBlock[0] = v144;
        *v83 = 136315138;
        v58 = v58;
        v84 = [v58 description];
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        v88 = v85;
        isUniquelyReferenced_nonNull_native = v153;
        v89 = sub_10000668C(v88, v87, aBlock);
        v87, v90, v91, v92, v93, v94, v95, v96;
        *(v83 + 4) = v89;
        _os_log_impl(&_mh_execute_header, v81, v82, "[implSort] Unexpected CD object in ordered set {object: %s}", v83, 0xCu);
        sub_10000607C(v144);
      }

      v57 = 0;
LABEL_30:
      v59 = v58;
      v60 = sub_1000FFFF4(v59, isUniquelyReferenced_nonNull_native);

      if (v57)
      {
        v12 = sub_1000FFFF4(v52, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v12 = 0;
      }

      v13 = [v52 objectID];
      v61 = v158;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v61;
      v158 = 0x8000000000000000;
      v63 = sub_100363FF4(v13);
      v64 = *v61->clientIdentity;
      v65 = (v62 & 1) == 0;
      v66 = v64 + v65;
      if (__OFADD__(v64, v65))
      {
        goto LABEL_84;
      }

      v67 = v62;
      if (*&v61->clientIdentity[8] >= v66)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100372EC8();
        }
      }

      else
      {
        sub_100369CA4(v66, isUniquelyReferenced_nonNull_native);
        v68 = sub_100363FF4(v13);
        if ((v67 & 1) != (v69 & 1))
        {
          sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v63 = v68;
      }

      isUniquelyReferenced_nonNull_native = v153;
      v49 = v12 | (v60 << 32);
      v12 = aBlock[0];
      if (v67)
      {
        *(*(aBlock[0] + 56) + 8 * v63) = v49;
      }

      else
      {
        *(aBlock[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
        *(*(v12 + 48) + 8 * v63) = v13;
        *(*(v12 + 56) + 8 * v63) = v49;

        v77 = *(v12 + 16);
        v78 = __OFADD__(v77, 1);
        v79 = v77 + 1;
        if (v78)
        {
          goto LABEL_85;
        }

        *(v12 + 16) = v79;
      }

      v158 = v12;
      0x8000000000000000, v70, v71, v72, v73, v74, v75, v76;
      if (v49 >= v154)
      {
        break;
      }

      ++v50;
      v12 = v151;
      if (v155 == v150)
      {
        goto LABEL_54;
      }

      v148 = 1;
    }

    ++v50;
    v12 = v151;
  }

  while (v155 != v150);
  if ((v148 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_54:
  if (a3 != 2 && (a3 & 1) != 0)
  {
    if (qword_1009359B8 != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    sub_100006654(v97, qword_1009374B0);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&_mh_execute_header, v98, v99, "[implSort] LOOKATME: Pre-sorted but full CD mutableOrderedSet.sort still needed.", v100, 2u);
    }
  }

  if ([objc_opt_self() _forceDisableFullRemindersSorting])
  {
    v12, v101, v102, v103, v104, v105, v106, v107;
    if (qword_1009359B8 != -1)
    {
      swift_once();
    }

    v108 = type metadata accessor for Logger();
    sub_100006654(v108, qword_1009374B0);
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      v112 = "[implSort] _forceDisableFullRemindersSorting = YES so we will abort from running mutableOrderedSet.sort now.";
      goto LABEL_70;
    }

LABEL_71:

    v121 = 0;
    v122 = 0;
  }

  else
  {
    if (qword_1009359B8 != -1)
    {
      swift_once();
    }

    v124 = type metadata accessor for Logger();
    sub_100006654(v124, qword_1009374B0);

    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v125, v126))
    {
      v134 = swift_slowAlloc();
      *v134 = 134217984;
      if (v147)
      {
        v135 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v135 = *(v149 + 16);
      }

      v12, v127, v128, v129, v130, v131, v132, v133;
      *(v134 + 4) = v135;
      v12, v136, v137, v138, v139, v140, v141, v142;
      _os_log_impl(&_mh_execute_header, v125, v126, "[implSort] Performing full CD mutableOrderedSet.sort {total.count: %ld}", v134, 0xCu);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v122 = swift_allocObject();
    *(v122 + 16) = &v158;
    v13 = swift_allocObject();
    v121 = sub_1001010A8;
    v13[2] = sub_1001010A8;
    v13[3] = v122;
    aBlock[4] = sub_1001010B0;
    v157 = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1005E2238;
    aBlock[3] = &unk_1008E5758;
    v143 = _Block_copy(aBlock);
    v12 = v157;

    [a1 sortWithOptions:16 usingComparator:v143];
    _Block_release(v143);
    LOBYTE(v143) = swift_isEscapingClosureAtFileLocation();

    if (v143)
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }
  }

  v158, v114, v115, v116, v117, v118, v119, v120;
  return sub_10003E114(v121, v122);
}

uint64_t sub_1000FF574(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v66 - v14;
  v16 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v16 - 8, v17);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v23 = &v66 - v22;
  sub_100005EF0(a1, v68);
  sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v24 = v67;
  v25 = [v67 identifier];
  if (v25)
  {
    v26 = v25;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  (*(v8 + 56))(v19, v27, 1, v7);
  sub_100100FB4(v19, v23);
  if (!(*(v8 + 48))(v23, 1, v7))
  {
    (*(v8 + 16))(v15, v23, v7);
    sub_1000050A4(v23, &unk_100939D90, "8\n\r");
    v29 = UUID.uuidString.getter();
    v31 = v30;
    v32 = *(v8 + 8);
    v32(v15, v7);
    v33 = [a4 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = UUID.uuidString.getter();
    v36 = v35;
    v32(v11, v7);
    if (v29 == v34 && v31 == v36)
    {
      v36, v37, v38, v39, v40, v41, v42, v43;
      v31, v44, v45, v46, v47, v48, v49, v50;
    }

    else
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v36, v52, v53, v54, v55, v56, v57, v58;
      v31, v59, v60, v61, v62, v63, v64, v65;
      if ((v51 & 1) == 0)
      {

        return 0;
      }
    }

    *a3 = 1;

    return 1;
  }

  sub_1000050A4(v23, &unk_100939D90, "8\n\r");
  return 0;
}

uint64_t sub_1000FF8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  swift_unknownObjectRetain();
  LOBYTE(a4) = v7(v9, a3, a4);
  sub_10000607C(v9);
  return a4 & 1;
}

uint64_t sub_1000FF958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_1002C6D64(v5, v6, v8, isUniquelyReferenced_nonNull_native);
  v8, v10, v11, v12, v13, v14, v15, v16;
  *(a4 + 16) = v18;
  return swift_endAccess();
}

id sub_1000FF9FC(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v55 = a1;
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v48 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v54 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for NSFastEnumerationIterator();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50, v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = [objc_allocWithZone(NSMutableOrderedSet) init];
  v51 = v2;
  v14 = [v2 orderedSet];
  NSOrderedSet.makeIterator()();

  NSFastEnumerationIterator.next()();
  if (v66)
  {
    v60 = (v8 + 48);
    v53 = (v8 + 32);
    v52 = (v8 + 8);
    v16 = &unk_10093F610;
    v17 = NSString_ptr;
    *&v15 = 138412290;
    v58 = v15;
    v59 = v6;
    do
    {
      sub_100005EE0(&v65, v64);
      sub_100005EF0(v64, v63);
      sub_1000060C8(0, v16, v17);
      if (swift_dynamicCast())
      {
        v18 = v62;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        UUID.init(uuidString:)();
        v20, v21, v22, v23, v24, v25, v26, v27;
        if ((*v60)(v6, 1, v7) != 1)
        {
          v38 = v54;
          (*v53)(v54, v6, v7);
          v39 = objc_allocWithZone(REMObjectID);
          isa = UUID._bridgeToObjectiveC()().super.isa;
          v41 = String._bridgeToObjectiveC()();
          v42 = [v39 initWithUUID:isa entityName:v41];

          [v57 addObject:v42];
          (*v52)(v38, v7);
          goto LABEL_4;
        }

        sub_1000050A4(v6, &unk_100939D90, "8\n\r");
      }

      if (qword_1009359B8 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100006654(v28, qword_1009374B0);
      sub_100005EF0(v64, v63);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = v13;
        v32 = v17;
        v33 = v7;
        v34 = v16;
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = v58;
        sub_100005EF0(v63, &v62);
        if (swift_dynamicCast())
        {
          v37 = v61;
        }

        else
        {
          v37 = NSString.init(stringLiteral:)();
        }

        sub_10000607C(v63);
        *(v35 + 4) = v37;
        *v36 = v37;
        _os_log_impl(&_mh_execute_header, v29, v30, "Invalid UUID found in REMCRMergeableOrderedSet<NSString> when converting it to REMCRMergeableOrderedSet<REMObjectID> {uuidString: %@}", v35, 0xCu);
        sub_1000050A4(v36, &unk_100938E70, &unk_100797230);

        sub_10000607C(v64);
        v16 = v34;
        v7 = v33;
        v17 = v32;
        v13 = v31;
        v6 = v59;
        goto LABEL_5;
      }

      sub_10000607C(v63);
LABEL_4:
      sub_10000607C(v64);
LABEL_5:
      NSFastEnumerationIterator.next()();
    }

    while (v66);
  }

  (*(v49 + 8))(v13, v50);
  v43 = [v51 replicaIDSource];
  v44 = objc_allocWithZone(REMCRMergeableOrderedSet);
  v45 = v57;
  v46 = [v44 initWithReplicaIDSource:v43 orderedSet:v57];

  return v46;
}

uint64_t sub_1000FFFF4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v14 - 8, v15);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = __chkstk_darwin(v18, v19).n128_u64[0];
  v22 = &v55 - v21;
  v23 = [a1 identifier];
  if (v23)
  {
    v56 = v4;
    v24 = v5;
    v25 = v13;
    v26 = v8;
    v27 = v10;
    v28 = a1;
    v29 = v9;
    v30 = a2;
    v31 = v23;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    a2 = v30;
    v9 = v29;
    a1 = v28;
    v10 = v27;
    v8 = v26;
    v13 = v25;
    v5 = v24;
    v4 = v56;
    (*(v5 + 56))(v17, 0, 1, v56);
  }

  else
  {
    (*(v5 + 56))(v17, 1, 1, v4);
  }

  sub_100100FB4(v17, v22);
  if ((*(v5 + 48))(v22, 1, v4))
  {
    sub_1000050A4(v22, &unk_100939D90, "8\n\r");
    v32 = [a1 objectID];
    v33 = [v32 URIRepresentation];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = URL.hashValue.getter();
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    (*(v5 + 16))(v8, v22, v4);
    sub_1000050A4(v22, &unk_100939D90, "8\n\r");
    v35 = UUID.uuidString.getter();
    v37 = v36;
    (*(v5 + 8))(v8, v4);
    if (*(a2 + 16) && (v38 = sub_100005F4C(v35, v37), (v39 & 1) != 0))
    {
      v46 = v38;
      v37, v39, v40, v41, v42, v43, v44, v45;
      return *(*(a2 + 56) + 4 * v46);
    }

    else
    {
      v34 = String.hashValue.getter();
      v37, v47, v48, v49, v50, v51, v52, v53;
    }
  }

  return v34;
}

uint64_t sub_1001003AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100005EF0(a1, v26);
  sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = v25;
  sub_100005EF0(a2, v26);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_12:
    if (qword_1009359B8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_1009374B0);
    v5 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v5, v19, "relationship contains non-REMCDObject objects", v20, 2u);
    }

    goto LABEL_21;
  }

  v6 = [v25 objectID];
  v7 = v6;
  v8 = *a3;
  if (!*(*a3 + 16) || (v9 = sub_100363FF4(v6), (v10 & 1) == 0) || (v11 = *(*(v8 + 56) + 8 * v9), v7, v12 = [v25 objectID], v7 = v12, v13 = *a3, !*(*a3 + 16)) || (v14 = sub_100363FF4(v12), (v15 & 1) == 0))
  {

    if (qword_1009359B8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_1009374B0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "could not get a sorting order from object", v24, 2u);
    }

LABEL_21:
    return 0;
  }

  v16 = *(*(v13 + 56) + 8 * v14);

  if (v11 == v16)
  {
    return 0;
  }

  if (v11 < v16)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_1001006A4(void *a1, uint64_t a2)
{
  v152 = a2;
  v3 = type metadata accessor for IndexSet();
  v151 = *(v3 - 8);
  __chkstk_darwin(v3, v4);
  v6 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v147 - v14;
  v16 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v16 - 8, v17);
  v19 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = __chkstk_darwin(v20, v21).n128_u64[0];
  v24 = &v147 - v23;
  if ([a1 lastObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v158 = 0u;
    v159 = 0u;
  }

  aBlock = v158;
  v154 = v159;
  if (*(&v159 + 1))
  {
    sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v150 = v157;
    v25 = [v157 identifier];
    if (v25)
    {
      v26 = v25;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    (*(v8 + 56))(v19, v27, 1, v7);
    sub_100100FB4(v19, v24);
    if ((*(v8 + 48))(v24, 1, v7))
    {

      v28 = &unk_100939D90;
      v29 = "8\n\r";
      p_aBlock = v24;
      goto LABEL_12;
    }

    (*(v8 + 16))(v15, v24, v7);
    sub_1000050A4(v24, &unk_100939D90, "8\n\r");
    v148 = UUID.uuidString.getter();
    v149 = v31;
    v147 = *(v8 + 8);
    v147(v15, v7);
    isEscapingClosureAtFileLocation = v152;
    if (*(v152 + 16) < 2uLL)
    {
    }

    else
    {
      v33 = qword_1009359B8;

      if (v33 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_100006654(v34, qword_1009374B0);

      v35 = Logger.logObject.getter();
      v36 = isEscapingClosureAtFileLocation;
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134217984;
        *(v38 + 4) = *(v36 + 16);
        v36, v39, v40, v41, v42, v43, v44, v45;
        _os_log_impl(&_mh_execute_header, v35, v37, "[implSort] pre-sort: we have more than 1 sorting hints but we currently only support to accomate 1 {count: %ld}", v38, 0xCu);
      }

      else
      {

        isEscapingClosureAtFileLocation, v46, v47, v48, v49, v50, v51, v52;
      }

      isEscapingClosureAtFileLocation = v36;
    }

    v53 = sub_10031E854(isEscapingClosureAtFileLocation);
    if (!v53)
    {
      isEscapingClosureAtFileLocation, v54, v55, v56, v57, v58, v59, v60;
      v149, v82, v83, v84, v85, v86, v87, v88;

      return;
    }

    v61 = v53;
    v62 = [v53 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v63 = UUID.uuidString.getter();
    v65 = v64;
    v147(v11, v7);
    v73 = &selRef_accountStatusWithCompletionHandler_;
    v74 = v149;
    if (v148 == v63 && v149 == v65)
    {
      v65, v66, v67, v68, v69, v70, v71, v72;
      v74, v75, v76, v77, v78, v79, v80, v81;
    }

    else
    {
      isEscapingClosureAtFileLocation = _stringCompareWithSmolCheck(_:_:expecting:)();
      v65, v89, v90, v91, v92, v93, v94, v95;
      v74, v96, v97, v98, v99, v100, v101, v102;
      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        v73 = swift_allocObject();
        v73[2] = v61;
        v108 = swift_allocObject();
        v149 = sub_100101024;
        *(v108 + 16) = sub_100101024;
        *(v108 + 24) = v73;
        v155 = sub_10010102C;
        v156 = v108;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v154 = sub_1000FF8D8;
        *(&v154 + 1) = &unk_1008E56E0;
        v109 = _Block_copy(&aBlock);
        v63 = v156;
        v103 = v61;
        v110 = v61;

        v105 = [a1 indexOfObjectPassingTest:v109];
        _Block_release(v109);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          v107 = v152;
          v106 = v149;
          goto LABEL_32;
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    v103 = v61;
    v104 = [a1 count];
    v105 = v104 - 1;
    if (!__OFSUB__(v104, 1))
    {
      v106 = 0;
      v73 = 0;
      v107 = v152;
LABEL_32:
      if (v105 == NSNotFound.getter() || v105 < 0 || v105 >= [a1 count])
      {
        v107, v111, v112, v113, v114, v115, v116, v117;
      }

      else
      {
        if (*(v107 + 16))
        {
          isEscapingClosureAtFileLocation = v103;
          v118 = sub_10002B924(v103);
          if (v119)
          {
            v103 = v106;
            v63 = *(*(v107 + 56) + 8 * v118);
            if (v63 < 0)
            {

              v127 = v107;
              goto LABEL_46;
            }

            if (v63 >= [a1 count] || v105 == v63)
            {

              v127 = v152;
LABEL_46:
              v127, v120, v121, v122, v123, v124, v125, v126;

              v128 = v103;
              goto LABEL_43;
            }

            IndexSet.init(integer:)();
            IndexSet._bridgeToObjectiveC()(v136);
            v138 = v137;
            (*(v151 + 8))(v6, v3);
            [a1 moveObjectsAtIndexes:v138 toIndex:v63];

            if (qword_1009359B8 == -1)
            {
LABEL_48:
              v139 = type metadata accessor for Logger();
              sub_100006654(v139, qword_1009374B0);
              v140 = isEscapingClosureAtFileLocation;
              v141 = isEscapingClosureAtFileLocation;
              v142 = Logger.logObject.getter();
              v143 = static os_log_type_t.info.getter();

              if (os_log_type_enabled(v142, v143))
              {
                v144 = swift_slowAlloc();
                v145 = swift_slowAlloc();
                *v144 = 138412802;
                *(v144 + 4) = v141;
                *v145 = v140;
                *(v144 + 12) = 2048;
                *(v144 + 14) = v105;
                *(v144 + 22) = 2048;
                *(v144 + 24) = v63;
                v146 = v141;
                _os_log_impl(&_mh_execute_header, v142, v143, "[implSort] pre-sort: moved object {objectID: %@, from: %ld, to: %ld}", v144, 0x20u);
                sub_1000050A4(v145, &unk_100938E70, &unk_100797230);
              }

              else
              {
              }

              v127 = v152;
              goto LABEL_46;
            }

LABEL_54:
            swift_once();
            goto LABEL_48;
          }
        }

        v107, v129, v130, v131, v132, v133, v134, v135;
      }

      v128 = v106;
LABEL_43:
      sub_10003E114(v128, v73);
      return;
    }

    __break(1u);
    goto LABEL_53;
  }

  v28 = &qword_100939ED0;
  v29 = &qword_100791B10;
  p_aBlock = &aBlock;
LABEL_12:
  sub_1000050A4(p_aBlock, v28, v29);
}

uint64_t sub_100100FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100101058(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000060C8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t StartMigrationRequest.archivePath.getter()
{
  v1 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v7 - v3;
  sub_100010364(v0, &v7 - v3, &qword_1009374E0, &unk_1007A6940);
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  if ((*(*(started - 8) + 48))(v4, 1, started) == 1)
  {
    sub_1000050A4(v4, &qword_1009374E0, &unk_1007A6940);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return *v4;
    }

    sub_100101968(v4, type metadata accessor for StartMigrationRequest.OneOf_Source);
  }

  return 0;
}

void (*StartMigrationRequest.archivePath.modify(uint64_t *a1))(_TtC7remindd19RDXPCStorePerformer ***a1, uint64_t a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v2;
  v6 = *(*(sub_1000F5104(&qword_1009374E0, &unk_1007A6940) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[3] = v7;
  sub_100010364(v2, v7, &qword_1009374E0, &unk_1007A6940);
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  v5[4] = started;
  v10 = *(started - 8);
  v5[5] = v10;
  if ((*(v10 + 48))(v8, 1, started) == 1)
  {
    sub_1000050A4(v8, &qword_1009374E0, &unk_1007A6940);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v11 = *v8;
      v12 = v8[1];
      goto LABEL_12;
    }

    sub_100101968(v8, type metadata accessor for StartMigrationRequest.OneOf_Source);
  }

  v11 = 0;
  v12 = 0xE000000000000000;
LABEL_12:
  *v5 = v11;
  v5[1] = v12;
  return sub_100101444;
}

uint64_t StartMigrationRequest.credential.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v10 - v6;
  sub_100010364(v2, &v10 - v6, &qword_1009374E0, &unk_1007A6940);
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  if ((*(*(started - 8) + 48))(v7, 1, started) == 1)
  {
    sub_1000050A4(v7, &qword_1009374E0, &unk_1007A6940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1001158E8(v7, a1, type metadata accessor for StartMigrationRequest.Credential);
    }

    sub_100101968(v7, type metadata accessor for StartMigrationRequest.OneOf_Source);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  type metadata accessor for StartMigrationRequest.Credential(0);
  return UnknownStorage.init()();
}

uint64_t StartMigrationRequest.Credential.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  type metadata accessor for StartMigrationRequest.Credential(0);
  return UnknownStorage.init()();
}

uint64_t StartMigrationRequest.credential.setter(uint64_t a1)
{
  sub_1000050A4(v1, &qword_1009374E0, &unk_1007A6940);
  sub_1001158E8(a1, v1, type metadata accessor for StartMigrationRequest.Credential);
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(started - 8) + 56);

  return v4(v1, 0, 1, started);
}

void (*StartMigrationRequest.credential.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  *v3 = v1;
  v5 = *(*(sub_1000F5104(&qword_1009374E0, &unk_1007A6940) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for StartMigrationRequest.Credential(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_100010364(v1, v7, &qword_1009374E0, &unk_1007A6940);
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  v4[4] = started;
  v12 = *(started - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, started) == 1)
  {
    sub_1000050A4(v7, &qword_1009374E0, &unk_1007A6940);
LABEL_15:
    *v10 = 0;
    *(v10 + 8) = 0xE000000000000000;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0xE000000000000000;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0xE000000000000000;
    *(v10 + 64) = 0;
    UnknownStorage.init()();
    return sub_10010192C;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100101968(v7, type metadata accessor for StartMigrationRequest.OneOf_Source);
    goto LABEL_15;
  }

  sub_1001158E8(v7, v10, type metadata accessor for StartMigrationRequest.Credential);
  return sub_10010192C;
}

uint64_t sub_100101968(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100101A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000050A4(v3, &qword_1009374E0, &unk_1007A6940);
  *v3 = a1;
  v3[1] = a2;
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(started - 8) + 56);

  return v7(v3, 0, 1, started);
}

void (*StartMigrationRequest.embeddedTestData.modify(uint64_t *a1))(_TtC7remindd19RDXPCStorePerformer ***a1, uint64_t a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v2;
  v6 = *(*(sub_1000F5104(&qword_1009374E0, &unk_1007A6940) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[3] = v7;
  sub_100010364(v2, v7, &qword_1009374E0, &unk_1007A6940);
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  v5[4] = started;
  v10 = *(started - 8);
  v5[5] = v10;
  if ((*(v10 + 48))(v8, 1, started) == 1)
  {
    sub_1000050A4(v8, &qword_1009374E0, &unk_1007A6940);
LABEL_12:
    v11 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_100101968(v8, type metadata accessor for StartMigrationRequest.OneOf_Source);
    goto LABEL_12;
  }

  v11 = *v8;
  v12 = v8[1];
LABEL_13:
  *v5 = v11;
  v5[1] = v12;
  return sub_100101C4C;
}

void sub_100101C54(_TtC7remindd19RDXPCStorePerformer ***a1, char a2, uint64_t a3)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[4];
  v7 = (*a1)[5];
  v9 = (*a1)[2];
  v8 = (*a1)[3];
  if (a2)
  {

    sub_1000050A4(v9, &qword_1009374E0, &unk_1007A6940);
    v9->super.isa = v5;
    *v9->storeController = v4;
    swift_storeEnumTagMultiPayload();
    (*(v7 + 56))(v9, 0, 1, v6);
    v3[1], v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    sub_1000050A4((*a1)[2], &qword_1009374E0, &unk_1007A6940);
    v9->super.isa = v5;
    *v9->storeController = v4;
    swift_storeEnumTagMultiPayload();
    (*(v7 + 56))(v9, 0, 1, v6);
  }

  free(v8);

  free(v3);
}

uint64_t StartMigrationRequest.disableCache.setter(char a1)
{
  result = type metadata accessor for StartMigrationRequest(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t StartMigrationRequest.Credential.baseURL.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void StartMigrationRequest.Credential.baseURL.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
}

uint64_t StartMigrationRequest.Credential.hostname.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void StartMigrationRequest.Credential.hostname.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
}

uint64_t StartMigrationRequest.Credential.mmeAuthToken.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void StartMigrationRequest.Credential.mmeAuthToken.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 56), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 48) = a1;
  *(v8 + 56) = a2;
}

uint64_t StartMigrationRequest.init()@<X0>(uint64_t a1@<X8>)
{
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  (*(*(started - 8) + 56))(a1, 1, 1, started);
  *(a1 + *(type metadata accessor for StartMigrationRequest(0) + 20)) = 0;
  return UnknownStorage.init()();
}

uint64_t StartMigrationResponse.success.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10 - v5;
  started = type metadata accessor for StartMigrationResponse(0);
  sub_100010364(v1 + *(started + 20), v6, &qword_1009374E8, &unk_100792DE0);
  v8 = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1000050A4(v6, &qword_1009374E8, &unk_100792DE0);
LABEL_5:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
    type metadata accessor for StartMigrationResponse.Details(0);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100101968(v6, type metadata accessor for StartMigrationResponse.OneOf_Result);
    goto LABEL_5;
  }

  return sub_1001158E8(v6, a1, type metadata accessor for StartMigrationResponse.Details);
}

void (*StartMigrationResponse.success.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000F5104(&qword_1009374E8, &unk_100792DE0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for StartMigrationResponse.Details(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  v11 = *(type metadata accessor for StartMigrationResponse(0) + 20);
  *(v4 + 12) = v11;
  sub_100010364(v1 + v11, v7, &qword_1009374E8, &unk_100792DE0);
  started = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  v4[4] = started;
  v13 = *(started - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, started) == 1)
  {
    sub_1000050A4(v7, &qword_1009374E8, &unk_100792DE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1001158E8(v7, v10, type metadata accessor for StartMigrationResponse.Details);
      return sub_1001025E4;
    }

    sub_100101968(v7, type metadata accessor for StartMigrationResponse.OneOf_Result);
  }

  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 12) = 0;
  *(v10 + 16) = 0;
  UnknownStorage.init()();
  return sub_1001025E4;
}

uint64_t StartMigrationResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10 - v5;
  started = type metadata accessor for StartMigrationResponse(0);
  sub_100010364(v1 + *(started + 20), v6, &qword_1009374E8, &unk_100792DE0);
  v8 = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1000050A4(v6, &qword_1009374E8, &unk_100792DE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1001158E8(v6, a1, type metadata accessor for StartMigrationResponse.Error);
    }

    sub_100101968(v6, type metadata accessor for StartMigrationResponse.OneOf_Result);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  type metadata accessor for StartMigrationResponse.Error(0);
  return UnknownStorage.init()();
}

uint64_t sub_1001027C8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = *(type metadata accessor for StartMigrationResponse(0) + 20);
  sub_1000050A4(v3 + v6, &qword_1009374E8, &unk_100792DE0);
  sub_1001158E8(a1, v3 + v6, a2);
  started = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(*(started - 8) + 56);

  return v8(v3 + v6, 0, 1, started);
}

void (*StartMigrationResponse.error.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000F5104(&qword_1009374E8, &unk_100792DE0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for StartMigrationResponse.Error(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  v11 = *(type metadata accessor for StartMigrationResponse(0) + 20);
  *(v4 + 12) = v11;
  sub_100010364(v1 + v11, v7, &qword_1009374E8, &unk_100792DE0);
  started = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  v4[4] = started;
  v13 = *(started - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, started) == 1)
  {
    sub_1000050A4(v7, &qword_1009374E8, &unk_100792DE0);
LABEL_15:
    *v10 = 0;
    *(v10 + 8) = 0xE000000000000000;
    *(v10 + 16) = 0;
    UnknownStorage.init()();
    return sub_100102ACC;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100101968(v7, type metadata accessor for StartMigrationResponse.OneOf_Result);
    goto LABEL_15;
  }

  sub_1001158E8(v7, v10, type metadata accessor for StartMigrationResponse.Error);
  return sub_100102ACC;
}

void sub_100102AFC(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = *(*a1 + 12);
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v12 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    sub_100115950(v11, v10, a3);
    sub_1000050A4(v12 + v9, &qword_1009374E8, &unk_100792DE0);
    sub_1001158E8(v10, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
    sub_100101968(v11, a5);
  }

  else
  {
    sub_1000050A4(v12 + v9, &qword_1009374E8, &unk_100792DE0);
    sub_1001158E8(v11, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
  }

  free(v11);
  free(v10);
  free(v14);

  free(v6);
}

uint64_t sub_100102E88@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100102F24(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t StartMigrationResponse.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  started = type metadata accessor for StartMigrationResponse(0);
  v3 = *(started + 20);
  v4 = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(started + 24)];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  return UnknownStorage.init()();
}

uint64_t MigrateRequest.user.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v10 - v6;
  sub_100010364(v2, &v10 - v6, &qword_1009374F0, &qword_1007A2380);
  v8 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1000050A4(v7, &qword_1009374F0, &qword_1007A2380);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1001158E8(v7, a1, type metadata accessor for MigrateRequest.User);
    }

    sub_100101968(v7, type metadata accessor for MigrateRequest.OneOf_Source);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  type metadata accessor for MigrateRequest.User(0);
  return UnknownStorage.init()();
}

uint64_t MigrateRequest.User.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  type metadata accessor for MigrateRequest.User(0);
  return UnknownStorage.init()();
}

uint64_t MigrateRequest.user.setter(uint64_t a1)
{
  sub_1000050A4(v1, &qword_1009374F0, &qword_1007A2380);
  sub_1001158E8(a1, v1, type metadata accessor for MigrateRequest.User);
  v3 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*MigrateRequest.user.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  *v3 = v1;
  v5 = *(*(sub_1000F5104(&qword_1009374F0, &qword_1007A2380) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for MigrateRequest.User(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_100010364(v1, v7, &qword_1009374F0, &qword_1007A2380);
  v11 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_1000050A4(v7, &qword_1009374F0, &qword_1007A2380);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1001158E8(v7, v10, type metadata accessor for MigrateRequest.User);
      return sub_100103564;
    }

    sub_100101968(v7, type metadata accessor for MigrateRequest.OneOf_Source);
  }

  *v10 = 0;
  *(v10 + 8) = 0;
  UnknownStorage.init()();
  return sub_100103564;
}

void sub_1001035A0(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v15 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    sub_100115950((*a1)[3], v12, a5);
    sub_1000050A4(v15, a3, a4);
    sub_1001158E8(v12, v15, a5);
    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(v15, 0, 1, v10);
    sub_100101968(v13, a6);
  }

  else
  {
    sub_1000050A4(**a1, a3, a4);
    sub_1001158E8(v13, v15, a5);
    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(v15, 0, 1, v10);
  }

  free(v13);
  free(v12);
  free(v14);

  free(v9);
}

uint64_t MigrateRequest.archivePath.getter()
{
  v1 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v7 - v3;
  sub_100010364(v0, &v7 - v3, &qword_1009374F0, &qword_1007A2380);
  v5 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_1000050A4(v4, &qword_1009374F0, &qword_1007A2380);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return *v4;
    }

    sub_100101968(v4, type metadata accessor for MigrateRequest.OneOf_Source);
  }

  return 0;
}

void (*MigrateRequest.archivePath.modify(uint64_t *a1))(_TtC7remindd19RDXPCStorePerformer ***a1, uint64_t a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v2;
  v6 = *(*(sub_1000F5104(&qword_1009374F0, &qword_1007A2380) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[3] = v7;
  sub_100010364(v2, v7, &qword_1009374F0, &qword_1007A2380);
  v9 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  v5[4] = v9;
  v10 = *(v9 - 8);
  v5[5] = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000050A4(v8, &qword_1009374F0, &qword_1007A2380);
LABEL_12:
    v11 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100101968(v8, type metadata accessor for MigrateRequest.OneOf_Source);
    goto LABEL_12;
  }

  v11 = *v8;
  v12 = v8[1];
LABEL_13:
  *v5 = v11;
  v5[1] = v12;
  return sub_1001039C4;
}

uint64_t sub_100103A08(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = v4;
  v10 = sub_1000F5104(a1, a2);
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v16 - v12;
  sub_100010364(v9, &v16 - v12, a1, a2);
  v14 = a3(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    sub_1000050A4(v13, a1, a2);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return *v13;
    }

    sub_100101968(v13, a4);
  }

  return 0;
}

uint64_t sub_100103B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000050A4(v3, &qword_1009374F0, &qword_1007A2380);
  *v3 = a1;
  v3[1] = a2;
  v6 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

void (*MigrateRequest.embeddedTestData.modify(uint64_t *a1))(_TtC7remindd19RDXPCStorePerformer ***a1, uint64_t a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v2;
  v6 = *(*(sub_1000F5104(&qword_1009374F0, &qword_1007A2380) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[3] = v7;
  sub_100010364(v2, v7, &qword_1009374F0, &qword_1007A2380);
  v9 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  v5[4] = v9;
  v10 = *(v9 - 8);
  v5[5] = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000050A4(v8, &qword_1009374F0, &qword_1007A2380);
LABEL_12:
    v11 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_100101968(v8, type metadata accessor for MigrateRequest.OneOf_Source);
    goto LABEL_12;
  }

  v11 = *v8;
  v12 = v8[1];
LABEL_13:
  *v5 = v11;
  v5[1] = v12;
  return sub_100103D74;
}

void sub_100103D7C(_TtC7remindd19RDXPCStorePerformer ***a1, char a2, uint64_t a3)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[4];
  v7 = (*a1)[5];
  v9 = (*a1)[2];
  v8 = (*a1)[3];
  if (a2)
  {

    sub_1000050A4(v9, &qword_1009374F0, &qword_1007A2380);
    v9->super.isa = v5;
    *v9->storeController = v4;
    swift_storeEnumTagMultiPayload();
    (*(v7 + 56))(v9, 0, 1, v6);
    v3[1], v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    sub_1000050A4((*a1)[2], &qword_1009374F0, &qword_1007A2380);
    v9->super.isa = v5;
    *v9->storeController = v4;
    swift_storeEnumTagMultiPayload();
    (*(v7 + 56))(v9, 0, 1, v6);
  }

  free(v8);

  free(v3);
}

uint64_t MigrateRequest.options.setter(int a1)
{
  result = type metadata accessor for MigrateRequest(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t MigrateRequest.userInitiated.setter(char a1)
{
  result = type metadata accessor for MigrateRequest(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t MigrateRequest.simulatedError.setter(int a1)
{
  result = type metadata accessor for MigrateRequest(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_10010407C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100104118(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t static MigrateRequest.User.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for MigrateRequest.User(0);
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t MigrateRequest.Option.rawValue.getter(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_100794E00[result];
  }

  return result;
}

uint64_t sub_1001042E0@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_10011790C(a2);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 9) = v5 & 1;
  return result;
}

uint64_t sub_100104314()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_100794E00[result];
  }

  return result;
}

uint64_t sub_100104334@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10011790C(*a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

void sub_10010436C(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_100794E00[v2];
  }

  *a1 = v2;
}

uint64_t sub_100104390(uint64_t a1, uint64_t a2)
{
  v4 = sub_100123B74();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_1001043DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_100794E00[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_100794E00[v3];
  }

  return v2 == v3;
}

uint64_t MigrateRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for MigrateRequest(0);
  *(a1 + v3[5]) = 0;
  *(a1 + v3[6]) = 0;
  *(a1 + v3[7]) = 0;
  return UnknownStorage.init()();
}

double static MigrateRequest.Option.allCases.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t MigrateResponse.success.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = type metadata accessor for MigrateResponse(0);
  sub_100010364(v1 + *(v7 + 20), v6, &qword_100937500, &qword_100792DF0);
  v8 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1000050A4(v6, &qword_100937500, &qword_100792DF0);
LABEL_5:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
    type metadata accessor for MigrateResponse.Details(0);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100101968(v6, type metadata accessor for MigrateResponse.OneOf_Result);
    goto LABEL_5;
  }

  return sub_1001158E8(v6, a1, type metadata accessor for MigrateResponse.Details);
}

uint64_t sub_1001048DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  a1(0);
  return UnknownStorage.init()();
}

uint64_t sub_100104940(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = *(type metadata accessor for MigrateResponse(0) + 20);
  sub_1000050A4(v3 + v6, &qword_100937500, &qword_100792DF0);
  sub_1001158E8(a1, v3 + v6, a2);
  v7 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(*(v7 - 8) + 56);

  return v8(v3 + v6, 0, 1, v7);
}

void (*MigrateResponse.success.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000F5104(&qword_100937500, &qword_100792DF0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for MigrateResponse.Details(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  v11 = *(type metadata accessor for MigrateResponse(0) + 20);
  *(v4 + 12) = v11;
  sub_100010364(v1 + v11, v7, &qword_100937500, &qword_100792DF0);
  v12 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_1000050A4(v7, &qword_100937500, &qword_100792DF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1001158E8(v7, v10, type metadata accessor for MigrateResponse.Details);
      return sub_100104C44;
    }

    sub_100101968(v7, type metadata accessor for MigrateResponse.OneOf_Result);
  }

  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 12) = 0;
  *(v10 + 16) = 0;
  UnknownStorage.init()();
  return sub_100104C44;
}

void sub_100104C74(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = *(*a1 + 12);
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v12 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    sub_100115950(v11, v10, a3);
    sub_1000050A4(v12 + v9, &qword_100937500, &qword_100792DF0);
    sub_1001158E8(v10, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
    sub_100101968(v11, a5);
  }

  else
  {
    sub_1000050A4(v12 + v9, &qword_100937500, &qword_100792DF0);
    sub_1001158E8(v11, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
  }

  free(v11);
  free(v10);
  free(v14);

  free(v6);
}

uint64_t MigrateResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = type metadata accessor for MigrateResponse(0);
  sub_100010364(v1 + *(v7 + 20), v6, &qword_100937500, &qword_100792DF0);
  v8 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1000050A4(v6, &qword_100937500, &qword_100792DF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1001158E8(v6, a1, type metadata accessor for MigrateResponse.Error);
    }

    sub_100101968(v6, type metadata accessor for MigrateResponse.OneOf_Result);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  type metadata accessor for MigrateResponse.Error(0);
  return UnknownStorage.init()();
}

uint64_t sub_100104F74@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  a1(0);
  return UnknownStorage.init()();
}

void (*MigrateResponse.error.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000F5104(&qword_100937500, &qword_100792DF0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for MigrateResponse.Error(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  v11 = *(type metadata accessor for MigrateResponse(0) + 20);
  *(v4 + 12) = v11;
  sub_100010364(v1 + v11, v7, &qword_100937500, &qword_100792DF0);
  v12 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_1000050A4(v7, &qword_100937500, &qword_100792DF0);
LABEL_15:
    *v10 = 0;
    *(v10 + 8) = 0xE000000000000000;
    *(v10 + 16) = 0;
    UnknownStorage.init()();
    return sub_100105210;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100101968(v7, type metadata accessor for MigrateResponse.OneOf_Result);
    goto LABEL_15;
  }

  sub_1001158E8(v7, v10, type metadata accessor for MigrateResponse.Error);
  return sub_100105210;
}

uint64_t MigrateResponse.nextStep.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for MigrateResponse(0);
  sub_100010364(v1 + *(v7 + 32), v6, &qword_100937508, &qword_100792DF8);
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v9 = *(*(Step - 8) + 48);
  if (v9(v6, 1, Step) != 1)
  {
    return sub_1001158E8(v6, a1, type metadata accessor for MigrateResponse.NextStep);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 4) = 0;
  UnknownStorage.init()();
  result = (v9)(v6, 1, Step);
  if (result != 1)
  {
    return sub_1000050A4(v6, &qword_100937508, &qword_100792DF8);
  }

  return result;
}

uint64_t MigrateResponse.NextStep.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 4) = 0;
  type metadata accessor for MigrateResponse.NextStep(0);
  return UnknownStorage.init()();
}

uint64_t MigrateResponse.nextStep.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MigrateResponse(0) + 32);
  sub_1000050A4(v1 + v3, &qword_100937508, &qword_100792DF8);
  sub_1001158E8(a1, v1 + v3, type metadata accessor for MigrateResponse.NextStep);
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v5 = *(*(Step - 8) + 56);

  return v5(v1 + v3, 0, 1, Step);
}

void (*MigrateResponse.nextStep.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000F5104(&qword_100937508, &qword_100792DF8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v4[2] = Step;
  v9 = *(Step - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for MigrateResponse(0) + 32);
  *(v4 + 12) = v14;
  sub_100010364(v1 + v14, v7, &qword_100937508, &qword_100792DF8);
  v15 = *(v10 + 48);
  if (v15(v7, 1, Step) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 4) = 0;
    UnknownStorage.init()();
    if (v15(v7, 1, Step) != 1)
    {
      sub_1000050A4(v7, &qword_100937508, &qword_100792DF8);
    }
  }

  else
  {
    sub_1001158E8(v7, v13, type metadata accessor for MigrateResponse.NextStep);
  }

  return sub_1001056B8;
}

void sub_1001056B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_100115950((*a1)[5], v4, type metadata accessor for MigrateResponse.NextStep);
    sub_1000050A4(v9 + v3, &qword_100937508, &qword_100792DF8);
    sub_1001158E8(v4, v9 + v3, type metadata accessor for MigrateResponse.NextStep);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_100101968(v5, type metadata accessor for MigrateResponse.NextStep);
  }

  else
  {
    sub_1000050A4(v9 + v3, &qword_100937508, &qword_100792DF8);
    sub_1001158E8(v5, v9 + v3, type metadata accessor for MigrateResponse.NextStep);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL MigrateResponse.hasNextStep.getter()
{
  v1 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for MigrateResponse(0);
  sub_100010364(v0 + *(v5 + 32), v4, &qword_100937508, &qword_100792DF8);
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v7 = (*(*(Step - 8) + 48))(v4, 1, Step) != 1;
  sub_1000050A4(v4, &qword_100937508, &qword_100792DF8);
  return v7;
}

Swift::Void __swiftcall MigrateResponse.clearNextStep()()
{
  v1 = *(type metadata accessor for MigrateResponse(0) + 32);
  sub_1000050A4(v0 + v1, &qword_100937508, &qword_100792DF8);
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v3 = *(*(Step - 8) + 56);

  v3(v0 + v1, 1, 1, Step);
}

uint64_t sub_1001059B4(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));

  return v2;
}

void sub_100105A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = v3 + *(a3(0) + 24);
  *(v6 + 8), v7, v8, v9, v10, v11, v12, v13;
  *v6 = a1;
  *(v6 + 8) = a2;
}

uint64_t sub_100105AC0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100105B5C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100105E40@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100105EDC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t MigrateResponse.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for MigrateResponse(0);
  v3 = v2[5];
  v4 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[6]];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  UnknownStorage.init()();
  v6 = v2[8];
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v8 = *(*(Step - 8) + 56);

  return v8(&a1[v6], 1, 1, Step);
}

uint64_t UnmigrateRequest.Option.rawValue.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100106134@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_10010614C()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_100106164@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result == 0;
  *a2 = *result;
  v3 = v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_100106180(void *a1@<X8>)
{
  if (*(v1 + 8))
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *v1;
  }
}

Swift::Int sub_10010619C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100106208(uint64_t a1, uint64_t a2)
{
  v4 = sub_100123B20();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100106254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_1001062BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = *a1;
  }

  if (*(a2 + 8))
  {
    v2 = 0;
  }

  return v3 == v2;
}

uint64_t UnmigrateRequest.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for UnmigrateRequest(0);
  return UnknownStorage.init()();
}

double static UnmigrateRequest.Option.allCases.getter()
{
  swift_beginAccess();

  return result;
}

void sub_100106384(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer **a2)
{
  swift_beginAccess();
  v4 = *a2;
  *a2 = a1;
  v4, v5, v6, v7, v8, v9, v10, v11;
}

double sub_100106434@<D0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *a1;

  return result;
}

uint64_t UnmigrateResponse.success.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000F5104(&qword_100937510, &qword_100792E00);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v10 - v6;
  sub_100010364(v2, &v10 - v6, &qword_100937510, &qword_100792E00);
  v8 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1000050A4(v7, &qword_100937510, &qword_100792E00);
LABEL_5:
    *a1 = 0;
    type metadata accessor for UnmigrateResponse.Details(0);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100101968(v7, type metadata accessor for UnmigrateResponse.OneOf_Result);
    goto LABEL_5;
  }

  return sub_1001158E8(v7, a1, type metadata accessor for UnmigrateResponse.Details);
}

uint64_t UnmigrateResponse.Details.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for UnmigrateResponse.Details(0);
  return UnknownStorage.init()();
}

uint64_t UnmigrateResponse.success.setter(uint64_t a1)
{
  sub_1000050A4(v1, &qword_100937510, &qword_100792E00);
  sub_1001158E8(a1, v1, type metadata accessor for UnmigrateResponse.Details);
  v3 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*UnmigrateResponse.success.modify(void *a1))(uint64_t **a1, char a2)
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
  *v3 = v1;
  v5 = *(*(sub_1000F5104(&qword_100937510, &qword_100792E00) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for UnmigrateResponse.Details(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_100010364(v1, v7, &qword_100937510, &qword_100792E00);
  v11 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_1000050A4(v7, &qword_100937510, &qword_100792E00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1001158E8(v7, v10, type metadata accessor for UnmigrateResponse.Details);
      return sub_10010695C;
    }

    sub_100101968(v7, type metadata accessor for UnmigrateResponse.OneOf_Result);
  }

  *v10 = 0;
  UnknownStorage.init()();
  return sub_10010695C;
}

uint64_t UnmigrateResponse.error.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000F5104(&qword_100937510, &qword_100792E00);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v10 - v6;
  sub_100010364(v2, &v10 - v6, &qword_100937510, &qword_100792E00);
  v8 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1000050A4(v7, &qword_100937510, &qword_100792E00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1001158E8(v7, a1, type metadata accessor for UnmigrateResponse.Error);
    }

    sub_100101968(v7, type metadata accessor for UnmigrateResponse.OneOf_Result);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for UnmigrateResponse.Error(0);
  return UnknownStorage.init()();
}

uint64_t UnmigrateResponse.error.setter(uint64_t a1)
{
  sub_1000050A4(v1, &qword_100937510, &qword_100792E00);
  sub_1001158E8(a1, v1, type metadata accessor for UnmigrateResponse.Error);
  v3 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*UnmigrateResponse.error.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  *v3 = v1;
  v5 = *(*(sub_1000F5104(&qword_100937510, &qword_100792E00) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for UnmigrateResponse.Error(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_100010364(v1, v7, &qword_100937510, &qword_100792E00);
  v11 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_1000050A4(v7, &qword_100937510, &qword_100792E00);
LABEL_15:
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    UnknownStorage.init()();
    return sub_100106E00;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100101968(v7, type metadata accessor for UnmigrateResponse.OneOf_Result);
    goto LABEL_15;
  }

  sub_1001158E8(v7, v10, type metadata accessor for UnmigrateResponse.Error);
  return sub_100106E00;
}

void sub_100106E3C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v15 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    sub_100115950((*a1)[3], v12, a5);
    sub_1000050A4(v15, a3, a4);
    sub_1001158E8(v12, v15, a5);
    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(v15, 0, 1, v10);
    sub_100101968(v13, a6);
  }

  else
  {
    sub_1000050A4(**a1, a3, a4);
    sub_1001158E8(v13, v15, a5);
    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(v15, 0, 1, v10);
  }

  free(v13);
  free(v12);
  free(v14);

  free(v9);
}

uint64_t UnmigrateResponse.logs.getter()
{
  v1 = *(v0 + *(type metadata accessor for UnmigrateResponse(0) + 20));

  return v1;
}

void UnmigrateResponse.logs.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for UnmigrateResponse(0) + 20);
  *(v5 + 8), v6, v7, v8, v9, v10, v11, v12;
  *v5 = a1;
  *(v5 + 8) = a2;
}

uint64_t static UnmigrateResponse.Details.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for UnmigrateResponse.Details(0);
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1001071B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100107254(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t UnmigrateResponse.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = (a1 + *(type metadata accessor for UnmigrateResponse(0) + 20));
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  return UnknownStorage.init()();
}

uint64_t EmptyRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EmptyRequest.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t BasicResponse.result.getter()
{
  v1 = *v0;
  sub_100117B24(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

void BasicResponse.result.setter(uint64_t a1, uint64_t a2, char a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_100117B44(*v8, *(v8 + 8), *(v8 + 16), a4, a5, a6, a7, a8);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3;
}

uint64_t BasicResponse.success.getter()
{
  v1 = *(v0 + 16);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    return 0;
  }

  v3 = *v0;
  sub_100117B3C(*v0, *(v0 + 8));
  return v3;
}

void (*BasicResponse.success.modify(uint64_t *a1))(_TtC7remindd19RDXPCStorePerformer ***a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  v7 = *(v1 + 16);
  *(v3 + 40) = v7;
  if (v7 == 255 || (v7 & 1) != 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    sub_100117B3C(v5, v6);
  }

  *v4 = v5;
  v4[1] = v6;
  return sub_10010768C;
}

uint64_t BasicResponse.error.getter()
{
  v1 = *(v0 + 16);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    return 0;
  }

  v2 = *v0;
  sub_100117B3C(*v0, *(v0 + 8));
  return v2;
}

void (*BasicResponse.error.modify(uint64_t *a1))(_TtC7remindd19RDXPCStorePerformer ***a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  v7 = *(v1 + 16);
  *(v3 + 40) = v7;
  if (v7 == 255 || (v7 & 1) == 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    sub_100117B3C(v5, v6);
  }

  *v4 = v5;
  v4[1] = v6;
  return sub_1001077AC;
}

void sub_1001077B4(_TtC7remindd19RDXPCStorePerformer ***a1, char a2, char a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *a1;
  v11 = **a1;
  v10 = (*a1)[1];
  v12 = *(*a1 + 40);
  v14 = (*a1)[3];
  v13 = (*a1)[4];
  v15 = (*a1)[2];
  if (a2)
  {

    sub_100117B44(v14, v13, v12, v16, v17, v18, v19, v20);
    *v15 = v11;
    *(v15 + 8) = v10;
    *(v15 + 16) = a3;
    v9[1], v21, v22, v23, v24, v25, v26, v27;
  }

  else
  {
    sub_100117B44((*a1)[3], v13, v12, a4, a5, a6, a7, a8);
    *v15 = v11;
    *(v15 + 8) = v10;
    *(v15 + 16) = a3;
  }

  free(v9);
}

uint64_t BasicResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  type metadata accessor for BasicResponse(0);
  return UnknownStorage.init()();
}

uint64_t PingRequest.message.getter()
{
  v1 = *v0;

  return v1;
}

void PingRequest.message.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 8), a2, a3, a4, a5, a6, a7, a8;
  *v8 = a1;
  *(v8 + 8) = a2;
}

uint64_t sub_100107A34@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a1(0);
  return UnknownStorage.init()();
}

uint64_t sub_100107B30()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static StartMigrationRequest._protobuf_nameMap);
  sub_100006654(v0, static StartMigrationRequest._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100792CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "archivePath";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "credential";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "embeddedTestData";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "disableCache";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

void StartMigrationRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    v9 = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        sub_100108488(a1, v5, a2, a3, 2u);
      }

      else if (v9 == 4)
      {
        type metadata accessor for StartMigrationRequest(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (v9 == 1)
    {
      sub_100108488(a1, v5, a2, a3, 0);
    }

    else if (v9 == 2)
    {
      sub_100107ECC(v5, a1, a2, a3);
    }
  }
}

uint64_t sub_100107ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v53 = a2;
  v54 = a3;
  started = type metadata accessor for StartMigrationRequest.Credential(0);
  v6 = *(started - 8);
  __chkstk_darwin(started, v7);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v48 = &v45 - v11;
  v12 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v24 = &v45 - v23;
  v25 = sub_1000F5104(&qword_1009387A0, &qword_100794DC8);
  __chkstk_darwin(v25 - 8, v26);
  v50 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28, v29);
  v32 = &v45 - v31;
  v49 = v6;
  v33 = *(v6 + 56);
  v52 = started;
  v34 = started;
  v35 = v33;
  (v33)(&v45 - v31, 1, 1, v34, v30);
  v46 = a1;
  sub_100010364(a1, v15, &qword_1009374E0, &unk_1007A6940);
  v45 = v17;
  v36 = (*(v17 + 48))(v15, 1, v16);
  if (v36 == 1)
  {
    sub_1000050A4(v15, &qword_1009374E0, &unk_1007A6940);
    v37 = v52;
    v38 = v16;
  }

  else
  {
    sub_1001158E8(v15, v24, type metadata accessor for StartMigrationRequest.OneOf_Source);
    sub_1001158E8(v24, v20, type metadata accessor for StartMigrationRequest.OneOf_Source);
    v38 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000050A4(v32, &qword_1009387A0, &qword_100794DC8);
      v39 = v48;
      sub_1001158E8(v20, v48, type metadata accessor for StartMigrationRequest.Credential);
      sub_1001158E8(v39, v32, type metadata accessor for StartMigrationRequest.Credential);
      v37 = v52;
      v35(v32, 0, 1, v52);
    }

    else
    {
      sub_100101968(v20, type metadata accessor for StartMigrationRequest.OneOf_Source);
      v37 = v52;
    }
  }

  v40 = v50;
  sub_100117BC4(&qword_100937620, type metadata accessor for StartMigrationRequest.Credential, &protocol conformance descriptor for StartMigrationRequest.Credential);
  v41 = v51;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v41)
  {
    return sub_1000050A4(v32, &qword_1009387A0, &qword_100794DC8);
  }

  sub_100010364(v32, v40, &qword_1009387A0, &qword_100794DC8);
  if ((*(v49 + 48))(v40, 1, v37) == 1)
  {
    sub_1000050A4(v32, &qword_1009387A0, &qword_100794DC8);
    return sub_1000050A4(v40, &qword_1009387A0, &qword_100794DC8);
  }

  else
  {
    v43 = v47;
    sub_1001158E8(v40, v47, type metadata accessor for StartMigrationRequest.Credential);
    if (v36 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000050A4(v32, &qword_1009387A0, &qword_100794DC8);
    v44 = v46;
    sub_1000050A4(v46, &qword_1009374E0, &unk_1007A6940);
    sub_1001158E8(v43, v44, type metadata accessor for StartMigrationRequest.Credential);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 56))(v44, 0, 1, v38);
  }
}

void sub_100108488(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v8 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v23 - v10;
  v25 = 0;
  v26 = 0;
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  if (v5)
  {
    v26, v12, v13, v14, v15, v16, v17, v18;
  }

  else if (v26)
  {
    v27 = v26;
    v24 = a5;
    v23 = v25;
    sub_100010364(a2, v11, &qword_1009374E0, &unk_1007A6940);
    started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
    v20 = *(started - 8);
    v21 = (*(v20 + 48))(v11, 1, started);
    sub_1000050A4(v11, &qword_1009374E0, &unk_1007A6940);
    if (v21 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000050A4(a2, &qword_1009374E0, &unk_1007A6940);
    v22 = v27;
    *a2 = v23;
    a2[1] = v22;
    swift_storeEnumTagMultiPayload();
    (*(v20 + 56))(a2, 0, 1, started);
  }
}

void StartMigrationRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v16 - v12;
  sub_100010364(v6, &v16 - v12, &qword_1009374E0, &unk_1007A6940);
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  if ((*(*(started - 8) + 48))(v13, 1, started) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_100108A54(v6, a1, a2, a3);
        sub_100101968(v13, type metadata accessor for StartMigrationRequest.OneOf_Source);
        if (v4)
        {
          return;
        }
      }

      else
      {
        sub_100101968(v13, type metadata accessor for StartMigrationRequest.OneOf_Source);
        sub_10010C950(v6, a1, a2, a3, &qword_1009374E0, &unk_1007A6940, type metadata accessor for StartMigrationRequest.OneOf_Source, type metadata accessor for StartMigrationRequest.OneOf_Source);
        if (v4)
        {
          return;
        }
      }
    }

    else
    {
      sub_100101968(v13, type metadata accessor for StartMigrationRequest.OneOf_Source);
      sub_1001088E0(v6, a1, a2, a3);
      if (v4)
      {
        return;
      }
    }

    v5 = v4;
  }

  if (*(v6 + *(type metadata accessor for StartMigrationRequest(0) + 20)) != 1 || (dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
  {
    UnknownStorage.traverse<A>(visitor:)();
  }
}

void sub_1001088E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v18 - v7;
  sub_100010364(a1, &v18 - v7, &qword_1009374E0, &unk_1007A6940);
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  if ((*(*(started - 8) + 48))(v8, 1, started) == 1)
  {
    sub_1000050A4(v8, &qword_1009374E0, &unk_1007A6940);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v10 = *(v8 + 1);
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    v10, v11, v12, v13, v14, v15, v16, v17;
    return;
  }

  sub_100101968(v8, type metadata accessor for StartMigrationRequest.OneOf_Source);
  __break(1u);
}

uint64_t sub_100108A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v15 - v7;
  started = type metadata accessor for StartMigrationRequest.Credential(0);
  __chkstk_darwin(started, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010364(a1, v8, &qword_1009374E0, &unk_1007A6940);
  v13 = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1000050A4(v8, &qword_1009374E0, &unk_1007A6940);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001158E8(v8, v12, type metadata accessor for StartMigrationRequest.Credential);
    sub_100117BC4(&qword_100937620, type metadata accessor for StartMigrationRequest.Credential, &protocol conformance descriptor for StartMigrationRequest.Credential);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_100101968(v12, type metadata accessor for StartMigrationRequest.Credential);
  }

  result = sub_100101968(v8, type metadata accessor for StartMigrationRequest.OneOf_Source);
  __break(1u);
  return result;
}

uint64_t sub_100108CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  (*(*(started - 8) + 56))(a2, 1, 1, started);
  *(a2 + *(a1 + 20)) = 0;
  return UnknownStorage.init()();
}

uint64_t sub_100108DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_100938710, type metadata accessor for StartMigrationRequest, &protocol conformance descriptor for StartMigrationRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100108E40(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937608, type metadata accessor for StartMigrationRequest, &protocol conformance descriptor for StartMigrationRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100108EAC(uint64_t a1, uint64_t a2)
{
  sub_100117BC4(&qword_100937608, type metadata accessor for StartMigrationRequest, &protocol conformance descriptor for StartMigrationRequest);

  return Message.hash(into:)();
}

uint64_t sub_100108F50()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static StartMigrationRequest.Credential._protobuf_nameMap);
  sub_100006654(v0, static StartMigrationRequest.Credential._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100792CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "dsID";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "baseURL";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "hostname";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "mmeAuthToken";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "partition";
  *(v15 + 8) = 9;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t StartMigrationRequest.Credential.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
LABEL_2:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }
    }

    else
    {
      if (result == 3 || result == 4)
      {
        goto LABEL_2;
      }

      if (result == 5)
      {
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }
    }
  }
}

uint64_t StartMigrationRequest.Credential.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v8 = *(v3 + 24);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      v10 = *(v3 + 40);
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
      {
        v12 = *(v3 + 56);
        v13 = HIBYTE(v12) & 0xF;
        if ((v12 & 0x2000000000000000) == 0)
        {
          v13 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
        }

        if (!v13 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
        {
          if (!*(v3 + 64) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
          {
            type metadata accessor for StartMigrationRequest.Credential(0);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100109480@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  return UnknownStorage.init()();
}

uint64_t sub_10010950C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_100938708, type metadata accessor for StartMigrationRequest.Credential, &protocol conformance descriptor for StartMigrationRequest.Credential);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001095AC(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937620, type metadata accessor for StartMigrationRequest.Credential, &protocol conformance descriptor for StartMigrationRequest.Credential);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100109618(uint64_t a1, uint64_t a2)
{
  sub_100117BC4(&qword_100937620, type metadata accessor for StartMigrationRequest.Credential, &protocol conformance descriptor for StartMigrationRequest.Credential);

  return Message.hash(into:)();
}

uint64_t sub_1001096BC()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static StartMigrationResponse._protobuf_nameMap);
  sub_100006654(v0, static StartMigrationResponse._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100792CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "state";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "success";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "error";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "log";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t StartMigrationResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_10010A008(v5, a1, a2, a3);
      }

      else if (result == 5)
      {
        type metadata accessor for StartMigrationResponse(0);
LABEL_12:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }
    }

    else
    {
      if (result == 1)
      {
        goto LABEL_12;
      }

      if (result == 2)
      {
        sub_100109A3C(v5, a1, a2, a3);
      }
    }
  }
}

uint64_t sub_100109A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v58 = a2;
  v59 = a3;
  started = type metadata accessor for StartMigrationResponse.Details(0);
  v6 = *(started - 8);
  __chkstk_darwin(started, v7);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v53 = &v48 - v11;
  v12 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v24 = &v48 - v23;
  v25 = sub_1000F5104(&qword_100938788, &qword_100794DB0);
  __chkstk_darwin(v25 - 8, v26);
  v55 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28, v29);
  v32 = &v48 - v31;
  v54 = v6;
  v33 = *(v6 + 56);
  v57 = started;
  v34 = started;
  v35 = v33;
  (v33)(&v48 - v31, 1, 1, v34, v30);
  v36 = *(type metadata accessor for StartMigrationResponse(0) + 20);
  v51 = a1;
  v49 = v36;
  sub_100010364(a1 + v36, v15, &qword_1009374E8, &unk_100792DE0);
  v50 = v17;
  v37 = (*(v17 + 48))(v15, 1, v16);
  if (v37 == 1)
  {
    sub_1000050A4(v15, &qword_1009374E8, &unk_100792DE0);
    v38 = v16;
    v39 = v57;
  }

  else
  {
    sub_1001158E8(v15, v24, type metadata accessor for StartMigrationResponse.OneOf_Result);
    sub_1001158E8(v24, v20, type metadata accessor for StartMigrationResponse.OneOf_Result);
    v38 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100101968(v20, type metadata accessor for StartMigrationResponse.OneOf_Result);
      v39 = v57;
    }

    else
    {
      sub_1000050A4(v32, &qword_100938788, &qword_100794DB0);
      v40 = v20;
      v41 = v53;
      sub_1001158E8(v40, v53, type metadata accessor for StartMigrationResponse.Details);
      sub_1001158E8(v41, v32, type metadata accessor for StartMigrationResponse.Details);
      v39 = v57;
      v35(v32, 0, 1, v57);
    }
  }

  v42 = v55;
  sub_100117BC4(&qword_100937650, type metadata accessor for StartMigrationResponse.Details, &protocol conformance descriptor for StartMigrationResponse.Details);
  v43 = v56;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v43)
  {
    return sub_1000050A4(v32, &qword_100938788, &qword_100794DB0);
  }

  sub_100010364(v32, v42, &qword_100938788, &qword_100794DB0);
  if ((*(v54 + 48))(v42, 1, v39) == 1)
  {
    sub_1000050A4(v32, &qword_100938788, &qword_100794DB0);
    return sub_1000050A4(v42, &qword_100938788, &qword_100794DB0);
  }

  else
  {
    v45 = v52;
    sub_1001158E8(v42, v52, type metadata accessor for StartMigrationResponse.Details);
    if (v37 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000050A4(v32, &qword_100938788, &qword_100794DB0);
    v46 = v51;
    v47 = v49;
    sub_1000050A4(v51 + v49, &qword_1009374E8, &unk_100792DE0);
    sub_1001158E8(v45, v46 + v47, type metadata accessor for StartMigrationResponse.Details);
    swift_storeEnumTagMultiPayload();
    return (*(v50 + 56))(v46 + v47, 0, 1, v38);
  }
}

uint64_t sub_10010A008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v58 = a2;
  v59 = a3;
  started = type metadata accessor for StartMigrationResponse.Error(0);
  v6 = *(started - 8);
  __chkstk_darwin(started, v7);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v53 = &v48 - v11;
  v12 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v24 = &v48 - v23;
  v25 = sub_1000F5104(&qword_100938790, &qword_100794DB8);
  __chkstk_darwin(v25 - 8, v26);
  v55 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28, v29);
  v32 = &v48 - v31;
  v54 = v6;
  v33 = *(v6 + 56);
  v57 = started;
  v34 = started;
  v35 = v33;
  (v33)(&v48 - v31, 1, 1, v34, v30);
  v36 = *(type metadata accessor for StartMigrationResponse(0) + 20);
  v51 = a1;
  v49 = v36;
  sub_100010364(a1 + v36, v15, &qword_1009374E8, &unk_100792DE0);
  v50 = v17;
  v37 = (*(v17 + 48))(v15, 1, v16);
  if (v37 == 1)
  {
    sub_1000050A4(v15, &qword_1009374E8, &unk_100792DE0);
    v38 = v16;
  }

  else
  {
    sub_1001158E8(v15, v24, type metadata accessor for StartMigrationResponse.OneOf_Result);
    sub_1001158E8(v24, v20, type metadata accessor for StartMigrationResponse.OneOf_Result);
    v38 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000050A4(v32, &qword_100938790, &qword_100794DB8);
      v39 = v20;
      v40 = v53;
      sub_1001158E8(v39, v53, type metadata accessor for StartMigrationResponse.Error);
      sub_1001158E8(v40, v32, type metadata accessor for StartMigrationResponse.Error);
      v41 = v57;
      v35(v32, 0, 1, v57);
      goto LABEL_7;
    }

    sub_100101968(v20, type metadata accessor for StartMigrationResponse.OneOf_Result);
  }

  v41 = v57;
LABEL_7:
  v42 = v55;
  sub_100117BC4(&qword_100937668, type metadata accessor for StartMigrationResponse.Error, &protocol conformance descriptor for StartMigrationResponse.Error);
  v43 = v56;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v43)
  {
    return sub_1000050A4(v32, &qword_100938790, &qword_100794DB8);
  }

  sub_100010364(v32, v42, &qword_100938790, &qword_100794DB8);
  if ((*(v54 + 48))(v42, 1, v41) == 1)
  {
    sub_1000050A4(v32, &qword_100938790, &qword_100794DB8);
    return sub_1000050A4(v42, &qword_100938790, &qword_100794DB8);
  }

  else
  {
    v45 = v52;
    sub_1001158E8(v42, v52, type metadata accessor for StartMigrationResponse.Error);
    if (v37 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000050A4(v32, &qword_100938790, &qword_100794DB8);
    v46 = v51;
    v47 = v49;
    sub_1000050A4(v51 + v49, &qword_1009374E8, &unk_100792DE0);
    sub_1001158E8(v45, v46 + v47, type metadata accessor for StartMigrationResponse.Error);
    swift_storeEnumTagMultiPayload();
    return (*(v50 + 56))(v46 + v47, 0, 1, v38);
  }
}

uint64_t StartMigrationResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = v3[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  started = type metadata accessor for StartMigrationResponse(0);
  sub_100010364(v3 + *(started + 20), v12, &qword_1009374E8, &unk_100792DE0);
  v17 = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  if ((*(*(v17 - 8) + 48))(v12, 1, v17) == 1)
  {
    v18 = v5;
  }

  else
  {
    v18 = v5;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10010AA20(v3, a1, a2, a3);
    }

    else
    {
      sub_10010A7DC(v3, a1, a2, a3);
    }

    result = sub_100101968(v12, type metadata accessor for StartMigrationResponse.OneOf_Result);
    if (v5)
    {
      return result;
    }
  }

  v19 = (v3 + *(started + 24));
  v20 = *v19;
  v21 = v19[1];
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  if (!v18)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10010A7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  started = type metadata accessor for StartMigrationResponse.Details(0);
  __chkstk_darwin(started, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StartMigrationResponse(0);
  sub_100010364(a1 + *(v13 + 20), v8, &qword_1009374E8, &unk_100792DE0);
  v14 = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1000050A4(v8, &qword_1009374E8, &unk_100792DE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001158E8(v8, v12, type metadata accessor for StartMigrationResponse.Details);
    sub_100117BC4(&qword_100937650, type metadata accessor for StartMigrationResponse.Details, &protocol conformance descriptor for StartMigrationResponse.Details);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_100101968(v12, type metadata accessor for StartMigrationResponse.Details);
  }

  result = sub_100101968(v8, type metadata accessor for StartMigrationResponse.OneOf_Result);
  __break(1u);
  return result;
}

uint64_t sub_10010AA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  started = type metadata accessor for StartMigrationResponse.Error(0);
  __chkstk_darwin(started, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StartMigrationResponse(0);
  sub_100010364(a1 + *(v13 + 20), v8, &qword_1009374E8, &unk_100792DE0);
  v14 = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1000050A4(v8, &qword_1009374E8, &unk_100792DE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001158E8(v8, v12, type metadata accessor for StartMigrationResponse.Error);
    sub_100117BC4(&qword_100937668, type metadata accessor for StartMigrationResponse.Error, &protocol conformance descriptor for StartMigrationResponse.Error);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_100101968(v12, type metadata accessor for StartMigrationResponse.Error);
  }

  result = sub_100101968(v8, type metadata accessor for StartMigrationResponse.OneOf_Result);
  __break(1u);
  return result;
}

uint64_t sub_10010ACB0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = *(a1 + 20);
  started = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  (*(*(started - 8) + 56))(&a2[v4], 1, 1, started);
  v6 = &a2[*(a1 + 24)];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  return UnknownStorage.init()();
}

uint64_t sub_10010AD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_100938700, type metadata accessor for StartMigrationResponse, &protocol conformance descriptor for StartMigrationResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10010AE30(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937638, type metadata accessor for StartMigrationResponse, &protocol conformance descriptor for StartMigrationResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10010AE9C(uint64_t a1, uint64_t a2)
{
  sub_100117BC4(&qword_100937638, type metadata accessor for StartMigrationResponse, &protocol conformance descriptor for StartMigrationResponse);

  return Message.hash(into:)();
}

uint64_t sub_10010AF40()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static StartMigrationResponse.Details._protobuf_nameMap);
  sub_100006654(v0, static StartMigrationResponse.Details._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100792CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "time_elapsed";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_observer";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "lists_migrated";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "reminders_migrated";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10010B280(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386F8, type metadata accessor for StartMigrationResponse.Details, &protocol conformance descriptor for StartMigrationResponse.Details);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10010B320(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937650, type metadata accessor for StartMigrationResponse.Details, &protocol conformance descriptor for StartMigrationResponse.Details);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10010B38C(uint64_t a1, uint64_t a2)
{
  sub_100117BC4(&qword_100937650, type metadata accessor for StartMigrationResponse.Details, &protocol conformance descriptor for StartMigrationResponse.Details);

  return Message.hash(into:)();
}

uint64_t sub_10010B514(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386F0, type metadata accessor for StartMigrationResponse.Error, &protocol conformance descriptor for StartMigrationResponse.Error);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10010B5B4(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937668, type metadata accessor for StartMigrationResponse.Error, &protocol conformance descriptor for StartMigrationResponse.Error);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10010B620(uint64_t a1, uint64_t a2)
{
  sub_100117BC4(&qword_100937668, type metadata accessor for StartMigrationResponse.Error, &protocol conformance descriptor for StartMigrationResponse.Error);

  return Message.hash(into:)();
}

uint64_t sub_10010B6CC()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static MigrateRequest._protobuf_nameMap);
  sub_100006654(v0, static MigrateRequest._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007912F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "user";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "archivePath";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "embeddedTestData";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "options";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "user_initiated";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "simulated_error";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

void MigrateRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    v9 = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (v9 > 3)
    {
      switch(v9)
      {
        case 4:
          type metadata accessor for MigrateRequest(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 5:
          type metadata accessor for MigrateRequest(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 6:
          type metadata accessor for MigrateRequest(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
      }
    }

    else
    {
      switch(v9)
      {
        case 1:
          sub_10010BB58(v5, a1, a2, a3);
          break;
        case 2:
          sub_10010C108(a1, v5, a2, a3, 1u);
          break;
        case 3:
          sub_10010C108(a1, v5, a2, a3, 2u);
          break;
      }
    }
  }
}

uint64_t sub_10010BB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v53 = a2;
  v54 = a3;
  v5 = type metadata accessor for MigrateRequest.User(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v47 = &v45 - v11;
  v12 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v24 = &v45 - v23;
  v25 = sub_1000F5104(&qword_100938778, &qword_100794DA0);
  __chkstk_darwin(v25 - 8, v26);
  v50 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28, v29);
  v32 = &v45 - v31;
  v49 = v6;
  v33 = *(v6 + 56);
  v52 = v5;
  v34 = v5;
  v35 = v33;
  (v33)(&v45 - v31, 1, 1, v34, v30);
  v46 = a1;
  sub_100010364(a1, v15, &qword_1009374F0, &qword_1007A2380);
  v45 = v17;
  v36 = (*(v17 + 48))(v15, 1, v16);
  if (v36 == 1)
  {
    sub_1000050A4(v15, &qword_1009374F0, &qword_1007A2380);
    v37 = v52;
    v38 = v16;
  }

  else
  {
    sub_1001158E8(v15, v24, type metadata accessor for MigrateRequest.OneOf_Source);
    sub_1001158E8(v24, v20, type metadata accessor for MigrateRequest.OneOf_Source);
    v38 = v16;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100101968(v20, type metadata accessor for MigrateRequest.OneOf_Source);
      v37 = v52;
    }

    else
    {
      sub_1000050A4(v32, &qword_100938778, &qword_100794DA0);
      v39 = v47;
      sub_1001158E8(v20, v47, type metadata accessor for MigrateRequest.User);
      sub_1001158E8(v39, v32, type metadata accessor for MigrateRequest.User);
      v37 = v52;
      v35(v32, 0, 1, v52);
    }
  }

  v40 = v50;
  sub_100117BC4(&qword_100937698, type metadata accessor for MigrateRequest.User, &protocol conformance descriptor for MigrateRequest.User);
  v41 = v51;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v41)
  {
    return sub_1000050A4(v32, &qword_100938778, &qword_100794DA0);
  }

  sub_100010364(v32, v40, &qword_100938778, &qword_100794DA0);
  if ((*(v49 + 48))(v40, 1, v37) == 1)
  {
    sub_1000050A4(v32, &qword_100938778, &qword_100794DA0);
    return sub_1000050A4(v40, &qword_100938778, &qword_100794DA0);
  }

  else
  {
    v43 = v48;
    sub_1001158E8(v40, v48, type metadata accessor for MigrateRequest.User);
    if (v36 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000050A4(v32, &qword_100938778, &qword_100794DA0);
    v44 = v46;
    sub_1000050A4(v46, &qword_1009374F0, &qword_1007A2380);
    sub_1001158E8(v43, v44, type metadata accessor for MigrateRequest.User);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 56))(v44, 0, 1, v38);
  }
}

void sub_10010C108(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v8 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v23 - v10;
  v25 = 0;
  v26 = 0;
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  if (v5)
  {
    v26, v12, v13, v14, v15, v16, v17, v18;
  }

  else if (v26)
  {
    v27 = v26;
    v24 = a5;
    v23 = v25;
    sub_100010364(a2, v11, &qword_1009374F0, &qword_1007A2380);
    v19 = type metadata accessor for MigrateRequest.OneOf_Source(0);
    v20 = *(v19 - 8);
    v21 = (*(v20 + 48))(v11, 1, v19);
    sub_1000050A4(v11, &qword_1009374F0, &qword_1007A2380);
    if (v21 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000050A4(a2, &qword_1009374F0, &qword_1007A2380);
    v22 = v27;
    *a2 = v23;
    a2[1] = v22;
    swift_storeEnumTagMultiPayload();
    (*(v20 + 56))(a2, 0, 1, v19);
  }
}

void MigrateRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v18 - v12;
  sub_100010364(v6, &v18 - v12, &qword_1009374F0, &qword_1007A2380);
  v14 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_100101968(v13, type metadata accessor for MigrateRequest.OneOf_Source);
        sub_10010C7D8(v6, a1, a2, a3);
        if (v4)
        {
          return;
        }
      }

      else
      {
        sub_100101968(v13, type metadata accessor for MigrateRequest.OneOf_Source);
        sub_10010C950(v6, a1, a2, a3, &qword_1009374F0, &qword_1007A2380, type metadata accessor for MigrateRequest.OneOf_Source, type metadata accessor for MigrateRequest.OneOf_Source);
        if (v4)
        {
          return;
        }
      }
    }

    else
    {
      sub_10010C5A4(v6, a1, a2, a3);
      sub_100101968(v13, type metadata accessor for MigrateRequest.OneOf_Source);
      if (v4)
      {
        return;
      }
    }

    v5 = v4;
  }

  v16 = type metadata accessor for MigrateRequest(0);
  if (*(v6 + v16[5]))
  {
    v17 = v5;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v5)
    {
      return;
    }
  }

  else
  {
    v17 = v5;
  }

  if (*(v6 + v16[6]) != 1 || (dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v17))
  {
    if (!*(v6 + v16[7]) || (dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v17))
    {
      UnknownStorage.traverse<A>(visitor:)();
    }
  }
}

uint64_t sub_10010C5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for MigrateRequest.User(0);
  __chkstk_darwin(v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010364(a1, v8, &qword_1009374F0, &qword_1007A2380);
  v13 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1000050A4(v8, &qword_1009374F0, &qword_1007A2380);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1001158E8(v8, v12, type metadata accessor for MigrateRequest.User);
    sub_100117BC4(&qword_100937698, type metadata accessor for MigrateRequest.User, &protocol conformance descriptor for MigrateRequest.User);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_100101968(v12, type metadata accessor for MigrateRequest.User);
  }

  result = sub_100101968(v8, type metadata accessor for MigrateRequest.OneOf_Source);
  __break(1u);
  return result;
}

void sub_10010C7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v18 - v7;
  sub_100010364(a1, &v18 - v7, &qword_1009374F0, &qword_1007A2380);
  v9 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_1000050A4(v8, &qword_1009374F0, &qword_1007A2380);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(v8 + 1);
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    v10, v11, v12, v13, v14, v15, v16, v17;
    return;
  }

  sub_100101968(v8, type metadata accessor for MigrateRequest.OneOf_Source);
  __break(1u);
}

void sub_10010C950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v26 = a8;
  v12 = sub_1000F5104(a5, a6);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v25 - v14;
  sub_100010364(a1, &v25 - v14, a5, a6);
  v16 = a7(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    sub_1000050A4(v15, a5, a6);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v17 = *(v15 + 1);
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    v17, v18, v19, v20, v21, v22, v23, v24;
    return;
  }

  sub_100101968(v15, v26);
  __break(1u);
}

uint64_t sub_10010CB08@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[6];
  *(a2 + a1[5]) = 0;
  *(a2 + v5) = 0;
  *(a2 + a1[7]) = 0;
  return UnknownStorage.init()();
}

uint64_t sub_10010CBB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386E8, type metadata accessor for MigrateRequest, &protocol conformance descriptor for MigrateRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10010CC58(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937680, type metadata accessor for MigrateRequest, &protocol conformance descriptor for MigrateRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10010CCC4(uint64_t a1, uint64_t a2)
{
  sub_100117BC4(&qword_100937680, type metadata accessor for MigrateRequest, &protocol conformance descriptor for MigrateRequest);

  return Message.hash(into:)();
}

uint64_t sub_10010CD40()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static MigrateRequest.Option._protobuf_nameMap);
  sub_100006654(v0, static MigrateRequest.Option._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007912F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DRY_RUN";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DISABLE_SHARING";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "SAVE_ORIGINAL_JSON";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "USER_INITIATED";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 16;
  *v18 = "NO_CLEANUP";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10010D09C()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static MigrateRequest.User._protobuf_nameMap);
  sub_100006654(v0, static MigrateRequest.User._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100791340;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dsID";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "partition";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t MigrateRequest.User.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t MigrateRequest.User.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
  {
    if (!*(v3 + 8) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for MigrateRequest.User(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_10010D424@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  return UnknownStorage.init()();
}

uint64_t sub_10010D47C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386E0, type metadata accessor for MigrateRequest.User, &protocol conformance descriptor for MigrateRequest.User);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10010D51C(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937698, type metadata accessor for MigrateRequest.User, &protocol conformance descriptor for MigrateRequest.User);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10010D588(uint64_t a1, uint64_t a2)
{
  sub_100117BC4(&qword_100937698, type metadata accessor for MigrateRequest.User, &protocol conformance descriptor for MigrateRequest.User);

  return Message.hash(into:)();
}

uint64_t sub_10010D604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10010D6E4()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static MigrateResponse._protobuf_nameMap);
  sub_100006654(v0, static MigrateResponse._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100792CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "state";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "success";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "error";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "next_step";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "logs";
  *(v15 + 8) = 4;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t MigrateResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
LABEL_14:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 2)
      {
        sub_10010DAD0(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_10010E09C(v5, a1, a2, a3);
          break;
        case 4:
          sub_10010E664(a1, v5, a2, a3);
          break;
        case 5:
          type metadata accessor for MigrateResponse(0);
          goto LABEL_14;
      }
    }
  }
}

uint64_t sub_10010DAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v58 = a2;
  v59 = a3;
  v5 = type metadata accessor for MigrateResponse.Details(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v53 = &v48 - v11;
  v12 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v24 = &v48 - v23;
  v25 = sub_1000F5104(&qword_100938760, &qword_100794D88);
  __chkstk_darwin(v25 - 8, v26);
  v55 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28, v29);
  v32 = &v48 - v31;
  v54 = v6;
  v33 = *(v6 + 56);
  v57 = v5;
  v34 = v5;
  v35 = v33;
  (v33)(&v48 - v31, 1, 1, v34, v30);
  v36 = *(type metadata accessor for MigrateResponse(0) + 20);
  v51 = a1;
  v49 = v36;
  sub_100010364(a1 + v36, v15, &qword_100937500, &qword_100792DF0);
  v50 = v17;
  v37 = (*(v17 + 48))(v15, 1, v16);
  if (v37 == 1)
  {
    sub_1000050A4(v15, &qword_100937500, &qword_100792DF0);
    v38 = v16;
    v39 = v57;
  }

  else
  {
    sub_1001158E8(v15, v24, type metadata accessor for MigrateResponse.OneOf_Result);
    sub_1001158E8(v24, v20, type metadata accessor for MigrateResponse.OneOf_Result);
    v38 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100101968(v20, type metadata accessor for MigrateResponse.OneOf_Result);
      v39 = v57;
    }

    else
    {
      sub_1000050A4(v32, &qword_100938760, &qword_100794D88);
      v40 = v20;
      v41 = v53;
      sub_1001158E8(v40, v53, type metadata accessor for MigrateResponse.Details);
      sub_1001158E8(v41, v32, type metadata accessor for MigrateResponse.Details);
      v39 = v57;
      v35(v32, 0, 1, v57);
    }
  }

  v42 = v55;
  sub_100117BC4(&qword_1009376C8, type metadata accessor for MigrateResponse.Details, &protocol conformance descriptor for MigrateResponse.Details);
  v43 = v56;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v43)
  {
    return sub_1000050A4(v32, &qword_100938760, &qword_100794D88);
  }

  sub_100010364(v32, v42, &qword_100938760, &qword_100794D88);
  if ((*(v54 + 48))(v42, 1, v39) == 1)
  {
    sub_1000050A4(v32, &qword_100938760, &qword_100794D88);
    return sub_1000050A4(v42, &qword_100938760, &qword_100794D88);
  }

  else
  {
    v45 = v52;
    sub_1001158E8(v42, v52, type metadata accessor for MigrateResponse.Details);
    if (v37 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000050A4(v32, &qword_100938760, &qword_100794D88);
    v46 = v51;
    v47 = v49;
    sub_1000050A4(v51 + v49, &qword_100937500, &qword_100792DF0);
    sub_1001158E8(v45, v46 + v47, type metadata accessor for MigrateResponse.Details);
    swift_storeEnumTagMultiPayload();
    return (*(v50 + 56))(v46 + v47, 0, 1, v38);
  }
}

uint64_t sub_10010E09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v58 = a2;
  v59 = a3;
  v5 = type metadata accessor for MigrateResponse.Error(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v53 = &v48 - v11;
  v12 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v24 = &v48 - v23;
  v25 = sub_1000F5104(&qword_100938768, &qword_100794D90);
  __chkstk_darwin(v25 - 8, v26);
  v55 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28, v29);
  v32 = &v48 - v31;
  v54 = v6;
  v33 = *(v6 + 56);
  v57 = v5;
  v34 = v5;
  v35 = v33;
  (v33)(&v48 - v31, 1, 1, v34, v30);
  v36 = *(type metadata accessor for MigrateResponse(0) + 20);
  v51 = a1;
  v49 = v36;
  sub_100010364(a1 + v36, v15, &qword_100937500, &qword_100792DF0);
  v50 = v17;
  v37 = (*(v17 + 48))(v15, 1, v16);
  if (v37 == 1)
  {
    sub_1000050A4(v15, &qword_100937500, &qword_100792DF0);
    v38 = v16;
  }

  else
  {
    sub_1001158E8(v15, v24, type metadata accessor for MigrateResponse.OneOf_Result);
    sub_1001158E8(v24, v20, type metadata accessor for MigrateResponse.OneOf_Result);
    v38 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000050A4(v32, &qword_100938768, &qword_100794D90);
      v39 = v20;
      v40 = v53;
      sub_1001158E8(v39, v53, type metadata accessor for MigrateResponse.Error);
      sub_1001158E8(v40, v32, type metadata accessor for MigrateResponse.Error);
      v41 = v57;
      v35(v32, 0, 1, v57);
      goto LABEL_7;
    }

    sub_100101968(v20, type metadata accessor for MigrateResponse.OneOf_Result);
  }

  v41 = v57;
LABEL_7:
  v42 = v55;
  sub_100117BC4(&qword_1009376E0, type metadata accessor for MigrateResponse.Error, &protocol conformance descriptor for MigrateResponse.Error);
  v43 = v56;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v43)
  {
    return sub_1000050A4(v32, &qword_100938768, &qword_100794D90);
  }

  sub_100010364(v32, v42, &qword_100938768, &qword_100794D90);
  if ((*(v54 + 48))(v42, 1, v41) == 1)
  {
    sub_1000050A4(v32, &qword_100938768, &qword_100794D90);
    return sub_1000050A4(v42, &qword_100938768, &qword_100794D90);
  }

  else
  {
    v45 = v52;
    sub_1001158E8(v42, v52, type metadata accessor for MigrateResponse.Error);
    if (v37 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000050A4(v32, &qword_100938768, &qword_100794D90);
    v46 = v51;
    v47 = v49;
    sub_1000050A4(v51 + v49, &qword_100937500, &qword_100792DF0);
    sub_1001158E8(v45, v46 + v47, type metadata accessor for MigrateResponse.Error);
    swift_storeEnumTagMultiPayload();
    return (*(v50 + 56))(v46 + v47, 0, 1, v38);
  }
}

uint64_t sub_10010E664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MigrateResponse(0);
  type metadata accessor for MigrateResponse.NextStep(0);
  sub_100117BC4(&qword_1009376F8, type metadata accessor for MigrateResponse.NextStep, &protocol conformance descriptor for MigrateResponse.NextStep);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t MigrateResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = v3[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v16 = type metadata accessor for MigrateResponse(0);
  sub_100010364(v3 + *(v16 + 20), v12, &qword_100937500, &qword_100792DF0);
  v17 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  if ((*(*(v17 - 8) + 48))(v12, 1, v17) == 1)
  {
    v18 = v5;
  }

  else
  {
    v18 = v5;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10010EB80(v3, a1, a2, a3);
    }

    else
    {
      sub_10010E93C(v3, a1, a2, a3);
    }

    result = sub_100101968(v12, type metadata accessor for MigrateResponse.OneOf_Result);
    if (v5)
    {
      return result;
    }
  }

  result = sub_10010EDC4(v3, a1, a2, a3);
  if (!v18)
  {
    v19 = (v3 + *(v16 + 24));
    v20 = *v19;
    v21 = v19[1];
    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10010E93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for MigrateResponse.Details(0);
  __chkstk_darwin(v9, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MigrateResponse(0);
  sub_100010364(a1 + *(v13 + 20), v8, &qword_100937500, &qword_100792DF0);
  v14 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1000050A4(v8, &qword_100937500, &qword_100792DF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001158E8(v8, v12, type metadata accessor for MigrateResponse.Details);
    sub_100117BC4(&qword_1009376C8, type metadata accessor for MigrateResponse.Details, &protocol conformance descriptor for MigrateResponse.Details);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_100101968(v12, type metadata accessor for MigrateResponse.Details);
  }

  result = sub_100101968(v8, type metadata accessor for MigrateResponse.OneOf_Result);
  __break(1u);
  return result;
}

uint64_t sub_10010EB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for MigrateResponse.Error(0);
  __chkstk_darwin(v9, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MigrateResponse(0);
  sub_100010364(a1 + *(v13 + 20), v8, &qword_100937500, &qword_100792DF0);
  v14 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1000050A4(v8, &qword_100937500, &qword_100792DF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001158E8(v8, v12, type metadata accessor for MigrateResponse.Error);
    sub_100117BC4(&qword_1009376E0, type metadata accessor for MigrateResponse.Error, &protocol conformance descriptor for MigrateResponse.Error);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_100101968(v12, type metadata accessor for MigrateResponse.Error);
  }

  result = sub_100101968(v8, type metadata accessor for MigrateResponse.OneOf_Result);
  __break(1u);
  return result;
}

uint64_t sub_10010EDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v10 = *(Step - 8);
  __chkstk_darwin(Step, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MigrateResponse(0);
  sub_100010364(a1 + *(v14 + 32), v8, &qword_100937508, &qword_100792DF8);
  if ((*(v10 + 48))(v8, 1, Step) == 1)
  {
    return sub_1000050A4(v8, &qword_100937508, &qword_100792DF8);
  }

  sub_1001158E8(v8, v13, type metadata accessor for MigrateResponse.NextStep);
  sub_100117BC4(&qword_1009376F8, type metadata accessor for MigrateResponse.NextStep, &protocol conformance descriptor for MigrateResponse.NextStep);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100101968(v13, type metadata accessor for MigrateResponse.NextStep);
}

uint64_t sub_10010F02C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = a1[5];
  v5 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[a1[6]];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  UnknownStorage.init()();
  v7 = a1[8];
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v9 = *(*(Step - 8) + 56);

  return v9(&a2[v7], 1, 1, Step);
}

uint64_t sub_10010F108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10010F17C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10010F220(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386D8, type metadata accessor for MigrateResponse, &protocol conformance descriptor for MigrateResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10010F2C0(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_1009376B0, type metadata accessor for MigrateResponse, &protocol conformance descriptor for MigrateResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10010F32C(uint64_t a1, uint64_t a2)
{
  sub_100117BC4(&qword_1009376B0, type metadata accessor for MigrateResponse, &protocol conformance descriptor for MigrateResponse);

  return Message.hash(into:)();
}

uint64_t sub_10010F3D0()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static MigrateResponse.Details._protobuf_nameMap);
  sub_100006654(v0, static MigrateResponse.Details._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100792CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "time_elapsed";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_observer";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "lists_migrated";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "reminders_migrated";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10010F678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t sub_10010F768(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (*v4 == 0.0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v5))
  {
    if (*(v4 + 8) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
    {
      if (!*(v4 + 12) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v5))
      {
        if (!*(v4 + 16) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v5))
        {
          a4(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t sub_10010F8B4@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  return UnknownStorage.init()();
}

uint64_t sub_10010F8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10010F954(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10010F9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386D0, type metadata accessor for MigrateResponse.Details, &protocol conformance descriptor for MigrateResponse.Details);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10010FA80(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_1009376C8, type metadata accessor for MigrateResponse.Details, &protocol conformance descriptor for MigrateResponse.Details);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10010FAEC(uint64_t a1, uint64_t a2)
{
  sub_100117BC4(&qword_1009376C8, type metadata accessor for MigrateResponse.Details, &protocol conformance descriptor for MigrateResponse.Details);

  return Message.hash(into:)();
}

uint64_t sub_10010FBA0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  sub_1000EECAC(v3, a2);
  sub_100006654(v3, a2);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v4 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791340;
  v8 = (v7 + v6);
  v9 = v7 + v6 + v4[14];
  *v8 = 1;
  *v9 = "message";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v10 = enum case for _NameMap.NameDescription.same(_:);
  v11 = type metadata accessor for _NameMap.NameDescription();
  v12 = *(*(v11 - 8) + 104);
  (v12)(v9, v10, v11);
  v13 = v8 + v5 + v4[14];
  *(v8 + v5) = 2;
  *v13 = "retry_count";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v12();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10010FDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t sub_10010FE84(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = *(v4 + 8);
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v5))
  {
    if (!*(v4 + 16) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v5))
    {
      a4(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_10010FF90@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return UnknownStorage.init()();
}

uint64_t sub_10010FFD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386C8, type metadata accessor for MigrateResponse.Error, &protocol conformance descriptor for MigrateResponse.Error);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100110074(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_1009376E0, type metadata accessor for MigrateResponse.Error, &protocol conformance descriptor for MigrateResponse.Error);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001100E0(uint64_t a1, uint64_t a2)
{
  sub_100117BC4(&qword_1009376E0, type metadata accessor for MigrateResponse.Error, &protocol conformance descriptor for MigrateResponse.Error);

  return Message.hash(into:)();
}

uint64_t sub_100110184()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static MigrateResponse.NextStep._protobuf_nameMap);
  sub_100006654(v0, static MigrateResponse.NextStep._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100792CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "defined";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_terminated";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "next_invocation_in_seconds";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "invocation_count";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "failure_count";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t MigrateResponse.NextStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (result == 3 || result == 4 || result == 5)
    {
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t MigrateResponse.NextStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    if (*(v3 + 1) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      if (!*(v3 + 4) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
      {
        if (!*(v3 + 8) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
        {
          if (!*(v3 + 12) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
          {
            type metadata accessor for MigrateResponse.NextStep(0);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100110690@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 4) = 0;
  return UnknownStorage.init()();
}

uint64_t sub_1001106BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100110730(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1001107D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386C0, type metadata accessor for MigrateResponse.NextStep, &protocol conformance descriptor for MigrateResponse.NextStep);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100110874(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_1009376F8, type metadata accessor for MigrateResponse.NextStep, &protocol conformance descriptor for MigrateResponse.NextStep);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001108E0(uint64_t a1, uint64_t a2)
{
  sub_100117BC4(&qword_1009376F8, type metadata accessor for MigrateResponse.NextStep, &protocol conformance descriptor for MigrateResponse.NextStep);

  return Message.hash(into:)();
}

uint64_t UnmigrateRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t UnmigrateRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for UnmigrateRequest(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static UnmigrateRequest.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for UnmigrateRequest(0);
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100110C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386B8, type metadata accessor for UnmigrateRequest, &protocol conformance descriptor for UnmigrateRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100110CEC(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937710, type metadata accessor for UnmigrateRequest, &protocol conformance descriptor for UnmigrateRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100110D58(uint64_t a1, uint64_t a2)
{
  sub_100117BC4(&qword_100937710, type metadata accessor for UnmigrateRequest, &protocol conformance descriptor for UnmigrateRequest);

  return Message.hash(into:)();
}

uint64_t sub_100110DD4(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100110E78()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static UnmigrateRequest.Option._protobuf_nameMap);
  sub_100006654(v0, static UnmigrateRequest.Option._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791300;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 0;
  *v4 = "NONE";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100111074()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static UnmigrateResponse._protobuf_nameMap);
  sub_100006654(v0, static UnmigrateResponse._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100791320;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "success";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "logs";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t UnmigrateResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        type metadata accessor for UnmigrateResponse(0);
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
      case 2:
        sub_10011195C(v5, a1, a2, a3);
        break;
      case 1:
        sub_1001113A0(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_1001113A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v53 = a2;
  v54 = a3;
  v5 = type metadata accessor for UnmigrateResponse.Details(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v48 = &v45 - v11;
  v12 = sub_1000F5104(&qword_100937510, &qword_100792E00);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v24 = &v45 - v23;
  v25 = sub_1000F5104(&qword_100938740, &qword_100794D68);
  __chkstk_darwin(v25 - 8, v26);
  v50 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28, v29);
  v32 = &v45 - v31;
  v49 = v6;
  v33 = *(v6 + 56);
  v52 = v5;
  v34 = v5;
  v35 = v33;
  (v33)(&v45 - v31, 1, 1, v34, v30);
  v46 = a1;
  sub_100010364(a1, v15, &qword_100937510, &qword_100792E00);
  v45 = v17;
  v36 = (*(v17 + 48))(v15, 1, v16);
  if (v36 == 1)
  {
    sub_1000050A4(v15, &qword_100937510, &qword_100792E00);
    v37 = v52;
    v38 = v16;
  }

  else
  {
    sub_1001158E8(v15, v24, type metadata accessor for UnmigrateResponse.OneOf_Result);
    sub_1001158E8(v24, v20, type metadata accessor for UnmigrateResponse.OneOf_Result);
    v38 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100101968(v20, type metadata accessor for UnmigrateResponse.OneOf_Result);
      v37 = v52;
    }

    else
    {
      sub_1000050A4(v32, &qword_100938740, &qword_100794D68);
      v39 = v48;
      sub_1001158E8(v20, v48, type metadata accessor for UnmigrateResponse.Details);
      sub_1001158E8(v39, v32, type metadata accessor for UnmigrateResponse.Details);
      v37 = v52;
      v35(v32, 0, 1, v52);
    }
  }

  v40 = v50;
  sub_100117BC4(&qword_100937740, type metadata accessor for UnmigrateResponse.Details, &protocol conformance descriptor for UnmigrateResponse.Details);
  v41 = v51;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v41)
  {
    return sub_1000050A4(v32, &qword_100938740, &qword_100794D68);
  }

  sub_100010364(v32, v40, &qword_100938740, &qword_100794D68);
  if ((*(v49 + 48))(v40, 1, v37) == 1)
  {
    sub_1000050A4(v32, &qword_100938740, &qword_100794D68);
    return sub_1000050A4(v40, &qword_100938740, &qword_100794D68);
  }

  else
  {
    v43 = v47;
    sub_1001158E8(v40, v47, type metadata accessor for UnmigrateResponse.Details);
    if (v36 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000050A4(v32, &qword_100938740, &qword_100794D68);
    v44 = v46;
    sub_1000050A4(v46, &qword_100937510, &qword_100792E00);
    sub_1001158E8(v43, v44, type metadata accessor for UnmigrateResponse.Details);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 56))(v44, 0, 1, v38);
  }
}

uint64_t sub_10011195C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v53 = a2;
  v54 = a3;
  v5 = type metadata accessor for UnmigrateResponse.Error(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v48 = &v45 - v11;
  v12 = sub_1000F5104(&qword_100937510, &qword_100792E00);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v24 = &v45 - v23;
  v25 = sub_1000F5104(&qword_100938748, &qword_100794D70);
  __chkstk_darwin(v25 - 8, v26);
  v50 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28, v29);
  v32 = &v45 - v31;
  v49 = v6;
  v33 = *(v6 + 56);
  v52 = v5;
  v34 = v5;
  v35 = v33;
  (v33)(&v45 - v31, 1, 1, v34, v30);
  v46 = a1;
  sub_100010364(a1, v15, &qword_100937510, &qword_100792E00);
  v45 = v17;
  v36 = (*(v17 + 48))(v15, 1, v16);
  if (v36 == 1)
  {
    sub_1000050A4(v15, &qword_100937510, &qword_100792E00);
    v37 = v52;
    v38 = v16;
  }

  else
  {
    sub_1001158E8(v15, v24, type metadata accessor for UnmigrateResponse.OneOf_Result);
    sub_1001158E8(v24, v20, type metadata accessor for UnmigrateResponse.OneOf_Result);
    v38 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000050A4(v32, &qword_100938748, &qword_100794D70);
      v39 = v48;
      sub_1001158E8(v20, v48, type metadata accessor for UnmigrateResponse.Error);
      sub_1001158E8(v39, v32, type metadata accessor for UnmigrateResponse.Error);
      v37 = v52;
      v35(v32, 0, 1, v52);
    }

    else
    {
      sub_100101968(v20, type metadata accessor for UnmigrateResponse.OneOf_Result);
      v37 = v52;
    }
  }

  v40 = v50;
  sub_100117BC4(&qword_100937758, type metadata accessor for UnmigrateResponse.Error, &protocol conformance descriptor for UnmigrateResponse.Error);
  v41 = v51;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v41)
  {
    return sub_1000050A4(v32, &qword_100938748, &qword_100794D70);
  }

  sub_100010364(v32, v40, &qword_100938748, &qword_100794D70);
  if ((*(v49 + 48))(v40, 1, v37) == 1)
  {
    sub_1000050A4(v32, &qword_100938748, &qword_100794D70);
    return sub_1000050A4(v40, &qword_100938748, &qword_100794D70);
  }

  else
  {
    v43 = v47;
    sub_1001158E8(v40, v47, type metadata accessor for UnmigrateResponse.Error);
    if (v36 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000050A4(v32, &qword_100938748, &qword_100794D70);
    v44 = v46;
    sub_1000050A4(v46, &qword_100937510, &qword_100792E00);
    sub_1001158E8(v43, v44, type metadata accessor for UnmigrateResponse.Error);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 56))(v44, 0, 1, v38);
  }
}

uint64_t UnmigrateResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = sub_1000F5104(&qword_100937510, &qword_100792E00);
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v20 - v12;
  sub_100010364(v6, &v20 - v12, &qword_100937510, &qword_100792E00);
  v14 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100112328(v6, a1, a2, a3);
    }

    else
    {
      sub_1001120F0(v6, a1, a2, a3);
    }

    result = sub_100101968(v13, type metadata accessor for UnmigrateResponse.OneOf_Result);
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v16 = (v6 + *(type metadata accessor for UnmigrateResponse(0) + 20));
  v17 = *v16;
  v18 = v16[1];
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  if (!v5)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001120F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1000F5104(&qword_100937510, &qword_100792E00);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for UnmigrateResponse.Details(0);
  __chkstk_darwin(v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010364(a1, v8, &qword_100937510, &qword_100792E00);
  v13 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1000050A4(v8, &qword_100937510, &qword_100792E00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001158E8(v8, v12, type metadata accessor for UnmigrateResponse.Details);
    sub_100117BC4(&qword_100937740, type metadata accessor for UnmigrateResponse.Details, &protocol conformance descriptor for UnmigrateResponse.Details);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_100101968(v12, type metadata accessor for UnmigrateResponse.Details);
  }

  result = sub_100101968(v8, type metadata accessor for UnmigrateResponse.OneOf_Result);
  __break(1u);
  return result;
}

uint64_t sub_100112328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1000F5104(&qword_100937510, &qword_100792E00);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for UnmigrateResponse.Error(0);
  __chkstk_darwin(v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010364(a1, v8, &qword_100937510, &qword_100792E00);
  v13 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1000050A4(v8, &qword_100937510, &qword_100792E00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001158E8(v8, v12, type metadata accessor for UnmigrateResponse.Error);
    sub_100117BC4(&qword_100937758, type metadata accessor for UnmigrateResponse.Error, &protocol conformance descriptor for UnmigrateResponse.Error);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_100101968(v12, type metadata accessor for UnmigrateResponse.Error);
  }

  result = sub_100101968(v8, type metadata accessor for UnmigrateResponse.OneOf_Result);
  __break(1u);
  return result;
}

uint64_t sub_1001125AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  return UnknownStorage.init()();
}

uint64_t sub_100112628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10011269C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100112740(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386B0, type metadata accessor for UnmigrateResponse, &protocol conformance descriptor for UnmigrateResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001127E0(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937728, type metadata accessor for UnmigrateResponse, &protocol conformance descriptor for UnmigrateResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10011284C(uint64_t a1, uint64_t a2)
{
  sub_100117BC4(&qword_100937728, type metadata accessor for UnmigrateResponse, &protocol conformance descriptor for UnmigrateResponse);

  return Message.hash(into:)();
}

uint64_t UnmigrateResponse.Details.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t UnmigrateResponse.Details.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 == 0.0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for UnmigrateResponse.Details(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100112AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386A8, type metadata accessor for UnmigrateResponse.Details, &protocol conformance descriptor for UnmigrateResponse.Details);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100112B9C(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937740, type metadata accessor for UnmigrateResponse.Details, &protocol conformance descriptor for UnmigrateResponse.Details);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100112C08(uint64_t a1, uint64_t a2)
{
  sub_100117BC4(&qword_100937740, type metadata accessor for UnmigrateResponse.Details, &protocol conformance descriptor for UnmigrateResponse.Details);

  return Message.hash(into:)();
}

uint64_t sub_100112C84(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100112E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_1009386A0, type metadata accessor for UnmigrateResponse.Error, &protocol conformance descriptor for UnmigrateResponse.Error);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100112EE4(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937758, type metadata accessor for UnmigrateResponse.Error, &protocol conformance descriptor for UnmigrateResponse.Error);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100112F50(uint64_t a1, uint64_t a2)
{
  sub_100117BC4(&qword_100937758, type metadata accessor for UnmigrateResponse.Error, &protocol conformance descriptor for UnmigrateResponse.Error);

  return Message.hash(into:)();
}

uint64_t sub_100112FF8()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static EmptyRequest._protobuf_nameMap);
  sub_100006654(v0, static EmptyRequest._protobuf_nameMap);
  return _NameMap.init()();
}

uint64_t EmptyRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t static EmptyRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1001131E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_100938698, type metadata accessor for EmptyRequest, &protocol conformance descriptor for EmptyRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100113288(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937770, type metadata accessor for EmptyRequest, &protocol conformance descriptor for EmptyRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001132F4(uint64_t a1, uint64_t a2)
{
  sub_100117BC4(&qword_100937770, type metadata accessor for EmptyRequest, &protocol conformance descriptor for EmptyRequest);

  return Message.hash(into:)();
}

uint64_t sub_1001133A0()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000EECAC(v0, static BasicResponse._protobuf_nameMap);
  sub_100006654(v0, static BasicResponse._protobuf_nameMap);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v1 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100791340;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "success";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

void BasicResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    v9 = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (v9 == 1)
    {
      sub_100113654(a1, v5, a2, a3, 0);
    }

    else if (v9 == 2)
    {
      sub_100113654(a1, v5, a2, a3, 1);
    }
  }
}

void sub_100113654(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  if (v5)
  {
    v18, v8, v9, v10, v11, v12, v13, v14;
  }

  else if (v18)
  {
    if (*(a2 + 16) == 255)
    {
      v15 = -1;
    }

    else
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
      v15 = *(a2 + 16);
    }

    v16 = *a2;
    v17 = a2[1];
    *a2 = 0;
    a2[1] = v18;
    *(a2 + 16) = a5;
    sub_100117B44(v16, v17, v15, v10, v11, v12, v13, v14);
  }
}

uint64_t BasicResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  if (v5 == 255)
  {
    goto LABEL_4;
  }

  if (v5)
  {
    result = sub_100113808(v3, a1, a2, a3);
    if (v4)
    {
      return result;
    }

    goto LABEL_4;
  }

  result = sub_1001137BC(v3, a1, a2, a3);
  if (!v4)
  {
LABEL_4:
    type metadata accessor for BasicResponse(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001137BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != 255 && (v4 & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_100113808(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != 255 && (v4 & 1) != 0)
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_1001138A0@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = -1;
  return UnknownStorage.init()();
}

uint64_t sub_1001138FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_100938690, type metadata accessor for BasicResponse, &protocol conformance descriptor for BasicResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011399C(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_100937788, type metadata accessor for BasicResponse, &protocol conformance descriptor for BasicResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100113A08(uint64_t a1, uint64_t a2)
{
  sub_100117BC4(&qword_100937788, type metadata accessor for BasicResponse, &protocol conformance descriptor for BasicResponse);

  return Message.hash(into:)();
}

uint64_t sub_100113B5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v4[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v5))
  {
    a4(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100113C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_100938688, type metadata accessor for PingRequest, &protocol conformance descriptor for PingRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100113D18(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_1009377A0, type metadata accessor for PingRequest, &protocol conformance descriptor for PingRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100113D84(uint64_t a1, uint64_t a2)
{
  sub_100117BC4(&qword_1009377A0, type metadata accessor for PingRequest, &protocol conformance descriptor for PingRequest);

  return Message.hash(into:)();
}

uint64_t sub_100113E4C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = type metadata accessor for _NameMap();
  sub_1000EECAC(v9, a2);
  sub_100006654(v9, a2);
  sub_1000F5104(&qword_100938728, &qword_100794D50);
  v10 = (sub_1000F5104(&qword_100938730, &qword_100794D58) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100791300;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *a5;
  v15 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100113FE0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for _NameMap();

  return sub_100006654(v4, a2);
}

uint64_t sub_100114058@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = sub_100006654(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1001140F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t sub_1001141A4(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int sub_1001142B4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  sub_100117BC4(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10011433C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1001143B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10011443C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117BC4(&qword_100938680, type metadata accessor for PingResponse, &protocol conformance descriptor for PingResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001144DC@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = sub_100006654(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_100114578(uint64_t a1)
{
  v2 = sub_100117BC4(&qword_1009377B8, type metadata accessor for PingResponse, &protocol conformance descriptor for PingResponse);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001145E4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10011463C(uint64_t a1, uint64_t a2)
{
  sub_100117BC4(&qword_1009377B8, type metadata accessor for PingResponse, &protocol conformance descriptor for PingResponse);

  return Message.hash(into:)();
}

Swift::Int sub_1001146B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10011470C(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1001147C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
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

uint64_t _s7remindd22StartMigrationResponseV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  started = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  v5 = *(started - 8);
  __chkstk_darwin(started, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v28 - v11;
  v13 = sub_1000F5104(&qword_100938780, &qword_100794DA8);
  __chkstk_darwin(v13, v14);
  v16 = &v28 - v15;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_9;
  }

  v28 = v8;
  v29 = type metadata accessor for StartMigrationResponse(0);
  v17 = *(v29 + 20);
  v18 = *(v13 + 48);
  sub_100010364(a1 + v17, v16, &qword_1009374E8, &unk_100792DE0);
  sub_100010364(a2 + v17, &v16[v18], &qword_1009374E8, &unk_100792DE0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, started) != 1)
  {
    sub_100010364(v16, v12, &qword_1009374E8, &unk_100792DE0);
    if (v19(&v16[v18], 1, started) != 1)
    {
      v21 = v28;
      sub_1001158E8(&v16[v18], v28, type metadata accessor for StartMigrationResponse.OneOf_Result);
      v22 = _s7remindd22StartMigrationResponseV12OneOf_ResultO21__derived_enum_equalsySbAE_AEtFZ_0(v12, v21);
      sub_100101968(v21, type metadata accessor for StartMigrationResponse.OneOf_Result);
      sub_100101968(v12, type metadata accessor for StartMigrationResponse.OneOf_Result);
      sub_1000050A4(v16, &qword_1009374E8, &unk_100792DE0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    sub_100101968(v12, type metadata accessor for StartMigrationResponse.OneOf_Result);
LABEL_8:
    sub_1000050A4(v16, &qword_100938780, &qword_100794DA8);
    goto LABEL_9;
  }

  if (v19(&v16[v18], 1, started) != 1)
  {
    goto LABEL_8;
  }

  sub_1000050A4(v16, &qword_1009374E8, &unk_100792DE0);
LABEL_11:
  v23 = *(v29 + 24);
  v24 = *(a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  if (v24 == *v26 && v25 == v26[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for UnknownStorage();
    sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v20 & 1;
  }

LABEL_9:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s7remindd22StartMigrationResponseV12OneOf_ResultO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartMigrationResponse.Error(0);
  __chkstk_darwin(started, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StartMigrationResponse.Details(0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  __chkstk_darwin(v11, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v18 = &v30 - v17;
  v19 = sub_1000F5104(&qword_1009387C0, &qword_100794DE8);
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v30 - v21;
  v24 = *(v23 + 56);
  sub_100115950(a1, &v30 - v21, type metadata accessor for StartMigrationResponse.OneOf_Result);
  sub_100115950(a2, &v22[v24], type metadata accessor for StartMigrationResponse.OneOf_Result);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100115950(v22, v18, type metadata accessor for StartMigrationResponse.OneOf_Result);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1001158E8(&v22[v24], v10, type metadata accessor for StartMigrationResponse.Details);
      v26 = sub_100116AEC(v18, v10, type metadata accessor for StartMigrationResponse.Details);
      sub_100101968(v10, type metadata accessor for StartMigrationResponse.Details);
      sub_100101968(v18, type metadata accessor for StartMigrationResponse.Details);
      sub_100101968(v22, type metadata accessor for StartMigrationResponse.OneOf_Result);
      return v26 & 1;
    }

    v27 = type metadata accessor for StartMigrationResponse.Details;
    v28 = v18;
    goto LABEL_14;
  }

  sub_100115950(v22, v14, type metadata accessor for StartMigrationResponse.OneOf_Result);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = type metadata accessor for StartMigrationResponse.Error;
    v28 = v14;
LABEL_14:
    sub_100101968(v28, v27);
    sub_1000050A4(v22, &qword_1009387C0, &qword_100794DE8);
LABEL_17:
    v26 = 0;
    return v26 & 1;
  }

  sub_1001158E8(&v22[v24], v6, type metadata accessor for StartMigrationResponse.Error);
  v25 = *v14 == *v6 && *(v14 + 1) == *(v6 + 1);
  if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v14 + 4) != *(v6 + 4) || (type metadata accessor for UnknownStorage(), sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    sub_100101968(v6, type metadata accessor for StartMigrationResponse.Error);
    sub_100101968(v14, type metadata accessor for StartMigrationResponse.Error);
    sub_100101968(v22, type metadata accessor for StartMigrationResponse.OneOf_Result);
    goto LABEL_17;
  }

  sub_100101968(v6, type metadata accessor for StartMigrationResponse.Error);
  sub_100101968(v14, type metadata accessor for StartMigrationResponse.Error);
  sub_100101968(v22, type metadata accessor for StartMigrationResponse.OneOf_Result);
  v26 = 1;
  return v26 & 1;
}

uint64_t _s7remindd21StartMigrationRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  v5 = *(started - 8);
  __chkstk_darwin(started, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = sub_1000F5104(&qword_100938798, &qword_100794DC0);
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_100010364(a1, &v24 - v15, &qword_1009374E0, &unk_1007A6940);
  sub_100010364(a2, &v16[v18], &qword_1009374E0, &unk_1007A6940);
  v19 = *(v5 + 48);
  if (v19(v16, 1, started) != 1)
  {
    sub_100010364(v16, v12, &qword_1009374E0, &unk_1007A6940);
    if (v19(&v16[v18], 1, started) != 1)
    {
      sub_1001158E8(&v16[v18], v8, type metadata accessor for StartMigrationRequest.OneOf_Source);
      v20 = _s7remindd21StartMigrationRequestV12OneOf_SourceO21__derived_enum_equalsySbAE_AEtFZ_0(v12, v8);
      sub_100101968(v8, type metadata accessor for StartMigrationRequest.OneOf_Source);
      sub_100101968(v12, type metadata accessor for StartMigrationRequest.OneOf_Source);
      sub_1000050A4(v16, &qword_1009374E0, &unk_1007A6940);
      if ((v20 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    sub_100101968(v12, type metadata accessor for StartMigrationRequest.OneOf_Source);
LABEL_6:
    sub_1000050A4(v16, &qword_100938798, &qword_100794DC0);
    goto LABEL_9;
  }

  if (v19(&v16[v18], 1, started) != 1)
  {
    goto LABEL_6;
  }

  sub_1000050A4(v16, &qword_1009374E0, &unk_1007A6940);
LABEL_8:
  v21 = type metadata accessor for StartMigrationRequest(0);
  if (*(a1 + *(v21 + 20)) == *(a2 + *(v21 + 20)))
  {
    type metadata accessor for UnknownStorage();
    sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v22 & 1;
  }

LABEL_9:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s7remindd21StartMigrationRequestV12OneOf_SourceO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartMigrationRequest.Credential(0);
  __chkstk_darwin(started - 8, v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  __chkstk_darwin(v8, v9);
  v11 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12, v13);
  v15 = (&v62 - v14);
  __chkstk_darwin(v16, v17);
  v19 = (&v62 - v18);
  v20 = sub_1000F5104(&qword_1009387C8, &unk_100794DF0);
  __chkstk_darwin(v20 - 8, v21);
  v23 = &v62 - v22;
  v25 = &v62 + *(v24 + 56) - v22;
  sub_100115950(a1, &v62 - v22, type metadata accessor for StartMigrationRequest.OneOf_Source);
  sub_100115950(a2, v25, type metadata accessor for StartMigrationRequest.OneOf_Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100115950(v23, v19, type metadata accessor for StartMigrationRequest.OneOf_Source);
    v29 = *v19;
    v28 = v19[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_100115950(v23, v11, type metadata accessor for StartMigrationRequest.OneOf_Source);
    v29 = *v11;
    v28 = v11[1];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
LABEL_8:
      v37 = *(v25 + 1);
      if (v29 == *v25 && v28 == v37)
      {
        *(v25 + 1), v30, *v25, v32, v33, v34, v35, v36;
        v28, v54, v55, v56, v57, v58, v59, v60;
      }

      else
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v37, v40, v41, v42, v43, v44, v45, v46;
        v28, v47, v48, v49, v50, v51, v52, v53;
        if ((v39 & 1) == 0)
        {
          sub_100101968(v23, type metadata accessor for StartMigrationRequest.OneOf_Source);
LABEL_16:
          v27 = 0;
          return v27 & 1;
        }
      }

      sub_100101968(v23, type metadata accessor for StartMigrationRequest.OneOf_Source);
      v27 = 1;
      return v27 & 1;
    }

LABEL_6:
    v28, v30, v31, v32, v33, v34, v35, v36;
LABEL_15:
    sub_1000050A4(v23, &qword_1009387C8, &unk_100794DF0);
    goto LABEL_16;
  }

  sub_100115950(v23, v15, type metadata accessor for StartMigrationRequest.OneOf_Source);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100101968(v15, type metadata accessor for StartMigrationRequest.Credential);
    goto LABEL_15;
  }

  sub_1001158E8(v25, v7, type metadata accessor for StartMigrationRequest.Credential);
  v27 = _s7remindd21StartMigrationRequestV10CredentialV2eeoiySbAE_AEtFZ_0(v15, v7);
  sub_100101968(v7, type metadata accessor for StartMigrationRequest.Credential);
  sub_100101968(v15, type metadata accessor for StartMigrationRequest.Credential);
  sub_100101968(v23, type metadata accessor for StartMigrationRequest.OneOf_Source);
  return v27 & 1;
}

uint64_t _s7remindd21StartMigrationRequestV10CredentialV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != *(a2 + 48) || a1[7] != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 64))
  {
    return 0;
  }

  type metadata accessor for StartMigrationRequest.Credential(0);
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1001158E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100115950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7remindd17UnmigrateResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&qword_100937510, &qword_100792E00);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v27 - v11;
  v13 = sub_1000F5104(&qword_100938738, &qword_100794D60);
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v27 - v15;
  v18 = *(v17 + 56);
  sub_100010364(a1, &v27 - v15, &qword_100937510, &qword_100792E00);
  sub_100010364(a2, &v16[v18], &qword_100937510, &qword_100792E00);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_100010364(v16, v12, &qword_100937510, &qword_100792E00);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      sub_1001158E8(&v16[v18], v8, type metadata accessor for UnmigrateResponse.OneOf_Result);
      v21 = _s7remindd17UnmigrateResponseV12OneOf_ResultO21__derived_enum_equalsySbAE_AEtFZ_0(v12, v8);
      sub_100101968(v8, type metadata accessor for UnmigrateResponse.OneOf_Result);
      sub_100101968(v12, type metadata accessor for UnmigrateResponse.OneOf_Result);
      sub_1000050A4(v16, &qword_100937510, &qword_100792E00);
      if ((v21 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    sub_100101968(v12, type metadata accessor for UnmigrateResponse.OneOf_Result);
LABEL_6:
    sub_1000050A4(v16, &qword_100938738, &qword_100794D60);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000050A4(v16, &qword_100937510, &qword_100792E00);
LABEL_9:
  v22 = *(type metadata accessor for UnmigrateResponse(0) + 20);
  v23 = *(a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  if (v23 == *v25 && v24 == v25[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for UnknownStorage();
    sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s7remindd17UnmigrateResponseV12OneOf_ResultO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v34 = type metadata accessor for UnmigrateResponse.Error(0);
  __chkstk_darwin(v34, v4);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = type metadata accessor for UnmigrateResponse.Details(0);
  __chkstk_darwin(v33, v7);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  __chkstk_darwin(v10, v11);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14, v15);
  v17 = (&v33 - v16);
  v18 = sub_1000F5104(&qword_1009387A8, &qword_100794DD0);
  __chkstk_darwin(v18 - 8, v19);
  v21 = &v33 - v20;
  v23 = *(v22 + 56);
  sub_100115950(a1, &v33 - v20, type metadata accessor for UnmigrateResponse.OneOf_Result);
  sub_100115950(a2, &v21[v23], type metadata accessor for UnmigrateResponse.OneOf_Result);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100115950(v21, v13, type metadata accessor for UnmigrateResponse.OneOf_Result);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1001158E8(&v21[v23], v6, type metadata accessor for UnmigrateResponse.Error);
      v24 = *v13 == *v6 && v13[1] == v6[1];
      if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        type metadata accessor for UnknownStorage();
        sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          sub_100101968(v6, type metadata accessor for UnmigrateResponse.Error);
          v25 = v13;
          v26 = type metadata accessor for UnmigrateResponse.Error;
LABEL_17:
          sub_100101968(v25, v26);
          sub_100101968(v21, type metadata accessor for UnmigrateResponse.OneOf_Result);
          return 1;
        }
      }

      sub_100101968(v6, type metadata accessor for UnmigrateResponse.Error);
      v31 = v13;
      v32 = type metadata accessor for UnmigrateResponse.Error;
LABEL_21:
      sub_100101968(v31, v32);
      sub_100101968(v21, type metadata accessor for UnmigrateResponse.OneOf_Result);
      return 0;
    }

    v27 = type metadata accessor for UnmigrateResponse.Error;
    v28 = v13;
  }

  else
  {
    sub_100115950(v21, v17, type metadata accessor for UnmigrateResponse.OneOf_Result);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1001158E8(&v21[v23], v9, type metadata accessor for UnmigrateResponse.Details);
      if (*v17 == *v9)
      {
        type metadata accessor for UnknownStorage();
        sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v29 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100101968(v9, type metadata accessor for UnmigrateResponse.Details);
        if (v29)
        {
          v26 = type metadata accessor for UnmigrateResponse.Details;
          v25 = v17;
          goto LABEL_17;
        }
      }

      else
      {
        sub_100101968(v9, type metadata accessor for UnmigrateResponse.Details);
      }

      v32 = type metadata accessor for UnmigrateResponse.Details;
      v31 = v17;
      goto LABEL_21;
    }

    v27 = type metadata accessor for UnmigrateResponse.Details;
    v28 = v17;
  }

  sub_100101968(v28, v27);
  sub_1000050A4(v21, &qword_1009387A8, &qword_100794DD0);
  return 0;
}

uint64_t _s7remindd15MigrateResponseV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v59 = *(Step - 8);
  __chkstk_darwin(Step, v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
  __chkstk_darwin(v8 - 8, v9);
  v57 = &v54 - v10;
  v58 = sub_1000F5104(&qword_100938750, &qword_100794D78);
  __chkstk_darwin(v58, v11);
  v60 = &v54 - v12;
  v13 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  __chkstk_darwin(v18 - 8, v19);
  v21 = &v54 - v20;
  v22 = sub_1000F5104(&qword_100938758, &qword_100794D80);
  __chkstk_darwin(v22, v23);
  v25 = &v54 - v24;
  v26 = *a1;
  v27 = a1[1];
  v61 = a1;
  if ((v26 != *a2 || v27 != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v56 = Step;
  v54 = v7;
  v28 = a2;
  v55 = type metadata accessor for MigrateResponse(0);
  v29 = *(v55 + 20);
  v30 = *(v22 + 48);
  sub_100010364(v61 + v29, v25, &qword_100937500, &qword_100792DF0);
  sub_100010364(v28 + v29, &v25[v30], &qword_100937500, &qword_100792DF0);
  v31 = *(v14 + 48);
  if (v31(v25, 1, v13) == 1)
  {
    if (v31(&v25[v30], 1, v13) == 1)
    {
      sub_1000050A4(v25, &qword_100937500, &qword_100792DF0);
      goto LABEL_11;
    }

LABEL_9:
    v32 = &qword_100938758;
    v33 = &qword_100794D80;
    v34 = v25;
LABEL_17:
    sub_1000050A4(v34, v32, v33);
    goto LABEL_18;
  }

  sub_100010364(v25, v21, &qword_100937500, &qword_100792DF0);
  if (v31(&v25[v30], 1, v13) == 1)
  {
    sub_100101968(v21, type metadata accessor for MigrateResponse.OneOf_Result);
    goto LABEL_9;
  }

  sub_1001158E8(&v25[v30], v17, type metadata accessor for MigrateResponse.OneOf_Result);
  v35 = _s7remindd15MigrateResponseV12OneOf_ResultO21__derived_enum_equalsySbAE_AEtFZ_0(v21, v17);
  sub_100101968(v17, type metadata accessor for MigrateResponse.OneOf_Result);
  sub_100101968(v21, type metadata accessor for MigrateResponse.OneOf_Result);
  sub_1000050A4(v25, &qword_100937500, &qword_100792DF0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  v36 = v55;
  v37 = *(v55 + 32);
  v38 = *(v58 + 48);
  v39 = v60;
  sub_100010364(v61 + v37, v60, &qword_100937508, &qword_100792DF8);
  v40 = v28 + v37;
  v41 = v28;
  sub_100010364(v40, v39 + v38, &qword_100937508, &qword_100792DF8);
  v42 = *(v59 + 48);
  v43 = v56;
  if (v42(v39, 1, v56) != 1)
  {
    v44 = v57;
    sub_100010364(v39, v57, &qword_100937508, &qword_100792DF8);
    if (v42(v39 + v38, 1, v43) != 1)
    {
      v47 = v39 + v38;
      v48 = v54;
      sub_1001158E8(v47, v54, type metadata accessor for MigrateResponse.NextStep);
      StepV2eeoiySbAE_AEtFZ_0 = _s7remindd15MigrateResponseV8NextStepV2eeoiySbAE_AEtFZ_0(v44, v48);
      sub_100101968(v48, type metadata accessor for MigrateResponse.NextStep);
      sub_100101968(v44, type metadata accessor for MigrateResponse.NextStep);
      sub_1000050A4(v39, &qword_100937508, &qword_100792DF8);
      if ((StepV2eeoiySbAE_AEtFZ_0 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    sub_100101968(v44, type metadata accessor for MigrateResponse.NextStep);
    goto LABEL_16;
  }

  if (v42(v39 + v38, 1, v43) != 1)
  {
LABEL_16:
    v32 = &qword_100938750;
    v33 = &qword_100794D78;
    v34 = v39;
    goto LABEL_17;
  }

  sub_1000050A4(v39, &qword_100937508, &qword_100792DF8);
LABEL_21:
  v50 = *(v36 + 24);
  v51 = (v61 + v50);
  v52 = *(v61 + v50 + 8);
  v53 = (v41 + v50);
  if (*v51 == *v53 && v52 == v53[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for UnknownStorage();
    sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v45 & 1;
  }

LABEL_18:
  v45 = 0;
  return v45 & 1;
}

uint64_t _s7remindd15MigrateResponseV8NextStepV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  type metadata accessor for MigrateResponse.NextStep(0);
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100116A14(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 4) != *(a2 + 16))
  {
    return 0;
  }

  a3(0);
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100116AEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, double))
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  a3(0, *a1);
  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t _s7remindd15MigrateResponseV12OneOf_ResultO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for MigrateResponse.Error(0);
  __chkstk_darwin(v31, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MigrateResponse.Details(0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  __chkstk_darwin(v11, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v18 = &v30 - v17;
  v19 = sub_1000F5104(&qword_1009387B0, &qword_100794DD8);
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v30 - v21;
  v24 = *(v23 + 56);
  sub_100115950(a1, &v30 - v21, type metadata accessor for MigrateResponse.OneOf_Result);
  sub_100115950(a2, &v22[v24], type metadata accessor for MigrateResponse.OneOf_Result);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100115950(v22, v18, type metadata accessor for MigrateResponse.OneOf_Result);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1001158E8(&v22[v24], v10, type metadata accessor for MigrateResponse.Details);
      v26 = sub_100116AEC(v18, v10, type metadata accessor for MigrateResponse.Details);
      sub_100101968(v10, type metadata accessor for MigrateResponse.Details);
      sub_100101968(v18, type metadata accessor for MigrateResponse.Details);
      sub_100101968(v22, type metadata accessor for MigrateResponse.OneOf_Result);
      return v26 & 1;
    }

    v27 = type metadata accessor for MigrateResponse.Details;
    v28 = v18;
    goto LABEL_14;
  }

  sub_100115950(v22, v14, type metadata accessor for MigrateResponse.OneOf_Result);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = type metadata accessor for MigrateResponse.Error;
    v28 = v14;
LABEL_14:
    sub_100101968(v28, v27);
    sub_1000050A4(v22, &qword_1009387B0, &qword_100794DD8);
LABEL_17:
    v26 = 0;
    return v26 & 1;
  }

  sub_1001158E8(&v22[v24], v6, type metadata accessor for MigrateResponse.Error);
  v25 = *v14 == *v6 && *(v14 + 1) == *(v6 + 1);
  if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v14 + 4) != *(v6 + 4) || (type metadata accessor for UnknownStorage(), sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    sub_100101968(v6, type metadata accessor for MigrateResponse.Error);
    sub_100101968(v14, type metadata accessor for MigrateResponse.Error);
    sub_100101968(v22, type metadata accessor for MigrateResponse.OneOf_Result);
    goto LABEL_17;
  }

  sub_100101968(v6, type metadata accessor for MigrateResponse.Error);
  sub_100101968(v14, type metadata accessor for MigrateResponse.Error);
  sub_100101968(v22, type metadata accessor for MigrateResponse.OneOf_Result);
  v26 = 1;
  return v26 & 1;
}

uint64_t _s7remindd14MigrateRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = sub_1000F5104(&qword_100938770, &qword_100794D98);
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_100010364(a1, &v24 - v15, &qword_1009374F0, &qword_1007A2380);
  sub_100010364(a2, &v16[v18], &qword_1009374F0, &qword_1007A2380);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_100010364(v16, v12, &qword_1009374F0, &qword_1007A2380);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      sub_1001158E8(&v16[v18], v8, type metadata accessor for MigrateRequest.OneOf_Source);
      v20 = _s7remindd14MigrateRequestV12OneOf_SourceO21__derived_enum_equalsySbAE_AEtFZ_0(v12, v8);
      sub_100101968(v8, type metadata accessor for MigrateRequest.OneOf_Source);
      sub_100101968(v12, type metadata accessor for MigrateRequest.OneOf_Source);
      sub_1000050A4(v16, &qword_1009374F0, &qword_1007A2380);
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_12:
      v22 = 0;
      return v22 & 1;
    }

    sub_100101968(v12, type metadata accessor for MigrateRequest.OneOf_Source);
LABEL_6:
    sub_1000050A4(v16, &qword_100938770, &qword_100794D98);
    goto LABEL_12;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000050A4(v16, &qword_1009374F0, &qword_1007A2380);
LABEL_8:
  v21 = type metadata accessor for MigrateRequest(0);
  if (*(a1 + v21[5]) != *(a2 + v21[5]) || *(a1 + v21[6]) != *(a2 + v21[6]) || *(a1 + v21[7]) != *(a2 + v21[7]))
  {
    goto LABEL_12;
  }

  type metadata accessor for UnknownStorage();
  sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v22 & 1;
}

uint64_t _s7remindd14MigrateRequestV12OneOf_SourceO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v3 = type metadata accessor for MigrateRequest.User(0);
  __chkstk_darwin(v3, v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  __chkstk_darwin(v7, v8);
  v10 = (&v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11, v12);
  v14 = (&v61 - v13);
  __chkstk_darwin(v15, v16);
  v18 = &v61 - v17;
  v19 = sub_1000F5104(&qword_1009387B8, &qword_100794DE0);
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v61 - v21;
  v24 = &v61 + *(v23 + 56) - v21;
  sub_100115950(a1, &v61 - v21, type metadata accessor for MigrateRequest.OneOf_Source);
  sub_100115950(v62, v24, type metadata accessor for MigrateRequest.OneOf_Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100115950(v22, v14, type metadata accessor for MigrateRequest.OneOf_Source);
      v27 = *v14;
      v26 = v14[1];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_100115950(v22, v10, type metadata accessor for MigrateRequest.OneOf_Source);
      v27 = *v10;
      v26 = v10[1];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
LABEL_4:
        v35 = *(v24 + 1);
        if (v27 == *v24 && v26 == v35)
        {
          *(v24 + 1), v28, *v24, v30, v31, v32, v33, v34;
          v26, v52, v53, v54, v55, v56, v57, v58;
        }

        else
        {
          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v35, v38, v39, v40, v41, v42, v43, v44;
          v26, v45, v46, v47, v48, v49, v50, v51;
          if ((v37 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

LABEL_16:
        sub_100101968(v22, type metadata accessor for MigrateRequest.OneOf_Source);
        return 1;
      }
    }

    v26, v28, v29, v30, v31, v32, v33, v34;
  }

  else
  {
    sub_100115950(v22, v18, type metadata accessor for MigrateRequest.OneOf_Source);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1001158E8(v24, v6, type metadata accessor for MigrateRequest.User);
      if (*v18 == *v6 && *(v18 + 2) == *(v6 + 2))
      {
        type metadata accessor for UnknownStorage();
        sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v60 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100101968(v6, type metadata accessor for MigrateRequest.User);
        if (v60)
        {
          sub_100101968(v18, type metadata accessor for MigrateRequest.User);
          goto LABEL_16;
        }
      }

      else
      {
        sub_100101968(v6, type metadata accessor for MigrateRequest.User);
      }

      sub_100101968(v18, type metadata accessor for MigrateRequest.User);
LABEL_23:
      sub_100101968(v22, type metadata accessor for MigrateRequest.OneOf_Source);
      return 0;
    }

    sub_100101968(v18, type metadata accessor for MigrateRequest.User);
  }

  sub_1000050A4(v22, &qword_1009387B8, &qword_100794DE0);
  return 0;
}

uint64_t _s7remindd13BasicResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if (v3 == 255)
  {
    if (v4 == 255)
    {
      goto LABEL_12;
    }
  }

  else if (v4 != 255)
  {
    v5 = *a1;
    if (v3)
    {
      if ((v4 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    if ((v4 & 1) == 0)
    {
LABEL_9:
      if ((v5 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

LABEL_12:
      type metadata accessor for BasicResponse(0);
      type metadata accessor for UnknownStorage();
      sub_100117BC4(&qword_1009374F8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t sub_10011790C(uint64_t result)
{
  if (result > 3)
  {
    switch(result)
    {
      case 16:
        return 5;
      case 8:
        return 4;
      case 4:
        return 3;
    }
  }

  return result;
}

uint64_t sub_100117A3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000F5104(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

double sub_100117B24(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100117B3C(result, a2);
  }

  return v3;
}

void sub_100117B44(uint64_t result, _TtC7remindd19RDXPCStorePerformer *a2, char a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a3 != -1)
  {
    sub_100117B5C(result, a2, (a3 & 1), a4, a5, a6, a7, a8);
  }
}

uint64_t sub_100117BC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100117C30()
{
  result = qword_1009375B0;
  if (!qword_1009375B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009375B0);
  }

  return result;
}

unint64_t sub_100117C88()
{
  result = qword_1009375B8;
  if (!qword_1009375B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009375B8);
  }

  return result;
}

unint64_t sub_100117CE0()
{
  result = qword_1009375C0;
  if (!qword_1009375C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009375C0);
  }

  return result;
}

unint64_t sub_100117D68()
{
  result = qword_1009375D8;
  if (!qword_1009375D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009375D8);
  }

  return result;
}

unint64_t sub_100117DC0()
{
  result = qword_1009375E0;
  if (!qword_1009375E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009375E0);
  }

  return result;
}

unint64_t sub_100117E18()
{
  result = qword_1009375E8;
  if (!qword_1009375E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009375E8);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for StartMigrationRequest(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
    v8 = *(started - 8);
    if ((*(v8 + 48))(a2, 1, started))
    {
      v9 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = a2[1];
      *a1 = *a2;
      a1[1] = v12;
      if (EnumCaseMultiPayload == 1)
      {
        v13 = a2[3];
        a1[2] = a2[2];
        a1[3] = v13;
        v14 = a2[5];
        a1[4] = a2[4];
        a1[5] = v14;
        v15 = a2[7];
        a1[6] = a2[6];
        a1[7] = v15;
        *(a1 + 16) = *(a2 + 16);
        v16 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
        v17 = type metadata accessor for UnknownStorage();
        v22 = *(*(v17 - 8) + 16);

        v22(a1 + v16, a2 + v16, v17);
      }

      else
      {
      }

      swift_storeEnumTagMultiPayload();
      (*(v8 + 56))(a1, 0, 1, started);
    }

    v18 = *(a3 + 20);
    v19 = *(a3 + 24);
    *(a1 + v18) = *(a2 + v18);
    v20 = type metadata accessor for UnknownStorage();
    (*(*(v20 - 8) + 16))(a1 + v19, a2 + v19, v20);
  }

  return a1;
}

uint64_t destroy for StartMigrationRequest(_TtC7remindd19RDXPCStorePerformer **a1, uint64_t a2)
{
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  if (!(*(*(started - 8) + 48))(a1, 1, started))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
LABEL_5:
      a1[1], v6, v7, v8, v9, v10, v11, v12;
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }

    a1[1], v6, v7, v8, v9, v10, v11, v12;
    a1[3], v13, v14, v15, v16, v17, v18, v19;
    a1[5], v20, v21, v22, v23, v24, v25, v26;
    a1[7], v27, v28, v29, v30, v31, v32, v33;
    v34 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
    v35 = type metadata accessor for UnknownStorage();
    (*(*(v35 - 8) + 8))(a1 + v34, v35);
  }

LABEL_7:
  v36 = *(a2 + 24);
  v37 = type metadata accessor for UnknownStorage();
  v38 = *(*(v37 - 8) + 8);

  return v38(a1 + v36, v37);
}

void *initializeWithCopy for StartMigrationRequest(void *a1, void *a2, uint64_t a3)
{
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  v7 = *(started - 8);
  if ((*(v7 + 48))(a2, 1, started))
  {
    v8 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    if (EnumCaseMultiPayload == 1)
    {
      v11 = a2[3];
      a1[2] = a2[2];
      a1[3] = v11;
      v12 = a2[5];
      a1[4] = a2[4];
      a1[5] = v12;
      v13 = a2[7];
      a1[6] = a2[6];
      a1[7] = v13;
      *(a1 + 16) = *(a2 + 16);
      v14 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
      v15 = type metadata accessor for UnknownStorage();
      v20 = *(*(v15 - 8) + 16);

      v20(a1 + v14, a2 + v14, v15);
    }

    else
    {
    }

    swift_storeEnumTagMultiPayload();
    (*(v7 + 56))(a1, 0, 1, started);
  }

  v16 = *(a3 + 20);
  v17 = *(a3 + 24);
  *(a1 + v16) = *(a2 + v16);
  v18 = type metadata accessor for UnknownStorage();
  (*(*(v18 - 8) + 16))(a1 + v17, a2 + v17, v18);
  return a1;
}

uint64_t assignWithCopy for StartMigrationRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  v7 = *(started - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, started);
  v10 = v8(a2, 1, started);
  if (v9)
  {
    if (!v10)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      if (EnumCaseMultiPayload == 1)
      {
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = *(a2 + 64);
        v12 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
        v13 = type metadata accessor for UnknownStorage();
        v21 = *(*(v13 - 8) + 16);

        v21(a1 + v12, a2 + v12, v13);
      }

      else
      {
      }

      swift_storeEnumTagMultiPayload();
      (*(v7 + 56))(a1, 0, 1, started);
      goto LABEL_10;
    }

LABEL_7:
    v14 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
    memcpy(a1, a2, *(*(v14 - 8) + 64));
    goto LABEL_10;
  }

  if (v10)
  {
    sub_100101968(a1, type metadata accessor for StartMigrationRequest.OneOf_Source);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    sub_100101968(a1, type metadata accessor for StartMigrationRequest.OneOf_Source);
    v18 = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    if (v18 == 1)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      v19 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
      v20 = type metadata accessor for UnknownStorage();
      v22 = *(*(v20 - 8) + 16);

      v22(a1 + v19, a2 + v19, v20);
    }

    else
    {
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_10:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v15 = *(a3 + 24);
  v16 = type metadata accessor for UnknownStorage();
  (*(*(v16 - 8) + 24))(a1 + v15, a2 + v15, v16);
  return a1;
}

_OWORD *initializeWithTake for StartMigrationRequest(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  v7 = *(started - 8);
  if ((*(v7 + 48))(a2, 1, started))
  {
    v8 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = a2[1];
      *a1 = *a2;
      a1[1] = v9;
      v10 = a2[3];
      a1[2] = a2[2];
      a1[3] = v10;
      *(a1 + 16) = *(a2 + 16);
      v11 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
      v12 = type metadata accessor for UnknownStorage();
      (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(v7 + 64));
    }

    (*(v7 + 56))(a1, 0, 1, started);
  }

  v13 = *(a3 + 20);
  v14 = *(a3 + 24);
  *(a1 + v13) = *(a2 + v13);
  v15 = type metadata accessor for UnknownStorage();
  (*(*(v15 - 8) + 32))(a1 + v14, a2 + v14, v15);
  return a1;
}

uint64_t assignWithTake for StartMigrationRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  v7 = *(started - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, started);
  v10 = v8(a2, 1, started);
  if (!v9)
  {
    if (!v10)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_100101968(a1, type metadata accessor for StartMigrationRequest.OneOf_Source);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v16;
        v17 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v17;
        *(a1 + 64) = *(a2 + 64);
        v18 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
        v19 = type metadata accessor for UnknownStorage();
        (*(*(v19 - 8) + 32))(a1 + v18, a2 + v18, v19);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v15 = *(v7 + 64);
      goto LABEL_8;
    }

    sub_100101968(a1, type metadata accessor for StartMigrationRequest.OneOf_Source);
LABEL_7:
    v15 = *(*(sub_1000F5104(&qword_1009374E0, &unk_1007A6940) - 8) + 64);
LABEL_8:
    memcpy(a1, a2, v15);
    goto LABEL_14;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v11;
    v12 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v12;
    *(a1 + 64) = *(a2 + 64);
    v13 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
    v14 = type metadata accessor for UnknownStorage();
    (*(*(v14 - 8) + 32))(a1 + v13, a2 + v13, v14);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(v7 + 64));
  }

  (*(v7 + 56))(a1, 0, 1, started);
LABEL_14:
  v20 = *(a3 + 20);
  v21 = *(a3 + 24);
  *(a1 + v20) = *(a2 + v20);
  v22 = type metadata accessor for UnknownStorage();
  (*(*(v22 - 8) + 40))(a1 + v21, a2 + v21, v22);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for StartMigrationRequest.OneOf_Source(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = v13 + ((v5 + 16) & ~v5);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v7;
    if (EnumCaseMultiPayload == 1)
    {
      v8 = a2[3];
      *(a1 + 16) = a2[2];
      *(a1 + 24) = v8;
      v9 = a2[5];
      *(a1 + 32) = a2[4];
      *(a1 + 40) = v9;
      v10 = a2[7];
      *(a1 + 48) = a2[6];
      *(a1 + 56) = v10;
      *(a1 + 64) = *(a2 + 16);
      v11 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
      v12 = type metadata accessor for UnknownStorage();
      v15 = *(*(v12 - 8) + 16);

      v15(a1 + v11, a2 + v11, v12);
    }

    else
    {
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void destroy for StartMigrationRequest.OneOf_Source(char *a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
LABEL_4:
    v11 = *(a1 + 1);

    v11, v4, v5, v6, v7, v8, v9, v10;
    return;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      return;
    }

    goto LABEL_4;
  }

  *(a1 + 1), v4, v5, v6, v7, v8, v9, v10;
  *(a1 + 3), v12, v13, v14, v15, v16, v17, v18;
  *(a1 + 5), v19, v20, v21, v22, v23, v24, v25;
  *(a1 + 7), v26, v27, v28, v29, v30, v31, v32;
  v33 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
  v34 = type metadata accessor for UnknownStorage();
  v35 = *(*(v34 - 8) + 8);

  v35(&a1[v33], v34);
}

uint64_t initializeWithCopy for StartMigrationRequest.OneOf_Source(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  if (EnumCaseMultiPayload == 1)
  {
    v7 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v7;
    v8 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v8;
    v9 = *(a2 + 56);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v9;
    *(a1 + 64) = *(a2 + 64);
    v10 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
    v11 = type metadata accessor for UnknownStorage();
    v13 = *(*(v11 - 8) + 16);

    v13(a1 + v10, a2 + v10, v11);
  }

  else
  {
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}