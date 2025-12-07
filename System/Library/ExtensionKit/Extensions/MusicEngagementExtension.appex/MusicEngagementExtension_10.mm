void closure #3 in BackgroundRefreshController.scheduleAllTasks()(void *a1, uint64_t a2, int a3)
{
  v42 = a3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_projectBox();
  v9 = static os_log_type_t.default.getter();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v10 = swift_allocObject();
  v40 = xmmword_1004F2EF0;
  *(v10 + 16) = xmmword_1004F2EF0;
  v11 = [a1 identifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v10 + 56) = &type metadata for String;
  v15 = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 64) = v15;
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  Date.timeIntervalSince1970.getter();
  v17 = v16;
  v18 = v16;
  (*(v5 + 8))(v7, v4);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (v17 >= 9.22337204e18)
  {
    goto LABEL_12;
  }

  *(v10 + 96) = &type metadata for Int;
  *(v10 + 104) = &protocol witness table for Int;
  *(v10 + 72) = v17;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  v19 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v19, "BackgroundRefreshController: SCHEDULING TASK: %@ EARLIEST BEGIN DATE %{time_t}d", 79, 2, v10);

  v20 = objc_opt_self();
  v21 = [v20 sharedScheduler];
  v43 = 0;
  v22 = [v21 submitTaskRequest:a1 error:&v43];

  if (v22)
  {
    v23 = v43;
    if ((v42 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v24 = v43;
    v25 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v26 = static os_log_type_t.error.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = v40;
    v28 = [a1 identifier];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = v15;
    *(v27 + 32) = v29;
    *(v27 + 40) = v31;
    v43 = v25;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v32 = String.init<A>(describing:)();
    *(v27 + 96) = &type metadata for String;
    *(v27 + 104) = v15;
    *(v27 + 72) = v32;
    *(v27 + 80) = v33;
    v34 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v34, "BackgroundRefreshController: SCHEDULING TASK: %@ ERROR %@", 57, 2, v27);

    if ((v42 & 1) == 0)
    {
      return;
    }
  }

  v35 = static os_log_type_t.default.getter();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1004F2400;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = v15;
  *(v36 + 32) = 0xD00000000000002FLL;
  *(v36 + 40) = 0x80000001004C87A0;
  v37 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v37, "BackgroundRefreshController: FORCING TASK: %@", 45, 2, v36);

  v38 = [v20 sharedScheduler];
  v39 = String._bridgeToObjectiveC()();
  [v38 _simulateLaunchForTaskWithIdentifier:v39];
}

uint64_t closure #1 in BackgroundRefreshController.executeBackgroundUpdates(task:)(char a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin();
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for taskSchedulerQueue != -1)
  {
    swift_once();
  }

  v17[1] = static BackgroundRefreshController.taskSchedulerQueue;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1 & 1;
  *(v13 + 32) = a3;
  aBlock[4] = partial apply for closure #1 in closure #1 in BackgroundRefreshController.executeBackgroundUpdates(task:);
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_45;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

void closure #1 in closure #1 in BackgroundRefreshController.executeBackgroundUpdates(task:)(void *a1, char a2)
{
  if (a2)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a2)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  [a1 setTaskCompletedWithSuccess:a2 & 1];
  v4 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004F2EF0;
  *(v5 + 56) = &type metadata for String;
  v6 = lazy protocol witness table accessor for type String and conformance String();
  *(v5 + 32) = 0xD00000000000002FLL;
  *(v5 + 40) = 0x80000001004C87A0;
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v6;
  *(v5 + 64) = v6;
  *(v5 + 72) = v2;
  *(v5 + 80) = v3;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  v7 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v7, "BackgroundRefreshController: COMPLETED REFRESH SUBTASKS: %@ SUCCESS: %@", 71, 2, v5);
}

uint64_t BackgroundRefreshController.executeAllEligibleSubtasks(completion:)(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v59 = a2;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v62 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v61 = *(v5 - 8);
  __chkstk_darwin();
  v60 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin();
  v76 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v57 - v8;
  v10 = type metadata accessor for Date();
  v66 = *(v10 - 8);
  __chkstk_darwin();
  v67 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v57 - v12;
  __chkstk_darwin();
  v74 = &v57 - v13;
  __chkstk_darwin();
  v73 = &v57 - v14;
  __chkstk_darwin();
  v72 = &v57 - v15;
  __chkstk_darwin();
  v77 = &v57 - v16;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v95[4] = v91;
  v95[5] = v92;
  v96 = v93;
  v97 = v94;
  v95[0] = v87;
  v95[1] = v88;
  v95[2] = v89;
  v95[3] = v90;
  outlined destroy of ApplicationCapabilities(v95);
  v64 = v3;
  v65 = v2;
  v63 = v5;
  if (v96 == 2)
  {
    v83 = 1;
  }

  else
  {
    v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  Date.init()();
  v79 = dispatch_group_create();
  v80 = swift_allocObject();
  *(v80 + 16) = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v78 = UnfairLock.init()();
  if (one-time initialization token for all != -1)
  {
    swift_once();
  }

  v17 = static BackgroundTaskConfiguration.all;
  v18 = *(static BackgroundTaskConfiguration.all + 2);
  if (v18)
  {
    v85 = objc_opt_self();
    v70 = (v66 + 48);
    v71 = (v66 + 56);
    v19 = v17 + 50;
    v81 = (v66 + 32);
    v82 = v9;
    v68 = (v66 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v69 = (v66 + 8);
    do
    {
      v84 = *(v19 - 18);
      v23 = *v19;
      if (v83 & 1 | ((*(v19 - 17) & 1) == 0))
      {
        v24 = *(v19 - 10);
        v25 = *(v19 - 1);
        v26 = [v85 standardUserDefaults];
        LOBYTE(v86) = v25;
        lazy protocol witness table accessor for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey();
        lazy protocol witness table accessor for type String and conformance String();
        NSUserDefaults.subscript.getter(&v87);

        if (*(&v88 + 1))
        {
          v27 = swift_dynamicCast();
          (*v71)(v9, v27 ^ 1u, 1, v10);
        }

        else
        {
          outlined destroy of TaskPriority?(&v87, &_sypSgMd_0, &_sypSgMR_0);
          (*v71)(v9, 1, 1, v10);
        }

        v29 = v76;
        v30 = v70;
        outlined init with copy of Date?(v9, v76);
        v31 = *v30;
        if ((*v30)(v29, 1, v10) == 1)
        {
          v32 = v74;
          Date.init()();
          if (v31(v29, 1, v10) != 1)
          {
            outlined destroy of TaskPriority?(v29, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }
        }

        else
        {
          v32 = v74;
          (*v81)(v74, v29, v10);
        }

        outlined destroy of TaskPriority?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v33 = v73;
        static Date.+ infix(_:_:)();
        v34 = *v69;
        (*v69)(v32, v10);
        v35 = v75;
        Date.init()();
        if (static Date.< infix(_:_:)())
        {
          v36 = v67;
          static Date.+ infix(_:_:)();
          v34(v35, v10);
          v34(v33, v10);
          v37 = *v81;
          (*v81)(v33, v36, v10);
        }

        else
        {
          v34(v35, v10);
          v37 = *v81;
        }

        v38 = v72;
        v37(v72, v33, v10);
        lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v39 = dispatch thunk of static Comparable.< infix(_:_:)();
        v34(v38, v10);
        v28 = (v24 > 0.0) & ~v39;
      }

      else
      {
        v28 = 0;
      }

      v40 = [v85 standardUserDefaults];
      LOBYTE(v86) = v23;
      v41 = lazy protocol witness table accessor for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey();
      v42 = lazy protocol witness table accessor for type String and conformance String();
      NSUserDefaults.subscript.getter(&v87);

      if (*(&v88 + 1))
      {
        if (swift_dynamicCast() & 1) != 0 && (v86)
        {
          v43 = [v85 standardUserDefaults];
          *(&v88 + 1) = &type metadata for Bool;
          LOBYTE(v87) = 0;
          LOBYTE(v86) = v23;
          NSUserDefaults.subscript.setter(&v87, &v86, &unk_1005B0E48, v41, v42);

LABEL_32:
          v44 = v79;
          dispatch_group_enter(v79);
          if (v84)
          {
            v20 = swift_allocObject();
            v21 = v80;
            v20[2] = v78;
            v20[3] = v21;
            v20[4] = v44;

            v22 = v44;
            BackgroundRefreshController.updateServerLandingPagesCache(completion:)(partial apply for taskCompletion #1 (taskSucceeded:) in BackgroundRefreshController.executeAllEligibleSubtasks(completion:), v20);
          }

          else
          {
            v45 = swift_allocObject();
            v46 = v80;
            v45[2] = v78;
            v45[3] = v46;
            v45[4] = v44;

            v47 = v44;
            BackgroundRefreshController.updatePinnedSubscribedPlaylists(completion:)(taskCompletion #1 (taskSucceeded:) in BackgroundRefreshController.executeAllEligibleSubtasks(completion:)partial apply, v45);
          }

          goto LABEL_12;
        }
      }

      else
      {
        outlined destroy of TaskPriority?(&v87, &_sypSgMd_0, &_sypSgMR_0);
      }

      if (v28)
      {
        goto LABEL_32;
      }

LABEL_12:
      v19 += 24;
      --v18;
      v9 = v82;
    }

    while (v18);
  }

  if (one-time initialization token for taskSchedulerQueue != -1)
  {
    swift_once();
  }

  v85 = static BackgroundRefreshController.taskSchedulerQueue;
  v48 = swift_allocObject();
  v49 = v80;
  v48[2] = v78;
  v48[3] = v49;
  v50 = v59;
  v48[4] = v58;
  v48[5] = v50;
  *&v89 = partial apply for closure #1 in BackgroundRefreshController.executeAllEligibleSubtasks(completion:);
  *(&v89 + 1) = v48;
  *&v87 = _NSConcreteStackBlock;
  *(&v87 + 1) = 1107296256;
  *&v88 = thunk for @escaping @callee_guaranteed () -> ();
  *(&v88 + 1) = &block_descriptor_23;
  v51 = _Block_copy(&v87);

  v52 = v60;
  static DispatchQoS.unspecified.getter();
  v86 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v53 = v62;
  v54 = v65;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v55 = v79;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v51);

  (*(v64 + 8))(v53, v54);
  (*(v61 + 8))(v52, v63);
  (*(v66 + 8))(v77, v10);
}

uint64_t closure #1 in taskCompletion #1 (taskSucceeded:) in BackgroundRefreshController.executeAllEligibleSubtasks(completion:)(_BYTE *a1, char a2)
{
  swift_beginAccess();
  v4 = *a1 & a2;
  result = swift_beginAccess();
  *a1 = v4 & 1;
  return result;
}

void BackgroundRefreshController.updatePinnedSubscribedPlaylists(completion:)(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for updateSubscribedPlaylists != -1)
  {
    swift_once();
  }

  v7 = static BackgroundTaskConfiguration.updateSubscribedPlaylists;
  v8 = HIBYTE(static BackgroundTaskConfiguration.updateSubscribedPlaylists);
  v9 = qword_100602998;
  v10 = word_1006029A0;
  v11 = HIBYTE(word_1006029A0);
  HIDWORD(v26) = byte_1006029A2;
  Date.init()();
  v12 = [objc_opt_self() standardUserDefaults];
  v30 = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
  (*(v4 + 16))(boxed_opaque_existential_1, v6, v3);
  v33 = v11;
  v14 = lazy protocol witness table accessor for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey();
  v15 = lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.setter(aBlock, &v33, &unk_1005B0E48, v14, v15);

  (*(v4 + 8))(v6, v3);
  v16 = static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v17 = swift_allocObject();
  v18 = v17;
  *(v17 + 16) = xmmword_1004F2400;
  v19 = "updateSubscribedPlaylists";
  if (v7)
  {
    v20 = 0xD000000000000018;
  }

  else
  {
    v20 = 0xD000000000000019;
  }

  if (!v7)
  {
    v19 = "allowsPumpkinContent";
  }

  v21 = v19 | 0x8000000000000000;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v18 + 32) = v20;
  *(v18 + 40) = v21;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  v22 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v22, "BackgroundRefreshController: EXECUTING SUBTASK: %@", 50, 2, v18);

  v23 = *(v27 + 32);
  v24 = swift_allocObject();
  *(v24 + 16) = v7;
  *(v24 + 17) = v8;
  *(v24 + 24) = v9;
  *(v24 + 32) = v10;
  *(v24 + 33) = v11;
  *(v24 + 34) = BYTE4(v26);
  *(v24 + 40) = v28;
  *(v24 + 48) = a2;
  v31 = partial apply for specialized closure #1 in BackgroundRefreshController.updatePinnedSubscribedPlaylists(completion:);
  v32 = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v30 = &block_descriptor_36_0;
  v25 = _Block_copy(aBlock);

  [v23 updatePinnedSubscribedPlaylistsWithCompletion:v25];
  _Block_release(v25);
}

uint64_t BackgroundRefreshController.updateServerLandingPagesCache(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for updateServerLandingPagesCache != -1)
  {
    swift_once();
  }

  v9 = static BackgroundTaskConfiguration.updateServerLandingPagesCache;
  v10 = qword_1006029B0;
  v29 = byte_1006029B8;
  v30 = HIBYTE(static BackgroundTaskConfiguration.updateServerLandingPagesCache);
  v11 = byte_1006029B9;
  v12 = byte_1006029BA;
  Date.init()();
  v13 = [objc_opt_self() standardUserDefaults];
  v33[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(v6 + 16))(boxed_opaque_existential_1, v8, v5);
  v32 = v11;
  v15 = lazy protocol witness table accessor for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey();
  v16 = lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.setter(v33, &v32, &unk_1005B0E48, v15, v16);

  (*(v6 + 8))(v8, v5);
  v17 = static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v18 = swift_allocObject();
  v19 = v18;
  *(v18 + 16) = xmmword_1004F2400;
  v20 = "updateSubscribedPlaylists";
  if (v9)
  {
    v21 = 0xD000000000000018;
  }

  else
  {
    v21 = 0xD000000000000019;
  }

  if (!v9)
  {
    v20 = "allowsPumpkinContent";
  }

  v22 = v20 | 0x8000000000000000;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v19 + 32) = v21;
  *(v19 + 40) = v22;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  v23 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v23, "BackgroundRefreshController: EXECUTING SUBTASK: %@", 50, 2, v19);

  if (one-time initialization token for taskSchedulerQueue != -1)
  {
    swift_once();
  }

  v24 = static BackgroundRefreshController.taskSchedulerQueue;
  v25 = swift_allocObject();
  *(v25 + 16) = v9;
  v26 = v29;
  *(v25 + 17) = v30;
  *(v25 + 24) = v10;
  *(v25 + 32) = v26;
  *(v25 + 33) = v11;
  *(v25 + 34) = v12;
  *(v25 + 40) = v31;
  *(v25 + 48) = a2;

  specialized BackgroundFetchManager.updateURLCache(queue:onDidReceiveResponse:completion:)(v24, partial apply for closure #1 in BackgroundRefreshController.updateServerLandingPagesCache(completion:), v3, partial apply for specialized closure #2 in BackgroundRefreshController.updateServerLandingPagesCache(completion:), v25);
}

uint64_t specialized closure #1 in BackgroundRefreshController.updatePinnedSubscribedPlaylists(completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(BOOL))
{
  v7 = 0xD000000000000018;
  if (a1)
  {
    swift_errorRetain();
    v8 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v9 = swift_allocObject();
    v10 = v9;
    *(v9 + 16) = xmmword_1004F2EF0;
    v11 = "updateSubscribedPlaylists";
    if ((a2 & 1) == 0)
    {
      v7 = 0xD000000000000019;
      v11 = "allowsPumpkinContent";
    }

    v12 = v11 | 0x8000000000000000;
    *(v9 + 56) = &type metadata for String;
    v13 = lazy protocol witness table accessor for type String and conformance String();
    v10[8] = v13;
    v10[4] = v7;
    v10[5] = v12;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(describing:)();
    v10[12] = &type metadata for String;
    v10[13] = v13;
    v10[9] = v14;
    v10[10] = v15;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v16, "BackgroundRefreshController: COMPLETED SUBTASK: %@ ERROR %@", 59, 2, v10);
  }

  else
  {
    v17 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v18 = swift_allocObject();
    v19 = v18;
    *(v18 + 16) = xmmword_1004F2400;
    v20 = "updateSubscribedPlaylists";
    v21 = (a2 & 1) == 0;
    if (a2)
    {
      v22 = 0xD000000000000018;
    }

    else
    {
      v22 = 0xD000000000000019;
    }

    if (v21)
    {
      v20 = "allowsPumpkinContent";
    }

    v23 = v20 | 0x8000000000000000;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v19 + 32) = v22;
    *(v19 + 40) = v23;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
    v24 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v24, "BackgroundRefreshController: COMPLETED SUBTASK: %@ SUCCESS", 58, 2, v19);
  }

  return a4(a1 == 0);
}

uint64_t closure #1 in BackgroundRefreshController.updateServerLandingPagesCache(completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v6 = *(a3 + 16);
  if (v6)
  {

    v6(a1);
  }

  return result;
}

uint64_t specialized closure #2 in BackgroundRefreshController.updateServerLandingPagesCache(completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(BOOL))
{
  v6 = static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = swift_allocObject();
  v8 = v7;
  *(v7 + 16) = xmmword_1004F2400;
  v9 = "updateSubscribedPlaylists";
  if (a2)
  {
    v10 = 0xD000000000000018;
  }

  else
  {
    v10 = 0xD000000000000019;
  }

  if ((a2 & 1) == 0)
  {
    v9 = "allowsPumpkinContent";
  }

  v11 = v9 | 0x8000000000000000;
  *(v7 + 56) = &type metadata for String;
  v12 = lazy protocol witness table accessor for type String and conformance String();
  v8[8] = v12;
  v8[4] = v10;
  v8[5] = v11;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  v13 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v13, "BackgroundRefreshController: COMPLETED SUBTASK: %@", 50, 2, v8);

  v23 = *(a1 + 16);
  if (v23)
  {
    v14 = a1 + 32;
    v15 = *(a1 + 16);
    do
    {
      v14 += 8;
      swift_errorRetain();
      v16 = static os_log_type_t.error.getter();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1004F2EF0;
      *(v17 + 56) = &type metadata for String;
      *(v17 + 64) = v12;
      *(v17 + 32) = v10;
      *(v17 + 40) = v11;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v18 = String.init<A>(describing:)();
      *(v17 + 96) = &type metadata for String;
      *(v17 + 104) = v12;
      *(v17 + 72) = v18;
      *(v17 + 80) = v19;
      v20 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v20, "BackgroundRefreshController: ERROR EXECUTING SUBTASK: %@ ERROR %@", 65, 2, v17);

      --v15;
    }

    while (v15);
  }

  return a4(v23 == 0);
}

uint64_t one-time initialization function for taskSchedulerQueue()
{
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v5 - 8);
  __chkstk_darwin();
  v2 = v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v4[1] = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v6 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v5);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static BackgroundRefreshController.taskSchedulerQueue = result;
  return result;
}

