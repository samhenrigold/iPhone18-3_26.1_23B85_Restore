void @objc notificationCallback(notification:responseCode:)(void *a1, char a2)
{
  v4 = a1;
  notificationCallback(notification:responseCode:)(a1, a2);
}

double closure #1 in DOCSystemAlert.presentError(title:message:primaryButtonTitle:alternateButtonTitle:responseHandler:)(uint64_t *a1, uint64_t a2, void (*a3)(char *), uint64_t a4, __CFRunLoop *a5)
{
  v7 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    DOCSystemAlert.dismissError()();
    if (v7 == 1)
    {
      if (a3)
      {
        v13 = 1;
        goto LABEL_8;
      }
    }

    else
    {
      if (v7)
      {
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.UI);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 134217984;
          *(v12 + 4) = v7;
          _os_log_impl(&dword_2493AC000, v10, v11, "Unexpected response from validating notification: %lu", v12, 0xCu);
          MEMORY[0x24C1FE850](v12, -1, -1);
        }

        goto LABEL_14;
      }

      if (a3)
      {
        v13 = 0;
LABEL_8:
        a3(&v13);
      }
    }

LABEL_14:
    CFRunLoopStop(a5);
  }

  return result;
}

void DOCSystemAlert.dismissError()()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    CFRunLoopSourceInvalidate(v1);
    v2 = *(v0 + 24);
    *(v0 + 24) = 0;
  }

  v3 = *(v0 + 16);
  if (v3)
  {
    CFUserNotificationCancel(v3);
    v4 = *(v0 + 16);
    *(v0 + 16) = 0;
  }
}

uint64_t DOCSystemAlert.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DOCSystemAlert.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type CFStringRef? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo11CFStringRefaSgMd, &_sSo11CFStringRefaSgMR);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef()
{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCSystemAlert.Response and conformance DOCSystemAlert.Response()
{
  result = lazy protocol witness table cache variable for type DOCSystemAlert.Response and conformance DOCSystemAlert.Response;
  if (!lazy protocol witness table cache variable for type DOCSystemAlert.Response and conformance DOCSystemAlert.Response)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSystemAlert.Response and conformance DOCSystemAlert.Response);
  }

  return result;
}

void (*NavigateQuickLookIntent.direction.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return NavigateHistoryIntent.direction.modify;
}

uint64_t static NavigateQuickLookIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables23NavigateQuickLookIntentVGMd, &_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables23NavigateQuickLookIntentVGMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables23NavigateQuickLookIntentV_GMd, &_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables23NavigateQuickLookIntentV_GMR);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BD70D0;
  v4._countAndFlagsBits = 0xD000000000000028;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables23NavigateQuickLookIntentV10AppIntents0I9ParameterCyAC19NavigationDirectionOGGMd, &_ss7KeyPathCy26DocumentManagerExecutables23NavigateQuickLookIntentV10AppIntents0I9ParameterCyAC19NavigationDirectionOGGMR);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t lazy protocol witness table accessor for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent()
{
  result = lazy protocol witness table cache variable for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent;
  if (!lazy protocol witness table cache variable for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent;
  if (!lazy protocol witness table cache variable for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent;
  if (!lazy protocol witness table cache variable for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent);
  }

  return result;
}

uint64_t static NavigateQuickLookIntent.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static NavigateQuickLookIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static NavigateQuickLookIntent.authenticationPolicy.setter(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static NavigateQuickLookIntent.authenticationPolicy);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static NavigateQuickLookIntent.authenticationPolicy.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_project_value_buffer(v1, static NavigateQuickLookIntent.authenticationPolicy);
  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

uint64_t key path getter for static NavigateQuickLookIntent.authenticationPolicy : NavigateQuickLookIntent.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static NavigateQuickLookIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t key path setter for static NavigateQuickLookIntent.authenticationPolicy : NavigateQuickLookIntent.Type(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static NavigateQuickLookIntent.authenticationPolicy);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t protocol witness for static AppIntent.title.getter in conformance NavigateQuickLookIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for LocalizedStringResource();
  v4 = __swift_project_value_buffer(v3, static NavigateQuickLookIntent.title);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t protocol witness for AppIntent.init() in conformance NavigateQuickLookIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of NavigateQuickLookIntent.init(direction:)(&outlined read-only object #0 of NavigateQuickLookIntent.init());
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance NavigateQuickLookIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t default argument 0 of NavigateQuickLookIntent.init(direction:)(uint64_t a1)
{
  v37 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v34 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v33 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v32 = v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v31 = v30 - v12;
  v13 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v20 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v30[0] = type metadata accessor for LocalizedStringResource();
  v22 = *(v30[0] - 8);
  MEMORY[0x28223BE20](v30[0], v23);
  v30[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables19NavigationDirectionOGMd, &_s10AppIntents15IntentParameterCy26DocumentManagerExecutables19NavigationDirectionOGMR);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v14 + 104);
  v25(v17, v24, v13);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25(v17, v24, v13);
  v26 = v31;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v22 + 56))(v26, 0, 1, v30[0]);
  v38[0] = 0;
  v27 = type metadata accessor for IntentDialog();
  v28 = *(*(v27 - 8) + 56);
  v28(v32, 1, 1, v27);
  v28(v33, 1, 1, v27);
  (*(v35 + 104))(v34, *MEMORY[0x277CBA308], v36);
  lazy protocol witness table accessor for type NavigationDirection and conformance NavigationDirection();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

id @nonobjc FPSandboxingURLWrapper.__allocating_init(url:readonly:)(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v15);
  v5 = v4;
  v14 = 0;
  v6 = [swift_getObjCClassFromMetadata() wrapperWithURL:v4 readonly:a2 & 1 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t DOCFullDocumentManagerViewController.pickerIsLoading.getter()
{
  v1 = [v0 effectiveBrowserViewController];
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v1;
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0xE8))();

  if (!v4)
  {
    goto LABEL_6;
  }

  type metadata accessor for DOCItemCollectionViewController(0);
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_6:
    v7 = 0;
    return v7 & 1;
  }

  v6 = (*((*v3 & *v5) + 0x998))();

  v7 = v6 ^ 1;
  return v7 & 1;
}

void key path getter for DOCFullDocumentManagerViewController.pickerIsLoading : DOCFullDocumentManagerViewController(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 effectiveBrowserViewController];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))();

  if (!v6)
  {
    goto LABEL_6;
  }

  type metadata accessor for DOCItemCollectionViewController(0);
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = (*((*v5 & *v7) + 0x998))();

  v9 = v8 ^ 1;
LABEL_7:
  *a2 = v9 & 1;
}

void key path setter for DOCFullDocumentManagerViewController.pickerIsLoading : DOCFullDocumentManagerViewController(char *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a2 effectiveBrowserViewController];
  if (v4)
  {
    v5 = v4;
    v11 = (*((*MEMORY[0x277D85000] & *v4) + 0xE8))();

    if (v11)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = v6;
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        *(v8 + 24) = v2;
        *(v8 + 32) = v3;
        v9 = v11;
        v10 = v3;
        DOCRunInMainThread(_:)();
      }

      else
      {
      }
    }
  }
}

void DOCFullDocumentManagerViewController.pickerIsLoading.setter(char a1)
{
  v2 = v1;
  v4 = [v1 effectiveBrowserViewController];
  if (v4)
  {
    v5 = v4;
    v11 = (*((*MEMORY[0x277D85000] & *v4) + 0xE8))();

    if (v11)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = v6;
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        *(v8 + 24) = a1 & 1;
        *(v8 + 32) = v2;
        v9 = v11;
        v10 = v2;
        DOCRunInMainThread(_:)();
      }

      else
      {
      }
    }
  }
}

void closure #1 in DOCFullDocumentManagerViewController.pickerIsLoading.setter(void *a1, unsigned __int8 a2, void *a3)
{
  v6 = DOCItemCollectionViewController.pickerIsLoadingIndicatorItem.getter();
  v20 = [v6 customView];

  if (!v20)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClassUnconditional();
  v8 = &selRef_startAnimating;
  if ((a2 & 1) == 0)
  {
    v8 = &selRef_stopAnimating;
  }

  [v7 *v8];
  v9 = a2 ^ 1;
  (*((*MEMORY[0x277D85000] & *a1) + 0x9A0))((a2 ^ 1) & 1);
  specialized DOCItemCollectionViewController.updateOverlay(animated:)();
  v10 = [a3 view];
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  [v10 setUserInteractionEnabled_];

  v12 = DOCFullDocumentManagerViewController.sidebarViewController.getter();
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  v14 = [v12 view];

  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v14 setUserInteractionEnabled_];

LABEL_8:
  v15 = objc_opt_self();
  v16 = [a3 configuration];
  v17 = [v16 sceneIdentifier];

  v18 = [v15 globalTabbedBrowserControllerForIdentifier_];
  if (v18)
  {
    v19 = [v18 view];

    if (v19)
    {
      [v19 setUserInteractionEnabled_];

      goto LABEL_11;
    }

LABEL_17:
    __break(1u);
    return;
  }

LABEL_11:
}

void (*DOCFullDocumentManagerViewController.pickerIsLoading.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = [v1 effectiveBrowserViewController];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))();

  if (!v6)
  {
    goto LABEL_6;
  }

  type metadata accessor for DOCItemCollectionViewController(0);
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = (*((*v5 & *v7) + 0x998))();

  v9 = v8 ^ 1;
LABEL_7:
  *(a1 + 8) = v9 & 1;
  return DOCFullDocumentManagerViewController.pickerIsLoading.modify;
}

void DOCFullDocumentManagerViewController.pickerIsLoading.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = [*a1 effectiveBrowserViewController];
  v6 = v5;
  if (a2)
  {
    if (!v5)
    {
      return;
    }

    v15 = (*((*MEMORY[0x277D85000] & *v5) + 0xE8))();

    if (!v15)
    {
      return;
    }

    type metadata accessor for DOCItemCollectionViewController(0);
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v4;
    *(v9 + 32) = v3;
    v10 = v3;
    v15 = v15;
    goto LABEL_10;
  }

  if (!v5)
  {
    return;
  }

  v15 = (*((*MEMORY[0x277D85000] & *v5) + 0xE8))();

  if (!v15)
  {
    return;
  }

  type metadata accessor for DOCItemCollectionViewController(0);
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v4;
    *(v13 + 32) = v3;
    v15 = v15;
    v14 = v3;
LABEL_10:
    DOCRunInMainThread(_:)();
  }

LABEL_11:
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.setupPickerFilenameViewIfNeeded()()
{
  v1 = [v0 pickerFilenameView];
  if (!v1)
  {
    v2 = [v0 pickerContext];
    if (!v2)
    {
      return;
    }

    v33 = v2;
    v3 = [v0 configuration];
    v4 = [v3 forSavingDocuments];

    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = objc_allocWithZone(type metadata accessor for DOCPickerFilenameView(0));
    v6 = v0;
    v7 = v33;
    DOCPickerFilenameView.init(with:presentingViewController:)(v7, v6);
    v33 = v8;
    [v33 setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = *((*MEMORY[0x277D85000] & *v33) + 0xE0);
    v10 = swift_unknownObjectRetain();
    v9(v10, &protocol witness table for DOCFullDocumentManagerViewController);
    v11 = [v6 view];
    if (v11)
    {
      v12 = v11;
      [v11 addSubview_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_249BA37E0;
      v14 = [v33 leadingAnchor];
      v15 = [v6 view];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 safeAreaLayoutGuide];

        v18 = [v17 leadingAnchor];
        v19 = [v14 constraintEqualToAnchor_];

        *(v13 + 32) = v19;
        v20 = [v33 trailingAnchor];
        v21 = [v6 view];
        if (v21)
        {
          v22 = v21;
          v23 = [v21 safeAreaLayoutGuide];

          v24 = [v23 trailingAnchor];
          v25 = [v20 constraintEqualToAnchor_];

          *(v13 + 40) = v25;
          v26 = [v33 bottomAnchor];

          v27 = [v6 view];
          if (v27)
          {
            v28 = v27;
            v29 = objc_opt_self();
            v30 = [v28 bottomAnchor];

            v31 = [v26 constraintEqualToAnchor:v30 constant:0.0];
            *(v13 + 48) = v31;
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v29 activateConstraints_];

            [v6 setPickerFilenameView_];
LABEL_9:
            v1 = v33;
            goto LABEL_10;
          }

LABEL_17:
          __break(1u);
          return;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
}

void DOCFullDocumentManagerViewController.didTapOn(unselectableItem:)(void *a1)
{
  v3 = [v1 configuration];
  v4 = [v3 forSavingDocuments];

  if (v4)
  {
    v5 = [v1 pickerFilenameView];
    if (v5)
    {
      v10 = v5;
      v6 = [a1 displayName];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      (*((*MEMORY[0x277D85000] & *v10) + 0x110))(v7, v9);
    }
  }
}

void DOCFullDocumentManagerViewController.didConfirmPick(in:)(uint64_t a1)
{
  v2 = v1;
  v207 = a1;
  v211 = type metadata accessor for DOCOperationItem(0);
  v219 = *(v211 - 8);
  MEMORY[0x28223BE20](v211, v3);
  v5 = (&v192 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v192 - v8;
  MEMORY[0x28223BE20](v10, v11);
  v200 = &v192 - v12;
  v13 = type metadata accessor for CharacterSet();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v192 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URL();
  v221 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v210 = &v192 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v198 = &v192 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v208 = &v192 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v206 = &v192 - v29;
  v32 = MEMORY[0x28223BE20](v30, v31);
  v205 = &v192 - v33;
  v34 = [v1 effectiveBrowserViewController];
  if (v34)
  {
    v35 = v34;
    v36 = (*((*MEMORY[0x277D85000] & *v34) + 0xE8))();

    if (v36)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v37 = swift_dynamicCastClass();
      if (v37)
      {
        v38 = v37;
        v39 = swift_allocObject();
        *(v39 + 16) = v38;
        *(v39 + 24) = 1;
        *(v39 + 32) = v2;
        v40 = v36;
        v41 = v2;
        DOCRunInMainThread(_:)();
      }

      else
      {
      }
    }
  }

  v199 = v17;
  v42 = [v2 pickerContext];
  if (v42)
  {

    v43 = DOCFullDocumentManagerViewController.sidebarViewController.getter();
    if (!v43)
    {
      goto LABEL_115;
    }

    v44 = v43;
    DOCSidebarViewController.prepareForTeardown()();
  }

  v45 = [v2 pickerContext];
  v204 = v2;
  if (v45)
  {
    v46 = v45;
    v47 = [v45 urlsToSave];

    if (v47)
    {
      v193 = v14;
      v194 = v13;
      v195 = v9;
      v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v49 = v2;
      v50 = swift_allocObject();
      *(v50 + 16) = MEMORY[0x277D84F98];
      v51 = (v50 + 16);
      v52 = swift_allocObject();
      v53 = v207;
      v52[2] = v49;
      v52[3] = v53;
      v52[4] = v48;
      v52[5] = v50;
      v201 = v52;
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v54 = v49;
      swift_unknownObjectRetain();
      v55 = [v54 configuration];
      LODWORD(v53) = [v55 forSavingDocuments];

      if (!v53)
      {

        swift_bridgeObjectRelease_n();
        if (one-time initialization token for UI == -1)
        {
LABEL_43:
          v106 = type metadata accessor for Logger();
          __swift_project_value_buffer(v106, static Logger.UI);
          v107 = Logger.logObject.getter();
          v108 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            v223[0] = v110;
            *v109 = 136446210;
            *(v109 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BD7410, v223);
            _os_log_impl(&dword_2493AC000, v107, v108, "%{public}s: Trying to export with the wrong interaction mode", v109, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v110);
            MEMORY[0x24C1FE850](v110, -1, -1);
            MEMORY[0x24C1FE850](v109, -1, -1);

            return;
          }

          goto LABEL_71;
        }

LABEL_105:
        swift_once();
        goto LABEL_43;
      }

      v196 = v54;
      v197 = v50;
      v57 = *(v48 + 16);
      v215 = v18;
      v209 = v48;
      v58 = v208;
      v59 = v205;
      v214 = v57;
      if (v57)
      {
        v60 = 0;
        v213 = v48 + ((*(v221 + 80) + 32) & ~*(v221 + 80));
        v203 = "No nodes or urls";
        v218 = (v221 + 8);
        v212 = (v221 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        *&v56 = 136446466;
        v202 = v56;
        v216 = v221 + 16;
        while (v60 < *(v48 + 16))
        {
          v217 = *(v221 + 9);
          v62 = *(v221 + 2);
          v62(v59, v213 + v217 * v60, v18);
          LODWORD(v220) = URL.startAccessingSecurityScopedResource()();
          if ((v220 & 1) == 0)
          {
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v63 = type metadata accessor for Logger();
            __swift_project_value_buffer(v63, static Logger.UI);
            v64 = v206;
            v62(v206, v59, v18);
            v65 = Logger.logObject.getter();
            v66 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v65, v66))
            {
              v67 = v64;
              v68 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              v223[0] = v69;
              *v68 = v202;
              *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, v203 | 0x8000000000000000, v223);
              *(v68 + 12) = 2080;
              _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
              v70 = dispatch thunk of CustomStringConvertible.description.getter();
              v72 = v71;
              v73 = v67;
              v59 = v205;
              (*v218)(v73, v215);
              v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, v223);
              v18 = v215;

              *(v68 + 14) = v74;
              _os_log_impl(&dword_2493AC000, v65, v66, "%{public}s: Cannot access URL to export : %s", v68, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C1FE850](v69, -1, -1);
              MEMORY[0x24C1FE850](v68, -1, -1);
            }

            else
            {

              (*v218)(v64, v18);
            }

            v48 = v209;
            v58 = v208;
          }

          v62(v58, v59, v18);
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v222 = *v51;
          v76 = v222;
          *v51 = 0x8000000000000000;
          v77 = specialized __RawDictionaryStorage.find<A>(_:)(v58);
          v79 = v76[2];
          v80 = (v78 & 1) == 0;
          v81 = __OFADD__(v79, v80);
          v82 = v79 + v80;
          if (v81)
          {
            goto LABEL_103;
          }

          v83 = v78;
          if (v76[3] >= v82)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v89 = v77;
              specialized _NativeDictionary.copy()();
              v77 = v89;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v82, isUniquelyReferenced_nonNull_native);
            v77 = specialized __RawDictionaryStorage.find<A>(_:)(v58);
            if ((v83 & 1) != (v84 & 1))
            {
              goto LABEL_117;
            }
          }

          v85 = v222;
          if (v83)
          {
            *(v222[7] + v77) = v220 & 1;
            v61 = *v218;
            (*v218)(v58, v18);
          }

          else
          {
            v222[(v77 >> 6) + 8] |= 1 << v77;
            v86 = v77;
            v62((v85[6] + v77 * v217), v58, v18);
            *(v85[7] + v86) = v220 & 1;
            v61 = *v218;
            (*v218)(v58, v18);
            v87 = v85[2];
            v81 = __OFADD__(v87, 1);
            v88 = v87 + 1;
            if (v81)
            {
              goto LABEL_104;
            }

            v85[2] = v88;
          }

          ++v60;
          *v51 = v85;

          swift_endAccess();
          v61(v59, v18);
          if (v214 == v60)
          {
            goto LABEL_45;
          }
        }

        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

LABEL_45:
      v111 = v196;
      v112 = [v196 pickerFilenameView];
      if (!v112)
      {
        v220 = 0;
        v132 = 0;
        v91 = v197;
        v92 = v201;
LABEL_84:
        v157 = [v111 configuration];
        LODWORD(v218) = [v157 isContentManaged];

        v158 = [v111 configuration];
        v159 = [v158 interactionMode];

        if (v159 == 3)
        {
          v160 = *(v48 + 16);
          if (!v160)
          {

            v124 = 0;
            v125 = MEMORY[0x277D84F90];
            goto LABEL_101;
          }

          v223[0] = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v160, 0);
          v125 = v223[0];
          v161 = *(v221 + 2);
          v162 = v48 + ((*(v221 + 80) + 32) & ~*(v221 + 80));
          v216 = *(v221 + 9);
          v217 = v161;
          v221 = (v221 + 16);
          v163 = (v221 + 16);
          v164 = v195;
          v165 = v210;
          do
          {
            v166 = v215;
            v217(v165, v162, v215);
            v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SSSg4nameSb12isURLManagedtMd, &_s10Foundation3URLV3url_SSSg4nameSb12isURLManagedtMR);
            v168 = (v164 + *(v167 + 48));
            v169 = *(v167 + 64);
            (*v163)(v164, v165, v166);
            *v168 = v220;
            v168[1] = v132;
            *(v164 + v169) = v218;
            swift_storeEnumTagMultiPayload();
            v223[0] = v125;
            v171 = *(v125 + 16);
            v170 = *(v125 + 24);

            if (v171 >= v170 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v170 > 1), v171 + 1, 1);
              v125 = v223[0];
            }

            *(v125 + 16) = v171 + 1;
            outlined init with take of DOCOperationItem(v164, v125 + ((*(v219 + 80) + 32) & ~*(v219 + 80)) + *(v219 + 72) * v171);
            v162 += v216;
            --v160;
          }

          while (v160);

          v124 = 0;
LABEL_98:
          v91 = v197;
          v92 = v201;
          v48 = v209;
LABEL_101:
          v184 = *(v48 + 16);

          v126 = 0;
          v123 = v184 > 1;
          v221 = closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:)partial apply;
          v122 = 2;
          goto LABEL_109;
        }

        if (v159 == 2)
        {
          v172 = *(v48 + 16);
          if (!v172)
          {

            v125 = MEMORY[0x277D84F90];
            v124 = 1;
            goto LABEL_101;
          }

          v223[0] = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v172, 0);
          v125 = v223[0];
          v173 = *(v221 + 2);
          v174 = v48 + ((*(v221 + 80) + 32) & ~*(v221 + 80));
          v216 = *(v221 + 9);
          v217 = v173;
          v221 = (v221 + 16);
          v175 = (v221 + 16);
          v176 = v200;
          v177 = v210;
          do
          {
            v178 = v215;
            v217(v177, v174, v215);
            v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SSSg4nameSb12isURLManagedtMd, &_s10Foundation3URLV3url_SSSg4nameSb12isURLManagedtMR);
            v180 = (v176 + *(v179 + 48));
            v181 = *(v179 + 64);
            (*v175)(v176, v177, v178);
            *v180 = v220;
            v180[1] = v132;
            *(v176 + v181) = v218;
            swift_storeEnumTagMultiPayload();
            v223[0] = v125;
            v183 = *(v125 + 16);
            v182 = *(v125 + 24);

            if (v183 >= v182 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v182 > 1), v183 + 1, 1);
              v125 = v223[0];
            }

            *(v125 + 16) = v183 + 1;
            outlined init with take of DOCOperationItem(v176, v125 + ((*(v219 + 80) + 32) & ~*(v219 + 80)) + *(v219 + 72) * v183);
            v174 += v216;
            --v172;
          }

          while (v172);

          v124 = 1;
          goto LABEL_98;
        }

LABEL_122:

        goto LABEL_123;
      }

      v113 = v112;
      v114 = (*((*MEMORY[0x277D85000] & *v112) + 0x108))();
      v116 = v115;

      v91 = v197;
      v92 = v201;
      if (!v116)
      {
        v220 = 0;
        v132 = 0;
LABEL_83:
        v111 = v196;
        goto LABEL_84;
      }

      v117._countAndFlagsBits = 46;
      v117._object = 0xE100000000000000;
      if (String.hasPrefix(_:)(v117))
      {
        swift_bridgeObjectRelease_n();
        lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
        v118 = swift_allocError();
        *v119 = 2;

        goto LABEL_79;
      }

      v133 = v199;
      CharacterSet.init(charactersIn:)();
      v223[0] = v114;
      v223[1] = v116;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      if ((v134 & 1) == 0)
      {
        swift_bridgeObjectRelease_n();
        lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
        v118 = swift_allocError();
        *v143 = 3;

        (*(v193 + 8))(v133, v194);

LABEL_79:
        swift_getErrorValue();
        v144 = Error.localizedDescription.getter();
        v145 = MEMORY[0x24C1FAD20](v144);

        v146 = [objc_opt_self() alertControllerWithTitle:0 message:v145 preferredStyle:1];

        v147 = _DocumentManagerBundle();
        if (v147)
        {
          v148 = v147;
          v225._object = 0xE200000000000000;
          v149.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v149.value._object = 0xEB00000000656C62;
          v150._countAndFlagsBits = 19279;
          v150._object = 0xE200000000000000;
          v151._countAndFlagsBits = 0;
          v151._object = 0xE000000000000000;
          v225._countAndFlagsBits = 19279;
          v152 = NSLocalizedString(_:tableName:bundle:value:comment:)(v150, v149, v148, v151, v225);

          v153 = MEMORY[0x24C1FAD20](v152._countAndFlagsBits, v152._object);

          v154 = [objc_opt_self() actionWithTitle:v153 style:0 handler:0];

          [v146 addAction_];
          [v196 presentViewController:v146 animated:1 completion:0];

LABEL_73:

          return;
        }

        goto LABEL_116;
      }

      (*(v193 + 8))(v133, v194);
      v135 = MEMORY[0x24C1FAD20](v114, v116);
      if (!v214)
      {
        v142 = 0;
        goto LABEL_82;
      }

      if (*(v48 + 16))
      {
        v136 = v221;
        v137 = v198;
        v138 = v215;
        (*(v221 + 2))(v198, v48 + ((*(v136 + 80) + 32) & ~*(v136 + 80)), v215);
        v139 = URL.pathExtension.getter();
        v141 = v140;
        (*(v136 + 1))(v137, v138);
        v142 = MEMORY[0x24C1FAD20](v139, v141);

LABEL_82:
        v155 = [v135 fp:v142 filenameFromDisplayNameWithExtension:?];

        v220 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v132 = v156;

        goto LABEL_83;
      }

      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_120;
    }

    v90 = partial apply for closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:);
  }

  else
  {
    v90 = closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:)partial apply;
  }

  v91 = swift_allocObject();
  *(v91 + 16) = MEMORY[0x277D84F98];
  v92 = swift_allocObject();
  v93 = v207;
  v92[2] = v2;
  v92[3] = v93;
  v92[4] = 0;
  v92[5] = v91;
  swift_retain_n();
  v94 = v2;
  swift_unknownObjectRetain();
  v95 = [v94 pickerContext];
  if (v95)
  {
    v96 = v95;
    v97 = [v95 nodesToMove];
    if (v97)
    {
      v98 = v97;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      v99 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v100 = [v94 pickerOperationFor_];
      if (v100 <= 1)
      {
        if (!v100)
        {

          if (one-time initialization token for UI == -1)
          {
LABEL_40:
            v101 = type metadata accessor for Logger();
            __swift_project_value_buffer(v101, static Logger.UI);
            v102 = Logger.logObject.getter();
            v103 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v102, v103))
            {
              v104 = swift_slowAlloc();
              v105 = swift_slowAlloc();
              v223[0] = v105;
              *v104 = 136446210;
              *(v104 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BD7410, v223);
              _os_log_impl(&dword_2493AC000, v102, v103, "%{public}s: No operation to perform on these nodes", v104, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v105);
              MEMORY[0x24C1FE850](v105, -1, -1);
              MEMORY[0x24C1FE850](v104, -1, -1);

              return;
            }

LABEL_71:

            goto LABEL_73;
          }

LABEL_113:
          swift_once();
          goto LABEL_40;
        }

        if (v100 == 1)
        {
          LODWORD(v220) = 1;
LABEL_57:
          if (v99 >> 62)
          {
            v127 = __CocoaSet.count.getter();
            v221 = v90;
            if (v127)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v127 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v221 = v90;
            if (v127)
            {
LABEL_59:
              v201 = v92;
              v197 = v91;
              v223[0] = MEMORY[0x277D84F90];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v127 & ~(v127 >> 63), 0);
              if (v127 < 0)
              {
                __break(1u);
                goto LABEL_113;
              }

              v128 = 0;
              v125 = v223[0];
              do
              {
                if ((v99 & 0xC000000000000001) != 0)
                {
                  v129 = MEMORY[0x24C1FC540](v128, v99);
                }

                else
                {
                  v129 = swift_unknownObjectRetain();
                }

                *v5 = v129;
                swift_storeEnumTagMultiPayload();
                v223[0] = v125;
                v131 = *(v125 + 16);
                v130 = *(v125 + 24);
                if (v131 >= v130 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v130 > 1), v131 + 1, 1);
                  v125 = v223[0];
                }

                ++v128;
                *(v125 + 16) = v131 + 1;
                outlined init with take of DOCOperationItem(v5, v125 + ((*(v219 + 80) + 32) & ~*(v219 + 80)) + *(v219 + 72) * v131);
              }

              while (v127 != v128);

              v91 = v197;
              v92 = v201;
LABEL_108:
              v122 = 0;
              v209 = 0;
              v123 = v127 > 1;
              v126 = 1;
              v124 = v220;
              goto LABEL_109;
            }
          }

          v125 = MEMORY[0x277D84F90];
          goto LABEL_108;
        }

        goto LABEL_121;
      }

      if (v100 == 2)
      {
        LODWORD(v220) = 0;
        goto LABEL_57;
      }

      if (v100 != 3)
      {
LABEL_121:
        v191 = v100;

        v223[0] = v191;
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        goto LABEL_122;
      }

