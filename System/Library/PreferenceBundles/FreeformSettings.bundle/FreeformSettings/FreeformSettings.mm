id CRLAppBundleIdentifier(uint64_t a1)
{
  if (CRLAppBundleIdentifier_onceToken != -1)
  {
    CRLAppBundleIdentifier_cold_1();
  }

  v2 = CRLAppBundleIdentifier_identifier;

  return v2;
}

id CRLAppGroupIdentifier(uint64_t a1)
{
  if (CRLAppGroupIdentifier_onceToken != -1)
  {
    CRLAppGroupIdentifier_cold_1();
  }

  v2 = CRLAppGroupIdentifier_identifier;

  return v2;
}

unint64_t lazy protocol witness table accessor for type FreeformSettings and conformance FreeformSettings()
{
  result = lazy protocol witness table cache variable for type FreeformSettings and conformance FreeformSettings;
  if (!lazy protocol witness table cache variable for type FreeformSettings and conformance FreeformSettings)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FreeformSettings and conformance FreeformSettings);
  }

  return result;
}

uint64_t closure #1 in FreeformSettings.body.getter(uint64_t a1)
{
  type metadata accessor for PreferencesControllerRecipe();
  __chkstk_darwin();
  type metadata accessor for CRLSettingsController();
  v2 = [objc_allocWithZone(PSSpecifier) init];
  [v2 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  PreferencesControllerRecipe.init(viewControllerClass:specifier:)();
  return PreferencesControllerView.init(preferencesControllerRecipe:)();
}

uint64_t closure #2 in FreeformSettings.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for NavigationPath();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for URLComponents();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[15] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in FreeformSettings.body.getter, v8, v7);
}

uint64_t closure #2 in FreeformSettings.body.getter()
{
  v1 = v0 + 13;
  v2 = v0[13];
  v4 = v0 + 12;
  v3 = v0[12];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v8 = v0[9];

  SettingsExperienceOpenURLAction.Input.url.getter();
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  (*(v8 + 8))(v6, v7);
  if ((*(v2 + 48))(v5, 1, v3) == 1)
  {
    v9 = v0 + 7;
    outlined destroy of URLComponents?(v0[11]);
    SettingsExperienceOpenURLAction.Input.navigationPath.getter();
    static SettingsExperienceOpenURLAction.Result.handled(_:)();
    v1 = v0 + 6;
    v4 = v0 + 5;
  }

  else
  {
    v9 = v0 + 14;
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    URLComponents.fragment.getter();
    if (v10)
    {
      v11 = v0[4];
      v12 = String._bridgeToObjectiveC()();

      [v11 setSpecifierIdentifierToScrollAndHighlight:v12];
    }

    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];
    SettingsExperienceOpenURLAction.Input.navigationPath.getter();
    static SettingsExperienceOpenURLAction.Result.handled(_:)();
    (*(v14 + 8))(v13, v15);
  }

  (*(*v1 + 8))(*v9, *v4);

  v16 = v0[1];

  return v16();
}

uint64_t protocol witness for SettingsExperience.body.getter in conformance FreeformSettings()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Settings0A4PaneVy19PreferencesExtended0C14ControllerViewVGMd, &_s8Settings0A4PaneVy19PreferencesExtended0C14ControllerViewVGMR);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v9 - v3;
  v5 = *v0;
  *(swift_allocObject() + 16) = v5;
  type metadata accessor for PreferencesControllerView();
  lazy protocol witness table accessor for type PreferencesControllerView and conformance PreferencesControllerView();
  v6 = v5;
  SettingsPane.init(makeContent:)();
  *(swift_allocObject() + 16) = v6;
  lazy protocol witness table accessor for type SettingsPane<PreferencesControllerView> and conformance SettingsPane<A>();
  v7 = v6;
  SettingsExperienceContent.onSettingsExperienceOpenURL(perform:)();
  return (*(v2 + 8))(v4, v1);
}

id protocol witness for SettingsExperience.init() in conformance FreeformSettings@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
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

uint64_t sub_3378()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t lazy protocol witness table accessor for type PreferencesControllerView and conformance PreferencesControllerView()
{
  result = lazy protocol witness table cache variable for type PreferencesControllerView and conformance PreferencesControllerView;
  if (!lazy protocol witness table cache variable for type PreferencesControllerView and conformance PreferencesControllerView)
  {
    type metadata accessor for PreferencesControllerView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferencesControllerView and conformance PreferencesControllerView);
  }

  return result;
}

uint64_t partial apply for closure #2 in FreeformSettings.body.getter(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #2 in FreeformSettings.body.getter;

  return closure #2 in FreeformSettings.body.getter(a1, a2, v6);
}

uint64_t partial apply for closure #2 in FreeformSettings.body.getter()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type SettingsPane<PreferencesControllerView> and conformance SettingsPane<A>()
{
  result = lazy protocol witness table cache variable for type SettingsPane<PreferencesControllerView> and conformance SettingsPane<A>;
  if (!lazy protocol witness table cache variable for type SettingsPane<PreferencesControllerView> and conformance SettingsPane<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8Settings0A4PaneVy19PreferencesExtended0C14ControllerViewVGMd, &_s8Settings0A4PaneVy19PreferencesExtended0C14ControllerViewVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SettingsPane<PreferencesControllerView> and conformance SettingsPane<A>);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined destroy of URLComponents?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for CRLSettingsController()
{
  result = lazy cache variable for type metadata for CRLSettingsController;
  if (!lazy cache variable for type metadata for CRLSettingsController)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CRLSettingsController);
  }

  return result;
}

uint64_t sub_3724()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8Settings0A4PaneVy19PreferencesExtended0C14ControllerViewVGMd, &_s8Settings0A4PaneVy19PreferencesExtended0C14ControllerViewVGMR);
  lazy protocol witness table accessor for type SettingsPane<PreferencesControllerView> and conformance SettingsPane<A>();
  return swift_getOpaqueTypeConformance2();
}

void __CRLAppBundleIdentifier_block_invoke_cold_1()
{
  v0 = 138412290;
  v1 = CRLAppBundleIdentifier_identifier;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "App bundle identifier (%@) has unexpected prefix.", &v0, 0xCu);
}

void __CRLAppGroupIdentifier_block_invoke_cold_1()
{
  v0 = 138412290;
  v1 = CRLAppGroupIdentifier_identifier;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "App group identifier (%@) has unexpected prefix.", &v0, 0xCu);
}