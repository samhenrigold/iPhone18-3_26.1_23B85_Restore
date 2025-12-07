uint64_t TransitionViewModel.mechanismEvent(_:reply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v14, 0, sizeof(v14));
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel_delegates;
  swift_beginAccess();
  v9 = *(v3 + v8);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a2, a3);
  v10 = [v9 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService27TransitionViewModelDelegate_pMd, &_s28LocalAuthenticationUIService27TransitionViewModelDelegate_pMR);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13[2] = a1;
  v13[3] = v14;
  v13[4] = v7;
  specialized Sequence.forEach(_:)(partial apply for closure #1 in TransitionViewModel.mechanismEvent(_:value:reply:), v13, v11);

  return outlined destroy of LACUIAngelConnectionHandling?(v14, &_sypSgMd, &_sypSgMR);
}

uint64_t TransitionViewModel.mechanismEvent(_:value:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel_delegates;
  swift_beginAccess();
  v11 = *(v4 + v10);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a3, a4);
  v12 = [v11 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService27TransitionViewModelDelegate_pMd, &_s28LocalAuthenticationUIService27TransitionViewModelDelegate_pMR);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v9;
  specialized Sequence.forEach(_:)(closure #1 in TransitionViewModel.mechanismEvent(_:value:reply:)partial apply, v15, v13);
}

uint64_t closure #1 in TransitionViewModel.mechanismEvent(_:value:reply:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  outlined init with copy of Any?(a3, aBlock);
  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_1(aBlock, v16);
    v9 = *(v7 - 1);
    __chkstk_darwin(v8);
    v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_0(aBlock);
  }

  else
  {
    v12 = 0;
  }

  v17 = partial apply for closure #1 in closure #1 in TransitionViewModel.mechanismEvent(_:value:reply:);
  v18 = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v16 = &block_descriptor_91;
  v13 = _Block_copy(aBlock);

  [v6 viewModelDidReceiveMechanismEvent:a2 value:v12 reply:v13];
  _Block_release(v13);
  return swift_unknownObjectRelease();
}

uint64_t TransitionViewModel.transition(to:internalInfo:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = static os_log_type_t.debug.getter();

  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 134349314;
    *(v11 + 4) = a1;
    *(v11 + 12) = 2082;
    v13 = Dictionary.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v21);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v10, v9, "transition to controller: %{public}ld, internalInfo: %{public}s", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v21 = a1;
  LOBYTE(v22) = 0;
  v16 = v5;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  if (a3)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    v18 = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ()partial apply;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v21 = v18;
  v22 = v17;
  v19 = v16;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a3, a4);
  return static Published.subscript.setter();
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()(char a1, uint64_t a2, uint64_t a3)
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

uint64_t key path getter for TransitionViewModel.internalInfo : TransitionViewModel@<X0>(void *a4@<X8>)
{
  return key path getter for TransitionViewModel.internalInfo : TransitionViewModel(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  *a4 = v6;
  return result;
}

uint64_t key path setter for TransitionViewModel.internalInfo : TransitionViewModel(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v8 = *a1;
  v9 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  a7(v8);
  v10 = v9;
  return static Published.subscript.setter();
}

uint64_t key path setter for TransitionViewModel.connection : TransitionViewModel(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

uint64_t key path getter for TransitionViewModel.controllerToShow : TransitionViewModel@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t key path setter for TransitionViewModel.controllerToShow : TransitionViewModel(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

double key path getter for TransitionViewModel.completionHandler : TransitionViewModel@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for TransitionViewModel.completionHandler : TransitionViewModel(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool, @in_guaranteed Error?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  if (v3)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
  }

  outlined copy of (@escaping @callee_guaranteed () -> ())?(v3, v4);
  v9 = v7;
  return static Published.subscript.setter();
}

uint64_t sub_10003E1FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void partial apply for closure #1 in TransitionViewModel.setupConnection()(const char *a1, ...)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      *(v7 + 4) = v4;
      *v8 = v3;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 0xCu);
      outlined destroy of LACUIAngelConnectionHandling?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }
  }
}

uint64_t sub_10003E398()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void partial apply for closure #3 in TransitionViewModel.setupConnection()(uint64_t a1)
{
  type metadata accessor for Logger();
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138543362;
    v4 = _convertErrorToNSError(_:)();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Could not obtaint remote object with error %{public}@", v2, 0xCu);
    outlined destroy of LACUIAngelConnectionHandling?(v3, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }
}

uint64_t sub_10003E568()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void partial apply for closure #4 in TransitionViewModel.setupConnection()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Logger();
  if (a3)
  {
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      v9 = _convertErrorToNSError(_:)();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Could not connect to remote object with error %{public}@", v7, 0xCu);
      outlined destroy of LACUIAngelConnectionHandling?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    else
    {
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    swift_unknownObjectRetain();
    v12 = v11;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = a2;
    v13 = v12;
    swift_unknownObjectRetain();
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(aBlock);

    v14 = aBlock[0];
    if (aBlock[0])
    {
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = partial apply for closure #1 in closure #4 in TransitionViewModel.setupConnection();
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]) -> ();
      aBlock[3] = &block_descriptor_95;
      v16 = _Block_copy(aBlock);

      [v14 internalInfoWithReply:v16];

      swift_unknownObjectRelease();
      _Block_release(v16);
    }

    else
    {
    }
  }
}

uint64_t sub_10003E954()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t specialized TransitionViewModel.dismiss(withIdleEndpoint:wasInvalidated:completionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel_delegates;
  swift_beginAccess();
  v8 = *(v3 + v7);

  v9 = [v8 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService27TransitionViewModelDelegate_pMd, &_s28LocalAuthenticationUIService27TransitionViewModelDelegate_pMR);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    while ((v10 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      aBlock[4] = partial apply for closure #1 in closure #1 in TransitionViewModel.dismiss(withIdleEndpoint:wasInvalidated:completionHandler:);
      aBlock[5] = v6;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_88;
      v15 = _Block_copy(aBlock);

      [v13 viewModelDidReceiveDismissWasInvalidated:a1 & 1 completionHandler:v15];
      _Block_release(v15);
      swift_unknownObjectRelease();
      ++v12;
      if (v14 == i)
      {
        goto LABEL_14;
      }
    }

    if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v13 = *(v10 + 8 * v12 + 32);
    swift_unknownObjectRetain();
    v14 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t type metadata accessor for TransitionViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for TransitionViewModel;
  if (!type metadata singleton initialization cache for TransitionViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TransitionViewModel(uint64_t a1)
{
  type metadata accessor for Published<NSXPCConnection?>(319, &lazy cache variable for type metadata for Published<NSXPCConnection?>, &_sSo15NSXPCConnectionCSgMd, &_sSo15NSXPCConnectionCSgMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<NSXPCConnection?>(319, &lazy cache variable for type metadata for Published<LACRemoteUIHost?>, &_sSo15LACRemoteUIHost_pSgMd, &_sSo15LACRemoteUIHost_pSgMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<NSXPCConnection?>(319, &lazy cache variable for type metadata for Published<LACUIMechanism?>, &_sSo14LACUIMechanism_pSgMd, &_sSo14LACUIMechanism_pSgMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<NSXPCConnection?>(319, &lazy cache variable for type metadata for Published<LACBackoffCounter?>, &_sSo17LACBackoffCounter_pSgMd, &_sSo17LACBackoffCounter_pSgMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<NSXPCConnection?>(319, &lazy cache variable for type metadata for Published<[AnyHashable : Any]?>, &_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Published<NSXPCConnection?>(319, &lazy cache variable for type metadata for Published<LACRemoteUIController?>, &_sSo21LACRemoteUIControllerVSgMd, &_sSo21LACRemoteUIControllerVSgMR);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Published<NSXPCConnection?>(319, &lazy cache variable for type metadata for Published<((_:_:))?>, &_sySb_s5Error_pSgtcSgMd, &_sySb_s5Error_pSgtcSgMR);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Logger();
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<NSXPCConnection?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for LACRemoteUIController()
{
  if (!lazy cache variable for type metadata for LACRemoteUIController)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for LACRemoteUIController);
    }
  }
}

uint64_t sub_10003EFE0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in TransitionViewModel.dismiss(withIdleEndpoint:wasInvalidated:completionHandler:)()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(v0 + 24);

    v2(v4);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v2, v3);
  }

  swift_beginAccess();
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
}

uint64_t partial apply for closure #1 in closure #4 in TransitionViewModel.setupConnection()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop()
{
  result = lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop;
  if (!lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop)
  {
    type metadata accessor for UIDevice(255, &lazy cache variable for type metadata for NSRunLoop, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop);
  }

  return result;
}

uint64_t partial apply for closure #8 in TransitionViewModel.setupBinding()(uint64_t *a1)
{
  v21 = *a1;
  v22 = a1[2];
  v23 = a1[3];
  v1 = a1[4];
  if (v23)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v23;
    *(v2 + 24) = v1;
    v19 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool, @in_guaranteed Error?) -> (@out ())partial apply;
    v20 = v2;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel_delegates;
    v5 = Strong;
    swift_beginAccess();
    v6 = *&v5[v4];
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v23, v1);

    swift_unknownObjectRetain();
    v7 = v6;

    v8 = [v7 allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService27TransitionViewModelDelegate_pMd, &_s28LocalAuthenticationUIService27TransitionViewModelDelegate_pMR);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      goto LABEL_20;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      while (1)
      {
        v18 = v25;
        v11 = 4;
        while (1)
        {
          v13 = v11 - 4;
          if ((v9 & 0xC000000000000001) == 0)
          {
            break;
          }

          v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = v11 - 3;
          if (__OFADD__(v13, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

LABEL_13:
          isa = Dictionary._bridgeToObjectiveC()().super.isa;
          [v1 viewModelDidReceiveAuthenticationDataWithInternalInfo:isa mechanism:{v22, v18}];

          v16.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
          if (v23)
          {
            v25[2] = v19;
            v25[3] = v20;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            v25[0] = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ();
            v25[1] = &block_descriptor_99;
            v12 = _Block_copy(aBlock);
          }

          else
          {
            v12 = 0;
          }

          [v1 showWithController:v21 internalInfo:v16.super.isa completionHandler:v12];
          _Block_release(v12);

          swift_unknownObjectRelease();
          ++v11;
          if (v14 == v10)
          {
            goto LABEL_21;
          }
        }

        if (v13 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_20:
        v10 = _CocoaArrayWrapper.endIndex.getter();
        if (!v10)
        {
          goto LABEL_21;
        }
      }

      v1 = *(v9 + 8 * v11);
      swift_unknownObjectRetain();
      v14 = v11 - 3;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

LABEL_21:

    swift_unknownObjectRelease();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v19, v20);
  }

  else
  {
LABEL_18:
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v23, v1);
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v19, v20);
  }
}

uint64_t lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool, @in_guaranteed Error?) -> (@out ())(char a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a1;
  v5 = a2;
  return v3(&v6, &v5);
}

void specialized static Application.main()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 featureFlagLaunchAngelEnabled];

  if (v1)
  {
    v2 = *AppContainer.shared.unsafeMutableAddressor();
    AppContainer.assemble()();
  }

  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for AppDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    delegateClassNamea = String._bridgeToObjectiveC()();

    v6 = delegateClassNamea;
  }

  delegateClassName = v6;
  UIApplicationMain(v3, v4, 0, v6);
}

id AppDelegate.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v3, "init");
}

id AppDelegate.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance UIApplicationLaunchOptionsKey(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UIApplicationLaunchOptionsKey(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UIApplicationLaunchOptionsKey(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIApplicationLaunchOptionsKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIApplicationLaunchOptionsKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UIApplicationLaunchOptionsKey@<X0>(void *a3@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = String._bridgeToObjectiveC()();

  *a3 = v4;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UIApplicationLaunchOptionsKey(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UIApplicationLaunchOptionsKey@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UIApplicationLaunchOptionsKey@<X0>(uint64_t *a2@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIApplicationLaunchOptionsKey(uint64_t a1)
{
  lazy protocol witness table accessor for type UIApplicationLaunchOptionsKey and conformance UIApplicationLaunchOptionsKey(&lazy protocol witness table cache variable for type UIApplicationLaunchOptionsKey and conformance UIApplicationLaunchOptionsKey, &protocol conformance descriptor for UIApplicationLaunchOptionsKey);
  lazy protocol witness table accessor for type UIApplicationLaunchOptionsKey and conformance UIApplicationLaunchOptionsKey(&lazy protocol witness table cache variable for type UIApplicationLaunchOptionsKey and conformance UIApplicationLaunchOptionsKey, &protocol conformance descriptor for UIApplicationLaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t specialized AppDelegate.application(_:didFinishLaunchingWithOptions:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, 0x8000000100098A80, &v14);
    *(v8 + 12) = 2080;
    v13 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo29UIApplicationLaunchOptionsKeyaypGSgMd, &_sSDySo29UIApplicationLaunchOptionsKeyaypGSgMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s - options: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v5, v2);
  return 1;
}

uint64_t specialized AppDelegate.applicationWillTerminate(_:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000100098A60, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return (*(v1 + 8))(v3, v0);
}

id specialized AppDelegate.application(_:configurationForConnecting:options:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000100098A20, &v39);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  (*(v3 + 8))(v5, v2);
  v10 = [a1 role];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      v17 = [a1 configuration];
      v18 = [v17 name];

      if (v18)
      {
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (v21)
        {
          if (v22 == v19 && v21 == v23)
          {
            goto LABEL_12;
          }

          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v31)
          {
            goto LABEL_21;
          }

          if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v19 && v21 == v36)
          {
LABEL_12:

LABEL_21:

LABEL_22:
            v32 = [a1 configuration];
            v33 = [v32 name];

            if (v33)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v35 = v34;
            }

            else
            {
              v35 = 0;
            }

            v26 = [a1 role];
            if (v35)
            {
              v24 = String._bridgeToObjectiveC()();
            }

            else
            {
              v24 = 0;
            }

            goto LABEL_15;
          }

          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v37)
          {
            goto LABEL_22;
          }

LABEL_19:
          v26 = [a1 role];
          v30 = objc_allocWithZone(UISceneConfiguration);
          v24 = String._bridgeToObjectiveC()();
          v27 = [v30 initWithName:v24 sessionRole:v26];
          goto LABEL_16;
        }
      }

      else
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      goto LABEL_19;
    }
  }

  v24 = LACUserInterfaceSceneIdentifierSceneHosting;
  v25 = [a1 configuration];
  v26 = [v25 role];

LABEL_15:
  v27 = [objc_allocWithZone(UISceneConfiguration) initWithName:v24 sessionRole:v26];
LABEL_16:
  v28 = v27;

  return v28;
}

uint64_t specialized AppDelegate.application(_:didDiscardSceneSessions:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x80000001000989D0, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return (*(v1 + 8))(v3, v0);
}

void type metadata accessor for UIApplicationLaunchOptionsKey()
{
  if (!lazy cache variable for type metadata for UIApplicationLaunchOptionsKey)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for UIApplicationLaunchOptionsKey);
    }
  }
}

uint64_t lazy protocol witness table accessor for type UIApplicationLaunchOptionsKey and conformance UIApplicationLaunchOptionsKey(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIApplicationLaunchOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL static UIDevice.isPad.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 1;
}

CGFloat Shake.effectValue(size:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D2>, double a4@<D3>)
{
  v6 = sin(a4 * 3.14159265 * a1);
  CGAffineTransformMakeTranslation(&v10, v6 * a3, 0.0);
  result = v10.a;
  v8 = *&v10.c;
  v9 = *&v10.tx;
  *a2 = *&v10.a;
  *(a2 + 16) = 0;
  *(a2 + 24) = v8;
  *(a2 + 40) = 0;
  *(a2 + 48) = v9;
  *(a2 + 64) = 0x3FF0000000000000;
  return result;
}

unint64_t lazy protocol witness table accessor for type Shake and conformance Shake()
{
  result = lazy protocol witness table cache variable for type Shake and conformance Shake;
  if (!lazy protocol witness table cache variable for type Shake and conformance Shake)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Shake and conformance Shake);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Shake and conformance Shake;
  if (!lazy protocol witness table cache variable for type Shake and conformance Shake)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Shake and conformance Shake);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Shake and conformance Shake;
  if (!lazy protocol witness table cache variable for type Shake and conformance Shake)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Shake and conformance Shake);
  }

  return result;
}

CGFloat protocol witness for GeometryEffect.effectValue(size:) in conformance Shake@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sin(*(v1 + 16) * 3.14159265 * *(v1 + 8));
  CGAffineTransformMakeTranslation(&v8, v3 * v4, 0.0);
  result = v8.a;
  v6 = *&v8.c;
  v7 = *&v8.tx;
  *a1 = *&v8.a;
  *(a1 + 16) = 0;
  *(a1 + 24) = v6;
  *(a1 + 40) = 0;
  *(a1 + 48) = v7;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance Shake@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