uint64_t BackgroundRefreshController.deinit()
{
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t BackgroundRefreshController.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

double one-time initialization function for all()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore27BackgroundTaskConfiguration33_C5107C6093080E21BBD9EFF6A17F9EE2LLVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore27BackgroundTaskConfiguration33_C5107C6093080E21BBD9EFF6A17F9EE2LLVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2EF0;
  if (one-time initialization token for updateSubscribedPlaylists != -1)
  {
    v9 = v0;
    swift_once();
    v0 = v9;
  }

  v1 = HIBYTE(static BackgroundTaskConfiguration.updateSubscribedPlaylists);
  v2 = qword_100602998;
  v3 = word_1006029A0;
  v4 = *(&word_1006029A0 + 1);
  *(v0 + 32) = static BackgroundTaskConfiguration.updateSubscribedPlaylists;
  *(v0 + 33) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 49) = v4;
  if (one-time initialization token for updateServerLandingPagesCache != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  v5 = HIBYTE(static BackgroundTaskConfiguration.updateServerLandingPagesCache);
  result = *&qword_1006029B0;
  v7 = byte_1006029B8;
  v8 = *&byte_1006029B9;
  *(v0 + 56) = static BackgroundTaskConfiguration.updateServerLandingPagesCache;
  *(v0 + 57) = v5;
  *(v0 + 64) = result;
  *(v0 + 72) = v7;
  *(v0 + 73) = v8;
  static BackgroundTaskConfiguration.all = v0;
  return result;
}

unint64_t lazy protocol witness table accessor for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey()
{
  result = lazy protocol witness table cache variable for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey;
  if (!lazy protocol witness table cache variable for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey;
  if (!lazy protocol witness table cache variable for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey);
  }

  return result;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F8418()
{

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for BackgroundRefreshController.PerformanceMetricsRecorder(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BackgroundRefreshController.PerformanceMetricsRecorder(uint64_t result, int a2, int a3)
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

void one-time initialization function for updateSubscribedPlaylists()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd, &_sSo8ICURLBagCSgMR);
  UnfairLock.locked<A>(_:)(closure #1 in BagProvider.bag.getterpartial apply);

  static BackgroundTaskConfiguration.updateSubscribedPlaylists = 256;
  qword_100602998 = 0x40E5180000000000;
  word_1006029A0 = 257;
  byte_1006029A2 = 0;
}

void one-time initialization function for updateServerLandingPagesCache()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd, &_sSo8ICURLBagCSgMR);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.bag.getter);
  v0 = v3;
  if (v3 && (closure #1 in variable initialization expression of static BackgroundTaskConfiguration.updateServerLandingPagesCache(v3, &v3), v0, (v4 & 1) == 0))
  {
    v1 = 0;
    v2 = v3;
  }

  else
  {
    v1 = 1;
    v2 = 0x40D5180000000000;
  }

  static BackgroundTaskConfiguration.updateServerLandingPagesCache = 257;
  qword_1006029B0 = v2;
  byte_1006029B8 = v1;
  *&byte_1006029B9 = 515;
}

void closure #1 in variable initialization expression of static BackgroundTaskConfiguration.updateServerLandingPagesCache(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a1 dictionaryForBagKey:v4];

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v6);
  v8 = v7;

  if (!v8)
  {
    goto LABEL_12;
  }

  if (!*(v8 + 16))
  {
    goto LABEL_11;
  }

  v9 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0xD00000000000001ELL, 0x80000001004C8720);
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  outlined init with copy of Any(*(v8 + 56) + 32 * v9, v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0, &_sSDySSypGMR_0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    *a2 = 0;
    v14 = 1;
    goto LABEL_13;
  }

  if (!*(v15 + 16) || (v11 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0xD00000000000001DLL, 0x80000001004C89E0), (v12 & 1) == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  outlined init with copy of Any(*(v15 + 56) + 32 * v11, v16);

  v13 = swift_dynamicCast();
  if ((v13 & 1) == 0)
  {
    *a2 = 0;
  }

  v14 = v13 ^ 1;
LABEL_13:
  *(a2 + 8) = v14;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BackgroundTaskConfiguration.Identifier(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = "allowsPumpkinContent";
  }

  else
  {
    v4 = "updateSubscribedPlaylists";
  }

  if (*a2)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (*a2)
  {
    v6 = "updateSubscribedPlaylists";
  }

  else
  {
    v6 = "allowsPumpkinContent";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BackgroundTaskConfiguration.Identifier()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance BackgroundTaskConfiguration.Identifier(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BackgroundTaskConfiguration.Identifier(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance BackgroundTaskConfiguration.Identifier@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of BackgroundTaskConfiguration.Identifier.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance BackgroundTaskConfiguration.Identifier(unint64_t *a1@<X8>)
{
  v2 = "updateSubscribedPlaylists";
  v3 = 0xD000000000000018;
  if (!*v1)
  {
    v3 = 0xD000000000000019;
    v2 = "allowsPumpkinContent";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BackgroundTaskConfiguration.UserDefaultsKey()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance BackgroundTaskConfiguration.UserDefaultsKey(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BackgroundTaskConfiguration.UserDefaultsKey(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance BackgroundTaskConfiguration.UserDefaultsKey@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized BackgroundTaskConfiguration.UserDefaultsKey.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance BackgroundTaskConfiguration.UserDefaultsKey(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "ribedPlaylistsDate";
  if (v2 == 2)
  {
    v4 = 0xD000000000000028;
  }

  else
  {
    v4 = 0xD000000000000027;
  }

  if (v2 != 2)
  {
    v3 = "efreshServerLandingPages";
  }

  v5 = 0xD000000000000032;
  if (*v1)
  {
    v6 = "efreshPinnedSubscribedPlaylists";
  }

  else
  {
    v5 = 0xD00000000000002FLL;
    v6 = "updateServerLandingPages";
  }

  if (*v1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v5 = v4;
    v7 = v3;
  }

  *a1 = v5;
  a1[1] = v7 | 0x8000000000000000;
}

unint64_t specialized BackgroundTaskConfiguration.UserDefaultsKey.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of BackgroundTaskConfiguration.UserDefaultsKey.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F8F6C()
{

  return swift_deallocObject();
}

uint64_t sub_1000F8FC4()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in BackgroundRefreshController.executeAllEligibleSubtasks(completion:)()
{
  v1 = *(v0 + 32);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in closure #1 in BackgroundRefreshController.executeAllEligibleSubtasks(completion:));
  return v1(v3);
}

uint64_t objectdestroy_25Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1000F90E0()
{

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #1 in BackgroundRefreshController.updatePinnedSubscribedPlaylists(completion:)(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, __n128), __n128 a3)
{
  if (*(v3 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  a3.n128_u64[0] = *(v3 + 24);
  return a2(a1, v4 | *(v3 + 16), *(v3 + 32) | (*(v3 + 33) << 8) | (*(v3 + 34) << 16), *(v3 + 40), *(v3 + 48), a3);
}

uint64_t partial apply for closure #1 in closure #1 in BackgroundRefreshController.executeAllEligibleSubtasks(completion:)@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = swift_beginAccess();
  *a1 = *v3;
  return result;
}

uint64_t sub_1000F9208()
{

  return swift_deallocObject();
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BackgroundTaskConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[19])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BackgroundTaskConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BackgroundTaskConfiguration.Identifier and conformance BackgroundTaskConfiguration.Identifier()
{
  result = lazy protocol witness table cache variable for type BackgroundTaskConfiguration.Identifier and conformance BackgroundTaskConfiguration.Identifier;
  if (!lazy protocol witness table cache variable for type BackgroundTaskConfiguration.Identifier and conformance BackgroundTaskConfiguration.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundTaskConfiguration.Identifier and conformance BackgroundTaskConfiguration.Identifier);
  }

  return result;
}

uint64_t BagControlledValue.init(fallback:reader:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a1;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = *(a3 - 8);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd, &_sSo8ICURLBagCSgMR);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.bag.getter);
  v15 = v22;
  if (!v22)
  {
    goto LABEL_6;
  }

  v20(v22);

  if ((*(v10 + 48))(v9, 1, a3) == 1)
  {
    (*(v7 + 8))(v9, v6);
LABEL_6:
    *(a4 + *(type metadata accessor for BagControlledValue(0, a3, v13, v14) + 28)) = 1;
    return (*(v10 + 32))(a4, v21, a3);
  }

  (*(v10 + 8))(v21, a3);
  v17 = *(v10 + 32);
  v17(v12, v9, a3);
  *(a4 + *(type metadata accessor for BagControlledValue(0, a3, v18, v19) + 28)) = 0;
  return (v17)(a4, v12, a3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BagControlledValue<A>.Source(uint64_t a1)
{
  Hasher.init(_seed:)();
  LaunchURL.Resolver.PerformOption.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t type metadata completion function for BagControlledValue(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for BagControlledValue.Source(319, result, v2, v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BagControlledValue(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFE)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 2)
      {
        return v15 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *storeEnumTagSinglePayload for BagControlledValue(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t *BagProvider.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static BagProvider.shared;
}

uint64_t BagProvider.createObserver(handler:)(void (*a1)(void), uint64_t a2)
{
  type metadata accessor for BagProvider.Observer();
  v4 = swift_allocObject();
  swift_weakInit();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  swift_weakAssign();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v6);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.createObserver(handler:));
  BagProvider.fetchBag(forceReload:)(0);
  return v4;
}

uint64_t BagProvider.bag.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd, &_sSo8ICURLBagCSgMR);
  UnfairLock.locked<A>(_:)(_s9MusicCore11BagProviderC3bagSo8ICURLBagCSgvgAGyXEfU_TA_0);
  return v1;
}

void BagProvider.getBag(completion:)(void (*a1)(), uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd, &_sSo8ICURLBagCSgMR);
  UnfairLock.locked<A>(_:)(closure #1 in BagProvider.bag.getterpartial apply);
  if (v9)
  {
    a1();
  }

  else
  {
    type metadata accessor for BagProvider.Observer();
    v4 = swift_allocObject();
    swift_weakInit();
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    swift_weakAssign();
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    v6[2] = a1;
    v6[3] = a2;
    v6[4] = v5;
    v6[5] = v4;
    v7 = *(v4 + 24);
    v8 = *(v4 + 32);
    *(v4 + 24) = partial apply for closure #1 in BagProvider.getBag(completion:);
    *(v4 + 32) = v6;

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v7, v8);

    __chkstk_darwin();
    UnfairLock.locked<A>(_:)(partial apply for closure #2 in BagProvider.getBag(completion:));
    BagProvider.fetchBag(forceReload:)(0);
  }
}

void one-time initialization function for shared()
{
  if (one-time initialization token for music != -1)
  {
    swift_once();
  }

  v0 = static ICClientInfo.music;
  type metadata accessor for BagProvider(0);
  swift_allocObject();
  v1 = v0;
  v2 = specialized BagProvider.init(clientInfo:)(v1);

  static BagProvider.shared = v2;
}

uint64_t static BagProvider.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

_BYTE *closure #1 in BagProvider.bag.getter@<X0>(_BYTE *result@<X0>, void *a2@<X8>)
{
  v3 = &result[OBJC_IVAR____TtC9MusicCore11BagProvider_result];
  if (result[OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8] == 1)
  {
    v4 = *v3;
    result = *v3;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t closure #1 in BagProvider.getBag(completion:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(a1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    __chkstk_darwin();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
    UnfairLock.locked<A>(_:)(partial apply for closure #1 in closure #1 in BagProvider.getBag(completion:));
  }

  return result;
}

uint64_t closure #1 in closure #1 in BagProvider.getBag(completion:)@<X0>(uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v7 = result;
  if (!result)
  {
    goto LABEL_6;
  }

  v8 = OBJC_IVAR____TtC9MusicCore11BagProvider_singleFireObservers;
  swift_beginAccess();

  v9 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v7 + v8), a2);
  if (!v3)
  {
    v10 = v9;

    v11 = *(v7 + v8);
    if (v11 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
      if (v12 >= v10)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12 >= v10)
      {
LABEL_5:
        specialized Array.replaceSubrange<A>(_:with:)(v10, v12);
        swift_endAccess();

LABEL_6:
        *a3 = v7 == 0;
        return result;
      }
    }

    __break(1u);
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t closure #2 in BagProvider.getBag(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC9MusicCore11BagProvider_singleFireObservers;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

void BagProvider.fetchBag(forceReload:)(char a1)
{
  v2 = v1;
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.shouldFetch.getter);
  if (LOBYTE(aBlock[0]) == 1)
  {
    UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.fetchBag(forceReload:));
    v4 = [objc_opt_self() activeAccount];
    v5 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v4 clientInfo:*(v1 + 16)];

    v6 = [objc_opt_self() sharedBagProvider];
    aBlock[4] = partial apply for closure #2 in BagProvider.fetchBag(forceReload:);
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ICURLResponse?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_17;
    v7 = _Block_copy(aBlock);

    [v6 getBagForRequestContext:v5 forceRefetch:a1 & 1 withCompletionHandler:v7];
    _Block_release(v7);
  }
}

void closure #1 in BagProvider.createObserver(handler:)(uint64_t a1, uint64_t a2, void **a3)
{
  swift_beginAccess();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities9WeakArrayVy0A4Core11BagProviderC8ObserverCGMd, &_s14MusicUtilities9WeakArrayVy0A4Core11BagProviderC8ObserverCGMR);
  WeakArray.append(_:)(a2, v6);
  swift_endAccess();
  v7 = 0;
  v8 = (a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  if (*(a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8) == 1)
  {
    v7 = *v8;
    v9 = *v8;
  }

  v10 = *a3;
  *a3 = v7;
}

id _s9MusicCore11BagProviderC3bagSo8ICURLBagCSgvgAGyXEfU_TA_0@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  if (*(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8) == 1)
  {
    v4 = *v3;
    result = *v3;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1000FA5F0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000FA628()
{

  return swift_deallocObject();
}

uint64_t BagProvider.signpost.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities8SignpostVSgMd, &_s14MusicUtilities8SignpostVSgMR);
  __chkstk_darwin();
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC9MusicCore11BagProvider____lazy_storage___signpost;
  swift_beginAccess();
  outlined init with copy of Signpost?(v1 + v7, v6);
  v8 = type metadata accessor for Signpost(0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return outlined init with take of Signpost(v6, a1);
  }

  outlined destroy of Signpost?(v6);
  if (one-time initialization token for musicBag != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.musicBag;

  Signpost.init(name:object:log:)("Bag", 3, 2, v10, a1);
  outlined init with copy of Signpost(a1, v4);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  outlined assign with take of Signpost?(v4, v1 + v7);
  return swift_endAccess();
}

uint64_t closure #1 in BagProvider.init(clientInfo:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    BagProvider.handleStorefrontChange()();
  }

  return result;
}

void BagProvider.handleStorefrontChange()()
{
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.handleStorefrontChange());

  if (v4 == 1)
  {
    UnfairLock.locked<A>(_:)(partial apply for closure #2 in BagProvider.handleStorefrontChange());
    __chkstk_darwin();
    UnfairLock.locked<A>(_:)(closure #1 in BagProvider.lockedSet(result:notify:)partial apply);

    v0 = Logger.logObject.getter();
    v1 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v0, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v0, v1, "Notification triggered to update bag: storefrontChanged", v2, 2u);
    }

    BagProvider.fetchBag(forceReload:)(1);
  }
}

void closure #2 in BagProvider.fetchBag(forceReload:)(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Signpost(0);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + OBJC_IVAR____TtC9MusicCore11BagProvider_lock);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in closure #2 in BagProvider.fetchBag(forceReload:));
  if (v27)
  {
    BagProvider.fetchBag(forceReload:)(1);
    v9 = closure #1 in $defer #1 () in closure #2 in BagProvider.fetchBag(forceReload:)partial apply;
LABEL_19:
    UnfairLock.locked<A>(_:)(v9);
    return;
  }

  v10 = a1;
  if (!a1)
  {
    if (!a2)
    {
      goto LABEL_23;
    }

    swift_errorRetain();
    v10 = _convertErrorToNSError(_:)();

    v11 = v10;
  }

  v27 = _swiftEmptyArrayStorage;
  __chkstk_darwin();
  *(&v23 - 4) = a3;
  *(&v23 - 3) = v10;
  LOBYTE(v21) = v12;
  BYTE1(v21) = 1;
  v22 = &v27;
  v13 = a1;
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.lockedSet(result:notify:));
  if (!a1)
  {
    goto LABEL_18;
  }

  v14 = v27;
  if (v27 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (!v15)
    {
LABEL_18:

      BagProvider.signpost.getter(v7);
      Signpost.end(dso:)(&_mh_execute_header);

      outlined destroy of Signpost(v7);
      v9 = partial apply for closure #1 in $defer #1 () in closure #2 in BagProvider.fetchBag(forceReload:);
      goto LABEL_19;
    }
  }

  else
  {
    v15 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  v25 = v7;
  v26 = v8;
  if (v15 >= 1)
  {
    v24 = v10;
    v16 = v10;
    v17 = 0;
    while ((v14 & 0xC000000000000001) == 0)
    {
      v18 = *(v14 + 8 * v17 + 32);

      v19 = *(v18 + 24);
      if (v19)
      {
        goto LABEL_16;
      }

LABEL_11:
      ++v17;

      if (v15 == v17)
      {

        v7 = v25;
        v10 = v24;
        goto LABEL_18;
      }
    }

    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v19 = *(v18 + 24);
    if (!v19)
    {
      goto LABEL_11;
    }

LABEL_16:
    v20 = *(v18 + 32);

    v19(v16);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v19, v20);
    goto LABEL_11;
  }

  __break(1u);
LABEL_23:
  LODWORD(v22) = 0;
  v21 = 149;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t closure #1 in BagProvider.removeObserver(observer:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities9WeakArrayVy0A4Core11BagProviderC8ObserverCGMd, &_s14MusicUtilities9WeakArrayVy0A4Core11BagProviderC8ObserverCGMR);
  WeakArray.remove(_:)(a2, v3);
  return swift_endAccess();
}

void BagProvider.result.didset()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  if (*(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8))
  {
    if (*(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8) != 1)
    {
      return;
    }

    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Successfully loaded a bag from iTunesCloud", v6, 2u);
    }

    v7 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_retry);
    Strong = swift_weakLoadStrong();
    swift_weakAssign();
    v9 = v7;
    BagProvider.Retry.provider.didset(Strong);
  }

  else
  {
    v3 = v2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = [v3 code];
      _os_log_impl(&_mh_execute_header, v10, v11, "Error retrieving bag: %ld", v12, 0xCu);
    }

    v13 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_retry);
    v14 = swift_weakLoadStrong();
    swift_weakAssign();
    v9 = v13;
    BagProvider.Retry.provider.didset(v14);
  }
}