LABEL_120:

LABEL_123:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }
  }

  v120 = [v94 configuration];
  v121 = [v120 forPickingFolders];

  if ((v121 & 1) == 0)
  {
    goto LABEL_120;
  }

  v221 = v90;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v209 = 0;
  v125 = MEMORY[0x277D84F90];
  v126 = 1;
LABEL_109:
  v185 = v204;
  v186 = [v204 configuration];
  v187 = [v186 forPickingFolders];

  if (v187)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    v189 = v207;
    *(inited + 32) = v207;
    swift_unknownObjectRetain();
    closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:)(inited, v185, v189, v209, v91);

    swift_setDeallocating();
    swift_arrayDestroy();
    goto LABEL_73;
  }

  v190 = [objc_opt_self() defaultManager];

  FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(v124, v125, v207, v123, v122, v126, v185, v221, v92);
}

void closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:)(unint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v138 = a5;
  v135 = a4;
  v141 = type metadata accessor for DispatchWorkItemFlags();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v8);
  v139 = v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for Date();
  v144 = *(v152 - 8);
  MEMORY[0x28223BE20](v152, v10);
  v151 = v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for DOCSmartFolderInputFile(0);
  MEMORY[0x28223BE20](v150, v12);
  v14 = (v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v15, v16);
  v137 = type metadata accessor for DispatchQoS();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137, v17);
  v142 = v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  specialized DOCFullDocumentManagerViewController.saveLastUsedOpenSaveLocation(_:)(a3, a2);
  v154 = a2;
  if (!a1)
  {
    goto LABEL_9;
  }

  v146 = a3;
  v153 = DOCNode.fpfs_syncFetchFPItem()();
  if (!v153)
  {
    goto LABEL_9;
  }

  if (a1 >> 62)
  {
    v24 = __CocoaSet.count.getter();
  }

  else
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v134[0] = v24;
  if (v24 < 1)
  {

LABEL_9:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.UI);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock = v42;
      *v41 = 136315138;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BD7410, &aBlock);
      _os_log_impl(&dword_2493AC000, v39, v40, "%s: Bailing out early to allow the user to pick a node", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x24C1FE850](v42, -1, -1);
      v43 = v41;
      a2 = v154;
      MEMORY[0x24C1FE850](v43, -1, -1);
    }

    v44 = [a2 effectiveBrowserViewController];
    if (v44)
    {
      v45 = v44;
      v153 = (*((*MEMORY[0x277D85000] & *v44) + 0xE8))();

      if (v153)
      {
        type metadata accessor for DOCItemCollectionViewController(0);
        v46 = swift_dynamicCastClass();
        if (v46)
        {
          v47 = v46;
          v48 = swift_allocObject();
          *(v48 + 16) = v47;
          *(v48 + 24) = 0;
          *(v48 + 32) = a2;
          v49 = a2;
          v50 = v153;
          DOCRunInMainThread(_:)();
        }

        else
        {
          v51 = v153;
        }
      }
    }

    return;
  }

  v145 = a1 >> 62;
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D84F90];
  v149 = v25;
  *(v25 + 16) = MEMORY[0x277D84F90];
  v148 = dispatch_group_create();
  v134[1] = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v147 = "Cannot use .importCopy";
  (*(v20 + 104))(v23, *MEMORY[0x277D85268], v19);
  static DispatchQoS.unspecified.getter();
  aBlock = v26;
  v143 = _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v147 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v27 = [v154 configuration];

  DOCAnalyticsActionEvent.FileProvider.init(nodes:)(v28);
  LODWORD(v143) = aBlock;
  v29 = objc_opt_self();
  v30 = [v29 mainBundle];

  v31 = DOCNode.sourceIdentifier.getter();
  DOCAnalyticsActionEvent.Source.init(sourceIdentifier:)(v31);
  v32 = v155;
  v33 = [v29 mainBundle];
  v34 = [v33 bundleIdentifier];

  if (v34)
  {
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v52 = v27;
  DOCAnalyticsActionEvent.Client.init(configuration:bundleIdentifier:)(v52, v35, v37, v164);
  v53 = v164[0];
  v54 = v52;
  DOCAnalyticsActionEvent.SortMode.init(configuration:)(v54, &v163);
  v55 = v163;
  v56 = v54;
  DOCAnalyticsActionEvent.SortOrder.init(configuration:)(v56, &v162);
  v57 = v162;
  v58 = [v56 hostIdentifier];
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

  v164[0] = 0xD000000000000032;
  v164[1] = 0x8000000249BCDC20;
  v164[2] = v59;
  v164[3] = v61;
  v165 = 1;
  v166 = v53;
  v167 = v143;
  v168 = v32;
  v169 = 0;
  v170 = v55;
  v171 = v57;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  specialized DOCAnalyticsManager.sendEvent(_:)(v164, static DOCAnalyticsManager.shared);
  outlined destroy of DOCAnalyticsActionEvent(v164);
  v62 = v154;
  if (v145)
  {
    v63 = __CocoaSet.count.getter();
    if (!v63)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v63 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v63)
    {
      goto LABEL_39;
    }
  }

  if (v63 < 1)
  {
    __break(1u);
    return;
  }

  v64 = 0;
  v145 = a1 & 0xC000000000000001;
  ++v144;
  v143 = &v158;
  v146 = v63;
  do
  {
    if (v145)
    {
      v77 = MEMORY[0x24C1FC540](v64, a1);
    }

    else
    {
      v77 = *(a1 + 8 * v64 + 32);
      swift_unknownObjectRetain();
    }

    v78 = [v77 displayName];
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    v82 = [v77 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    Date.init()();
    *v14 = v79;
    v14[1] = v81;
    if (one-time initialization token for sharedManager != -1)
    {
      swift_once();
    }

    v83 = a1;
    v84 = v153;
    (*((*MEMORY[0x277D85000] & *static DOCSmartFolderManager.sharedManager) + 0xA8))(v14, v153);
    v85 = [v62 configuration];
    v86 = [v85 hostIdentifier];

    if (!v86)
    {
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = MEMORY[0x24C1FAD20](v87);
    }

    ++v64;
    v65 = v84;
    v66 = v151;
    Date.init()();
    v67 = objc_allocWithZone(MEMORY[0x277D05ED0]);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v69 = [v67 initWithAppBundleIdentifier:v86 folderItem:v65 type:1 lastUsedDate:isa frecency:1.0];

    v70 = (*v144)(v66, v152);
    DOCSmartFolderManager.register(event:)(v69, v70);
    v71 = v148;
    dispatch_group_enter(v148);
    v72 = swift_allocObject();
    v73 = v147;
    v72[2] = v71;
    v72[3] = v73;
    v72[4] = v149;
    v160 = partial apply for closure #1 in closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:);
    v161 = v72;
    aBlock = MEMORY[0x277D85DD0];
    v157 = 1107296256;
    v158 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v159 = &block_descriptor_51;
    v74 = _Block_copy(&aBlock);
    v75 = v71;
    v76 = v73;

    [v77 fetchURL_];
    _Block_release(v74);
    swift_unknownObjectRelease();

    outlined destroy of DOCSmartFolderInputFile(v14);
    v62 = v154;
    a1 = v83;
  }

  while (v146 != v64);
LABEL_39:
  v88 = [v62 pickerFilenameView];
  if (!v88)
  {
LABEL_61:
    v118 = v62;
    v119 = static OS_dispatch_queue.main.getter();
    v120 = swift_allocObject();
    v121 = v138;
    v120[2] = v135;
    v120[3] = v121;
    v122 = v149;
    v120[4] = v118;
    v120[5] = v122;
    v160 = partial apply for closure #4 in closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:);
    v161 = v120;
    aBlock = MEMORY[0x277D85DD0];
    v157 = 1107296256;
    v158 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v159 = &block_descriptor_57_1;
    v123 = _Block_copy(&aBlock);

    v105 = v118;

    v124 = v142;
    static DispatchQoS.unspecified.getter();
    v155 = MEMORY[0x277D84F90];
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v125 = v139;
    v126 = v141;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v127 = v148;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v123);

    (*(v140 + 8))(v125, v126);
    (*(v136 + 8))(v124, v137);

    v128 = [v105 effectiveBrowserViewController];
    if (v128)
    {
      v129 = v128;
      v108 = (*((*MEMORY[0x277D85000] & *v128) + 0xE8))();

      if (v108)
      {
        type metadata accessor for DOCItemCollectionViewController(0);
        v109 = swift_dynamicCastClass();
        if (v109)
        {
LABEL_64:
          v130 = v109;
          v131 = swift_allocObject();
          *(v131 + 16) = v130;
          *(v131 + 24) = 0;
          *(v131 + 32) = v105;
          v132 = v105;
          v133 = v108;
          DOCRunInMainThread(_:)();

          return;
        }

        goto LABEL_65;
      }
    }

    return;
  }

  v89 = v88;
  (*((*MEMORY[0x277D85000] & *v88) + 0x138))();

  v90 = [v62 pickerContext];
  if (!v90)
  {

    goto LABEL_61;
  }

  v91 = v90;
  v92 = [v90 canSetTags];

  if ((v92 & 1) == 0)
  {

LABEL_60:
    v62 = v154;
    goto LABEL_61;
  }

  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
  v94 = v153;
  if (All)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
    v95 = Array._bridgeToObjectiveC()().super.isa;

    v96 = FPTagsFromDOCTags();

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPTag, 0x277CC6468);
    v97 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock = MEMORY[0x277D84F90];
    v98 = v134[0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v134[0], 0);
    v99 = aBlock;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v100 = 0;
      do
      {
        MEMORY[0x24C1FC540](v100, a1);
        swift_unknownObjectRelease();
        aBlock = v99;
        v101 = *(v99 + 16);
        v102 = *(v99 + 24);

        if (v101 >= v102 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v101 + 1, 1);
          v99 = aBlock;
        }

        ++v100;
        *(v99 + 16) = v101 + 1;
        *(v99 + 8 * v101 + 32) = v97;
      }

      while (v98 != v100);
    }

    else
    {
      do
      {
        aBlock = v99;
        v110 = *(v99 + 16);
        v111 = *(v99 + 24);

        if (v110 >= v111 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), v110 + 1, 1);
          v99 = aBlock;
        }

        *(v99 + 16) = v110 + 1;
        *(v99 + 8 * v110 + 32) = v97;
        --v98;
      }

      while (v98);
    }

    v112 = [objc_opt_self() shared];
    v113 = objc_allocWithZone(MEMORY[0x277D06258]);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    v114 = Array._bridgeToObjectiveC()().super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo5FPTagCGMd, &_sSaySo5FPTagCGMR);
    v115 = Array._bridgeToObjectiveC()().super.isa;

    v116 = [v113 initWithItems:v114 tagsLists:v115 isUndoable:0 shouldClearUndoStack:0 undoManager:v112];

    v117 = [objc_opt_self() defaultManager];
    [v117 scheduleAction_];

    goto LABEL_60;
  }

  v103 = swift_allocObject();
  v104 = v154;
  *(v103 + 16) = v154;
  v105 = v104;
  DOCRunInMainThread(_:)();

  v106 = [v105 effectiveBrowserViewController];
  if (v106)
  {
    v107 = v106;
    v108 = (*((*MEMORY[0x277D85000] & *v106) + 0xE8))();

    if (v108)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v109 = swift_dynamicCastClass();
      if (v109)
      {
        goto LABEL_64;
      }

LABEL_65:
    }
  }
}

void DOCFullDocumentManagerViewController.saveLastUsedOpenSaveLocation(_:)(uint64_t a1)
{
  swift_getObjectType();

  specialized DOCFullDocumentManagerViewController.saveLastUsedOpenSaveLocation(_:)(a1, v1);
}

double closure #1 in closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:)(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v43 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v37 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v37 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v37 - v26;
  outlined init with copy of URL?(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of CharacterSet?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    dispatch_group_leave(a3);
  }

  else
  {
    v37 = v7;
    v38 = a3;
    (*(v18 + 32))(v27, v16, v17);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPSandboxingURLWrapper, 0x277CC6438);
    (*(v18 + 16))(v23, v27, v17);
    v29 = @nonobjc FPSandboxingURLWrapper.__allocating_init(url:readonly:)(v23, 0);
    v30 = swift_allocObject();
    v31 = v38;
    v30[2] = v39;
    v30[3] = v29;
    v30[4] = v31;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:);
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_77;
    v32 = _Block_copy(aBlock);

    v33 = v29;
    v34 = v31;
    static DispatchQoS.unspecified.getter();
    v45 = MEMORY[0x277D84F90];
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v35 = v41;
    v36 = v37;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v12, v35, v32);
    _Block_release(v32);

    (*(v44 + 8))(v35, v36);
    (*(v40 + 8))(v12, v42);
    (*(v18 + 8))(v27, v17);
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:)(uint64_t a1, void *a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = a2;
  MEMORY[0x24C1FB090]();
  if (*((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  dispatch_group_leave(a3);
}

void closure #2 in closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:)(void *a1)
{
  v2 = [a1 delegate];
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      type metadata accessor for URL();
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v3 documentBrowser:a1 didPickDocumentsAtURLs:isa];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

double closure #4 in closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6, v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = *(a1 + 16);
    if (v12)
    {
      v15 = *(v7 + 16);
      v13 = v7 + 16;
      v14 = v15;
      v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v17 = *(v13 + 56);
      v15(v11, v16, v6, v9);
      while (1)
      {
        swift_beginAccess();
        v19 = *(a2 + 16);
        if (*(v19 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v21 & 1) != 0))
        {
          v22 = *(*(v19 + 56) + v20);
          swift_endAccess();
          if (v22)
          {
            URL.stopAccessingSecurityScopedResource()();
          }
        }

        else
        {
          swift_endAccess();
        }

        (*(v13 - 8))(v11, v6);
        v16 += v17;
        if (!--v12)
        {
          break;
        }

        v14(v11, v16, v6, v18);
      }
    }
  }

  v23 = swift_allocObject();
  v24 = v29;
  v25 = v30;
  *(v23 + 16) = v29;
  *(v23 + 24) = v25;
  v26 = v24;

  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in closure #4 in closure #1 in DOCFullDocumentManagerViewController.didConfirmPick(in:)(void *a1, uint64_t a2)
{
  v24 = type metadata accessor for URL();
  v4 = *(v24 - 8);
  v6 = MEMORY[0x28223BE20](v24, v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 delegate];
  if (v9)
  {
    v10 = v9;
    if ([v9 respondsToSelector_])
    {
      swift_beginAccess();
      v11 = *(a2 + 16);
      if (v11 >> 62)
      {
        v12 = __CocoaSet.count.getter();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v12)
      {
        v22 = v10;
        v23 = a1;
        v25 = MEMORY[0x277D84F90];

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 & ~(v12 >> 63), 0);
        if (v12 < 0)
        {
          __break(1u);
          return;
        }

        v13 = 0;
        v14 = v25;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x24C1FC540](v13, v11);
          }

          else
          {
            v15 = *(v11 + 8 * v13 + 32);
          }

          v16 = v15;
          v17 = [v15 url];
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v25 = v14;
          v19 = *(v14 + 16);
          v18 = *(v14 + 24);
          if (v19 >= v18 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
            v14 = v25;
          }

          ++v13;
          *(v14 + 16) = v19 + 1;
          (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, v8, v24);
        }

        while (v12 != v13);

        v10 = v22;
        a1 = v23;
      }

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v10 documentBrowser:a1 didPickDocumentsAtURLs:isa];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

objc_class *DOCFullDocumentManagerViewController.pickerOperationTitle(for:useShortTitle:)(void *a1, char a2)
{
  v4 = DOCFullDocumentManagerViewController._pickerOperation(for:)(a1);
  v5 = [v2 configuration];
  v6 = [v5 interactionMode];

  if (v6 == 2 || (v17 = [v2 configuration], v18 = objc_msgSend(v17, sel_interactionMode), v17, v18 == 3) && (_anyFileNotInFileProvider #1 () in DOCFullDocumentManagerViewController.pickerOperationTitle(for:useShortTitle:)(v2), (v19 & 1) != 0))
  {
    result = _DocumentManagerBundle();
    v8 = result;
    if (a2)
    {
      if (result)
      {
        v21 = 0x8000000249BD7580;
        v9 = 0x617A696C61636F4CLL;
        v10 = 0xEB00000000656C62;
        v11 = 0xD00000000000001BLL;
        v12 = 0x8000000249BD7560;
        v13 = 0xD00000000000003CLL;
        v14.super.isa = v8;
        v15 = 1702256979;
        v16 = 0xE400000000000000;
        goto LABEL_18;
      }

      __break(1u);
    }

    else if (result)
    {
      v21 = 0x8000000249BD7530;
      v9 = 0x617A696C61636F4CLL;
      v10 = 0xEB00000000656C62;
      v15 = 0x73612065766153;
      v11 = 0xD000000000000023;
      v12 = 0x8000000249BD7500;
      v13 = 0xD00000000000002BLL;
      v14.super.isa = v8;
      v16 = 0xE700000000000000;
      goto LABEL_18;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = _DocumentManagerBundle();
  v8 = result;
  if (v4 == 3)
  {
    if (!result)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v21 = 0x8000000249BD7490;
    v9 = 0x617A696C61636F4CLL;
    v10 = 0xEB00000000656C62;
    v13 = 0xD000000000000026;
    v11 = 1852141647;
    v12 = 0xE400000000000000;
    v14.super.isa = v8;
    v15 = 0;
    v16 = 0xE000000000000000;
LABEL_18:
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, *&v9, v14, *&v15, *&v13)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (v4 == 1)
  {
    if (result)
    {
      v21 = 0x8000000249BD74E0;
      v9 = 0x617A696C61636F4CLL;
      v10 = 0xEB00000000656C62;
      v11 = 0xD00000000000001BLL;
      v12 = 0x8000000249BD74C0;
      v14.super.isa = v8;
      v15 = 2037411651;
      v16 = 0xE400000000000000;
LABEL_17:
      v13 = 0xD00000000000001ALL;
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  if (result)
  {
    v21 = 0x8000000249BD7470;
    v9 = 0x617A696C61636F4CLL;
    v10 = 0xEB00000000656C62;
    v11 = 1702260557;
    v12 = 0xE400000000000000;
    v14.super.isa = v8;
    v15 = 0;
    v16 = 0xE000000000000000;
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
  return result;
}

void _anyFileNotInFileProvider #1 () in DOCFullDocumentManagerViewController.pickerOperationTitle(for:useShortTitle:)(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v23 - v10;
  v12 = [a1 pickerContext];
  if (!v12 || (v13 = v12, v14 = [v12 urlsToSave], v13, !v14))
  {
    v22 = 1;
    goto LABEL_10;
  }

  v24 = v11;
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = *(v15 + 16);
  if (!v16)
  {
LABEL_8:

    v22 = 1;
    v11 = v24;
LABEL_10:
    (*(v3 + 56))(v11, v22, 1, v2);
    outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return;
  }

  v17 = 0;
  while (v17 < *(v15 + 16))
  {
    (*(v3 + 16))(v6, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v2);
    URL._bridgeToObjectiveC()(v18);
    v20 = v19;
    v21 = FPURLMightBeInFileProvider();

    if (!v21)
    {

      v11 = v24;
      (*(v3 + 32))(v24, v6, v2);
      v22 = 0;
      goto LABEL_10;
    }

    ++v17;
    (*(v3 + 8))(v6, v2);
    if (v16 == v17)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t DOCFullDocumentManagerViewController._pickerOperation(for:)(void *a1)
{
  v4 = v1;
  v6 = [v1 pickerFilenameView];
  if (v6)
  {
    v7 = v6;
    v2 = (*((*MEMORY[0x277D85000] & *v6) + 0x108))();
    v9 = v8;

    if (v9)
    {
      v10 = String.count.getter();

      if (!v10)
      {
        return 0;
      }
    }
  }

  swift_getObjectType();
  if (![a1 canPerform_])
  {
    return 0;
  }

  v11 = &selRef_removeFromSuperlayer;
  v12 = [v4 pickerContext];
  if (v12)
  {
    v2 = v12;
    v13 = [v12 urlsToSave];

    if (v13)
    {

      v14 = [v4 pickerContext];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 utisToSave];

        v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = DOCNode.fpfs_syncFetchFPItem()();
        if (!v17)
        {
          goto LABEL_125;
        }

        v2 = v17;
        v18 = [objc_opt_self() defaultManager];

        isa = Array._bridgeToObjectiveC()().super.isa;

        v20 = [v18 eligibleActionsForDroppingUTIs:isa underItem:v2];

        type metadata accessor for FPAction(0);
        v22 = v21;
        v168 = _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction, &protocol conformance descriptor for FPAction);
        v169 = v22;
        static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = [objc_opt_self() defaultPermission];
        v24 = [v4 configuration];
        LODWORD(v11) = [v23 canAppWithConfiguration:v24 handleNode:a1];

        if (one-time initialization token for UI == -1)
        {
LABEL_10:
          v25 = type metadata accessor for Logger();
          v26 = __swift_project_value_buffer(v25, static Logger.UI);

          swift_unknownObjectRetain();

          v170 = v26;
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.debug.getter();

          swift_unknownObjectRelease();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            LODWORD(v166) = v11;
            v11 = swift_slowAlloc();
            v171[0] = v11;
            *v29 = 136446978;
            *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BD75C0, v171);
            *(v29 + 12) = 2082;
            v30 = [a1 description];
            v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v167 = v2;
            v33 = v32;

            v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v171);

            *(v29 + 14) = v34;
            *(v29 + 22) = 2082;
            v35 = MEMORY[0x24C1FB0D0](v3, MEMORY[0x277D837D0]);
            v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v171);

            *(v29 + 24) = v37;
            *(v29 + 32) = 2082;
            v38 = Set.description.getter();
            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v171);

            *(v29 + 34) = v40;
            v2 = v167;
            _os_log_impl(&dword_2493AC000, v27, v28, "%{public}s: %{public}s eligibleActions for these UTIs %{public}s %{public}s", v29, 0x2Au);
            swift_arrayDestroy();
            v41 = v11;
            LODWORD(v11) = v166;
            MEMORY[0x24C1FE850](v41, -1, -1);
            MEMORY[0x24C1FE850](v29, -1, -1);
          }

          v42 = [v4 configuration];
          v43 = [v42 interactionMode];

          if (v43 > 2)
          {
            if (v43 == 3)
            {

              v74 = Logger.logObject.getter();
              v75 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v74, v75))
              {
                v76 = swift_slowAlloc();
                v77 = swift_slowAlloc();
                v171[0] = v77;
                *v76 = 136446210;
                *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BD75C0, v171);
                _os_log_impl(&dword_2493AC000, v74, v75, "%{public}s: expecting reparent", v76, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v77);
                MEMORY[0x24C1FE850](v77, -1, -1);
                MEMORY[0x24C1FE850](v76, -1, -1);
              }

              v78 = specialized Set.contains(_:)();

              if (v78 & v11)
              {
                return 2;
              }

              else
              {
                return 0;
              }
            }
          }

          else
          {
            if (v43 == 2)
            {

              v44 = Logger.logObject.getter();
              v45 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v44, v45))
              {
                v46 = swift_slowAlloc();
                v47 = swift_slowAlloc();
                v171[0] = v47;
                *v46 = 136446210;
                *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BD75C0, v171);
                _os_log_impl(&dword_2493AC000, v44, v45, "%{public}s: expecting copy", v46, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v47);
                MEMORY[0x24C1FE850](v47, -1, -1);
                MEMORY[0x24C1FE850](v46, -1, -1);
              }

              v48 = specialized Set.contains(_:)();

              return v48 & v11 & 1;
            }

            if (v43)
            {
              if (v43 != 1)
              {
                goto LABEL_163;
              }

              v164 = 0;
              v158 = 325;
            }

            else
            {
              v164 = 0;
              v158 = 323;
            }

            v163 = v158;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

LABEL_163:
          v159 = [v4 configuration];
          v160 = [v159 interactionMode];

          type metadata accessor for DOCDocumentInteractionMode(0);
          v171[3] = v161;
          v171[0] = v160;
          doc_fatalErrorUnrecognizedEnumValueEncountered(_:)(v171);
        }

