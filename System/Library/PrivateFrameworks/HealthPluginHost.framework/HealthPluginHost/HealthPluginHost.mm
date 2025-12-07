void sub_100001C08(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for EnvironmentalStateDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static EnvironmentalStateDescription.appRunning(bundleIdentifier:)();

  v12 = EnvironmentalStateDescription.matches(_:)(a1);
  (*(v9 + 8))(v11, v8);
  v13 = *(v2 + 112);

  os_unfair_lock_lock((v13 + 56));
  if (*(v13 + 16) == 1)
  {
    if (v12)
    {
      if (*(v13 + 17))
      {
        *(v13 + 17) = 256;
        *(v13 + 24) = OrchestrationWorkQueueStatusObserver.finishedWorkPlans.getter();
        *(v13 + 32) = CFAbsoluteTimeGetCurrent();
LABEL_7:
        v14 = 1;
        goto LABEL_9;
      }
    }

    else
    {
      *(v13 + 17) = 1;
      if (*(v13 + 18))
      {
        *(v13 + 18) = 0;
        goto LABEL_7;
      }
    }
  }

  v14 = 0;
LABEL_9:
  os_unfair_lock_unlock((v13 + 56));

  if (v12)
  {
    *v7 = 1;
    (*(v5 + 104))(v7, enum case for DispatchTimeInterval.seconds(_:), v4);
    HealthAppForegroundWorkManager.forceStart(within:)();
    (*(v5 + 8))(v7, v4);
    if (v14)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v2;
      *(v15 + 24) = 1;

      HealthAppForegroundWorkManager.foregroundWithFireOnceBarrier(_:)();
    }
  }

  else
  {
    HealthAppForegroundWorkManager.endForeground()();
    if (v14)
    {
      v16 = *(v2 + 112);

      os_unfair_lock_lock(v16 + 14);
      sub_1000022AC(&v16[4], v20);
      os_unfair_lock_unlock(v16 + 14);
      v17 = *v20;
      v18 = v20[1];

      OrchestrationWorkQueueStatusObserver.didEndForegroundSession(planCount:duration:)(v18, v17);
    }
  }
}

uint64_t sub_100001F18()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100001F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  sub_1000020B0(0, &qword_100041F98, &type metadata accessor for PriorityRuleSet.Priority, &type metadata accessor for Optional);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = *a5;
  v10 = type metadata accessor for PriorityRuleSet.Priority();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v8, v9, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  OrchestrationDirector.fireOnce(priorityThresholdOverride:barrier:)();
  return sub_100002114(v8);
}

void sub_1000020B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100002114(uint64_t a1)
{
  sub_1000020B0(0, &qword_100041F98, &type metadata accessor for PriorityRuleSet.Priority, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000021AC(char a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v4 = *(a2 + 112);

    os_unfair_lock_lock(v4 + 14);
    sub_1000022C8(&v4[4], v7);
    os_unfair_lock_unlock(v4 + 14);
    v5 = *v7;
    v6 = v7[1];

    if (a3)
    {
      OrchestrationWorkQueueStatusObserver.didStartForegroundSession(planCount:duration:)(v6, v5);
    }
  }
}

uint64_t sub_10000223C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = CFAbsoluteTimeGetCurrent() - *(a1 + 16);
  result = OrchestrationWorkQueueStatusObserver.finishedWorkPlans.getter();
  v5 = *(a1 + 8);
  v6 = __OFSUB__(result, v5);
  v7 = result - v5;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 8) = v7;
  }

  return result;
}

uint64_t sub_1000022E0()
{
  sub_10000493C((v0 + 24));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100002338()
{

  sub_10000493C((v0 + 24));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100002390()
{
  sub_10000493C((v0 + 16));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000023E8()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100002430()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002468()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000024A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000024D8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002548()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002590(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000025B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000025EC()
{
  v1 = type metadata accessor for GenerationWorkRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000026B0()
{
  v1 = type metadata accessor for TransactionRecord();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v12 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v12 | 7);
}

uint64_t sub_100002844()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000288C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000028C4()
{
  sub_10000493C((v0 + 32));

  sub_10000493C((v0 + 88));

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_100002954()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000298C()
{
  v1 = type metadata accessor for TransactionRecord();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 24))
  {
  }

  v5 = (v3 + 48) & ~v3;
  v6 = (((((v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100002AE8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100002AF8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002B30()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002B74()
{
  sub_100021260(0, &qword_100042280, type metadata accessor for SummaryTabForegroundFeedPopulationOperation.HighlightsGenerationConfiguration);
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);

  v6 = v2[11];
  v7 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v4 + v6, v7);
  v8(v0 + v4 + v2[12], v7);
  v9 = v2[13];
  v10 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v0 + v4 + v9, v10);
  }

  return _swift_deallocObject(v0, ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100002D24()
{
  sub_10000493C((v0 + 24));
  sub_10000493C((v0 + 64));

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_100002D7C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002DB4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002E2C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100002E84()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100002ED0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002F08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002FA8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002FE0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100003020()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003058()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000030A0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_1000030B8()
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_BOOL(empty, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
  xpc_dictionary_set_string(empty, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);

  return empty;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v82 = *(v3 - 8);
  v83 = v3;
  __chkstk_darwin(v3);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v80 = *(v6 - 8);
  v81 = v6;
  __chkstk_darwin(v6);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v89 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v87 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v86 = &v79 - v17;
  v18 = __chkstk_darwin(v16);
  v84 = &v79 - v19;
  __chkstk_darwin(v18);
  v21 = &v79 - v20;
  v22 = String._bridgeToObjectiveC()();
  HKSetTemporaryDirectorySuffix();

  static Logger.daemon.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "healthappd: Starting", v25, 2u);
  }

  v26 = *(v89 + 8);
  v88 = v13;
  v89 += 8;
  v85 = v26;
  v26(v21, v13);
  v27 = SIG_IGN.getter();
  signal(15, v27);
  sub_100004210(0, &qword_100041AC8, OS_dispatch_source_ptr);
  sub_100004210(0, &qword_100041AD0, OS_dispatch_queue_ptr);
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v28 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v29 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  qword_100042858 = v29;
  ObjectType = swift_getObjectType();
  v95 = sub_100003DDC;
  v96 = 0;
  aBlock = _NSConcreteStackBlock;
  v92 = 1107296256;
  v93 = sub_100003F14;
  v94 = &unk_10003DA30;
  v31 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  sub_100003F70(ObjectType, v32, v33);
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v31);
  (*(v82 + 8))(v5, v83);
  (*(v80 + 8))(v8, v81);
  swift_getObjectType();
  OS_dispatch_source.activate()();
  v95 = sub_10000404C;
  v96 = 0;
  aBlock = _NSConcreteStackBlock;
  v92 = 1107296256;
  v93 = sub_100004180;
  v94 = &unk_10003DA58;
  v34 = _Block_copy(&aBlock);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", 0, v34);
  _Block_release(v34);
  type metadata accessor for HealthAppPluginSource();
  qword_100042860 = static HealthAppPluginSource.shared.getter();
  HealthAppPluginSource.loadPluginsFromDisk()();
  if (v35)
  {
    aBlock = 0;
    v92 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    v78._countAndFlagsBits = 0xD000000000000022;
    v78._object = 0x80000001000324E0;
    String.append(_:)(v78);
    v90 = v35;
    sub_100004308(0, &qword_100041AD8, &protocol descriptor for Error);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    swift_errorInMain();
    __break(1u);
    goto LABEL_13;
  }

  qword_100042868 = 0x403E000000000000;
  qword_100042870 = 9;
  sub_100004308(0, &qword_100041AE0, &protocol descriptor for ExecutorProvider);
  v36 = HealthAppPluginSource.conformingPlugins<A>(_:)();
  v83 = 0;
  qword_100042878 = v36;
  v37 = type metadata accessor for DirectDispatchTarget();
  swift_allocObject();

  v38 = DirectDispatchTarget.init(providers:)();
  v94 = v37;
  v95 = &protocol witness table for DirectDispatchTarget;
  aBlock = v38;
  v39 = type metadata accessor for TimeoutDispatchTarget();
  swift_allocObject();
  qword_100042880 = TimeoutDispatchTarget.init(timeout:target:)();
  v94 = v39;
  v95 = &protocol witness table for TimeoutDispatchTarget;
  aBlock = qword_100042880;
  v40 = type metadata accessor for DatabaseAccessibilityDispatchTarget();
  swift_allocObject();

  v41 = DatabaseAccessibilityDispatchTarget.init(target:)();
  qword_100042888 = v41;
  v94 = v40;
  v95 = sub_100004258(&qword_100041AE8, &type metadata accessor for DatabaseAccessibilityDispatchTarget, &protocol conformance descriptor for DatabaseAccessibilityDispatchTarget);
  aBlock = v41;
  v42 = type metadata accessor for MultiDispatcher();
  swift_allocObject();

  qword_100042890 = MultiDispatcher.init(target:width:filter:)();
  type metadata accessor for DaemonHealthExperienceStoreOracle();
  qword_100042898 = static DaemonHealthExperienceStoreOracle.shared.getter();
  v43 = [objc_allocWithZone(HKHealthStore) init];
  qword_100041AB0 = v43;
  type metadata accessor for PinnedContentManagerProvider();
  swift_allocObject();
  v44 = v43;
  qword_100041AB8 = PinnedContentManagerProvider.init(healthStore:)();
  type metadata accessor for HealthAppNotificationManager();
  qword_1000428A0 = HealthAppNotificationManager.__allocating_init()();
  type metadata accessor for OpenTransactionBuilderManager();
  qword_1000428A8 = static OpenTransactionBuilderManager.shared.getter();
  v45 = [objc_allocWithZone(HKProfileStore) initWithHealthStore:qword_100041AB0];
  v94 = sub_100004210(0, &qword_100041AF0, HKProfileStore_ptr);
  v95 = &protocol witness table for HKProfileStore;
  aBlock = v45;
  v46 = qword_100042898;

  static Logger.orchestration.getter();
  [objc_allocWithZone(HKHealthStore) init];
  type metadata accessor for HealthPlatformContextProvider();
  swift_allocObject();
  qword_1000428B0 = HealthPlatformContextProvider.init(profileStore:experienceStoreOracle:pinnedContentManagerProvider:notificationManager:transactionBuilderManager:healthStore:logger:)();
  v47 = objc_autoreleasePoolPush();
  nullsub_1();
  [objc_opt_self() setFlushTimerEnabled:0];
  objc_autoreleasePoolPop(v47);
  v48 = qword_100042860;
  v49 = qword_1000428B0;
  v50 = sub_100004258(&qword_100041AF8, &type metadata accessor for HealthPlatformContextProvider, &protocol conformance descriptor for HealthPlatformContextProvider);
  sub_1000042A0(0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_100031A60;
  v52 = qword_100042890;
  *(v51 + 56) = v42;
  *(v51 + 64) = &protocol witness table for MultiDispatcher;
  *(v51 + 32) = v52;
  v53 = qword_100042898;
  v54 = qword_100041AB8;
  v55 = qword_1000428A8;
  type metadata accessor for HealthAppOrchestrationClient();

  v56 = v53;

  static HealthAppOrchestrationClient.serviceName.getter();
  v57 = objc_allocWithZone(NSXPCListener);
  v58 = String._bridgeToObjectiveC()();

  v59 = [v57 initWithMachServiceName:v58];

  type metadata accessor for HealthAppDaemonCoordinator();
  swift_allocObject();
  v60 = v50;
  v61 = v83;
  sub_10000B060(v48, v49, v60, v51, v56, v54, v55, v59);
  if (v61)
  {
LABEL_13:
    result = swift_errorInMain();
    __break(1u);
    return result;
  }

  qword_1000428B8 = v62;
  v63 = v86;
  static Logger.daemon.getter();
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    aBlock = v67;
    *v66 = 136315138;
    v90 = qword_1000428B8;

    v68 = String.init<A>(reflecting:)();
    v70 = sub_100004364(v68, v69, &aBlock);

    *(v66 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v64, v65, "healthappd: Starting daemon: %s", v66, 0xCu);
    sub_10000493C(v67);
  }

  v71 = v88;
  v72 = v85;
  v85(v63, v88);
  v73 = v87;
  sub_10000AB88();
  static Logger.daemon.getter();
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&_mh_execute_header, v74, v75, "healthappd: Shutdown", v76, 2u);
  }

  v72(v73, v71);
  return 0;
}

uint64_t sub_100003DDC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "healthappd: sigterm Shutdown", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return xpc_transaction_exit_clean();
}

uint64_t sub_100003F14(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100003F58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100004258(&qword_100041B18, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000049E8(0, v3, v4);
  sub_100004258(&qword_100041B28, sub_1000049E8, &protocol conformance descriptor for [A]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10000404C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "healthappd: Received com.apple.distnoted.matching", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100004180(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void *sub_1000041F4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100004210(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100004258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000042A0(uint64_t a1)
{
  if (!qword_100041B00)
  {
    sub_100004308(255, &qword_100041B08, &protocol descriptor for Dispatcher);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_100041B00);
    }
  }
}

uint64_t sub_100004308(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_100004364(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004430(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100004988(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000493C(v11);
  return v7;
}

unint64_t sub_100004430(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000453C(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

void *sub_10000453C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100004588(a1, a2);
  sub_1000046B8(&off_10003D950);
  return v3;
}

void *sub_100004588(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1000047A4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000047A4(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000046B8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100004830(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000047A4(uint64_t a1, uint64_t a2)
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

  sub_100004B10(0, &qword_100041B10, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004830(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004B10(0, &qword_100041B10, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_10000493C(void *a1)
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

uint64_t sub_100004988(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1000049E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_100041B20)
  {
    type metadata accessor for DispatchWorkItemFlags();
    v3 = type metadata accessor for Array();
    if (!v4)
    {
      atomic_store(v3, &qword_100041B20);
    }
  }
}

uint64_t sub_100004A78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100004A98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_100004B10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100004B68()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![objc_opt_self() isHealthDataAvailable])
  {
    return 1;
  }

  v6 = v0[4];
  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
  if (v18)
  {
    sub_1000030A0(&v17, v19);
    sub_100004E2C(v19);
    sub_10000493C(v19);
    return 1;
  }

  sub_100007B00(&v17, sub_100007B60);
  static Logger.daemon.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v17 = v16;
    *v10 = 136315394;
    v19[0] = v1;
    swift_getMetatypeMetadata();
    v12 = String.init<A>(describing:)();
    v14 = sub_100004364(v12, v13, &v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v6;
    *v11 = v6;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%s] oracle doesn't have a store, deferring: %@", v10, 0x16u);
    sub_100007B00(v11, sub_100007B94);

    sub_10000493C(v16);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_100004E2C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for GenerationQueue.EnqueueResult();
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = __chkstk_darwin(v5);
  v61 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v54 - v8;
  v62 = type metadata accessor for GenerationWorkRequest();
  v68 = *(v62 - 8);
  __chkstk_darwin(v62);
  v67 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v57 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v54 - v14;
  static Logger.daemon.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v65 = v11;
  v66 = v10;
  v56 = v4;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v70 = v20;
    *v19 = 136315138;
    *&v69[0] = v4;
    swift_getMetatypeMetadata();
    v21 = String.init<A>(describing:)();
    v23 = a1;
    v24 = v2;
    v25 = sub_100004364(v21, v22, &v70);

    *(v19 + 4) = v25;
    v2 = v24;
    a1 = v23;
    v26 = v17;
    v27 = v56;
    _os_log_impl(&_mh_execute_header, v16, v26, "[%s]: DAS background generation starting", v19, 0xCu);
    sub_10000493C(v20);

    v55 = *(v65 + 8);
    v55(v15, v66);
  }

  else
  {

    v55 = *(v11 + 8);
    v55(v15, v10);
    v27 = v4;
  }

  v28 = [objc_allocWithZone(HKHealthStore) init];
  type metadata accessor for PinnedContentManager();
  v29 = v28;
  v30 = PinnedContentManager.__allocating_init(healthStore:domain:)();
  v31 = v2[8];
  sub_100007A94(a1, v69);
  v32 = swift_allocObject();
  v32[2] = v29;
  sub_1000030A0(v69, (v32 + 3));
  v32[8] = v30;
  v32[9] = v2;
  v32[10] = v31;
  sub_100007A94(a1, v69);
  v33 = swift_allocObject();
  v33[2] = v2;
  sub_1000030A0(v69, (v33 + 3));
  v33[8] = v31;
  v33[9] = v27;
  v34 = swift_allocObject();
  *(v34 + 16) = v27;
  swift_retain_n();
  swift_retain_n();
  v35 = v29;
  v58 = v30;
  v59 = v35;

  v36 = static GenerationPhase.allCases.getter();
  sub_100029E2C(v36);

  v37 = v67;
  GenerationWorkRequest.init(environment:pluginIdentifierSetToRun:generationPhases:commitUrgentTransaction:makeGenerationWorkBlock:completionBlock:notStartedCancellationBlock:)();
  v38 = v60;
  dispatch thunk of GenerationQueue.enqueue(_:)();
  v40 = v63;
  v39 = v64;
  v41 = v61;
  (v63[4].isa)(v61, v38, v64);
  LODWORD(v38) = (v40[11].isa)(v41, v39);
  LODWORD(v31) = enum case for GenerationQueue.EnqueueResult.dropped(_:);
  (v40[1].isa)(v41, v39);
  if (v38 == v31)
  {
  }

  else
  {
    v64 = v34;
    v42 = v57;
    static Logger.daemon.getter();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v63 = v43;
      v46 = v45;
      v47 = swift_slowAlloc();
      v70 = v47;
      *v46 = 136446210;
      *&v69[0] = v56;
      swift_getMetatypeMetadata();
      v48 = String.init<A>(describing:)();
      v50 = sub_100004364(v48, v49, &v70);

      *(v46 + 4) = v50;
      v51 = v63;
      _os_log_impl(&_mh_execute_header, v63, v44, "[%{public}s]: DAS background generation request dropped", v46, 0xCu);
      sub_10000493C(v47);

      v52 = v57;
    }

    else
    {

      v52 = v42;
    }

    v55(v52, v66);
  }

  return (*(v68 + 8))(v37, v62);
}

uint64_t sub_100005570(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v88 = a6;
  v87 = a3;
  v90 = a2;
  sub_1000073D4(0, &qword_100041C78, sub_100007538, &type metadata accessor for GeneratorPipelineProviderWrapper);
  v94 = v9;
  v74 = *(v9 - 1);
  __chkstk_darwin(v9);
  v75 = &v72 - v10;
  v98 = type metadata accessor for PipelineProviderWrappers();
  v11 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000073D4(0, &qword_100041CB0, sub_100007720, &type metadata accessor for GeneratorPipelineProviderWrapper);
  v14 = *(v13 - 8);
  v95 = v13;
  v96 = v14;
  __chkstk_darwin(v13);
  v76 = &v72 - v15;
  v80 = type metadata accessor for DispatchTimeInterval();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = (&v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000078E0(0);
  __chkstk_darwin(v17 - 8);
  v85 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for HKProfileStore.ProfileIdentifiersPublisher();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000798C(0);
  v92 = v23;
  v93 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a5 + 48);
  v84 = *(a5 + 56);
  v27 = *(v26 + 24);
  v101[3] = type metadata accessor for PinnedContentManager();
  v101[4] = &protocol witness table for PinnedContentManager;
  v101[0] = a4;

  v28 = v87;

  v89 = a1;
  v29 = GenerationWorkRequest.pluginIdentifierSetToRun.getter();
  sub_1000213EC(v29);

  v30 = type metadata accessor for BundleFeedItemGenerationPluginInfo();
  v31 = sub_1000076D8(&qword_100041D10, &type metadata accessor for BundleFeedItemGenerationPluginInfo, &protocol conformance descriptor for BundleFeedItemGenerationPluginInfo);
  v83 = v30;
  v81 = v31;
  v32 = Array<A>.makeGeneratorPipelineProviderWrappers()();

  v33 = objc_allocWithZone(HKProfileStore);
  v34 = [v33 initWithHealthStore:v90];
  HKProfileStore.profileIdentifiersPublisher.getter();
  sub_1000076D8(&qword_100041D08, &type metadata accessor for HKProfileStore.ProfileIdentifiersPublisher, &protocol conformance descriptor for HKProfileStore.ProfileIdentifiersPublisher);
  Publisher<>.mapToSourceProfiles(includeAgnostic:)();
  (*(v20 + 8))(v22, v19);
  sub_1000076D8(&qword_100041D18, sub_10000798C, &protocol conformance descriptor for Publishers.Map<A, B>);
  v35 = v92;
  v77 = Publisher.eraseToAnyPublisher()();

  (*(v93 + 8))(v25, v35);
  sub_100007A94(v28, &v100);
  v36 = *(v32 + 16);
  v86 = v27;
  v82 = v32;
  if (v36)
  {
    v99[0] = _swiftEmptyArrayStorage;
    sub_10001F1D8(0, v36, 0);
    v37 = v99[0];
    v73 = v11;
    v93 = *(v11 + 16);
    v38 = v32 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v92 = *(v11 + 72);
    v39 = (v11 + 8);
    v40 = v74;
    v91 = (v74 + 32);
    v41 = v75;
    do
    {
      v43 = v97;
      v42 = v98;
      (v93)(v97, v38, v98);
      PipelineProviderWrappers.feedItem.getter();
      (*v39)(v43, v42);
      v99[0] = v37;
      v45 = *(v37 + 16);
      v44 = *(v37 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_10001F1D8((v44 > 1), v45 + 1, 1);
        v37 = v99[0];
      }

      *(v37 + 16) = v45 + 1;
      (*(v40 + 32))(v37 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v45, v41, v94);
      v38 += v92;
      --v36;
    }

    while (v36);
    v11 = v73;
    v28 = v87;
  }

  type metadata accessor for FeedItemGeneratorPipelineManager();
  sub_100007A94(v101, v99);

  v46 = v90;
  v92 = GeneratorPipelineManager.__allocating_init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:)();
  type metadata accessor for BundleFeedItemPluginBundleProvider();
  static BundleFeedItemPluginBundleProvider.sharedInstance.getter();
  v47 = dispatch thunk of PluginBundleProvider.availablePluginsMap.getter();

  sub_10001192C(v47);

  v48 = Array<A>.makeGeneratorPipelineProviderWrappers()();

  if ((GenerationWorkRequest.commitUrgentTransaction.getter() & 1) == 0)
  {
    v48 = v82;
  }

  sub_100007A94(v28, &v100);
  v49 = v48[2];
  if (v49)
  {
    v91 = v46;
    v99[0] = _swiftEmptyArrayStorage;
    sub_10001F188(0, v49, 0);
    v50 = v99[0];
    v52 = *(v11 + 16);
    v51 = v11 + 16;
    v94 = v52;
    v53 = (*(v51 + 64) + 32) & ~*(v51 + 64);
    v90 = v48;
    v54 = v48 + v53;
    v93 = *(v51 + 56);
    v55 = (v51 - 8);
    v56 = v76;
    do
    {
      v57 = v97;
      v58 = v98;
      v59 = v51;
      v94(v97, v54, v98);
      PipelineProviderWrappers.sharableModel.getter();
      (*v55)(v57, v58);
      v99[0] = v50;
      v61 = *(v50 + 16);
      v60 = *(v50 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_10001F188((v60 > 1), v61 + 1, 1);
        v50 = v99[0];
      }

      *(v50 + 16) = v61 + 1;
      (*(v96 + 32))(v50 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v61, v56, v95);
      v54 += v93;
      --v49;
      v51 = v59;
    }

    while (v49);

    v46 = v91;
  }

  else
  {
  }

  type metadata accessor for SharableModelGeneratorPipelineManager();
  sub_100007A94(v101, v99);

  v62 = v46;
  GeneratorPipelineManager.__allocating_init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:)();
  dispatch thunk of CountryOracle.currentCountry()();
  v63 = GenerationWorkRequest.generationPhases.getter();
  v64 = v63;
  v65 = *(v63 + 16);
  if (!v65)
  {
    goto LABEL_19;
  }

  v66 = sub_1000259FC(*(v63 + 16), 0);
  v67 = *(type metadata accessor for GenerationPhase() - 8);
  v68 = sub_1000297CC(&v100, &v66[(*(v67 + 80) + 32) & ~*(v67 + 80)], v65, v64);
  sub_100007AF8(v100);
  if (v68 != v65)
  {
    __break(1u);
LABEL_19:
  }

  type metadata accessor for GeneratorPipelineGenerationOperation();
  GenerationWorkRequest.commitUrgentTransaction.getter();
  v69 = v79;
  *v79 = 150;
  (*(v78 + 104))(v69, enum case for DispatchTimeInterval.seconds(_:), v80);
  v70 = GeneratorPipelineGenerationOperation.__allocating_init(feedItemManager:sharableModelManager:sourceProfiles:country:generationPhases:commitAsUrgent:isLaunchGeneration:timeoutInterval:)();

  sub_1000076D8(&qword_100041D20, &type metadata accessor for GeneratorPipelineGenerationOperation, &protocol conformance descriptor for GeneratorPipelineGenerationOperation);
  sub_10000493C(v101);
  return v70;
}

uint64_t sub_100006138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007100(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  sub_100007134(v13);
  static Logger.daemon.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = a3;
    v18 = v17;
    v28 = swift_slowAlloc();
    v31 = v28;
    *&v32[0] = a4;
    *v18 = 136446210;
    swift_getMetatypeMetadata();
    v19 = String.init<A>(describing:)();
    v29 = v7;
    v21 = a4;
    v22 = a2;
    v23 = sub_100004364(v19, v20, &v31);

    *(v18 + 4) = v23;
    a2 = v22;
    a4 = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}s]: DAS background generation completed, populating feed", v18, 0xCu);
    sub_10000493C(v28);

    a3 = v30;

    (*(v8 + 8))(v10, v29);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v24 = static Feed.Kind.relevanceRankedFeeds.getter();
  sub_100007A94(a2, v32);
  v25 = swift_allocObject();
  sub_1000030A0(v32, v25 + 16);
  *(v25 + 56) = a3;
  *(v25 + 64) = a4;

  sub_1000238C4(v24, sub_100007364, v25);
}

uint64_t sub_10000643C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19[1] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20 = v14;
    v21[0] = a3;
    *v13 = 136446210;
    swift_getMetatypeMetadata();
    v15 = String.init<A>(describing:)();
    v17 = sub_100004364(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s]: DAS feed population completed", v13, 0xCu);
    sub_10000493C(v14);
  }

  (*(v7 + 8))(v9, v6);
  sub_100007A94(a1, v21);
  sub_100007370();
  type metadata accessor for DaemonHealthExperienceStore();
  if (swift_dynamicCast())
  {
    dispatch thunk of DaemonHealthExperienceStore.cleanUpManagedObjectContext()();
  }

  return dispatch thunk of OpenTransactionBuilderManager.clearAllCachedTransactionBuilders()();
}

uint64_t sub_100006650(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    v14[1] = a1;
    *v8 = 136446210;
    swift_getMetatypeMetadata();
    v10 = String.init<A>(describing:)();
    v12 = sub_100004364(v10, v11, v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s]: DAS background generation cancelled before starting", v8, 0xCu);
    sub_10000493C(v9);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100006800()
{
  type metadata accessor for DaemonBackgroundGenerationActivity();
  DebuggingResponder.deregisterForDebuggingRequests()();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_10000688C()
{
  sub_100007100(0);
  __chkstk_darwin(v0);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000073D4(0, &qword_100041C68, sub_100007100, &type metadata accessor for UserDefault);
  v4 = v3;
  sub_1000074D4(v3, qword_100041B48);
  sub_100007438(v4, qword_100041B48);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100004210(0, &qword_100041C70, NSUserDefaults_ptr);
  static NSUserDefaults.healthAppShared.getter();
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  return UserDefault.init(key:userDefaults:fallbackValue:isAppleInternalOnly:)();
}

uint64_t sub_100006A00()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    v14[1] = v1;
    *v8 = 136315138;
    swift_getMetatypeMetadata();
    v10 = String.init<A>(describing:)();
    v12 = sub_100004364(v10, v11, v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%s]: debuggingInfoRequested()", v8, 0xCu);
    sub_10000493C(v9);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100006CBC()
{
  _StringGuts.grow(_:)(39);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  sub_100006E48();
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._object = 0x80000001000325F0;
  v4._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v4);
  v5 = *(v0 + 32);
  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 62;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return 0;
}

unint64_t sub_100006E48()
{
  result = qword_100041C50;
  if (!qword_100041C50)
  {
    type metadata accessor for DaemonBackgroundGenerationActivity();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_100041C50);
  }

  return result;
}

void *sub_100006EB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[2] = 0xD00000000000002ALL;
  v6[3] = 0x8000000100032610;
  v6[4] = a1;
  v6[5] = a3;
  v6[6] = a2;
  v6[7] = a4;
  v6[8] = a5;

  v17 = a1;

  static Logger.daemon.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26[0] = v21;
    v26[1] = v12;
    *v20 = 136315138;
    swift_getMetatypeMetadata();
    v22 = String.init<A>(describing:)();
    v24 = sub_100004364(v22, v23, v26);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "[%s]: init()", v20, 0xCu);
    sub_10000493C(v21);
  }

  (*(v14 + 8))(v16, v13);
  type metadata accessor for DaemonBackgroundGenerationActivity();
  DebuggingResponder.registerForDebuggingRequests()();
  return v6;
}

uint64_t sub_100007134(uint64_t a1)
{
  sub_1000073D4(0, &qword_100041C68, sub_100007100, &type metadata accessor for UserDefault);
  v3 = v2;
  v4 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  sub_100007100(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100041AC0 != -1)
  {
    swift_once();
  }

  v10 = sub_100007438(v3, qword_100041B48);
  sub_100007470(a1, v9);
  swift_beginAccess();
  UserDefault.wrappedValue.setter();
  swift_endAccess();
  type metadata accessor for AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider();
  static AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider.shared.getter();
  (*(v4 + 16))(v6, v10, v3);
  UserDefault.wrappedValue.getter();
  (*(v4 + 8))(v6, v3);
  dispatch thunk of AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider.dateLastPredictiveGenerationRanForAnalytics.setter();

  return sub_100007B00(a1, sub_100007100);
}

unint64_t sub_100007370()
{
  result = qword_100041C60;
  if (!qword_100041C60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100041C60);
  }

  return result;
}