void closure #1 in BagProvider.lockedSet(result:notify:)(uint64_t a1, void *a2, char a3, char a4, uint64_t *a5)
{
  v7 = a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result;
  v8 = *(a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  *v7 = a2;
  *(v7 + 8) = a3;
  v9 = a2;

  BagProvider.result.didset();
  if (a4)
  {
    swift_beginAccess();
    v10 = type metadata accessor for BagProvider.Observer();

    v14 = WeakArray.allElements.getter(v11, v10, v12, v13);

    swift_beginAccess();

    specialized Array.append<A>(contentsOf:)(v15);
    *a5 = v14;
  }
}

uint64_t BagProvider.Observer.deinit()
{
  if (swift_weakLoadStrong())
  {
    __chkstk_darwin();
    UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.removeObserver(observer:));
  }

  swift_weakDestroy();
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 24), *(v0 + 32));
  return v0;
}

uint64_t BagProvider.Observer.__deallocating_deinit()
{
  if (swift_weakLoadStrong())
  {
    __chkstk_darwin();
    UnfairLock.locked<A>(_:)(closure #1 in BagProvider.removeObserver(observer:)partial apply);
  }

  swift_weakDestroy();
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 24), *(v0 + 32));
  return swift_deallocClassInstance();
}

void BagProvider.Retry.provider.didset(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v21 - v8;
  Strong = swift_weakLoadStrong();
  if (!a1)
  {
    if (!Strong)
    {
      return;
    }

LABEL_7:
    if (swift_weakLoadStrong())
    {

      v12 = swift_weakLoadStrong();
      if (v12)
      {
        (*(v5 + 16))(v9, v12 + OBJC_IVAR____TtC9MusicCore11BagProvider_logger, v4);

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v13, v14))
        {
          v16 = &selRef_registerObserver_;
          goto LABEL_19;
        }

        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Beginning observation to retry loading bag", v15, 2u);
        v16 = &selRef_registerObserver_;
LABEL_14:

LABEL_19:

        (*(v5 + 8))(v9, v4);
        goto LABEL_20;
      }

      v16 = &selRef_registerObserver_;
    }

    else
    {
      v17 = swift_weakLoadStrong();
      if (v17)
      {
        (*(v5 + 16))(v7, v17 + OBJC_IVAR____TtC9MusicCore11BagProvider_logger, v4);

        v13 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v13, v18))
        {
          v16 = &selRef_unregisterObserver_;
          v9 = v7;
          goto LABEL_19;
        }

        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v13, v18, "Stopping observation to retry loading bag", v19, 2u);
        v16 = &selRef_unregisterObserver_;
        v9 = v7;
        goto LABEL_14;
      }

      v16 = &selRef_unregisterObserver_;
    }

LABEL_20:
    v20 = [objc_opt_self() sharedMonitor];
    [v20 *v16];

    return;
  }

  if (!Strong)
  {
    goto LABEL_7;
  }

  v11 = Strong;

  if (v11 != a1)
  {
    goto LABEL_7;
  }
}

