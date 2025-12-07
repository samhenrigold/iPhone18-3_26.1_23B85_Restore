Swift::Void __swiftcall RemotePeoplePickerViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for RemotePeoplePickerViewController();
  v3 = objc_msgSendSuper2(&v15, sel_viewDidDisappear_, a1);
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v6 = (v5)(v3);
  if (v6)
  {
    v7 = v6;
    [v6 willMoveToParentViewController_];
  }

  v8 = v5();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 view];

    if (!v10)
    {
      __break(1u);
      return;
    }

    [v10 removeFromSuperview];
  }

  v11 = v5();
  if (v11)
  {
    v12 = v11;
    [v11 removeFromParentViewController];
  }

  v13 = v5();
  if (v13)
  {
    v14 = v13;
    [v13 didMoveToParentViewController_];
  }

  (*((*v4 & *v1) + 0x88))(0, 0);
}

Swift::Bool __swiftcall RemotePeoplePickerViewController.shouldAcceptXPCConnection(_:)(NSXPCConnection a1)
{
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_142();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Log.default);
  v3 = a1.super.isa;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Received request to accept connection for %@", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  OUTLINED_FUNCTION_293();
  v10 = (*(v9 + 128))();
  if (v10)
  {
    v12 = v10;
    v13 = v11;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    static OS_dispatch_queue.main.getter();
    objc_allocWithZone(type metadata accessor for PeoplePickerHostConnection());
    v14 = v3;
    v15 = PeoplePickerHostConnection.init(connection:queue:)();
    if (v15)
    {
      v16 = v15;
      OUTLINED_FUNCTION_293();
      v18 = *(v17 + 112);
      v19 = v16;
      v18(v16);
      ObjectType = swift_getObjectType();
      (*(v13 + 16))(v16, ObjectType, v13);
      lazy protocol witness table accessor for type RemotePeoplePickerViewController and conformance RemotePeoplePickerViewController(&lazy protocol witness table cache variable for type RemotePeoplePickerViewController and conformance RemotePeoplePickerViewController, v21, type metadata accessor for RemotePeoplePickerViewController, &protocol conformance descriptor for RemotePeoplePickerViewController);
      swift_unknownObjectRetain();
      PeoplePickerHostConnection.delegate.setter();

      return 1;
    }

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v29))
    {
      v30 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v30);
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v31, v32, "Failed to create PeoplePickerHostConnection");
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }
  }

  else
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v24))
    {
      v25 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v25);
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v26, v27, "Failed to create SharePlay people picker view controller");
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }
  }

  return 0;
}

id RemotePeoplePickerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id RemotePeoplePickerViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___CKRemotePeoplePickerViewController_connection] = 0;
  *&v3[OBJC_IVAR___CKRemotePeoplePickerViewController____lazy_storage___contentViewController] = xmmword_1BC4C9460;
  v5 = &v3[OBJC_IVAR___CKRemotePeoplePickerViewController_state];
  *v5 = 0;
  *(v5 + 1) = MEMORY[0x1E69E7CC8];
  v5[16] = 0;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0](a1);
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for RemotePeoplePickerViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id RemotePeoplePickerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id RemotePeoplePickerViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___CKRemotePeoplePickerViewController_connection] = 0;
  *&v1[OBJC_IVAR___CKRemotePeoplePickerViewController____lazy_storage___contentViewController] = xmmword_1BC4C9460;
  v3 = &v1[OBJC_IVAR___CKRemotePeoplePickerViewController_state];
  *v3 = 0;
  *(v3 + 1) = MEMORY[0x1E69E7CC8];
  v3[16] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for RemotePeoplePickerViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id RemotePeoplePickerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemotePeoplePickerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall RemotePeoplePickerViewController.dismissViewController()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  v16 = &v0[OBJC_IVAR___CKRemotePeoplePickerViewController_state];
  os_unfair_lock_lock(v16);
  LOBYTE(v16[4]._os_unfair_lock_opaque) = 1;
  os_unfair_lock_unlock(v16);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  aBlock[4] = partial apply for closure #2 in RemotePeoplePickerViewController.dismissViewController();
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_60;
  v19 = _Block_copy(aBlock);
  v20 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type RemotePeoplePickerViewController and conformance RemotePeoplePickerViewController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v15, v8, v19);
  _Block_release(v19);

  (*(v4 + 8))(v8, v2);
  (*(v11 + 8))(v15, v9);
}

Swift::Void __swiftcall RemotePeoplePickerViewController._dismissViewController()()
{
  v0 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = (v5 - v4);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v0);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v0);
  if (v7)
  {
    OUTLINED_FUNCTION_293();
    v9 = (*(v8 + 128))();
    if (v9)
    {
      v10 = v9;
      [v9 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Bool __swiftcall RemotePeoplePickerViewController.shareSheetSessionHasRecipients(sessionID:)(Swift::String sessionID)
{
  v1 = *(RemotePeoplePickerViewController.recipientsForShareSheetSession(sessionID:)(sessionID._countAndFlagsBits, sessionID._object) + 16);

  return v1 != 0;
}

uint64_t RemotePeoplePickerViewController.recipientsForShareSheetSession(sessionID:)(uint64_t a1, unint64_t a2)
{
  v5 = v2 + OBJC_IVAR___CKRemotePeoplePickerViewController_state;
  os_unfair_lock_lock((v2 + OBJC_IVAR___CKRemotePeoplePickerViewController_state));
  v6 = *(v5 + 8);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock(v5);
  if (v9)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, &static Log.default);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
      *(v13 + 12) = 2080;
      v15 = MEMORY[0x1BFB20D10](v9, MEMORY[0x1E69E6158]);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, aBlock);

      *(v13 + 14) = v17;
      _os_log_impl(&dword_1BBC58000, v11, v12, "Returning cached participants for shareSheetSessionID %s: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v14, -1, -1);
      MEMORY[0x1BFB23DF0](v13, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, &static Log.default);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
      _os_log_impl(&dword_1BBC58000, v19, v20, "Requesting participants for shareSheetSessionID %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFB23DF0](v22, -1, -1);
      MEMORY[0x1BFB23DF0](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = MEMORY[0x1E69E7CC0];
    v24 = objc_opt_self();
    v25 = MEMORY[0x1BFB209B0](a1, a2);
    aBlock[4] = partial apply for closure #2 in RemotePeoplePickerViewController.recipientsForShareSheetSession(sessionID:);
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [String]?) -> ();
    aBlock[3] = &block_descriptor_19_2;
    v26 = _Block_copy(aBlock);

    [v24 requestRecipientsForSessionID:v25 completionHandler:v26];
    _Block_release(v26);

    os_unfair_lock_lock(v5);
    swift_beginAccess();
    v27 = *(v23 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v5 + 8);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v5 + 8) = v30;
    os_unfair_lock_unlock(v5);
    v9 = *(v23 + 16);
  }

  return v9;
}

Swift::Void __swiftcall RemotePeoplePickerViewController.handleHostConnectionInvalidated()()
{
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_142();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, &static Log.default);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_75(&dword_1BBC58000, v3, v4, "Connection invalidated");
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  RemotePeoplePickerViewController._dismissViewController()();
}

double RemotePeoplePickerViewController.checkIn(_:)(void *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = (v7 - v6);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v2);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v2);
  if (v9)
  {
    if (one-time initialization token for default == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_142();
  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, &static Log.default);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315138;
    type metadata accessor for PeoplePickerConfiguration();
    v16 = v11;
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1BBC58000, v12, v13, "Received checkIn from app configuration %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  v20 = dispatch thunk of PeoplePickerConfiguration.shareSheetSessionID.getter();
  if (v21)
  {
    RemotePeoplePickerViewController.updateViewControllerWithShareSheetRecipients(_:)(v20, v21);
  }

  return result;
}

double RemotePeoplePickerViewController.updateViewControllerWithShareSheetRecipients(_:)(uint64_t a1, unint64_t a2)
{
  v3 = RemotePeoplePickerViewController.recipientsForShareSheetSession(sessionID:)(a1, a2);
  v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x80))();
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    ObjectType = swift_getObjectType();
    (*(v7 + 80))(v3, ObjectType, v7);
  }

  else
  {
  }

  return result;
}

void RemotePeoplePickerViewController.updateActivity(_:)(void *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = (v7 - v6);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v2);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v2);
  if (v9)
  {
    if (one-time initialization token for default == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_142();
  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, &static Log.default);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v43[0] = v15;
    *v14 = 136315138;
    if (a1)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
      v16 = v11;
      v17 = String.init<A>(reflecting:)();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v17 = 7104878;
    }

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v43);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1BBC58000, v12, v13, "Received updated activity %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  if (!a1 || (v21 = [v11 sanitizedCopy]) == 0)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_75(&dword_1BBC58000, v24, v25, "Received empty activity, using placeholder activity");
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    v21 = [objc_opt_self() placeholderActivity];
  }

  OUTLINED_FUNCTION_293();
  v27 = (*(v26 + 104))();
  if (v27)
  {
    v28 = v27;
    if ((XPCHostConnection.isEntitledToUsePrivateAPI.getter() & 1) != 0 && (outlined bridged method (pb) of @objc FBSDisplayLayoutElement.bundleIdentifier.getter(v21), v29))
    {
    }

    else
    {
      v30 = XPCHostConnection.bundleIdentifier.getter();
      outlined bridged method (mbnn) of @objc TUConversationActivity.bundleIdentifier.setter(v30, v31, v21);
    }
  }

  OUTLINED_FUNCTION_293();
  v34 = (*(v32 + 144))(v43);
  v35 = *v33;
  if (*v33)
  {
    v36 = v33;
    v37 = *(v33 + 8);
    ObjectType = swift_getObjectType();
    v39 = *(v37 + 40);
    v40 = v21;
    v41 = v35;
    v39(v21, ObjectType, v37);
    v42 = *v36;
    *v36 = v35;
    *(v36 + 8) = v37;
  }

  v34(v43, 0);
}

void RemotePeoplePickerViewController.requestActivity(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x68))();
  if (v6)
  {
    v7 = v6;
    XPCHostConnection.clientObject.getter();
    v8 = aBlock[6];
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = a1;
    v9[4] = a2;
    aBlock[4] = partial apply for closure #1 in RemotePeoplePickerViewController.requestActivity(completionHandler:);
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed AVCaptureDevice?) -> ();
    aBlock[3] = &block_descriptor_6_1;
    v10 = _Block_copy(aBlock);
    v11 = v3;

    [v8 requestActivity_];

    _Block_release(v10);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      OUTLINED_FUNCTION_0_142();
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, &static Log.default);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_13_55(&dword_1BBC58000, v14, v15, "No connection.  Cannot request activity.", v16, v17, v18, v19, oslog);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }
  }
}

void closure #1 in RemotePeoplePickerViewController.requestActivity(completionHandler:)(void *a1, void *a2, void (*a3)(id))
{
  if (!a1 || (v14 = [a1 sanitizedCopy]) == 0)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, &static Log.default);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BBC58000, v6, v7, "Received empty activity, using placeholder activity", v8, 2u);
      MEMORY[0x1BFB23DF0](v8, -1, -1);
    }

    v14 = [objc_opt_self() placeholderActivity];
  }

  v9 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x68))();
  if (v9)
  {
    v10 = v9;
    if ((XPCHostConnection.isEntitledToUsePrivateAPI.getter() & 1) != 0 && (outlined bridged method (pb) of @objc FBSDisplayLayoutElement.bundleIdentifier.getter(v14), v11))
    {
    }

    else
    {
      v12 = XPCHostConnection.bundleIdentifier.getter();
      outlined bridged method (mbnn) of @objc TUConversationActivity.bundleIdentifier.setter(v12, v13, v14);
    }
  }

  a3(v14);
}

Swift::Void __swiftcall RemotePeoplePickerViewController.dismissViewController(success:)(Swift::Bool success)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))();
  if (v4)
  {
    v5 = v4;
    XPCHostConnection.clientObject.getter();
    [v18 dismissViewControllerWithSuccess_];
    v6 = swift_unknownObjectRelease();
    v7 = (*((*v3 & *v1) + 0x80))(v6);
    if (v7)
    {
      v8 = v7;
      [v7 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      OUTLINED_FUNCTION_0_142();
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, &static Log.default);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_13_55(&dword_1BBC58000, v11, v12, "No connection.  Cannot dismiss.", v13, v14, v15, v16, oslog);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }
  }
}

double closure #2 in RemotePeoplePickerViewController.recipientsForShareSheetSession(sessionID:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Log.default);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136315138;
    if (a1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v9 = String.init<A>(reflecting:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1BBC58000, v5, v6, "Received recipients %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  if (a1)
  {
    swift_beginAccess();
    *(a2 + 16) = a1;
  }

  return result;
}

double thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [String]?) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);

  return result;
}

uint64_t lazy protocol witness table accessor for type RemotePeoplePickerViewController and conformance RemotePeoplePickerViewController(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void outlined bridged method (mbnn) of @objc TUConversationActivity.bundleIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0](a1);

  [a3 setBundleIdentifier_];
}

id LiveCallDurationView.__allocating_init(font:callDurationProvider:voiceOverUpdateHandler:)()
{
  OUTLINED_FUNCTION_17_6();
  v2 = objc_allocWithZone(v0);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v5 = OUTLINED_FUNCTION_6_80(v4);
  v6(v5);
  v7 = OUTLINED_FUNCTION_5_97();
  __swift_destroy_boxed_opaque_existential_1(v1);
  return v7;
}

uint64_t key path getter for LiveCallDurationView.voiceOverUpdateHandler : LiveCallDurationView@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x58))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for LiveCallDurationView.voiceOverUpdateHandler : LiveCallDurationView(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x60);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return v7(v6, v5);
}

uint64_t (*LiveCallDurationView.voiceOverUpdateHandler.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit20LiveCallDurationView_controller);
  a1[2] = v2;
  *a1 = (*(*v2 + 192))();
  a1[1] = v4;
  return LiveCallDurationView.voiceOverUpdateHandler.modify;
}

uint64_t LiveCallDurationView.voiceOverUpdateHandler.modify(uint64_t a1, char a2)
{
  v2 = *(**(a1 + 16) + 200);
  if (a2)
  {
    v3 = OUTLINED_FUNCTION_44_0();
    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
    v5 = OUTLINED_FUNCTION_44_0();
    v2(v5);
    v6 = OUTLINED_FUNCTION_44_0();

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_44_0();
    return (v2)(v9);
  }
}

id LiveCallDurationView.init(font:callDurationProvider:voiceOverUpdateHandler:)()
{
  OUTLINED_FUNCTION_17_6();
  __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v4 = OUTLINED_FUNCTION_6_80(v3);
  v5(v4);
  v6 = OUTLINED_FUNCTION_5_97();
  __swift_destroy_boxed_opaque_existential_1(v0);
  return v6;
}

id LiveCallDurationView.__deallocating_deinit()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_2_7();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v15 = *&v0[OBJC_IVAR____TtC15ConversationKit20LiveCallDurationView_controller];
  type metadata accessor for OS_dispatch_queue();

  v16 = static OS_dispatch_queue.main.getter();
  aBlock[4] = partial apply for closure #1 in LiveCallDurationView.deinit;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_61;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v30 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v14, v7, v17);
  _Block_release(v17);

  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, &static Logger.conversationControls);
  v19 = v0;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30 = v19;
    aBlock[0] = v23;
    *v22 = 136315138;
    type metadata accessor for LiveCallDurationView();
    v24 = v19;
    v25 = String.init<A>(reflecting:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, aBlock);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_1BBC58000, v20, v21, "%s deinit", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v29.receiver = v19;
  v29.super_class = type metadata accessor for LiveCallDurationView();
  return objc_msgSendSuper2(&v29, sel_dealloc);
}

id LiveCallDurationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id LiveCallDurationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t LiveCallDurationView.accessibilityLabel.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC15ConversationKit20LiveCallDurationView_controller) + 16);

  return outlined bridged method (ob) of @objc NSObject.accessibilityLabel.getter(v1);
}

void LiveCallDurationView.accessibilityLabel.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1BFB209B0](a1);
  }

  else
  {
    v3 = 0;
  }

  v4.receiver = v2;
  v4.super_class = type metadata accessor for LiveCallDurationView();
  objc_msgSendSuper2(&v4, sel_setAccessibilityLabel_, v3);
}

id LiveCallDurationView.alpha.getter(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LiveCallDurationView();
  return objc_msgSendSuper2(&v3, sel_alpha);
}

uint64_t LiveCallDurationView.alpha.setter(uint64_t a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for LiveCallDurationView();
  objc_msgSendSuper2(&v6, sel_setAlpha_, a2);
  OUTLINED_FUNCTION_0_143();
  return (*(v4 + 232))();
}

id LiveCallDurationView.isHidden.getter(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LiveCallDurationView();
  return objc_msgSendSuper2(&v3, sel_isHidden);
}

uint64_t LiveCallDurationView.isHidden.setter(uint64_t a1)
{
  v2 = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LiveCallDurationView();
  objc_msgSendSuper2(&v5, sel_setHidden_, v2 & 1);
  OUTLINED_FUNCTION_0_143();
  return (*(v3 + 232))();
}

Swift::Void __swiftcall LiveCallDurationView.didMoveToWindow()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveCallDurationView();
  objc_msgSendSuper2(&v2, sel_didMoveToWindow);
  OUTLINED_FUNCTION_0_143();
  (*(v1 + 232))();
}

Swift::Void __swiftcall LiveCallDurationView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveCallDurationView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *(*&v0[OBJC_IVAR____TtC15ConversationKit20LiveCallDurationView_controller] + 16);
  [v0 bounds];
  [v1 setFrame_];
}

CGSize __swiftcall LiveCallDurationView.sizeThatFits(_:)(CGSize a1)
{
  OUTLINED_FUNCTION_0_143();
  (*(v1 + 224))();
  result.height = v3;
  result.width = v2;
  return result;
}

id specialized LiveCallDurationView.init(font:callDurationProvider:voiceOverUpdateHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v51 = a1;
  OUTLINED_FUNCTION_2_7();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v48 - v19;
  (*(v13 + 32))(&v48 - v19, v18);
  v21 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  if (one-time initialization token for systemApertureDurationTextColor != -1)
  {
    swift_once();
  }

  [v21 setTextColor_];
  [v21 setFont_];
  type metadata accessor for DurationLabelController();
  v22 = swift_allocObject();
  v23 = *(v13 + 16);
  v49 = v20;
  v23(v16, v20, a6);
  v24 = v21;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a3, a4);
  specialized DurationLabelController.init(durationProvider:label:textColor:voiceOverUpdateHandler:prefixAttributedString:)(v16, v24, 0, a3, a4, 0, v22, a6, a7, v47, v48, v49, a3, v51, v52, v53, v54.receiver, v54.super_class, v55, v56, v57);
  *&a5[OBJC_IVAR____TtC15ConversationKit20LiveCallDurationView_controller] = v25;
  v26 = *(*v25 + 248);

  v26(v27);

  v28 = type metadata accessor for LiveCallDurationView();
  v54.receiver = a5;
  v54.super_class = v28;
  v29 = objc_msgSendSuper2(&v54, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v30 = one-time initialization token for conversationControls;
  v31 = v29;
  if (v30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, &static Logger.conversationControls);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v52 = v31;
    v53 = v48;
    *v35 = 136315138;
    v36 = v31;
    v37 = String.init<A>(reflecting:)();
    v39 = v13;
    v40 = a4;
    v41 = a6;
    v42 = v24;
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v53);

    *(v35 + 4) = v43;
    v24 = v42;
    a6 = v41;
    a4 = v40;
    v13 = v39;
    _os_log_impl(&dword_1BBC58000, v33, v34, "%s created", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v45 = v49;
  v44 = v50;
  [v31 addSubview_];

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v44, a4);
  (*(v13 + 8))(v45, a6);
  return v31;
}

uint64_t static SharePlayDiscoverabilityMenuView.makeMoreMenuSharePlayDiscoverabilityView(foregroundApp:callSupportsCollaborations:willTapApp:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = a2;
  v9 = static HorizontalAlignment.center.getter();
  v17 = 1;
  closure #1 in static SharePlayDiscoverabilityMenuView.makeMoreMenuSharePlayDiscoverabilityView(foregroundApp:callSupportsCollaborations:willTapApp:)(a1, a3, a4, v7, &v13);
  v18 = v13;
  v19 = *v14;
  v20 = *&v14[16];
  v21 = *&v14[32];
  v22[0] = v13;
  v22[1] = *v14;
  v22[2] = *&v14[16];
  v22[3] = *&v14[32];
  outlined init with copy of Participant?(&v18, v15, &_s7SwiftUI9TupleViewVy15ConversationKit028SharePlayDiscoverabilityMenuD0V_AFSgtGMd, &_s7SwiftUI9TupleViewVy15ConversationKit028SharePlayDiscoverabilityMenuD0V_AFSgtGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s7SwiftUI9TupleViewVy15ConversationKit028SharePlayDiscoverabilityMenuD0V_AFSgtGMd, &_s7SwiftUI9TupleViewVy15ConversationKit028SharePlayDiscoverabilityMenuD0V_AFSgtGMR);
  *&__src[7] = v18;
  *&__src[23] = v19;
  *&__src[39] = v20;
  *&__src[55] = v21;
  v13 = v9;
  v14[0] = v17;
  memcpy(&v14[1], __src, 0x47uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVy15ConversationKit028SharePlayDiscoverabilityMenuE0V_AHSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVy15ConversationKit028SharePlayDiscoverabilityMenuE0V_AHSgtGGMR);
  OUTLINED_FUNCTION_2_16();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v10, &_s7SwiftUI6VStackVyAA9TupleViewVy15ConversationKit028SharePlayDiscoverabilityMenuE0V_AHSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVy15ConversationKit028SharePlayDiscoverabilityMenuE0V_AHSgtGGMR, v11);
  return AnyView.init<A>(_:)();
}

_BYTE *SharePlayDiscoverabilityMenuView.init(type:presentationStyle:foregroundApp:willTapApp:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  *a6 = *result;
  *(a6 + 1) = v6;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
  return result;
}

uint64_t SharePlayDiscoverabilityMenuView.sortedSharePlayApps.getter()
{
  LOBYTE(v1) = *v0;
  v2 = *(v0 + 8);
  if (one-time initialization token for shared != -1)
  {
LABEL_20:
    swift_once();
  }

  v20 = v1;
  v1 = (*((*MEMORY[0x1E69E7D40] & *static SharePlayDiscoverabilityAppsController.shared) + 0x90))(&v20);
  v3 = 0;
  v4 = *(v1 + 16);
  v5 = v1 + 64;
  v19 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v6 = (v5 + 40 * v3);
  while (v4 != v3)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v7 = *(v6 - 4);
    v8 = *(v6 - 3);
    v10 = *(v6 - 2);
    v9 = *(v6 - 1);
    v11 = *v6;
    if (!v2 || (v7 == *(v2 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier) ? (v12 = v8 == *(v2 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier + 8)) : (v12 = 0), !v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
    {

      v18 = v11;
      v13 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v13 = v19;
      }

      v5 = v1 + 64;
      v14 = *(v13 + 16);
      v15 = v14 + 1;
      if (v14 >= *(v13 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v15 = v14 + 1;
        v13 = v19;
        v5 = v1 + 64;
      }

      ++v3;
      *(v13 + 16) = v15;
      v19 = v13;
      v16 = (v13 + 40 * v14);
      v16[4] = v7;
      v16[5] = v8;
      v16[6] = v10;
      v16[7] = v9;
      v16[8] = v18;
      goto LABEL_3;
    }

    v6 += 5;
    ++v3;
  }

  return v19;
}

double SharePlayDiscoverabilityMenuView.title.getter@<D0>(uint64_t a1@<X8>)
{
  if (v1[1])
  {
    v3 = *v1;
    v4 = [objc_opt_self() conversationKit];
    v17 = 0xE000000000000000;
    if (v3)
    {
      v5 = 0xD00000000000001CLL;
      v6 = 0x80000001BC50B570;
    }

    else
    {
      v5 = 0xD000000000000018;
      v6 = 0x80000001BC50B590;
    }

    v7.value._countAndFlagsBits = 0x61737265766E6F43;
    v7.value._object = 0xEF74694B6E6F6974;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v9 = 0;
    v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, v7, v4, v8, *(&v17 - 1));

    v18 = v10;
    lazy protocol witness table accessor for type String and conformance String();
    Text.init<A>(_:)();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v11 = [objc_opt_self() conversationKit];
    v22._object = 0xE000000000000000;
    v12._object = 0x80000001BC50B5B0;
    v12._countAndFlagsBits = 0xD000000000000012;
    v13.value._countAndFlagsBits = 0x61737265766E6F43;
    v13.value._object = 0xEF74694B6E6F6974;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0;
    v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v22);

    v18 = v15;
    lazy protocol witness table accessor for type String and conformance String();
    Text.init<A>(_:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMR);
  lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  result = *&v18._countAndFlagsBits;
  *a1 = v18;
  *(a1 + 16) = v19;
  *(a1 + 32) = v20;
  *(a1 + 33) = v21;
  return result;
}