LABEL_150:
        swift_once();
        goto LABEL_10;
      }
    }
  }

  v50 = [v4 pickerContext];
  if (v50)
  {
    v51 = v50;
    v52 = [v50 nodesToMove];

    if (v52)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v53 >> 62)
      {
        if (__CocoaSet.count.getter())
        {
          goto LABEL_21;
        }
      }

      else if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_21:
        if ((v53 & 0xC000000000000001) != 0)
        {
          goto LABEL_148;
        }

        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v54 = *(v53 + 32);
          swift_unknownObjectRetain();
          while (1)
          {
            v55 = objc_opt_self();
            v56 = &selRef__setLocationsInBrowseTab_;
            v57 = [v55 defaultPermission];
            v58 = [v4 configuration];
            v59 = [v57 userActionForConfiguration_];

            v60 = [v55 defaultPermission];
            LODWORD(v57) = [v60 canNode:v54 performAction:v59 node:a1];

            if (!v57)
            {
              break;
            }

            objc_opt_self();
            v61 = swift_dynamicCastObjCClass();
            v167 = v54;
            if (!v61)
            {

              objc_opt_self();
              v79 = swift_dynamicCastObjCClass();
              if (v79)
              {
                v58 = v79;
                swift_unknownObjectRetain();
                v80 = [v4 *(v11 + 3160)];
                if (v80)
                {
                  v81 = v80;
                  v53 = DOCPickerContext.fpfs_allFPItemsToMove()();

                  if (v53)
                  {
                    if (v53 >> 62)
                    {
                      v82 = __CocoaSet.count.getter();
                    }

                    else
                    {
                      v82 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    v83 = MEMORY[0x277D84F90];
                    if (!v82)
                    {
                      goto LABEL_75;
                    }

                    v171[0] = MEMORY[0x277D84F90];
                    specialized ContiguousArray.reserveCapacity(_:)();
                    if (v82 < 0)
                    {
                      __break(1u);
LABEL_156:
                      __break(1u);
                    }

                    else
                    {
                      v84 = 0;
                      do
                      {
                        if ((v53 & 0xC000000000000001) != 0)
                        {
                          v85 = MEMORY[0x24C1FC540](v84, v53);
                        }

                        else
                        {
                          v85 = *(v53 + 8 * v84 + 32);
                        }

                        v86 = v85;
                        ++v84;
                        v87 = [v85 parentItemID];

                        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                        specialized ContiguousArray._endMutation()();
                      }

                      while (v82 != v84);
                      v83 = v171[0];
LABEL_75:
                      v89 = [v58 itemID];
                      v171[0] = v89;
                      MEMORY[0x28223BE20](v89, v90);
                      v163 = v171;
                      v91 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v162, v83);

                      if (v91)
                      {
                        swift_unknownObjectRelease();
LABEL_56:
                        swift_unknownObjectRelease();
LABEL_125:

                        return 0;
                      }

                      v92 = [objc_opt_self() defaultManager];
                      v56 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
                      v93 = Array._bridgeToObjectiveC()().super.isa;
                      v94 = [v92 eligibleActionsForDroppingItems:v93 underItem:v58];

                      type metadata accessor for FPAction(0);
                      v59 = v95;
                      v11 = _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction, &protocol conformance descriptor for FPAction);
                      static Set._unconditionallyBridgeFromObjectiveC(_:)();

                      if (one-time initialization token for UI == -1)
                      {
LABEL_78:
                        v96 = type metadata accessor for Logger();
                        __swift_project_value_buffer(v96, static Logger.UI);
                        swift_unknownObjectRetain();

                        v97 = Logger.logObject.getter();
                        v98 = static os_log_type_t.debug.getter();

                        swift_unknownObjectRelease();
                        if (os_log_type_enabled(v97, v98))
                        {
                          v99 = swift_slowAlloc();
                          v100 = swift_slowAlloc();
                          v170 = v11;
                          v101 = v100;
                          v102 = swift_slowAlloc();
                          v169 = v59;
                          v103 = v102;
                          v171[0] = v102;
                          *v99 = 136446978;
                          *(v99 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BD75C0, v171);
                          *(v99 + 12) = 2114;
                          *(v99 + 14) = v58;
                          *v101 = v58;
                          *(v99 + 22) = 2082;
                          swift_unknownObjectRetain();
                          v104 = MEMORY[0x24C1FB0D0](v53, v56);
                          v106 = v105;

                          v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, v171);

                          *(v99 + 24) = v107;
                          *(v99 + 32) = 2082;
                          v108 = Set.description.getter();
                          v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, v171);

                          *(v99 + 34) = v110;
                          _os_log_impl(&dword_2493AC000, v97, v98, "%{public}s -- destination: %{public}@, sources: %{public}sexpecting reparent in eligibleActions: %{public}s", v99, 0x2Au);
                          outlined destroy of CharacterSet?(v101, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                          MEMORY[0x24C1FE850](v101, -1, -1);
                          swift_arrayDestroy();
                          MEMORY[0x24C1FE850](v103, -1, -1);
                          MEMORY[0x24C1FE850](v99, -1, -1);
                        }

                        else
                        {
                        }

                        if (specialized Set.contains(_:)())
                        {
                          swift_unknownObjectRelease();
                          swift_unknownObjectRelease();
LABEL_129:

                          return 2;
                        }

                        else
                        {
                          v145 = specialized Set.contains(_:)();
                          swift_unknownObjectRelease();

                          swift_unknownObjectRelease();
                          return (v145 & 1) != 0;
                        }
                      }
                    }

                    swift_once();
                    goto LABEL_78;
                  }
                }

                swift_unknownObjectRelease();
              }

LABEL_32:
              swift_unknownObjectRelease();
              return 0;
            }

            v62 = v61;
            swift_unknownObjectRetain();
            v63 = [v4 *(v11 + 3160)];
            if (!v63 || (v64 = v63, v4 = DOCPickerContext.fpfs_allFINodesToMove()(), v64, !v4))
            {
              swift_unknownObjectRelease();
              goto LABEL_56;
            }

            v170 = v62;
            v165 = v4 >> 62;
            if (!(v4 >> 62))
            {
              v166 = v4 & 0xFFFFFFFFFFFFFF8;
              v59 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_30;
            }

LABEL_153:
            v166 = v4 & 0xFFFFFFFFFFFFFF8;
            v59 = __CocoaSet.count.getter();
LABEL_30:
            v11 = 0;
            v168 = v4 & 0xC000000000000001;
            v169 = v4;
            while (1)
            {
              if (v59 == v11)
              {

                if (v165)
                {
                  v88 = __CocoaSet.count.getter();
                }

                else
                {
                  v88 = *(v166 + 16);
                }

                v111 = MEMORY[0x277D84F90];
                if (v88)
                {
                  v171[0] = MEMORY[0x277D84F90];
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v88 & ~(v88 >> 63), 0);
                  if (v88 < 0)
                  {
                    goto LABEL_156;
                  }

                  v112 = 0;
                  v111 = v171[0];
                  do
                  {
                    if (v168)
                    {
                      v113 = MEMORY[0x24C1FC540](v112, v4);
                    }

                    else
                    {
                      v113 = *(v4 + 8 * v112 + 32);
                    }

                    v114 = v113;
                    v115 = [v113 nodePermissions_];

                    v171[0] = v111;
                    v56 = *(v111 + 16);
                    v116 = *(v111 + 24);
                    if (v56 >= v116 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v116 > 1), v56 + 1, 1);
                      v111 = v171[0];
                    }

                    ++v112;
                    *(v111 + 16) = v56 + 1;
                    *(v111 + 4 * v56 + 32) = v115;
                    v4 = v169;
                  }

                  while (v88 != v112);
                }

                v53 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo11PermissionsV_SayAEGTt0g5Tf4g_n(v111);

                if (one-time initialization token for UI != -1)
                {
                  swift_once();
                }

                v117 = type metadata accessor for Logger();
                __swift_project_value_buffer(v117, static Logger.UI);
                swift_unknownObjectRetain();

                v118 = Logger.logObject.getter();
                v119 = static os_log_type_t.debug.getter();

                swift_unknownObjectRelease();
                if (os_log_type_enabled(v118, v119))
                {
                  v58 = v4;
                  v120 = swift_slowAlloc();
                  v56 = swift_slowAlloc();
                  v121 = swift_slowAlloc();
                  v171[0] = v121;
                  *v120 = 136446978;
                  *(v120 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BD75C0, v171);
                  *(v120 + 12) = 2114;
                  v122 = v170;
                  *(v120 + 14) = v170;
                  *v56 = v122;
                  *(v120 + 22) = 2082;
                  v123 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);
                  swift_unknownObjectRetain();
                  v124 = MEMORY[0x24C1FB0D0](v58, v123);
                  v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, v171);

                  *(v120 + 24) = v126;
                  *(v120 + 32) = 2082;
                  type metadata accessor for Permissions(0);
                  _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Permissions and conformance Permissions, type metadata accessor for Permissions, &protocol conformance descriptor for Permissions);
                  v127 = Set.description.getter();
                  v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v128, v171);

                  *(v120 + 34) = v129;
                  _os_log_impl(&dword_2493AC000, v118, v119, "%{public}s -- destination: %{public}@, sources: %{public}s, permissions: %{public}s", v120, 0x2Au);
                  outlined destroy of CharacterSet?(v56, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  MEMORY[0x24C1FE850](v56, -1, -1);
                  swift_arrayDestroy();
                  MEMORY[0x24C1FE850](v121, -1, -1);
                  MEMORY[0x24C1FE850](v120, -1, -1);
                }

                if (specialized Set.contains(_:)(0, v53))
                {
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
LABEL_124:

                  goto LABEL_125;
                }

                v130 = 0;
                v4 = v53 + 56;
                v131 = 1 << *(v53 + 32);
                v132 = -1;
                if (v131 < 64)
                {
                  v132 = ~(-1 << v131);
                }

                v133 = v132 & *(v53 + 56);
                v134 = (v131 + 63) >> 6;
                do
                {
                  if (!v133)
                  {
                    while (1)
                    {
                      v135 = v130 + 1;
                      if (__OFADD__(v130, 1))
                      {
                        break;
                      }

                      if (v135 >= v134)
                      {

                        goto LABEL_110;
                      }

                      v133 = *(v4 + 8 * v135);
                      ++v130;
                      if (v133)
                      {
                        v130 = v135;
                        goto LABEL_106;
                      }
                    }

                    __break(1u);
                    goto LABEL_152;
                  }

                  v135 = v130;
LABEL_106:
                  v136 = __clz(__rbit64(v133));
                  v133 &= v133 - 1;
                }

                while ((*(*(v53 + 48) + ((v135 << 8) | (4 * v136))) & 2) == 0);
                v137 = isMoveAllowed #1 () in static FPItem.performDrop(_:underItem:alertPresenting:completion:)(v170, v169);

                if (v137)
                {
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  goto LABEL_129;
                }

LABEL_110:
                v138 = 0;
                v139 = 1 << *(v53 + 32);
                v140 = -1;
                if (v139 < 64)
                {
                  v140 = ~(-1 << v139);
                }

                v141 = v140 & *(v53 + 56);
                v142 = (v139 + 63) >> 6;
                while (v141)
                {
                  v143 = v138;
LABEL_119:
                  v144 = __clz(__rbit64(v141));
                  v141 &= v141 - 1;
                  if ((*(*(v53 + 48) + ((v143 << 8) | (4 * v144))) & 0x10000) != 0)
                  {

                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    return 1;
                  }
                }

                while (1)
                {
                  v143 = v138 + 1;
                  if (__OFADD__(v138, 1))
                  {
                    break;
                  }

                  if (v143 >= v142)
                  {

                    swift_unknownObjectRelease();
                    goto LABEL_32;
                  }

                  v141 = *(v4 + 8 * v143);
                  ++v138;
                  if (v141)
                  {
                    v138 = v143;
                    goto LABEL_119;
                  }
                }

LABEL_152:
                __break(1u);
                goto LABEL_153;
              }

              if (v168)
              {
                v66 = MEMORY[0x24C1FC540](v11, v4);
              }

              else
              {
                if (v11 >= *(v166 + 16))
                {
                  goto LABEL_147;
                }

                v66 = *(v4 + 8 * v11 + 32);
              }

              v67 = v66;
              if (__OFADD__(v11, 1))
              {
                break;
              }

              v56 = [v66 parent];
              v58 = v170;
              if (v56)
              {
                type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);
                swift_unknownObjectRetain();
                v68 = v56;
                v69 = static NSObject.== infix(_:_:)();
                swift_unknownObjectRelease();

                if (v69)
                {
                  swift_unknownObjectRelease();

                  goto LABEL_123;
                }
              }

              v70 = [v170 source];
              v71 = v70;
              if (v56)
              {
                if (v70)
                {
                  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);
                  v72 = v56;
                  v73 = static NSObject.== infix(_:_:)();

                  if (v73)
                  {
                    swift_unknownObjectRelease();

LABEL_123:
                    swift_unknownObjectRelease();
                    goto LABEL_124;
                  }
                }
              }

              else
              {
                if (!v70)
                {
                  swift_unknownObjectRelease();

                  goto LABEL_123;
                }
              }

              v65 = [v67 isOrIsAncestorOf_];

              ++v11;
              v4 = v169;
              if (v65)
              {
                swift_unknownObjectRelease();
                goto LABEL_123;
              }
            }

            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            v54 = MEMORY[0x24C1FC540](0, v53);
          }

          goto LABEL_32;
        }

        __break(1u);
        goto LABEL_150;
      }
    }
  }

  v146 = [v4 configuration];
  v147 = [v146 forPickingFolders];

  if (!v147)
  {
    return 0;
  }

  result = [v4 effectiveBrowserViewController];
  if (result)
  {
    v148 = result;
    v149 = MEMORY[0x277D85000];
    v150 = (*((*MEMORY[0x277D85000] & *result) + 0xE8))();

    result = 0;
    if (v150)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v151 = swift_dynamicCastClass();
      if (!v151)
      {

        return 0;
      }

      v152 = (*((*v149 & *v151) + 0xA68))();

      v153 = *&v152[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
      v154 = v153;

      if (v153 && (v155 = [v154 supportsPickingFolders], v154, v155))
      {
        v156 = [v4 configuration];
        v157 = [v156 interactionMode];

        if (v157 == 1)
        {
          return 3;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t DOCFullDocumentManagerViewController.pickerOperation(for:)(void *a1)
{
  v3 = DOCFullDocumentManagerViewController._pickerOperation(for:)(a1);
  if (_UISolariumEnabled())
  {
    v4 = [v1 pickerOperationTitleFor:a1 useShortTitle:0];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = [v1 pickerFilenameView];
    if (v8)
    {
      v9 = v8;
      (*((*MEMORY[0x277D85000] & *v8) + 0x128))(v5, v7);
    }

    else
    {
    }
  }

  return v3;
}

void closure #1 in DOCFullDocumentManagerViewController.saveLastUsedOpenSaveLocation(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v25[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v25[0] = 0;
    v7 = [objc_opt_self() archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v25];
    v8 = v25[0];
    if (v7)
    {
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      isa = Data._bridgeToObjectiveC()().super.isa;
      [a3 setLastUsedOpenSaveLocation_];

      v13 = [objc_opt_self() sharedStore];
      v14 = [v6 configuration];
      [v13 updateInterfaceState:a3 forConfiguration:v14];

      outlined consume of Data._Representation(v9, v11);
    }

    else
    {
      v15 = v8;
      v16 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for DocumentManager != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.DocumentManager);
      v18 = v16;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        v23 = v16;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v24;
        *v22 = v24;
        _os_log_impl(&dword_2493AC000, v19, v20, "Failed to store the last used save location: %@", v21, 0xCu);
        outlined destroy of CharacterSet?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x24C1FE850](v22, -1, -1);
        MEMORY[0x24C1FE850](v21, -1, -1);
      }

      else
      {
      }
    }
  }
}

void DOCFullDocumentManagerViewController.pickerFilenameView(_:didChangeText:)()
{
  v1 = [v0 effectiveBrowserViewController];
  if (v1)
  {
    v2 = v1;
    v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xE8))();

    if (v3)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      if (swift_dynamicCastClass())
      {
        specialized DOCItemCollectionViewController.updateOverlay(animated:)();
      }
    }
  }
}

void protocol witness for DOCPickerFilenameViewDelegate.pickerFilenameView(_:didChangeText:) in conformance DOCFullDocumentManagerViewController()
{
  v1 = [v0 effectiveBrowserViewController];
  if (v1)
  {
    v2 = v1;
    v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xE8))();

    if (v3)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      if (swift_dynamicCastClass())
      {
        specialized DOCItemCollectionViewController.updateOverlay(animated:)();
      }
    }
  }
}

uint64_t outlined init with take of DOCOperationItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCOperationItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void specialized DOCFullDocumentManagerViewController.saveLastUsedOpenSaveLocation(_:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedStore];
  v13 = [a2 configuration];
  v14 = [v12 interfaceStateForConfiguration_];

  if (v14)
  {
    v15 = DOCNode.sourceIdentifier.getter();
    v27 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v15 node:a1];

    if ([v27 canBeRestored])
    {
      v16 = [a2 hierarchyController];
      v24 = *&v16[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_lastVisitedLocationSavingQueue];

      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      v19 = v27;
      v18[2] = v17;
      v18[3] = v19;
      v18[4] = v14;
      aBlock[4] = partial apply for closure #1 in DOCFullDocumentManagerViewController.saveLastUsedOpenSaveLocation(_:);
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_38;
      v20 = _Block_copy(aBlock);

      v27 = v27;
      v23 = v14;
      static DispatchQoS.unspecified.getter();
      v28 = MEMORY[0x277D84F90];
      _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v21 = v24;
      MEMORY[0x24C1FB9A0](0, v11, v7, v20);
      _Block_release(v20);

      (*(v26 + 8))(v7, v4);
      (*(v25 + 8))(v11, v8);
    }

    else
    {

      v22 = v27;
    }
  }
}

uint64_t _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of DOCSmartFolderInputFile(uint64_t a1)
{
  v2 = type metadata accessor for DOCSmartFolderInputFile(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchFileShortcutsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v53 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v51 = *(v1 - 8);
  v52 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v50 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v49 = &v38 - v6;
  v7 = type metadata accessor for String.IntentInputOptions.CapitalizationType();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.IntentInputOptions.KeyboardType();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10AppIntentsE18IntentInputOptionsVSgMd, &_sSS10AppIntentsE18IntentInputOptionsVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v42 = &v38 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v40 = &v38 - v18;
  v19 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v24 - 8, v25);
  v26 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v26 - 8, v27);
  v39 = type metadata accessor for LocalizedStringResource();
  v28 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v29);
  v38 = &v38 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySSGMd, &_s10AppIntents15IntentParameterCySSGMR);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31 = *MEMORY[0x277CC9110];
  v32 = *(v20 + 104);
  v32(v23, v31, v19);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32(v23, v31, v19);
  v33 = v40;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v28 + 56))(v33, 0, 1, v39);
  v54 = xmmword_249BA62B0;
  (*(v44 + 104))(v43, *MEMORY[0x277CBA528], v45);
  (*(v47 + 104))(v46, *MEMORY[0x277CBA530], v48);
  v34 = v42;
  String.IntentInputOptions.init(keyboardType:capitalizationType:multiline:autocorrect:smartQuotes:smartDashes:)();
  v35 = type metadata accessor for String.IntentInputOptions();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  v36 = type metadata accessor for IntentDialog();
  (*(*(v36 - 8) + 56))(v49, 1, 1, v36);
  (*(v51 + 104))(v50, *MEMORY[0x277CBA308], v52);
  result = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  *v53 = result;
  return result;
}

uint64_t one-time initialization function for title(uint64_t a1, double a2)
{
  return one-time initialization function for title(a2, a1, static SearchFileShortcutsIntent.title, "SEARCH_FILE_INTENT_TITLE", 24);
}

{
  return one-time initialization function for title(a2, a1, static SearchInBrowserIntent.title, "SEARCH_FILE_ASSISTANT_INTENT_TITLE", 34);
}

uint64_t one-time initialization function for description(uint64_t a1)
{
  return one-time initialization function for description(a1, static SearchFileShortcutsIntent.description, "SEARCH_FILE_INTENT_DESCRIPTION", 30);
}

{
  return one-time initialization function for description(a1, static SearchInBrowserIntent.description, "SEARCH_FILE_ASSISTANT_INTENT_DESCRIPTION", 40);
}

double key path setter for SearchFileShortcutsIntent.searchPhrase : SearchFileShortcutsIntent(uint64_t *a1, uint64_t *a2)
{

  IntentParameter.wrappedValue.setter();

  return result;
}

uint64_t (*SearchFileShortcutsIntent.searchPhrase.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return SearchFileShortcutsIntent.searchPhrase.modify;
}

uint64_t static SearchFileShortcutsIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables25SearchFileShortcutsIntentVGMd, &_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables25SearchFileShortcutsIntentVGMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables25SearchFileShortcutsIntentV_GMd, &_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables25SearchFileShortcutsIntentV_GMR);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BD7770;
  v4._countAndFlagsBits = 0xD000000000000021;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables25SearchFileShortcutsIntentV10AppIntents0I9ParameterCySSGGMd, &_ss7KeyPathCy26DocumentManagerExecutables25SearchFileShortcutsIntentV10AppIntents0I9ParameterCySSGGMR);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t lazy protocol witness table accessor for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent()
{
  result = lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent;
  if (!lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent;
  if (!lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent;
  if (!lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent;
  if (!lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFileShortcutsIntent and conformance SearchFileShortcutsIntent);
  }

  return result;
}

uint64_t one-time initialization function for authenticationPolicy(uint64_t a1)
{
  return one-time initialization function for authenticationPolicy(a1, static SearchFileShortcutsIntent.authenticationPolicy);
}

{
  return one-time initialization function for authenticationPolicy(a1, static SearchInBrowserIntent.authenticationPolicy);
}

uint64_t (*static SearchFileShortcutsIntent.authenticationPolicy.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_project_value_buffer(v1, static SearchFileShortcutsIntent.authenticationPolicy);
  swift_beginAccess();
  return DOCSmartFolderManager.defaultSaveLocationItemId.modify;
}

uint64_t SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = *v2;
  v3[7] = type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x2822009F8](SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:), v5, v4);
}

uint64_t SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:)()
{
  v17 = v0;
  IntentParameter.wrappedValue.getter();
  v2 = v0[2];
  v1 = v0[3];
  v0[11] = v1;
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.AppIntents);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, 0x8000000249BD77A0, &v16);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v1, &v16);
    _os_log_impl(&dword_2493AC000, v4, v5, "%s Search action initiated from Link with search phrase %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v6, -1, -1);
  }

  else
  {
  }

  v8 = v0[5];
  v9 = static MainActor.shared.getter();
  v0[12] = v9;
  v10 = swift_task_alloc();
  v0[13] = v10;
  v10[2] = v8;
  v10[3] = v2;
  v10[4] = v1;
  v11 = swift_task_alloc();
  v0[14] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOA3EGMd, &_s10AppIntents21IntentResultContainerVys5NeverOA3EGMR);
  *v11 = v0;
  v11[1] = SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:);
  v13 = v0[4];
  v14 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v13, v9, v14, 0xD00000000000002DLL, 0x8000000249BD77A0, partial apply for closure #1 in SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:), v10, v12);
}

{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:);
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10AppIntents21IntentResultContainerVys5NeverOA3EGs5Error_pGMd, &_sScCy10AppIntents21IntentResultContainerVys5NeverOA3EGs5Error_pGMR);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = aBlock - v11;
  (*(v8 + 16))(aBlock - v11, a1, v7, v10);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  v15 = DOCFullDocumentManagerViewController.postSearchInitializationBuffer.getter();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = partial apply for closure #1 in closure #1 in SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:);
  v17[4] = v14;
  v17[5] = a3;
  v17[6] = a4;
  aBlock[4] = closure #1 in DOCFullDocumentManagerViewController.search(forQuery:completion:)partial apply;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_41;
  v18 = _Block_copy(aBlock);

  [v15 performAfterSearchInitialization_];
  _Block_release(v18);
}

uint64_t SearchFileShortcutsIntent.perform()(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](SearchFileShortcutsIntent.perform(), v3, v2);
}

uint64_t (*protocol witness for SearchIntent.searchPhrase.modify in conformance SearchFileShortcutsIntent(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return SearchFileShortcutsIntent.searchPhrase.modify;
}

uint64_t protocol witness for static AppIntent.parameterSummary.getter in conformance SearchFileShortcutsIntent(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables25SearchFileShortcutsIntentVGMd, &_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables25SearchFileShortcutsIntentVGMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables25SearchFileShortcutsIntentV_GMd, &_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables25SearchFileShortcutsIntentV_GMR);
  MEMORY[0x28223BE20](v4, v5);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x8000000249BD7770;
  v6._countAndFlagsBits = 0xD000000000000021;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables25SearchFileShortcutsIntentV10AppIntents0I9ParameterCySSGGMd, &_ss7KeyPathCy26DocumentManagerExecutables25SearchFileShortcutsIntentV10AppIntents0I9ParameterCySSGGMR);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v7);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t protocol witness for AppIntent.perform() in conformance SearchFileShortcutsIntent(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](SearchFileShortcutsIntent.perform(), v3, v2);
}

uint64_t SearchInBrowserIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v30 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v29 = &v26 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v17 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v27 = type metadata accessor for LocalizedStringResource();
  v19 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v20);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCyAA20StringSearchCriteriaVGMd, &_s10AppIntents15IntentParameterCyAA20StringSearchCriteriaVGMR);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21 = *MEMORY[0x277CC9110];
  v22 = *(v11 + 104);
  v22(v14, v21, v10);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22(v14, v21, v10);
  v23 = v29;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v19 + 56))(v23, 0, 1, v27);
  v24 = type metadata accessor for IntentDialog();
  (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
  (*(v32 + 104))(v31, *MEMORY[0x277CBA308], v33);
  result = IntentParameter<>.init(title:description:requestValueDialog:inputConnectionBehavior:)();
  *v34 = result;
  return result;
}

uint64_t one-time initialization function for searchScopes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10AppIntents17StringSearchScopeOGMd, &_ss23_ContiguousArrayStorageCy10AppIntents17StringSearchScopeOGMR);
  v0 = type metadata accessor for StringSearchScope();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249B9A480;
  result = (*(v1 + 104))(v3 + v2, *MEMORY[0x277CB9FF8], v0);
  static SearchInBrowserIntent.searchScopes = v3;
  return result;
}

uint64_t static SearchInBrowserIntent.searchScopes.getter()
{
  if (one-time initialization token for searchScopes != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for title(double a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v13 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v15 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v15, a3);
  __swift_project_value_buffer(v15, a3);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

uint64_t one-time initialization function for description(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a3;
  v22[2] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v22 - v7;
  v22[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v22[0] - 8);
  MEMORY[0x28223BE20](v22[0], v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v15 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v17 = type metadata accessor for LocalizedStringResource();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v20 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v20, a2);
  __swift_project_value_buffer(v20, a2);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277CC9110], v22[0]);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v18 + 56))(v8, 1, 1, v17);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

uint64_t static SearchFileShortcutsIntent.title.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

double key path setter for SearchInBrowserIntent.criteria : SearchInBrowserIntent(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for StringSearchCriteria();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v15 - v11;
  v13 = *(v4 + 16);
  v13(&v15 - v11, a1, v3, v10);
  (v13)(v7, v12, v3);

  IntentParameter.wrappedValue.setter();
  (*(v4 + 8))(v12, v3);

  return result;
}

uint64_t SearchInBrowserIntent.criteria.setter(uint64_t a1)
{
  v2 = type metadata accessor for StringSearchCriteria();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v5);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SearchInBrowserIntent.criteria.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return SearchFileShortcutsIntent.searchPhrase.modify;
}

uint64_t static SearchInBrowserIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables21SearchInBrowserIntentVGMd, &_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables21SearchInBrowserIntentVGMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables21SearchInBrowserIntentV_GMd, &_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables21SearchInBrowserIntentV_GMR);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type SearchInBrowserIntent and conformance SearchInBrowserIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BD7850;
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables21SearchInBrowserIntentV10AppIntents0I9ParameterCyAF06StringF8CriteriaVGGMd, &_ss7KeyPathCy26DocumentManagerExecutables21SearchInBrowserIntentV10AppIntents0I9ParameterCyAF06StringF8CriteriaVGGMR);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t one-time initialization function for authenticationPolicy(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  v5 = *MEMORY[0x277CBA3F8];
  v6 = *(*(v3 - 8) + 104);

  return v6(v4, v5, v3);
}

uint64_t static SearchFileShortcutsIntent.authenticationPolicy.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for IntentAuthenticationPolicy();
  v7 = __swift_project_value_buffer(v6, a2);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a4, v7, v6);
}

uint64_t static SearchFileShortcutsIntent.authenticationPolicy.setter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for IntentAuthenticationPolicy();
  v7 = __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  v8 = *(v6 - 8);
  (*(v8 + 24))(v7, a1, v6);
  swift_endAccess();
  return (*(v8 + 8))(a1, v6);
}

uint64_t (*static SearchInBrowserIntent.authenticationPolicy.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_project_value_buffer(v1, static SearchInBrowserIntent.authenticationPolicy);
  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

uint64_t key path getter for static SearchFileShortcutsIntent.authenticationPolicy : SearchFileShortcutsIntent.Type@<X0>(void *a1@<X3>, uint64_t a2@<X4>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for IntentAuthenticationPolicy();
  v7 = __swift_project_value_buffer(v6, a2);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a4, v7, v6);
}