id BagProvider.Retry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BagProvider.Retry();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t BagProvider.deinit()
{
  outlined destroy of Signpost?(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider____lazy_storage___signpost);

  v1 = OBJC_IVAR____TtC9MusicCore11BagProvider_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t outlined destroy of Signpost?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities8SignpostVSgMd, &_s14MusicUtilities8SignpostVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BagProvider.__deallocating_deinit()
{
  BagProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BagProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for BagProvider;
  if (!type metadata singleton initialization cache for BagProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for BagProvider(uint64_t a1)
{
  type metadata accessor for Signpost?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Signpost?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Signpost?)
  {
    type metadata accessor for Signpost(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Signpost?);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9MusicCore11BagProviderC6Result33_D1F028703756EAFCB4E62A24E619467FLLO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BagProvider.Result(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BagProvider.Result(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for BagProvider.Result(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

NSString one-time initialization function for storefrontChanged()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.storefrontChanged = result;
  return result;
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t specialized BagProvider.init(clientInfo:)(void *a1)
{
  v2 = v1;
  type metadata accessor for Signpost(0);
  v4 = __chkstk_darwin();
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 56))(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider____lazy_storage___signpost, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_bindings) = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC9MusicCore11BagProvider_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v1 + v8) = UnfairLock.init()();
  *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_singleFireObservers) = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC9MusicCore11BagProvider_durableObservers;
  v10 = type metadata accessor for BagProvider.Observer();
  *(v2 + v9) = WeakArray.init(_:)(_swiftEmptyArrayStorage, v10);
  if (one-time initialization token for musicBag != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.musicBag;
  Logger.init(_:)();
  *(v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_isFetching) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_deferReload) = 0;
  v12 = OBJC_IVAR____TtC9MusicCore11BagProvider_retry;
  *(v2 + v12) = [objc_allocWithZone(type metadata accessor for BagProvider.Retry()) init];
  *(v2 + 16) = a1;
  v13 = v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_result;
  *v13 = 0;
  *(v13 + 8) = 2;
  v14 = a1;
  BagProvider.signpost.getter(v6);
  Signpost.begin(dso:)(&_mh_execute_header);
  outlined destroy of Signpost(v6);
  BagProvider.fetchBag(forceReload:)(0);
  type metadata accessor for Whitetail.Binding();
  if (one-time initialization token for storefrontChanged != -1)
  {
    swift_once();
  }

  v16 = static NSNotificationName.storefrontChanged;
  v17 = static NSNotificationName.storefrontChanged;
  location = CFRange.init(_:)(*(&v15 - 1)).location;
  v24[3] = &type metadata for DistributedNotificationTrigger;
  v24[4] = &protocol witness table for DistributedNotificationTrigger;
  v24[0] = location;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = v16;
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v24, 0, partial apply for closure #1 in BagProvider.init(clientInfo:), v19);
  v21 = OBJC_IVAR____TtC9MusicCore11BagProvider_bindings;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v21) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  return v2;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = specialized Collection.firstIndex(where:)(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_21;
      }

LABEL_9:
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v13)
    {
      goto LABEL_40;
    }

    v14 = *(v7 + 32 + 8 * v11);
    if (v14 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v13)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void partial apply for closure #1 in BagProvider.lockedSet(result:notify:)()
{
  partial apply for closure #1 in BagProvider.lockedSet(result:notify:)();
}

{
  closure #1 in BagProvider.lockedSet(result:notify:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 33), *(v0 + 40));
}

uint64_t outlined destroy of Signpost(uint64_t a1)
{
  v2 = type metadata accessor for Signpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Signpost?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities8SignpostVSgMd, &_s14MusicUtilities8SignpostVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Signpost(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Signpost?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities8SignpostVSgMd, &_s14MusicUtilities8SignpostVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Signpost(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id partial apply for closure #1 in BagProvider.handleStorefrontChange()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  v3 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t TabIdentifier.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7972617262696CLL;
  v2 = 0x736F65646976;
  if (a1 != 5)
  {
    v2 = 0x7473696C79616C70;
  }

  v3 = 0x6F69646172;
  if (a1 != 3)
  {
    v3 = 0x686372616573;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x6F4E6E657473696CLL;
  if (a1 != 1)
  {
    v4 = 0x6573776F7262;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TabIdentifier(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TabIdentifier@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TabIdentifier.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance TabIdentifier@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972617262696CLL;
  v5 = 0xE600000000000000;
  v6 = 0x736F65646976;
  if (v2 != 5)
  {
    v6 = 0x7473696C79616C70;
    v5 = 0xE900000000000073;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6F69646172;
  result = 0x686372616573;
  if (v2 != 3)
  {
    v8 = 0x686372616573;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = 0xE900000000000077;
  v11 = 0x6F4E6E657473696CLL;
  if (v2 != 1)
  {
    v11 = 0x6573776F7262;
    v10 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v11;
    v3 = v10;
  }

  v14 = __OFSUB__(v2, 2);
  v12 = v2 == 2;
  v13 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v15 = v4;
  }

  else
  {
    v15 = v6;
  }

  if (!(v13 ^ v14 | v12))
  {
    v3 = v5;
  }

  *a1 = v15;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance BagTabIdentifier(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance BagTabIdentifier@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized BagTabIdentifier.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance BagTabIdentifier(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x636973756D5F796DLL;
  v5 = 0xE600000000000000;
  v6 = 0x686372616573;
  if (v2 != 5)
  {
    v6 = 0x6F65646976;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6573776F7262;
  if (v2 != 3)
  {
    v8 = 0x6F69646172;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x756F795F726F66;
  if (v2 != 1)
  {
    v10 = 0x6E5F6E657473696CLL;
    v9 = 0xEA0000000000776FLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t specialized BagTabIdentifier.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of BagTabIdentifier.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized TabIdentifier.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TabIdentifier.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type TabIdentifier and conformance TabIdentifier()
{
  result = lazy protocol witness table cache variable for type TabIdentifier and conformance TabIdentifier;
  if (!lazy protocol witness table cache variable for type TabIdentifier and conformance TabIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabIdentifier and conformance TabIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabIdentifier and conformance TabIdentifier;
  if (!lazy protocol witness table cache variable for type TabIdentifier and conformance TabIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabIdentifier and conformance TabIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [TabIdentifier] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [TabIdentifier] and conformance [A];
  if (!lazy protocol witness table cache variable for type [TabIdentifier] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MusicCore13TabIdentifierOGMd, &_sSay9MusicCore13TabIdentifierOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [TabIdentifier] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TabIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TabIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BagTabIdentifier and conformance BagTabIdentifier()
{
  result = lazy protocol witness table cache variable for type BagTabIdentifier and conformance BagTabIdentifier;
  if (!lazy protocol witness table cache variable for type BagTabIdentifier and conformance BagTabIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BagTabIdentifier and conformance BagTabIdentifier);
  }

  return result;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v10 = v24 - v9;
  outlined init with copy of TaskPriority?(a3, v24 - v9, &_sScPSgMd_0, &_sScPSgMR_0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of TaskPriority?(v10, &_sScPSgMd_0, &_sScPSgMR_0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd_0, &_sScPSgMR_0);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd_0, &_sScPSgMR_0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v10 = v24 - v9;
  outlined init with copy of TaskPriority?(a3, v24 - v9, &_sScPSgMd_0, &_sScPSgMR_0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of TaskPriority?(v10, &_sScPSgMd_0, &_sScPSgMR_0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd_0, &_sScPSgMR_0);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd_0, &_sScPSgMR_0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSbSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v10 = v24 - v9;
  outlined init with copy of TaskPriority?(a3, v24 - v9, &_sScPSgMd_0, &_sScPSgMR_0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of TaskPriority?(v10, &_sScPSgMd_0, &_sScPSgMR_0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd_0, &_sScPSgMR_0);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd_0, &_sScPSgMR_0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v10 = v24 - v9;
  outlined init with copy of TaskPriority?(a3, v24 - v9, &_sScPSgMd_0, &_sScPSgMR_0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of TaskPriority?(v10, &_sScPSgMd_0, &_sScPSgMR_0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd_0, &_sScPSgMR_0);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd_0, &_sScPSgMR_0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t specialized Set.contains(_:)(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (Hasher.init(_seed:)(), ActionType.rawValue.getter(a1), String.hash(into:)(), , v4 = Hasher._finalize()(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = ActionType.rawValue.getter(*(*(a2 + 48) + v6));
      v10 = v9;
      if (v8 == ActionType.rawValue.getter(a1) && v10 == v11)
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

{
  v2 = *(a2 + 16);
  if (v2)
  {
    Hasher.init(_seed:)();
    Hasher._combine(_:)(a1 & 1);
    v5 = Hasher._finalize()();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t specialized Set.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (Hasher.init(_seed:)(), ApplicationCapabilities.Service.rawValue.getter(), String.hash(into:)(), , v4 = Hasher._finalize()(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v30 = ~v5;
    v7 = 0x646956636973756DLL;
    v29 = a1;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      if (v8 <= 4)
      {
        if (v8 == 3)
        {
          v11 = 0x6C6169636F73;
        }

        else
        {
          v11 = 0x6F69646172;
        }

        if (v8 == 3)
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v8 == 2)
        {
          v11 = 0xD000000000000013;
          v12 = 0x80000001004C4B80;
        }

        v13 = *(*(a2 + 48) + v6) ? v7 : 0x636973756DLL;
        v14 = *(*(a2 + 48) + v6) ? 0xEB00000000736F65 : 0xE500000000000000;
        v9 = *(*(a2 + 48) + v6) <= 1u ? v13 : v11;
        v10 = *(*(a2 + 48) + v6) <= 1u ? v14 : v12;
      }

      else if (*(*(a2 + 48) + v6) > 7u)
      {
        if (v8 == 8)
        {
          v9 = 0xD000000000000013;
          v10 = 0x80000001004C4BC0;
        }

        else if (v8 == 9)
        {
          v9 = 0xD000000000000011;
          v10 = 0x80000001004C4BE0;
        }

        else
        {
          v9 = 0x6C62616E45696C6DLL;
          v10 = 0xEA00000000006465;
        }
      }

      else if (v8 == 5)
      {
        v10 = 0xE600000000000000;
        v9 = 0x73656E757469;
      }

      else if (v8 == 6)
      {
        v9 = 0x74634170756F7267;
        v10 = 0xED00007974697669;
      }

      else
      {
        v9 = 0x746963696C707865;
        v10 = 0xEF746E65746E6F43;
      }

      v15 = 0xD000000000000011;
      if (a1 != 9)
      {
        v15 = 0x6C62616E45696C6DLL;
      }

      v16 = 0xEA00000000006465;
      if (a1 == 9)
      {
        v16 = 0x80000001004C4BE0;
      }

      if (a1 == 8)
      {
        v15 = 0xD000000000000013;
        v16 = 0x80000001004C4BC0;
      }

      v17 = 0x746963696C707865;
      if (a1 == 6)
      {
        v17 = 0x74634170756F7267;
      }

      v18 = 0xEF746E65746E6F43;
      if (a1 == 6)
      {
        v18 = 0xED00007974697669;
      }

      if (a1 == 5)
      {
        v17 = 0x73656E757469;
        v18 = 0xE600000000000000;
      }

      if (a1 <= 7u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (a1 == 3)
      {
        v19 = 0x6C6169636F73;
      }

      else
      {
        v19 = 0x6F69646172;
      }

      if (a1 == 3)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (a1 == 2)
      {
        v19 = 0xD000000000000013;
        v20 = 0x80000001004C4B80;
      }

      if (a1)
      {
        v21 = v7;
      }

      else
      {
        v21 = 0x636973756DLL;
      }

      if (a1)
      {
        v22 = 0xEB00000000736F65;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      if (a1 <= 1u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = a1 <= 4u ? v19 : v15;
      v24 = a1 <= 4u ? v20 : v16;
      if (v9 == v23 && v10 == v24)
      {
        break;
      }

      v25 = v6;
      v26 = v7;
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        v6 = (v25 + 1) & v30;
        a1 = v29;
        v7 = v26;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v27 & 1;
    }

    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AudioVariant();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

{
  if (*(a2 + 16) && (v3 = a1, Hasher.init(_seed:)(), Library.Menu.Identifier.rawValue.getter(v3), String.hash(into:)(), , v4 = Hasher._finalize()(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = 0xD000000000000029;
      v9 = "orites";
      switch(*(*(a2 + 48) + v6))
      {
        case 1:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v8 = 0xD000000000000023;
          v9 = "LibraryView.Playlists";
          break;
        case 3:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.Artists";
          break;
        case 4:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Albums";
          break;
        case 5:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Songs";
          break;
        case 6:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.MadeForYou";
          break;
        case 7:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.MusicVideos";
          break;
        case 8:
          v8 = 0xD000000000000028;
          v9 = "LibraryView.Genres";
          break;
        case 9:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.Compilations";
          break;
        case 0xA:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Composers";
          break;
        case 0xB:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Shows";
          break;
        case 0xC:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v10 = v9 | 0x8000000000000000;
      v11 = 0xD000000000000029;
      v12 = "orites";
      switch(v3)
      {
        case 1:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v11 = 0xD000000000000023;
          v12 = "LibraryView.Playlists";
          break;
        case 3:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.Artists";
          break;
        case 4:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Albums";
          break;
        case 5:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Songs";
          break;
        case 6:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.MadeForYou";
          break;
        case 7:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.MusicVideos";
          break;
        case 8:
          v11 = 0xD000000000000028;
          v12 = "LibraryView.Genres";
          break;
        case 9:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.Compilations";
          break;
        case 10:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Composers";
          break;
        case 11:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Shows";
          break;
        case 12:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  SortOptions.ContentType.identifier.getter(v3);
  String.hash(into:)();

  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (1)
  {
    v8 = *(*(a2 + 48) + v6);
    v9 = v8 >> 6;
    if (v8 >> 6 > 1)
    {
      break;
    }

    if (v9)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        if (((v8 ^ v3) & 0x3F) == 0)
        {
          return 1;
        }

        goto LABEL_5;
      }
    }

    else if (v3 < 0x40u)
    {
      if (((v8 ^ v3) & 1) == 0)
      {
        return 1;
      }

      goto LABEL_5;
    }

LABEL_18:
    Hasher.init(_seed:)();
    String.hash(into:)();

    v10 = Hasher._finalize()();
    Hasher.init(_seed:)();
    String.hash(into:)();

    if (v10 == Hasher._finalize()())
    {
      return 1;
    }

LABEL_5:
    v6 = (v6 + 1) & v7;
    if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  if (v9 == 2 || v8 != 192 || v3 != 192)
  {
    goto LABEL_18;
  }

  return 1;
}

{
  v3 = type metadata accessor for Playlist.Collaborator();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type UIView.Corner and conformance UIView.Corner(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type UIView.Corner and conformance UIView.Corner(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL specialized Set.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t Playlist.hasActiveCollaboration.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR);
  __chkstk_darwin();
  v1 = &v16 - v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMR);
  __chkstk_darwin();
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v16 - v4;
  Playlist.collaboration.getter();
  v6 = type metadata accessor for Playlist.Collaboration();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v1, 1, v6) == 1)
  {
    outlined destroy of TaskPriority?(v1, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR);
    v8 = type metadata accessor for Playlist.Collaborator.Status();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  Playlist.Collaboration.collaboratorStatus.getter();
  (*(v7 + 8))(v1, v6);
  v9 = type metadata accessor for Playlist.Collaborator.Status();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    goto LABEL_13;
  }

  outlined init with copy of TaskPriority?(v5, v3, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMR);
  v11 = (*(v10 + 88))(v3, v9);
  if (v11 != enum case for Playlist.Collaborator.Status.host(_:) && v11 != enum case for Playlist.Collaborator.Status.joined(_:) && v11 != enum case for Playlist.Collaborator.Status.pending(_:))
  {
    (*(v10 + 8))(v3, v9);
    goto LABEL_13;
  }

  v14 = 1;
LABEL_14:
  outlined destroy of TaskPriority?(v5, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMR);
  return v14;
}

BOOL Playlist.Collaboration.hasPendingCollaborators.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV0aB8InternalE12CollaboratorVGSgMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV0aB8InternalE12CollaboratorVGSgMR);
  __chkstk_darwin();
  v1 = v6 - v0;
  Playlist.Collaboration.pendingCollaborators.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV0aB8InternalE12CollaboratorVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV0aB8InternalE12CollaboratorVGMR);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v1, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV0aB8InternalE12CollaboratorVGSgMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV0aB8InternalE12CollaboratorVGSgMR);
    return 0;
  }

  else
  {
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Playlist.Collaborator> and conformance MusicItemCollection<A>, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV0aB8InternalE12CollaboratorVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV0aB8InternalE12CollaboratorVGMR, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v4 = v6[1] != v6[0];
    (*(v3 + 8))(v1, v2);
  }

  return v4;
}

uint64_t static Collaboration.Setup.contextualImageName(active:hasPendingCollaborators:)(char a1)
{
  if (a1)
  {
    return 0x322E6E6F73726570;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t one-time initialization function for artworkCaching()
{
  type metadata accessor for Collaboration.ArtworkCachingReference();
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000027;
  *(v0 + 24) = 0x80000001004C5380;
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();

  [v1 setCacheLimit:100 forCacheIdentifier:v2 cacheReference:v0];

  static Collaboration.artworkCaching = v0;
  return result;
}

uint64_t *Collaboration.artworkCaching.unsafeMutableAddressor()
{
  if (one-time initialization token for artworkCaching != -1)
  {
    swift_once();
  }

  return &static Collaboration.artworkCaching;
}

uint64_t static Collaboration.artworkCaching.getter()
{
  if (one-time initialization token for artworkCaching != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Collaboration.artworkCaching.setter(uint64_t a1)
{
  if (one-time initialization token for artworkCaching != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Collaboration.artworkCaching = a1;
}

uint64_t (*static Collaboration.artworkCaching.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for artworkCaching != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return ArtworkVideoReportingController.videoArtworkContextProviding.modify;
}

uint64_t static Collaboration.Setup.imageName(active:hasPendingCollaborators:)(char a1, char a2)
{
  v2 = 0x322E6E6F73726570;
  v3 = 0xD000000000000013;
  if ((a2 & 1) == 0)
  {
    v3 = 0x322E6E6F73726570;
  }

  if (a2 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t Collaboration.Error.errorDescription.getter(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    v9 = 0;
    if (a3)
    {
      _StringGuts.grow(_:)(17);
      v5 = 0x74694B636973754DLL;
      v4 = 0xEF3D726F72726520;
    }

    else
    {
      _StringGuts.grow(_:)(25);
      v4 = 0x80000001004C8EA0;
      v5 = 0xD000000000000017;
    }

    String.append(_:)(*&v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    return v9;
  }

  if (a3 == 2)
  {
    _StringGuts.grow(_:)(38);

    v9 = 0xD000000000000024;
    v7._countAndFlagsBits = a1;
    v7._object = a2;
    String.append(_:)(v7);
    return v9;
  }

  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 ^ 5 | a2)
      {
        return 0xD000000000000019;
      }

      else
      {
        return 0xD000000000000016;
      }
    }

    else if (a1 ^ 7 | a2)
    {
      if (a1 ^ 8 | a2)
      {
        return 0x73736F7020746F4ELL;
      }

      else
      {
        return 0xD000000000000032;
      }
    }

    else
    {
      return 0xD00000000000001DLL;
    }
  }

  else if (a1 <= 1)
  {
    if (a1 | a2)
    {
      return 0xD000000000000017;
    }

    else
    {
      return 0x636120726F6E694DLL;
    }
  }

  else if (a1 ^ 2 | a2)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000024;
  }
}

void static Collaboration.Error.tapToRadarAlert()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v1 = &v33 - v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v33 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v33 - v13;
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    v33 = v5;
    v34 = v3;
    v35 = v2;
    v36 = v1;
    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0gq5Tf4g_n(_swiftEmptyArrayStorage);
    static URL.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(0xD00000000000001FLL, 0x80000001004C8F50, 0xD000000000000032, 0x80000001004C8F70, _swiftEmptyArrayStorage, v15, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v14, 1u);

    outlined init with copy of TaskPriority?(v14, v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*(v7 + 48))(v12, 1, v6) == 1)
    {
      outlined destroy of TaskPriority?(v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v16 = v12;
    }

    else
    {
      v17 = *(v7 + 32);
      v17(v10, v12, v6);
      v18 = [objc_opt_self() sharedApplication];
      URL._bridgeToObjectiveC()(v19);
      v21 = v20;
      v22 = [v18 canOpenURL:v20];

      if (v22)
      {
        v23 = v37;
        (*(v7 + 16))(v37, v10, v6);
        v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
        v25 = swift_allocObject();
        v17((v25 + v24), v23, v6);
        v26 = v33;
        UUID.init()();
        v27 = UUID.uuidString.getter();
        v29 = v28;
        (*(v34 + 8))(v26, v35);
        (*(v7 + 8))(v10, v6);
        outlined destroy of TaskPriority?(v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v30 = type metadata accessor for TaskPriority();
        v31 = v36;
        (*(*(v30 - 8) + 56))(v36, 1, 1, v30);
        v32 = swift_allocObject();
        *(v32 + 16) = 0;
        *(v32 + 24) = 0;
        *(v32 + 32) = v27;
        *(v32 + 40) = v29;
        strcpy((v32 + 48), "File a Radar");
        *(v32 + 61) = 0;
        *(v32 + 62) = -5120;
        *(v32 + 64) = 2;
        *(v32 + 65) = *v38;
        *(v32 + 68) = *&v38[3];
        *(v32 + 72) = &async function pointer to partial apply for closure #1 in static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:);
        *(v32 + 80) = v25;
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v31, &async function pointer to partial apply for closure #1 in static Collaboration.Error.tapToRadarAlert(), v32);

        return;
      }

      (*(v7 + 8))(v10, v6);
      v16 = v14;
    }

    outlined destroy of TaskPriority?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }
}

uint64_t closure #1 in static Collaboration.Error.tapToRadarAlert()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0u;
  *(v4 + 80) = 0;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 32) = 0u;
  v5 = *(a4 + 40);
  if (v5)
  {
    v10 = (v5 + *v5);
    v7 = swift_task_alloc();
    *(v4 + 88) = v7;
    *v7 = v4;
    v7[1] = closure #1 in static Collaboration.Error.tapToRadarAlert();

    return v10(a4, v4 + 16);
  }

  else
  {
    v9 = *(v4 + 8);

    return v9();
  }
}

uint64_t closure #1 in static Collaboration.Error.tapToRadarAlert()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Collaboration.Manager.__allocating_init(coordinator:)(__int128 *a1)
{
  v2 = swift_allocObject();
  outlined init with take of ActionPerforming(a1, v2 + 16);
  return v2;
}

id Collaboration.Manager.participantProfile.getter()
{
  v0 = [objc_opt_self() shared];
  v1 = [v0 activeUserState];

  v2 = [v1 music];
  v3 = [v2 userProfile];

  return v3;
}

uint64_t Playlist.isEditable.getter()
{
  v0 = type metadata accessor for Playlist.EditableComponents();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE18EditableComponentsVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE18EditableComponentsVSgMR);
  __chkstk_darwin();
  v5 = &v9 - v4;
  Playlist.editableComponents.getter();
  if ((*(v1 + 48))(v5, 1, v0) == 1)
  {
    outlined destroy of TaskPriority?(v5, &_s8MusicKit8PlaylistV0aB8InternalE18EditableComponentsVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE18EditableComponentsVSgMR);
  }

  else
  {
    static Playlist.EditableComponents.tracklist.getter();
    lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type Playlist.EditableComponents and conformance Playlist.EditableComponents, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
    v6 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v7 = *(v1 + 8);
    v7(v3, v0);
    v7(v5, v0);
    if (v6)
    {
      return [objc_opt_self() isRunningInStoreDemoMode] ^ 1;
    }
  }

  return 0;
}

id Collaboration.Manager.canCollaborate(for:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13[4] = v9;
  v13[5] = v10;
  v13[6] = v11;
  v13[7] = v12;
  v13[0] = v5;
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  if ((BYTE8(v5) & 1) == 0)
  {
    v0 = 3;
    goto LABEL_10;
  }

  if (BYTE2(v13[0]) != 1)
  {
    v0 = 6;
    goto LABEL_10;
  }

  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v2 = result;
    v3 = [result isInitialImport];

    if ((v3 & 1) == 0)
    {
      return outlined destroy of ApplicationCapabilities(v13);
    }

    v0 = 7;
LABEL_10:
    lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
    swift_allocError();
    *v4 = v0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 3;
    swift_willThrow();
    return outlined destroy of ApplicationCapabilities(v13);
  }

  __break(1u);
  return result;
}

uint64_t Logger.collaboration.unsafeMutableAddressor()
{
  if (one-time initialization token for collaboration != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.collaboration);
}

uint64_t static Collaboration.Manager.DeepLinkType.actionKey.getter(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

uint64_t static Collaboration.Manager.DeepLinkType.actionKey.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

MusicCore::Collaboration::Manager::DeepLinkType_optional __swiftcall Collaboration.Manager.DeepLinkType.init(_:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();
  if (*(a1._rawValue + 2) && (v2 = static Collaboration.Manager.DeepLinkType.actionKey, v3 = qword_100602EE8, , v4 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v2, v3), v6 = v5, , (v6 & 1) != 0))
  {
    v7 = (*(a1._rawValue + 7) + 16 * v4);
    v8 = *v7;
    v9 = v7[1];

    v10._countAndFlagsBits = v8;
    v10._object = v9;
    v11 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Collaboration.Manager.DeepLinkType.init(rawValue:), v10);

    if (v11 == 1)
    {
      v12.value = MusicCore_Collaboration_Manager_DeepLinkType_pending;
    }

    else
    {
      v12.value = MusicCore_Collaboration_Manager_DeepLinkType_unknownDefault;
    }

    if (v11)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 2;
  }
}

MusicCore::Collaboration::Manager::DeepLinkType_optional __swiftcall Collaboration.Manager.DeepLinkType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Collaboration.Manager.DeepLinkType.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MusicCore_Collaboration_Manager_DeepLinkType_pending;
  }

  else
  {
    v4.value = MusicCore_Collaboration_Manager_DeepLinkType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t Collaboration.Manager.DeepLinkType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x676E69646E6570;
  }

  else
  {
    return 1852403562;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Collaboration.Manager.DeepLinkType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E69646E6570;
  }

  else
  {
    v3 = 1852403562;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E69646E6570;
  }

  else
  {
    v5 = 1852403562;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Collaboration.Manager.DeepLinkType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Collaboration.Manager.DeepLinkType(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Collaboration.Manager.DeepLinkType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Collaboration.Manager.DeepLinkType@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Collaboration.Manager.DeepLinkType.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Collaboration.Manager.DeepLinkType(uint64_t *a1@<X8>)
{
  v2 = 1852403562;
  if (*v1)
  {
    v2 = 0x676E69646E6570;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void *Collaboration.Manager.queryItemsDictionary(for:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  __chkstk_darwin();
  v2 = &v18 - v1;
  v3 = type metadata accessor for URLComponents();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    outlined destroy of TaskPriority?(v2, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  v7 = URLComponents.queryItemsDictionary.getter();
  if (!v7)
  {
    (*(v4 + 8))(v6, v3);
    return v7;
  }

  v8 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of Collaboration.Manager.queryItemsDictionary(for:));
  swift_arrayDestroy();
  swift_beginAccess();
  if (!v7[2] || (v9 = static Collaboration.Manager.DeepLinkType.actionKey, v10 = qword_100602EE8, , v11 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v9, v10), v13 = v12, , (v13 & 1) == 0))
  {

    (*(v4 + 8))(v6, v3);
    return 0;
  }

  v14 = (v7[7] + 16 * v11);
  v15 = *v14;
  v16 = v14[1];

  LOBYTE(v15) = specialized Set.contains(_:)(v15, v16, v8);

  (*(v4 + 8))(v6, v3);
  if ((v15 & 1) == 0)
  {

    return 0;
  }

  return v7;
}

uint64_t Collaboration.Manager.start(_:isOpen:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 200) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR);
  *(v3 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v3 + 48) = swift_task_alloc();
  v4 = type metadata accessor for Playlist.Collaboration.InvitationMode();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  v5 = type metadata accessor for Playlist();
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  started = type metadata accessor for MusicCollaborativePlaylist.StartCollaborationRequest();
  *(v3 + 112) = started;
  *(v3 + 120) = *(started - 8);
  *(v3 + 128) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 136) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 144) = v8;
  *(v3 + 152) = v7;

  return _swift_task_switch(Collaboration.Manager.start(_:isOpen:), v8, v7);
}

uint64_t Collaboration.Manager.start(_:isOpen:)()
{
  if (one-time initialization token for collaboration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 160) = __swift_project_value_buffer(v1, static Logger.collaboration);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 200);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start called - isOpenInvite=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 104);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 56);
  v12 = *(v0 + 200);
  v13 = *(v0 + 32);

  v14 = *(v8 + 16);
  *(v0 + 168) = v14;
  *(v0 + 176) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v6, v13, v7);
  v15 = &enum case for Playlist.Collaboration.InvitationMode.open(_:);
  if (!v12)
  {
    v15 = &enum case for Playlist.Collaboration.InvitationMode.requiresApproval(_:);
  }

  (*(v10 + 104))(v9, *v15, v11);
  MusicCollaborativePlaylist.StartCollaborationRequest.init(playlist:invitationMode:)();
  v16 = swift_task_alloc();
  *(v0 + 184) = v16;
  *v16 = v0;
  v16[1] = Collaboration.Manager.start(_:isOpen:);
  v17 = *(v0 + 24);

  return MusicCollaborativePlaylist.StartCollaborationRequest.response()(v17);
}

{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = Collaboration.Manager.start(_:isOpen:);
  }

  else
  {
    v5 = Collaboration.Manager.start(_:isOpen:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v47 = v0;
  v1 = v0[5];

  Playlist.collaboration.getter();
  v2 = type metadata accessor for Playlist.Collaboration();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[5];
  v5 = v0[6];
  if (v4 == 1)
  {
    outlined destroy of TaskPriority?(v0[5], &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR);
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  }

  else
  {
    Playlist.Collaboration.invitationURL.getter();
    (*(v3 + 8))(v6, v2);
    v8 = type metadata accessor for URL();
    if ((*(*(v8 - 8) + 48))(v5, 1, v8) != 1)
    {
      v43 = v0[6];
      (*(v0[15] + 8))(v0[16], v0[14]);
      outlined destroy of TaskPriority?(v43, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v42 = v0[1];
      goto LABEL_11;
    }
  }

  v9 = v0[21];
  v10 = v0[12];
  v11 = v0[10];
  v12 = v0[3];
  outlined destroy of TaskPriority?(v0[6], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9(v10, v12, v11);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[10];
  if (v15)
  {
    v19 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46[0] = v45;
    *v19 = 136446210;
    lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type Playlist and conformance Playlist, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v23 = v18;
    v24 = *(v17 + 8);
    v24(v16, v23);
    v25 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v22, v46);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "invitationURL missing for=%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
  }

  else
  {

    v26 = v18;
    v24 = *(v17 + 8);
    v24(v16, v26);
  }

  v27 = v0[10];
  v28 = v0[3];
  lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
  v29 = swift_allocError();
  *v30 = xmmword_1004F2F30;
  *(v30 + 16) = 3;
  swift_willThrow();
  v24(v28, v27);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v46[0] = v34;
    *v33 = 136446210;
    v0[2] = v29;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v35 = String.init<A>(describing:)();
    v37 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v35, v36, v46);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "Start failed with error=%{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  v39 = v0[15];
  v38 = v0[16];
  v40 = v0[14];
  swift_allocError();
  *v41 = v29;
  *(v41 + 8) = 0;
  *(v41 + 16) = 1;
  swift_willThrow();
  (*(v39 + 8))(v38, v40);

  v42 = v0[1];
LABEL_11:

  return v42();
}

{
  v16 = v0;

  v1 = v0[24];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = String.init<A>(describing:)();
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
  swift_allocError();
  *v12 = v1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  (*(v10 + 8))(v9, v11);

  v13 = v0[1];

  return v13();
}

uint64_t Collaboration.Manager.validate(_:url:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for Playlist();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[16] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[17] = v8;
  v3[18] = v7;

  return _swift_task_switch(Collaboration.Manager.validate(_:url:), v8, v7);
}

uint64_t Collaboration.Manager.validate(_:url:)()
{
  v29 = v0;
  if (one-time initialization token for collaboration != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  v0[19] = __swift_project_value_buffer(v5, static Logger.collaboration);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136446210;
    lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v26 = v8;
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v17, &v28);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v26, "Validate called with url=%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[14];
  v21 = v0[12];
  v22 = v0[5];
  (*(v0[7] + 16))(v0[8], v0[4], v0[6]);
  v6(v20, v22, v21);
  MusicCollaborativePlaylist.JoinRequest.init(playlist:invitationURL:)();
  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = Collaboration.Manager.validate(_:url:);
  v24 = v0[3];

  return MusicCollaborativePlaylist.JoinRequest.validate()(v24);
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = Collaboration.Manager.validate(_:url:);
  }

  else
  {
    v5 = Collaboration.Manager.validate(_:url:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v17 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v0[2] = v6;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(describing:)();
    v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Validate failed with error=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v12 = v0[21];
  lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
  swift_allocError();
  *v13 = v12;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.join(_:url:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for Playlist();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v7;
  v2[18] = v6;

  return _swift_task_switch(Collaboration.Manager.join(_:url:), v7, v6);
}

uint64_t Collaboration.Manager.join(_:url:)()
{
  v29 = v0;
  if (one-time initialization token for collaboration != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[19] = __swift_project_value_buffer(v5, static Logger.collaboration);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136446210;
    lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v26 = v8;
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v17, &v28);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v26, "Join called with url=%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[14];
  v21 = v0[12];
  v22 = v0[4];
  (*(v0[6] + 16))(v0[8], v0[3], v0[5]);
  v6(v20, v22, v21);
  MusicCollaborativePlaylist.JoinRequest.init(playlist:invitationURL:)();
  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = Collaboration.Manager.join(_:url:);
  v24 = v0[7];

  return MusicCollaborativePlaylist.JoinRequest.response()(v24);
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = v2[17];
    v4 = v2[18];
    v5 = Collaboration.Manager.join(_:url:);
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v3 = v2[17];
    v4 = v2[18];
    v5 = Collaboration.Manager.join(_:url:);
  }

  return _swift_task_switch(v5, v3, v4);
}

{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[21];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = String.init<A>(describing:)();
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Join failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v9 = v0[21];
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];
  lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.end(_:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for Playlist();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for MusicCollaborativePlaylist.EndCollaborationRequest();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[12] = v6;
  v2[13] = v5;

  return _swift_task_switch(Collaboration.Manager.end(_:), v6, v5);
}

uint64_t Collaboration.Manager.end(_:)()
{
  if (one-time initialization token for collaboration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[14] = __swift_project_value_buffer(v1, static Logger.collaboration);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "End called", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];

  (*(v6 + 16))(v5, v8, v7);
  MusicCollaborativePlaylist.EndCollaborationRequest.init(playlist:)();
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = Collaboration.Manager.end(_:);
  v10 = v0[3];

  return MusicCollaborativePlaylist.EndCollaborationRequest.response()(v10);
}

{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = Collaboration.Manager.end(_:);
  }

  else
  {
    v5 = Collaboration.Manager.end(_:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = String.init<A>(describing:)();
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "End failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v9 = v0[16];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.moderate(_:collaborator:in:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 193) = a1;
  v4 = type metadata accessor for MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  v5 = type metadata accessor for Playlist();
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v6 = type metadata accessor for Playlist.Collaborator();
  *(v3 + 96) = v6;
  *(v3 + 104) = *(v6 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 128) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 136) = v8;
  *(v3 + 144) = v7;

  return _swift_task_switch(Collaboration.Manager.moderate(_:collaborator:in:), v8, v7);
}

uint64_t Collaboration.Manager.moderate(_:collaborator:in:)()
{
  v44 = v0;
  if (one-time initialization token for collaboration != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = type metadata accessor for Logger();
  *(v0 + 152) = __swift_project_value_buffer(v9, static Logger.collaboration);
  v42 = *(v3 + 16);
  v42(v1, v8, v2);
  v41 = *(v6 + 16);
  v41(v4, v7, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 120);
  v15 = *(v0 + 96);
  v14 = *(v0 + 104);
  v16 = *(v0 + 88);
  v18 = *(v0 + 64);
  v17 = *(v0 + 72);
  if (v12)
  {
    v40 = v11;
    v19 = *(v0 + 193);
    log = v10;
    v20 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v20 = 136446722;
    *(v0 + 192) = v19 & 1;
    v21 = String.init<A>(describing:)();
    v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v21, v22, &v43);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2082;
    lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v14 + 8))(v13, v15);
    v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, &v43);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2082;
    lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type Playlist and conformance Playlist, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v17 + 8))(v16, v18);
    v31 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v30, &v43);

    *(v20 + 24) = v31;
    _os_log_impl(&_mh_execute_header, log, v40, "    Moderate called for:\n        - type=%{public}s\n        - collaborator=%{public}s\n        - playlist=%{public}s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
  }

  v32 = *(v0 + 80);
  v33 = *(v0 + 64);
  v34 = *(v0 + 32);
  v35 = *(v0 + 193);
  v42(*(v0 + 112), *(v0 + 24), *(v0 + 96));
  v41(v32, v34, v33);
  MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.init(collaborator:playlist:)();
  if (v35)
  {
    v36 = swift_task_alloc();
    *(v0 + 176) = v36;
    *v36 = v0;
    v36[1] = Collaboration.Manager.moderate(_:collaborator:in:);

    return MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.reject()();
  }

  else
  {
    v37 = swift_task_alloc();
    *(v0 + 160) = v37;
    *v37 = v0;
    v37[1] = Collaboration.Manager.moderate(_:collaborator:in:);

    return MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.approve()();
  }
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = Collaboration.Manager.moderate(_:collaborator:in:);
  }

  else
  {
    v5 = Collaboration.Manager.moderate(_:collaborator:in:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = Collaboration.Manager.moderate(_:collaborator:in:);
  }

  else
  {
    v5 = Collaboration.Manager.moderate(_:collaborator:in:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v16 = v0;
  v1 = v0[21];

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = String.init<A>(describing:)();
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Moderate failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
  swift_allocError();
  *v12 = v1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  (*(v9 + 8))(v10, v11);

  v13 = v0[1];

  return v13();
}

{
  v16 = v0;
  v1 = v0[23];

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = String.init<A>(describing:)();
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Moderate failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
  swift_allocError();
  *v12 = v1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  (*(v9 + 8))(v10, v11);

  v13 = v0[1];

  return v13();
}

uint64_t Collaboration.Manager.remove(collaborator:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for MusicCollaborativePlaylist.RemoveCollaboratorRequest();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for Playlist();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for Playlist.Collaborator();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[18] = v8;
  v3[19] = v7;

  return _swift_task_switch(Collaboration.Manager.remove(collaborator:in:), v8, v7);
}

uint64_t Collaboration.Manager.remove(collaborator:in:)()
{
  v39 = v0;
  if (one-time initialization token for collaboration != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[4];
  v7 = v0[5];
  v9 = type metadata accessor for Logger();
  v0[20] = __swift_project_value_buffer(v9, static Logger.collaboration);
  v37 = *(v3 + 16);
  v37(v1, v8, v2);
  v10 = *(v6 + 16);
  v10(v4, v7, v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v16 = v0[13];
  v15 = v0[14];
  v17 = v0[12];
  v18 = v0[10];
  v36 = v0[9];
  if (v13)
  {
    log = v11;
    v19 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v19 = 136446466;
    lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v12;
    v22 = v21;
    (*(v15 + 8))(v14, v16);
    v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v22, &v38);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type Playlist and conformance Playlist, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v18 + 8))(v17, v36);
    v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, &v38);

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, log, v34, "    Remove called for:\n        - collaborator=%{public}s\n        - playlist=%{public}s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v18 + 8))(v17, v36);
    (*(v15 + 8))(v14, v16);
  }

  v28 = v0[11];
  v29 = v0[9];
  v30 = v0[5];
  v37(v0[15], v0[4], v0[13]);
  v10(v28, v30, v29);
  MusicCollaborativePlaylist.RemoveCollaboratorRequest.init(collaborator:playlist:)();
  v31 = swift_task_alloc();
  v0[21] = v31;
  *v31 = v0;
  v31[1] = Collaboration.Manager.remove(collaborator:in:);
  v32 = v0[3];

  return MusicCollaborativePlaylist.RemoveCollaboratorRequest.response()(v32);
}

{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = Collaboration.Manager.remove(collaborator:in:);
  }

  else
  {
    v5 = Collaboration.Manager.remove(collaborator:in:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[22];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = String.init<A>(describing:)();
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Remove failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v9 = v0[22];
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];
  lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.resetInvitationURL(_:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for Playlist();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for MusicCollaborativePlaylist.ResetInvitationLinkRequest();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[12] = v6;
  v2[13] = v5;

  return _swift_task_switch(Collaboration.Manager.resetInvitationURL(_:), v6, v5);
}

uint64_t Collaboration.Manager.resetInvitationURL(_:)()
{
  if (one-time initialization token for collaboration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[14] = __swift_project_value_buffer(v1, static Logger.collaboration);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Reset URL called", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];

  (*(v6 + 16))(v5, v8, v7);
  MusicCollaborativePlaylist.ResetInvitationLinkRequest.init(playlist:)();
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = Collaboration.Manager.resetInvitationURL(_:);
  v10 = v0[3];

  return MusicCollaborativePlaylist.ResetInvitationLinkRequest.response()(v10);
}

{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = Collaboration.Manager.resetInvitationURL(_:);
  }

  else
  {
    v5 = Collaboration.Manager.resetInvitationURL(_:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = String.init<A>(describing:)();
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Reset failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v9 = v0[16];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.updateShareOption(_:for:)(char a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 168) = a1;
  v3 = type metadata accessor for Playlist.Collaboration.InvitationMode();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  updated = type metadata accessor for MusicCollaborativePlaylist.UpdateInvitationModeRequest();
  *(v2 + 56) = updated;
  *(v2 + 64) = *(updated - 8);
  *(v2 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR);
  *(v2 + 80) = swift_task_alloc();
  v5 = type metadata accessor for Playlist.Collaboration();
  *(v2 + 88) = v5;
  *(v2 + 96) = *(v5 - 8);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 120) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 128) = v7;
  *(v2 + 136) = v6;

  return _swift_task_switch(Collaboration.Manager.updateShareOption(_:for:), v7, v6);
}

uint64_t Collaboration.Manager.updateShareOption(_:for:)()
{
  if (one-time initialization token for collaboration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 144) = __swift_project_value_buffer(v1, static Logger.collaboration);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 168);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "updateShareOption called with isOpen=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  Playlist.collaboration.getter();
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v9 = *(v0 + 80);

    outlined destroy of TaskPriority?(v9, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR);
    lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
    swift_allocError();
    *v10 = xmmword_1004F2F90;
    *(v10 + 16) = 3;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 104);
    v14 = *(v0 + 112);
    v15 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);
    v19 = *(v0 + 32);
    v20 = *(v0 + 168);
    (*(v16 + 32))(v14, *(v0 + 80), v15);
    (*(v16 + 16))(v13, v14, v15);
    v21 = &enum case for Playlist.Collaboration.InvitationMode.open(_:);
    if (!v20)
    {
      v21 = &enum case for Playlist.Collaboration.InvitationMode.requiresApproval(_:);
    }

    (*(v18 + 104))(v17, *v21, v19);
    MusicCollaborativePlaylist.UpdateInvitationModeRequest.init(collaboration:updatedInvitationMode:)();
    v22 = swift_task_alloc();
    *(v0 + 152) = v22;
    *v22 = v0;
    v22[1] = Collaboration.Manager.updateShareOption(_:for:);

    return MusicCollaborativePlaylist.UpdateInvitationModeRequest.response()();
  }
}

{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = Collaboration.Manager.updateShareOption(_:for:);
  }

  else
  {
    v5 = Collaboration.Manager.updateShareOption(_:for:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

{
  v20 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[20];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = String.init<A>(describing:)();
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "updateShareOption failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v9 = v0[20];
  v10 = v0[14];
  v11 = v0[11];
  v12 = v0[12];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];
  lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
  swift_allocError();
  *v16 = v9;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  swift_willThrow();
  (*(v14 + 8))(v13, v15);
  (*(v12 + 8))(v10, v11);

  v17 = v0[1];

  return v17();
}

uint64_t Collaboration.Manager.handleError(_:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for collaboration != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.collaboration);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Calling coordinator to handle error=%{public}@", v7, 0xCu);
    outlined destroy of TaskPriority?(v8, &_sSo8NSObjectCSgMd_0, &_sSo8NSObjectCSgMR_0);
  }

  swift_beginAccess();
  outlined init with copy of ActionPerforming(v2 + 16, v13);
  v10 = v14;
  v11 = v15;
  __swift_project_boxed_opaque_existential_0Tm(v13, v14);
  (*(v11 + 8))(a1, v10, v11);
  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

id Collaboration.Manager.activityViewController(for:url:)()
{
  v0 = objc_allocWithZone(NSItemProvider);
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v4 = [v0 initWithContentsOfURL:v2];

  if (v4)
  {
    v5 = [objc_allocWithZone(LPLinkMetadata) init];
    URL._bridgeToObjectiveC()(v6);
    v8 = v7;
    [v5 setURL:v7];

    v9 = [objc_allocWithZone(LPiTunesMediaPlaylistMetadata) init];
    Playlist.name.getter();
    v10 = String._bridgeToObjectiveC()();

    [v9 setName:v10];

    Playlist.curatorName.getter();
    if (v11)
    {
      v12 = String._bridgeToObjectiveC()();
    }

    else
    {
      v12 = 0;
    }

    [v9 setCurator:v12];

    Playlist.catalogID.getter();
    if (v13)
    {
      v14 = String._bridgeToObjectiveC()();
    }

    else
    {
      v14 = 0;
    }

    [v9 setStoreIdentifier:v14];

    Playlist.lpImage.getter();
    v16 = v15;
    [v9 setArtwork:v15];

    [v5 setSpecialization:v9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1004F2F10;
    *(v17 + 32) = v4;
    v18 = objc_allocWithZone(UIActivityItemsConfiguration);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSItemProvider, NSItemProvider_ptr);
    v19 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v21 = [v18 initWithItemProviders:isa];

    v22 = swift_allocObject();
    *(v22 + 16) = v5;
    aBlock[4] = partial apply for closure #1 in Collaboration.Manager.activityViewController(for:url:);
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed UIActivityItemsConfigurationMetadataKey) -> (@out Any?);
    aBlock[3] = &block_descriptor_18;
    v23 = _Block_copy(aBlock);
    v24 = v5;

    [v21 setPerItemMetadataProvider:v23];
    _Block_release(v23);
    v25 = [objc_allocWithZone(UIActivityViewController) initWithActivityItemsConfiguration:v21];
    [v25 setAllowsProminentActivity:0];

    return v25;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void Playlist.lpImage.getter()
{
  v0 = type metadata accessor for Playlist();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSItemProvider) init];
  static UTType.png.getter();
  UTType.identifier.getter();
  (*(v4 + 8))(v6, v3);
  v8 = String._bridgeToObjectiveC()();

  (*(v1 + 16))(v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v15[1], v0);
  v9 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v10 = swift_allocObject();
  (*(v1 + 32))(v10 + v9, v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  aBlock[4] = partial apply for closure #1 in Playlist.lpImage.getter;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?, @unowned @thick Swift.AnyObject.Type?, @guaranteed [AnyHashable : Any]?) -> ();
  aBlock[3] = &block_descriptor_89;
  v11 = _Block_copy(aBlock);

  [v7 registerItemForTypeIdentifier:v8 loadHandler:v11];
  _Block_release(v11);

  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() _systemImageNamed:v12];

  if (v13)
  {
    v14 = [objc_allocWithZone(LPImage) initWithPlatformImage:v13];

    [objc_allocWithZone(LPImage) initWithItemProvider:v7 properties:0 placeholderImage:v14];
  }

  else
  {
    __break(1u);
  }
}

id closure #1 in Collaboration.Manager.activityViewController(for:url:)@<X0>(void *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }
  }

  *(a3 + 24) = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for LPLinkMetadata, LPLinkMetadata_ptr);
  *a3 = a2;

  return a2;
}

id thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed UIActivityItemsConfigurationMetadataKey) -> (@out Any?)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(v14, a2, v6);

  v7 = v15;
  if (v15)
  {
    __swift_project_boxed_opaque_existential_0Tm(v14, v15);
    v8 = *(v7 - 8);
    v9 = __chkstk_darwin();
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t Collaboration.Manager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t Collaboration.ArtworkCachingReference.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for collaboration()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.collaboration);
  __swift_project_value_buffer(v0, static Logger.collaboration);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t static Logger.collaboration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for collaboration != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.collaboration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Playlist.Collaboration.isOpenInvitation.getter()
{
  v0 = type metadata accessor for Playlist.Collaboration.InvitationMode();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSg_AItMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSg_AItMR) - 8;
  __chkstk_darwin();
  v5 = &v19 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMR);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  __chkstk_darwin();
  v11 = &v19 - v10;
  Playlist.Collaboration.invitationMode.getter();
  (*(v1 + 104))(v9, enum case for Playlist.Collaboration.InvitationMode.open(_:), v0);
  (*(v1 + 56))(v9, 0, 1, v0);
  v12 = *(v3 + 56);
  outlined init with copy of TaskPriority?(v11, v5, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMR);
  outlined init with copy of TaskPriority?(v9, &v5[v12], &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMR);
  v13 = *(v1 + 48);
  if (v13(v5, 1, v0) != 1)
  {
    outlined init with copy of TaskPriority?(v5, v7, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMR);
    if (v13(&v5[v12], 1, v0) != 1)
    {
      v15 = &v5[v12];
      v16 = v20;
      (*(v1 + 32))(v20, v15, v0);
      lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type Playlist.Collaboration.InvitationMode and conformance Playlist.Collaboration.InvitationMode, &type metadata accessor for Playlist.Collaboration.InvitationMode, &protocol conformance descriptor for Playlist.Collaboration.InvitationMode);
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();
      v17 = *(v1 + 8);
      v17(v16, v0);
      outlined destroy of TaskPriority?(v9, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMR);
      outlined destroy of TaskPriority?(v11, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMR);
      v17(v7, v0);
      outlined destroy of TaskPriority?(v5, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMR);
      return v14 & 1;
    }

    outlined destroy of TaskPriority?(v9, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMR);
    outlined destroy of TaskPriority?(v11, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMR);
    (*(v1 + 8))(v7, v0);
    goto LABEL_6;
  }

  outlined destroy of TaskPriority?(v9, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMR);
  outlined destroy of TaskPriority?(v11, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMR);
  if (v13(&v5[v12], 1, v0) != 1)
  {
LABEL_6:
    outlined destroy of TaskPriority?(v5, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSg_AItMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSg_AItMR);
    v14 = 0;
    return v14 & 1;
  }

  outlined destroy of TaskPriority?(v5, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationV14InvitationModeOSgMR);
  v14 = 1;
  return v14 & 1;
}

uint64_t Playlist.Collaborator.isHost.getter()
{
  v0 = type metadata accessor for Playlist.Collaborator.Role();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSg_AItMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSg_AItMR) - 8;
  __chkstk_darwin();
  v5 = &v19 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMR);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  __chkstk_darwin();
  v11 = &v19 - v10;
  Playlist.Collaborator.role.getter();
  (*(v1 + 104))(v9, enum case for Playlist.Collaborator.Role.host(_:), v0);
  (*(v1 + 56))(v9, 0, 1, v0);
  v12 = *(v3 + 56);
  outlined init with copy of TaskPriority?(v11, v5, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMR);
  outlined init with copy of TaskPriority?(v9, &v5[v12], &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMR);
  v13 = *(v1 + 48);
  if (v13(v5, 1, v0) != 1)
  {
    outlined init with copy of TaskPriority?(v5, v7, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMR);
    if (v13(&v5[v12], 1, v0) != 1)
    {
      v15 = &v5[v12];
      v16 = v20;
      (*(v1 + 32))(v20, v15, v0);
      lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type Playlist.Collaborator.Role and conformance Playlist.Collaborator.Role, &type metadata accessor for Playlist.Collaborator.Role, &protocol conformance descriptor for Playlist.Collaborator.Role);
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();
      v17 = *(v1 + 8);
      v17(v16, v0);
      outlined destroy of TaskPriority?(v9, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMR);
      outlined destroy of TaskPriority?(v11, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMR);
      v17(v7, v0);
      outlined destroy of TaskPriority?(v5, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMR);
      return v14 & 1;
    }

    outlined destroy of TaskPriority?(v9, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMR);
    outlined destroy of TaskPriority?(v11, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMR);
    (*(v1 + 8))(v7, v0);
    goto LABEL_6;
  }

  outlined destroy of TaskPriority?(v9, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMR);
  outlined destroy of TaskPriority?(v11, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMR);
  if (v13(&v5[v12], 1, v0) != 1)
  {
LABEL_6:
    outlined destroy of TaskPriority?(v5, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSg_AItMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSg_AItMR);
    v14 = 0;
    return v14 & 1;
  }

  outlined destroy of TaskPriority?(v5, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV4RoleOSgMR);
  v14 = 1;
  return v14 & 1;
}

uint64_t Playlist.hasJoinedCollaboration.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR);
  __chkstk_darwin();
  v1 = &v15 - v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMR);
  __chkstk_darwin();
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  Playlist.collaboration.getter();
  v6 = type metadata accessor for Playlist.Collaboration();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v1, 1, v6) == 1)
  {
    outlined destroy of TaskPriority?(v1, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR);
    v8 = type metadata accessor for Playlist.Collaborator.Status();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  Playlist.Collaboration.collaboratorStatus.getter();
  (*(v7 + 8))(v1, v6);
  v9 = type metadata accessor for Playlist.Collaborator.Status();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    goto LABEL_10;
  }

  outlined init with copy of TaskPriority?(v5, v3, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMR);
  v11 = (*(v10 + 88))(v3, v9);
  if (v11 != enum case for Playlist.Collaborator.Status.host(_:) && v11 != enum case for Playlist.Collaborator.Status.joined(_:))
  {
    (*(v10 + 8))(v3, v9);
    goto LABEL_10;
  }

  v13 = 1;
