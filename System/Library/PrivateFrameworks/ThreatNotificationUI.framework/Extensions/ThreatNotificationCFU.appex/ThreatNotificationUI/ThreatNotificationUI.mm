Swift::Void __swiftcall ThreatNotificationViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ThreatNotificationViewController();
  v19.receiver = v2;
  v19.super_class = v8;
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1);
  static TNCLogger.default.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Extension did appear", v11, 2u);
  }

  (*(v5 + 8))(v7, v4);
  v12 = [v2 view];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 window];

    if (!v14)
    {
LABEL_7:
      type metadata accessor for TNUICoordinator();
      swift_allocObject();
      swift_bridgeObjectRetain_n();
      *&v2[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_coordinator] = TNUICoordinator.init(userInfo:)();

      lazy protocol witness table accessor for type TNCFeatureFlags and conformance TNCFeatureFlags(&lazy protocol witness table cache variable for type ThreatNotificationViewController and conformance ThreatNotificationViewController, v16, type metadata accessor for ThreatNotificationViewController, &protocol conformance descriptor for ThreatNotificationViewController);
      swift_unknownObjectRetain();
      dispatch thunk of TNUICoordinator.delegate.setter();
      dispatch thunk of TNUICoordinator.start()();
      v17 = dispatch thunk of TNUICoordinator.rootViewController.getter();
      [v17 setModalInPresentation:1];

      v18 = dispatch thunk of TNUICoordinator.rootViewController.getter();
      [v2 presentViewController:v18 animated:1 completion:0];

      return;
    }

    v15 = [v14 _rootSheetPresentationController];

    if (v15)
    {
      [v15 _setShouldScaleDownBehindDescendantSheets:0];

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for Date();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v8;
  v5[18] = v9;

  return _swift_task_switch(closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:), v8, v9);
}

uint64_t closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:)()
{
  v1 = v0;
  v2 = *(v0 + 120);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = Task<>.init(priority:timeout:operation:)();
  *(v0 + 152) = v4;
  v5 = swift_task_alloc();
  *(v1 + 160) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v5 = v1;
  v5[1] = closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:);

  return Task.value.getter(v6, v4, &type metadata for () + 8, v6, &protocol self-conformance witness table for Error);
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:);
  }

  else
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:);
  }

  return _swift_task_switch(v5, v3, v4);
}

{

  static TNCLogger.default.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Did synchronize AK follow-ups", v3, 2u);
  }

  v4 = *(v0[9] + 8);
  v4(v0[14], v0[8]);
  v5 = objc_opt_self();
  v6 = [v5 sharedInstance];
  v7 = [v6 isFollowUpItemPending];

  if (!v7)
  {
    type metadata accessor for TNCKVStorage();
    swift_allocObject();
    TNCKVStorage.init()();
    dispatch thunk of TNCKVStorage.clear()();

    static TNCLogger.default.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[13];
    v20 = v0[8];
    if (v18)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Cleared storage", v21, 2u);
    }

    v22 = v19;
    v23 = v20;
LABEL_14:
    v4(v22, v23);
    v15 = v0[3];
    if (!v15)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  type metadata accessor for TNUIAnalytics();
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  (*(v9 + 8))(v8, v10);
  static TNUIAnalytics.registerCFUReceiptIfNeeded(at:)();
  v11 = [v5 sharedInstance];
  v0[2] = 0;
  v12 = [v11 repostFollowUpItemIfNeededWithError:v0 + 2];

  v13 = v0[2];
  if (!v12)
  {
    v24 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static TNCLogger.default.getter();
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Did not re-post the follow-up item with error: %@", v27, 0xCu);
      outlined destroy of TaskPriority?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    else
    {
    }

    v22 = v0[10];
    v23 = v0[8];
    goto LABEL_14;
  }

  v14 = v13;
  v15 = v0[3];
  if (v15)
  {
LABEL_15:
    v15(0);
  }

LABEL_16:

  v30 = v0[1];

  return v30();
}

{

  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 domain];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
LABEL_11:
      v9 = v0 + 11;
      static TNCLogger.default.getter();
      swift_errorRetain();
      v10 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        swift_errorRetain();
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v16;
        *v15 = v16;
        _os_log_impl(&_mh_execute_header, v10, v13, "Synchronization of AK follow-ups failed with error: %@", v14, 0xCu);
        outlined destroy of TaskPriority?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  if ([v1 code] != -7064)
  {
    goto LABEL_11;
  }

  v9 = v0 + 12;
  static TNCLogger.default.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "AK follow-ups synchronization was cancelled", v12, 2u);