uint64_t closure #1 in SharePlayDiscoverabilityMenuView.moreButton.getter(char a1)
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  URL.init(string:)();
  outlined init with copy of Participant?(v10, v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (__swift_getEnumTagSinglePayload(v7, 1, v1) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v10 = v7;
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    URL._bridgeToObjectiveC()(v11);
    v13 = v12;
    TUOpenSensitiveURL();

    v14 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for secondaryPillTriggeredPreferringHUDDismissal != -1)
    {
      swift_once();
    }

    [v14 postNotificationName:static Strings.Notifications.secondaryPillTriggeredPreferringHUDDismissal object:0];

    (*(v2 + 8))(v4, v1);
  }

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

void closure #2 in SharePlayDiscoverabilityMenuView.moreButton.getter(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() conversationKit];
  v24._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._countAndFlagsBits = 1701998413;
  v4._object = 0xE400000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v24);

  lazy protocol witness table accessor for type String and conformance String();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  v11 = [objc_opt_self() secondaryLabelColor];
  Color.init(uiColor:)();
  v12 = Text.foregroundStyle<A>(_:)();
  v14 = v13;
  v16 = v15;
  outlined consume of Text.Storage(v6, v8, v10 & 1);

  static Font.body.getter();
  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  outlined consume of Text.Storage(v12, v14, v16 & 1);

  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v23;
}

uint64_t SharePlayDiscoverabilityMenuView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 1);
  v7 = *(v2 + 2);
  v8 = *(v2 + 3);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAA0D0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyAMyAA012_ConditionalK0VyAA4TextVAWyA2YGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingS0VySiSgGG_AA6SpacerVAoAE06buttonR0yQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA6ButtonVyAYG_AA011PlainButtonR0VQo_SgtGG_AoAE16scrollIndicators_4axesQrAA25ScrollIndicatorVisibilityV_AA4AxisO3SetVtFQOyAA06ScrollD0VyAKyAA7ForEachVySay15ConversationKit11ApplicationVGA39_A37_16SharePlayAppCellVGGG_Qo_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAA0D0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyAMyAA012_ConditionalK0VyAA4TextVAWyA2YGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingS0VySiSgGG_AA6SpacerVAoAE06buttonR0yQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA6ButtonVyAYG_AA011PlainButtonR0VQo_SgtGG_AoAE16scrollIndicators_4axesQrAA25ScrollIndicatorVisibilityV_AA4AxisO3SetVtFQOyAA06ScrollD0VyAKyAA7ForEachVySay15ConversationKit11ApplicationVGA39_A37_16SharePlayAppCellVGGG_Qo_tGGMR);
  if (v5)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return closure #1 in SharePlayDiscoverabilityMenuView.body.getter(v10 | v4, v6, v7, v8, a1 + *(v9 + 44));
}

uint64_t closure #1 in SharePlayDiscoverabilityMenuView.body.getter@<X0>(__int16 a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a5;
  v9 = type metadata accessor for ScrollIndicatorVisibility();
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA6HStackVyAA7ForEachVySay15ConversationKit11ApplicationVGAjH16SharePlayAppCellVGGGMd, &_s7SwiftUI10ScrollViewVyAA6HStackVyAA7ForEachVySay15ConversationKit11ApplicationVGAjH16SharePlayAppCellVGGGMR);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16scrollIndicators_4axesQrAA25ScrollIndicatorVisibilityV_AA4AxisO3SetVtFQOyAA0gC0VyAA6HStackVyAA7ForEachVySay15ConversationKit11ApplicationVGAtR16SharePlayAppCellVGGG_Qo_Md, &_s7SwiftUI4ViewPAAE16scrollIndicators_4axesQrAA25ScrollIndicatorVisibilityV_AA4AxisO3SetVtFQOyAA0gC0VyAA6HStackVyAA7ForEachVySay15ConversationKit11ApplicationVGAtR16SharePlayAppCellVGGG_Qo_MR);
  v41 = *(v14 - 8);
  v42 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v40 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA012_ConditionalG0VyAA4TextVAQyA2SGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingO0VySiSgGG_AA6SpacerVAiAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0W0VyASG_AA05PlainwN0VQo_SgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA012_ConditionalG0VyAA4TextVAQyA2SGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingO0VySiSgGG_AA6SpacerVAiAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0W0VyASG_AA05PlainwN0VQo_SgtGGMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v40 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  *v22 = static VerticalAlignment.center.getter();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE10fontWeightyQrAA4FontV0L0VSgFQOyAKyAA012_ConditionalJ0VyAA4TextVAUyA2WGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingR0VySiSgGG_AA6SpacerVAmAE06buttonQ0yQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0Z0VyAWG_AA05PlainzQ0VQo_SgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE10fontWeightyQrAA4FontV0L0VSgFQOyAKyAA012_ConditionalJ0VyAA4TextVAUyA2WGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingR0VySiSgGG_AA6SpacerVAmAE06buttonQ0yQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0Z0VyAWG_AA05PlainzQ0VQo_SgtGGMR);
  closure #1 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter(a1 & 0x101, a2, a3, a4, &v22[*(v23 + 44)]);
  static Axis.Set.horizontal.getter();
  v50 = a1 & 0x101;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA7ForEachVySay15ConversationKit11ApplicationVGAhF16SharePlayAppCellVGGMd, &_s7SwiftUI6HStackVyAA7ForEachVySay15ConversationKit11ApplicationVGAhF16SharePlayAppCellVGGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HStack<ForEach<[Application], Application, SharePlayAppCell>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA7ForEachVySay15ConversationKit11ApplicationVGAhF16SharePlayAppCellVGGMd, &_s7SwiftUI6HStackVyAA7ForEachVySay15ConversationKit11ApplicationVGAhF16SharePlayAppCellVGGMR, MEMORY[0x1E69817F8]);
  v24 = ScrollView.init(_:showsIndicators:content:)();
  MEMORY[0x1BFB1F130](v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4AxisO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4AxisO3SetVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  LOBYTE(a2) = static Axis.Set.vertical.getter();
  *(inited + 32) = a2;
  v26 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v26;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != a2)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v26)
  {
    Axis.Set.init(rawValue:)();
  }

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ScrollView<HStack<ForEach<[Application], Application, SharePlayAppCell>>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA6HStackVyAA7ForEachVySay15ConversationKit11ApplicationVGAjH16SharePlayAppCellVGGGMd, &_s7SwiftUI10ScrollViewVyAA6HStackVyAA7ForEachVySay15ConversationKit11ApplicationVGAjH16SharePlayAppCellVGGGMR, MEMORY[0x1E697BE60]);
  v27 = v44;
  v28 = v45;
  View.scrollIndicators(_:axes:)();
  (*(v47 + 8))(v11, v48);
  (*(v43 + 8))(v13, v28);
  v29 = v22;
  v30 = v22;
  v31 = v40;
  outlined init with copy of Participant?(v30, v40, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA012_ConditionalG0VyAA4TextVAQyA2SGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingO0VySiSgGG_AA6SpacerVAiAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0W0VyASG_AA05PlainwN0VQo_SgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA012_ConditionalG0VyAA4TextVAQyA2SGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingO0VySiSgGG_AA6SpacerVAiAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0W0VyASG_AA05PlainwN0VQo_SgtGGMR);
  v33 = v41;
  v32 = v42;
  v34 = *(v41 + 16);
  v35 = v46;
  v34(v46, v27, v42);
  v36 = v49;
  outlined init with copy of Participant?(v31, v49, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA012_ConditionalG0VyAA4TextVAQyA2SGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingO0VySiSgGG_AA6SpacerVAiAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0W0VyASG_AA05PlainwN0VQo_SgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA012_ConditionalG0VyAA4TextVAQyA2SGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingO0VySiSgGG_AA6SpacerVAiAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0W0VyASG_AA05PlainwN0VQo_SgtGGMR);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA012_ConditionalG0VyAA4TextVAQyA2SGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingO0VySiSgGG_AA6SpacerVAiAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0W0VyASG_AA05PlainwN0VQo_SgtGG_AiAE16scrollIndicators_4axesQrAA25ScrollIndicatorVisibilityV_AA4AxisO3SetVtFQOyAA06ScrollE0VyACyAA7ForEachVySay15ConversationKit11ApplicationVGA33_A31_16SharePlayAppCellVGGG_Qo_tMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA012_ConditionalG0VyAA4TextVAQyA2SGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingO0VySiSgGG_AA6SpacerVAiAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0W0VyASG_AA05PlainwN0VQo_SgtGG_AiAE16scrollIndicators_4axesQrAA25ScrollIndicatorVisibilityV_AA4AxisO3SetVtFQOyAA06ScrollE0VyACyAA7ForEachVySay15ConversationKit11ApplicationVGA33_A31_16SharePlayAppCellVGGG_Qo_tMR);
  v34((v36 + *(v37 + 48)), v35, v32);
  v38 = *(v33 + 8);
  v38(v27, v32);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA012_ConditionalG0VyAA4TextVAQyA2SGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingO0VySiSgGG_AA6SpacerVAiAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0W0VyASG_AA05PlainwN0VQo_SgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA012_ConditionalG0VyAA4TextVAQyA2SGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingO0VySiSgGG_AA6SpacerVAiAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0W0VyASG_AA05PlainwN0VQo_SgtGGMR);
  v38(v35, v32);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA012_ConditionalG0VyAA4TextVAQyA2SGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingO0VySiSgGG_AA6SpacerVAiAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0W0VyASG_AA05PlainwN0VQo_SgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA012_ConditionalG0VyAA4TextVAQyA2SGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingO0VySiSgGG_AA6SpacerVAiAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0W0VyASG_AA05PlainwN0VQo_SgtGGMR);
}

uint64_t closure #1 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter@<X0>(unsigned int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a5;
  v77 = a1;
  v50 = a1;
  v66 = a1 >> 8;
  v51 = a2;
  v78 = a2;
  v79 = a3;
  v53 = a3;
  v54 = a4;
  v80 = a4;
  v5 = type metadata accessor for PlainButtonStyle();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v49[-v7];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_AA05PlaingE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_AA05PlaingE0VQo_MR);
  v55 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v52 = &v49[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_AA05PlaingE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_AA05PlaingE0VQo_SgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v68 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v49[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA012_ConditionalD0VyAA4TextVAMyA2OGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingM0VySiSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA012_ConditionalD0VyAA4TextVAMyA2OGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingM0VySiSgGGMR);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v49[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49[-v17];
  SharePlayDiscoverabilityMenuView.title.getter(&v70);
  v20 = v70;
  v19 = v71;
  v62 = v71;
  v22 = v72;
  v21 = v73;
  v23 = v75;
  v63 = v75;
  v24 = v74;
  v25 = [objc_opt_self() labelColor];
  v26 = Color.init(uiColor:)();
  v70 = v20;
  v71 = v19;
  v72 = v22;
  v73 = v21;
  v74 = v24;
  v75 = v23;
  v76 = v26;
  static Font.Weight.semibold.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4TextVAEyA2GGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4TextVAEyA2GGGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<Text, _ConditionalContent<Text, Text>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();
  v27 = v24;
  v28 = v64;
  outlined consume of _ConditionalContent<Text, _ConditionalContent<Text, Text>>.Storage(v20, v62, v22, v21, v27, v63);
  v29 = v65;

  KeyPath = swift_getKeyPath();
  v31 = &v18[*(v14 + 44)];
  *v31 = KeyPath;
  *(v31 + 1) = 2;
  v31[16] = 0;
  v32 = 1;
  if ((v66 & 1) == 0)
  {
    v33 = swift_allocObject();
    *(v33 + 16) = v50 & 1;
    *(v33 + 17) = 0;
    v34 = v51;
    v35 = v53;
    *(v33 + 24) = v51;
    *(v33 + 32) = v35;
    v36 = v54;
    *(v33 + 40) = v54;
    v37 = v34;
    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v35, v36);
    v38 = v56;
    Button.init(action:label:)();
    v39 = v59;
    PlainButtonStyle.init()();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x1E697D680]);
    lazy protocol witness table accessor for type SharePlayAppCell and conformance SharePlayAppCell(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    v40 = v52;
    v41 = v58;
    v42 = v61;
    View.buttonStyle<A>(_:)();
    (*(v60 + 8))(v39, v42);
    (*(v57 + 8))(v38, v41);
    (*(v55 + 32))(v28, v40, v29);
    v32 = 0;
  }

  __swift_storeEnumTagSinglePayload(v28, v32, 1, v29);
  v43 = v67;
  outlined init with copy of Participant?(v18, v67, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA012_ConditionalD0VyAA4TextVAMyA2OGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingM0VySiSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA012_ConditionalD0VyAA4TextVAMyA2OGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingM0VySiSgGGMR);
  v44 = v68;
  outlined init with copy of Participant?(v28, v68, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_AA05PlaingE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_AA05PlaingE0VQo_SgMR);
  v45 = v69;
  outlined init with copy of Participant?(v43, v69, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA012_ConditionalD0VyAA4TextVAMyA2OGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingM0VySiSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA012_ConditionalD0VyAA4TextVAMyA2OGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingM0VySiSgGGMR);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA012_ConditionalD0VyAA4TextVAMyA2OGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingM0VySiSgGG_AA6SpacerVAeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0U0VyAOG_AA05PlainuL0VQo_SgtMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA012_ConditionalD0VyAA4TextVAMyA2OGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingM0VySiSgGG_AA6SpacerVAeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0U0VyAOG_AA05PlainuL0VQo_SgtMR);
  v47 = v45 + *(v46 + 48);
  *v47 = 0;
  *(v47 + 8) = 1;
  outlined init with copy of Participant?(v44, v45 + *(v46 + 64), &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_AA05PlaingE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_AA05PlaingE0VQo_SgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_AA05PlaingE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_AA05PlaingE0VQo_SgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA012_ConditionalD0VyAA4TextVAMyA2OGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingM0VySiSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA012_ConditionalD0VyAA4TextVAMyA2OGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingM0VySiSgGGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_AA05PlaingE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_AA05PlaingE0VQo_SgMR);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA012_ConditionalD0VyAA4TextVAMyA2OGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingM0VySiSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA012_ConditionalD0VyAA4TextVAMyA2OGGAA24_ForegroundStyleModifierVyAA5ColorVGG_Qo_AA022_EnvironmentKeyWritingM0VySiSgGGMR);
}

uint64_t closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1;
  *a5 = static VerticalAlignment.center.getter();
  *(a5 + 8) = 0x4030000000000000;
  *(a5 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySay15ConversationKit11ApplicationVGAlJ16SharePlayAppCellVGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySay15ConversationKit11ApplicationVGAlJ16SharePlayAppCellVGGMR);
  return closure #1 in closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter(v8 & 0x101, a2, a3, a4);
}

uint64_t closure #1 in closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter(__int16 a1, void *a2, uint64_t a3, uint64_t a4)
{
  SharePlayDiscoverabilityMenuView.sortedSharePlayApps.getter();
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1 & 1;
  *(v8 + 17) = HIBYTE(a1) & 1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  v9 = a2;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit11ApplicationVGMd, &_sSay15ConversationKit11ApplicationVGMR);
  type metadata accessor for SharePlayAppCell(0);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [Application] and conformance [A], &_sSay15ConversationKit11ApplicationVGMd, &_sSay15ConversationKit11ApplicationVGMR, MEMORY[0x1E69E6338]);
  lazy protocol witness table accessor for type Application and conformance Application();
  lazy protocol witness table accessor for type SharePlayAppCell and conformance SharePlayAppCell(&lazy protocol witness table cache variable for type SharePlayAppCell and conformance SharePlayAppCell, type metadata accessor for SharePlayAppCell, &protocol conformance descriptor for SharePlayAppCell);
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter@<X0>(uint64_t *a1@<X0>, __int16 a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  v15 = a1[4];
  v16 = swift_allocObject();
  *(v16 + 16) = a2 & 1;
  *(v16 + 17) = HIBYTE(a2) & 1;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *a6 = v12;
  a6[1] = v11;
  a6[2] = v14;
  a6[3] = v13;
  a6[4] = v15;
  a6[5] = partial apply for closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter;
  a6[6] = v16;
  v17 = *(type metadata accessor for SharePlayAppCell(0) + 24);
  *(a6 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  swift_storeEnumTagMultiPayload();
  v18 = a3;

  v19 = v15;

  return outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a4, a5);
}

void closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (a4)
  {
    a4();
  }

  SharePlayDiscoverabilityMenuView.didTapApp(_:)(a1);
}

void SharePlayDiscoverabilityMenuView.didTapApp(_:)(uint64_t *a1)
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v4 = *a1;
  v3 = a1[1];
  v27 = *(a1 + 1);
  v5 = a1[4];

  outlined init with copy of String(&v27, v26);
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  outlined destroy of String(&v27);

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    v26[0] = v4;
    *v9 = 136315138;
    v26[1] = v3;

    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v25);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1BBC58000, v7, v8, "User did tap discoverability app with bundleIdentifier: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFB23DF0](v10, -1, -1);
    MEMORY[0x1BFB23DF0](v9, -1, -1);
  }

  type metadata accessor for FBSOpenApplicationOptions();
  v14 = TUUnlockDeviceWithPromptFrontBoardOptionsDictionary();
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v15);
  v17 = v16;

  v18 = @nonobjc FBSOpenApplicationOptions.__allocating_init(dictionary:)(v17);
  v19 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  if (v19)
  {
    v20 = v19;
    v21 = MEMORY[0x1BFB209B0](v4, v3);
    [v20 openApplication:v21 withOptions:v18 completion:0];
  }

  else
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1BBC58000, v22, v23, "Unable to launch discoverability app because FBSOpenApplicationService was null", v24, 2u);
      MEMORY[0x1BFB23DF0](v24, -1, -1);
    }

    v21 = v18;
  }
}

uint64_t closure #1 in static SharePlayDiscoverabilityMenuView.makeMoreMenuSharePlayDiscoverabilityView(foregroundApp:callSupportsCollaborations:willTapApp:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (a4)
  {
    v9 = a1;
    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a2, a3);
    v10 = 257;
    v11 = a1;
    v12 = a2;
    v13 = a3;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 1;
  }

  *a5 = 256;
  *(a5 + 8) = a1;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = v10;
  *(a5 + 40) = v11;
  *(a5 + 48) = v12;
  *(a5 + 56) = v13;
  v14 = a1;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a2, a3);
  v15 = v14;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a2, a3);
  outlined copy of SharePlayDiscoverabilityMenuView?(v10, v11, v12, v13);
  outlined consume of SharePlayDiscoverabilityMenuView?(v10, v11, v12, v13);

  return outlined consume of (@escaping @callee_guaranteed () -> ())?(a2, a3);
}

uint64_t getEnumTagSinglePayload for SharePlayDiscoverabilityMenuView(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t storeEnumTagSinglePayload for SharePlayDiscoverabilityMenuView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter(v2 | *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), a1);
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (*(v2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return closure #1 in closure #1 in closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter(a1, v3 | *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), a2);
}

unint64_t lazy protocol witness table accessor for type Application and conformance Application()
{
  result = lazy protocol witness table cache variable for type Application and conformance Application;
  if (!lazy protocol witness table cache variable for type Application and conformance Application)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Application and conformance Application);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Application and conformance Application;
  if (!lazy protocol witness table cache variable for type Application and conformance Application)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Application and conformance Application);
  }

  return result;
}

void partial apply for closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter(uint64_t *a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in SharePlayDiscoverabilityMenuView.body.getter(a1, v2 | *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

unint64_t type metadata accessor for FBSOpenApplicationOptions()
{
  result = lazy cache variable for type metadata for FBSOpenApplicationOptions;
  if (!lazy cache variable for type metadata for FBSOpenApplicationOptions)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FBSOpenApplicationOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<Text, _ConditionalContent<Text, Text>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<Text, _ConditionalContent<Text, Text>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<Text, _ConditionalContent<Text, Text>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4TextVAEyA2GGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4TextVAEyA2GGGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<Text, _ConditionalContent<Text, Text>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<Text, _ConditionalContent<Text, Text>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Text, _ConditionalContent<Text, Text>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Text, _ConditionalContent<Text, Text>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Text, _ConditionalContent<Text, Text>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVACyA2EGGMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVACyA2EGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Text, _ConditionalContent<Text, Text>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

double outlined consume of _ConditionalContent<Text, _ConditionalContent<Text, Text>>.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {

    return outlined consume of _ConditionalContent<Text, Text>.Storage(a1, a2, a3);
  }

  else
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }

  return result;
}

double outlined consume of _ConditionalContent<Text, Text>.Storage(uint64_t a1, uint64_t a2, char a3)
{
  outlined consume of Text.Storage(a1, a2, a3 & 1);

  return result;
}

uint64_t lazy protocol witness table accessor for type SharePlayAppCell and conformance SharePlayAppCell(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void outlined copy of SharePlayDiscoverabilityMenuView?(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    v7 = a2;

    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a3, a4);
  }
}

void outlined consume of SharePlayDiscoverabilityMenuView?(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {

    outlined consume of (@escaping @callee_guaranteed () -> ())?(a3, a4);
  }
}

uint64_t InCallCallControlsService.__allocating_init(activeCall:localVideoSupported:letMeInState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  InCallCallControlsService.init(activeCall:localVideoSupported:letMeInState:)(a1, a2, 0, a4);
  return v7;
}

uint64_t key path getter for InCallCallControlsService.controlsManager : InCallCallControlsService@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void InCallCallControlsService.controlsManager.setter(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 16, a2);
  swift_unknownObjectWeakAssign();
}

void (*InCallCallControlsService.controlsManager.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_30_2(v1 + 16, v3);
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return InCallCallControlsService.controlsManager.modify;
}

void InCallCallControlsService.controlsManager.modify()
{
  OUTLINED_FUNCTION_18_45();
  swift_unknownObjectWeakAssign();
  if (v2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v0);
}

uint64_t key path getter for InCallCallControlsService.videoTileConversationController : InCallCallControlsService@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void InCallCallControlsService.videoTileConversationController.setter(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 24, a2);
  swift_unknownObjectWeakAssign();
}

void (*InCallCallControlsService.videoTileConversationController.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_30_2(v1 + 24, v3);
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return InCallCallControlsService.videoTileConversationController.modify;
}

void InCallCallControlsService.videoTileConversationController.modify()
{
  OUTLINED_FUNCTION_18_45();
  swift_unknownObjectWeakAssign();
  if (v2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v0);
}