LABEL_11:
  outlined destroy of TaskPriority?(v5, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMR);
  return v13;
}

uint64_t Playlist.hasUnsupportedContent.getter()
{
  v1[7] = v0;
  v2 = type metadata accessor for Playlist.Entry();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistV5EntryVGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistV5EntryVGGMR);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV5EntryVSgMd, &_s8MusicKit8PlaylistV5EntryVSgMR);
  v1[14] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMR);
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A15LibraryResponseVyAA8PlaylistV5EntryVGMd, &_s8MusicKit0A15LibraryResponseVyAA8PlaylistV5EntryVGMR);
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  v1[22] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14LibraryRequestVyAA8PlaylistV5EntryVGMd, &_s8MusicKit0A14LibraryRequestVyAA8PlaylistV5EntryVGMR);
  v1[23] = v5;
  v1[24] = *(v5 - 8);
  v1[25] = swift_task_alloc();

  return _swift_task_switch(Playlist.hasUnsupportedContent.getter, 0, 0);
}

{
  v1 = v0[22];
  v2 = v0[7];
  MusicLibraryRequest.init()();
  swift_getKeyPath();
  v3 = type metadata accessor for Playlist();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  lazy protocol witness table accessor for type Playlist and conformance Playlist(&lazy protocol witness table cache variable for type Playlist and conformance Playlist, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  MusicLibraryRequest<>.filter<A>(matching:equalTo:)();

  outlined destroy of TaskPriority?(v1, &_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = Playlist.hasUnsupportedContent.getter;
  v6 = v0[23];
  v7 = v0[21];

  return MusicLibraryRequest.response()(v7, v6);
}

{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = Playlist.hasUnsupportedContent.getter;
  }

  else
  {
    v2 = Playlist.hasUnsupportedContent.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  MusicLibraryResponse.items.getter();
  (*(v2 + 16))(v3, v1, v4);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Playlist.Entry> and conformance MusicItemCollection<A>, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMR, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v7 = *(v5 + 36);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Playlist.Entry> and conformance MusicItemCollection<A>, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMR, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.endIndex.getter();
  v47 = v0;
  if (*(v6 + v7) == v0[6])
  {
LABEL_5:
    v19 = v47[24];
    v18 = v47[25];
    v20 = v47[23];
    v22 = v47[20];
    v21 = v47[21];
    v24 = v47[18];
    v23 = v47[19];
    v25 = v47[15];
    v26 = v47[16];
    outlined destroy of TaskPriority?(v47[13], &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistV5EntryVGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistV5EntryVGGMR);
    (*(v26 + 8))(v24, v25);
    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
    v27 = 0;
    v28 = 1;
  }

  else
  {
    v8 = v0[9];
    v43 = (v8 + 16);
    v46 = (v8 + 32);
    v41 = (v8 + 8);
    while (1)
    {
      v9 = v47[10];
      v10 = v47[11];
      v11 = v47[8];
      v12 = v7;
      v13 = dispatch thunk of Collection.subscript.read();
      (*v43)(v10);
      v13(v47 + 2, 0);
      v7 = v12;
      dispatch thunk of Collection.formIndex(after:)();
      v14 = *v46;
      (*v46)(v9, v10, v11);
      Playlist.Entry.catalogID.getter();
      if (!v15)
      {
        break;
      }

      v16 = v47[10];
      v17 = v47[8];

      (*v41)(v16, v17);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v6 + v12) == v47[6])
      {
        goto LABEL_5;
      }
    }

    v29 = v47[24];
    v30 = v47[25];
    v32 = v47[20];
    v31 = v47[21];
    v34 = v47[18];
    v33 = v47[19];
    v36 = v47[15];
    v35 = v47[16];
    v44 = v47[14];
    v45 = v47[23];
    v37 = v47[10];
    v42 = v47[8];
    outlined destroy of TaskPriority?(v47[13], &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistV5EntryVGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistV5EntryVGGMR);
    (*(v35 + 8))(v34, v36);
    (*(v32 + 8))(v31, v33);
    (*(v29 + 8))(v30, v45);
    v14(v44, v37, v42);
    v28 = 0;
    v27 = 1;
  }

  v38 = v47[14];
  (*(v47[9] + 56))(v38, v28, 1, v47[8]);
  outlined destroy of TaskPriority?(v38, &_s8MusicKit8PlaylistV5EntryVSgMd, &_s8MusicKit8PlaylistV5EntryVSgMR);

  v39 = v47[1];

  return v39(v27);
}