void sub_1000073D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100007438(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100007470(uint64_t a1, uint64_t a2)
{
  sub_100007100(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1000074D4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_100007538(uint64_t a1)
{
  if (!qword_100041C80)
  {
    sub_1000075CC(255);
    sub_1000076D8(&qword_100041CA8, sub_1000075CC, &protocol conformance descriptor for AnyPipeline<A>);
    v1 = type metadata accessor for AnyPipelineProvider();
    if (!v2)
    {
      atomic_store(v1, &qword_100041C80);
    }
  }
}

void sub_1000075CC(uint64_t a1)
{
  if (!qword_100041C88)
  {
    sub_100007660(255);
    sub_1000076D8(&qword_100041CA0, sub_100007660, &protocol conformance descriptor for AnyGenerator<A, B>);
    v1 = type metadata accessor for AnyPipeline();
    if (!v2)
    {
      atomic_store(v1, &qword_100041C88);
    }
  }
}

void sub_100007660(uint64_t a1)
{
  if (!qword_100041C90)
  {
    sub_100007A48(255, &qword_100041C98, &type metadata for FeedItemContextChange);
    v1 = type metadata accessor for AnyGenerator();
    if (!v2)
    {
      atomic_store(v1, &qword_100041C90);
    }
  }
}

uint64_t sub_1000076D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100007720(uint64_t a1)
{
  if (!qword_100041CB8)
  {
    sub_1000077B4(255);
    sub_1000076D8(&qword_100041CE0, sub_1000077B4, &protocol conformance descriptor for AnyPipeline<A>);
    v1 = type metadata accessor for AnyPipelineProvider();
    if (!v2)
    {
      atomic_store(v1, &qword_100041CB8);
    }
  }
}

void sub_1000077B4(uint64_t a1)
{
  if (!qword_100041CC0)
  {
    sub_100007848(255);
    sub_1000076D8(&qword_100041CD8, sub_100007848, &protocol conformance descriptor for AnyGenerator<A, B>);
    v1 = type metadata accessor for AnyPipeline();
    if (!v2)
    {
      atomic_store(v1, &qword_100041CC0);
    }
  }
}

void sub_100007848(uint64_t a1)
{
  if (!qword_100041CC8)
  {
    sub_1000073D4(255, &qword_100041CD0, &type metadata accessor for PluginSharableModelChange, &type metadata accessor for Array);
    v1 = type metadata accessor for AnyGenerator();
    if (!v2)
    {
      atomic_store(v1, &qword_100041CC8);
    }
  }
}

void sub_1000078E0(uint64_t a1)
{
  if (!qword_100041CE8)
  {
    type metadata accessor for CountryRetrievalRecord();
    type metadata accessor for CountryRetrievalError();
    sub_1000076D8(&qword_100041CF0, &type metadata accessor for CountryRetrievalError, &protocol conformance descriptor for CountryRetrievalError);
    v1 = type metadata accessor for Result();
    if (!v2)
    {
      atomic_store(v1, &qword_100041CE8);
    }
  }
}

void sub_10000798C(uint64_t a1)
{
  if (!qword_100041CF8)
  {
    type metadata accessor for HKProfileStore.ProfileIdentifiersPublisher();
    sub_100007A48(255, &qword_100041D00, &type metadata for SourceProfile);
    sub_1000076D8(&qword_100041D08, &type metadata accessor for HKProfileStore.ProfileIdentifiersPublisher, &protocol conformance descriptor for HKProfileStore.ProfileIdentifiersPublisher);
    v1 = type metadata accessor for Publishers.Map();
    if (!v2)
    {
      atomic_store(v1, &qword_100041CF8);
    }
  }
}

void sub_100007A48(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100007A94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007B00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100007B94(uint64_t a1)
{
  if (!qword_100041D30)
  {
    sub_100004210(255, &qword_100041D38, NSObject_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100041D30);
    }
  }
}

char *sub_100007BFC(void *a1, uint64_t a2)
{
  v3 = v2;
  v92 = a2;
  v85 = a1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v87 = *(v4 - 8);
  v88 = v4;
  __chkstk_darwin(v4);
  v86 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HKProfileStore.ProfileIdentifiersPublisher();
  v7 = *(v6 - 8);
  v81 = v6;
  v82 = v7;
  __chkstk_darwin(v6);
  v79 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000798C(0);
  v10 = *(v9 - 8);
  v83 = v9;
  v84 = v10;
  __chkstk_darwin(v9);
  v80 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76[0] = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v13);
  v14 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v14 - 8);
  v15 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_signalDebuggingResponderListener;
  type metadata accessor for USR1SignalDebuggingResponderListener();
  swift_allocObject();
  *&v2[v15] = USR1SignalDebuggingResponderListener.init()();
  v16 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_longRunningProcessOracle;
  v91 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_longRunningProcessOracle;
  type metadata accessor for DaemonLongRunningProcessOracle();
  v17 = swift_allocObject();
  v17[2] = [objc_allocWithZone(HKHealthStore) init];
  v76[1] = type metadata accessor for HealthAppNotificationManager();
  v17[3] = HealthAppNotificationManager.__allocating_init()();
  sub_10000A9A8(0, &qword_100041E70, &qword_100041E78, &protocol descriptor for PinnedContentManaging, &type metadata accessor for TransactionManagedCache);
  swift_allocObject();
  v17[4] = TransactionManagedCache.init()();
  type metadata accessor for GenerationQueue();
  swift_allocObject();
  v17[5] = GenerationQueue.init()();
  DebuggingResponder.registerForDebuggingRequests()();
  *&v2[v16] = v17;
  v18 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_countryOracle;
  v90 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_countryOracle;
  type metadata accessor for CountryOracle();
  swift_allocObject();
  *&v2[v18] = CountryOracle.init(mobileCountryCodeManagerProvider:)();
  v19 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthStore;
  *&v2[v19] = [objc_allocWithZone(HKHealthStore) init];
  v20 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_targetQueue;
  sub_100004210(0, &qword_100041AD0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000AB20(&qword_100041E80, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000A8BC(0, &qword_100041E88, &type metadata accessor for OS_dispatch_queue.Attributes, &type metadata accessor for Array);
  sub_10000AA98();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v77 + 104))(v76[0], enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v78);
  *&v2[v20] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v21 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_listener;
  v22 = objc_allocWithZone(NSXPCListener);
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 initWithMachServiceName:v23];

  *&v3[v21] = v24;
  *&v3[OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_localeChangeObserver] = 0;
  v25 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_notificationManager;
  *&v3[v25] = HealthAppNotificationManager.__allocating_init()();
  v26 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthExperienceStoreOracle;
  v27 = v85;
  *&v3[OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthExperienceStoreOracle] = v85;
  v28 = *&v3[v19];
  v29 = objc_allocWithZone(HKProfileStore);
  v85 = v27;
  v30 = [v29 initWithHealthStore:v28];
  *&v3[OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_profileStore] = v30;
  v31 = v30;
  v32 = v79;
  HKProfileStore.profileIdentifiersPublisher.getter();

  sub_10000AB20(&qword_100041D08, 255, &type metadata accessor for HKProfileStore.ProfileIdentifiersPublisher, &protocol conformance descriptor for HKProfileStore.ProfileIdentifiersPublisher);
  v33 = v80;
  v34 = v81;
  Publisher<>.mapToSourceProfiles(includeAgnostic:)();
  (*(v82 + 8))(v32, v34);
  sub_10000AB20(&qword_100041D18, 255, sub_10000798C, &protocol conformance descriptor for Publishers.Map<A, B>);
  v35 = v83;
  v36 = Publisher.eraseToAnyPublisher()();
  (*(v84 + 8))(v33, v35);
  v37 = *&v3[v26];
  v38 = *&v3[v19];
  v39 = *&v3[v20];
  type metadata accessor for FeedPopulationManagerOracle();
  swift_allocObject();
  v40 = v37;
  v41 = v38;

  v42 = v39;
  v43 = sub_100029B6C(v40, v41, v36, v42);

  v84 = v36;

  v44 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_feedPopulationManagerOracle;
  *&v3[OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_feedPopulationManagerOracle] = v43;
  v45 = *&v3[v26];
  v46 = *&v3[v91];
  v47 = *&v3[v90];
  objc_allocWithZone(type metadata accessor for DaemonListenerDelegate());

  v48 = v45;

  v49 = v92;

  *&v3[OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthPluginHostListener] = sub_10002C824(v48, v43, v46, v47, v49);
  v50 = v86;
  static Logger.daemon.getter();
  v51 = v50;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v93 = v55;
    *v54 = 136315138;
    aBlock[0] = ObjectType;
    swift_getMetatypeMetadata();
    v56 = String.init<A>(describing:)();
    v58 = sub_100004364(v56, v57, &v93);

    *(v54 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v52, v53, "[%s]: init()", v54, 0xCu);
    sub_10000493C(v55);
  }

  (*(v87 + 8))(v51, v88);
  v59 = *&v3[v26];
  v60 = *&v3[v91];
  v61 = *&v3[v44];
  v62 = *&v3[v90];
  type metadata accessor for DaemonBackgroundGenerationActivity();
  swift_allocObject();
  v63 = v92;

  v64 = v59;

  v65 = sub_100006EB8(v64, v60, v61, v62, v63);

  *&v3[OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_backgroundGenerationActivity] = v65;
  v66 = type metadata accessor for DaemonLifecycleManager();
  v95.receiver = v3;
  v95.super_class = v66;
  v67 = objc_msgSendSuper2(&v95, "init");
  DebuggingResponder.registerForDebuggingRequests()();
  v68 = [objc_opt_self() defaultCenter];
  v69 = swift_allocObject();
  *(v69 + 16) = ObjectType;
  aBlock[4] = sub_10000AB68;
  aBlock[5] = v69;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000088FC;
  aBlock[3] = &unk_10003DC58;
  v70 = _Block_copy(aBlock);

  v71 = [v68 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:0 usingBlock:v70];
  _Block_release(v70);

  *&v67[OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_localeChangeObserver] = v71;
  swift_unknownObjectRelease();
  v72 = *&v67[OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthExperienceStoreOracle];
  v73 = v67;
  v74 = v72;
  dispatch thunk of HealthExperienceStoreOracle.register(observer:)();

  return v73;
}

void sub_100008764(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14[0] = v10;
    v14[1] = a2;
    *v9 = 136315138;
    swift_getMetatypeMetadata();
    v11 = String.init<A>(describing:)();
    v13 = sub_100004364(v11, v12, v14);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s]: shutting down due to a locale change notification", v9, 0xCu);
    sub_10000493C(v10);
  }

  (*(v4 + 8))(v6, v3);
  exit(0);
}

uint64_t sub_1000088FC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

id sub_1000089F0(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_localeChangeObserver];
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain_n();
    v4 = [v3 defaultCenter];
    [v4 removeObserver:v2];
    swift_unknownObjectRelease_n();
  }

  v5 = type metadata accessor for DaemonLifecycleManager();
  DebuggingResponder.deregisterForDebuggingRequests()();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v7 = result;
    [result removeObserver:v1];

    v8.receiver = v1;
    v8.super_class = v5;
    return objc_msgSendSuper2(&v8, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100008C6C()
{
  _StringGuts.grow(_:)(110);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  swift_getObjectType();
  sub_10000AA54();
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v24 = v0;
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 0x656E657473696C20;
  v4._object = 0xEB00000000203A72;
  String.append(_:)(v4);
  v5 = *(v0 + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_listener);
  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0xD00000000000001BLL;
  v11._object = 0x80000001000327C0;
  String.append(_:)(v11);
  v12 = *(v24 + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthPluginHostListener);
  v13 = [v12 description];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._object = 0x80000001000327E0;
  v18._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v18);
  v19._countAndFlagsBits = sub_10002541C();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0xD000000000000020;
  v20._object = 0x8000000100032800;
  String.append(_:)(v20);
  v21._countAndFlagsBits = sub_100006CBC();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 62;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return 0;
}

uint64_t sub_100008ED0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  static Logger.daemon.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v31 = ObjectType;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v3;
    v15 = v4;
    v16 = v14;
    v32 = v14;
    v33 = ObjectType;
    *v13 = 136315138;
    swift_getMetatypeMetadata();
    v17 = String.init<A>(describing:)();
    v19 = sub_100004364(v17, v18, &v32);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%s] startXPCListener() Starting", v13, 0xCu);
    sub_10000493C(v16);
    v4 = v15;
    v3 = v30;
  }

  v20 = *(v4 + 8);
  v20(v9, v3);
  v21 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_listener;
  [*(v1 + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_listener) setDelegate:*(v1 + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthPluginHostListener)];
  [*(v1 + v21) resume];
  static Logger.daemon.getter();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32 = v25;
    *v24 = 136315138;
    v33 = v31;
    swift_getMetatypeMetadata();
    v26 = String.init<A>(describing:)();
    v28 = sub_100004364(v26, v27, &v32);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "[%s] startXPCListener() Waiting for incoming connections", v24, 0xCu);
    sub_10000493C(v25);
  }

  return (v20)(v7, v3);
}

uint64_t sub_1000091F0()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v30 - v6;
  static Logger.daemon.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v5;
    v31 = v1;
    v12 = v2;
    v13 = v11;
    *&v32 = v11;
    *v10 = 136315138;
    v34[0] = ObjectType;
    swift_getMetatypeMetadata();
    v14 = String.init<A>(describing:)();
    v16 = ObjectType;
    v17 = sub_100004364(v14, v15, &v32);

    *(v10 + 4) = v17;
    ObjectType = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%s] enqueueStartupOperations()", v10, 0xCu);
    sub_10000493C(v13);
    v2 = v12;
    v5 = v30;
    v1 = v31;
  }

  v18 = *(v2 + 8);
  v18(v7, v1);
  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
  if (v33)
  {
    sub_1000030A0(&v32, v34);
    sub_100004210(0, &qword_100041E60, NSOperationQueue_ptr);
    v19 = static NSOperationQueue.utility.getter();
    sub_10000AA10(v34, v34[3]);
    dispatch thunk of HealthExperienceStore.sharedBackgroundContext.getter();
    v20 = objc_allocWithZone(type metadata accessor for HealthExperienceStoreCleanupOperation());
    v21 = HealthExperienceStoreCleanupOperation.init(context:)();
    [v19 addOperation:v21];

    return sub_10000493C(v34);
  }

  else
  {
    sub_10000A920(&v32);
    static Logger.daemon.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v32 = v26;
      *v25 = 136315138;
      v34[0] = ObjectType;
      swift_getMetatypeMetadata();
      v27 = String.init<A>(describing:)();
      v29 = sub_100004364(v27, v28, &v32);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%s]: enqueueCleanOperations() oracle doesn't have a store, not running", v25, 0xCu);
      sub_10000493C(v26);
    }

    return (v18)(v5, v1);
  }
}

uint64_t sub_1000095A4(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*a1)
  {
    static Logger.general.getter();
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v11 = 136315394;
      v12 = _typeName(_:qualified:)();
      v14 = sub_100004364(v12, v13, &v19);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2082;
      v18 = v8;
      swift_errorRetain();
      sub_100004308(0, &qword_100041AD8, &protocol descriptor for Error);
      v15 = String.init<A>(describing:)();
      v17 = sub_100004364(v15, v16, &v19);

      *(v11 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s Could not remove plugin feed item notifications. %{public}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_1000097CC(uint64_t *a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100004364(v9, v10, &v17);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    type metadata accessor for PluginFeedItem.NotificationIdentifier();
    v12 = Array.description.getter();
    v14 = sub_100004364(v12, v13, &v17);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Removed all plugin feed item notification identifiers: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000099D4()
{
  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
  if (!v3)
  {
    return sub_10000A920(v2);
  }

  sub_100004308(0, &qword_100041C60, &protocol descriptor for HealthExperienceStore);
  type metadata accessor for DiskHealthExperienceStore();
  result = swift_dynamicCast();
  if (result)
  {
    sub_10000AB20(&qword_100041E58, v1, type metadata accessor for DaemonLifecycleManager, &unk_100031C40);
    dispatch thunk of DiskHealthExperienceStore.register(observer:)();
  }

  return result;
}

uint64_t sub_100009B20(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_10000A8BC(0, &qword_100041E48, &type metadata accessor for URL, &type metadata accessor for Optional);
  __chkstk_darwin(v3 - 8);
  v5 = &v45 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v45 - v12;
  if (v11)
  {
    v14 = sub_10000A0B0(v11);
    if (v14)
    {
      v15 = v14;
      v16 = v14 & 0xFFFFFFFFFFFFFF8;
      if (v14 >> 62)
      {
        goto LABEL_34;
      }

      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_29;
      }

      while (1)
      {
        v49 = v13;
        v50 = v16;
        v45 = ObjectType;
        v46 = v7;
        v47 = v6;
        v48 = v5;
        v18 = 0;
        v7 = kHKHealthAppBundleIdentifier;
        v6 = v15 & 0xC000000000000001;
        while (1)
        {
          if (v6)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v18 >= *(v50 + 16))
            {
              goto LABEL_33;
            }

            v19 = *(v15 + 8 * v18 + 32);
          }

          ObjectType = v19;
          v5 = (v18 + 1);
          if (__OFADD__(v18, 1))
          {
            break;
          }

          v20 = [v19 bundleIdentifier];
          if (!v20)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_7:

            goto LABEL_8;
          }

          v21 = v20;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v22;

          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (!v16)
          {
            goto LABEL_7;
          }

          if (v13 == v23 && v16 == v24)
          {

LABEL_26:
            v34 = [objc_opt_self() sharedBehavior];
            if (v34)
            {
              v35 = v34;
              v36 = [v34 healthAppHiddenOrNotInstalled];

              if (!v36)
              {

                goto LABEL_29;
              }
            }

            else
            {
              __break(1u);
            }

            static Logger.daemon.getter();
            v37 = Logger.logObject.getter();
            v38 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              v40 = swift_slowAlloc();
              v52 = v40;
              *v39 = 136315138;
              v41 = sub_10000A1BC(v45);
              v43 = sub_100004364(v41, v42, &v52);

              *(v39 + 4) = v43;
              _os_log_impl(&_mh_execute_header, v37, v38, "[%s]: health app is not installed. wiping and exiting.", v39, 0xCu);
              sub_10000493C(v40);
            }

            (*(v46 + 8))(v49, v47);
            v44 = type metadata accessor for URL();
            (*(*(v44 - 8) + 56))(v48, 1, 1, v44);
            type metadata accessor for DiskHealthExperienceStore();
            swift_allocObject();
            DiskHealthExperienceStore.init(overrideStoreLocation:observeExternalChanges:)();
            dispatch thunk of DiskHealthExperienceStore.deleteAllObjects()();

            exit(0);
          }

          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v13)
          {
            goto LABEL_26;
          }

LABEL_8:

          ++v18;
          if (v5 == v17)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v17 = _CocoaArrayWrapper.endIndex.getter();
        if (!v17)
        {
LABEL_29:
        }
      }
    }
  }

  static Logger.daemon.getter();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v51 = v29;
    v52 = ObjectType;
    *v28 = 136315138;
    swift_getMetatypeMetadata();
    v30 = String.init<A>(describing:)();
    v32 = sub_100004364(v30, v31, &v51);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "[%s]: unable to cast to uninstalled apps to LSApplicationProxy", v28, 0xCu);
    sub_10000493C(v29);
  }

  return (*(v7 + 8))(v10, v6);
}