uint64_t InCallCallControlsService.init(activeCall:localVideoSupported:letMeInState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v5 + 32) = 0;
  v14 = OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService__hasPendingParticipant;
  LOBYTE(v27) = 0;
  Published.init(initialValue:)();
  (*(v10 + 32))(v5 + v14, v13, v8);
  v15 = (v5 + OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService_toggleLiveCaptions);
  *v15 = TPNumberPadCharacter.rawValue.getter;
  v15[1] = 0;
  v16 = (v5 + OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService_presentContactCard);
  *v16 = TPNumberPadCharacter.rawValue.getter;
  v16[1] = 0;
  v17 = (v5 + OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService_presentAddParticipantSheet);
  *v17 = TPNumberPadCharacter.rawValue.getter;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService_conversationStateSubject;
  v27 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo19TUConversationStateVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySo19TUConversationStateVs5NeverOGMR);
  OUTLINED_FUNCTION_84(v19);
  *(v5 + v18) = OUTLINED_FUNCTION_22_38();
  ObjectType = swift_getObjectType();
  LODWORD(v27) = (*(a2 + 208))(ObjectType, a2);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo12TUCallStatusVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySo12TUCallStatusVs5NeverOGMR);
  OUTLINED_FUNCTION_84(v21);
  *(v5 + OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService_callStatusSubject) = OUTLINED_FUNCTION_22_38();
  LOBYTE(v27) = -2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit18InCallControlsModeOSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit18InCallControlsModeOSgs5NeverOGMR);
  OUTLINED_FUNCTION_84(v22);
  *(v5 + OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService_modeSubject) = OUTLINED_FUNCTION_22_38();
  v27 = a4;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo33TUConversationLetMeInRequestStateVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySo33TUConversationLetMeInRequestStateVs5NeverOGMR);
  OUTLINED_FUNCTION_84(v23);
  v24 = OUTLINED_FUNCTION_22_38();
  swift_unknownObjectRelease();
  *(v5 + OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService_letMeInStateSubject) = v24;
  return v5;
}

uint64_t InCallCallControlsService.conversation.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_5(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x2C0))();

  return v5;
}

uint64_t InCallCallControlsService.currentMode.getter()
{
  CurrentValueSubject.value.getter();
  if (v1 <= 0xFDu)
  {
    return v1;
  }

  else
  {
    return 32;
  }
}

uint64_t *InCallCallControlsService.callStatus.getter()
{
  v0 = OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo12TUCallStatusVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySo12TUCallStatusVs5NeverOGMR);
  OUTLINED_FUNCTION_0_86();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v3, v4, &_s7Combine19CurrentValueSubjectCySo12TUCallStatusVs5NeverOGMR, v5);
  v6 = lazy protocol witness table accessor for type TUCallStatus and conformance TUCallStatus(&lazy protocol witness table cache variable for type TUCallStatus and conformance TUCallStatus, type metadata accessor for TUCallStatus, &protocol conformance descriptor for TUCallStatus);
  OUTLINED_FUNCTION_8_77(v6);
  OUTLINED_FUNCTION_4_101();
  v11 = OUTLINED_FUNCTION_21_37(v7, v8, v9, v10);
  OUTLINED_FUNCTION_7_15(v11);
  v12 = OUTLINED_FUNCTION_5_54();
  v13(v12);
  return &_s7Combine19CurrentValueSubjectCySo12TUCallStatusVs5NeverOGMd;
}

uint64_t *InCallCallControlsService.conversationState.getter()
{
  v0 = OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo19TUConversationStateVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySo19TUConversationStateVs5NeverOGMR);
  OUTLINED_FUNCTION_0_86();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v3, v4, &_s7Combine19CurrentValueSubjectCySo19TUConversationStateVs5NeverOGMR, v5);
  v6 = lazy protocol witness table accessor for type TUCallStatus and conformance TUCallStatus(&lazy protocol witness table cache variable for type TUConversationState and conformance TUConversationState, type metadata accessor for TUConversationState, &protocol conformance descriptor for TUConversationState);
  OUTLINED_FUNCTION_8_77(v6);
  OUTLINED_FUNCTION_4_101();
  v11 = OUTLINED_FUNCTION_21_37(v7, v8, v9, v10);
  OUTLINED_FUNCTION_7_15(v11);
  v12 = OUTLINED_FUNCTION_5_54();
  v13(v12);
  return &_s7Combine19CurrentValueSubjectCySo19TUConversationStateVs5NeverOGMd;
}

uint64_t InCallCallControlsService.mode.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy15ConversationKit18InCallControlsModeOSgs5NeverOGAJGMd, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy15ConversationKit18InCallControlsModeOSgs5NeverOGAJGMR);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC10CompactMapVy_AA19CurrentValueSubjectCy15ConversationKit18InCallControlsModeOSgs5NeverOGALGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC10CompactMapVy_AA19CurrentValueSubjectCy15ConversationKit18InCallControlsModeOSgs5NeverOGALGGMR);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - v11;
  v20[1] = *(v0 + OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService_modeSubject);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit18InCallControlsModeOSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit18InCallControlsModeOSgs5NeverOGMR);
  OUTLINED_FUNCTION_0_86();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v13, v14, &_s7Combine19CurrentValueSubjectCy15ConversationKit18InCallControlsModeOSgs5NeverOGMR, v15);
  Publisher.compactMap<A>(_:)();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CompactMap<CurrentValueSubject<InCallControlsMode?, Never>, InCallControlsMode> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy15ConversationKit18InCallControlsModeOSgs5NeverOGAJGMd, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy15ConversationKit18InCallControlsModeOSgs5NeverOGAJGMR, MEMORY[0x1E695BC80]);
  lazy protocol witness table accessor for type InCallControlsMode and conformance InCallControlsMode();
  Publisher<>.removeDuplicates()();
  (*(v3 + 8))(v6, v1);
  OUTLINED_FUNCTION_4_101();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v16, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC10CompactMapVy_AA19CurrentValueSubjectCy15ConversationKit18InCallControlsModeOSgs5NeverOGALGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC10CompactMapVy_AA19CurrentValueSubjectCy15ConversationKit18InCallControlsModeOSgs5NeverOGALGGMR, v17);
  v18 = Publisher.eraseToAnyPublisher()();
  (*(v9 + 8))(v12, v7);
  return v18;
}

uint64_t *InCallCallControlsService.letMeInStates.getter()
{
  v0 = OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo33TUConversationLetMeInRequestStateVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySo33TUConversationLetMeInRequestStateVs5NeverOGMR);
  OUTLINED_FUNCTION_0_86();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v3, v4, &_s7Combine19CurrentValueSubjectCySo33TUConversationLetMeInRequestStateVs5NeverOGMR, v5);
  v6 = lazy protocol witness table accessor for type TUCallStatus and conformance TUCallStatus(&lazy protocol witness table cache variable for type TUConversationLetMeInRequestState and conformance TUConversationLetMeInRequestState, type metadata accessor for TUConversationLetMeInRequestState, &protocol conformance descriptor for TUConversationLetMeInRequestState);
  OUTLINED_FUNCTION_8_77(v6);
  OUTLINED_FUNCTION_4_101();
  v11 = OUTLINED_FUNCTION_21_37(v7, v8, v9, v10);
  OUTLINED_FUNCTION_7_15(v11);
  v12 = OUTLINED_FUNCTION_5_54();
  v13(v12);
  return &_s7Combine19CurrentValueSubjectCySo33TUConversationLetMeInRequestStateVs5NeverOGMd;
}

uint64_t InCallCallControlsService.isOnScreen.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 32, a2);
  *(v2 + 32) = a1;
}

uint64_t InCallCallControlsService.hasPendingParticipant.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t key path getter for InCallCallControlsService.hasPendingParticipant : InCallCallControlsService@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = InCallCallControlsService.hasPendingParticipant.getter(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t InCallCallControlsService.hasPendingParticipant.setter(char a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t InCallCallControlsService.$hasPendingParticipant.getter()
{
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService__hasPendingParticipant, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for InCallCallControlsService.$hasPendingParticipant : InCallCallControlsService(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return InCallCallControlsService.$hasPendingParticipant.setter(v5);
}

uint64_t InCallCallControlsService.$hasPendingParticipant.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v5 + 16))(&v11[-v8 - 8], a1, v3, v7);
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService__hasPendingParticipant, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t InCallCallControlsService.hasPendingParticipantPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20[-v5 - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySb_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySb_GGMR);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20[-v11 - 8];
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService__hasPendingParticipant, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  OUTLINED_FUNCTION_6_10();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v13, &_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR, v14);
  Publisher<>.removeDuplicates()();
  (*(v3 + 8))(v6, v1);
  OUTLINED_FUNCTION_4_101();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v15, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySb_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySb_GGMR, v16);
  v17 = Publisher.eraseToAnyPublisher()();
  (*(v9 + 8))(v12, v7);
  return v17;
}

uint64_t InCallCallControlsService.updateConversation(_:)(uint64_t a1)
{
  outlined init with copy of Conversation?(a1, &v12);
  if (v13)
  {
    outlined init with take of TapInteractionHandler(&v12, v14);
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v1 = OUTLINED_FUNCTION_62_0();
    v2(v1);
    v3 = specialized Set.isEmpty.getter();

    InCallCallControlsService.hasPendingParticipant.setter((v3 & 1) == 0, v4);
    if (one-time initialization token for sidebar != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, &static Logger.sidebar);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = InCallCallControlsService.hasPendingParticipant.getter(v8, v9) & 1;

      _os_log_impl(&dword_1BBC58000, v6, v7, "CallControlsService updated conversation; hasPendingParticipant = %{BOOL}d", v8, 8u);
      MEMORY[0x1BFB23DF0](v8, -1, -1);
    }

    else
    {
    }

    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    outlined destroy of Conversation?(&v12);
    return InCallCallControlsService.hasPendingParticipant.setter(0, v10);
  }
}

Swift::Void __swiftcall InCallCallControlsService.continueHandoffButtonTapped()()
{
  OUTLINED_FUNCTION_4_5(v1 + 16, v0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong continueHandoffButtonTapped];
  }
}

void InCallCallControlsService.joinConversation()(void (*a1)(void), uint64_t a2)
{
  OUTLINED_FUNCTION_4_5(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a1();
  }
}

uint64_t closure #1 in InCallCallControlsService.muted.getter@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x6B0))();
  *a2 = (result & 1) == 0;
  return result;
}

uint64_t specialized InCallCallControlsService.fromControlManager<A>(_:defaultValue:)(void (*a1)(uint64_t *__return_ptr), uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a1(&v12);
  }

  else
  {
    if (one-time initialization token for sidebar != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, &static Logger.sidebar);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBC58000, v8, v9, "[InCallCallControlsService] Missing control manager.", v10, 2u);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
    }

    a3(&v12);
  }

  return v12;
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a1(&v12);
  }

  else
  {
    if (one-time initialization token for sidebar != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, &static Logger.sidebar);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBC58000, v8, v9, "[InCallCallControlsService] Missing control manager.", v10, 2u);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
    }

    a3(&v12);
  }

  return v12;
}

uint64_t closure #1 in InCallCallControlsService.mutedStates.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySb_GSbGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySb_GSbGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA9PublishedV9PublisherVySb_GSbGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA9PublishedV9PublisherVySb_GSbGGMR);
  v12 = *(v11 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x6C8))(v13);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR, MEMORY[0x1E695C068]);
  Publisher.map<A>(_:)();
  (*(v4 + 8))(v6, v3);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Published<Bool>.Publisher, Bool> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySb_GSbGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySb_GSbGMR, MEMORY[0x1E695BD60]);
  Publisher<>.removeDuplicates()();
  (*(v8 + 8))(v10, v7);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.Map<Published<Bool>.Publisher, Bool>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA9PublishedV9PublisherVySb_GSbGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA9PublishedV9PublisherVySb_GSbGGMR, MEMORY[0x1E695BD38]);
  v16 = Publisher.eraseToAnyPublisher()();
  result = (*(v12 + 8))(v15, v11);
  *v19 = v16;
  return result;
}

Swift::Void __swiftcall InCallCallControlsService.mutateMutedState(_:)(Swift::Bool a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_10_62();
  if ((specialized InCallCallControlsService.fromControlManager<A>(_:defaultValue:)(v3, 0, protocol witness for static LayoutValueKey.defaultValue.getter in conformance LayoutPositionKey) & 1) != v2)
  {
    OUTLINED_FUNCTION_4_5(v1 + 16, v4);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      ConversationControlsManager.setLocalAudio(muted:bluetoothAudioFormat:)();
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v9 = InCallCallControlsService.localAudioEphemeralAlert()();
        (*((*MEMORY[0x1E69E7D40] & *v8) + 0x8E0))(v9);
      }
    }
  }
}

Class InCallCallControlsService.localAudioEphemeralAlert()()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v0 = *MEMORY[0x1E69DDD40];
  v26[0] = 0x6C6C69662E63696DLL;
  v26[1] = 0xE800000000000000;
  v26[2] = 1;
  v26[3] = v0;
  v27 = 0;
  v28 = 4;
  v29 = 0;
  v30 = 0;
  v31[0] = 0x6C6C69662E63696DLL;
  v31[1] = 0xE800000000000000;
  v31[2] = 1;
  v31[3] = v0;
  v32 = 0;
  v33 = 4;
  v34 = 0;
  v35 = 0;
  v1 = v0;
  outlined init with copy of SymbolImageDescription(v26, v24);
  outlined destroy of SymbolImageDescription(v31);
  v2 = static UIImage.symbolImage(for:)(v26);
  outlined destroy of SymbolImageDescription(v26);
  if (v2)
  {
    v3 = [objc_opt_self() labelColor];
    v4 = [v2 imageWithTintColor_];
  }

  else
  {
    v4 = 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
  v5 = objc_opt_self();
  v6 = [v5 conversationKit];
  v36._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x6F68706F7263694DLL;
  v7._object = 0xEA0000000000656ELL;
  v8.value._countAndFlagsBits = 0x61737265766E6F43;
  v8.value._object = 0xEF74694B6E6F6974;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v36);

  memset(v24, 0, sizeof(v24));
  v25 = 1;
  v11 = static NSAttributedString.localizedString(_:prefixImage:imageBounds:)(v10._countAndFlagsBits, v10._object, v4, v24);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v13 = Strong, v14 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x6B0))(), v13, (v14 & 1) != 0))
  {
    v15 = [v5 conversationKit];
    v23 = 0xE000000000000000;
    v16 = 0x4E4F5F43494DLL;
    v17 = 0xE600000000000000;
  }

  else
  {
    v15 = [v5 conversationKit];
    v23 = 0xE000000000000000;
    v16 = 0x46464F5F43494DLL;
    v17 = 0xE700000000000000;
  }

  v18.value._countAndFlagsBits = 0x61737265766E6F43;
  v18.value._object = 0xEF74694B6E6F6974;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v20 = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v16, v18, v15, v19, *(&v23 - 1));

  NSAttributedString.__allocating_init(string:)(v21);
  return v11;
}

uint64_t closure #1 in InCallCallControlsService.localVideoSupported.getter@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x6E0))();
  *a2 = result & 1;
  return result;
}

uint64_t closure #2 in InCallCallControlsService.mutedStates.getter@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_62_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16[-v10];
  v16[15] = a1;
  Just.init(_:)();
  OUTLINED_FUNCTION_21_37(&lazy protocol witness table cache variable for type Just<Bool> and conformance Just<A>, v12, v13, MEMORY[0x1E695C008]);
  v14 = Publisher.eraseToAnyPublisher()();
  result = (*(v8 + 8))(v11, v6);
  *a2 = v14;
  return result;
}

uint64_t closure #1 in InCallCallControlsService.isVideoOn.getter@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x6E0))();
  *a2 = BYTE1(result) & 1;
  return result;
}

uint64_t closure #1 in InCallCallControlsService.localVideoSupportedState.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v29 = a2;
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit19ControlsActionStateV_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit19ControlsActionStateV_GMR);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVy15ConversationKit19ControlsActionStateV_GSbGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVy15ConversationKit19ControlsActionStateV_GSbGMR);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA9PublishedV9PublisherVy15ConversationKit19ControlsActionStateV_GSbGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA9PublishedV9PublisherVy15ConversationKit19ControlsActionStateV_GSbGGMR);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  OUTLINED_FUNCTION_21();
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v22 = &v29 - v21;
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x6F8))(v20);
  OUTLINED_FUNCTION_6_10();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v23, &_s7Combine9PublishedV9PublisherVy15ConversationKit19ControlsActionStateV_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit19ControlsActionStateV_GMR, v24);
  Publisher.map<A>(_:)();
  (*(v6 + 8))(v9, v4);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Published<ControlsActionState>.Publisher, Bool> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVy15ConversationKit19ControlsActionStateV_GSbGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVy15ConversationKit19ControlsActionStateV_GSbGMR, MEMORY[0x1E695BD60]);
  Publisher<>.removeDuplicates()();
  (*(v12 + 8))(v15, v10);
  OUTLINED_FUNCTION_4_101();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v25, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA9PublishedV9PublisherVy15ConversationKit19ControlsActionStateV_GSbGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA9PublishedV9PublisherVy15ConversationKit19ControlsActionStateV_GSbGGMR, v26);
  v27 = Publisher.eraseToAnyPublisher()();
  result = (*(v18 + 8))(v22, v16);
  *v30 = v27;
  return result;
}

Swift::Void __swiftcall InCallCallControlsService.mutateVideoOnState(_:)(Swift::Bool a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_11_74();
  if ((specialized InCallCallControlsService.fromControlManager<A>(_:defaultValue:)(v3, 0, closure #2 in InCallCallControlsService.isVideoOn.getter) & 1) != v2)
  {
    OUTLINED_FUNCTION_4_0(v1 + 24, v8);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      ConversationController.toggleLocalVideo(shouldPauseIfStopped:)(0);
    }

    else
    {
      OUTLINED_FUNCTION_4_0(v1 + 16, &v7);
      v6 = swift_unknownObjectWeakLoadStrong();
      if (!v6)
      {
        return;
      }

      v5 = v6;
      ConversationControlsManager.toggleVideoButtonTapped()();
    }
  }
}

unint64_t lazy protocol witness table accessor for type InCallControlsMode and conformance InCallControlsMode()
{
  result = lazy protocol witness table cache variable for type InCallControlsMode and conformance InCallControlsMode;
  if (!lazy protocol witness table cache variable for type InCallControlsMode and conformance InCallControlsMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsMode and conformance InCallControlsMode);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TUCallStatus and conformance TUCallStatus(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t key path getter for InCallCallControlsService.toggleLiveCaptions : InCallCallControlsService@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v7 = (*a1 + *a2);
  OUTLINED_FUNCTION_4_0(v7, v12);
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  *a5 = a4;
  a5[1] = v10;
}

uint64_t key path setter for InCallCallControlsService.toggleLiveCaptions : InCallCallControlsService(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v13 = (*a2 + *a6);
  OUTLINED_FUNCTION_51_3(v12);
  *v13 = a7;
  v13[1] = v12;
}

uint64_t InCallCallControlsService.toggleLiveCaptions.getter(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_4_0(v2, v5);
  v3 = *v2;

  return v3;
}

uint64_t InCallCallControlsService.toggleLiveCaptions.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  OUTLINED_FUNCTION_51_3(a1);
  *v6 = a1;
  v6[1] = a2;
}

uint64_t InCallCallControlsService.deinit()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  MEMORY[0x1BFB23F10](v0 + 24);

  v1 = OBJC_IVAR____TtC15ConversationKit25InCallCallControlsService__hasPendingParticipant;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t InCallCallControlsService.__deallocating_deinit()
{
  InCallCallControlsService.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CallControlsService.isOnScreen.setter in conformance InCallCallControlsService(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 32) = a1;
}

uint64_t protocol witness for CallControlsService.presentAddParticipantSheet.getter in conformance InCallCallControlsService(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*v3 + *a3);
  OUTLINED_FUNCTION_4_0(v4, v7);
  v5 = *v4;

  return v5;
}

uint64_t protocol witness for CallControlsService.presentAddParticipantSheet.setter in conformance InCallCallControlsService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = (*v5 + *a5);
  OUTLINED_FUNCTION_51_3(a1, a2, a3, a4);
  *v8 = a1;
  v8[1] = a2;
}

uint64_t outlined destroy of Conversation?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for InCallCallControlsService(uint64_t a1)
{
  result = type metadata singleton initialization cache for InCallCallControlsService;
  if (!type metadata singleton initialization cache for InCallCallControlsService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for InCallCallControlsService(uint64_t a1)
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

Swift::String __swiftcall String.hashWithSalt(salt:)(Swift::String salt)
{
  v3 = v2;
  v4 = v1;
  object = salt._object;
  countAndFlagsBits = salt._countAndFlagsBits;
  v7 = type metadata accessor for SHA256();
  OUTLINED_FUNCTION_1();
  *&v51 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256Digest();
  OUTLINED_FUNCTION_1();
  v50 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v52 = v4;
  v53 = v3;

  MEMORY[0x1BFB20B10](countAndFlagsBits, object);
  v20 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v52, v53);
  v22 = v21;
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(v20, v22);
  specialized closure #1 in HashFunction.update<A>(data:)(v20, v22, v11);
  v46 = v22;
  v47 = v20;
  outlined consume of Data._Representation(v20, v22);
  dispatch thunk of HashFunction.finalize()();
  (*(v51 + 8))(v11, v7);
  v23 = *(v50 + 16);
  v48 = v19;
  v23(v16, v19, v12);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x1E69663E0], MEMORY[0x1E69663F0]);
  v49 = v12;
  isUniquelyReferenced_nonNull_native = dispatch thunk of Sequence.makeIterator()();
  v26 = v52;
  v27 = v53;
  v28 = *(v52 + 16);
  if (v53 == v28)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_3:

    v52 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v30 = BidirectionalCollection<>.joined(separator:)();
    v32 = v31;

    v52 = v30;
    v53 = v32;
    v33 = String.init<A>(_:)();
    v35 = v34;
    outlined consume of Data._Representation(v47, v46);
    (*(v50 + 8))(v48, v49);
    isUniquelyReferenced_nonNull_native = v33;
    v25 = v35;
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
    v51 = xmmword_1BC4BA940;
    v36 = v53;
    while ((v27 & 0x8000000000000000) == 0)
    {
      if (v36 >= *(v26 + 16))
      {
        goto LABEL_14;
      }

      v37 = *(v26 + 32 + v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v38 = swift_allocObject();
      *(v38 + 16) = v51;
      *(v38 + 56) = MEMORY[0x1E69E7508];
      *(v38 + 64) = MEMORY[0x1E69E7558];
      *(v38 + 32) = v37;
      v39 = String.init(format:_:)();
      v41 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v29 = isUniquelyReferenced_nonNull_native;
      }

      v42 = *(v29 + 16);
      if (v42 >= *(v29 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v29 = isUniquelyReferenced_nonNull_native;
      }

      ++v36;
      *(v29 + 16) = v42 + 1;
      v43 = v29 + 16 * v42;
      *(v43 + 32) = v39;
      *(v43 + 40) = v41;
      if (v28 == v36)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  result._object = v25;
  result._countAndFlagsBits = isUniquelyReferenced_nonNull_native;
  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of TapInteractionHandler(v40, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v40[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_59;
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  outlined destroy of ContiguousBytes?(v40);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v40[0] = a1;
    *(&v40[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v40;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(v5, v6, &v43);
  v7 = *(&v43 + 1);
  v8 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    v40[0] = v43;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v40[0] = MEMORY[0x1BFB1A280](v9);
  *(&v40[0] + 1) = v10;
  MEMORY[0x1EEE9AC00](*&v40[0]);
  v34[2] = v39;
  v11 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:), v34);
  v13 = *(&v40[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v40[0]);
  switch(*(&v40[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v40[0]) - LODWORD(v40[0]);
      if (__OFSUB__(DWORD1(v40[0]), v40[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v40[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v40[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v40[0] + 16);
      v21 = *(*&v40[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34[4] = v4;
      v35 = v8;
      v36 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v37 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v38 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v42 + 7) = 0;
      *&v42 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v40[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v18, v14, v16);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = String.UTF8View._foreignCount()();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v18 = _StringGuts._slowEnsureMatchingEncoding(_:)(v18, v14, v16);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    v18 = String.UTF8View._foreignIndex(after:)();
LABEL_46:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data?(v35, v36);
    goto LABEL_58;
  }

  outlined consume of Data?(v35, v36);
LABEL_59:
  v32 = v40[0];
  outlined copy of Data._Representation(*&v40[0], *(&v40[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  return v32;
}

uint64_t closure #2 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = Data.InlineData.init(_:)();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *specialized closure #3 in Data.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v5, a1, a2);
}

uint64_t specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      outlined consume of Data._Representation(v7, v6);
      *v5 = xmmword_1BC4D59F0;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
        goto LABEL_24;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      outlined consume of Data._Representation(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_1BC4D59F0;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v7 = v17;
      v10 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      outlined consume of Data._Representation(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t closure #1 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1BFB1A230]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1BFB1A250]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

void specialized closure #1 in HashFunction.update<A>(data:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v7;
      goto LABEL_9;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
LABEL_9:
      specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      specialized Data.InlineData.withUnsafeBytes<A>(_:)(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

uint64_t lazy protocol witness table accessor for type SHA256 and conformance SHA256(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)(uint64_t result)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x1BFB19C60]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = String.UTF16View.index(_:offsetBy:)();
    OUTLINED_FUNCTION_0_144(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1BFB20B50](15, a1 >> 16);
    OUTLINED_FUNCTION_0_144(v3);
    return v4 | 8;
  }
}

uint64_t specialized Data.InlineData.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1BFB19C60]();
      type metadata accessor for SHA256();
      lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of ContiguousBytes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = specialized closure #3 in Data.init<A>(_:)(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in closure #3 in Data.init<A>(_:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t MonogramView.text.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit12MonogramView_text);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double key path getter for MonogramView.text : MonogramView@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit12MonogramView_text);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

id key path setter for MonogramView.text : MonogramView(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MonogramView.text.setter(v1, v2);
}

id MonogramView.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC15ConversationKit12MonogramView_text];
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 1) = a2;

  return [v2 setNeedsDisplay];
}

id (*MonogramView.text.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MonogramView.text.modify;
}

id MonogramView.text.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsDisplay];
  }

  return result;
}

unsigned __int8 *MonogramView.init(colorStyle:)(unsigned __int8 *a1)
{
  swift_getObjectType();
  v3 = *a1;
  OUTLINED_FUNCTION_3_113(OBJC_IVAR____TtC15ConversationKit12MonogramView_lastSizeForFont);
  *&v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_font] = 0;
  v4 = &v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_text];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_colorStyle] = v3;
  v13.receiver = v1;
  v13.super_class = v5;
  v6 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v6 setContentMode_];
  v7 = [objc_opt_self() clearColor];
  [v6 setBackgroundColor_];

  v8 = v6;
  if (v3 == 1)
  {
    v9 = [v6 layer];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CAFilter, 0x1E6979378);
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = CAFilter.__allocating_init(type:)(v10, v11);
    [v9 setCompositingFilter_];
  }

  return v6;
}

