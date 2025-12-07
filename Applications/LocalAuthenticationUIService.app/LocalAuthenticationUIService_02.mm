void SceneHostingDelegate.setRootViewController(endpoint:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneIdentifier;
  v9 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneIdentifier);
  if (!v9)
  {
LABEL_39:
    v60 = v5;
    static LACLog.ui.getter();
    v48 = v2;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 136315138;
      v61 = *(v2 + v8);
      v62 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29LACAngelHostedSceneIdentifieraSgMd, &_sSo29LACAngelHostedSceneIdentifieraSgMR);
      v53 = Optional.debugDescription.getter();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v62);

      *(v51 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v49, v50, "Unknown hosted scene: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
    }

    v28 = (*(v60 + 8))(v7, v4);
    goto LABEL_42;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

LABEL_16:

    v28 = (*((swift_isaMask & *v2) + 0x70))();
    if (v28)
    {
      v29 = v28;
      type metadata accessor for AuthorizationRemoteViewController(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
LABEL_18:
      v31 = [objc_allocWithZone(ObjCClassFromMetadata) init];
LABEL_23:
      v34 = v31;
      [v29 setRootViewController:v31];

      goto LABEL_42;
    }

    goto LABEL_42;
  }

  v60 = v5;
  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v16 = v9;

  if (v15)
  {
    goto LABEL_16;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v59 = v16;

    if ((v22 & 1) == 0)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
      if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
      {
        v27 = v59;

LABEL_25:

        v28 = (*((swift_isaMask & *v2) + 0x70))();
        if (!v28)
        {
          goto LABEL_42;
        }

        v29 = v28;
        ObjCClassFromMetadata = PasscodeEmbeddedRemoteViewController;
        goto LABEL_18;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v27 = v59;
      v58 = v59;

      if (v35)
      {
        goto LABEL_25;
      }

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
      if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
      {
        v40 = v58;

LABEL_31:

        v28 = (*((swift_isaMask & *v2) + 0x70))();
        if (!v28)
        {
          goto LABEL_42;
        }

        v29 = v28;
        v32 = *(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_requestId);
        v33 = PasswordRemoteViewController;
        goto LABEL_22;
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v40 = v58;
      v59 = v58;

      if (v41)
      {
        goto LABEL_31;
      }

      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;
      if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
      {

LABEL_37:
        v28 = (*((swift_isaMask & *v2) + 0x70))(v46);
        if (!v28)
        {
          goto LABEL_42;
        }

        v29 = v28;
        v32 = *(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_requestId);
        v33 = PinRemoteViewController;
        goto LABEL_22;
      }

      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v5 = v60;
      if (v47)
      {
        goto LABEL_37;
      }

      goto LABEL_39;
    }
  }

  v28 = (*((swift_isaMask & *v2) + 0x70))();
  if (v28)
  {
    v29 = v28;
    v32 = *(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_requestId);
    v33 = PasscodeRemoteViewController;
LABEL_22:
    v31 = [objc_allocWithZone(v33) initWithRequestID:v32 endpoint:a1];
    goto LABEL_23;
  }

LABEL_42:
  v56 = (*((swift_isaMask & *v2) + 0x70))(v28);
  [v56 makeKeyAndVisible];
}

Swift::Void __swiftcall SceneHostingDelegate.sceneDidDisconnect(_:)(UIScene a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v8 = a1.super.super.isa;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v32 = v8;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v31 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136315138;
    v15 = [(objc_class *)v8 session];
    v16 = [v15 persistentIdentifier];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v33);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Did disconnect from scene: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);

    (*(v5 + 8))(v7, v31);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  if (*(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneController))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v21 = v32;
    v22 = [(objc_class *)v32 session];
    v23 = [v22 persistentIdentifier];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    dispatch thunk of LACUISceneControlling.sceneDidDisconnect(identifier:)();
    swift_unknownObjectRelease();

    v25 = (*((swift_isaMask & *v2) + 0x70))(v24);
    if (v25)
    {
      v26 = v25;
      v27 = [v25 windowScene];

      if (v27)
      {
        type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIScene, UIScene_ptr);
        v28 = v21;
        v29 = static NSObject.== infix(_:_:)();

        if (v29)
        {
          (*((swift_isaMask & *v2) + 0x78))(0);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id SceneHostingDelegate.init()()
{
  *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_window] = 0;
  v1 = &v0[OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneController];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneIdentifier] = 0;
  *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_requestId] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SceneHostingDelegate();
  return objc_msgSendSuper2(&v3, "init");
}

id SceneHostingDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneHostingDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void SceneHostingDelegate.handle(_:completion:)(void *a1, void (*a2)(id))
{
  v3 = [a1 rawValue];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13OS_xpc_object_pMd, _sSo13OS_xpc_object_pMR);
  if (swift_dynamicCast())
  {
    v4 = [objc_allocWithZone(NSXPCListenerEndpoint) init];
    [v4 _setEndpoint:v10];
    v5 = v4;
    SceneHostingDelegate.setRootViewController(endpoint:)(v4);

    a2(0);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = objc_opt_self();
    v7 = LACErrorCodeInternal;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v6 errorWithCode:v7 debugDescription:v8];

    v5 = v9;
    a2(v9);
  }
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACAngelHostedSceneIdentifier(uint64_t a1)
{
  lazy protocol witness table accessor for type LACAngelHostedSceneIdentifier and conformance LACAngelHostedSceneIdentifier(&lazy protocol witness table cache variable for type LACAngelHostedSceneIdentifier and conformance LACAngelHostedSceneIdentifier, &protocol conformance descriptor for LACAngelHostedSceneIdentifier);
  lazy protocol witness table accessor for type LACAngelHostedSceneIdentifier and conformance LACAngelHostedSceneIdentifier(&lazy protocol witness table cache variable for type LACAngelHostedSceneIdentifier and conformance LACAngelHostedSceneIdentifier, &protocol conformance descriptor for LACAngelHostedSceneIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

unint64_t lazy protocol witness table accessor for type NSUserActivity and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSUserActivity and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSUserActivity and conformance NSObject)
  {
    type metadata accessor for UIDevice(255, &lazy cache variable for type metadata for NSUserActivity, NSUserActivity_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserActivity and conformance NSObject);
  }

  return result;
}

void type metadata accessor for LACAngelHostedSceneIdentifier()
{
  if (!lazy cache variable for type metadata for LACAngelHostedSceneIdentifier)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for LACAngelHostedSceneIdentifier);
    }
  }
}

uint64_t lazy protocol witness table accessor for type LACAngelHostedSceneIdentifier and conformance LACAngelHostedSceneIdentifier(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LACAngelHostedSceneIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void specialized SceneHostingDelegate.handle(_:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 rawValue];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13OS_xpc_object_pMd, _sSo13OS_xpc_object_pMR);
  if (swift_dynamicCast())
  {
    v5 = [objc_allocWithZone(NSXPCListenerEndpoint) init];
    [v5 _setEndpoint:v12];
    v6 = v5;
    SceneHostingDelegate.setRootViewController(endpoint:)(v5);

    (*(a3 + 16))(a3, 0);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = objc_opt_self();
    v8 = LACErrorCodeInternal;
    v9 = String._bridgeToObjectiveC()();
    v10 = [v7 errorWithCode:v8 debugDescription:v9];

    v11 = v10;
    v6 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, v6);
  }
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance AuthenticationView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type AuthenticationView and conformance AuthenticationView();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance AuthenticationView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type AuthenticationView and conformance AuthenticationView();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance AuthenticationView(uint64_t a1)
{
  lazy protocol witness table accessor for type AuthenticationView and conformance AuthenticationView();
  UIViewRepresentable.body.getter();
  __break(1u);
}

char *AuthenticationParentView.init(context:delegate:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = [objc_allocWithZone(LAUIAuthenticationView) initWithFrame:4 mechanisms:a1 context:{0.0, 0.0, 50.0, 50.0}];
  v8 = OBJC_IVAR____TtC28LocalAuthenticationUIService24AuthenticationParentView_authenticationView;
  *&v3[OBJC_IVAR____TtC28LocalAuthenticationUIService24AuthenticationParentView_authenticationView] = v7;
  [v7 setStyle:1];
  [*&v3[v8] setDelegate:a2];
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = *&v9[OBJC_IVAR____TtC28LocalAuthenticationUIService24AuthenticationParentView_authenticationView];
  v11 = v9;
  [v11 addSubview:v10];

  swift_unknownObjectRelease();
  return v11;
}

id AuthenticationParentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

unint64_t lazy protocol witness table accessor for type AuthenticationView and conformance AuthenticationView()
{
  result = lazy protocol witness table cache variable for type AuthenticationView and conformance AuthenticationView;
  if (!lazy protocol witness table cache variable for type AuthenticationView and conformance AuthenticationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthenticationView and conformance AuthenticationView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AuthenticationView and conformance AuthenticationView;
  if (!lazy protocol witness table cache variable for type AuthenticationView and conformance AuthenticationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthenticationView and conformance AuthenticationView);
  }

  return result;
}

id AuthorizationViewWrapper.viewModel.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {

    return a1;
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(a1);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t AuthorizationViewWrapper.$viewModel.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AuthorizationViewModel(0);
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);

  return EnvironmentObject.projectedValue.getter();
}

void *AuthorizationViewWrapper.body.getter@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIDevice, UIDevice_ptr);
  if (static UIDevice.isPad.getter())
  {
    goto LABEL_4;
  }

  if (a1)
  {
    v5 = a1;
    AuthorizationViewModel.requiresFullScreen.getter();

LABEL_4:
    type metadata accessor for AuthorizationViewModel(0);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
    EnvironmentObject.init()();
    lazy protocol witness table accessor for type AuthorizationContentView and conformance AuthorizationContentView();
    lazy protocol witness table accessor for type AuthorizationView and conformance AuthorizationView();
    result = _ConditionalContent<>.init(storage:)();
    *a3 = v7;
    *(a3 + 16) = v8;
    return result;
  }

  type metadata accessor for AuthorizationViewModel(0);
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type AuthorizationContentView and conformance AuthorizationContentView()
{
  result = lazy protocol witness table cache variable for type AuthorizationContentView and conformance AuthorizationContentView;
  if (!lazy protocol witness table cache variable for type AuthorizationContentView and conformance AuthorizationContentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthorizationContentView and conformance AuthorizationContentView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AuthorizationView and conformance AuthorizationView()
{
  result = lazy protocol witness table cache variable for type AuthorizationView and conformance AuthorizationView;
  if (!lazy protocol witness table cache variable for type AuthorizationView and conformance AuthorizationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthorizationView and conformance AuthorizationView);
  }

  return result;
}

uint64_t variable initialization expression of AuthorizationViewWrapper._viewModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AuthorizationViewModel(0);
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);

  return EnvironmentObject.init()();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<AuthorizationContentView, AuthorizationView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<AuthorizationContentView, AuthorizationView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<AuthorizationContentView, AuthorizationView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAD0hI0AFLLVGMd, &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAD0hI0AFLLVGMR);
    lazy protocol witness table accessor for type AuthorizationContentView and conformance AuthorizationContentView();
    lazy protocol witness table accessor for type AuthorizationView and conformance AuthorizationView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<AuthorizationContentView, AuthorizationView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void closure #1 in AuthorizationView.body.getter(void *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIy28LocalAuthenticationUIService013AuthorizationhE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionV3KeyVGGAA016_BackgroundStyleX0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIy28LocalAuthenticationUIService013AuthorizationhE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionV3KeyVGGAA016_BackgroundStyleX0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGMR);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  type metadata accessor for AuthorizationViewModel(0);
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
  v11 = EnvironmentObject.init()();
  if (a1)
  {
    v13 = v11;
    v14 = v12;
    v15 = a1;
    v16 = AuthorizationViewModel.showAuthorizationView.getter();

    if (v16)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = 0.0;
    }

    *v10 = static HorizontalAlignment.center.getter();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAMy28LocalAuthenticationUIService013AuthorizationkD033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGAA24_BackgroundStyleModifierVyAA8MaterialVGGAA024_SafeAreaRegionsIgnoringG0VGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAMy28LocalAuthenticationUIService013AuthorizationkD033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGAA24_BackgroundStyleModifierVyAA8MaterialVGGAA024_SafeAreaRegionsIgnoringG0VGSgtGGMR);
    closure #2 in closure #1 in AuthorizationView.body.getter(a1, &v10[*(v18 + 44)]);
    outlined init with copy of LACUIAngelConnectionHandling?(v10, v8, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIy28LocalAuthenticationUIService013AuthorizationhE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionV3KeyVGGAA016_BackgroundStyleX0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIy28LocalAuthenticationUIService013AuthorizationhE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionV3KeyVGGAA016_BackgroundStyleX0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGMR);
    *a3 = v13;
    *(a3 + 8) = v14;
    *(a3 + 16) = closure #1 in closure #1 in AuthorizationView.body.getter;
    *(a3 + 24) = 0;
    *(a3 + 32) = v17;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy28LocalAuthenticationUIService27AuthorizationBackgroundView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA20_TransactionModifierVGAA14_OpacityEffectVG_AA6VStackVyAA05TupleJ0VyAA6SpacerV_ACyACyACyAD0hdJ0AFLLVAA013_TraitWritingU0VyAA18TransitionTraitKeyVGGAA01_i5StyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGtMd, &_s7SwiftUI15ModifiedContentVyACy28LocalAuthenticationUIService27AuthorizationBackgroundView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA20_TransactionModifierVGAA14_OpacityEffectVG_AA6VStackVyAA05TupleJ0VyAA6SpacerV_ACyACyACyAD0hdJ0AFLLVAA013_TraitWritingU0VyAA18TransitionTraitKeyVGGAA01_i5StyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGtMR);
    outlined init with copy of LACUIAngelConnectionHandling?(v8, a3 + *(v19 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIy28LocalAuthenticationUIService013AuthorizationhE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionV3KeyVGGAA016_BackgroundStyleX0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIy28LocalAuthenticationUIService013AuthorizationhE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionV3KeyVGGAA016_BackgroundStyleX0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGMR);
    v20 = v13;
    outlined destroy of LACUIAngelConnectionHandling?(v10, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIy28LocalAuthenticationUIService013AuthorizationhE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionV3KeyVGGAA016_BackgroundStyleX0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIy28LocalAuthenticationUIService013AuthorizationhE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionV3KeyVGGAA016_BackgroundStyleX0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGMR);
    outlined destroy of LACUIAngelConnectionHandling?(v8, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIy28LocalAuthenticationUIService013AuthorizationhE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionV3KeyVGGAA016_BackgroundStyleX0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIy28LocalAuthenticationUIService013AuthorizationhE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionV3KeyVGGAA016_BackgroundStyleX0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGMR);
  }

  else
  {
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t closure #2 in closure #1 in AuthorizationView.body.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for MoveTransition();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
  v10 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = (&v34 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMR);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  v19 = a1;
  v20 = AuthorizationViewModel.showAuthorizationView.getter();

  if (v20)
  {
    type metadata accessor for AuthorizationViewModel(0);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
    v21 = EnvironmentObject.init()();
    v23 = v22;
    MoveTransition.init(edge:)();
    (*(v4 + 16))(v7, v9, v3);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type MoveTransition and conformance MoveTransition, &type metadata accessor for MoveTransition, &protocol conformance descriptor for MoveTransition);
    v24 = AnyTransition.init<A>(_:)();
    (*(v4 + 8))(v9, v3);
    v25 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGMd, &_s7SwiftUI15ModifiedContentVyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGMR) + 36);
    static Material.thick.getter();
    v26 = static Edge.Set.all.getter();
    v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMR) + 36)] = v26;
    *v12 = v21;
    v12[1] = v23;
    v12[2] = v24;
    v27 = static SafeAreaRegions.container.getter();
    v28 = static Edge.Set.bottom.getter();
    v29 = v34;
    v30 = v12 + *(v34 + 36);
    *v30 = v27;
    v30[8] = v28;
    outlined init with take of _OpacityShapeStyle<Material>(v12, v18, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
    (*(v10 + 56))(v18, 0, 1, v29);
  }

  else
  {
    (*(v10 + 56))(v18, 1, 1, v34);
  }

  outlined init with copy of LACUIAngelConnectionHandling?(v18, v16, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMR);
  v31 = v35;
  *v35 = 0;
  *(v31 + 8) = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAEy28LocalAuthenticationUIService013AuthorizationE4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionT3KeyVGGAA016_BackgroundStyleV0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtMd, &_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAEy28LocalAuthenticationUIService013AuthorizationE4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionT3KeyVGGAA016_BackgroundStyleV0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtMR);
  outlined init with copy of LACUIAngelConnectionHandling?(v16, v31 + *(v32 + 48), &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMR);
  outlined destroy of LACUIAngelConnectionHandling?(v18, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMR);
  return outlined destroy of LACUIAngelConnectionHandling?(v16, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService013AuthorizationD4View33_DD63B0C55F42B89932B8BE62D7B51015LLVAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAA016_BackgroundStyleU0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMR);
}

uint64_t closure #1 in closure #2 in AuthorizationView.body.getter(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    AuthorizationViewModel.showAuthorizationView.setter(1);
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v10 = static OS_dispatch_queue.main.getter();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();

    aBlock[4] = partial apply for closure #1 in closure #1 in closure #2 in AuthorizationView.body.getter;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_8;
    v12 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);

    (*(v15 + 8))(v5, v3);
    return (*(v6 + 8))(v8, v14);
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

id protocol witness for View.body.getter in conformance AuthorizationView@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v10 = v3;
  *a1 = static Alignment.center.getter();
  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKy28LocalAuthenticationUIService023AuthorizationBackgroundD033_DD63B0C55F42B89932B8BE62D7B51015LLVAA20_TransactionModifierVGAA14_OpacityEffectVG_AA6VStackVyAIyAA6SpacerV_AKyAKyAKyAL0njD0ANLLVAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGAA01_o5StyleZ0VyAA8MaterialVGGAA024_SafeAreaRegionsIgnoringG0VGSgtGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKy28LocalAuthenticationUIService023AuthorizationBackgroundD033_DD63B0C55F42B89932B8BE62D7B51015LLVAA20_TransactionModifierVGAA14_OpacityEffectVG_AA6VStackVyAIyAA6SpacerV_AKyAKyAKyAL0njD0ANLLVAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGAA01_o5StyleZ0VyAA8MaterialVGGAA024_SafeAreaRegionsIgnoringG0VGSgtGGtGGMR);
  closure #1 in AuthorizationView.body.getter(v10, a1 + *(v6 + 44));
  v7 = swift_allocObject();
  *(v7 + 16) = v10;
  *(v7 + 24) = v4;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACy28LocalAuthenticationUIService023AuthorizationBackgroundG033_DD63B0C55F42B89932B8BE62D7B51015LLVAA20_TransactionModifierVGAA14_OpacityEffectVG_AA6VStackVyAGyAA6SpacerV_ACyACyACyAH0kdG0AJLLVAA013_TraitWritingW0VyAA18TransitionTraitKeyVGGAA01_l5StyleW0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGtGGAA017_AppearanceActionW0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACy28LocalAuthenticationUIService023AuthorizationBackgroundG033_DD63B0C55F42B89932B8BE62D7B51015LLVAA20_TransactionModifierVGAA14_OpacityEffectVG_AA6VStackVyAGyAA6SpacerV_ACyACyACyAH0kdG0AJLLVAA013_TraitWritingW0VyAA18TransitionTraitKeyVGGAA01_l5StyleW0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGtGGAA017_AppearanceActionW0VGMR) + 36));
  *v8 = partial apply for closure #2 in AuthorizationView.body.getter;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;

  return v10;
}

unsigned __int8 *AuthorizationContentView.body.getter@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = static Alignment.center.getter();
  v8 = v7;
  closure #1 in AuthorizationContentView.body.getter(a1, a2, &v15);
  v14 = v15;
  v9 = v16;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v14;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = v9;
  *(a3 + 56) = partial apply for closure #2 in AuthorizationContentView.body.getter;
  *(a3 + 64) = v10;
  *(a3 + 72) = partial apply for closure #3 in AuthorizationContentView.body.getter;
  *(a3 + 80) = v11;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  v12 = a1;

  return v12;
}

void closure #1 in AuthorizationContentView.body.getter(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Material();
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI18_OpacityShapeStyleVyAA8MaterialVGMd, &_s7SwiftUI18_OpacityShapeStyleVyAA8MaterialVGMR);
  __chkstk_darwin(v41);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderF033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA19_ConditionalContentVyAH0j13EnterPasswordwF0AJLLVAH0j8RegisterywF0AJLLVGANtGGGMd, &_s7SwiftUI5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderF033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA19_ConditionalContentVyAH0j13EnterPasswordwF0AJLLVAH0j8RegisterywF0AJLLVGANtGGGMR);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - v12;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGMR);
  __chkstk_darwin(v39);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  v17 = __chkstk_darwin(v16);
  v19 = &v39 - v18;
  if (a1)
  {
    v40 = v17;
    v43 = v6;
    v44 = a3;
    if (a1[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad])
    {
      type metadata accessor for AuthorizationViewModel(0);
      lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
      v20 = a1;
      v21 = EnvironmentObject.init()();
      v23 = v22;
      v24 = v21;
    }

    else
    {
      v21 = a1;
      v23 = 0;
      v24 = 1;
    }

    v25 = v21;
    *v13 = static HorizontalAlignment.center.getter();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0Vy28LocalAuthenticationUIService019AuthorizationHeaderD033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA19_ConditionalContentVyAJ0l13EnterPasswordyD0ALLLVAJ0l16RegisterPasswordyD0ALLLVGAPtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0Vy28LocalAuthenticationUIService019AuthorizationHeaderD033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA19_ConditionalContentVyAJ0l13EnterPasswordyD0ALLLVAJ0l16RegisterPasswordyD0ALLLVGAPtGGMR);
    closure #1 in closure #1 in closure #1 in AuthorizationContentView.body.getter(a1, a2, &v13[*(v26 + 44)]);
    static Material.thick.getter();
    v27 = a1[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad];

    if (v27 == 1)
    {
      v28 = AuthorizationViewModel.requiresFullScreen.getter();

      v29 = 1.0;
      if (!v28)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v29 = 0.0;
LABEL_10:
    (*(v42 + 32))(v10, v8, v43);
    *&v10[*(v41 + 36)] = v29;
    v30 = static Edge.Set.all.getter();
    v31 = &v15[*(v39 + 36)];
    outlined init with take of _OpacityShapeStyle<Material>(v10, v31, &_s7SwiftUI18_OpacityShapeStyleVyAA8MaterialVGMd, &_s7SwiftUI18_OpacityShapeStyleVyAA8MaterialVGMR);
    *(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_BackgroundStyleModifierVyAA013_OpacityShapeD0VyAA8MaterialVGGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA013_OpacityShapeD0VyAA8MaterialVGGMR) + 36)) = v30;
    outlined init with take of _OpacityShapeStyle<Material>(v13, v15, &_s7SwiftUI5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderF033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA19_ConditionalContentVyAH0j13EnterPasswordwF0AJLLVAH0j8RegisterywF0AJLLVGANtGGGMd, &_s7SwiftUI5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderF033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA19_ConditionalContentVyAH0j13EnterPasswordwF0AJLLVAH0j8RegisterywF0AJLLVGANtGGGMR);
    v32 = AuthorizationViewModel.cornerRadius.getter();

    v33 = &v19[*(v40 + 36)];
    v34 = *(type metadata accessor for RoundedRectangle() + 20);
    v35 = enum case for RoundedCornerStyle.continuous(_:);
    v36 = type metadata accessor for RoundedCornerStyle();
    (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
    *v33 = v32;
    v33[1] = v32;
    *(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)) = 256;
    outlined init with take of _OpacityShapeStyle<Material>(v15, v19, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGMR);
    v37 = specialized View.setMaxWidth()();
    outlined destroy of LACUIAngelConnectionHandling?(v19, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    outlined copy of AuthorizationBackgroundView?(v24);

    outlined consume of AuthorizationBackgroundView?(v24);
    v38 = v44;
    *v44 = v24;
    v38[1] = v23;
    v38[2] = v37;

    outlined consume of AuthorizationBackgroundView?(v24);
    return;
  }

  type metadata accessor for AuthorizationViewModel(0);
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
  EnvironmentObject.error()();
  __break(1u);
}