LABEL_13:

    goto LABEL_15;
  }

LABEL_14:

LABEL_15:
  v17 = *(v0[9] + 8);
  v17(*v9, v0[8]);
  v18 = objc_opt_self();
  v19 = [v18 sharedInstance];
  v20 = [v19 isFollowUpItemPending];

  if (!v20)
  {
    type metadata accessor for TNCKVStorage();
    swift_allocObject();
    TNCKVStorage.init()();
    dispatch thunk of TNCKVStorage.clear()();

    static TNCLogger.default.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[13];
    v33 = v0[8];
    if (v31)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Cleared storage", v34, 2u);
    }

    v35 = v32;
    v36 = v33;
LABEL_26:
    v17(v35, v36);
    v28 = v0[3];
    if (!v28)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v22 = v0[6];
  v21 = v0[7];
  v23 = v0[5];
  type metadata accessor for TNUIAnalytics();
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  (*(v22 + 8))(v21, v23);
  static TNUIAnalytics.registerCFUReceiptIfNeeded(at:)();
  v24 = [v18 sharedInstance];
  v0[2] = 0;
  v25 = [v24 repostFollowUpItemIfNeededWithError:v0 + 2];

  v26 = v0[2];
  if (!v25)
  {
    v37 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static TNCLogger.default.getter();
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&_mh_execute_header, v38, v39, "Did not re-post the follow-up item with error: %@", v40, 0xCu);
      outlined destroy of TaskPriority?(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    else
    {
    }

    v35 = v0[10];
    v36 = v0[8];
    goto LABEL_26;
  }

  v27 = v26;
  v28 = v0[3];
  if (v28)
  {
LABEL_27:
    v28(0);
  }

LABEL_28:

  v43 = v0[1];

  return v43();
}