void *sub_10000A0B0(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100004988(i, v5);
    sub_100004210(0, &qword_100041E50, LSApplicationProxy_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_10000A260()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    v13[1] = ObjectType;
    *v7 = 136315138;
    swift_getMetatypeMetadata();
    v9 = String.init<A>(describing:)();
    v11 = sub_100004364(v9, v10, v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s]: debuggingInfoRequested()", v7, 0xCu);
    sub_10000493C(v8);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10000A430(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

id sub_10000A51C()
{
  v0 = HKPreferredRegulatoryDomainProvider();

  return v0;
}

uint64_t sub_10000A548()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v16 = v1;
    v10 = v9;
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100004364(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s Removing all plugin feed item notifications", v10, 0xCu);
    sub_10000493C(v11);
  }

  (*(v4 + 8))(v6, v3);
  v17 = dispatch thunk of HealthAppNotificationManager.removeAllPluginFeedItemNotifications()();
  *(swift_allocObject() + 16) = ObjectType;
  *(swift_allocObject() + 16) = ObjectType;
  sub_10000A80C(0);
  sub_10000AB20(&qword_100041E40, 255, sub_10000A80C, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.retainingSink(receiveCompletion:receiveValue:)();
}

void sub_10000A80C(uint64_t a1)
{
  if (!qword_100041E30)
  {
    sub_10000A8BC(255, &qword_100041E38, &type metadata accessor for PluginFeedItem.NotificationIdentifier, &type metadata accessor for Array);
    sub_100004308(255, &qword_100041AD8, &protocol descriptor for Error);
    v1 = type metadata accessor for AnyPublisher();
    if (!v2)
    {
      atomic_store(v1, &qword_100041E30);
    }
  }
}

void sub_10000A8BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10000A920(uint64_t a1)
{
  sub_10000A9A8(0, &qword_100041D28, &qword_100041C60, &protocol descriptor for HealthExperienceStore, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000A9A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100004308(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *sub_10000AA10(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000AA54()
{
  result = qword_100041E68;
  if (!qword_100041E68)
  {
    type metadata accessor for DaemonLifecycleManager();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_100041E68);
  }

  return result;
}

unint64_t sub_10000AA98()
{
  result = qword_100041E90;
  if (!qword_100041E90)
  {
    sub_10000A8BC(255, &qword_100041E88, &type metadata accessor for OS_dispatch_queue.Attributes, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041E90);
  }

  return result;
}

uint64_t sub_10000AB20(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000AB70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10000AB88()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  static Logger.daemon.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v40 = v2;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v3;
    v15 = v14;
    v41[0] = v14;
    *v13 = 136315138;
    v42 = v2;
    swift_getMetatypeMetadata();
    v16 = String.init<A>(describing:)();
    v18 = sub_100004364(v16, v17, v41);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%s] start() Starting", v13, 0xCu);
    sub_10000493C(v15);
    v3 = v39;
  }

  v19 = *(v4 + 8);
  v19(v9, v3);
  v20 = v1[11];
  v21 = objc_autoreleasePoolPush();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v23 = result;
    [result addObserver:v20];

    sub_100008ED0();
    sub_1000091F0();
    objc_autoreleasePoolPop(v21);
    sub_10000BD98();
    v24 = swift_allocObject();
    v25 = v40;
    *(v24 + 16) = v1;
    *(v24 + 24) = v25;

    OrchestrationDirector.start(completion:)();

    OrchestrationDirector.environment.getter();
    sub_10000E6F8(&qword_100041FA8, v26, type metadata accessor for HealthAppDaemonCoordinator, &unk_100031DB0);
    EnvironmentalStateManager.register(observer:)();

    OrchestrationDirector.environment.getter();
    v27 = EnvironmentalStateManager.currentState.getter();

    v28._rawValue = v27;
    sub_100001C08(v28);

    v29 = v1[14];

    os_unfair_lock_lock(v29 + 14);
    sub_10000E4D4(&v29[4]);
    os_unfair_lock_unlock(v29 + 14);

    [v1[13] resume];
    v30 = [objc_opt_self() mainRunLoop];
    [v30 run];

    static Logger.daemon.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v41[0] = v34;
      *v33 = 136315138;
      v42 = v25;
      swift_getMetatypeMetadata();
      v35 = String.init<A>(describing:)();
      v37 = sub_100004364(v35, v36, v41);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "[%s] start() Shutdown", v33, 0xCu);
      sub_10000493C(v34);
    }

    return (v19)(v7, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10000B060(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v87 = a8;
  v9 = v8;
  v93 = a2;
  v94 = a7;
  v92 = a6;
  v89 = a4;
  v80 = a3;
  v85 = *v9;
  v12 = type metadata accessor for DispatchTimeInterval();
  v81 = *(v12 - 8);
  v82 = v12;
  __chkstk_darwin(v12);
  v83 = (&v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for UUID();
  v79 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  __chkstk_darwin(v17 - 8);
  *&v84 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Current = CFAbsoluteTimeGetCurrent();
  sub_10000E5DC(0);
  v20 = swift_allocObject();
  *(v20 + 56) = 0;
  *(v20 + 16) = 256;
  *(v20 + 18) = 0;
  *(v20 + 32) = 0;
  *(v20 + 40) = 0;
  *(v20 + 24) = 0;
  *(v20 + 48) = Current;
  v9[14] = v20;
  v9[2] = a1;
  v88 = v9;
  v9[8] = a5;
  v21 = type metadata accessor for BuiltinProvider();
  swift_allocObject();

  v22 = a5;
  v23 = BuiltinProvider.init()();
  v24 = type metadata accessor for HealthKitProvider();
  swift_allocObject();
  v90 = HealthKitProvider.init()();
  sub_100004308(0, &qword_100041FC0, &protocol descriptor for EnvironmentalStateComponentProvider);
  v91 = a1;
  v25 = v86;
  v26 = HealthAppPluginSource.conformingPlugins<A>(_:)();
  if (v25)
  {

    swift_unknownObjectRelease();

LABEL_6:
    v40 = v88;

    swift_deallocPartialClassInstance();
    return;
  }

  v71 = v16;
  v72 = v14;
  v77 = v22;
  v27 = v26;
  static Logger.orchestration.getter();
  type metadata accessor for EnvironmentalStateManager();
  swift_allocObject();
  v86 = 0;
  v28 = EnvironmentalStateManager.init(logger:)();
  v75 = &type metadata accessor for _ContiguousArrayStorage;
  sub_10000E410(0, &qword_100041FC8, &qword_100041FC0, &protocol descriptor for EnvironmentalStateComponentProvider, &type metadata accessor for _ContiguousArrayStorage);
  inited = swift_initStackObject();
  v76 = xmmword_100031C70;
  *(inited + 16) = xmmword_100031C70;
  *(inited + 56) = v21;
  *(inited + 64) = &protocol witness table for BuiltinProvider;
  v30 = v23;
  *(inited + 32) = v23;
  *(inited + 96) = v24;
  v74 = &type metadata accessor for HealthKitProvider;
  *(inited + 104) = sub_10000E6F8(&qword_100041FD0, 255, &type metadata accessor for HealthKitProvider, &protocol conformance descriptor for HealthKitProvider);
  v31 = v90;
  *(inited + 72) = v90;
  v95._rawValue = v27;

  v73 = v27;

  sub_1000285AC(inited);
  v78 = v28;
  EnvironmentalStateManager.start(providers:)(v95);

  sub_10000E410(0, &qword_100041FD8, &qword_100041FE0, &protocol descriptor for InputSignalProvider, v75);
  v32 = swift_initStackObject();
  *(v32 + 32) = v30;
  v33 = v32 + 32;
  *(v32 + 16) = v76;
  *(v32 + 56) = v21;
  *(v32 + 64) = &protocol witness table for BuiltinProvider;
  *(v32 + 96) = v24;
  v34 = v32;
  *(v32 + 104) = sub_10000E6F8(&qword_100041FE8, 255, v74, &protocol conformance descriptor for HealthKitProvider);
  *(v34 + 72) = v31;
  v35 = sub_100004308(0, &qword_100041FE0, &protocol descriptor for InputSignalProvider);

  v36 = v86;
  v37 = HealthAppPluginSource.conformingPlugins<A>(_:)();
  if (v36)
  {

    swift_unknownObjectRelease();

    swift_setDeallocating();
    swift_arrayDestroy();
    goto LABEL_6;
  }

  v75 = v30;
  *&v76 = v33;
  v95._rawValue = v37;

  sub_100028590(v38);
  rawValue = v95._rawValue;
  sub_100004308(0, &qword_100041AE0, &protocol descriptor for ExecutorProvider);
  v41 = HealthAppPluginSource.conformingPlugins<A>(_:)();
  v70 = v35;
  v74 = v34;
  v86 = 0;

  swift_unknownObjectRetain();

  static Logger.orchestration.getter();
  v42 = v71;
  UUID.init()();
  v43 = UUID.uuidString.getter();
  v45 = v44;
  (v79)[1](v42, v72);
  sub_10000E63C(5, v43, v45);

  static String._fromSubstring(_:)();

  type metadata accessor for OrchestrationDirector();
  swift_allocObject();
  v79 = rawValue;
  v72 = v41;
  v46 = OrchestrationDirector.init(environment:inputSignalProviders:executorProviders:contextProvider:dispatchers:logger:debugIdentifier:)();
  v47 = v88;
  v88[3] = v46;
  v48 = type metadata accessor for OrchestrationWorkQueueStatusObserver();
  swift_allocObject();
  v49 = OrchestrationWorkQueueStatusObserver.init()();
  v47[6] = v49;
  v97 = v48;
  v98 = sub_10000E6F8(&qword_100041FF0, 255, &type metadata accessor for OrchestrationWorkQueueStatusObserver, &protocol conformance descriptor for OrchestrationWorkQueueStatusObserver);
  v95._rawValue = v49;

  OrchestrationDirector.statusObserver.setter();

  v50 = v87;
  v47[13] = v87;
  type metadata accessor for AutoPauseController();
  swift_allocObject();

  v80 = v50;

  v47[4] = AutoPauseController.init(target:paused:environment:)();
  sub_1000020B0(0, &qword_100041FF8, &type metadata accessor for EnvironmentalStateDescription, &type metadata accessor for _ContiguousArrayStorage);
  v87 = v51;
  v85 = *(*(type metadata accessor for EnvironmentalStateDescription() - 8) + 72);
  v52 = swift_allocObject();
  v84 = xmmword_100031A60;
  *(v52 + 16) = xmmword_100031A60;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static EnvironmentalStateDescription.appSuspended(bundleIdentifier:)();

  AutoPauseController.pauseIfAnyMatches(descriptions:)(v52);

  type metadata accessor for AutoPriorityThresholdController();
  swift_allocObject();

  v47[5] = AutoPriorityThresholdController.init(target:environment:)();
  v53 = swift_allocObject();
  *(v53 + 16) = v84;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static EnvironmentalStateDescription.appSuspended(bundleIdentifier:)();

  AutoPriorityThresholdController.autoUpdatePriorityThreshold(pauseIfAnyMatches:)(v53);

  type metadata accessor for OrchestrationRetryManager();
  swift_allocObject();

  v47[7] = OrchestrationRetryManager.init(director:)();
  v54 = objc_autoreleasePoolPush();
  v55 = objc_allocWithZone(type metadata accessor for DaemonLifecycleManager());
  v56 = v77;
  v57 = v94;

  v58 = sub_100007BFC(v56, v57);
  objc_autoreleasePoolPop(v54);
  v47[11] = v58;
  v59 = v47[3];
  v97 = &type metadata for WorkRunner;
  v98 = sub_10000E740();
  v95._rawValue = v59;
  v96 = v58;
  v60 = v82;
  v61 = v83;
  *v83 = 6;
  (*(v81 + 104))(v61, enum case for DispatchTimeInterval.seconds(_:), v60);
  type metadata accessor for HealthAppForegroundWorkManager();
  swift_allocObject();
  v62 = v58;
  swift_retain_n();
  v63 = v62;
  v47[12] = HealthAppForegroundWorkManager.init(workRunner:urgentWorkTimeoutInterval:)();
  dispatch thunk of PinnedContentManagerProvider.manager(for:)();
  type metadata accessor for PinnedContentStateFeedItemCacheObserver();
  swift_allocObject();
  v64 = v56;
  v47[9] = PinnedContentStateFeedItemCacheObserver.init(pinnedContentManager:storeOracle:)();
  v65 = [objc_opt_self() sharedBehavior];
  if (!v65)
  {
    __break(1u);
    goto LABEL_13;
  }

  v66 = v65;
  v67 = [v65 features];

  if (!v67)
  {
LABEL_13:
    __break(1u);
    return;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  v68 = [v67 simplifiedLogging];

  if (v68)
  {
    dispatch thunk of PinnedContentManagerProvider.manager(for:)();
    swift_allocObject();
    v69 = PinnedContentStateFeedItemCacheObserver.init(pinnedContentManager:storeOracle:)();

    swift_unknownObjectRelease();

    v47[10] = v69;
  }

  else
  {

    swift_unknownObjectRelease();

    v47[10] = 0;
  }
}

void sub_10000BD98()
{
  v1 = *v0;
  v2 = [objc_opt_self() sharedScheduler];
  v3 = String._bridgeToObjectiveC()();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v7[4] = sub_10000E4F0;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10000D8B8;
  v7[3] = &unk_10003DDE0;
  v6 = _Block_copy(v7);

  [v2 registerForTaskWithIdentifier:v3 usingQueue:0 launchHandler:v6];
  _Block_release(v6);
}

void sub_10000BF10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 112);

  os_unfair_lock_lock((v8 + 56));
  *(v8 + 16) = 1;
  v9 = *(v8 + 48);
  os_unfair_lock_unlock((v8 + 56));

  v10 = CFAbsoluteTimeGetCurrent() - v9;
  static Logger.daemon.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18[0] = v14;
    v18[1] = a2;
    *v13 = 136315394;
    swift_getMetatypeMetadata();
    v15 = String.init<A>(describing:)();
    v17 = sub_100004364(v15, v16, v18);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    *(v13 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%s] start() Initial orchestration run complete after %fs", v13, 0x16u);
    sub_10000493C(v14);
  }

  (*(v5 + 8))(v7, v4);
  OrchestrationWorkQueueStatusObserver.didFinishStartup(latency:)(v10);
  HealthAppForegroundWorkManager.start()();
}

void sub_10000C124(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 104);
  sub_10000E6F8(&qword_100041FB0, a2, type metadata accessor for HealthAppDaemonCoordinator, &unk_100031D38);
  v4 = objc_allocWithZone(type metadata accessor for HealthAppOrchestrationListener());
  v5 = v3;

  v6 = HealthAppOrchestrationListener.init(listener:coordinator:)();

  *(a1 + 24) = v6;
}

id *sub_10000C1E0()
{

  return v0;
}

uint64_t sub_10000C260()
{
  sub_10000C1E0();

  return _swift_deallocClassInstance(v0, 120, 7);
}

__n128 sub_10000C2B8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000C2CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10000C328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

Swift::Int sub_10000C394()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10000C400(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10000C450(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v5;
  sub_1000020B0(0, &qword_100041F98, &type metadata accessor for PriorityRuleSet.Priority, &type metadata accessor for Optional);
  __chkstk_darwin(v13 - 8);
  v41 = &v35 - v14;
  v15 = type metadata accessor for Logger();
  v39 = *(v15 - 8);
  v40 = v15;
  __chkstk_darwin(v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = a1;
    v21 = v20;
    v36 = swift_slowAlloc();
    v37 = a4;
    v42 = v36;
    *v21 = 136446210;
    v22 = _typeName(_:qualified:)();
    v35 = v12;
    v24 = a2;
    v25 = a3;
    v26 = v6;
    v27 = a5;
    v28 = sub_100004364(v22, v23, &v42);

    *(v21 + 4) = v28;
    a5 = v27;
    v6 = v26;
    a3 = v25;
    a2 = v24;
    v29 = v19;
    v30 = v35;
    _os_log_impl(&_mh_execute_header, v18, v29, "[%{public}s] Ensuring orchestration is done processing work before starting legacy background generation.", v21, 0xCu);
    sub_10000493C(v36);
    a4 = v37;

    a1 = v38;

    (*(v39 + 8))(v17, v40);
  }

  else
  {

    (*(v39 + 8))(v17, v40);
    v30 = v12;
  }

  v31 = v41;
  static PriorityRuleSet.Priority.lowestPriority.getter();
  v32 = type metadata accessor for PriorityRuleSet.Priority();
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = swift_allocObject();
  *(v33 + 16) = v6;
  *(v33 + 24) = a1;
  *(v33 + 32) = a2 & 1;
  *(v33 + 40) = a3;
  *(v33 + 48) = a4;
  *(v33 + 56) = a5;
  *(v33 + 64) = v30;

  OrchestrationDirector.fireOnce(priorityThresholdOverride:barrier:)();

  return sub_100002114(v31);
}

uint64_t sub_10000C7C4(uint64_t a1, void *a2, int a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7)
{
  v41 = a5;
  v42 = a6;
  v40 = a4;
  v39 = a3;
  v38 = a2;
  v8 = type metadata accessor for DateInterval();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = v11;
    v18 = v17;
    v19 = swift_slowAlloc();
    v45 = v19;
    *v18 = 136446210;
    v20 = _typeName(_:qualified:)();
    v22 = a1;
    v23 = sub_100004364(v20, v21, &v45);

    *(v18 + 4) = v23;
    a1 = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}s] Orchestration done processing work, starting legacy background generation.", v18, 0xCu);
    sub_10000493C(v19);

    (*(v12 + 8))(v14, v37);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v24 = *(*(a1 + 88) + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthPluginHostListener);
  v25 = *(v24 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_healthExperienceStoreOracle);
  v26 = *(v24 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_feedPopulationManagerOracle);
  v27 = *(v24 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_longRunningProcessOracle);
  v28 = *(v24 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_countryOracle);
  v29 = *(v24 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_transactionBuilderManager);
  v30 = *(v24 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_backgroundGenerationActivities);
  objc_allocWithZone(type metadata accessor for HealthPluginHostService(0));
  v31 = v25;

  v32 = sub_10000F204(v31, v26, v27, v28, v29, v30);
  static DateInterval.allTimeInterval.getter();
  if (v38)
  {
    v33 = v38;
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
  }

  v34 = sub_1000108AC(v10, v33, v39 & 1, v40, v41, v42);

  return (*(v43 + 8))(v10, v44);
}

void sub_10000CB50(uint64_t a1)
{
  v3 = *(*(v1 + 88) + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthPluginHostListener);
  v4 = *(v3 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_healthExperienceStoreOracle);
  v5 = *(v3 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_feedPopulationManagerOracle);
  v6 = *(v3 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_longRunningProcessOracle);
  v7 = *(v3 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_countryOracle);
  v8 = *(v3 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_transactionBuilderManager);
  v9 = *(v3 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_backgroundGenerationActivities);
  v10 = objc_allocWithZone(type metadata accessor for HealthPluginHostService(0));
  v11 = v4;

  v12 = sub_10000F204(v11, v5, v6, v7, v8, v9);
  sub_10001C3A8(a1);
}

void sub_10000CC88(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = *(*(v2 + 88) + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthPluginHostListener);
  v6 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_healthExperienceStoreOracle);
  v7 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_feedPopulationManagerOracle);
  v8 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_longRunningProcessOracle);
  v9 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_countryOracle);
  v10 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_transactionBuilderManager);
  v11 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_backgroundGenerationActivities);
  v12 = objc_allocWithZone(type metadata accessor for HealthPluginHostService(0));
  v13 = v6;

  v14 = sub_10000F204(v13, v7, v8, v9, v10, v11);
  sub_100019E74(a1, a2);
}

uint64_t sub_10000CDD0(void (*a1)(void))
{
  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
  if (v5)
  {
    sub_100004308(0, &qword_100041C60, &protocol descriptor for HealthExperienceStore);
    type metadata accessor for DiskHealthExperienceStore();
    if (swift_dynamicCast())
    {
      dispatch thunk of DiskHealthExperienceStore.deleteAllObjects()();
      (a1)(0);
      exit(0);
    }
  }

  else
  {
    sub_10000A920(v4);
  }

  sub_10000E478();
  swift_allocError();
  v2 = _convertErrorToNSError(_:)();
  a1();
}

uint64_t sub_10000CEC8(uint64_t a1, uint64_t a2)
{
  sub_1000020B0(0, &qword_100041F98, &type metadata accessor for PriorityRuleSet.Priority, &type metadata accessor for Optional);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for PriorityRuleSet.Priority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  OrchestrationDirector.fireOnce(priorityThresholdOverride:barrier:)();
  return sub_100002114(v4);
}

uint64_t sub_10000CFC4(uint64_t a1, uint64_t a2)
{
  sub_1000020B0(0, &qword_100041F98, &type metadata accessor for PriorityRuleSet.Priority, &type metadata accessor for Optional);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for PriorityRuleSet.Priority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  OrchestrationDirector.recheckFailedTriggers(priorityThresholdOverride:barrier:)();
  return sub_100002114(v4);
}

uint64_t sub_10000D0C0()
{
  OrchestrationDirector.debugSnapshot.getter();
  v0 = DebugSnapshot.description.getter();

  return v0;
}

void sub_10000D134()
{

  dispatch thunk of GenerationQueue.cancelAllOperations()();

  HealthAppForegroundWorkManager.cancelLegacyGeneration()();
}

uint64_t sub_10000D190(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = 1;
  (*(v3 + 104))(v5, enum case for DispatchTimeInterval.seconds(_:), v2);
  HealthAppForegroundWorkManager.forceStart(within:)();
  (*(v3 + 8))(v5, v2);
  return HealthAppForegroundWorkManager.foregroundWithLegacyGeneration(completion:)();
}