uint64_t closure #1 in closure #1 in closure #1 in AuthorizationContentView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AuthorizationHeaderView(0);
  v7 = __chkstk_darwin(v6);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = (&v30 - v9);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  type metadata accessor for AuthorizationViewModel(0);
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
  v12 = a1;
  *v10 = EnvironmentObject.init()();
  v10[1] = v13;
  v10[2] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in AuthorizationContentView.body.getter;
  v10[3] = v11;
  *&v40 = 0x4034000000000000;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  v14 = v12;
  v33 = AuthorizationViewModel.requiresFullScreen.getter();
  LOBYTE(v12) = AuthorizationViewModel.isEnterModeEnabled.getter();
  v15 = EnvironmentObject.init()();
  v17 = v15;
  v18 = v16;
  if (v12)
  {
    v35 = v15;
    v36 = v16;
    lazy protocol witness table accessor for type AuthorizationEnterPasswordContentView and conformance AuthorizationEnterPasswordContentView();
    lazy protocol witness table accessor for type AuthorizationRegisterPasswordContentView and conformance AuthorizationRegisterPasswordContentView();
    v38 = 0;
    v37 = 0uLL;
    v39 = 0;
  }

  else
  {
    v35 = 0;
    v36 = 0;
    State.init(wrappedValue:)();
    v35 = v17;
    v36 = v18;
    v37 = v40;
    v38 = v41;
    v39 = 1;
    lazy protocol witness table accessor for type AuthorizationEnterPasswordContentView and conformance AuthorizationEnterPasswordContentView();
    lazy protocol witness table accessor for type AuthorizationRegisterPasswordContentView and conformance AuthorizationRegisterPasswordContentView();
  }

  _ConditionalContent<>.init(storage:)();
  v19 = v42;
  v20 = v43;
  v30 = v41;
  v31 = v40;
  v21 = v40;
  v22 = v41;
  outlined copy of _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>.Storage(v40, *(&v40 + 1), v41, *(&v41 + 1), v42, v43);
  v32 = AuthorizationViewModel.requiresFullScreen.getter();

  v23 = v34;
  outlined init with copy of AuthorizationHeaderView(v10, v34);
  outlined init with copy of AuthorizationHeaderView(v23, a3);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService23AuthorizationHeaderView33_DD63B0C55F42B89932B8BE62D7B51015LLV_7SwiftUI6SpacerVSgAE19_ConditionalContentVyAA0d13EnterPasswordtF0ACLLVAA0d8RegistervtF0ACLLVGAHtMd, &_s28LocalAuthenticationUIService23AuthorizationHeaderView33_DD63B0C55F42B89932B8BE62D7B51015LLV_7SwiftUI6SpacerVSgAE19_ConditionalContentVyAA0d13EnterPasswordtF0ACLLVAA0d8RegistervtF0ACLLVGAHtMR);
  v25 = a3 + v24[12];
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 9) = !v33;
  v26 = a3 + v24[16];
  v27 = v30;
  *v26 = v31;
  *(v26 + 16) = v27;
  *(v26 + 32) = v19;
  *(v26 + 40) = v20;
  v28 = a3 + v24[20];
  outlined copy of _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>.Storage(v21, *(&v21 + 1), v22, *(&v22 + 1), v19, v20);
  outlined consume of _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>.Storage(v21, *(&v21 + 1), v22, *(&v22 + 1), v19, v20);
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 9) = !v32;
  outlined destroy of AuthorizationHeaderView(v10);
  outlined consume of _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>.Storage(v21, *(&v21 + 1), v22, *(&v22 + 1), v19, v20);
  return outlined destroy of AuthorizationHeaderView(v23);
}

uint64_t specialized View.setMaxWidth()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA13EmptyModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA13EmptyModifierVGMR);
  __chkstk_darwin(v2);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGAJ8MaxWidthALLLVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGAJ8MaxWidthALLLVGMR);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIDevice, UIDevice_ptr);
  if (static UIDevice.isPad.getter())
  {
    v8 = objc_opt_self();
    v9 = [v8 mainScreen];
    [v9 nativeBounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v24.origin.x = v11;
    v24.origin.y = v13;
    v24.size.width = v15;
    v24.size.height = v17;
    Width = CGRectGetWidth(v24);
    v19 = [v8 mainScreen];
    [v19 nativeScale];
    v21 = v20;

    outlined init with copy of LACUIAngelConnectionHandling?(v1, v7, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    *&v7[*(v5 + 36)] = Width / v21 * 0.55;
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>>, MaxWidth> and conformance <> ModifiedContent<A, B>();
  }

  else
  {
    outlined init with copy of LACUIAngelConnectionHandling?(v0, v4, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>>, EmptyModifier> and conformance <> ModifiedContent<A, B>();
  }

  return AnyView.init<A>(_:)();
}

uint64_t sub_10005C644()
{

  return _swift_deallocObject(v0, 32, 7);
}

void partial apply for closure #2 in AuthorizationContentView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  if (v5)
  {
    if (*(v5 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad))
    {
      v6 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_expectsDismissOnIpad;
      swift_beginAccess();
      if ((*(v5 + v6) & 1) == 0)
      {
        v7 = objc_opt_self();
        v8 = LACErrorCodeUserCancel;
        v9 = v5;
        v10 = [v7 errorWithCode:v8];
        v11 = default argument 1 of AuthorizationViewManager.dismissAuthorizationView(error:reply:)();
        AuthorizationViewModel.dismiss(error:reply:)(v10, v11, v12);
      }
    }
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t partial apply for closure #3 in AuthorizationContentView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v5[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad];
    v5;
    if ((v6 & 1) != 0 || AuthorizationViewModel.requiresFullScreen.getter())
    {
      AuthorizationViewModel.passcodeFocused.setter(1);
    }
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }

  return _objc_release_x1();
}

id outlined copy of AuthorizationBackgroundView?(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void outlined consume of AuthorizationBackgroundView?(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>>, EmptyModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>>, EmptyModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>>, EmptyModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA13EmptyModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA13EmptyModifierVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>>, EmptyModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGMR);
    lazy protocol witness table accessor for type Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>> and conformance <A> Group<A>();
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<_OpacityShapeStyle<Material>> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA013_OpacityShapeD0VyAA8MaterialVGGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA013_OpacityShapeD0VyAA8MaterialVGGMR, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderF033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA19_ConditionalContentVyAH0j13EnterPasswordwF0AJLLVAH0j8RegisterywF0AJLLVGANtGGGMd, &_s7SwiftUI5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderF033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA19_ConditionalContentVyAH0j13EnterPasswordwF0AJLLVAH0j8RegisterywF0AJLLVGANtGGGMR);
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderE033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA19_ConditionalContentVyAF0i13EnterPasswordvE0AHLLVAF0i8RegisterxvE0AHLLVGALtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderE033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA19_ConditionalContentVyAF0i13EnterPasswordvE0AHLLVAF0i8RegisterxvE0AHLLVGALtGGMR, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>>, MaxWidth> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>>, MaxWidth> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>>, MaxWidth> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGAJ8MaxWidthALLLVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA6VStackVyAA9TupleViewVy28LocalAuthenticationUIService019AuthorizationHeaderH033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA6SpacerVSgAA012_ConditionalD0VyAJ0l13EnterPassworddH0ALLLVAJ0l8RegisterzdH0ALLLVGAPtGGGAA24_BackgroundStyleModifierVyAA18_OpacityShapeStyleVyAA8MaterialVGGGAA11_ClipEffectVyAA16RoundedRectangleVGGAJ8MaxWidthALLLVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type MaxWidth and conformance MaxWidth();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<VStack<TupleView<(AuthorizationHeaderView, Spacer?, _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>, Spacer?)>>>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>, _ClipEffect<RoundedRectangle>>, MaxWidth> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaxWidth and conformance MaxWidth()
{
  result = lazy protocol witness table cache variable for type MaxWidth and conformance MaxWidth;
  if (!lazy protocol witness table cache variable for type MaxWidth and conformance MaxWidth)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaxWidth and conformance MaxWidth);
  }

  return result;
}