uint64_t closure #1 in closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:)()
{

  return _swift_task_switch(closure #1 in closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:), 0, 0);
}

{
  v1 = [objc_allocWithZone(AKFollowUpSynchronizer) init];
  v2 = [objc_opt_self() sharedAuthKitFollowupProvider];
  if (!v2)
  {
    __break(1u);
  }

  [v1 setFollowupProvider:v2];
  swift_unknownObjectRelease();
  *(v0 + 16) = 0;
  v3 = [v1 synchronizeFollowUpsForAccount:0 error:v0 + 16];
  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v7 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id ThreatNotificationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ThreatNotificationViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_userInfo] = 0;
  *&v3[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_coordinator] = 0;
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ThreatNotificationViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id ThreatNotificationViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id ThreatNotificationViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_userInfo] = 0;
  *&v1[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_coordinator] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ThreatNotificationViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id ThreatNotificationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThreatNotificationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void ThreatNotificationViewController.coordinatorDidFinish(_:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TNCLogger.default.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Extension did finish", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  v7 = dispatch thunk of TNUICoordinator.rootViewController.getter();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in ThreatNotificationViewController.coordinatorDidFinish(_:);
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor;
  v9 = _Block_copy(aBlock);

  [v7 dismissViewControllerAnimated:1 completion:v9];
  _Block_release(v9);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

void specialized ThreatNotificationViewController.processFollowUpItem(_:selectedAction:completion:)(void *a1, void (*a2)(void), void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v85 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v84 = &v81 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v81 - v15;
  v17 = __chkstk_darwin(v14);
  v83 = &v81 - v18;
  __chkstk_darwin(v17);
  v20 = &v81 - v19;
  static TNCLogger.default.getter();
  v86 = a1;
  v21 = a1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v87 = v21;

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v82 = v9;
    v25 = v8;
    v26 = v24;
    v27 = v4;
    v28 = v16;
    v29 = a3;
    v30 = a2;
    v31 = swift_slowAlloc();
    *v26 = 138412290;
    v33 = v86;
    v32 = v87;
    *(v26 + 4) = v87;
    *v31 = v33;
    v34 = v32;
    _os_log_impl(&_mh_execute_header, v22, v23, "Processing item %@", v26, 0xCu);
    outlined destroy of TaskPriority?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    a2 = v30;
    a3 = v29;
    v16 = v28;
    v4 = v27;

    v8 = v25;
    v9 = v82;
  }

  v35 = *(v9 + 8);
  v35(v20, v8);
  v36 = type metadata accessor for TNCFeatureFlags();
  v88[3] = v36;
  v88[4] = lazy protocol witness table accessor for type TNCFeatureFlags and conformance TNCFeatureFlags(&lazy protocol witness table cache variable for type TNCFeatureFlags and conformance TNCFeatureFlags, 255, &type metadata accessor for TNCFeatureFlags, &protocol conformance descriptor for TNCFeatureFlags);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v88);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, enum case for TNCFeatureFlags.cfu(_:), v36);
  LOBYTE(v36) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v88);
  if ((v36 & 1) == 0)
  {
    v45 = v84;
    static TNCLogger.default.getter();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Feature is not enabled", v48, 2u);
    }

    v35(v45, v8);
    v49 = [objc_opt_self() sharedInstance];
    v88[0] = 0;
    v50 = [v49 clearFollowUpItemWithError:v88];

    if (v50)
    {
      v51 = v88[0];
    }

    else
    {
      v52 = v88[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static TNCLogger.default.getter();
      swift_errorRetain();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = v35;
        v57 = v8;
        v58 = swift_slowAlloc();
        *v55 = 138412290;
        swift_errorRetain();
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 4) = v59;
        *v58 = v59;
        _os_log_impl(&_mh_execute_header, v53, v54, "CFU wasn't cleared with error: %@", v55, 0xCu);
        outlined destroy of TaskPriority?(v58, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        v56(v85, v57);
      }

      else
      {

        v35(v85, v8);
      }
    }

    if (a2)
    {
      goto LABEL_27;
    }

    goto LABEL_41;
  }

  v85 = v8;
  if (!v86)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v38 = [v87 uniqueIdentifier];
  if (!v38)
  {
    static ThreatNotification.FollowUpItemGeneral.identifier.getter();
    goto LABEL_17;
  }

  v39 = v38;
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43 = static ThreatNotification.FollowUpItemGeneral.identifier.getter();
  if (!v42)
  {
LABEL_17:

LABEL_18:
    v86 = a3;
    v60 = a2;
    static TNCLogger.default.getter();
    v61 = v87;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v87 = v35;
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v88[0] = v65;
      *v64 = 136315138;
      v66 = [v61 uniqueIdentifier];

      if (!v66)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v88);

      *(v64 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v62, v63, "Cannot process item with identifier %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);

      v87(v16, v85);
    }

    else
    {

      v35(v16, v85);
    }

    if (v60)
    {
      a2 = v60;
      goto LABEL_27;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v40 == v43 && v42 == v44)
  {

    goto LABEL_30;
  }

  v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v72 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_30:
  type metadata accessor for TNUIPresentationManager();
  static TNUIPresentationManager.shared.getter();
  v73 = dispatch thunk of TNUIPresentationManager.isPresenting.getter();

  if ((v73 & 1) == 0)
  {
    goto LABEL_35;
  }

  v74 = v83;
  static TNCLogger.default.getter();
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&_mh_execute_header, v75, v76, "Already presenting CFU view", v77, 2u);
  }

  v35(v74, v85);
  if (a2)
  {
LABEL_27:
    v71 = 1;
LABEL_28:
    a2(v71);
    return;
  }

  __break(1u);
LABEL_35:
  static TNUIPresentationManager.shared.getter();
  dispatch thunk of TNUIPresentationManager.startPresenting()();

  v78 = [v87 userInfo];
  if (v78)
  {
    v79 = v78;
    v80 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v80 = 0;
  }

  *(v4 + OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_userInfo) = v80;

  if (a2)
  {
    v71 = 0;
    goto LABEL_28;
  }

LABEL_44:
  __break(1u);
}

uint64_t specialized ThreatNotificationViewController.followUpPerformUpdate(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TNCLogger.default.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Will perform CFU update", v13, 2u);
  }

  (*(v8 + 8))(v10, v7);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  type metadata accessor for MainActor();
  outlined copy of (@escaping @callee_guaranteed (@unowned FLUpdateResult) -> ())?(a1, a2);
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = a1;
  v16[5] = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:), v16);
}

uint64_t sub_1000046E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void partial apply for closure #1 in ThreatNotificationViewController.coordinatorDidFinish(_:)()
{
  type metadata accessor for TNUIPresentationManager();
  static TNUIPresentationManager.shared.getter();
  dispatch thunk of TNUIPresentationManager.stopPresenting()();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong finishProcessing];
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000047C4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000047D4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@unowned FLUpdateResult) -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000487C()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:)()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:);

  return closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:)(v4, v5, v6, v2, v3);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004AC0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_23(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type TNCFeatureFlags and conformance TNCFeatureFlags(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void type metadata accessor for FLUpdateResult()
{
  if (!lazy cache variable for type metadata for FLUpdateResult)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for FLUpdateResult);
    }
  }
}