uint64_t key path setter for static SearchFileShortcutsIntent.authenticationPolicy : SearchFileShortcutsIntent.Type(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (*a5 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for IntentAuthenticationPolicy();
  v10 = __swift_project_value_buffer(v9, a6);
  swift_beginAccess();
  (*(*(v9 - 8) + 24))(v10, a1, v9);
  return swift_endAccess();
}

uint64_t SearchInBrowserIntent.startSearch(inFullDocumentManagerController:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = type metadata accessor for StringSearchCriteria();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *v2;
  v3[6] = v5;
  v3[7] = v6;
  v3[8] = type metadata accessor for MainActor();
  v3[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[10] = v8;
  v3[11] = v7;

  return MEMORY[0x2822009F8](SearchInBrowserIntent.startSearch(inFullDocumentManagerController:), v8, v7);
}

uint64_t SearchInBrowserIntent.startSearch(inFullDocumentManagerController:)()
{
  v21 = v0;
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  IntentParameter.wrappedValue.getter();
  v4 = StringSearchCriteria.term.getter();
  v6 = v5;
  v0[12] = v5;
  (*(v3 + 8))(v1, v2);
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.AppIntents);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, 0x8000000249BD77A0, &v20);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v6, &v20);
    _os_log_impl(&dword_2493AC000, v8, v9, "%s Search action initiated from Link with search phrase %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  else
  {
  }

  v12 = v0[3];
  v13 = static MainActor.shared.getter();
  v0[13] = v13;
  v14 = swift_task_alloc();
  v0[14] = v14;
  v14[2] = v12;
  v14[3] = v4;
  v14[4] = v6;
  v15 = swift_task_alloc();
  v0[15] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOA3EGMd, &_s10AppIntents21IntentResultContainerVys5NeverOA3EGMR);
  *v15 = v0;
  v15[1] = SearchInBrowserIntent.startSearch(inFullDocumentManagerController:);
  v17 = v0[2];
  v18 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v17, v13, v18, 0xD00000000000002DLL, 0x8000000249BD77A0, partial apply for closure #1 in SearchInBrowserIntent.startSearch(inFullDocumentManagerController:), v14, v16);
}

{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = SearchInBrowserIntent.startSearch(inFullDocumentManagerController:);
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = SearchInBrowserIntent.startSearch(inFullDocumentManagerController:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in SearchInBrowserIntent.startSearch(inFullDocumentManagerController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10AppIntents21IntentResultContainerVys5NeverOA3EGs5Error_pGMd, &_sScCy10AppIntents21IntentResultContainerVys5NeverOA3EGs5Error_pGMR);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = aBlock - v11;
  (*(v8 + 16))(aBlock - v11, a1, v7, v10);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  v15 = DOCFullDocumentManagerViewController.postSearchInitializationBuffer.getter();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = partial apply for closure #1 in closure #1 in SearchInBrowserIntent.startSearch(inFullDocumentManagerController:);
  v17[4] = v14;
  v17[5] = a3;
  v17[6] = a4;
  aBlock[4] = partial apply for closure #1 in DOCFullDocumentManagerViewController.search(forQuery:completion:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_39;
  v18 = _Block_copy(aBlock);

  [v15 performAfterSearchInitialization_];
  _Block_release(v18);
}

uint64_t closure #1 in closure #1 in SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:)(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOA3EGMd, &_s10AppIntents21IntentResultContainerVys5NeverOA3EGMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  if (a2)
  {
    v6 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10AppIntents21IntentResultContainerVys5NeverOA3EGs5Error_pGMd, &_sScCy10AppIntents21IntentResultContainerVys5NeverOA3EGs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    static IntentResult.result<>()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10AppIntents21IntentResultContainerVys5NeverOA3EGs5Error_pGMd, &_sScCy10AppIntents21IntentResultContainerVys5NeverOA3EGs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t SearchInBrowserIntent.perform()(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](SearchInBrowserIntent.perform(), v3, v2);
}

uint64_t SearchInBrowserIntent.perform()()
{

  static IntentResult.result<>()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for static ShowInAppSearchResultsIntent.searchScopes.getter in conformance SearchInBrowserIntent@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for searchScopes != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static SearchInBrowserIntent.searchScopes;
}

uint64_t protocol witness for ShowInAppSearchResultsIntent.criteria.setter in conformance SearchInBrowserIntent(uint64_t a1)
{
  v2 = type metadata accessor for StringSearchCriteria();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v5);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*protocol witness for ShowInAppSearchResultsIntent.criteria.modify in conformance SearchInBrowserIntent(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return protocol witness for ShowInAppSearchResultsIntent.criteria.modify in conformance SearchInBrowserIntent;
}

uint64_t protocol witness for static AppIntent.title.getter in conformance SearchFileShortcutsIntent@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for LocalizedStringResource();
  v8 = __swift_project_value_buffer(v7, a2);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t protocol witness for static AppIntent.authenticationPolicy.getter in conformance SearchFileShortcutsIntent@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for IntentAuthenticationPolicy();
  v7 = __swift_project_value_buffer(v6, a2);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a4, v7, v6);
}

uint64_t protocol witness for static AppIntent.parameterSummary.getter in conformance SearchInBrowserIntent(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables21SearchInBrowserIntentVGMd, &_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables21SearchInBrowserIntentVGMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables21SearchInBrowserIntentV_GMd, &_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables21SearchInBrowserIntentV_GMR);
  MEMORY[0x28223BE20](v4, v5);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x8000000249BD7850;
  v6._countAndFlagsBits = 0xD00000000000002BLL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables21SearchInBrowserIntentV10AppIntents0I9ParameterCyAF06StringF8CriteriaVGGMd, &_ss7KeyPathCy26DocumentManagerExecutables21SearchInBrowserIntentV10AppIntents0I9ParameterCyAF06StringF8CriteriaVGGMR);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v7);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t protocol witness for AppIntent.perform() in conformance SearchInBrowserIntent(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](SearchInBrowserIntent.perform(), v3, v2);
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance SearchInBrowserIntent(uint64_t a1, double a2)
{
  v3 = lazy protocol witness table accessor for type SearchInBrowserIntent and conformance SearchInBrowserIntent();

  return MEMORY[0x28210B538](a1, v3);
}

unint64_t lazy protocol witness table accessor for type SearchInBrowserIntent and conformance SearchInBrowserIntent()
{
  result = lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent;
  if (!lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent;
  if (!lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent;
  if (!lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent;
  if (!lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchInBrowserIntent and conformance SearchInBrowserIntent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StringSearchCriteria and conformance StringSearchCriteria()
{
  result = lazy protocol witness table cache variable for type StringSearchCriteria and conformance StringSearchCriteria;
  if (!lazy protocol witness table cache variable for type StringSearchCriteria and conformance StringSearchCriteria)
  {
    type metadata accessor for StringSearchCriteria();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StringSearchCriteria and conformance StringSearchCriteria);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10AppIntents21IntentResultContainerVys5NeverOA3EGs5Error_pGMd, &_sScCy10AppIntents21IntentResultContainerVys5NeverOA3EGs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_29Tm()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

double one-time initialization function for zero()
{
  qword_27EEE8FE0 = 0;
  result = 0.0;
  static DOCItemCollectionCellStackMetrics.zero = 0u;
  *algn_27EEE8FD0 = 0u;
  return result;
}

void DOCItemCollectionCellStackMetrics.init(dateLabelWidth:sizeLabelWidth:kindLabelWidth:tagDimension:spacing:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
}

double static DOCItemCollectionCellStackMetrics.zero.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for zero != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&qword_27EEE8FE0;
  v2 = *algn_27EEE8FD0;
  *a1 = static DOCItemCollectionCellStackMetrics.zero;
  *(a1 + 16) = v2;
  *(a1 + 32) = result;
  return result;
}

Swift::Int DOCDefaultSourceUIManager.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  return Hasher._finalize()();
}

uint64_t DOCDefaultSourceUIManager.state.getter()
{
  v1 = OBJC_IVAR___DOCDefaultSourceUIManager_state;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCDefaultSourceUIManager.state.setter(unsigned __int8 a1, double a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OBJC_IVAR___DOCDefaultSourceUIManager_state;
  swift_beginAccess();
  v10 = v2[v9];
  *v8 = [v2 queue];
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v11)
  {
    v2[v9] = a1;
    if (v10 != a1)
    {
      *(swift_allocObject() + 16) = v2;
      v12 = v2;
      DOCRunInMainThread(_:)();
    }
  }

  else
  {
    __break(1u);
  }
}

void (*DOCDefaultSourceUIManager.state.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for DispatchPredicate();
  *(v5 + 32) = v6;
  v7 = *(v6 - 8);
  *(v5 + 40) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR___DOCDefaultSourceUIManager_state;
  *(v5 + 48) = v8;
  *(v5 + 56) = v9;
  swift_beginAccess();
  *(v5 + 64) = *(v1 + v9);
  return DOCDefaultSourceUIManager.state.modify;
}

void DOCDefaultSourceUIManager.state.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v6 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  v7 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  v9 = *(*a1 + 24);
  v10 = v9[v5];
  *v6 = [v9 queue];
  (*(v8 + 104))(v6, *MEMORY[0x277D85200], v7);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v6, v7);
  if (a2)
  {
    if (v11)
    {
      *(*(v3 + 24) + *(v3 + 56)) = v4;
      if (v4 != v10)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_12;
  }

  *(*(v3 + 24) + *(v3 + 56)) = v4;
  if (v4 != v10)
  {
LABEL_7:
    v12 = *(v3 + 24);
    *(swift_allocObject() + 16) = v12;
    v13 = v12;
    DOCRunInMainThread(_:)();
  }

LABEL_8:
  free(*(v3 + 48));

  free(v3);
}

uint64_t DOCDefaultSourceUIManager.settingsDocumentsAndDataURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v20 - v5;
  v7 = type metadata accessor for URLComponents();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init()();
  URLComponents.scheme.setter();
  MEMORY[0x24C1F76F0](0xD000000000000017, 0x8000000249BD8480);
  v20 = 47;
  v21 = 0xE100000000000000;
  v12 = [v1 configuration];
  v13 = [v12 hostIdentifier];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  MEMORY[0x24C1FAEA0](v14, v16);

  MEMORY[0x24C1F7700](v20, v21);
  URLComponents.url.getter();
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  result = (*(v18 + 48))(v6, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    return (*(v18 + 32))(a1, v6, v17);
  }

  return result;
}

id DOCDefaultSourceUIManager.init(configuration:sourceObserver:presentAlertsOn:)(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 sourceObserver:a2 presentAlertsOn:a3];

  return v6;
}

CFNotificationCenterRef DOCDefaultSourceUIManager.init(configuration:sourceObserver:presentAlertsOn:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v54 = a2;
  v55 = a3;
  v53 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v12, v13);
  v44 = type metadata accessor for DispatchQoS();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = OBJC_IVAR___DOCDefaultSourceUIManager_viewController;
  swift_unknownObjectWeakInit();
  v50 = OBJC_IVAR___DOCDefaultSourceUIManager_queue;
  v17 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v48 = "SEARCH_FILE_INTENT_TITLE";
  v49 = v17;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v11, *MEMORY[0x277D85260], v52);
  v18 = v16;
  *&v3[v50] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v3[OBJC_IVAR___DOCDefaultSourceUIManager_state] = 0;
  *&v3[OBJC_IVAR___DOCDefaultSourceUIManager_alert] = 0;
  v20 = v53;
  v19 = v54;
  *&v4[OBJC_IVAR___DOCDefaultSourceUIManager_configuration] = v53;
  *&v4[OBJC_IVAR___DOCDefaultSourceUIManager_sourceObserver] = v19;
  swift_unknownObjectWeakAssign();
  v58.receiver = v4;
  v58.super_class = DOCDefaultSourceUIManager;
  v21 = v20;
  v22 = v19;
  v23 = objc_msgSendSuper2(&v58, sel_init);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.UI);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2493AC000, v25, v26, "[Default Source UI]: Init", v27, 2u);
    MEMORY[0x24C1FE850](v27, -1, -1);
  }

  if ([v21 isPickerUI])
  {

    return v23;
  }

  v53 = v21;
  v54 = v22;
  v28 = objc_opt_self();
  v29 = [v28 defaultCenter];
  [v29 addObserver:v23 selector:sel_ubiquityIdentityDidChange_ name:*MEMORY[0x277CCA7C8] object:0];

  v30 = [v28 defaultCenter];
  [v30 addObserver:v23 selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  result = CFNotificationCenterGetDistributedCenter();
  if (result)
  {
    v32 = result;
    v33 = MEMORY[0x24C1FAD20](0xD00000000000002ELL, 0x8000000249BD79C0);
    CFNotificationCenterAddObserver(v32, v23, @objc closure #1 in DOCDefaultSourceUIManager.init(configuration:sourceObserver:presentAlertsOn:), v33, 0, CFNotificationSuspensionBehaviorDrop);

    v34 = MEMORY[0x24C1FAD20](0xD000000000000030, 0x8000000249BD79F0);
    CFNotificationCenterAddObserver(v32, v23, @objc closure #1 in DOCDefaultSourceUIManager.init(configuration:sourceObserver:presentAlertsOn:), v34, 0, CFNotificationSuspensionBehaviorDrop);

    v35 = *&v23[OBJC_IVAR___DOCDefaultSourceUIManager_queue];
    v36 = swift_allocObject();
    *(v36 + 16) = v23;
    aBlock[4] = partial apply for closure #2 in DOCDefaultSourceUIManager.init(configuration:sourceObserver:presentAlertsOn:);
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_40;
    v37 = _Block_copy(aBlock);
    v38 = v35;
    v39 = v23;
    static DispatchQoS.unspecified.getter();
    v56 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v40 = v45;
    v41 = v47;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v18, v40, v37);
    _Block_release(v37);

    (*(v46 + 8))(v40, v41);
    (*(v43 + 8))(v18, v44);

    return v23;
  }

  __break(1u);
  return result;
}

id closure #1 in DOCDefaultSourceUIManager.ubiquityIdentityDidChange(_:)(void *a1)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2493AC000, v3, v4, "[Default Source UI]: ubiquityIdentityDidChange", v5, 2u);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  return [a1 updateAlertState];
}

double DOCDefaultSourceUIManager.cleanupAlert(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v8 = *(v20 - 8);
  v10 = MEMORY[0x28223BE20](v20, v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v2 queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in DOCDefaultSourceUIManager.cleanupAlert(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_129_0;
  v15 = _Block_copy(aBlock);
  v16 = v2;
  v17 = a1;
  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v12, v7, v15);
  _Block_release(v15);

  (*(v21 + 8))(v7, v4);
  (*(v8 + 8))(v12, v20);

  return result;
}

void closure #1 in DOCDefaultSourceUIManager.cleanupAlert(_:)(char *a1, void *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [a1 alert];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAlertController, 0x277D75110);
    v12 = a2;
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {
      v14 = OBJC_IVAR___DOCDefaultSourceUIManager_state;
      swift_beginAccess();
      v15 = a1[v14];
      *v9 = [a1 queue];
      (*(v5 + 104))(v9, *MEMORY[0x277D85200], v4);
      v16 = _dispatchPreconditionTest(_:)();
      (*(v5 + 8))(v9, v4);
      if (v16)
      {
        a1[v14] = 0;
        if (v15)
        {
          *(swift_allocObject() + 16) = a1;
          v17 = a1;
          DOCRunInMainThread(_:)();
        }

        [a1 updateAlertState];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void DOCDefaultSourceUIManager.promptToUseICloudOrLocal()()
{
  v1 = v0;
  v2 = [v0 hostApplicationRecord];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 localizedName];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = _DocumentManagerBundle();
    if (v8)
    {
      v9 = v8;
      v10._countAndFlagsBits = 0xD00000000000002ALL;
      v78._countAndFlagsBits = 0xD000000000000082;
      v78._object = 0x8000000249BD80D0;
      v10._object = 0x8000000249BD80A0;
      v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v11.value._object = 0xEB00000000656C62;
      v12._countAndFlagsBits = 0;
      v12._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v78);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_249B9A480;
      *(v13 + 56) = MEMORY[0x277D837D0];
      *(v13 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v13 + 32) = v5;
      *(v13 + 40) = v7;
      v14 = String.init(format:_:)();
      v16 = v15;

      v17 = MobileGestalt_get_current_device();
      if (v17)
      {
        v18 = v17;
        deviceClassNumber = MobileGestalt_get_deviceClassNumber();

        v20 = _DocumentManagerBundle();
        v21 = v20;
        switch(deviceClassNumber)
        {
          case 2:
            if (!v20)
            {
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            v22 = "New documents will be saved to iCloud Drive. Existing documents on your iPod will not be moved.";
            break;
          case 11:
            if (!v20)
            {
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

            v26 = 0xD00000000000006BLL;
            v69 = 0x8000000249BD8310;
            v27 = 0x8000000249BD82A0;
            v28 = 0xD000000000000089;
            v29 = 0x617A696C61636F4CLL;
            v30 = 0xEB00000000656C62;
            v31.super.isa = v21;
            v32 = 0;
            v33 = 0xE000000000000000;
LABEL_24:
            NSLocalizedString(_:tableName:bundle:value:comment:)(*&v26, *&v29, v31, *&v32, *&v28);

            v35 = String.init(format:_:)();
            v37 = v36;

            v38 = MEMORY[0x24C1FAD20](v14, v16);

            v39 = MEMORY[0x24C1FAD20](v35, v37);

            v40 = [objc_opt_self() alertControllerWithTitle:v38 message:v39 preferredStyle:1];

            v41 = _DocumentManagerBundle();
            if (v41)
            {
              v42 = v41;
              v43._countAndFlagsBits = 0xD000000000000010;
              v79._object = 0x8000000249BD7FE0;
              v43._object = 0x8000000249BD7FC0;
              v79._countAndFlagsBits = 0xD0000000000000B5;
              v44.value._countAndFlagsBits = 0x617A696C61636F4CLL;
              v44.value._object = 0xEB00000000656C62;
              v45._countAndFlagsBits = 0;
              v45._object = 0xE000000000000000;
              v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v44, v42, v45, v79);

              v47 = swift_allocObject();
              *(v47 + 16) = v1;
              *(v47 + 24) = v40;
              v48 = v1;
              v49 = v40;
              v50 = MEMORY[0x24C1FAD20](v46._countAndFlagsBits, v46._object);

              v75 = partial apply for closure #1 in DOCDefaultSourceUIManager.promptToUseICloudOrLocal();
              v76 = v47;
              aBlock = MEMORY[0x277D85DD0];
              v72 = 1107296256;
              v73 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
              v74 = &block_descriptor_117;
              v51 = _Block_copy(&aBlock);

              v52 = objc_opt_self();
              v53 = [v52 actionWithTitle:v50 style:0 handler:v51];
              _Block_release(v51);

              v54 = v49;
              [v54 addAction_];
              v55 = _DocumentManagerBundle();
              if (v55)
              {
                v56 = v55;
                v80._countAndFlagsBits = 0xD000000000000030;
                v80._object = 0x8000000249BD8260;
                v57._countAndFlagsBits = 0x776F4E20746F4ELL;
                v57._object = 0xE700000000000000;
                v58.value._countAndFlagsBits = 0x617A696C61636F4CLL;
                v58.value._object = 0xEB00000000656C62;
                v59._countAndFlagsBits = 0;
                v59._object = 0xE000000000000000;
                v60 = NSLocalizedString(_:tableName:bundle:value:comment:)(v57, v58, v56, v59, v80);

                v61 = swift_allocObject();
                *(v61 + 16) = v48;
                *(v61 + 24) = v54;
                v62 = v48;
                v63 = v54;
                v64 = MEMORY[0x24C1FAD20](v60._countAndFlagsBits, v60._object);

                v75 = partial apply for closure #2 in DOCDefaultSourceUIManager.promptToUseICloudOrLocal();
                v76 = v61;
                aBlock = MEMORY[0x277D85DD0];
                v72 = 1107296256;
                v73 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
                v74 = &block_descriptor_123;
                v65 = _Block_copy(&aBlock);

                v66 = [v52 actionWithTitle:v64 style:0 handler:v65];
                _Block_release(v65);

                [v63 addAction_];
                [v63 setPreferredAction_];

                [v62 setAlert_];
                v67 = [v62 viewController];
                if (v67)
                {
                  v68 = v67;
                  [v67 presentViewController:v63 animated:1 completion:0];
                }

                return;
              }

              goto LABEL_32;
            }

LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          case 3:
            if (!v20)
            {
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

            v22 = "New documents will be saved to iCloud Drive. Existing documents on your iPad will not be moved.";
            break;
          default:
            if (!v20)
            {
LABEL_36:
              __break(1u);
              return;
            }

            v34 = "bling iCloud Drive";
            v26 = 0xD000000000000061;
            goto LABEL_23;
        }

        v34 = (v22 - 32);
        v26 = 0xD00000000000005FLL;
LABEL_23:
        v69 = 0x8000000249BD81D0;
        v27 = v34 | 0x8000000000000000;
        v29 = 0x617A696C61636F4CLL;
        v30 = 0xEB00000000656C62;
        v31.super.isa = v21;
        v32 = 0;
        v33 = 0xE000000000000000;
        v28 = 0xD000000000000084;
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.UI);
  oslog = Logger.logObject.getter();
  v24 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2493AC000, oslog, v24, "Unable to load hostApplicationRecord, so can not present promptToUseICloudOrLocal()", v25, 2u);
    MEMORY[0x24C1FE850](v25, -1, -1);
  }
}

void DOCDefaultSourceUIManager.promptToUseOtherOrLocal()()
{
  v1 = [v0 hostApplicationRecord];
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v0;
    aBlock[4] = partial apply for closure #1 in DOCDefaultSourceUIManager.promptToUseOtherOrLocal();
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    aBlock[3] = &block_descriptor_87_1;
    v4 = _Block_copy(aBlock);
    v5 = v2;
    v6 = v0;

    [v6 getIsICloudDriveEnabledWithCompletion_];
    _Block_release(v4);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.UI);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2493AC000, oslog, v8, "Unable to load hostApplicationRecord, so can not present promptToUseOtherOrLocal()", v9, 2u);
      MEMORY[0x24C1FE850](v9, -1, -1);
    }
  }
}

double closure #1 in DOCDefaultSourceUIManager.promptToUseOtherOrLocal()(char a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a1;
  v7 = a2;
  v8 = a3;
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in closure #1 in DOCDefaultSourceUIManager.promptToUseOtherOrLocal()(void *a1, void *a2, char a3)
{
  v3 = [a1 localizedName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = _DocumentManagerBundle();
  if (!v7)
  {
    __break(1u);
    goto LABEL_25;
  }

  v8 = v7;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10._countAndFlagsBits = 0xD000000000000024;
  v85._countAndFlagsBits = 0xD000000000000069;
  v85._object = 0x8000000249BD7C90;
  v10._object = 0x8000000249BD7C60;
  v9.value._object = 0xEB00000000656C62;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v9, v8, v11, v85);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_249B9A480;
  v13 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v14 = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 64) = v14;
  *(v12 + 32) = v4;
  *(v12 + 40) = v6;

  v15 = String.init(format:_:)();
  v17 = v16;

  v18 = _DocumentManagerBundle();
  if (!v18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v19 = v18;
  v20._countAndFlagsBits = 0xD000000000000068;
  v86._countAndFlagsBits = 0xD00000000000006BLL;
  v86._object = 0x8000000249BD7D70;
  v20._object = 0x8000000249BD7D00;
  v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21.value._object = 0xEB00000000656C62;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v86);

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_249B9A480;
  *(v23 + 56) = v13;
  *(v23 + 64) = v14;
  *(v23 + 32) = v4;
  *(v23 + 40) = v6;
  v24 = String.init(format:_:)();
  v26 = v25;

  v27 = MEMORY[0x24C1FAD20](v15, v17);

  v28 = MEMORY[0x24C1FAD20](v24, v26);

  v29 = [objc_opt_self() alertControllerWithTitle:v27 message:v28 preferredStyle:1];

  v30 = _DocumentManagerBundle();
  if (!v30)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v31 = v30;
  v32._countAndFlagsBits = 0xD000000000000013;
  v87._object = 0x8000000249BD7E00;
  v32._object = 0x8000000249BD7DE0;
  v87._countAndFlagsBits = 0xD000000000000074;
  v33.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v33.value._object = 0xEB00000000656C62;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v87);

  v36 = v29;
  v37 = MEMORY[0x24C1FAD20](v35._countAndFlagsBits, v35._object);

  v38 = swift_allocObject();
  *(v38 + 16) = a2;
  v83 = partial apply for closure #1 in closure #1 in closure #1 in DOCDefaultSourceUIManager.promptToUseOtherOrLocal();
  v84 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v80 = 1107296256;
  v81 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v82 = &block_descriptor_96;
  v39 = _Block_copy(&aBlock);
  v40 = a2;

  v83 = getEnumTag for DOCNodeOperation;
  v84 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v80 = 1107296256;
  v81 = thunk for @escaping @callee_guaranteed () -> (@unowned Bool);
  v82 = &block_descriptor_99;
  v41 = _Block_copy(&aBlock);
  [v36 _addActionWithTitle_style_handler_shouldDismissHandler_];
  _Block_release(v41);
  _Block_release(v39);

  if ((a3 & 1) == 0)
  {
    v53 = MobileGestalt_get_current_device();
    if (!v53)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v54 = v53;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    v56 = _DocumentManagerBundle();
    v57 = v56;
    switch(deviceClassNumber)
    {
      case 2:
        if (!v56)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v76 = 0x8000000249BD7EA0;
        v58 = 0x206F742065766153;
        v59 = 0xEF646F506920794DLL;
        break;
      case 11:
        if (!v56)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v58 = 0xD00000000000001BLL;
        v76 = 0x8000000249BD7F40;
        v59 = 0x8000000249BD7F20;
        v60 = 0xD000000000000077;
        v61 = 0x617A696C61636F4CLL;
        v62 = 0xEB00000000656C62;
        v63.super.isa = v57;
        v64 = 0;
        v65 = 0xE000000000000000;
LABEL_20:
        NSLocalizedString(_:tableName:bundle:value:comment:)(*&v58, *&v61, v63, *&v64, *(&v76 - 1));

        v66 = String.init(format:_:)();
        v68 = v67;

        v69 = swift_allocObject();
        *(v69 + 16) = v40;
        *(v69 + 24) = v36;
        v70 = v36;
        v71 = v40;
        v51 = MEMORY[0x24C1FAD20](v66, v68);

        v83 = partial apply for closure #4 in closure #1 in closure #1 in DOCDefaultSourceUIManager.promptToUseOtherOrLocal();
        v84 = v69;
        aBlock = MEMORY[0x277D85DD0];
        v80 = 1107296256;
        v52 = &block_descriptor_105;
        goto LABEL_21;
      case 3:
        if (!v56)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v76 = 0x8000000249BD7EA0;
        v58 = 0x206F742065766153;
        v59 = 0xEF6461506920794DLL;
        break;
      default:
        if (!v56)
        {
LABEL_32:
          __break(1u);
          return;
        }

        v58 = 0xD000000000000011;
        v76 = 0x8000000249BD7EA0;
        v59 = 0x8000000249BD7E80;
        break;
    }

    v61 = 0x617A696C61636F4CLL;
    v62 = 0xEB00000000656C62;
    v63.super.isa = v57;
    v64 = 0;
    v65 = 0xE000000000000000;
    v60 = 0xD000000000000072;
    goto LABEL_20;
  }

  v42 = _DocumentManagerBundle();
  if (!v42)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v43 = v42;
  v44._countAndFlagsBits = 0xD000000000000010;
  v88._object = 0x8000000249BD7FE0;
  v44._object = 0x8000000249BD7FC0;
  v88._countAndFlagsBits = 0xD0000000000000B5;
  v45.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v45.value._object = 0xEB00000000656C62;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v45, v43, v46, v88);

  v48 = swift_allocObject();
  *(v48 + 16) = v40;
  *(v48 + 24) = v36;
  v49 = v36;
  v50 = v40;
  v51 = MEMORY[0x24C1FAD20](v47._countAndFlagsBits, v47._object);

  v83 = partial apply for closure #3 in closure #1 in closure #1 in DOCDefaultSourceUIManager.promptToUseOtherOrLocal();
  v84 = v48;
  aBlock = MEMORY[0x277D85DD0];
  v80 = 1107296256;
  v52 = &block_descriptor_111;
LABEL_21:
  v81 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v82 = v52;
  v72 = _Block_copy(&aBlock);

  v73 = [objc_opt_self() actionWithTitle:v51 style:0 handler:v72];
  _Block_release(v72);

  [v36 addAction_];
  [v40 setAlert_];

  v74 = [v40 viewController];
  if (v74)
  {
    v75 = v74;
    [v74 presentViewController:v36 animated:1 completion:0];
  }
}