uint64_t type metadata accessor for AuthorizationHeaderView(uint64_t a1)
{
  result = type metadata singleton initialization cache for AuthorizationHeaderView;
  if (!type metadata singleton initialization cache for AuthorizationHeaderView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AuthorizationEnterPasswordContentView and conformance AuthorizationEnterPasswordContentView()
{
  result = lazy protocol witness table cache variable for type AuthorizationEnterPasswordContentView and conformance AuthorizationEnterPasswordContentView;
  if (!lazy protocol witness table cache variable for type AuthorizationEnterPasswordContentView and conformance AuthorizationEnterPasswordContentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthorizationEnterPasswordContentView and conformance AuthorizationEnterPasswordContentView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AuthorizationRegisterPasswordContentView and conformance AuthorizationRegisterPasswordContentView()
{
  result = lazy protocol witness table cache variable for type AuthorizationRegisterPasswordContentView and conformance AuthorizationRegisterPasswordContentView;
  if (!lazy protocol witness table cache variable for type AuthorizationRegisterPasswordContentView and conformance AuthorizationRegisterPasswordContentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthorizationRegisterPasswordContentView and conformance AuthorizationRegisterPasswordContentView);
  }

  return result;
}

id outlined copy of _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>.Storage(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    v7 = a1;
  }

  else
  {

    return a1;
  }
}

uint64_t outlined init with copy of AuthorizationHeaderView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthorizationHeaderView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void outlined consume of _ConditionalContent<AuthorizationEnterPasswordContentView, AuthorizationRegisterPasswordContentView>.Storage(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }
}

uint64_t outlined destroy of AuthorizationHeaderView(uint64_t a1)
{
  v2 = type metadata accessor for AuthorizationHeaderView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #2 in AuthorizationView.body.getter()
{
  static Animation.easeOut(duration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10005CFB8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void partial apply for closure #1 in closure #1 in closure #2 in AuthorizationView.body.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    AuthorizationViewModel.passcodeFocused.setter(1);
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for AuthorizationRegisterPasswordContentView.Mode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AuthorizationRegisterPasswordContentView.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for AuthorizationRegisterPasswordContentView.Mode(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for AuthorizationRegisterPasswordContentView.Mode(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthorizationRegisterPasswordContentView(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AuthorizationRegisterPasswordContentView(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10005D244(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_10005D320(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for AuthorizationHeaderView(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EnvironmentObject<AuthorizationViewModel>(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    type metadata accessor for (())?(319);
    if (v5 <= 0x3F)
    {
      type metadata accessor for ScaledMetric<CGFloat>(319);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for EnvironmentObject<AuthorizationViewModel>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for EnvironmentObject<AuthorizationViewModel>)
  {
    type metadata accessor for AuthorizationViewModel(255);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
    v4 = type metadata accessor for EnvironmentObject();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for EnvironmentObject<AuthorizationViewModel>);
    }
  }
}

void type metadata accessor for (())?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (())?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (())?);
    }
  }
}

void type metadata accessor for ScaledMetric<CGFloat>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ScaledMetric<CGFloat>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v1 = type metadata accessor for ScaledMetric();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ScaledMetric<CGFloat>);
    }
  }
}

uint64_t getEnumTagSinglePayload for AuthorizationViewWrapper(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AuthorizationViewWrapper(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(AuthorizationBackgroundView?, AnyView)>>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(AuthorizationBackgroundView?, AnyView)>>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(AuthorizationBackgroundView?, AnyView)>>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy28LocalAuthenticationUIService023AuthorizationBackgroundG033_DD63B0C55F42B89932B8BE62D7B51015LLVSg_AA03AnyG0VtGGAA25_AppearanceActionModifierVGARGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy28LocalAuthenticationUIService023AuthorizationBackgroundG033_DD63B0C55F42B89932B8BE62D7B51015LLVSg_AA03AnyG0VtGGAA25_AppearanceActionModifierVGARGMR);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(AuthorizationBackgroundView?, AnyView)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(AuthorizationBackgroundView?, AnyView)>>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(AuthorizationBackgroundView?, AnyView)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(AuthorizationBackgroundView?, AnyView)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(AuthorizationBackgroundView?, AnyView)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVy28LocalAuthenticationUIService023AuthorizationBackgroundG033_DD63B0C55F42B89932B8BE62D7B51015LLVSg_AA03AnyG0VtGGAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVy28LocalAuthenticationUIService023AuthorizationBackgroundG033_DD63B0C55F42B89932B8BE62D7B51015LLVSg_AA03AnyG0VtGGAA25_AppearanceActionModifierVGMR);
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type ZStack<TupleView<(AuthorizationBackgroundView?, AnyView)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVy28LocalAuthenticationUIService023AuthorizationBackgroundE033_DD63B0C55F42B89932B8BE62D7B51015LLVSg_AA03AnyE0VtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVy28LocalAuthenticationUIService023AuthorizationBackgroundE033_DD63B0C55F42B89932B8BE62D7B51015LLVSg_AA03AnyE0VtGGMR, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(AuthorizationBackgroundView?, AnyView)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<AuthorizationBackgroundView, _TransactionModifier>, _OpacityEffect>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<AuthorizationContentView, _TraitWritingModifier<TransitionTraitKey>>, _BackgroundStyleModifier<Material>>, _SafeAreaRegionsIgnoringLayout>?)>>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<AuthorizationBackgroundView, _TransactionModifier>, _OpacityEffect>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<AuthorizationContentView, _TraitWritingModifier<TransitionTraitKey>>, _BackgroundStyleModifier<Material>>, _SafeAreaRegionsIgnoringLayout>?)>>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<AuthorizationBackgroundView, _TransactionModifier>, _OpacityEffect>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<AuthorizationContentView, _TraitWritingModifier<TransitionTraitKey>>, _BackgroundStyleModifier<Material>>, _SafeAreaRegionsIgnoringLayout>?)>>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACy28LocalAuthenticationUIService023AuthorizationBackgroundG033_DD63B0C55F42B89932B8BE62D7B51015LLVAA20_TransactionModifierVGAA14_OpacityEffectVG_AA6VStackVyAGyAA6SpacerV_ACyACyACyAH0kdG0AJLLVAA013_TraitWritingW0VyAA18TransitionTraitKeyVGGAA01_l5StyleW0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGtGGAA017_AppearanceActionW0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACy28LocalAuthenticationUIService023AuthorizationBackgroundG033_DD63B0C55F42B89932B8BE62D7B51015LLVAA20_TransactionModifierVGAA14_OpacityEffectVG_AA6VStackVyAGyAA6SpacerV_ACyACyACyAH0kdG0AJLLVAA013_TraitWritingW0VyAA18TransitionTraitKeyVGGAA01_l5StyleW0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGtGGAA017_AppearanceActionW0VGMR);
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<AuthorizationBackgroundView, _TransactionModifier>, _OpacityEffect>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<AuthorizationContentView, _TraitWritingModifier<TransitionTraitKey>>, _BackgroundStyleModifier<Material>>, _SafeAreaRegionsIgnoringLayout>?)>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGy28LocalAuthenticationUIService023AuthorizationBackgroundE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA20_TransactionModifierVGAA14_OpacityEffectVG_AA6VStackVyAEyAA6SpacerV_AGyAGyAGyAH0kgE0AJLLVAA013_TraitWritingW0VyAA18TransitionTraitKeyVGGAA01_l5StyleW0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGy28LocalAuthenticationUIService023AuthorizationBackgroundE033_DD63B0C55F42B89932B8BE62D7B51015LLVAA20_TransactionModifierVGAA14_OpacityEffectVG_AA6VStackVyAEyAA6SpacerV_AGyAGyAGyAH0kgE0AJLLVAA013_TraitWritingW0VyAA18TransitionTraitKeyVGGAA01_l5StyleW0VyAA8MaterialVGGAA30_SafeAreaRegionsIgnoringLayoutVGSgtGGtGGMR, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<AuthorizationBackgroundView, _TransactionModifier>, _OpacityEffect>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<AuthorizationContentView, _TraitWritingModifier<TransitionTraitKey>>, _BackgroundStyleModifier<Material>>, _SafeAreaRegionsIgnoringLayout>?)>>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in AuthorizationEnterPasswordContentView.body.getter@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v119 = a2;
  v132 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  v128 = *(v4 - 8);
  __chkstk_darwin(v4);
  v116 = &v102 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
  v7 = __chkstk_darwin(v6 - 8);
  v131 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v130 = &v102 - v9;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA08ModifiedD0VyAA0J0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentjH0VQo_SgAA6VStackVyAA05TupleF0VyAKyAKyAKy28LocalAuthenticationUIService0tF0VAA06_FrameN0VGARGA0_5ShakeVG_AKyAoRGtGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA08ModifiedD0VyAA0J0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentjH0VQo_SgAA6VStackVyAA05TupleF0VyAKyAKyAKy28LocalAuthenticationUIService0tF0VAA06_FrameN0VGARGA0_5ShakeVG_AKyAoRGtGG_GMR);
  __chkstk_darwin(v110);
  v111 = &v102 - v10;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMR);
  __chkstk_darwin(v126);
  v112 = &v102 - v11;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
  __chkstk_darwin(v117);
  v104 = &v102 - v12;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentgE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentgE0VQo_MR);
  v13 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v102 - v14;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentgE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentgE0VQo_SgMR);
  __chkstk_darwin(v109);
  v106 = &v102 - v15;
  v16 = type metadata accessor for BorderedProminentButtonStyle();
  v114 = *(v16 - 8);
  v115 = v16;
  __chkstk_darwin(v16);
  v113 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v107 = *(v18 - 8);
  v108 = v18;
  __chkstk_darwin(v18);
  v20 = &v102 - v19;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA14_PaddingLayoutVGMR);
  __chkstk_darwin(v118);
  v22 = &v102 - v21;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0K0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyAA4TextVG_AA017BorderedProminentyW0VQo_AA14_PaddingLayoutVGGACyAmAEANyQrqd__AaORd__lFQOyAKyAtYG_AVQo_SgAA6VStackVyAA05TupleK0VyAKyAKyAKyAF0gK0VAA12_FrameLayoutVGAYGAF5ShakeVG_AKyAsYGtGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0K0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyAA4TextVG_AA017BorderedProminentyW0VQo_AA14_PaddingLayoutVGGACyAmAEANyQrqd__AaORd__lFQOyAKyAtYG_AVQo_SgAA6VStackVyAA05TupleK0VyAKyAKyAKyAF0gK0VAA12_FrameLayoutVGAYGAF5ShakeVG_AKyAsYGtGGG_GMR);
  __chkstk_darwin(v121);
  v123 = &v102 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0K0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyAA4TextVG_AA017BorderedProminentyW0VQo_AA14_PaddingLayoutVG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0K0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyAA4TextVG_AA017BorderedProminentyW0VQo_AA14_PaddingLayoutVG_GMR);
  __chkstk_darwin(v24);
  v26 = (&v102 - v25);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMd, &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMR);
  __chkstk_darwin(v122);
  v28 = &v102 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGACyAkAEALyQrqd__AaMRd__lFQOyAIyArWG_ATQo_SgAA6VStackVyAA05TupleJ0VyAIyAIyAIyAD0fJ0VAA12_FrameLayoutVGAWGAD5ShakeVG_AIyAqWGtGGGGMd, &_s7SwiftUI19_ConditionalContentVyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGACyAkAEALyQrqd__AaMRd__lFQOyAIyArWG_ATQo_SgAA6VStackVyAA05TupleJ0VyAIyAIyAIyAD0fJ0VAA12_FrameLayoutVGAWGAD5ShakeVG_AIyAqWGtGGGGMR);
  v30 = __chkstk_darwin(v29 - 8);
  v127 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v133 = &v102 - v32;
  if (a1)
  {
    v120 = a1;
    v33 = a1;
    v124 = AuthorizationViewModel.promptText.getter();
    v125 = v34;
    v35 = AuthorizationViewModel.shouldShowPassView.getter();
    v129 = v4;
    if (v35)
    {
      v36 = swift_allocObject();
      *(v36 + 16) = v33;
      type metadata accessor for AuthorizationViewModel(0);
      lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
      v37 = EnvironmentObject.init()();
      *v26 = v37;
      v26[1] = v38;
      v26[2] = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in AuthorizationEnterPasswordContentView.body.getter;
      v26[3] = v36;
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type AuthorizationPasscodeView and conformance AuthorizationPasscodeView();
      lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
      v39 = v37;

      _ConditionalContent<>.init(storage:)();
      outlined init with copy of LACUIAngelConnectionHandling?(v28, v123, &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMd, &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<AuthorizationPasscodeView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<(<<opaque return type of View.buttonStyle<A>(_:)>>.0)?, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();

      v40 = v28;
      v41 = &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMd;
      v42 = &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMR;
    }

    else if (AuthorizationViewModel.showBiometryIntentButton.getter())
    {

      v43 = swift_allocObject();
      v44 = v119;
      *(v43 + 16) = v120;
      *(v43 + 24) = v44;
      __chkstk_darwin(v43);
      *(&v102 - 2) = v46;
      *(&v102 - 1) = v45;
      v47 = v33;
      Button.init(action:label:)();
      v48 = v113;
      BorderedProminentButtonStyle.init()();
      lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, &protocol conformance descriptor for Button<A>);
      lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
      v112 = v24;
      v49 = v22;
      v50 = v108;
      v51 = v115;
      View.buttonStyle<A>(_:)();
      (*(v114 + 8))(v48, v51);
      (*(v107 + 8))(v20, v50);
      v52 = static Edge.Set.bottom.getter();
      v53 = v49 + *(v118 + 36);
      *v53 = v52;
      *(v53 + 8) = 0u;
      *(v53 + 24) = 0u;
      *(v53 + 40) = 1;
      outlined init with copy of LACUIAngelConnectionHandling?(v49, v26, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA14_PaddingLayoutVGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type AuthorizationPasscodeView and conformance AuthorizationPasscodeView();
      lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of LACUIAngelConnectionHandling?(v28, v123, &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMd, &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<AuthorizationPasscodeView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<(<<opaque return type of View.buttonStyle<A>(_:)>>.0)?, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of LACUIAngelConnectionHandling?(v28, &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMd, &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMR);
      v40 = v49;
      v41 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA14_PaddingLayoutVGMd;
      v42 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA14_PaddingLayoutVGMR;
    }

    else if (AuthorizationViewModel.showBiometryRetryButton.getter())
    {
      v54 = AuthorizationViewModel.showBiometryRetryButton.getter();

      if (v54)
      {
        *&v150 = static LocalizedStrings.tryAgain.getter();
        *(&v150 + 1) = v55;
        v56 = swift_allocObject();
        v57 = v119;
        *(v56 + 16) = v120;
        *(v56 + 24) = v57;
        lazy protocol witness table accessor for type String and conformance String();
        v58 = v33;
        v59 = v104;
        Button<>.init<A>(_:action:)();
        v60 = static Edge.Set.all.getter();
        v61 = v59 + *(v117 + 36);
        *v61 = v60;
        *(v61 + 8) = 0u;
        *(v61 + 24) = 0u;
        *(v61 + 40) = 1;
        v62 = v113;
        BorderedProminentButtonStyle.init()();
        lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
        lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
        v63 = v103;
        v64 = v115;
        View.buttonStyle<A>(_:)();
        (*(v114 + 8))(v62, v64);
        outlined destroy of LACUIAngelConnectionHandling?(v59, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
        v66 = v105;
        v65 = v106;
        (*(v13 + 32))(v106, v63, v105);
        (*(v13 + 56))(v65, 0, 1, v66);
      }

      else
      {
        v65 = v106;
        (*(v13 + 56))(v106, 1, 1, v105);
      }

      outlined init with copy of LACUIAngelConnectionHandling?(v65, v111, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentgE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentgE0VQo_SgMR);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMR);
      lazy protocol witness table accessor for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?();
      lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMR, &protocol conformance descriptor for VStack<A>);
      v77 = v112;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of LACUIAngelConnectionHandling?(v77, v123, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<AuthorizationPasscodeView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<(<<opaque return type of View.buttonStyle<A>(_:)>>.0)?, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of LACUIAngelConnectionHandling?(v77, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMR);
      v40 = v65;
      v41 = &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentgE0VQo_SgMd;
      v42 = &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentgE0VQo_SgMR;
    }

    else
    {

      v67 = static HorizontalAlignment.center.getter();
      v135 = 1;
      closure #4 in closure #1 in AuthorizationEnterPasswordContentView.body.getter(v120, &v150);
      v146 = v151[9];
      v147[0] = v151[10];
      *(v147 + 9) = *(&v151[10] + 9);
      v142 = v151[5];
      v143 = v151[6];
      v144 = v151[7];
      v145 = v151[8];
      v138 = v151[1];
      v139 = v151[2];
      v140 = v151[3];
      v141 = v151[4];
      v136 = v150;
      v137 = v151[0];
      v148[10] = v151[9];
      v149[0] = v151[10];
      *(v149 + 9) = *(&v151[10] + 9);
      v148[6] = v151[5];
      v148[7] = v151[6];
      v148[8] = v151[7];
      v148[9] = v151[8];
      v148[2] = v151[1];
      v148[3] = v151[2];
      v148[4] = v151[3];
      v148[5] = v151[4];
      v148[0] = v150;
      v148[1] = v151[0];
      outlined init with copy of LACUIAngelConnectionHandling?(&v136, v134, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy28LocalAuthenticationUIService0hD0VAA12_FrameLayoutVGAA08_PaddingK0VGAF5ShakeVG_AEyAA4TextVAMGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy28LocalAuthenticationUIService0hD0VAA12_FrameLayoutVGAA08_PaddingK0VGAF5ShakeVG_AEyAA4TextVAMGtGMR);
      outlined destroy of LACUIAngelConnectionHandling?(v148, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy28LocalAuthenticationUIService0hD0VAA12_FrameLayoutVGAA08_PaddingK0VGAF5ShakeVG_AEyAA4TextVAMGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy28LocalAuthenticationUIService0hD0VAA12_FrameLayoutVGAA08_PaddingK0VGAF5ShakeVG_AEyAA4TextVAMGtGMR);
      *&v134[151] = v145;
      *&v134[167] = v146;
      *&v134[183] = v147[0];
      *&v134[192] = *(v147 + 9);
      *&v134[87] = v141;
      *&v134[103] = v142;
      *&v134[119] = v143;
      *&v134[135] = v144;
      *&v134[23] = v137;
      *&v134[39] = v138;
      *&v134[55] = v139;
      *&v134[71] = v140;
      *&v134[7] = v136;
      *(&v151[9] + 1) = *&v134[144];
      *(&v151[10] + 1) = *&v134[160];
      *(&v151[11] + 1) = *&v134[176];
      *(&v151[12] + 1) = *(v147 + 9);
      *(&v151[5] + 1) = *&v134[80];
      *(&v151[6] + 1) = *&v134[96];
      *(&v151[7] + 1) = *&v134[112];
      *(&v151[8] + 1) = *&v134[128];
      *(&v151[1] + 1) = *&v134[16];
      *(&v151[2] + 1) = *&v134[32];
      *(&v151[3] + 1) = *&v134[48];
      v150 = v67;
      LOBYTE(v151[0]) = v135;
      *(&v151[4] + 1) = *&v134[64];
      *(v151 + 1) = *v134;
      v68 = v151[12];
      v69 = v111;
      *(v111 + 192) = v151[11];
      *(v69 + 208) = v68;
      *(v69 + 224) = v151[13];
      v70 = v151[8];
      *(v69 + 128) = v151[7];
      *(v69 + 144) = v70;
      v71 = v151[10];
      *(v69 + 160) = v151[9];
      *(v69 + 176) = v71;
      v72 = v151[4];
      *(v69 + 64) = v151[3];
      *(v69 + 80) = v72;
      v73 = v151[6];
      *(v69 + 96) = v151[5];
      *(v69 + 112) = v73;
      v74 = v151[0];
      *v69 = v150;
      *(v69 + 16) = v74;
      v75 = v151[2];
      *(v69 + 32) = v151[1];
      *(v69 + 48) = v75;
      swift_storeEnumTagMultiPayload();
      outlined init with copy of LACUIAngelConnectionHandling?(&v150, v134, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMR);
      lazy protocol witness table accessor for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?();
      lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMR, &protocol conformance descriptor for VStack<A>);
      v76 = v112;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of LACUIAngelConnectionHandling?(v76, v123, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<AuthorizationPasscodeView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<(<<opaque return type of View.buttonStyle<A>(_:)>>.0)?, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of LACUIAngelConnectionHandling?(&v150, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMR);
      v40 = v76;
      v41 = &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMd;
      v42 = &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMR;
    }

    outlined destroy of LACUIAngelConnectionHandling?(v40, v41, v42);
    v78 = v130;
    v79 = AuthorizationViewModel.showFallbackButton.getter();

    v80 = v129;
    if (v79)
    {
      v81 = AuthorizationViewModel.devicePasscodeText.getter();
      v83 = v82;

      *&v150 = v81;
      *(&v150 + 1) = v83;
      v84 = swift_allocObject();
      v85 = v119;
      *(v84 + 16) = v120;
      *(v84 + 24) = v85;
      lazy protocol witness table accessor for type String and conformance String();
      v86 = v33;
      v87 = v116;
      Button<>.init<A>(_:action:)();
      v88 = static Edge.Set.bottom.getter();
      v89 = v87 + *(v117 + 36);
      *v89 = v88;
      *(v89 + 8) = 0u;
      *(v89 + 24) = 0u;
      *(v89 + 40) = 1;
      v90 = static Font.subheadline.getter();
      KeyPath = swift_getKeyPath();
      v92 = (v87 + *(v80 + 36));
      *v92 = KeyPath;
      v92[1] = v90;
      outlined init with take of _OpacityShapeStyle<Material>(v87, v78, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
      v93 = 0;
    }

    else
    {

      v93 = 1;
    }

    (*(v128 + 56))(v78, v93, 1, v80);
    v94 = v133;
    v95 = v127;
    outlined init with copy of LACUIAngelConnectionHandling?(v133, v127, &_s7SwiftUI19_ConditionalContentVyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGACyAkAEALyQrqd__AaMRd__lFQOyAIyArWG_ATQo_SgAA6VStackVyAA05TupleJ0VyAIyAIyAIyAD0fJ0VAA12_FrameLayoutVGAWGAD5ShakeVG_AIyAqWGtGGGGMd, &_s7SwiftUI19_ConditionalContentVyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGACyAkAEALyQrqd__AaMRd__lFQOyAIyArWG_ATQo_SgAA6VStackVyAA05TupleJ0VyAIyAIyAIyAD0fJ0VAA12_FrameLayoutVGAWGAD5ShakeVG_AIyAqWGtGGGGMR);
    v96 = v131;
    outlined init with copy of LACUIAngelConnectionHandling?(v78, v131, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
    v97 = v132;
    v98 = v125;
    *v132 = v124;
    v97[1] = v98;
    v99 = v78;
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService23AuthorizationPromptView33_DD63B0C55F42B89932B8BE62D7B51015LLV_7SwiftUI19_ConditionalContentVyAGyAA0d8PasscodeF0ACLLVAE08ModifiedS0VyAE0F0PAEE11buttonStyleyQrqd__AE015PrimitiveButtonW0Rd__lFQOyAE0Y0VyAE4TextVG_AE017BorderedProminentyW0VQo_AE14_PaddingLayoutVGGAGyAmEEANyQrqd__AeORd__lFQOyAKyAtYG_AVQo_SgAE6VStackVyAE05TupleF0VyAKyAKyAKyAA0bF0VAE12_FrameLayoutVGAYGAA5ShakeVG_AKyAsYGtGGGGAKyA0_AE30_EnvironmentKeyWritingModifierVyAE4FontVSgGGSgtMd, &_s28LocalAuthenticationUIService23AuthorizationPromptView33_DD63B0C55F42B89932B8BE62D7B51015LLV_7SwiftUI19_ConditionalContentVyAGyAA0d8PasscodeF0ACLLVAE08ModifiedS0VyAE0F0PAEE11buttonStyleyQrqd__AE015PrimitiveButtonW0Rd__lFQOyAE0Y0VyAE4TextVG_AE017BorderedProminentyW0VQo_AE14_PaddingLayoutVGGAGyAmEEANyQrqd__AeORd__lFQOyAKyAtYG_AVQo_SgAE6VStackVyAE05TupleF0VyAKyAKyAKyAA0bF0VAE12_FrameLayoutVGAYGAA5ShakeVG_AKyAsYGtGGGGAKyA0_AE30_EnvironmentKeyWritingModifierVyAE4FontVSgGGSgtMR);
    outlined init with copy of LACUIAngelConnectionHandling?(v95, v97 + *(v100 + 48), &_s7SwiftUI19_ConditionalContentVyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGACyAkAEALyQrqd__AaMRd__lFQOyAIyArWG_ATQo_SgAA6VStackVyAA05TupleJ0VyAIyAIyAIyAD0fJ0VAA12_FrameLayoutVGAWGAD5ShakeVG_AIyAqWGtGGGGMd, &_s7SwiftUI19_ConditionalContentVyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGACyAkAEALyQrqd__AaMRd__lFQOyAIyArWG_ATQo_SgAA6VStackVyAA05TupleJ0VyAIyAIyAIyAD0fJ0VAA12_FrameLayoutVGAWGAD5ShakeVG_AIyAqWGtGGGGMR);
    outlined init with copy of LACUIAngelConnectionHandling?(v96, v97 + *(v100 + 64), &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);

    outlined destroy of LACUIAngelConnectionHandling?(v99, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
    outlined destroy of LACUIAngelConnectionHandling?(v94, &_s7SwiftUI19_ConditionalContentVyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGACyAkAEALyQrqd__AaMRd__lFQOyAIyArWG_ATQo_SgAA6VStackVyAA05TupleJ0VyAIyAIyAIyAD0fJ0VAA12_FrameLayoutVGAWGAD5ShakeVG_AIyAqWGtGGGGMd, &_s7SwiftUI19_ConditionalContentVyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGACyAkAEALyQrqd__AaMRd__lFQOyAIyArWG_ATQo_SgAA6VStackVyAA05TupleJ0VyAIyAIyAIyAD0fJ0VAA12_FrameLayoutVGAWGAD5ShakeVG_AIyAqWGtGGGGMR);
    outlined destroy of LACUIAngelConnectionHandling?(v96, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
    outlined destroy of LACUIAngelConnectionHandling?(v95, &_s7SwiftUI19_ConditionalContentVyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGACyAkAEALyQrqd__AaMRd__lFQOyAIyArWG_ATQo_SgAA6VStackVyAA05TupleJ0VyAIyAIyAIyAD0fJ0VAA12_FrameLayoutVGAWGAD5ShakeVG_AIyAqWGtGGGGMd, &_s7SwiftUI19_ConditionalContentVyACy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGACyAkAEALyQrqd__AaMRd__lFQOyAIyArWG_ATQo_SgAA6VStackVyAA05TupleJ0VyAIyAIyAIyAD0fJ0VAA12_FrameLayoutVGAWGAD5ShakeVG_AIyAqWGtGGGGMR);
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #4 in closure #1 in AuthorizationEnterPasswordContentView.body.getter@<X0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  __chkstk_darwin(v4 - 8);
  v59 = &v55[-v5];
  v6 = type metadata accessor for Font.TextStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *&a1[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context];
  v11 = a1;
  v12 = v10;
  v13 = v11;
  v63 = AuthenticationView.init(context:delegate:)(v12, a1);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v65 = v134;
  LODWORD(v12) = v135;
  v67 = v136;
  LODWORD(a1) = v137;
  v61 = v139;
  v62 = v138;
  v60 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v66 = v12;
  v133 = v12;
  v68 = a1;
  v132 = a1;
  v131 = 0;
  AuthorizationViewModel.wrongBioAttempts.getter();

  default argument 0 of Shake.init(amount:shakesPerUnit:animatableData:)();
  default argument 0 of Logger(category:)();
  LACPolicy.policy.getter();
  v23 = v22;
  v64 = v24;
  v26 = v25;
  v58 = AuthorizationViewModel.biometrySubtitle.getter(v24, v27);

  (*(v7 + 104))(v9, enum case for Font.TextStyle.subheadline(_:), v6);
  v28 = type metadata accessor for Font.Design();
  v29 = v59;
  (*(*(v28 - 8) + 56))(v59, 1, 1, v28);
  static Font.system(_:design:weight:)();
  outlined destroy of LACUIAngelConnectionHandling?(v29, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(v7 + 8))(v9, v6);
  v30 = Text.font(_:)();
  v57 = v31;
  v58 = v30;
  LOBYTE(v12) = v32;
  v59 = v33;

  v56 = static Edge.Set.bottom.getter();
  AuthorizationViewModel.biometryType.getter();

  EdgeInsets.init(_all:)();
  v126 = v12 & 1;
  v123 = 0;
  v35 = v62;
  v34 = v63;
  *&v81 = v63;
  *(&v81 + 1) = v65;
  LOBYTE(v82) = v66;
  *(&v82 + 1) = *v130;
  DWORD1(v82) = *&v130[3];
  *(&v82 + 1) = v67;
  LOBYTE(v83) = v68;
  DWORD1(v83) = *&v129[3];
  *(&v83 + 1) = *v129;
  v36 = v61;
  *(&v83 + 1) = v62;
  *&v84 = v61;
  LOBYTE(v6) = v60;
  BYTE8(v84) = v60;
  HIDWORD(v84) = *&v128[3];
  *(&v84 + 9) = *v128;
  *&v85 = v15;
  *(&v85 + 1) = v17;
  *&v86 = v19;
  *(&v86 + 1) = v21;
  LOBYTE(v87) = 0;
  DWORD1(v87) = *&v127[3];
  *(&v87 + 1) = *v127;
  *(&v87 + 1) = v23;
  *&v88 = v64;
  *(&v88 + 1) = v26;
  v71 = v83;
  v72 = v84;
  v69 = v81;
  v70 = v82;
  v75 = v87;
  v76 = v88;
  v73 = v85;
  v74 = v86;
  v38 = v57;
  v37 = v58;
  *&v89 = v58;
  *(&v89 + 1) = v57;
  LOBYTE(v90) = v12 & 1;
  DWORD1(v90) = *&v125[3];
  *(&v90 + 1) = *v125;
  v39 = v59;
  *(&v90 + 1) = v59;
  v40 = v56;
  LOBYTE(v91) = v56;
  DWORD1(v91) = *&v124[3];
  *(&v91 + 1) = *v124;
  *(&v91 + 1) = v41;
  *&v92[0] = v42;
  *(&v92[0] + 1) = v43;
  *&v92[1] = v44;
  BYTE8(v92[1]) = 0;
  *(v80 + 9) = *(v92 + 9);
  v79 = v91;
  v80[0] = v92[0];
  v77 = v89;
  v78 = v90;
  v45 = v81;
  v46 = v82;
  v47 = v84;
  a2[2] = v83;
  a2[3] = v47;
  *a2 = v45;
  a2[1] = v46;
  v48 = v73;
  v49 = v74;
  v50 = v76;
  a2[6] = v75;
  a2[7] = v50;
  a2[4] = v48;
  a2[5] = v49;
  v51 = v77;
  v52 = v78;
  *(a2 + 185) = *(v80 + 9);
  v53 = v80[0];
  a2[10] = v79;
  a2[11] = v53;
  a2[8] = v51;
  a2[9] = v52;
  v93[0] = v37;
  v93[1] = v38;
  v94 = v12 & 1;
  *v95 = *v125;
  *&v95[3] = *&v125[3];
  v96 = v39;
  v97 = v40;
  *v98 = *v124;
  *&v98[3] = *&v124[3];
  v99 = v41;
  v100 = v42;
  v101 = v43;
  v102 = v44;
  v103 = 0;
  outlined init with copy of LACUIAngelConnectionHandling?(&v81, v104, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService0F4ViewVAA12_FrameLayoutVGAA08_PaddingJ0VGAD5ShakeVGMd, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService0F4ViewVAA12_FrameLayoutVGAA08_PaddingJ0VGAD5ShakeVGMR);
  outlined init with copy of LACUIAngelConnectionHandling?(&v89, v104, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
  outlined destroy of LACUIAngelConnectionHandling?(v93, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
  v104[0] = v34;
  v104[1] = v65;
  v105 = v66;
  *v106 = *v130;
  *&v106[3] = *&v130[3];
  v107 = v67;
  v108 = v68;
  *v109 = *v129;
  *&v109[3] = *&v129[3];
  v110 = v35;
  v111 = v36;
  v112 = v6;
  *&v113[3] = *&v128[3];
  *v113 = *v128;
  v114 = v15;
  v115 = v17;
  v116 = v19;
  v117 = v21;
  v118 = 0;
  *v119 = *v127;
  *&v119[3] = *&v127[3];
  v120 = v23;
  v121 = v64;
  v122 = v26;
  return outlined destroy of LACUIAngelConnectionHandling?(v104, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService0F4ViewVAA12_FrameLayoutVGAA08_PaddingJ0VGAD5ShakeVGMd, &_s7SwiftUI15ModifiedContentVyACyACy28LocalAuthenticationUIService0F4ViewVAA12_FrameLayoutVGAA08_PaddingJ0VGAD5ShakeVGMR);
}

uint64_t protocol witness for View.body.getter in conformance AuthorizationEnterPasswordContentView@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = *(v2 + 8);
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0Vy28LocalAuthenticationUIService019AuthorizationPromptD033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA19_ConditionalContentVyAOyAJ0l8PasscodeD0ALLLVAA08ModifiedX0VyAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA4TextVG_AA28BorderedProminentButtonStyleVQo_AA08_PaddingG0VGGAOyAuAEAVyQrqd__AaWRd__lFQOyASyA0_A5_G_A2_Qo_SgAA0F0VyAIyASyASyASyAJ0jD0VAA06_FrameG0VGA5_GAJ5ShakeVG_ASyA_A5_GtGGGGASyA8_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0Vy28LocalAuthenticationUIService019AuthorizationPromptD033_DD63B0C55F42B89932B8BE62D7B51015LLV_AA19_ConditionalContentVyAOyAJ0l8PasscodeD0ALLLVAA08ModifiedX0VyAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA4TextVG_AA28BorderedProminentButtonStyleVQo_AA08_PaddingG0VGGAOyAuAEAVyQrqd__AaWRd__lFQOyASyA0_A5_G_A2_Qo_SgAA0F0VyAIyASyASyASyAJ0jD0VAA06_FrameG0VGA5_GAJ5ShakeVG_ASyA_A5_GtGGGGASyA8_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGMR);
  return closure #1 in AuthorizationEnterPasswordContentView.body.getter(v5, v4, (a2 + *(v6 + 44)));
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AuthorizationRegisterPasswordContentView.Mode(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

void closure #1 in AuthorizationRegisterPasswordContentView.body.getter(char **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  v23 = *(a1 + 1);
  *&v24 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGMd, &_s7SwiftUI5StateVy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGMR);
  State.wrappedValue.getter();
  if (v22)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = [*&v5[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_configuration] verifyPrompt];
      if (v6)
      {
        v7 = v6;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v27 = *(a1 + 1);
      v28 = v4;
      v11 = swift_allocObject();
      *(v11 + 16) = v21;
      *(v11 + 24) = v22;
      v12 = *(a1 + 1);
      *(v11 + 32) = *a1;
      *(v11 + 48) = v12;
      *(v11 + 64) = a1[4];
      v13 = v5;
      outlined init with copy of AuthorizationRegisterPasswordContentView.Mode(&v27, &v23);
      outlined init with copy of LACUIAngelConnectionHandling?(&v28, &v23, &_s7SwiftUI11AnyLocationCy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGSgMd, &_s7SwiftUI11AnyLocationCy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGSgMR);
      type metadata accessor for AuthorizationViewModel(0);
      lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
      v14 = EnvironmentObject.init()();

LABEL_10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy28LocalAuthenticationUIService019AuthorizationPromptD033_DD63B0C55F42B89932B8BE62D7B51015LLV_AD0h8PasscodeD0AFLLVtGMd, &_s7SwiftUI9TupleViewVy28LocalAuthenticationUIService019AuthorizationPromptD033_DD63B0C55F42B89932B8BE62D7B51015LLV_AD0h8PasscodeD0AFLLVtGMR);
      lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type TupleView<(AuthorizationPromptView, AuthorizationPasscodeView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy28LocalAuthenticationUIService019AuthorizationPromptD033_DD63B0C55F42B89932B8BE62D7B51015LLV_AD0h8PasscodeD0AFLLVtGMd, &_s7SwiftUI9TupleViewVy28LocalAuthenticationUIService019AuthorizationPromptD033_DD63B0C55F42B89932B8BE62D7B51015LLV_AD0h8PasscodeD0AFLLVtGMR, &protocol conformance descriptor for TupleView<A>);
      _ConditionalContent<>.init(storage:)();

      v18 = v24;
      v19 = v25;
      v20 = v26;
      *a2 = v23;
      *(a2 + 16) = v18;
      *(a2 + 32) = v19;
      *(a2 + 48) = v20;
      return;
    }
  }

  else
  {
    v8 = *a1;
    if (*a1)
    {
      v9 = [*&v8[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_configuration] prompt];
      if (v9)
      {
        v10 = v9;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v27 = *(a1 + 1);
      v28 = v4;
      v15 = swift_allocObject();
      v16 = *(a1 + 1);
      *(v15 + 16) = *a1;
      *(v15 + 32) = v16;
      *(v15 + 48) = a1[4];
      v17 = v8;
      outlined init with copy of AuthorizationRegisterPasswordContentView.Mode(&v27, &v23);
      outlined init with copy of LACUIAngelConnectionHandling?(&v28, &v23, &_s7SwiftUI11AnyLocationCy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGSgMd, &_s7SwiftUI11AnyLocationCy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGSgMR);
      type metadata accessor for AuthorizationViewModel(0);
      lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
      v14 = EnvironmentObject.init()();

      goto LABEL_10;
    }
  }

  type metadata accessor for AuthorizationViewModel(0);
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
  EnvironmentObject.error()();
  __break(1u);
}

__n128 protocol witness for View.body.getter in conformance AuthorizationRegisterPasswordContentView@<Q0>(uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v12 = 1;
  closure #1 in AuthorizationRegisterPasswordContentView.body.getter(v2, v10);
  v5 = v11;
  result = v10[0];
  v7 = v10[1];
  v8 = v10[2];
  v9 = v12;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 24) = result;
  *(a2 + 40) = v7;
  *(a2 + 56) = v8;
  *(a2 + 72) = v5;
  return result;
}

uint64_t AuthorizationBackgroundView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = type metadata accessor for OpacityTransition();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v20 - v10;
  static Color.black.getter();
  if (a1)
  {
    v12 = a1;
    AuthorizationViewModel.backgroundOpacity.getter();

    v13 = Color.opacity(_:)();

    v14 = static SafeAreaRegions.all.getter();
    v15 = static Edge.Set.all.getter();
    OpacityTransition.init()();
    (*(v6 + 16))(v9, v11, v5);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v16 = AnyTransition.init<A>(_:)();
    (*(v6 + 8))(v11, v5);
    v20[2] = v13;
    v20[3] = v14;
    v21 = v15;
    v22 = v16;
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v18 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA30_SafeAreaRegionsIgnoringLayoutVGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA30_SafeAreaRegionsIgnoringLayoutVGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    View.onTapGesture(count:perform:)();
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in AuthorizationHeaderView.body.getter@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  __chkstk_darwin(v3 - 8);
  v110 = &v104 - v4;
  v111 = type metadata accessor for Font.TextStyle();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for Image.ResizingMode();
  v6 = *(v112 - 8);
  __chkstk_darwin(v112);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGMR);
  v113 = *(v9 - 8);
  v114 = v9;
  __chkstk_darwin(v9);
  v11 = &v104 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGSgMR);
  v13 = __chkstk_darwin(v12 - 8);
  v116 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v118 = &v104 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGMR);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v104 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSgMR);
  v21 = __chkstk_darwin(v20 - 8);
  v115 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v119 = &v104 - v23;
  v24 = a1;
  if (*a1)
  {
    v25 = *a1;
    v26 = AuthorizationViewModel.requiresHeaderHidden.getter();

    if (v26)
    {
      (*(v17 + 56))(v119, 1, 1, v16);
    }

    else
    {
      *v19 = static HorizontalAlignment.center.getter();
      *(v19 + 1) = 0;
      v19[16] = 0;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA6HStackVyAIyAA4TextV_AA6SpacerVAKyAA6ButtonVyAOGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA08_PaddingG0VGA4_G_AA7DividerVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA6HStackVyAIyAA4TextV_AA6SpacerVAKyAA6ButtonVyAOGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA08_PaddingG0VGA4_G_AA7DividerVtGGMR);
      closure #1 in closure #1 in AuthorizationHeaderView.body.getter(v24, &v19[*(v27 + 44)]);
      v28 = v19;
      v29 = v119;
      outlined init with take of _OpacityShapeStyle<Material>(v28, v119, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGMR);
      (*(v17 + 56))(v29, 0, 1, v16);
    }

    v30 = v25;
    v31 = AuthorizationViewModel.appIcon.getter();

    if (v31)
    {
      v107 = v31;
      Image.init(uiImage:)();
      v32 = v112;
      (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v112);
      v106 = Image.resizable(capInsets:resizingMode:)();

      (*(v6 + 8))(v8, v32);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v112 = v153;
      v33 = v154;
      v34 = v155;
      v35 = v156;
      v36 = v157;
      v105 = v158;
      v37 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGMR) + 36)];
      v38 = *(type metadata accessor for RoundedRectangle() + 20);
      v39 = enum case for RoundedCornerStyle.continuous(_:);
      v40 = type metadata accessor for RoundedCornerStyle();
      (*(*(v40 - 8) + 104))(&v37[v38], v39, v40);
      __asm { FMOV            V0.2D, #10.0 }

      *v37 = _Q0;
      *&v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)] = 256;
      v46 = v112;
      *v11 = v106;
      *(v11 + 1) = v46;
      v11[16] = v33;
      *(v11 + 3) = v34;
      v11[32] = v35;
      v47 = v105;
      *(v11 + 5) = v36;
      *(v11 + 6) = v47;
      LOBYTE(v36) = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;

      v56 = v114;
      v57 = &v11[*(v114 + 36)];
      *v57 = v36;
      *(v57 + 1) = v49;
      *(v57 + 2) = v51;
      *(v57 + 3) = v53;
      *(v57 + 4) = v55;
      v57[40] = 0;
      v58 = v118;
      outlined init with take of _OpacityShapeStyle<Material>(v11, v118, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGMR);
      v59 = 0;
    }

    else
    {
      v59 = 1;
      v58 = v118;
      v56 = v114;
    }

    (*(v113 + 56))(v58, v59, 1, v56);
    v60 = v30;
    v61 = AuthorizationViewModel.subtitle.getter();
    v63 = v62;

    if (v63)
    {
      v64 = HIBYTE(v63) & 0xF;
      if ((v63 & 0x2000000000000000) == 0)
      {
        v64 = v61 & 0xFFFFFFFFFFFFLL;
      }

      if (v64)
      {
        v66 = v108;
        v65 = v109;
        v67 = v111;
        (*(v109 + 104))(v108, enum case for Font.TextStyle.body(_:), v111);
        v68 = type metadata accessor for Font.Design();
        v69 = v110;
        (*(*(v68 - 8) + 56))(v110, 1, 1, v68);
        static Font.system(_:design:weight:)();
        outlined destroy of LACUIAngelConnectionHandling?(v69, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
        (*(v65 + 8))(v66, v67);
        v70 = Text.font(_:)();
        v72 = v71;
        LOBYTE(v69) = v73;
        v75 = v74;

        KeyPath = swift_getKeyPath();
        v77 = static Edge.Set.vertical.getter();
        EdgeInsets.init(_all:)();
        v79 = v78;
        v81 = v80;
        v83 = v82;
        v85 = v84;
        LOBYTE(v66) = v69 & 1;
        LOBYTE(v133) = v69 & 1;
        LOBYTE(v131[0]) = 0;
        LOBYTE(v69) = static Edge.Set.horizontal.getter();
        LOBYTE(v142) = 1;
        v86 = swift_getKeyPath();
        *&v133 = v70;
        *(&v133 + 1) = v72;
        LOBYTE(v134) = v66;
        v58 = v118;
        *(&v134 + 1) = v75;
        *&v135 = KeyPath;
        BYTE8(v135) = 1;
        LOBYTE(v136) = v77;
        *(&v136 + 1) = v79;
        *&v137 = v81;
        *(&v137 + 1) = v83;
        *&v138 = v85;
        BYTE8(v138) = 0;
        LOBYTE(v139[0]) = v69;
        *(v139 + 8) = 0u;
        *(&v139[1] + 8) = 0u;
        BYTE8(v139[2]) = 1;
        *&v140 = v86;
        *(&v140 + 1) = 5;
        v141 = 0;
        LACPolicy.policy.getter();
        v150 = v139[2];
        v151 = v140;
        v152 = v141;
        v146 = v137;
        v147 = v138;
        v148 = v139[0];
        v149 = v139[1];
        v142 = v133;
        v143 = v134;
        v144 = v135;
        v145 = v136;
LABEL_15:
        v87 = v119;
        v88 = v115;
        outlined init with copy of LACUIAngelConnectionHandling?(v119, v115, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSgMR);
        v89 = v116;
        outlined init with copy of LACUIAngelConnectionHandling?(v58, v116, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGSgMR);
        v128 = v150;
        v129 = v151;
        v130 = v152;
        v124 = v146;
        v125 = v147;
        v126 = v148;
        v127 = v149;
        v120 = v142;
        v121 = v143;
        v122 = v144;
        v123 = v145;
        v90 = v117;
        outlined init with copy of LACUIAngelConnectionHandling?(v88, v117, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSgMR);
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSg_AGyAGyAGyAA5ImageVAA06_FrameR0VGAA11_ClipEffectVyAA16RoundedRectangleVGGA0_GSgAGyAGyAGyAGyAkRyAA0I9AlignmentOGGA0_GA0_GARySiSgGGSgtMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSg_AGyAGyAGyAA5ImageVAA06_FrameR0VGAA11_ClipEffectVyAA16RoundedRectangleVGGA0_GSgAGyAGyAGyAGyAkRyAA0I9AlignmentOGGA0_GA0_GARySiSgGGSgtMR);
        outlined init with copy of LACUIAngelConnectionHandling?(v89, v90 + *(v91 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGSgMR);
        v92 = *(v91 + 64);
        v93 = v129;
        v131[8] = v128;
        v131[9] = v129;
        v94 = v124;
        v95 = v125;
        v131[4] = v124;
        v131[5] = v125;
        v97 = v126;
        v96 = v127;
        v131[6] = v126;
        v131[7] = v127;
        v98 = v120;
        v99 = v121;
        v131[0] = v120;
        v131[1] = v121;
        v101 = v122;
        v100 = v123;
        v131[2] = v122;
        v131[3] = v123;
        v102 = v90 + v92;
        *(v102 + 128) = v128;
        *(v102 + 144) = v93;
        *(v102 + 64) = v94;
        *(v102 + 80) = v95;
        *(v102 + 96) = v97;
        *(v102 + 112) = v96;
        *v102 = v98;
        *(v102 + 16) = v99;
        v132 = v130;
        *(v102 + 160) = v130;
        *(v102 + 32) = v101;
        *(v102 + 48) = v100;
        outlined init with copy of LACUIAngelConnectionHandling?(v131, &v133, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGSgMR);
        outlined destroy of LACUIAngelConnectionHandling?(v58, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGSgMR);
        outlined destroy of LACUIAngelConnectionHandling?(v87, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSgMR);
        v139[2] = v128;
        v140 = v129;
        v141 = v130;
        v137 = v124;
        v138 = v125;
        v139[0] = v126;
        v139[1] = v127;
        v133 = v120;
        v134 = v121;
        v135 = v122;
        v136 = v123;
        outlined destroy of LACUIAngelConnectionHandling?(&v133, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGSgMR);
        outlined destroy of LACUIAngelConnectionHandling?(v89, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingG0VGSgMR);
        return outlined destroy of LACUIAngelConnectionHandling?(v88, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAA4TextV_AA6SpacerVAGyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGA0_G_AA7DividerVtGGSgMR);
      }
    }

    _s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGSgWOi0_(&v142);
    goto LABEL_15;
  }

  type metadata accessor for AuthorizationViewModel(0);
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in AuthorizationHeaderView.body.getter@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v35 = type metadata accessor for Divider();
  v3 = *(v35 - 8);
  v4 = __chkstk_darwin(v35);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZGMR);
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  *v14 = static VerticalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGMR);
  closure #1 in closure #1 in closure #1 in AuthorizationHeaderView.body.getter(a1, &v14[*(v15 + 44)]);
  LOBYTE(a1) = static Edge.Set.horizontal.getter();
  v16 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGMR) + 36)];
  *v16 = a1;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 1;
  LOBYTE(a1) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v17 = &v14[*(v9 + 44)];
  *v17 = a1;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  Divider.init()();
  v22 = v12;
  v33 = v12;
  outlined init with copy of LACUIAngelConnectionHandling?(v14, v12, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZGMR);
  v23 = *(v3 + 16);
  v24 = v34;
  v25 = v7;
  v26 = v7;
  v27 = v35;
  v23(v34, v25, v35);
  v28 = v22;
  v29 = v36;
  outlined init with copy of LACUIAngelConnectionHandling?(v28, v36, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZGMR);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZG_AA7DividerVtMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZG_AA7DividerVtMR);
  v23((v29 + *(v30 + 48)), v24, v27);
  v31 = *(v3 + 8);
  v31(v26, v27);
  outlined destroy of LACUIAngelConnectionHandling?(v14, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZGMR);
  v31(v24, v27);
  return outlined destroy of LACUIAngelConnectionHandling?(v33, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAA6ButtonVyAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA14_PaddingLayoutVGAZGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in AuthorizationHeaderView.body.getter@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.TextStyle();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v58 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AuthorizationHeaderView(0);
  v53 = *(v6 - 8);
  __chkstk_darwin(v6);
  v54 = v7;
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v57 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
  v11 = __chkstk_darwin(v10 - 8);
  v65 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  __chkstk_darwin(v14 - 8);
  v16 = &v52 - v15;
  if (*a1)
  {
    v17 = *a1;
    AuthorizationViewModel.title.getter();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
    v56 = a1;
    ScaledMetric.wrappedValue.getter();
    static Font.Weight.semibold.getter();
    v18 = enum case for Font.Design.default(_:);
    v19 = type metadata accessor for Font.Design();
    v20 = *(v19 - 8);
    (*(v20 + 104))(v16, v18, v19);
    v52 = *(v20 + 56);
    v52(v16, 0, 1, v19);
    static Font.system(size:weight:design:)();
    outlined destroy of LACUIAngelConnectionHandling?(v16, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
    v21 = Text.font(_:)();
    v23 = v22;
    v61 = v24;
    v26 = v25;

    v27 = v17;
    v28 = AuthorizationViewModel.cancelButtonTitle.getter();
    v30 = v29;

    if (v30)
    {
      v31 = HIBYTE(v30) & 0xF;
      if ((v30 & 0x2000000000000000) == 0)
      {
        v31 = v28 & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {
        v66 = v28;
        v67 = v30;
        v32 = v55;
        outlined init with copy of AuthorizationHeaderView(v56, v55);
        v33 = (*(v53 + 80) + 16) & ~*(v53 + 80);
        v34 = swift_allocObject();
        outlined init with take of AuthorizationHeaderView(v32, v34 + v33, type metadata accessor for AuthorizationHeaderView);
        lazy protocol witness table accessor for type String and conformance String();
        v56 = v26;
        v35 = v57;
        Button<>.init<A>(_:action:)();
        v37 = v59;
        v36 = v60;
        v38 = *(v59 + 104);
        v55 = v21;
        v39 = v58;
        v38(v58, enum case for Font.TextStyle.body(_:), v60);
        v52(v16, 1, 1, v19);
        v40 = static Font.system(_:design:weight:)();
        outlined destroy of LACUIAngelConnectionHandling?(v16, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
        v41 = v39;
        v21 = v55;
        (*(v37 + 8))(v41, v36);
        KeyPath = swift_getKeyPath();
        v43 = v63;
        v44 = v64;
        v45 = &v35[*(v63 + 36)];
        *v45 = KeyPath;
        v45[1] = v40;
        v46 = v35;
        v26 = v56;
        outlined init with take of _OpacityShapeStyle<Material>(v46, v44, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
        v47 = 0;
LABEL_9:
        (*(v62 + 56))(v44, v47, 1, v43);
        v48 = v65;
        outlined init with copy of LACUIAngelConnectionHandling?(v44, v65, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
        *a2 = v21;
        *(a2 + 8) = v23;
        v49 = v61 & 1;
        *(a2 + 16) = v61 & 1;
        *(a2 + 24) = v26;
        *(a2 + 32) = 0;
        *(a2 + 40) = 1;
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyACGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtMd, &_s7SwiftUI4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyACGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtMR);
        outlined init with copy of LACUIAngelConnectionHandling?(v48, a2 + *(v50 + 64), &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
        outlined copy of Text.Storage(v21, v23, v49);

        outlined destroy of LACUIAngelConnectionHandling?(v44, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
        outlined destroy of LACUIAngelConnectionHandling?(v48, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgMR);
        outlined consume of Text.Storage(v21, v23, v49);
      }
    }

    v47 = 1;
    v43 = v63;
    v44 = v64;
    goto LABEL_9;
  }

  type metadata accessor for AuthorizationViewModel(0);
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t protocol witness for View.body.getter in conformance AuthorizationHeaderView@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0F0VyAIyAA15ModifiedContentVyAMyAA6HStackVyAIyAA4TextV_AA6SpacerVAMyAA6ButtonVyAQGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA08_PaddingG0VGA6_G_AA7DividerVtGGSg_AMyAMyAMyAA5ImageVAA06_FrameG0VGAA11_ClipEffectVyAA16RoundedRectangleVGGA6_GSgAMyAMyAMyAMyAqXyAA0L9AlignmentOGGA6_GA6_GAXySiSgGGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0F0VyAIyAA15ModifiedContentVyAMyAA6HStackVyAIyAA4TextV_AA6SpacerVAMyAA6ButtonVyAQGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGGAA08_PaddingG0VGA6_G_AA7DividerVtGGSg_AMyAMyAMyAA5ImageVAA06_FrameG0VGAA11_ClipEffectVyAA16RoundedRectangleVGGA6_GSgAMyAMyAMyAMyAqXyAA0L9AlignmentOGGA6_GA6_GAXySiSgGGSgtGGMR);
  return closure #1 in AuthorizationHeaderView.body.getter(v2, a2 + *(v4 + 44));
}

uint64_t closure #1 in AuthorizationPasscodeView.body.getter@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v36 = a3;
  v39 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v28[-v7];
  v9 = type metadata accessor for PasscodeEmbeddedView(0);
  __chkstk_darwin(v9 - 8);
  v38 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGMR);
  __chkstk_darwin(v37);
  v12 = &v28[-v11];
  if (a1)
  {
    v13 = a1;
    v33 = AuthorizationViewModel.passcodeLength.getter();
    v14 = AuthorizationViewModel.passwordType.getter();
    v34 = LACustomPasswordTypeAlphanumeric;
    v32 = v14 == LACustomPasswordTypeAlphanumeric;
    v15 = AuthorizationViewModel.passwordFieldPlaceholder.getter();
    v30 = v16;
    v31 = v15;
    v29 = AuthorizationViewModel.shouldDismissKeyboardOnDissapear.getter();
    type metadata accessor for AuthorizationViewModel(0);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
    v17 = EnvironmentObject.projectedValue.getter();
    swift_getKeyPath();
    EnvironmentObject.Wrapper.subscript.getter();

    v18 = v40;
    v19 = v41;
    v20 = EnvironmentObject.projectedValue.getter();
    swift_getKeyPath();
    EnvironmentObject.Wrapper.subscript.getter();

    v22 = v38;
    PasscodeEmbeddedView.init(passcodeLength:alphanumeric:placeholder:dismissKeyboardOnDissappear:passcodeFocused:blockedUntil:verifyPasscode:)(v33, v32, v31, v30, v29, v18, *(&v18 + 1), v19, v38, v8, v36, v21);
    AuthorizationViewModel.passwordType.getter();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    outlined init with take of AuthorizationHeaderView(v22, v12, type metadata accessor for PasscodeEmbeddedView);
    v23 = &v12[*(v37 + 36)];
    v24 = v41;
    *v23 = v40;
    v23[1] = v24;
    v23[2] = v42;
    LOBYTE(v20) = static Edge.Set.horizontal.getter();
    v25 = v39;
    outlined init with take of _OpacityShapeStyle<Material>(v12, v39, &_s7SwiftUI15ModifiedContentVy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGMR);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGAA08_PaddingL0VGMd, &_s7SwiftUI15ModifiedContentVyACy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGAA08_PaddingL0VGMR);
    v27 = v25 + *(result + 36);
    *v27 = v20;
    *(v27 + 8) = 0u;
    *(v27 + 24) = 0u;
    *(v27 + 40) = 1;
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t key path getter for AuthorizationViewModel.passcodeFocused : AuthorizationViewModel@<X0>(_BYTE *a1@<X8>)
{
  result = AuthorizationViewModel.passcodeFocused.getter();
  *a1 = result & 1;
  return result;
}

uint64_t key path setter for AuthorizationViewModel.blockedUntilDate : AuthorizationViewModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  outlined init with copy of LACUIAngelConnectionHandling?(a1, &v6 - v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return AuthorizationViewModel.blockedUntilDate.setter(v4);
}

uint64_t protocol witness for View.body.getter in conformance AuthorizationPasscodeView@<X0>(uint64_t a1@<X8>)
{
  closure #1 in AuthorizationPasscodeView.body.getter(*v1, *(v1 + 16), *(v1 + 24), a1);
  v3 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGAA08_PaddingM0VGGAMGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGAA08_PaddingM0VGGAMGMR);
  v13 = a1 + *(result + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

double AuthorizationPromptView.body.getter@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - v7;
  v9 = type metadata accessor for Font.TextStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_6;
  }

  v13 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    (*(v10 + 104))(v12, enum case for Font.TextStyle.body(_:), v9);
    v14 = type metadata accessor for Font.Design();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);

    static Font.system(_:design:weight:)();
    outlined destroy of LACUIAngelConnectionHandling?(v8, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
    (*(v10 + 8))(v12, v9);
    v15 = Text.font(_:)();
    v43 = v16;
    v44 = v15;
    v18 = v17;
    v20 = v19;

    KeyPath = swift_getKeyPath();
    v22 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = v18 & 1;
    LOBYTE(v65) = v18 & 1;
    LOBYTE(v45) = 0;
    v32 = static Edge.Set.horizontal.getter();
    LOBYTE(v56) = 1;
    v33 = swift_getKeyPath();
    LOBYTE(v65) = 0;
    v34 = static Color.secondary.getter();
    v35 = swift_getKeyPath();
    *&v56 = v44;
    *(&v56 + 1) = v43;
    LOBYTE(v57) = v31;
    *(&v57 + 1) = v20;
    *&v58 = KeyPath;
    BYTE8(v58) = 1;
    LOBYTE(v59) = v22;
    *(&v59 + 1) = v24;
    *&v60 = v26;
    *(&v60 + 1) = v28;
    *&v61 = v30;
    BYTE8(v61) = 0;
    LOBYTE(v62[0]) = v32;
    *(v62 + 8) = 0u;
    *(&v62[1] + 8) = 0u;
    BYTE8(v62[2]) = 1;
    *&v63 = v33;
    *(&v63 + 1) = 3;
    LOBYTE(v64[0]) = 0;
    *(&v64[0] + 1) = v35;
    *&v64[1] = v34;
    _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA14_PaddingLayoutVGAQGAKySiSgGGAKyAA5ColorVSgGGAA9EmptyViewV_GWOi_(&v56);
  }

  else
  {
LABEL_6:
    _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA14_PaddingLayoutVGAQGAKySiSgGGAKyAA5ColorVSgGGAA9EmptyViewV_GWOi0_(&v56);
  }

  v53 = v62[2];
  v54 = v63;
  v55[0] = v64[0];
  *(v55 + 9) = *(v64 + 9);
  v49 = v60;
  v50 = v61;
  v51 = v62[0];
  v52 = v62[1];
  v45 = v56;
  v46 = v57;
  v47 = v58;
  v48 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGAGyAA5ColorVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v36 = v74;
  a3[8] = v73;
  a3[9] = v36;
  a3[10] = v75[0];
  *(a3 + 169) = *(v75 + 9);
  v37 = v70;
  a3[4] = v69;
  a3[5] = v37;
  v38 = v72;
  a3[6] = v71;
  a3[7] = v38;
  v39 = v66;
  *a3 = v65;
  a3[1] = v39;
  result = *&v67;
  v41 = v68;
  a3[2] = v67;
  a3[3] = v41;
  return result;
}

double protocol witness for ViewModifier.body(content:) in conformance MaxWidth@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy28LocalAuthenticationUIService8MaxWidth33_DD63B0C55F42B89932B8BE62D7B51015LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy28LocalAuthenticationUIService8MaxWidth33_DD63B0C55F42B89932B8BE62D7B51015LLVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy28LocalAuthenticationUIService8MaxWidth33_DD63B0C55F42B89932B8BE62D7B51015LLVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy28LocalAuthenticationUIService8MaxWidth33_DD63B0C55F42B89932B8BE62D7B51015LLVGAA12_FrameLayoutVGMR) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

unint64_t lazy protocol witness table accessor for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentgE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentgE0VQo_SgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
    type metadata accessor for BorderedProminentButtonStyle();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<AuthorizationPasscodeView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<AuthorizationPasscodeView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<AuthorizationPasscodeView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMd, &_s7SwiftUI19_ConditionalContentVy28LocalAuthenticationUIService25AuthorizationPasscodeView33_DD63B0C55F42B89932B8BE62D7B51015LLVAA08ModifiedD0VyAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAA4TextVG_AA017BorderedProminentxV0VQo_AA14_PaddingLayoutVGGMR);
    lazy protocol witness table accessor for type AuthorizationPasscodeView and conformance AuthorizationPasscodeView();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<AuthorizationPasscodeView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AuthorizationPasscodeView and conformance AuthorizationPasscodeView()
{
  result = lazy protocol witness table cache variable for type AuthorizationPasscodeView and conformance AuthorizationPasscodeView;
  if (!lazy protocol witness table cache variable for type AuthorizationPasscodeView and conformance AuthorizationPasscodeView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthorizationPasscodeView and conformance AuthorizationPasscodeView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA14_PaddingLayoutVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    type metadata accessor for BorderedProminentButtonStyle();
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, &protocol conformance descriptor for Button<A>);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<(<<opaque return type of View.buttonStyle<A>(_:)>>.0)?, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<(<<opaque return type of View.buttonStyle<A>(_:)>>.0)?, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<(<<opaque return type of View.buttonStyle<A>(_:)>>.0)?, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA08ModifiedD0VyAA0I0VyAA4TextVGAA14_PaddingLayoutVG_AA017BorderedProminentiG0VQo_SgAA6VStackVyAA05TupleE0VyAIyAIyAIy28LocalAuthenticationUIService0sE0VAA06_FrameM0VGAPGAZ5ShakeVG_AIyAmPGtGGGMR);
    lazy protocol witness table accessor for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?();
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy28LocalAuthenticationUIService0iE0VAA12_FrameLayoutVGAA08_PaddingL0VGAH5ShakeVG_AGyAA4TextVAOGtGGMR, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<(<<opaque return type of View.buttonStyle<A>(_:)>>.0)?, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<AuthenticationView, _FrameLayout>, _PaddingLayout>, Shake>, ModifiedContent<Text, _PaddingLayout>)>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void partial apply for closure #5 in closure #1 in AuthorizationEnterPasswordContentView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  if (v5)
  {
    v7 = v5;
    canShowWhile = RatchetCoolOffContentViewController._canShowWhileLocked()();
    AuthorizationViewModel.switchToFallback(directly:)(canShowWhile);
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

void partial apply for closure #3 in closure #1 in AuthorizationEnterPasswordContentView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v5;
    AuthorizationViewModel.retryBiometryEvaluation()();
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t partial apply for closure #1 in closure #1 in AuthorizationEnterPasswordContentView.body.getter()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

void partial apply for closure #2 in closure #1 in AuthorizationEnterPasswordContentView.body.getter(uint64_t a4@<X8>)
{
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = v6;
    v8 = AuthorizationViewModel.continueButtonTitle.getter();
    v10 = v9;

    *a4 = v8;
    *(a4 + 8) = v10;
    *(a4 + 16) = 0;
    *(a4 + 24) = &_swiftEmptyArrayStorage;
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100061F94()
{

  return _swift_deallocObject(v0, 24, 7);
}

void partial apply for closure #1 in closure #1 in closure #1 in AuthorizationEnterPasswordContentView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v5;
    AuthorizationViewModel.showBiometryIntentButton.setter(0);
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10006208C()
{

  return _swift_deallocObject(v0, 72, 7);
}

void partial apply for closure #2 in closure #1 in AuthorizationRegisterPasswordContentView.body.getter(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = *(v4 + 16) == a1 && *(v4 + 24) == a2;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v10 = *(v4 + 32);
    if (v10)
    {
      v15 = *(v4 + 48);
      v17 = *(v4 + 64);
      v11 = swift_allocObject();
      v12 = *(v4 + 48);
      *(v11 + 16) = *(v4 + 32);
      *(v11 + 32) = v12;
      *(v11 + 48) = *(v4 + 64);
      *(v11 + 56) = a3;
      *(v11 + 64) = a4;
      v13 = v10;
      outlined init with copy of AuthorizationRegisterPasswordContentView.Mode(&v15, v14);
      outlined init with copy of LACUIAngelConnectionHandling?(&v17, v14, &_s7SwiftUI11AnyLocationCy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGSgMd, &_s7SwiftUI11AnyLocationCy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGSgMR);

      AuthorizationViewModel.verify(passcode:reply:)(a1, a2, partial apply for closure #1 in closure #2 in closure #1 in AuthorizationRegisterPasswordContentView.body.getter, v11);
    }

    else
    {
      type metadata accessor for AuthorizationViewModel(0);
      lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
      EnvironmentObject.error()();
      __break(1u);
    }
  }

  else
  {
    v15 = *(v4 + 48);
    v16 = *(v4 + 64);
    v14[0] = 0;
    v14[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGMd, &_s7SwiftUI5StateVy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGMR);
    State.wrappedValue.setter();
    a3(0);
  }
}

uint64_t sub_1000622DC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #1 in AuthorizationRegisterPasswordContentView.body.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = *(v4 + 16);
  if (v5)
  {
    v7 = v5;
    if (AuthorizationViewModel.passcodeLength.getter() <= 0)
    {
    }

    else
    {
      v8 = String.count.getter();
      v9 = AuthorizationViewModel.passcodeLength.getter();

      if (v8 != v9)
      {
        v10 = 0;
        return a3(v10);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGMd, &_s7SwiftUI5StateVy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGMR);
    State.wrappedValue.setter();
    v10 = 1;
    return a3(v10);
  }

  type metadata accessor for AuthorizationViewModel(0);
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10006246C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in AuthorizationRegisterPasswordContentView.body.getter(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 56);
  if ((a1 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGMd, &_s7SwiftUI5StateVy28LocalAuthenticationUIService40AuthorizationRegisterPasswordContentView33_DD63B0C55F42B89932B8BE62D7B51015LLV4ModeOGMR);
    State.wrappedValue.setter();
    v10 = 0;
    return v5(v10);
  }

  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = v6;
    v8 = default argument 1 of AuthorizationViewManager.dismissAuthorizationView(error:reply:)();
    AuthorizationViewModel.dismiss(error:reply:)(0, v8, v9);

    v10 = 1;
    return v5(v10);
  }

  type metadata accessor for AuthorizationViewModel(0);
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

double _s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGSgWOi0_(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t key path getter for EnvironmentValues.multilineTextAlignment : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for EnvironmentValues.lineLimit : EnvironmentValues, serialized@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000626CC()
{
  v1 = type metadata accessor for AuthorizationHeaderView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 16))
  {
  }

  v5 = *(v1 + 24);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in AuthorizationHeaderView.body.getter()
{
  v1 = type metadata accessor for AuthorizationHeaderView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 16);
  if (v4)
  {
    return v4();
  }

  return result;
}