id MonogramView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void MonogramView.init()()
{
  OUTLINED_FUNCTION_3_113(OBJC_IVAR____TtC15ConversationKit12MonogramView_lastSizeForFont);
  *(v0 + OBJC_IVAR____TtC15ConversationKit12MonogramView_font) = 0;
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit12MonogramView_text);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id MonogramView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

void MonogramView.init(frame:)()
{
  OUTLINED_FUNCTION_3_113(OBJC_IVAR____TtC15ConversationKit12MonogramView_lastSizeForFont);
  *(v0 + OBJC_IVAR____TtC15ConversationKit12MonogramView_font) = 0;
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit12MonogramView_text);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_1_119();
  __break(1u);
}

id MonogramView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void MonogramView.init(coder:)()
{
  OUTLINED_FUNCTION_3_113(OBJC_IVAR____TtC15ConversationKit12MonogramView_lastSizeForFont);
  *(v0 + OBJC_IVAR____TtC15ConversationKit12MonogramView_font) = 0;
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit12MonogramView_text);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_1_119();
  __break(1u);
}

Swift::Void __swiftcall MonogramView.draw(_:)(__C::CGRect a1)
{
  OUTLINED_FUNCTION_20_2();
  v2 = &v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_text];
  swift_beginAccess();
  v3 = v2[1];
  v4 = *v2 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (v4)
  {
    if (v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_colorStyle])
    {
      v5 = [objc_opt_self() whiteColor];
    }

    else
    {
      if (one-time initialization token for contactMonogram != -1)
      {
        swift_once();
      }

      v5 = static Colors.ParticipantViews.contactMonogram;
    }

    v6 = v5;
    v7 = &v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_lastSizeForFont];
    v8 = *&v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_lastSizeForFont];
    v9 = *&v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_lastSizeForFont + 8];
    v10 = v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_lastSizeForFont + 16];
    [v1 bounds];
    if ((v10 & 1) != 0 || (v8 == v11 ? (v13 = v9 == v12) : (v13 = 0), !v13))
    {
      [v1 bounds];
      MonogramView.createFont(for:)(v14);
      v15 = *&v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_font];
      *&v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_font] = v16;

      [v1 bounds];
      *v7 = v17;
      *(v7 + 1) = v18;
      v7[16] = 0;
    }

    v19 = *&v1[OBJC_IVAR____TtC15ConversationKit12MonogramView_font];
    if (v19)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BAA20;
      v21 = *MEMORY[0x1E69DB648];
      *(inited + 32) = *MEMORY[0x1E69DB648];
      v22 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
      *(inited + 40) = v19;
      v23 = *MEMORY[0x1E69DB650];
      *(inited + 64) = v22;
      *(inited + 72) = v23;
      *(inited + 104) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
      *(inited + 80) = v6;
      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
      v24 = v19;
      v25 = v21;
      v26 = v23;
      v27 = v6;
      v28 = Dictionary.init(dictionaryLiteral:)();
      lazy protocol witness table accessor for type String and conformance String();

      v29 = StringProtocol.localizedUppercase.getter();
      v30 = MEMORY[0x1BFB209B0](v29);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v30 sizeWithAttributes_];
      v33 = v32;
      v35 = v34;

      v40.origin.x = OUTLINED_FUNCTION_18_1();
      v36 = CGRectGetMidX(v40) - v33 * 0.5;
      v41.origin.x = OUTLINED_FUNCTION_18_1();
      MidY = CGRectGetMidY(v41);
      outlined bridged method (mnbnn) of @objc NSString.draw(in:withAttributes:)(v36, MidY - v35 * 0.5, v33, v35, v28, v30);
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v38 = static OS_os_log.conversationKit;
      v39 = static os_log_type_t.error.getter();
      os_log(_:dso:log:type:_:)("Not font set in monogram view", 29, 2, &dword_1BBC58000, v38, v39, MEMORY[0x1E69E7CC0]);
    }
  }
}

void MonogramView.createFont(for:)(double a1)
{
  v1 = a1 * 0.515555556;
  v2 = objc_opt_self();
  v3 = *MEMORY[0x1E69DB970];
  v4 = MEMORY[0x1BFB209B0](0xD00000000000001BLL, 0x80000001BC50B760);
  v5 = [v2 systemFontOfSize:v4 weight:v1 design:v3];

  if (!v5)
  {
    __break(1u);
  }
}

id MonogramView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void outlined bridged method (mnbnn) of @objc NSString.draw(in:withAttributes:)(double a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a6 drawInRect:isa withAttributes:{a1, a2, a3, a4}];
}

double ParticipantScreenShareInfoView.customCornerRadius.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_customCornerRadius;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void ParticipantScreenShareInfoView.customCornerRadius.setter(double a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_customCornerRadius;
  OUTLINED_FUNCTION_6_0(v3 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_customCornerRadius, a3);
  *(v3 + v5) = a1;
  ParticipantScreenShareInfoView.customCornerRadius.didset();
}

void ParticipantScreenShareInfoView.customCornerRadius.didset()
{
  v1 = [*(v0 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_backgroundBlurView) layer];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC8))();
  [v1 setCornerRadius_];
}

uint64_t (*ParticipantScreenShareInfoView.customCornerRadius.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return ParticipantScreenShareInfoView.customCornerRadius.modify;
}

double ParticipantScreenShareInfoView.preferredHeight.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x100))();
  result = 40.0;
  if (v1)
  {
    return 54.0;
  }

  return result;
}

void *ParticipantScreenShareInfoView.avatarImage.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImage;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void ParticipantScreenShareInfoView.avatarImage.setter(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImage;
  OUTLINED_FUNCTION_6_0(v2 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImage, a2);
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = a1;

  ParticipantScreenShareInfoView.avatarImage.didset();
}

uint64_t key path getter for ParticipantScreenShareInfoView.avatarImage : ParticipantScreenShareInfoView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ParticipantScreenShareInfoView.avatarImage : ParticipantScreenShareInfoView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xF0);
  v4 = *a1;
  return v3(v2);
}

id ParticipantScreenShareInfoView.avatarImage.didset()
{
  v1 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImage;
  swift_beginAccess();
  v2 = *(v0 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImageView);
  [v2 setHidden_];
  [v2 setImage_];
  v3 = *(v0 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_stackView);
  [v3 directionalLayoutMargins];
  return [v3 setDirectionalLayoutMargins_];
}

uint64_t (*ParticipantScreenShareInfoView.avatarImage.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return ParticipantScreenShareInfoView.avatarImage.modify;
}

uint64_t ParticipantScreenShareInfoView.customCornerRadius.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t key path getter for ParticipantScreenShareInfoView.isFullScreenMode : ParticipantScreenShareInfoView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x100))();
  *a2 = result & 1;
  return result;
}

uint64_t ParticipantScreenShareInfoView.isFullScreenMode.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_isFullScreenMode;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t ParticipantScreenShareInfoView.isFullScreenMode.setter(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_isFullScreenMode;
  result = OUTLINED_FUNCTION_6_0(v2 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_isFullScreenMode, a2);
  *(v2 + v4) = a1;
  return result;
}

id ParticipantScreenShareInfoView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ParticipantScreenShareInfoView.init()()
{
  v1 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_nameLabel;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_stackView;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v3 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImageView;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v4 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_backgroundBlurView;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  v5 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_normalConstraints] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_fullScreenConstraints] = v5;
  *&v0[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_customCornerRadius] = 0;
  *&v0[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImage] = 0;
  v0[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_isFullScreenMode] = 0;
  v74.receiver = v0;
  v74.super_class = type metadata accessor for ParticipantScreenShareInfoView();
  v6 = objc_msgSendSuper2(&v74, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_backgroundBlurView;
  v8 = *&v6[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_backgroundBlurView];
  v9 = v6;
  v10 = v8;
  UIVisualEffectView.applyEffect(_:)(ConversationKit_PlatformEffectViewStyle_thinDark);

  v11 = *&v6[v7];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor_];

  [*&v6[v7] setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = v7;
  v16 = *&v6[v7];
  v17 = [v16 layer];
  [v17 setMasksToBounds_];

  v18 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_stackView;
  [*&v9[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_stackView] setDirectionalLayoutMargins_];
  [*&v9[v18] setLayoutMarginsRelativeArrangement_];
  [*&v9[v18] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v9[v18] setAxis_];
  [*&v9[v18] setAlignment_];
  [*&v9[v18] setDistribution_];
  [*&v9[v18] setSpacing_];
  v19 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImageView;
  v20 = *&v9[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImageView];
  v21 = [v12 whiteColor];
  [v20 setTintColor_];

  [*&v9[v19] setHidden_];
  v73 = v19;
  [*&v9[v18] addArrangedSubview_];
  v22 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_nameLabel;
  [*&v9[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_nameLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v23 = *&v9[v22];
  v24 = [v12 whiteColor];
  [v23 setTextColor_];

  v25 = one-time initialization token for screenShareInfo;
  v26 = *&v9[v22];
  if (v25 != -1)
  {
    OUTLINED_FUNCTION_0_145(&one-time initialization token for screenShareInfo);
  }

  [v26 setFont_];

  [*&v9[v22] setAdjustsFontForContentSizeCategory_];
  LODWORD(v27) = 1144750080;
  [*&v9[v22] setContentCompressionResistancePriority:0 forAxis:v27];
  [*&v9[v18] addArrangedSubview_];
  v28 = *&v6[v15];
  v29 = v9;
  [v29 addSubview_];
  [v29 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1BC4BA920;
  v31 = [*&v9[v18] leadingAnchor];
  v32 = [OUTLINED_FUNCTION_4_107() leadingAnchor];
  v33 = OUTLINED_FUNCTION_1_120();

  *(v30 + 32) = v33;
  v34 = [*&v9[v18] centerYAnchor];
  v35 = [OUTLINED_FUNCTION_4_107() centerYAnchor];
  v36 = OUTLINED_FUNCTION_1_120();

  *(v30 + 40) = v36;
  v37 = [*&v9[v18] trailingAnchor];
  v38 = [OUTLINED_FUNCTION_4_107() trailingAnchor];
  v39 = OUTLINED_FUNCTION_1_120();

  *(v30 + 48) = v39;
  v40 = [*&v9[v73] heightAnchor];
  v41 = [v40 constraintEqualToConstant_];

  *(v30 + 56) = v41;
  v42 = [*&v9[v73] widthAnchor];
  v43 = [*&v9[v73] heightAnchor];
  v44 = OUTLINED_FUNCTION_1_120();

  *(v30 + 64) = v44;
  *&v29[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_normalConstraints] = v30;

  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1BC4BC370;
  v46 = [*&v9[v18] centerXAnchor];
  v47 = [OUTLINED_FUNCTION_4_107() centerXAnchor];
  v48 = OUTLINED_FUNCTION_1_120();

  *(v45 + 32) = v48;
  v49 = [*&v9[v18] topAnchor];
  v50 = [OUTLINED_FUNCTION_4_107() safeAreaLayoutGuide];
  v51 = [v50 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];

  v52 = [v42 constraintEqualToAnchor_];
  *(v45 + 40) = v52;
  v53 = [*&v9[v18] trailingAnchor];
  v54 = [*&v6[v15] trailingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:-30.0];

  *(v45 + 48) = v55;
  *&v29[OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_fullScreenConstraints] = v45;

  v56 = objc_opt_self();
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1BC4BA7F0;
  v58 = [*&v6[v15] topAnchor];
  v59 = [v29 topAnchor];

  v60 = OUTLINED_FUNCTION_5_98();
  *(v57 + 32) = v60;
  v61 = [*&v6[v15] bottomAnchor];
  v62 = [v29 bottomAnchor];

  v63 = OUTLINED_FUNCTION_5_98();
  *(v57 + 40) = v63;
  v64 = [*&v6[v15] leadingAnchor];
  v65 = [v29 leadingAnchor];

  v66 = OUTLINED_FUNCTION_5_98();
  *(v57 + 48) = v66;
  v67 = [*&v6[v15] trailingAnchor];
  v68 = [v29 trailingAnchor];

  v69 = [v67 constraintEqualToAnchor_];
  *(v57 + 56) = v69;

  specialized Array.append<A>(contentsOf:)(v70);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v56 activateConstraints_];

  return v29;
}

id ParticipantScreenShareInfoView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantScreenShareInfoView.init(coder:)()
{
  v1 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_nameLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_stackView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v3 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImageView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v4 = OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_backgroundBlurView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_normalConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_fullScreenConstraints) = v5;
  *(v0 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_customCornerRadius) = 0;
  *(v0 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_avatarImage) = 0;
  *(v0 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_isFullScreenMode) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ParticipantScreenShareInfoView.configure(with:isFullScreenMode:)(Swift::String with, Swift::Bool isFullScreenMode)
{
  v4 = v2;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x108))(isFullScreenMode);
  v12 = *(v4 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_nameLabel);
  if (isFullScreenMode)
  {
    v3 = 0.0;
    if (one-time initialization token for screenShareInfoFullScreen == -1)
    {
LABEL_4:
      v13 = &static Fonts.ParticipantViews.screenShareInfoFullScreen;
      v14 = 1;
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  v3 = 1.0;
  if (one-time initialization token for screenShareInfo != -1)
  {
    OUTLINED_FUNCTION_0_145(&one-time initialization token for screenShareInfo);
  }

  v13 = &static Fonts.ParticipantViews.screenShareInfo;
  v14 = 4;
LABEL_8:
  [v12 setFont_];
  [v12 setTextAlignment_];
  outlined bridged method (mbgnn) of @objc UILabel.text.setter(countAndFlagsBits, object, v12);
  [*(v4 + OBJC_IVAR___CNKParticipantScreenShareInfoViewInternal_backgroundBlurView) setAlpha_];
  v15 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 deactivateConstraints_];

  v17 = Array._bridgeToObjectiveC()().super.isa;

  [v15 activateConstraints_];
}

id ParticipantScreenShareInfoView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ParticipantScreenShareInfoView.layoutSubviews()(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ParticipantScreenShareInfoView();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t key path getter for DefaultParticipantCaptionsProviderCreator.participantCaptionsProviderDelegate : DefaultParticipantCaptionsProviderCreator@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of DefaultParticipantCaptionsProviderCreator(a1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v6[1];
  result = outlined destroy of DefaultParticipantCaptionsProviderCreator(v6);
  *a2 = Strong;
  a2[1] = v4;
  return result;
}

uint64_t DefaultParticipantCaptionsProviderCreator.participantCaptionsProviderDelegate.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*DefaultParticipantCaptionsProviderCreator.participantCaptionsProviderDelegate.modify(uint64_t *a1))(uint64_t a1)
{
  a1[2] = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 8);
  *a1 = Strong;
  a1[1] = v4;
  return DefaultParticipantCaptionsProviderCreator.participantCaptionsProviderDelegate.modify;
}

uint64_t DefaultParticipantCaptionsProviderCreator.participantCaptionsProviderDelegate.modify(uint64_t a1)
{
  *(*(a1 + 16) + 8) = *(a1 + 8);
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t DefaultParticipantCaptionsProviderCreator.createParticipantCaptionsProvider(with:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v3, static Logger.conversationController);
    (*(v4 + 16))(v6, v8, v3);
    v9 = objc_allocWithZone(type metadata accessor for CaptionsClientParticipantCaptionsProvider(0));
    CaptionsClientParticipantCaptionsProvider.init(logger:token:usage:)();
    v11 = v10;
    if (v10)
    {
      swift_unknownObjectWeakLoadStrong();
      v12 = *(v2 + 8);
      v13 = v11 + OBJC_IVAR____TtC15ConversationKit41CaptionsClientParticipantCaptionsProvider_participantCaptionsProviderDelegate;
      swift_beginAccess();
      *(v13 + 8) = v12;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DefaultParticipantCaptionsProviderCreator.init(participantCaptionsProviderDelegate:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = a1;
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

uint64_t getEnumTagSinglePayload for DefaultParticipantCaptionsProviderCreator(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else if ((*(a1 + 8) & 0xF000000000000007) != 0)
    {
      v2 = *a1 & 0x7FFFFFFF;
    }

    else
    {
      v2 = -1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DefaultParticipantCaptionsProviderCreator(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

uint64_t InCallControlsViewController.groupName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_groupName);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double InCallControlsViewController.groupName.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_groupName);
  OUTLINED_FUNCTION_3_5(v5, v6);
  *v2 = a1;
  v2[1] = a2;

  return result;
}

id InCallControlsViewController.contentView.getter()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 contentView];

      if (v4)
      {
        return v4;
      }
    }

    else
    {
    }
  }

  result = [v0 view];
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

void InCallControlsViewController.participants.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    swift_beginAccess();
  }
}

uint64_t InCallControlsViewController.mode.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for InCallControlsViewController.mode : InCallControlsViewController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void InCallControlsViewController.mode.setter(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode;
  OUTLINED_FUNCTION_6_0(v2 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode, a2);
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  InCallControlsViewController.mode.didset(v5);
}

void InCallControlsViewController.mode.didset(int a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode;
  swift_beginAccess();
  v5 = *(v2 + v4);
  switch(a1 >> 5)
  {
    case 1:
      if ((v5 & 0xE0) != 0x20)
      {
        goto LABEL_28;
      }

      goto LABEL_13;
    case 2:
      if ((v5 & 0xE0) != 0x40)
      {
        goto LABEL_28;
      }

LABEL_13:
      if (((v5 ^ a1) & 1) == 0)
      {
        return;
      }

      goto LABEL_28;
    case 3:
      if (a1 == 96)
      {
        if (v5 != 96)
        {
          goto LABEL_28;
        }
      }

      else if (v5 != 97)
      {
        goto LABEL_28;
      }

      return;
    case 4:
      if (a1 == 128)
      {
        if (v5 != 128)
        {
          goto LABEL_28;
        }
      }

      else if (v5 != 129)
      {
        goto LABEL_28;
      }

      return;
    case 5:
      if (a1 == 160)
      {
        if (v5 != 160)
        {
          goto LABEL_28;
        }
      }

      else if (v5 != 161)
      {
        goto LABEL_28;
      }

      return;
    case 6:
      if (a1 == 192)
      {
        if (v5 == 192)
        {
          return;
        }
      }

      else if (v5 == 193)
      {
        return;
      }

LABEL_28:
      v6 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
      swift_beginAccess();
      v7 = *(v2 + v6);
      if (v7)
      {
        v8 = v7;
        InCallControlsCollectionViewController.mode.setter(v5);
      }

      InCallControlsViewController.updateJoinLeaveButton()();
      return;
    default:
      if (v5 < 0x20)
      {
        return;
      }

      goto LABEL_28;
  }
}

double InCallControlsViewController.updateJoinLeaveButton()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BAA20;
  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode;
  swift_beginAccess();
  v4 = String.init<A>(reflecting:)();
  v6 = v5;
  v7 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v8 = lazy protocol witness table accessor for type String and conformance String();
  *(v2 + 64) = v8;
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  v9 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_shouldShowLeaveButton;
  swift_beginAccess();
  v10 = String.init<A>(reflecting:)();
  *(v2 + 96) = v7;
  *(v2 + 104) = v8;
  *(v2 + 72) = v10;
  *(v2 + 80) = v11;
  v12 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Updating join/leave button mode=%@ shouldShowLeaveButton=%@", 59, 2, &dword_1BBC58000, v1, v12, v2);

  if (*(v0 + v9) != 1)
  {
    v17 = *(v0 + v3);
    switch(v17 >> 5)
    {
      case 1u:
        if ((v17 & 1) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_15;
      case 2u:
        if (v17)
        {
          goto LABEL_4;
        }

        v14 = v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent;
        swift_beginAccess();
        if (!*v14)
        {
          return result;
        }

        v15 = 0;
        goto LABEL_6;
      case 3u:
        if (v17 != 96)
        {
          return result;
        }

LABEL_15:
        v14 = v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent;
        swift_beginAccess();
        if (!*v14)
        {
          return result;
        }

        v15 = 1;
        break;
      case 4u:
      case 5u:
      case 6u:
        return result;
      default:
        goto LABEL_4;
    }

    goto LABEL_6;
  }

LABEL_4:
  v14 = v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent;
  swift_beginAccess();
  if (*v14)
  {
    v15 = 2;
LABEL_6:
    v16 = *(v14 + 16);
    InCallControlsView.joinLeaveConfiguration.setter(v15);
  }

  return result;
}

uint64_t InCallControlsViewController.mode.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_28_3();
}

void InCallControlsViewController.mode.modify(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  InCallControlsViewController.mode.setter(*(*a1 + 32), a2);

  free(v2);
}

void InCallControlsViewController.gridLayoutStyle.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_gridLayoutStyle;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void key path getter for InCallControlsViewController.gridLayoutStyle : InCallControlsViewController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_gridLayoutStyle;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void InCallControlsViewController.gridLayoutStyle.setter(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_gridLayoutStyle;
  OUTLINED_FUNCTION_6_0(v2 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_gridLayoutStyle, a2);
  v5 = *(v2 + v4);
  *(v2 + v4) = v3;
  v6[0] = v5;
  InCallControlsViewController.gridLayoutStyle.didset(v6);
}

void InCallControlsViewController.gridLayoutStyle.didset(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_gridLayoutStyle;
  swift_beginAccess();
  if (v2 != *(v1 + v3))
  {
    v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
    swift_beginAccess();
    v5 = *(v1 + v4);
    if (v5)
    {
      v7 = *(v1 + v3);
      v6 = v5;
      InCallControlsCollectionViewController.gridLayoutStyle.setter(&v7);
    }
  }
}