void closure #1 in closure #1 in closure #1 in DOCDefaultSourceUIManager.promptToUseOtherOrLocal()(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultWorkspace];
  if (v7)
  {
    v8 = v7;
    v9 = [a1 settingsDocumentsAndDataURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    (*(v3 + 8))(v6, v2);
    [v8 openSensitiveURL:v12 withOptions:0];
  }

  else
  {
    __break(1u);
  }
}

id closure #1 in DOCDefaultSourceUIManager.promptToUseICloudOrLocal()(uint64_t a1, void *a2, uint64_t a3)
{
  result = DOCDocumentSourceIdentifierICloud_Current();
  if (result)
  {
    v6 = result;
    v7 = [a2 configuration];
    v8 = [v7 hostIdentifier];

    if (!v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = MEMORY[0x24C1FAD20](v9);
    }

    [objc_opt_self() setDefaultSourceIdentifier:v6 forBundleIdentifier:v8];

    return [a2 cleanupAlert_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id closure #2 in DOCDefaultSourceUIManager.promptToUseICloudOrLocal()(int a1, id a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D060F0];
  v6 = [a2 configuration];
  v7 = [v6 hostIdentifier];

  if (!v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = MEMORY[0x24C1FAD20](v8);
  }

  [objc_opt_self() setDefaultSourceIdentifier:v5 forBundleIdentifier:v7];

  return [a2 cleanupAlert_];
}

void DOCDefaultSourceUIManager.getICloudSourcesIfEnabled(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 configuration];
  v7 = [v3 sourceObserver];
  [v7 startObservingSources];
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10[4] = partial apply for closure #1 in static DOCFileProviderSource.getICloudSourcesIfEnabled(configuration:sourceObserver:completion:);
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_17_1;
  v9 = _Block_copy(v10);

  [v7 retrieveSourcesForConfiguration:v6 usingBlock:v9];
  _Block_release(v9);
}

double DOCDefaultSourceUIManager.getMainICloudSourceIfEnabled(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  DOCDefaultSourceUIManager.getICloudSourcesIfEnabled(completion:)(partial apply for closure #1 in DOCDefaultSourceUIManager.getMainICloudSourceIfEnabled(completion:), v4);

  return result;
}

void closure #1 in DOCDefaultSourceUIManager.getMainICloudSourceIfEnabled(completion:)(unint64_t a1, void (*a2)(void *))
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
      if (v9)
      {
        v11 = v7;
        v10 = [v9 isMainiCloudDriveDomain];
        v7 = v11;
        if (v10)
        {
          goto LABEL_17;
        }
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  v7 = 0;
LABEL_17:
  v12 = v7;
  a2(v7);
}

double DOCDefaultSourceUIManager.updateAlertState()()
{
  v1 = v0;
  v2 = [v0 configuration];
  v3 = [v2 hostIdentifier];

  v20 = v3;
  if (!v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = MEMORY[0x24C1FAD20](v4);
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
    }

    else
    {
      v12 = [objc_opt_self() defaultSourceIdentifierForBundleIdentifier_];

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.UI);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_2493AC000, v14, v15, "[Default Source UI]: Updating Alert State", v16, 2u);
        MEMORY[0x24C1FE850](v16, -1, -1);
      }

      v17 = swift_allocObject();
      v17[2] = v1;
      v17[3] = v12;
      v17[4] = v5;
      v17[5] = v7;
      v18 = v1;
      v19 = v12;
      DOCDefaultSourceUIManager.getICloudSourcesIfEnabled(completion:)(partial apply for closure #1 in DOCDefaultSourceUIManager.updateAlertState(), v17);
    }
  }

  return result;
}

double closure #1 in DOCDefaultSourceUIManager.updateAlertState()(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v14 = *(v26 - 8);
  v16 = MEMORY[0x28223BE20](v26, v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a2 queue];
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a5;
  aBlock[4] = partial apply for closure #1 in closure #1 in DOCDefaultSourceUIManager.updateAlertState();
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_55_1;
  v21 = _Block_copy(aBlock);
  v22 = a3;

  v23 = a2;
  static DispatchQoS.unspecified.getter();
  v28 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v18, v13, v21);
  _Block_release(v21);

  (*(v27 + 8))(v13, v10);
  (*(v14 + 8))(v18, v26);

  return result;
}

void closure #1 in closure #1 in DOCDefaultSourceUIManager.updateAlertState()(unint64_t a1, char *a2, void *a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v192 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v201 = __CocoaSet.count.getter();
  }

  else
  {
    v201 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  DOCDefaultSourceUIManager.mostRelevantiCloudSource(from:)(a1);
  if (v15)
  {
    v16 = v15;
    v17 = [v15 identifier];
  }

  else
  {
    v17 = DOCDocumentSourceIdentifierICloud_Current();
    if (!v17)
    {
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }
  }

  v195 = a4;
  v196 = a5;
  v200 = v10;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v198 = v14;
  v199 = v11;
  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Logger.UI);
  v20 = a3;
  v21 = v17;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  v24 = os_log_type_enabled(v22, v23);
  v197 = v19;
  if (!v24)
  {

    v36 = &unk_27EEE8000;
    if (a3)
    {
      goto LABEL_18;
    }

LABEL_23:
    v42 = *MEMORY[0x277D05DA8];
    if (v201 > 0)
    {
      v42 = v21;
    }

    v43 = v42;
    v41 = v196;

    v44 = v43;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      v205[0] = v201;
      *v47 = 136315394;
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v195, v41, v205);
      *(v47 + 12) = 2080;
      v48 = v44;
      v49 = v21;
      v50 = [v48 description];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = a2;
      v54 = v53;

      v55 = v51;
      v41 = v196;
      v21 = v49;
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, v205);
      a2 = v52;

      *(v47 + 14) = v56;
      v36 = &unk_27EEE8000;
      _os_log_impl(&dword_2493AC000, v45, v46, "[Default Source UI] (nil, _): First launch of %s, setting default provider to %s", v47, 0x16u);
      v57 = v201;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v57, -1, -1);
      MEMORY[0x24C1FE850](v47, -1, -1);
    }

    v58 = v195;
    v59 = objc_opt_self();
    v60 = MEMORY[0x24C1FAD20](v58, v41);
    [v59 setDefaultSourceIdentifier:v44 forBundleIdentifier:v60];

    v61 = v36[509];
    swift_beginAccess();
    v62 = a2[v61];
    v63 = [a2 queue];
    a3 = v198;
    v64 = v199;
    *v198 = v63;
    v65 = v200;
    (*(v64 + 13))(a3, *MEMORY[0x277D85200], v200);
    LOBYTE(v59) = _dispatchPreconditionTest(_:)();
    (*(v64 + 1))(a3, v65);
    if (v59)
    {
      a2[v61] = 0;
      if (v62)
      {
        *(swift_allocObject() + 16) = a2;
        v66 = a2;
        DOCRunInMainThread(_:)();
      }

      else
      {
      }

      goto LABEL_78;
    }

    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v194 = a2;
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v205[0] = v27;
  *v25 = 138412802;
  v28 = v20;
  v193 = a3;
  if (!a3)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
    v28 = NSString.init(stringLiteral:)();
  }

  *(v25 + 4) = v28;
  *v26 = v28;
  *(v25 + 12) = 2080;
  if (v201 <= 0)
  {
    v29 = 20302;
  }

  else
  {
    v29 = 5457241;
  }

  if (v201 <= 0)
  {
    v30 = 0xE200000000000000;
  }

  else
  {
    v30 = 0xE300000000000000;
  }

  v31 = v20;
  v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v205);

  *(v25 + 14) = v32;
  *(v25 + 22) = 2080;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v205);

  *(v25 + 24) = v35;
  _os_log_impl(&dword_2493AC000, v22, v23, "[Default Source UI] Default provider: %@ iCloud Drive enabled: %s, relevantiCloudSourceIdentifier: %s", v25, 0x20u);
  outlined destroy of NSObject?(v26);
  MEMORY[0x24C1FE850](v26, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x24C1FE850](v27, -1, -1);
  MEMORY[0x24C1FE850](v25, -1, -1);

  a2 = v194;
  a3 = v193;
  v36 = &unk_27EEE8000;
  if (!v193)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (v201 <= 0)
  {
    v196 = v20;
    v67 = v20;
    v68 = DOCDocumentSourceIdentifierICloud_Current();
    if (!v68)
    {
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v69 = v68;
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;
    if (v70 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v72 == v73)
    {
    }

    else
    {
      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v85 & 1) == 0)
      {
        v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v98 = v97;
        if (v96 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v98 == v99)
        {
        }

        else
        {
          v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v100 & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          _os_log_impl(&dword_2493AC000, v101, v102, "[Default Source UI] (DOCDocumentSourceIdentifier.localAutomatic?, false): iCloud Drive is not available, but we're already in localAuto, so no alert", v103, 2u);
          MEMORY[0x24C1FE850](v103, -1, -1);
        }

        v104 = v36[509];
        swift_beginAccess();
        v105 = a2[v104];
        v106 = [a2 queue];
        v108 = v198;
        v107 = v199;
        *v198 = v106;
        v109 = v200;
        (*(v107 + 13))(v108, *MEMORY[0x277D85200], v200);
        v110 = _dispatchPreconditionTest(_:)();
        (*(v107 + 1))(v108, v109);
        if (v110)
        {
          a2[v104] = 0;
          if (v105)
          {
            goto LABEL_67;
          }

          goto LABEL_68;
        }

        goto LABEL_112;
      }
    }

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_2493AC000, v86, v87, "[Default Source UI] (.iCloudCurrent?, false): iCloud Drive is no longer available, showing prompt saying we've switched to local storage", v88, 2u);
      MEMORY[0x24C1FE850](v88, -1, -1);
    }

    v89 = v36[509];
    swift_beginAccess();
    v90 = a2[v89];
    v91 = [a2 queue];
    v93 = v198;
    v92 = v199;
    *v198 = v91;
    v94 = v200;
    (*(v92 + 13))(v93, *MEMORY[0x277D85200], v200);
    v95 = _dispatchPreconditionTest(_:)();
    (*(v92 + 1))(v93, v94);
    if (v95)
    {
      a2[v89] = 2;
      if (v90 != 2)
      {
        goto LABEL_67;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
  {
    v41 = a3;
    a3 = v21;

    goto LABEL_36;
  }

  v74 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v196 = v20;
  v75 = v20;

  if (v74)
  {
    v41 = a3;
    a3 = v21;

LABEL_36:
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_2493AC000, v76, v77, "[Default Source UI] (DOCDocumentSourceIdentifier.localAutomatic?, true): iCloud Drive is available, showing prompt to select between iCloud Drive and local storage", v78, 2u);
      MEMORY[0x24C1FE850](v78, -1, -1);
    }

    v79 = v36[509];
    swift_beginAccess();
    v80 = a2[v79];
    v81 = [a2 queue];
    v62 = v198;
    v82 = v199;
    *v198 = v81;
    v83 = v200;
    (*(v82 + 13))(v62, *MEMORY[0x277D85200], v200);
    v84 = _dispatchPreconditionTest(_:)();
    (*(v82 + 1))(v62, v83);
    if (v84)
    {
      a2[v79] = 1;
      v36 = &unk_27EEE8000;
      v21 = a3;
      if (v80 != 1)
      {
        goto LABEL_67;
      }

      goto LABEL_68;
    }

    goto LABEL_104;
  }

LABEL_58:
  v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v113 = v112;
  if (v111 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v113 == v114)
  {

    goto LABEL_63;
  }

  v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v115)
  {

LABEL_63:
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&dword_2493AC000, v116, v117, "[Default Source UI] (DOCDocumentSourceIdentifier.local?, _): iCloud Drive is not available, but we're already in local, so no alert", v118, 2u);
      MEMORY[0x24C1FE850](v118, -1, -1);
    }

    v119 = v36[509];
    swift_beginAccess();
    v120 = a2[v119];
    v121 = [a2 queue];
    v123 = v198;
    v122 = v199;
    *v198 = v121;
    v124 = v200;
    (*(v122 + 13))(v123, *MEMORY[0x277D85200], v200);
    v125 = _dispatchPreconditionTest(_:)();
    (*(v122 + 1))(v123, v124);
    if (v125)
    {
      a2[v119] = 0;
      if (v120)
      {
LABEL_67:
        *(swift_allocObject() + 16) = a2;
        v126 = a2;
        DOCRunInMainThread(_:)();
      }

LABEL_68:
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v127 = v36[509];
      swift_beginAccess();
      if (a2[v127])
      {

LABEL_70:
        v44 = v21;
LABEL_78:

        return;
      }

      v128 = DOCDocumentSourceIdentifierICloud_Current();
      if (v128)
      {
        v129 = v128;
        v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v132 = v131;

        v133._countAndFlagsBits = v130;
        v133._object = v132;
        LOBYTE(v129) = String.hasPrefix(_:)(v133);

        if (v129)
        {
        }

        else
        {
          v134._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v135 = String.hasPrefix(_:)(v134);

          if (!v135)
          {
            goto LABEL_70;
          }
        }

        v44 = v21;
        v136 = Logger.logObject.getter();
        v137 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v203 = v44;
          v204 = v139;
          *v138 = 136315138;
          type metadata accessor for DOCDocumentSourceIdentifier(0);
          v140 = v44;
          v141 = String.init<A>(describing:)();
          v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, &v204);

          *(v138 + 4) = v143;
          _os_log_impl(&dword_2493AC000, v136, v137, "[Default Source UI] Updating saved identifier with a real iCloud Domain: %s", v138, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v139);
          MEMORY[0x24C1FE850](v139, -1, -1);
          MEMORY[0x24C1FE850](v138, -1, -1);
        }

        [a2 updateAlertStateFor_];
        goto LABEL_78;
      }

      goto LABEL_115;
    }

    goto LABEL_111;
  }

  if (v201 < 1)
  {
    goto LABEL_107;
  }

  v41 = v196;
  v144 = DOCDocumentSourceIdentifierICloud_Current();
  if (!v144)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v145 = v144;
  v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v148 = v147;
  if (v146 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v148 == v149)
  {

LABEL_85:

    goto LABEL_86;
  }

  v150 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v150)
  {
    goto LABEL_85;
  }

  v161 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v163 = v162;
  if (v161 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v163 == v164)
  {

    goto LABEL_86;
  }

  v165 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v165)
  {
    goto LABEL_85;
  }

  v62 = v41;
  v166 = DOCDocumentSourceIdentifierICloud_CurrentManaged();
  if (v166)
  {
    v167 = v166;
    v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v170 = v169;
    if (v168 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v170 == v171)
    {
    }

    else
    {
      v172 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v172 & 1) == 0)
      {
        v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v175 = v174;
        if (v173 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v175 != v176)
        {
LABEL_105:
          v177 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v36 = &unk_27EEE8000;
          if (v177)
          {

            goto LABEL_86;
          }

LABEL_107:
          v178 = v196;
          v179 = Logger.logObject.getter();
          v180 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v179, v180))
          {
            v181 = swift_slowAlloc();
            v199 = v181;
            v200 = swift_slowAlloc();
            v205[0] = v200;
            *v181 = 136315138;
            v182 = v178;
            v183 = [v182 description];
            v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v185 = v21;
            v186 = v184;
            v201 = v185;
            v188 = v187;

            v189 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v188, v205);
            v21 = v201;

            v190 = v199;
            *(v199 + 1) = v189;
            v36 = &unk_27EEE8000;
            _os_log_impl(&dword_2493AC000, v179, v180, "[Default Source UI] Verifying %s is still available", v190, 0xCu);
            v191 = v200;
            __swift_destroy_boxed_opaque_existential_0(v200);
            MEMORY[0x24C1FE850](v191, -1, -1);
            MEMORY[0x24C1FE850](v190, -1, -1);
          }

          [a2 updateAlertStateFor_];
          goto LABEL_68;
        }

        v36 = &unk_27EEE8000;
LABEL_86:
        v151 = v41;
        v152 = Logger.logObject.getter();
        v153 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          v205[0] = v155;
          *v154 = 136315138;
          v202 = a3;
          v156 = v151;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27DOCDocumentSourceIdentifieraSgMd, &_sSo27DOCDocumentSourceIdentifieraSgMR);
          v157 = String.init<A>(describing:)();
          v159 = v36;
          v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v158, v205);

          *(v154 + 4) = v160;
          v36 = v159;
          _os_log_impl(&dword_2493AC000, v152, v153, "[Default Source UI] Should update saved identifier with a real iCloud Domain: %s", v154, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v155);
          MEMORY[0x24C1FE850](v155, -1, -1);
          MEMORY[0x24C1FE850](v154, -1, -1);
        }

        goto LABEL_68;
      }
    }

    v36 = &unk_27EEE8000;
    goto LABEL_86;
  }

LABEL_117:
  __break(1u);
}

void DOCDefaultSourceUIManager.mostRelevantiCloudSource(from:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    v5 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v6 = MEMORY[0x24C1FC540](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v9 = *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
      if (v9)
      {
        if ([v9 isEnterpriseDomain])
        {
          break;
        }
      }

      ++v4;
      if (v8 == i)
      {
        v7 = 0;
        break;
      }
    }

    v10 = 0;
    v1 = &selRef_removeFromSuperlayer;
    while (1)
    {
      if (v5)
      {
        v11 = MEMORY[0x24C1FC540](v10, a1);
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
      if (v14 && ([v14 isMainiCloudDriveDomain] & 1) != 0)
      {
        goto LABEL_25;
      }

      ++v10;
      if (v13 == i)
      {
        v12 = 0;
LABEL_25:
        v1 = v21;
        goto LABEL_32;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v7 = 0;
  v12 = 0;
LABEL_32:
  v15 = [objc_opt_self() defaultPermission];
  v16 = [v1 configuration];
  v17 = [v16 hostIdentifier];

  if (!v17)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = MEMORY[0x24C1FAD20](v18);
  }

  v19 = [v15 dataOwnerStateForBundleIdentifier_];

  if (v19 == 1 && v7)
  {

    return;
  }

  if (v12 || !i)
  {
    goto LABEL_38;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x24C1FC540](0, a1);
    goto LABEL_38;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(a1 + 32);
LABEL_38:

    return;
  }

  __break(1u);
}

void DOCDefaultSourceUIManager.updateAlertState(for:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v111 = *(v4 - 8);
  v112 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v110 = (&v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.UI);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, aBlock);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2493AC000, v9, v10, "[Default Source UI]: Updating Alert State for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C1FE850](v12, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  v113 = v2;
  v16 = [v2 configuration];
  v17 = [v16 hostIdentifier];

  v18 = v17;
  v19 = v17;
  if (!v17)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = MEMORY[0x24C1FAD20](v20);

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = MEMORY[0x24C1FAD20](v21);
  }

  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = v17;
  v24 = dispatch_semaphore_create(0);
  v25 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v22;
  aBlock[4] = partial apply for closure #1 in defaultSource #1 () in DOCDefaultSourceUIManager.updateAlertState(for:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_34_1;
  v27 = _Block_copy(aBlock);
  v28 = v24;

  [v25 defaultSourceForBundleIdentifier:v18 selectedSourceIdentifier:v8 completionBlock:v27];
  _Block_release(v27);

  OS_dispatch_semaphore.wait()();
  swift_beginAccess();
  v29 = *(v22 + 16);
  v30 = v29;

  if (v29)
  {
    v109 = v30;
    v31 = [v30 identifier];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
    if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
    {
    }

    else
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v44 & 1) == 0)
      {
        v65 = [v109 identifier];
        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v67;
        if (v66 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v68 == v69)
        {
        }

        else
        {
          v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v70 & 1) == 0)
          {
            v89 = v8;
            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              v114[0] = v108;
              *v92 = 136315138;
              v93 = v89;
              v94 = [v93 description];
              v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v97 = v96;

              v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, v114);

              *(v92 + 4) = v98;
              _os_log_impl(&dword_2493AC000, v90, v91, "[Default Source UI]: %s is no longer available -- switching to iCloud Drive", v92, 0xCu);
              v99 = v108;
              __swift_destroy_boxed_opaque_existential_0(v108);
              MEMORY[0x24C1FE850](v99, -1, -1);
              MEMORY[0x24C1FE850](v92, -1, -1);
            }

            v100 = [v109 identifier];
            [v25 setDefaultSourceIdentifier:v100 forBundleIdentifier:v19];

            v101 = OBJC_IVAR___DOCDefaultSourceUIManager_state;
            v56 = v113;
            swift_beginAccess();
            v102 = v56[v101];
            v103 = [v56 queue];
            v105 = v110;
            v104 = v111;
            *v110 = v103;
            v106 = v112;
            (*(v104 + 104))(v105, *MEMORY[0x277D85200], v112);
            LOBYTE(v100) = _dispatchPreconditionTest(_:)();
            (*(v104 + 8))(v105, v106);
            if (v100)
            {
              v56[v101] = 0;
              if (!v102)
              {
                goto LABEL_21;
              }

              goto LABEL_20;
            }

            goto LABEL_39;
          }
        }

        v71 = v8;
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v114[0] = v75;
          *v74 = 136315138;
          v76 = v71;
          v77 = [v76 description];
          v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v80 = v79;

          v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v114);

          *(v74 + 4) = v81;
          _os_log_impl(&dword_2493AC000, v72, v73, "[Default Source UI]: %s is no longer available -- switching to local", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v75);
          MEMORY[0x24C1FE850](v75, -1, -1);
          MEMORY[0x24C1FE850](v74, -1, -1);
        }

        v56 = v113;
        v82 = OBJC_IVAR___DOCDefaultSourceUIManager_state;
        swift_beginAccess();
        v83 = v56[v82];
        v84 = [v56 queue];
        v86 = v110;
        v85 = v111;
        *v110 = v84;
        v87 = v112;
        (*(v85 + 104))(v86, *MEMORY[0x277D85200], v112);
        v88 = _dispatchPreconditionTest(_:)();
        (*(v85 + 8))(v86, v87);
        if (v88)
        {
          v56[v82] = 2;
          if (v83 == 2)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return;
      }
    }

    v45 = v8;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v114[0] = v49;
      *v48 = 136315138;
      v50 = v45;
      v51 = [v50 description];
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v114);

      *(v48 + 4) = v55;
      _os_log_impl(&dword_2493AC000, v46, v47, "[Default Source UI]: %s is still available, nothing to do", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x24C1FE850](v49, -1, -1);
      MEMORY[0x24C1FE850](v48, -1, -1);
    }

    v56 = v113;
    v57 = OBJC_IVAR___DOCDefaultSourceUIManager_state;
    swift_beginAccess();
    v58 = v56[v57];
    v59 = [v56 queue];
    v61 = v110;
    v60 = v111;
    *v110 = v59;
    v62 = v112;
    (*(v60 + 104))(v61, *MEMORY[0x277D85200], v112);
    v63 = _dispatchPreconditionTest(_:)();
    (*(v60 + 8))(v61, v62);
    if (v63)
    {
      v56[v57] = 0;
      if (!v58)
      {
LABEL_21:

        return;
      }

LABEL_20:
      *(swift_allocObject() + 16) = v56;
      v64 = v56;
      DOCRunInMainThread(_:)();

      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_38;
  }

  v36 = v8;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v114[0] = v40;
    *v39 = 136315138;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v114);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_2493AC000, v37, v38, "[Default Source UI]: no default source for %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x24C1FE850](v40, -1, -1);
    MEMORY[0x24C1FE850](v39, -1, -1);
  }
}

Swift::Int closure #1 in defaultSource #1 () in DOCDefaultSourceUIManager.updateAlertState(for:)(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = a2;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.UI);
    v7 = a2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23[0] = v11;
      *v10 = 136315138;
      v12 = _convertErrorToNSError(_:)();
      v13 = [v12 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v23);

      *(v10 + 4) = v17;
      _os_log_impl(&dword_2493AC000, v8, v9, "Failed to fetch default source: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    v20 = *(a4 + 16);
    *(a4 + 16) = a1;
    v21 = a1;
  }

  return OS_dispatch_semaphore.signal()();
}

id DOCDefaultSourceUIManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t lazy protocol witness table accessor for type DOCDefaultSourceUIManager.State and conformance DOCDefaultSourceUIManager.State()
{
  result = lazy protocol witness table cache variable for type DOCDefaultSourceUIManager.State and conformance DOCDefaultSourceUIManager.State;
  if (!lazy protocol witness table cache variable for type DOCDefaultSourceUIManager.State and conformance DOCDefaultSourceUIManager.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCDefaultSourceUIManager.State and conformance DOCDefaultSourceUIManager.State);
  }

  return result;
}

uint64_t partial apply for closure #1 in DOCDefaultSourceUIManager.getIsICloudDriveEnabled(completion:)(unint64_t a1)
{
  v2 = *(v1 + 16);
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2(v3 != 0);
}

id partial apply for closure #1 in DOCDefaultSourceUIManager.state.didset()
{
  v1 = *(v0 + 16);
  [v1 dismissAlert];

  return [v1 presentAlert];
}

double specialized closure #1 in DOCDefaultSourceUIManager.init(configuration:sourceObserver:presentAlertsOn:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  result = MEMORY[0x28223BE20](v7, v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = v10;
    v21 = v9;
    swift_unknownObjectRetain();
    objc_opt_self();
    v14 = swift_dynamicCastObjCClassUnconditional();
    v19 = [v14 queue];
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    aBlock[4] = partial apply for closure #1 in closure #1 in DOCDefaultSourceUIManager.init(configuration:sourceObserver:presentAlertsOn:);
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_151;
    v16 = _Block_copy(aBlock);
    v17 = v14;
    static DispatchQoS.unspecified.getter();
    v22 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v19;
    MEMORY[0x24C1FB9A0](0, v13, v6, v16);
    _Block_release(v16);

    (*(v3 + 8))(v6, v2);
    (*(v20 + 8))(v13, v21);
  }

  return result;
}

double specialized DOCDefaultSourceUIManager.ubiquityIdentityDidChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  v12 = MEMORY[0x28223BE20](v21, v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v3 queue];
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a3;
  v17 = _Block_copy(aBlock);
  v18 = v3;
  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v14, v9, v17);
  _Block_release(v17);

  (*(v22 + 8))(v9, v6);
  (*(v10 + 8))(v14, v21);

  return result;
}

uint64_t DOCImageContainerFittingView.isShadowHidden.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_isShadowHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCImageContainerFittingView.isShadowHidden.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_isShadowHidden;
  swift_beginAccess();
  *(v1 + v3) = a1;
  DOCImageContainerFittingView.updateLayers()();
}

uint64_t (*DOCImageContainerFittingView.isShadowHidden.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCImageContainerFittingView.isShadowHidden.modify;
}