uint64_t sub_10000D2E0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static Logger.daemon.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v18 = a1;
      v13 = v12;
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      v20 = a3;
      swift_getMetatypeMetadata();
      v15 = String.init<A>(describing:)();
      v17 = sub_100004364(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Background generation fired.", v13, 0xCu);
      sub_10000493C(v14);

      a1 = v18;
    }

    (*(v6 + 8))(v8, v5);
    sub_10000D4DC(a1);
  }

  return result;
}

uint64_t sub_10000D4DC(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1000020B0(0, &qword_100041F98, &type metadata accessor for PriorityRuleSet.Priority, &type metadata accessor for Optional);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v4;
  aBlock[4] = sub_10000E510;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003F14;
  aBlock[3] = &unk_10003DE30;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  [v14 setExpirationHandler:v13];
  _Block_release(v13);
  static Logger.daemon.getter();
  v34 = v11;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v9;
    v19 = v18;
    aBlock[0] = v18;
    *v17 = 136446210;
    v20 = _typeName(_:qualified:)();
    v32 = v8;
    v22 = v14;
    v23 = v2;
    v24 = v7;
    v25 = v4;
    v26 = sub_100004364(v20, v21, aBlock);

    *(v17 + 4) = v26;
    v4 = v25;
    v7 = v24;
    v2 = v23;
    v14 = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}s] Ensuring orchestration is done processing work before starting legacy background generation.", v17, 0xCu);
    sub_10000493C(v19);

    (*(v33 + 8))(v34, v32);
  }

  else
  {

    (*(v9 + 8))(v34, v8);
  }

  v27 = type metadata accessor for PriorityRuleSet.Priority();
  (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = v2;
  v28[3] = v14;
  v28[4] = v4;
  v29 = v14;

  OrchestrationDirector.fireOnce(priorityThresholdOverride:barrier:)();

  return sub_100002114(v7);
}

void sub_10000D8B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10000D920(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v38 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6);
  v31 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v30[0]);
  v30[1] = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136446210;
    v18 = _typeName(_:qualified:)();
    v20 = sub_100004364(v18, v19, aBlock);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] Background generation expired.", v16, 0xCu);
    sub_10000493C(v17);
  }

  (*(v11 + 8))(v13, v10);
  sub_10000E524();
  _typeName(_:qualified:)();
  v21 = v34;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000E6F8(&qword_100041E80, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000020B0(0, &qword_100041E88, &type metadata accessor for OS_dispatch_queue.Attributes, &type metadata accessor for Array);
  sub_10000E578(&qword_100041E90, &qword_100041E88, &type metadata accessor for OS_dispatch_queue.Attributes);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v32 + 104))(v31, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v33);
  v22 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = swift_allocObject();
  v24 = v36;
  *(v23 + 16) = v36;
  *(v23 + 24) = a2;
  aBlock[4] = sub_10000E570;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003F14;
  aBlock[3] = &unk_10003DEA8;
  v25 = _Block_copy(aBlock);
  v26 = v24;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_10000E6F8(&qword_100041B18, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000020B0(0, &qword_100041B20, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_10000E578(&qword_100041B28, &qword_100041B20, &type metadata accessor for DispatchWorkItemFlags);
  v27 = v38;
  v28 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v39 + 8))(v27, v28);
  (*(v35 + 8))(v21, v37);
}

uint64_t sub_10000DF6C(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  if ([a1 setTaskExpiredWithRetryAfter:&v19 error:60.0])
  {

    return _objc_retain_x1();
  }

  else
  {
    v18 = v19;
    v7 = v19;
    v8 = _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.daemon.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v18 = v8;
      v12 = v11;
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136446210;
      v14 = _typeName(_:qualified:)();
      v16 = sub_100004364(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%{public}s] Failed to retry after background generation expired. Setting task as completed.", v12, 0xCu);
      sub_10000493C(v13);
    }

    (*(v4 + 8))(v6, v3);
    [a1 setTaskCompleted];
  }
}

id sub_10000E1FC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = a1;
    v12 = a2;
    v13 = v11;
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136446210;
    v15 = _typeName(_:qualified:)();
    v17 = sub_100004364(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%{public}s] Orchestration done processing work, starting legacy background generation.", v13, 0xCu);
    sub_10000493C(v14);

    a2 = v12;
  }

  (*(v6 + 8))(v8, v5);

  sub_100004B68();

  return [a2 setTaskCompleted];
}

void sub_10000E410(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100004308(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_10000E478()
{
  result = qword_100041FA0;
  if (!qword_100041FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041FA0);
  }

  return result;
}

uint64_t sub_10000E4F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000E524()
{
  result = qword_100041AD0;
  if (!qword_100041AD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100041AD0);
  }

  return result;
}

uint64_t sub_10000E578(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1000020B0(255, a2, a3, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10000E5DC(uint64_t a1)
{
  if (!qword_100041FB8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = type metadata accessor for ManagedBuffer();
    if (!v2)
    {
      atomic_store(v1, &qword_100041FB8);
    }
  }
}

uint64_t sub_10000E63C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return String.subscript.getter();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = String.index(_:offsetBy:limitedBy:)();
  if (v5)
  {
    v4 = 15;
  }

  if (4 * v3 < v4 >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

uint64_t sub_10000E6F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000E740()
{
  result = qword_100042000;
  if (!qword_100042000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042000);
  }

  return result;
}

__n128 sub_10000E794(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000E7A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000E7E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for HealthAppDaemonCoordinator.CacheError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for HealthAppDaemonCoordinator.CacheError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10000E920()
{
  result = qword_100042008;
  if (!qword_100042008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042008);
  }

  return result;
}

id sub_10000E974(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthPluginHostListener);
  v6 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_healthExperienceStoreOracle);
  v7 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_feedPopulationManagerOracle);
  v8 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_longRunningProcessOracle);
  v9 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_countryOracle);
  v10 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_transactionBuilderManager);
  v11 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_backgroundGenerationActivities);
  v12 = objc_allocWithZone(type metadata accessor for HealthPluginHostService(0));
  v13 = v6;

  v14 = sub_10000F204(v13, v7, v8, v9, v10, v11);
  v15 = sub_1000125C8(a1, a2);

  return v15;
}

uint64_t sub_10000EAB0(uint64_t a1)
{
  type metadata accessor for DaemonLongRunningProcessOracle();
  DebuggingResponder.deregisterForDebuggingRequests()();

  return _swift_deallocClassInstance(v1, 48, 7);
}

uint64_t sub_10000EB2C()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    v14[1] = v1;
    *v8 = 136315138;
    swift_getMetatypeMetadata();
    v10 = String.init<A>(describing:)();
    v12 = sub_100004364(v10, v11, v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%s]: debuggingInfoRequested()", v8, 0xCu);
    sub_10000493C(v9);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10000EDE8()
{
  v0._countAndFlagsBits = 15420;
  v0._object = 0xE200000000000000;
  String.append(_:)(v0);
  sub_10000EF30();
  v1._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 8224;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0;
}

unint64_t sub_10000EF30()
{
  result = qword_1000420D8;
  if (!qword_1000420D8)
  {
    type metadata accessor for DaemonLongRunningProcessOracle();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1000420D8);
  }

  return result;
}

uint64_t sub_10000EF74()
{
  v1 = OBJC_IVAR____TtC10healthappd23HealthPluginHostService____lazy_storage___healthWelcomeFlowSignalManager;
  if (*(v0 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService____lazy_storage___healthWelcomeFlowSignalManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService____lazy_storage___healthWelcomeFlowSignalManager);
  }

  else
  {
    v2 = sub_10000EFDC(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10000EFDC(uint64_t a1)
{
  v2 = type metadata accessor for PluginAdvertisableFeatureSourceContext.DeviceSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(a1 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_longRunningProcessOracle) + 16);
  v7 = *(a1 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_countryOracle);
  v15 = type metadata accessor for CountryOracle();
  v16 = sub_100020860(&qword_1000423A0, &type metadata accessor for CountryOracle, &protocol conformance descriptor for CountryOracle);
  v14 = v7;
  (*(v3 + 104))(v5, enum case for PluginAdvertisableFeatureSourceContext.DeviceSource.activePairedDevice(_:), v2);
  v8 = type metadata accessor for HealthPluginAdvertisableFeatureManagerFactory();
  swift_allocObject();
  v9 = v6;

  v10 = HealthPluginAdvertisableFeatureManagerFactory.init(healthStore:countryProvider:activeDeviceSource:queue:)();
  v15 = v8;
  v16 = &protocol witness table for HealthPluginAdvertisableFeatureManagerFactory;
  v14 = v10;
  type metadata accessor for HealthWelcomeFlowSignalProvider();
  swift_allocObject();

  HealthWelcomeFlowSignalProvider.init()();
  v13[3] = type metadata accessor for CurrentOSUpdateDateProvider();
  v13[4] = &protocol witness table for CurrentOSUpdateDateProvider;
  sub_100020768(v13);
  CurrentOSUpdateDateProvider.init()();
  type metadata accessor for HealthWelcomeFlowSignalManager();
  swift_allocObject();
  v11 = HealthWelcomeFlowSignalManager.init(advertisableFeatureManagerFactory:healthWelcomeFlowSignalProvider:currentOSUpdateDateProvider:currentDateGenerator:)();

  return v11;
}

id sub_10000F204(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v46 = a1;
  v47 = a6;
  v45 = a5;
  v51 = a4;
  v52 = a2;
  v53 = a3;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for Logger();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v48 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007100(0);
  v44 = v10;
  __chkstk_darwin(v10);
  v43 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v42 - 8);
  __chkstk_darwin(v42);
  v14 = &ObjectType - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v15);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16 - 8);
  *&v6[OBJC_IVAR____TtC10healthappd23HealthPluginHostService____lazy_storage___healthWelcomeFlowSignalManager] = 0;
  v41 = OBJC_IVAR____TtC10healthappd23HealthPluginHostService_schedulerDispatchQueue;
  sub_100004210(0, &qword_100041AD0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v56 = _swiftEmptyArrayStorage;
  sub_100020860(&qword_100041E80, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10001DA6C(0, &qword_100041E88, &type metadata accessor for OS_dispatch_queue.Attributes, &type metadata accessor for Array);
  sub_10000AA98();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v42);
  *&v6[v41] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = OBJC_IVAR____TtC10healthappd23HealthPluginHostService_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v6[v17] = UnfairLock.init()();
  v18 = OBJC_IVAR____TtC10healthappd23HealthPluginHostService_ongoingWork;
  type metadata accessor for CancellableProgressList();
  swift_allocObject();
  *&v6[v18] = CancellableProgressList.init()();
  static UserDefaultsKeys.appFirstLaunchDateKey.getter();
  sub_100004210(0, &qword_100041C70, NSUserDefaults_ptr);
  static NSUserDefaults.healthAppShared.getter();
  v19 = type metadata accessor for Date();
  v20 = *(*(v19 - 8) + 56);
  v21 = v43;
  v20(v43, 1, 1, v19);
  UserDefault.init(key:userDefaults:fallbackValue:isAppleInternalOnly:)();
  static UserDefaultsKeys.appLastOpenedDateKey.getter();
  static NSUserDefaults.healthAppShared.getter();
  v20(v21, 1, 1, v19);
  v22 = v45;
  UserDefault.init(key:userDefaults:fallbackValue:isAppleInternalOnly:)();
  v24 = v46;
  v23 = v47;
  *&v6[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_healthExperienceStoreOracle] = v46;
  v25 = v53;
  *&v6[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_feedPopulationManagerOracle] = v52;
  *&v6[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_longRunningProcessOracle] = v25;
  *&v6[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_countryOracle] = v51;
  *&v6[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_transactionBuilderManager] = v22;
  *&v6[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_backgroundGenerationActivities] = v23;
  type metadata accessor for BundleFeedItemPluginBundleProvider();
  v26 = v24;

  static BundleFeedItemPluginBundleProvider.sharedInstance.getter();
  v27 = dispatch thunk of PluginBundleProvider.availablePluginsMap.getter();

  *&v6[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_availablePlugins] = v27;
  v28 = v48;
  static Logger.daemon.getter();
  v29 = v28;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v54 = v33;
    *v32 = 136315138;
    v56 = ObjectType;
    swift_getMetatypeMetadata();
    v34 = String.init<A>(describing:)();
    v36 = sub_100004364(v34, v35, &v54);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "[%s] init()", v32, 0xCu);
    sub_10000493C(v33);
  }

  (*(v49 + 8))(v29, v50);
  v37 = type metadata accessor for HealthPluginHostService(0);
  v55.receiver = v7;
  v55.super_class = v37;
  v38 = objc_msgSendSuper2(&v55, "init");
  DebuggingResponder.registerForDebuggingRequests()();

  return v38;
}

void sub_10000F8C8(void *a1)
{
  ObjectType = swift_getObjectType();
  v43 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___HealthPluginHostProtocol];
  v42 = "handleJournaledSharingEntries:completion:";
  v1 = [v43 classesForSelector:? argumentIndex:? ofReply:?];
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = v2;
  sub_10001F0C8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100031C70;
  *(inited + 32) = sub_100004210(0, &qword_100042360, NSArray_ptr);
  *(inited + 40) = sub_100004210(0, &qword_100042368, HKSummarySharingEntry_ptr);
  *&aBlock = _swiftEmptyArrayStorage;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    swift_getObjCClassFromMetadata();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    swift_getObjCClassFromMetadata();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v4 = aBlock;
    v5 = aBlock >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = _swiftEmptyArrayStorage;
    if (!v5)
    {
      break;
    }

    v7 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_50;
      }

LABEL_14:
      *&aBlock = v8;
      if (swift_dynamicCast())
      {
        if (*(&v50 + 1))
        {
          aBlock = v49;
          v45 = v50;
          v46 = v51;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1000258D8(0, *(v6 + 2) + 1, 1, v6);
          }

          v11 = *(v6 + 2);
          v10 = *(v6 + 3);
          if (v11 >= v10 >> 1)
          {
            v6 = sub_1000258D8((v10 > 1), v11 + 1, 1, v6);
          }

          *(v6 + 2) = v11 + 1;
          v12 = &v6[40 * v11];
          v13 = aBlock;
          v14 = v45;
          *(v12 + 8) = v46;
          *(v12 + 2) = v13;
          *(v12 + 3) = v14;
          goto LABEL_10;
        }
      }

      else
      {
        v51 = 0;
        v49 = 0u;
        v50 = 0u;
      }

      sub_100020F24(&v49, &qword_100042370, &type metadata for AnyHashable);
LABEL_10:
      ++v7;
      if (v9 == v5)
      {
        goto LABEL_24;
      }
    }

    if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

    v8 = swift_unknownObjectRetain();
    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_14;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

LABEL_24:

  v15 = sub_10002A2D4(v6);

  sub_1000101D4(v15);
  isa = Set._bridgeToObjectiveC()().super.isa;
  [v43 setClasses:isa forSelector:v42 argumentIndex:0 ofReply:0];

  v42 = "postNotificationWith:userInfo:";
  v17 = [v43 classesForSelector:? argumentIndex:? ofReply:?];
  v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = v18;
  sub_10001F0C8();
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_100031C70;
  *(v19 + 32) = sub_100004210(0, &qword_100042378, NSString_ptr);
  *(v19 + 40) = sub_100004210(0, &qword_100042380, HKProfileIdentifier_ptr);
  *&aBlock = _swiftEmptyArrayStorage;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  swift_getObjCClassFromMetadata();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  swift_getObjCClassFromMetadata();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v20 = aBlock;
  if (aBlock >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21)
  {
    v22 = 0;
    v23 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v24 = swift_unknownObjectRetain();
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_52;
        }
      }

      *&aBlock = v24;
      if (swift_dynamicCast())
      {
        if (*(&v50 + 1))
        {
          aBlock = v49;
          v45 = v50;
          v46 = v51;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_1000258D8(0, *(v23 + 2) + 1, 1, v23);
          }

          v27 = *(v23 + 2);
          v26 = *(v23 + 3);
          if (v27 >= v26 >> 1)
          {
            v23 = sub_1000258D8((v26 > 1), v27 + 1, 1, v23);
          }

          *(v23 + 2) = v27 + 1;
          v28 = &v23[40 * v27];
          v29 = aBlock;
          v30 = v45;
          *(v28 + 8) = v46;
          *(v28 + 2) = v29;
          *(v28 + 3) = v30;
          goto LABEL_34;
        }
      }

      else
      {
        v51 = 0;
        v49 = 0u;
        v50 = 0u;
      }

      sub_100020F24(&v49, &qword_100042370, &type metadata for AnyHashable);
LABEL_34:
      ++v22;
      if (v25 == v21)
      {
        goto LABEL_49;
      }
    }
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_49:

  v31 = sub_10002A2D4(v23);

  sub_1000101D4(v31);
  v32 = Set._bridgeToObjectiveC()().super.isa;

  [v43 setClasses:v32 forSelector:"postNotificationWith:userInfo:" argumentIndex:1 ofReply:0];

  [a1 setExportedInterface:v43];
  [a1 setExportedObject:v39];
  LODWORD(v32) = [a1 processIdentifier];
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v39;
  *(v33 + 32) = ObjectType;
  v46 = sub_1000236CC;
  v47 = v33;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v45 = sub_100003F14;
  *(&v45 + 1) = &unk_10003E580;
  v34 = _Block_copy(&aBlock);
  v35 = v39;

  [a1 setInvalidationHandler:v34];
  _Block_release(v34);
  v36 = swift_allocObject();
  *(v36 + 16) = v32;
  *(v36 + 24) = v35;
  *(v36 + 32) = ObjectType;
  v46 = sub_1000236F4;
  v47 = v36;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v45 = sub_100003F14;
  *(&v45 + 1) = &unk_10003E5D0;
  v37 = _Block_copy(&aBlock);
  v38 = v35;

  [a1 setInterruptionHandler:v37];
  _Block_release(v37);
  [a1 resume];
}

uint64_t sub_1000101D4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_100020F94(v12))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_100020FE8(*(v1 + 48) + 40 * (v9 | (v8 << 6)), v13);
    v10[0] = v13[0];
    v10[1] = v13[1];
    v11 = v14;
    sub_100026244(v12, v10);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000102D8(int a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23[0] = v15;
    v23[1] = a3;
    *v14 = 136315394;
    swift_getMetatypeMetadata();
    v16 = String.init<A>(describing:)();
    v18 = sub_100004364(v16, v17, v23);
    v21 = v7;
    v19 = v18;

    *(v14 + 4) = v19;
    *(v14 + 12) = 1024;
    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, a4, v14, 0x12u);
    sub_10000493C(v15);

    (*(v8 + 8))(v10, v21);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  return sub_1000104D0();
}

uint64_t sub_1000104D0()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.generation.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    v13[1] = ObjectType;
    *v7 = 136315138;
    swift_getMetatypeMetadata();
    v9 = String.init<A>(describing:)();
    v11 = sub_100004364(v9, v10, v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] cancel()", v7, 0xCu);
    sub_10000493C(v8);
  }

  (*(v2 + 8))(v4, v1);

  dispatch thunk of CancellableProgressList.cancelAll()();
}

void sub_1000106AC()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000104D0();
  static Logger.generation.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v11[0] = swift_slowAlloc();
    v11[1] = ObjectType;
    *v7 = 136315394;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = sub_100004364(v8, v9, v11);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100004364(0xD000000000000016, 0x8000000100033180, v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] %s, shutting down!", v7, 0x16u);
    swift_arrayDestroy();
  }

  (*(v2 + 8))(v4, v1);
  exit(0);
}

id sub_1000108AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v140 = a5;
  v127 = a4;
  v128 = a3;
  ObjectType = swift_getObjectType();
  v137 = type metadata accessor for Logger();
  v136 = *(v137 - 1);
  v10 = __chkstk_darwin(v137);
  v12 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v115 - v14;
  __chkstk_darwin(v13);
  v17 = &v115 - v16;
  v131 = type metadata accessor for GenerationWorkRequest();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for TransactionRecord();
  v132 = *(v133 - 8);
  v19 = *(v132 + 64);
  v20 = __chkstk_darwin(v133);
  v21 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v135 = &v115 - v22;
  v23 = *&v6[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_lock];
  dispatch thunk of UnfairLock.lock()();
  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
  if (v144)
  {
    v138 = a6;
    v134 = v23;
    sub_1000030A0(&v143, &v145);
    v24 = [objc_opt_self() standardUserDefaults];
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 BOOLForKey:v25];

    if (v26)
    {
      static Logger.daemon.getter();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *&v142 = swift_slowAlloc();
        *v29 = 136315650;
        *&v143 = ObjectType;
        swift_getMetatypeMetadata();
        v30 = String.init<A>(describing:)();
        v32 = sub_100004364(v30, v31, &v142);

        *(v29 + 4) = v32;
        *(v29 + 12) = 2080;
        *(v29 + 14) = sub_100004364(0xD000000000000061, 0x8000000100033110, &v142);
        *(v29 + 22) = 2080;
        *(v29 + 24) = sub_100004364(0xD000000000000032, 0x8000000100032F90, &v142);
        _os_log_impl(&_mh_execute_header, v27, v28, "[%s] %s %s default is set - skipping work", v29, 0x20u);
        swift_arrayDestroy();
      }

      (*(v136 + 8))(v15, v137);
      v140(0);
      v33 = [objc_opt_self() progressWithTotalUnitCount:0];