uint64_t InCallControlsViewController.gridLayoutStyle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_gridLayoutStyle;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_28_3();
}

void InCallControlsViewController.gridLayoutStyle.modify(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(*a1 + 32);
    v3 = &v4;
  }

  else
  {
    v5 = *(*a1 + 32);
    v3 = &v5;
  }

  InCallControlsViewController.gridLayoutStyle.setter(v3, a2);

  free(v2);
}

double InCallControlsViewController.topInset.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_topInset;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

double key path getter for InCallControlsViewController.topInset : InCallControlsViewController@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_topInset;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

void InCallControlsViewController.topInset.setter(double a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_topInset;
  OUTLINED_FUNCTION_6_0(v3 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_topInset, a3);
  *(v3 + v5) = a1;
  InCallControlsViewController.topInset.didset();
}

void InCallControlsViewController.topInset.didset()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*v1)
  {
    v2 = v1[3];
    v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_topInset;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    [v2 setConstant_];
  }
}

uint64_t InCallControlsViewController.topInset.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t InCallControlsViewController.isExpanded.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isExpanded;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for InCallControlsViewController.isExpanded : InCallControlsViewController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isExpanded;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void InCallControlsViewController.isExpanded.didset(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isExpanded;
  OUTLINED_FUNCTION_19_1(a1);
  if (*(v1 + v2) == 1)
  {
    InCallControlsViewController.initializeCollectionViewIfNecessary()();
    v3 = *(v1 + v2);
  }

  else
  {
    v3 = 0;
  }

  InCallControlsViewController.updateControlsVisibility(forExpandedState:)(v3);
}

void InCallControlsViewController.initializeCollectionViewIfNecessary()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
  swift_beginAccess();
  if (!*&v0[v2])
  {
    v3 = objc_opt_self();
    [v3 begin];
    [v3 setDisableActions_];
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v4 = objc_allocWithZone(type metadata accessor for InCallControlsCollectionViewController(0));
    InCallControlsCollectionViewController.init(conversation:participants:mode:gridLayoutStyle:isLegacy:shareLinkEnabled:menuHostViewController:)();
    v5 = *&v0[v2];
    *&v0[v2] = v6;

    InCallControlsViewController.setUpCollectionViewConstraints()();
    v7 = &v0[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 1);
      ObjectType = swift_getObjectType();
      (*(v8 + 24))(v0, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    v10 = [v0 view];
    if (v10)
    {
      v11 = v10;
      [v10 setNeedsLayout];

      v12 = [v1 view];
      if (v12)
      {
        v13 = v12;
        [v12 layoutIfNeeded];

        [v3 commit];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void InCallControlsViewController.updateControlsVisibility(forExpandedState:)(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent;
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    v8 = *(v3 + 24);
    v7 = *(v3 + 32);
    v9 = *(v3 + 40);
    v10 = *(v3 + 48);
    v11 = one-time initialization token for conversationKit;
    v12 = v4;
    v13 = v5;
    v14 = v6;
    v15 = v8;

    v37 = v9;
    v16 = v9;
    v36 = v10;
    v17 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BC4BA940;
    if (a1)
    {
      v20 = 1.0;
    }

    else
    {
      v20 = 0.0;
    }

    v21 = String.init<A>(reflecting:)();
    v23 = v22;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v19 + 32) = v21;
    *(v19 + 40) = v23;
    v24 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Updating controls visibility for isExpanded=%@", 46, 2, &dword_1BBC58000, v18, v24, v19);

    v25 = specialized Array.count.getter();
    if (v25)
    {
      v26 = v25;
      if (v25 < 1)
      {
        __break(1u);
      }

      else
      {
        v32 = v8;
        v33 = v6;
        v34 = v5;
        v35 = v4;

        v27 = 0;
        v28 = MEMORY[0x1E69E7D40];
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v29 = MEMORY[0x1BFB22010](v27, v7);
          }

          else
          {
            v29 = *(v7 + 8 * v27 + 32);
          }

          v30 = v29;
          type metadata accessor for InCallControlButton();
          v31 = swift_dynamicCastClass();
          if (v31)
          {
            (*((*v28 & *v31) + 0x1E8))(v20);
          }

          else
          {
            [v30 setAlpha_];
          }

          ++v27;
          [v30 setUserInteractionEnabled_];
        }

        while (v26 != v27);
        outlined consume of InCallControlsViewController.ViewContent?(v35, v34, v33, v32, v7, v37, v36);
      }
    }

    else
    {
      outlined consume of InCallControlsViewController.ViewContent?(v4, v5, v6, v8, v7, v37, v36);
    }
  }
}

uint64_t InCallControlsViewController.isExpanded.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t InCallControlsViewController.audioIsEnabled.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_audioIsEnabled;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void InCallControlsViewController.audioIsEnabled.setter(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_audioIsEnabled;
  OUTLINED_FUNCTION_6_0(v2 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_audioIsEnabled, a2);
  *(v2 + v4) = a1;
  InCallControlsViewController.updateMuteAudioButton()(&OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_audioIsEnabled, "Updating mute audio button for audioIsEnabled=%@", 48, &OBJC_IVAR____TtC15ConversationKit18InCallControlsView_muteButton);
}

void key path getter for InCallControlsViewController.audioIsEnabled : InCallControlsViewController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_audioIsEnabled;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t InCallControlsViewController.audioIsEnabled.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

void InCallControlsViewController.audioIsEnabled.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    InCallControlsViewController.updateMuteAudioButton()(&OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_audioIsEnabled, "Updating mute audio button for audioIsEnabled=%@", 48, &OBJC_IVAR____TtC15ConversationKit18InCallControlsView_muteButton);
  }
}

uint64_t InCallControlsViewController.videoIsEnabled.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_videoIsEnabled;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void InCallControlsViewController.videoIsEnabled.setter(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_videoIsEnabled;
  OUTLINED_FUNCTION_6_0(v2 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_videoIsEnabled, a2);
  *(v2 + v4) = a1;
  InCallControlsViewController.updateMuteAudioButton()(&OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_videoIsEnabled, "Updating disable video button videoIsEnabled=%@", 47, &OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton);
  InCallControlsViewController.updateFlipCameraButton()();
}

void key path getter for InCallControlsViewController.videoIsEnabled : InCallControlsViewController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_videoIsEnabled;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void InCallControlsViewController.updateMuteAudioButton()(uint64_t a1, const char *a2, ...)
{
  OUTLINED_FUNCTION_238();
  v6 = v5;
  v8 = v7;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v9 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  OUTLINED_FUNCTION_37_22();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BC4BA940;
  v11 = *v8;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v17 = *(v3 + v11);
  v12 = String.init<A>(reflecting:)();
  v14 = v13;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v15 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)(v6, v4, 2, &dword_1BBC58000, v9, v15, v10, v17);

  v16 = (v3 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*v16)
  {
    [*(v16[2] + *v2) setSelected_];
  }
}

void InCallControlsViewController.updateFlipCameraButton()()
{
  v1 = v0;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA940;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_videoIsEnabled;
  swift_beginAccess();
  v15 = *(v1 + v4);
  v5 = String.init<A>(reflecting:)();
  v7 = v6;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  v8 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Updating flip camera button videoIsEnabled=%@", 45, 2, &dword_1BBC58000, v2, v8, v3, v15);

  v9 = (v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  swift_beginAccess();
  if (*v9)
  {
    v10 = *(v9[2] + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_flipCameraButton);
    if (*(v1 + v4) == 1)
    {
      v11 = one-time initialization token for shared;
      v12 = v10;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = ((*(*static Defaults.shared + 152))() & 1) != 0 || *(v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_representedLegacyCallIdentifier + 8) != 0;
    }

    else
    {
      v14 = v10;
      v13 = 0;
    }

    [v10 setEnabled_];
  }
}

uint64_t InCallControlsViewController.videoIsEnabled.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

void InCallControlsViewController.videoIsEnabled.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    InCallControlsViewController.updateMuteAudioButton()(&OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_videoIsEnabled, "Updating disable video button videoIsEnabled=%@", 47, &OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton);
    InCallControlsViewController.updateFlipCameraButton()();
  }
}

uint64_t InCallControlsViewController.isScreenSharing.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isScreenSharing;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for InCallControlsViewController.isScreenSharing : InCallControlsViewController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isScreenSharing;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void InCallControlsViewController.updateScreenShareButton()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  OUTLINED_FUNCTION_37_22();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC4BA940;
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isScreenSharing;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v8 = *(v0 + v2);
  v3 = String.init<A>(reflecting:)();
  v5 = v4;
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)(v6, v8);

  v7 = (v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*v7)
  {
    [*(v7[2] + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_screenShareButton) setSelected_];
  }
}

uint64_t InCallControlsViewController.isScreenSharing.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t InCallControlsViewController.cinematicFramingIsAvailable.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_cinematicFramingIsAvailable;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void InCallControlsViewController.cinematicFramingIsAvailable.setter()
{
  OUTLINED_FUNCTION_34_28();
  InCallControlsViewController.cinematicFramingIsAvailable.setter();
}

{
  OUTLINED_FUNCTION_238();
  v2 = v1;
  v4 = *v3;
  OUTLINED_FUNCTION_6_0(v0 + *v3, v3);
  *(v0 + v4) = v2;
  InCallControlsViewController.cinematicFramingIsAvailable.didset();
}

void key path getter for InCallControlsViewController.cinematicFramingIsAvailable : InCallControlsViewController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_cinematicFramingIsAvailable;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void InCallControlsViewController.cinematicFramingIsAvailable.didset()
{
  InCallControlsViewController.cinematicFramingIsAvailable.didset();
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v20 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21[4] = v3;
  v21[5] = v18;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = thunk for @escaping @callee_guaranteed () -> ();
  v21[3] = v1;
  v19 = _Block_copy(v21);

  static DispatchQoS.unspecified.getter();
  v21[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v16, v10, v19);
  _Block_release(v19);

  (*(v6 + 8))(v10, v4);
  (*(v12 + 8))(v16, v20);
  OUTLINED_FUNCTION_30_0();
}

void InCallControlsViewController.updateCinematicFramingButton()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BAA20;
  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_cinematicFramingIsEnabled;
  swift_beginAccess();
  v4 = String.init<A>(reflecting:)();
  v6 = v5;
  v7 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v8 = lazy protocol witness table accessor for type String and conformance String();
  *(v2 + 64) = v8;
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  v9 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_cinematicFramingIsAvailable;
  swift_beginAccess();
  v10 = String.init<A>(reflecting:)();
  *(v2 + 96) = v7;
  *(v2 + 104) = v8;
  *(v2 + 72) = v10;
  *(v2 + 80) = v11;
  v12 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Updating center stage button centerStageIsEnabled=%@ isAvailable=%@", 67, 2, &dword_1BBC58000, v1, v12, v2);

  v13 = (v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  swift_beginAccess();
  if (*v13)
  {
    [*(v13[2] + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCinematicFramingButton) setEnabled_];
    if (*v13)
    {
      [*(v13[2] + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCinematicFramingButton) setSelected_];
    }
  }
}

uint64_t InCallControlsViewController.cinematicFramingIsAvailable.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

void InCallControlsViewController.cinematicFramingIsAvailable.modify()
{
  OUTLINED_FUNCTION_34_28();
  InCallControlsViewController.cinematicFramingIsAvailable.modify();
}

{
  OUTLINED_FUNCTION_238();
  v1 = v0;
  swift_endAccess();
  if ((v1 & 1) == 0)
  {
    InCallControlsViewController.cinematicFramingIsAvailable.didset();
  }
}

uint64_t InCallControlsViewController.cinematicFramingIsEnabled.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_cinematicFramingIsEnabled;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for InCallControlsViewController.cinematicFramingIsEnabled : InCallControlsViewController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_cinematicFramingIsEnabled;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void closure #1 in InCallControlsViewController.cinematicFramingIsAvailable.didset()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    InCallControlsViewController.updateCinematicFramingButton()();
  }
}

uint64_t InCallControlsViewController.cinematicFramingIsEnabled.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t InCallControlsViewController.effectsAreAvailable.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_effectsAreAvailable;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t InCallControlsViewController.effectsAreAvailable.setter(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_effectsAreAvailable;
  result = OUTLINED_FUNCTION_6_0(v2 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_effectsAreAvailable, a2);
  *(v2 + v4) = a1;
  return result;
}

uint64_t InCallControlsViewController.shouldShowLeaveButton.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_shouldShowLeaveButton;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t InCallControlsViewController.isExpanded.setter(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  v7 = OUTLINED_FUNCTION_6_0(v3 + *a2, a2);
  *(v3 + v6) = a1;
  return a3(v7);
}

void key path getter for InCallControlsViewController.shouldShowLeaveButton : InCallControlsViewController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_shouldShowLeaveButton;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t InCallControlsViewController.shouldShowLeaveButton.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t InCallControlsViewController.topInset.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void *InCallControlsViewController.audioButton.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (!*v1)
  {
    return 0;
  }

  v2 = *(v1[2] + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_audioRouteButton);
  v3 = v2;
  return v2;
}

uint64_t InCallControlsViewController.delegate.modify()
{
  v0 = OUTLINED_FUNCTION_39_6();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_47(v1);
  OUTLINED_FUNCTION_55_0(v2, OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_delegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_287_0(Strong);
  return OUTLINED_FUNCTION_28_3();
}

uint64_t InCallControlsViewController.participantDelegate.modify()
{
  v0 = OUTLINED_FUNCTION_39_6();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_47(v1);
  OUTLINED_FUNCTION_55_0(v2, OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantDelegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_287_0(Strong);
  return OUTLINED_FUNCTION_28_3();
}

uint64_t InCallControlsViewController.delegate.setter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = OUTLINED_FUNCTION_3_37(*a3);
  OUTLINED_FUNCTION_3_5(v5, v6);
  *(v3 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t InCallControlsViewController.participantsViewControllerDelegate.modify()
{
  v0 = OUTLINED_FUNCTION_39_6();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_47(v1);
  OUTLINED_FUNCTION_55_0(v2, OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantsViewControllerDelegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_287_0(Strong);
  return OUTLINED_FUNCTION_28_3();
}

uint64_t key path setter for InCallControlsViewController.delegate : InCallControlsViewController(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 8);
  v6 = *a2 + *a5;
  OUTLINED_FUNCTION_3_5(v6, v8);
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

void InCallControlsViewController.menuHostViewController.setter(void *a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_menuHostViewController);
  OUTLINED_FUNCTION_3_5(v5, v6);
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

uint64_t InCallControlsViewController.menuHostViewController.modify()
{
  v0 = OUTLINED_FUNCTION_39_6();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_47(v1);
  OUTLINED_FUNCTION_55_0(v2, OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_menuHostViewController);
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_287_0(Strong);
  return OUTLINED_FUNCTION_28_3();
}

void InCallControlsViewController.menuHostViewController.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_21_38(a1);
  if (v3)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v1);
}

uint64_t InCallControlsViewController.description.getter()
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS4name_ypSg5valuetGMd, &_ss23_ContiguousArrayStorageCySS4name_ypSg5valuetGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BB980;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001BC505240;
  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_localParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(inited + 72) = type metadata accessor for Participant(0);
  __swift_allocate_boxed_opaque_existential_1((inited + 48));
  OUTLINED_FUNCTION_3_114();
  _s15ConversationKit11ParticipantVWOcTm_9(&v0[v3], v4, v5);
  *(inited + 80) = 1701080941;
  *(inited + 88) = 0xE400000000000000;
  v6 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(inited + 96) = v0[v6];
  *(inited + 120) = &type metadata for InCallControlsMode;
  *(inited + 128) = 0xD000000000000018;
  *(inited + 136) = 0x80000001BC50B8F0;
  v7 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v8 = *&v0[v7];
  if (v8)
  {
    v9 = type metadata accessor for InCallControlsCollectionViewController(0);
  }

  else
  {
    v9 = 0;
    *(inited + 152) = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v8;
  *(inited + 168) = v9;
  v13[3] = ObjectType;
  v13[0] = v0;
  v10 = v8;
  v11 = v0;
  return String.init(namedPropertyValues:for:)(inited, v13);
}

id InCallControlsViewController.__allocating_init(localParticipant:remoteParticipants:mode:gridLayoutStyle:representedLegacyCallIdentifier:isLocalMemberAuthorizedToChangeGroupMembership:isLinkSharingSupported:menuHostViewController:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, int a7, int a8, void *a9, uint64_t a10)
{
  v14 = a3;
  v17 = objc_allocWithZone(v10);
  return InCallControlsViewController.init(localParticipant:remoteParticipants:mode:gridLayoutStyle:representedLegacyCallIdentifier:isLocalMemberAuthorizedToChangeGroupMembership:isLinkSharingSupported:menuHostViewController:)(a1, a2, v14, a4, a5, a6, 0, 0, a9, a10);
}

id InCallControlsViewController.init(localParticipant:remoteParticipants:mode:gridLayoutStyle:representedLegacyCallIdentifier:isLocalMemberAuthorizedToChangeGroupMembership:isLinkSharingSupported:menuHostViewController:)(uint64_t a1, uint64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v11 = v10;
  swift_getObjectType();

  v16 = (v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_groupName);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_representedLegacyCallIdentifier);
  *v17 = 0;
  v17[1] = 0;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_tableViewSeparator) = 0;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController) = 0;
  v18 = v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_topInset) = 0x4043800000000000;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isExpanded) = 0;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_audioIsEnabled) = 1;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isScreenSharing) = 0;
  v19 = *a4;
  v20 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_effectsAreAvailable;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3_15();
    swift_once();
  }

  v21 = static Defaults.shared;
  *(v11 + v20) = (*(*static Defaults.shared + 200))() & 1;
  OUTLINED_FUNCTION_36_26(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_delegate);
  OUTLINED_FUNCTION_36_26(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantDelegate);
  OUTLINED_FUNCTION_36_26(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantsViewControllerDelegate);
  v22 = v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_menuHostViewController;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_menuHostViewController + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_114();
  _s15ConversationKit11ParticipantVWOcTm_9(a1, v11 + v23, v24);
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_controlsButtonRowCount) = 0;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_gridLayoutStyle) = v19;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode) = a3;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_shouldShowLeaveButton) = 0;
  *v17 = a5;
  v17[1] = a6;

  LOBYTE(v21) = (*(*v21 + 152))(v25);

  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_videoIsEnabled) = v21 & 1 | (a6 != 0);
  OUTLINED_FUNCTION_3_5(v22, v37);
  *(v22 + 8) = a10;
  swift_unknownObjectWeakAssign();
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_cinematicFramingIsEnabled) = 0;
  *(v11 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_cinematicFramingIsAvailable) = 0;
  OUTLINED_FUNCTION_3_0();
  v28 = objc_msgSendSuper2(v26, v27);
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 defaultCenter];
  [v31 addObserver:v30 selector:sel_handleLegacyCallStatusDidChangeNotification_ name:*MEMORY[0x1E69D8E58] object:0];

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v32 = static OS_os_log.conversationKit;
  v33 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Created InCallControlsViewController", 36, 2, &dword_1BBC58000, v32, v33, MEMORY[0x1E69E7CC0]);

  OUTLINED_FUNCTION_13_56();
  _s15ConversationKit11ParticipantVWOhTm_11(a1, v34);
  return v30;
}

id InCallControlsViewController.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_247()) initWithCoder_];

  return v1;
}

void InCallControlsViewController.init(coder:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_groupName);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_representedLegacyCallIdentifier);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_tableViewSeparator) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController) = 0;
  v4 = v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_topInset) = 0x4043800000000000;
  *(v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_audioIsEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isScreenSharing) = 0;
  v5 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_effectsAreAvailable;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3_15();
    a1 = swift_once();
  }

  *(v1 + v5) = (*(*static Defaults.shared + 200))(a1) & 1;
  OUTLINED_FUNCTION_23_39(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_delegate);
  OUTLINED_FUNCTION_23_39(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantDelegate);
  OUTLINED_FUNCTION_23_39(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantsViewControllerDelegate);
  OUTLINED_FUNCTION_23_39(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_menuHostViewController);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall InCallControlsViewController.embedEffectsBrowserViewController(_:)(UIViewController *a1)
{
  [v1 loadViewIfNeeded];
  v3 = &v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 5);
    v20 = v5;
    v21 = *(v3 + 6);
    v7 = *(v3 + 3);
    v6 = *(v3 + 4);
    v10 = v3 + 8;
    v9 = *(v3 + 1);
    v8 = *(v10 + 1);
    v11 = v21;
    v12 = v4;
    v13 = v9;
    v14 = v8;
    v15 = v7;

    v16 = v5;
    [v1 addChildViewController_];
    v17 = InCallControlsViewController.contentView.getter();
    v18 = [(UIViewController *)a1 view];
    [v17 insertSubview:v18 below:v14];

    [(UIViewController *)a1 didMoveToParentViewController:v1];
    outlined consume of InCallControlsViewController.ViewContent?(v4, v9, v8, v7, v6, v20, v21);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)(v19);
  }
}

void InCallControlsViewController.setUpCollectionViewConstraints()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (!v3)
  {
    return;
  }

  v4 = *&v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_tableViewSeparator];
  if (!v4)
  {
    return;
  }

  v5 = &v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent];
  swift_beginAccess();
  v6 = *v5;
  if (!*v5)
  {
    return;
  }

  v7 = v3;
  v8 = v4;
  v9 = v6;
  v10 = [v1 childViewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v69[0] = v7;
  MEMORY[0x1EEE9AC00](v69[0]);
  v64 = v69;
  v13 = v12;
  v14 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v63, v11);

  v67 = v8;
  if (v14)
  {
    v15 = [v1 view];
    if (!v15)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v16 = v15;
    v17 = [v15 subviews];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = [v13 view];

    if (!v19)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v69[0] = v19;
    MEMORY[0x1EEE9AC00](v20);
    v64 = v69;
    v21 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v63, v18);

    if (v21)
    {

      v8 = v67;
    }

    else
    {
      v26 = [v13 &_OBJC_LABEL_PROTOCOL___CNUIObjectViewControllerDelegate];

      if (!v26)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      [v26 setTranslatesAutoresizingMaskIntoConstraints_];

      v27 = InCallControlsViewController.contentView.getter();
      v28 = [v13 &_OBJC_LABEL_PROTOCOL___CNUIObjectViewControllerDelegate];

      v8 = v67;
      if (!v28)
      {
LABEL_39:
        __break(1u);
        return;
      }

      [v27 addSubview_];
    }
  }

  else
  {

    [v1 addChildViewController_];
    v22 = [v13 view];

    if (!v22)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    [v22 setTranslatesAutoresizingMaskIntoConstraints_];

    v23 = InCallControlsViewController.contentView.getter();
    v24 = [v13 view];

    if (!v24)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    [v23 addSubview_];

    [v13 didMoveToParentViewController_];
    v25 = &v13[OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_inCallControlsCollectionViewControllerDelegate];
    swift_beginAccess();
    *(v25 + 1) = &protocol witness table for InCallControlsViewController;
    swift_unknownObjectWeakAssign();
  }

  v29 = [v13 view];

  if (!v29)
  {
    __break(1u);
    goto LABEL_31;
  }

  v65 = v5;
  v30 = [v29 bottomAnchor];

  v68 = v9;
  v31 = [v9 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:-0.0];

  LODWORD(v33) = 1132068864;
  [v32 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BC4BA7F0;
  v35 = [v13 view];

  if (!v35)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v66 = v32;
  v36 = [v35 topAnchor];

  v37 = [v8 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v34 + 32) = v38;
  v39 = [v13 &_OBJC_LABEL_PROTOCOL___CNUIObjectViewControllerDelegate];

  if (!v39)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v40 = [v39 leadingAnchor];

  v41 = v68;
  v42 = [v68 leadingAnchor];
  v43 = [v40 constraintEqualToAnchor:v42 constant:0.0];

  *(v34 + 40) = v43;
  v44 = [v13 view];

  if (!v44)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v45 = objc_opt_self();
  v46 = [v44 trailingAnchor];

  v47 = [v41 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:-0.0];

  v49 = v66;
  *(v34 + 48) = v48;
  *(v34 + 56) = v49;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  v50 = v49;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v45 activateConstraints_];

  v52 = [v13 view];
  v53 = v67;
  if (v52)
  {
    if (*&v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_controlsButtonRowCount] == 1)
    {
      v54 = v65;
      swift_beginAccess();
      if (*v54)
      {
        v55 = v52;
        MEMORY[0x1BFB20CC0]();
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      swift_endAccess();
      v56 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isExpanded;
      swift_beginAccess();
      InCallControlsViewController.updateControlsVisibility(forExpandedState:)(v1[v56]);
    }
  }

  v57 = *&v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_representedLegacyCallIdentifier + 8];
  if (v57)
  {
    v58 = *&v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_representedLegacyCallIdentifier];
    v59 = objc_opt_self();

    v60 = [v59 sharedInstance];
    v61 = MEMORY[0x1BFB209B0](v58, v57);

    v62 = [v60 callWithUniqueProxyIdentifier_];

    if (v62)
    {
      InCallControlsViewController.updateToRepresentLegacyCall(_:)();
    }
  }
}