{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1(0);
}

uint64_t Playlist.duplicate()()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A23LibraryPlaylistResponseVy0aB00E0VGMd, &_s16MusicKitInternal0A23LibraryPlaylistResponseVy0aB00E0VGMR);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A22LibraryPlaylistRequestVy0aB00E0VGMd, &_s16MusicKitInternal0A22LibraryPlaylistRequestVy0aB00E0VGMR);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(Playlist.duplicate(), 0, 0);
}

{
  static MusicLibraryPlaylistRequest.duplicatingPlaylist<>(_:)();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = Playlist.duplicate();
  v2 = *(v0 + 40);

  return MusicLibraryPlaylistRequest.response<>()(v2);
}

{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = Playlist.duplicate();
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v3 = Playlist.duplicate();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

void closure #1 in Playlist.lpImage.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v12 = &v17 - v11;
  if (a1)
  {
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    (*(v9 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v8);
    v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    (*(v9 + 32))(v15 + v14, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v16 = (v15 + ((v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v16 = a1;
    v16[1] = a2;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in Playlist.lpImage.getter, v15);
  }
}

uint64_t closure #1 in closure #1 in Playlist.lpImage.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE11ImageFormatOSgMd, &_s8MusicKit7ArtworkV0aB8InternalE11ImageFormatOSgMR);
  v6[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR);
  v6[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd, &_s8MusicKit7ArtworkVSgMR);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in Playlist.lpImage.getter, 0, 0);
}

uint64_t closure #1 in closure #1 in Playlist.lpImage.getter()
{
  v1 = *(v0 + 56);
  Playlist.artwork.getter();
  v2 = type metadata accessor for Artwork();
  *(v0 + 64) = v2;
  v3 = *(v2 - 8);
  *(v0 + 72) = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 56), &_s8MusicKit7ArtworkVSgMd, &_s8MusicKit7ArtworkVSgMR);
    (*(v0 + 24))(0, 0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = type metadata accessor for Artwork.CropStyle();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = type metadata accessor for Artwork.ImageFormat();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v10[1] = closure #1 in closure #1 in Playlist.lpImage.getter;
    v11 = *(v0 + 48);
    v12 = *(v0 + 40);
    v13.n128_u64[0] = 0x4072C00000000000;
    v14.n128_u64[0] = 1.0;
    v15.n128_u64[0] = 0x4072C00000000000;

    return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v11, v12, 0, 0, v13, v15, v14);
  }
}

{
  v1 = UIImagePNGRepresentation(*(v0 + 88));
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v3, v5);
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = *(v0 + 88);
  (*(v0 + 24))(v6.super.isa, 0);

  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

{
  (*(*(v0 + 72) + 8))(*(v0 + 56), *(v0 + 64));
  (*(v0 + 24))(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in Playlist.lpImage.getter(uint64_t a1)
{
  v3 = *v2;
  (*v2)[11] = a1;

  if (v1)
  {
    v6 = v3 + 5;
    v4 = v3[5];
    v5 = v6[1];

    outlined destroy of TaskPriority?(v4, &_s8MusicKit7ArtworkV0aB8InternalE11ImageFormatOSgMd, &_s8MusicKit7ArtworkV0aB8InternalE11ImageFormatOSgMR);
    outlined destroy of TaskPriority?(v5, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR);
    v7 = closure #1 in closure #1 in Playlist.lpImage.getter;
  }

  else
  {
    v8 = v3[8];
    v9 = v3[9];
    v11 = v3[6];
    v10 = v3[7];
    outlined destroy of TaskPriority?(v3[5], &_s8MusicKit7ArtworkV0aB8InternalE11ImageFormatOSgMd, &_s8MusicKit7ArtworkV0aB8InternalE11ImageFormatOSgMR);
    outlined destroy of TaskPriority?(v11, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR);
    (*(v9 + 8))(v10, v8);
    v7 = closure #1 in closure #1 in Playlist.lpImage.getter;
  }

  return _swift_task_switch(v7, 0, 0);
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSecureCoding?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
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
  (*(a3 + 16))(a3, a1);
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSbSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSbSg_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSbSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t specialized static Collaboration.Setup.title(active:)(char a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v6, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v7 = static NSBundle.module;
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t partial apply for closure #1 in static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for URL() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(a1, a2, v2 + v7);
}

uint64_t sub_100109270()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static Collaboration.Error.tapToRadarAlert()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in static Collaboration.Error.tapToRadarAlert()(a1, v4, v5, v1 + 32);
}

uint64_t specialized Collaboration.Manager.supportsCollaboration(for:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = v10;
  *v18 = v11;
  v19 = v12;
  v20 = v13;
  v14[0] = v6;
  v14[1] = v7;
  v15 = v8;
  v16 = v9;
  if ((Playlist.hasActiveCollaboration.getter() & 1) == 0)
  {
    if (BYTE1(v14[0]) != 1)
    {
      lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
      swift_allocError();
      v4 = xmmword_1004F2F20;
      goto LABEL_13;
    }

    if ((Playlist.isEditable.getter() & 1) == 0)
    {
      lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
      swift_allocError();
      v4 = xmmword_1004F2FA0;
LABEL_13:
      *v3 = v4;
      v2 = v3 + 1;
      goto LABEL_14;
    }
  }

  if ((specialized Set.contains(_:)(3u, v15) & 1) == 0)
  {
    lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
    swift_allocError();
    v4 = xmmword_1004F2FB0;
    goto LABEL_13;
  }

  if (v18[1] && ([v18[1] isMinorAccountHolder] & 1) == 0)
  {
    if (BYTE8(v14[0]))
    {
      return outlined destroy of ApplicationCapabilities(v14);
    }

    lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
    swift_allocError();
    v4 = xmmword_1004F2F40;
    goto LABEL_13;
  }

  lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error();
  swift_allocError();
  v1 = v0;
  v2 = (v0 + 16);
  *v1 = 0;
  v1[1] = 0;
LABEL_14:
  *v2 = 3;
  swift_willThrow();
  return outlined destroy of ApplicationCapabilities(v14);
}

unint64_t lazy protocol witness table accessor for type Collaboration.Error and conformance Collaboration.Error()
{
  result = lazy protocol witness table cache variable for type Collaboration.Error and conformance Collaboration.Error;
  if (!lazy protocol witness table cache variable for type Collaboration.Error and conformance Collaboration.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Error and conformance Collaboration.Error);
  }

  return result;
}

uint64_t sub_1001095F8()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type Collaboration.Manager.DeepLinkType and conformance Collaboration.Manager.DeepLinkType()
{
  result = lazy protocol witness table cache variable for type Collaboration.Manager.DeepLinkType and conformance Collaboration.Manager.DeepLinkType;
  if (!lazy protocol witness table cache variable for type Collaboration.Manager.DeepLinkType and conformance Collaboration.Manager.DeepLinkType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Manager.DeepLinkType and conformance Collaboration.Manager.DeepLinkType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Collaboration.Manager.Moderation and conformance Collaboration.Manager.Moderation()
{
  result = lazy protocol witness table cache variable for type Collaboration.Manager.Moderation and conformance Collaboration.Manager.Moderation;
  if (!lazy protocol witness table cache variable for type Collaboration.Manager.Moderation and conformance Collaboration.Manager.Moderation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Manager.Moderation and conformance Collaboration.Manager.Moderation);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore13CollaborationO5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for Collaboration.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Collaboration.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for Collaboration.Error(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSbSg_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSbSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSbSg_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSbSg_TG5TA_71(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSbSg_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSbSg_TG5(a1, v4);
}

uint64_t objectdestroyTm_8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

void partial apply for closure #1 in Playlist.lpImage.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for Playlist() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  closure #1 in Playlist.lpImage.getter(a1, a2, a3, a4, v10);
}

uint64_t sub_100109CC4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100109D04()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in Playlist.lpImage.getter(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in Playlist.lpImage.getter(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t lazy protocol witness table accessor for type Playlist and conformance Playlist(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100109F58()
{

  return swift_deallocObject();
}

__n128 static Alert.explicitRestrictedAlert(traitCollection:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized static Alert.explicitRestrictedAlert(traitCollection:)(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

__n128 static Alert.confirmDelete(for:library:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  specialized static Alert.confirmDelete(for:library:)(v7, a2, v5, v6, v10);
  v8 = v10[3];
  *(a3 + 32) = v10[2];
  *(a3 + 48) = v8;
  *(a3 + 64) = v11;
  result = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = result;
  return result;
}

__n128 static Alert.cellularDataDisallowedAlert(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  specialized static Alert.cellularDataDisallowedAlert(_:)(a1, a2, v6);
  v4 = v6[3];
  *(a3 + 32) = v6[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7;
  result = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = result;
  return result;
}

__n128 static Alert.dolbyAtmosDownloadsAlert(message:completion:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  specialized static Alert.dolbyAtmosDownloadsAlert(message:completion:)(a1, a2, a3, a4, v8);
  v6 = v8[3];
  *(a5 + 32) = v8[2];
  *(a5 + 48) = v6;
  *(a5 + 64) = v9;
  result = v8[1];
  *a5 = v8[0];
  *(a5 + 16) = result;
  return result;
}

double static Alert.Action.cancel.getter@<D0>(uint64_t a2@<X8>)
{
  specialized static Alert.Action.cancel.getter(v5);
  v3 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v3;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

__n128 static Alert.enableCloudLibraryAlert(context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized static Alert.enableCloudLibraryAlert(context:)(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

void static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, char *, uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v48 = a7;
  v49 = a8;
  v46 = a5;
  v47 = a6;
  v44 = a3;
  v45 = a4;
  v13 = type metadata accessor for UUID();
  v42 = *(v13 - 8);
  v43 = v13;
  __chkstk_darwin();
  v41 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v40 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v40 - v23;
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  v25 = 0uLL;
  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    static URL.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(a1, a2, v44, v45, v46, v47, v48, v49, v24, a10 & 1);
    outlined init with copy of URL?(v24, v22);
    if ((*(v16 + 48))(v22, 1, v15) == 1)
    {
      outlined destroy of URL?(v24);
      v26 = v22;
LABEL_10:
      outlined destroy of URL?(v26);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v25 = 0uLL;
      goto LABEL_11;
    }

    v48 = *(v16 + 32);
    v49 = v16 + 32;
    v48(v20, v22, v15);
    v32 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v33);
    v35 = v34;
    v36 = [v32 canOpenURL:v34];

    if (!v36)
    {
      (*(v16 + 8))(v20, v15);
      v26 = v24;
      goto LABEL_10;
    }

    (*(v16 + 16))(v18, v20, v15);
    v37 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v31 = swift_allocObject();
    v48((v31 + v37), v18, v15);
    v38 = v41;
    UUID.init()();
    v27 = UUID.uuidString.getter();
    v28 = v39;
    (*(v42 + 8))(v38, v43);
    (*(v16 + 8))(v20, v15);
    outlined destroy of URL?(v24);
    v25 = xmmword_1004F2FC0;
    v30 = &async function pointer to partial apply for closure #1 in static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:);
    v29 = 2;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

LABEL_11:
  *a9 = v27;
  *(a9 + 8) = v28;
  *(a9 + 16) = v25;
  *(a9 + 32) = v29;
  *(a9 + 40) = v30;
  *(a9 + 48) = v31;
}

__n128 static Alert.cellularRestrictedAlert(model:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized static Alert.cellularRestrictedAlert(model:)(a2, v5);
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

id closure #1 in static Alert.cellularRestrictedAlert(model:)()
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v2 = result;
    [result setVideoCellularStreamingAllowed:1];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id closure #2 in static Alert.cellularRestrictedAlert(model:)()
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v2 = result;
    [result setMusicCellularStreamingAllowed:1];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 static Alert.networkUnavailableAlert(model:traitCollection:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, void *a3@<X1>)
{
  specialized static Alert.networkUnavailableAlert(model:traitCollection:)(a2, a3, v6);
  v4 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v7;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

char *static Alert.accountRequiredAlert(traitCollection:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v3 = type metadata accessor for UUID();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin();
  v57 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v45 - v9;
  String.LocalizationValue.init(stringLiteral:)();
  v11 = *(v6 + 16);
  v11(v8, v10, v5);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v12 = static NSBundle.module;
  v13 = static NSBundle.module;
  static Locale.current.getter();
  v56 = v13;
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v54 = v15;
  v55 = v14;
  v16 = *(v6 + 8);
  v16(v10, v5);
  String.LocalizationValue.init(stringLiteral:)();
  v11(v8, v10, v5);
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v52 = v18;
  v53 = v17;
  v16(v10, v5);
  v51 = v16;
  if (v50 && [v50 userInterfaceIdiom] == 3)
  {
    v19 = _swiftEmptyArrayStorage;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    v50 = v11;
    v11(v8, v10, v5);
    v20 = v56;
    static Locale.current.getter();
    v49 = v12;
    v21 = String.init(localized:table:bundle:locale:comment:)();
    v47 = v22;
    v48 = v21;
    v16(v10, v5);
    v23 = v57;
    UUID.init()();
    v24 = UUID.uuidString.getter();
    v45 = v25;
    v46 = v24;
    (*(v58 + 8))(v23, v59);
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
    v27 = *(v19 + 2);
    v26 = *(v19 + 3);
    if (v27 >= v26 >> 1)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v19);
    }

    *(v19 + 2) = v27 + 1;
    v28 = &v19[56 * v27];
    v29 = v45;
    *(v28 + 4) = v46;
    *(v28 + 5) = v29;
    v30 = v47;
    *(v28 + 6) = v48;
    *(v28 + 7) = v30;
    v28[64] = 2;
    *(v28 + 9) = &async function pointer to closure #1 in static Alert.accountRequiredAlert(traitCollection:);
    *(v28 + 10) = 0;
    v11 = v50;
  }

  String.LocalizationValue.init(stringLiteral:)();
  v11(v8, v10, v5);
  v31 = v56;
  static Locale.current.getter();
  v32 = String.init(localized:table:bundle:locale:comment:)();
  v34 = v33;
  v51(v10, v5);
  v35 = v57;
  UUID.init()();
  v36 = UUID.uuidString.getter();
  v38 = v37;
  (*(v58 + 8))(v35, v59);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
    v19 = result;
  }

  v41 = *(v19 + 2);
  v40 = *(v19 + 3);
  if (v41 >= v40 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v19);
    v19 = result;
  }

  *(v19 + 2) = v41 + 1;
  v42 = &v19[56 * v41];
  *(v42 + 4) = v36;
  *(v42 + 5) = v38;
  *(v42 + 6) = v32;
  *(v42 + 7) = v34;
  v42[64] = 2;
  *(v42 + 9) = 0;
  *(v42 + 10) = 0;
  v43 = v54;
  *a2 = v55;
  *(a2 + 8) = v43;
  v44 = v52;
  *(a2 + 16) = v53;
  *(a2 + 24) = v44;
  *(a2 + 32) = 0;
  *(a2 + 33) = v61[0];
  *(a2 + 36) = *(v61 + 3);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = *v60;
  *(a2 + 52) = *&v60[3];
  *(a2 + 56) = v19;
  *(a2 + 64) = 0;
  return result;
}

id closure #1 in static Alert.accountRequiredAlert(traitCollection:)()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v2 = result;
    LSApplicationWorkspace.openSettings()();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *static Alert.subscriptionRequiredAlert(traitCollection:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v3 = type metadata accessor for UUID();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin();
  v57 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v45 - v9;
  String.LocalizationValue.init(stringLiteral:)();
  v11 = *(v6 + 16);
  v11(v8, v10, v5);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v12 = static NSBundle.module;
  v13 = static NSBundle.module;
  static Locale.current.getter();
  v56 = v13;
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v54 = v15;
  v55 = v14;
  v16 = *(v6 + 8);
  v16(v10, v5);
  String.LocalizationValue.init(stringLiteral:)();
  v11(v8, v10, v5);
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v52 = v18;
  v53 = v17;
  v16(v10, v5);
  v51 = v16;
  if (v50 && [v50 userInterfaceIdiom] == 3)
  {
    v19 = _swiftEmptyArrayStorage;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    v50 = v11;
    v11(v8, v10, v5);
    v20 = v56;
    static Locale.current.getter();
    v49 = v12;
    v21 = String.init(localized:table:bundle:locale:comment:)();
    v47 = v22;
    v48 = v21;
    v16(v10, v5);
    v23 = v57;
    UUID.init()();
    v24 = UUID.uuidString.getter();
    v45 = v25;
    v46 = v24;
    (*(v58 + 8))(v23, v59);
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
    v27 = *(v19 + 2);
    v26 = *(v19 + 3);
    if (v27 >= v26 >> 1)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v19);
    }

    *(v19 + 2) = v27 + 1;
    v28 = &v19[56 * v27];
    v29 = v45;
    *(v28 + 4) = v46;
    *(v28 + 5) = v29;
    v30 = v47;
    *(v28 + 6) = v48;
    *(v28 + 7) = v30;
    v28[64] = 2;
    *(v28 + 9) = &async function pointer to closure #1 in static Alert.subscriptionRequiredAlert(traitCollection:);
    *(v28 + 10) = 0;
    v11 = v50;
  }

  String.LocalizationValue.init(stringLiteral:)();
  v11(v8, v10, v5);
  v31 = v56;
  static Locale.current.getter();
  v32 = String.init(localized:table:bundle:locale:comment:)();
  v34 = v33;
  v51(v10, v5);
  v35 = v57;
  UUID.init()();
  v36 = UUID.uuidString.getter();
  v38 = v37;
  (*(v58 + 8))(v35, v59);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
    v19 = result;
  }

  v41 = *(v19 + 2);
  v40 = *(v19 + 3);
  if (v41 >= v40 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v19);
    v19 = result;
  }

  *(v19 + 2) = v41 + 1;
  v42 = &v19[56 * v41];
  *(v42 + 4) = v36;
  *(v42 + 5) = v38;
  *(v42 + 6) = v32;
  *(v42 + 7) = v34;
  v42[64] = 2;
  *(v42 + 9) = 0;
  *(v42 + 10) = 0;
  v43 = v54;
  *a2 = v55;
  *(a2 + 8) = v43;
  v44 = v52;
  *(a2 + 16) = v53;
  *(a2 + 24) = v44;
  *(a2 + 32) = 0;
  *(a2 + 33) = v61[0];
  *(a2 + 36) = *(v61 + 3);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = *v60;
  *(a2 + 52) = *&v60[3];
  *(a2 + 56) = v19;
  *(a2 + 64) = 0;
  return result;
}

id closure #1 in static Alert.explicitRestrictedAlert(traitCollection:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  v2 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v2;
  v3 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v3;
  v4 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v4;
  outlined destroy of ApplicationCapabilities(v0 + 16);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v6 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();

    [v6 setBoolValue:1 forSetting:v7];

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in static Alert.explicitRestrictedAlert(traitCollection:)()
{
  return _swift_task_switch(closure #2 in static Alert.explicitRestrictedAlert(traitCollection:), 0, 0);
}

{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    LSApplicationWorkspace.openRestrictions()();
  }

  v3 = *(v0 + 8);

  return v3();
}

double static Alert.contentUnavailableAlert()@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin();
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v26 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  v10 = *(v5 + 16);
  v10(v7, v9, v4);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v11 = static NSBundle.module;
  static Locale.current.getter();
  v12 = v11;
  v13 = String.init(localized:table:bundle:locale:comment:)();
  v26 = v14;
  v27 = v13;
  v15 = *(v5 + 8);
  v15(v9, v4);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v7, v9, v4);
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  v18 = v17;
  v15(v9, v4);
  v19 = v28;
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v29 + 8))(v19, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
  v23 = swift_allocObject();
  *&result = 1;
  *(v23 + 16) = xmmword_1004F2400;
  *(v23 + 32) = v20;
  *(v23 + 40) = v22;
  *(v23 + 48) = v16;
  *(v23 + 56) = v18;
  *(v23 + 64) = 2;
  *(v23 + 72) = 0;
  *(v23 + 80) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  v25 = v26;
  *(a1 + 16) = v27;
  *(a1 + 24) = v25;
  *(a1 + 32) = 0;
  *(a1 + 33) = *v32;
  *(a1 + 36) = *&v32[3];
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = *v31;
  *(a1 + 52) = *&v31[3];
  *(a1 + 56) = v23;
  *(a1 + 64) = 0;
  return result;
}

double static Alert.userUploadRequiredAlert()@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin();
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v29 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  v10 = *(v5 + 16);
  v10(v7, v9, v4);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v11 = static NSBundle.module;
  static Locale.current.getter();
  v12 = v11;
  v13 = String.init(localized:table:bundle:locale:comment:)();
  v31 = v14;
  v32 = v13;
  v15 = *(v5 + 8);
  v15(v9, v4);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v7, v9, v4);
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  v29 = v17;
  v30 = v16;
  v15(v9, v4);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v7, v9, v4);
  static Locale.current.getter();
  v18 = String.init(localized:table:bundle:locale:comment:)();
  v20 = v19;
  v15(v9, v4);
  v21 = v33;
  UUID.init()();
  v22 = UUID.uuidString.getter();
  v24 = v23;
  (*(v34 + 8))(v21, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
  v25 = swift_allocObject();
  *&result = 1;
  *(v25 + 16) = xmmword_1004F2400;
  *(v25 + 32) = v22;
  *(v25 + 40) = v24;
  *(v25 + 48) = v18;
  *(v25 + 56) = v20;
  *(v25 + 64) = 2;
  *(v25 + 72) = 0;
  *(v25 + 80) = 0;
  v27 = v31;
  *a1 = v32;
  *(a1 + 8) = v27;
  v28 = v29;
  *(a1 + 16) = v30;
  *(a1 + 24) = v28;
  *(a1 + 32) = 0;
  *(a1 + 33) = *v37;
  *(a1 + 36) = *&v37[3];
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = *v36;
  *(a1 + 52) = *&v36[3];
  *(a1 + 56) = v25;
  *(a1 + 64) = 0;
  return result;
}