LABEL_27:
      v40 = v33;
      sub_10000493C(&v145);
      goto LABEL_28;
    }

    if (*(a2 + 16))
    {

      v42 = sub_10002A1EC(v41);
    }

    else
    {
      v42 = 0;
    }

    v43 = sub_1000213EC(v42);
    if (v43 >> 62)
    {
      v98 = _CocoaArrayWrapper.endIndex.getter();

      if (v98)
      {
LABEL_14:
        v126 = v42;
        v45 = *(*&v7[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_longRunningProcessOracle] + 16);
        v46 = v135;
        v47 = TransactionRecord.init(name:)();
        __chkstk_darwin(v47);

        TransactionManagedCache.fetchCachedOrCreate(for:using:)();

        sub_100007A94(&v145, &v142);
        sub_100007A94(&v143, v141);
        v48 = swift_allocObject();
        v137 = v45;
        v48[2] = v45;
        sub_1000030A0(&v142, (v48 + 3));
        sub_1000030A0(v141, (v48 + 8));
        v125 = v48;
        v49 = ObjectType;
        v48[13] = v7;
        v48[14] = v49;
        v50 = v132;
        v51 = v132 + 16;
        v136 = *(v132 + 16);
        v52 = v133;
        (v136)(v21, v46, v133);
        v53 = *(v50 + 80);
        v54 = v7;
        v116 = v7;
        v55 = (v53 + 24) & ~v53;
        v56 = (v19 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
        v57 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
        v58 = swift_allocObject();
        *(v58 + 16) = v54;
        v59 = *(v50 + 32);
        v59(v58 + v55, v21, v52);
        v60 = (v58 + v56);
        v61 = v138;
        *v60 = v140;
        v60[1] = v61;
        v124 = v58;
        *(v58 + v57) = ObjectType;
        v122 = v51;
        (v136)(v21, v135, v52);
        v119 = v53;
        v62 = swift_allocObject();
        v63 = v116;
        *(v62 + 16) = v116;
        v121 = v55;
        v120 = v21;
        v118 = v50 + 32;
        v117 = v59;
        v59(v62 + v55, v21, v52);
        v123 = v56;
        v64 = (v62 + v56);
        v65 = v138;
        *v64 = v140;
        v64[1] = v65;
        *(v62 + v57) = ObjectType;
        if (v127 == 2)
        {
          v68 = v63;
          v82 = v63;
          swift_retain_n();
          v83 = v137;
          v84 = v82;
          v72 = static GenerationPhase.allCases.getter();
        }

        else
        {
          if (v127 != 1)
          {
            v66 = v137;
            v67 = v120;
            v68 = v63;
            if (v127)
            {
              v85 = v63;
              swift_retain_n();
              v86 = v66;
              v87 = v85;
              v72 = static GenerationPhase.allCases.getter();
            }

            else
            {
              sub_10001DA6C(0, &qword_100042250, &type metadata accessor for GenerationPhase, &type metadata accessor for _ContiguousArrayStorage);
              v69 = type metadata accessor for GenerationPhase();
              v70 = *(v69 - 8);
              v71 = (*(v70 + 80) + 32) & ~*(v70 + 80);
              v72 = swift_allocObject();
              *(v72 + 16) = xmmword_100031A60;
              (*(v70 + 104))(v72 + v71, enum case for GenerationPhase.feedItems(_:), v69);
              v73 = v68;
              swift_retain_n();
              v74 = v66;
              v75 = v73;
            }

            goto LABEL_22;
          }

          sub_10001DA6C(0, &qword_100042250, &type metadata accessor for GenerationPhase, &type metadata accessor for _ContiguousArrayStorage);
          v76 = type metadata accessor for GenerationPhase();
          v77 = *(v76 - 8);
          v78 = (*(v77 + 80) + 32) & ~*(v77 + 80);
          v72 = swift_allocObject();
          *(v72 + 16) = xmmword_100031A60;
          (*(v77 + 104))(v72 + v78, enum case for GenerationPhase.sharableModels(_:), v76);
          v68 = v63;
          v79 = v63;
          swift_retain_n();
          v80 = v137;
          v81 = v79;
        }

        v67 = v120;
LABEL_22:
        sub_100029E2C(v72);

        v88 = v129;
        GenerationWorkRequest.init(environment:pluginIdentifierSetToRun:generationPhases:commitUrgentTransaction:makeGenerationWorkBlock:completionBlock:notStartedCancellationBlock:)();
        v89 = v135;
        v90 = v133;
        (v136)(v67, v135, v133);
        v91 = v123;
        v92 = swift_allocObject();
        v93 = v67;
        v94 = v92;
        *(v92 + 16) = v68;
        v117(v92 + v121, v93, v90);
        v95 = (v94 + v91);
        v96 = v138;
        *v95 = v140;
        v95[1] = v96;
        v97 = v68;

        v40 = sub_10001B460(v88, sub_1000235E4, v94);

        (*(v130 + 8))(v88, v131);
        sub_10000493C(&v143);
        (*(v132 + 8))(v89, v90);
        sub_10000493C(&v145);
        goto LABEL_28;
      }
    }

    else
    {
      v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v44)
      {
        goto LABEL_14;
      }
    }

    static Logger.daemon.getter();

    v99 = v7;
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *&v142 = swift_slowAlloc();
      *v102 = 136315650;
      *&v143 = ObjectType;
      swift_getMetatypeMetadata();
      v103 = String.init<A>(describing:)();
      v105 = sub_100004364(v103, v104, &v142);

      *(v102 + 4) = v105;
      *(v102 + 12) = 2080;
      v106 = Array.description.getter();
      v108 = sub_100004364(v106, v107, &v142);

      *(v102 + 14) = v108;
      *(v102 + 22) = 2080;

      sub_100011B78(v109);

      v110 = Array.description.getter();
      v112 = v111;

      v113 = sub_100004364(v110, v112, &v142);

      *(v102 + 24) = v113;
      _os_log_impl(&_mh_execute_header, v100, v101, "[%s] failed to find plugin with identifiers %s, available plugins: %s", v102, 0x20u);
      swift_arrayDestroy();
    }

    (*(v136 + 8))(v17, v137);
    v140(0);
    v33 = [objc_allocWithZone(NSProgress) init];
    goto LABEL_27;
  }

  sub_10000A920(&v143);
  static Logger.daemon.getter();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *&v143 = swift_slowAlloc();
    *v36 = 136315394;
    v145 = ObjectType;
    swift_getMetatypeMetadata();
    v37 = String.init<A>(describing:)();
    v39 = sub_100004364(v37, v38, &v143);

    *(v36 + 4) = v39;
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_100004364(0xD000000000000061, 0x8000000100033110, &v143);
    _os_log_impl(&_mh_execute_header, v34, v35, "[%s] %s no readyHealthExperienceStore - cannot start", v36, 0x16u);
    swift_arrayDestroy();
  }

  (*(v136 + 8))(v12, v137);
  v140(0);
  v40 = [objc_allocWithZone(NSProgress) init];
LABEL_28:
  dispatch thunk of UnfairLock.unlock()();
  return v40;
}

void *sub_100011944(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v18 = a1;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v18 + 64;
    result = _HashTable.startBucket.getter();
    v5 = v18;
    v6 = result;
    v7 = 0;
    v8 = *(v18 + 36);
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v5 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v5 + 36))
      {
        goto LABEL_22;
      }

      v19 = v7;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v5 = v18;
      v9 = 1 << *(v18 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v10);
      if ((v11 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v18 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v6 & 0x3F));
      if (v12)
      {
        v9 = __clz(__rbit64(v12)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v10 << 6;
        v14 = v10 + 1;
        v15 = (v18 + 72 + 8 * v10);
        while (v14 < (v9 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_100021254(v6, v8, 0);
            v5 = v18;
            v9 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_100021254(v6, v8, 0);
        v5 = v18;
      }

LABEL_4:
      v7 = v19 + 1;
      v6 = v9;
      if (v19 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void *sub_100011B78(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_10001F168(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 64;
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v24 = v1 + 72;
    v25 = v2;
    v26 = v1 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v27 = *(v1 + 36);

      v28 = dispatch thunk of BundleFeedItemGenerationPluginInfo.bundleIdentifier.getter();
      v11 = v10;

      v12 = v4;
      v29 = v4;
      v13 = v1;
      v15 = v12[2];
      v14 = v12[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_10001F168((v14 > 1), v15 + 1, 1);
        v12 = v29;
      }

      v12[2] = v15 + 1;
      v16 = &v12[2 * v15];
      v16[4] = v28;
      v16[5] = v11;
      v8 = 1 << *(v13 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v26;
      v17 = *(v26 + 8 * v9);
      if ((v17 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v13;
      v4 = v12;
      if (v27 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v18 = v17 & (-2 << (v6 & 0x3F));
      if (v18)
      {
        v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v9 << 6;
        v20 = v9 + 1;
        v21 = (v24 + 8 * v9);
        while (v20 < (v8 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_100021254(v6, v27, 0);
            v8 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        result = sub_100021254(v6, v27, 0);
      }

LABEL_4:
      ++v7;
      v6 = v8;
      if (v7 == v25)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100011DBC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = *(*(a5 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_longRunningProcessOracle) + 24);
  v11 = *(a5 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_transactionBuilderManager);
  v12 = *(a5 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_countryOracle);
  v13 = a4[3];
  v14 = a4[4];
  v15 = sub_10000AA10(a4, v13);

  v16 = sub_10001FA10(a1, a2, a3, v15, v10, v11, v12, a6, v13, v14);

  return v16;
}

uint64_t sub_100011E94(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.generation.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v10;
    v16 = v15;
    v26 = swift_slowAlloc();
    v29[0] = v26;
    v29[1] = a5;
    *v16 = 136446210;
    swift_getMetatypeMetadata();
    v17 = String.init<A>(describing:)();
    v28 = a1;
    v19 = sub_100004364(v17, v18, v29);
    v25 = v9;
    v20 = v19;
    a1 = v28;

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s]: Background generation completed/cancelled, populating feed", v16, 0xCu);
    sub_10000493C(v26);

    (*(v27 + 8))(v12, v25);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  TransactionManagedCache.finishUse(for:)();

  sub_10000EF74();
  dispatch thunk of HealthWelcomeFlowSignalManager.determineIfHealthWelcomeFlowShouldShowOnNextAppOpen(completion:)();

  v21 = static Feed.Kind.relevanceRankedFeeds.getter();
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a3;
  v22[4] = a4;
  v22[5] = a5;
  v23 = a1;

  sub_1000238C4(v21, sub_1000236C0, v22);
}

uint64_t sub_100012174(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.generation.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = v7;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23[0] = v14;
    v23[1] = a4;
    *v13 = 136446210;
    swift_getMetatypeMetadata();
    v15 = String.init<A>(describing:)();
    v17 = sub_100004364(v15, v16, v23);
    v21 = v6;
    v18 = a2;
    v19 = v17;

    *(v13 + 4) = v19;
    a2 = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s]: Background generation feed population finished", v13, 0xCu);
    sub_10000493C(v14);

    (*(v22 + 8))(v9, v21);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  sub_10001C2D0();
  return a2(1);
}

uint64_t sub_100012388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.generation.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = v8;
    v14 = v13;
    v15 = swift_slowAlloc();
    v25 = a3;
    v26[0] = v15;
    v16 = v15;
    *v14 = 136446210;
    v26[1] = a5;
    swift_getMetatypeMetadata();
    v17 = String.init<A>(describing:)();
    v19 = sub_100004364(v17, v18, v26);
    v23 = v7;
    v20 = v19;

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s]: Background generation cancelled before it started.", v14, 0xCu);
    sub_10000493C(v16);
    a3 = v25;

    (*(v24 + 8))(v10, v23);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  TransactionManagedCache.finishUse(for:)();

  return a3(0);
}

id sub_1000125C8(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v162 = a1;
  ObjectType = swift_getObjectType();
  v164 = type metadata accessor for Logger();
  v163 = *(v164 - 1);
  v5 = __chkstk_darwin(v164);
  v7 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v158 = &v134 - v8;
  v167 = type metadata accessor for PipelineProviderWrappers();
  v149 = *(v167 - 8);
  __chkstk_darwin(v167);
  v166 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000211C8(0);
  v165 = v10;
  v168 = *(v10 - 1);
  __chkstk_darwin(v10);
  v148 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GenerationWorkRequest();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v157 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021260(0, &qword_100042270, &type metadata accessor for FeedPopulationListenerSchedulerConfiguration);
  __chkstk_darwin(v15 - 8);
  v152 = &v134 - v16;
  sub_100021260(0, &qword_100042280, type metadata accessor for SummaryTabForegroundFeedPopulationOperation.HighlightsGenerationConfiguration);
  v150 = v17;
  __chkstk_darwin(v17);
  v151 = (&v134 - v18);
  v160 = type metadata accessor for TransactionRecord();
  v156 = *(v160 - 8);
  v19 = __chkstk_darwin(v160);
  v154 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v155 = &v134 - v22;
  v153 = v23;
  __chkstk_darwin(v21);
  v159 = &v134 - v24;
  v25 = *&v2[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_lock];
  dispatch thunk of UnfairLock.lock()();
  sub_100013C40();
  v26 = [objc_opt_self() standardUserDefaults];
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 BOOLForKey:v27];

  if (v28)
  {
    static Logger.daemon.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = ObjectType;
      v178 = v32;
      *v31 = 136315650;
      *&aBlock = v33;
      swift_getMetatypeMetadata();
      v34 = String.init<A>(describing:)();
      v36 = sub_100004364(v34, v35, &v178);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_100004364(0xD00000000000002FLL, 0x8000000100033040, &v178);
      *(v31 + 22) = 2080;
      *(v31 + 24) = sub_100004364(0xD000000000000032, 0x8000000100032F90, &v178);
      _os_log_impl(&_mh_execute_header, v29, v30, "[%s] %s %s default is set - skipping work", v31, 0x20u);
      swift_arrayDestroy();
      v37 = v162;

      (*(v163 + 1))(v7, v164);
    }

    else
    {

      (*(v163 + 1))(v7, v164);
      v37 = v162;
    }

    v37(0);
    v59 = [objc_opt_self() progressWithTotalUnitCount:0];
LABEL_21:
    v67 = v59;
    goto LABEL_22;
  }

  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
  if (!v171)
  {
    sub_10000A920(&aBlock);
LABEL_18:
    v60 = v158;
    static Logger.daemon.getter();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      *v63 = 136315394;
      *&aBlock = ObjectType;
      swift_getMetatypeMetadata();
      v64 = String.init<A>(describing:)();
      v66 = sub_100004364(v64, v65, &v178);

      *(v63 + 4) = v66;
      *(v63 + 12) = 2080;
      *(v63 + 14) = sub_100004364(0xD00000000000002FLL, 0x8000000100033040, &v178);
      _os_log_impl(&_mh_execute_header, v61, v62, "[%s] %s no readyHealthExperienceStore or feedPopulationManager - cannot start", v63, 0x16u);
      swift_arrayDestroy();
    }

    (*(v163 + 1))(v60, v164);
    v162(0);
    v59 = [objc_opt_self() progressWithTotalUnitCount:0];
    goto LABEL_21;
  }

  v147 = v13;
  sub_1000030A0(&aBlock, &v178);
  v38 = OBJC_IVAR____TtC10healthappd23HealthPluginHostService_feedPopulationManagerOracle;

  dispatch thunk of UnfairLock.lock()();
  v39 = sub_100024BF0();
  dispatch thunk of UnfairLock.unlock()();

  if (!v39)
  {
    sub_10000493C(&v178);
    goto LABEL_18;
  }

  v40 = *(*&v3[v38] + 16);
  if (!v40)
  {
    sub_10000493C(&v178);

    goto LABEL_18;
  }

  v141 = v25;
  v41 = *&v3[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_longRunningProcessOracle];
  v42 = *(v41 + 16);
  v145 = v40;

  v43 = v42;
  v44 = TransactionRecord.init(name:)();
  __chkstk_darwin(v44);
  v139 = v43;

  TransactionManagedCache.fetchCachedOrCreate(for:using:)();

  v144 = v3;
  v143 = *&v3[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_transactionBuilderManager];
  v45 = *(v41 + 24);
  type metadata accessor for BundleFeedItemPluginBundleProvider();
  v158 = v45;

  static BundleFeedItemPluginBundleProvider.sharedInstance.getter();
  v46 = dispatch thunk of PluginBundleProvider.availablePluginsMap.getter();

  sub_100011944(v46);

  type metadata accessor for BundleFeedItemGenerationPluginInfo();
  sub_100020860(&qword_100041D10, &type metadata accessor for BundleFeedItemGenerationPluginInfo, &protocol conformance descriptor for BundleFeedItemGenerationPluginInfo);
  v47 = Array<A>.makeGeneratorPipelineProviderWrappers()();

  sub_100007A94(&v178, &aBlock);
  v48 = *(v47 + 16);
  v146 = a2;
  v140 = v12;
  v142 = v39;
  if (v48)
  {
    *&v174 = _swiftEmptyArrayStorage;
    sub_10001F1D8(0, v48, 0);
    v49 = v174;
    v50 = v149 + 16;
    v164 = *(v149 + 16);
    v51 = (*(v149 + 80) + 32) & ~*(v149 + 80);
    v149 = v47;
    v52 = v47 + v51;
    v163 = *(v50 + 56);
    v53 = (v50 - 8);
    v54 = v148;
    do
    {
      v55 = v166;
      v56 = v167;
      v164(v166, v52, v167);
      PipelineProviderWrappers.feedItem.getter();
      (*v53)(v55, v56);
      *&v174 = v49;
      v58 = *(v49 + 16);
      v57 = *(v49 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_10001F1D8((v57 > 1), v58 + 1, 1);
        v49 = v174;
      }

      *(v49 + 16) = v58 + 1;
      (*(v168 + 32))(v49 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v58, v54, v165);
      v52 += v163;
      --v48;
    }

    while (v48);

    v39 = v142;
  }

  else
  {
  }

  type metadata accessor for FeedItemGeneratorPipelineManager();
  sub_100007A94(&v177, &v174);
  v165 = v139;
  v69 = v158;

  v70 = v143;

  v71 = v69;
  v72 = v70;
  v73 = GeneratorPipelineManager.__allocating_init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:)();

  v74 = v73;
  v168 = v73;
  *&aBlock = GeneratorPipelineManager.generationState.getter();
  sub_100022144(0, &qword_100042288, &type metadata accessor for CurrentValueSubject);
  sub_100021378();
  v75 = Publisher.eraseToAnyPublisher()();

  v76 = *&v144[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_schedulerDispatchQueue];
  v77 = v144;
  v78 = v150;
  v79 = v151;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v80 = *(v78 + 44);
  v81 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v81 - 8) + 56))(v79 + v80, 1, 1, v81);
  *v79 = v76;
  sub_100004210(0, &qword_100041AD0, OS_dispatch_queue_ptr);
  sub_1000212DC();
  v82 = v76;
  v83 = v152;
  static FeedPopulationListenerSchedulerConfiguration.realtime(queue:)();
  v84 = objc_allocWithZone(type metadata accessor for SummaryTabForegroundFeedPopulationOperation(0));
  v85 = sub_100021968(v39, v75, v79, v83);
  v151 = v85;

  sub_100007A94(&v178, &aBlock);
  v175 = type metadata accessor for ProfileDashboardsFeedPopulationListener();
  v176 = &protocol witness table for ProfileDashboardsFeedPopulationListener;
  *&v174 = v145;
  v86 = objc_allocWithZone(type metadata accessor for ForegroundFeedPopulationListeningOperation());

  v87 = ForegroundFeedPopulationListeningOperation.init(healthExperienceStore:listener:)();
  v152 = v87;
  v88 = v165;
  v89 = v72;
  v90 = sub_1000165B0(v165, &v178, v71, &v177, v72);
  sub_100007A94(&v178, &aBlock);
  sub_100007A94(&v177, &v174);
  v91 = swift_allocObject();
  v91[2] = v77;
  v91[3] = v88;
  sub_1000030A0(&aBlock, (v91 + 4));
  v91[9] = v71;
  v91[10] = v74;
  sub_1000030A0(&v174, (v91 + 11));
  v91[16] = v89;
  v91[17] = v90;
  v91[18] = v85;
  v91[19] = v87;
  v167 = swift_allocObject();
  *(v167 + 16) = ObjectType;
  v92 = v156;
  v163 = *(v156 + 16);
  v136 = v156 + 16;
  v93 = v155;
  v94 = v160;
  v163(v155, v159, v160);
  v95 = *(v92 + 80);
  v138 = ~v95;
  v96 = ((v95 + 24) & ~v95);
  v137 = v153 + 7;
  v164 = v96;
  v153 = (v96 + v153 + 7) & 0xFFFFFFFFFFFFFFF8;
  v97 = v153;
  v98 = swift_allocObject();
  v99 = v144;
  *(v98 + 16) = v144;
  v166 = *(v92 + 32);
  (v166)(v96 + v98, v93, v94);
  v100 = (v98 + v97);
  v101 = v146;
  *v100 = v162;
  v100[1] = v101;
  v149 = v90;
  v139 = v90;
  v102 = v99;
  v148 = v165;

  v103 = v102;

  v165 = v151;
  v143 = v152;

  v104 = static GenerationPhase.allCases.getter();
  sub_100029E2C(v104);

  v150 = v98;
  v105 = v157;
  v151 = v91;
  GenerationWorkRequest.init(environment:pluginIdentifierSetToRun:generationPhases:commitUrgentTransaction:makeGenerationWorkBlock:completionBlock:notStartedCancellationBlock:)();
  v106 = v155;
  v107 = v160;
  v163(v155, v159, v160);
  v108 = v153;
  v109 = swift_allocObject();
  *(v109 + 16) = v103;
  v144 = (v92 + 32);
  (v166)(v164 + v109, v106, v107);
  v110 = (v109 + v108);
  *v110 = v162;
  v110[1] = v101;
  v111 = v103;

  v164 = v111;
  v67 = sub_10001B460(v105, sub_1000238C0, v109);

  v112 = [v67 cancellationHandler];
  if (v112)
  {
    v113 = swift_allocObject();
    *(v113 + 16) = v112;
    v112 = sub_10002389C;
  }

  else
  {
    v113 = 0;
  }

  v153 = v112;
  v155 = v113;
  sub_100002590(v112, v113);
  sub_100002AE8(v112, v113);
  v135 = *&v165[qword_100042598];
  v152 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v114 = v154;
  v163(v154, v159, v160);
  v115 = (v95 + 48) & v138;
  v116 = (v137 + v115) & 0xFFFFFFFFFFFFFFF8;
  v117 = (v116 + 15) & 0xFFFFFFFFFFFFFFF8;
  v118 = (v117 + 23) & 0xFFFFFFFFFFFFFFF8;
  v119 = (v118 + 15) & 0xFFFFFFFFFFFFFFF8;
  v120 = (v119 + 15) & 0xFFFFFFFFFFFFFFF8;
  v121 = swift_allocObject();
  v122 = v153;
  *(v121 + 2) = v152;
  *(v121 + 3) = v122;
  v123 = v164;
  *(v121 + 4) = v155;
  *(v121 + 5) = v123;
  (v166)(v121 + v115, v114, v160);
  *(v121 + v116) = v135;
  v124 = (v121 + v117);
  v125 = v146;
  *v124 = v162;
  v124[1] = v125;
  *(v121 + v118) = v149;
  v126 = v165;
  *(v121 + v119) = v165;
  v127 = v143;
  *(v121 + v120) = v143;
  *(v121 + ((v120 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v172 = sub_100021F5C;
  v173 = v121;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v170 = sub_100003F14;
  v171 = &unk_10003E3C8;
  v128 = _Block_copy(&aBlock);
  v163 = v173;

  v129 = v164;
  v130 = v126;
  v166 = v127;

  v131 = v139;
  v132 = v153;
  v133 = v155;
  sub_100002590(v153, v155);

  sub_100002590(sub_100021F5C, v121);

  [v67 setCancellationHandler:v128];
  _Block_release(v128);

  sub_100002AE8(v132, v133);

  (*(v147 + 8))(v157, v140);
  sub_10000493C(&v177);
  (*(v156 + 8))(v159, v160);
  sub_10000493C(&v178);

LABEL_22:
  dispatch thunk of UnfairLock.unlock()();
  return v67;
}

uint64_t sub_100013C40()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v143 = *(v2 - 8);
  v144 = v2;
  v3 = __chkstk_darwin(v2);
  v139 = &v124[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin(v3);
  v131 = &v124[-v6];
  __chkstk_darwin(v5);
  v130 = &v124[-v7];
  sub_10001DA6C(0, &qword_100041C68, sub_100007100, &type metadata accessor for UserDefault);
  v9 = v8;
  v10 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v124[-v11];
  sub_100007100(0);
  v14 = __chkstk_darwin(v13 - 8);
  v137 = &v124[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v138 = &v124[-v17];
  __chkstk_darwin(v16);
  v19 = &v124[-v18];
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v132 = &v124[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v22);
  v141 = &v124[-v25];
  v26 = __chkstk_darwin(v24);
  v28 = &v124[-v27];
  v29 = __chkstk_darwin(v26);
  v128 = &v124[-v30];
  v31 = __chkstk_darwin(v29);
  v127 = &v124[-v32];
  __chkstk_darwin(v31);
  v34 = &v124[-v33];
  Date.init()();
  v35 = OBJC_IVAR____TtC10healthappd23HealthPluginHostService__appFirstLaunchDate;
  swift_beginAccess();
  v36 = *(v10 + 16);
  v126 = v35;
  v136 = v1;
  v36(v12, &v1[v35], v9);
  UserDefault.wrappedValue.getter();
  v37 = *(v10 + 8);
  v140 = v9;
  v38 = v9;
  v39 = v20;
  v40 = v21;
  v37(v12, v38);
  v41 = (*(v21 + 48))(v19, 1, v39);
  v134 = v34;
  v129 = v21;
  if (v41 == 1)
  {
    sub_1000232A4(v19);
    v42 = *(v21 + 16);
    v135 = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v42(v28, v34, v39);
    static Logger.general.getter();
    v130 = v28;
    v42(v141, v28, v39);
    v43 = v136;
    v44 = v136;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v145 = v128;
      *v47 = 136446722;
      v146 = ObjectType;
      swift_getMetatypeMetadata();
      v49 = String.init<A>(describing:)();
      v127 = v45;
      v51 = sub_100004364(v49, v50, &v145);
      v142 = v42;
      v52 = v40;
      v53 = v39;
      v54 = v51;

      *(v47 + 4) = v54;
      *(v47 + 12) = 2112;
      v55 = v141;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v57 = *(v52 + 8);
      v125 = v46;
      v141 = v57;
      (v57)(v55, v53);
      *(v47 + 14) = isa;
      *v48 = isa;
      *(v47 + 22) = 2082;
      v58 = v44;
      v59 = [v58 description];
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      v63 = sub_100004364(v60, v62, &v145);
      v39 = v53;
      v64 = v52;
      v42 = v142;
      v65 = v136;

      *(v47 + 24) = v63;
      v66 = v127;
      _os_log_impl(&_mh_execute_header, v127, v125, "[%{public}s]: Setting HealthApp first launch date: %@; %{public}s", v47, 0x20u);
      sub_100022788(v48, &qword_100041D30, &qword_100041D38, NSObject_ptr, sub_1000211FC);

      swift_arrayDestroy();

      v34 = v134;

      v67 = v131;
      v131 = *(v143 + 8);
      (v131)(v67, v144);
    }

    else
    {

      v92 = v141;
      v141 = *(v40 + 8);
      (v141)(v92, v39);
      v93 = v131;
      v131 = *(v143 + 8);
      (v131)(v93, v144);
      v64 = v40;
      v65 = v43;
    }

    v94 = v138;
    v95 = v130;
    v42(v138, v130, v39);
    (*(v64 + 56))(v94, 0, 1, v39);
    sub_100007470(v94, v137);
    swift_beginAccess();
    UserDefault.wrappedValue.setter();
    swift_endAccess();
    sub_1000232A4(v94);
    (v141)(v95, v39);
    v96 = v139;
    v69 = v135;
  }

  else
  {
    v68 = v127;
    (*(v21 + 32))(v127, v19, v39);
    static Logger.general.getter();
    v42 = *(v21 + 16);
    v69 = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v70 = v39;
    v42(v128, v68, v39);
    v71 = v136;
    v72 = v136;
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v145 = v131;
      *v75 = 136446722;
      v146 = ObjectType;
      swift_getMetatypeMetadata();
      v77 = String.init<A>(describing:)();
      LODWORD(v126) = v74;
      v79 = sub_100004364(v77, v78, &v145);
      v142 = v42;
      v80 = v79;

      *(v75 + 4) = v80;
      *(v75 + 12) = 2112;
      v81 = v128;
      v82 = Date._bridgeToObjectiveC()().super.isa;
      v135 = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v141 = *(v40 + 8);
      v83 = v81;
      v84 = v70;
      (v141)(v83, v70);
      *(v75 + 14) = v82;
      *v76 = v82;
      *(v75 + 22) = 2082;
      v85 = v72;
      v86 = [v85 description];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;

      v39 = v84;
      v90 = v87;
      v42 = v142;
      v65 = v136;
      v91 = sub_100004364(v90, v89, &v145);

      *(v75 + 24) = v91;
      _os_log_impl(&_mh_execute_header, v73, v126, "[%{public}s]: HealthApp first launch date already set: %@; %{public}s", v75, 0x20u);
      sub_100022788(v76, &qword_100041D30, &qword_100041D38, NSObject_ptr, sub_1000211FC);

      swift_arrayDestroy();

      v131 = *(v143 + 8);
      (v131)(v130, v144);
      (v141)(v127, v84);
      v69 = v135;
    }

    else
    {

      v97 = *(v40 + 8);
      v39 = v70;
      (v97)(v128, v70);
      v131 = *(v143 + 8);
      (v131)(v130, v144);
      v65 = v71;
      v141 = v97;
      (v97)(v68, v70);
    }

    v96 = v139;
    v34 = v134;
  }

  static Logger.general.getter();
  v98 = v132;
  v142 = v42;
  v42(v132, v34, v39);
  v99 = v65;
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v135 = v69;
    v103 = v102;
    v104 = swift_slowAlloc();
    v130 = v104;
    v136 = swift_slowAlloc();
    v145 = v136;
    *v103 = 136446722;
    v146 = ObjectType;
    swift_getMetatypeMetadata();
    v105 = String.init<A>(describing:)();
    v107 = v39;
    v108 = sub_100004364(v105, v106, &v145);

    *(v103 + 4) = v108;
    *(v103 + 12) = 2112;
    v109 = Date._bridgeToObjectiveC()().super.isa;
    v110 = v129;
    LODWORD(ObjectType) = v101;
    v132 = v100;
    v111 = v99;
    v112 = v141;
    (v141)(v98, v107);
    *(v103 + 14) = v109;
    *v104 = v109;
    *(v103 + 22) = 2082;
    v113 = v111;
    v114 = [v113 description];
    v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = v116;

    v39 = v107;
    v34 = v134;
    v118 = sub_100004364(v115, v117, &v145);
    v119 = v112;

    *(v103 + 24) = v118;
    v120 = v132;
    _os_log_impl(&_mh_execute_header, v132, ObjectType, "[%{public}s]: Updating HealthApp last opened date: %@; %{public}s", v103, 0x20u);
    sub_100022788(v130, &qword_100041D30, &qword_100041D38, NSObject_ptr, sub_1000211FC);

    swift_arrayDestroy();

    v121 = v139;
  }

  else
  {

    v110 = v129;
    v119 = v141;
    (v141)(v98, v39);
    v121 = v96;
  }

  (v131)(v121, v144);
  v122 = v138;
  v142(v138, v34, v39);
  (*(v110 + 56))(v122, 0, 1, v39);
  sub_100007470(v122, v137);
  swift_beginAccess();
  UserDefault.wrappedValue.setter();
  swift_endAccess();
  sub_1000232A4(v122);
  return v119(v34, v39);
}

uint64_t sub_100014A8C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    v14[1] = a1;
    *v8 = 136446210;
    swift_getMetatypeMetadata();
    v10 = String.init<A>(describing:)();
    v12 = sub_100004364(v10, v11, v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s]: Interactive generation completed/cancelled", v8, 0xCu);
    sub_10000493C(v9);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100014C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{

  TransactionManagedCache.finishUse(for:)();

  return a3(0);
}

uint64_t sub_100014CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{

  TransactionManagedCache.finishUse(for:)();

  return a4(0);
}

id sub_100014D14(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, char *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void (*a11)(uint64_t), uint64_t a12)
{
  v103 = a7;
  v104 = a8;
  v105 = a6;
  v106 = a2;
  v101 = a5;
  v102 = a4;
  v99 = a3;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v109 = &v99 - v18;
  v19 = __chkstk_darwin(v17);
  v107 = &v99 - v20;
  __chkstk_darwin(v19);
  v22 = &v99 - v21;
  static Logger.daemon.getter();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v111 = v13;
  v112 = v12;
  v110 = v16;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v115[0] = swift_slowAlloc();
    *v26 = 136446466;
    v114 = a12;
    v27 = a12;
    swift_getMetatypeMetadata();
    v28 = String.init<A>(describing:)();
    v30 = sub_100004364(v28, v29, v115);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000211FC(0, &qword_1000422A8, &qword_1000422B0, NSProgress_ptr);
    v31 = String.init<A>(describing:)();
    v33 = sub_100004364(v31, v32, v115);

    *(v26 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s]: Interactive generation cancelled: %s", v26, 0x16u);
    swift_arrayDestroy();
    v34 = v111;

    v35 = v34;
  }

  else
  {
    v36 = v13;
    v27 = a12;

    v35 = v36;
  }

  v37 = *(v35 + 8);
  v38 = v37(v22, v112);
  v39 = a10;
  v100 = a9;
  v40 = v107;
  if (v106)
  {
    v106(v38);
  }

  v106 = a11;
  v41 = v102;

  TransactionManagedCache.finishUse(for:)();

  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  v44 = v103;
  v45 = v104;
  v43[2] = v42;
  v43[3] = v44;
  v43[4] = v45;
  v43[5] = v27;

  sub_10001D2C8(v105, sub_100022034, v43);

  static Logger.generation.getter();
  v46 = v41;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v115[0] = v50;
    *v49 = 136446210;
    v51 = v46;
    v52 = [v51 description];
    v105 = a10;
    v53 = v52;
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = sub_100004364(v54, v56, v115);

    *(v49 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v47, v48, "[%{public}s: cancelling launch generation", v49, 0xCu);
    sub_10000493C(v50);

    v39 = v105;
    v58 = v107;
  }

  else
  {

    v58 = v40;
  }

  v37(v58, v112);
  v59 = v109;
  v60 = &off_100041000;
  [v100 cancel];
  static Logger.personalization.getter();
  v61 = v46;
  v62 = v39;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();

  v65 = os_log_type_enabled(v63, v64);
  v108 = v37;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v115[0] = swift_slowAlloc();
    *v66 = 136446466;
    v67 = v61;
    v68 = [v67 description];
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    v72 = sub_100004364(v69, v71, v115);

    *(v66 + 4) = v72;
    *(v66 + 12) = 2080;
    v73 = v62;
    v74 = [v73 description];
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    v78 = sub_100004364(v75, v77, v115);
    v60 = &off_100041000;

    *(v66 + 14) = v78;
    _os_log_impl(&_mh_execute_header, v63, v64, "[%{public}s: cancelling summary tab interactive picking operation %s", v66, 0x16u);
    swift_arrayDestroy();

    v108(v109, v112);
  }

  else
  {

    v37(v59, v112);
  }

  [v62 v60[56]];
  v79 = v110;
  static Logger.personalization.getter();
  v80 = v61;
  v81 = v106;
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v115[0] = swift_slowAlloc();
    *v84 = 136446466;
    v85 = v80;
    v86 = [v85 description];
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    v90 = sub_100004364(v87, v89, v115);

    *(v84 + 4) = v90;
    *(v84 + 12) = 2080;
    v91 = v81;
    v92 = [v91 description];
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v96 = sub_100004364(v93, v95, v115);

    *(v84 + 14) = v96;
    _os_log_impl(&_mh_execute_header, v82, v83, "[%{public}s: cancelling profile dashboards interactive picking operation %s", v84, 0x16u);
    swift_arrayDestroy();

    v97 = v110;
  }

  else
  {

    v97 = v79;
  }

  v108(v97, v112);
  return [v81 v60[56]];
}