void InCallControlsViewController.updateToRepresentLegacyCall(_:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v128 = &v122 - v8;
  v131 = type metadata accessor for Participant.CountdownInfo(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMR);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  v135 = &v122 - v15;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v129 = v17;
  v130 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v137 = v19 - v18;
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  v136 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v24 = OUTLINED_FUNCTION_22(v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v122 - v25;
  v27 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  v133 = &v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v122 - v33;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v132 = &v122 - v37;
  if ([v2 isConversation])
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v38 = static OS_os_log.conversationKit;
    v39 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_37_22();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1BC4BA940;
    v138[0] = v2;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    v41 = v2;
    v42 = String.init<A>(reflecting:)();
    v44 = v43;
    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v40 + 32) = v42;
    *(v40 + 40) = v44;
    os_log(_:dso:log:type:_:)("Call is not a legacy 1:1 video call", 35, 2, &dword_1BBC58000, v38, v39, v40);
LABEL_25:

    goto LABEL_35;
  }

  v123 = v6;
  v124 = v29;
  v125 = v12;
  v126 = (v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_representedLegacyCallIdentifier);
  v127 = v0;
  v46 = *(v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_representedLegacyCallIdentifier);
  v45 = *(v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_representedLegacyCallIdentifier + 8);

  v134 = v2;
  v47 = [v2 uniqueProxyIdentifier];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  if (v45)
  {
    if (v46 == v48 && v45 == v50)
    {

      v53 = v134;
    }

    else
    {
      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v53 = v134;
      if ((v52 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v54 = v127;
    InCallControlsViewController.participants.getter();
    specialized Collection.first.getter(v55, v26);

    if (__swift_getEnumTagSinglePayload(v26, 1, v27) != 1)
    {
      v34 = v26;
      goto LABEL_29;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  }

  else
  {

    v53 = v134;
  }

LABEL_16:
  v56 = [v53 handle];
  if (!v56)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v92 = static OS_os_log.conversationKit;
    v93 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_37_22();
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_1BC4BA940;
    v138[0] = v53;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    v95 = v53;
    v96 = String.init<A>(reflecting:)();
    v98 = v97;
    *(v94 + 56) = MEMORY[0x1E69E6158];
    *(v94 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v94 + 32) = v96;
    *(v94 + 40) = v98;
    os_log(_:dso:log:type:_:)("Unable to determine remote participant for call", 47, 2, &dword_1BBC58000, v92, v93, v94);
    goto LABEL_25;
  }

  v57 = v56;
  Date.init()();
  swift_storeEnumTagMultiPayload();
  UUID.init()();
  v58 = v57;
  v122 = static Colors.ParticipantGradients.gradient(for:)(v58);
  v59 = v131;
  __swift_storeEnumTagSinglePayload(v135, 1, 1, v131);
  v60 = type metadata accessor for ParticipantContactDetailsCache();
  v61 = lazy protocol witness table accessor for type TUCall and conformance TUCall();
  v62 = v61;
  if (one-time initialization token for queue != -1)
  {
    v61 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v61);
  v63 = v134;
  *(&v122 - 4) = v60;
  *(&v122 - 3) = v63;
  *(&v122 - 2) = v62;
  OS_dispatch_queue.sync<A>(execute:)();

  v64 = v138[0];
  v65 = &v34[v27[7]];
  *(v65 + 4) = 0;
  *v65 = 0u;
  *(v65 + 1) = 0u;
  v66 = &v34[v27[9]];
  v34[v27[10]] = 0;
  *&v34[v27[11]] = MEMORY[0x1E69E7CD0];
  *&v34[v27[12]] = 0;
  outlined init with take of Participant.State(v136, v34, type metadata accessor for Participant.State);
  (*(v129 + 32))(&v34[v27[5]], v137, v130);
  v67 = &v34[v27[6]];
  *v67 = 65792;
  v67[4] = 1;
  outlined consume of Participant.RemoteIdentifiers?(*v65, *(v65 + 1), *(v65 + 2), *(v65 + 3), *(v65 + 4));
  *v65 = v57;
  *(v65 + 8) = xmmword_1BC4BB7D0;
  *(v65 + 3) = 0;
  *(v65 + 4) = 0;
  *&v34[v27[8]] = v122;
  *v66 = 0;
  *(v66 + 1) = 0;
  v34[v27[15]] = 1;
  v34[v27[13]] = 0;
  v68 = v135;
  if (__swift_getEnumTagSinglePayload(v135, 1, v59) == 1)
  {
    v69 = v59;
    type metadata accessor for Date();
    v70 = v128;
    OUTLINED_FUNCTION_17_49();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
    v75 = v123;
    OUTLINED_FUNCTION_17_49();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
    v80 = v125;
    OUTLINED_FUNCTION_17_49();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
    v85 = *(v69 + 20);
    OUTLINED_FUNCTION_17_49();
    v86 = v135;
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
    outlined assign with take of Date?(v70, v80);
    outlined assign with take of Date?(v75, v80 + v85);
    *(v80 + *(v69 + 24)) = 0;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v86, 1, v69);
    v54 = v127;
    if (EnumTagSinglePayload != 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v86, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_49();
    v80 = v125;
    outlined init with take of Participant.State(v68, v125, v99);
    v54 = v127;
  }

  OUTLINED_FUNCTION_14_49();
  outlined init with take of Participant.State(v80, &v34[v100], v101);
  *&v34[v27[16]] = v64;
  v53 = v134;
LABEL_29:
  v102 = v34;
  v103 = v132;
  outlined init with take of Participant.State(v102, v132, type metadata accessor for Participant);
  v104 = [v53 status];
  v105 = v133;
  if (v104 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd, &_s15ConversationKit24ParticipantVideoProvider_pMR);
    lazy protocol witness table accessor for type Participant.VideoProviderType and conformance Participant.VideoProviderType();
    v106 = Dictionary.init(dictionaryLiteral:)();
    LOBYTE(v140) = 1;
    v142 = v106;
    v143 = 1;
    v144 = 0;
    v145 = 0;
    v146 = 1;
    v147 = 0;
    v148 = 0u;
    v149 = 0u;
    v150 = 1;
    v151 = 0;
    memset(v138, 0, 24);
    v138[3] = 1;
    bzero(&v139, 0xB1uLL);
    Participant.copresenceInfo.getter(v141);
    Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v141, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v138, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    InCallControlsViewController.mode.setter(0, v107);
    v108 = [v53 isSendingVideo];
    InCallControlsViewController.videoIsEnabled.setter(v108, v109);
  }

  else
  {
    Participant.asWaiting()();
    InCallControlsViewController.mode.setter(32, v110);
  }

  v111 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_shouldShowLeaveButton;
  OUTLINED_FUNCTION_3_5(v54 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_shouldShowLeaveButton, v138);
  *(v54 + v111) = 1;
  v112 = [v53 uniqueProxyIdentifier];
  v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v115 = v114;

  v116 = v126;
  *v126 = v113;
  v116[1] = v115;

  v117 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
  swift_beginAccess();
  v118 = *(v54 + v117);
  if (v118)
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMR);
    v119 = (*(v124 + 80) + 32) & ~*(v124 + 80);
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_1BC4BA940;
    _s15ConversationKit11ParticipantVWOcTm_9(v105, v120 + v119, type metadata accessor for Participant);
    v140 = 513;
    v121 = v118;
    InCallControlsCollectionViewController.update(with:updateReason:)();
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();

    _s15ConversationKit11ParticipantVWOhTm_11(v105, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOhTm_11(v103, type metadata accessor for Participant);
  }

  else
  {
    _s15ConversationKit11ParticipantVWOhTm_11(v105, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOhTm_11(v103, type metadata accessor for Participant);
    swift_endAccess();
  }

LABEL_35:
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall InCallControlsViewController.loadView()()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3_15();
    swift_once();
  }

  if ((*(*static Defaults.shared + 336))())
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v3 = one-time initialization token for background;
    v4 = v2;
    v5 = v4;
    if (v3 != -1)
    {
      swift_once();
      v4 = v5;
    }

    [v4 setBackgroundColor_];
  }

  else
  {
    if (one-time initialization token for backgroundBlurEffect != -1)
    {
      swift_once();
    }

    v5 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  }

  [v1 setView_];
}

Swift::Void __swiftcall InCallControlsViewController.viewDidLoad()()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v147.receiver = v0;
  v147.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v147, sel_viewDidLoad);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 _setCornerRadius_];

    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v4 setClipsToBounds_];

      v146[18] = MEMORY[0x1E69E7CC0];
      v6 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
      v7 = InCallControlsViewController.contentView.getter();
      [v7 addLayoutGuide_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BC370;
      v9 = [v6 leadingAnchor];
      v10 = InCallControlsViewController.contentView.getter();
      v11 = [v10 leadingAnchor];

      v12 = OUTLINED_FUNCTION_35_19();
      *(inited + 32) = v12;
      v13 = [v6 trailingAnchor];
      v14 = InCallControlsViewController.contentView.getter();
      v15 = [v14 trailingAnchor];

      v16 = OUTLINED_FUNCTION_35_19();
      *(inited + 40) = v16;
      v143 = v6;
      v17 = [v6 topAnchor];
      v18 = InCallControlsViewController.contentView.getter();
      v19 = [v18 topAnchor];

      v20 = OUTLINED_FUNCTION_35_19();
      *(inited + 48) = v20;
      specialized Array.append<A>(contentsOf:)(inited);
      v21 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV6DrawerO_Tt0g5(0);
      v22 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
      [v22 setImage_];
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_3_15();
        swift_once();
      }

      OUTLINED_FUNCTION_38_21();
      v139 = v22;
      if ((*(v23 + 336))())
      {
        if (one-time initialization token for flatHotdog != -1)
        {
          swift_once();
        }

        [v22 setTintColor_];
        v24 = v22;
      }

      else
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIVibrancyEffect, 0x1E69DD248);
        v25 = static UIVibrancyEffect.inCallControlsEffect.getter();
        v26 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

        v27 = v22;
        v24 = v26;
        [v24 bounds];
        [v27 setFrame_];
        [v27 setAutoresizingMask_];

        v28 = [objc_opt_self() whiteColor];
        [v27 setTintColor_];

        v29 = [v24 contentView];
        [v29 addSubview_];
      }

      v30 = v24;
      [v30 setTranslatesAutoresizingMaskIntoConstraints_];
      v31 = InCallControlsViewController.contentView.getter();
      [v31 addSubview_];

      v32 = swift_initStackObject();
      *(v32 + 16) = xmmword_1BC4BA7F0;
      v33 = [v30 widthAnchor];
      [v21 size];
      v34 = [v33 constraintEqualToConstant_];

      *(v32 + 32) = v34;
      v35 = [v30 heightAnchor];
      v140 = v21;
      [v21 size];
      v37 = [v35 constraintEqualToConstant_];

      *(v32 + 40) = v37;
      v38 = [v30 centerXAnchor];
      v39 = [v143 centerXAnchor];
      v40 = OUTLINED_FUNCTION_0_122();
      v42 = [v40 v41];

      *(v32 + 48) = v42;
      v142 = v30;
      v43 = [v30 topAnchor];
      v44 = [v143 topAnchor];
      v45 = OUTLINED_FUNCTION_0_122();
      v47 = [v45 v46];

      *(v32 + 56) = v47;
      specialized Array.append<A>(contentsOf:)(v32);
      OUTLINED_FUNCTION_38_21();
      v49 = (*(v48 + 208))();
      OUTLINED_FUNCTION_38_21();
      v51 = (*(v50 + 200))();
      OUTLINED_FUNCTION_38_21();
      v53 = (*(v52 + 152))();
      v54 = (v49 & 1) == 0;
      if (*&v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_representedLegacyCallIdentifier + 8])
      {
        v55 = &off_1E7FE9000;
        if ((v49 | v51))
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (((v49 | v51) & 1) == 0)
        {
          v54 = 3;
        }

        v55 = &off_1E7FE9000;
        if ((v49 | v51) & 1 | ((v53 & 1) == 0))
        {
LABEL_13:
          v56 = objc_allocWithZone(type metadata accessor for InCallControlsView());
          v57 = InCallControlsView.init(frame:capabilities:)(v54);
          v58 = v57 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_dataSource;
          OUTLINED_FUNCTION_3_5(v57 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_dataSource, v146);
          *(v58 + 1) = &protocol witness table for InCallControlsViewController;
          swift_unknownObjectWeakAssign();
          OUTLINED_FUNCTION_16_51(*(v57 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_muteButton), v59, v60, sel_didTapMuteButton_);
          OUTLINED_FUNCTION_16_51(*(v57 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_flipCameraButton), v61, v62, sel_didTapFlipCameraButton_);
          OUTLINED_FUNCTION_16_51(*(v57 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveButton), v63, v64, sel_didTapJoinLeaveButton_);
          OUTLINED_FUNCTION_16_51(*(v57 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton), v65, v66, sel_didTapToggleCameraButton_);
          OUTLINED_FUNCTION_16_51(*(v57 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_screenShareButton), v67, v68, sel_didTapScreenShareButton_);
          OUTLINED_FUNCTION_16_51(*(v57 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCinematicFramingButton), v69, v70, sel_didTapToggleCinematicFramingButton_);
          v71 = v57;
          [v71 setTranslatesAutoresizingMaskIntoConstraints_];
          v72 = InCallControlsViewController.contentView.getter();
          [v72 addSubview_];

          v73 = [v71 topAnchor];
          v74 = [v143 topAnchor];
          v75 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_topInset;
          OUTLINED_FUNCTION_3_0();
          swift_beginAccess();
          v76 = [v73 &selRef_uniqueProxyIdentifier + 6];

          v77 = swift_initStackObject();
          *(v77 + 16) = xmmword_1BC4BC370;
          *(v77 + 32) = v76;
          v141 = v76;
          v78 = [v71 v55[478]];
          v79 = [v143 v55[478]];
          v80 = [v78 constraintEqualToAnchor_];

          *(v77 + 40) = v80;
          v81 = [v71 trailingAnchor];
          v82 = [v143 trailingAnchor];
          v83 = OUTLINED_FUNCTION_26_1();
          v85 = [v83 v84];

          *(v77 + 48) = v85;
          specialized Array.append<A>(contentsOf:)(v77);
          if (one-time initialization token for separatorStyle != -1)
          {
            swift_once();
          }

          v86 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
          [v86 setTranslatesAutoresizingMaskIntoConstraints_];
          v87 = [v86 contentView];
          v88 = [objc_opt_self() whiteColor];
          v89 = OUTLINED_FUNCTION_26_1();
          [v89 v90];

          v91 = InCallControlsViewController.contentView.getter();
          [v91 addSubview_];

          v92 = *&v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_tableViewSeparator];
          *&v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_tableViewSeparator] = v86;
          v93 = v86;

          v94 = swift_initStackObject();
          *(v94 + 16) = xmmword_1BC4BA920;
          v95 = [v93 topAnchor];
          v96 = [v71 bottomAnchor];

          v97 = OUTLINED_FUNCTION_26_1();
          v99 = [v97 v98];

          LODWORD(v100) = 1144750080;
          [v99 setPriority_];
          *(v94 + 32) = v99;
          v101 = [v93 topAnchor];
          v102 = [v143 topAnchor];
          v103 = OUTLINED_FUNCTION_26_1();
          v105 = [v103 v104];

          LODWORD(v106) = 1148846080;
          [v105 setPriority_];
          *(v94 + 40) = v105;
          v107 = [v93 leadingAnchor];
          v108 = [v143 leadingAnchor];
          v109 = OUTLINED_FUNCTION_26_1();
          v111 = [v109 v110];

          *(v94 + 48) = v111;
          v112 = [v93 trailingAnchor];
          v113 = [v143 trailingAnchor];
          v114 = OUTLINED_FUNCTION_26_1();
          v116 = [v114 v115];

          *(v94 + 56) = v116;
          v117 = [v93 heightAnchor];
          v118 = [v117 constraintEqualToConstant_];

          *(v94 + 64) = v118;
          specialized Array.append<A>(contentsOf:)(v94);
          v119 = objc_opt_self();
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v119 activateConstraints_];

          v121 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow;
          v122 = *(*(v71 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow) + 16);
          *&v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_controlsButtonRowCount] = v122;
          v138 = v71;
          if (v122 >= 2)
          {

            v123 = *(v71 + v121);
            if (*(v123 + 16) < 2uLL)
            {
              __break(1u);
            }

            else
            {
              v124 = *(v123 + 40);
              if (!(v124 >> 62))
              {
                swift_bridgeObjectRetain_n();
                dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);

LABEL_20:
                v125 = &v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent];
                OUTLINED_FUNCTION_3_5(&v1[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent], v145);
                v126 = *(v125 + 1);
                v127 = *(v125 + 2);
                v128 = *(v125 + 3);
                v130 = *(v125 + 4);
                v129 = *(v125 + 5);
                v136 = *(v125 + 6);
                v137 = *v125;
                *v125 = v143;
                *(v125 + 1) = v142;
                *(v125 + 2) = v138;
                *(v125 + 3) = v141;
                *(v125 + 5) = 0;
                *(v125 + 6) = 0;
                *(v125 + 4) = v124;
                v144 = v138;
                v131 = v141;
                v132 = v143;
                outlined consume of InCallControlsViewController.ViewContent?(v137, v126, v127, v128, v130, v129, v136);
                v133 = InCallControlsViewController.updateJoinLeaveButton()();
                InCallControlsViewController.updateMuteAudioButton()(&OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_audioIsEnabled, "Updating mute audio button for audioIsEnabled=%@", 48, &OBJC_IVAR____TtC15ConversationKit18InCallControlsView_muteButton, v133);
                InCallControlsViewController.updateMuteAudioButton()(&OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_videoIsEnabled, "Updating disable video button videoIsEnabled=%@", 47, &OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton);
                InCallControlsViewController.updateScreenShareButton()();
                InCallControlsViewController.updateFlipCameraButton()();
                InCallControlsViewController.updateCinematicFramingButton()();
                v134 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isExpanded;
                OUTLINED_FUNCTION_3_0();
                swift_beginAccess();
                InCallControlsViewController.updateControlsVisibility(forExpandedState:)(v1[v134]);

                OUTLINED_FUNCTION_30_0();
                return;
              }
            }

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);

            v135 = _bridgeCocoaArray<A>(_:)();

            v124 = v135;
            goto LABEL_20;
          }

          v124 = swift_allocObject();
          *(v124 + 16) = xmmword_1BC4BAC30;
          *(v124 + 32) = v93;
          goto LABEL_20;
        }
      }

      v54 = 2;
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall InCallControlsViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsUpdateConstraints];

    InCallControlsViewController.setUpCollectionViewConstraints()();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall InCallControlsViewController.willMove(toParent:)(UIViewController_optional *toParent)
{
  OUTLINED_FUNCTION_247();
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  [(UIViewController_optional *)&v6 willMoveToParentViewController:?];
  if (v1)
  {
    v3 = objc_opt_self();
    v4 = v1;
    v5 = [v3 traitCollectionWithUserInterfaceStyle_];
    [v4 setOverrideTraitCollection:v5 forChildViewController:v2];
  }
}

Swift::Void __swiftcall InCallControlsViewController.didMove(toParent:)(UIViewController_optional *toParent)
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_247();
  v71.receiver = v2;
  v71.super_class = swift_getObjectType();
  [(UIViewController_optional *)&v71 didMoveToParentViewController:?];
  if (v1)
  {
    v3 = [v1 viewIfLoaded];
    if (v3)
    {
      v4 = v3;
      v5 = &v2[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v6 = *v5;
      if (*v5)
      {
        v70 = MEMORY[0x1E69E7CC0];
        v7 = objc_allocWithZone(MEMORY[0x1E69DCC20]);
        v69 = v6;
        v8 = [v7 init];
        [v4 addLayoutGuide_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1BC4BA930;
        v10 = [v8 leadingAnchor];
        v11 = [v4 leadingAnchor];
        v12 = OUTLINED_FUNCTION_2_105();
        v14 = [v12 v13];

        *(v9 + 32) = v14;
        v15 = [v8 trailingAnchor];
        v16 = [v4 trailingAnchor];
        v17 = OUTLINED_FUNCTION_2_105();
        v19 = [v17 v18];

        *(v9 + 40) = v19;
        specialized Array.append<A>(contentsOf:)(v9);
        v20 = objc_opt_self();
        v21 = [v20 currentDevice];
        v22 = [v21 userInterfaceIdiom];

        if (v22 == 1 || (v23 = [v20 currentDevice], v24 = objc_msgSend(v23, sel_userInterfaceIdiom), v23, v24 == 5))
        {
          v25 = [v8 heightAnchor];
          v26 = [v4 widthAnchor];
          Layout.MultiwayFaceTime.init()(v72);
          v27 = OUTLINED_FUNCTION_2_105();
          v29 = [v27 v28];

          v30 = [v8 topAnchor];
          v31 = [v4 safeAreaLayoutGuide];
          v32 = [v31 topAnchor];

          Layout.MultiwayFaceTime.init()(&v73);
          v33 = OUTLINED_FUNCTION_0_122();
          v35 = [v33 v34];

          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_1BC4BAC30;
          v37 = [v8 bottomAnchor];
          v38 = [v4 safeAreaLayoutGuide];
          v39 = [v38 bottomAnchor];

          Layout.MultiwayFaceTime.init()(&v74);
          v40 = OUTLINED_FUNCTION_0_122();
          v42 = [v40 v41];
        }

        else
        {
          v43 = [v8 topAnchor];
          v44 = [v4 safeAreaLayoutGuide];
          v45 = [v44 topAnchor];

          Layout.MultiwayFaceTime.init()(&v73);
          v46 = OUTLINED_FUNCTION_2_105();
          v29 = [v46 v47];

          v48 = [v8 topAnchor];
          v49 = [v4 safeAreaLayoutGuide];
          v50 = [v49 topAnchor];

          Layout.MultiwayFaceTime.init()(&v74);
          v51 = OUTLINED_FUNCTION_0_122();
          v35 = [v51 v52];

          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_1BC4BAC30;
          v37 = [v8 bottomAnchor];
          v39 = [v4 bottomAnchor];
          v53 = OUTLINED_FUNCTION_0_122();
          v42 = [v53 v54];
        }

        v55 = v42;

        *(v36 + 32) = v55;
        specialized Array.append<A>(contentsOf:)(v36);
        [v4 bounds];
        if (v57 >= v56)
        {
          v58 = v29;
        }

        else
        {
          v58 = v35;
        }

        v59 = v58;
        MEMORY[0x1BFB20CC0]();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_beginAccess();
        if (*v5)
        {
          v60 = *(v5 + 5);
          *(v5 + 5) = v35;
          v61 = v35;

          if (*v5)
          {
            v62 = *(v5 + 6);
            *(v5 + 6) = v29;
            v63 = v29;
          }
        }

        swift_endAccess();
        v64 = [v69 heightAnchor];
        v65 = [v8 heightAnchor];
        v66 = [v64 constraintEqualToAnchor_];

        MEMORY[0x1BFB20CC0]();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v67 = objc_opt_self();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v67 activateConstraints_];
      }

      else
      {
      }
    }
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall InCallControlsViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  OUTLINED_FUNCTION_247();
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_traitCollectionDidChange_);
  v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3)
  {
    v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_collectionView;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    [*(v3 + v4) reloadData];
  }
}