double protocol witness for Animatable.animatableData.setter in conformance Shake(double *a1)
{
  result = *a1;
  *(v1 + 16) = *a1;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance Shake(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type Shake and conformance Shake();

  return static GeometryEffect._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance Shake(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type Shake and conformance Shake();

  return static GeometryEffect._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Shake(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Shake(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t PasscodeEmbeddedView.passcodeFocused.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.wrappedValue.getter();
  return v1;
}

void *key path getter for PasscodeEmbeddedView.passcodeFocused : PasscodeEmbeddedView@<X0>(_BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  result = Binding.wrappedValue.getter();
  *a2 = v4;
  return result;
}

void (*PasscodeEmbeddedView.passcodeFocused.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  v7 = *(v1 + 24);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.wrappedValue.getter();
  return PasscodeEmbeddedView.passcodeFocused.modify;
}

void PasscodeEmbeddedView.passcodeFocused.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  Binding.wrappedValue.setter();

  free(v1);
}

uint64_t PasscodeEmbeddedView.$passcodeFocused.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.projectedValue.getter();
  return v1;
}

void *key path getter for PasscodeEmbeddedView.blockedUntil : PasscodeEmbeddedView()
{
  type metadata accessor for PasscodeEmbeddedView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
  return Binding.wrappedValue.getter();
}

uint64_t key path setter for PasscodeEmbeddedView.blockedUntil : PasscodeEmbeddedView(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  outlined init with copy of LACUIAngelConnectionHandling?(a1, &v9 - v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  type metadata accessor for PasscodeEmbeddedView(0);
  outlined init with copy of LACUIAngelConnectionHandling?(v7, v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
  Binding.wrappedValue.setter();
  return outlined destroy of LACUIAngelConnectionHandling?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t PasscodeEmbeddedView.blockedUntil.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  type metadata accessor for PasscodeEmbeddedView(0);
  outlined init with copy of LACUIAngelConnectionHandling?(a1, v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
  Binding.wrappedValue.setter();
  return outlined destroy of LACUIAngelConnectionHandling?(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

void (*PasscodeEmbeddedView.blockedUntil.modify(void **a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
  a1[2] = v5;
  v6 = *(*(v5 - 1) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  a1[3] = v7;
  v9 = type metadata accessor for PasscodeEmbeddedView(0);
  outlined init with copy of LACUIAngelConnectionHandling?(v1 + *(v9 + 24), v8, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
  Binding.wrappedValue.getter();
  return PasscodeEmbeddedView.blockedUntil.modify;
}

void PasscodeEmbeddedView.blockedUntil.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    outlined init with copy of LACUIAngelConnectionHandling?(*(a1 + 8), v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    Binding.wrappedValue.setter();
    outlined destroy of LACUIAngelConnectionHandling?(v2, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
    v5 = v4;
    v6 = &_s10Foundation4DateVSgMd;
    v7 = &_s10Foundation4DateVSgMR;
  }

  else
  {
    Binding.wrappedValue.setter();
    v6 = &_s7SwiftUI7BindingVy10Foundation4DateVSgGMd;
    v7 = &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR;
    v5 = v2;
  }

  outlined destroy of LACUIAngelConnectionHandling?(v5, v6, v7);
  free(v2);
  free(v4);

  free(v3);
}

uint64_t PasscodeEmbeddedView.blockedUntil.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for PasscodeEmbeddedView(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
  return a1(v2);
}

void PasscodeEmbeddedView.init(passcodeLength:alphanumeric:placeholder:dismissKeyboardOnDissappear:passcodeFocused:blockedUntil:verifyPasscode:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a8;
  v42 = a6;
  v43 = a7;
  v38 = a5;
  v35[1] = a3;
  v36 = a1;
  v41 = a10;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService20PasscodeEmbeddedViewVSgMd, &_s28LocalAuthenticationUIService20PasscodeEmbeddedViewVSgMR);
  __chkstk_darwin(v15 - 8);
  v17 = v35 - v16;
  v37 = type metadata accessor for PasscodeEmbeddedParentViewController(0);
  v18 = objc_allocWithZone(v37);
  v19 = OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  v20 = type metadata accessor for PasscodeEmbeddedView(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v39 = v21 + 56;
  v40 = v22;
  v22(&v18[v19], 1, 1, v20);
  v23 = &v18[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_verifyPasscode];
  *v23 = 0;
  v23[1] = 0;
  v24 = objc_allocWithZone(PasscodeEmbeddedCustomizableViewController);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a11, a12);
  v25 = [v24 initWithPasscodeLength:v36 alphanumeric:a2 & 1];
  *&v18[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeViewController] = v25;
  v26 = v25;
  if (a4)
  {
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  [v25 setPlaceholderText:v27];

  v28 = *v23;
  v29 = v23[1];
  *v23 = a11;
  v23[1] = a12;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a11, a12);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v28, v29);
  v18[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_dismissKeyboardOnDissappear] = v38 & 1;
  v45.receiver = v18;
  v45.super_class = v37;
  v30 = objc_msgSendSuper2(&v45, "initWithNibName:bundle:", 0, 0);
  [*&v30[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeViewController] setDelegate:v30];
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a11, a12);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a11, a12);
  v32 = v42;
  v31 = v43;
  *a9 = v30;
  *(a9 + 8) = v32;
  *(a9 + 16) = v31;
  *(a9 + 24) = v44 & 1;
  outlined init with take of Binding<Date?>(v41, a9 + *(v20 + 24));
  outlined init with copy of PasscodeEmbeddedView(a9, v17);
  v40(v17, 0, 1, v20);
  v33 = OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  swift_beginAccess();
  v34 = v30;
  outlined assign with take of PasscodeEmbeddedView?(v17, &v30[v33]);
  swift_endAccess();
}

char *PasscodeEmbeddedParentViewController.__allocating_init(passcodeLength:alphanumeric:placeholder:dismissKeyboardOnDissappear:verifyPasscode:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = objc_allocWithZone(v8);
  v16 = OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  v17 = type metadata accessor for PasscodeEmbeddedView(0);
  (*(*(v17 - 8) + 56))(&v15[v16], 1, 1, v17);
  v18 = &v15[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_verifyPasscode];
  *v18 = 0;
  v18[1] = 0;
  v19 = [objc_allocWithZone(PasscodeEmbeddedCustomizableViewController) initWithPasscodeLength:a1 alphanumeric:a2 & 1];
  *&v15[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeViewController] = v19;
  v20 = v19;
  if (a4)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  [v19 setPlaceholderText:v21];

  v22 = *v18;
  v23 = v18[1];
  *v18 = a6;
  v18[1] = a7;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a6, a7);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v22, v23);
  v15[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_dismissKeyboardOnDissappear] = a5 & 1;
  v28.receiver = v15;
  v28.super_class = v8;
  v24 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", 0, 0);
  v25 = *&v24[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeViewController];
  v26 = v24;
  [v25 setDelegate:v26];
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a6, a7);

  return v26;
}

uint64_t PasscodeEmbeddedParentViewController.setEmbeddedView(embeddedView:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService20PasscodeEmbeddedViewVSgMd, &_s28LocalAuthenticationUIService20PasscodeEmbeddedViewVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  outlined init with copy of PasscodeEmbeddedView(a1, &v9 - v4);
  v6 = type metadata accessor for PasscodeEmbeddedView(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  swift_beginAccess();
  outlined assign with take of PasscodeEmbeddedView?(v5, v1 + v7);
  return swift_endAccess();
}

id PasscodeEmbeddedView.updateUIViewController(_:context:)(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v19[-v11];
  type metadata accessor for PasscodeEmbeddedView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
  Binding.wrappedValue.getter();
  if ((*(v4 + 48))(v12, 1, v3))
  {
    outlined destroy of LACUIAngelConnectionHandling?(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v13 = 0.0;
  }

  else
  {
    (*(v4 + 16))(v9, v12, v3);
    outlined destroy of LACUIAngelConnectionHandling?(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v13 = v14;
    v15 = *(v4 + 8);
    v15(v7, v3);
    v15(v9, v3);
  }

  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v20 = *(v1 + 8);
  v21 = v16;
  v22 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.wrappedValue.getter();
  return [*(a1 + OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeViewController) setBackoffTimeout:0 showBackoffTitle:v19[7] passcodeFocused:v13];
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance PasscodeEmbeddedView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type PasscodeEmbeddedView and conformance PasscodeEmbeddedView(&lazy protocol witness table cache variable for type PasscodeEmbeddedView and conformance PasscodeEmbeddedView, &protocol conformance descriptor for PasscodeEmbeddedView);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance PasscodeEmbeddedView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type PasscodeEmbeddedView and conformance PasscodeEmbeddedView(&lazy protocol witness table cache variable for type PasscodeEmbeddedView and conformance PasscodeEmbeddedView, &protocol conformance descriptor for PasscodeEmbeddedView);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance PasscodeEmbeddedView(uint64_t a1)
{
  lazy protocol witness table accessor for type PasscodeEmbeddedView and conformance PasscodeEmbeddedView(&lazy protocol witness table cache variable for type PasscodeEmbeddedView and conformance PasscodeEmbeddedView, &protocol conformance descriptor for PasscodeEmbeddedView);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t variable initialization expression of PasscodeEmbeddedParentViewController.passcodeEmbeddedView@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PasscodeEmbeddedView(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

char *PasscodeEmbeddedParentViewController.init(passcodeLength:alphanumeric:placeholder:dismissKeyboardOnDissappear:verifyPasscode:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v16 = OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  v17 = type metadata accessor for PasscodeEmbeddedView(0);
  (*(*(v17 - 8) + 56))(&v8[v16], 1, 1, v17);
  v18 = &v8[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_verifyPasscode];
  *v18 = 0;
  v18[1] = 0;
  v19 = [objc_allocWithZone(PasscodeEmbeddedCustomizableViewController) initWithPasscodeLength:a1 alphanumeric:a2 & 1];
  *&v8[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeViewController] = v19;
  v20 = v19;
  if (a4)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  [v19 setPlaceholderText:v21];

  v22 = *v18;
  v23 = v18[1];
  *v18 = a6;
  v18[1] = a7;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a6, a7);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v22, v23);
  v8[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_dismissKeyboardOnDissappear] = a5 & 1;
  v28.receiver = v8;
  v28.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", 0, 0);
  v25 = *&v24[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeViewController];
  v26 = v24;
  [v25 setDelegate:v26];
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a6, a7);

  return v26;
}

uint64_t type metadata accessor for PasscodeEmbeddedView(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of Binding<Date?>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PasscodeEmbeddedView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasscodeEmbeddedView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of PasscodeEmbeddedView?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService20PasscodeEmbeddedViewVSgMd, &_s28LocalAuthenticationUIService20PasscodeEmbeddedViewVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void PasscodeEmbeddedParentViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  v2 = type metadata accessor for PasscodeEmbeddedView(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_verifyPasscode);
  *v3 = 0;
  v3[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall PasscodeEmbeddedParentViewController.loadView()()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v0 setView:v1];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeViewController];
  v5 = [v4 view];
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  [v3 addSubview:v5];

  [v0 addChildViewController:v4];
  [v4 didMoveToParentViewController:v0];
  v7 = [v4 view];
  if (!v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100087710;
  v10 = [v4 view];
  if (!v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = v10;
  v12 = [v10 trailingAnchor];

  v13 = [v0 view];
  if (!v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  v15 = [v13 trailingAnchor];

  v16 = [v12 constraintEqualToAnchor:v15];
  *(v9 + 32) = v16;
  v17 = [v4 view];
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [v19 constraintEqualToAnchor:v22];
  *(v9 + 40) = v23;
  v24 = [v4 view];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = [v0 view];
  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v27;
  v29 = [v27 topAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v9 + 48) = v30;
  v31 = [v4 view];
  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [v0 view];
  if (!v34)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = objc_opt_self();
  v37 = [v35 bottomAnchor];

  v38 = [v33 constraintEqualToAnchor:v37];
  *(v9 + 56) = v38;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints:isa];
}

unint64_t type metadata accessor for NSLayoutConstraint()
{
  result = lazy cache variable for type metadata for NSLayoutConstraint;
  if (!lazy cache variable for type metadata for NSLayoutConstraint)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSLayoutConstraint);
  }

  return result;
}

Swift::Void __swiftcall PasscodeEmbeddedParentViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "viewWillAppear:", a1);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = v1;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:), v10);
}

uint64_t closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  v5 = type metadata accessor for PasscodeEmbeddedView(0);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();

  return _swift_task_switch(closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:), 0, 0);
}

uint64_t closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)()
{
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:), v2, v1);
}

{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);

  v4 = OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  swift_beginAccess();
  v5 = (*(v1 + 48))(v3 + v4, 1, v2);
  if (!v5)
  {
    v6 = *(v0 + 96);
    outlined init with copy of PasscodeEmbeddedView(v3 + v4, v6);
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    *(v0 + 40) = *(v6 + 8);
    *(v0 + 48) = v7;
    *(v0 + 56) = v8;
    *(v0 + 57) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    Binding.wrappedValue.setter();
    outlined destroy of PasscodeEmbeddedView(v6);
  }

  **(v0 + 64) = v5 != 0;
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:), v10, v9);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:);

  return closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)(a1, v5, v6, v4);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of LACUIAngelConnectionHandling?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of LACUIAngelConnectionHandling?(v11, &_sScPSgMd, &_sScPSgMR);
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

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      outlined destroy of LACUIAngelConnectionHandling?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
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

  outlined destroy of LACUIAngelConnectionHandling?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

Swift::Void __swiftcall PasscodeEmbeddedParentViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "viewWillDisappear:", a1);
  if (*(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_dismissKeyboardOnDissappear) == 1)
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    type metadata accessor for MainActor();
    v8 = v1;
    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v8;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:), v10);
  }
}

uint64_t closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  v5 = type metadata accessor for PasscodeEmbeddedView(0);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();

  return _swift_task_switch(closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:), 0, 0);
}

uint64_t closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:)()
{
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:), v2, v1);
}

{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);

  v4 = OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  swift_beginAccess();
  v5 = (*(v1 + 48))(v3 + v4, 1, v2);
  if (!v5)
  {
    v6 = *(v0 + 96);
    outlined init with copy of PasscodeEmbeddedView(v3 + v4, v6);
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    *(v0 + 40) = *(v6 + 8);
    *(v0 + 48) = v7;
    *(v0 + 56) = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    Binding.wrappedValue.setter();
    outlined destroy of PasscodeEmbeddedView(v6);
  }

  **(v0 + 64) = v5 != 0;
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:), v10, v9);
}

uint64_t partial apply for closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:)(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:);

  return closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:)(a1, v5, v6, v4);
}

uint64_t PasscodeEmbeddedParentViewController.verifyPasscode(_:reply:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_verifyPasscode);
  if (v5)
  {
    v9 = result;
    v10 = *(v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_verifyPasscode + 8);

    v5(v9, a2, a3, a4);

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v10);
  }

  return result;
}

uint64_t sub_100043CEC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100043DBC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PasscodeEmbeddedView(uint64_t a1)
{
  type metadata accessor for PasscodeEmbeddedParentViewController(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Binding<Bool>();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Binding<Date?>(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Binding<Bool>()
{
  if (!lazy cache variable for type metadata for Binding<Bool>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Bool>);
    }
  }
}

void type metadata accessor for Binding<Date?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Binding<Date?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Binding<Date?>);
    }
  }
}

void type metadata completion function for PasscodeEmbeddedParentViewController(uint64_t a1)
{
  type metadata accessor for PasscodeEmbeddedView?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for PasscodeEmbeddedView?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PasscodeEmbeddedView?)
  {
    type metadata accessor for PasscodeEmbeddedView(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PasscodeEmbeddedView?);
    }
  }
}

uint64_t sub_1000440D0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)partial apply(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)partial apply;

  return closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)(a1, v5, v6, v4);
}

uint64_t closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)partial apply()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t lazy protocol witness table accessor for type PasscodeEmbeddedView and conformance PasscodeEmbeddedView(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PasscodeEmbeddedView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of PasscodeEmbeddedView(uint64_t a1)
{
  v2 = type metadata accessor for PasscodeEmbeddedView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10004459C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_29(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)partial apply;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t key path getter for SceneControllerRemoteAlert.delegate : SceneControllerRemoteAlert@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for SceneControllerRemoteAlert.delegate : SceneControllerRemoteAlert(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

void (*SceneControllerRemoteAlert.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return SceneControllerRemoteAlert.delegate.modify;
}

Swift::Void __swiftcall SceneControllerRemoteAlert.sceneDidConnect(identifier:options:urls:)(Swift::String identifier, Swift::OpaquePointer_optional options, Swift::OpaquePointer_optional urls)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    lazy protocol witness table accessor for type SceneControllerRemoteAlert and conformance SceneControllerRemoteAlert();
    dispatch thunk of LACUISceneControllerDelegate.sceneControllerDidConnectScene(_:identifier:userInfo:)();
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall SceneControllerRemoteAlert.sceneDidDisconnect(identifier:)(Swift::String identifier)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    lazy protocol witness table accessor for type SceneControllerRemoteAlert and conformance SceneControllerRemoteAlert();
    dispatch thunk of LACUISceneControllerDelegate.sceneControllerDidDisconnectScene(_:identifier:)();
    swift_unknownObjectRelease();
  }
}

void (*protocol witness for LACUISceneControlling.delegate.modify in conformance SceneControllerRemoteAlert(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return protocol witness for LACUISceneControlling.delegate.modify in conformance SceneControllerRemoteAlert;
}

uint64_t protocol witness for LACUISceneControlling.sceneDidConnect(identifier:options:urls:) in conformance SceneControllerRemoteAlert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    dispatch thunk of LACUISceneControllerDelegate.sceneControllerDidConnectScene(_:identifier:userInfo:)();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t protocol witness for LACUISceneControlling.sceneDidDisconnect(identifier:) in conformance SceneControllerRemoteAlert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    dispatch thunk of LACUISceneControllerDelegate.sceneControllerDidDisconnectScene(_:identifier:)();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized SceneControllerRemoteAlert.checkNeedsScene(options:urls:)(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  static LACUISceneUserInfoKey.rootControllerName.getter();
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v5 & 1) == 0))
  {
    outlined destroy of AnyHashable(v8);
LABEL_10:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_11;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v4, &v9);
  outlined destroy of AnyHashable(v8);
  if (!*(&v10 + 1))
  {
LABEL_11:
    outlined destroy of Any?(&v9);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v6 = 0;
    return v6 & 1;
  }

  if (v8[0] == *(v2 + 16) && v8[1] == *(v2 + 24))
  {

    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DevicePasscodeVerifier.verify(passcode:acmContext:userId:policy:options:auditToken:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v51 = a5;
  v52 = a8;
  v48 = a7;
  v49 = a3;
  v50 = a4;
  v46 = a6;
  v47 = a10;
  v44 = a9;
  v12 = type metadata accessor for String.Encoding();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = [objc_opt_self() sharedInstance];
  v16 = objc_allocWithZone(LACSecureData);
  v17 = String._bridgeToObjectiveC()();
  v43 = [v16 initWithString:v17];

  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  if ([objc_opt_self() isSharedIPad])
  {
    static String.Encoding.utf8.getter();
    v19 = String.data(using:allowLossyConversion:)();
    v21 = v20;
    (*(v13 + 8))(v15, v12);
    if (v21 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data?(v19, v21);
    }

    v23 = MKBUnlockDevice();

    *(v18 + 16) = v23;
  }

  v42 = (*(a12 + 8))(a11, a12);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v25[2] = a11;
  v25[3] = a12;
  v26 = v44;
  v27 = v45;
  v25[4] = v24;
  v25[5] = v26;
  v28 = v48;
  v25[6] = v47;
  v25[7] = v18;
  v25[8] = v27;
  v25[9] = v28;
  v41[1] = v18;
  v29 = v43;
  v31 = v49;
  v30 = v50;
  v25[10] = v43;
  v25[11] = v31;
  v33 = v51;
  v32 = v52;
  v25[12] = v30;
  v25[13] = v32;
  v34 = v46;
  v25[14] = v33;
  v25[15] = v34;
  aBlock[4] = partial apply for closure #1 in DevicePasscodeVerifier.verify(passcode:acmContext:userId:policy:options:auditToken:reply:);
  v54 = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_3;
  v35 = _Block_copy(aBlock);
  v46 = v54;

  v36 = v27;

  v37 = v29;
  outlined copy of Data._Representation(v31, v30);
  v38 = v33;
  v39 = v32;

  [v42 currentBackoffErrorWithReply:v35];
  _Block_release(v35);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000450D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t closure #1 in DevicePasscodeVerifier.verify(passcode:acmContext:userId:policy:options:auditToken:reply:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, unint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v55 = a8;
  v58 = a6;
  v59 = a7;
  v57 = a5;
  v62 = a3;
  v63 = a4;
  v56 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v56 - 8);
  __chkstk_darwin(v56);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v60 = *(v19 - 8);
  v61 = v19;
  __chkstk_darwin(v19);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS.QoSClass();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v26 = v62;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = *(a15 + 80);
      swift_errorRetain();
      v27(a1, a14, a15);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_errorRetain();
    }

    v26(0);
  }

  else
  {
    v51 = a13;
    v50 = a12;
    v48 = a11;
    v47 = a10;
    v52 = v18;
    type metadata accessor for OS_dispatch_queue();
    v54 = v16;
    (*(v23 + 104))(v25, enum case for DispatchQoS.QoSClass.default(_:), v22);
    v53 = static OS_dispatch_queue.global(qos:)();
    (*(v23 + 8))(v25, v22);
    v28 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v29 = swift_allocObject();
    v29[2] = a14;
    v29[3] = a15;
    v49 = v28;
    v31 = v57;
    v30 = v58;
    v29[4] = v28;
    v29[5] = v31;
    v32 = v63;
    v29[6] = v62;
    v29[7] = v32;
    v33 = v59;
    v29[8] = v30;
    v29[9] = v33;
    v34 = v55;
    v29[10] = v55;
    v29[11] = a9;
    v35 = v48;
    v29[12] = a10;
    v29[13] = v35;
    v36 = v50;
    v37 = v51;
    v29[14] = v50;
    v29[15] = v37;
    aBlock[4] = partial apply for closure #1 in closure #1 in DevicePasscodeVerifier.verify(passcode:acmContext:userId:policy:options:auditToken:reply:);
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_13;
    v62 = _Block_copy(aBlock);
    v38 = v34;

    v39 = v30;

    outlined copy of Data._Representation(a9, v47);
    v40 = v36;
    v41 = v35;
    static DispatchQoS.unspecified.getter();
    v64 = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v42 = v52;
    v43 = v56;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v44 = v62;
    v45 = v53;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v44);

    (*(v54 + 8))(v42, v43);
    (*(v60 + 8))(v21, v61);
  }
}

uint64_t sub_100045618()
{

  outlined consume of Data._Representation(*(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 128, 7);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

void type metadata accessor for LAPolicy()
{
  if (!lazy cache variable for type metadata for LAPolicy)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for LAPolicy);
    }
  }
}