void sub_1000155D0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    sub_10001790C(v8, v8, a2, a3, a4);
  }

  else
  {
    a2();
  }
}

uint64_t sub_100015664(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = v7;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22[0] = v14;
    v22[1] = a4;
    *v13 = 136446210;
    swift_getMetatypeMetadata();
    v15 = String.init<A>(describing:)();
    v17 = sub_100004364(v15, v16, v22);
    v20 = v6;
    v18 = v17;

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s]: Feed population completed after foreground generation; tearing down", v13, 0xCu);
    sub_10000493C(v14);

    (*(v21 + 8))(v9, v20);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  sub_10001C2D0();
  return sub_1000176F4(a2);
}

void *sub_1000158A8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t (*a10)(Class, unint64_t, uint64_t))
{
  v104 = a8;
  v101 = a7;
  v99 = a6;
  v102 = a5;
  v100 = a4;
  v107 = a3;
  v108 = a2;
  ObjectType = swift_getObjectType();
  v94 = type metadata accessor for Logger();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v103 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for PipelineProviderWrappers();
  v11 = *(v114 - 8);
  __chkstk_darwin(v114);
  isa = (v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100021114(0);
  v112 = v13;
  v91 = *(v13 - 8);
  __chkstk_darwin(v13);
  v92 = v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for DispatchTimeInterval();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = (v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000078E0(0);
  __chkstk_darwin(v16 - 8);
  v95 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HKProfileStore.ProfileIdentifiersPublisher();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000798C(0);
  v23 = v22;
  v24 = *(v22 - 8);
  __chkstk_darwin(v22);
  v26 = v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BundleFeedItemPluginBundleProvider();
  static BundleFeedItemPluginBundleProvider.sharedInstance.getter();
  v27 = dispatch thunk of PluginBundleProvider.availablePluginsMap.getter();

  sub_100011944(v27);

  type metadata accessor for BundleFeedItemGenerationPluginInfo();
  sub_100020860(&qword_100041D10, &type metadata accessor for BundleFeedItemGenerationPluginInfo, &protocol conformance descriptor for BundleFeedItemGenerationPluginInfo);
  v28 = Array<A>.makeGeneratorPipelineProviderWrappers()();

  v29 = objc_allocWithZone(HKProfileStore);
  v30 = [v29 initWithHealthStore:v108];
  HKProfileStore.profileIdentifiersPublisher.getter();
  sub_100020860(&qword_100041D08, &type metadata accessor for HKProfileStore.ProfileIdentifiersPublisher, &protocol conformance descriptor for HKProfileStore.ProfileIdentifiersPublisher);
  Publisher<>.mapToSourceProfiles(includeAgnostic:)();
  (*(v19 + 8))(v21, v18);
  sub_100020860(&qword_100041D18, sub_10000798C, &protocol conformance descriptor for Publishers.Map<A, B>);
  v106 = Publisher.eraseToAnyPublisher()();

  v31 = v28;
  (*(v24 + 8))(v26, v23);
  sub_100007A94(v107, &v117);
  v32 = *(v28 + 16);
  if (v32)
  {
    v116[0] = _swiftEmptyArrayStorage;
    sub_10001F188(0, v32, 0);
    v33 = v116[0];
    v35 = *(v11 + 16);
    v34 = v11 + 16;
    v111 = v35;
    v36 = (*(v34 + 64) + 32) & ~*(v34 + 64);
    v89[1] = v31;
    v37 = v31 + v36;
    v110 = *(v34 + 56);
    v38 = (v34 - 8);
    v39 = v91;
    v109 = v91 + 32;
    v40 = v34;
    v41 = v92;
    do
    {
      v43 = isa;
      v42 = v114;
      v44 = v40;
      v111(isa, v37, v114);
      PipelineProviderWrappers.sharableModel.getter();
      (*v38)(v43, v42);
      v116[0] = v33;
      v46 = v33[2];
      v45 = v33[3];
      if (v46 >= v45 >> 1)
      {
        sub_10001F188((v45 > 1), v46 + 1, 1);
        v33 = v116[0];
      }

      v33[2] = v46 + 1;
      (*(v39 + 32))(v33 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v46, v41, v112);
      v37 += v110;
      --v32;
      v40 = v44;
    }

    while (v32);
  }

  type metadata accessor for SharableModelGeneratorPipelineManager();
  sub_100007A94(v99, v116);

  v47 = v108;
  v48 = GeneratorPipelineManager.__allocating_init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:)();
  type metadata accessor for GeneratorPipelineGenerationOperation();

  dispatch thunk of CountryOracle.currentCountry()();
  static GenerationPhase.allCases.getter();
  v49 = v96;
  *v96 = 150;
  (*(v97 + 104))(v49, enum case for DispatchTimeInterval.seconds(_:), v98);
  v50 = GeneratorPipelineGenerationOperation.__allocating_init(feedItemManager:sharableModelManager:sourceProfiles:country:generationPhases:commitAsUrgent:isLaunchGeneration:timeoutInterval:)();
  sub_100004210(0, &qword_100041E60, NSOperationQueue_ptr);
  v51._object = 0x8000000100033010;
  v51._countAndFlagsBits = 0xD00000000000002BLL;
  v118.value = 0;
  v118.is_nil = 1;
  isa = NSOperationQueue.init(name:maxConcurrentOperationCount:)(v51, v118).super.isa;
  [(objc_class *)isa setQualityOfService:25];
  v52 = _swiftEmptyArrayStorage;
  v116[0] = _swiftEmptyArrayStorage;
  v53 = v104;
  if (v104)
  {
    v54 = v104;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v52 = v116[0];
  }

  v114 = v48;
  if (v52 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v56 = 0;
    v57 = v52 & 0xC000000000000001;
    v58 = v52 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v57)
      {
        v59 = v52;
        v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v56 >= *(v58 + 16))
        {
          goto LABEL_28;
        }

        v59 = v52;
        v60 = *(v52 + 8 * v56 + 32);
      }

      v52 = v60;
      v61 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      [v50 addDependency:v60];

      ++v56;
      v52 = v59;
      if (v61 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_21:
  v62 = a9;
  v111 = a10;

  v63 = v103;
  static Logger.daemon.getter();
  v64 = v105;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();

  v67 = os_log_type_enabled(v65, v66);
  v112 = v52;
  if (v67)
  {
    v68 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v115 = v109;
    *v68 = 136446722;
    v117 = ObjectType;
    swift_getMetatypeMetadata();
    v69 = String.init<A>(describing:)();
    v71 = sub_100004364(v69, v70, &v115);
    v110 = a9;
    v72 = v71;

    *(v68 + 4) = v72;
    *(v68 + 12) = 2082;
    sub_100004210(0, &qword_100042268, NSOperation_ptr);

    v73 = Array.description.getter();
    v75 = v74;

    v76 = sub_100004364(v73, v75, &v115);

    *(v68 + 14) = v76;
    *(v68 + 22) = 2082;
    v77 = v64;
    v78 = [v77 description];
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    v53 = v104;
    v82 = sub_100004364(v79, v81, &v115);

    *(v68 + 24) = v82;
    v62 = v110;
    _os_log_impl(&_mh_execute_header, v65, v66, "[%{public}s]: Enqueuing prerequisite foreground work before interactive generation: %{public}s; %{public}s", v68, 0x20u);
    swift_arrayDestroy();

    (*(v93 + 8))(v103, v94);
  }

  else
  {

    (*(v93 + 8))(v63, v94);
  }

  v83 = v107;
  v84 = v111;
  if (v53)
  {
    [v62 addDependency:v53];
    [v84 addDependency:v53];
  }

  sub_100004210(0, &qword_100042268, NSOperation_ptr);

  v85 = Array._bridgeToObjectiveC()().super.isa;

  v86 = isa;
  [(objc_class *)isa addOperations:v85 waitUntilFinished:0];

  [(objc_class *)v86 addOperation:v62];
  [(objc_class *)v86 addOperation:v84];
  sub_10000AA10(v83, v83[3]);
  v87 = dispatch thunk of HealthExperienceStore.sharedBackgroundContext.getter();
  dispatch thunk of AppSessionAnalyticsManager.updateCurrentEventWithHighlightsFeedPresentationAnalytics(in:)();

  dispatch thunk of AppSessionAnalyticsManager.updateCurrentEventWithDemographicAnalytics()();
  dispatch thunk of AppSessionAnalyticsManager.updateCurrentEventWithImproveHealthActivityAnalytics()();

  sub_100020860(&qword_100041D20, &type metadata accessor for GeneratorPipelineGenerationOperation, &protocol conformance descriptor for GeneratorPipelineGenerationOperation);
  return v50;
}

char *sub_1000165B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v111 = a3;
  v112 = a5;
  v108 = a2;
  v109 = a4;
  v107 = a1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v117 = *(v5 - 8);
  v118 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v101 - v9;
  v11 = type metadata accessor for DispatchTimeInterval();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000078E0(0);
  __chkstk_darwin(v15 - 8);
  v115 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021098(0);
  v113 = *(v17 - 8);
  v114 = v17;
  __chkstk_darwin(v17);
  v110 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021114(0);
  v122 = v19;
  v124 = *(v19 - 8);
  __chkstk_darwin(v19);
  v106 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for PipelineProviderWrappers();
  v21 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000211C8(0);
  v121 = v23;
  v123 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BundleFeedItemPluginBundleProvider();
  static BundleFeedItemPluginBundleProvider.sharedInstance.getter();
  v26 = dispatch thunk of PluginBundleProvider.availableLaunchGenerationPlugins.getter();

  type metadata accessor for BundleFeedItemGenerationPluginInfo();
  sub_100020860(&qword_100041D10, &type metadata accessor for BundleFeedItemGenerationPluginInfo, &protocol conformance descriptor for BundleFeedItemGenerationPluginInfo);
  v27 = Array<A>.makeGeneratorPipelineProviderWrappers()();
  if (*(v27 + 16))
  {
    v102 = v14;
    v103 = v12;
    v104 = v11;
    v105 = v10;

    v28 = *(v27 + 16);
    if (v28)
    {
      v142[0] = _swiftEmptyArrayStorage;
      sub_10001F1D8(0, v28, 0);
      v29 = v142[0];
      v31 = *(v21 + 16);
      v30 = v21 + 16;
      v32 = *(v30 + 64);
      v101 = v27;
      v33 = v27 + ((v32 + 32) & ~v32);
      v126 = *(v30 + 56);
      v127 = v31;
      v128 = v30;
      v125 = (v30 - 8);
      v119 = v123 + 4;
      v34 = v33;
      v35 = v28;
      do
      {
        v36 = v129;
        v37 = v130;
        v127(v129, v34, v130);
        PipelineProviderWrappers.feedItem.getter();
        v120 = *v125;
        v120(v36, v37);
        v142[0] = v29;
        v39 = v29[2];
        v38 = v29[3];
        if (v39 >= v38 >> 1)
        {
          sub_10001F1D8((v38 > 1), v39 + 1, 1);
          v29 = v142[0];
        }

        v29[2] = v39 + 1;
        (v123[4])(v29 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + v123[9] * v39, v25, v121);
        v34 += v126;
        --v35;
      }

      while (v35);
      v123 = v29;
      v142[0] = _swiftEmptyArrayStorage;
      sub_10001F188(0, v28, 0);
      v40 = v142[0];
      v41 = v106;
      v42 = v120;
      do
      {
        v43 = v129;
        v44 = v130;
        v127(v129, v33, v130);
        PipelineProviderWrappers.sharableModel.getter();
        v42(v43, v44);
        v142[0] = v40;
        v46 = *(v40 + 16);
        v45 = *(v40 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_10001F188((v45 > 1), v46 + 1, 1);
          v40 = v142[0];
        }

        *(v40 + 16) = v46 + 1;
        (*(v124 + 32))(v40 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v46, v41, v122);
        v33 += v126;
        --v28;
      }

      while (v28);
    }

    else
    {

      v123 = _swiftEmptyArrayStorage;
    }

    v66 = type metadata accessor for DispatchQueueOrchestrationScheduler();
    v67 = DispatchQueueOrchestrationScheduler.__allocating_init(environment:)();
    v68 = v108;
    sub_100007A94(v108, v142);
    v69 = v109;
    sub_100007A94(v109, v141);
    v139 = v66;
    v140 = &protocol witness table for DispatchQueueOrchestrationScheduler;
    v138[0] = v67;
    v136 = v66;
    v137 = &protocol witness table for DispatchQueueOrchestrationScheduler;
    v135[0] = v67;
    type metadata accessor for HealthPluginHostService.JustPrimarySnippetsFeedItemGeneratorPipelineManager(0);
    swift_allocObject();
    sub_100007A94(v142, &v134);
    sub_100007A94(v141, &v133);
    sub_100007A94(v138, &v132);
    sub_100007A94(v135, &v131);
    swift_retain_n();
    v70 = v107;

    v130 = FeedItemGeneratorPipelineManager.init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)();
    sub_10000493C(v141);
    sub_10000493C(v142);
    sub_10000493C(v135);
    sub_10000493C(v138);
    sub_100007A94(v68, v142);
    sub_100007A94(v69, v141);
    v139 = v66;
    v140 = &protocol witness table for DispatchQueueOrchestrationScheduler;
    v138[0] = v67;
    v136 = v66;
    v137 = &protocol witness table for DispatchQueueOrchestrationScheduler;
    v135[0] = v67;
    type metadata accessor for SharableModelGeneratorPipelineManager();
    swift_allocObject();
    v129 = v67;
    swift_retain_n();
    v71 = v70;

    v72 = SharableModelGeneratorPipelineManager.init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)();
    v127 = type metadata accessor for GeneratorPipelineGenerationOperation();
    sub_100023774(0, &qword_100042240, &type metadata for SourceProfile, &type metadata accessor for _ContiguousArrayStorage);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_100031A60;

    *(v73 + 32) = static SourceProfile.primary.getter();
    v142[0] = v73;
    sub_100023774(0, &qword_100041D00, &type metadata for SourceProfile, &type metadata accessor for Array);
    v74 = v110;
    Just.init(_:)();
    sub_100020860(&qword_100042248, sub_100021098, &protocol conformance descriptor for Just<A>);
    v75 = v114;
    Publisher.eraseToAnyPublisher()();
    (*(v113 + 8))(v74, v75);
    dispatch thunk of CountryOracle.currentCountry()();
    sub_10001DA6C(0, &qword_100042250, &type metadata accessor for GenerationPhase, &type metadata accessor for _ContiguousArrayStorage);
    v76 = type metadata accessor for GenerationPhase();
    v77 = *(v76 - 8);
    v78 = *(v77 + 72);
    v79 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_100031C70;
    v81 = v80 + v79;
    v82 = *(v77 + 104);
    v82(v81, enum case for GenerationPhase.sharableModels(_:), v76);
    v82(v81 + v78, enum case for GenerationPhase.feedItems(_:), v76);
    v84 = v102;
    v83 = v103;
    *v102 = 3;
    (*(v83 + 104))(v84, enum case for DispatchTimeInterval.seconds(_:), v104);
    v128 = v72;
    v85 = GeneratorPipelineGenerationOperation.__allocating_init(feedItemManager:sharableModelManager:sourceProfiles:country:generationPhases:commitAsUrgent:isLaunchGeneration:timeoutInterval:)();
    v86 = v105;
    static Logger.daemon.getter();
    v87 = v85;
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v141[0] = v92;
      *v90 = 136315394;
      v142[0] = ObjectType;
      swift_getMetatypeMetadata();
      v93 = String.init<A>(describing:)();
      v95 = sub_100004364(v93, v94, v141);

      *(v90 + 4) = v95;
      *(v90 + 12) = 2112;
      *(v90 + 14) = v87;
      *v91 = v87;
      v96 = v87;
      _os_log_impl(&_mh_execute_header, v88, v89, "[%s]: Enqueuing just Summaries background generation: %@", v90, 0x16u);
      sub_100022788(v91, &qword_100041D30, &qword_100041D38, NSObject_ptr, sub_1000211FC);

      sub_10000493C(v92);
    }

    else
    {
    }

    (*(v117 + 8))(v86, v118);
    return v87;
  }

  v47 = ObjectType;

  static Logger.daemon.getter();

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v48, v49))
  {

    (*(v117 + 8))(v8, v118);
    return 0;
  }

  LODWORD(v129) = v49;
  v50 = swift_slowAlloc();
  v128 = swift_slowAlloc();
  v141[0] = v128;
  *v50 = 136315394;
  v142[0] = v47;
  swift_getMetatypeMetadata();
  v51 = String.init<A>(describing:)();
  v53 = sub_100004364(v51, v52, v141);

  *(v50 + 4) = v53;
  *(v50 + 12) = 2080;
  v54 = v117;
  v55 = v118;
  if (!(v26 >> 62))
  {
    v56 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v56)
    {
      goto LABEL_15;
    }