void partial apply for closure #1 in closure #1 in closure #1 in closure #1 in AuthorizationContentView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = LACErrorCodeUserCancel;
    v11 = v5;
    v8 = [v6 errorWithCode:v7];
    v9 = default argument 1 of AuthorizationViewManager.dismissAuthorizationView(error:reply:)();
    AuthorizationViewModel.dismiss(error:reply:)(v8, v9, v10);
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel, type metadata accessor for AuthorizationViewModel, &protocol conformance descriptor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA30_SafeAreaRegionsIgnoringLayoutVGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA30_SafeAreaRegionsIgnoringLayoutVGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMR, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ColorVAA30_SafeAreaRegionsIgnoringLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AuthorizationPasscodeView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AuthorizationPasscodeView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthorizationPromptView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for AuthorizationPromptView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MaxWidth>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MaxWidth>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MaxWidth>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy28LocalAuthenticationUIService8MaxWidth33_DD63B0C55F42B89932B8BE62D7B51015LLVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy28LocalAuthenticationUIService8MaxWidth33_DD63B0C55F42B89932B8BE62D7B51015LLVGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _ViewModifier_Content<MaxWidth> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy28LocalAuthenticationUIService8MaxWidth33_DD63B0C55F42B89932B8BE62D7B51015LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy28LocalAuthenticationUIService8MaxWidth33_DD63B0C55F42B89932B8BE62D7B51015LLVGMR, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MaxWidth>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_100062D78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA30_SafeAreaRegionsIgnoringLayoutVGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA30_SafeAreaRegionsIgnoringLayoutVGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t outlined init with take of AuthorizationHeaderView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of _OpacityShapeStyle<Material>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGAGyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAGySiSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
    lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGAA08_PaddingM0VGGAMGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGAA08_PaddingM0VGGAMGMR);
    lazy protocol witness table accessor for type Group<ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout>> and conformance <A> Group<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA15ModifiedContentVyAEy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGAA08_PaddingM0VGGMd, &_s7SwiftUI5GroupVyAA15ModifiedContentVyAEy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGAA08_PaddingM0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGAA08_PaddingL0VGMd, &_s7SwiftUI15ModifiedContentVyACy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGAA08_PaddingL0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<PasscodeEmbeddedView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PasscodeEmbeddedView, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PasscodeEmbeddedView, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PasscodeEmbeddedView, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PasscodeEmbeddedView, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy28LocalAuthenticationUIService20PasscodeEmbeddedViewVAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(&lazy protocol witness table cache variable for type PasscodeEmbeddedView and conformance PasscodeEmbeddedView, type metadata accessor for PasscodeEmbeddedView, &protocol conformance descriptor for PasscodeEmbeddedView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PasscodeEmbeddedView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA14_PaddingLayoutVGAOGAIySiSgGGAIyAA5ColorVSgGGAA9EmptyViewVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA14_PaddingLayoutVGAOGAIySiSgGGAIyAA5ColorVSgGGAA9EmptyViewVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t key path getter for AuthorizationViewManager.delegate : AuthorizationViewManager@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t AuthorizationViewManager.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AuthorizationViewManager.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_delegate;
  *(v3 + 32) = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return AuthorizationViewManager.delegate.modify;
}