uint64_t sub_100045818()
{

  outlined consume of Data._Representation(*(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 128, 7);
}

void (*partial apply for closure #1 in closure #1 in DevicePasscodeVerifier.verify(passcode:acmContext:userId:policy:options:auditToken:reply:)())(uint64_t *, void)
{
  v40 = v0[2];
  v41 = v0[3];
  v1 = v0[5];
  v37 = v0[6];
  v38 = v0[7];
  v39 = v0[8];
  v2 = v0[10];
  v3 = v0[13];
  v4 = v0[14];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ([objc_opt_self() isSharedIPad])
    {
      swift_beginAccess();
      v6 = *(v1 + 16);
      if (v6 == -14 || v6 == -3)
      {
        v9 = v40;
        v8 = v41;
        goto LABEL_14;
      }

      if (v6)
      {
        v9 = v40;
        v8 = v41;
LABEL_21:
        (*(v8 + 56))(v9, v8);
        v30 = objc_opt_self();
        v31 = LACErrorCodeInternal;
        v32 = String._bridgeToObjectiveC()();
        v33 = [v30 errorWithCode:v31 debugDescription:v32];

        (*(v8 + 64))(v33, v9, v8);
LABEL_23:

        return swift_unknownObjectRelease();
      }
    }

    v10 = objc_allocWithZone(LACMutablePasscodeVerificationRequest);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v12 = [v10 initWithPasscode:v2 acmContext:isa auditToken:v3];

    [v12 setUserId:v4];
    LACPolicy.policy.getter();
    [v12 setPolicy:v13];
    v14 = Dictionary._bridgeToObjectiveC()().super.isa;
    [v12 setOptions:v14];

    v15 = [v39 verifyPasscode:v12];
    if (v15 == 2)
    {
      (*(v41 + 56))(v40, v41);
      v27 = (*(v41 + 8))(v40, v41);
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      v29[2] = v40;
      v29[3] = v41;
      v29[4] = v28;
      v29[5] = v37;
      v29[6] = v38;
      v46 = partial apply for closure #2 in DevicePasscodeVerifier.handlePasscode(result:reply:);
      v47 = v29;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
      v45 = &block_descriptor_20;
      v26 = _Block_copy(&aBlock);

      [v27 actionBackoffWithReply:{v26, v37, v38}];
      goto LABEL_19;
    }

    v9 = v40;
    v8 = v41;
    if (v15 != 1)
    {
      if (!v15)
      {
        [(*(v41 + 8))(v40 v41)];
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000867F0;
        aBlock = 0x746C75736552;
        v43 = 0xE600000000000000;
        AnyHashable.init<A>(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_SbtGMd, &_ss23_ContiguousArrayStorageCySi_SbtGMR);
        v17 = swift_initStackObject();
        *(v17 + 16) = xmmword_1000867F0;
        *(v17 + 32) = LACResultPassedPasscode;
        *(v17 + 40) = 1;
        v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SbTt0g5Tf4g_n(v17);
        swift_setDeallocating();
        *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSbGMd, &_sSDySiSbGMR);
        *(inited + 72) = v18;
        v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of (AnyHashable, Any)(inited + 32);
        (*(v41 + 48))(v19, v40, v41);

        v37(1);
        return swift_unknownObjectRelease();
      }

      goto LABEL_21;
    }

LABEL_14:
    (*(v8 + 56))(v9, v8);
    result = (*(v8 + 40))(&aBlock, v9, v8);
    if (*v20 == -1)
    {
      __break(1u);
      return result;
    }

    ++*v20;
    result(&aBlock, 0);
    v21 = (*(v8 + 16))(v9, v8);
    if ((v22 & 1) == 0 && (*(v8 + 24))(v9, v8) >= v21)
    {
      v34 = objc_opt_self();
      v35 = LACErrorCodeAuthenticationFailed;
      v36 = String._bridgeToObjectiveC()();
      v33 = [v34 errorWithCode:v35 debugDescription:v36];

      (*(v8 + 72))(v33, v9, v8);
      goto LABEL_23;
    }

    v23 = (*(v8 + 8))(v9, v8);
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v25[2] = v9;
    v25[3] = v8;
    v25[4] = v24;
    v25[5] = v37;
    v25[6] = v38;
    v46 = partial apply for closure #1 in DevicePasscodeVerifier.handlePasscode(result:reply:);
    v47 = v25;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v45 = &block_descriptor_27;
    v26 = _Block_copy(&aBlock);

    [v23 actionFailureWithReply:{v26, v37, v38}];
LABEL_19:
    _Block_release(v26);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in DevicePasscodeVerifier.handlePasscode(result:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a3;
  v24 = a6;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v12 = *(v25 - 8);
  __chkstk_darwin(v25);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v17 = swift_allocObject();
  v18 = v23;
  v19 = v24;
  v17[2] = a5;
  v17[3] = v19;
  v17[4] = a1;
  v17[5] = v18;
  v17[6] = a4;
  v17[7] = v16;
  aBlock[4] = partial apply for closure #1 in closure #1 in DevicePasscodeVerifier.handlePasscode(result:reply:);
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_34;
  v20 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v26 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v25);
}

uint64_t closure #2 in DevicePasscodeVerifier.handlePasscode(result:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  result = __chkstk_darwin(v15);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29 = result;
    v27 = v17;
    type metadata accessor for OS_dispatch_queue();
    v26 = v12;
    v20 = a3;
    swift_errorRetain();
    v28 = static OS_dispatch_queue.main.getter();
    v21 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v22 = swift_allocObject();
    v22[2] = a5;
    v22[3] = a6;
    v22[4] = v21;
    v22[5] = a1;
    v22[6] = v20;
    v22[7] = a4;
    aBlock[4] = partial apply for closure #1 in closure #2 in DevicePasscodeVerifier.handlePasscode(result:reply:);
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_41;
    v23 = _Block_copy(aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = v28;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v26 + 8))(v14, v11);
    return (*(v27 + 8))(v19, v29);
  }

  return result;
}

uint64_t objectdestroy_16Tm()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t outlined destroy of (AnyHashable, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000466F8()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t partial apply for closure #1 in closure #1 in DevicePasscodeVerifier.handlePasscode(result:reply:)()
{
  v1 = v0[4];
  v2 = v0[5];
  if (!v1)
  {
    return v2(0);
  }

  v3 = v0[2];
  v4 = v0[3];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 80);
    swift_errorRetain();
    v5(v1, v3, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_errorRetain();
  }

  v2(0);
}

uint64_t sub_10004681C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t partial apply for closure #1 in closure #2 in DevicePasscodeVerifier.handlePasscode(result:reply:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    (*(v2 + 80))(v3, v1, v2);
    swift_unknownObjectRelease();
  }

  return v4(0);
}

uint64_t AngelSceneFrontBoard.identifier.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_identifier);

  return v3;
}

uint64_t AngelSceneFrontBoard.persistentIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_persistentIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t AngelSceneFrontBoard.persistentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_persistentIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t key path getter for AngelSceneFrontBoard.persistentIdentifier : AngelSceneFrontBoard@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xA0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for AngelSceneFrontBoard.persistentIdentifier : AngelSceneFrontBoard(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0xA8);

  return v4(v2, v3);
}

uint64_t AngelSceneFrontBoard.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for AngelSceneFrontBoard.delegate : AngelSceneFrontBoard@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AngelSceneFrontBoard.delegate : AngelSceneFrontBoard(void *a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0xC0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*AngelSceneFrontBoard.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return AngelSceneRemoteAlert.delegate.modify;
}

id AngelSceneFrontBoard.__allocating_init(identifier:bundleId:service:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_processHandle] = 0;
  v14 = &v13[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_persistentIdentifier];
  *v14 = 0;
  *(v14 + 1) = 0;
  swift_unknownObjectWeakInit();
  v15 = &v13[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_identifier];
  *v15 = a1;
  *(v15 + 1) = a2;
  v16 = &v13[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_bundleId];
  *v16 = a3;
  *(v16 + 1) = a4;
  *&v13[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_options] = a6;
  *&v13[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_service] = a5;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, "init");
}

id AngelSceneFrontBoard.init(identifier:bundleId:service:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_processHandle] = 0;
  v13 = &v6[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_persistentIdentifier];
  *v13 = 0;
  *(v13 + 1) = 0;
  swift_unknownObjectWeakInit();
  v14 = &v6[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_identifier];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v6[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_bundleId];
  *v15 = a3;
  *(v15 + 1) = a4;
  *&v6[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_options] = a6;
  *&v6[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_service] = a5;
  v17.receiver = v6;
  v17.super_class = type metadata accessor for AngelSceneFrontBoard();
  return objc_msgSendSuper2(&v17, "init");
}

Swift::Void __swiftcall AngelSceneFrontBoard.activate()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_service);
  v3 = String._bridgeToObjectiveC()();
  v4 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_options);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = partial apply for closure #1 in AngelSceneFrontBoard.activate();
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed BSProcessHandle?, @guaranteed Error?) -> ();
  v7[3] = &block_descriptor_4;
  v6 = _Block_copy(v7);

  [v2 openApplication:v3 withOptions:v4 completion:v6];
  _Block_release(v6);
}

uint64_t sub_100047290()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void partial apply for closure #1 in AngelSceneFrontBoard.activate()(void *a1, uint64_t a2)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v3 = Strong;
    v4 = (*((swift_isaMask & *Strong) + 0xB8))();
    if (v4)
    {
      v5 = v4;
      v6 = _convertErrorToNSError(_:)();
      [v5 angelSceneDidDeactivate:v3 error:v6];

      swift_unknownObjectRelease();
      v3 = v6;
    }
  }

  else if (a1)
  {
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (!v8)
    {
      return;
    }

    v3 = v8;
    v9 = *(v8 + OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_processHandle);
    *(v8 + OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_processHandle) = a1;
    v10 = a1;
  }

  else
  {
    v11 = objc_opt_self();
    v12 = LACErrorCodeInternal;
    _StringGuts.grow(_:)(26);
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService20AngelSceneFrontBoardCSgMd, &_s28LocalAuthenticationUIService20AngelSceneFrontBoardCSgMR);
    v13 = String.init<A>(describing:)();
    v15 = v14;

    v24 = v13;
    v16._object = 0x8000000100098DE0;
    v16._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v16);
    v17 = String._bridgeToObjectiveC()();

    v3 = [v11 errorWithCode:v12 debugDescription:{v17, v24, v15}];

    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v20 = *((swift_isaMask & *v18) + 0xB8);
      v3 = v3;
      v21 = v20();
      if (v21)
      {
        v22 = v21;
        v23 = _convertErrorToNSError(_:)();
        [v22 angelSceneDidDeactivate:v19 error:v23];

        swift_unknownObjectRelease();
        v3 = v23;
      }

      else
      {
      }
    }
  }
}

void *AngelSceneFrontBoard.sceneDidDeactivate(with:)(void *a1)
{
  result = (*((swift_isaMask & *v1) + 0xB8))();
  if (result)
  {
    v4 = result;
    if (a1)
    {
      a1 = _convertErrorToNSError(_:)();
    }

    [v4 angelSceneDidDeactivate:v1 error:a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed BSProcessHandle?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall AngelSceneFrontBoard.deactivate()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_processHandle];
  if (v5)
  {
    *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_processHandle] = 0;

    v6 = [objc_opt_self() sharedApplication];
    v7 = [v6 openSessions];
    v8 = type metadata accessor for UISceneSession();
    lazy protocol witness table accessor for type UISceneSession and conformance NSObject();
    v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = v0;
    v11 = specialized Set._Variant.filter(_:)(v9, v10);

    v44 = v10;
    v45 = v8;
    v43 = v11;
    if ((v11 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v11 = aBlock[7];
      v12 = aBlock[8];
      v13 = aBlock[9];
      v14 = aBlock[10];
      v15 = aBlock[11];
    }

    else
    {
      v26 = -1 << *(v11 + 32);
      v12 = v11 + 56;
      v13 = ~v26;
      v27 = -v26;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v15 = v28 & *(v11 + 56);

      v14 = 0;
    }

    v42 = v13;
    v29 = (v13 + 64) >> 6;
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v30 = __CocoaSet.Iterator.next()();
      if (!v30)
      {
        break;
      }

      v46 = v30;
      swift_dynamicCast();
      v31 = aBlock[0];
      v32 = v14;
      v33 = v15;
      if (!aBlock[0])
      {
        break;
      }

      while (1)
      {
        v36 = swift_allocObject();
        *(v36 + 16) = v31;
        aBlock[4] = partial apply for closure #1 in closure #2 in AngelSceneFrontBoard.deactivate();
        aBlock[5] = v36;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
        aBlock[3] = &block_descriptor_6_0;
        v37 = _Block_copy(aBlock);
        v38 = v31;

        [v6 requestSceneSessionDestruction:v38 options:0 errorHandler:{v37, v42, v43}];
        _Block_release(v37);

        v14 = v32;
        v15 = v33;
        if (v11 < 0)
        {
          break;
        }

LABEL_15:
        v34 = v14;
        v35 = v15;
        v32 = v14;
        if (!v15)
        {
          while (1)
          {
            v32 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              break;
            }

            if (v32 >= v29)
            {
              goto LABEL_22;
            }

            v35 = *(v12 + 8 * v32);
            ++v34;
            if (v35)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
          return;
        }

LABEL_19:
        v33 = (v35 - 1) & v35;
        v31 = *(*(v11 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v35)))));
        if (!v31)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_22:
    outlined consume of Set<UISceneSession>.Iterator._Variant(v11);

    v40 = v44;
    v41 = (*((swift_isaMask & *v44) + 0xB8))(v39);
    if (v41)
    {
      [v41 angelSceneDidDeactivate:v40 error:0];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    static LACLog.ui.getter();
    v16 = v0;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v19 = 136315138;
      v20 = v16;
      v21 = [v20 description];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, aBlock);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s - cannot deactivate nil handle", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t closure #1 in closure #2 in AngelSceneFrontBoard.deactivate()(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v7 = a2;
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 2112;
    v12 = v7;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    v11[1] = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "Scene session %@ failed to deactivate with error: %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
  }

  return (*(v4 + 8))(v6, v3);
}

id AngelSceneFrontBoard.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AngelSceneFrontBoard();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall AngelSceneFrontBoard.sceneDidActivate()()
{
  v1 = (*((swift_isaMask & *v0) + 0xB8))();
  if (v1)
  {
    [v1 angelSceneDidActivate:v0];

    swift_unknownObjectRelease();
  }
}

unint64_t type metadata accessor for UISceneSession()
{
  result = lazy cache variable for type metadata for UISceneSession;
  if (!lazy cache variable for type metadata for UISceneSession)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UISceneSession);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UISceneSession and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UISceneSession and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UISceneSession and conformance NSObject)
  {
    type metadata accessor for UISceneSession();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UISceneSession and conformance NSObject);
  }

  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo14UISceneSessionCGMd, &_ss11_SetStorageCySo14UISceneSessionCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo14UISceneSessionCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So14iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n072_s28LocalAuthenticationUIService20AngelSceneFrontBoardC10deactivateyyFSbqiJ6CXEfU_0uV9UIService0xyZ5BoardCTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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

    v8 = a4;
    v9 = specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo14UISceneSessionCGMd, &_ss11_SetStorageCySo14UISceneSessionCGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *specialized closure #1 in _NativeSet.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = result;
  v26 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v27 = v11 | (v5 << 6);
    v14 = *(*(a3 + 48) + 8 * v27);
    v15 = [v14 persistentIdentifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = (*((swift_isaMask & *a4) + 0xA0))();
    if (v20)
    {
      if (v16 == v19 && v20 == v18)
      {

LABEL_20:
        *(v25 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        if (__OFADD__(v26++, 1))
        {
          __break(1u);
LABEL_23:

          return specialized _NativeSet.extractSubset(using:count:)(v25, a2, v26, a3);
        }
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_23;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.filter(_:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v10 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_27;
  }

  while (2)
  {
    v34 = v7;
    v35 = v3;
    v33 = &v33;
    __chkstk_darwin(v9);
    v36 = &v33 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v8);
    v37 = 0;
    v8 = 0;
    v3 = v4 + 56;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    v7 = (v11 + 63) >> 6;
    v39 = v4;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_13:
      v17 = v14 | (v8 << 6);
      v18 = *(v4 + 48);
      v38 = v17;
      v19 = *(v18 + 8 * v17);
      v20 = [v19 persistentIdentifier];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = (*((swift_isaMask & *v10) + 0xA0))();
      if (v25)
      {
        if (v21 == v24 && v25 == v23)
        {

          v4 = v39;
LABEL_21:
          *&v36[(v38 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v38;
          if (__OFADD__(v37++, 1))
          {
            __break(1u);
LABEL_24:
            v29 = specialized _NativeSet.extractSubset(using:count:)(v36, v34, v37, v4);

            return v29;
          }
        }

        else
        {
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v4 = v39;
          if (v27)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {

        v4 = v39;
      }
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v7)
      {
        goto LABEL_24;
      }

      v16 = *(v3 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_27:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v31 = swift_slowAlloc();
  v32 = v10;
  v29 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo14UISceneSessionCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So14iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n072_s28LocalAuthenticationUIService20AngelSceneFrontBoardC10deactivateyyFSbqiJ6CXEfU_0uV9UIService0xyZ5BoardCTf1nnc_n(v31, v7, v4, v32);

  return v29;
}

Swift::Int specialized Set._Variant.filter(_:)(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return specialized _NativeSet.filter(_:)(a1, a2);
  }

  v2 = a2;
  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for UISceneSession();
    do
    {
      swift_dynamicCast();
      v9 = [v22 persistentIdentifier];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = (*((swift_isaMask & *v2) + 0xA0))();
      if (v14)
      {
        if (v10 == v13 && v14 == v12)
        {

LABEL_18:
          v17 = *(&_swiftEmptySetSingleton + 2);
          if (*(&_swiftEmptySetSingleton + 3) <= v17)
          {
            specialized _NativeSet.resize(capacity:)(v17 + 1);
          }

          result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
          v4 = &_swiftEmptySetSingleton + 56;
          v5 = -1 << *(&_swiftEmptySetSingleton + 32);
          v6 = result & ~v5;
          v7 = v6 >> 6;
          if (((-1 << v6) & ~*(&_swiftEmptySetSingleton + (v6 >> 6) + 7)) != 0)
          {
            v8 = __clz(__rbit64((-1 << v6) & ~*(&_swiftEmptySetSingleton + (v6 >> 6) + 7))) | v6 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v18 = 0;
            v19 = (63 - v5) >> 6;
            do
            {
              if (++v7 == v19 && (v18 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v20 = v7 == v19;
              if (v7 == v19)
              {
                v7 = 0;
              }

              v18 |= v20;
              v21 = *&v4[8 * v7];
            }

            while (v21 == -1);
            v8 = __clz(__rbit64(~v21)) + (v7 << 6);
          }

          *&v4[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
          *(*(&_swiftEmptySetSingleton + 6) + 8 * v8) = v22;
          ++*(&_swiftEmptySetSingleton + 2);
          continue;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100048D74()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t key path getter for RemoteAlertSceneDelegate.presenter : RemoteAlertSceneDelegate@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t key path setter for RemoteAlertSceneDelegate.presenter : RemoteAlertSceneDelegate(void *a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x70);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t RemoteAlertSceneDelegate.presenter.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_presenter;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t key path getter for RemoteAlertSceneDelegate.sceneController : RemoteAlertSceneDelegate@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for RemoteAlertSceneDelegate.sceneController : RemoteAlertSceneDelegate(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((swift_isaMask & **a2) + 0x88);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t RemoteAlertSceneDelegate.sceneController.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_sceneController);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

void *RemoteAlertSceneDelegate.window.getter()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void RemoteAlertSceneDelegate.window.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for RemoteAlertSceneDelegate.window : RemoteAlertSceneDelegate@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t key path setter for RemoteAlertSceneDelegate.window : RemoteAlertSceneDelegate(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xA0);
  v4 = *a1;
  return v3(v2);
}

void *RemoteAlertSceneDelegate.remoteAlertRootViewController.getter()
{
  result = (*((swift_isaMask & *v0) + 0x98))();
  if (result)
  {
    v2 = result;
    v3 = [result rootViewController];

    if (v3)
    {
      type metadata accessor for RemoteAlertRootViewController();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

Swift::Void __swiftcall RemoteAlertSceneDelegate.scene(_:willConnectTo:options:)(UIScene _, UISceneSession willConnectTo, UISceneConnectionOptions options)
{
  v4 = v3;
  isa = options.super.isa;
  v7 = type metadata accessor for Logger();
  v134 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v130 = (&v127 - v12);
  v13 = __chkstk_darwin(v11);
  v129 = &v127 - v14;
  __chkstk_darwin(v13);
  v16 = &v127 - v15;
  static LACLog.ui.getter();
  v17 = willConnectTo.super.isa;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v132 = v17;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v133 = v4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v136[0] = v23;
    *v22 = 136315138;
    v24 = [(objc_class *)v17 persistentIdentifier];
    v128 = _.super.super.isa;
    v25 = v10;
    v26 = v24;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v7;
    v30 = v29;

    v10 = v25;
    v31 = v134;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v30, v136);
    v7 = v28;

    *(v22 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v18, v19, "Will connect to scene session: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);

    v4 = v133;

    v33 = v31;
    _.super.super.isa = v128;
  }

  else
  {

    v33 = v134;
  }

  v34 = *(v33 + 8);
  v34(v16, v7);
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    static LACLog.ui.getter();
    v52 = v132;
    v53 = _.super.super.isa;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v130 = v34;
      v59 = v10;
      v60 = v7;
      v61 = v58;
      v136[0] = v58;
      *v56 = 138412546;
      *(v56 + 4) = v53;
      *v57 = v53;
      *(v56 + 12) = 2080;
      v62 = v53;
      v63 = [v52 persistentIdentifier];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v136);

      *(v56 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v54, v55, "Scene: %@ for scene session: %s is not SBSUIRemoteAlertScene", v56, 0x16u);
      outlined destroy of NSObject?(v57);

      __swift_destroy_boxed_opaque_existential_0(v61);

      v130(v59, v60);
      return;
    }

    v91 = v10;
    goto LABEL_27;
  }

  v36 = v35;
  v37 = objc_opt_self();
  v38 = _.super.super.isa;
  if (([v37 deviceHasTouchID] & 1) == 0)
  {
    [v36 setDelegate:v4];
    [v36 setDesiredHardwareButtonEvents:16];
  }

  [v36 setContentOverlaysStatusBar:1 animationSettings:0];
  v39 = AppContainer.shared.unsafeMutableAddressor();
  swift_beginAccess();
  v40 = *((swift_isaMask & *v4) + 0x70);
  v41 = swift_unknownObjectRetain();
  v40(v41);
  v42 = *v39 + OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_sceneController;
  swift_beginAccess();
  v43 = *(v42 + 8);
  v44 = *((swift_isaMask & *v4) + 0x88);
  v45 = swift_unknownObjectRetain();
  v44(v45, v43);
  v46 = [v36 configurationIdentifier];
  if (!v46)
  {
    v78 = v130;
    static LACLog.ui.getter();
    v79 = v132;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = v7;
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v135 = v84;
      *v83 = 136315138;
      v85 = [v79 persistentIdentifier];
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v38;
      v89 = v88;

      v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v89, &v135);

      *(v83 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v80, v81, "Missing configuration identifier for scene session: %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);

      v91 = v130;
      v92 = v82;
LABEL_28:
      v34(v91, v92);
      return;
    }

    v91 = v78;
LABEL_27:
    v92 = v7;
    goto LABEL_28;
  }

  v130 = v34;
  v47 = v46;
  v48 = [v36 configurationContext];
  v127 = v7;
  v128 = v38;
  v133 = v4;
  if (v48 && (v49 = v48, v50 = [v48 userInfo], v49, v50))
  {
    v51 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v51 = 0;
  }

  v68 = [(objc_class *)isa URLContexts];
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIOpenURLContext, UIOpenURLContext_ptr);
  lazy protocol witness table accessor for type UIOpenURLContext and conformance NSObject(&lazy protocol witness table cache variable for type UIOpenURLContext and conformance NSObject, &lazy cache variable for type metadata for UIOpenURLContext, UIOpenURLContext_ptr);
  v69 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v70 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo16UIOpenURLContextCG_10Foundation3URLVs5NeverOTg50162_s28LocalAuthenticationUIService24RemoteAlertSceneDelegateC5scene_13willConnectTo7optionsySo7UISceneC_So0M7SessionCSo0M17ConnectionOptionsCtF10Foundation3URLVSo16dE6CXEfU_Tf1cn_n(v69);

  v71 = type metadata accessor for RemoteAlertSceneDelegate();
  v72 = &protocol witness table for RemoteAlertSceneDelegate;
  v137.value._rawValue = v51;
  v137.is_nil = v70;
  v73 = v71;
  AngelSceneDelegate.connect(scene:sceneOptions:connectionURLs:)(v36, v137, *(&v72 - 1));
  v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v75;
  if (v74 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v76 == v77)
  {

LABEL_21:

    type metadata accessor for RemoteAlertRootViewController();
    v94 = RemoteAlertRootViewController.__allocating_init(scene:)([objc_allocWithZone(LACUISceneSpringBoardAdapter) initWithScene:v36]);
LABEL_22:
    v95 = v133;
    v96 = [objc_allocWithZone(LACUISecureWindow) initWithWindowScene:v36];
    v97 = (*((swift_isaMask & *v95) + 0xA0))(v96);
    v98 = *((swift_isaMask & *v95) + 0x98);
    v99 = (v98)(v97);
    v100 = v128;
    if (v99)
    {
      v101 = v99;
      [v99 setRootViewController:v94];
    }

    v102 = v98();
    [v102 makeKeyAndVisible];

    return;
  }

  v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v93)
  {

    goto LABEL_21;
  }

  v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v105 = v104;
  if (v103 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v105 == v106)
  {
  }

  else
  {
    v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v107 & 1) == 0)
    {

      goto LABEL_37;
    }
  }

  v108 = &protocol witness table for RemoteAlertSceneDelegate;
  v138.value._rawValue = v51;
  v138.is_nil = v70;
  v109 = v71;
  v110 = AngelSceneDelegate.transitionViewController(for:options:connectionURLs:)(v36, v138, *(&v108 - 1));

  if (v110)
  {
    v94 = v110;

    goto LABEL_22;
  }

LABEL_37:
  v111 = v129;
  static LACLog.ui.getter();
  v112 = v132;
  v113 = v47;
  v114 = Logger.logObject.getter();
  v115 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v135 = v132;
    *v116 = 136315394;
    v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v119 = v118;

    v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v119, &v135);

    *(v116 + 4) = v120;
    *(v116 + 12) = 2080;
    v121 = [v112 persistentIdentifier];
    v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v124 = v123;

    v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v124, &v135);

    *(v116 + 14) = v125;
    _os_log_impl(&_mh_execute_header, v114, v115, "No root view controller for identifier: %s for scene session: %s", v116, 0x16u);
    swift_arrayDestroy();

    v126 = v129;
  }

  else
  {

    v126 = v111;
  }

  v130(v126, v127);
  AngelSceneDelegate.disconnect(scene:)(v36);
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo16UIOpenURLContextCG_10Foundation3URLVs5NeverOTg50162_s28LocalAuthenticationUIService24RemoteAlertSceneDelegateC5scene_13willConnectTo7optionsySo7UISceneC_So0M7SessionCSo0M17ConnectionOptionsCtF10Foundation3URLVSo16dE6CXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  __chkstk_darwin(v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = &_swiftEmptyArrayStorage;
  if (v7)
  {
    v49 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
    v44 = v49;
    if (v43)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      result = _HashTable.startBucket.getter();
      v9 = *(a1 + 36);
    }

    v46 = result;
    v47 = v9;
    v48 = v43 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v39 = v7;
      v40 = v42 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35[1] = v1;
      v36 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v46;
        v15 = v47;
        v16 = v48;
        v17 = a1;
        specialized Set.subscript.getter(v46, v47, v48, a1);
        v19 = v18;
        v20 = [v18 URL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = v44;
        v49 = v44;
        v23 = v44[2];
        v22 = v44[3];
        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
          v21 = v49;
        }

        v21[2] = v23 + 1;
        v24 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = v21;
        result = (*(v42 + 32))(v21 + v24 + *(v42 + 72) * v23, v6, v41);
        if (v43)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo16UIOpenURLContextC_GMd, &_sSh5IndexVySo16UIOpenURLContextC_GMR);
          v12 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v12(v45, 0);
          if (v10 == v7)
          {
LABEL_34:
            outlined consume of Set<UIOpenURLContext>.Index._Variant(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v25 = (1 << *(v17 + 32));
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = (__clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v14, v15, 0);
                v25 = (__clz(__rbit64(v32)) + v29);
                goto LABEL_33;
              }
            }

            result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v14, v15, 0);
          }

LABEL_33:
          v34 = *(v17 + 36);
          v46 = v25;
          v47 = v34;
          v48 = 0;
          v7 = v39;
          if (v10 == v39)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall RemoteAlertSceneDelegate.sceneDidBecomeActive(_:)(UIScene a1)
{
  v3 = (*((swift_isaMask & *v1) + 0xB0))();
  if (v3)
  {
    v10 = v3;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = a1.super.super.isa;
      v7 = closure #1 in RemoteAlertSceneDelegate.sceneDidBecomeActive(_:)(v5);
      v8 = [objc_allocWithZone(LACUIScenePresentationRequest) initWithUserInterfaceRequest:v7];

      (*((swift_isaMask & *v10) + 0x50))(v8);
      v9 = v8;
    }

    else
    {
      v9 = v10;
    }
  }
}

id closure #1 in RemoteAlertSceneDelegate.sceneDidBecomeActive(_:)(void *a1)
{
  v2 = [objc_allocWithZone(LACUserInterfaceRequestCoder) init];
  v3 = [a1 configurationContext];
  if (v3 && (v4 = v3, v5 = [v3 userInfo], v4, v5))
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v2 decode:isa];

  if (!v7)
  {
    v7 = [objc_opt_self() unknownInstance];
  }

  return v7;
}