LABEL_31:

LABEL_32:
    v97 = Array.description.getter();
    v99 = v98;

    v100 = sub_100004364(v97, v99, v141);

    *(v50 + 14) = v100;
    _os_log_impl(&_mh_execute_header, v48, v129, "[%s]: Unable to find launch generation plugins to enqueue launch generation. Expected launch generation plugins: %s", v50, 0x16u);
    swift_arrayDestroy();

    (*(v54 + 8))(v8, v55);
    return 0;
  }

  v56 = _CocoaArrayWrapper.endIndex.getter();
  if (!v56)
  {
    goto LABEL_31;
  }

LABEL_15:
  v125 = v50;
  v126 = v48;
  v127 = v8;
  v142[0] = _swiftEmptyArrayStorage;
  result = sub_10001F168(0, v56 & ~(v56 >> 63), 0);
  v130 = v56;
  if ((v56 & 0x8000000000000000) == 0)
  {
    v58 = 0;
    v59 = v142[0];
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v60 = dispatch thunk of BundleFeedItemGenerationPluginInfo.bundleIdentifier.getter();
      v62 = v61;

      v142[0] = v59;
      v64 = *(v59 + 16);
      v63 = *(v59 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_10001F168((v63 > 1), v64 + 1, 1);
        v59 = v142[0];
      }

      ++v58;
      *(v59 + 16) = v64 + 1;
      v65 = v59 + 16 * v64;
      *(v65 + 32) = v60;
      *(v65 + 40) = v62;
    }

    while (v130 != v58);

    v54 = v117;
    v55 = v118;
    v48 = v126;
    v8 = v127;
    v50 = v125;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_100017518(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v26 = a2;
  v27 = a3;
  v13 = a8[3];
  v12 = a8[4];
  v14 = sub_100020718(a8, v13);
  __chkstk_darwin(v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = a9[3];
  v19 = a9[4];
  v20 = sub_100020718(a9, v18);
  __chkstk_darwin(v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v24 = sub_10002059C(a1, v26, v27, a4 & 1, v29, v30, v31, v16, v22, v28, v18, v13, v19, v12);
  sub_10000493C(a9);
  sub_10000493C(a8);
  return v24;
}

uint64_t sub_1000176F4(uint64_t (*a1)(void))
{
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = v3;
    v9 = v8;
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446210;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100004364(v11, v12, &v20);
    v18 = v2;
    v14 = a1;
    v15 = v13;

    *(v9 + 4) = v15;
    a1 = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s] Foreground generation operation completed", v9, 0xCu);
    sub_10000493C(v10);

    (*(v19 + 8))(v5, v18);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  sub_10001C3A8(0);
  return a1(1);
}

uint64_t sub_10001790C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DateInterval();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v15 = *(static Feed.Kind.relevanceRankedFeeds.getter() + 16);
  if (v15)
  {
    v26[1] = a1;
    v27 = v10;
    v28 = _swiftEmptyArrayStorage;
    sub_10001F168(0, v15, 0);
    v16 = 32;
    v17 = v28;
    do
    {
      v18 = Feed.Kind.rawValue.getter();
      v28 = v17;
      v21 = v17[2];
      v20 = v17[3];
      if (v21 >= v20 >> 1)
      {
        v26[0] = v18;
        v23 = v19;
        sub_10001F168((v20 > 1), v21 + 1, 1);
        v19 = v23;
        v18 = v26[0];
        v17 = v28;
      }

      v17[2] = v21 + 1;
      v22 = &v17[2 * v21];
      v22[4] = v18;
      v22[5] = v19;
      ++v16;
      --v15;
    }

    while (v15);

    v10 = v27;
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
  }

  static DateInterval.allTimeInterval.getter();
  sub_100017B18(v17, v24, sub_100022040, v14);

  (*(v11 + 8))(v13, v10);
}

uint64_t sub_100017B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 BOOLForKey:v11];

  if (v12)
  {
    static Logger.generation.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v15 = 136315394;
      v31[0] = ObjectType;
      swift_getMetatypeMetadata();
      v16 = String.init<A>(describing:)();
      v18 = sub_100004364(v16, v17, &v33);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_100004364(0xD000000000000032, 0x8000000100032F90, &v33);
      _os_log_impl(&_mh_execute_header, v13, v14, "[%s] %s default is set - skipping work", v15, 0x16u);
      swift_arrayDestroy();
    }

    v19 = (*(v7 + 8))(v9, v6);
    return v29(v19);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = _swiftEmptyArrayStorage;
    if (v21)
    {
      v33 = _swiftEmptyArrayStorage;
      sub_10001F228(0, v21, 0);
      v22 = v33;
      v23 = (a1 + 40);
      do
      {
        v24 = *v23;
        v31[0] = *(v23 - 1);
        v31[1] = v24;
        sub_100017E80(v31, ObjectType, &v32);
        v25 = v32;
        v33 = v22;
        v27 = v22[2];
        v26 = v22[3];
        if (v27 >= v26 >> 1)
        {
          sub_10001F228((v26 > 1), v27 + 1, 1);
          v22 = v33;
        }

        v22[2] = v27 + 1;
        *(v22 + v27 + 32) = v25;
        v23 += 2;
        --v21;
      }

      while (v21);
    }

    sub_1000238C4(v22, v29, v30);
  }
}

uint64_t sub_100017E80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v33 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];

  v32 = v11;
  v13 = Feed.Kind.init(rawValue:)();
  if (v13 == 6)
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v25._object = 0x8000000100032FD0;
    v25._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v25);
    v26._countAndFlagsBits = v32;
    v26._object = v12;
    String.append(_:)(v26);
    v27._countAndFlagsBits = 0xD00000000000001ELL;
    v27._object = 0x8000000100032FF0;
    String.append(_:)(v27);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LODWORD(v14) = v13;
    static Logger.personalization.getter();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v30 = v14;
      v14 = v17;
      v18 = swift_slowAlloc();
      v31 = v4;
      v36 = v18;
      *v14 = 136315394;
      v34 = a2;
      swift_getMetatypeMetadata();
      v19 = String.init<A>(describing:)();
      v21 = sub_100004364(v19, v20, &v36);
      v29 = v8;
      v22 = a3;
      v23 = v21;

      *(v14 + 4) = v23;
      a3 = v22;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_100004364(v32, v12, &v36);
      _os_log_impl(&_mh_execute_header, v15, v16, "[%s] Generating feed of kind %s", v14, 0x16u);
      swift_arrayDestroy();

      LOBYTE(v14) = v30;

      result = (*(v33 + 8))(v10, v29);
    }

    else
    {

      result = (*(v33 + 8))(v10, v8);
    }

    *a3 = v14;
  }

  return result;
}

uint64_t sub_1000182E8(unint64_t a1, void (*a2)(void), unint64_t a3)
{
  v75 = a1;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for ModelTrainingEvent();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v76 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v68 = *(v10 - 8);
  v69 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v64 = v61 - v15;
  __chkstk_darwin(v14);
  v17 = v61 - v16;
  v66 = v3;

  dispatch thunk of UnfairLock.lock()();
  v18 = sub_100024BF0();
  dispatch thunk of UnfairLock.unlock()();

  v67 = v18;
  if (v18)
  {
    v63 = ObjectType;
    static Logger.personalization.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v65 = a2;
    if (v21)
    {
      v13 = swift_slowAlloc();
      *&v77 = swift_slowAlloc();
      *v13 = 136315394;
      v79[0] = v63;
      swift_getMetatypeMetadata();
      v22 = String.init<A>(describing:)();
      v24 = a3;
      v25 = sub_100004364(v22, v23, &v77);

      *(v13 + 4) = v25;
      a3 = v24;
      *(v13 + 6) = 2080;
      *(v13 + 14) = sub_100004364(0xD00000000000001FLL, 0x8000000100032F10, &v77);
      _os_log_impl(&_mh_execute_header, v19, v20, "[%s] %s Request to submit training received", v13, 0x16u);
      swift_arrayDestroy();
      a2 = v65;
    }

    v62 = *(v68 + 8);
    v62(v17, v69);
    v26 = v75;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v74 = JSONDecoder.init()();
    if (v26 >> 62)
    {
      goto LABEL_28;
    }

    for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      *&v77 = _swiftEmptyArrayStorage;
      v28 = sub_10001F248(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        sub_100021044(v28, v29);
        v79[0] = 0;
        v79[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(42);
        v55 = [v66 description];
        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        v59._countAndFlagsBits = v56;
        v59._object = v58;
        String.append(_:)(v59);

        v60._countAndFlagsBits = 0xD000000000000026;
        v60._object = 0x8000000100032F60;
        String.append(_:)(v60);
        v79[5] = v13;
        sub_100020D30(0, &qword_100041AD8, &protocol descriptor for Error, 1);
        _print_unlocked<A, B>(_:_:)();
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v61[1] = a3;
      a3 = 0;
      v13 = 0;
      v30 = v77;
      v31 = v26;
      v72 = i;
      v73 = v26 & 0xC000000000000001;
      v70 = v26 & 0xFFFFFFFFFFFFFF8;
      v71 = v8 + 32;
      while (1)
      {
        a2 = (a3 + 1);
        if (__OFADD__(a3, 1))
        {
          break;
        }

        if (v73)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a3 >= *(v70 + 16))
          {
            goto LABEL_27;
          }

          v32 = *(v31 + 8 * a3 + 32);
        }

        v33 = v32;
        v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
        sub_100020860(&qword_100042220, &type metadata accessor for ModelTrainingEvent, &protocol conformance descriptor for ModelTrainingEvent);
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        sub_100021044(v34, v36);

        *&v77 = v30;
        v38 = *(v30 + 16);
        v37 = *(v30 + 24);
        v26 = v38 + 1;
        if (v38 >= v37 >> 1)
        {
          sub_10001F248((v37 > 1), v38 + 1, 1);
          v30 = v77;
        }

        *(v30 + 16) = v26;
        (*(v8 + 32))(v30 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v38, v76, v7);
        ++a3;
        v31 = v75;
        if (a2 == v72)
        {
          a2 = v65;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }

LABEL_18:
    dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
    if (v78)
    {
      sub_1000030A0(&v77, v79);
      dispatch thunk of SummaryTabFeedPopulationManager.submitTraining(trainingEvents:store:completion:)();

      return sub_10000493C(v79);
    }

    else
    {

      sub_10000A920(&v77);
      v47 = v64;
      static Logger.generation.getter();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *&v77 = swift_slowAlloc();
        *v50 = 136315394;
        v79[0] = v63;
        swift_getMetatypeMetadata();
        v51 = String.init<A>(describing:)();
        v53 = sub_100004364(v51, v52, &v77);

        *(v50 + 4) = v53;
        *(v50 + 12) = 2080;
        *(v50 + 14) = sub_100004364(0xD00000000000001FLL, 0x8000000100032F10, &v77);
        _os_log_impl(&_mh_execute_header, v48, v49, "[%s] %s no readyHealthExperienceStore - cannot start", v50, 0x16u);
        swift_arrayDestroy();
      }

      v54 = (v62)(v47, v69);
      a2(v54);
    }
  }

  else
  {
    static Logger.generation.getter();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *&v77 = swift_slowAlloc();
      *v42 = 136315394;
      v79[0] = ObjectType;
      swift_getMetatypeMetadata();
      v43 = String.init<A>(describing:)();
      v45 = sub_100004364(v43, v44, &v77);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_100004364(0xD00000000000001FLL, 0x8000000100032F10, &v77);
      _os_log_impl(&_mh_execute_header, v40, v41, "[%s] %s feedPopulationManager not set - cannot do work", v42, 0x16u);
      swift_arrayDestroy();
    }

    v46 = (*(v68 + 8))(v13, v69);
    return (a2)(v46);
  }
}

uint64_t sub_100018D14(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Logger();
  v9 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.generation.getter();
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = a2;
    v16 = v15;
    v33 = swift_slowAlloc();
    *&v40 = v33;
    *v16 = 136315395;
    *&v39[0] = ObjectType;
    swift_getMetatypeMetadata();
    v17 = String.init<A>(describing:)();
    v19 = sub_100004364(v17, v18, &v40);
    v34 = v8;
    v20 = v6;
    v21 = v5;
    v22 = v19;

    *(v16 + 4) = v22;
    *(v16 + 12) = 2081;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = sub_100004364(v23, v24, &v40);
    v5 = v21;
    v6 = v20;
    v8 = v34;

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%s] Posting notification named %{private}s", v16, 0x16u);
    swift_arrayDestroy();

    a2 = v35;
  }

  (*(v9 + 8))(v11, v36);
  memset(v39, 0, 32);
  v26 = v12;
  Notification.init(name:object:userInfo:)();

  Notification.userInfo.setter();
  if (!a2)
  {
    goto LABEL_11;
  }

  v37 = HealthPluginHostBufferPostNotificationUserInfoKey.getter();
  v38 = v27;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v28 = sub_10001F780(v39), (v29 & 1) == 0))
  {
    sub_100020F94(v39);
LABEL_11:
    v40 = 0u;
    v41 = 0u;
    goto LABEL_12;
  }

  sub_100004988(*(a2 + 56) + 32 * v28, &v40);
  sub_100020F94(v39);
  if (!*(&v41 + 1))
  {
LABEL_12:
    sub_100020F24(&v40, &qword_100042218, &type metadata for Any + 8);
    goto LABEL_13;
  }

  if (swift_dynamicCast() && (v39[0] & 1) != 0)
  {
    type metadata accessor for HealthPluginHostNotificationBuffer();
    static HealthPluginHostNotificationBuffer.shared.getter();
    dispatch thunk of HealthPluginHostNotificationBuffer.storeNotification(_:)();
  }

LABEL_13:
  v30 = [objc_opt_self() defaultCenter];
  isa = Notification._bridgeToObjectiveC()().super.isa;
  [v30 postNotification:isa];

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000191CC(uint64_t (*a1)(void), uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;

  dispatch thunk of UnfairLock.lock()();
  v12 = sub_100024BF0();
  dispatch thunk of UnfairLock.unlock()();

  if (v12)
  {
    v32 = a1;
    static Logger.personalization.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = a2;
      v17 = v16;
      v33 = v16;
      v34 = ObjectType;
      *v15 = 136315138;
      swift_getMetatypeMetadata();
      v18 = String.init<A>(describing:)();
      v20 = sub_100004364(v18, v19, &v33);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%s] Collecting diagnostic logs for feed population", v15, 0xCu);
      sub_10000493C(v17);
      a2 = v31;
    }

    (*(v6 + 8))(v11, v5);
    v21 = swift_allocObject();
    *(v21 + 16) = v32;
    *(v21 + 24) = a2;

    SummaryTabFeedPopulationManager.collectDiagnosticLogs(_:)();
  }

  else
  {
    static Logger.generation.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = a1;
      v33 = v26;
      v27 = v26;
      *v25 = 136315138;
      v34 = ObjectType;
      swift_getMetatypeMetadata();
      v28 = String.init<A>(describing:)();
      v30 = sub_100004364(v28, v29, &v33);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%s] feedPopulationManager not set - cannot do work", v25, 0xCu);
      sub_10000493C(v27);
      a1 = v32;
    }

    (*(v6 + 8))(v9, v5);
    return a1(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100019564(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v28 = type metadata accessor for URL();
  v6 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v23[1] = a3;
    v24 = a2;
    v29 = _swiftEmptyArrayStorage;
    sub_10001F168(0, v9, 0);
    v10 = v29;
    v12 = *(v6 + 16);
    v11 = v6 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v26 = *(v11 + 56);
    v27 = v12;
    v25 = (v11 - 8);
    do
    {
      v14 = v28;
      v15 = v11;
      v27(v8, v13, v28);
      v16 = URL.path.getter();
      v18 = v17;
      (*v25)(v8, v14);
      v29 = v10;
      v20 = v10[2];
      v19 = v10[3];
      if (v20 >= v19 >> 1)
      {
        sub_10001F168((v19 > 1), v20 + 1, 1);
        v10 = v29;
      }

      v10[2] = v20 + 1;
      v21 = &v10[2 * v20];
      v21[4] = v16;
      v21[5] = v18;
      v13 += v26;
      --v9;
      v11 = v15;
    }

    while (v9);
    a2 = v24;
  }

  a2(v10);
}

uint64_t sub_10001985C(uint64_t a1, char a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  if (a1)
  {
    swift_errorRetain();
    static Logger.daemon.getter();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v40 = v9;
      v19 = v18;
      v20 = swift_slowAlloc();
      v42 = a3;
      v44 = v20;
      *v19 = 136446722;
      v21 = _typeName(_:qualified:)();
      v23 = sub_100004364(v21, v22, &v44);
      v41 = a4;
      v24 = v23;

      *(v19 + 4) = v24;
      *(v19 + 12) = 1024;
      *(v19 + 14) = a2 & 1;
      *(v19 + 18) = 2082;
      v43 = a1;
      swift_errorRetain();
      sub_100020D30(0, &qword_100041AD8, &protocol descriptor for Error, 1);
      v25 = String.init<A>(describing:)();
      v27 = sub_100004364(v25, v26, &v44);

      *(v19 + 20) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s [Transaction] Transaction was not committed asUrgent %{BOOL}d: %{public}s", v19, 0x1Cu);
      swift_arrayDestroy();
      a3 = v42;

      (*(v10 + 8))(v15, v40);
    }

    else
    {

      (*(v10 + 8))(v15, v9);
    }

    swift_errorRetain();
    a3(0, a1);
  }

  else
  {
    static Logger.daemon.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v42 = a3;
      v31 = v30;
      v32 = swift_slowAlloc();
      v41 = a4;
      v33 = v32;
      v44 = v32;
      *v31 = 136446466;
      v34 = _typeName(_:qualified:)();
      v36 = v9;
      v37 = sub_100004364(v34, v35, &v44);

      *(v31 + 4) = v37;
      *(v31 + 12) = 1024;
      *(v31 + 14) = a2 & 1;
      _os_log_impl(&_mh_execute_header, v28, v29, "%{public}s [Transaction] Successfully committed transaction asUrgent %{BOOL}d", v31, 0x12u);
      sub_10000493C(v33);

      a3 = v42;

      (*(v10 + 8))(v13, v36);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    return (a3)(1, 0);
  }
}

void sub_100019D78(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_100019E74(uint64_t (*a1)(void), uint64_t a2)
{
  swift_getObjectType();
  v4 = type metadata accessor for DateInterval();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
  v13 = v41[3];
  sub_10000A920(v41);
  if (v13)
  {
    v38 = v4;
    static Logger.daemon.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v37 = v7;
      v18 = v17;
      v41[0] = v17;
      *v16 = 136446210;
      v19 = _typeName(_:qualified:)();
      v21 = sub_100004364(v19, v20, v41);
      v36 = v6;
      v22 = v21;

      *(v16 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] Running feed item generation because we have a ready store", v16, 0xCu);
      sub_10000493C(v18);

      (*(v37 + 8))(v12, v36);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }

    v32 = v39;
    static DateInterval.allTimeInterval.getter();
    v33 = swift_allocObject();
    *(v33 + 16) = a1;
    *(v33 + 24) = a2;

    return (*(v40 + 8))(v32, v38);
  }

  else
  {
    static Logger.daemon.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v40 = a2;
      v26 = v25;
      v27 = swift_slowAlloc();
      v37 = v7;
      v28 = v27;
      v41[0] = v27;
      *v26 = 136446210;
      v29 = _typeName(_:qualified:)();
      v31 = sub_100004364(v29, v30, v41);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] Falling back to requesting generation because we don't have a ready store", v26, 0xCu);
      sub_10000493C(v28);

      (*(v37 + 8))(v10, v6);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    sub_10001C3A8(1);
    return a1();
  }
}