__n128 static Alert.ageVerificationFallbackAlert()@<Q0>(uint64_t a1@<X8>)
{
  specialized static Alert.ageVerificationFallbackAlert()(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t closure #1 in static Alert.enableCloudLibraryAlert(context:)()
{
  return _swift_task_switch(closure #1 in static Alert.enableCloudLibraryAlert(context:), 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in static Alert.cellularDataDisallowedAlert(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(closure #1 in static Alert.cellularDataDisallowedAlert(_:), 0, 0);
}

uint64_t closure #1 in static Alert.cellularDataDisallowedAlert(_:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v1(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #2 in static Alert.cellularDataDisallowedAlert(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(closure #2 in static Alert.cellularDataDisallowedAlert(_:), 0, 0);
}

id closure #2 in static Alert.cellularDataDisallowedAlert(_:)()
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    [result setMusicCellularDownloadingAllowed:1];

    if (v3)
    {
      (*(v0 + 16))(1);
    }

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static Alert.confirmDelete(for:library:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  return _swift_task_switch(closure #1 in static Alert.confirmDelete(for:library:), 0, 0);
}

uint64_t closure #1 in static Alert.confirmDelete(for:library:)()
{
  v1 = *(v0 + 24);
  v3 = v1[3];
  v2 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_0Tm(v1, v3);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = closure #1 in static Alert.confirmDelete(for:library:);

  return MusicLibrary.remove<A>(_:)(v4, v3, v2);
}

{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in static Alert.confirmDelete(for:library:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v14 = v0;
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.actions);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = String.init<A>(describing:)();
    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to delete item=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t closure #1 in static Alert.dolbyAtmosDownloadsAlert(message:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(closure #1 in static Alert.dolbyAtmosDownloadsAlert(message:completion:), 0, 0);
}

uint64_t closure #1 in static Alert.dolbyAtmosDownloadsAlert(message:completion:)()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() standardUserDefaults];
  [v2 setPrefersSpatialDownloads:1];

  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = closure #1 in static Alert.dolbyAtmosDownloadsAlert(message:completion:);

  return v5(1);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #2 in static Alert.dolbyAtmosDownloadsAlert(message:completion:)(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return v6(0);
}

__n128 static Alert.downloadPinsAlert(completion:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  specialized static Alert.downloadPinsAlert(completion:)(a2, a3, v6);
  v4 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v7;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t closure #1 in static Alert.downloadPinsAlert(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(closure #1 in static Alert.downloadPinsAlert(completion:), 0, 0);
}

uint64_t closure #1 in static Alert.downloadPinsAlert(completion:)()
{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in static Alert.downloadPinsAlert(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(closure #2 in static Alert.downloadPinsAlert(completion:), 0, 0);
}

id closure #2 in static Alert.downloadPinsAlert(completion:)()
{
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    [result enableAutomaticDownloadsForPinnedLibraryEntities];

    v3(1);
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  type metadata accessor for MainActor();
  *(v3 + 24) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:), v5, v4);
}

uint64_t closure #1 in static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)()
{

  v1 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  type metadata accessor for UIApplicationOpenExternalURLOptionsKey(0);
  lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey, &protocol conformance descriptor for UIApplicationOpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 openURL:v4 options:isa completionHandler:0];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t specialized static Alert.confirmDelete(for:library:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a2;
  v9 = type metadata accessor for UUID();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin();
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v12 = type metadata accessor for String.LocalizationValue();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v32 - v16;
  v37[3] = a3;
  v37[4] = a4;
  v36 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  String.LocalizationValue.init(stringLiteral:)();
  (*(v13 + 16))(v15, v17, v12);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v19 = static NSBundle.module;
  static Locale.current.getter();
  v32 = String.init(localized:table:bundle:locale:comment:)();
  v21 = v20;
  (*(v13 + 8))(v17, v12);
  outlined init with copy of ActionPerforming(v37, v38);
  v22 = swift_allocObject();
  outlined init with take of ActionPerforming(v38, v22 + 16);
  *(v22 + 56) = v33;

  UUID.init()();
  v23 = UUID.uuidString.getter();
  v25 = v24;
  (*(v34 + 8))(v11, v35);
  v26 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(boxed_opaque_existential_1, a3, v36);
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1004F2EF0;
  *(v29 + 32) = v23;
  *(v29 + 40) = v25;
  *(v29 + 48) = v32;
  *(v29 + 56) = v21;
  *(v29 + 64) = 1;
  *(v29 + 72) = &async function pointer to partial apply for closure #1 in static Alert.confirmDelete(for:library:);
  *(v29 + 80) = v22;

  specialized static Alert.Action.cancel.getter(v38);
  v30 = v38[1];
  *(v29 + 88) = v38[0];
  *(v29 + 104) = v30;
  *(v29 + 120) = v38[2];
  *(v29 + 136) = v39;

  result = __swift_destroy_boxed_opaque_existential_0Tm(v37);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = v26;
  *(a5 + 24) = v28;
  *(a5 + 32) = 1;
  *(a5 + 33) = v38[0];
  *(a5 + 36) = *(v38 + 3);
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 49) = v37[0];
  *(a5 + 52) = *(v37 + 3);
  *(a5 + 56) = v29;
  *(a5 + 64) = 0;
  return result;
}

uint64_t specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(uint64_t a1)
{
  v115 = a1;
  v94 = type metadata accessor for Track();
  v88 = *(v94 - 8);
  __chkstk_darwin();
  v86 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v87 = &v82 - v2;
  __chkstk_darwin();
  v89 = &v82 - v3;
  v91 = type metadata accessor for Playlist.Entry.InternalItem();
  v90 = *(v91 - 8);
  __chkstk_darwin();
  v92 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for Playlist.Entry();
  v95 = *(v98 - 8);
  __chkstk_darwin();
  v93 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v96 = &v82 - v6;
  v100 = type metadata accessor for TVEpisode();
  v97 = *(v100 - 8);
  __chkstk_darwin();
  v82 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v82 - v8;
  v102 = type metadata accessor for TVSeason();
  v99 = *(v102 - 8);
  __chkstk_darwin();
  v104 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for MusicMovie();
  v103 = *(v106 - 8);
  __chkstk_darwin();
  v85 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v82 - v11;
  v12 = type metadata accessor for Song();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v84 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v109 = &v82 - v15;
  v111 = type metadata accessor for Playlist();
  v108 = *(v111 - 8);
  __chkstk_darwin();
  v110 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MusicVideo();
  v112 = *(v17 - 8);
  __chkstk_darwin();
  v83 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v82 - v19;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v114 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for String.LocalizationValue();
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v82 - v26;
  v28 = type metadata accessor for Album();
  v113 = *(v28 - 8);
  __chkstk_darwin();
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117[3] = v12;
  v117[4] = &protocol witness table for Song;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v117);
  v105 = v13;
  v32 = *(v13 + 16);
  v33 = v115;
  v115 = v12;
  v32(boxed_opaque_existential_1, v33, v12);
  outlined init with copy of ActionPerforming(v117, &v116);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14LibraryAddable_pMd, &_s8MusicKit0A14LibraryAddable_pMR);
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v23 + 16))(v25, v27, v22);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v34 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v23 + 8))(v27, v22);
    v36 = *(v113 + 8);
    v37 = v30;
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v23 + 16))(v25, v27, v22);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v39 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v23 + 8))(v27, v22);
    (*(v112 + 8))(v20, v17);
    goto LABEL_15;
  }

  v41 = v110;
  v40 = v111;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v23 + 16))(v25, v27, v22);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v42 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v23 + 8))(v27, v22);
    v36 = *(v108 + 8);
    v37 = v41;
    v38 = v40;
    goto LABEL_14;
  }

  v28 = v115;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v23 + 16))(v25, v27, v22);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v44 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v23 + 8))(v27, v22);
    v36 = *(v105 + 8);
    v37 = v109;
    goto LABEL_5;
  }

  v28 = v106;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v23 + 16))(v25, v27, v22);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v45 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v23 + 8))(v27, v22);
    v36 = *(v103 + 8);
    v37 = v107;
    goto LABEL_5;
  }

  v28 = v102;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v23 + 16))(v25, v27, v22);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v46 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v23 + 8))(v27, v22);
    v36 = *(v99 + 8);
    v47 = &v119;
LABEL_33:
    v37 = *(v47 - 32);
LABEL_5:
    v38 = v28;
LABEL_14:
    v36(v37, v38);
LABEL_15:
    __swift_destroy_boxed_opaque_existential_0Tm(&v116);
LABEL_16:
    __swift_destroy_boxed_opaque_existential_0Tm(v117);
    return v35;
  }

  v28 = v100;
  v48 = v23;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v23 + 16))(v25, v27, v22);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v49 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v23 + 8))(v27, v22);
    v36 = *(v97 + 8);
    v47 = &v118;
    goto LABEL_33;
  }

  v50 = v96;
  v51 = v98;
  if (!swift_dynamicCast())
  {
    v63 = v89;
    v64 = v94;
    v65 = swift_dynamicCast();
    v66 = v25;
    v67 = v115;
    if (v65)
    {
      v68 = v88;
      v69 = v87;
      (*(v88 + 32))(v87, v63, v64);
      v70 = v86;
      (*(v68 + 16))(v86, v69, v64);
      v71 = (*(v68 + 88))(v70, v64);
      if (v71 == enum case for Track.song(_:))
      {
        (*(v68 + 96))(v70, v64);
        v72 = v105;
        v73 = v84;
        (*(v105 + 32))(v84, v70, v67);
        v74 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v73);
        v75 = v67;
        v35 = v74;
        (*(v72 + 8))(v73, v75);
LABEL_46:
        (*(v68 + 8))(v69, v64);
        goto LABEL_15;
      }

      if (v71 == enum case for Track.musicVideo(_:))
      {
        (*(v68 + 96))(v70, v64);
        v78 = v112;
        v79 = v83;
        (*(v112 + 32))(v83, v70, v17);
        v35 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v79);
        (*(v78 + 8))(v79, v17);
        goto LABEL_46;
      }

      v80 = *(v68 + 8);
      v80(v69, v64);
      v80(v70, v64);
    }

LABEL_55:
    __swift_destroy_boxed_opaque_existential_0Tm(&v116);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v48 + 16))(v66, v27, v22);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v81 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v48 + 8))(v27, v22);
    goto LABEL_16;
  }

  v52 = v95;
  v53 = v93;
  (*(v95 + 32))(v93, v50, v51);
  v54 = v92;
  Playlist.Entry.internalItem.getter();
  v55 = v90;
  v56 = v91;
  v57 = (*(v90 + 88))(v54, v91);
  if (v57 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v55 + 96))(v54, v56);
    v58 = v103;
    v59 = v85;
    v60 = v106;
    (*(v103 + 32))(v85, v54, v106);
    v61 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v59);
LABEL_37:
    v62 = v60;
    v35 = v61;
    (*(v58 + 8))(v59, v62);