Swift::Void __swiftcall RemoteAlertSceneDelegate.sceneDidDisconnect(_:)(UIScene a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v8 = a1.super.super.isa;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v27 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    v14 = [(objc_class *)v8 session];
    v28 = v8;
    v15 = v14;
    v16 = [v14 persistentIdentifier];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v29);

    *(v12 + 4) = v20;
    v8 = v28;
    _os_log_impl(&_mh_execute_header, v9, v10, "Did disconnect from scene: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);

    v21 = (*(v5 + 8))(v7, v27);
  }

  else
  {

    v21 = (*(v5 + 8))(v7, v4);
  }

  v22 = (*((swift_isaMask & *v2) + 0x98))(v21);
  if (v22)
  {
    v23 = v22;
    v24 = [v22 rootViewController];

    if (v24)
    {
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        [v25 sceneDeactivated];
      }
    }
  }

  type metadata accessor for RemoteAlertSceneDelegate();
  AngelSceneDelegate.disconnect(scene:)(v8);
}

id RemoteAlertSceneDelegate.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_presenter] = 0;
  v2 = &v1[OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_sceneController];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_window] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return objc_msgSendSuper2(&v4, "init");
}

id RemoteAlertSceneDelegate.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void (*protocol witness for AngelSceneDelegate.window.modify in conformance RemoteAlertSceneDelegate(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((swift_isaMask & *v1) + 0xA8))();
  return protocol witness for LACUISceneControlling.delegate.modify in conformance SceneControllerFrontBoard;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIOpenURLContext, UIOpenURLContext_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIOpenURLContext, UIOpenURLContext_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void specialized RemoteAlertSceneDelegate.remoteAlertScene(_:handle:)(uint64_t a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x98))();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v3 rootViewController];

  if (!v5)
  {
    return;
  }

  v6 = swift_dynamicCastObjCProtocolConditional();
  if (!v6)
  {
LABEL_23:

    return;
  }

  v19 = v6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for SBUIRemoteAlertButtonAction, SBUIRemoteAlertButtonAction_ptr);
    lazy protocol witness table accessor for type UIOpenURLContext and conformance NSObject(&lazy protocol witness table cache variable for type SBUIRemoteAlertButtonAction and conformance NSObject, &lazy cache variable for type metadata for SBUIRemoteAlertButtonAction, SBUIRemoteAlertButtonAction_ptr);
    Set.Iterator.init(_cocoa:)();
    a1 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
    v10 = v25;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  while (a1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for SBUIRemoteAlertButtonAction, SBUIRemoteAlertButtonAction_ptr), swift_dynamicCast(), (v17 = v20) == 0))
    {
LABEL_22:
      outlined consume of Set<UISceneSession>.Iterator._Variant(a1);
      goto LABEL_23;
    }

LABEL_20:
    v18 = [v17 events];

    if ((v18 & 0x10) != 0)
    {
      outlined consume of Set<UISceneSession>.Iterator._Variant(a1);
      [v19 handleSceneButton:0];
      goto LABEL_23;
    }
  }

  v15 = v9;
  v16 = v10;
  if (v10)
  {
LABEL_16:
    v10 = (v16 - 1) & v16;
    v17 = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_22;
    }

    v16 = *(v7 + 8 * v9);
    ++v15;
    if (v16)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t lazy protocol witness table accessor for type UIOpenURLContext and conformance NSObject(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIDevice(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined consume of Set<UIOpenURLContext>.Index._Variant(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

UIViewController_optional __swiftcall AngelSceneDelegate.transitionViewController(for:options:connectionURLs:)(UIWindowScene a1, Swift::OpaquePointer_optional options, Swift::OpaquePointer_optional connectionURLs)
{
  v3 = *&connectionURLs.is_nil;
  rawValue = connectionURLs.value._rawValue;
  v6 = type metadata accessor for Logger();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v55 - v10;
  v12 = (*(v3 + 16))(rawValue, v3);
  if (!v12)
  {
    __break(1u);
    goto LABEL_23;
  }

  swift_getObjectType();
  v14 = dispatch thunk of LACUISceneControlling.checkNeedsScene(options:urls:)();
  swift_unknownObjectRelease();
  if ((v14 & 1) == 0)
  {
    static LACLog.ui.getter();
    v25 = a1.super.super.super.isa;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v58 = v30;
      *v28 = 138412546;
      *(v28 + 4) = v25;
      *v29 = v25;
      *(v28 + 12) = 2080;
      v31 = [(objc_class *)v25 session];
      v32 = [v31 persistentIdentifier];

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v58);

      *(v28 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v26, v27, "scene: %@ willRequestSceneSessionDestruction: %s", v28, 0x16u);
      outlined destroy of NSObject?(v29);

      __swift_destroy_boxed_opaque_existential_0(v30);
    }

    (*(v56 + 8))(v9, v57);
    goto LABEL_15;
  }

  v12 = (*(v3 + 8))(rawValue, v3);
  if (!v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v12;
  v16 = [(objc_class *)a1.super.super.super.isa session];
  v17 = [v16 persistentIdentifier];

  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  v18 = [(objc_class *)v15 requestForScene:v17];

  swift_unknownObjectRelease();
  if (!v18)
  {
    static LACLog.ui.getter();
    v37 = a1.super.super.super.isa;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v58 = v41;
      *v40 = 136446210;
      v42 = [(objc_class *)v37 session];
      v43 = [v42 persistentIdentifier];

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v58);

      *(v40 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v38, v39, "No request for scene with persistent identifier %{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
    }

    (*(v56 + 8))(v11, v57);
LABEL_15:
    v12 = 0;
    goto LABEL_24;
  }

  v19 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:{objc_msgSend(v18, "evaluationRequestIdentifier")}];
  v20 = [objc_opt_self() sharedInstance];
  v21 = [v20 usesFrontBoardServicesForRemoteUI];

  if (v21)
  {
    v22 = v19;
    v23 = [v18 connectionEndpoint];
    v24 = [objc_allocWithZone(TransitionViewController) initWithRequestID:v22 endpoint:v23];

    v12 = v24;
  }

  else
  {
    objc_opt_self();
    v48 = swift_dynamicCastObjCClass();
    if (v48 && (v49 = [v48 activationContext]) != 0)
    {
      v50 = v49;
      v51 = [v49 presentationMode];
    }

    else
    {
      v51 = 2;
    }

    v52 = v19;
    v53 = [v18 connectionEndpoint];
    v54 = [objc_allocWithZone(TransitionViewController) initWithRequestID:v52 endpoint:v53 remoteAlertPresentationMode:v51];

    v12 = v54;
  }

LABEL_24:
  result.value.super.super.isa = v12;
  result.is_nil = v13;
  return result;
}

Swift::Void __swiftcall AngelSceneDelegate.connect(scene:sceneOptions:connectionURLs:)(UIScene scene, Swift::OpaquePointer_optional sceneOptions, Swift::OpaquePointer_optional connectionURLs)
{
  if ((*(*&connectionURLs.is_nil + 16))(connectionURLs.value._rawValue, *&connectionURLs.is_nil))
  {
    swift_getObjectType();
    v4 = [(objc_class *)scene.super.super.isa session];
    v5 = [v4 persistentIdentifier];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    dispatch thunk of LACUISceneControlling.sceneDidConnect(identifier:options:urls:)();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall AngelSceneDelegate.disconnect(scene:)(UIScene scene)
{
  v3 = v2;
  v4 = v1;
  if ((*(v2 + 16))())
  {
    swift_getObjectType();
    v6 = [(objc_class *)scene.super.super.isa session];
    v7 = [v6 persistentIdentifier];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    dispatch thunk of LACUISceneControlling.sceneDidDisconnect(identifier:)();
    swift_unknownObjectRelease();

    v8 = (*(v3 + 24))(v4, v3);
    if (v8)
    {
      v9 = v8;
      v10 = [v8 windowScene];

      if (v10)
      {
        type metadata accessor for UIScene();
        v11 = scene.super.super.isa;
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          v13 = *(v3 + 32);

          v13(0, v4, v3);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t type metadata accessor for UIScene()
{
  result = lazy cache variable for type metadata for UIScene;
  if (!lazy cache variable for type metadata for UIScene)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIScene);
  }

  return result;
}

id AngelSceneProviderFrontBoard.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AngelSceneProviderFrontBoard();
  return objc_msgSendSuper2(&v3, "init");
}

id AngelSceneProviderFrontBoard.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AngelSceneProviderFrontBoard();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id specialized AngelSceneProviderFrontBoard.makeFrontBoardScene(for:)(void *a1)
{
  v48 = a1;
  v1 = type metadata accessor for Logger();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = __chkstk_darwin(v1);
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v43 = &v43 - v4;
  v5 = type metadata accessor for URL();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v15 = LACUserInterfaceBundleIdentifierAngel;
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = objc_opt_self();
  type metadata accessor for SceneControllerFrontBoard();
  lazy protocol witness table accessor for type SceneControllerFrontBoard and conformance SceneControllerFrontBoard();
  v19 = v15;
  static LACUISceneControlling.globalSceneIdentifier.getter();
  v20 = String._bridgeToObjectiveC()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000867F0;
  *(inited + 32) = static LACUISceneUserInfoKey.identifier.getter();
  *(inited + 40) = v22;
  *(inited + 48) = v12;
  *(inited + 56) = v14;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, String)(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v24 = [v18 applicationPayloadURLForBundleID:v19 rootControllerName:v20 parameters:isa];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL._bridgeToObjectiveC()(v25);
  v27 = v26;
  v28 = [v18 applicationOptionsForPayloadURL:v26 softwareUpdate:{objc_msgSend(v48, "isForSoftwareUpdate")}];

  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = Dictionary._bridgeToObjectiveC()().super.isa;

  v30 = [objc_opt_self() optionsWithDictionary:v29];

  if (v30)
  {
    v31 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    if (v31)
    {
      v32 = v31;
      type metadata accessor for AngelSceneFrontBoard();
      v33 = AngelSceneFrontBoard.__allocating_init(identifier:bundleId:service:options:)(v12, v14, v45, v17, v32, v30);
      (*(v49 + 8))(v7, v50);
      return v33;
    }

    v39 = v43;
    static LACLog.ui.getter();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Unable to create FBSOpenApplicationService", v42, 2u);
    }

    (*(v46 + 8))(v39, v47);
  }

  else
  {

    v35 = v44;
    static LACLog.ui.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Unable to create FBSOpenApplicationOptions", v38, 2u);
    }

    (*(v46 + 8))(v35, v47);
  }

  (*(v49 + 8))(v7, v50);
  return 0;
}

uint64_t outlined destroy of (String, String)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id variable initialization expression of PasscodeAlertContentViewController.passcodeController()
{
  v0 = objc_opt_self();
  v1 = [v0 currentPasscode];
  v2 = [v1 length];

  v3 = [v0 currentPasscode];
  v4 = [v3 type];

  v5 = v4 == 4;
  if (v2 == NSNotFound.getter())
  {
    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  v7 = objc_allocWithZone(PasscodeEmbeddedCustomizableViewController);

  return [v7 initWithPasscodeLength:v6 alphanumeric:v5];
}

uint64_t PasscodeAlertContentViewController.externalizedContext.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_externalizedContext);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_externalizedContext + 8));
  return v1;
}

void *PasscodeAlertContentViewController.userId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_userId);
  v2 = v1;
  return v1;
}

uint64_t key path getter for PasscodeAlertContentViewController.delegate : PasscodeAlertContentViewController@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for PasscodeAlertContentViewController.delegate : PasscodeAlertContentViewController(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t PasscodeAlertContentViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PasscodeAlertContentViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return PasscodeAlertContentViewController.delegate.modify;
}

void PasscodeAlertContentViewController.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id PasscodeAlertContentViewController.failureLimit.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_options);
  v6 = LACPolicyOptionMaxPasscodeFailures;
  AnyHashable.init<A>(_:)();
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v3 & 1) != 0))
  {
    outlined init with copy of Any(*(v1 + 56) + 32 * v2, v8);
    outlined destroy of AnyHashable(v7);
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v4 = [v6 unsignedIntegerValue];

      return v4;
    }
  }

  else
  {
    outlined destroy of AnyHashable(v7);
  }

  return 0;
}

uint64_t PasscodeAlertContentViewController.failures.getter()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_failures;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PasscodeAlertContentViewController.failures.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_failures;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id PasscodeAlertContentViewController.__allocating_init(externalizedContext:userId:policy:options:backoffCounter:auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = objc_allocWithZone(v7);
  v13 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v13);
  v14 = objc_opt_self();
  v15 = [v14 currentPasscode];
  v16 = [v15 length];

  v17 = [v14 currentPasscode];
  v18 = [v17 type];

  if (v16 == NSNotFound.getter())
  {
    v16 = 0;
  }

  v19 = OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_passcodeController;
  *&v12[v19] = [objc_allocWithZone(PasscodeEmbeddedCustomizableViewController) initWithPasscodeLength:v16 alphanumeric:v18 == 4];
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_failures] = 0;
  v20 = &v12[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_externalizedContext];
  *v20 = a1;
  *(v20 + 1) = a2;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_userId] = a3;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_policy] = a4;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_options] = a5;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_backoffCounter] = a6;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_auditToken] = a7;
  v25.receiver = v12;
  v25.super_class = v7;
  return objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
}