double DOCImageContainerFittingView.thumbnails.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_thumbnails;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void DOCImageContainerFittingView.init(frame:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = _UISolariumEnabled();
  v11 = 5.0;
  if (v10)
  {
    v11 = 20.0;
  }

  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_metrics] = v11;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_contentOffsetFromTop] = 0;
  v5[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_isShadowHidden] = 0;
  v12 = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_thumbnails] = v12;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_displayedNodes] = v12;
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_imageCache;
  type metadata accessor for ImageCache();
  swift_allocObject();
  *&v5[v13] = ImageCache.init()();
  v14 = 3;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_maxThumbnailCount] = 3;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_nodes] = v12;
  v39.receiver = v5;
  v39.super_class = type metadata accessor for DOCImageContainerFittingView();
  v15 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a2, a3, a4, a5);
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_metrics;
  v17 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
  do
  {
    v18 = *&v15[v16];
    v19 = [objc_allocWithZone(MEMORY[0x277D06388]) init];
    v20 = [v19 layer];
    [v20 setBorderWidth_];

    v21 = [v19 layer];
    [v21 setCornerRadius_];

    [v19 setContentMode_];
    [v19 setClipsToBounds_];
    v22 = *&v15[v16];
    v23 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    [v23 setClipsToBounds_];
    v24 = [v23 layer];
    [v24 setMasksToBounds_];
    [v24 setBorderWidth_];
    [v24 setCornerRadius_];
    [v24 setShadowOffset_];
    LODWORD(v25) = 1036831949;
    [v24 setShadowOpacity_];

    [v19 setDelegate_];
    [v19 frame];
    [v23 setFrame_];
    [v19 setClipsToBounds_];

    swift_beginAccess();
    v26 = *&v15[v17];
    v27 = v19;
    v28 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v15[v17] = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
      *&v15[v17] = v26;
    }

    v31 = *(v26 + 2);
    v30 = *(v26 + 3);
    if (v31 >= v30 >> 1)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v26);
    }

    *(v26 + 2) = v31 + 1;
    v32 = &v26[16 * v31];
    *(v32 + 4) = v27;
    *(v32 + 5) = v28;
    *&v15[v17] = v26;
    swift_endAccess();

    --v14;
  }

  while (v14);
  v33 = *&v15[v17];
  v34 = *(v33 + 16);
  if (v34)
  {

    v35 = (v33 + 16 * v34 + 24);
    while (v34 <= *(v33 + 16))
    {
      --v34;
      v36 = *v35;
      v37 = *(v35 - 1);
      v38 = v36;
      [v15 addSubview_];
      [v15 addSubview_];

      v35 -= 2;
      if (!v34)
      {

        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    [v15 setClipsToBounds_];
    DOCImageContainerFittingView.updateTransforms()();
  }
}

double DOCImageContainerFittingView.fittingSize.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!*(v2 + 16))
  {
    return 0.0;
  }

  [*(v2 + 32) fittingSize];
  return result;
}

id DOCImageContainerFittingView.fittingSize.setter(double a1, double a2)
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
  swift_beginAccess();
  v6 = *&v2[v5];
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = 32;
    do
    {
      [*(v6 + v8) setFittingSize_];
      v8 += 16;
      --v7;
    }

    while (v7);
  }

  return [v2 invalidateIntrinsicContentSize];
}

void (*DOCImageContainerFittingView.fittingSize.modify(uint64_t *a1))(double **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (*(v6 + 16))
  {
    [*(v6 + 32) fittingSize];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *(v4 + 24) = v7;
  *(v4 + 32) = v8;
  return DOCImageContainerFittingView.fittingSize.modify;
}

void DOCImageContainerFittingView.fittingSize.modify(double **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 5);
  v4 = *&v3[*(v2 + 6)];
  v5 = *(v4 + 16);
  if (a2)
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    v7 = v2[3];
    v6 = v2[4];
    v8 = (v4 + 32);

    do
    {
      v9 = *v8;
      v8 += 2;
      [v9 setFittingSize_];
      --v5;
    }

    while (v5);
  }

  else
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    v11 = v2[3];
    v10 = v2[4];
    v12 = (v4 + 32);

    do
    {
      v13 = *v12;
      v12 += 2;
      [v13 setFittingSize_];
      --v5;
    }

    while (v5);
  }

  v3 = *(v2 + 5);
LABEL_10:
  [v3 invalidateIntrinsicContentSize];

  free(v2);
}

void *DOCImageContainerFittingView.firstThumbnailView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = *(v2 + 32);
  v4 = v3;
  return v3;
}

id DOCImageContainerFittingView.nodes.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMd, &_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v75 = &v64 - v3;
  v4 = type metadata accessor for ImageOptions();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4, v6);
  v74 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = (&v64 - v10);
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_nodes;
  swift_beginAccess();
  v76 = v0;
  v13 = *(v0 + v12);
  v14 = (v13 >> 62);
  if (v13 >> 62)
  {
    goto LABEL_36;
  }

  result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 3)
  {
    v16 = 3;
  }

  else
  {
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v16)
  {
    goto LABEL_70;
  }

  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      swift_bridgeObjectRetain_n();
      if (v16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
        _ArrayBuffer._typeCheckSlowPath(_:)(0);
        if (v16 != 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
          _ArrayBuffer._typeCheckSlowPath(_:)(1);
          if (v16 != 2)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
            _ArrayBuffer._typeCheckSlowPath(_:)(2);
          }
        }
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    v78 = v4;

    if (v14)
    {
      v18 = _CocoaArrayWrapper.subscript.getter();
      v19 = v21;
      v17 = v22;
      v20 = v23;

      if ((v20 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v17 = 0;
      v18 = v13 & 0xFFFFFFFFFFFFFF8;
      v19 = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
      v20 = (2 * v16) | 1;
      if ((v20 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v26 = swift_dynamicCastClass();
    if (!v26)
    {
      swift_unknownObjectRelease();
      v26 = MEMORY[0x277D84F90];
    }

    v14 = *(v26 + 16);

    if (__OFSUB__(v20 >> 1, v17))
    {
      __break(1u);
LABEL_62:
      swift_unknownObjectRelease_n();
LABEL_16:
      specialized _copyCollectionToContiguousArray<A>(_:)(v18, v19, v17, v20);
      v25 = v24;
      goto LABEL_23;
    }

    if (v14 != ((v20 >> 1) - v17))
    {
      goto LABEL_62;
    }

    v25 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v25)
    {
      goto LABEL_24;
    }

    v25 = MEMORY[0x277D84F90];
LABEL_23:
    swift_unknownObjectRelease();
LABEL_24:
    v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_displayedNodes;
    v27 = v76;
    *(v76 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_displayedNodes) = v25;

    v29 = (*((*MEMORY[0x277D85000] & *v27) + 0xF0))(v28);
    v13 = v29;
    v73 = v11;
    v77 = v5;
    if (v29 >> 62)
    {
      goto LABEL_38;
    }

    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v76;
    if (!v30)
    {
      break;
    }

LABEL_26:
    v31 = 0;
    while ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x24C1FC540](v31, v13);
      v5 = (v31 + 1);
      if (__OFADD__(v31, 1))
      {
        goto LABEL_34;
      }

LABEL_30:
      [v14 removeListener_];
      swift_unknownObjectRelease();
      ++v31;
      if (v5 == v30)
      {
        goto LABEL_39;
      }
    }

    if (v31 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_35;
    }

    v14 = *(v13 + 8 * v31 + 32);
    swift_unknownObjectRetain();
    v5 = (v31 + 1);
    if (!__OFADD__(v31, 1))
    {
      goto LABEL_30;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v32 = __CocoaSet.count.getter();
    if (__CocoaSet.count.getter() < 0)
    {
      __break(1u);
LABEL_38:
      v30 = __CocoaSet.count.getter();
      v11 = v76;
      if (!v30)
      {
        break;
      }

      goto LABEL_26;
    }

    if (v32 >= 3)
    {
      v63 = 3;
    }

    else
    {
      v63 = v32;
    }

    if (v32 >= 0)
    {
      v16 = v63;
    }

    else
    {
      v16 = 3;
    }

    result = __CocoaSet.count.getter();
    if (result < v16)
    {
LABEL_70:
      __break(1u);
      return result;
    }
  }

LABEL_39:

  (*((*MEMORY[0x277D85000] & *v11) + 0xF8))(MEMORY[0x277D84F90]);
  v33 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
  swift_beginAccess();
  v72 = v33;
  v34 = *(v11 + v33);
  v35 = *(v34 + 16);

  if (v35)
  {
    v36 = 0;
    v37 = (v34 + 40);
    do
    {
      if (v36 >= *(v34 + 16))
      {
        __break(1u);
        goto LABEL_58;
      }

      ++v36;
      v38 = *v37;
      v39 = *(v37 - 1);
      v40 = v38;
      [v39 setHidden_];
      [v40 setHidden_];

      v37 += 2;
    }

    while (v35 != v36);
  }

  v34 = *(v4 + v11);
  if (v34 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v42 = v78;
    v71 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_imageCache;

    if (!i)
    {
      break;
    }

    v43 = 0;
    v44 = 0;
    v70 = v34 & 0xC000000000000001;
    v69 = v34 & 0xFFFFFFFFFFFFFF8;
    v66 = v77 + 16;
    v65 = v77 + 8;
    v68 = v34;
    v67 = i;
    while (1)
    {
      if (v70)
      {
        MEMORY[0x24C1FC540](v44, v34);
      }

      else
      {
        if (v44 >= *(v69 + 16))
        {
          goto LABEL_59;
        }

        swift_unknownObjectRetain();
      }

      v45 = *(v11 + v72);
      if (v44 >= *(v45 + 16))
      {
        break;
      }

      v46 = v45 + v43;
      v47 = *(v46 + 40);
      v48 = *((*MEMORY[0x277D85000] & *v11) + 0x120);
      v78 = *(v46 + 32);
      v77 = v47;
      v48();
      v49 = [v11 traitCollection];
      [v49 displayScale];

      v50 = [v11 traitCollection];
      UITraitCollection._ifColorForIconFolderTintComponents.getter();

      v51 = v73;
      ImageOptions.init(size:scale:isFolded:folderTintComponents:)();
      (*v66)(v74, v51, v42);
      v52 = objc_allocWithZone(type metadata accessor for NodeThumbnail());
      swift_unknownObjectRetain();

      v53 = NodeThumbnail.init(node:imageOptions:imageCache:)();
      NodeThumbnail.addListener(_:)();
      v54 = v42;
      v55 = *((*MEMORY[0x277D85000] & *v11) + 0x100);
      v56 = v53;
      v57 = v55(v79);
      v59 = v58;
      MEMORY[0x24C1FB090]();
      if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v44;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v57(v79, 0);
      v60 = v78;
      [v78 setHidden_];
      v61 = v77;
      [v77 setHidden_];
      v62 = NodeThumbnail.thumbnail.getter();
      [v60 setImage_];
      swift_unknownObjectRelease();

      (*v65)(v51, v54);
      v43 += 16;
      v42 = v54;
      v11 = v76;
      v34 = v68;
      if (v67 == v44)
      {
        goto LABEL_56;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_56:

  DOCImageContainerFittingView.updateTransforms()();
  [v11 invalidateIntrinsicContentSize];
  return [v11 setNeedsLayout];
}

id DOCImageContainerFittingView.nodes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_nodes;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return DOCImageContainerFittingView.nodes.didset();
}

uint64_t (*DOCImageContainerFittingView.nodes.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCImageContainerFittingView.nodes.modify;
}

uint64_t DOCImageContainerFittingView.isShadowHidden.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

CGSize __swiftcall DOCImageContainerFittingView.systemLayoutSizeFitting(_:)(CGSize a1)
{
  width = a1.width;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
  swift_beginAccess();
  v4 = *(*&v1[v3] + 16);
  if (v4)
  {
    v5 = 0.0;
    v6 = ( + 40);
    do
    {
      v7 = *v6;
      v8 = *(v6 - 1);
      v9 = v7;
      v10 = [v8 image];
      if (v10)
      {
        v11 = v10;
        [v10 size];
        v12 = [v1 window];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 screen];

          [v14 scale];
        }

        DOCAdaptSizeToRect();
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        [v8 transform];
        v28.origin.x = v16;
        v28.origin.y = v18;
        v28.size.width = v20;
        v28.size.height = v22;
        v29 = CGRectApplyAffineTransform(v28, &v27);
        height = v29.size.height;

        if (v5 <= height)
        {
          v5 = height;
        }
      }

      else
      {
      }

      v6 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = 0.0;
  }

  v24 = width;
  v25 = v5;
  result.height = v25;
  result.width = v24;
  return result;
}

Swift::Void __swiftcall DOCImageContainerFittingView.updateContentFrame()()
{
  [v0 bounds];
  rect = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
  swift_beginAccess();
  v9 = *(*&v0[v8] + 16);
  if (v9)
  {
    v10 = ( + 40);
    do
    {
      v12 = *v10;
      v13 = *(v10 - 1);
      v14 = v12;
      v15 = v13;
      v16 = v14;
      [v15 intrinsicContentSize];
      v17 = [v0 window];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 screen];

        [v19 scale];
      }

      DOCAdaptSizeToRect();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      if (_UISolariumEnabled())
      {
        if ([v0 effectiveUserInterfaceLayoutDirection] == 1)
        {
          v31.origin.x = rect;
          v31.origin.y = v3;
          v31.size.width = v5;
          v31.size.height = v7;
          MidX = CGRectGetWidth(v31) + v25 * -0.5;
        }

        else
        {
          MidX = v25 * 0.5;
        }
      }

      else
      {
        v29.origin.x = v21;
        v29.origin.y = v23;
        v29.size.width = v25;
        v29.size.height = v27;
        MidX = CGRectGetMidX(v29);
      }

      v30.origin.x = v21;
      v30.origin.y = v23;
      v30.size.width = v25;
      v30.size.height = v27;
      [v15 setCenter_];
      [v15 bounds];
      [v15 setBounds_];
      [v15 center];
      [v16 setCenter_];
      [v15 bounds];

      [v16 bounds];
      [v16 setBounds_];

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  DOCImageContainerFittingView.updateLayers()();
}

void DOCImageContainerFittingView.updateTransforms()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (!v3)
  {
LABEL_21:

    return;
  }

  v4 = 0;
  v30 = *MEMORY[0x277CBF2C0];
  v31 = *(MEMORY[0x277CBF2C0] + 16);
  v5 = *(MEMORY[0x277CBF2C0] + 32);
  v6 = *(MEMORY[0x277CBF2C0] + 40);
  while (v4 < *(v2 + 16))
  {
    v9 = v2 + 32 + 16 * v4;
    v11 = *v9;
    v10 = *(v9 + 8);
    if (v4)
    {
      t1.a = 0.0;
      v12 = v11;
      v13 = v10;
      v14 = v12;
      v15 = v13;
      while (1)
      {
        MEMORY[0x24C1FE870](&t1, 8);
        if ((0x20000000000001 * *&t1.a) >= 0x1FFFFFFFFFF801)
        {
          break;
        }

        t1.a = 0.0;
      }

      v16 = (*&t1.a * 0x20000000000001uLL) >> 64;
      if (v16 == 0x20000000000000)
      {
        v17 = 7.0;
        if (v4)
        {
          goto LABEL_15;
        }

LABEL_14:
        v17 = -v17;
      }

      else
      {
        v17 = vcvtd_n_f64_u64(v16, 0x35uLL) * 4.0 + 3.0;
        if ((v4 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_15:
      Rotation = CGAffineTransformMakeRotation(&t1, v17 * 3.14159265 / 180.0);
      v34 = *&t1.a;
      v36 = *&t1.c;
      tx = t1.tx;
      ty = t1.ty;
      goto LABEL_16;
    }

    v18 = v11;
    v19 = v10;
    v20 = v18;
    Rotation = v19;
    tx = v5;
    ty = v6;
    v34 = v30;
    v36 = v31;
LABEL_16:
    v24 = (*((*MEMORY[0x277D85000] & *v0) + 0x140))(Rotation);
    if (v24 >> 62)
    {
      v25 = __CocoaSet.count.getter();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v5;
    v27 = v6;
    v28 = v30;
    v29 = v31;
    if (v25 >= 2)
    {
      CGAffineTransformMakeScale(&t1, 0.95, 0.95);
      v28 = *&t1.a;
      v29 = *&t1.c;
      v26 = t1.tx;
      v27 = t1.ty;
    }

    ++v4;
    *&t1.a = v34;
    *&t1.c = v36;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v28;
    *&t2.c = v29;
    t2.tx = v26;
    t2.ty = v27;
    CGAffineTransformConcat(&v37, &t1, &t2);
    v33 = *&v37.c;
    v35 = *&v37.a;
    v32 = *&v37.tx;
    v7 = v11;
    *&t1.a = v35;
    *&t1.c = v33;
    *&t1.tx = v32;
    [v7 setTransform_];
    [v7 transform];
    [v10 setTransform_];
    v8 = [v7 layer];

    [v8 setAllowsEdgeAntialiasing_];
    if (v4 == v3)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

void DOCImageContainerFittingView.updateLayers()()
{
  v1 = v0;
  v44 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_displayedNodes;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_displayedNodes);
  if (v2 >> 62)
  {
    goto LABEL_40;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      v42 = objc_opt_self();
      v40 = *((*MEMORY[0x277D85000] & *v1) + 0xF0);
      v38 = *((*MEMORY[0x277D85000] & *v1) + 0xB0);
      v39 = (*MEMORY[0x277D85000] & *v1) + 176;
      v41 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
      swift_beginAccess();
      v4 = 0;
      v5 = 4;
      v43 = v1;
      while (1)
      {
        v14 = v5 - 4;
        v15 = *(v1 + v44);
        if ((v15 & 0xC000000000000001) != 0)
        {

          v16 = MEMORY[0x24C1FC540](v5 - 4, v15);
        }

        else
        {
          if (v14 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v16 = *(v15 + 8 * v5);
          swift_unknownObjectRetain();
        }

        swift_getObjectType();
        v17 = (DOCNode.areDiskPropertiesSupported.getter() & 1) != 0 ? 2 : [v16 isFolder];
        swift_unknownObjectRelease();
        v18 = *(v1 + v41);
        if (v14 >= *(v18 + 16))
        {
          break;
        }

        v19 = v18 + v4;
        v20 = *(v19 + 32);
        v21 = *(v19 + 40);
        v22 = v20;
        v23 = v40();
        if ((v23 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x24C1FC540](v5 - 4, v23);
        }

        else
        {
          if (v14 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v24 = *(v23 + 8 * v5);
          swift_unknownObjectRetain();
        }

        v25 = [v24 isRepresentativeIcon];
        if (v17)
        {
          v26 = 0;
        }

        else
        {
          v26 = v25;
        }

        v45 = v22;
        v27 = [v22 layer];
        if (v26 == 1)
        {
          type metadata accessor for CGColorRef(0);
          _CGColorInitTrampoline.init(_colorLiteralRed:green:blue:alpha:)();
          v28 = v46;
        }

        else
        {
          v29 = [v42 clearColor];
          v28 = [v29 CGColor];

          v1 = v43;
        }

        [v27 setBorderColor_];

        [v21 setHidden_];
        v30 = [v21 layer];
        if (v17 == 1)
        {
          v31 = *(v1 + v44);
          if ((v31 & 0xC000000000000001) != 0)
          {

            v32 = MEMORY[0x24C1FC540](v5 - 4, v31);
          }

          else
          {
            if (v14 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            v32 = *(v31 + 8 * v5);
            swift_unknownObjectRetain();
          }

          [v21 bounds];
          if (v33 <= 0.0 || v34 <= 0.0)
          {
            v35 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
          }

          else
          {
            v35 = specialized static UIBezierPath.path(for:thumbnailSize:)(v32, v33, v34);
          }

          v36 = v35;
          swift_unknownObjectRelease();
          v6 = [v36 CGPath];
        }

        else
        {
          v6 = 0;
        }

        [v30 setShadowPath_];

        v7 = [v21 layer];
        v8 = &selRef_systemBackgroundColor;
        if (!v26)
        {
          v8 = &selRef_clearColor;
        }

        v9 = [v42 *v8];
        v10 = [v9 CGColor];

        [v7 setBackgroundColor_];
        v11 = [v21 layer];
        v12 = [v42 blackColor];
        v13 = [v12 CGColor];

        [v11 setShadowColor_];
        swift_unknownObjectRelease();

        ++v5;
        v4 += 16;
        --v3;
        v1 = v43;
        if (!v3)
        {
          return;
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
      v37 = __CocoaSet.count.getter();
      if (v37 < 0)
      {
        __break(1u);
      }

      v3 = v37;
    }

    while (v37);
  }
}

double DOCImageContainerFittingView.thumbnailLoaded(_:)(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  swift_unknownObjectRetain();
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in DOCImageContainerFittingView.thumbnailLoaded(_:)(void *a1, void *a2)
{
  v2 = (*((*MEMORY[0x277D85000] & *a1) + 0xF0))();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_19:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C1FC540](v6, v3);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v7 = *(v3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    v8 = [v7 hash];
    v9 = [a2 hash];
    swift_unknownObjectRelease();
    if (v8 == v9)
    {

      DOCImageContainerFittingView.updateThumbnail(_:at:)(a2, v6);
      return;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_18;
    }
  }
}

void DOCImageContainerFittingView.updateThumbnail(_:at:)(void *a1, unint64_t a2)
{
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = *&v7[v2];
  if (*(v8 + 16) <= a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    if (__CocoaSet.count.getter() > 1)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  a2 = *(v8 + 16 * a2 + 32);
  v7 = [a2 image];
  v4 = &selRef_removeFromSuperlayer;
  v3 = [a1 thumbnail];
  v9 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_displayedNodes);
  if (v9 >> 62)
  {
    goto LABEL_11;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
LABEL_7:

    goto LABEL_8;
  }

LABEL_5:
  if (v7)
  {
    v7 = v7;
    [v7 size];
    [v7 size];
    [v3 size];
    [v3 size];

    goto LABEL_7;
  }

LABEL_8:

  v10 = [a1 v4[443]];
  [a2 setImage_];

  (*((*MEMORY[0x277D85000] & *v2) + 0x158))();
  [v2 setNeedsLayout];
}

double DOCContainerFittingView.fittingSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_fittingSize;
  swift_beginAccess();
  return *v1;
}

id DOCContainerFittingView.fittingSize.setter(double a1, double a2)
{
  v5 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_fittingSize];
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return [v2 invalidateIntrinsicContentSize];
}

id (*DOCContainerFittingView.fittingSize.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCContainerFittingView.fittingSize.modify;
}

id DOCContainerFittingView.fittingSize.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 invalidateIntrinsicContentSize];
  }

  return result;
}

uint64_t DOCContainerFittingView.preventContentOffsetUpdates.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_preventContentOffsetUpdates;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCContainerFittingView.preventContentOffsetUpdates.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_preventContentOffsetUpdates;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *DOCContainerFittingView.observationContext.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_observationContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCContainerFittingView.observationContext.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_observationContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *DOCContainerFittingView.__allocating_init(containedViewController:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_fittingSize];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_preventContentOffsetUpdates] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_contentOffsetFromTop] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_observationContext] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_containedViewController] = a1;
  v12.receiver = v3;
  v12.super_class = v1;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  result = [v5 view];
  if (result)
  {
    v8 = result;
    [v6 addSubview_];

    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v10 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_observationContext;
    swift_beginAccess();
    v11 = *&v6[v10];
    *&v6[v10] = v9;

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *DOCContainerFittingView.init(containedViewController:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_fittingSize];
  *v3 = 0;
  v3[1] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_preventContentOffsetUpdates] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_contentOffsetFromTop] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_observationContext] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_containedViewController] = a1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for DOCContainerFittingView();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  result = [v4 view];
  if (result)
  {
    v7 = result;
    [v5 addSubview_];

    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v9 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_observationContext;
    swift_beginAccess();
    v10 = *&v5[v9];
    *&v5[v9] = v8;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in DOCContainerFittingView.init(containedViewController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24NSKeyValueObservedChangeVySo6CGSizeVGMd, &_s10Foundation24NSKeyValueObservedChangeVySo6CGSizeVGMR);
  NSKeyValueObservedChange.oldValue.getter();
  NSKeyValueObservedChange.newValue.getter();
  if (v11)
  {
    if (v14)
    {
      return;
    }

    goto LABEL_9;
  }

  if ((v14 & 1) != 0 || (v9 == v12 ? (v3 = v10 == v13) : (v3 = 0), !v3))
  {
LABEL_9:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [Strong invalidateIntrinsicContentSize];
      [v5 setNeedsLayout];
      [v5 layoutIfNeeded];
      v6 = MEMORY[0x277D85000];
      v7 = *((*MEMORY[0x277D85000] & *v5) + 0x98);
      v8 = v7(1);
      (*((*v6 & *v5) + 0xC8))(v8);
      v7(0);
    }
  }
}

Swift::Void __swiftcall DOCContainerFittingView.layoutSubviews()()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for DOCContainerFittingView();
  objc_msgSendSuper2(&v25, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_containedViewController);
  [v9 preferredContentSize];
  v10 = [v0 window];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 screen];

    [v12 scale];
  }

  DOCAdaptSizeToRect();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v26.origin.x = v2;
  v26.origin.y = v4;
  v26.size.width = v6;
  v26.size.height = v8;
  MaxY = CGRectGetMaxY(v26);
  v27.origin.x = v14;
  v27.origin.y = v16;
  v27.size.width = v18;
  v27.size.height = v20;
  Height = CGRectGetHeight(v27);
  v23 = [v9 view];
  if (v23)
  {
    v24 = v23;
    [v23 setFrame_];

    (*((*MEMORY[0x277D85000] & *v0) + 0xC8))();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall DOCContainerFittingView.updateContenOffsetFromTop()()
{
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x90))() & 1) == 0)
  {
    [v0 frame];
    v2 = v1;
    v3 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_containedViewController) view];
    if (v3)
    {
      v4 = v3;
      [v3 frame];
      v6 = v5;

      [v0 setContentOffsetFromTop_];
    }

    else
    {
      __break(1u);
    }
  }
}

id DOCContainerFittingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCContainerFittingView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_fittingSize);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_preventContentOffsetUpdates) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_contentOffsetFromTop) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_observationContext) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id DOCImageContainerFittingView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void specialized DOCImageContainerFittingView.init(coder:)(uint64_t a1)
{
  v2 = _UISolariumEnabled();
  v3 = 5.0;
  if (v2)
  {
    v3 = 20.0;
  }

  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_metrics) = v3;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_contentOffsetFromTop) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_isShadowHidden) = 0;
  v4 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_viewPairs) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_thumbnails) = v4;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_displayedNodes) = v4;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_imageCache;
  type metadata accessor for ImageCache();
  swift_allocObject();
  *(v1 + v5) = ImageCache.init()();
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_maxThumbnailCount) = 3;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_nodes) = v4;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t objectdestroyTm_5()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id DOCItemCollectionViewPool.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionViewPool_configuration] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id DOCItemCollectionViewPool.init(configuration:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionViewPool_configuration] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCItemCollectionViewPool();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DOCItemCollectionViewPool.collectionView(withLayout:updateDataSourceHandler:)(void *a1, void (*a2)(void))
{
  v5 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionViewPool_configuration);
  v6 = objc_allocWithZone(type metadata accessor for DOCItemCollectionView());
  v7 = DOCItemCollectionView.init(configuration:collectionViewLayout:)(v5, a1);
  a2();
  return v7;
}

id DOCItemCollectionViewPool.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCItemCollectionViewPool.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCItemCollectionViewPool();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DOCViewOptionsView.viewModel.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  specialized DOCViewOptionsView.viewModel.getter(a1, a2);

  return swift_unknownObjectRetain();
}

uint64_t DOCViewOptionsView.viewModel.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 8) = a1;
  return result;
}

void DOCViewOptionsView.embeddedInHostingController()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = type metadata accessor for UIHostingControllerSizingOptions();
  MEMORY[0x28223BE20](v7 - 8, v8);
  type metadata accessor for DOCViewOptionsView(255, a3, a4, v9);
  swift_getWitnessTable();
  type metadata accessor for UIHostingController();
  swift_unknownObjectRetain();
  v10 = UIHostingController.__allocating_init(rootView:)();
  v11 = *(a4 + 16);
  swift_unknownObjectRetain();
  v12 = v10;
  v13 = v11(a3, a4);
  v15 = v14;
  swift_unknownObjectRelease();
  v16 = MEMORY[0x24C1FAD20](v13, v15);

  [v12 setTitle_];

  v17 = [v12 view];
  if (v17)
  {
    v18 = [objc_opt_self() clearColor];
    [v17 setBackgroundColor_];

    static UIHostingControllerSizingOptions.preferredContentSize.getter();
    dispatch thunk of UIHostingController.sizingOptions.setter();
  }

  else
  {
    __break(1u);
  }
}