void AuthorizationViewManager.delegate.modify(void **a1, char a2)
{
  v2 = *a1;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  free(v2);
}

id default argument 3 of AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)()
{
  v0 = objc_allocWithZone(LACLocalBackoffCounter);

  return [v0 init];
}

__n128 AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, char a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for AuthorizationViewModel(0);
  AuthorizationViewModel.__allocating_init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)(a1, a2, a3, a4, a5, a6 & 1, a7, a8, a9, a10, a11);
  return result;
}

Swift::Void __swiftcall AuthorizationViewManager.saveExtractablePassword(_:)(Swift::String a1)
{
  v2 = v1;
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context);
  static String.Encoding.utf8.getter();
  v8 = String.data(using:allowLossyConversion:)();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  isa = 0;
  if (v10 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v8, v10);
  }

  [v7 setCredential:isa type:-9];
}

Swift::Void __swiftcall AuthorizationViewManager.presentAuthorizationViewInVC(_:animated:)(UIViewController _, Swift::Bool animated)
{
  v3 = v2;
  v6 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v6 - 8);
  v7 = AuthorizationViewWrapper.init()();
  v9 = v8;
  v10 = type metadata accessor for AuthorizationViewModel(0);
  lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(v10, v11, v12, v13);
  v55 = static ObservableObject.environmentStore.getter();
  v56 = v3;
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVy28LocalAuthenticationUIService24AuthorizationViewWrapperVAA30_EnvironmentKeyWritingModifierVyAF0jK5ModelCSgGGGMd, &_s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVy28LocalAuthenticationUIService24AuthorizationViewWrapperVAA30_EnvironmentKeyWritingModifierVyAF0jK5ModelCSgGGGMR));
  v3;
  v15 = UIHostingController.init(rootView:)();
  v16 = [v15 view];
  if (!v16)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v16;
  v18 = [objc_opt_self() clearColor];
  [v17 setBackgroundColor:v18];

  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIDevice, UIDevice_ptr);
  if (static UIDevice.isPad.getter() && !AuthorizationViewModel.requiresFullScreen.getter())
  {
    static UIHostingControllerSizingOptions.preferredContentSize.getter();
    dispatch thunk of UIHostingController.sizingOptions.setter();
    [v15 setModalPresentationStyle:2];

    [(objc_class *)_.super.super.isa presentViewController:v15 animated:animated completion:0];
    goto LABEL_17;
  }

  v19 = [(objc_class *)_.super.super.isa view];
  if (!v19)
  {
    goto LABEL_19;
  }

  v20 = v19;
  v21 = [v15 view];
  if (!v21)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = v21;
  [v20 addSubview:v21];

  [(objc_class *)_.super.super.isa addChildViewController:v15];
  [v15 didMoveToParentViewController:_.super.super.isa];
  v23 = [v15 view];
  if (!v23)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = v23;
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100087710;
  v26 = [v15 view];
  if (!v26)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v27 = v26;
  v28 = [v26 leadingAnchor];

  v29 = [(objc_class *)_.super.super.isa view];
  if (!v29)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30 = v29;
  v31 = [v29 leadingAnchor];

  v32 = [v28 constraintEqualToAnchor:v31];
  *(v25 + 32) = v32;
  v33 = [v15 view];
  if (!v33)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v34 = v33;
  v35 = [v33 trailingAnchor];

  v36 = [(objc_class *)_.super.super.isa view];
  if (!v36)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v37 = v36;
  v38 = [v36 trailingAnchor];

  v39 = [v35 constraintEqualToAnchor:v38];
  *(v25 + 40) = v39;
  v40 = [v15 view];
  if (!v40)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v41 = v40;
  v42 = [v40 topAnchor];

  v43 = [(objc_class *)_.super.super.isa view];
  if (!v43)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v44 = v43;
  v45 = [v43 topAnchor];

  v46 = [v42 constraintEqualToAnchor:v45];
  *(v25 + 48) = v46;
  v47 = [v15 view];

  if (!v47)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v48 = [v47 bottomAnchor];

  v49 = [(objc_class *)_.super.super.isa view];
  if (v49)
  {
    v50 = v49;
    v51 = objc_opt_self();
    v52 = [v50 bottomAnchor];

    v53 = [v48 constraintEqualToAnchor:v52];
    *(v25 + 56) = v53;
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v51 activateConstraints:isa];

LABEL_17:
    return;
  }

LABEL_29:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type AuthorizationViewModel and conformance AuthorizationViewModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel;
  if (!lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel)
  {
    type metadata accessor for AuthorizationViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthorizationViewModel and conformance AuthorizationViewModel);
  }

  return result;
}

uint64_t AuthenticationFallbackMethod.init(requirement:)(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 2;
  }

  else
  {
    return (0x1000100010202uLL >> (8 * a1));
  }
}

Swift::Int AuthenticationFallbackMethod.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AuthenticationFallbackMethod()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AuthenticationFallbackMethod(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AuthenticationFallbackMethod and conformance AuthenticationFallbackMethod()
{
  result = lazy protocol witness table cache variable for type AuthenticationFallbackMethod and conformance AuthenticationFallbackMethod;
  if (!lazy protocol witness table cache variable for type AuthenticationFallbackMethod and conformance AuthenticationFallbackMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthenticationFallbackMethod and conformance AuthenticationFallbackMethod);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthenticationFallbackMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AuthenticationFallbackMethod(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t variable initialization expression of AuthorizationRemoteViewController.log()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy28LocalAuthenticationUIService11LogCategoryVGMd, &_ss23_ContiguousArrayStorageCy28LocalAuthenticationUIService11LogCategoryVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100088E60;
  *(v0 + 32) = *LogCategory.ui.unsafeMutableAddressor();
  *(v0 + 40) = *LogCategory.interactive.unsafeMutableAddressor();
  *(v0 + 48) = *LogCategory.authorization.unsafeMutableAddressor();
  lazy protocol witness table accessor for type LogCategory and conformance LogCategory();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay28LocalAuthenticationUIService11LogCategoryVGMd, _sSay28LocalAuthenticationUIService11LogCategoryVGMR);
  lazy protocol witness table accessor for type [LogCategory] and conformance [A](&lazy protocol witness table cache variable for type [LogCategory] and conformance [A], &_sSay28LocalAuthenticationUIService11LogCategoryVGMd, _sSay28LocalAuthenticationUIService11LogCategoryVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return Logger(category:)(v2);
}

unint64_t lazy protocol witness table accessor for type LogCategory and conformance LogCategory()
{
  result = lazy protocol witness table cache variable for type LogCategory and conformance LogCategory;
  if (!lazy protocol witness table cache variable for type LogCategory and conformance LogCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogCategory and conformance LogCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogCategory and conformance LogCategory;
  if (!lazy protocol witness table cache variable for type LogCategory and conformance LogCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogCategory and conformance LogCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogCategory and conformance LogCategory;
  if (!lazy protocol witness table cache variable for type LogCategory and conformance LogCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogCategory and conformance LogCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogCategory and conformance LogCategory;
  if (!lazy protocol witness table cache variable for type LogCategory and conformance LogCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogCategory and conformance LogCategory);
  }

  return result;
}

uint64_t AuthorizationRemoteViewController.authenticatorHost.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR___AuthorizationRemoteViewController_log, v1);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  (*(v2 + 32))(v6 + v5, v4, v1);
  v15 = partial apply for closure #1 in AuthorizationRemoteViewController.authenticatorHost.getter;
  v16 = v6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v14 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  *(&v14 + 1) = &block_descriptor_9;
  v7 = _Block_copy(&aBlock);

  v8 = [v0 _remoteViewControllerProxyWithErrorHandler:v7];
  _Block_release(v7);
  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  aBlock = v11;
  v14 = v12;
  if (*(&v12 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22LACUIAuthenticatorHost_pMd, &_sSo22LACUIAuthenticatorHost_pMR);
    if (swift_dynamicCast())
    {
      return v10[1];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of LACUIAngelConnectionHandling?(&aBlock, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

uint64_t sub_100064760()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void partial apply for closure #1 in AuthorizationRemoteViewController.authenticatorHost.getter(uint64_t a1)
{
  type metadata accessor for Logger();
  if (a1)
  {
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138543362;
      v5 = _convertErrorToNSError(_:)();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Could not obtain remote object with error %{public}@", v3, 0xCu);
      outlined destroy of LACUIAngelConnectionHandling?(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    else
    {
    }
  }
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id static AuthorizationRemoteViewController._exportedInterface()(void *a1)
{
  v1 = [objc_opt_self() interfaceForXPCProtocol:*a1];

  return v1;
}

id @objc static AuthorizationRemoteViewController._exportedInterface()(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceForXPCProtocol:*a3];

  return v3;
}

id closure #1 in AuthorizationRemoteViewController.presentUI(configuration:)(void *a1, void *a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 featureFlagLaunchAngelEnabled];

  if (v5)
  {
    result = [a1 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = [result window];

    if (v8 && (v9 = [v8 windowScene], v8, v9))
    {
      v10 = [v9 _FBSScene];

      v11 = [v10 hostHandle];
      v28 = 0u;
      v29 = 0u;
      if (v11)
      {
        v12 = [v11 auditToken];

        [v12 realToken];
        v28 = v30;
        v29 = v31;
      }
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }
  }

  else
  {
    [a1 _hostAuditToken];
    v28 = v30;
    v29 = v31;
  }

  v13 = objc_allocWithZone(LACAuditToken);
  v14 = a2;
  v30 = v28;
  v31 = v29;
  v15 = [v13 initWithRawValue:&v30];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v17 = default argument 3 of AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)();
  v18 = default argument 5 of AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)();
  v19 = default argument 7 of AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)();
  AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)(v14, v15, 0, v17, 0, 1, v18, 0, v19, partial apply for closure #1 in closure #1 in AuthorizationRemoteViewController.presentUI(configuration:), v16);
  v21 = v20;

  *&v30 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Authorization Sheet will appear", v24, 2u);
  }

  v25 = swift_unknownObjectRetain();
  AuthorizationViewManager.delegate.setter(v25);
  v26 = v30;
  canShowWhile = RatchetCoolOffContentViewController._canShowWhileLocked()();
  AuthorizationViewManager.presentAuthorizationViewInVC(_:animated:)(a1, canShowWhile);

  return v26;
}

void *closure #1 in closure #1 in AuthorizationRemoteViewController.finish(error:)(uint64_t a1, void **a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v7 = [objc_opt_self() sharedInstance];
    v8 = [v7 featureFlagLaunchAngelEnabled];

    if (v8)
    {
      if (a2 && (aBlock = a2, swift_errorRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR), type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSError, NSError_ptr), swift_dynamicCast()))
      {
        v9 = v14;
      }

      else
      {
        v9 = 0;
      }

      a2 = [objc_allocWithZone(LACUIAuthorizationAction) initWithIdentifier:3 value:v9];
      swift_unknownObjectRelease();
      v13 = swift_allocObject();
      *(v13 + 16) = partial apply for closure #1 in closure #1 in closure #1 in AuthorizationRemoteViewController.finish(error:);
      *(v13 + 24) = v5;
      v19 = partial apply for closure #1 in AuthorizationRemoteViewController.didFinish(error:completion:);
      v20 = v13;
      aBlock = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
      v18 = &block_descriptor_67;
      v12 = _Block_copy(&aBlock);

      [v4 sendAction:a2 completion:v12];
    }

    else
    {
      v10 = (*((swift_isaMask & *v4) + 0x98))();
      if (!v10)
      {
LABEL_13:
      }

      v11 = v10;
      if (a2)
      {
        a2 = _convertErrorToNSError(_:)();
      }

      v19 = partial apply for closure #1 in closure #1 in closure #1 in AuthorizationRemoteViewController.finish(error:);
      v20 = v5;
      aBlock = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v18 = &block_descriptor_61;
      v12 = _Block_copy(&aBlock);

      [v11 authenticatorServiceDidFinishWithError:a2 reply:v12];
      swift_unknownObjectRelease();
    }

    _Block_release(v12);

    goto LABEL_13;
  }

  return result;
}

id AuthorizationRemoteViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager] = 0;
  *&v3[OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy28LocalAuthenticationUIService11LogCategoryVGMd, &_ss23_ContiguousArrayStorageCy28LocalAuthenticationUIService11LogCategoryVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100088E60;
  *(v7 + 32) = *LogCategory.ui.unsafeMutableAddressor();
  *(v7 + 40) = *LogCategory.interactive.unsafeMutableAddressor();
  *(v7 + 48) = *LogCategory.authorization.unsafeMutableAddressor();
  v12 = v7;
  lazy protocol witness table accessor for type LogCategory and conformance LogCategory();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay28LocalAuthenticationUIService11LogCategoryVGMd, _sSay28LocalAuthenticationUIService11LogCategoryVGMR);
  lazy protocol witness table accessor for type [LogCategory] and conformance [A](&lazy protocol witness table cache variable for type [LogCategory] and conformance [A], &_sSay28LocalAuthenticationUIService11LogCategoryVGMd, _sSay28LocalAuthenticationUIService11LogCategoryVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  Logger(category:)(v13);
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for AuthorizationRemoteViewController(0);
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

uint64_t type metadata accessor for AuthorizationRemoteViewController(uint64_t a1)
{
  result = type metadata singleton initialization cache for AuthorizationRemoteViewController;
  if (!type metadata singleton initialization cache for AuthorizationRemoteViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id AuthorizationRemoteViewController.init(coder:)(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager] = 0;
  *&v1[OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy28LocalAuthenticationUIService11LogCategoryVGMd, &_ss23_ContiguousArrayStorageCy28LocalAuthenticationUIService11LogCategoryVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100088E60;
  *(v4 + 32) = *LogCategory.ui.unsafeMutableAddressor();
  *(v4 + 40) = *LogCategory.interactive.unsafeMutableAddressor();
  *(v4 + 48) = *LogCategory.authorization.unsafeMutableAddressor();
  v8 = v4;
  lazy protocol witness table accessor for type LogCategory and conformance LogCategory();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay28LocalAuthenticationUIService11LogCategoryVGMd, _sSay28LocalAuthenticationUIService11LogCategoryVGMR);
  lazy protocol witness table accessor for type [LogCategory] and conformance [A](&lazy protocol witness table cache variable for type [LogCategory] and conformance [A], &_sSay28LocalAuthenticationUIService11LogCategoryVGMd, _sSay28LocalAuthenticationUIService11LogCategoryVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  Logger(category:)(v9);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for AuthorizationRemoteViewController(0);
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id AuthorizationRemoteViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthorizationRemoteViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void AuthorizationRemoteViewController.start(with:reply:)(void *a1, void (*a2)(id))
{
  v3 = v2;
  v6 = [a1 validateConfiguration];
  if (v6)
  {
    v7 = v6;
    v14 = v6;
    a2(v7);
  }

  else
  {
    v8 = TerminationService.shared.unsafeMutableAddressor();
    swift_beginAccess();
    v9 = *v8;
    v10 = TerminationService.assertion()();

    v11 = *&v3[OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion];
    *&v3[OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion] = v10;

    v12 = closure #1 in AuthorizationRemoteViewController.presentUI(configuration:)(v3, a1);
    v13 = *&v3[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager];
    *&v3[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager] = v12;

    a2(0);
  }
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t AuthorizationRemoteViewController.stop(reply:)(uint64_t (*a1)(void))
{
  v3 = *(v1 + OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = LACErrorCodeSystemCancel;
    v6 = v3;
    v7 = [v4 errorWithCode:v5];
    v8 = default argument 1 of AuthorizationViewManager.dismissAuthorizationView(error:reply:)();
    AuthorizationViewManager.dismissAuthorizationView(error:reply:)(v7, v8, v9);
  }

  return a1(0);
}

void AuthorizationRemoteViewController.handle(_:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v42 = [objc_allocWithZone(LACUIAuthorizationAction) initWithAction:a1];
  v7 = [v42 identifier];
  if (v7 == 2)
  {
    v48 = a2;
    v49 = a3;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v47 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    *(&v47 + 1) = &block_descriptor_3_1;
    v8 = _Block_copy(&aBlock);

    [v4 stopWithReply:v8];

    _Block_release(v8);
    return;
  }

  if (v7 == 1)
  {
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for LACUIAuthenticatorServiceConfiguration, LACUIAuthenticatorServiceConfiguration_ptr);
    if ([v42 valueDecodedForClass:swift_getObjCClassFromMetadata()])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    aBlock = v44;
    v47 = v45;
    if (*(&v45 + 1))
    {
      if (swift_dynamicCast())
      {
        v48 = a2;
        v49 = a3;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v47 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
        *(&v47 + 1) = &block_descriptor_6_3;
        v24 = _Block_copy(&aBlock);

        [v3 startWithConfiguration:v43 reply:v24];

        _Block_release(v24);
        return;
      }
    }

    else
    {
      outlined destroy of LACUIAngelConnectionHandling?(&aBlock, &_sypSgMd, &_sypSgMR);
    }

    v25 = objc_opt_self();
    v26 = LACErrorCodeInternal;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v27 = [v3 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

    v32._object = 0x8000000100099A50;
    v32._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v32);
    v33 = [v42 description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37._countAndFlagsBits = v34;
    v37._object = v36;
    String.append(_:)(v37);

    v38._countAndFlagsBits = 0xD00000000000001BLL;
    v38._object = 0x8000000100099A70;
    String.append(_:)(v38);
    v39 = String._bridgeToObjectiveC()();

    v40 = [v25 errorWithCode:v26 debugDescription:v39];

    v41 = v40;
    a2(v40);
  }

  else
  {
    v9 = objc_opt_self();
    v10 = LACErrorCodeInternal;
    _StringGuts.grow(_:)(26);
    v11 = [v3 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    *&aBlock = v12;
    *(&aBlock + 1) = v14;
    v15._object = 0x8000000100099A50;
    v15._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v15);
    v16 = [v42 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);

    v21 = String._bridgeToObjectiveC()();

    v22 = [v9 errorWithCode:v10 debugDescription:v21];

    v23 = v22;
    a2(v22);
  }
}

void @objc AuthorizationRemoteViewController.start(with:reply:)(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void AuthorizationRemoteViewController.viewModel(_:didReceiveCustomPassword:handler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager);
  if (v8)
  {
    v11 = v8;
    v12._countAndFlagsBits = a2;
    v12._object = a3;
    AuthorizationViewManager.saveExtractablePassword(_:)(v12);
  }

  AuthorizationRemoteViewController.didObtainAuthentication(completion:)(a4, a5);
}

void AuthorizationRemoteViewController.didObtainAuthentication(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v5;
  v7 = objc_opt_self();

  v8 = [v7 sharedInstance];
  LODWORD(v7) = [v8 featureFlagLaunchAngelEnabled];

  if (v7)
  {
    v9 = [objc_allocWithZone(LACUIAuthorizationAction) initWithIdentifier:4 value:0];
    v18 = partial apply for closure #1 in AuthorizationRemoteViewController.didObtainAuthentication(completion:);
    v19 = v6;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v17 = &block_descriptor_40;
    v10 = _Block_copy(&v14);

    [v2 sendAction:v9 completion:v10];

    _Block_release(v10);
  }

  else
  {
    v11 = (*((swift_isaMask & *v2) + 0x98))();
    if (v11)
    {
      v12 = v11;
      v18 = partial apply for closure #1 in AuthorizationRemoteViewController.didObtainAuthentication(completion:);
      v19 = v6;
      v14 = _NSConcreteStackBlock;
      v15 = 1107296256;
      v16 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
      v17 = &block_descriptor_37;
      v13 = _Block_copy(&v14);

      [v12 authenticatorServiceDidObtainAuthenticationWithReply:v13];
      swift_unknownObjectRelease();

      _Block_release(v13);
    }

    else
    {
    }
  }
}

uint64_t type metadata completion function for AuthorizationRemoteViewController(uint64_t a1)
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

uint64_t sub_1000662B4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t closure #1 in AuthorizationRemoteViewController.didObtainAuthentication(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v11 = *(v18 - 8);
  __chkstk_darwin(v18);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = partial apply for closure #1 in closure #1 in AuthorizationRemoteViewController.didObtainAuthentication(completion:);
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_46;
  v16 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [LogCategory] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v19 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v18);
}

void specialized AuthorizationRemoteViewController.start(with:reply:)(void *a1, char *a2, uint64_t a3)
{
  v6 = [a1 validateConfiguration];
  if (v6)
  {
    v7 = v6;
    v14 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, v14);
  }

  else
  {
    v8 = TerminationService.shared.unsafeMutableAddressor();
    swift_beginAccess();
    v9 = *v8;
    v10 = TerminationService.assertion()();

    v11 = *&a2[OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion];
    *&a2[OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion] = v10;

    v12 = closure #1 in AuthorizationRemoteViewController.presentUI(configuration:)(a2, a1);
    v13 = *&a2[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager];
    *&a2[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager] = v12;

    (*(a3 + 16))(a3, 0);
  }
}

uint64_t specialized AuthorizationRemoteViewController.stop(reply:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = LACErrorCodeSystemCancel;
    v6 = v3;
    v7 = [v4 errorWithCode:v5];
    v8 = default argument 1 of AuthorizationViewManager.dismissAuthorizationView(error:reply:)();
    AuthorizationViewManager.dismissAuthorizationView(error:reply:)(v7, v8, v9);
  }

  v10 = *(a2 + 16);

  return v10(a2, 0);
}

void specialized AuthorizationRemoteViewController.handle(_:completion:)(uint64_t a1, void *a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = objc_allocWithZone(LACUIAuthorizationAction);
  _Block_copy(a3);
  v8 = [v7 initWithAction:a1];
  v9 = [v8 identifier];
  if (v9 == 2)
  {
    v51 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ();
    v52 = v6;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v50 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    *(&v50 + 1) = &block_descriptor_25_0;
    v10 = _Block_copy(&aBlock);

    [a2 stopWithReply:v10];

    _Block_release(v10);

    return;
  }

  if (v9 == 1)
  {
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for LACUIAuthenticatorServiceConfiguration, LACUIAuthenticatorServiceConfiguration_ptr);
    if ([v8 valueDecodedForClass:swift_getObjCClassFromMetadata()])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
    }

    aBlock = v47;
    v50 = v48;
    if (*(&v48 + 1))
    {
      if (swift_dynamicCast())
      {
        v51 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ();
        v52 = v6;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v50 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
        *(&v50 + 1) = &block_descriptor_28;
        v26 = _Block_copy(&aBlock);

        [a2 startWithConfiguration:v46 reply:v26];

        _Block_release(v26);

        return;
      }
    }

    else
    {
      outlined destroy of LACUIAngelConnectionHandling?(&aBlock, &_sypSgMd, &_sypSgMR);
    }

    v27 = objc_opt_self();
    v28 = LACErrorCodeInternal;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v29 = [a2 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33._countAndFlagsBits = v30;
    v33._object = v32;
    String.append(_:)(v33);

    v34._object = 0x8000000100099A50;
    v34._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v34);
    v35 = [v8 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39._countAndFlagsBits = v36;
    v39._object = v38;
    String.append(_:)(v39);

    v40._countAndFlagsBits = 0xD00000000000001BLL;
    v40._object = 0x8000000100099A70;
    String.append(_:)(v40);
    v41 = String._bridgeToObjectiveC()();

    v42 = [v27 errorWithCode:v28 debugDescription:v41];

    v43 = v42;
    v44 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v44);
  }

  else
  {
    v11 = objc_opt_self();
    v12 = LACErrorCodeInternal;
    _StringGuts.grow(_:)(26);
    v13 = [a2 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    *&aBlock = v14;
    *(&aBlock + 1) = v16;
    v17._object = 0x8000000100099A50;
    v17._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v17);
    v18 = [v8 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);

    v23 = String._bridgeToObjectiveC()();

    v24 = [v11 errorWithCode:v12 debugDescription:v23];

    v25 = v24;
    v45 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v45);
  }
}

uint64_t sub_100066D68()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066DA0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100066DEC()
{

  return _swift_deallocObject(v0, 48, 7);
}

void partial apply for closure #1 in closure #1 in AuthorizationRemoteViewController.didObtainAuthentication(completion:)()
{
  v1 = *(v0 + 24);
  if (*(v0 + 16))
  {
    v1(0);
  }

  else
  {
    v1(1);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager);
      v4 = Strong;
      v5 = v3;

      if (v3)
      {
        v6 = default argument 1 of AuthorizationViewManager.dismissAuthorizationView(error:reply:)();
        AuthorizationViewManager.dismissAuthorizationView(error:reply:)(0, v6, v7);
      }
    }
  }
}

uint64_t lazy protocol witness table accessor for type [LogCategory] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void partial apply for closure #1 in closure #1 in AuthorizationRemoteViewController.presentUI(configuration:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Authorization Sheet did finish", v6, 2u);
    }

    v7 = *&v3[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager];
    if (v7)
    {
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = a1;
      v10 = v7;

      swift_errorRetain();
      AuthorizationViewManager.dismissAuthorizationView(error:reply:)(a1, partial apply for closure #1 in AuthorizationRemoteViewController.finish(error:), v9);
    }
  }
}

void partial apply for closure #1 in AuthorizationRemoteViewController.finish(error:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = v2;
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIDevice, UIDevice_ptr);
    swift_errorRetain();

    if (static UIDevice.isPad.getter())
    {
      aBlock[4] = partial apply for closure #1 in closure #1 in AuthorizationRemoteViewController.finish(error:);
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_57;
      v6 = _Block_copy(aBlock);

      [v4 dismissViewControllerAnimated:1 completion:v6];

      _Block_release(v6);
    }

    else
    {
      closure #1 in closure #1 in AuthorizationRemoteViewController.finish(error:)(v1, v2);
    }
  }
}

uint64_t objectdestroy_50Tm()
{

  return _swift_deallocObject(v0, 32, 7);
}

void partial apply for closure #1 in closure #1 in closure #1 in AuthorizationRemoteViewController.finish(error:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      TerminateAssertion.invalidate()();
    }
  }

  v4 = TerminationService.shared.unsafeMutableAddressor();
  swift_beginAccess();
  v5 = *v4;
  TerminationService.scheduleTermination()();
}

uint64_t sub_100067320()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t key path getter for AuthorizationViewModel.showAuthorizationView : AuthorizationViewModel@<X0>(_BYTE *a4@<X8>)
{
  return key path getter for AuthorizationViewModel.showAuthorizationView : AuthorizationViewModel(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  *a4 = v6;
  return result;
}

uint64_t (*AuthorizationViewModel.showAuthorizationView.modify(uint64_t *a1))()
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
  return AuthorizationViewModel.showBiometryIntentButton.modify;
}

uint64_t key path setter for AuthorizationViewModel.$showAuthorizationView : AuthorizationViewModel(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AuthorizationViewModel.$showAuthorizationView.setter(uint64_t a1)
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

uint64_t (*AuthorizationViewModel.$showAuthorizationView.modify(uint64_t *a1))()
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

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showAuthorizationView[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$showBiometryIntentButton.modify;
}

uint64_t (*AuthorizationViewModel.showBiometryIntentButton.modify(uint64_t *a1))()
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
  return AuthorizationViewModel.showBiometryIntentButton.modify;
}

uint64_t key path setter for AuthorizationViewModel.$showBiometryIntentButton : AuthorizationViewModel(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AuthorizationViewModel.$showBiometryIntentButton.setter(uint64_t a1)
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

uint64_t (*AuthorizationViewModel.$showBiometryIntentButton.modify(uint64_t *a1))()
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

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showBiometryIntentButton;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$showBiometryIntentButton.modify;
}

uint64_t (*AuthorizationViewModel.shouldShowCustomPasswordView.modify(uint64_t *a1))()
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
  return AuthorizationViewModel.shouldShowCustomPasswordView.modify;
}

uint64_t key path setter for AuthorizationViewModel.$shouldShowCustomPasswordView : AuthorizationViewModel(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AuthorizationViewModel.$shouldShowCustomPasswordView.setter(uint64_t a1)
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

uint64_t (*AuthorizationViewModel.$shouldShowCustomPasswordView.modify(uint64_t *a1))()
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

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__shouldShowCustomPasswordView[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$shouldShowCustomPasswordView.modify;
}

uint64_t (*AuthorizationViewModel.shouldShowDevicePasscodeView.modify(uint64_t *a1))()
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
  return AuthorizationViewModel.showBiometryIntentButton.modify;
}

uint64_t key path setter for AuthorizationViewModel.$shouldShowDevicePasscodeView : AuthorizationViewModel(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AuthorizationViewModel.$shouldShowDevicePasscodeView.setter(uint64_t a1)
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

uint64_t (*AuthorizationViewModel.$shouldShowDevicePasscodeView.modify(uint64_t *a1))()
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

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__shouldShowDevicePasscodeView[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$showBiometryIntentButton.modify;
}

uint64_t (*AuthorizationViewModel.passcodeFocused.modify(uint64_t *a1))()
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
  return AuthorizationViewModel.showBiometryIntentButton.modify;
}

uint64_t key path setter for AuthorizationViewModel.$passcodeFocused : AuthorizationViewModel(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AuthorizationViewModel.$passcodeFocused.setter(uint64_t a1)
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

uint64_t (*AuthorizationViewModel.$passcodeFocused.modify(uint64_t *a1))()
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

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__passcodeFocused[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$showBiometryIntentButton.modify;
}

uint64_t property wrapper backing initializer of AuthorizationViewModel.blockedUntilDate(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  outlined init with copy of LACUIAngelConnectionHandling?(a1, &v9 - v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of LACUIAngelConnectionHandling?(v7, v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  Published.init(initialValue:)();
  outlined destroy of LACUIAngelConnectionHandling?(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return outlined destroy of LACUIAngelConnectionHandling?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t AuthorizationViewModel.blockedUntilDate.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);
}

uint64_t AuthorizationViewModel.blockedUntilDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of LACUIAngelConnectionHandling?(a1, v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = v1;
  static Published.subscript.setter();
  return outlined destroy of LACUIAngelConnectionHandling?(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t (*AuthorizationViewModel.blockedUntilDate.modify(uint64_t *a1))()
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
  return AuthorizationViewModel.showBiometryIntentButton.modify;
}

uint64_t key path setter for AuthorizationViewModel.$blockedUntilDate : AuthorizationViewModel(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AuthorizationViewModel.$blockedUntilDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AuthorizationViewModel.$blockedUntilDate.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
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

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__blockedUntilDate;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$showBiometryIntentButton.modify;
}

uint64_t AuthorizationViewModel.promptText.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

double key path getter for AuthorizationViewModel.promptText : AuthorizationViewModel@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for AuthorizationViewModel.promptText : AuthorizationViewModel(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t AuthorizationViewModel.promptText.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t (*AuthorizationViewModel.promptText.modify(uint64_t *a1))()
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
  return AuthorizationViewModel.showBiometryIntentButton.modify;
}

uint64_t key path setter for AuthorizationViewModel.$promptText : AuthorizationViewModel(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AuthorizationViewModel.$promptText.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AuthorizationViewModel.$promptText.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
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

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__promptText[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$showBiometryIntentButton.modify;
}

uint64_t AuthorizationViewModel.passwordFieldPlaceholder.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t key path getter for AuthorizationViewModel.passwordFieldPlaceholder : AuthorizationViewModel@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v5);

  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t key path setter for AuthorizationViewModel.passwordFieldPlaceholder : AuthorizationViewModel(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t AuthorizationViewModel.passwordFieldPlaceholder.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t (*AuthorizationViewModel.passwordFieldPlaceholder.modify(uint64_t *a1))()
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
  return AuthorizationViewModel.showBiometryIntentButton.modify;
}

uint64_t key path setter for AuthorizationViewModel.$passwordFieldPlaceholder : AuthorizationViewModel(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AuthorizationViewModel.$passwordFieldPlaceholder.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AuthorizationViewModel.$passwordFieldPlaceholder.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
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

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__passwordFieldPlaceholder[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$showBiometryIntentButton.modify;
}

uint64_t AuthorizationViewModel.wrongBioAttempts.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t key path getter for AuthorizationViewModel.wrongBioAttempts : AuthorizationViewModel@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for AuthorizationViewModel.wrongBioAttempts : AuthorizationViewModel(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t AuthorizationViewModel.wrongBioAttempts.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

uint64_t (*AuthorizationViewModel.wrongBioAttempts.modify(uint64_t *a1))()
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
  return AuthorizationViewModel.showBiometryIntentButton.modify;
}

uint64_t key path setter for AuthorizationViewModel.$wrongBioAttempts : AuthorizationViewModel(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AuthorizationViewModel.$wrongBioAttempts.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AuthorizationViewModel.$wrongBioAttempts.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
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

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__wrongBioAttempts[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$showBiometryIntentButton.modify;
}

uint64_t (*AuthorizationViewModel.showBiometryRetryButton.modify(uint64_t *a1))()
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
  return AuthorizationViewModel.showBiometryIntentButton.modify;
}

uint64_t key path setter for AuthorizationViewModel.$showBiometryRetryButton : AuthorizationViewModel(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AuthorizationViewModel.$showBiometryRetryButton.setter(uint64_t a1)
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

uint64_t (*AuthorizationViewModel.$showBiometryRetryButton.modify(uint64_t *a1))()
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

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showBiometryRetryButton;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$showBiometryIntentButton.modify;
}

uint64_t AuthorizationViewModel.showAuthorizationView.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t key path setter for AuthorizationViewModel.showAuthorizationView : AuthorizationViewModel(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return static Published.subscript.setter();
}

uint64_t AuthorizationViewModel.showAuthorizationView.setter(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t (*AuthorizationViewModel.showFallbackButton.modify(uint64_t *a1))()
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
  return AuthorizationViewModel.showBiometryIntentButton.modify;
}

void AuthorizationViewModel.showAuthorizationView.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t AuthorizationViewModel.$showAuthorizationView.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for AuthorizationViewModel.$showAuthorizationView : AuthorizationViewModel(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for AuthorizationViewModel.$showFallbackButton : AuthorizationViewModel(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AuthorizationViewModel.$showFallbackButton.setter(uint64_t a1)
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

uint64_t (*AuthorizationViewModel.$showFallbackButton.modify(uint64_t *a1))()
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

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showFallbackButton;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AuthorizationViewModel.$showBiometryIntentButton.modify;
}

void AuthorizationViewModel.$showAuthorizationView.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t AuthorizationViewModel.failures.getter()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_failures;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AuthorizationViewModel.failures.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_failures;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AuthorizationViewModel.expectsDismissOnIpad.getter()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_expectsDismissOnIpad;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AuthorizationViewModel.expectsDismissOnIpad.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_expectsDismissOnIpad;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for AuthorizationViewModel.delegate : AuthorizationViewModel@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t AuthorizationViewModel.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AuthorizationViewModel.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return AngelSceneRemoteAlert.delegate.modify;
}

double AuthorizationViewModel.cornerRadius.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___cornerRadius);
  if ((*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___cornerRadius + 8) & 1) == 0)
  {
    return *v1;
  }

  result = 0.0;
  if (*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad))
  {
    result = 8.0;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

void *key path setter for AuthorizationViewModel.cornerRadius : AuthorizationViewModel(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___cornerRadius;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

void AuthorizationViewModel.cornerRadius.setter(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___cornerRadius;
  *v2 = a1;
  *(v2 + 8) = 0;
}

uint64_t (*AuthorizationViewModel.cornerRadius.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  *a1 = AuthorizationViewModel.cornerRadius.getter();
  return AuthorizationViewModel.cornerRadius.modify;
}

void *AuthorizationViewModel.cornerRadius.modify(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___cornerRadius;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

double AuthorizationViewModel.backgroundOpacity.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___backgroundOpacity);
  if ((*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___backgroundOpacity + 8) & 1) == 0)
  {
    return *v1;
  }

  result = 0.8;
  if (*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad))
  {
    result = 0.000001;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

void *key path setter for AuthorizationViewModel.backgroundOpacity : AuthorizationViewModel(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___backgroundOpacity;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

void AuthorizationViewModel.backgroundOpacity.setter(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___backgroundOpacity;
  *v2 = a1;
  *(v2 + 8) = 0;
}

uint64_t (*AuthorizationViewModel.backgroundOpacity.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  *a1 = AuthorizationViewModel.backgroundOpacity.getter();
  return AuthorizationViewModel.backgroundOpacity.modify;
}

void *AuthorizationViewModel.backgroundOpacity.modify(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___backgroundOpacity;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

id AuthorizationViewModel.biometryType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context);
  [v1 canEvaluatePolicy:1 error:0];

  return [v1 biometryType];
}

uint64_t AuthorizationViewModel.biometrySubtitle.getter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___biometrySubtitle);
  if (!*(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___biometrySubtitle + 8))
  {
    v5 = *(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context);
    [v5 canEvaluatePolicy:1 error:0];
    v6 = [v5 biometryType];
    if (v6 == 1)
    {
      v7 = static LocalizedStrings.touchId.getter();
    }

    else
    {
      if (v6 != 2)
      {
        v4 = 0;
        v9 = 0xE000000000000000;
        goto LABEL_9;
      }

      v7 = static LocalizedStrings.pearl.getter();
    }

    v4 = v7;
    v9 = v8;
LABEL_9:
    *v3 = v4;
    v3[1] = v9;

    goto LABEL_10;
  }

  v4 = *v3;
LABEL_10:

  return v4;
}

uint64_t key path getter for AuthorizationViewModel.biometrySubtitle : AuthorizationViewModel@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = AuthorizationViewModel.biometrySubtitle.getter(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t key path setter for AuthorizationViewModel.biometrySubtitle : AuthorizationViewModel(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___biometrySubtitle);
  *v4 = v3;
  v4[1] = v2;
}

uint64_t AuthorizationViewModel.biometrySubtitle.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___biometrySubtitle);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t (*AuthorizationViewModel.biometrySubtitle.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1)
{
  a1[2] = v2;
  *a1 = AuthorizationViewModel.biometrySubtitle.getter(a1, a2);
  a1[1] = v4;
  return AuthorizationViewModel.biometrySubtitle.modify;
}

uint64_t AuthorizationViewModel.biometrySubtitle.modify(uint64_t *a1)
{
  v1 = a1[1];
  v2 = (a1[2] + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___biometrySubtitle);
  *v2 = *a1;
  v2[1] = v1;
}

uint64_t AuthorizationViewModel.shouldShowPassView.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((&v1 + 1));

  if ((v1 & 0x100) != 0)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t AuthorizationViewModel.passwordType.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___passwordType);
  if (*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___passwordType + 8) != 1)
  {
    return *v1;
  }

  v2 = [*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_configuration) passcodeLength];
  if (v2 + 1 > 7)
  {
    v3 = &LACustomPasswordTypeAlphanumeric;
  }

  else
  {
    v3 = *(&off_1000AD8A0 + v2 + 1);
  }

  result = *v3;
  *v1 = *v3;
  v1[8] = 0;
  return result;
}

uint64_t key path getter for AuthorizationViewModel.passwordType : AuthorizationViewModel@<X0>(uint64_t *a1@<X8>)
{
  result = AuthorizationViewModel.passwordType.getter();
  *a1 = result;
  return result;
}

void *key path setter for AuthorizationViewModel.passwordType : AuthorizationViewModel(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___passwordType;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t AuthorizationViewModel.passwordType.setter(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___passwordType;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t (*AuthorizationViewModel.passwordType.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = AuthorizationViewModel.passwordType.getter();
  return AuthorizationViewModel.passwordType.modify;
}

void *AuthorizationViewModel.passwordType.modify(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___passwordType;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t AuthorizationViewModel.title.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_configuration) title];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t AuthorizationViewModel.cancelButtonTitle.getter(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_configuration) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

id AuthorizationViewModel.appIcon.getter()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___appIcon;
  v2 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___appIcon);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_configuration);
    v5 = [v4 iconPath];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() imageForPath:v5];
    }

    else
    {
      v8 = [v4 bundleIdentifier];
      if (!v8)
      {
        v12 = v0;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "The icon path and bundle identifier are nil", v15, 2u);
        }

        v3 = [objc_opt_self() genericIcon];
        v0 = v12;
        goto LABEL_7;
      }

      v6 = v8;
      v7 = [objc_opt_self() imageForBundleIdentifier:v8];
    }

    v3 = v7;

LABEL_7:
    v9 = *(v0 + v1);
    *(v0 + v1) = v3;
    v10 = v3;
    outlined consume of AuthorizationBackgroundView?(v9);
  }

  outlined copy of AuthorizationBackgroundView?(v2);
  return v3;
}

id key path getter for AuthorizationViewModel.appIcon : AuthorizationViewModel@<X0>(void *a1@<X8>)
{
  result = AuthorizationViewModel.appIcon.getter();
  *a1 = result;
  return result;
}

void key path setter for AuthorizationViewModel.appIcon : AuthorizationViewModel(void **a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___appIcon);
  *(*a2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___appIcon) = *a1;
  v4 = v2;

  outlined consume of AuthorizationBackgroundView?(v3);
}