id PasscodeAlertContentViewController.init(externalizedContext:userId:policy:options:backoffCounter:auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v13 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v13);
  v14 = objc_opt_self();
  v15 = [v14 currentPasscode];
  v16 = [v15 length];

  v17 = [v14 currentPasscode];
  v18 = [v17 type];

  if (v16 == NSNotFound.getter())
  {
    v16 = 0;
  }

  v19 = OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_passcodeController;
  *&v7[v19] = [objc_allocWithZone(PasscodeEmbeddedCustomizableViewController) initWithPasscodeLength:v16 alphanumeric:v18 == 4];
  *&v7[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_failures] = 0;
  v20 = &v7[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_externalizedContext];
  *v20 = a1;
  *(v20 + 1) = a2;
  *&v7[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_userId] = a3;
  *&v7[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_policy] = a4;
  *&v7[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_options] = a5;
  *&v7[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_backoffCounter] = a6;
  *&v7[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_auditToken] = a7;
  v25.receiver = v7;
  v25.super_class = ObjectType;
  return objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
}

Swift::Void __swiftcall PasscodeAlertContentViewController.loadView()()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v0 setView:v1];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = v2;
  v4 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_passcodeController];
  v5 = [v4 view];
  if (!v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v5;
  [v3 addSubview:v5];

  v7 = [v4 view];
  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100087B80;
  v10 = [v4 view];
  if (!v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [v0 view];
  if (!v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = v13;
  v15 = [v13 leadingAnchor];

  v16 = [v12 constraintEqualToAnchor:v15 constant:10.0];
  *(v9 + 32) = v16;
  v17 = [v4 view];
  if (!v17)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = v17;
  v19 = [v17 trailingAnchor];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = v20;
  v22 = [v20 trailingAnchor];

  v23 = [v19 constraintEqualToAnchor:v22 constant:-10.0];
  *(v9 + 40) = v23;
  v24 = [v4 view];
  if (!v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = [v0 view];
  if (!v27)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = v27;
  v29 = [v27 topAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v9 + 48) = v30;
  v31 = [v4 view];
  if (!v31)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [v0 view];
  if (!v34)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v35 = v34;
  v36 = [v34 bottomAnchor];

  v37 = [v33 constraintEqualToAnchor:v36];
  *(v9 + 56) = v37;
  v38 = [v4 view];
  if (!v38)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v39 = v38;
  v40 = objc_opt_self();
  v41 = [v39 heightAnchor];

  v42 = [v41 constraintEqualToConstant:80.0];
  *(v9 + 64) = v42;
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v40 activateConstraints:isa];

  [v0 addChildViewController:v4];
  [v4 didMoveToParentViewController:v0];

  [v4 setDelegate:v0];
}

Swift::Void __swiftcall PasscodeAlertContentViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1);
  v3 = *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_backoffCounter];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = partial apply for closure #1 in PasscodeAlertContentViewController.viewWillAppear(_:);
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v6[3] = &block_descriptor_5;
  v5 = _Block_copy(v6);

  [v3 currentBackoffErrorWithReply:v5];
  _Block_release(v5);
}

uint64_t closure #1 in PasscodeAlertContentViewController.viewWillAppear(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    swift_errorRetain();
    v17 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = a1;
    aBlock[4] = partial apply for closure #1 in closure #1 in PasscodeAlertContentViewController.viewWillAppear(_:);
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_18_0;
    v15 = _Block_copy(aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = v17;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t PasscodeAlertContentViewController.switchToBackoffScreen(error:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v52[-v4];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v59 = &v52[-v12];
  __chkstk_darwin(v11);
  v14 = &v52[-v13];
  v15 = _convertErrorToNSError(_:)();
  v16 = [v15 userInfo];

  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v17 + 16))
  {

    goto LABEL_8;
  }

  v56 = v10;
  v57 = a1;
  v58 = v1;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_8:

    (*(v7 + 56))(v5, 1, 1, v6);
    return outlined destroy of LACUIAngelConnectionHandling?(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  outlined init with copy of Any(*(v17 + 56) + 32 * v20, aBlock);

  v23 = swift_dynamicCast();
  (*(v7 + 56))(v5, v23 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of LACUIAngelConnectionHandling?(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  v24 = v14;
  (*(v7 + 32))(v14, v5, v6);
  v25 = v59;
  Date.init()();
  v26 = Date.compare(_:)();
  v27 = *(v7 + 8);
  (v27)(v25, v6);
  if (v26 == 1)
  {
    v28 = v56;
    (*(v7 + 16))(v56, v24, v6);
    v29 = v58;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v58 = v27;
      v33 = v32;
      v34 = swift_slowAlloc();
      v54 = v34;
      v55 = swift_slowAlloc();
      aBlock[0] = v55;
      *v33 = 138543618;
      *(v33 + 4) = v29;
      *v34 = v29;
      *(v33 + 12) = 2082;
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v35 = v29;
      v53 = v31;
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (v58)(v28, v6);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, aBlock);

      *(v33 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v30, v53, "%{public}@ is blocked until %{public}s", v33, 0x16u);
      outlined destroy of LACUIAngelConnectionHandling?(v54, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0(v55);

      v27 = v58;
    }

    else
    {

      (v27)(v28, v6);
    }

    v42 = *&v29[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_passcodeController];
    Date.init()();
    Date.timeIntervalSince(_:)();
    v44 = v43;
    (v27)(v25, v6);
    [v42 setBackoffTimeout:0 showBackoffTitle:1 passcodeFocused:v44];
    v45 = objc_opt_self();
    v46 = swift_allocObject();
    v47 = v24;
    v48 = v57;
    *(v46 + 16) = v29;
    *(v46 + 24) = v48;
    aBlock[4] = partial apply for closure #1 in PasscodeAlertContentViewController.switchToBackoffScreen(error:);
    aBlock[5] = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    aBlock[3] = &block_descriptor_6_1;
    v49 = _Block_copy(aBlock);
    v50 = v29;
    swift_errorRetain();

    v51 = [v45 scheduledTimerWithTimeInterval:0 repeats:v49 block:1.0];
    _Block_release(v49);

    v41 = v47;
  }

  else
  {
    [*&v58[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_passcodeController] setBackoffTimeout:0 showBackoffTitle:1 passcodeFocused:0.0];
    v41 = v24;
  }

  return (v27)(v41, v6);
}

Swift::Void __swiftcall PasscodeAlertContentViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "viewDidAppear:", a1);
  [*&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_passcodeController] setPasscodeFocused:1];
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

Swift::Void __swiftcall PasscodeAlertContentViewController.passcodeVerified(result:)(Swift::OpaquePointer result)
{
  v3 = v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(result._rawValue, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall PasscodeAlertContentViewController.passcodeRejected()()
{
  v1 = v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

uint64_t PasscodeAlertContentViewController.passcodeAuthenticationFailed(error:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PasscodeAlertContentViewController.passcodeFailure(error:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 32))(a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t protocol witness for DevicePasscodeVerifier.verify(passcode:acmContext:userId:policy:options:auditToken:reply:) in conformance PasscodeAlertContentViewController(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();

  return DevicePasscodeVerifier.verify(passcode:acmContext:userId:policy:options:auditToken:reply:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, ObjectType, a12);
}

void specialized PasscodeAlertContentViewController.init(coder:)(uint64_t a1)
{
  v2 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v2);
  v3 = objc_opt_self();
  v4 = [v3 currentPasscode];
  v5 = [v4 length];

  v6 = [v3 currentPasscode];
  v7 = [v6 type];

  v8 = v7 == 4;
  if (v5 == NSNotFound.getter())
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  v10 = OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_passcodeController;
  *(v1 + v10) = [objc_allocWithZone(PasscodeEmbeddedCustomizableViewController) initWithPasscodeLength:v9 alphanumeric:v8];
  *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_failures) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10004EA9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004EAF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t type metadata accessor for PasscodeAlertContentViewController(uint64_t a1)
{
  result = type metadata singleton initialization cache for PasscodeAlertContentViewController;
  if (!type metadata singleton initialization cache for PasscodeAlertContentViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PasscodeAlertContentViewController(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10004EC94()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004ECCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void partial apply for closure #1 in closure #1 in PasscodeAlertContentViewController.viewWillAppear(_:)()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    PasscodeAlertContentViewController.switchToBackoffScreen(error:)(v1);
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

id static RatchetCoolOffFactory.makeViewController(with:delegate:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RatchetCoolOffContentViewModel(0);

  swift_unknownObjectRetain();
  v4 = RatchetCoolOffContentViewModel.__allocating_init(with:delegate:)(a1, a2);
  type metadata accessor for RatchetCoolOffContentViewController();
  v5 = lazy protocol witness table accessor for type RatchetCoolOffContentViewModel and conformance RatchetCoolOffContentViewModel();
  return RatchetCoolOffContentViewController.__allocating_init(viewModel:)(v4, v5);
}

unint64_t lazy protocol witness table accessor for type RatchetCoolOffContentViewModel and conformance RatchetCoolOffContentViewModel()
{
  result = lazy protocol witness table cache variable for type RatchetCoolOffContentViewModel and conformance RatchetCoolOffContentViewModel;
  if (!lazy protocol witness table cache variable for type RatchetCoolOffContentViewModel and conformance RatchetCoolOffContentViewModel)
  {
    type metadata accessor for RatchetCoolOffContentViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RatchetCoolOffContentViewModel and conformance RatchetCoolOffContentViewModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RatchetCoolOffContentViewModel and conformance RatchetCoolOffContentViewModel;
  if (!lazy protocol witness table cache variable for type RatchetCoolOffContentViewModel and conformance RatchetCoolOffContentViewModel)
  {
    type metadata accessor for RatchetCoolOffContentViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RatchetCoolOffContentViewModel and conformance RatchetCoolOffContentViewModel);
  }

  return result;
}

id SecureUIControllerDynamicIslandConfiguration.init(lightweightMode:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithLightweightMode:a1];
}

{
  *(v1 + OBJC_IVAR___SecureUIControllerDynamicIslandConfiguration_isForLightweightUI) = LACLightweightUIModeNone != a1;
  v3.super_class = SecureUIControllerDynamicIslandConfiguration;
  return objc_msgSendSuper2(&v3, "init");
}

SecureUIControllerDynamicIslandConfiguration __swiftcall SecureUIControllerDynamicIslandConfiguration.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  result.super.isa = [v0 init];
  result.isForLightweightUI = v1;
  return result;
}

unint64_t type metadata accessor for SecureUIControllerDynamicIslandConfiguration()
{
  result = lazy cache variable for type metadata for SecureUIControllerDynamicIslandConfiguration;
  if (!lazy cache variable for type metadata for SecureUIControllerDynamicIslandConfiguration)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SecureUIControllerDynamicIslandConfiguration);
  }

  return result;
}

uint64_t key path getter for RatchetCoolOffContentViewModel.delegate : RatchetCoolOffContentViewModel@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t RatchetCoolOffContentViewModel.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*RatchetCoolOffContentViewModel.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return AngelSceneRemoteAlert.delegate.modify;
}

uint64_t RatchetCoolOffContentViewModel.state.getter()
{
  v1 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  __chkstk_darwin(v1);
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel____lazy_storage___state;
  if (*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel____lazy_storage___state))
  {
    v4 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel____lazy_storage___state);
  }

  else
  {
    RatchetCoolOffContentViewModel.configuration.getter(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGMR);
    swift_allocObject();
    v4 = CurrentValueSubject.init(_:)();
    *(v0 + v3) = v4;
  }

  return v4;
}

uint64_t RatchetCoolOffContentViewModel.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v46 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v46 - v14;
  v16 = RatchetCoolOffContentViewModel.options.getter();
  v54[0] = LACPolicyOptionCustomRatchetCancelLocalizedTitle;
  AnyHashable.init<A>(_:)();
  if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v53), (v18 & 1) != 0))
  {
    outlined init with copy of Any(*(v16 + 56) + 32 * v17, v54);
    outlined destroy of AnyHashable(v53);

    v19 = swift_dynamicCast();
    if (v19)
    {
      v20 = v51;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v52;
    }

    else
    {
      v21 = 0;
    }

    v47 = v20;
    v48 = v21;
  }

  else
  {

    outlined destroy of AnyHashable(v53);
    v47 = 0;
    v48 = 0;
  }

  v22 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_expirationDate;
  swift_beginAccess();
  outlined init with copy of LACUIAngelConnectionHandling?(v2 + v22, v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v23 = *(v10 + 48);
  if (v23(v8, 1, v9) == 1)
  {
    outlined destroy of LACUIAngelConnectionHandling?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v24 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_gracePeriodExpirationDate;
    swift_beginAccess();
    outlined init with copy of LACUIAngelConnectionHandling?(v2 + v24, v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v25 = v23(v6, 1, v9);
    outlined destroy of LACUIAngelConnectionHandling?(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v25 == 1)
    {
      v26 = RatchetCoolOffContentViewModel.options.getter();
      v54[0] = LACPolicyOptionBeginRatchetLocalizedTitle;
      AnyHashable.init<A>(_:)();
      if (*(v26 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v53), (v28 & 1) != 0))
      {
        outlined init with copy of Any(*(v26 + 56) + 32 * v27, v54);
        outlined destroy of AnyHashable(v53);

        swift_dynamicCast();
      }

      else
      {

        outlined destroy of AnyHashable(v53);
      }

      v34 = RatchetCoolOffContentViewModel.options.getter();
      v54[0] = LACPolicyOptionBeginRatchetLocalizedText;
      AnyHashable.init<A>(_:)();
      if (*(v34 + 16) && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(v53), (v36 & 1) != 0))
      {
        outlined init with copy of Any(*(v34 + 56) + 32 * v35, v54);
        outlined destroy of AnyHashable(v53);

        if (swift_dynamicCast())
        {
          v37 = v50;
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {

        outlined destroy of AnyHashable(v53);
        v37 = 0;
      }

      v39 = RatchetCoolOffContentViewModel.options.getter();
      v54[0] = LACPolicyOptionBeginRatchetStrictModeLocalizedText;
      AnyHashable.init<A>(_:)();
      if (*(v39 + 16) && (v40 = specialized __RawDictionaryStorage.find<A>(_:)(v53), (v41 & 1) != 0))
      {
        outlined init with copy of Any(*(v39 + 56) + 32 * v40, v54);
        outlined destroy of AnyHashable(v53);

        if (swift_dynamicCast())
        {
          v42 = v50;
        }

        else
        {
          v42 = 0;
        }
      }

      else
      {

        outlined destroy of AnyHashable(v53);
        v42 = 0;
      }

      if ((*(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_isStrictModeEnabled) & 1) == 0)
      {

        v42 = v37;
      }

      if (v42)
      {
      }

      v43 = RatchetCoolOffContentViewModel.options.getter();
      v54[0] = LACPolicyOptionBeginRatchetShowsLocationWarning;
      AnyHashable.init<A>(_:)();
      if (*(v43 + 16) && (v44 = specialized __RawDictionaryStorage.find<A>(_:)(v53), (v45 & 1) != 0))
      {
        outlined init with copy of Any(*(v43 + 56) + 32 * v44, v54);
        outlined destroy of AnyHashable(v53);

        swift_dynamicCast();
      }

      else
      {

        outlined destroy of AnyHashable(v53);
      }

      static LACUIAuthCountdownConfiguration.begin(title:message:strictModeEnabled:showsLocationWarning:familiarLocationsUnavailable:customCancelTitle:)();
    }

    else
    {
      static LACUIAuthCountdownConfiguration.gracePeriod(customCancelTitle:)();
    }
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    static Date.now.getter();
    v29 = static Date.> infix(_:_:)();
    v30 = *(v10 + 8);
    v30(v13, v9);
    if (v29)
    {
      v31 = RatchetCoolOffContentViewModel.options.getter();
      v54[0] = LACPolicyOptionCountdownLocalizedText;
      AnyHashable.init<A>(_:)();
      if (*(v31 + 16) && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v53), (v33 & 1) != 0))
      {
        outlined init with copy of Any(*(v31 + 56) + 32 * v32, v54);
        outlined destroy of AnyHashable(v53);

        swift_dynamicCast();
      }

      else
      {

        outlined destroy of AnyHashable(v53);
      }

      static LACUIAuthCountdownConfiguration.countdown(message:delayExpiration:strictModeEnabled:customCancelTitle:)();
    }

    else
    {
      static LACUIAuthCountdownConfiguration.ready(message:customCancelTitle:)();
    }

    return (v30)(v15, v9);
  }
}

uint64_t RatchetCoolOffContentViewModel.statePublisher.getter()
{
  RatchetCoolOffContentViewModel.state.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<RatchetCoolOffContentViewModelState, Never> and conformance CurrentValueSubject<A, B>();
  v0 = Publisher.eraseToAnyPublisher()();

  return v0;
}

uint64_t variable initialization expression of AuthorizationViewModel._blockedUntilDate@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t RatchetCoolOffContentViewModel.options.getter()
{
  AnyHashable.init<A>(_:)();
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_internalInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, &v7);
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  swift_endAccess();
  outlined destroy of AnyHashable(v6);
  if (*(&v8 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    if (swift_dynamicCast())
    {
      return 0x736E6F6974704FLL;
    }
  }

  else
  {
    outlined destroy of LACUIAngelConnectionHandling?(&v7, &_sypSgMd, &_sypSgMR);
  }

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
}

id RatchetCoolOffContentViewModel.init(with:delegate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v9 - 8);
  v31 = &v30 - v10;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel____lazy_storage___state] = 0;
  v11 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_expirationDate;
  v30 = v6;
  v12 = *(v6 + 56);
  v12(&v3[OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_expirationDate], 1, 1, v5);
  v13 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_gracePeriodExpirationDate;
  v12(&v3[OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_gracePeriodExpirationDate], 1, 1, v5);
  *&v3[OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_internalInfo] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v34 = 0x6F6974704F4F5444;
  v35 = 0xEA0000000000736ELL;

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v15 & 1) == 0))
  {

    outlined destroy of AnyHashable(v36);
LABEL_11:
    v37 = 0u;
    v38 = 0u;
    outlined destroy of LACUIAngelConnectionHandling?(&v37, &_sypSgMd, &_sypSgMR);
    v37 = 0u;
    v38 = 0u;
    outlined destroy of LACUIAngelConnectionHandling?(&v37, &_sypSgMd, &_sypSgMR);
    v37 = 0u;
    v38 = 0u;
    outlined destroy of LACUIAngelConnectionHandling?(&v37, &_sypSgMd, &_sypSgMR);
    v3[OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_isStrictModeEnabled] = 0;
LABEL_12:
    v37 = 0u;
    v38 = 0u;
LABEL_13:
    outlined destroy of LACUIAngelConnectionHandling?(&v37, &_sypSgMd, &_sypSgMR);
    goto LABEL_14;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v14, &v37);
  outlined destroy of AnyHashable(v36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v16 = v34;
  if (!v34)
  {
    goto LABEL_11;
  }

  v34 = 0x4466664F6C6F6F43;
  v35 = 0xEF6E6F6974617275;

  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v18 & 1) == 0))
  {

    outlined destroy of AnyHashable(v36);
    v37 = 0u;
    v38 = 0u;
    goto LABEL_17;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v17, &v37);
  outlined destroy of AnyHashable(v36);

  if (!*(&v38 + 1))
  {
LABEL_17:
    outlined destroy of LACUIAngelConnectionHandling?(&v37, &_sypSgMd, &_sypSgMR);
    goto LABEL_18;
  }

  if (swift_dynamicCast())
  {
    static Date.now.getter();
    Date.addingTimeInterval(_:)();
    (*(v30 + 8))(v8, v5);
    v12(v31, 0, 1, v5);
    swift_beginAccess();
    outlined assign with take of Date?(v31, &v3[v11]);
    swift_endAccess();
  }

LABEL_18:
  v34 = 0xD000000000000013;
  v35 = 0x8000000100099370;

  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v23 & 1) == 0))
  {

    outlined destroy of AnyHashable(v36);
    v37 = 0u;
    v38 = 0u;
    goto LABEL_24;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v22, &v37);
  outlined destroy of AnyHashable(v36);

  if (!*(&v38 + 1))
  {
LABEL_24:
    outlined destroy of LACUIAngelConnectionHandling?(&v37, &_sypSgMd, &_sypSgMR);
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    static Date.now.getter();
    v24 = v31;
    Date.addingTimeInterval(_:)();
    (*(v30 + 8))(v8, v5);
    v12(v24, 0, 1, v5);
    swift_beginAccess();
    outlined assign with take of Date?(v24, &v3[v13]);
    swift_endAccess();
  }