uint64_t DOCViewOptionsView.contentView(for:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v175 = a3;
  v176 = a4;
  v181 = a6;
  v182 = a2;
  LODWORD(v174) = a1;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ToggleVyAA4TextVGMd, &_s7SwiftUI6ToggleVyAA4TextVGMR);
  v166 = *(v168 - 1);
  MEMORY[0x28223BE20](v168, v9);
  v165 = &v144 - v10;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v180, v11);
  v167 = &v144 - v12;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAPGApGyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAK_APQo_AA31AccessibilityAttachmentModifierVGGGAZG_AGyAA6SliderVyAA05EmptyE0VA6_GAZGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAPGApGyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAK_APQo_AA31AccessibilityAttachmentModifierVGGGAZG_AGyAA6SliderVyAA05EmptyE0VA6_GAZGSgtGGMR);
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163, v13);
  v150 = (&v144 - v14);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAPGApGyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAK_APQo_AA31AccessibilityAttachmentModifierVGGGAZG_AGyAA6SliderVyAA05EmptyE0VA6_GAZGSgtGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAPGApGyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAK_APQo_AA31AccessibilityAttachmentModifierVGGGAZG_AGyAA6SliderVyAA05EmptyE0VA6_GAZGSgtGGSgMR);
  MEMORY[0x28223BE20](v173, v15);
  v164 = &v144 - v16;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA9TupleViewVyAA08ModifiedD0VyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAIyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAVGAvkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAGyAS_AA8StaticIfVyAA8SolariumVASSgAA05EmptyG0VGtGGA5_yAA0G14InputPredicatePAAE1nopyQrxFZQOyA7__Qo_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA19_5ScaleOGGSgA10_GG_AVQo_GGAA0L18AttachmentModifierVG_Qo_A33_G_AIyAQyAsT0t8GroupingN0OAXySayA38_GA38_AIyAkAEAZ_A_Qrqd___SbtSHRd__lFQOyAS_A38_Qo_A33_GGGA33_GSgtGAA6VStackVyAGyAIyAQyAsT29DOCBrowserLayoutConfigurationV11SizeSettingOAXySayA52_GA52_AIyAkAEAZ_A_Qrqd___SbtSHRd__lFQOyAS_A52_Qo_A33_GGGA33_G_AIyAA6SliderVyA10_A10_GA33_GSgtGGSgGAIyAA6ToggleVyASGA33_G_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA9TupleViewVyAA08ModifiedD0VyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAIyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAVGAvkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAGyAS_AA8StaticIfVyAA8SolariumVASSgAA05EmptyG0VGtGGA5_yAA0G14InputPredicatePAAE1nopyQrxFZQOyA7__Qo_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA19_5ScaleOGGSgA10_GG_AVQo_GGAA0L18AttachmentModifierVG_Qo_A33_G_AIyAQyAsT0t8GroupingN0OAXySayA38_GA38_AIyAkAEAZ_A_Qrqd___SbtSHRd__lFQOyAS_A38_Qo_A33_GGGA33_GSgtGAA6VStackVyAGyAIyAQyAsT29DOCBrowserLayoutConfigurationV11SizeSettingOAXySayA52_GA52_AIyAkAEAZ_A_Qrqd___SbtSHRd__lFQOyAS_A52_Qo_A33_GGGA33_G_AIyAA6SliderVyA10_A10_GA33_GSgtGGSgGAIyAA6ToggleVyASGA33_G_GMR);
  MEMORY[0x28223BE20](v178, v17);
  v179 = &v144 - v18;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA08ModifiedD0VyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAIyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAVGAvkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAGyAS_AA8StaticIfVyAA8SolariumVASSgAA05EmptyG0VGtGGA5_yAA0G14InputPredicatePAAE1nopyQrxFZQOyA7__Qo_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA19_5ScaleOGGSgA10_GG_AVQo_GGAA0L18AttachmentModifierVG_Qo_A33_G_AIyAQyAsT0t8GroupingN0OAXySayA38_GA38_AIyAkAEAZ_A_Qrqd___SbtSHRd__lFQOyAS_A38_Qo_A33_GGGA33_GSgtGAA6VStackVyAGyAIyAQyAsT29DOCBrowserLayoutConfigurationV11SizeSettingOAXySayA52_GA52_AIyAkAEAZ_A_Qrqd___SbtSHRd__lFQOyAS_A52_Qo_A33_GGGA33_G_AIyAA6SliderVyA10_A10_GA33_GSgtGGSg_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA08ModifiedD0VyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAIyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAVGAvkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAGyAS_AA8StaticIfVyAA8SolariumVASSgAA05EmptyG0VGtGGA5_yAA0G14InputPredicatePAAE1nopyQrxFZQOyA7__Qo_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA19_5ScaleOGGSgA10_GG_AVQo_GGAA0L18AttachmentModifierVG_Qo_A33_G_AIyAQyAsT0t8GroupingN0OAXySayA38_GA38_AIyAkAEAZ_A_Qrqd___SbtSHRd__lFQOyAS_A38_Qo_A33_GGGA33_GSgtGAA6VStackVyAGyAIyAQyAsT29DOCBrowserLayoutConfigurationV11SizeSettingOAXySayA52_GA52_AIyAkAEAZ_A_Qrqd___SbtSHRd__lFQOyAS_A52_Qo_A33_GGGA33_G_AIyAA6SliderVyA10_A10_GA33_GSgtGGSg_GMR);
  MEMORY[0x28223BE20](v170, v19);
  v21 = &v144 - v20;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayATGAtiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAEyAQ_AA8StaticIfVyAA8SolariumVAQSgAA05EmptyF0VGtGGA3_yAA0F14InputPredicatePAAE1nopyQrxFZQOyA5__Qo_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA17_5ScaleOGGSgA8_GG_ATQo_GGAA0K18AttachmentModifierVG_Qo_A31_G_AGyAOyAqR0s8GroupingM0OAVySayA36_GA36_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A36_Qo_A31_GGGA31_GSgtGAA6VStackVyAEyAGyAOyAqR29DOCBrowserLayoutConfigurationV11SizeSettingOAVySayA50_GA50_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A50_Qo_A31_GGGA31_G_AGyAA6SliderVyA8_A8_GA31_GSgtGGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayATGAtiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAEyAQ_AA8StaticIfVyAA8SolariumVAQSgAA05EmptyF0VGtGGA3_yAA0F14InputPredicatePAAE1nopyQrxFZQOyA5__Qo_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA17_5ScaleOGGSgA8_GG_ATQo_GGAA0K18AttachmentModifierVG_Qo_A31_G_AGyAOyAqR0s8GroupingM0OAVySayA36_GA36_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A36_Qo_A31_GGGA31_GSgtGAA6VStackVyAEyAGyAOyAqR29DOCBrowserLayoutConfigurationV11SizeSettingOAVySayA50_GA50_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A50_Qo_A31_GGGA31_G_AGyAA6SliderVyA8_A8_GA31_GSgtGGSgGMR);
  MEMORY[0x28223BE20](v177, v22);
  v172 = &v144 - v23;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayARGArgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Z5GroupVyACyAO_AA8StaticIfVyAA8SolariumVAOSgAA05EmptyD0VGtGGA1_yAA0D14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_ARQo_GGAA0J18AttachmentModifierVG_Qo_A29_G_AEyAMyAoP0r8GroupingL0OATySayA34_GA34_AEyAgAEAV_AWQrqd___SbtSHRd__lFQOyAO_A34_Qo_A29_GGGA29_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayARGArgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Z5GroupVyACyAO_AA8StaticIfVyAA8SolariumVAOSgAA05EmptyD0VGtGGA1_yAA0D14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_ARQo_GGAA0J18AttachmentModifierVG_Qo_A29_G_AEyAMyAoP0r8GroupingL0OATySayA34_GA34_AEyAgAEAV_AWQrqd___SbtSHRd__lFQOyAO_A34_Qo_A29_GGGA29_GSgtGMR);
  MEMORY[0x28223BE20](v171, v24);
  v26 = &v144 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAHGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AHQo_AA31AccessibilityAttachmentModifierVGGGMd, &_s7SwiftUI6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAHGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AHQo_AA31AccessibilityAttachmentModifierVGGGMR);
  v151 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v144 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGMd, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGMR);
  v169 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v144 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGSgMd, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGSgMR);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v38 = &v144 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v42 = (&v144 - v41);
  v161 = type metadata accessor for AccessibilityChildBehavior();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161, v43);
  v157 = &v144 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAHGAhA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Q5GroupVyAA05TupleM0VyAE_AA8StaticIfVyAA8SolariumVAESgAA05EmptyM0VGtGGAWyAA0M14InputPredicatePAAE1nopyQrxFZQOyAY_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA11_5ScaleOGGSgA0_GG_AHQo_GGMd, &_s7SwiftUI6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAHGAhA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Q5GroupVyAA05TupleM0VyAE_AA8StaticIfVyAA8SolariumVAESgAA05EmptyM0VGtGGAWyAA0M14InputPredicatePAAE1nopyQrxFZQOyAY_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA11_5ScaleOGGSgA0_GG_AHQo_GGMR);
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154, v45);
  v47 = &v144 - v46;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAJGAjA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0S5GroupVyAA05TupleO0VyAG_AA8StaticIfVyAA8SolariumVAGSgAA05EmptyO0VGtGGAYyAA0O14InputPredicatePAAE1nopyQrxFZQOyA__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA11_5ScaleOGGSgA2_GG_AJQo_GGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAJGAjA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0S5GroupVyAA05TupleO0VyAG_AA8StaticIfVyAA8SolariumVAGSgAA05EmptyO0VGtGGAYyAA0O14InputPredicatePAAE1nopyQrxFZQOyA__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA11_5ScaleOGGSgA2_GG_AJQo_GGAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v155, v48);
  v152 = &v144 - v49;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleC0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyC0VGtGGA1_yAA0C14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0G18AttachmentModifierVG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleC0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyC0VGtGGA1_yAA0C14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0G18AttachmentModifierVG_Qo_MR);
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159, v50);
  v156 = &v144 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_GMR);
  MEMORY[0x28223BE20](v52, v53);
  v59 = MEMORY[0x28223BE20](v54, v55);
  if (v174)
  {
    if (v174 != 1)
    {
      v117 = *(a5 + 48);
      v118 = v175;
      swift_unknownObjectRetain();
      v119 = v176;
      v189 = v117(v176, a5);
      v190 = v120;
      v121 = MEMORY[0x24C1F9D60](v182, v118, v119, *(a5 + 8));
      MEMORY[0x28223BE20](v121, v122);
      v142 = v119;
      v143 = a5;
      swift_getKeyPath();
      ObservedObject.Wrapper.subscript.getter();

      swift_unknownObjectRelease();
      lazy protocol witness table accessor for type String and conformance String();
      v123 = v165;
      Toggle<>.init<A>(_:isOn:)();
      (*(a5 + 136))(v119, a5);
      swift_unknownObjectRelease();
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Toggle<Text> and conformance Toggle<A>, &_s7SwiftUI6ToggleVyAA4TextVGMd, &_s7SwiftUI6ToggleVyAA4TextVGMR, MEMORY[0x277CDF068]);
      v124 = v167;
      v125 = v168;
      View.accessibilityIdentifier(_:)();

      v166[1](v123, v125);
      outlined init with copy of DOCGridLayout.Spec?(v124, v179, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      return outlined destroy of CharacterSet?(v124, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
    }

    v60 = v21;
    v61 = *(a5 + 256);
    v62 = v175;
    swift_unknownObjectRetain();
    v63 = v176;
    v64 = v61(v176, a5);
    swift_unknownObjectRelease();
    v65 = *(v64 + 16);

    if (v65)
    {
      v66 = static HorizontalAlignment.center.getter();
      v67 = v150;
      *v150 = v66;
      *(v67 + 8) = 0;
      *(v67 + 16) = 1;
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables010DOCBrowserG13ConfigurationV11SizeSettingOAA7ForEachVySayATGAtKyAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_AA31AccessibilityAttachmentModifierVGGGA2_G_AKyAA6SliderVyAA05EmptyD0VA10_GA2_GSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables010DOCBrowserG13ConfigurationV11SizeSettingOAA7ForEachVySayATGAtKyAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_AA31AccessibilityAttachmentModifierVGGGA2_G_AKyAA6SliderVyAA05EmptyD0VA10_GA2_GSgtGGMR);
      closure #5 in DOCViewOptionsView.contentView(for:)(v182, v62, v63, a5, v67 + *(v68 + 44), a7);
      v69 = v164;
      outlined init with take of (key: URL, value: FPItem)(v67, v164, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAPGApGyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAK_APQo_AA31AccessibilityAttachmentModifierVGGGAZG_AGyAA6SliderVyAA05EmptyE0VA6_GAZGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAPGApGyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAK_APQo_AA31AccessibilityAttachmentModifierVGGGAZG_AGyAA6SliderVyAA05EmptyE0VA6_GAZGSgtGGMR);
      (v162[7])(v69, 0, 1, v163);
    }

    else
    {
      v69 = v164;
      (v162[7])(v164, 1, 1, v163);
    }

    outlined init with copy of DOCGridLayout.Spec?(v69, v60, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAPGApGyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAK_APQo_AA31AccessibilityAttachmentModifierVGGGAZG_AGyAA6SliderVyAA05EmptyE0VA6_GAZGSgtGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAPGApGyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAK_APQo_AA31AccessibilityAttachmentModifierVGGGAZG_AGyAA6SliderVyAA05EmptyE0VA6_GAZGSgtGGSgMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayARGArgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Z5GroupVyACyAO_AA8StaticIfVyAA8SolariumVAOSgAA05EmptyD0VGtGGA1_yAA0D14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_ARQo_GGAA0J18AttachmentModifierVG_Qo_A29_G_AEyAMyAoP0r8GroupingL0OATySayA34_GA34_AEyAgAEAV_AWQrqd___SbtSHRd__lFQOyAO_A34_Qo_A29_GGGA29_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayARGArgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Z5GroupVyACyAO_AA8StaticIfVyAA8SolariumVAOSgAA05EmptyD0VGtGGA1_yAA0D14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_ARQo_GGAA0J18AttachmentModifierVG_Qo_A29_G_AEyAMyAoP0r8GroupingL0OATySayA34_GA34_AEyAgAEAV_AWQrqd___SbtSHRd__lFQOyAO_A34_Qo_A29_GGGA29_GSgtGMR, MEMORY[0x277CE14C0]);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>? and conformance <A> A?();
    v127 = v172;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of DOCGridLayout.Spec?(v127, v179, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayATGAtiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAEyAQ_AA8StaticIfVyAA8SolariumVAQSgAA05EmptyF0VGtGGA3_yAA0F14InputPredicatePAAE1nopyQrxFZQOyA5__Qo_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA17_5ScaleOGGSgA8_GG_ATQo_GGAA0K18AttachmentModifierVG_Qo_A31_G_AGyAOyAqR0s8GroupingM0OAVySayA36_GA36_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A36_Qo_A31_GGGA31_GSgtGAA6VStackVyAEyAGyAOyAqR29DOCBrowserLayoutConfigurationV11SizeSettingOAVySayA50_GA50_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A50_Qo_A31_GGGA31_G_AGyAA6SliderVyA8_A8_GA31_GSgtGGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayATGAtiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAEyAQ_AA8StaticIfVyAA8SolariumVAQSgAA05EmptyF0VGtGGA3_yAA0F14InputPredicatePAAE1nopyQrxFZQOyA5__Qo_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA17_5ScaleOGGSgA8_GG_ATQo_GGAA0K18AttachmentModifierVG_Qo_A31_G_AGyAOyAqR0s8GroupingM0OAVySayA36_GA36_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A36_Qo_A31_GGGA31_GSgtGAA6VStackVyAEyAGyAOyAqR29DOCBrowserLayoutConfigurationV11SizeSettingOAVySayA50_GA50_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A50_Qo_A31_GGGA31_G_AGyAA6SliderVyA8_A8_GA31_GSgtGGSgGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of CharacterSet?(v127, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayATGAtiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAEyAQ_AA8StaticIfVyAA8SolariumVAQSgAA05EmptyF0VGtGGA3_yAA0F14InputPredicatePAAE1nopyQrxFZQOyA5__Qo_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA17_5ScaleOGGSgA8_GG_ATQo_GGAA0K18AttachmentModifierVG_Qo_A31_G_AGyAOyAqR0s8GroupingM0OAVySayA36_GA36_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A36_Qo_A31_GGGA31_GSgtGAA6VStackVyAEyAGyAOyAqR29DOCBrowserLayoutConfigurationV11SizeSettingOAVySayA50_GA50_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A50_Qo_A31_GGGA31_G_AGyAA6SliderVyA8_A8_GA31_GSgtGGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayATGAtiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAEyAQ_AA8StaticIfVyAA8SolariumVAQSgAA05EmptyF0VGtGGA3_yAA0F14InputPredicatePAAE1nopyQrxFZQOyA5__Qo_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA17_5ScaleOGGSgA8_GG_ATQo_GGAA0K18AttachmentModifierVG_Qo_A31_G_AGyAOyAqR0s8GroupingM0OAVySayA36_GA36_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A36_Qo_A31_GGGA31_GSgtGAA6VStackVyAEyAGyAOyAqR29DOCBrowserLayoutConfigurationV11SizeSettingOAVySayA50_GA50_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A50_Qo_A31_GGGA31_G_AGyAA6SliderVyA8_A8_GA31_GSgtGGSgGMR);
    v128 = v69;
    v129 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAPGApGyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAK_APQo_AA31AccessibilityAttachmentModifierVGGGAZG_AGyAA6SliderVyAA05EmptyE0VA6_GAZGSgtGGSgMd;
    v130 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAPGApGyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAK_APQo_AA31AccessibilityAttachmentModifierVGGGAZG_AGyAA6SliderVyAA05EmptyE0VA6_GAZGSgtGGSgMR;
  }

  else
  {
    v145 = v34;
    v146 = v30;
    v147 = v27;
    v164 = v31;
    v165 = v38;
    v166 = v42;
    v167 = v26;
    v168 = v21;
    v70 = *(a5 + 8);
    v174 = &v144 - v57;
    v150 = v58;
    v163 = v56;
    v72 = v175;
    v71 = v176;
    v73 = MEMORY[0x24C1F9D60](v182, v175, v176, v70, v59);
    MEMORY[0x28223BE20](v73, v74);
    v143 = a5;
    swift_getKeyPath();
    v144 = v70;
    ObservedObject.Wrapper.subscript.getter();

    v75 = swift_unknownObjectRelease();
    v162 = &v144;
    v186 = v189;
    v187 = v190;
    v188 = v191;
    MEMORY[0x28223BE20](v75, v76);
    v149 = v137;
    MEMORY[0x28223BE20](v77, v78);
    MEMORY[0x28223BE20](v79, v80);
    v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay26DocumentManagerExecutables15DOCItemSortModeOGAfA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0O5GroupVyAA05TupleK0VyAA4TextV_AA8StaticIfVyAA8SolariumVASSgAA05EmptyK0VGtGGAUyAA0K14InputPredicatePAAE1nopyQrxFZQOyAW_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA9_5ScaleOGGSgAZGG_AFQo_GMd, &_s7SwiftUI7ForEachVySay26DocumentManagerExecutables15DOCItemSortModeOGAfA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0O5GroupVyAA05TupleK0VyAA4TextV_AA8StaticIfVyAA8SolariumVASSgAA05EmptyK0VGtGGAUyAA0K14InputPredicatePAAE1nopyQrxFZQOyAW_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA9_5ScaleOGGSgAZGG_AFQo_GMR);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10labelStyleyQrqd__AA05LabelE0Rd__lFQOyAA4TextV_AA09TitleOnlyfE0VQo_Md, &_s7SwiftUI4ViewPAAE10labelStyleyQrqd__AA05LabelE0Rd__lFQOyAA4TextV_AA09TitleOnlyfE0VQo_MR);
    v82 = lazy protocol witness table accessor for type DOCItemSortMode and conformance DOCItemSortMode();
    v83 = lazy protocol witness table accessor for type ForEach<[DOCItemSortMode], DOCItemSortMode, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
    v84 = type metadata accessor for TitleOnlyLabelStyle();
    v85 = lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle, MEMORY[0x277CDDF40], MEMORY[0x277CDDF38]);
    v183._countAndFlagsBits = MEMORY[0x277CE0BD8];
    v183._object = v84;
    v86 = MEMORY[0x277CE0BC8];
    v184 = MEMORY[0x277CE0BC8];
    v185 = v85;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v141 = v83;
    v142 = OpaqueTypeConformance2;
    v140 = v82;
    v138 = v81;
    v139 = v86;
    v137[0] = &type metadata for DOCItemSortMode;
    v137[1] = v148;
    Picker.init<A>(selection:content:label:currentValueLabel:)();
    v88 = *(a5 + 104);
    swift_unknownObjectRetain();
    v88(v71, a5);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Picker<Text, DOCItemSortMode, ForEach<[DOCItemSortMode], DOCItemSortMode, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAHGAhA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Q5GroupVyAA05TupleM0VyAE_AA8StaticIfVyAA8SolariumVAESgAA05EmptyM0VGtGGAWyAA0M14InputPredicatePAAE1nopyQrxFZQOyAY_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA11_5ScaleOGGSgA0_GG_AHQo_GGMd, &_s7SwiftUI6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAHGAhA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Q5GroupVyAA05TupleM0VyAE_AA8StaticIfVyAA8SolariumVAESgAA05EmptyM0VGtGGAWyAA0M14InputPredicatePAAE1nopyQrxFZQOyAY_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA11_5ScaleOGGSgA0_GG_AHQo_GGMR, MEMORY[0x277CDF038]);
    v89 = v152;
    v90 = v154;
    View.accessibilityIdentifier(_:)();

    (*(v153 + 8))(v47, v90);
    v91 = v157;
    static AccessibilityChildBehavior.combine.getter();
    v92 = lazy protocol witness table accessor for type ModifiedContent<Picker<Text, DOCItemSortMode, ForEach<[DOCItemSortMode], DOCItemSortMode, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    v93 = v156;
    v94 = v155;
    View.accessibilityElement(children:)();
    (*(v160 + 8))(v91, v161);
    v95 = v89;
    v96 = v72;
    outlined destroy of CharacterSet?(v95, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAJGAjA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0S5GroupVyAA05TupleO0VyAG_AA8StaticIfVyAA8SolariumVAGSgAA05EmptyO0VGtGGAYyAA0O14InputPredicatePAAE1nopyQrxFZQOyA__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA11_5ScaleOGGSgA2_GG_AJQo_GGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAJGAjA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0S5GroupVyAA05TupleO0VyAG_AA8StaticIfVyAA8SolariumVAGSgAA05EmptyO0VGtGGAYyAA0O14InputPredicatePAAE1nopyQrxFZQOyA__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA11_5ScaleOGGSgA2_GG_AJQo_GGAA31AccessibilityAttachmentModifierVGMR);
    v183._countAndFlagsBits = (*(a5 + 32))(v71, a5);
    v183._object = v97;
    v189 = v94;
    v190 = v92;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type String and conformance String();
    v98 = v150;
    v99 = v159;
    View.accessibilityLabel<A>(_:)();

    (*(v158 + 8))(v93, v99);
    (*(a5 + 208))(&v183, v71, a5);
    LOBYTE(v189) = 1;
    v183 = DOCItemSortMode.localizedName(for:)(&v189);
    ModifiedContent<>.accessibilityValue<A>(_:)();

    outlined destroy of CharacterSet?(v98, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_GMR);
    v100 = *((*(a5 + 168))(v71, a5) + 16);

    v101 = v98;
    if (v100)
    {
      v102 = v182;
      v103 = MEMORY[0x24C1F9D60](v182, v96, v71, v144);
      MEMORY[0x28223BE20](v103, v104);
      v142 = v71;
      v143 = a5;
      swift_getKeyPath();
      ObservedObject.Wrapper.subscript.getter();

      swift_unknownObjectRelease();
      v186 = v189;
      v187 = v190;
      v188 = v191;
      v183._countAndFlagsBits = (*(a5 + 24))(v71, a5);
      v183._object = v105;
      v183._countAndFlagsBits = Text.init<A>(_:)();
      v183._object = v106;
      LOBYTE(v184) = v107 & 1;
      v185 = v108;
      MEMORY[0x28223BE20](v183._countAndFlagsBits, v106);
      v138 = v71;
      v139 = a5;
      v140 = v102;
      v141 = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay26DocumentManagerExecutables23DOCItemGroupingBehaviorOGAfA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AFQo_AA31AccessibilityAttachmentModifierVGGMd, &_s7SwiftUI7ForEachVySay26DocumentManagerExecutables23DOCItemGroupingBehaviorOGAfA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AFQo_AA31AccessibilityAttachmentModifierVGGMR);
      v109 = lazy protocol witness table accessor for type DOCItemGroupingBehavior and conformance DOCItemGroupingBehavior();
      v110 = lazy protocol witness table accessor for type ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>();
      v142 = v109;
      v143 = v110;
      v111 = v146;
      Picker.init(selection:label:content:)();
      (*(a5 + 88))(v71, a5);
      swift_unknownObjectRelease();
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAHGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AHQo_AA31AccessibilityAttachmentModifierVGGGMd, &_s7SwiftUI6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAHGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AHQo_AA31AccessibilityAttachmentModifierVGGGMR, MEMORY[0x277CDF038]);
      v112 = v145;
      v113 = v147;
      View.accessibilityIdentifier(_:)();

      (*(v151 + 8))(v111, v113);
      v114 = v166;
      outlined init with take of (key: URL, value: FPItem)(v112, v166, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGMd, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGMR);
      v115 = 0;
      v116 = v167;
    }

    else
    {
      swift_unknownObjectRelease();
      v115 = 1;
      v116 = v167;
      v114 = v166;
    }

    v131 = v165;
    (*(v169 + 56))(v114, v115, 1, v164);
    v132 = v174;
    outlined init with copy of DOCGridLayout.Spec?(v174, v101, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_GMR);
    outlined init with copy of DOCGridLayout.Spec?(v114, v131, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGSgMd, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGSgMR);
    outlined init with copy of DOCGridLayout.Spec?(v101, v116, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_GMR);
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_G_ACyAKyAmN0q8GroupingK0OARySayA34_GA34_ACyAeAEAT_AUQrqd___SbtSHRd__lFQOyAM_A34_Qo_A29_GGGA29_GSgtMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_G_ACyAKyAmN0q8GroupingK0OARySayA34_GA34_ACyAeAEAT_AUQrqd___SbtSHRd__lFQOyAM_A34_Qo_A29_GGGA29_GSgtMR);
    outlined init with copy of DOCGridLayout.Spec?(v131, v116 + *(v133 + 48), &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGSgMd, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGSgMR);
    outlined destroy of CharacterSet?(v131, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGSgMd, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGSgMR);
    outlined destroy of CharacterSet?(v101, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_GMR);
    outlined init with copy of DOCGridLayout.Spec?(v116, v168, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayARGArgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Z5GroupVyACyAO_AA8StaticIfVyAA8SolariumVAOSgAA05EmptyD0VGtGGA1_yAA0D14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_ARQo_GGAA0J18AttachmentModifierVG_Qo_A29_G_AEyAMyAoP0r8GroupingL0OATySayA34_GA34_AEyAgAEAV_AWQrqd___SbtSHRd__lFQOyAO_A34_Qo_A29_GGGA29_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayARGArgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Z5GroupVyACyAO_AA8StaticIfVyAA8SolariumVAOSgAA05EmptyD0VGtGGA1_yAA0D14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_ARQo_GGAA0J18AttachmentModifierVG_Qo_A29_G_AEyAMyAoP0r8GroupingL0OATySayA34_GA34_AEyAgAEAV_AWQrqd___SbtSHRd__lFQOyAO_A34_Qo_A29_GGGA29_GSgtGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayARGArgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Z5GroupVyACyAO_AA8StaticIfVyAA8SolariumVAOSgAA05EmptyD0VGtGGA1_yAA0D14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_ARQo_GGAA0J18AttachmentModifierVG_Qo_A29_G_AEyAMyAoP0r8GroupingL0OATySayA34_GA34_AEyAgAEAV_AWQrqd___SbtSHRd__lFQOyAO_A34_Qo_A29_GGGA29_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayARGArgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Z5GroupVyACyAO_AA8StaticIfVyAA8SolariumVAOSgAA05EmptyD0VGtGGA1_yAA0D14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_ARQo_GGAA0J18AttachmentModifierVG_Qo_A29_G_AEyAMyAoP0r8GroupingL0OATySayA34_GA34_AEyAgAEAV_AWQrqd___SbtSHRd__lFQOyAO_A34_Qo_A29_GGGA29_GSgtGMR, MEMORY[0x277CE14C0]);
    v134 = v114;
    v135 = v116;
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>? and conformance <A> A?();
    v136 = v172;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of DOCGridLayout.Spec?(v136, v179, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayATGAtiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAEyAQ_AA8StaticIfVyAA8SolariumVAQSgAA05EmptyF0VGtGGA3_yAA0F14InputPredicatePAAE1nopyQrxFZQOyA5__Qo_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA17_5ScaleOGGSgA8_GG_ATQo_GGAA0K18AttachmentModifierVG_Qo_A31_G_AGyAOyAqR0s8GroupingM0OAVySayA36_GA36_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A36_Qo_A31_GGGA31_GSgtGAA6VStackVyAEyAGyAOyAqR29DOCBrowserLayoutConfigurationV11SizeSettingOAVySayA50_GA50_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A50_Qo_A31_GGGA31_G_AGyAA6SliderVyA8_A8_GA31_GSgtGGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayATGAtiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAEyAQ_AA8StaticIfVyAA8SolariumVAQSgAA05EmptyF0VGtGGA3_yAA0F14InputPredicatePAAE1nopyQrxFZQOyA5__Qo_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA17_5ScaleOGGSgA8_GG_ATQo_GGAA0K18AttachmentModifierVG_Qo_A31_G_AGyAOyAqR0s8GroupingM0OAVySayA36_GA36_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A36_Qo_A31_GGGA31_GSgtGAA6VStackVyAEyAGyAOyAqR29DOCBrowserLayoutConfigurationV11SizeSettingOAVySayA50_GA50_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A50_Qo_A31_GGGA31_G_AGyAA6SliderVyA8_A8_GA31_GSgtGGSgGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Toggle<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of CharacterSet?(v136, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayATGAtiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAEyAQ_AA8StaticIfVyAA8SolariumVAQSgAA05EmptyF0VGtGGA3_yAA0F14InputPredicatePAAE1nopyQrxFZQOyA5__Qo_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA17_5ScaleOGGSgA8_GG_ATQo_GGAA0K18AttachmentModifierVG_Qo_A31_G_AGyAOyAqR0s8GroupingM0OAVySayA36_GA36_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A36_Qo_A31_GGGA31_GSgtGAA6VStackVyAEyAGyAOyAqR29DOCBrowserLayoutConfigurationV11SizeSettingOAVySayA50_GA50_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A50_Qo_A31_GGGA31_G_AGyAA6SliderVyA8_A8_GA31_GSgtGGSgGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayATGAtiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA10LabelGroupVyAEyAQ_AA8StaticIfVyAA8SolariumVAQSgAA05EmptyF0VGtGGA3_yAA0F14InputPredicatePAAE1nopyQrxFZQOyA5__Qo_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA17_5ScaleOGGSgA8_GG_ATQo_GGAA0K18AttachmentModifierVG_Qo_A31_G_AGyAOyAqR0s8GroupingM0OAVySayA36_GA36_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A36_Qo_A31_GGGA31_GSgtGAA6VStackVyAEyAGyAOyAqR29DOCBrowserLayoutConfigurationV11SizeSettingOAVySayA50_GA50_AGyAiAEAX_AYQrqd___SbtSHRd__lFQOyAQ_A50_Qo_A31_GGGA31_G_AGyAA6SliderVyA8_A8_GA31_GSgtGGSgGMR);
    outlined destroy of CharacterSet?(v135, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayARGArgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Z5GroupVyACyAO_AA8StaticIfVyAA8SolariumVAOSgAA05EmptyD0VGtGGA1_yAA0D14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_ARQo_GGAA0J18AttachmentModifierVG_Qo_A29_G_AEyAMyAoP0r8GroupingL0OATySayA34_GA34_AEyAgAEAV_AWQrqd___SbtSHRd__lFQOyAO_A34_Qo_A29_GGGA29_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayARGArgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Z5GroupVyACyAO_AA8StaticIfVyAA8SolariumVAOSgAA05EmptyD0VGtGGA1_yAA0D14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_ARQo_GGAA0J18AttachmentModifierVG_Qo_A29_G_AEyAMyAoP0r8GroupingL0OATySayA34_GA34_AEyAgAEAV_AWQrqd___SbtSHRd__lFQOyAO_A34_Qo_A29_GGGA29_GSgtGMR);
    outlined destroy of CharacterSet?(v134, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGSgMd, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables23DOCItemGroupingBehaviorOAA7ForEachVySayAJGAjCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_AJQo_AA31AccessibilityAttachmentModifierVGGGATGSgMR);
    v128 = v132;
    v129 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_GMd;
    v130 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6PickerVyAA4TextV26DocumentManagerExecutables15DOCItemSortModeOAA7ForEachVySayAPGApeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0Y5GroupVyAA05TupleE0VyAM_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyE0VGtGGA1_yAA0E14InputPredicatePAAE1nopyQrxFZQOyA3__Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA15_5ScaleOGGSgA6_GG_APQo_GGAA0I18AttachmentModifierVG_Qo_A29_GMR;
  }

  return outlined destroy of CharacterSet?(v128, v129, v130);
}