void AuthorizationViewModel.appIcon.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___appIcon);
  *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___appIcon) = a1;
  outlined consume of AuthorizationBackgroundView?(v2);
}

void (*AuthorizationViewModel.appIcon.modify(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = AuthorizationViewModel.appIcon.getter();
  return AuthorizationViewModel.appIcon.modify;
}

void AuthorizationViewModel.appIcon.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___appIcon);
  *(v3 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___appIcon) = *a1;
  if (a2)
  {
    v5 = v2;
    outlined consume of AuthorizationBackgroundView?(v4);
  }

  else
  {

    outlined consume of AuthorizationBackgroundView?(v4);
  }
}

uint64_t AuthorizationViewModel.lockoutText.getter()
{
  v0 = type metadata accessor for Calendar();
  v31 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DateComponents();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = (&v26 - v6);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of LACUIAngelConnectionHandling?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return 0;
  }

  (*(v9 + 32))(v14, v7, v8);
  static Calendar.current.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMR);
  v15 = type metadata accessor for Calendar.Component();
  v16 = *(v15 - 8);
  v17 = *(v16 + 80);
  v27 = v0;
  v18 = (v17 + 32) & ~v17;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000867F0;
  (*(v16 + 104))(v19 + v18, enum case for Calendar.Component.minute(_:), v15);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v19);
  swift_setDeallocating();
  (*(v16 + 8))(v19 + v18, v15);
  swift_deallocClassInstance();
  Date.init()();
  v20 = v28;
  Calendar.dateComponents(_:from:to:)();

  v21 = *(v9 + 8);
  v21(v12, v8);
  (*(v31 + 8))(v2, v27);
  v22 = DateComponents.minute.getter();
  LOBYTE(v18) = v23;
  (*(v29 + 8))(v20, v30);
  if ((v18 & 1) != 0 || v22 < 0)
  {
    v21(v14, v8);
    return 0;
  }

  result = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    __break(1u);
  }

  else
  {
    v25 = static LocalizedStrings.tryAgainIn(minutes:)(result);
    v21(v14, v8);
    return v25;
  }

  return result;
}

uint64_t AuthorizationViewModel.devicePasscodeText.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {

    return static LocalizedStrings.enterPasscodeIpad.getter();
  }

  else if (v1)
  {

    return static LocalizedStrings.enterPasscode.getter();
  }

  else
  {

    return static LocalizedStrings.enterPasscodeIphone.getter();
  }
}

void AuthorizationViewModel.__allocating_init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, int a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v77 = a8;
  v76 = a7;
  v94 = a6;
  v92 = a1;
  v93 = a5;
  v89 = a4;
  v90 = a2;
  v91 = a3;
  v95 = a10;
  v96 = a11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v87 = *(v12 - 8);
  v88 = v12;
  __chkstk_darwin(v12);
  v86 = &v76 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v76 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v16 = &v76 - v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v17 = __chkstk_darwin(v80);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v76 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v76 - v24;
  v78 = v11;
  v26 = objc_allocWithZone(v11);
  v27 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showAuthorizationView;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28 = *(v23 + 32);
  v28(&v26[v27], v25, v22);
  v29 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showBiometryIntentButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v26[v29], v25, v22);
  v30 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__shouldShowCustomPasswordView;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v26[v30], v25, v22);
  v31 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__shouldShowDevicePasscodeView;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v26[v31], v25, v22);
  v32 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__passcodeFocused;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v26[v32], v25, v22);
  v79 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__blockedUntilDate;
  v33 = type metadata accessor for Date();
  (*(*(v33 - 8) + 56))(v21, 1, 1, v33);
  outlined init with copy of LACUIAngelConnectionHandling?(v21, v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  Published.init(initialValue:)();
  outlined destroy of LACUIAngelConnectionHandling?(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(v81 + 32))(&v26[v79], v16, v82);
  v34 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__promptText;
  aBlock = 0;
  v98 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v35 = v83;
  Published.init(initialValue:)();
  (*(v84 + 32))(&v26[v34], v35, v85);
  v36 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__wrongBioAttempts;
  aBlock = 0;
  v37 = v86;
  Published.init(initialValue:)();
  (*(v87 + 32))(&v26[v36], v37, v88);
  v38 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showBiometryRetryButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v26[v38], v25, v22);
  v39 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showFallbackButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v26[v39], v25, v22);
  v40 = v89;
  v41 = &v26[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion];
  *v41 = 0;
  v41[1] = 0;
  *&v26[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_dismissAnimationDuration] = 0x3FC3333333333333;
  v26[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_dismissed] = 0;
  v42 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v42);
  v43 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad;
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIDevice, UIDevice_ptr);
  v26[v43] = static UIDevice.isPad.getter();
  *&v26[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_failures] = 0;
  v26[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_expectsDismissOnIpad] = 0;
  swift_unknownObjectWeakInit();
  v44 = &v26[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___cornerRadius];
  *v44 = 0;
  v44[8] = 1;
  v45 = &v26[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___backgroundOpacity];
  *v45 = 0;
  v45[8] = 1;
  v46 = &v26[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___biometrySubtitle];
  *v46 = 0;
  v46[1] = 0;
  v47 = &v26[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___passwordType];
  *v47 = 0;
  v47[8] = 1;
  *&v26[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___appIcon] = 1;
  v48 = *v41;
  v49 = v41[1];
  v50 = v95;
  v51 = v96;
  *v41 = v95;
  v41[1] = v51;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v50, v51);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v48, v49);
  v53 = v90;
  v52 = v91;
  *&v26[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_auditToken] = v90;
  *&v26[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_backoffCounter] = v40;
  *&v26[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_cachedContext] = v52;
  v55 = v92;
  v54 = v93;
  *&v26[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_configuration] = v92;
  v56 = &v26[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_failureLimit];
  *v56 = v54;
  v56[8] = v94 & 1;
  v57 = v52;
  v58 = v53;
  swift_unknownObjectRetain();
  v59 = v55;
  v26[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_fallbackMethod] = AuthenticationFallbackMethod.init(requirement:)([v59 requirement]);
  v60 = [v59 contextData];
  v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  v64 = objc_allocWithZone(LAContext);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v61, v63);
  v66 = [v64 initWithExternalizedContext:isa];

  if (v66)
  {
    *&v26[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context] = v66;
    *&v26[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_policy] = v76;
    v67 = v77;
    *&v26[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_userId] = v77;
    *&v26[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_options] = a9;
    v68 = v67;
    v69 = [v59 passwordFieldPlaceholder];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    swift_beginAccess();
    v104 = v70;
    v105 = v72;
    Published.init(initialValue:)();
    swift_endAccess();
    v103.receiver = v26;
    v103.super_class = v78;
    v73 = objc_msgSendSuper2(&v103, "init");
    AuthorizationViewModel.setup()();
    AuthorizationViewModel.setupPrompt(inLockout:)(0);
    v74 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v101 = partial apply for closure #1 in AuthorizationViewModel.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:);
    v102 = v74;
    aBlock = _NSConcreteStackBlock;
    v98 = 1107296256;
    v99 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v100 = &block_descriptor_10;
    v75 = _Block_copy(&aBlock);

    [v40 currentBackoffErrorWithReply:v75];
    _Block_release(v75);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v95, v96);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void AuthorizationViewModel.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, int a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v77 = a8;
  v76 = a7;
  v94 = a6;
  v92 = a1;
  v93 = a5;
  v89 = a4;
  v90 = a2;
  v91 = a3;
  v95 = a10;
  v96 = a11;
  ObjectType = swift_getObjectType();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v87 = *(v13 - 8);
  v88 = v13;
  __chkstk_darwin(v13);
  v86 = &v76 - v14;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v76 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v17 = &v76 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v18 = __chkstk_darwin(v80);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v76 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v76 - v25;
  v27 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showAuthorizationView[0];
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28 = *(v24 + 32);
  v28(&v11[v27], v26, v23);
  v29 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showBiometryIntentButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v11[v29], v26, v23);
  v30 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__shouldShowCustomPasswordView[0];
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v11[v30], v26, v23);
  v31 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__shouldShowDevicePasscodeView[0];
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v11[v31], v26, v23);
  v32 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__passcodeFocused[0];
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v11[v32], v26, v23);
  v79 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__blockedUntilDate;
  v33 = type metadata accessor for Date();
  (*(*(v33 - 8) + 56))(v22, 1, 1, v33);
  outlined init with copy of LACUIAngelConnectionHandling?(v22, v20, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  Published.init(initialValue:)();
  outlined destroy of LACUIAngelConnectionHandling?(v22, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(v81 + 32))(&v11[v79], v17, v82);
  v34 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__promptText[0];
  aBlock = 0;
  v98 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v35 = v83;
  Published.init(initialValue:)();
  (*(v84 + 32))(&v12[v34], v35, v85);
  v36 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__wrongBioAttempts[0];
  aBlock = 0;
  v37 = v86;
  Published.init(initialValue:)();
  (*(v87 + 32))(&v12[v36], v37, v88);
  v38 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showBiometryRetryButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v12[v38], v26, v23);
  v39 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel__showFallbackButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v12[v39], v26, v23);
  v40 = v89;
  v41 = &v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion];
  *v41 = 0;
  v41[1] = 0;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_dismissAnimationDuration] = 0x3FC3333333333333;
  v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_dismissed] = 0;
  v42 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v42);
  v43 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad;
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIDevice, UIDevice_ptr);
  v12[v43] = static UIDevice.isPad.getter();
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_failures] = 0;
  v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_expectsDismissOnIpad] = 0;
  swift_unknownObjectWeakInit();
  v44 = &v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___cornerRadius];
  *v44 = 0;
  v44[8] = 1;
  v45 = &v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___backgroundOpacity];
  *v45 = 0;
  v45[8] = 1;
  v46 = &v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___biometrySubtitle];
  *v46 = 0;
  v46[1] = 0;
  v47 = &v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___passwordType];
  *v47 = 0;
  v47[8] = 1;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel____lazy_storage___appIcon] = 1;
  v48 = *v41;
  v49 = v41[1];
  v50 = v95;
  v51 = v96;
  *v41 = v95;
  v41[1] = v51;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v50, v51);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v48, v49);
  v53 = v90;
  v52 = v91;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_auditToken] = v90;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_backoffCounter] = v40;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_cachedContext] = v52;
  v55 = v92;
  v54 = v93;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_configuration] = v92;
  v56 = &v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_failureLimit];
  *v56 = v54;
  v56[8] = v94 & 1;
  v57 = v52;
  v58 = v53;
  swift_unknownObjectRetain();
  v59 = v55;
  v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_fallbackMethod] = AuthenticationFallbackMethod.init(requirement:)([v59 requirement]);
  v60 = [v59 contextData];
  v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  v64 = objc_allocWithZone(LAContext);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v61, v63);
  v66 = [v64 initWithExternalizedContext:isa];

  if (v66)
  {
    *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context] = v66;
    *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_policy] = v76;
    v67 = v77;
    *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_userId] = v77;
    *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_options] = a9;
    v68 = v67;
    v69 = [v59 passwordFieldPlaceholder];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    swift_beginAccess();
    v104 = v70;
    v105 = v72;
    Published.init(initialValue:)();
    swift_endAccess();
    v103.receiver = v12;
    v103.super_class = ObjectType;
    v73 = objc_msgSendSuper2(&v103, "init");
    AuthorizationViewModel.setup()();
    AuthorizationViewModel.setupPrompt(inLockout:)(0);
    v74 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v101 = closure #1 in AuthorizationViewModel.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)partial apply;
    v102 = v74;
    aBlock = _NSConcreteStackBlock;
    v98 = 1107296256;
    v99 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v100 = &block_descriptor_62;
    v75 = _Block_copy(&aBlock);

    [v40 currentBackoffErrorWithReply:v75];
    _Block_release(v75);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v95, v96);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t AuthorizationViewModel.setup()()
{
  v1 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_configuration];
  result = [v1 requirement];
  if (result > 3)
  {
    if (result != 4)
    {
      if (result == 5)
      {
        goto LABEL_13;
      }

      if (result != 6)
      {
        return result;
      }
    }

    v5 = [objc_opt_self() currentPasscode];
    v6 = [v5 type];

    if ((v6 - 1) > 3)
    {
      v7 = &LACustomPasswordTypeAlphanumeric;
    }

    else
    {
      v7 = *(&off_1000AD8E0 + (v6 - 1));
    }

    [v1 setPasscodeLength:*v7];
    goto LABEL_13;
  }

  if (result == 1)
  {
LABEL_13:
    v8 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context];
    [v8 canEvaluatePolicy:1 error:0];
    if ([v8 biometryType] == 2)
    {
      [v1 requiresIntent];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v0;
    return static Published.subscript.setter();
  }

  if (result != 2)
  {
    if (result != 3)
    {
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v0;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v3;
    return static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v0;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  static Published.subscript.setter();
  v12 = [objc_opt_self() currentPasscode];
  v13 = [v12 type];

  if ((v13 - 1) > 3)
  {
    v14 = &LACustomPasswordTypeAlphanumeric;
  }

  else
  {
    v14 = *(&off_1000AD8E0 + (v13 - 1));
  }

  return [v1 setPasscodeLength:*v14];
}

uint64_t AuthorizationViewModel.setupPrompt(inLockout:)(char a1)
{
  if (a1)
  {
    v2 = static LocalizedStrings.deviceBlocked.getter();
    v4 = v3;
LABEL_20:
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = v2;
    v34 = v4;
    v22 = v1;
    return static Published.subscript.setter();
  }

  v5 = *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_configuration];
  if ([v5 mode])
  {
    goto LABEL_4;
  }

  v9 = [v5 prompt];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      goto LABEL_4;
    }
  }

  if (v1[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_fallbackMethod] == 2 || (LOBYTE(v33) = v1[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_fallbackMethod], lazy protocol witness table accessor for type AuthenticationFallbackMethod and conformance AuthenticationFallbackMethod(), v15 = v1, (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0) || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(&v33), , , (v33 & 1) == 0) && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(&v33), , , v33 != 1))
  {
LABEL_4:
    v6 = [v5 prompt];
    if (v6)
    {
      v7 = v6;
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v8;
    }

    else
    {
      v2 = 0;
      v4 = 0;
    }

    goto LABEL_20;
  }

  v16 = AuthorizationViewModel.passwordType.getter();
  v17 = LACustomPasswordTypeFourDigits;
  v18 = [objc_opt_self() currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if (v17 == v16 || LACustomPasswordTypeSixDigits == v16)
  {
    if (v19 == 1)
    {
      v24 = static LocalizedStrings.enterPasscodeIpad.getter();
    }

    else if (v19)
    {
      v24 = static LocalizedStrings.enterPasscode.getter();
    }

    else
    {
      v24 = static LocalizedStrings.enterPasscodeIphone.getter();
    }

    v26 = v24;
    v27 = v25;
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = v26;
    v34 = v27;
    v28 = v15;
  }

  else
  {
    if (v19 == 1)
    {
      v20 = static LocalizedStrings.enterPasscodeIpad.getter();
    }

    else if (v19)
    {
      v20 = static LocalizedStrings.enterPasscode.getter();
    }

    else
    {
      v20 = static LocalizedStrings.enterPasscodeIphone.getter();
    }

    v29 = v20;
    v30 = v21;
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = v29;
    v34 = v30;
    v31 = v15;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = 0;
    v34 = 0;
    v32 = v31;
  }

  return static Published.subscript.setter();
}

uint64_t closure #1 in AuthorizationViewModel.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)(uint64_t a1, uint64_t a2)
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
    aBlock[4] = partial apply for closure #1 in closure #1 in AuthorizationViewModel.switchToBackoffScreen(error:);
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_163;
    v15 = _Block_copy(aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
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

uint64_t AuthorizationViewModel.switchToBackoffScreen(error:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in AuthorizationViewModel.switchToBackoffScreen(error:);
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_69;
  v13 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t specialized AuthorizationViewModel.dismiss(error:reply:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_dismissed) & 1) == 0)
  {
    *(a2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_dismissed) = 1;
    v13 = *(a2 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad);
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v20 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    if (v13)
    {
      v15[2] = v14;
      v15[3] = a1;
      v15[4] = LACPolicy.policy.getter;
      v15[5] = 0;
      v25 = closure #1 in AuthorizationViewModel.dismiss(error:reply:)partial apply;
      v26 = v15;
      aBlock = _NSConcreteStackBlock;
      v22 = 1107296256;
      v16 = &block_descriptor_140;
    }

    else
    {
      v15[2] = 0x3FC3333333333333;
      v15[3] = v14;
      v15[4] = a1;
      v15[5] = LACPolicy.policy.getter;
      v15[6] = 0;
      v25 = closure #2 in AuthorizationViewModel.dismiss(error:reply:)partial apply;
      v26 = v15;
      aBlock = _NSConcreteStackBlock;
      v22 = 1107296256;
      v16 = &block_descriptor_132;
    }

    v23 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v24 = v16;
    v17 = _Block_copy(&aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v20;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t AuthorizationViewModel.dismiss(error:reply:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_dismissed))
  {
    return a2(v13);
  }

  v25 = v13;
  v26 = v8;
  *(v3 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_dismissed) = 1;
  v17 = *(v3 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_isPad);
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v24 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  if (v17 == 1)
  {
    v19[2] = v18;
    v19[3] = a1;
    v19[4] = a2;
    v19[5] = a3;
    v31 = partial apply for closure #1 in AuthorizationViewModel.dismiss(error:reply:);
    v32 = v19;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v20 = &block_descriptor_83;
  }

  else
  {
    v19[2] = 0x3FC3333333333333;
    v19[3] = v18;
    v19[4] = a1;
    v19[5] = a2;
    v19[6] = a3;
    v31 = partial apply for closure #2 in AuthorizationViewModel.dismiss(error:reply:);
    v32 = v19;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v20 = &block_descriptor_76;
  }

  v29 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v30 = v20;
  v21 = _Block_copy(&aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v24;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v26 + 8))(v10, v7);
  return (*(v12 + 8))(v15, v25);
}

uint64_t closure #1 in AuthorizationViewModel.dismiss(error:reply:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.setter();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_expectsDismissOnIpad;
    v7 = Strong;
    swift_beginAccess();
    v7[v6] = 1;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = (v8 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion);
    v11 = *(v8 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion);
    if (v11)
    {
      v12 = v10[1];

      v11(a2);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v11, v12);
      v13 = *v10;
      v14 = v10[1];
      *v10 = 0;
      v10[1] = 0;
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v13, v14);
    }
  }

  return a3();
}

uint64_t closure #2 in AuthorizationViewModel.dismiss(error:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v35 = a4;
  v34 = a3;
  v33 = a2;
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v31 - v14;
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  static Animation.easeIn(duration:)();
  swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  withAnimation<A>(_:_:)();

  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v19 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v9 + 8);
  v31 = v8;
  v20(v12, v8);
  + infix(_:_:)();
  v20(v15, v8);
  v21 = swift_allocObject();
  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v23 = swift_allocObject();
  v24 = v33;
  v23[2] = v21;
  v23[3] = v24;
  v25 = v35;
  v23[4] = v34;
  v23[5] = v25;
  aBlock[4] = partial apply for closure #2 in closure #2 in AuthorizationViewModel.dismiss(error:reply:);
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_149;
  v26 = _Block_copy(aBlock);
  swift_errorRetain();

  v27 = v32;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v29 = v36;
  v28 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);

  (*(v40 + 8))(v29, v28);
  (*(v38 + 8))(v27, v39);
  return (v20)(v17, v31);
}

id AuthorizationViewModel.verify(passcode:reply:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(aBlock);

  if (LOBYTE(aBlock[0]) == 1)
  {
    v10 = *(v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_cachedContext);
    if (v10 && (result = [v10 externalizedContext]) != 0 || (result = objc_msgSend(*(v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context), "externalizedContext")) != 0)
    {
      v12 = result;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      DevicePasscodeVerifier.verify(passcode:acmContext:userId:policy:options:auditToken:reply:)(a1, a2, v13, v15, *(v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_userId), *(v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_policy), *(v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_options), *(v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_auditToken), a3, a4, ObjectType, &protocol witness table for AuthorizationViewModel);
      return outlined consume of Data._Representation(v13, v15);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(aBlock);

    if (LOBYTE(aBlock[0]) == 1)
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v16 = result;
        if ([result respondsToSelector:"viewModel:didReceiveCustomPassword:handler:"])
        {
          v17 = String._bridgeToObjectiveC()();
          aBlock[4] = a3;
          aBlock[5] = a4;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
          aBlock[3] = &block_descriptor_86;
          v18 = _Block_copy(aBlock);

          [v16 viewModel:v4 didReceiveCustomPassword:v17 handler:v18];
          swift_unknownObjectRelease();
          _Block_release(v18);
        }

        else
        {
          return swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      return a3(0);
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

Swift::Void __swiftcall AuthorizationViewModel.retryBiometryEvaluation()()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  [*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context) retryProcessedEvent:7 reply:0];
}

Swift::Void __swiftcall AuthorizationViewModel.switchToFallback(directly:)(Swift::Bool directly)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  if (directly)
  {
    v17 = static Animation.linear(duration:)();
    __chkstk_darwin(v17);
    *(&v22 - 2) = v1;
    withAnimation<A>(_:_:)();
  }

  else
  {
    v18 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context);
    [v18 canEvaluatePolicy:1 error:0];
    [v18 biometryType];
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v23 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v24 = *(v11 + 8);
    v24(v14, v10);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #2 in AuthorizationViewModel.switchToFallback(directly:);
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_90;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v23;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v20);

    (*(v4 + 8))(v6, v3);
    (*(v25 + 8))(v9, v26);
    v24(v16, v10);
  }
}

uint64_t AuthorizationViewModel.showFallback()()
{
  if (*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_fallbackMethod) == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v0 = v0;
    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t closure #1 in AuthorizationViewModel.switchToBackoffScreen(error:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v53 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = __chkstk_darwin(v6 - 8);
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v51 = &v49 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v49 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v49 - v15;
  __chkstk_darwin(v14);
  v52 = &v49 - v17;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = 0;
    static Published.subscript.setter();
  }

  v49 = a2;
  v18 = _convertErrorToNSError(_:)();
  v19 = [v18 userInfo];

  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v20 + 16))
  {
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
    v25 = v24;

    if (v25)
    {
      outlined init with copy of Any(*(v20 + 56) + 32 * v23, aBlock);

      v26 = v52;
      v27 = swift_dynamicCast();
      v28 = v53;
      v29 = *(v53 + 56);
      v29(v26, v27 ^ 1u, 1, v3);
      goto LABEL_8;
    }
  }

  else
  {
  }

  v26 = v52;
  v28 = v53;
  v29 = *(v53 + 56);
  v29(v52, 1, 1, v3);