LABEL_25:
  v34 = 0xD000000000000011;
  v35 = 0x8000000100099350;

  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v26 & 1) == 0))
  {

    outlined destroy of AnyHashable(v36);
    v37 = 0u;
    v38 = 0u;
    goto LABEL_31;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v25, &v37);
  outlined destroy of AnyHashable(v36);

  if (!*(&v38 + 1))
  {
LABEL_31:
    outlined destroy of LACUIAngelConnectionHandling?(&v37, &_sypSgMd, &_sypSgMR);
    v3[OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_isStrictModeEnabled] = 0;
    goto LABEL_32;
  }

  if (swift_dynamicCast())
  {
    v27 = v36[0];
  }

  else
  {
    v27 = 0;
  }

  v3[OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_isStrictModeEnabled] = v27;
LABEL_32:
  v34 = 0xD00000000000001CLL;
  v35 = 0x8000000100099330;
  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v29 & 1) == 0))
  {

    outlined destroy of AnyHashable(v36);
    goto LABEL_12;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v28, &v37);
  outlined destroy of AnyHashable(v36);

  if (!*(&v38 + 1))
  {
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v19 = v36[0];
    goto LABEL_15;
  }

LABEL_14:
  v19 = 0;
LABEL_15:
  v3[OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_familiarLocationsUnavailable] = v19;
  v33.receiver = v3;
  v33.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v33, "init");
  RatchetCoolOffContentViewModel.resolveCurrentState()();

  swift_unknownObjectRelease();
  return v20;
}

uint64_t RatchetCoolOffContentViewModel.resolveCurrentState()()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v25 = &v23 - v5;
  v28 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  __chkstk_darwin(v28);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_gracePeriodExpirationDate;
  swift_beginAccess();
  outlined init with copy of LACUIAngelConnectionHandling?(v0 + v14, v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v26 = v2;
  v27 = v1;
  v15 = *(v2 + 48);
  LODWORD(v2) = v15(v13, 1, v1);
  outlined destroy of LACUIAngelConnectionHandling?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v2 != 1)
  {
    RatchetCoolOffContentViewModel.state.getter();
    RatchetCoolOffContentViewModel.configuration.getter(v7);
    goto LABEL_5;
  }

  v16 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_expirationDate;
  swift_beginAccess();
  outlined init with copy of LACUIAngelConnectionHandling?(v0 + v16, v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v17 = v27;
  if (v15(v11, 1, v27) == 1)
  {
    outlined destroy of LACUIAngelConnectionHandling?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    RatchetCoolOffContentViewModel.state.getter();
    RatchetCoolOffContentViewModel.configuration.getter(v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    CurrentValueSubject.value.setter();
  }

  v20 = v25;
  v19 = v26;
  (*(v26 + 32))(v25, v11, v17);
  v21 = v24;
  static Date.now.getter();
  static Date.> infix(_:_:)();
  v22 = *(v19 + 8);
  v22(v21, v17);
  RatchetCoolOffContentViewModel.state.getter();
  RatchetCoolOffContentViewModel.configuration.getter(v7);
  swift_storeEnumTagMultiPayload();
  CurrentValueSubject.value.setter();

  return (v22)(v20, v17);
}

Swift::Void __swiftcall RatchetCoolOffContentViewModel.setCoolOffDuration(_:)(Swift::Double a1)
{
  v2 = v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  (*(v4 + 8))(v6, v3);
  (*(v4 + 56))(v9, 0, 1, v3);
  v10 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_expirationDate;
  swift_beginAccess();
  outlined assign with take of Date?(v9, v2 + v10);
  swift_endAccess();
  RatchetCoolOffContentViewModel.resolveCurrentState()();
}

uint64_t RatchetCoolOffContentViewModel.handle(action:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI31LACUIAuthCountdownConfigurationV22ActionButtonIdentifierOSgMd, &_s25LocalAuthenticationCoreUI31LACUIAuthCountdownConfigurationV22ActionButtonIdentifierOSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for LACUIAuthCountdownConfiguration.ActionButtonIdentifier();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v33 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v34 = &v33 - v9;
  v10 = type metadata accessor for LACUIAuthButtonConfiguration();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LACUIAuthActionCountdown();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for LACUIAuthActionCountdown.buttonTapped(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    LACUIAuthButtonConfiguration.id.getter();
    LACUIAuthCountdownConfiguration.ActionButtonIdentifier.init(rawValue:)();
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      (*(v11 + 8))(v13, v10);
      return outlined destroy of LACUIAngelConnectionHandling?(v4, &_s25LocalAuthenticationCoreUI31LACUIAuthCountdownConfigurationV22ActionButtonIdentifierOSgMd, &_s25LocalAuthenticationCoreUI31LACUIAuthCountdownConfigurationV22ActionButtonIdentifierOSgMR);
    }

    v20 = v34;
    (*(v6 + 32))(v34, v4, v5);
    v21 = v33;
    (*(v6 + 16))(v33, v20, v5);
    v22 = (*(v6 + 88))(v21, v5);
    if (v22 == enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.beginSecurityDelay(_:))
    {
      v23 = v35;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong ratchetCoolOffContentDidTapOnBeginDelay:v23];
LABEL_20:
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v25 = v35;
      if (v22 == enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.learnMore(_:))
      {
        swift_beginAccess();
        v26 = swift_unknownObjectWeakLoadStrong();
        if (v26)
        {
          [v26 ratchetCoolOffContentDidTapOnLearnMore:v25];
          goto LABEL_20;
        }
      }

      else if (v22 == enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.done(_:))
      {
        swift_beginAccess();
        v27 = swift_unknownObjectWeakLoadStrong();
        if (v27)
        {
          [v27 ratchetCoolOffContentDidTapOnDone:v25];
          goto LABEL_20;
        }
      }

      else
      {
        if (v22 != enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.continue(_:) && v22 != enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.continueInGracePeriod(_:))
        {
          if (v22 == enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.cancel(_:))
          {
            swift_beginAccess();
            v29 = swift_unknownObjectWeakLoadStrong();
            if (!v29)
            {
              goto LABEL_21;
            }

            [v29 ratchetCoolOffContentDidTapOnCancel:v25];
          }

          else if (v22 == enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.customCancel(_:))
          {
            swift_beginAccess();
            v30 = swift_unknownObjectWeakLoadStrong();
            if (!v30)
            {
              goto LABEL_21;
            }

            [v30 ratchetCoolOffContentDidTapOnCustomCancel:v25];
          }

          else
          {
            if (v22 != enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.tapToRadar(_:))
            {
              v32 = *(v6 + 8);
              v32(v20, v5);
              (*(v11 + 8))(v13, v10);
              return (v32)(v21, v5);
            }

            swift_beginAccess();
            v31 = swift_unknownObjectWeakLoadStrong();
            if (!v31)
            {
              goto LABEL_21;
            }

            [v31 ratchetCoolOffContentDidTapOnFileRadar:v25];
          }

          goto LABEL_20;
        }

        swift_beginAccess();
        v28 = swift_unknownObjectWeakLoadStrong();
        if (v28)
        {
          [v28 ratchetCoolOffContentDidTapOnContinue:v25];
          goto LABEL_20;
        }
      }
    }

LABEL_21:
    (*(v6 + 8))(v20, v5);
    return (*(v11 + 8))(v13, v10);
  }

  if (v18 == enum case for LACUIAuthActionCountdown.delayElapsed(_:))
  {
    return RatchetCoolOffContentViewModel.resolveCurrentState()();
  }

  else
  {
    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t specialized static RatchetCoolOffContentViewModelState.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v3 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = __chkstk_darwin(v3);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v51 = &v50 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v50 - v9;
  __chkstk_darwin(v8);
  v12 = &v50 - v11;
  v13 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v50 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v50 - v21;
  __chkstk_darwin(v20);
  v24 = &v50 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateO_ACtMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateO_ACtMR);
  v26 = __chkstk_darwin(v25 - 8);
  v28 = &v50 - v27;
  v29 = *(v26 + 56);
  outlined init with copy of RatchetCoolOffContentViewModelState(a1, &v50 - v27);
  outlined init with copy of RatchetCoolOffContentViewModelState(v53, &v28[v29]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with copy of RatchetCoolOffContentViewModelState(v28, v19);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v16 = v19;
        goto LABEL_14;
      }

      v31 = v54;
      v32 = &v28[v29];
      v33 = v51;
      v34 = v55;
      (*(v54 + 32))(v51, v32, v55);
      v35 = static LACUIAuthCountdownConfiguration.== infix(_:_:)();
      v36 = *(v31 + 8);
      v36(v33, v34);
      v36(v19, v34);
    }

    else
    {
      outlined init with copy of RatchetCoolOffContentViewModelState(v28, v16);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_14;
      }

      v41 = v54;
      v40 = v55;
      v42 = &v28[v29];
      v43 = v52;
      (*(v54 + 32))(v52, v42, v55);
      v35 = static LACUIAuthCountdownConfiguration.== infix(_:_:)();
      v44 = *(v41 + 8);
      v44(v43, v40);
      v44(v16, v40);
    }

LABEL_17:
    outlined destroy of RatchetCoolOffContentViewModelState(v28);
    return v35 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with copy of RatchetCoolOffContentViewModelState(v28, v22);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v16 = v22;
      goto LABEL_14;
    }

    v38 = v54;
    v37 = v55;
    (*(v54 + 32))(v10, &v28[v29], v55);
    v35 = static LACUIAuthCountdownConfiguration.== infix(_:_:)();
    v39 = *(v38 + 8);
    v39(v10, v37);
    v39(v22, v37);
    goto LABEL_17;
  }

  outlined init with copy of RatchetCoolOffContentViewModelState(v28, v24);
  if (!swift_getEnumCaseMultiPayload())
  {
    v45 = v54;
    v46 = &v28[v29];
    v47 = v55;
    (*(v54 + 32))(v12, v46, v55);
    v35 = static LACUIAuthCountdownConfiguration.== infix(_:_:)();
    v48 = *(v45 + 8);
    v48(v12, v47);
    v48(v24, v47);
    goto LABEL_17;
  }

  v16 = v24;
LABEL_14:
  (*(v54 + 8))(v16, v55);
  outlined destroy of LACUIAngelConnectionHandling?(v28, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateO_ACtMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateO_ACtMR);
  v35 = 0;
  return v35 & 1;
}

unint64_t lazy protocol witness table accessor for type CurrentValueSubject<RatchetCoolOffContentViewModelState, Never> and conformance CurrentValueSubject<A, B>()
{
  result = lazy protocol witness table cache variable for type CurrentValueSubject<RatchetCoolOffContentViewModelState, Never> and conformance CurrentValueSubject<A, B>;
  if (!lazy protocol witness table cache variable for type CurrentValueSubject<RatchetCoolOffContentViewModelState, Never> and conformance CurrentValueSubject<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine19CurrentValueSubjectCy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CurrentValueSubject<RatchetCoolOffContentViewModelState, Never> and conformance CurrentValueSubject<A, B>);
  }

  return result;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t instantiation function for generic protocol witness table for RatchetCoolOffContentViewModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type RatchetCoolOffContentViewModel and conformance RatchetCoolOffContentViewModel();
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for RatchetCoolOffContentViewModelState(uint64_t a1)
{
  type metadata accessor for (configuration: LACUIAuthCountdownConfiguration)();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void type metadata accessor for (configuration: LACUIAuthCountdownConfiguration)()
{
  if (!lazy cache variable for type metadata for (configuration: LACUIAuthCountdownConfiguration))
  {
    v0 = type metadata accessor for LACUIAuthCountdownConfiguration();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (configuration: LACUIAuthCountdownConfiguration));
    }
  }
}

void type metadata completion function for RatchetCoolOffContentViewModel(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Date?);
    }
  }
}

uint64_t outlined init with copy of RatchetCoolOffContentViewModelState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RatchetCoolOffContentViewModelState(uint64_t a1)
{
  v2 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *variable initialization expression of RatchetCoolOffContentViewController.cancellables()
{
  if (!(&_swiftEmptyArrayStorage >> 62) || !_CocoaArrayWrapper.endIndex.getter())
  {
    return &_swiftEmptySetSingleton;
  }

  return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(&_swiftEmptyArrayStorage);
}

id RatchetCoolOffContentViewController.__allocating_init(viewModel:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  if (&_swiftEmptyArrayStorage >> 62)
  {
    v9 = v5;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v6 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    }

    else
    {
      v6 = &_swiftEmptySetSingleton;
    }

    v5 = v9;
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *&v5[OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_cancellables] = v6;
  v7 = &v5[OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_viewModel];
  *v7 = a1;
  *(v7 + 1) = a2;
  v10.receiver = v5;
  v10.super_class = v2;
  return objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
}

id RatchetCoolOffContentViewController.init(viewModel:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (&_swiftEmptyArrayStorage >> 62)
  {
    v9 = ObjectType;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v6 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    }

    else
    {
      v6 = &_swiftEmptySetSingleton;
    }

    ObjectType = v9;
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *&v2[OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_cancellables] = v6;
  v7 = &v2[OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_viewModel];
  *v7 = a1;
  *(v7 + 1) = a2;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
}

void RatchetCoolOffContentViewController.init(coder:)()
{
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v1 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_cancellables) = v1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall RatchetCoolOffContentViewController.viewDidLoad()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "viewDidLoad");
  v1 = [v0 interactivePopGestureRecognizer];
  if (v1)
  {
    v2 = v1;
    [v1 setEnabled:0];
  }

  RatchetCoolOffContentViewController.setup()();
}

uint64_t RatchetCoolOffContentViewController.setup()()
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMR);
  __chkstk_darwin(v32);
  v2 = &v26 - v1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
  v3 = __chkstk_darwin(v26);
  v29 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v27 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGMR);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGALSgGMd, &_s7Combine10PublishersO3MapVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGALSgGMR);
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v26 - v10;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO4ScanVy_AC3MapVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGANSgGAS_AStGMd, &_s7Combine10PublishersO4ScanVy_AC3MapVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGANSgGAS_AStGMR);
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v13 = &v26 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_viewModel + 8);
  ObjectType = swift_getObjectType();
  v34 = (*(v14 + 16))(ObjectType, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGMd, &_s7Combine12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGMR);
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AnyPublisher<RatchetCoolOffContentViewModelState, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGMd, &_s7Combine12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGMR, &protocol conformance descriptor for AnyPublisher<A, B>);
  lazy protocol witness table accessor for type RatchetCoolOffContentViewModelState and conformance RatchetCoolOffContentViewModelState(&lazy protocol witness table cache variable for type RatchetCoolOffContentViewModelState and conformance RatchetCoolOffContentViewModelState, type metadata accessor for RatchetCoolOffContentViewModelState, &protocol conformance descriptor for RatchetCoolOffContentViewModelState);
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<RatchetCoolOffContentViewModelState, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGMR, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  Publisher.map<A>(_:)();
  (*(v7 + 8))(v9, v6);
  v16 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v27;
  v17(v27, 1, 1, v16);
  v19 = v29;
  v17(v29, 1, 1, v16);
  v20 = *(v32 + 48);
  outlined init with take of RatchetCoolOffContentViewModelState?(v18, v2);
  outlined init with take of RatchetCoolOffContentViewModelState?(v19, &v2[v20]);
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.RemoveDuplicates<AnyPublisher<RatchetCoolOffContentViewModelState, Never>>, RatchetCoolOffContentViewModelState?> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGALSgGMd, &_s7Combine10PublishersO3MapVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGALSgGMR, &protocol conformance descriptor for Publishers.Map<A, B>);
  v21 = v28;
  Publisher.scan<A>(_:_:)();
  outlined destroy of LACUIAngelConnectionHandling?(v2, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMR);
  (*(v30 + 8))(v11, v21);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for closure #3 in RatchetCoolOffContentViewController.setup();
  *(v23 + 24) = v22;
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Scan<Publishers.Map<Publishers.RemoveDuplicates<AnyPublisher<RatchetCoolOffContentViewModelState, Never>>, RatchetCoolOffContentViewModelState?>, (RatchetCoolOffContentViewModelState?, RatchetCoolOffContentViewModelState?)> and conformance Publishers.Scan<A, B>, &_s7Combine10PublishersO4ScanVy_AC3MapVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGANSgGAS_AStGMd, &_s7Combine10PublishersO4ScanVy_AC3MapVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGANSgGAS_AStGMR, &protocol conformance descriptor for Publishers.Scan<A, B>);
  v24 = v31;
  Publisher<>.sink(receiveValue:)();

  (*(v33 + 8))(v13, v24);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

Swift::Void __swiftcall RatchetCoolOffContentViewController.pushViewController(_:animated:)(UIViewController _, Swift::Bool animated)
{
  ObjectType = swift_getObjectType();
  v6 = [(objc_class *)_.super.super.isa navigationItem];
  [v6 setHidesBackButton:1];

  v7.receiver = v2;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, "pushViewController:animated:", _.super.super.isa, animated);
}

id RatchetCoolOffContentViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id RatchetCoolOffContentViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController:a1];

  return v3;
}