Swift::Void __swiftcall InCallControlsViewController.updateViewConstraints()()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 parentViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 viewIfLoaded];

    if (v4)
    {
      v5 = &v0[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      if (*v5)
      {
        v6 = *(v5 + 6);
        if (v6)
        {
          v7 = *(v5 + 5);
          if (v7)
          {
            v8 = v6;
            v9 = v7;
            [v4 bounds];
            [v8 setActive_];
            [v4 bounds];
            [v9 setActive_];

            v4 = v9;
          }
        }
      }
    }
  }

  v14.receiver = v0;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_updateViewConstraints);
}

Swift::Void __swiftcall InCallControlsViewController.viewDidLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLayoutSubviews);
  InCallControlsViewController.updateViewConstraints()();
}

uint64_t InCallControlsViewController.handle(_:from:completion:)(unint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = &v4[OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *(v9 + 1);
    if (CNKCommand.isAvailableWhileLocked.getter(a1))
    {
      ObjectType = swift_getObjectType();
      (*(v12 + 16))(v4, a1, a2, ObjectType, v12);
      if (a3)
      {
        a3(1);
      }
    }

    else
    {
      type metadata accessor for SpringBoardUtilities();
      v14 = swift_allocObject();
      v14[2] = a1;
      v14[3] = a3;
      v14[4] = a4;
      v14[5] = v11;
      v14[6] = v12;
      v14[7] = v4;
      v14[8] = a2;
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a3, a4);
      v15 = a2;
      v16 = v4;
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a3, a4);
      v21 = v16;
      v17 = v15;
      swift_unknownObjectRetain();
      if (static SpringBoardUtilities.checkSpringBoardState(for:)(0xD00000000000002DLL, 0x80000001BC4F49E0))
      {
        aBlock[4] = partial apply for closure #1 in InCallControlsViewController.handle(_:from:completion:);
        aBlock[5] = v14;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
        aBlock[3] = &block_descriptor_62;
        v18 = _Block_copy(aBlock);

        SBSRequestPasscodeUnlockUI();
        _Block_release(v18);
        v19 = v21;
      }

      else
      {
        v20 = swift_getObjectType();
        v19 = v21;
        (*(v12 + 16))(v21, a1, a2, v20, v12);
        if (a3)
        {
          a3(1);
        }
      }

      outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a3, a4);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void closure #1 in InCallControlsViewController.handle(_:from:completion:)(char a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    ObjectType = swift_getObjectType();
    (*(a6 + 16))(a7, a2, a8, ObjectType, a6);
    if (!a3)
    {
      return;
    }

    v14 = 1;
    goto LABEL_8;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v15 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BC4BA940;
  type metadata accessor for CNKCommand(0);
  v17 = String.init<A>(reflecting:)();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v20 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Ignoring tap on %@ button. Springboard wasn't unlocked.", 55, 2, &dword_1BBC58000, v15, v20, v16);

  if (a3)
  {
    v14 = 0;
LABEL_8:
    a3(v14);
  }
}

void InCallControlsViewController.didTapJoinLeaveButton(_:)(void *a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BA940;
  v5 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode;
  swift_beginAccess();
  v13 = *(v1 + v5);
  v6 = String.init<A>(reflecting:)();
  v8 = v7;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("User tapped join/leave conversation button in in-call controls mode %@", 70, 2, &dword_1BBC58000, v3, v9, v4, v13);

  v10 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_shouldShowLeaveButton;
  swift_beginAccess();
  if (*(v1 + v10) == 1)
  {
LABEL_4:
    v11 = 2;
  }

  else
  {
    v12 = *(v1 + v5);
    switch(v12 >> 5)
    {
      case 1u:
        if ((v12 & 1) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      case 2u:
        if (v12)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      case 3u:
        if (v12 != 96)
        {
          return;
        }

LABEL_13:
        v11 = 3;
        break;
      case 4u:
      case 5u:
      case 6u:
        return;
      default:
        goto LABEL_4;
    }
  }

  InCallControlsViewController.handle(_:from:completion:)(v11, a1, 0, 0);
}

uint64_t InCallControlsViewController.didTapFlipCameraButton(_:)(uint64_t a1, const char *a2, uint64_t a3)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v5 = static OS_os_log.conversationKit;
  v6 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)(a2, a3, 2, &dword_1BBC58000, v5, v6, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_3_0();

  return InCallControlsViewController.handle(_:from:completion:)(v7, v8, v9, v10);
}

void InCallControlsViewController.updateControls(forLocalParticipantState:broadcastingState:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v32 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd, &_s15ConversationKit11ParticipantV5StateOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = swift_allocObject();
  v31 = xmmword_1BC4BAA20;
  *(v12 + 16) = xmmword_1BC4BAA20;
  _s15ConversationKit11ParticipantVWOcTm_9(a1, v10, type metadata accessor for Participant.State);
  v13 = type metadata accessor for Participant.State(0);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v13);
  specialized >> prefix<A>(_:)();
  v15 = v14;
  v17 = v16;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit11ParticipantV5StateOSgMd, &_s15ConversationKit11ParticipantV5StateOSgMR);
  v18 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v19 = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 64) = v19;
  *(v12 + 32) = v15;
  *(v12 + 40) = v17;
  v33 = a2;
  v34 = a3;
  LOBYTE(v17) = v32;
  v35 = v32;
  v20 = String.init<A>(reflecting:)();
  *(v12 + 96) = v18;
  *(v12 + 104) = v19;
  *(v12 + 72) = v20;
  *(v12 + 80) = v21;
  v22 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Updating controls for local participant state=%@ broadcastingState=%@", 69, 2, &dword_1BBC58000, v11, v22, v12);

  v23 = swift_allocObject();
  *(v23 + 16) = v31;
  LOBYTE(v33) = (a2 & 1) == 0;
  v24 = String.init<A>(reflecting:)();
  *(v23 + 56) = v18;
  *(v23 + 64) = v19;
  *(v23 + 32) = v24;
  *(v23 + 40) = v25;
  LOBYTE(v33) = (v17 & 0x80) != 0;
  v26 = String.init<A>(reflecting:)();
  *(v23 + 96) = v18;
  *(v23 + 104) = v19;
  *(v23 + 72) = v26;
  *(v23 + 80) = v27;
  v28 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Updating controls for local participant audioIsEnabled=%@ videoIsEnabled=%@", 75, 2, &dword_1BBC58000, v11, v28, v23);

  v29 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_audioIsEnabled;
  swift_beginAccess();
  *(v4 + v29) = (a2 & 1) == 0;
  InCallControlsViewController.updateMuteAudioButton()(&OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_audioIsEnabled, "Updating mute audio button for audioIsEnabled=%@", 48, &OBJC_IVAR____TtC15ConversationKit18InCallControlsView_muteButton);
  InCallControlsViewController.videoIsEnabled.setter((v17 & 0x80) != 0, v30);
}

void InCallControlsViewController.updateAudioRouteButton(for:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  OUTLINED_FUNCTION_37_22();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BC4BA940;
  if (v3)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TURoute, 0x1E69D8CA8);
    v12 = v3;
    v13 = String.init<A>(reflecting:)();
    v15 = v14;
  }

  else
  {
    v15 = 0xE300000000000000;
    v13 = 7104878;
  }

  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)(v16);

  v17 = (v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (!*v17)
  {
    goto LABEL_21;
  }

  v18 = *(v17[2] + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_audioRouteButton);
  v19 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
  if (v3 && (v20 = v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_delegate, OUTLINED_FUNCTION_3_0(), swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
  {
    v50 = v4;
    v51 = v1;
    v21 = *(v20 + 8);
    ObjectType = swift_getObjectType();
    v52 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_style;
    v23 = *(v18 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_style);
    v24 = *(v21 + 40);
    v25 = v3;
    v26 = v18;
    v53 = v25;
    v27 = v24(v25, v23, ObjectType, v21);
    swift_unknownObjectRelease();
    if (v27)
    {
      v28 = MEMORY[0x1E69E7D40];
      v29 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x150);
      v30 = v27;
      v29(v27);
      v31 = TURoute.name(for:)(*(v18 + v52));
      (*((*v28 & *v26) + 0x1B8))(v31);

      v18 = v30;
LABEL_20:

LABEL_21:
      OUTLINED_FUNCTION_30_0();
      return;
    }

    v4 = v50;
    v1 = v51;
    v19 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
  }

  else
  {
    v32 = v18;
  }

  UUID.init()();
  UUID.uuidString.getter();
  (*(v6 + 8))(v10, v4);
  v33 = objc_allocWithZone(MEMORY[0x1E69D8C78]);
  v26 = @nonobjc TUMutableRoute.init(uniqueIdentifier:name:)();
  [v26 setSpeaker_];
  v34 = v1 + v19[152];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v35 = *(v34 + 8);
    v36 = swift_getObjectType();
    v37 = (*(v35 + 40))(v26, *(v18 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_style), v36, v35);
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0;
  }

  v38 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v18) + 0x150))(v37);
  v39 = *(v18 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_style);
  v40 = v39 >= 4;
  v41 = v39 - 4;
  if (!v40)
  {
    v42 = "DRAWER_PILL_AUDIO_ROUTE_BUTTON";
    v43 = [objc_opt_self() conversationKit];
LABEL_19:
    v44 = v43;
    v54._object = 0xE000000000000000;
    v45.value._countAndFlagsBits = 0x61737265766E6F43;
    v45.value._object = 0xEF74694B6E6F6974;
    v46._object = (v42 | 0x8000000000000000);
    v46._countAndFlagsBits = 0xD00000000000001ELL;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    v54._countAndFlagsBits = 0;
    v48 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v45, v44, v47, v54);

    (*((*v38 & *v18) + 0x1B8))(v48._countAndFlagsBits, v48._object);
    goto LABEL_20;
  }

  if (v41 < 2)
  {
    v42 = "Unknown button style: ";
    v43 = [objc_opt_self() conversationKit];
    goto LABEL_19;
  }

  _StringGuts.grow(_:)(24);

  type metadata accessor for CNKInCallControlButtonStyle(0);
  v49 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v49);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t TURoute.name(for:)(unint64_t a1)
{
  if (a1 >= 4)
  {
    if (a1 - 4 > 1)
    {
      _StringGuts.grow(_:)(35);

      type metadata accessor for CNKInCallControlButtonStyle(0);
      v8 = String.init<A>(reflecting:)();
      MEMORY[0x1BFB20B10](v8);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v6 = [v1 name];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v7;
    }
  }

  else
  {
    v2 = [v1 deviceType];
    v3 = [v1 name];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (!v2)
    {
      lazy protocol witness table accessor for type String and conformance String();
      v4 = StringProtocol.localizedLowercase.getter();
    }

    return v4;
  }

  return result;
}

void *InCallControlsViewController.accessibilityHotdog()()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  swift_beginAccess();
  if (!*v1)
  {
    return 0;
  }

  v2 = v1[1];
  v3 = v2;
  return v2;
}

void *InCallControlsViewController.accessibilityJoinLeaveButton()(void *a1)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (!*v1)
  {
    return 0;
  }

  v3 = *(v1[2] + *a1);
  v4 = v3;
  return v3;
}

void *InCallControlsViewController.accessibilityCameraLabel()(void *a1)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (!*v1)
  {
    return 0;
  }

  v3 = *(*(v1[2] + *a1) + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
  if (v3)
  {
    v4 = v3;
  }

  return v3;
}

id InCallControlsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id InCallControlsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double InCallControlsViewController.handleLegacyCallStatusDidChangeNotification(_:)()
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  OUTLINED_FUNCTION_37_22();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BC4BA940;
  Notification.object.getter();
  v1 = specialized >> prefix<A>(_:)(v14);
  v3 = v2;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_sypSgMd, &_sypSgMR);
  v4 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v5 = lazy protocol witness table accessor for type String and conformance String();
  *(v0 + 64) = v5;
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)(v6);

  Notification.object.getter();
  if (v15)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    if (swift_dynamicCast())
    {
      InCallControlsViewController.updateToRepresentLegacyCall(_:)();

      return result;
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_sypSgMd, &_sypSgMR);
  }

  OUTLINED_FUNCTION_37_22();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BA940;
  Notification.object.getter();
  v9 = specialized >> prefix<A>(_:)(v14);
  v11 = v10;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_sypSgMd, &_sypSgMR);
  *(v8 + 56) = v4;
  *(v8 + 64) = v5;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)(v12);

  return result;
}

void InCallControlsViewController.participantIdentifiers.getter()
{
  OUTLINED_FUNCTION_29();
  v19 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v5 = v4 - v3;
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  InCallControlsViewController.participants.getter();
  v14 = v13;
  v15 = *(v13 + 16);
  if (v15)
  {
    v20 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v16 = v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v18 = *(v1 + 72);
    do
    {
      _s15ConversationKit11ParticipantVWOcTm_9(v16, v5, type metadata accessor for Participant);
      (*(v8 + 16))(v12, v5 + *(v19 + 20), v6);
      _s15ConversationKit11ParticipantVWOhTm_11(v5, type metadata accessor for Participant);
      v17 = *(v20 + 16);
      if (v17 >= *(v20 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      *(v20 + 16) = v17 + 1;
      (*(v8 + 32))(v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, v12, v6);
      v16 += v18;
      --v15;
    }

    while (v15);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t InCallControlsViewController.participantCount.getter()
{
  InCallControlsViewController.participants.getter();
  v1 = *(v0 + 16);

  return v1;
}

void InCallControlsViewController.update(participant:broadcastingState:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for Participant.State(0);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = type metadata accessor for Participant(0);
  if (*(v8 + *(v18 + 28)))
  {
    v19 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v20 = *(v0 + v19);
    if (v20)
    {
      v21 = v20;
      InCallControlsCollectionViewController.update(participant:broadcastingState:)();
    }
  }

  else
  {
    v22 = v18;
    v34 = v4;
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v23 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_37_22();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1BC4BA940;
    OUTLINED_FUNCTION_3_114();
    _s15ConversationKit11ParticipantVWOcTm_9(v8, v17, v25);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v22);
    specialized >> prefix<A>(_:)();
    v27 = v26;
    v29 = v28;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v24 + 32) = v27;
    *(v24 + 40) = v29;
    v30 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Updating with local participant %@", 34, 2, &dword_1BBC58000, v23, v30, v24);

    v31 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_localParticipant;
    swift_beginAccess();
    outlined assign with copy of Participant(v8, v0 + v31);
    swift_endAccess();
    v32 = (v6 & 0xFFFFFFFFFFFFFCFELL) != 0x7FFFFFCFELL || v2 >= 2u;
    v33 = v34;
    if (v32)
    {
      _s15ConversationKit11ParticipantVWOcTm_9(v0 + v31, v13, type metadata accessor for Participant.State);
      InCallControlsViewController.updateControls(forLocalParticipantState:broadcastingState:)(v13, v6, v33, v2);
      _s15ConversationKit11ParticipantVWOhTm_11(v13, type metadata accessor for Participant.State);
    }
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall InCallControlsViewController.updateLocalViews(for:isLocalMemberAuthorizedToChangeGroupMembership:)(Swift::OpaquePointer a1, Swift::Bool isLocalMemberAuthorizedToChangeGroupMembership)
{
  v5 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6)
  {
    v7 = v6;
    InCallControlsCollectionViewController.updateLocalViews(for:isLocalMemberAuthorizedToChangeGroupMembership:)(a1, isLocalMemberAuthorizedToChangeGroupMembership);
  }
}

void InCallControlsViewController.update(participant:isKickingAvailable:)(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for Participant(0) + 28)))
  {
    v2 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v3 = *(v1 + v2);
    if (v3)
    {
      v4 = v3;
      InCallControlsCollectionViewController.update(participant:isKickingAvailable:)();
    }
  }
}

void InCallControlsViewController.update(with:updateReason:)(uint64_t a1, char *a2)
{
  if (a2[1] == 1)
  {
    v6[0] = *a2 & 1;
    InCallControlsViewController.gridLayoutStyle.setter(v6, a2);
  }

  v3 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_collectionViewController;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4)
  {
    v5 = v4;
    InCallControlsCollectionViewController.update(with:updateReason:)();
  }
}

uint64_t (*protocol witness for ParticipantsViewController.participantsViewControllerDelegate.modify in conformance InCallControlsViewController(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = *v1;
  v5 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantsViewControllerDelegate;
  v3[5] = *v1;
  v3[6] = v5;
  v6 = v4 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  v3[3] = Strong;
  v3[4] = v8;
  return InCallControlsViewController.delegate.modify;
}

void InCallControlsViewController.delegate.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_21_38(a1);
  if (v2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v1);
}

uint64_t InCallControlsViewController.menu(for:button:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = InCallControlsViewController.audioButton.getter();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  v7 = a2;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v3 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_delegate;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v10 = *(v9 + 8);
  ObjectType = swift_getObjectType();
  (*(v10 + 32))(ObjectType, v10);
  OUTLINED_FUNCTION_247();
  swift_unknownObjectRelease();
  return v10;
}

uint64_t InCallControlsViewController.isCaptioningEnabled(inCallControlsCollectionViewController:)()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_delegate;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 8))(v0, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t InCallControlsViewController.inCallControlsCollectionViewController(_:didTap:from:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  type metadata accessor for InCallControlsCollectionViewController.Action(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  _s15ConversationKit11ParticipantVWOcTm_9(a2, v12 - v11, type metadata accessor for InCallControlsCollectionViewController.Action);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v23 = OUTLINED_FUNCTION_6_81();
      v24(v23);
      InCallControlsViewController.didTapBuzz(_:)(v9);
      goto LABEL_7;
    case 2:
      v21 = OUTLINED_FUNCTION_6_81();
      v22(v21);
      InCallControlsViewController.didTapApprove(_:)(v9);
      goto LABEL_7;
    case 3:
      v19 = OUTLINED_FUNCTION_6_81();
      v20(v19);
      InCallControlsViewController.didTapDismiss(_:)(v9);
      goto LABEL_7;
    case 4:
      v25 = OUTLINED_FUNCTION_6_81();
      v26(v25);
      InCallControlsViewController.didTapKick(_:)(v9);
LABEL_7:
      result = (*(v5 + 8))(v9, v3);
      break;
    case 5:
    case 6:
    case 7:
    case 8:
    case 12:
    case 13:
    case 14:
      OUTLINED_FUNCTION_3_0();
      result = InCallControlsViewController.handle(_:from:completion:)(v27, v28, v29, v30);
      break;
    case 9:
    case 10:
    case 11:
      return result;
    default:
      OUTLINED_FUNCTION_3_0();
      InCallControlsViewController.handle(_:from:completion:)(v15, v16, v17, v18);
      result = _s15ConversationKit11ParticipantVWOhTm_11(v13, type metadata accessor for InCallControlsCollectionViewController.Action);
      break;
  }

  return result;
}

uint64_t InCallControlsViewController.didTapBuzz(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v25 - v4;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA940;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 16))(v5, a1, v8);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  specialized >> prefix<A>(_:)(v5, v9, v10, v11, v12, v13, v14, v15, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9]);
  v17 = v16;
  v19 = v18;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v7 + 32) = v17;
  *(v7 + 40) = v19;
  v20 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("User tapped to buzz participant %@", 34, 2, &dword_1BBC58000, v6, v20, v7);

  v21 = v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = *(v21 + 8);
    ObjectType = swift_getObjectType();
    (*(v23 + 8))(v1, a1, ObjectType, v23);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t InCallControlsViewController.didTapApprove(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v25 - v4;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA940;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 16))(v5, a1, v8);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  specialized >> prefix<A>(_:)(v5, v9, v10, v11, v12, v13, v14, v15, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9]);
  v17 = v16;
  v19 = v18;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v7 + 32) = v17;
  *(v7 + 40) = v19;
  v20 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("User tapped to approve participant %@", 37, 2, &dword_1BBC58000, v6, v20, v7);

  v21 = v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = *(v21 + 8);
    ObjectType = swift_getObjectType();
    (*(v23 + 16))(v1, a1, ObjectType, v23);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t InCallControlsViewController.didTapDismiss(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v25 - v4;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA940;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 16))(v5, a1, v8);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  specialized >> prefix<A>(_:)(v5, v9, v10, v11, v12, v13, v14, v15, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9]);
  v17 = v16;
  v19 = v18;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v7 + 32) = v17;
  *(v7 + 40) = v19;
  v20 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("User tapped to dismiss participant %@", 37, 2, &dword_1BBC58000, v6, v20, v7);

  v21 = v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = *(v21 + 8);
    ObjectType = swift_getObjectType();
    (*(v23 + 24))(v1, a1, ObjectType, v23);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t InCallControlsViewController.didTapKick(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v25 - v4;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA940;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 16))(v5, a1, v8);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  specialized >> prefix<A>(_:)(v5, v9, v10, v11, v12, v13, v14, v15, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9]);
  v17 = v16;
  v19 = v18;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v7 + 32) = v17;
  *(v7 + 40) = v19;
  v20 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("User tapped to kick out participant %@", 38, 2, &dword_1BBC58000, v6, v20, v7);

  v21 = v1 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_participantDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = *(v21 + 8);
    ObjectType = swift_getObjectType();
    (*(v23 + 32))(v1, a1, ObjectType, v23);
    return swift_unknownObjectRelease();
  }

  return result;
}

id InCallControlsViewController.videoButtonIsEnabled.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*v1)
  {
    return [*(v1[2] + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton) isEnabled];
  }

  else
  {
    return 0;
  }
}

void InCallControlsViewController.videoButtonIsEnabled.setter(char a1)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*v1)
  {
    [*(v1[2] + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton) setEnabled_];
  }
}

void (*InCallControlsViewController.videoButtonIsEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = InCallControlsViewController.videoButtonIsEnabled.getter() & 1;
  return InCallControlsViewController.videoButtonIsEnabled.modify;
}

void outlined consume of InCallControlsViewController.ViewContent?(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  if (a1)
  {
  }
}

id @nonobjc TUMutableRoute.init(uniqueIdentifier:name:)()
{
  OUTLINED_FUNCTION_238();
  v3 = MEMORY[0x1BFB209B0]();

  v4 = MEMORY[0x1BFB209B0](v2, v0);

  v5 = [v1 initWithUniqueIdentifier:v3 name:v4];

  return v5;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Participant.State(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Participant.VideoProviderType and conformance Participant.VideoProviderType()
{
  result = lazy protocol witness table cache variable for type Participant.VideoProviderType and conformance Participant.VideoProviderType;
  if (!lazy protocol witness table cache variable for type Participant.VideoProviderType and conformance Participant.VideoProviderType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Participant.VideoProviderType and conformance Participant.VideoProviderType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Participant.VideoProviderType and conformance Participant.VideoProviderType;
  if (!lazy protocol witness table cache variable for type Participant.VideoProviderType and conformance Participant.VideoProviderType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Participant.VideoProviderType and conformance Participant.VideoProviderType);
  }

  return result;
}

uint64_t type metadata accessor for InCallControlsViewController(uint64_t a1)
{
  result = type metadata singleton initialization cache for InCallControlsViewController;
  if (!type metadata singleton initialization cache for InCallControlsViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for InCallControlsViewController(uint64_t a1)
{
  result = type metadata accessor for Participant(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id CNComposeRecipient.messagesChatGUID.getter()
{
  if (![v0 isGroup])
  {
    return 0;
  }

  result = [v0 autocompleteResult];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result psSuggestion];

  if (v3)
  {
    return outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v3, &selRef_conversationIdentifier);
  }

  else
  {
    return 0;
  }
}

void CNComposeRecipient.messagesGroupUUID.getter(uint64_t a1@<X8>)
{
  if ([v1 isGroup] && (v3 = objc_msgSend(v1, sel_autocompleteResult)) != 0 && (v4 = v3, v5 = objc_msgSend(v3, sel_psSuggestion), v4, v5) && (outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v5, &selRef_messagesGroupIdentifier), v6))
  {
    UUID.init(uuidString:)();
  }

  else
  {
    v7 = type metadata accessor for UUID();

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v7);
  }
}

double CallControlsStatusView.LeadingView.size.getter()
{
  if (!*(v0 + 32))
  {
    return *(v0 + 8);
  }

  if (*(v0 + 32) == 1)
  {
    return *(v0 + 16);
  }

  return 72.0;
}

id CallControlsStatusView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id CallControlsStatusView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___container) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainerWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainerHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainer) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView_customView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageViewWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageViewHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___labelContainer) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___subtitleLabel) = 0;
  v7 = ObjectType;
  v2 = OUTLINED_FUNCTION_18_1();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v7);
  CallControlsStatusView.build()();

  return v5;
}