uint64_t closure #1 in DOCViewOptionsView.contentView(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = *(a4 + 200);
  swift_unknownObjectRetain();
  v10(a3, a4);
  swift_unknownObjectRelease();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a5;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables15DOCItemSortModeOGMd, &_sSay26DocumentManagerExecutables15DOCItemSortModeOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0G5GroupVyAA05TupleC0VyAA4TextV_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyC0VGtGGAOyAA0C14InputPredicatePAAE1nopyQrxFZQOyAQ_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA3_5ScaleOGGSgATGG_26DocumentManagerExecutables15DOCItemSortModeOQo_Md, &_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA5LabelVyAA0G5GroupVyAA05TupleC0VyAA4TextV_AA8StaticIfVyAA8SolariumVAMSgAA05EmptyC0VGtGGAOyAA0C14InputPredicatePAAE1nopyQrxFZQOyAQ_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA3_5ScaleOGGSgATGG_26DocumentManagerExecutables15DOCItemSortModeOQo_MR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCItemSortMode] and conformance [A], &_sSay26DocumentManagerExecutables15DOCItemSortModeOGMd, &_sSay26DocumentManagerExecutables15DOCItemSortModeOGMR, MEMORY[0x277D83980]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5LabelVyAA0C5GroupVyAA9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAISgAA05EmptyF0VGtGGAKyAA0F14InputPredicatePAAE1nopyQrxFZQOyAM_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_5ScaleOGGSgAPGGMd, &_s7SwiftUI5LabelVyAA0C5GroupVyAA9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAISgAA05EmptyF0VGtGGAKyAA0F14InputPredicatePAAE1nopyQrxFZQOyAM_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_5ScaleOGGSgAPGGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Label<LabelGroup<TupleView<(Text, StaticIf<Solarium, Text?, EmptyView>)>>, StaticIf<<<opaque return type of static ViewInputPredicate.! prefix(_:)>>.0, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, EmptyView>> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA0C5GroupVyAA9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAISgAA05EmptyF0VGtGGAKyAA0F14InputPredicatePAAE1nopyQrxFZQOyAM_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_5ScaleOGGSgAPGGMd, &_s7SwiftUI5LabelVyAA0C5GroupVyAA9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAISgAA05EmptyF0VGtGGAKyAA0F14InputPredicatePAAE1nopyQrxFZQOyAM_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_5ScaleOGGSgAPGGMR, MEMORY[0x277CDEFF0]);
  lazy protocol witness table accessor for type DOCItemSortMode and conformance DOCItemSortMode();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type DOCItemSortMode and conformance DOCItemSortMode();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #1 in closure #1 in DOCViewOptionsView.contentView(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v50 = a2;
  v7 = 0xEC00000065746144;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA0C5GroupVyAA9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAISgAA05EmptyF0VGtGGAKyAA0F14InputPredicatePAAE1nopyQrxFZQOyAM_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_5ScaleOGGSgAPGGMd, &_s7SwiftUI5LabelVyAA0C5GroupVyAA9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAISgAA05EmptyF0VGtGGAKyAA0F14InputPredicatePAAE1nopyQrxFZQOyAM_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_5ScaleOGGSgAPGGMR);
  MEMORY[0x28223BE20](v8, v9);
  v10 = *a1;
  v48 = v11;
  v49 = a4;
  v46 = &v46 - v12;
  v47 = v13;
  if (v10 > 4)
  {
    if (v10 <= 6)
    {
      if (v10 == 5)
      {
        v18 = 1684957547;
      }

      else
      {
        v18 = 0x7942646572616873;
      }

      if (v10 == 5)
      {
        v7 = 0xE400000000000000;
      }

      else
      {
        v7 = 0xE800000000000000;
      }
    }

    else if (v10 == 7)
    {
      v18 = 0x6E6F697461657263;
    }

    else if (v10 == 8)
    {
      v18 = 0x6564644165746164;
      v7 = 0xE900000000000064;
    }

    else
    {
      v18 = 0x745364756F6C6369;
      v7 = 0xEC00000073757461;
    }
  }

  else
  {
    v14 = 1701667182;
    v15 = 1936154996;
    if (v10 != 3)
    {
      v15 = 1702521203;
    }

    if (v10 != 2)
    {
      v14 = v15;
    }

    v16 = 0xD000000000000010;
    v17 = 0x8000000249BC5DF0;
    if (v10)
    {
      v16 = 0x646573557473616CLL;
      v17 = 0xEC00000065746144;
    }

    if (v10 <= 1)
    {
      v18 = v16;
    }

    else
    {
      v18 = v14;
    }

    if (v10 <= 1)
    {
      v7 = v17;
    }

    else
    {
      v7 = 0xE400000000000000;
    }
  }

  v19 = *(a3 + 208);
  swift_unknownObjectRetain();
  v19(&v52, v50, a3);
  if (v52 > 4u)
  {
    v26 = 0x6E6F697461657263;
    v27 = 0x6564644165746164;
    v28 = 0xE900000000000064;
    if (v52 != 8)
    {
      v27 = 0x745364756F6C6369;
      v28 = 0xEC00000073757461;
    }

    if (v52 == 7)
    {
      v29 = 0xEC00000065746144;
    }

    else
    {
      v26 = v27;
      v29 = v28;
    }

    v30 = 0xE400000000000000;
    v31 = 1684957547;
    if (v52 != 5)
    {
      v31 = 0x7942646572616873;
      v30 = 0xE800000000000000;
    }

    if (v52 <= 6u)
    {
      v32 = v31;
    }

    else
    {
      v32 = v26;
    }

    if (v52 <= 6u)
    {
      v25 = v30;
    }

    else
    {
      v25 = v29;
    }

    if (v18 != v32)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v20 = 1701667182;
    v21 = 1936154996;
    if (v52 != 3)
    {
      v21 = 1702521203;
    }

    if (v52 != 2)
    {
      v20 = v21;
    }

    v22 = 0xD000000000000010;
    v23 = 0x8000000249BC5DF0;
    if (v52)
    {
      v22 = 0x646573557473616CLL;
      v23 = 0xEC00000065746144;
    }

    if (v52 <= 1u)
    {
      v24 = v22;
    }

    else
    {
      v24 = v20;
    }

    if (v52 <= 1u)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0xE400000000000000;
    }

    if (v18 != v24)
    {
      goto LABEL_57;
    }
  }

  if (v7 != v25)
  {
LABEL_57:
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_58;
  }

  v33 = 1;
LABEL_58:

  v51[1] = v10;
  v51[0] = 1;
  v34 = DOCItemSortMode.localizedName(for:)(v51);
  v35 = (*(a3 + 232))(v50, a3);
  v36 = swift_unknownObjectRelease();
  MEMORY[0x28223BE20](v36, v37);
  *(&v46 - 2) = v34;
  *(&v46 - 16) = v33 & 1;
  *(&v46 - 15) = v35 & 1;
  *(&v46 - 14) = v10;
  MEMORY[0x28223BE20](v38, v39);
  *(&v46 - 16) = v40;
  *(&v46 - 15) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10LabelGroupVyAA9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAGSgAA05EmptyF0VGtGGMd, &_s7SwiftUI10LabelGroupVyAA9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAGSgAA05EmptyF0VGtGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8StaticIfVyAA18ViewInputPredicatePAAE1nopyQrxFZQOyAA8SolariumV_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGSgAA05EmptyE0VGMd, &_s7SwiftUI8StaticIfVyAA18ViewInputPredicatePAAE1nopyQrxFZQOyAA8SolariumV_Qo_AA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGSgAA05EmptyE0VGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type LabelGroup<TupleView<(Text, StaticIf<Solarium, Text?, EmptyView>)>> and conformance LabelGroup<A>, &_s7SwiftUI10LabelGroupVyAA9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAGSgAA05EmptyF0VGtGGMd, &_s7SwiftUI10LabelGroupVyAA9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAGSgAA05EmptyF0VGtGGMR, MEMORY[0x277CDD6A8]);
  lazy protocol witness table accessor for type StaticIf<<<opaque return type of static ViewInputPredicate.! prefix(_:)>>.0, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, EmptyView> and conformance <> StaticIf<A, B, C>();
  v42 = v46;
  Label.init(title:icon:)();

  v43 = v49;
  (*(v47 + 32))(v49, v42, v48);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5LabelVyAA0E5GroupVyAA9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAKSgAA05EmptyH0VGtGGAMyAA0H14InputPredicatePAAE1nopyQrxFZQOyAO_Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_5ScaleOGGSgARGGAA09_TagTraitsT0Vy26DocumentManagerExecutables15DOCItemSortModeOGGMd, &_s7SwiftUI15ModifiedContentVyAA5LabelVyAA0E5GroupVyAA9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAKSgAA05EmptyH0VGtGGAMyAA0H14InputPredicatePAAE1nopyQrxFZQOyAO_Qo_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_5ScaleOGGSgARGGAA09_TagTraitsT0Vy26DocumentManagerExecutables15DOCItemSortModeOGGMR);
  v45 = (v43 + *(result + 36));
  *v45 = v10;
  v45[1] = 1;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in DOCViewOptionsView.contentView(for:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAESgAA05EmptyD0VGtGMd, &_s7SwiftUI9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAESgAA05EmptyD0VGtGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(Text, StaticIf<Solarium, Text?, EmptyView>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAESgAA05EmptyD0VGtGMd, &_s7SwiftUI9TupleViewVyAA4TextV_AA8StaticIfVyAA8SolariumVAESgAA05EmptyD0VGtGMR, MEMORY[0x277CE14C0]);
  return LabelGroup.init(content:)();
}

double closure #1 in closure #1 in closure #1 in closure #1 in DOCViewOptionsView.contentView(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v34 = a4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8StaticIfVyAA8SolariumVAA4TextVSgAA9EmptyViewVGMd, &_s7SwiftUI8StaticIfVyAA8SolariumVAA4TextVSgAA9EmptyViewVGMR);
  v11 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v32 - v17;
  v39 = a1;
  v40 = a2;
  lazy protocol witness table accessor for type String and conformance String();

  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  Solarium.init()();
  v36 = a3;
  v37 = v34;
  v38 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextVSgMd, &_s7SwiftUI4TextVSgMR);
  lazy protocol witness table accessor for type Text? and conformance <A> A?();
  v33 = v18;
  StaticIf<>.init<>(_:then:)();
  v26 = *(v11 + 16);
  v27 = v18;
  v28 = v35;
  v26(v14, v27, v35);
  *a6 = v19;
  *(a6 + 8) = v21;
  v23 &= 1u;
  *(a6 + 16) = v23;
  *(a6 + 24) = v25;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA8StaticIfVyAA8SolariumVACSgAA9EmptyViewVGtMd, &_s7SwiftUI4TextV_AA8StaticIfVyAA8SolariumVACSgAA9EmptyViewVGtMR);
  v26((a6 + *(v29 + 48)), v14, v28);
  outlined copy of Text.Storage(v19, v21, v23);
  v30 = *(v11 + 8);

  v30(v33, v28);
  v30(v14, v28);
  outlined consume of Text.Storage(v19, v21, v23);

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in DOCViewOptionsView.contentView(for:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t *a4@<X8>)
{
  if (a1)
  {
    if (a2)
    {
      DOCItemSortMode.localizedOrderedAscendingString.getter();
    }

    else
    {
      DOCItemSortMode.localizedOrderedDescendingString.getter();
    }

    lazy protocol witness table accessor for type String and conformance String();
    result = Text.init<A>(_:)();
    v7 = v9 & 1;
  }

  else
  {
    result = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  *a4 = result;
  a4[1] = v6;
  a4[2] = v7;
  a4[3] = v8;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in DOCViewOptionsView.contentView(for:)(char a1, char a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI18ViewInputPredicatePAAE1nopyQrxFZQOyAA8SolariumV_Qo_Md, &_s7SwiftUI18ViewInputPredicatePAAE1nopyQrxFZQOyAA8SolariumV_Qo_MR);
  MEMORY[0x28223BE20](v2, v3);
  Solarium.init()();
  static ViewInputPredicate.! prefix(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMR);
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>? and conformance <A> A?();
  return StaticIf<>.init<>(_:then:)();
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in DOCViewOptionsView.contentView(for:)@<X0>(char a1@<W0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v5, v6);
  v10 = (&v18 - v9);
  if (a1)
  {
    v19 = v7;
    v11 = Image.init(systemName:)();
    v12 = (v10 + *(v5 + 36));
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
    v14 = *MEMORY[0x277CE1050];
    v15 = type metadata accessor for Image.Scale();
    (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
    *v12 = swift_getKeyPath();
    *v10 = v11;
    outlined init with take of (key: URL, value: FPItem)(v10, a3, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
    return (*(v19 + 56))(a3, 0, 1, v5);
  }

  else
  {
    v17 = *(v7 + 56);

    return v17(a3, 1, 1, v5, v8);
  }
}

uint64_t closure #2 in DOCViewOptionsView.contentView(for:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 32);
  swift_unknownObjectRetain();
  v6(a1, a2);
  swift_unknownObjectRelease();
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9 & 1;
  *(a3 + 24) = v10;
  return result;
}

double closure #3 in DOCViewOptionsView.contentView(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for TitleOnlyLabelStyle();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 + 208);
  swift_unknownObjectRetain();
  v11(&v19, a3, a4);
  swift_unknownObjectRelease();
  v22 = 1;
  v19 = DOCItemSortMode.localizedName(for:)(&v22);
  lazy protocol witness table accessor for type String and conformance String();
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v19._countAndFlagsBits = v12;
  v19._object = v13;
  LOBYTE(v11) = v15 & 1;
  v20 = v15 & 1;
  v21 = v16;
  TitleOnlyLabelStyle.init()();
  lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle, MEMORY[0x277CDDF40], MEMORY[0x277CDDF38]);
  View.labelStyle<A>(_:)();
  (*(v7 + 8))(v10, v6);
  outlined consume of Text.Storage(v12, v14, v11);

  return result;
}

uint64_t closure #4 in DOCViewOptionsView.contentView(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = *(a4 + 168);
  swift_unknownObjectRetain();
  v10(a3, a4);
  swift_unknownObjectRelease();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a5;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables23DOCItemGroupingBehaviorOGMd, &_sSay26DocumentManagerExecutables23DOCItemGroupingBehaviorOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_26DocumentManagerExecutables23DOCItemGroupingBehaviorOQo_AA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_26DocumentManagerExecutables23DOCItemGroupingBehaviorOQo_AA31AccessibilityAttachmentModifierVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCItemGroupingBehavior] and conformance [A], &_sSay26DocumentManagerExecutables23DOCItemGroupingBehaviorOGMd, &_sSay26DocumentManagerExecutables23DOCItemGroupingBehaviorOGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type DOCItemGroupingBehavior and conformance DOCItemGroupingBehavior();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #1 in closure #4 in DOCViewOptionsView.contentView(for:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_26DocumentManagerExecutables23DOCItemGroupingBehaviorOQo_Md, &_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_26DocumentManagerExecutables23DOCItemGroupingBehaviorOQo_MR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v22 - v11;
  v27 = *a1;
  v13 = v27;
  v23 = DOCItemGroupingBehavior.localizedName.getter(v14);
  v24 = v15;
  lazy protocol witness table accessor for type String and conformance String();
  *v12 = Text.init<A>(_:)();
  *(v12 + 1) = v16;
  v12[16] = v17 & 1;
  *(v12 + 3) = v18;
  v12[32] = v13;
  v12[33] = 1;
  LOBYTE(v23) = v13;
  v19 = *(a5 + 80);
  swift_unknownObjectRetain();
  v19(&v23, a4, a5);
  swift_unknownObjectRelease();
  v20 = lazy protocol witness table accessor for type DOCItemGroupingBehavior and conformance DOCItemGroupingBehavior();
  v23 = MEMORY[0x277CE0BD8];
  v24 = &type metadata for DOCItemGroupingBehavior;
  v25 = MEMORY[0x277CE0BC8];
  v26 = v20;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();

  return (*(v9 + 8))(v12, v8);
}

uint64_t static ViewBuilder.buildEither<A, B>(first:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  v9 = MEMORY[0x28223BE20](v7, v8);
  (*(*(a2 - 8) + 16))(&v12 - v10, a1, a2, v9);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t closure #5 in DOCViewOptionsView.contentView(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v65 = a5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SliderVyAA9EmptyViewVAEGMd, &_s7SwiftUI6SliderVyAA9EmptyViewVAEGMR);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v11);
  v55 = &v52 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGMR);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v13);
  v54 = &v52 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGSgMR);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v64 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v60 = &v52 - v20;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_AA31AccessibilityAttachmentModifierVGGGMd, &_s7SwiftUI6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_AA31AccessibilityAttachmentModifierVGGGMR);
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v21);
  v23 = &v52 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayALGAlCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_ALQo_AA31AccessibilityAttachmentModifierVGGGAVGMd, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayALGAlCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_ALQo_AA31AccessibilityAttachmentModifierVGGGAVGMR);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v61 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27, v28);
  v31 = &v52 - v30;
  v32 = *(a4 + 8);
  MEMORY[0x24C1F9D60](a1, a2, a3, v32, v29);
  v71 = a3;
  v72 = a4;
  swift_getKeyPath();
  v52 = v32;
  ObservedObject.Wrapper.subscript.getter();

  swift_unknownObjectRelease();
  v79 = v74;
  v80 = v75;
  v33 = *(a4 + 40);
  swift_unknownObjectRetain();
  *&v76 = v33(a3, a4);
  *(&v76 + 1) = v34;
  lazy protocol witness table accessor for type String and conformance String();
  *&v76 = Text.init<A>(_:)();
  *(&v76 + 1) = v35;
  LOBYTE(v77) = v36 & 1;
  v78 = v37;
  v66 = a3;
  v67 = a4;
  v53 = a1;
  v68 = a1;
  v69 = a2;
  v70 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_AA31AccessibilityAttachmentModifierVGGMd, &_s7SwiftUI7ForEachVySay26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_AA31AccessibilityAttachmentModifierVGGMR);
  v38 = v31;
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.SizeSetting and conformance DOCBrowserLayoutConfiguration.SizeSetting();
  lazy protocol witness table accessor for type ForEach<[DOCViewOptionsSection], DOCViewOptionsSection, Section<Text?, _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Picker<Text, DOCItemGroupingBehavior, ForEach<[DOCItemGroupingBehavior], DOCItemGroupingBehavior, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>?)>, VStack<TupleView<(ModifiedContent<Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>>, AccessibilityAttachmentModifier>, ModifiedContent<Slider<EmptyView, EmptyView>, AccessibilityAttachmentModifier>?)>>?>, ModifiedContent<Toggle<Text>, AccessibilityAttachmentMod(&lazy protocol witness table cache variable for type ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySay26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_AA31AccessibilityAttachmentModifierVGGMd, &_s7SwiftUI7ForEachVySay26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_AA31AccessibilityAttachmentModifierVGGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  Picker.init(selection:label:content:)();
  (*(a4 + 120))(a3, a4);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Picker<Text, DOCBrowserLayoutConfiguration.SizeSetting, ForEach<[DOCBrowserLayoutConfiguration.SizeSetting], DOCBrowserLayoutConfiguration.SizeSetting, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_AA31AccessibilityAttachmentModifierVGGGMd, &_s7SwiftUI6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_AA31AccessibilityAttachmentModifierVGGGMR, MEMORY[0x277CDF038]);
  v39 = v58;
  View.accessibilityIdentifier(_:)();

  (*(v59 + 8))(v23, v39);
  if ((*(a4 + 264))(a3, a4) >= 2u)
  {
    v42 = MEMORY[0x24C1F9D60](v53, a2, a3, v52);
    MEMORY[0x28223BE20](v42, v43);
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    swift_unknownObjectRelease();
    v74 = v76;
    v75 = v77;
    v79 = xmmword_249BA6960;
    v73 = 0x4010000000000000;
    lazy protocol witness table accessor for type Double and conformance Double();
    v44 = v55;
    Slider<>.init<A>(value:in:step:onEditingChanged:)();
    (*(a4 + 128))(a3, a4);
    swift_unknownObjectRelease();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Slider<EmptyView, EmptyView> and conformance Slider<A, B>, &_s7SwiftUI6SliderVyAA9EmptyViewVAEGMd, &_s7SwiftUI6SliderVyAA9EmptyViewVAEGMR, MEMORY[0x277CDF048]);
    v45 = v54;
    v46 = v57;
    View.accessibilityIdentifier(_:)();

    (*(v56 + 8))(v44, v46);
    v41 = v60;
    outlined init with take of (key: URL, value: FPItem)(v45, v60, &_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGMR);
    v40 = 0;
  }

  else
  {
    swift_unknownObjectRelease();
    v40 = 1;
    v41 = v60;
  }

  (*(v62 + 56))(v41, v40, 1, v63);
  v47 = v61;
  outlined init with copy of DOCGridLayout.Spec?(v38, v61, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayALGAlCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_ALQo_AA31AccessibilityAttachmentModifierVGGGAVGMd, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayALGAlCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_ALQo_AA31AccessibilityAttachmentModifierVGGGAVGMR);
  v48 = v64;
  outlined init with copy of DOCGridLayout.Spec?(v41, v64, &_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGSgMR);
  v49 = v65;
  outlined init with copy of DOCGridLayout.Spec?(v47, v65, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayALGAlCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_ALQo_AA31AccessibilityAttachmentModifierVGGGAVGMd, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayALGAlCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_ALQo_AA31AccessibilityAttachmentModifierVGGGAVGMR);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayALGAlCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_ALQo_AA31AccessibilityAttachmentModifierVGGGAVG_ACyAA6SliderVyAA05EmptyQ0VA2_GAVGSgtMd, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayALGAlCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_ALQo_AA31AccessibilityAttachmentModifierVGGGAVG_ACyAA6SliderVyAA05EmptyQ0VA2_GAVGSgtMR);
  outlined init with copy of DOCGridLayout.Spec?(v48, v49 + *(v50 + 48), &_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGSgMR);
  outlined destroy of CharacterSet?(v41, &_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGSgMR);
  outlined destroy of CharacterSet?(v38, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayALGAlCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_ALQo_AA31AccessibilityAttachmentModifierVGGGAVGMd, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayALGAlCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_ALQo_AA31AccessibilityAttachmentModifierVGGGAVGMR);
  outlined destroy of CharacterSet?(v48, &_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6SliderVyAA9EmptyViewVAGGAA31AccessibilityAttachmentModifierVGSgMR);
  return outlined destroy of CharacterSet?(v47, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayALGAlCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_ALQo_AA31AccessibilityAttachmentModifierVGGGAVGMd, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA4TextV26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOAA7ForEachVySayALGAlCyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_ALQo_AA31AccessibilityAttachmentModifierVGGGAVGMR);
}