uint64_t closure #1 in RatchetCoolOffContentViewController.setup()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of RatchetCoolOffContentViewModelState(a1, a2);
  v3 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t closure #2 in RatchetCoolOffContentViewController.setup()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMR);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v7 + 56);
  outlined init with copy of LACUIAngelConnectionHandling?(a1, &v12 - v8, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMR);
  outlined init with take of RatchetCoolOffContentViewModelState?(&v9[*(v7 + 56)], a3);
  outlined init with copy of LACUIAngelConnectionHandling?(a2, a3 + v10, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
  return outlined destroy of LACUIAngelConnectionHandling?(v9, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
}

void RatchetCoolOffContentViewController.handleStateUpdate(previousState:state:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
  v5 = __chkstk_darwin(v4 - 8);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v54 = &v54 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v54 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v54 - v13;
  __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMR);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v54 - v19;
  v21 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v59 = *(v21 - 8);
  v60 = v21;
  v22 = __chkstk_darwin(v21);
  v57 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v54 - v25;
  __chkstk_darwin(v24);
  v56 = &v54 - v27;
  v28 = *(v18 + 56);
  outlined init with copy of LACUIAngelConnectionHandling?(a1, v20, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
  outlined init with copy of LACUIAngelConnectionHandling?(a2, &v20[v28], &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
  v29 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  v30 = *(*(v29 - 8) + 48);
  if (v30(&v20[v28], 1, v29) == 1)
  {
    outlined destroy of LACUIAngelConnectionHandling?(v20, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMR);
    return;
  }

  outlined init with copy of LACUIAngelConnectionHandling?(&v20[v28], v16, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v32 = v30(v20, 1, v29);
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (v32 == 1)
      {
        goto LABEL_16;
      }

      outlined init with copy of LACUIAngelConnectionHandling?(v20, v11, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
      v14 = v11;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v32 == 1)
      {
        goto LABEL_16;
      }

      v14 = v54;
      outlined init with copy of LACUIAngelConnectionHandling?(v20, v54, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    if (v32 == 1)
    {
      goto LABEL_16;
    }

    v14 = v55;
    outlined init with copy of LACUIAngelConnectionHandling?(v20, v55, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  if (v32 != 1)
  {
    outlined init with copy of LACUIAngelConnectionHandling?(v20, v14, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
    if (swift_getEnumCaseMultiPayload())
    {
LABEL_7:
      outlined destroy of RatchetCoolOffContentViewModelState(v14);
      goto LABEL_16;
    }

LABEL_20:
    v42 = v59;
    v43 = v16;
    v44 = v60;
    (*(v59 + 32))(v56, v43, v60);
    v45 = *(v42 + 8);
    v45(v14, v44);
    outlined destroy of LACUIAngelConnectionHandling?(&v20[v28], &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
    outlined destroy of LACUIAngelConnectionHandling?(v20, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
    v46 = [v61 viewControllers];
    type metadata accessor for UIViewController();
    v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v47 >> 62)
    {
      v48 = _CocoaArrayWrapper.endIndex.getter();
      if (v48)
      {
LABEL_22:
        v49 = __OFSUB__(v48, 1);
        v50 = v48 - 1;
        if (v49)
        {
          __break(1u);
        }

        else if ((v47 & 0xC000000000000001) == 0)
        {
          if ((v50 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v50 < *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v51 = *(v47 + 8 * v50 + 32);
LABEL_27:
            v52 = v51;

            type metadata accessor for LACUIDTOViewController();
            if (swift_dynamicCastClass())
            {
              v53 = v56;
              dispatch thunk of LACUIDTOViewController.refresh(with:)();

LABEL_34:
              v45(v53, v44);
              return;
            }

LABEL_33:
            v53 = v56;
            goto LABEL_34;
          }

          __break(1u);
          return;
        }

        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_27;
      }
    }

    else
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v48)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_33;
  }

LABEL_16:
  v34 = v59;
  v33 = v60;
  (*(v59 + 32))(v26, v16, v60);
  outlined destroy of LACUIAngelConnectionHandling?(&v20[v28], &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
  outlined destroy of LACUIAngelConnectionHandling?(v20, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
  (*(v34 + 16))(v57, v26, v33);
  v35 = v61;
  v36 = objc_allocWithZone(type metadata accessor for LACUIDTOViewController());
  swift_unknownObjectRetain();
  v37 = LACUIDTOViewController.init(configuration:handler:)();
  (*(v34 + 8))(v26, v33);
  v38 = [v35 viewControllers];
  type metadata accessor for UIViewController();
  v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v39 >> 62)
  {
    v40 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = [v37 navigationItem];
  [v41 setHidesBackButton:1];

  v62.receiver = v35;
  v62.super_class = ObjectType;
  objc_msgSendSuper2(&v62, "pushViewController:animated:", v37, v40 != 0);
}

Swift::Void __swiftcall RatchetCoolOffContentViewController.willMoveToParent(_:)(UIViewController a1)
{
  [(objc_class *)a1.super.super.isa addChildViewController:v1];

  [v1 willMoveToParentViewController:a1.super.super.isa];
}

Swift::Void __swiftcall RatchetCoolOffContentViewController.setCoolOffDuration(_:)(Swift::Double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_viewModel + 8);
  ObjectType = swift_getObjectType();
  (*(v3 + 24))(ObjectType, v3, a1);
}

unint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    lazy protocol witness table accessor for type RatchetCoolOffContentViewModelState and conformance RatchetCoolOffContentViewModelState(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      lazy protocol witness table accessor for type RatchetCoolOffContentViewModelState and conformance RatchetCoolOffContentViewModelState(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while (1)
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t outlined init with take of RatchetCoolOffContentViewModelState?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005388C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void partial apply for closure #3 in RatchetCoolOffContentViewController.setup()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    RatchetCoolOffContentViewController.handleStateUpdate(previousState:state:)(a1, a2);
  }
}

uint64_t sub_100053930()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed RatchetCoolOffContentViewModelState?, @in_guaranteed RatchetCoolOffContentViewModelState?) -> ()(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMR);
  return v3(a1, a1 + *(v4 + 48));
}

unint64_t type metadata accessor for UIViewController()
{
  result = lazy cache variable for type metadata for UIViewController;
  if (!lazy cache variable for type metadata for UIViewController)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIViewController);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RatchetCoolOffContentViewModelState and conformance RatchetCoolOffContentViewModelState(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall PINSheetViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1);
  v3 = closure #1 in PINSheetViewController.viewWillAppear(_:)(v1);
  v4 = *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager];
  *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager] = v3;
}

id closure #1 in PINSheetViewController.viewWillAppear(_:)(char *a1)
{
  result = [*&a1[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_context] externalizedContext];
  if (result)
  {
    v3 = result;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = objc_allocWithZone(LACUIAuthenticatorServiceConfiguration);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v9 = [v7 initWithContext:isa requirement:3];

    outlined consume of Data._Representation(v4, v6);
    v10 = [a1 options];
    if (v10)
    {
      v11 = v10;
      v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      AnyHashable.init<A>(_:)();
      if (*(v12 + 16))
      {
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(&v66);
        if (v14)
        {
          outlined init with copy of Any(*(v12 + 56) + 32 * v13, &v67);
          outlined destroy of AnyHashable(&v66);

          if (*(&v68 + 1))
          {
            type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSError, NSError_ptr);
            if (swift_dynamicCast())
            {
              v15 = v66;
              v16 = [v66 localizedDescription];

              static String._unconditionallyBridgeFromObjectiveC(_:)();
            }

LABEL_11:
            v17 = String._bridgeToObjectiveC()();

            [v9 setPrompt:v17];

            [v9 setPasscodeLength:LACustomPasswordTypeCustomDigits];
            static LocalizedStrings.cancel.getter();
            v18 = String._bridgeToObjectiveC()();

            [v9 setCancelButtonTitle:v18];

            v19 = [a1 callerName];
            if (!v19)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v19 = String._bridgeToObjectiveC()();
            }

            [v9 setTitle:v19];

            v20 = [a1 options];
            if (v20)
            {
              v21 = v20;
              v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              AnyHashable.init<A>(_:)();
              if (*(v22 + 16))
              {
                v23 = specialized __RawDictionaryStorage.find<A>(_:)(&v66);
                if (v24)
                {
                  outlined init with copy of Any(*(v22 + 56) + 32 * v23, &v67);
                  outlined destroy of AnyHashable(&v66);

                  if (*(&v68 + 1))
                  {
                    if (swift_dynamicCast())
                    {
LABEL_27:
                      v30 = objc_opt_self();
                      v31 = String._bridgeToObjectiveC()();

                      v32 = [v30 truncateString:v31 maxLength:512];

                      if (v32)
                      {
                        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v35 = v34;

                        if (String.count.getter() >= 1)
                        {
                          v36 = [a1 callerName];
                          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v39 = v38;

                          static LocalizedStrings.AuthenticationReason.custom(_:callerName:)(v33, v35, v37, v39);

LABEL_34:

                          v44 = String._bridgeToObjectiveC()();

                          [v9 setSubtitle:v44];

                          static LocalizedStrings.enterPin.getter();
                          v45 = String._bridgeToObjectiveC()();

                          [v9 setPasswordFieldPlaceholder:v45];

                          [v9 setStyle:0];
                          v46 = [a1 internalInfo];
                          v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                          AnyHashable.init<A>(_:)();
                          if (*(v47 + 16) && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(&v66), (v49 & 1) != 0))
                          {
                            outlined init with copy of Any(*(v47 + 56) + 32 * v48, &v67);
                            outlined destroy of AnyHashable(&v66);

                            if (swift_dynamicCast())
                            {
                              v50 = String._bridgeToObjectiveC()();

LABEL_40:
                              [v9 setBundleIdentifier:v50];

                              v51 = v9;
                              v52 = [a1 internalInfo];
                              static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                              v53 = objc_allocWithZone(LACInternalInfoParser);
                              v54 = Dictionary._bridgeToObjectiveC()().super.isa;

                              v55 = [v53 initWithInternalInfo:v54];

                              v56 = [v55 callerAuditToken];
                              v57 = swift_allocObject();
                              swift_unknownObjectWeakInit();

                              v58 = default argument 3 of AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)();
                              v59 = default argument 5 of AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)();
                              v60 = default argument 7 of AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)();
                              AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)(v51, v56, 0, v58, 0, 1, v59, 0, v60, partial apply for closure #1 in closure #1 in PINSheetViewController.viewWillAppear(_:), v57);
                              v62 = v61;

                              v66 = v62;
                              v63 = swift_unknownObjectRetain();
                              AuthorizationViewManager.delegate.setter(v63);
                              v64 = v66;
                              canShowWhile = RatchetCoolOffContentViewController._canShowWhileLocked()();
                              AuthorizationViewManager.presentAuthorizationViewInVC(_:animated:)(a1, canShowWhile);

                              return v64;
                            }
                          }

                          else
                          {

                            outlined destroy of AnyHashable(&v66);
                          }

                          v50 = 0;
                          goto LABEL_40;
                        }
                      }

LABEL_33:
                      v40 = [a1 callerName];
                      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v43 = v42;

                      static LocalizedStrings.AuthenticationReason.default(callerName:)(v41, v43);
                      goto LABEL_34;
                    }

LABEL_22:
                    v25 = [a1 options];
                    if (v25)
                    {
                      v26 = v25;
                      v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                      AnyHashable.init<A>(_:)();
                      if (*(v27 + 16))
                      {
                        v28 = specialized __RawDictionaryStorage.find<A>(_:)(&v66);
                        if (v29)
                        {
                          outlined init with copy of Any(*(v27 + 56) + 32 * v28, &v67);
                          outlined destroy of AnyHashable(&v66);

                          if (*(&v68 + 1))
                          {
                            if ((swift_dynamicCast() & 1) == 0)
                            {
                              goto LABEL_33;
                            }

                            goto LABEL_27;
                          }

LABEL_32:
                          outlined destroy of Any?(&v67);
                          goto LABEL_33;
                        }
                      }

                      outlined destroy of AnyHashable(&v66);
                    }

                    v67 = 0u;
                    v68 = 0u;
                    goto LABEL_32;
                  }

LABEL_21:
                  outlined destroy of Any?(&v67);
                  goto LABEL_22;
                }
              }

              outlined destroy of AnyHashable(&v66);
            }

            v67 = 0u;
            v68 = 0u;
            goto LABEL_21;
          }

LABEL_10:
          outlined destroy of Any?(&v67);
          goto LABEL_11;
        }
      }

      outlined destroy of AnyHashable(&v66);
    }

    v67 = 0u;
    v68 = 0u;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void PINSheetViewController.dismissChild(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIDevice, UIDevice_ptr);
  if (static UIDevice.isPad.getter())
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = a1;
    v7[4] = a2;
    v16[4] = partial apply for closure #1 in PINSheetViewController.dismissChild(completionHandler:);
    v16[5] = v7;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v16[3] = &block_descriptor_6;
    v8 = _Block_copy(v16);
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a1, a2);

    [v3 dismissViewControllerAnimated:1 completion:v8];
    _Block_release(v8);
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager];
    if (v9)
    {
      v10 = objc_opt_self();
      v11 = LACErrorCodeSystemCancel;
      v12 = v9;
      v13 = [v10 errorWithCode:v11];
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = a1;
      v15[4] = a2;
      outlined copy of (@escaping @callee_guaranteed () -> ())?(a1, a2);

      AuthorizationViewManager.dismissAuthorizationView(error:reply:)(v13, partial apply for closure #2 in PINSheetViewController.dismissChild(completionHandler:), v15);
    }
  }
}

uint64_t sub_1000546E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void partial apply for closure #1 in PINSheetViewController.dismissChild(completionHandler:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager);
    if (v5)
    {
      v6 = v5;

      v7 = [objc_opt_self() errorWithCode:LACErrorCodeSystemCancel];
      v8 = swift_allocObject();
      swift_beginAccess();
      v9 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v10 = swift_allocObject();
      v10[2] = v8;
      v10[3] = v1;
      v10[4] = v2;

      outlined copy of (@escaping @callee_guaranteed () -> ())?(v1, v2);
      AuthorizationViewManager.dismissAuthorizationView(error:reply:)(v7, partial apply for closure #1 in closure #1 in PINSheetViewController.dismissChild(completionHandler:), v10);

      v4 = v6;
    }
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id PINSheetViewController.init(requestID:endpoint:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_context;
  *&v2[v6] = [objc_allocWithZone(LAContext) init];
  *&v2[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager] = 0;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithRequestID:endpoint:", a1, a2);

  return v7;
}

id PINSheetViewController.init(requestID:endpoint:remoteAlert:)(void *a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_context;
  *&v3[v8] = [objc_allocWithZone(LAContext) init];
  *&v3[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager] = 0;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithRequestID:endpoint:remoteAlertPresentationMode:", a1, a2, a3);

  return v9;
}

id PINSheetViewController.init(internalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_context;
  *&v6[v12] = [objc_allocWithZone(LAContext) init];
  *&v6[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16.receiver = v6;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, "initWithInternalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:", isa, a2, a3, a4, a5 & 1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v14;
}

id PINSheetViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_context;
  *&v3[v7] = [objc_allocWithZone(LAContext) init];
  *&v3[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager] = 0;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id PINSheetViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_context;
  *&v1[v4] = [objc_allocWithZone(LAContext) init];
  *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id PINSheetViewController.init(internalInfo:parent:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_context;
  *&v2[v5] = [objc_allocWithZone(LAContext) init];
  *&v2[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithInternalInfo:parent:", isa, v7);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v8;
}

uint64_t PINSheetViewController.viewModel(_:didReceiveCustomPassword:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = v4;
  v9 = [v4 options];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = LACPolicyOptionPINMinLength;
  AnyHashable.init<A>(_:)();
  if (!*(v11 + 16) || (v12 = specialized __RawDictionaryStorage.find<A>(_:)(&v31), (v13 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v31);
LABEL_9:
    v33 = 0u;
    v34 = 0u;
    goto LABEL_10;
  }

  outlined init with copy of Any(*(v11 + 56) + 32 * v12, &v33);
  outlined destroy of AnyHashable(&v31);

  if (!*(&v34 + 1))
  {
LABEL_10:
    outlined destroy of Any?(&v33);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v14 = v31;
    if (String.count.getter() < v14)
    {
      return a4(0);
    }
  }

LABEL_11:
  v15 = [v5 options];
  if (!v15)
  {
LABEL_19:
    v33 = 0u;
    v34 = 0u;
    goto LABEL_20;
  }

  v16 = v15;
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16) || (v18 = specialized __RawDictionaryStorage.find<A>(_:)(&v31), (v19 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v31);
    goto LABEL_19;
  }

  outlined init with copy of Any(*(v17 + 56) + 32 * v18, &v33);
  outlined destroy of AnyHashable(&v31);

  if (!*(&v34 + 1))
  {
LABEL_20:
    outlined destroy of Any?(&v33);
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    v20 = v31;
    if (v20 < String.count.getter())
    {
      return a4(0);
    }
  }

LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100087EF0;
  v31 = 0x746C75736552;
  v32 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_SbtGMd, &_ss23_ContiguousArrayStorageCySi_SbtGMR);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1000867F0;
  *(v23 + 32) = LACResultEnteredPassphrase;
  *(v23 + 40) = 1;
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SbTt0g5Tf4g_n(v23);
  swift_setDeallocating();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSbGMd, &_sSDySiSbGMR);
  *(inited + 72) = v24;
  v31 = 5130576;
  v32 = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = a2;
  *(inited + 152) = a3;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 uiSuccessWithResult:isa];

  result = a4(1);
  v26 = *&v5[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager];
  if (v26)
  {
    v27 = v26;
    v28 = default argument 1 of AuthorizationViewManager.dismissAuthorizationView(error:reply:)();
    AuthorizationViewManager.dismissAuthorizationView(error:reply:)(0, v28, v29);
  }

  return result;
}

uint64_t specialized PINSheetViewController.viewModel(_:didReceiveCustomPassword:handler:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v8 = [a3 options];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = LACPolicyOptionPINMinLength;
  AnyHashable.init<A>(_:)();
  if (!*(v10 + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(&v30), (v12 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v30);
LABEL_9:
    v32 = 0u;
    v33 = 0u;
    goto LABEL_10;
  }

  outlined init with copy of Any(*(v10 + 56) + 32 * v11, &v32);
  outlined destroy of AnyHashable(&v30);

  if (!*(&v33 + 1))
  {
LABEL_10:
    outlined destroy of Any?(&v32);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v13 = v30;
    if (String.count.getter() < v13)
    {
      return (*(a4 + 16))(a4, 0);
    }
  }

LABEL_11:
  v14 = [a3 options];
  if (!v14)
  {
LABEL_19:
    v32 = 0u;
    v33 = 0u;
    goto LABEL_20;
  }

  v15 = v14;
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(&v30), (v18 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v30);
    goto LABEL_19;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v17, &v32);
  outlined destroy of AnyHashable(&v30);

  if (!*(&v33 + 1))
  {
LABEL_20:
    outlined destroy of Any?(&v32);
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    v19 = v30;
    if (v19 < String.count.getter())
    {
      return (*(a4 + 16))(a4, 0);
    }
  }

LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100087EF0;
  v30 = 0x746C75736552;
  v31 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_SbtGMd, &_ss23_ContiguousArrayStorageCySi_SbtGMR);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1000867F0;
  *(v22 + 32) = LACResultEnteredPassphrase;
  *(v22 + 40) = 1;
  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SbTt0g5Tf4g_n(v22);
  swift_setDeallocating();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSbGMd, &_sSDySiSbGMR);
  *(inited + 72) = v23;
  v30 = 5130576;
  v31 = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = a1;
  *(inited + 152) = a2;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a3 uiSuccessWithResult:isa];

  result = (*(a4 + 16))(a4, 1);
  v25 = *&a3[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager];
  if (v25)
  {
    v26 = v25;
    v27 = default argument 1 of AuthorizationViewManager.dismissAuthorizationView(error:reply:)();
    AuthorizationViewManager.dismissAuthorizationView(error:reply:)(0, v27, v28);
  }

  return result;
}

uint64_t sub_100055C74()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t objectdestroy_2Tm()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

void partial apply for closure #2 in PINSheetViewController.dismissChild(completionHandler:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (v3)
    {
      v12 = v3;
      v13 = v4;
      aBlock.receiver = _NSConcreteStackBlock;
      aBlock.super_class = 1107296256;
      v10 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v11 = a1;
      v7 = _Block_copy(&aBlock);
    }

    else
    {
      v7 = 0;
    }

    v8 = type metadata accessor for PINSheetViewController();
    aBlock.receiver = v6;
    aBlock.super_class = v8;
    objc_msgSendSuper2(&aBlock, "dismissChildWithCompletionHandler:", v7);
    _Block_release(v7);
  }
}

void partial apply for closure #1 in closure #1 in PINSheetViewController.viewWillAppear(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_opt_self();
    swift_errorRetain();
    v2 = _convertErrorToNSError(_:)();
    LODWORD(v1) = [v1 error:v2 hasCode:LACErrorCodeUserCancel];

    if (v1)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        [Strong uiCancel];

LABEL_7:

        return;
      }
    }

    else
    {
      swift_beginAccess();
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v4 = v5;
        v6 = _convertErrorToNSError(_:)();
        [v4 uiFailureWithError:v6];

        goto LABEL_7;
      }
    }
  }
}

Swift::Void __swiftcall ComplementaryPasscodeViewController.viewDidLoad()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "viewDidLoad");
  if ([objc_opt_self() isSharedIPad])
  {
    v1 = [objc_allocWithZone(LACLocalBackoffCounter) init];
    [v0 setBackoffCounter:v1];
  }
}

Swift::Void __swiftcall ComplementaryPasscodeViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v76.receiver = v2;
  v76.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v76, "viewDidAppear:", a1);
  v4 = [v2 cachedExternalizedContext];
  v5 = [v4 externalizedContext];

  if (!v5)
  {
    __break(1u);
    goto LABEL_43;
  }

  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v7;
  v68 = v6;

  v8 = [v2 internalInfo];
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v78 = 0x644972657355;
  *(&v78 + 1) = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v11 & 1) != 0))
  {
    outlined init with copy of Any(*(v9 + 56) + 32 * v10, &v78);
    outlined destroy of AnyHashable(&aBlock);

    type metadata accessor for NSNumber();
    if (swift_dynamicCast())
    {
      v12 = v77;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {

    outlined destroy of AnyHashable(&aBlock);
    v12 = 0;
  }

  [v2 policy];
  LACPolicy.policy.getter();
  v14 = v13;
  v15 = [v2 options];
  if (v15)
  {
    v16 = v15;
    v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  }

  v18 = [v2 backoffCounter];
  if (!v18)
  {
    v18 = [objc_allocWithZone(LACLocalBackoffCounter) init];
  }

  v19 = [v2 internalInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = objc_allocWithZone(LACInternalInfoParser);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = [v20 initWithInternalInfo:isa];

  v23 = [v22 callerAuditToken];
  v24 = type metadata accessor for PasscodeAlertViewController();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v26 = &v25[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_externalizedContext];
  *v26 = v68;
  v26[1] = v67;
  *&v25[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_userId] = v12;
  *&v25[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_policy] = v14;
  *&v25[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_options] = v17;
  *&v25[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_backoffCounter] = v18;
  *&v25[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_auditToken] = v23;
  v75.receiver = v25;
  v75.super_class = v24;
  v27 = objc_msgSendSuper2(&v75, "initWithNibName:bundle:", 0, 0);
  swift_getObjectType();
  v28 = [v2 options];
  if (!v28)
  {
    v78 = 0u;
    v79 = 0u;
    v31 = &selRef_passcodeLength;
    goto LABEL_21;
  }

  v29 = v28;
  v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v77 = LACPolicyOptionPasscodeTitle;
  AnyHashable.init<A>(_:)();
  v31 = &selRef_passcodeLength;
  if (!*(v30 + 16) || (v32 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v33 & 1) == 0))
  {

    outlined destroy of AnyHashable(&aBlock);
    v78 = 0u;
    v79 = 0u;
    goto LABEL_21;
  }

  outlined init with copy of Any(*(v30 + 56) + 32 * v32, &v78);
  outlined destroy of AnyHashable(&aBlock);

  if (!*(&v79 + 1))
  {
LABEL_21:
    outlined destroy of Any?(&v78);
    goto LABEL_22;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_39;
  }

LABEL_22:
  if (([objc_opt_self() isApplePayPolicy:{objc_msgSend(v2, v31[20])}] & 1) == 0)
  {
    v38 = [v2 options];
    if (v38)
    {
      v39 = v38;
      v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v77 = LACPolicyOptionCheckApplePayEnabled;
      AnyHashable.init<A>(_:)();
      if (*(v40 + 16))
      {
        v41 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock);
        if (v42)
        {
          outlined init with copy of Any(*(v40 + 56) + 32 * v41, &v78);
          outlined destroy of AnyHashable(&aBlock);

          if (*(&v79 + 1))
          {
            if (swift_dynamicCast() & 1) != 0 && (aBlock)
            {
              goto LABEL_23;
            }

            goto LABEL_34;
          }

LABEL_33:
          outlined destroy of Any?(&v78);
LABEL_34:
          v43 = [v2 v31[20]];
          if (v43 == LACPolicySoftwareUpdate)
          {
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v35 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
            v66 = 0xE000000000000000;
            v37 = 0x8000000100099820;
            v36 = 0xD000000000000015;
            goto LABEL_36;
          }

          v48 = swift_getObjCClassFromMetadata();
          v49 = [objc_opt_self() bundleForClass:v48];
          v50 = objc_opt_self();
          v51 = String._bridgeToObjectiveC()();
          v52 = [v50 modelSpecificLocalizedStringKeyForKey:v51];

          if (v52)
          {
            v53 = String._bridgeToObjectiveC()();
            v54 = [v49 localizedStringForKey:v52 value:0 table:v53];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            goto LABEL_39;
          }

LABEL_43:
          __break(1u);
          return;
        }
      }

      outlined destroy of AnyHashable(&aBlock);
    }

    v78 = 0u;
    v79 = 0u;
    goto LABEL_33;
  }

LABEL_23:
  v34 = swift_getObjCClassFromMetadata();
  v35 = [objc_opt_self() bundleForClass:v34];
  v66 = 0xE000000000000000;
  v36 = 5849424;
  v37 = 0xE300000000000000;
LABEL_36:
  v45.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v45.value._object = 0xE800000000000000;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  v47 = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v36, v45, v35, v46, *(&v66 - 1));