void CallControlsStatusView.build()()
{
  v1 = v0;
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA7F0;
  v3 = CallControlsStatusView.imageView.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___container, closure #1 in CallControlsStatusView.container.getter);
  v4 = [v3 topAnchor];

  v5 = [v1 topAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  *(v2 + 32) = v6;
  v7 = OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___container;
  v8 = [*&v1[OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___container] bottomAnchor];
  v9 = [v1 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v2 + 40) = v10;
  v11 = [*&v1[v7] leadingAnchor];
  v12 = [v1 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v2 + 48) = v13;
  v14 = [*&v1[v7] trailingAnchor];
  v15 = [v1 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v2 + 56) = v16;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA930;
  *(inited + 32) = CallControlsStatusView.leadingContainerWidthConstraint.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainerWidthConstraint, &selRef_widthAnchor);
  *(inited + 40) = CallControlsStatusView.leadingContainerWidthConstraint.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainerHeightConstraint, &selRef_heightAnchor);
  specialized Array.append<A>(contentsOf:)(inited);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1BC4BA7F0;
  v19 = CallControlsStatusView.imageView.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageView, closure #1 in CallControlsStatusView.imageView.getter);
  v20 = [v19 centerXAnchor];

  v21 = CallControlsStatusView.leadingContainer.getter();
  v22 = [v21 centerXAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v18 + 32) = v23;
  v24 = [*&v1[OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageView] centerYAnchor];
  v25 = [*&v1[OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainer] centerYAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v18 + 40) = v26;
  *(v18 + 48) = CallControlsStatusView.imageViewHeightConstraint.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageViewWidthConstraint, &selRef_widthAnchor);
  *(v18 + 56) = CallControlsStatusView.imageViewHeightConstraint.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageViewHeightConstraint, &selRef_heightAnchor);
  specialized Array.append<A>(contentsOf:)(v18);
  v27 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints_];
}

id CallControlsStatusView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CallControlsStatusView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___container) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainerWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainerHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainer) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView_customView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageViewWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageViewHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___labelContainer) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___subtitleLabel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CallControlsStatusView.set(title:subtitle:)(NSAttributedString_optional title, NSAttributedString_optional subtitle)
{
  v3 = *&title.is_nil;
  isa = title.value.super.isa;
  v5 = CallControlsStatusView.titleLabel.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___titleLabel, MEMORY[0x1E69DDDB8], MEMORY[0x1E69DB968], &selRef_labelColor);
  [v5 setAttributedText_];

  [*(v2 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___titleLabel) setHidden_];
  v6 = CallControlsStatusView.titleLabel.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___subtitleLabel, MEMORY[0x1E69DDDC8], MEMORY[0x1E69DB978], &selRef_secondaryLabelColor);
  [v6 setAttributedText_];

  v7 = *(v2 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___subtitleLabel);

  [v7 setHidden_];
}

id CallControlsStatusView.titleLabel.getter(uint64_t *a1, uint64_t *a2, uint64_t a3, SEL *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v8 = closure #1 in CallControlsStatusView.titleLabel.getter(a2, a3, a4);
    v9 = *(v4 + v5);
    *(v4 + v5) = v8;
    v7 = v8;

    v6 = 0;
  }

  v10 = v6;
  return v7;
}

void CallControlsStatusView.set(leadingView:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = CallControlsStatusView.leadingContainerWidthConstraint.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainerWidthConstraint, &selRef_widthAnchor);
  v8 = v7;
  if (v6)
  {
    if (v6 == 1)
    {
      v9 = v4;
    }

    else
    {
      v9 = 72.0;
    }
  }

  else
  {
    v9 = v3;
  }

  v10 = 72.0;
  if (v9 <= 72.0)
  {
    v9 = 72.0;
  }

  [v7 setConstant_];

  v11 = CallControlsStatusView.leadingContainerWidthConstraint.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainerHeightConstraint, &selRef_heightAnchor);
  v12 = v11;
  if (v6)
  {
    if (v6 == 1)
    {
      v10 = v5;
    }
  }

  else
  {
    v10 = v4;
  }

  v13 = 72.0;
  if (v10 > 72.0)
  {
    v13 = v10;
  }

  [v11 setConstant_];

  v14 = CallControlsStatusView.leadingContainer.getter();
  [v14 setHidden_];

  v15 = OUTLINED_FUNCTION_0_146(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageView);
  [v15 setHidden_];

  if (v6)
  {
    if (v6 == 1)
    {
      CallControlsStatusView.customView.setter(0);
      v16 = OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageView;
      [*(v1 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageView) setContentMode_];
      [*(v1 + v16) setImage_];
      v17 = CallControlsStatusView.imageViewHeightConstraint.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageViewWidthConstraint, &selRef_widthAnchor);
      [v17 setConstant_];

      [CallControlsStatusView.imageViewHeightConstraint.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageViewHeightConstraint &selRef_heightAnchor)];
      OUTLINED_FUNCTION_1_121();
    }

    else
    {
      CallControlsStatusView.customView.setter(0);
      OUTLINED_FUNCTION_1_121();

      [v23 v24];
    }
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageView) setHidden_];
    v20 = v2;
    OUTLINED_FUNCTION_1_121();

    CallControlsStatusView.customView.setter(v21);
  }
}

id CallControlsStatusView.leadingContainerWidthConstraint.getter(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = CallControlsStatusView.leadingContainer.getter();
    v8 = [v7 *a2];

    v9 = [v8 constraintEqualToConstant_];
    v10 = *(v2 + v3);
    *(v2 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

id CallControlsStatusView.leadingContainer.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainer;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void CallControlsStatusView.customView.setter(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView_customView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView_customView) = a1;
  v2 = a1;
  [v3 removeFromSuperview];
  CallControlsStatusView.buildCustomView()();
}

id CallControlsStatusView.imageViewHeightConstraint.getter(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_146(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___imageView);
    v8 = [v7 *a2];

    v9 = [v8 constraintEqualToConstant_];
    v10 = *(v2 + v3);
    *(v2 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

void *closure #1 in CallControlsStatusView.container.getter(void *a1)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIStackView, 0x1E69DCF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA930;
  *(v2 + 32) = CallControlsStatusView.leadingContainer.getter();
  *(v2 + 40) = CallControlsStatusView.imageView.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___labelContainer, closure #1 in CallControlsStatusView.labelContainer.getter);
  UIStackView.__allocating_init(arrangedSubviews:)(v3, v2);
  v5 = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setSpacing_];
  [v5 setAxis_];
  [v5 setAlignment_];
  [a1 addSubview_];
  return v5;
}

id CallControlsStatusView.imageView.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void CallControlsStatusView.buildCustomView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView_customView);
  if (v1)
  {
    v2 = v1;
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
    v3 = CallControlsStatusView.leadingContainer.getter();
    [v3 addSubview_];

    v4 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BC4BA7F0;
    v6 = [v2 topAnchor];
    v7 = OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainer;
    v8 = [*(v0 + OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___leadingContainer) topAnchor];
    v9 = [v6 constraintEqualToAnchor_];

    *(v5 + 32) = v9;
    v10 = [v2 leadingAnchor];
    v11 = [*(v0 + v7) leadingAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    *(v5 + 40) = v12;
    v13 = [v2 trailingAnchor];
    v14 = [*(v0 + v7) trailingAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v5 + 48) = v15;
    v16 = [v2 bottomAnchor];
    v17 = [*(v0 + v7) bottomAnchor];
    v18 = [v16 constraintEqualToAnchor_];

    *(v5 + 56) = v18;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 activateConstraints_];
  }
}

id closure #1 in CallControlsStatusView.imageView.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setContentMode_];

  v1 = [objc_opt_self() labelColor];
  [v0 setTintColor_];

  v2 = CallControlsStatusView.leadingContainer.getter();
  [v2 addSubview_];

  return v0;
}

void *closure #1 in CallControlsStatusView.labelContainer.getter()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIStackView, 0x1E69DCF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BC4BA930;
  *(v0 + 32) = CallControlsStatusView.titleLabel.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___titleLabel, MEMORY[0x1E69DDDB8], MEMORY[0x1E69DB968], &selRef_labelColor);
  *(v0 + 40) = CallControlsStatusView.titleLabel.getter(&OBJC_IVAR____TtC15ConversationKit22CallControlsStatusView____lazy_storage___subtitleLabel, MEMORY[0x1E69DDDC8], MEMORY[0x1E69DB978], &selRef_secondaryLabelColor);
  UIStackView.__allocating_init(arrangedSubviews:)(v1, v0);
  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setSpacing_];
  [v3 setAxis_];
  [v3 setAlignment_];
  return v3;
}

void *closure #1 in CallControlsStatusView.titleLabel.getter(uint64_t *a1, uint64_t a2, SEL *a3)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UILabel, 0x1E69DCC10);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
  v5 = static UIFont.preferredFont(textStyle:weight:maximumPointSize:)(*a1, 0, 1);
  v11.value.super.isa = 0;
  UILabel.init(font:textColor:)(v6, v5, v11);
  v8 = v7;
  [v7 setAdjustsFontForContentSizeCategory_];
  v9 = [objc_opt_self() *a3];
  [v8 setTextColor_];

  [v8 _setWantsContentAwareTypesettingLanguage_];
  return v8;
}

id CallControlsStatusView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit22CallControlsStatusViewC07LeadingF0O(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

double RecipientResultWrapper.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 24) = xmmword_1BC4BB7D0;
  *(v2 + 16) = a1;
  return result;
}

uint64_t static PeoplePickerRanker.findDuetHandle<A>(from:isHandleEligible:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Sequence.first(where:)();
}

uint64_t RecipientResultWrapper.idsHandle.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = v1;
  if (v2 == 1)
  {
    v3 = closure #1 in RecipientResultWrapper.idsHandle.getter(v0);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    *(v0 + 24) = v3;
    *(v0 + 32) = v6;

    outlined consume of String??(v4, v5);
  }

  outlined copy of String??(v1, v2);
  return v3;
}

uint64_t static PeoplePickerRanker.sort(lhs:rhs:isGroupFaceTime:isGroupFaceTimeAvailable:isFaceTimeAvailable:)(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v10 = a3;
  v13 = a1[3];
  v12 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  v16 = a2[3];
  v15 = a2[4];
  v17 = __swift_project_boxed_opaque_existential_1(a2, v16);
  return specialized static PeoplePickerRanker.sort(lhs:rhs:isGroupFaceTime:isGroupFaceTimeAvailable:isFaceTimeAvailable:)(v14, v17, v10, a4, a5, a6, a7, v20, v13, v16, v12, v15) & 1;
}

uint64_t closure #1 in static PeoplePickerRanker.findDuetHandle<A>(from:isHandleEligible:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (((*(a5 + 16))(a4, a5) & 1) == 0)
  {
    return 0;
  }

  v8 = (*(a5 + 8))(a4, a5);
  if (!v9)
  {
    return 0;
  }

  v10 = a2(v8);

  return v10 & 1;
}

uint64_t RecipientResultWrapper.init(_:)(uint64_t a1)
{
  *(v1 + 24) = xmmword_1BC4BB7D0;
  *(v1 + 16) = a1;
  return OUTLINED_FUNCTION_0_147();
}

double key path setter for RecipientResultWrapper.idsHandle : RecipientResultWrapper(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return RecipientResultWrapper.idsHandle.setter(v1, v2, v3);
}

double RecipientResultWrapper.idsHandle.setter(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  return outlined consume of String??(v4, v5);
}

uint64_t closure #1 in RecipientResultWrapper.idsHandle.getter(uint64_t a1)
{
  v1 = [*(a1 + 16) address];
  v2 = TUCopyIDSCanonicalAddressForDestinationID();

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

double outlined consume of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

double outlined copy of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t RecipientResultWrapper.__deallocating_deinit()
{
  RecipientResultWrapper.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized static PeoplePickerRanker.sort(lhs:rhs:isGroupFaceTime:isGroupFaceTimeAvailable:isFaceTimeAvailable:)(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v49[3] = a9;
  v49[4] = a11;
  __swift_allocate_boxed_opaque_existential_1(v49);
  (*(*(a9 - 8) + 16))();
  v48[3] = a10;
  v48[4] = a12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  (*(*(a10 - 8) + 16))(boxed_opaque_existential_1, a2, a10);
  v17 = (*(a11 + 8))(a9, a11);
  v19 = v18;
  v20 = (*(a12 + 8))(a10, a12);
  v22 = v21;
  LOBYTE(v23) = v19 != 0;
  if (!v19)
  {

    goto LABEL_15;
  }

  if (!v21)
  {
LABEL_15:
    if (one-time initialization token for peoplePicker != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.peoplePicker);
    outlined init with copy of IDSLookupManager(v49, v47);
    outlined init with copy of IDSLookupManager(v48, v46);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v45 = v23;
      *v33 = 136315394;
      outlined init with copy of IDSLookupManager(v47, v44);
      v34 = specialized >> prefix<A>(_:)(v44);
      v36 = v35;
      outlined destroy of PeoplePickerHandle?(v44);
      __swift_destroy_boxed_opaque_existential_1(v47);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v45);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      outlined init with copy of IDSLookupManager(v46, v44);
      v38 = specialized >> prefix<A>(_:)(v44);
      v40 = v39;
      outlined destroy of PeoplePickerHandle?(v44);
      __swift_destroy_boxed_opaque_existential_1(v46);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v45);

      *(v33 + 14) = v41;
      _os_log_impl(&dword_1BBC58000, v31, v32, "Missing IDS Handle for %s, %s", v33, 0x16u);
      swift_arrayDestroy();
      v42 = v23;
      LOBYTE(v23) = v19 != 0;
      MEMORY[0x1BFB23DF0](v42, -1, -1);
      MEMORY[0x1BFB23DF0](v33, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v46);
      __swift_destroy_boxed_opaque_existential_1(v47);
    }

    goto LABEL_20;
  }

  v24 = v20;
  if (a3)
  {
    v25 = a4;
  }

  else
  {
    v25 = a6;
  }

  LODWORD(v23) = v25(v17, v19);
  if (((v23 ^ v25(v24, v22)) & 1) == 0)
  {
    v26 = MEMORY[0x1BFB209B0](v17, v19);
    LODWORD(v23) = [v26 destinationIdIsPhoneNumber];

    v27 = MEMORY[0x1BFB209B0](v24, v22);
    v28 = [v27 destinationIdIsPhoneNumber];

    if (v23 == v28)
    {
      if (v17 == v24 && v19 == v22)
      {

        LOBYTE(v23) = 0;
        goto LABEL_21;
      }

      LOBYTE(v23) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_20:

LABEL_21:
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return v23 & 1;
}

uint64_t outlined destroy of PeoplePickerHandle?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18PeoplePickerHandle_pSgMd, &_s15ConversationKit18PeoplePickerHandle_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConversationHUDMenuController.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_weakInit();
  return v0;
}

uint64_t *ConversationHUDMenuController.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_148(&one-time initialization token for shared);
  }

  return &static ConversationHUDMenuController.shared;
}

uint64_t static ConversationHUDMenuController.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_148(&one-time initialization token for shared);
  }
}

uint64_t key path setter for ConversationHUDMenuController.activeMenuButtonProvider : ConversationHUDMenuController(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

void ConversationHUDMenuController.activeMenuButtonProvider.didset()
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, &static Logger.conversationControls);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    *v2 = 136315138;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      type metadata accessor for ConversationControlsMenuButtonProvider();
      v4 = String.init<A>(reflecting:)();
      v6 = v5;
    }

    else
    {
      v6 = 0xE300000000000000;
      v4 = 7104878;
    }

    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v6, &v9);

    *(v2 + 4) = v7;
    _os_log_impl(&dword_1BBC58000, oslog, v1, "activeMenuButtonProvider: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x1BFB23DF0](v3, -1, -1);
    MEMORY[0x1BFB23DF0](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t ConversationHUDMenuController.activeMenuButtonProvider.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
  ConversationHUDMenuController.activeMenuButtonProvider.didset();
}

void (*ConversationHUDMenuController.activeMenuButtonProvider.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_weakLoadStrong();
  return ConversationHUDMenuController.activeMenuButtonProvider.modify;
}

void ConversationHUDMenuController.activeMenuButtonProvider.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    ConversationHUDMenuController.activeMenuButtonProvider.didset();
  }

  free(v3);
}

uint64_t ConversationHUDMenuController.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t CNKDeviceOrientation.uiDeviceOrientation.getter(unint64_t a1)
{
  if (a1 > 3)
  {
    return 1;
  }

  else
  {
    return qword_1BC4D5ED8[a1];
  }
}

uint64_t CNKDeviceOrientation.toggled.getter(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t CNKSupportedDeviceOrientations.debugDescription.getter(uint64_t a1)
{
  v1 = 1819042094;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v2 = 0x616373646E616C2ELL;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x69617274726F702ELL;
  }
}

void InCallControlsStatusCellViewModel.init(participants:controlsManager:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v83 = a3;
  v84 = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v75 - v9;
  v11 = type metadata accessor for Participant(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v79 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v75 - v18;
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v22 = &v75 - v21;
  v23 = MEMORY[0x1E69E7D40];
  v24 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x380))(v20);
  v25 = [objc_opt_self() conversationKit];
  v74 = 0xE000000000000000;
  if (v24)
  {
    v26 = 0x414C504552414853;
    v27 = 0xE900000000000059;
  }

  else
  {
    v26 = 0x454D495445434146;
    v27 = 0xE800000000000000;
  }

  v28.value._countAndFlagsBits = 0x61737265766E6F43;
  v28.value._object = 0xEF74694B6E6F6974;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v30 = 0;
  v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v26, v28, v25, v29, *(&v74 - 1));
  object = v31._object;
  countAndFlagsBits = v31._countAndFlagsBits;

  v32 = *((*v23 & *a2) + 0x2C0);
  v33 = a2;
  v34 = v32();

  if (v34)
  {

    v35 = [v34 mergedActiveRemoteParticipants];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = specialized Set.count.getter();

    v37 = [v34 pendingMembers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = specialized Set.count.getter();
  }

  else
  {
    v78 = v33;
    v39 = 0;
    v85 = *(a1 + 16);
    v40 = MEMORY[0x1E69E7CC0];
    while (v85 != v39)
    {
      if (v39 >= *(a1 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v41 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v42 = *(v12 + 72);
      OUTLINED_FUNCTION_7_5();
      _s15ConversationKit11ParticipantVWOcTm_4(v43, v22, v44);
      OUTLINED_FUNCTION_4_53();
      _s15ConversationKit11ParticipantVWOcTm_4(v22, v10, v45);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 4u:
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
          v77 = *(v47 + 48);
          OUTLINED_FUNCTION_37(&v10[*(v47 + 64)]);
          outlined destroy of Participant.MediaInfo(&v10[v77]);
          type metadata accessor for Date();
          OUTLINED_FUNCTION_7_0();
          (*(v48 + 8))(v10);
          outlined init with take of Participant(v22, v80);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v86 = v40;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_3_115();
            v40 = v86;
          }

          v50 = *(v40 + 16);
          v51 = v50 + 1;
          if (v50 >= *(v40 + 24) >> 1)
          {
            v76 = *(v40 + 16);
            v77 = v50 + 1;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v50 = v76;
            v51 = v77;
            v40 = v86;
          }

          ++v39;
          *(v40 + 16) = v51;
          outlined init with take of Participant(v80, v40 + v41 + v50 * v42);
          break;
        case 6u:
          goto LABEL_11;
        default:
          type metadata accessor for Date();
          OUTLINED_FUNCTION_7_0();
          (*(v46 + 8))(v10);
LABEL_11:
          outlined destroy of Participant(v22);
          ++v39;
          break;
      }
    }

    v36 = *(v40 + 16);

    v52 = 0;
    v53 = MEMORY[0x1E69E7CC0];
    while (v85 != v52)
    {
      if (v52 >= *(a1 + 16))
      {
        goto LABEL_34;
      }

      v54 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v55 = *(v12 + 72);
      OUTLINED_FUNCTION_7_5();
      _s15ConversationKit11ParticipantVWOcTm_4(v56, v16, v57);
      OUTLINED_FUNCTION_4_53();
      _s15ConversationKit11ParticipantVWOcTm_4(v16, v7, v58);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 2u:
          type metadata accessor for Date();
          OUTLINED_FUNCTION_7_0();
          (*(v62 + 8))(v7);
          outlined init with take of Participant(v16, v79);
          v63 = swift_isUniquelyReferenced_nonNull_native();
          v86 = v53;
          if ((v63 & 1) == 0)
          {
            OUTLINED_FUNCTION_3_115();
            v53 = v86;
          }

          v64 = *(v53 + 16);
          v65 = v64 + 1;
          if (v64 >= *(v53 + 24) >> 1)
          {
            v80 = v64 + 1;
            v77 = v64;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v65 = v80;
            v64 = v77;
            v53 = v86;
          }

          ++v52;
          *(v53 + 16) = v65;
          outlined init with take of Participant(v79, v53 + v54 + v64 * v55);
          continue;
        case 4u:
          v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
          v61 = *(v60 + 48);
          OUTLINED_FUNCTION_37(&v7[*(v60 + 64)]);
          outlined destroy of Participant.MediaInfo(&v7[v61]);
          goto LABEL_21;
        case 6u:
          goto LABEL_22;
        default:
LABEL_21:
          type metadata accessor for Date();
          OUTLINED_FUNCTION_7_0();
          (*(v59 + 8))(v7);
LABEL_22:
          outlined destroy of Participant(v16);
          ++v52;
          break;
      }
    }

    v38 = *(v53 + 16);

    v33 = v78;
  }

  if (v36 == 0 && v38 > 0)
  {
    v36 = v38;
  }

  String.localizedConversationControls.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v66 = swift_allocObject();
  v67 = MEMORY[0x1E69E6530];
  *(v66 + 16) = xmmword_1BC4BA940;
  v68 = MEMORY[0x1E69E65A8];
  *(v66 + 56) = v67;
  *(v66 + 64) = v68;
  *(v66 + 32) = v36;
  OUTLINED_FUNCTION_46();
  v69 = static String.localizedStringWithFormat(_:_:)();
  v71 = v70;

  v72 = v83;
  v73 = object;
  *v83 = countAndFlagsBits;
  v72[1] = v73;
  v72[2] = v69;
  v72[3] = v71;
  v72[4] = v33;
}

uint64_t getEnumTagSinglePayload for InCallControlsStatusCellViewModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for InCallControlsStatusCellViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id CNKMutedTalkerBannerViewControllerFactory.makeViewController()()
{
  v0 = objc_allocWithZone(type metadata accessor for MutedTalkerBannerViewController());

  return [v0 init];
}

id MutedTalkerBannerViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

CNKMutedTalkerBannerViewControllerFactory __swiftcall CNKMutedTalkerBannerViewControllerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t key path getter for MutedTalkerBannerViewController.isBannerPresent : MutedTalkerBannerViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result & 1;
  return result;
}

uint64_t MutedTalkerBannerViewController.isBannerPresent.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_isBannerPresent;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t MutedTalkerBannerViewController.isBannerPresent.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_isBannerPresent;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}