LABEL_43:
    (*(v52 + 8))(v53, v98);
    goto LABEL_15;
  }

  if (v57 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v55 + 96))(v54, v56);
    v76 = v112;
    v77 = v83;
    (*(v112 + 32))(v83, v54, v17);
    v35 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v77);
    (*(v76 + 8))(v77, v17);
    goto LABEL_43;
  }

  if (v57 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v55 + 96))(v54, v56);
    v58 = v105;
    v59 = v84;
    v60 = v115;
    (*(v105 + 32))(v84, v54, v115);
    v61 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v59);
    goto LABEL_37;
  }

  if (v57 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v55 + 96))(v54, v56);
    v58 = v97;
    v59 = v82;
    v60 = v100;
    (*(v97 + 32))(v82, v54, v100);
    v61 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v59);
    goto LABEL_37;
  }

  if (v57 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v57 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v52 + 8))(v53, v98);
    (*(v55 + 8))(v54, v56);
    v66 = v25;
    goto LABEL_55;
  }

  (*(v55 + 8))(v54, v56);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v120 = a1;
  v97 = type metadata accessor for Track();
  v93 = *(v97 - 8);
  __chkstk_darwin();
  v91 = &v87 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v87 - v2;
  __chkstk_darwin();
  v94 = &v87 - v3;
  v95 = type metadata accessor for Playlist.Entry.InternalItem();
  v99 = *(v95 - 8);
  __chkstk_darwin();
  v96 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for Playlist.Entry();
  v98 = *(v103 - 8);
  __chkstk_darwin();
  v100 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v87 - v6;
  v106 = type metadata accessor for TVEpisode();
  v102 = *(v106 - 8);
  __chkstk_darwin();
  v87 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v105 = &v87 - v8;
  v107 = type metadata accessor for TVSeason();
  v104 = *(v107 - 8);
  __chkstk_darwin();
  v109 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for MusicMovie();
  v108 = *(v112 - 8);
  __chkstk_darwin();
  v90 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v87 - v11;
  v115 = type metadata accessor for Song();
  v110 = *(v115 - 8);
  __chkstk_darwin();
  v89 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v87 - v13;
  v118 = type metadata accessor for Playlist();
  v113 = *(v118 - 8);
  __chkstk_darwin();
  v117 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MusicVideo();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v88 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v87 - v18;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v119 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v87 - v25;
  v27 = type metadata accessor for Album();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122[3] = v15;
  v122[4] = &protocol witness table for MusicVideo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v122);
  v116 = v16;
  (*(v16 + 16))(boxed_opaque_existential_1, v120, v15);
  outlined init with copy of ActionPerforming(v122, &v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14LibraryAddable_pMd, &_s8MusicKit0A14LibraryAddable_pMR);
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v32 = static NSBundle.module;
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    (*(v28 + 8))(v30, v27);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v34 = static NSBundle.module;
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    (*(v116 + 8))(v19, v15);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v35 = static NSBundle.module;
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    (*(v113 + 8))(v117, v118);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v36 = static NSBundle.module;
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    (*(v110 + 8))(v114, v115);
    goto LABEL_29;
  }

  v37 = v26;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v38 = static NSBundle.module;
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    (*(v108 + 8))(v111, v112);
    goto LABEL_29;
  }

  v39 = v107;
  v40 = v21;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v37, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v41 = static NSBundle.module;
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v37, v21);
    (*(v104 + 8))(v109, v39);
    goto LABEL_29;
  }

  v42 = v105;
  v43 = v106;
  v44 = v22;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v37, v40);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v45 = static NSBundle.module;
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v37, v40);
    (*(v102 + 8))(v42, v43);
    goto LABEL_29;
  }

  v47 = v101;
  v48 = v103;
  if (!swift_dynamicCast())
  {
    v60 = v94;
    v61 = v97;
    v62 = v24;
    if (swift_dynamicCast())
    {
      v63 = v60;
      v64 = v93;
      v65 = v92;
      (*(v93 + 32))(v92, v63, v61);
      v66 = v91;
      (*(v64 + 16))(v91, v65, v61);
      v67 = (*(v64 + 88))(v66, v61);
      if (v67 == enum case for Track.song(_:))
      {
        (*(v64 + 96))(v66, v61);
        v68 = v110;
        v69 = v89;
        v70 = v115;
        (*(v110 + 32))(v89, v66, v115);
        v71 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v69);
        v72 = v70;
        v33 = v71;
        (*(v68 + 8))(v69, v72);
LABEL_42:
        (*(v64 + 8))(v65, v61);
        goto LABEL_29;
      }

      if (v67 == enum case for Track.musicVideo(_:))
      {
        (*(v64 + 96))(v66, v61);
        v76 = v116;
        v77 = v88;
        (*(v116 + 32))(v88, v66, v15);
        v78 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v77);
        (*(v76 + 8))(v77, v15);
        v33 = v78;
        goto LABEL_42;
      }

      v84 = *(v64 + 8);
      v84(v65, v61);
      v84(v66, v61);
    }

LABEL_52:
    __swift_destroy_boxed_opaque_existential_0Tm(&v121);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v44 + 16))(v62, v37, v40);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v86 = static NSBundle.module;
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
    (*(v44 + 8))(v37, v40);
    goto LABEL_30;
  }

  v49 = v98;
  v50 = v100;
  (*(v98 + 32))(v100, v47, v48);
  v51 = v96;
  Playlist.Entry.internalItem.getter();
  v52 = v99;
  v53 = v95;
  v54 = (*(v99 + 88))(v51, v95);
  if (v54 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v52 + 96))(v51, v53);
    v55 = v108;
    v56 = v90;
    v57 = v112;
    (*(v108 + 32))(v90, v51, v112);
    v58 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v56);
LABEL_34:
    v59 = v57;
    v33 = v58;
    (*(v55 + 8))(v56, v59);
    (*(v49 + 8))(v50, v103);
LABEL_29:
    __swift_destroy_boxed_opaque_existential_0Tm(&v121);
LABEL_30:
    __swift_destroy_boxed_opaque_existential_0Tm(v122);
    return v33;
  }

  if (v54 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v99 + 96))(v51, v53);
    v73 = v116;
    v74 = v88;
    (*(v116 + 32))(v88, v51, v15);
    v75 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v74);
    (*(v73 + 8))(v74, v15);
    v33 = v75;
LABEL_45:
    (*(v49 + 8))(v100, v103);
    goto LABEL_29;
  }

  if (v54 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v99 + 96))(v51, v53);
    v79 = v110;
    v80 = v89;
    v81 = v115;
    (*(v110 + 32))(v89, v51, v115);
    v82 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v80);
    v83 = v81;
    v33 = v82;
    (*(v79 + 8))(v80, v83);
    goto LABEL_45;
  }

  v85 = v99;
  v50 = v100;
  if (v54 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v99 + 96))(v51, v53);
    v55 = v102;
    v56 = v87;
    v57 = v106;
    (*(v102 + 32))(v87, v51, v106);
    v58 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v56);
    goto LABEL_34;
  }

  if (v54 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v54 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v49 + 8))(v100, v103);
    (*(v85 + 8))(v51, v53);
    v62 = v24;
    goto LABEL_52;
  }

  (*(v99 + 8))(v51, v53);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v114 = a1;
  v94 = type metadata accessor for Track();
  v89 = *(v94 - 8);
  __chkstk_darwin();
  v87 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v82 - v2;
  __chkstk_darwin();
  v90 = &v82 - v3;
  v92 = type metadata accessor for Playlist.Entry.InternalItem();
  v91 = *(v92 - 8);
  __chkstk_darwin();
  v93 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Playlist.Entry();
  v95 = *(v99 - 8);
  __chkstk_darwin();
  v96 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v82 - v6;
  v101 = type metadata accessor for TVEpisode();
  v98 = *(v101 - 8);
  __chkstk_darwin();
  v83 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v82 - v8;
  v103 = type metadata accessor for TVSeason();
  v100 = *(v103 - 8);
  __chkstk_darwin();
  v104 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicMovie();
  v115 = *(v10 - 8);
  __chkstk_darwin();
  v86 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v106 = &v82 - v12;
  v109 = type metadata accessor for Song();
  v105 = *(v109 - 8);
  __chkstk_darwin();
  v85 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v108 = &v82 - v14;
  v110 = type metadata accessor for Playlist();
  v107 = *(v110 - 8);
  __chkstk_darwin();
  v112 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MusicVideo();
  v111 = *(v16 - 8);
  __chkstk_darwin();
  v84 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v82 - v18;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v113 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v82 - v25;
  v27 = type metadata accessor for Album();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117[3] = v10;
  v117[4] = lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey(&lazy protocol witness table cache variable for type MusicMovie and conformance MusicMovie, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v117);
  v32 = v114;
  v33 = *(v115 + 16);
  v114 = v10;
  v33(boxed_opaque_existential_1, v32, v10);
  outlined init with copy of ActionPerforming(v117, &v116);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14LibraryAddable_pMd, &_s8MusicKit0A14LibraryAddable_pMR);
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v34 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    (*(v28 + 8))(v30, v27);
    goto LABEL_16;
  }

  v36 = v16;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v37 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    v38 = *(v111 + 8);
    v39 = v19;
LABEL_9:
    v40 = v36;
LABEL_15:
    v38(v39, v40);
LABEL_16:
    __swift_destroy_boxed_opaque_existential_0Tm(&v116);
LABEL_17:
    __swift_destroy_boxed_opaque_existential_0Tm(v117);
    return v35;
  }

  v41 = v110;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v42 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    v38 = *(v107 + 8);
    v39 = v112;
    goto LABEL_14;
  }

  v44 = v36;
  v45 = v108;
  v36 = v109;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v46 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    v38 = *(v105 + 8);
    v39 = v45;
    goto LABEL_9;
  }

  v41 = v114;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v47 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    v38 = *(v115 + 8);
    v39 = v106;
    goto LABEL_14;
  }

  v41 = v103;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v48 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    v38 = *(v100 + 8);
    v49 = &v119;
LABEL_34:
    v39 = *(v49 - 32);
LABEL_14:
    v40 = v41;
    goto LABEL_15;
  }

  v41 = v101;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v50 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    v38 = *(v98 + 8);
    v49 = &v118;
    goto LABEL_34;
  }

  v51 = v97;
  v52 = v99;
  if (!swift_dynamicCast())
  {
    v63 = v94;
    v64 = v26;
    if (swift_dynamicCast())
    {
      v115 = v21;
      v65 = v89;
      v66 = v88;
      (*(v89 + 32))();
      v67 = v87;
      (*(v65 + 16))(v87, v66, v63);
      v68 = (*(v65 + 88))(v67, v63);
      if (v68 == enum case for Track.song(_:))
      {
        (*(v65 + 96))(v67, v63);
        v69 = v105;
        v70 = v85;
        (*(v105 + 32))(v85, v67, v36);
        v35 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v70);
        (*(v69 + 8))(v70, v36);
        (*(v65 + 8))(v66, v63);
        goto LABEL_16;
      }

      if (v68 == enum case for Track.musicVideo(_:))
      {
        (*(v65 + 96))(v67, v63);
        v73 = v111;
        v74 = v66;
        v75 = v84;
        (*(v111 + 32))(v84, v67, v44);
        v35 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v75);
        (*(v73 + 8))(v75, v44);
        (*(v65 + 8))(v74, v63);
        goto LABEL_16;
      }

      v80 = *(v65 + 8);
      v80(v66, v63);
      v80(v67, v63);
      v21 = v115;
    }

LABEL_55:
    __swift_destroy_boxed_opaque_existential_0Tm(&v116);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v64, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v81 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v64, v21);
    goto LABEL_17;
  }

  v53 = v52;
  v54 = v95;
  v55 = v96;
  (*(v95 + 32))(v96, v51, v53);
  v56 = v93;
  Playlist.Entry.internalItem.getter();
  v57 = v91;
  v58 = v92;
  v59 = (*(v91 + 88))(v56, v92);
  if (v59 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v114;
    v61 = v115;
    v62 = v86;
    (*(v115 + 32))(v86, v56, v114);
    v35 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v62);
    (*(v61 + 8))(v62, v60);
    (*(v54 + 8))(v55, v99);
    goto LABEL_16;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v57 + 96))(v56, v58);
    v71 = v111;
    v72 = v84;
    (*(v111 + 32))(v84, v56, v44);
    v35 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v72);
    (*(v71 + 8))(v72, v44);
LABEL_51:
    (*(v54 + 8))(v96, v99);
    goto LABEL_16;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v57 + 96))(v56, v58);
    v76 = v105;
    v77 = v85;
    v78 = v109;
    (*(v105 + 32))(v85, v56, v109);
    v79 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v77);
LABEL_50:
    v35 = v79;
    (*(v76 + 8))(v77, v78);
    goto LABEL_51;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v57 + 96))(v56, v58);
    v76 = v98;
    v77 = v83;
    v78 = v101;
    (*(v98 + 32))(v83, v56, v101);
    v79 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v77);
    goto LABEL_50;
  }

  if (v59 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v59 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v54 + 8))(v96, v99);
    (*(v57 + 8))(v56, v58);
    v64 = v26;
    goto LABEL_55;
  }

  (*(v57 + 8))(v56, v58);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v125 = a1;
  v105 = type metadata accessor for Track();
  v100 = *(v105 - 8);
  __chkstk_darwin();
  v98 = &v93 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v93 - v2;
  __chkstk_darwin();
  v101 = &v93 - v3;
  v103 = type metadata accessor for Playlist.Entry.InternalItem();
  v102 = *(v103 - 8);
  __chkstk_darwin();
  v104 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Playlist.Entry();
  v106 = *(v109 - 8);
  __chkstk_darwin();
  v107 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v108 = &v93 - v6;
  v7 = type metadata accessor for TVEpisode();
  v126 = *(v7 - 8);
  __chkstk_darwin();
  v94 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v93 - v9;
  v114 = type metadata accessor for TVSeason();
  v110 = *(v114 - 8);
  __chkstk_darwin();
  v113 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for MusicMovie();
  v112 = *(v117 - 8);
  __chkstk_darwin();
  v97 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v116 = &v93 - v12;
  v119 = type metadata accessor for Song();
  v115 = *(v119 - 8);
  __chkstk_darwin();
  v96 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v120 = &v93 - v14;
  v122 = type metadata accessor for Playlist();
  v118 = *(v122 - 8);
  __chkstk_darwin();
  v121 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MusicVideo();
  v123 = *(v16 - 8);
  __chkstk_darwin();
  v95 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v93 - v18;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v124 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v93 - v25;
  v27 = type metadata accessor for Album();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128[3] = v7;
  v128[4] = lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey(&lazy protocol witness table cache variable for type TVEpisode and conformance TVEpisode, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v128);
  v32 = v125;
  v33 = *(v126 + 16);
  v125 = v7;
  v33(boxed_opaque_existential_1, v32, v7);
  outlined init with copy of ActionPerforming(v128, &v127);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14LibraryAddable_pMd, &_s8MusicKit0A14LibraryAddable_pMR);
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v34 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    (*(v28 + 8))(v30, v27);
    goto LABEL_27;
  }

  v36 = v16;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v37 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    v38 = *(v123 + 8);
    v39 = v19;
LABEL_9:
    v40 = v36;
LABEL_26:
    v38(v39, v40);
LABEL_27:
    __swift_destroy_boxed_opaque_existential_0Tm(&v127);
LABEL_28:
    __swift_destroy_boxed_opaque_existential_0Tm(v128);
    return v35;
  }

  v42 = v121;
  v41 = v122;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v43 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    (*(v118 + 8))(v42, v41);
    goto LABEL_27;
  }

  v44 = v119;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v45 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    (*(v115 + 8))(v120, v44);
    goto LABEL_27;
  }

  v46 = v24;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v47 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    (*(v112 + 8))(v116, v117);
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v48 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    v38 = *(v110 + 8);
    v39 = v113;
    v40 = v114;
    goto LABEL_26;
  }

  v122 = v36;
  v36 = v125;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v50 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    v38 = *(v126 + 8);
    v39 = v111;
    goto LABEL_9;
  }

  v51 = v108;
  v52 = v109;
  if (!swift_dynamicCast())
  {
    v65 = v101;
    v66 = v105;
    v67 = v21;
    v68 = v26;
    if (swift_dynamicCast())
    {
      v69 = v100;
      v70 = v99;
      (*(v100 + 32))(v99, v65, v66);
      v71 = v98;
      (*(v69 + 16))(v98, v70, v66);
      v72 = (*(v69 + 88))(v71, v66);
      if (v72 == enum case for Track.song(_:))
      {
        (*(v69 + 96))(v71, v66);
        v73 = v115;
        v74 = v96;
        (*(v115 + 32))(v96, v71, v44);
        v75 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v74);
        (*(v73 + 8))(v74, v44);
        v35 = v75;
LABEL_43:
        (*(v69 + 8))(v70, v66);
        goto LABEL_27;
      }

      if (v72 == enum case for Track.musicVideo(_:))
      {
        (*(v69 + 96))(v71, v66);
        v81 = v122;
        v82 = v123;
        v83 = v95;
        (*(v123 + 32))(v95, v71, v122);
        v84 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v83);
        v85 = v81;
        v35 = v84;
        (*(v82 + 8))(v83, v85);
        goto LABEL_43;
      }

      v90 = *(v69 + 8);
      v90(v70, v66);
      v90(v71, v66);
    }

LABEL_54:
    __swift_destroy_boxed_opaque_existential_0Tm(&v127);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v46, v68, v67);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v92 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v68, v67);
    goto LABEL_28;
  }

  v53 = v106;
  v54 = v107;
  (*(v106 + 32))(v107, v51, v52);
  v55 = v104;
  Playlist.Entry.internalItem.getter();
  v56 = v102;
  v57 = v103;
  v58 = (*(v102 + 88))(v55, v103);
  if (v58 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v56 + 96))(v55, v57);
    v59 = v112;
    v60 = v97;
    v61 = v117;
    (*(v112 + 32))(v97, v55, v117);
    v62 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v60);
    (*(v59 + 8))(v60, v61);
    v63 = *(v53 + 8);
    v64 = v54;
LABEL_50:
    v91 = v52;
    v35 = v62;
    v63(v64, v91);
    goto LABEL_27;
  }

  if (v58 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v56 + 96))(v55, v57);
    v76 = v122;
    v77 = v123;
    v78 = v95;
    (*(v123 + 32))(v95, v55, v122);
    v79 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v78);
    (*(v77 + 8))(v78, v76);
    v80 = v52;
    v35 = v79;
    (*(v53 + 8))(v107, v80);
    goto LABEL_27;
  }

  if (v58 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v56 + 96))(v55, v57);
    v86 = v115;
    v87 = v96;
    v88 = v119;
    (*(v115 + 32))(v96, v55, v119);
    v89 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v87);
LABEL_49:
    v62 = v89;
    (*(v86 + 8))(v87, v88);
    v63 = *(v53 + 8);
    v64 = v107;
    goto LABEL_50;
  }

  if (v58 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v56 + 96))(v55, v57);
    v88 = v125;
    v86 = v126;
    v87 = v94;
    (*(v126 + 32))(v94, v55, v125);
    v89 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v87);
    goto LABEL_49;
  }

  if (v58 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v58 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v53 + 8))(v107, v52);
    (*(v56 + 8))(v55, v57);
    v67 = v21;
    v68 = v26;
    goto LABEL_54;
  }

  (*(v56 + 8))(v55, v57);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}