LABEL_39:
  v55 = String._bridgeToObjectiveC()();

  [v27 setTitle:v55];

  v56 = [v2 callerName];
  if (!v56)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = String._bridgeToObjectiveC()();
  }

  [v27 setMessage:v56];

  [v27 setPreferredStyle:1];
  *&v27[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_delegate + 8] = &protocol witness table for ComplementaryPasscodeViewController;
  swift_unknownObjectWeakAssign();
  v57 = swift_getObjCClassFromMetadata();
  v58 = [objc_opt_self() bundleForClass:v57];
  v80._object = 0xE000000000000000;
  v59._countAndFlagsBits = 0x4C45434E4143;
  v59._object = 0xE600000000000000;
  v60.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v60.value._object = 0xE800000000000000;
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  v80._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v59, v60, v58, v61, v80);

  v62 = String._bridgeToObjectiveC()();

  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v73 = partial apply for closure #1 in ComplementaryPasscodeViewController.viewDidAppear(_:);
  v74 = v63;
  aBlock = _NSConcreteStackBlock;
  v70 = 1107296256;
  v71 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v72 = &block_descriptor_7;
  v64 = _Block_copy(&aBlock);

  v73 = variable initialization expression of SecureUIManager.isRecording;
  v74 = 0;
  aBlock = _NSConcreteStackBlock;
  v70 = 1107296256;
  v71 = thunk for @escaping @callee_guaranteed () -> (@unowned Bool);
  v72 = &block_descriptor_3_0;
  v65 = _Block_copy(&aBlock);
  [v27 _addActionWithTitle:v62 style:1 handler:v64 shouldDismissHandler:v65];
  _Block_release(v65);
  _Block_release(v64);

  [v2 presentViewController:v27 animated:1 completion:0];
}

void ComplementaryPasscodeViewController.dismissChild(completionHandler:)(void (*a1)(uint64_t a1), uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = [v2 presentedViewController];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    v8[2] = v2;
    v8[3] = a1;
    v8[4] = a2;
    v16 = partial apply for closure #1 in ComplementaryPasscodeViewController.dismissChild(completionHandler:);
    v17 = v8;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v15 = &block_descriptor_12_0;
    v9 = _Block_copy(&v12);
    v10 = v2;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a1, a2);

    [v7 dismissViewControllerAnimated:0 completion:v9];
    _Block_release(v9);
  }

  else
  {
    if (a1)
    {
      v16 = a1;
      v17 = a2;
      v12 = _NSConcreteStackBlock;
      v13 = 1107296256;
      v14 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v15 = &block_descriptor_6_2;
      v11 = _Block_copy(&v12);
    }

    else
    {
      v11 = 0;
    }

    v18.receiver = v2;
    v18.super_class = ObjectType;
    objc_msgSendSuper2(&v18, "dismissChildWithCompletionHandler:", v11);
    _Block_release(v11);
  }
}

id ComplementaryPasscodeViewController.init(requestID:endpoint:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, "initWithRequestID:endpoint:", a1, a2);

  return v5;
}

id ComplementaryPasscodeViewController.init(requestID:endpoint:remoteAlert:)(void *a1, void *a2, uint64_t a3)
{
  v9.receiver = v3;
  v9.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v9, "initWithRequestID:endpoint:remoteAlertPresentationMode:", a1, a2, a3);

  return v7;
}

id ComplementaryPasscodeViewController.init(internalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjectType = swift_getObjectType();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14.receiver = v5;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "initWithInternalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:", isa, a2, a3, a4, a5 & 1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v12;
}

id ComplementaryPasscodeViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id ComplementaryPasscodeViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id ComplementaryPasscodeViewController.init(internalInfo:parent:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithInternalInfo:parent:", isa, v6);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v7;
}

Swift::Void __swiftcall ComplementaryPasscodeViewController.passcodeVerified(result:)(Swift::OpaquePointer result)
{
  v2 = [v1 mechanism];
  if (v2)
  {
    [v2 uiEvent:8 options:0];
    swift_unknownObjectRelease();
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v1 uiSuccessWithResult:isa];
}

void ComplementaryPasscodeViewController.passcodeAuthenticationFailed(error:)(uint64_t a1)
{
  v2 = _convertErrorToNSError(_:)();
  [v1 uiFailureWithError:v2];
}

void PasscodeAlertViewController.viewDidLoad()()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "viewDidLoad");
  type metadata accessor for PasscodeAlertContentViewController(0);
  v2 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_externalizedContext];
  v3 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_externalizedContext + 8];
  v4 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_userId];
  v5 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_policy];
  v6 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_options];
  v7 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_backoffCounter];
  v8 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_auditToken];
  outlined copy of Data._Representation(*&v1[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_externalizedContext], *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_externalizedContext + 8]);
  v9 = v4;

  swift_unknownObjectRetain();
  v10 = PasscodeAlertContentViewController.__allocating_init(externalizedContext:userId:policy:options:backoffCounter:auditToken:)(v2, v3, v4, v5, v6, v7, v8);
  v11 = &v1[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_delegate];
  swift_unknownObjectWeakLoadStrong();
  v12 = *(v11 + 1);
  v13 = &v10[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate];
  swift_beginAccess();
  *(v13 + 1) = v12;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  [v1 setContentViewController:v10];
}

uint64_t sub_100057930()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void partial apply for closure #1 in ComplementaryPasscodeViewController.viewDidAppear(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong uiCancel];
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t sub_100057A24()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

void partial apply for closure #1 in ComplementaryPasscodeViewController.dismissChild(completionHandler:)(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  if (v2)
  {
    v4 = v1[4];
    v10 = v2;
    v11 = v4;
    v7.receiver = _NSConcreteStackBlock;
    v7.super_class = 1107296256;
    v8 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v9 = &block_descriptor_20_1;
    v5 = _Block_copy(&v7);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ComplementaryPasscodeViewController();
  v7.receiver = v3;
  v7.super_class = v6;
  objc_msgSendSuper2(&v7, "dismissChildWithCompletionHandler:", v5);
  _Block_release(v5);
}

uint64_t sub_100057B5C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id HostedWindowScene.__allocating_init(session:connectionOptions:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithSession:a1 connectionOptions:a2];

  return v5;
}

id HostedWindowScene.init(session:connectionOptions:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HostedWindowScene();
  v5 = objc_msgSendSuper2(&v7, "initWithSession:connectionOptions:", a1, a2);

  return v5;
}

id HostedWindowScene.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostedWindowScene();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *SceneHostingDelegate.window.getter()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SceneHostingDelegate.window.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for SceneHostingDelegate.window : SceneHostingDelegate@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SceneHostingDelegate.window : SceneHostingDelegate(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x78);
  v4 = *a1;
  return v3(v2);
}

Swift::Void __swiftcall SceneHostingDelegate.scene(_:willConnectTo:options:)(UIScene _, UISceneSession willConnectTo, UISceneConnectionOptions options)
{
  v4 = v3;
  isa = options.super.isa;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 1);
  v9 = __chkstk_darwin(v7);
  v184 = v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v183 = v170 - v12;
  v13 = __chkstk_darwin(v11);
  v180 = v170 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = v170 - v16;
  __chkstk_darwin(v15);
  v19 = v170 - v18;
  static LACLog.ui.getter();
  v20 = willConnectTo.super.isa;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v179 = v17;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v178 = _.super.super.isa;
    v25 = v24;
    v177 = swift_slowAlloc();
    v190[0] = v177;
    *v25 = 136315138;
    v26 = [(objc_class *)v20 persistentIdentifier];
    v182 = v4;
    v27 = v26;
    v28 = v20;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v8;
    v31 = v7;
    v33 = v32;

    v34 = v29;
    v20 = v28;
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, v190);
    v7 = v31;
    v8 = v30;

    *(v25 + 4) = v35;
    v4 = v182;
    _os_log_impl(&_mh_execute_header, v21, v22, "Will connect to scene: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v177);

    _.super.super.isa = v178;

    v36 = v30;
  }

  else
  {

    v36 = v8;
  }

  v37 = *(v36 + 8);
  (v37)(v19, v7);
  v38 = *AppContainer.shared.unsafeMutableAddressor();
  v39 = OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_sceneController;
  swift_beginAccess();
  v40 = (v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneController);
  *(v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneController) = *(v38 + v39);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (v41)
  {
    v42 = v41;
    v176 = v40;
    v43 = _.super.super.isa;
    v177 = v42;
    v44 = [v42 _FBSScene];
    v45 = [v44 hostHandle];

    if (v45)
    {
      v46 = [v45 auditToken];

      if (v46)
      {
        v178 = v37;
        v174 = v8;
        if ([v46 hasEntitlement:LACEntitlementSPI])
        {
          v182 = v4;
          v172 = v46;
          v173 = v43;
          v47 = [(objc_class *)isa userActivities];
          v48 = type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSUserActivity, NSUserActivity_ptr);
          lazy protocol witness table accessor for type NSUserActivity and conformance NSObject();
          v49 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v171 = v20;
          v170[2] = v49;
          isa = v48;
          if ((v49 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            __CocoaSet.makeIterator()();
            Set.Iterator.init(_cocoa:)();
            v49 = v190[0];
            v50 = v190[1];
            v51 = v190[2];
            v52 = v190[3];
            v53 = v190[4];
          }

          else
          {
            v85 = -1 << *(v49 + 32);
            v50 = v49 + 56;
            v51 = ~v85;
            v86 = -v85;
            if (v86 < 64)
            {
              v87 = ~(-1 << v86);
            }

            else
            {
              v87 = -1;
            }

            v53 = v87 & *(v49 + 56);

            v52 = 0;
          }

          v170[1] = v51;
          v88 = ((v51 + 64) >> 6);
          v184 = LACAngelHostedSceneUserActivityType;
          v175 = v7;
          if ((v49 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

LABEL_22:
          v89 = __CocoaSet.Iterator.next()();
          if (!v89)
          {
            goto LABEL_37;
          }

          *&v188 = v89;
          swift_dynamicCast();
          v90 = v187;
          v91 = v52;
          v43 = v53;
          if (!v187)
          {
LABEL_44:
            v7 = v175;
LABEL_37:
            v103 = v173;

            outlined consume of Set<UISceneSession>.Iterator._Variant(v49);

            v104 = v180;
            static LACLog.ui.getter();
            v105 = v171;
            v106 = Logger.logObject.getter();
            v107 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v106, v107))
            {
              v108 = swift_slowAlloc();
              v109 = swift_slowAlloc();
              v187 = v109;
              *v108 = 136315138;
              v110 = [(objc_class *)v105 persistentIdentifier];
              v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v113 = v112;

              v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v113, &v187);

              *(v108 + 4) = v114;
              _os_log_impl(&_mh_execute_header, v106, v107, "No user activity for scene: %s", v108, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v109);
            }

            else
            {
            }

            v67 = v104;
            goto LABEL_41;
          }

          while (1)
          {
            v183 = v53;
            v94 = v49;
            v95 = v90;
            v96 = [v90 activityType];
            v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v99 = v98;

            if (v97 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v99 == v100)
            {
              break;
            }

            v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v102)
            {
              goto LABEL_46;
            }

            v52 = v91;
            v53 = v43;
            v7 = v175;
            v49 = v94;
            if (v94 < 0)
            {
              goto LABEL_22;
            }

LABEL_25:
            v92 = v52;
            v93 = v53;
            v91 = v52;
            if (!v53)
            {
              while (1)
              {
                v91 = v92 + 1;
                if (__OFADD__(v92, 1))
                {
                  break;
                }

                if (v91 >= v88)
                {
                  goto LABEL_37;
                }

                v93 = *(v50 + 8 * v91);
                ++v92;
                if (v93)
                {
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_70:

              outlined destroy of AnyHashable(&v187);
              v188 = 0u;
              v189 = 0u;
              v121 = v50;
              goto LABEL_72;
            }

LABEL_29:
            v43 = ((v93 - 1) & v93);
            v90 = *(*(v49 + 48) + ((v91 << 9) | (8 * __clz(__rbit64(v93)))));
            if (!v90)
            {
              goto LABEL_44;
            }
          }

LABEL_46:
          outlined consume of Set<UISceneSession>.Iterator._Variant(v94);

          v7 = &selRef_passcodeLength;
          v43 = v95;
          v116 = [v95 userInfo];
          v117 = v175;
          if (v116)
          {
            v118 = v116;
            v119 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v186 = v120;
            AnyHashable.init<A>(_:)();
            v121 = v173;
            v37 = v178;
            v122 = v171;
            if (*(v119 + 16) && (v123 = specialized __RawDictionaryStorage.find<A>(_:)(&v187), (v124 & 1) != 0))
            {
              outlined init with copy of Any(*(v119 + 56) + 32 * v123, &v188);
              outlined destroy of AnyHashable(&v187);

              if (*(&v189 + 1))
              {
                if (swift_dynamicCast())
                {
                  v125 = String._bridgeToObjectiveC()();
                  v126 = *(v182 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneIdentifier);
                  *(v182 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneIdentifier) = v125;

                  v127 = [v95 userInfo];
                  if (!v127)
                  {
                    v188 = 0u;
                    v189 = 0u;
                    v88 = v172;
                    goto LABEL_72;
                  }

                  v50 = v121;
                  v128 = v127;
                  v129 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                  *&v188 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  *(&v188 + 1) = v130;
                  AnyHashable.init<A>(_:)();
                  v88 = v172;
                  if (!*(v129 + 16))
                  {
                    goto LABEL_70;
                  }

                  v131 = specialized __RawDictionaryStorage.find<A>(_:)(&v187);
                  if ((v132 & 1) == 0)
                  {
                    goto LABEL_70;
                  }

                  outlined init with copy of Any(*(v129 + 56) + 32 * v131, &v188);
                  outlined destroy of AnyHashable(&v187);

                  v121 = v50;
                  if (*(&v189 + 1))
                  {
                    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
                    v133 = swift_dynamicCast();
                    v134 = v187;
                    if (!v133)
                    {
                      v134 = 0;
                    }
                  }

                  else
                  {
LABEL_72:
                    outlined destroy of Any?(&v188);
                    v134 = 0;
                  }

                  v155 = *(v182 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_requestId);
                  *(v182 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_requestId) = v134;

                  if (!*v176)
                  {
                    __break(1u);
                    return;
                  }

                  swift_unknownObjectRetain();

                  v156 = [v177 session];

                  v157 = [v156 persistentIdentifier];
                  static String._unconditionallyBridgeFromObjectiveC(_:)();

                  v158 = [v43 v7[296]];
                  if (v158)
                  {
                    v159 = v158;
                    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                    v88 = v172;
                  }

                  swift_getObjectType();
                  dispatch thunk of LACUISceneControlling.sceneDidConnect(identifier:options:urls:)();
                  swift_unknownObjectRelease();

                  v160 = objc_allocWithZone(LACUISecureWindow);
                  v161 = [v160 initWithWindowScene:v177];
                  (*((swift_isaMask & *v182) + 0x78))(v161);
                  v162 = [v43 v7[296]];
                  if (v162)
                  {
                    v163 = v162;
                    v164 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                    v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v186 = v165;
                    AnyHashable.init<A>(_:)();
                    if (*(v164 + 16))
                    {
                      v166 = specialized __RawDictionaryStorage.find<A>(_:)(&v187);
                      if (v167)
                      {
                        outlined init with copy of Any(*(v164 + 56) + 32 * v166, &v188);
                        outlined destroy of AnyHashable(&v187);

                        if (*(&v189 + 1))
                        {
                          type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
                          if (swift_dynamicCast())
                          {
                            v168 = v187;
                            v169 = [v187 BOOLValue];

                            if (v169)
                            {
                              goto LABEL_87;
                            }
                          }

                          goto LABEL_86;
                        }

LABEL_85:
                        outlined destroy of Any?(&v188);
LABEL_86:
                        SceneHostingDelegate.setRootViewController(endpoint:)(0);
LABEL_87:

                        return;
                      }
                    }

                    outlined destroy of AnyHashable(&v187);
                  }

                  v188 = 0u;
                  v189 = 0u;
                  goto LABEL_85;
                }

                v135 = v121;

LABEL_61:
                v136 = v179;
                static LACLog.ui.getter();
                v137 = v122;
                v138 = v43;
                v139 = Logger.logObject.getter();
                v140 = static os_log_type_t.error.getter();

                if (!os_log_type_enabled(v139, v140))
                {

                  v68 = v136;
                  v69 = v117;
                  goto LABEL_13;
                }

                v141 = swift_slowAlloc();
                v187 = swift_slowAlloc();
                *v141 = 136315394;
                v142 = [(objc_class *)v137 persistentIdentifier];
                v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v145 = v144;

                v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v145, &v187);

                *(v141 + 4) = v146;
                *(v141 + 12) = 2080;
                v147 = [(objc_class *)v138 userInfo];
                if (v147)
                {
                  v148 = v147;
                  v149 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
                }

                else
                {
                  v149 = 0;
                }

                v150 = v179;
                *&v188 = v149;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
                v151 = Optional.debugDescription.getter();
                v153 = v152;

                v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v151, v153, &v187);

                *(v141 + 14) = v154;
                _os_log_impl(&_mh_execute_header, v139, v140, "No entry point for scene: %s with userInfo: %s", v141, 0x16u);
                swift_arrayDestroy();

                v67 = v150;
                v115 = v117;
                goto LABEL_42;
              }
            }

            else
            {

              outlined destroy of AnyHashable(&v187);
              v188 = 0u;
              v189 = 0u;
            }
          }

          else
          {
            v121 = v173;

            v188 = 0u;
            v189 = 0u;
            v37 = v178;
            v122 = v171;
          }

          v135 = v121;
          outlined destroy of Any?(&v188);
          goto LABEL_61;
        }

        v70 = v20;
        v71 = v46;

        v72 = v183;
        static LACLog.ui.getter();
        v73 = v70;
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v190[0] = swift_slowAlloc();
          *v76 = 136315394;
          v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, v190);

          *(v76 + 4) = v79;
          *(v76 + 12) = 2080;
          v80 = [(objc_class *)v73 persistentIdentifier];
          v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v83 = v82;

          v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, v190);

          *(v76 + 14) = v84;
          _os_log_impl(&_mh_execute_header, v74, v75, "Missing entitlement %s for scene: %s", v76, 0x16u);
          swift_arrayDestroy();

          v67 = v183;
        }

        else
        {

          v67 = v72;
        }

LABEL_41:
        v115 = v7;
LABEL_42:
        (v178)(v67, v115);
        return;
      }
    }

    v54 = v184;
    static LACLog.ui.getter();
    v55 = v20;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v178 = v37;
      v60 = v59;
      v190[0] = v59;
      *v58 = 136315138;
      v61 = [(objc_class *)v55 persistentIdentifier];
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v43;
      v65 = v64;

      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v65, v190);

      *(v58 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v56, v57, "Missing audit token for scene: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);

      v67 = v184;
      goto LABEL_41;
    }

    v68 = v54;
    v69 = v7;
LABEL_13:
    (v37)(v68, v69);
  }
}