LABEL_8:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    outlined init with copy of LACUIAngelConnectionHandling?(v26, v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((*(v28 + 48))(v16, 1, v3) == 1)
    {
      outlined destroy of LACUIAngelConnectionHandling?(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v32 = 0;
    }

    else
    {
      Date.init()();
      v33 = Date.compare(_:)();
      v34 = *(v53 + 8);
      v34(v5, v3);
      v34(v16, v3);
      v35 = v33 == 1;
      v26 = v52;
      v28 = v53;
      v32 = v35;
    }

    AuthorizationViewModel.setupPrompt(inLockout:)(v32);
  }

  outlined init with copy of LACUIAngelConnectionHandling?(v26, v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v28 + 48))(v13, 1, v3) == 1)
  {
    outlined destroy of LACUIAngelConnectionHandling?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_21:
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v47 = v51;
      v29(v51, 1, 1, v3);
      swift_getKeyPath();
      swift_getKeyPath();
      outlined init with copy of LACUIAngelConnectionHandling?(v47, v50, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      static Published.subscript.setter();
      outlined destroy of LACUIAngelConnectionHandling?(v47, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v55 = 1;
      static Published.subscript.setter();
    }

    return outlined destroy of LACUIAngelConnectionHandling?(v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  v36 = v28;
  Date.init()();
  v37 = Date.compare(_:)();
  v38 = *(v36 + 8);
  v38(v5, v3);
  v38(v13, v3);
  if (v37 != 1)
  {
    goto LABEL_21;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v39 = v51;
    outlined init with copy of LACUIAngelConnectionHandling?(v26, v51, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of LACUIAngelConnectionHandling?(v39, v50, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    static Published.subscript.setter();
    outlined destroy of LACUIAngelConnectionHandling?(v39, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  v40 = objc_opt_self();
  v41 = swift_allocObject();
  swift_beginAccess();
  v42 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v43 = swift_allocObject();
  v44 = v49;
  *(v43 + 16) = v41;
  *(v43 + 24) = v44;
  aBlock[4] = partial apply for closure #1 in closure #1 in AuthorizationViewModel.switchToBackoffScreen(error:);
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  aBlock[3] = &block_descriptor_156;
  v45 = _Block_copy(aBlock);
  swift_errorRetain();

  v46 = [v40 scheduledTimerWithTimeInterval:0 repeats:v45 block:1.0];
  _Block_release(v45);

  return outlined destroy of LACUIAngelConnectionHandling?(v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

Swift::Void __swiftcall AuthorizationViewModel.passcodeVerified(result:)(Swift::OpaquePointer result)
{
  v2 = (v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion);
  v3 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion);
  if (v3)
  {
    v4 = v2[1];

    v3(0);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v3, v4);
    v5 = *v2;
    v6 = v2[1];
    *v2 = 0;
    v2[1] = 0;

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
  }
}

Swift::Void __swiftcall AuthorizationViewModel.passcodeRejected()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong respondsToSelector:"viewModelDidRejectDevicePasscode:"])
    {
      [v2 viewModelDidRejectDevicePasscode:v0];
    }

    swift_unknownObjectRelease();
  }
}

uint64_t AuthorizationViewModel.passcodeAuthenticationFailed(error:)(uint64_t result)
{
  v2 = (v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion);
  v3 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion);
  if (v3)
  {
    v4 = result;
    v5 = v2[1];

    v3(v4);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v3, v5);
    v6 = *v2;
    v7 = v2[1];
    *v2 = 0;
    v2[1] = 0;

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
  }

  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance AuthorizationViewModel@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

Swift::Void __swiftcall AuthorizationViewModel.biometricNoMatch()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in AuthorizationViewModel.biometricNoMatch();
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_94;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
}

Swift::Void __swiftcall AuthorizationViewModel.biometryDidBecomeIdle()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in AuthorizationViewModel.biometryDidBecomeIdle(), v5);
}

uint64_t closure #1 in AuthorizationViewModel.biometryDidBecomeIdle()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(closure #1 in AuthorizationViewModel.biometryDidBecomeIdle(), 0, 0);
}

uint64_t closure #1 in AuthorizationViewModel.biometryDidBecomeIdle()()
{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in AuthorizationViewModel.biometryDidBecomeIdle(), v2, v1);
}

{
  v1 = *(v0 + 24);

  closure #1 in closure #1 in AuthorizationViewModel.biometryDidBecomeIdle()(v1);
  v2 = *(v0 + 8);

  return v2();
}

void (*closure #1 in closure #1 in AuthorizationViewModel.biometryDidBecomeIdle()(uint64_t a1))(id *, void)
{
  v2 = *(a1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context);
  [v2 canEvaluatePolicy:1 error:0];
  result = [v2 biometryType];
  if (result == 2)
  {
    v4 = *(a1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context);
    v9[0] = 0;
    [v4 canEvaluatePolicy:1 error:v9];
    v5 = v9[0];
    v6 = v9[0];
    if (v5)
    {
      specialized AuthorizationViewModel.authenticationResult(_:error:context:)(v6);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      result = static Published.subscript.modify();
      if (__OFADD__(*v7, 1))
      {
        __break(1u);
      }

      else
      {
        ++*v7;
        result(v9, 0);

        __chkstk_darwin(v8);
        static Animation.default.getter();
        withAnimation<A>(_:_:)();
      }
    }
  }

  return result;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

      outlined destroy of LACUIAngelConnectionHandling?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of LACUIAngelConnectionHandling?(a3, &_sScPSgMd, &_sScPSgMR);
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

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance LACustomPasswordType(uint64_t a1, uint64_t a2)
{
  result = static Int._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance LACustomPasswordType(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance LACustomPasswordType@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACustomPasswordType(uint64_t a1)
{
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type LACustomPasswordType and conformance LACustomPasswordType, type metadata accessor for LACustomPasswordType, &protocol conformance descriptor for LACustomPasswordType);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type LACustomPasswordType and conformance LACustomPasswordType, type metadata accessor for LACustomPasswordType, &protocol conformance descriptor for LACustomPasswordType);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
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

void *_sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd, _ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMR);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10007275C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in AuthorizationViewModel.retryBiometryEvaluation()()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t partial apply for closure #2 in AuthorizationViewModel.switchToFallback(directly:)(uint64_t a1)
{
  static Animation.linear(duration:)();
  swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  withAnimation<A>(_:_:)();
}

uint64_t partial apply for closure #1 in AuthorizationViewModel.switchToFallback(directly:)()
{
  v1 = *(v0 + 16);
  AuthorizationViewModel.showFallback()();
  AuthorizationViewModel.setupPrompt(inLockout:)(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t specialized AuthorizationViewModel.authenticationResult(_:error:context:)(uint64_t a1)
{
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v24 = v8;
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context);
  [v15 canEvaluatePolicy:1 error:0];
  [v15 biometryType];
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v17 = *(v9 + 8);
  v17(v12, v8);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in AuthorizationViewModel.authenticationResult(_:error:context:);
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_124;
  v20 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v21 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);

  (*(v28 + 8))(v4, v21);
  (*(v26 + 8))(v7, v27);
  return (v17)(v14, v24);
}

void partial apply for closure #1 in AuthorizationViewModel.biometricNoMatch()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context;
    v2 = Strong;
    [*(Strong + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_context) canEvaluatePolicy:1 error:0];
    v3 = [*&v2[v1] biometryType];

    if (v3 == 1)
    {
      v4 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:2];
      [v4 impactOccurred];

      swift_allocObject();
      swift_beginAccess();
      v5 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      static Animation.default.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
      withAnimation<A>(_:_:)();
    }
  }
}

uint64_t partial apply for closure #1 in AuthorizationViewModel.biometryDidBecomeIdle()(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:);

  return closure #1 in AuthorizationViewModel.biometryDidBecomeIdle()(a1, v5, v6, v4);
}

uint64_t type metadata accessor for AuthorizationViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for AuthorizationViewModel;
  if (!type metadata singleton initialization cache for AuthorizationViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AuthorizationViewModel(uint64_t a1)
{
  type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Bool>, &type metadata for Bool, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<NSXPCConnection?>(319, &lazy cache variable for type metadata for Published<Date?>, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<NSXPCConnection?>(319, &lazy cache variable for type metadata for Published<String?>, &_sSSSgMd, &_sSSSgMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<String>, &type metadata for String, &type metadata accessor for Published);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Int>, &type metadata for Int, &type metadata accessor for Published);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Logger();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t closure #1 in AuthorizationViewModel.biometryDidBecomeIdle()partial apply(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)partial apply;

  return closure #1 in AuthorizationViewModel.biometryDidBecomeIdle()(a1, v5, v6, v4);
}

uint64_t sub_1000735C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_114(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)partial apply;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in AuthorizationViewModel.biometryDidBecomeIdle()()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = 1;
  v2 = v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  v3 = v6 >= 2 && v2[OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_fallbackMethod] != 2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v3;
  v4 = v2;
  return static Published.subscript.setter();
}

void partial apply for closure #1 in closure #1 in AuthorizationViewModel.biometricNoMatch()(BOOL *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = static Published.subscript.modify();
  if (!__OFADD__(*v4, 1))
  {
    ++*v4;
    v3(v5, 0);

LABEL_4:
    *a1 = Strong == 0;
    return;
  }

  __break(1u);
}

void partial apply for closure #1 in AuthorizationViewModel.authenticationResult(_:error:context:)()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      if (*(Strong + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_fallbackMethod) == 2)
      {
        specialized AuthorizationViewModel.dismiss(error:reply:)(v1, Strong);
      }

      else
      {
        AuthorizationViewModel.switchToFallback(directly:)(0);
      }
    }

    else
    {
      v4 = (Strong + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion);
      v5 = *(Strong + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion);
      if (v5)
      {
        v6 = v4[1];

        v5(0);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
        v7 = *v4;
        v8 = v4[1];
        *v4 = 0;
        v4[1] = 0;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v7, v8);
      }
    }
  }
}

uint64_t objectdestroy_72Tm()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #2 in AuthorizationViewModel.switchToFallback(directly:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    AuthorizationViewModel.showFallback()();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    AuthorizationViewModel.setupPrompt(inLockout:)(0);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.setter();
  }

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

uint64_t partial apply for closure #1 in closure #2 in AuthorizationViewModel.dismiss(error:reply:)@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = result;
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    result = static Published.subscript.setter();
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t objectdestroy_79Tm()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #2 in closure #2 in AuthorizationViewModel.dismiss(error:reply:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (Strong + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion);
    v6 = *(Strong + OBJC_IVAR____TtC28LocalAuthenticationUIService22AuthorizationViewModel_completion);
    if (v6)
    {
      v7 = v5[1];

      v6(v1);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
      v8 = *v5;
      v9 = v5[1];
      *v5 = 0;
      v5[1] = 0;
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
    }
  }

  return v2();
}

void partial apply for closure #1 in closure #1 in AuthorizationViewModel.switchToBackoffScreen(error:)()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    AuthorizationViewModel.switchToBackoffScreen(error:)(v1);
  }
}

id TerminateAssertion.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminateAssertion_completion];
  v4 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminateAssertion_completion];
  if (v4)
  {
    v5 = v3[1];

    v4(v1);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v4, v5);
    v6 = *v3;
    v7 = v3[1];
    *v3 = 0;
    v3[1] = 0;
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
  }

  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "dealloc");
}

Swift::Void __swiftcall TerminateAssertion.invalidate()()
{
  v1 = (v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminateAssertion_completion);
  v2 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminateAssertion_completion);
  if (v2)
  {
    v3 = v1[1];

    v2();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v2, v3);
    v4 = *v1;
    v5 = v1[1];
    *v1 = 0;
    v1[1] = 0;

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v4, v5);
  }
}

uint64_t *TerminationService.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static TerminationService.shared;
}

id static TerminationService.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static TerminationService.shared;

  return v0;
}

void static TerminationService.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static TerminationService.shared;
  static TerminationService.shared = a1;
}

uint64_t (*static TerminationService.shared.modify(uint64_t a1))()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return AngelSceneRemoteAlert.persistentIdentifier.modify;
}

id key path getter for static TerminationService.shared : TerminationService.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static TerminationService.shared;
  *a1 = static TerminationService.shared;

  return v2;
}

void key path setter for static TerminationService.shared : TerminationService.Type(id *a1)
{
  v1 = one-time initialization token for shared;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static TerminationService.shared;
  static TerminationService.shared = v2;
}

id TerminationService.terminate(force:)()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminationService_assertions) count];
  if (!result && *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminationService_terminationScheduled) == 1)
  {
    type metadata accessor for OS_dispatch_queue();
    (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.background(_:), v9);
    v16[0] = static OS_dispatch_queue.global(qos:)();
    (*(v10 + 8))(v12, v9);
    aBlock[4] = closure #1 in TerminationService.terminate(force:);
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_11;
    v14 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    v16[1] = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v15 = v16[0];
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

id TerminationService.assertion()()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = type metadata accessor for TerminateAssertion();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminateAssertion_completion];
  *v4 = partial apply for closure #1 in TerminationService.assertion();
  v4[1] = v1;
  v7.receiver = v3;
  v7.super_class = v2;
  v5 = objc_msgSendSuper2(&v7, "init");
  [*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminationService_assertions) addObject:v5];
  return v5;
}

uint64_t sub_1000749E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void partial apply for closure #1 in TerminationService.assertion()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminationService_assertions) removeObject:a1];
    TerminationService.terminate(force:)();
  }
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t key path getter for SceneDelegate.presenter : SceneDelegate@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SceneDelegate.presenter : SceneDelegate(void *a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x70);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t SceneDelegate.presenter.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_presenter;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t key path getter for SceneDelegate.sceneController : SceneDelegate@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for SceneDelegate.sceneController : SceneDelegate(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((swift_isaMask & **a2) + 0x88);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t SceneDelegate.sceneController.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_sceneController);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t key path getter for SceneDelegate.window : SceneDelegate@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SceneDelegate.window : SceneDelegate(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xA0);
  v4 = *a1;
  return v3(v2);
}

void *SceneDelegate.window.getter()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SceneDelegate.window.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall SceneDelegate.scene(_:willConnectTo:options:)(UIScene _, UISceneSession willConnectTo, UISceneConnectionOptions options)
{
  v4 = v3;
  isa = options.super.isa;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v68 - v12;
  static LACLog.ui.getter();
  v14 = willConnectTo.super.isa;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v72 = v11;
  v70 = v14;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v71 = _.super.super.isa;
    v19 = v18;
    v69 = swift_slowAlloc();
    v75[0] = v69;
    *v19 = 136315138;
    v20 = [(objc_class *)v14 persistentIdentifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v4;
    v23 = v8;
    v24 = v7;
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v26, v75);
    v7 = v24;
    v8 = v23;
    v4 = v22;

    *(v19 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "Will connect to scene session: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);

    _.super.super.isa = v71;
  }

  v28 = *(v8 + 1);
  v28(v13, v7);
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v30.super.super.isa = v29;
    v69 = v28;
    v71 = _.super.super.isa;
    v31 = AppContainer.shared.unsafeMutableAddressor();
    swift_beginAccess();
    v32 = *((swift_isaMask & *v4) + 0x70);
    v33 = swift_unknownObjectRetain();
    v32(v33);
    v34 = *v31 + OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_sceneController;
    swift_beginAccess();
    v35 = *(v34 + 8);
    v36 = *((swift_isaMask & *v4) + 0x88);
    v37 = swift_unknownObjectRetain();
    v36(v37, v35);
    v38 = [(objc_class *)isa URLContexts];
    type metadata accessor for UIOpenURLContext();
    lazy protocol witness table accessor for type UIOpenURLContext and conformance NSObject();
    v39 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo16UIOpenURLContextCG_10Foundation3URLVs5NeverOTg50151_s28LocalAuthenticationUIService13SceneDelegateC5scene_13willConnectTo7optionsySo7UISceneC_So0K7SessionCSo0K17ConnectionOptionsCtF10Foundation3URLVSo16dE6CXEfU_Tf1cn_n(v39);

    v41 = type metadata accessor for SceneDelegate();
    v76.value._rawValue = 0;
    v76.is_nil = v40;
    v42 = v41;
    v43 = &protocol witness table for SceneDelegate;
    AngelSceneDelegate.connect(scene:sceneOptions:connectionURLs:)(v30, v76, *&v42);
    v77.value._rawValue = 0;
    v77.is_nil = v40;
    v44 = v41;
    v45 = &protocol witness table for SceneDelegate;
    v46 = AngelSceneDelegate.transitionViewController(for:options:connectionURLs:)(v30.super.super.isa, v77, *&v44);

    if (v46)
    {
      v47 = [objc_allocWithZone(LACUISecureWindow) initWithWindowScene:v30.super.super.isa];
      v48 = (*((swift_isaMask & *v4) + 0xA0))(v47);
      v49 = *((swift_isaMask & *v4) + 0x98);
      v50 = (v49)(v48);
      if (v50)
      {
        v51 = v50;
        [v50 setRootViewController:v46];
      }

      v52 = v49();
      [v52 makeKeyAndVisible];
    }

    else
    {
      v53 = v72;
      static LACLog.ui.getter();
      v54 = v70;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        isa = v8;
        v74 = v58;
        v70 = v58;
        *v57 = 136315138;
        v59 = [(objc_class *)v54 persistentIdentifier];
        v60 = v54;
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v7;
        v63 = v62;

        v64 = v61;
        v54 = v60;
        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v63, &v74);

        *(v57 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v55, v56, "No root view controller for scene session: %s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v70);

        v66 = v72;
        v67 = v68;
      }

      else
      {

        v66 = v53;
        v67 = v7;
      }

      v69(v66, v67);
      AngelSceneDelegate.disconnect(scene:)(v30);
      v46 = [objc_opt_self() sharedApplication];
      [v46 requestSceneSessionDestruction:v54 options:0 errorHandler:0];
    }
  }
}

unint64_t type metadata accessor for UIOpenURLContext()
{
  result = lazy cache variable for type metadata for UIOpenURLContext;
  if (!lazy cache variable for type metadata for UIOpenURLContext)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIOpenURLContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIOpenURLContext and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIOpenURLContext and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIOpenURLContext and conformance NSObject)
  {
    type metadata accessor for UIOpenURLContext();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIOpenURLContext and conformance NSObject);
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo16UIOpenURLContextCG_10Foundation3URLVs5NeverOTg50151_s28LocalAuthenticationUIService13SceneDelegateC5scene_13willConnectTo7optionsySo7UISceneC_So0K7SessionCSo0K17ConnectionOptionsCtF10Foundation3URLVSo16dE6CXEfU_Tf1cn_n(uint64_t a1)
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

Swift::Void __swiftcall SceneDelegate.sceneDidDisconnect(_:)(UIScene a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v6 = a1.super.super.isa;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19 = v2;
    v10 = v9;
    v18 = swift_slowAlloc();
    v20 = v18;
    *v10 = 136315138;
    v11 = [(objc_class *)v6 session];
    v12 = [v11 persistentIdentifier];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v20);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Did disconnect from scene: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);

    (*(v3 + 8))(v5, v19);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  type metadata accessor for SceneDelegate();
  AngelSceneDelegate.disconnect(scene:)(v6);
}

id SceneDelegate.init()()
{
  *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_presenter] = 0;
  v1 = &v0[OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_sceneController];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_window] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v3, "init");
}

id SceneDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*protocol witness for AngelSceneDelegate.window.modify in conformance SceneDelegate(uint64_t *a1))(void *a1)
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

uint64_t static LocalizedStrings.continue.getter()
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v0 = static NSBundle.current;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x8000000100099F80;
  v2._countAndFlagsBits = 0xD000000000000017;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t static LocalizedStrings.enterPasscode.getter()
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v0 = static NSBundle.current;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x8000000100099FA0;
  v2._countAndFlagsBits = 0xD000000000000013;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t static LocalizedStrings.enterPasscodeIpad.getter()
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v0 = static NSBundle.current;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x8000000100099FC0;
  v2._countAndFlagsBits = 0xD000000000000013;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t static LocalizedStrings.enterPasscodeIphone.getter()
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v0 = static NSBundle.current;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x8000000100099FE0;
  v2._countAndFlagsBits = 0xD000000000000015;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t static LocalizedStrings.enterPasscodeUpdate.getter()
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v0 = static NSBundle.current;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x8000000100099820;
  v2._countAndFlagsBits = 0xD000000000000015;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t static LocalizedStrings.cancel.getter(uint64_t a1, void *a2)
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v4 = static NSBundle.current;
  v10._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  v5.value._object = 0xE800000000000000;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t static LocalizedStrings.tryAgainIn(minutes:)(uint64_t a1)
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v2 = static NSBundle.current;
  v9._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v4._object = 0x800000010009A000;
  v4._countAndFlagsBits = 0xD000000000000012;
  v3.value._object = 0xE800000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000867F0;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = a1;
  v7 = static String.localizedStringWithFormat(_:_:)();

  return v7;
}

uint64_t static LocalizedStrings.AuthenticationReason.default(callerName:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v4 = static NSBundle.current;
  v11._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v6._object = 0x800000010009A020;
  v6._countAndFlagsBits = 0xD000000000000019;
  v5.value._object = 0xE800000000000000;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000867F0;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = static String.localizedStringWithFormat(_:_:)();

  return v9;
}

uint64_t static LocalizedStrings.AuthenticationReason.custom(_:callerName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.current;
  v16._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x494B53415F505041;
  v9._object = 0xEF485455415F474ELL;
  v10.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v10.value._object = 0xE800000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100087EF0;
  *(v12 + 56) = &type metadata for String;
  v13 = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v13;
  *(v12 + 64) = v13;
  *(v12 + 72) = a1;
  *(v12 + 80) = a2;

  v14 = static String.localizedStringWithFormat(_:_:)();

  return v14;
}

uint64_t static LocalizedStrings.Digits.zero.getter(Swift::Int a1)
{
  v2 = objc_opt_self();
  type metadata accessor for NSNumber();
  isa = NSNumber.init(integerLiteral:)(a1).super.super.isa;
  v4 = [v2 localizedStringFromNumber:isa numberStyle:1];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LocalizedStrings.Pearl.hwIssueHighTemprerature.getter()
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v0 = static NSBundle.current;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x800000010009A040;
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t static LocalizedStrings.Pearl.hwIssueLowTemprerature.getter()
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v0 = static NSBundle.current;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x800000010009A060;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

id one-time initialization function for current()
{
  type metadata accessor for NSBundle.Sentinel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static NSBundle.current = result;
  return result;
}

uint64_t static LoggerPool.logger(category:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  if (one-time initialization token for loggers != -1)
  {
    swift_once();
  }

  v10 = LogCategory.name.getter(v2);
  v12 = v11;
  swift_beginAccess();
  v13 = static LoggerPool.loggers;
  if (*(static LoggerPool.loggers + 16))
  {
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
    v16 = v15;

    if (v16)
    {
      v17 = *(v13 + 56);
      v18 = type metadata accessor for Logger();
      v19 = *(v18 - 8);
      (*(v19 + 16))(v9, v17 + *(v19 + 72) * v14, v18);
      (*(v19 + 56))(v9, 0, 1, v18);
      goto LABEL_8;
    }
  }

  else
  {
  }

  v18 = type metadata accessor for Logger();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
LABEL_8:
  swift_endAccess();
  type metadata accessor for Logger();
  v20 = *(v18 - 8);
  v21 = *(v20 + 48);
  if (v21(v9, 1, v18) == 1)
  {
    LogCategory.name.getter(v2);
    Logger.init(subsystem:category:)();
    if (v21(v9, 1, v18) != 1)
    {
      outlined destroy of Logger?(v9);
    }
  }

  else
  {
    (*(v20 + 32))(a2, v9, v18);
  }

  v22 = LogCategory.name.getter(v2);
  v24 = v23;
  (*(v20 + 16))(v7, a2, v18);
  (*(v20 + 56))(v7, 0, 1, v18);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v7, v22, v24);
  return swift_endAccess();
}

uint64_t LogCategory.name.getter(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = &_swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, &_swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6369767265534955;
  *(v5 + 5) = 0xE900000000000065;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x7463617265746E49;
    *(v8 + 5) = 0xEB00000000657669;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    strcpy(v11 + 32, "Authorization");
    *(v11 + 23) = -4864;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v12 = BidirectionalCollection<>.joined(separator:)();

  return v12;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance LogCategory(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance LogCategory@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance LogCategory@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance LogCategory@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

unint64_t one-time initialization function for loggers()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_2os6LoggerVTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  static LoggerPool.loggers = result;
  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    outlined destroy of Logger?(a1);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);

    return outlined destroy of Logger?(v9);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Logger();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for Logger();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for Logger() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for Logger();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Logger();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v35 = type metadata accessor for Logger();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS2os6LoggerVGMd, &_ss18_DictionaryStorageCySS2os6LoggerVGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t outlined destroy of Logger?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_2os6LoggerVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_2os6LoggerVtMd, _sSS_2os6LoggerVtMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS2os6LoggerVGMd, &_ss18_DictionaryStorageCySS2os6LoggerVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Logger)(v9, v5);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Logger();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t outlined init with copy of (String, Logger)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_2os6LoggerVtMd, _sSS_2os6LoggerVtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

objc_class *one-time initialization function for resourceBundle()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  resourceBundle.super.isa = result;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t one-time initialization function for pinDash(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v6 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t ImageResource.pinDash.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for ImageResource();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static ImageResource.pinDash.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ImageResource();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void LAUISecureFaceIDViewStateFromFaceIdLightweightTrailingViewState_cold_1(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid FaceIdLightweightTrailingViewState: %d", v2, 8u);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}