id sub_10001A308(void (*a1)(void), uint64_t a2)
{
  v94 = a1;
  v95 = a2;
  ObjectType = swift_getObjectType();
  v93 = type metadata accessor for Logger();
  v92 = *(v93 - 8);
  v3 = __chkstk_darwin(v93);
  v87 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v82 = &v80 - v6;
  __chkstk_darwin(v5);
  v81 = &v80 - v7;
  v89 = type metadata accessor for UUID();
  v86 = *(v89 - 8);
  v8 = *(v86 + 64);
  v9 = __chkstk_darwin(v89);
  v84 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v85 = &v80 - v10;
  v91 = type metadata accessor for TransactionRecord();
  v88 = *(v91 - 8);
  v11 = *(v88 + 64);
  v12 = __chkstk_darwin(v91);
  v83 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v80 - v13;
  v15 = type metadata accessor for GenerationQueue.State();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2;
  v20 = *(v2 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_longRunningProcessOracle);

  dispatch thunk of GenerationQueue.state.getter();

  v21 = (*(v16 + 88))(v18, v15);
  v22 = enum case for GenerationQueue.State.idle(_:);
  (*(v16 + 8))(v18, v15);
  if (v21 != v22)
  {
    v55 = v87;
    static Logger.generation.getter();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&aBlock = v59;
      *v58 = 136446210;
      v60 = _typeName(_:qualified:)();
      v62 = sub_100004364(v60, v61, &aBlock);

      *(v58 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v56, v57, "[%{public}s] Failed to run launch generation since generation queue is not idle", v58, 0xCu);
      sub_10000493C(v59);
    }

    (*(v92 + 8))(v55, v93);
    goto LABEL_11;
  }

  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
  if (!v98)
  {
    sub_10000A920(&aBlock);
    v63 = v82;
    static Logger.generation.getter();
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&aBlock = v67;
      *v66 = 136446210;
      v68 = _typeName(_:qualified:)();
      v70 = sub_100004364(v68, v69, &aBlock);

      *(v66 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v64, v65, "[%{public}s] Failed to run launch generation since HealthExperienceStore cannot be created", v66, 0xCu);
      sub_10000493C(v67);
    }

    (*(v92 + 8))(v63, v93);
LABEL_11:
    v94(0);
    return [objc_allocWithZone(NSProgress) init];
  }

  sub_1000030A0(&aBlock, v102);
  v23 = *(v20 + 16);
  v24 = v14;
  v25 = TransactionRecord.init(name:)();
  __chkstk_darwin(v25);
  *(&v80 - 2) = v19;
  *(&v80 - 1) = v23;

  TransactionManagedCache.fetchCachedOrCreate(for:using:)();

  v26 = *(v20 + 24);
  v27 = *(v19 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_transactionBuilderManager);

  v87 = v23;
  v28 = sub_1000165B0(v23, v102, v26, v101, v27);

  if (v28)
  {
    v29 = v85;
    UUID.init()();
    v81 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = v88;
    v82 = v28;
    (*(v88 + 16))(v83, v24, v91);
    v31 = v86;
    (*(v86 + 16))(v84, v29, v89);
    v32 = (*(v30 + 80) + 24) & ~*(v30 + 80);
    v93 = v24;
    v33 = (v11 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = v31;
    v35 = (*(v31 + 80) + v33 + 8) & ~*(v31 + 80);
    v36 = (v8 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    *(v37 + 16) = v20;
    (*(v30 + 32))(v37 + v32, v83, v91);
    *(v37 + v33) = v81;
    (*(v34 + 32))(v37 + v35, v84, v89);
    v38 = (v37 + v36);
    v92 = v19;
    v39 = v94;
    v40 = v95;
    *v38 = v94;
    v38[1] = v40;
    *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
    v99 = sub_100020DB0;
    v100 = v37;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v97 = sub_100003F14;
    v98 = &unk_10003E210;
    v41 = _Block_copy(&aBlock);
    v42 = objc_opt_self();

    v43 = [v42 blockOperationWithBlock:v41];
    _Block_release(v41);

    v44 = v82;
    [v43 addDependency:v82];
    sub_100004210(0, &qword_100041E60, NSOperationQueue_ptr);
    v45 = static NSOperationQueue.userInitiated.getter();
    [v45 addOperation:v44];

    v46 = static NSOperationQueue.userInitiated.getter();
    [v46 addOperation:v43];

    v47 = [objc_allocWithZone(NSProgress) init];
    v48 = swift_allocObject();
    v48[2] = v44;
    v48[3] = v43;
    v48[4] = v39;
    v48[5] = v40;
    v99 = sub_100020ECC;
    v100 = v48;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v97 = sub_100003F14;
    v98 = &unk_10003E260;
    v49 = _Block_copy(&aBlock);

    v50 = v44;
    v51 = v43;
    sub_100002590(sub_100020ECC, v48);

    [v47 setCancellationHandler:v49];
    _Block_release(v49);

    v52 = v85;
    v53 = dispatch thunk of CancellableProgressList.add(_:uuid:)();

    (*(v86 + 8))(v52, v89);
    sub_10000493C(v101);
    (*(v88 + 8))(v93, v91);
    sub_10000493C(v102);
    return v53;
  }

  else
  {
    v71 = v81;
    static Logger.generation.getter();
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&aBlock = v75;
      *v74 = 136446210;
      v76 = _typeName(_:qualified:)();
      v78 = sub_100004364(v76, v77, &aBlock);

      *(v74 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v72, v73, "[%{public}s] Failed to run launch generation since operation cannot be created", v74, 0xCu);
      sub_10000493C(v75);
    }

    (*(v92 + 8))(v71, v93);
    v94(0);
    v79 = [objc_allocWithZone(NSProgress) init];

    sub_10000493C(v101);
    (*(v88 + 8))(v24, v91);
    sub_10000493C(v102);
    return v79;
  }
}

uint64_t sub_10001AF90(void x0_0, void *a1, const char *a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, a2, v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  type metadata accessor for PinnedContentManagerProvider();
  swift_allocObject();
  v12 = a1;
  PinnedContentManagerProvider.init(healthStore:)();
  dispatch thunk of PinnedContentManagerProvider.manager(for:)();
}

uint64_t sub_10001B134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void *a6, uint64_t a7)
{
  v9 = type metadata accessor for Logger();
  v25 = *(v9 - 8);
  v26 = v9;
  __chkstk_darwin(v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.generation.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23[1] = a6;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = a5;
    v23[0] = v16;
    v27[0] = v16;
    *v15 = 136446210;
    v17 = _typeName(_:qualified:)();
    v19 = sub_100004364(v17, v18, v27);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "[%{public}s] Launch generation completed", v15, 0xCu);
    sub_10000493C(v23[0]);
    a5 = v24;
  }

  (*(v25 + 8))(v11, v26);
  TransactionManagedCache.finishUse(for:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;

    dispatch thunk of CancellableProgressList.clearProgress(for:)();
  }

  return a5(1);
}

id sub_10001B3C0(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  v12 = a6(a5, v10);

  return v12;
}

id sub_10001B460(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v72 = a3;
  v73 = a2;
  ObjectType = swift_getObjectType();
  v86 = type metadata accessor for GenerationQueue.EnqueueResult();
  v85 = *(v86 - 8);
  v4 = __chkstk_darwin(v86);
  v84 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v83 = &v72 - v6;
  v7 = type metadata accessor for GenerationWorkRequest();
  v8 = *(v7 - 8);
  v91 = *(v8 + 64);
  v9 = __chkstk_darwin(v7);
  v75 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v72 - v11;
  v96 = &v72 - v11;
  v98 = type metadata accessor for UUID();
  v13 = *(v98 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v98);
  v99 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v101 = &v72 - v16;
  UUID.init()();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v82 = UnfairLock.init()();
  v17 = swift_allocObject();
  v97 = v17;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v18 = *(v8 + 16);
  v94 = a1;
  v100 = v7;
  v18(v12, a1, v7);
  v19 = v18;
  v93 = v18;
  v95 = v8 + 16;
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = v75;
  v19(v75, a1, v7);
  v22 = v13;
  v23 = *(v13 + 16);
  v76 = v13 + 16;
  v81 = v23;
  v24 = v98;
  v23(v99, v101, v98);
  v25 = v8;
  v26 = *(v8 + 80);
  v27 = (v26 + 16) & ~v26;
  v92 = v26 | 7;
  v90 = v27;
  v28 = *(v13 + 80);
  v29 = v22;
  v30 = (v91 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = v30;
  v31 = (v28 + v30 + 8) & ~v28;
  v78 = v31;
  v74 = (v14 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v88 = v25;
  v80 = *(v25 + 32);
  v91 = v25 + 32;
  v33 = v32 + v27;
  v34 = v21;
  v80(v33, v21, v100);
  *(v32 + v30) = v20;
  v87 = v29;
  v77 = *(v29 + 32);
  v35 = v99;
  v36 = v24;
  v77(v32 + v31, v99, v24);
  v37 = ObjectType;
  v38 = v74;
  *(v32 + v74) = ObjectType;
  GenerationWorkRequest.completionBlock.setter();
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = v34;
  v41 = v34;
  v42 = v100;
  v93(v41, v94, v100);
  v81(v35, v101, v36);
  v43 = swift_allocObject();
  v44 = v40;
  v45 = v40;
  v46 = v42;
  v47 = v42;
  v48 = v80;
  v80(v43 + v90, v44, v47);
  v49 = v79;
  *(v43 + v79) = v39;
  v77(v43 + v78, v99, v36);
  *(v43 + v38) = v37;
  v50 = v46;
  v51 = v82;
  v52 = v96;
  GenerationWorkRequest.notStartedCancellationBlock.setter();
  v93(v45, v94, v50);
  v53 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v48(v54 + v90, v45, v50);
  *(v54 + v49) = v51;
  v55 = v97;
  *(v54 + v53) = v97;

  v56 = v55;

  GenerationWorkRequest.makeGenerationWorkBlock.setter();
  v57 = v83;
  dispatch thunk of GenerationQueue.enqueue(_:)();
  v58 = v85;
  v59 = v84;
  v60 = v57;
  v61 = v86;
  (*(v85 + 32))(v84, v60, v86);
  v62 = v58;
  v63 = v61;
  LODWORD(v58) = (*(v58 + 88))(v59, v61);
  LODWORD(v61) = enum case for GenerationQueue.EnqueueResult.dropped(_:);
  (*(v62 + 8))(v59, v63);
  if (v58 == v61)
  {
    v73(0);
    v64 = objc_allocWithZone(NSProgress);
    v65 = [v64 initWithParent:0 userInfo:{0, v72}];
    v66 = v101;
  }

  else
  {
    v67 = objc_allocWithZone(NSProgress);
    v68 = [v67 initWithParent:0 userInfo:{0, v72}];
    v69 = swift_allocObject();
    v69[2] = v51;
    v69[3] = v56;
    v69[4] = ObjectType;
    aBlock[4] = sub_100020D24;
    aBlock[5] = v69;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003F14;
    aBlock[3] = &unk_10003E1C0;
    v70 = _Block_copy(aBlock);

    sub_100002590(sub_100020D24, v69);

    [v68 setCancellationHandler:v70];
    _Block_release(v70);

    v66 = v101;
    v65 = dispatch thunk of CancellableProgressList.add(_:uuid:)();
  }

  (*(v88 + 8))(v52, v100);
  (*(v87 + 8))(v66, v98);

  return v65;
}

void *sub_10001BD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), const char *a6)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(v12);
  v15();

  static Logger.daemon.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28[1] = a3;
    v29[0] = v19;
    v20 = v19;
    *v18 = 136315138;
    v29[1] = a4;
    swift_getMetatypeMetadata();
    v21 = String.init<A>(describing:)();
    v23 = sub_100004364(v21, v22, v29);
    v28[0] = v10;
    v24 = a6;
    v25 = v23;

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, v24, v18, 0xCu);
    sub_10000493C(v20);

    (*(v11 + 8))(v14, v28[0]);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27 = result;

    dispatch thunk of CancellableProgressList.clearProgress(for:)();
  }

  return result;
}

void *sub_10001BF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = GenerationWorkRequest.makeGenerationWorkBlock.getter();
  v7 = v6(a1);
  v9 = v8;

  dispatch thunk of UnfairLock.lock()();
  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = v7;
  *(a4 + 24) = v9;
  v11 = v7;

  dispatch thunk of UnfairLock.unlock()();
  return v7;
}

uint64_t sub_10001C014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of UnfairLock.lock()();
  static Logger.generation.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25[1] = a1;
    v13 = v12;
    v26[0] = swift_slowAlloc();
    *v13 = 136446466;
    *&v27 = a3;
    swift_getMetatypeMetadata();
    v14 = String.init<A>(describing:)();
    v16 = sub_100004364(v14, v15, v26);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    swift_beginAccess();
    v27 = *(a2 + 16);
    v17 = v27;
    sub_100020910(0, &qword_100042200, &qword_100042208, &protocol descriptor for GenerationWork, 0);
    v18 = v17;
    v19 = String.init<A>(describing:)();
    v21 = sub_100004364(v19, v20, v26);

    *(v13 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] Cancelling work: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  v22 = *(a2 + 16);
  if (v22)
  {
    [v22 cancel];
  }

  swift_beginAccess();
  v23 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;

  return dispatch thunk of UnfairLock.unlock()();
}

id sub_10001C2D0()
{
  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
  if (v2)
  {
    sub_1000030A0(&v1, v3);
    sub_100007A94(v3, &v1);
    sub_100020D30(0, &qword_100041C60, &protocol descriptor for HealthExperienceStore, 1);
    type metadata accessor for DaemonHealthExperienceStore();
    if (swift_dynamicCast())
    {
      dispatch thunk of DaemonHealthExperienceStore.cleanUpManagedObjectContext()();
    }

    sub_10000493C(v3);
  }

  else
  {
    sub_10000A920(&v1);
  }

  return [objc_opt_self() resetSharedInstances];
}

void sub_10001C3A8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v46 - v9;
  static Logger.daemon.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v49 = v6;
    v50 = v5;
    v13 = 0xD000000000000014;
    v14 = a1;
    v15 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v15 = 136446466;
    v47 = ObjectType;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100004364(v16, v17, aBlock);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    v48 = v14;
    if (v14)
    {
      if (v14 == 1)
      {
        v13 = 0xD00000000000001ALL;
      }

      else
      {
        v13 = 0xD000000000000016;
      }

      if (v14 == 1)
      {
        v19 = "foregroundCompletion";
      }

      else
      {
        v19 = "initialUnlockFeedItemsOnly";
      }
    }

    else
    {
      v19 = &unk_1000323F0;
    }

    v21 = sub_100004364(v13, v19 | 0x8000000000000000, aBlock);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s] Scheduling background generation %{public}s", v15, 0x16u);
    swift_arrayDestroy();

    v6 = v49;
    v5 = v50;
    v20 = *(v49 + 8);
    v20(v10, v50);
    a1 = v48;
  }

  else
  {

    v20 = *(v6 + 8);
    v20(v10, v5);
  }

  v22 = *&v2[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_backgroundGenerationActivities];
  v23 = v51;
  if (*(v22 + 16))
  {

    v24 = sub_10001F6BC(a1);
    if (v25)
    {
      v26 = *(*(v22 + 56) + 8 * v24);

      v27 = dbl_100032038[a1];
      v28 = swift_allocObject();
      *(v28 + 16) = a1;
      aBlock[4] = sub_100020908;
      aBlock[5] = v28;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001CFF8;
      aBlock[3] = &unk_10003E0A8;
      v29 = _Block_copy(aBlock);

      [v26 requestRunWithMaximumDelay:v29 completion:v27];
      _Block_release(v29);

      return;
    }
  }

  static Logger.daemon.getter();
  v47 = v2;
  v30 = v2;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  LODWORD(v48) = v32;
  if (os_log_type_enabled(v31, v32))
  {
    v49 = v6;
    v50 = v5;
    v33 = 0xD000000000000014;
    v34 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v34 = 136446722;
    v35 = _typeName(_:qualified:)();
    v37 = sub_100004364(v35, v36, aBlock);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2082;
    if (a1)
    {
      if (a1 == 1)
      {
        v33 = 0xD00000000000001ALL;
      }

      else
      {
        v33 = 0xD000000000000016;
      }

      if (a1 == 1)
      {
        v38 = "foregroundCompletion";
      }

      else
      {
        v38 = "initialUnlockFeedItemsOnly";
      }
    }

    else
    {
      v38 = &unk_1000323F0;
    }

    v41 = sub_100004364(v33, v38 | 0x8000000000000000, aBlock);

    *(v34 + 14) = v41;
    *(v34 + 22) = 2082;
    sub_100004210(0, &qword_1000421F0, HDXPCGatedActivity_ptr);
    sub_1000208B4();

    v42 = Dictionary.description.getter();
    v44 = v43;

    v45 = sub_100004364(v42, v44, aBlock);

    *(v34 + 24) = v45;
    _os_log_impl(&_mh_execute_header, v31, v48, "[%{public}s] Could not find generationType %{public}s in background generation activities %{public}s", v34, 0x20u);
    swift_arrayDestroy();

    v40 = v50;
    v39 = v51;
  }

  else
  {

    v39 = v23;
    v40 = v5;
  }

  v20(v39, v40);
}

uint64_t sub_10001C97C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v53 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v53 - v15;
  __chkstk_darwin(v14);
  v18 = &v53 - v17;
  switch(a1)
  {
    case 2:
      static Logger.daemon.getter();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = 0xD000000000000014;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v56 = v35;
        *v34 = 136446210;
        if (a3)
        {
          if (a3 == 1)
          {
            v33 = 0xD00000000000001ALL;
          }

          else
          {
            v33 = 0xD000000000000016;
          }

          if (a3 == 1)
          {
            v36 = "foregroundCompletion";
          }

          else
          {
            v36 = "initialUnlockFeedItemsOnly";
          }
        }

        else
        {
          v36 = &unk_1000323F0;
        }

        v49 = sub_100004364(v33, v36 | 0x8000000000000000, &v56);

        *(v34 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v31, v32, "Completed background generation %{public}s with deferral", v34, 0xCu);
        sub_10000493C(v35);
      }

      v43 = *(v7 + 8);
      v44 = v13;
      return v43(v44, v6);
    case 1:
      static Logger.daemon.getter();
      swift_errorRetain();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = 0xD000000000000014;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v56 = v29;
        *v28 = 136446466;
        v54 = v29;
        if (a3)
        {
          if (a3 == 1)
          {
            v27 = 0xD00000000000001ALL;
          }

          else
          {
            v27 = 0xD000000000000016;
          }

          if (a3 == 1)
          {
            v30 = "foregroundCompletion";
          }

          else
          {
            v30 = "initialUnlockFeedItemsOnly";
          }
        }

        else
        {
          v30 = &unk_1000323F0;
        }

        v45 = sub_100004364(v27, v30 | 0x8000000000000000, &v56);

        *(v28 + 4) = v45;
        *(v28 + 12) = 2082;
        v55 = a2;
        swift_errorRetain();
        sub_100020910(0, &qword_1000421F8, &qword_100041AD8, &protocol descriptor for Error, 1);
        v46 = String.init<A>(reflecting:)();
        v48 = sub_100004364(v46, v47, &v56);

        *(v28 + 14) = v48;
        _os_log_impl(&_mh_execute_header, v25, v26, "Completed background generation %{public}s with error %{public}s", v28, 0x16u);
        swift_arrayDestroy();
      }

      v43 = *(v7 + 8);
      v44 = v16;
      return v43(v44, v6);
    case 0:
      static Logger.daemon.getter();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = 0xD000000000000014;
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v56 = v23;
        *v22 = 136446210;
        if (a3)
        {
          if (a3 == 1)
          {
            v21 = 0xD00000000000001ALL;
          }

          else
          {
            v21 = 0xD000000000000016;
          }

          if (a3 == 1)
          {
            v24 = "foregroundCompletion";
          }

          else
          {
            v24 = "initialUnlockFeedItemsOnly";
          }
        }

        else
        {
          v24 = &unk_1000323F0;
        }

        v50 = sub_100004364(v21, v24 | 0x8000000000000000, &v56);

        *(v22 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v19, v20, "Completed background generation %{public}s successfully", v22, 0xCu);
        sub_10000493C(v23);
      }

      v43 = *(v7 + 8);
      v44 = v18;
      return v43(v44, v6);
  }

  static Logger.daemon.getter();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v37, v38))
  {

    v43 = *(v7 + 8);
    v44 = v10;
    return v43(v44, v6);
  }

  v54 = v6;
  v39 = 0xD000000000000014;
  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v56 = v41;
  *v40 = 136446466;
  if (a3)
  {
    if (a3 == 1)
    {
      v39 = 0xD00000000000001ALL;
    }

    else
    {
      v39 = 0xD000000000000016;
    }

    if (a3 == 1)
    {
      v42 = "foregroundCompletion";
    }

    else
    {
      v42 = "initialUnlockFeedItemsOnly";
    }
  }

  else
  {
    v42 = &unk_1000323F0;
  }

  v52 = sub_100004364(v39, v42 | 0x8000000000000000, &v56);

  *(v40 + 4) = v52;
  *(v40 + 12) = 2050;
  *(v40 + 14) = a1;
  _os_log_impl(&_mh_execute_header, v37, v38, "Completed background generation %{public}s with unexpected state %{public}ld", v40, 0x16u);
  sub_10000493C(v41);

  return (*(v7 + 8))(v10, v54);
}

void sub_10001CFF8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_10001D070()
{
  v1 = type metadata accessor for HealthPluginHostService(0);
  DebuggingResponder.deregisterForDebuggingRequests()();
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10001D2C8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v42 = a1;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v44 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v40 - v12;
  dispatch thunk of UnfairLock.lock()();
  static Logger.analytics.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v43 = ObjectType;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v40[1] = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v41 = v8;
    v40[0] = v19;
    v46 = v19;
    *v18 = 136446210;
    v45[0] = ObjectType;
    swift_getMetatypeMetadata();
    v20 = String.init<A>(describing:)();
    v22 = sub_100004364(v20, v21, &v46);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s]: Submitting personalization analytics…", v18, 0xCu);
    sub_10000493C(v40[0]);
    v8 = v41;
  }

  v23 = *(v9 + 8);
  v23(v13, v8);

  dispatch thunk of UnfairLock.lock()();
  v24 = sub_100024BF0();
  dispatch thunk of UnfairLock.unlock()();

  v25 = v44;
  if (!v24)
  {
    static Logger.personalization.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41 = v8;
      v33 = v32;
      v46 = v32;
      *v31 = 136446210;
      v45[0] = v43;
      swift_getMetatypeMetadata();
      v34 = String.init<A>(describing:)();
      v36 = sub_100004364(v34, v35, &v46);
      v43 = v9;
      v37 = v36;

      *(v31 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%{public}s]: Unable to resolve FeedPopulationManager for personalization analytics", v31, 0xCu);
      sub_10000493C(v33);

      v38 = (v23)(v44, v41);
      if (!a2)
      {
        return dispatch thunk of UnfairLock.unlock()();
      }
    }

    else
    {

      v38 = (v23)(v25, v8);
      if (!a2)
      {
        return dispatch thunk of UnfairLock.unlock()();
      }
    }

    a2(v38);
    return dispatch thunk of UnfairLock.unlock()();
  }

  BaseFeedPopulationManager.healthExperienceStore.getter();

  sub_10000AA10(v45, v45[3]);
  v26 = dispatch thunk of HealthExperienceStore.sharedBackgroundContext.getter();
  sub_10000493C(v45);
  v27 = swift_allocObject();
  v28 = v43;
  v27[2] = v42;
  v27[3] = a2;
  v27[4] = a3;
  v27[5] = v28;

  sub_100002590(a2, a3);
  dispatch thunk of AppSessionAnalyticsManager.updateCurrentEventWithEndOfSessionAnalytics(from:in:completion:)();

  return dispatch thunk of UnfairLock.unlock()();
}

uint64_t sub_10001D75C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of AppSessionAnalyticsManager.submitCurrentEvent(resetAfterSubmitted:)();
  static Logger.personalization.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v20[1] = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v21[0] = v15;
    v21[1] = a4;
    *v14 = 136446210;
    swift_getMetatypeMetadata();
    v16 = String.init<A>(describing:)();
    v18 = sub_100004364(v16, v17, v21);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s]: Analytics complete!", v14, 0xCu);
    sub_10000493C(v15);
  }

  result = (*(v8 + 8))(v10, v7);
  if (a2)
  {
    return a2(result);
  }

  return result;
}

void sub_10001D96C(uint64_t a1)
{
  sub_10001DA6C(319, &qword_100041C68, sub_100007100, &type metadata accessor for UserDefault);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}