id LA_LOG_LACUIPackagedViewPlatformStateController(uint64_t a1)
{
  if (LA_LOG_LACUIPackagedViewPlatformStateController_once != -1)
  {
    LA_LOG_LACUIPackagedViewPlatformStateController_cold_1();
  }

  v2 = LA_LOG_LACUIPackagedViewPlatformStateController_log;

  return v2;
}

id _NSStringFromCAStateTransition(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = objc_opt_class();
  v4 = [v2 fromState];
  v5 = [v2 toState];
  v6 = [v1 stringWithFormat:@"<%@ %p; from:%@; to:%@>", v3, v2, v4, v5];;

  return v6;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

__CFString *NSStringFromLACUIAuthorizationViewMode(uint64_t a1)
{
  if (a1)
  {
    return @"Register";
  }

  else
  {
    return @"Enter";
  }
}

__CFString *NSStringFromLACUIAuthorizationViewStyle(uint64_t a1)
{
  if (a1)
  {
    return @"FullScreen";
  }

  else
  {
    return @"Sheet";
  }
}

__CFString *NSStringFromLACUIAuthenticatorServiceConfigurationRequirement(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Invalid";
  }

  else
  {
    return off_27981E6B0[a1 - 1];
  }
}

LACUIHostedSceneAction *LACUIHostedSceneActionFromSettings(void *a1)
{
  v1 = a1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __LACUIHostedSceneActionFromSettings_block_invoke;
  v5[3] = &unk_27981E748;
  v5[4] = &v12;
  v5[5] = &v6;
  [v1 enumerateObjectsWithBlock:v5];
  v2 = [LACUIHostedSceneAction alloc];
  v3 = [(LACUIHostedSceneAction *)v2 initWithRawIdentifier:v13[3] value:v7[5]];
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(&v12, 8);

  return v3;
}

void sub_256069B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __LACUIHostedSceneActionFromSettings_block_invoke(uint64_t a1, uint64_t a2, id obj, _BYTE *a4)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  *a4 = 1;
}

id BSSettingsFromHostedSceneAction(void *a1)
{
  v1 = MEMORY[0x277CF0C80];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [v2 rawValue];
  v5 = [v2 rawIdentifier];

  [v3 setObject:v4 forSetting:v5];

  return v3;
}

void BSActionResponseForHandlerAndSettings(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (([v5 conformsToProtocol:&unk_28682F428] & 1) == 0)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Window %@ cannot handle scene actions", v5];
    v9 = [MEMORY[0x277D24060] errorWithCode:*MEMORY[0x277D23E88] debugDescription:v8];
    v10 = [MEMORY[0x277CF0B68] responseForError:v9];
    v7[2](v7, v10);
LABEL_6:

    goto LABEL_7;
  }

  v8 = v5;
  v9 = LACUIHostedSceneActionFromSettings(v6);
  if (([v8 handlesAction:v9] & 1) == 0)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Window %@ cannot handle scene action %@", v8, v9];
    v11 = [MEMORY[0x277D24060] errorWithCode:*MEMORY[0x277D23E88] debugDescription:v10];
    v12 = [MEMORY[0x277CF0B68] responseForError:v11];
    v7[2](v7, v12);

    goto LABEL_6;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __BSActionResponseForHandlerAndSettings_block_invoke;
  v13[3] = &unk_27981E770;
  v14 = v7;
  [v8 handleAction:v9 completion:v13];

LABEL_7:
}

void __BSActionResponseForHandlerAndSettings_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [MEMORY[0x277CF0B68] responseForError:a2];
  }

  else
  {
    [MEMORY[0x277CF0B68] response];
  }
  v3 = ;
  (*(*(a1 + 32) + 16))();
}

void sub_25606B134(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *LACUILockViewStateNameFromState(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_27981E828[a1];
  }
}

__CFString *NSStringFromLACUILockViewState(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_27981E828[a1];
  }
}

void sub_25606CBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25606E170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_256070484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_256070DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *CAStateNameFromLACUIFaceIDSpinnerViewState(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_27981EAB8[a1];
  }
}

__CFString *NSStringFromLACUIFaceIDSpinnerViewState(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_27981EAD8[a1];
  }
}

id LACUIImageWithIcon(void *a1)
{
  v1 = a1;
  v2 = objc_alloc(MEMORY[0x277D1B1C8]);
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 scale];
  v5 = [v2 initWithSize:50.0 scale:{50.0, v4}];

  v6 = [v1 imageForDescriptor:v5];
  v7 = v6;
  if (v6 && ![v6 placeholder] || (objc_msgSend(v1, "prepareImageForDescriptor:", v5), v8 = objc_claimAutoreleasedReturnValue(), v7, (v7 = v8) != 0))
  {
    v9 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:{objc_msgSend(v7, "CGImage")}];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277D755B8]);
  }

  return v9;
}

id LACUIImageNamed(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [MEMORY[0x277D755B8] imageNamed:a1 inBundle:a2 withConfiguration:0];
  }

  else
  {
    [MEMORY[0x277D755B8] imageNamed:a1];
  }
  v2 = ;

  return v2;
}

void LACUILayerScaleDirectDescendants(void *a1, CGFloat a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 sublayers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (v3)
        {
          objc_msgSend_transform(v3);
        }

        else
        {
          memset(&v10, 0, sizeof(v10));
        }

        CATransform3DScale(&v11, &v10, a2, a2, 1.0);
        [v9 setTransform:&v11];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void LACUILayerScaleToFitInRect(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = a1;
  [v7 bounds];
  v9 = a4 / v8;
  [v7 bounds];
  if (v9 >= a5 / v10)
  {
    v9 = a5 / v10;
  }

  [v7 setPosition:{a4 * 0.5, a5 * 0.5}];
  CATransform3DMakeScale(&v12, v9, v9, 1.0);
  v11 = v12;
  [v7 setTransform:&v11];
}

id LACUILayerFindSublayerWithName(void *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [v3 sublayers];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v17 = v10;
          goto LABEL_19;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v3 sublayers];
  v13 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
LABEL_11:
    v16 = 0;
    while (1)
    {
      if (*v21 != v15)
      {
        objc_enumerationMutation(v5);
      }

      v17 = LACUILayerFindSublayerWithName(*(*(&v20 + 1) + 8 * v16), v4);
      if (v17)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v14)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

LABEL_19:
    v18 = v17;
  }

  else
  {
LABEL_17:
    v18 = 0;
  }

  return v18;
}

id LA_LOG_LACUIPackagedView(uint64_t a1)
{
  if (LA_LOG_LACUIPackagedView_once != -1)
  {
    LA_LOG_LACUIPackagedView_cold_1();
  }

  v2 = LA_LOG_LACUIPackagedView_log;

  return v2;
}

uint64_t LACUIAuthContainerView.viewModel.getter(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = type metadata accessor for LACUIAuthContainerViewModel(0);
  v6 = lazy protocol witness table accessor for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel(&lazy protocol witness table cache variable for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel, type metadata accessor for LACUIAuthContainerViewModel, &protocol conformance descriptor for LACUIAuthContainerViewModel);

  return a1(v2, v3, v4, v5, v6);
}

uint64_t LACUIAuthContainerView.init(dataSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = partial apply for implicit closure #1 in LACUIAuthContainerView.init(dataSource:);
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t implicit closure #1 in LACUIAuthContainerView.init(dataSource:)(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy25LocalAuthenticationCoreUI14LACUIAuthStateOGMd, &_s7Combine9PublishedVy25LocalAuthenticationCoreUI14LACUIAuthStateOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = type metadata accessor for LACUIAuthState(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  type metadata accessor for LACUIAuthContainerViewModel(0);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthContainerViewModel__state;
  v17 = type metadata accessor for LACUIAuthCountdownConfiguration(0);
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  outlined init with copy of LACUIAuthCountdownConfiguration(v14, v12, type metadata accessor for LACUIAuthState);
  swift_unknownObjectRetain();
  Published.init(initialValue:)();
  outlined destroy of LACUIAuthCountdownView(v14, type metadata accessor for LACUIAuthState);
  (*(v6 + 32))(v15 + v16, v8, v5);
  v18 = v15 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthContainerViewModel_dataSource;
  *(v15 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthContainerViewModel_dataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v18 + 8) = v22;
  swift_unknownObjectWeakAssign();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v15;
  *(v20 + 40) = xmmword_2560B9EC0;
  *(v20 + 56) = 0u;
  *(v20 + 72) = 0u;
  *(v20 + 88) = 0u;
  *(v20 + 104) = 0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:), v20);

  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_2560754C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t LACUIAuthContainerView.init(viewModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = partial apply for implicit closure #1 in LACUIAuthContainerView.init(viewModel:);
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t LACUIAuthContainerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v26 = type metadata accessor for LACUIAuthCountdownView(0);
  MEMORY[0x28223BE20](v26);
  v23 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = type metadata accessor for LACUIAuthCountdownConfiguration(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v21 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v22 = &v21 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9EmptyViewV023LocalAuthenticationCoreB0018LACUIAuthCountdownG0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA9EmptyViewV023LocalAuthenticationCoreB0018LACUIAuthCountdownG0V_GMR);
  MEMORY[0x28223BE20](v24);
  v8 = &v21 - v7;
  v9 = type metadata accessor for LACUIAuthState(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LACUIAuthContainerViewModel(0);
  lazy protocol witness table accessor for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel(&lazy protocol witness table cache variable for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel, type metadata accessor for LACUIAuthContainerViewModel, &protocol conformance descriptor for LACUIAuthContainerViewModel);
  v12 = StateObject.wrappedValue.getter();
  (*(*v12 + 96))(v12);

  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel(&lazy protocol witness table cache variable for type LACUIAuthCountdownView and conformance LACUIAuthCountdownView, type metadata accessor for LACUIAuthCountdownView, &protocol conformance descriptor for LACUIAuthCountdownView);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v14 = v11;
    v15 = v22;
    outlined init with take of LACUIAuthCountdownConfiguration(v14, v22);
    v16 = v21;
    outlined init with copy of LACUIAuthCountdownConfiguration(v15, v21, type metadata accessor for LACUIAuthCountdownConfiguration);
    v17 = StateObject.wrappedValue.getter();
    type metadata accessor for LACUIAuthCountdownViewModel(0);
    swift_allocObject();
    LACUIAuthCountdownViewModel.init(configuration:handler:)(v16, v17, &protocol witness table for LACUIAuthContainerViewModel);
    KeyPath = swift_getKeyPath();
    v19 = v23;
    *(v23 + *(v26 + 20)) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel(&lazy protocol witness table cache variable for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel, type metadata accessor for LACUIAuthCountdownViewModel, &protocol conformance descriptor for LACUIAuthCountdownViewModel);
    *v19 = ObservedObject.init(wrappedValue:)();
    v19[1] = v20;
    outlined init with copy of LACUIAuthCountdownConfiguration(v19, v8, type metadata accessor for LACUIAuthCountdownView);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel(&lazy protocol witness table cache variable for type LACUIAuthCountdownView and conformance LACUIAuthCountdownView, type metadata accessor for LACUIAuthCountdownView, &protocol conformance descriptor for LACUIAuthCountdownView);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of LACUIAuthCountdownView(v19, type metadata accessor for LACUIAuthCountdownView);
    return outlined destroy of LACUIAuthCountdownView(v15, type metadata accessor for LACUIAuthCountdownConfiguration);
  }
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

uint64_t outlined init with take of LACUIAuthCountdownConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LACUIAuthCountdownConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for EnvironmentValues.colorScheme : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t lazy protocol witness table accessor for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LACUIAuthContainerView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LACUIAuthContainerView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EmptyView, LACUIAuthCountdownView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, LACUIAuthCountdownView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, LACUIAuthCountdownView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewV023LocalAuthenticationCoreB0018LACUIAuthCountdownF0VGMd, &_s7SwiftUI19_ConditionalContentVyAA9EmptyViewV023LocalAuthenticationCoreB0018LACUIAuthCountdownF0VGMR);
    lazy protocol witness table accessor for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel(&lazy protocol witness table cache variable for type LACUIAuthCountdownView and conformance LACUIAuthCountdownView, type metadata accessor for LACUIAuthCountdownView, &protocol conformance descriptor for LACUIAuthCountdownView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, LACUIAuthCountdownView> and conformance <> _ConditionalContent<A, B>);
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

void type metadata accessor for LACUserInterfaceRequestIdentifier(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance LACBiometryType(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x259C58E90](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance LACBiometryType(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance LACBiometryType@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

void *_sSo33LACUserInterfaceRequestIdentifierVSYSCSY8rawValuexSg03RawF0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACBiometryType(uint64_t a1)
{
  lazy protocol witness table accessor for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel(&lazy protocol witness table cache variable for type LACBiometryType and conformance LACBiometryType, type metadata accessor for LACBiometryType, &protocol conformance descriptor for LACBiometryType);
  lazy protocol witness table accessor for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel(&lazy protocol witness table cache variable for type LACBiometryType and conformance LACBiometryType, type metadata accessor for LACBiometryType, &protocol conformance descriptor for LACBiometryType);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t outlined init with copy of LACUIAuthCountdownConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of LACUIAuthCountdownView(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_256076228()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48) >= 2uLL)
  {

    if (*(v0 + 104) != 255)
    {
      outlined consume of LACUIAuthImageConfiguration(*(v0 + 88), *(v0 + 96));
    }
  }

  return MEMORY[0x2821FE8E8](v0, 106, 7);
}

uint64_t partial apply for closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:);

  return closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:)(a1, v4, v5, v6, (v1 + 5));
}

uint64_t partial apply for closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t static LACUIDTOUtilities.dtoLearnMoreLinkURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  URL.init(string:)();
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t static LACUIDTOUtilities.dtoUnexpectedSecurityDelayRadarURL.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LACUITapToRadarURLBuilder();
  v1 = swift_allocObject();
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 48) = 10;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 104) = 6;
  swift_beginAccess();
  *(v1 + 16) = 0xD000000000000034;
  *(v1 + 24) = 0x80000002560BDCC0;
  swift_beginAccess();
  *(v1 + 32) = 0x10000000000004CDLL;
  *(v1 + 40) = 0x80000002560BDD00;

  swift_beginAccess();
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  *(v1 + 56) = 0xD000000000000018;
  *(v1 + 64) = 0x80000002560BE1D0;
  *(v1 + 72) = xmmword_2560BA2D0;
  *(v1 + 88) = xmmword_2560BA2E0;

  outlined consume of (name: String, version: String, id: String)?(v2, v3, v4, v5, v6, v7);

  swift_beginAccess();
  *(v1 + 48) = 6;
  swift_beginAccess();
  *(v1 + 104) = 1;
  LACUITapToRadarURLBuilder.build()(a1);
}

uint64_t key path setter for LACUITapToRadarURLBuilder.title : LACUITapToRadarURLBuilder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);

  return v4(v2, v3);
}

uint64_t key path setter for LACUITapToRadarURLBuilder.description : LACUITapToRadarURLBuilder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 152);

  return v4(v2, v3);
}

uint64_t key path setter for LACUITapToRadarURLBuilder.component : LACUITapToRadarURLBuilder(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = a1[2];
  v3 = *(**a2 + 200);
  outlined init with copy of (name: String, version: String, id: String)?(v6, &v5);
  return v3(v6);
}

LACUIDTOUtilities __swiftcall LACUIDTOUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void outlined consume of (name: String, version: String, id: String)?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

unint64_t type metadata accessor for LACUIDTOUtilities()
{
  result = lazy cache variable for type metadata for LACUIDTOUtilities;
  if (!lazy cache variable for type metadata for LACUIDTOUtilities)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACUIDTOUtilities);
  }

  return result;
}

uint64_t outlined init with copy of (name: String, version: String, id: String)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_SS7versionSS2idtSgMd, _sSS4name_SS7versionSS2idtSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of LACUIAuthDataSource.nextState(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:);

  return v13(a1, a2, a3, a4, a5);
}

LocalAuthenticationCoreUI::LACUIRatchetViewModelPresentationStyle_optional __swiftcall LACUIRatchetViewModelPresentationStyle.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type LACUIRatchetViewModelPresentationStyle and conformance LACUIRatchetViewModelPresentationStyle()
{
  result = lazy protocol witness table cache variable for type LACUIRatchetViewModelPresentationStyle and conformance LACUIRatchetViewModelPresentationStyle;
  if (!lazy protocol witness table cache variable for type LACUIRatchetViewModelPresentationStyle and conformance LACUIRatchetViewModelPresentationStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACUIRatchetViewModelPresentationStyle and conformance LACUIRatchetViewModelPresentationStyle);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LACUIRatchetViewModelPresentationStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C590D0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LACUIRatchetViewModelPresentationStyle(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x259C590D0](v2);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance LACUIRatchetViewModelPresentationStyle@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LACUIRatchetViewModelPresentationStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LACUIRatchetViewModelPresentationStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized static LACUIAuthImageConfiguration.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = a2[1];
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v6 = *a1;
      v7 = v2;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    outlined copy of LACUIAuthImageConfiguration(*a2, a2[1]);
    outlined copy of LACUIAuthImageConfiguration(v3, v2);
    outlined consume of LACUIAuthImageConfiguration(v3, v2);
    outlined consume of LACUIAuthImageConfiguration(v5, v4);
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *a1;
  v7 = v2;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of LACUIAuthImageConfiguration(v5, v4);
    outlined copy of LACUIAuthImageConfiguration(v3, v2);
    outlined consume of LACUIAuthImageConfiguration(v3, v2);
    outlined consume of LACUIAuthImageConfiguration(v5, v4);
    return v11 & 1;
  }

LABEL_15:
  outlined copy of LACUIAuthImageConfiguration(v6, v7);
  outlined copy of LACUIAuthImageConfiguration(v3, v2);
  outlined consume of LACUIAuthImageConfiguration(v3, v2);
  outlined consume of LACUIAuthImageConfiguration(v3, v2);
  return 1;
}

uint64_t static Color.sheetBackground(for:)(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CDF3D0])
  {
    v7 = [objc_opt_self() systemBackgroundColor];
LABEL_5:
    v11 = v7;
    return Color.init(uiColor:)();
  }

  v8 = v6;
  v9 = *MEMORY[0x277CDF3C0];
  v10 = objc_opt_self();
  if (v8 == v9)
  {
    v7 = [v10 secondarySystemBackgroundColor];
    goto LABEL_5;
  }

  v13 = [v10 systemBackgroundColor];
  v14 = Color.init(uiColor:)();
  (*(v3 + 8))(v5, v2);
  return v14;
}

uint64_t static Color.systemBackground.getter(SEL *a1)
{
  v1 = [objc_opt_self() *a1];

  return Color.init(uiColor:)();
}

id LACUIDTOBiometryRequiredScenePresentationHandler.__allocating_init(biometryType:alertFactory:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC25LocalAuthenticationCoreUI48LACUIDTOBiometryRequiredScenePresentationHandler_biometryType] = a1;
  *&v5[OBJC_IVAR____TtC25LocalAuthenticationCoreUI48LACUIDTOBiometryRequiredScenePresentationHandler_alertFactory] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id LACUIDTOBiometryRequiredScenePresentationHandler.init(biometryType:alertFactory:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC25LocalAuthenticationCoreUI48LACUIDTOBiometryRequiredScenePresentationHandler_biometryType] = a1;
  *&v2[OBJC_IVAR____TtC25LocalAuthenticationCoreUI48LACUIDTOBiometryRequiredScenePresentationHandler_alertFactory] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LACUIDTOBiometryRequiredScenePresentationHandler();
  return objc_msgSendSuper2(&v4, sel_init);
}

Swift::Bool __swiftcall LACUIDTOBiometryRequiredScenePresentationHandler.canHandle(request:)(LACUIScenePresentationRequest request)
{
  v1 = [(objc_class *)request.super.isa userInterfaceRequest];
  v2 = [v1 identifier];

  return v2 == 5;
}

uint64_t closure #1 in LACUIDTOBiometryRequiredScenePresentationHandler.handle(request:inContext:)(void *a1)
{
  [objc_msgSend(a1 presenter)];

  return swift_unknownObjectRelease();
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id LACUIDTOBiometryRequiredScenePresentationHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACUIDTOBiometryRequiredScenePresentationHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACUIDTOBiometryRequiredScenePresentationHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized LACUIDTOBiometryRequiredScenePresentationHandler.handle(request:inContext:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC25LocalAuthenticationCoreUI48LACUIDTOBiometryRequiredScenePresentationHandler_biometryType];
  v8 = [*&v1[OBJC_IVAR____TtC25LocalAuthenticationCoreUI48LACUIDTOBiometryRequiredScenePresentationHandler_alertFactory] biometryRequiredAlertWithBiometryType_];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    v26 = partial apply for closure #1 in LACUIDTOBiometryRequiredScenePresentationHandler.handle(request:inContext:);
    v27 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v25 = &block_descriptor;
    v11 = _Block_copy(&aBlock);
    v12 = a1;

    [v9 setOnDismiss_];
    _Block_release(v11);
    v13 = [v12 presenter];
    v14 = swift_allocObject();
    *(v14 + 16) = v9;
    v26 = partial apply for closure #2 in LACUIDTOBiometryRequiredScenePresentationHandler.handle(request:inContext:);
    v27 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v25 = &block_descriptor_9;
    v15 = _Block_copy(&aBlock);
    v16 = v9;

    [v13 present:v16 animated:1 completion:v15];
    _Block_release(v15);
  }

  else
  {
    static LACLog.ui.getter();
    v17 = v1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v7;

      _os_log_impl(&dword_256063000, v18, v19, "No alert available for biometryType: %ld", v20, 0xCu);
      MEMORY[0x259C59AD0](v20, -1, -1);
    }

    else
    {

      v18 = v17;
    }

    (*(v4 + 8))(v6, v3);
    [objc_msgSend(a1 presenter)];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_256077D18()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t Image.init(with:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*(a1 + 16))
  {

    return Image.init(_internalSystemName:)();
  }

  else
  {
    v4 = one-time initialization token for current;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = static NSBundle.current;
    v6 = Image.init(_:bundle:)();
    outlined consume of LACUIAuthImageConfiguration(v1, v2);
    return v6;
  }
}

__n128 Image.scaleWhilePreservingRatio(toHeight:for:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20[-v8];
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 16))
  {
    v14 = type metadata accessor for Font.Design();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    v15 = static Font.system(size:weight:design:)();
    outlined destroy of Font.Design?(v9);
    KeyPath = swift_getKeyPath();
    v26 = 1;
    v22 = a2;
    v23 = KeyPath;
    v24[0] = v15;
    *&v24[1] = v27;
    *&v24[3] = v28;
    *&v24[5] = v29;
    v25 = 1;
  }

  else
  {
    (*(v11 + 104))(v13, *MEMORY[0x277CE0FE0], v10);
    v17 = Image.resizable(capInsets:resizingMode:)();
    (*(v11 + 8))(v13, v10);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v21[38] = v29;
    *&v21[22] = v28;
    *&v21[6] = v27;
    *(v24 + 2) = *v21;
    LOBYTE(v30) = 1;
    v26 = 0;
    v22 = v17;
    v23 = 0;
    LOWORD(v24[0]) = 1;
    *(&v24[2] + 2) = *&v21[16];
    *(&v24[4] + 2) = *&v21[32];
    v24[6] = *(&v29 + 1);
    v25 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v18 = v33[0];
  *(a3 + 32) = v32;
  *(a3 + 48) = v18;
  *(a3 + 57) = *(v33 + 9);
  result = v31;
  *a3 = v30;
  *(a3 + 16) = result;
  return result;
}

id one-time initialization function for current()
{
  type metadata accessor for NSBundle.Sentinel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static NSBundle.current = result;
  return result;
}

{
  type metadata accessor for NSBundle.Sentinel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static NSBundle.current = result;
  return result;
}

uint64_t outlined destroy of Font.Design?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t key path getter for EnvironmentValues.font : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_256078260@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t type metadata accessor for NSBundle.Sentinel()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAEyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGMd, "4f");
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t LACUIFaceIDSpinnerView_SwiftUI.viewModel.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void LACUIFaceIDSpinnerView_SwiftUI.$viewModel.getter()
{
  type metadata accessor for LACUIFaceIDSpinnerViewModel(0);
  lazy protocol witness table accessor for type LACUIFaceIDSpinnerViewModel and conformance LACUIFaceIDSpinnerViewModel();

  JUMPOUT(0x259C58460);
}

unint64_t lazy protocol witness table accessor for type LACUIFaceIDSpinnerViewModel and conformance LACUIFaceIDSpinnerViewModel()
{
  result = lazy protocol witness table cache variable for type LACUIFaceIDSpinnerViewModel and conformance LACUIFaceIDSpinnerViewModel;
  if (!lazy protocol witness table cache variable for type LACUIFaceIDSpinnerViewModel and conformance LACUIFaceIDSpinnerViewModel)
  {
    type metadata accessor for LACUIFaceIDSpinnerViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACUIFaceIDSpinnerViewModel and conformance LACUIFaceIDSpinnerViewModel);
  }

  return result;
}

uint64_t LACUIFaceIDSpinnerView_SwiftUI.init(viewModel:)@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LACUIFaceIDSpinnerViewModel(0);
  lazy protocol witness table accessor for type LACUIFaceIDSpinnerViewModel and conformance LACUIFaceIDSpinnerViewModel();
  result = ObservedObject.init(wrappedValue:)();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void LACUIFaceIDSpinnerView_SwiftUI.updateView<A>(_:context:)(void *a1)
{
  v3 = *(v1 + 8);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = *(*v3 + 88);
    v9 = a1;

    v8 = v6(v7);

    [v5 setState:v8 animated:1 completion:0];
  }
}

id LACUIFaceIDSpinnerView_SwiftUI.makeUIView(context:)()
{
  v0 = objc_allocWithZone(LACUIFaceIDSpinnerView);

  return [v0 init];
}

unint64_t instantiation function for generic protocol witness table for LACUIFaceIDSpinnerView_SwiftUI(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI()
{
  result = lazy protocol witness table cache variable for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI;
  if (!lazy protocol witness table cache variable for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI;
  if (!lazy protocol witness table cache variable for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI);
  }

  return result;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance LACUIFaceIDSpinnerView_SwiftUI()
{
  v0 = objc_allocWithZone(LACUIFaceIDSpinnerView);

  return [v0 init];
}

id protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance LACUIFaceIDSpinnerView_SwiftUI(void *a1)
{
  v3 = (*(**(v1 + 8) + 88))();

  return [a1 setState:v3 animated:1 completion:0];
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance LACUIFaceIDSpinnerView_SwiftUI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance LACUIFaceIDSpinnerView_SwiftUI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance LACUIFaceIDSpinnerView_SwiftUI(uint64_t a1)
{
  lazy protocol witness table accessor for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_256078B14(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LACUIFaceIDSpinnerView_SwiftUI(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LACUIFaceIDSpinnerView_SwiftUI(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t LACUIAuthCountdownViewModel.__allocating_init(configuration:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  LACUIAuthCountdownViewModel.init(configuration:handler:)(a1, a2, a3);
  return v6;
}

uint64_t LACUIAuthCountdownViewModel.delayExpiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_configuration;
  v7 = type metadata accessor for LACUIAuthCountdownConfiguration(0);
  outlined init with copy of LACUIAuthCountdownDelayConfiguration?(v6 + *(v7 + 28), v5);
  v8 = type metadata accessor for LACUIAuthCountdownDelayConfiguration(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v5, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
    v9 = type metadata accessor for Date();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    v11 = *(v8 + 20);
    v12 = type metadata accessor for Date();
    v13 = *(v12 - 8);
    (*(v13 + 16))(a1, &v5[v11], v12);
    outlined destroy of LACUIAuthCountdownDelayConfiguration(v5, type metadata accessor for LACUIAuthCountdownDelayConfiguration);
    return (*(v13 + 56))(a1, 0, 1, v12);
  }
}

uint64_t LACUIAuthCountdownViewModel.init(configuration:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  *(v3 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_handler + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_delayTimer) = 0;
  outlined init with copy of LACUIAuthCountdownConfiguration(a1, v3 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_configuration);
  *(v3 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_handler + 8) = a3;
  v16 = swift_unknownObjectWeakAssign();
  (*(*v3 + 104))(v16);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of LACUIAuthCountdownDelayConfiguration(a1, type metadata accessor for LACUIAuthCountdownConfiguration);
    swift_unknownObjectRelease();
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    static Date.now.getter();
    v17 = static Date.> infix(_:_:)();
    v18 = *(v10 + 8);
    v18(v13, v9);
    if (v17)
    {
      LACUIAuthCountdownViewModel.scheduleDelayTimer()();
    }

    swift_unknownObjectRelease();
    outlined destroy of LACUIAuthCountdownDelayConfiguration(a1, type metadata accessor for LACUIAuthCountdownConfiguration);
    v18(v15, v9);
  }

  return v3;
}

uint64_t outlined init with copy of LACUIAuthCountdownConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LACUIAuthCountdownConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of LACUIAuthCountdownDelayConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of LACUIAuthCountdownDelayConfiguration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of LACUIAuthCountdownDelayConfiguration?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void LACUIAuthCountdownViewModel.scheduleDelayTimer()()
{
  v1 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_delayTimer;
  v2 = *(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_delayTimer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_weakInit();
  v9[4] = partial apply for closure #1 in LACUIAuthCountdownViewModel.scheduleDelayTimer();
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v9[3] = &block_descriptor_0;
  v6 = _Block_copy(v9);

  v7 = [v4 scheduledTimerWithTimeInterval:1 repeats:v6 block:0.5];
  _Block_release(v6);
  v8 = *(v0 + v1);
  *(v0 + v1) = v7;
}

uint64_t LACUIAuthCountdownViewModel.tappedOnButton(_:)(__int128 *a1)
{
  v3 = a1[3];
  v19[2] = a1[2];
  v19[3] = v3;
  v20 = *(a1 + 32);
  v4 = a1[1];
  v19[0] = *a1;
  v19[1] = v4;
  v5 = v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_handler;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v9 = a1[3];
    v14 = a1[2];
    v15 = v9;
    v16 = *(a1 + 32);
    v10 = a1[1];
    v12 = *a1;
    v13 = v10;
    v11 = *(v7 + 8);
    outlined init with copy of LACUIAuthButtonConfiguration(v19, v17);
    v11(&v12, ObjectType, v7);
    swift_unknownObjectRelease();
    v17[2] = v14;
    v17[3] = v15;
    v18 = v16;
    v17[0] = v12;
    v17[1] = v13;
    return outlined destroy of LACUIAuthActionCountdown(v17);
  }

  return result;
}

uint64_t LACUIAuthCountdownViewModel.deinit()
{
  outlined destroy of LACUIAuthCountdownDelayConfiguration(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_configuration, type metadata accessor for LACUIAuthCountdownConfiguration);
  outlined destroy of weak LACUIAuthCountdownViewModelHandler?(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_handler);

  return v0;
}

uint64_t LACUIAuthCountdownViewModel.__deallocating_deinit()
{
  outlined destroy of LACUIAuthCountdownDelayConfiguration(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_configuration, type metadata accessor for LACUIAuthCountdownConfiguration);
  outlined destroy of weak LACUIAuthCountdownViewModelHandler?(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_handler);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance LACUIAuthCountdownViewModel@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LACUIAuthCountdownViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for LACUIAuthCountdownViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for LACUIAuthCountdownViewModel;
  if (!type metadata singleton initialization cache for LACUIAuthCountdownViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LACUIAuthCountdownViewModel(uint64_t a1)
{
  result = type metadata accessor for LACUIAuthCountdownConfiguration(319);
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

uint64_t sub_256079838()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t closure #1 in LACUIAuthCountdownViewModel.scheduleDelayTimer()(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16[-v3];
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-v10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  (*(*Strong + 104))(Strong);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  (*(v6 + 32))(v11, v4, v5);
  static Date.now.getter();
  v13 = static Date.< infix(_:_:)();
  v14 = *(v6 + 8);
  v14(v9, v5);
  if (v13)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      LACUIAuthCountdownViewModel.delayElapsed()();
    }
  }

  return (v14)(v11, v5);
}

uint64_t LACUIAuthCountdownViewModel.delayElapsed()()
{
  v1 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_delayTimer;
  [*(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_delayTimer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_handler;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    (*(v5 + 8))(v7, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t LACUIAuthCountdownDelayView.expirationRange.getter@<X0>(char *a1@<X8>)
{
  v35 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
  v2 = MEMORY[0x28223BE20](v33);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = *(type metadata accessor for LACUIAuthCountdownDelayConfiguration(0) + 20);
  static Date.now.getter();
  v36 = v1;
  v15 = static Date.> infix(_:_:)();
  v34 = *(v8 + 8);
  v34(v13, v7);
  static Date.now.getter();
  if (v15)
  {
    lazy protocol witness table accessor for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v17 = *(v8 + 32);
      v17(v6, v13, v7);
      v18 = v33;
      (*(v8 + 16))(&v6[*(v33 + 48)], v36 + v14, v7);
      outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v6, v4, &_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
      v19 = *(v18 + 48);
      v20 = v35;
      v17(v35, v4, v7);
      v21 = &v4[v19];
      v22 = v34;
      v34(v21, v7);
      outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v6, v4, &_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
      v23 = *(v18 + 48);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation4DateVGMd, &_sSny10Foundation4DateVGMR);
      v17(&v20[*(v24 + 36)], &v4[v23], v7);
      return v22(v4, v7);
    }

    __break(1u);
    goto LABEL_8;
  }

  static Date.now.getter();
  lazy protocol witness table accessor for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v25 = *(v8 + 32);
  v25(v6, v13, v7);
  v26 = v33;
  v25(&v6[*(v33 + 48)], v11, v7);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v6, v4, &_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
  v27 = *(v26 + 48);
  v28 = v35;
  v25(v35, v4, v7);
  v29 = &v4[v27];
  v30 = v34;
  v34(v29, v7);
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v6, v4, &_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
  v31 = *(v26 + 48);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation4DateVGMd, &_sSny10Foundation4DateVGMR);
  v25(&v28[*(v32 + 36)], &v4[v31], v7);
  return v30(v4, v7);
}

uint64_t LACUIAuthCountdownDelayView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAQyAQyAQy023LocalAuthenticationCoreB012DynamicStackVyAIyAQyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0V9AlignmentOGG_AA6SpacerVAA08TimelineD0VyAA24PeriodicTimelineScheduleVAQyAvA0l10AttachmentZ0VGGtGGAA010_FlexFrameG0VGAA08_PaddingG0VGAA026_InsettableBackgroundShapeZ0VyAA5ColorVAA16RoundedRectangleVGGA17_G_Qo__AQyAQyAA6HStackVyAIyAV_A2_tGGA17_GA17_GSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAQyAQyAQy023LocalAuthenticationCoreB012DynamicStackVyAIyAQyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0V9AlignmentOGG_AA6SpacerVAA08TimelineD0VyAA24PeriodicTimelineScheduleVAQyAvA0l10AttachmentZ0VGGtGGAA010_FlexFrameG0VGAA08_PaddingG0VGAA026_InsettableBackgroundShapeZ0VyAA5ColorVAA16RoundedRectangleVGGA17_G_Qo__AQyAQyAA6HStackVyAIyAV_A2_tGGA17_GA17_GSgtGGMR);
  return closure #1 in LACUIAuthCountdownDelayView.body.getter(v1, (a1 + *(v3 + 44)));
}

uint64_t closure #1 in LACUIAuthCountdownDelayView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v90 = a1;
  v98 = a2;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v93 = *(v3 - 8);
  v94 = v3;
  MEMORY[0x28223BE20](v3);
  v92 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LACUIAuthCountdownDelayView(0);
  v84 = *(v5 - 8);
  v6 = *(v84 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAD4TextVAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGG_AD6SpacerVAD08TimelineI0VyAD08PeriodicS8ScheduleVAHyAjD023AccessibilityAttachmentP0VGGtGGMd, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAD4TextVAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGG_AD6SpacerVAD08TimelineI0VyAD08PeriodicS8ScheduleVAHyAjD023AccessibilityAttachmentP0VGGtGGMR);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v83 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGMR);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v85 = &v83 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGMd, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v86 = &v83 - v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGMR) - 8;
  MEMORY[0x28223BE20](v88);
  v87 = &v83 - v18;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGA5_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGA5_GMR);
  MEMORY[0x28223BE20](v91);
  v89 = &v83 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIy023LocalAuthenticationCoreB012DynamicStackVyAA05TupleC0VyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGG_AA6SpacerVAA08TimelineC0VyAA08PeriodicY8ScheduleVAIyApA0g10AttachmentV0VGGtGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeV0VyAA5ColorVAA16RoundedRectangleVGGA11_G_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIy023LocalAuthenticationCoreB012DynamicStackVyAA05TupleC0VyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGG_AA6SpacerVAA08TimelineC0VyAA08PeriodicY8ScheduleVAIyApA0g10AttachmentV0VGGtGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeV0VyAA5ColorVAA16RoundedRectangleVGGA11_G_Qo_MR);
  v96 = *(v20 - 8);
  v97 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v95 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v99 = &v83 - v23;
  outlined init with copy of LACUIAuthCountdownDelayConfiguration(a1, v7, type metadata accessor for LACUIAuthCountdownDelayView);
  v24 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v25 = swift_allocObject();
  outlined init with take of LACUIAuthCountdownDelayConfiguration(v7, v25 + v24, type metadata accessor for LACUIAuthCountdownDelayView);
  *v11 = 0;
  v11[8] = 1;
  *(v11 + 2) = partial apply for closure #1 in closure #1 in LACUIAuthCountdownDelayView.body.getter;
  *(v11 + 3) = v25;
  v26 = *(v9 + 48);
  *&v11[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  swift_storeEnumTagMultiPayload();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v27 = v85;
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v11, v85, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAD4TextVAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGG_AD6SpacerVAD08TimelineI0VyAD08PeriodicS8ScheduleVAHyAjD023AccessibilityAttachmentP0VGGtGGMd, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAD4TextVAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGG_AD6SpacerVAD08TimelineI0VyAD08PeriodicS8ScheduleVAHyAjD023AccessibilityAttachmentP0VGGtGGMR);
  v28 = (v27 + *(v13 + 44));
  v29 = v138[5];
  v28[4] = v138[4];
  v28[5] = v29;
  v28[6] = v138[6];
  v30 = v138[1];
  *v28 = v138[0];
  v28[1] = v30;
  v31 = v138[3];
  v28[2] = v138[2];
  v28[3] = v31;
  LOBYTE(v26) = static Edge.Set.all.getter();
  v32 = v86;
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v27, v86, &_s7SwiftUI15ModifiedContentVy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGMR);
  v33 = v32 + *(v16 + 44);
  *v33 = v26;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  *(v33 + 40) = 1;
  v34 = [objc_opt_self() secondarySystemBackgroundColor];
  v35 = Color.init(uiColor:)();
  v36 = v87;
  v37 = &v87[*(v88 + 44)];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMR);
  v39 = v37 + *(v38 + 52);
  v40 = *(type metadata accessor for RoundedRectangle() + 20);
  v41 = *MEMORY[0x277CE0118];
  v42 = type metadata accessor for RoundedCornerStyle();
  (*(*(v42 - 8) + 104))(&v39[v40], v41, v42);
  __asm { FMOV            V0.2D, #8.0 }

  *v39 = _Q0;
  *v37 = v35;
  *(v37 + *(v38 + 56)) = 256;
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v32, v36, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGMd, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGMR);
  LOBYTE(v35) = static Edge.Set.horizontal.getter();
  v48 = v89;
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v36, v89, &_s7SwiftUI15ModifiedContentVyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGMR);
  v49 = v92;
  v50 = v48 + *(v91 + 36);
  *v50 = v35;
  *(v50 + 8) = 0u;
  *(v50 + 24) = 0u;
  *(v50 + 40) = 1;
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGA5_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGA5_GMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  View.accessibilityElement(children:)();
  (*(v93 + 8))(v49, v94);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v48, &_s7SwiftUI15ModifiedContentVyACyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGA5_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGA5_GMR);
  if (*(v90 + *(type metadata accessor for LACUIAuthCountdownDelayConfiguration(0) + 24) + 8))
  {
    v94 = static VerticalAlignment.center.getter();

    static Font.footnote.getter();
    v51 = Text.font(_:)();
    v53 = v52;
    v55 = v54;
    v93 = v56;

    LODWORD(v127) = static HierarchicalShapeStyle.secondary.getter();
    v57 = Text.foregroundStyle<A>(_:)();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    outlined consume of Text.Storage(v51, v53, v55 & 1);

    outlined copy of Text.Storage(v57, v59, v61 & 1);

    outlined consume of Text.Storage(v57, v59, v61 & 1);

    LOBYTE(v114[0]) = 1;
    LOBYTE(v103) = v61 & 1;
    v102 = 1;
    LOBYTE(v53) = static Edge.Set.horizontal.getter();
    v100 = 1;
    v64 = static Edge.Set.horizontal.getter();
    v101 = 1;
    v116 = v94;
    LOBYTE(v117) = 1;
    *(&v117 + 1) = v57;
    *&v118 = v59;
    BYTE8(v118) = v61 & 1;
    v119 = v63;
    LOBYTE(v120) = 1;
    BYTE8(v120) = v53;
    v121 = 0u;
    v122 = 0u;
    LOBYTE(v123) = 1;
    BYTE8(v123) = v64;
    v124 = 0u;
    v125 = 0u;
    v126 = 1;
    destructiveProjectEnumData for LACUIRatchetViewModelPresentationStyle();
    v135 = v124;
    v136 = v125;
    v137 = v126;
    v131 = v120;
    v132 = v121;
    v133 = v122;
    v134 = v123;
    v127 = v116;
    v128 = v117;
    v129 = v118;
    v130 = v119;
  }

  else
  {
    _s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA14_PaddingLayoutVGAOGSgWOi0_(&v127);
  }

  v66 = v95;
  v65 = v96;
  v67 = *(v96 + 16);
  v68 = v99;
  v69 = v97;
  v67(v95, v99, v97);
  v111 = v135;
  v112 = v136;
  v113 = v137;
  v107 = v131;
  v108 = v132;
  v109 = v133;
  v110 = v134;
  v103 = v127;
  v104 = v128;
  v105 = v129;
  v106 = v130;
  v70 = v98;
  v67(v98, v66, v69);
  v71 = &v70[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIy023LocalAuthenticationCoreB012DynamicStackVyAA05TupleC0VyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGG_AA6SpacerVAA08TimelineC0VyAA08PeriodicY8ScheduleVAIyApA0g10AttachmentV0VGGtGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeV0VyAA5ColorVAA16RoundedRectangleVGGA11_G_Qo__AIyAIyAA6HStackVyANyAP_AXtGGA11_GA11_GSgtMd, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIy023LocalAuthenticationCoreB012DynamicStackVyAA05TupleC0VyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGG_AA6SpacerVAA08TimelineC0VyAA08PeriodicY8ScheduleVAIyApA0g10AttachmentV0VGGtGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeV0VyAA5ColorVAA16RoundedRectangleVGGA11_G_Qo__AIyAIyAA6HStackVyANyAP_AXtGGA11_GA11_GSgtMR) + 48)];
  v72 = v110;
  v114[8] = v111;
  v114[9] = v112;
  v73 = v107;
  v74 = v108;
  v114[4] = v107;
  v114[5] = v108;
  v75 = v109;
  v114[6] = v109;
  v114[7] = v110;
  v76 = v103;
  v77 = v104;
  v114[0] = v103;
  v114[1] = v104;
  v79 = v105;
  v78 = v106;
  v114[2] = v105;
  v114[3] = v106;
  v80 = v112;
  *(v71 + 8) = v111;
  *(v71 + 9) = v80;
  *(v71 + 4) = v73;
  *(v71 + 5) = v74;
  *(v71 + 6) = v75;
  *(v71 + 7) = v72;
  *v71 = v76;
  *(v71 + 1) = v77;
  v115 = v113;
  v71[160] = v113;
  *(v71 + 2) = v79;
  *(v71 + 3) = v78;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v114, &v116, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA14_PaddingLayoutVGAOGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA14_PaddingLayoutVGAOGSgMR);
  v81 = *(v65 + 8);
  v81(v68, v69);
  v124 = v111;
  v125 = v112;
  v126 = v113;
  v120 = v107;
  v121 = v108;
  v122 = v109;
  v123 = v110;
  v116 = v103;
  v117 = v104;
  v118 = v105;
  v119 = v106;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v116, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA14_PaddingLayoutVGAOGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA14_PaddingLayoutVGAOGSgMR);
  return (v81)(v66, v69);
}

uint64_t closure #1 in closure #1 in LACUIAuthCountdownDelayView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LACUIAuthCountdownDelayView(0);
  v48 = *(v4 - 8);
  v47 = *(v48 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v41 = type metadata accessor for PeriodicTimelineSchedule();
  v49 = *(v41 - 8);
  v13 = MEMORY[0x28223BE20](v41);
  v39 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewVyAA08PeriodicC8ScheduleVAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGGMd, &_s7SwiftUI12TimelineViewVyAA08PeriodicC8ScheduleVAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGGMR);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v46 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v40 = &v38 - v21;
  v22 = a1[1];
  v45 = *a1;
  v42 = v22;
  KeyPath = swift_getKeyPath();

  static Date.now.getter();
  (*(v7 + 16))(v10, v12, v6);
  PeriodicTimelineSchedule.init(from:by:)();
  (*(v7 + 8))(v12, v6);
  v23 = v43;
  outlined init with copy of LACUIAuthCountdownDelayConfiguration(a1, v43, type metadata accessor for LACUIAuthCountdownDelayView);
  v24 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v25 = swift_allocObject();
  outlined init with take of LACUIAuthCountdownDelayConfiguration(v23, v25 + v24, type metadata accessor for LACUIAuthCountdownDelayView);
  v26 = v41;
  (*(v49 + 16))(v39, v16, v41);
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for closure #1 in closure #1 in closure #1 in LACUIAuthCountdownDelayView.body.getter;
  *(v27 + 24) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMR);
  lazy protocol witness table accessor for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule(&lazy protocol witness table cache variable for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule, MEMORY[0x277CE06F0], MEMORY[0x277CE06E8]);
  lazy protocol witness table accessor for type ModifiedContent<Text, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v28 = v40;
  TimelineView<>.init(_:content:)();
  (*(v49 + 8))(v16, v26);
  v29 = *(v18 + 16);
  v30 = v46;
  v31 = v28;
  v29(v46, v28, v17);
  v33 = KeyPath;
  v32 = v45;
  v34 = v42;
  *a2 = v45;
  *(a2 + 8) = v34;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 32) = v33;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG_AA6SpacerVAA12TimelineViewVyAA08PeriodicL8ScheduleVACyAeA023AccessibilityAttachmentI0VGGtMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG_AA6SpacerVAA12TimelineViewVyAA08PeriodicL8ScheduleVACyAeA023AccessibilityAttachmentI0VGGtMR);
  v29((a2 + *(v35 + 64)), v30, v17);
  outlined copy of Text.Storage(v32, v34, 0);
  v36 = *(v18 + 8);

  v36(v31, v17);
  v36(v30, v17);
  outlined consume of Text.Storage(v32, v34, 0);
}

void closure #1 in closure #1 in closure #1 in LACUIAuthCountdownDelayView.body.getter(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessibilityTraits();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v59 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.ComponentsFormatStyle.Style();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date.ComponentsFormatStyle();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x28223BE20](v9);
  v53 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation4DateVGMd, &_sSny10Foundation4DateVGMR);
  MEMORY[0x28223BE20](v11 - 8);
  v51 = &v48 - v12;
  v13 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Duration.TimeFormatStyle();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LACUIAuthCountdownDelayConfiguration(0);
  v58 = a1;
  Date.timeIntervalSinceNow.getter();
  if (v21 >= 0.0)
  {
    if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v21 = 0.0;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v21 < 9.22337204e18)
  {
    Duration.init(secondsComponent:attosecondsComponent:)();
    v50 = v4;
    static Duration.TimeFormatStyle.Pattern.minuteSecond.getter();
    static FormatStyle<>.time(pattern:)();
    (*(v14 + 8))(v16, v13);
    lazy protocol witness table accessor for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, MEMORY[0x277CC9FB0], MEMORY[0x277CC9FA8]);
    Duration.formatted<A>(_:)();
    (*(v18 + 8))(v20, v17);
    v64 = v60;
    v65 = v61;
    lazy protocol witness table accessor for type String and conformance String();
    v22 = Text.init<A>(_:)();
    v24 = v23;
    v26 = v25;
    v27 = Text.monospacedDigit()();
    v29 = v28;
    v48 = a2;
    v49 = v5;
    v31 = v30;
    outlined consume of Text.Storage(v22, v24, v26 & 1);

    LODWORD(v60) = static HierarchicalShapeStyle.secondary.getter();
    v32 = Text.foregroundStyle<A>(_:)();
    v34 = v33;
    v36 = v35;
    outlined consume of Text.Storage(v27, v29, v31 & 1);

    v37 = v51;
    LACUIAuthCountdownDelayView.expirationRange.getter(v51);
    v38 = v52;
    static Date.ComponentsFormatStyle.Style.wide.getter();
    v39 = v53;
    static FormatStyle<>.components(style:fields:)();
    (*(v54 + 8))(v38, v55);
    lazy protocol witness table accessor for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle, MEMORY[0x277CC9510], MEMORY[0x277CC9508]);
    v40 = v57;
    Range<>.formatted<A>(_:)();
    (*(v56 + 8))(v39, v40);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v37, &_sSny10Foundation4DateVGMd, &_sSny10Foundation4DateVGMR);
    v64 = v60;
    v65 = v61;
    v41 = Text.accessibilityLabel<A>(_:)();
    v43 = v42;
    LOBYTE(v39) = v44;
    v46 = v45;
    outlined consume of Text.Storage(v32, v34, v36 & 1);

    v60 = v41;
    v61 = v43;
    v62 = v39 & 1;
    v63 = v46;
    v47 = v59;
    static AccessibilityTraits.updatesFrequently.getter();
    MEMORY[0x259C58A90](v47, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8]);
    (*(v49 + 8))(v47, v50);
    outlined consume of Text.Storage(v41, v43, v39 & 1);

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t protocol witness for View.body.getter in conformance LACUIAuthCountdownDelayView@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAQyAQyAQy023LocalAuthenticationCoreB012DynamicStackVyAIyAQyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0V9AlignmentOGG_AA6SpacerVAA08TimelineD0VyAA24PeriodicTimelineScheduleVAQyAvA0l10AttachmentZ0VGGtGGAA010_FlexFrameG0VGAA08_PaddingG0VGAA026_InsettableBackgroundShapeZ0VyAA5ColorVAA16RoundedRectangleVGGA17_G_Qo__AQyAQyAA6HStackVyAIyAV_A2_tGGA17_GA17_GSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAQyAQyAQy023LocalAuthenticationCoreB012DynamicStackVyAIyAQyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0V9AlignmentOGG_AA6SpacerVAA08TimelineD0VyAA24PeriodicTimelineScheduleVAQyAvA0l10AttachmentZ0VGGtGGAA010_FlexFrameG0VGAA08_PaddingG0VGAA026_InsettableBackgroundShapeZ0VyAA5ColorVAA16RoundedRectangleVGGA17_G_Qo__AQyAQyAA6HStackVyAIyAV_A2_tGGA17_GA17_GSgtGGMR);
  return closure #1 in LACUIAuthCountdownDelayView.body.getter(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_25607B764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LACUIAuthCountdownDelayConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25607B7E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LACUIAuthCountdownDelayConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for LACUIAuthCountdownDelayView(uint64_t a1)
{
  result = type metadata singleton initialization cache for LACUIAuthCountdownDelayView;
  if (!type metadata singleton initialization cache for LACUIAuthCountdownDelayView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LACUIAuthCountdownDelayView(uint64_t a1)
{
  result = type metadata accessor for LACUIAuthCountdownDelayConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of LACUIAuthCountdownDelayConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of LACUIAuthCountdownDelayConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in LACUIAuthCountdownDelayView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LACUIAuthCountdownDelayView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return closure #1 in closure #1 in LACUIAuthCountdownDelayView.body.getter(v4, a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGMd, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGMR, lazy protocol witness table accessor for type ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<Color, RoundedRectangle> and conformance _InsettableBackgroundShapeModifier<A, B>, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMR, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>> and conformance DynamicStack<A>, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAD4TextVAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGG_AD6SpacerVAD08TimelineI0VyAD08PeriodicS8ScheduleVAHyAjD023AccessibilityAttachmentP0VGGtGGMd, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAD4TextVAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGG_AD6SpacerVAD08TimelineI0VyAD08PeriodicS8ScheduleVAHyAjD023AccessibilityAttachmentP0VGGtGGMR, &protocol conformance descriptor for DynamicStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

double _s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA14_PaddingLayoutVGAOGSgWOi0_(uint64_t a1)
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

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
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

uint64_t specialized closure #1 in TimelineView<>.init(_:content:)(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd, &_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA08PeriodicC8ScheduleVAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_GMd, &_s7SwiftUI12TimelineViewV7ContextVyAA08PeriodicC8ScheduleVAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_GMR);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(type metadata accessor for LACUIAuthCountdownDelayView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(type metadata accessor for LACUIAuthCountdownDelayConfiguration(0) + 20);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void partial apply for closure #1 in closure #1 in closure #1 in LACUIAuthCountdownDelayView.body.getter(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LACUIAuthCountdownDelayView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  closure #1 in closure #1 in closure #1 in LACUIAuthCountdownDelayView.body.getter(v4, a1);
}

uint64_t sub_25607C01C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMR);
    lazy protocol witness table accessor for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t LACUIAuthCountdownDelayConfiguration.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LACUIAuthCountdownDelayConfiguration.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LACUIAuthCountdownDelayConfiguration.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LACUIAuthCountdownDelayConfiguration(0) + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LACUIAuthCountdownDelayConfiguration(uint64_t a1)
{
  result = type metadata singleton initialization cache for LACUIAuthCountdownDelayConfiguration;
  if (!type metadata singleton initialization cache for LACUIAuthCountdownDelayConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LACUIAuthCountdownDelayConfiguration.expiration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LACUIAuthCountdownDelayConfiguration(0) + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LACUIAuthCountdownDelayConfiguration.caption.getter()
{
  v1 = *(v0 + *(type metadata accessor for LACUIAuthCountdownDelayConfiguration(0) + 24));

  return v1;
}

uint64_t LACUIAuthCountdownDelayConfiguration.caption.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LACUIAuthCountdownDelayConfiguration(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t LACUIAuthCountdownDelayConfiguration.init(title:expiration:caption:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for LACUIAuthCountdownDelayConfiguration(0);
  v13 = &a6[*(v12 + 24)];
  *a6 = a1;
  *(a6 + 1) = a2;
  v14 = *(v12 + 20);
  v15 = type metadata accessor for Date();
  result = (*(*(v15 - 8) + 32))(&a6[v14], a3, v15);
  *v13 = a4;
  *(v13 + 1) = a5;
  return result;
}

uint64_t specialized static LACUIAuthCountdownDelayConfiguration.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = type metadata accessor for LACUIAuthCountdownDelayConfiguration(0);
    if (static Date.== infix(_:_:)())
    {
      v6 = *(v5 + 24);
      v7 = (a1 + v6);
      v8 = *(a1 + v6 + 8);
      v9 = (a2 + v6);
      v10 = v9[1];
      if (v8)
      {
        if (v10)
        {
          v11 = *v7 == *v9 && v8 == v10;
          if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v10)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_25607C6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25607C7A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for LACUIAuthCountdownDelayConfiguration(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t LACUIRatchetViewModelConfiguration.countdownPrimaryActionTitle.getter()
{
  v1 = *v0;

  return v1;
}

LocalAuthenticationCoreUI::LACUIRatchetViewModelConfiguration __swiftcall LACUIRatchetViewModelConfiguration.init(countdownPrimaryActionTitle:presentationStyle:)(LocalAuthenticationCoreUI::LACUIRatchetViewModelConfiguration countdownPrimaryActionTitle, LocalAuthenticationCoreUI::LACUIRatchetViewModelPresentationStyle presentationStyle)
{
  v3 = *presentationStyle;
  *v2 = countdownPrimaryActionTitle.countdownPrimaryActionTitle;
  *(v2 + 16) = v3;
  countdownPrimaryActionTitle.presentationStyle = presentationStyle;
  return countdownPrimaryActionTitle;
}

uint64_t getEnumTagSinglePayload for LACUIRatchetViewModelConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for LACUIRatchetViewModelConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t key path getter for LACUILockViewModel.state : LACUILockViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t LACUILockViewModel.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_25607CB44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t LACUILockViewModel.state.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*LACUILockViewModel.state.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  return LACUILockViewModel.state.modify;
}

uint64_t key path setter for LACUILockViewModel.$state : LACUILockViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo18LACUILockViewStateV_GMd, &_s7Combine9PublishedV9PublisherVySo18LACUILockViewStateV_GMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 128))(v6);
}

uint64_t LACUILockViewModel.$state.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo18LACUILockViewStateV_GMd, &_s7Combine9PublishedV9PublisherVySo18LACUILockViewStateV_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18LACUILockViewStateVGMd, &_s7Combine9PublishedVySo18LACUILockViewStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LACUILockViewModel.$state.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo18LACUILockViewStateV_GMd, &_s7Combine9PublishedV9PublisherVySo18LACUILockViewStateV_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI18LACUILockViewModel__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18LACUILockViewStateVGMd, &_s7Combine9PublishedVySo18LACUILockViewStateVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LACUILockViewModel.$state.modify;
}

uint64_t key path getter for LACUILockViewModel.color : LACUILockViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t LACUILockViewModel.color.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_25607D1B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t LACUILockViewModel.color.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*LACUILockViewModel.color.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  return LACUILockViewModel.color.modify;
}

void LACUILockViewModel.state.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for LACUILockViewModel.$color : LACUILockViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7UIColorC_GMd, &_s7Combine9PublishedV9PublisherVySo7UIColorC_GMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 176))(v6);
}

uint64_t LACUILockViewModel.$state.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t LACUILockViewModel.$color.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7UIColorC_GMd, &_s7Combine9PublishedV9PublisherVySo7UIColorC_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIColorCGMd, &_s7Combine9PublishedVySo7UIColorCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LACUILockViewModel.$color.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7UIColorC_GMd, &_s7Combine9PublishedV9PublisherVySo7UIColorC_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI18LACUILockViewModel__color;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIColorCGMd, &_s7Combine9PublishedVySo7UIColorCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LACUILockViewModel.$color.modify;
}

void LACUILockViewModel.$state.modify(uint64_t a1, char a2)
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

uint64_t LACUILockViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for LACUILockViewState(0);
  Published.init(initialValue:)();
  [objc_opt_self() whiteColor];
  type metadata accessor for UIColor();
  Published.init(initialValue:)();
  return v0;
}

uint64_t LACUILockViewModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIColorCGMd, &_s7Combine9PublishedVySo7UIColorCGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18LACUILockViewStateVGMd, &_s7Combine9PublishedVySo18LACUILockViewStateVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI18LACUILockViewModel__state;
  v13 = 0;
  type metadata accessor for LACUILockViewState(0);
  Published.init(initialValue:)();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI18LACUILockViewModel__color;
  v13 = [objc_opt_self() whiteColor];
  type metadata accessor for UIColor();
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v10, v4, v1);
  return v0;
}

unint64_t type metadata accessor for UIColor()
{
  result = lazy cache variable for type metadata for UIColor;
  if (!lazy cache variable for type metadata for UIColor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIColor);
  }

  return result;
}

uint64_t LACUILockViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI18LACUILockViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18LACUILockViewStateVGMd, &_s7Combine9PublishedVySo18LACUILockViewStateVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI18LACUILockViewModel__color;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIColorCGMd, &_s7Combine9PublishedVySo7UIColorCGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t LACUILockViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI18LACUILockViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18LACUILockViewStateVGMd, &_s7Combine9PublishedVySo18LACUILockViewStateVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI18LACUILockViewModel__color;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIColorCGMd, &_s7Combine9PublishedVySo7UIColorCGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance LACUILockViewModel@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LACUILockViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for LACUILockViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for LACUILockViewModel;
  if (!type metadata singleton initialization cache for LACUILockViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for LACUILockViewModel(uint64_t a1)
{
  type metadata accessor for Published<LACUILockViewState>(319, &lazy cache variable for type metadata for Published<LACUILockViewState>, type metadata accessor for LACUILockViewState);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<LACUILockViewState>(319, &lazy cache variable for type metadata for Published<UIColor>, type metadata accessor for UIColor);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<LACUILockViewState>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t LACUIRatchetViewModel.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_configuration + 8);
  v3 = *(v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_configuration + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_configuration);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t LACUIRatchetViewModel.statePublisher.getter()
{
  LACUIRatchetViewModel.stateSubject.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy25LocalAuthenticationCoreUI21LACUIRatchetViewModelC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy25LocalAuthenticationCoreUI21LACUIRatchetViewModelC5StateOs5NeverOGMR);
  lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type CurrentValueSubject<LACUIRatchetViewModel.State, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy25LocalAuthenticationCoreUI21LACUIRatchetViewModelC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy25LocalAuthenticationCoreUI21LACUIRatchetViewModelC5StateOs5NeverOGMR, MEMORY[0x277CBCE48]);
  v0 = Publisher.eraseToAnyPublisher()();

  return v0;
}

uint64_t LACUIRatchetViewModel.learnMorePublisher.getter(uint64_t (*a1)(void))
{
  a1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR, MEMORY[0x277CBCE20]);
  v1 = Publisher.eraseToAnyPublisher()();

  return v1;
}

uint64_t LACUIRatchetViewModel.isInvalidated.getter()
{
  v1 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isInvalidated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path setter for LACUIRatchetViewModel.state : LACUIRatchetViewModel(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for LACUIRatchetViewModel.State(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-v11];
  outlined init with copy of LACUIRatchetViewModel.State(a1, &v16[-v11]);
  v13 = *a2;
  v14 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_state;
  swift_beginAccess();
  outlined init with copy of LACUIRatchetViewModel.State(v13 + v14, v10);
  swift_beginAccess();
  outlined assign with copy of LACUIRatchetViewModel.State(v12, v13 + v14);
  swift_endAccess();
  outlined init with copy of LACUIRatchetViewModel.State(v13 + v14, v7);
  LACUIRatchetViewModel.stateUpdated(from:to:)(v10, v7);
  outlined destroy of LACUIRatchetViewModel.State(v7, type metadata accessor for LACUIRatchetViewModel.State);
  outlined destroy of LACUIRatchetViewModel.State(v10, type metadata accessor for LACUIRatchetViewModel.State);
  return outlined destroy of LACUIRatchetViewModel.State(v12, type metadata accessor for LACUIRatchetViewModel.State);
}

uint64_t LACUIRatchetViewModel.stateUpdated(from:to:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LACUIRatchetViewModel.State(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v43 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  v17 = type metadata accessor for Logger();
  v51 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = specialized static LACUIRatchetViewModel.State.== infix(_:_:)(a1, a2);
  if ((result & 1) == 0)
  {
    v49 = v17;
    static LACLog.dtoUI.getter();
    outlined init with copy of LACUIRatchetViewModel.State(a1, v16);
    outlined init with copy of LACUIRatchetViewModel.State(a2, v14);
    v21 = v2;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v50 = v5;
      v25 = v24;
      v45 = swift_slowAlloc();
      v46 = v11;
      v26 = v8;
      v27 = v45;
      v47 = swift_slowAlloc();
      v52[0] = v47;
      *v25 = 138543874;
      *(v25 + 4) = v21;
      *v27 = v21;
      v8 = v26;
      v11 = v46;
      *(v25 + 12) = 2082;
      outlined init with copy of LACUIRatchetViewModel.State(v16, v11);
      v28 = v21;
      v29 = String.init<A>(describing:)();
      v44 = v23;
      v30 = v29;
      v48 = a2;
      v32 = v31;
      v43 = v22;
      outlined destroy of LACUIRatchetViewModel.State(v16, type metadata accessor for LACUIRatchetViewModel.State);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v52);

      *(v25 + 14) = v33;
      *(v25 + 22) = 2082;
      outlined init with copy of LACUIRatchetViewModel.State(v14, v11);
      v34 = String.init<A>(describing:)();
      v36 = v35;
      outlined destroy of LACUIRatchetViewModel.State(v14, type metadata accessor for LACUIRatchetViewModel.State);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v52);
      a2 = v48;

      *(v25 + 24) = v37;
      v38 = v43;
      _os_log_impl(&dword_256063000, v43, v44, "%{public}@ state updated from: %{public}s to: %{public}s", v25, 0x20u);
      v39 = v45;
      outlined destroy of LACUIAuthCountdownDelayConfiguration?(v45, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x259C59AD0](v39, -1, -1);
      v40 = v47;
      swift_arrayDestroy();
      MEMORY[0x259C59AD0](v40, -1, -1);
      MEMORY[0x259C59AD0](v25, -1, -1);
    }

    else
    {

      outlined destroy of LACUIRatchetViewModel.State(v14, type metadata accessor for LACUIRatchetViewModel.State);
      outlined destroy of LACUIRatchetViewModel.State(v16, type metadata accessor for LACUIRatchetViewModel.State);
    }

    (*(v51 + 8))(v19, v49);
    outlined init with copy of LACUIRatchetViewModel.State(a2, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    outlined destroy of LACUIRatchetViewModel.State(v8, type metadata accessor for LACUIRatchetViewModel.State);
    if (EnumCaseMultiPayload == 4)
    {
      v42 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isRunning;
      swift_beginAccess();
      *(v21 + v42) = 0;
    }

    LACUIRatchetViewModel.stateSubject.getter();
    outlined init with copy of LACUIRatchetViewModel.State(a2, v11);
    CurrentValueSubject.value.setter();
  }

  return result;
}

uint64_t LACUIRatchetViewModel.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_state;
  swift_beginAccess();
  return outlined init with copy of LACUIRatchetViewModel.State(v1 + v3, a1);
}

uint64_t LACUIRatchetViewModel.isRunning.getter()
{
  v1 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isRunning;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LACUIRatchetViewModel.stateSubject.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LACUIRatchetViewModel.State(0);
  MEMORY[0x28223BE20](v2);
  v3 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___stateSubject;
  if (*(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___stateSubject))
  {
    v4 = *(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___stateSubject);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy25LocalAuthenticationCoreUI21LACUIRatchetViewModelC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy25LocalAuthenticationCoreUI21LACUIRatchetViewModelC5StateOs5NeverOGMR);
    swift_allocObject();
    v4 = CurrentValueSubject.init(_:)();
    *(v1 + v3) = v4;
  }

  return v4;
}

uint64_t LACUIRatchetViewModel.learnMoreSubject.getter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
    swift_allocObject();
    v4 = PassthroughSubject.init()();
    *(v5 + v2) = v4;
  }

  return v4;
}

uint64_t LACUIRatchetViewModel.ratchetIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___ratchetIdentifier);
  if (*(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___ratchetIdentifier + 8))
  {
    v2 = *v1;
  }

  else
  {
    v3 = [objc_opt_self() mainBundle];
    v4 = [v3 bundleIdentifier];

    if (v4)
    {
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;
    }

    else
    {
      v2 = 0;
      v6 = 0xE000000000000000;
    }

    *v1 = v2;
    v1[1] = v6;
  }

  return v2;
}

id LACUIRatchetViewModel.ratchetManager.getter()
{
  v1 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_ratchetManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void LACUIRatchetViewModel.ratchetManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_ratchetManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id LACUIRatchetViewModel.context.getter()
{
  v1 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___context;
  if (*(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___context))
  {
    v2 = *(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___context);
  }

  else
  {
    v2 = [*(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_contextProvider) createContext];
    *(v0 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

id LACUIRatchetViewModel.__allocating_init(contextProvider:options:configuration:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized LACUIRatchetViewModel.init(contextProvider:options:configuration:)(a1, a2, a3);
  swift_unknownObjectRelease();
  return v8;
}

id LACUIRatchetViewModel.init(contextProvider:options:configuration:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = specialized LACUIRatchetViewModel.init(contextProvider:options:configuration:)(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

id LACUIRatchetViewModel.__deallocating_deinit()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.dtoUI.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_256063000, v6, v7, "%{public}@ deinitialized", v8, 0xCu);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x259C59AD0](v9, -1, -1);
    MEMORY[0x259C59AD0](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v11 = type metadata accessor for LACUIRatchetViewModel(0);
  v13.receiver = v5;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

Swift::Void __swiftcall LACUIRatchetViewModel.start()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  v7 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in LACUIRatchetViewModel.start(), v5);
  v8 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_tasks;
  swift_beginAccess();
  v9 = *&v6[v8];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v6[v8] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
    *&v6[v8] = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  v9[v12 + 4] = v7;
  *&v6[v8] = v9;
  swift_endAccess();
}

uint64_t closure #1 in LACUIRatchetViewModel.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for LACUIRatchetViewModel.State(0);
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v4[12] = *(v7 + 64);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.start(), 0, 0);
}

uint64_t closure #1 in LACUIRatchetViewModel.start()()
{
  v1 = **(v0 + 40);
  v2 = ((*MEMORY[0x277D85000] & v1) + 288) & 0xFFFFFFFFFFFFLL | 0xC4D1000000000000;
  *(v0 + 120) = *((*MEMORY[0x277D85000] & v1) + 0x120);
  *(v0 + 128) = v2;
  *(v0 + 136) = type metadata accessor for MainActor();
  *(v0 + 144) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.start(), v4, v3);
}

{
  v1 = *(v0 + 120);

  *(v0 + 184) = v1(v2) & 1;

  return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.start(), 0, 0);
}

{
  v1 = *(v0 + 40);

  v2 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isRunning;
  swift_beginAccess();
  *(v1 + v2) = 1;

  return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.start(), 0, 0);
}

{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[5];
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  outlined init with copy of LACUIRatchetViewModel.State(v1, v2);
  v7 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  outlined init with take of LACUIRatchetViewModel.State(v2, v8 + v7, type metadata accessor for LACUIRatchetViewModel.State);
  v9 = v5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &closure #1 in LACUIRatchetViewModel.set(state:)partial apply, v8);

  outlined destroy of LACUIRatchetViewModel.State(v1, type metadata accessor for LACUIRatchetViewModel.State);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = closure #1 in LACUIRatchetViewModel.start();

  return LACUIRatchetViewModel.evaluate()();
}

{
  LACUIRatchetViewModel.finish(result:error:)(*(v0 + 176), 0);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 168);
  v2 = v1;
  LACUIRatchetViewModel.finish(result:error:)(0, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #1 in LACUIRatchetViewModel.start()(uint64_t a1)
{
  if (*(v1 + 184))
  {
    v2 = *(v1 + 40);
    static LACLog.dtoUI.getter();
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v1 + 40);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      *(v7 + 4) = v6;
      *v8 = v6;
      v9 = v6;
      _os_log_impl(&dword_256063000, v4, v5, "%{public}@ is already running", v7, 0xCu);
      outlined destroy of LACUIAuthCountdownDelayConfiguration?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x259C59AD0](v8, -1, -1);
      MEMORY[0x259C59AD0](v7, -1, -1);
    }

    v11 = *(v1 + 56);
    v10 = *(v1 + 64);
    v12 = *(v1 + 48);

    (*(v11 + 8))(v10, v12);

    v13 = *(v1 + 8);

    return v13();
  }

  else
  {
    *(v1 + 152) = static MainActor.shared.getter();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.start(), v16, v15);
  }
}

{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = closure #1 in LACUIRatchetViewModel.start();
  }

  else
  {
    *(v4 + 176) = a1;
    v5 = closure #1 in LACUIRatchetViewModel.start();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t LACUIRatchetViewModel.evaluate()()
{
  v1[13] = v0;
  v2 = type metadata accessor for Logger();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](LACUIRatchetViewModel.evaluate(), 0, 0);
}

{
  v1 = v0[13];
  v2 = (*((*MEMORY[0x277D85000] & *v1) + 0x1A0))();
  v3 = [v2 isFeatureStrictModeEnabled];

  *(v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isStrictModeEnabled) = v3;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v0[17] = v4;
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = LACUIRatchetViewModel.evaluate();

  return LACUIRatchetViewModel.arm(with:)(v4);
}

{
  v0[11] = *MEMORY[0x277D23FC8];
  v1 = v0[19];
  AnyHashable.init<A>(_:)();
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)((v0 + 2)), (v3 & 1) != 0))
  {
    outlined init with copy of Any(*(v0[19] + 56) + 32 * v2, (v0 + 7));
    outlined destroy of AnyHashable((v0 + 2));
    type metadata accessor for LACDTORatchetStateComposite(0, &lazy cache variable for type metadata for LACDTORatchetStateComposite, 0x277D24040);
    if (swift_dynamicCast())
    {
      v4 = v0[12];
      v0[21] = v4;
      v5 = [v4 gracePeriodState];
      v6 = [v5 isActive];

      if (v6)
      {
        v7 = swift_task_alloc();
        v0[22] = v7;
        *v7 = v0;
        v7[1] = LACUIRatchetViewModel.evaluate();

        return LACUIRatchetViewModel.showUI(for:)(v4);
      }
    }
  }

  else
  {
    outlined destroy of AnyHashable((v0 + 2));
  }

  v9 = v0[13];
  static LACLog.dtoUI.getter();
  v10 = v9;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[13];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543362;
    *(v14 + 4) = v13;
    *v15 = v13;
    v16 = v13;
    _os_log_impl(&dword_256063000, v11, v12, "%{public}@ arming succeeded without countdown UI", v14, 0xCu);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x259C59AD0](v15, -1, -1);
    MEMORY[0x259C59AD0](v14, -1, -1);
  }

  v17 = v0[19];
  v19 = v0[15];
  v18 = v0[16];
  v20 = v0[14];

  (*(v19 + 8))(v18, v20);

  v21 = v0[1];

  return v21(v17);
}

{

  v1 = *(v0 + 104);
  static LACLog.dtoUI.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_256063000, v3, v4, "%{public}@ arming succeeded without countdown UI", v6, 0xCu);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x259C59AD0](v7, -1, -1);
    MEMORY[0x259C59AD0](v6, -1, -1);
  }

  v9 = *(v0 + 152);
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  v12 = *(v0 + 112);

  (*(v11 + 8))(v10, v12);

  v13 = *(v0 + 8);

  return v13(v9);
}

{
  type metadata accessor for MainActor();
  *(v0 + 216) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](LACUIRatchetViewModel.evaluate(), v2, v1);
}

{
  v1 = *(v0 + 104);

  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x120))(v2))
  {
    *(v0 + 248) = (*((*v3 & **(v0 + 104)) + 0xF0))() & 1;
    v4 = LACUIRatchetViewModel.evaluate();
  }

  else
  {
    v4 = LACUIRatchetViewModel.evaluate();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  if (*(v0 + 248))
  {
    swift_willThrow();

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 224) = v3;
    *v3 = v0;
    v3[1] = LACUIRatchetViewModel.evaluate();

    return LACUIRatchetViewModel.armIfPossible()();
  }
}

{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 192);

    v2 = *(v0 + 232);

    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }
}

{

  v1 = v0[20];
  v0[24] = v1;
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = LACUIRatchetViewModel.evaluate();

  return LACUIRatchetViewModel.showRatchetUI(for:)(v1);
}

{

  v1 = *(v0 + 184);
  *(v0 + 192) = v1;
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = LACUIRatchetViewModel.evaluate();

  return LACUIRatchetViewModel.showRatchetUI(for:)(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LACUIRatchetViewModel.evaluate()(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = LACUIRatchetViewModel.evaluate();
  }

  else
  {

    v4 = LACUIRatchetViewModel.evaluate();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  *(*v2 + 184) = v1;

  if (v1)
  {
    v3 = LACUIRatchetViewModel.evaluate();
  }

  else
  {

    v3 = LACUIRatchetViewModel.evaluate();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](LACUIRatchetViewModel.evaluate(), 0, 0);
}

{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = LACUIRatchetViewModel.evaluate();
  }

  else
  {
    v4 = LACUIRatchetViewModel.evaluate();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t LACUIRatchetViewModel.finish(result:error:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  v51 = type metadata accessor for LACUIRatchetViewModel.State(0);
  v53 = *(v51 - 8);
  v10 = MEMORY[0x28223BE20](v51);
  v54 = v11;
  v55 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = (&v46 - v12);
  v14 = type metadata accessor for Logger();
  v49 = *(v14 - 8);
  v50 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = (*(ObjectType + 616))(a2);
  static LACLog.dtoUI.getter();
  v17 = v3;

  v18 = a2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v47 = v9;
    v22 = v21;
    v23 = swift_slowAlloc();
    v48 = a1;
    v24 = v23;
    v25 = swift_slowAlloc();
    v46 = v25;
    *v22 = 138543874;
    *(v22 + 4) = v17;
    *v24 = v17;
    *(v22 + 12) = 2082;
    v56 = v48;
    v57 = v25;
    v26 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
    v27 = Optional.debugDescription.getter();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v57);

    *(v22 + 14) = v29;
    *(v22 + 22) = 2082;
    v56 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v30 = Optional.debugDescription.getter();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v57);

    *(v22 + 24) = v32;
    _os_log_impl(&dword_256063000, v19, v20, "%{public}@ finishing with result: %{public}s error: %{public}s", v22, 0x20u);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = v24;
    a1 = v48;
    MEMORY[0x259C59AD0](v33, -1, -1);
    v34 = v46;
    swift_arrayDestroy();
    MEMORY[0x259C59AD0](v34, -1, -1);
    v35 = v22;
    v9 = v47;
    MEMORY[0x259C59AD0](v35, -1, -1);
  }

  v36 = (*(v49 + 8))(v16, v50);
  v37 = (*((*MEMORY[0x277D85000] & *v17) + 0x1A0))(v36);
  [v37 removeObserver_];

  v38 = v52;
  *v13 = a1;
  v13[1] = v38;
  swift_storeEnumTagMultiPayload();
  v39 = type metadata accessor for TaskPriority();
  (*(*(v39 - 8) + 56))(v9, 1, 1, v39);
  v40 = v55;
  outlined init with copy of LACUIRatchetViewModel.State(v13, v55);
  v41 = (*(v53 + 80) + 40) & ~*(v53 + 80);
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v17;
  outlined init with take of LACUIRatchetViewModel.State(v40, v42 + v41, type metadata accessor for LACUIRatchetViewModel.State);
  v43 = v17;

  v44 = v38;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &closure #1 in LACUIRatchetViewModel.set(state:)partial apply, v42);

  return outlined destroy of LACUIRatchetViewModel.State(v13, type metadata accessor for LACUIRatchetViewModel.State);
}

Swift::Void __swiftcall LACUIRatchetViewModel.stop(withReason:invalidate:)(Swift::String withReason, Swift::Bool invalidate)
{
  object = withReason._object;
  countAndFlagsBits = withReason._countAndFlagsBits;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v2;
  *(v10 + 40) = countAndFlagsBits;
  *(v10 + 48) = object;
  *(v10 + 56) = invalidate;
  v11 = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in LACUIRatchetViewModel.stop(withReason:invalidate:), v10);
}

uint64_t closure #1 in LACUIRatchetViewModel.stop(withReason:invalidate:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *((*MEMORY[0x277D85000] & *a4) + 0x260);
  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = partial apply for closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:);

  return v14(a5, a6, a7);
}

uint64_t LACUIRatchetViewModel.stop(withReason:invalidate:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 56) = a3;
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 40) = v7;
  *v7 = v4;
  v7[1] = LACUIRatchetViewModel.stop(withReason:invalidate:);

  return LACUIRatchetViewModel.stop(with:)(a1, a2);
}

uint64_t LACUIRatchetViewModel.stop(withReason:invalidate:)()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;

  if (v2 == 1)
  {
    v4 = swift_task_alloc();
    v1[6] = v4;
    *v4 = v3;
    v4[1] = LACUIRatchetViewModel.stop(withReason:invalidate:);
    v5 = v1[3];
    v6 = v1[2];

    return LACUIRatchetViewModel.invalidate(with:)(v6, v5);
  }

  else
  {
    v8 = *(v3 + 8);

    return v8();
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t LACUIRatchetViewModel.stop(with:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGMd, _sScCySDys11AnyHashableVypGSgs5Error_pGMR);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
  v3[18] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](LACUIRatchetViewModel.stop(with:), 0, 0);
}

uint64_t LACUIRatchetViewModel.stop(with:)()
{
  type metadata accessor for MainActor();
  *(v0 + 184) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](LACUIRatchetViewModel.stop(with:), v2, v1);
}

{
  v1 = *(v0 + 112);

  if ((*((*MEMORY[0x277D85000] & *v1) + 0x120))(v2))
  {
    v3 = *(v0 + 112);
    v4 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isRunning;
    swift_beginAccess();
    *(v3 + v4) = 0;
    v5 = LACUIRatchetViewModel.stop(with:);
  }

  else
  {
    v5 = LACUIRatchetViewModel.stop(with:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t LACUIRatchetViewModel.stop(with:)(uint64_t a1)
{
  v44 = v1;
  v2 = v1[14];
  static LACLog.dtoUI.getter();
  v3 = v2;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[22];
  v9 = v1[19];
  v8 = v1[20];
  if (v6)
  {
    v41 = v1[22];
    v11 = v1[13];
    v10 = v1[14];
    v12 = v1[12];
    v40 = v1[19];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v43 = v15;
    *v13 = 138412546;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2082;
    v16 = v10;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v43);
    _os_log_impl(&dword_256063000, v4, v5, "Stopping %@ with reason %{public}s", v13, 0x16u);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x259C59AD0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x259C59AD0](v15, -1, -1);
    MEMORY[0x259C59AD0](v13, -1, -1);

    (*(v8 + 8))(v41, v40);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v17 = v1[18];
  v18 = v1[15];
  v19 = v1[16];
  v20 = v1[14];
  v21 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_uiContinuation;
  swift_beginAccess();
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v20 + v21, v17, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
  v22 = (*(v19 + 48))(v17, 1, v18);
  v23 = v1[18];
  if (v22)
  {
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v1[18], &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
  }

  else
  {
    v25 = v1[16];
    v24 = v1[17];
    v26 = v1[15];
    (*(v25 + 16))(v24, v1[18], v26);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v23, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
    v27 = swift_allocError();
    CancellationError.init()();
    v1[11] = v27;
    CheckedContinuation.resume(throwing:)();
    (*(v25 + 8))(v24, v26);
  }

  v28 = v1[14];
  v29 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_tasks;
  swift_beginAccess();
  v42 = v28;
  v30 = *(v28 + v29);
  v31 = *(v30 + 16);

  if (v31)
  {
    v33 = 0;
    v34 = MEMORY[0x277D84F78];
    v35 = MEMORY[0x277D84A98];
    v36 = MEMORY[0x277D84AC0];
    while (v33 < *(v30 + 16))
    {
      v37 = v33 + 1;

      MEMORY[0x259C58E70](v38, v34 + 8, v35, v36);

      v33 = v37;
      if (v31 == v37)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    *(v42 + v29) = MEMORY[0x277D84F90];

    v39 = v1[1];

    return v39();
  }

  return result;
}

{
  v22 = v1;
  v2 = v1[14];
  static LACLog.dtoUI.getter();
  v3 = v2;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[20];
  v8 = v1[21];
  v9 = v1[19];
  if (v6)
  {
    v20 = v1[21];
    v11 = v1[13];
    v10 = v1[14];
    v12 = v1[12];
    v19 = v1[19];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v13 = 138543618;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2082;
    v16 = v10;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v21);
    _os_log_impl(&dword_256063000, v4, v5, "Stopping %{public}@ that was already stopped. Reason: %{public}s", v13, 0x16u);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x259C59AD0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x259C59AD0](v15, -1, -1);
    MEMORY[0x259C59AD0](v13, -1, -1);

    (*(v7 + 8))(v20, v19);
  }

  else
  {

    (*(v7 + 8))(v8, v9);
  }

  v17 = v1[1];

  return v17();
}

uint64_t LACUIRatchetViewModel.invalidate(with:)(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  v4 = type metadata accessor for Logger();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](LACUIRatchetViewModel.invalidate(with:), 0, 0);
}

uint64_t LACUIRatchetViewModel.invalidate(with:)()
{
  type metadata accessor for MainActor();
  *(v0 + 232) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](LACUIRatchetViewModel.invalidate(with:), v2, v1);
}

{
  v1 = *(v0 + 184);

  if ((*((*MEMORY[0x277D85000] & *v1) + 0xF0))(v2))
  {
    v3 = LACUIRatchetViewModel.invalidate(with:);
  }

  else
  {
    v4 = *(v0 + 184);
    v5 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isInvalidated;
    swift_beginAccess();
    *(v4 + v5) = 1;
    v3 = LACUIRatchetViewModel.invalidate(with:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = LACUIRatchetViewModel.invalidate(with:);
  }

  else
  {
    v2 = LACUIRatchetViewModel.invalidate(with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  v3 = *(v0 + 8);

  return v3();
}

{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 184);
  swift_willThrow();

  static LACLog.dtoUI.getter();
  v6 = v5;
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 272);
  if (v10)
  {
    v12 = *(v0 + 184);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543618;
    *(v13 + 4) = v12;
    *v14 = v12;
    *(v13 + 12) = 2114;
    v15 = v12;
    v16 = v11;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    v14[1] = v17;
    _os_log_impl(&dword_256063000, v8, v9, "%{public}@ failed to cancel ratchet with error: %{public}@", v13, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x259C59AD0](v14, -1, -1);
    MEMORY[0x259C59AD0](v13, -1, -1);
  }

  else
  {
  }

  (*(v0 + 240))(*(v0 + 208), *(v0 + 192));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t LACUIRatchetViewModel.invalidate(with:)(uint64_t a1)
{
  v31 = v1;
  v2 = v1[23];
  static LACLog.dtoUI.getter();
  v3 = v2;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[28];
  v9 = v1[24];
  v8 = v1[25];
  if (v6)
  {
    v29 = v1[28];
    v11 = v1[22];
    v10 = v1[23];
    v12 = v1[21];
    v28 = v1[24];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v13 = 138543618;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2082;
    v16 = v10;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v30);
    _os_log_impl(&dword_256063000, v4, v5, "Invalidating %{public}@ with reason %{public}s", v13, 0x16u);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x259C59AD0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x259C59AD0](v15, -1, -1);
    MEMORY[0x259C59AD0](v13, -1, -1);

    v17 = *(v8 + 8);
    v17(v29, v28);
  }

  else
  {

    v17 = *(v8 + 8);
    v17(v7, v9);
  }

  v1[30] = v17;
  v19 = v1[22];
  v18 = v1[23];
  v20 = v1[21];
  [LACUIRatchetViewModel.context.getter() invalidate];
  v21 = swift_unknownObjectRelease();
  v22 = (*((*MEMORY[0x277D85000] & *v18) + 0x1A0))(v21);
  v1[31] = v22;
  v23 = LACUIRatchetViewModel.ratchetIdentifier.getter();
  v24 = MEMORY[0x259C58D00](v23);
  v1[32] = v24;

  v25 = MEMORY[0x259C58D00](v20, v19);
  v1[33] = v25;
  v1[2] = v1;
  v1[3] = LACUIRatchetViewModel.invalidate(with:);
  v26 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v1[13] = &block_descriptor_79;
  v1[14] = v26;
  [v22 cancelArmRequestWithIdentifier:v24 reason:v25 completion:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

{
  v22 = v1;
  v2 = v1[23];
  static LACLog.dtoUI.getter();
  v3 = v2;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[27];
  v9 = v1[24];
  v8 = v1[25];
  if (v6)
  {
    v20 = v1[27];
    v11 = v1[22];
    v10 = v1[23];
    v12 = v1[21];
    v19 = v1[24];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v13 = 138543618;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2082;
    v16 = v10;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v21);
    _os_log_impl(&dword_256063000, v4, v5, "Invalidating %{public}@ that was already invalidated. Reason: %{public}s", v13, 0x16u);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x259C59AD0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x259C59AD0](v15, -1, -1);
    MEMORY[0x259C59AD0](v13, -1, -1);

    (*(v8 + 8))(v20, v19);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v17 = v1[1];

  return v17();
}

id LACUIRatchetViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t LACUIRatchetViewModel.ratchetStateDidChange(_:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = a1;
  v8 = v1;
  v9 = a1;
  v10 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in LACUIRatchetViewModel.ratchetStateDidChange(_:), v7);
  v11 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_tasks;
  swift_beginAccess();
  v12 = *&v8[v11];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v8[v11] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    *&v8[v11] = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v12[v15 + 4] = v10;
  *&v8[v11] = v12;
  swift_endAccess();
}

uint64_t closure #1 in LACUIRatchetViewModel.ratchetStateDidChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for LACUIRatchetViewModel.State(0);
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v5[11] = *(v7 + 64);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.ratchetStateDidChange(_:), 0, 0);
}

uint64_t closure #1 in LACUIRatchetViewModel.ratchetStateDidChange(_:)()
{
  *(v0 + 120) = type metadata accessor for MainActor();
  *(v0 + 128) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.ratchetStateDidChange(_:), v2, v1);
}

{
  v1 = *(v0 + 40);

  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x120))(v2))
  {
    *(v0 + 160) = (*((*v3 & **(v0 + 40)) + 0xF0))() & 1;

    return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.ratchetStateDidChange(_:), 0, 0);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

{
  if ((*(v0 + 160) & 1) != 0 || [*(v0 + 48) rawValue] - 2 > 2)
  {

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v1 = **(v0 + 40);
    v2 = ((*MEMORY[0x277D85000] & v1) + 264) & 0xFFFFFFFFFFFFLL | 0x61AF000000000000;
    *(v0 + 136) = *((*MEMORY[0x277D85000] & v1) + 0x108);
    *(v0 + 144) = v2;
    *(v0 + 152) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.ratchetStateDidChange(_:), v4, v3);
  }
}

{
  v1 = *(v0 + 136);

  v1(v2);

  return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.ratchetStateDidChange(_:), 0, 0);
}

{
  v1 = v0[14];
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v3 = v0[12];
    v2 = v0[13];
    v4 = v0[10];
    v5 = v0[7];
    v6 = v0[8];
    v7 = v0[5];
    outlined destroy of LACUIRatchetViewModel.State(v1, type metadata accessor for LACUIAuthCountdownConfiguration);
    static Date.now.getter();
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    v9 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_expirationDate;
    swift_beginAccess();
    outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v6, v7 + v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_endAccess();
    LACUIRatchetViewModel.uiConfiguration.getter(v2);
    swift_storeEnumTagMultiPayload();
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    outlined init with copy of LACUIRatchetViewModel.State(v2, v3);
    v11 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v7;
    outlined init with take of LACUIRatchetViewModel.State(v3, v12 + v11, type metadata accessor for LACUIRatchetViewModel.State);
    v13 = v7;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &closure #1 in LACUIRatchetViewModel.set(state:)partial apply, v12);

    v1 = v2;
  }

  outlined destroy of LACUIRatchetViewModel.State(v1, type metadata accessor for LACUIRatchetViewModel.State);

  v14 = v0[1];

  return v14();
}

uint64_t LACUIRatchetViewModel.uiConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v146 = a1;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v140 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v144 = &v127 - v7;
  MEMORY[0x28223BE20](v6);
  *&v139 = &v127 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v138 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v141 = &v127 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v143 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v127 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v127 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v127 - v22;
  v24 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_expirationDate;
  swift_beginAccess();
  v142 = v24;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v1[v24], v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v145 = v3;
  v25 = *(v3 + 48);
  LODWORD(v24) = v25(v23, 1, v2);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v24 == 1)
  {
    v26 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_gracePeriodExpirationDate;
    swift_beginAccess();
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v1[v26], v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    LODWORD(v26) = v25(v21, 1, v2);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v26 == 1)
    {
      v143 = LACUIRatchetViewModel.beginDelayTitle.getter(MEMORY[0x277D23F40]);
      v145 = v27;
      v142 = LACUIRatchetViewModel.beginDelayText.getter();
      v144 = v28;
      LODWORD(v136) = v1[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isStrictModeEnabled];
      v140 = v1;
      LODWORD(v138) = LACUIRatchetViewModel.beginDelayLocationWarning.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationVGMd, &_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationVGMR);
      v29 = swift_allocObject();
      v139 = xmmword_2560BAC90;
      *(v29 + 16) = xmmword_2560BAC90;
      v30 = specialized static LocalizedStrings.ratchetCoolOffSecurityDelayDuration.getter();
      v32 = v31;
      *&v147 = 0;
      *(&v147 + 1) = 0xE000000000000000;
      *&v152 = 0xD000000000000015;
      *(&v152 + 1) = 0x80000002560BE6D0;
      LOBYTE(v153) = 1;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x259C58D70](0x656C74697425, 0xE600000000000000);
      v33 = *(&v147 + 1);
      *(v29 + 32) = v147;
      *(v29 + 40) = v33;
      *(v29 + 48) = 0xD000000000000015;
      *(v29 + 56) = 0x80000002560BE6D0;
      *(v29 + 64) = 1;
      *(v29 + 72) = v30;
      *(v29 + 80) = v32;
      v34 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000002ALL, 0x80000002560BE6F0, 0x74656863746152, 0xE700000000000000);
      v36 = v35;
      *&v147 = 0;
      *(&v147 + 1) = 0xE000000000000000;
      v137 = xmmword_2560BACA0;
      v152 = xmmword_2560BACA0;
      LOBYTE(v153) = 1;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x259C58D70](0x656C74697425, 0xE600000000000000);
      v37 = *(&v147 + 1);
      *(v29 + 88) = v147;
      *(v29 + 96) = v37;
      *(v29 + 104) = v137;
      *(v29 + 120) = 1;
      *(v29 + 128) = v34;
      *(v29 + 136) = v36;
      if (v138)
      {
        v38 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000002CLL, 0x80000002560BE7F0, 0x74656863746152, 0xE700000000000000);
        v40 = v39;
        *&v147 = 0;
        *(&v147 + 1) = 0xE000000000000000;
        *&v152 = 0xD000000000000013;
        *(&v152 + 1) = 0x80000002560BE7D0;
        LOBYTE(v153) = 1;
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x259C58D70](0x656C74697425, 0xE600000000000000);
        v41 = v147;
        v43 = *(v29 + 16);
        v42 = *(v29 + 24);
        if (v43 >= v42 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v29);
        }

        *(v29 + 16) = v43 + 1;
        v44 = v29 + 56 * v43;
        *(v44 + 32) = v41;
        *(v44 + 48) = 0xD000000000000013;
        *(v44 + 56) = 0x80000002560BE7D0;
        *(v44 + 64) = 1;
        *(v44 + 72) = v38;
        *(v44 + 80) = v40;
      }

      if (!v145)
      {
        v143 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001CLL, 0x80000002560BE720, 0x74656863746152, 0xE700000000000000);
        v145 = v45;
      }

      if (!v144)
      {
        if (v136)
        {
          v46 = "RATCHET_COOL_OFF_LEARN_MORE";
          v47 = 0xD00000000000002ALL;
        }

        else
        {
          v46 = "RATCHET_COOL_OFF_TITLE_BEGIN";
          v47 = 0xD00000000000001ELL;
        }

        v142 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(v47, (v46 | 0x8000000000000000), 0x74656863746152, 0xE700000000000000);
        v144 = v100;
      }

      v101 = type metadata accessor for LACUIAuthCountdownDelayConfiguration(0);
      v102 = *(*(v101 - 8) + 56);
      v102(v141, 1, 1, v101);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMR);
      v103 = swift_allocObject();
      *(v103 + 16) = v139;
      v104 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001DLL, 0x80000002560BE760, 0x74656863746152, 0xE700000000000000);
      *(v103 + 64) = 0u;
      *(v103 + 80) = 0u;
      *(v103 + 96) = 255;
      *(v103 + 32) = 0xD000000000000012;
      *(v103 + 40) = 0x80000002560BDB70;
      *(v103 + 48) = v104;
      *(v103 + 56) = v105;
      v106 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001BLL, 0x80000002560BE780, 0x74656863746152, 0xE700000000000000);
      *(v103 + 136) = 0u;
      *(v103 + 152) = 0u;
      *(v103 + 168) = 511;
      *(v103 + 104) = 0x726F4D6E7261656CLL;
      *(v103 + 112) = 0xE900000000000065;
      *(v103 + 120) = v106;
      *(v103 + 128) = v107;
      v108 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0x435F4E4F54545542, 0xED00004C45434E41, 0x75676F6C61746143, 0xE900000000000065);
      v110 = v109;
      v111 = type metadata accessor for LACUIAuthCountdownConfiguration(0);
      v112 = v111[7];
      v54 = v146;
      v102(v146 + v112, 1, 1, v101);
      v113 = v111[8];
      v114 = v54 + v111[10];
      *(v114 + 64) = 0;
      *(v114 + 32) = 0u;
      *(v114 + 48) = 0u;
      *v114 = 0u;
      *(v114 + 16) = 0u;
      v115 = v54 + v111[11];
      *(v115 + 64) = 0;
      *(v115 + 32) = 0u;
      *(v115 + 48) = 0u;
      *v115 = 0u;
      *(v115 + 16) = 0u;
      *v54 = xmmword_2560BACB0;
      *(v54 + 16) = 1;
      v116 = v145;
      *(v54 + 24) = v143;
      *(v54 + 32) = v116;
      v117 = v144;
      *(v54 + 40) = v142;
      *(v54 + 48) = v117;
      outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v141, v54 + v112, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
      *(v54 + v113) = v29;
      *(v54 + v111[9]) = v103;
      v151 = *(v114 + 64);
      v118 = *(v114 + 32);
      v150 = *(v114 + 48);
      v149 = v118;
      v119 = *v114;
      v148 = *(v114 + 16);
      v147 = v119;
      outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v147, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
      *v114 = 0x6C65636E6163;
      *(v114 + 8) = 0xE600000000000000;
      *(v114 + 16) = v108;
      *(v114 + 24) = v110;
      *(v114 + 32) = 0u;
      *(v114 + 48) = 0u;
      *(v114 + 64) = 767;
      v120 = *(v115 + 48);
      v154 = *(v115 + 32);
      v155 = v120;
      v156 = *(v115 + 64);
      v121 = *(v115 + 16);
      v152 = *v115;
      v153 = v121;
      outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v152, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
      *v115 = 0u;
      *(v115 + 16) = 0u;
      *(v115 + 32) = 0u;
      *(v115 + 48) = 0u;
      *(v115 + 64) = 0;
      v1 = v140;
      goto LABEL_38;
    }
  }

  v48 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_gracePeriodExpirationDate;
  swift_beginAccess();
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v1[v48], v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v25(v18, 1, v2) == 1)
  {
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v49 = v145;
  }

  else
  {
    v49 = v145;
    v50 = v139;
    (*(v145 + 32))();
    v51 = v144;
    static Date.now.getter();
    v52 = static Date.> infix(_:_:)();
    v53 = *(v49 + 8);
    v53(v51, v2);
    if (v52)
    {
      v54 = v146;
      v55 = static LACUIAuthCountdownConfiguration.gracePeriod(customCancelTitle:)(0, 0, v146);
      (v53)(v50, v2, v55);
LABEL_38:
      v65 = &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
      goto LABEL_39;
    }

    v53(v50, v2);
  }

  v56 = v143;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v142 + v1, v143, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v25(v56, 1, v2) == 1)
  {
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v56, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_23:
    v54 = v146;
    v65 = &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
    static LACUIAuthCountdownConfiguration.ready(message:customCancelTitle:)(0, 0xE000000000000000, 0, 0, v146);
LABEL_39:
    v122 = v1[v65[34] + 16];
    result = type metadata accessor for LACUIAuthCountdownConfiguration(0);
    *(v54 + *(result + 52)) = v122;
    *(v54 + *(result + 48)) = v122;
    return result;
  }

  v57 = v140;
  (*(v49 + 32))(v140, v56, v2);
  v58 = v144;
  static Date.now.getter();
  v59 = static Date.> infix(_:_:)();
  v60 = *(v49 + 8);
  v60(v58, v2);
  if ((v59 & 1) == 0)
  {
    v60(v57, v2);
    goto LABEL_23;
  }

  v61 = LACUIRatchetViewModel.beginDelayTitle.getter(MEMORY[0x277D23F80]);
  v63 = v62;
  LODWORD(v136) = v1[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isStrictModeEnabled];
  *&v139 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001ELL, 0x80000002560BE820, 0x74656863746152, 0xE700000000000000);
  *&v137 = v64;
  v143 = v49 + 8;
  v142 = v60;
  if (v63)
  {
    v141 = v63;
    v144 = v61;
  }

  else
  {
    v144 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD000000000000020, 0x80000002560BE840, 0x74656863746152, 0xE700000000000000);
    v141 = v66;
  }

  v67 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001CLL, 0x80000002560BE870, 0x74656863746152, 0xE700000000000000);
  v69 = v68;
  v70 = type metadata accessor for LACUIAuthCountdownDelayConfiguration(0);
  v71 = *(v49 + 16);
  v72 = v138;
  v73 = v138 + *(v70 + 20);
  v145 = v2;
  v71(v73, v57, v2);
  v74 = (v72 + *(v70 + 24));
  *v72 = v67;
  v72[1] = v69;
  *v74 = 0;
  v74[1] = 0;
  v75 = *(*(v70 - 8) + 56);
  v75(v72, 0, 1, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMR);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_2560BAC90;
  v77 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0x445F4E4F54545542, 0xEB00000000454E4FLL, 0x75676F6C61746143, 0xE900000000000065);
  *(v76 + 64) = 0u;
  *(v76 + 80) = 0u;
  *(v76 + 96) = 255;
  *(v76 + 32) = 1701736292;
  *(v76 + 40) = 0xE400000000000000;
  *(v76 + 48) = v77;
  *(v76 + 56) = v78;
  v79 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001BLL, 0x80000002560BE780, 0x74656863746152, 0xE700000000000000);
  *(v76 + 136) = 0u;
  *(v76 + 152) = 0u;
  *(v76 + 168) = 511;
  *(v76 + 104) = 0x726F4D6E7261656CLL;
  *(v76 + 112) = 0xE900000000000065;
  *(v76 + 120) = v79;
  *(v76 + 128) = v80;
  if ((v136 & 1) != 0 || (os_variant_allows_internal_security_policies() & 1) == 0)
  {
    v128 = 0;
    v130 = 0;
    v132 = 0;
    v134 = 0;
    v135 = 0;
    v136 = 0;
    v127 = 0;
    v129 = 0;
    v131 = 0;
    v133 = 0;
  }

  else
  {
    v136 = 0x80000002560BE890;
    outlined consume of LACUIAuthImageConfiguration?(0, 0, 255);
    v135 = 0xD000000000000032;
    v133 = 3;
    v131 = 1;
    v129 = 0xE300000000000000;
    v134 = 0xEF29796C6E4F206CLL;
    v132 = 0x616E7265746E4928;
    v130 = 0xEA00000000007261;
    v128 = 0x6461526F54706174;
    v127 = 7630433;
  }

  v81 = type metadata accessor for LACUIAuthCountdownConfiguration(0);
  v82 = v81[7];
  v83 = v146;
  v75((v146 + v82), 1, 1, v70);
  v84 = v81[8];
  v85 = v83 + v81[10];
  *(v85 + 64) = 0;
  *(v85 + 32) = 0u;
  *(v85 + 48) = 0u;
  *v85 = 0u;
  *(v85 + 16) = 0u;
  v86 = v83 + v81[11];
  *(v86 + 64) = 0;
  *(v86 + 32) = 0u;
  *(v86 + 48) = 0u;
  *v86 = 0u;
  *(v86 + 16) = 0u;
  *v83 = 0xD000000000000015;
  *(v83 + 8) = 0x80000002560BE6D0;
  *(v83 + 16) = 1;
  v87 = v137;
  *(v83 + 24) = v139;
  *(v83 + 32) = v87;
  v88 = v141;
  *(v83 + 40) = v144;
  *(v83 + 48) = v88;
  outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v138, v83 + v82, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  *(v83 + v84) = 0;
  v89 = v81[9];
  *(v83 + v89) = v76;
  v151 = *(v85 + 64);
  v90 = *(v85 + 32);
  v150 = *(v85 + 48);
  v149 = v90;
  v91 = *v85;
  v148 = *(v85 + 16);
  v147 = v91;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v147, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  *v85 = 0u;
  *(v85 + 16) = 0u;
  *(v85 + 32) = 0u;
  *(v85 + 48) = 0u;
  *(v85 + 64) = 0;
  v92 = *(v86 + 48);
  v154 = *(v86 + 32);
  v155 = v92;
  v156 = *(v86 + 64);
  v93 = *(v86 + 16);
  v152 = *v86;
  v153 = v93;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v152, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  v94 = v130;
  *v86 = v128;
  *(v86 + 8) = v94;
  v95 = v134;
  *(v86 + 16) = v132;
  *(v86 + 24) = v95;
  v96 = v136;
  *(v86 + 32) = v135;
  *(v86 + 40) = v96;
  v97 = v129;
  *(v86 + 48) = v127;
  *(v86 + 56) = v97;
  *(v86 + 64) = v131;
  *(v86 + 65) = v133;
  v65 = &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  v98 = *&v1[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_configuration + 8];
  if (!v98)
  {
    v99 = v140;
LABEL_34:
    v142(v99, v145);
    v54 = v146;
    goto LABEL_39;
  }

  v99 = v140;
  if (!*(v76 + 16) || *(v76 + 97))
  {
    goto LABEL_34;
  }

  v124 = *&v1[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_configuration];
  v125 = v140;

  result = (v142)(v125, v145);
  if (*(v76 + 16))
  {
    *(v76 + 48) = v124;
    *(v76 + 56) = v98;

    v126 = v146;
    *(v146 + v89) = v76;
    v54 = v126;
    goto LABEL_38;
  }

  __break(1u);
  return result;
}

uint64_t LACUIRatchetViewModel.handle(action:)(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v41 = type metadata accessor for LACUIRatchetViewModel.State(0);
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v41);
  v9 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v43 = type metadata accessor for Logger();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v54 = a1[2];
  v55 = v14;
  v56 = *(a1 + 32);
  v15 = a1[1];
  v52 = *a1;
  v53 = v15;
  static LACLog.dtoUI.getter();
  v16 = v1;
  outlined init with copy of LACUIAuthActionCountdown(&v52, &v47);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  outlined destroy of LACUIAuthActionCountdown(&v52);
  v19 = os_log_type_enabled(v17, v18);
  v44 = v16;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v39 = v11;
    v21 = v20;
    v22 = swift_slowAlloc();
    v40 = v5;
    v23 = v22;
    v38 = swift_slowAlloc();
    v46 = v38;
    *v21 = 138543618;
    *(v21 + 4) = v16;
    *v23 = v16;
    *(v21 + 12) = 2082;
    v49 = v54;
    v50 = v55;
    v51 = v56;
    v47 = v52;
    v48 = v53;
    v24 = v16;
    outlined init with copy of LACUIAuthActionCountdown(&v52, v45);
    v25 = String.init<A>(describing:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v46);

    *(v21 + 14) = v27;
    v9 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    _os_log_impl(&dword_256063000, v17, v18, "%{public}@ handle countdown action %{public}s", v21, 0x16u);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v28 = v23;
    v5 = v40;
    MEMORY[0x259C59AD0](v28, -1, -1);
    v29 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x259C59AD0](v29, -1, -1);
    v30 = v21;
    v11 = v39;
    MEMORY[0x259C59AD0](v30, -1, -1);
  }

  (*(v42 + 8))(v13, v43);
  if (*(&v52 + 1))
  {
    v47 = v52;
    v48 = v53;
    v49 = v54;
    v50 = v55;
    v51 = v56;
    return LACUIRatchetViewModel.handleButtonTap(_:)(&v47);
  }

  else
  {
    v32 = v44;
    LACUIRatchetViewModel.uiConfiguration.getter(v11);
    swift_storeEnumTagMultiPayload();
    v33 = type metadata accessor for TaskPriority();
    (*(*(v33 - 8) + 56))(v5, 1, 1, v33);
    outlined init with copy of LACUIRatchetViewModel.State(v11, v9);
    v34 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v32;
    outlined init with take of LACUIRatchetViewModel.State(v9, v35 + v34, type metadata accessor for LACUIRatchetViewModel.State);
    v36 = v32;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in LACUIRatchetViewModel.set(state:), v35);

    return outlined destroy of LACUIRatchetViewModel.State(v11, type metadata accessor for LACUIRatchetViewModel.State);
  }
}

uint64_t LACUIRatchetViewModel.handleButtonTap(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGMd, _sScCySDys11AnyHashableVypGSgs5Error_pGMR);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = *(a1 + 16);
  v45 = *a1;
  v46 = v16;
  v17 = *(a1 + 48);
  v47 = *(a1 + 32);
  v48 = v17;
  v49 = *(a1 + 64);
  v18 = v45;

  LACUIAuthCountdownConfiguration.ActionButtonIdentifier.init(rawValue:)(v18);
  if (LOBYTE(v43[0]) <= 4u)
  {
    if (LOBYTE(v43[0]) > 1u)
    {
      if (LOBYTE(v43[0]) - 2 < 2)
      {
        v19 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_uiContinuation;
        swift_beginAccess();
        outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v1 + v19, v15, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
        v20 = v40;
        if ((*(v40 + 48))(v15, 1, v7))
        {
          return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v15, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
        }

        (*(v20 + 16))(v9, v15, v7);
        outlined destroy of LACUIAuthCountdownDelayConfiguration?(v15, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
        v41[0] = 0;
        CheckedContinuation.resume(returning:)();
        return (*(v20 + 8))(v9, v7);
      }

LABEL_14:
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();

      LACUIRatchetViewModel.confirmBiometry(completion:)(partial apply for closure #1 in LACUIRatchetViewModel.handleButtonTap(_:), v23);
    }

    if (!LOBYTE(v43[0]))
    {
      goto LABEL_14;
    }

    LACUIRatchetViewModel.learnMoreSubject.getter();
    goto LABEL_21;
  }

  if (LOBYTE(v43[0]) > 6u)
  {
    if (LOBYTE(v43[0]) == 7)
    {
      LACUIRatchetViewModel.tapToRadarSubject.getter();
LABEL_21:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
      lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR, MEMORY[0x277CBCE18]);
      Subject<>.send()();
    }

    v26 = v4;
    v27 = v1;
    static LACLog.dtoUI.getter();
    outlined init with copy of LACUIAuthButtonConfiguration(&v45, v43);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    outlined destroy of LACUIAuthButtonConfiguration(&v45);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42 = v31;
      *v30 = 136446210;
      v43[2] = v47;
      v43[3] = v48;
      v44 = v49;
      v43[0] = v45;
      v43[1] = v46;
      outlined init with copy of LACUIAuthButtonConfiguration(&v45, v41);
      v32 = String.init<A>(describing:)();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v42);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_256063000, v28, v29, "Unhandled action from button: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x259C59AD0](v31, -1, -1);
      MEMORY[0x259C59AD0](v30, -1, -1);
    }

    (*(v26 + 8))(v6, v3);
    return (*((*MEMORY[0x277D85000] & *v27) + 0x258))(0x206E776F6E6B6E55, 0xEE006E6F69746361, 0);
  }

  else if (LOBYTE(v43[0]) == 5)
  {
    v22 = *((*MEMORY[0x277D85000] & *v1) + 0x258);

    return v22(0x6E61632072657355, 0xEB000000006C6563, 1);
  }

  else
  {
    v24 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_uiContinuation;
    swift_beginAccess();
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v1 + v24, v13, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
    v25 = v40;
    if ((*(v40 + 48))(v13, 1, v7))
    {
      return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v13, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
    }

    else
    {
      (*(v25 + 16))(v9, v13, v7);
      outlined destroy of LACUIAuthCountdownDelayConfiguration?(v13, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
      v35 = objc_opt_self();
      v36 = *MEMORY[0x277D23EA8];
      v37 = MEMORY[0x259C58D00](0xD000000000000018, 0x80000002560BE8D0);
      v38 = [v35 errorWithCode:v36 debugDescription:v37];

      v41[0] = v38;
      CheckedContinuation.resume(throwing:)();
      return (*(v25 + 8))(v9, v7);
    }
  }
}

void *closure #1 in LACUIRatchetViewModel.handleButtonTap(_:)(void *a1, int a2, uint64_t a3)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGMd, _sScCySDys11AnyHashableVypGSgs5Error_pGMR);
  v6 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v42 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = type metadata accessor for Logger();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.dtoUI.getter();

  v47 = a2;
  v17 = a2 & 1;
  outlined copy of Result<[AnyHashable : Any], Error>(a1, v17);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  outlined consume of Result<[AnyHashable : Any], Error>(a1, v17);
  v43 = v19;
  v20 = os_log_type_enabled(v18, v19);
  v48 = a3;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v41 = v6;
    v22 = v21;
    v23 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v50[0] = v40;
    *v22 = 138543618;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v22 + 4) = Strong;
    *v23 = Strong;
    *(v22 + 12) = 2082;
    v50[3] = a1;
    v51 = v17;
    outlined copy of Result<[AnyHashable : Any], Error>(a1, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOySDys11AnyHashableVypGs5Error_pGMd, &_ss6ResultOySDys11AnyHashableVypGs5Error_pGMR);
    v25 = String.init<A>(describing:)();
    v27 = v11;
    v28 = v13;
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v50);

    *(v22 + 14) = v29;
    v13 = v28;
    v11 = v27;
    _os_log_impl(&dword_256063000, v18, v43, "%{public}@ confirmed biometry with result: %{public}s", v22, 0x16u);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x259C59AD0](v23, -1, -1);
    v30 = v40;
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x259C59AD0](v30, -1, -1);
    v31 = v22;
    v6 = v41;
    MEMORY[0x259C59AD0](v31, -1, -1);
  }

  (*(v45 + 8))(v16, v46);
  if (v47)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v33 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_uiContinuation;
    v34 = result;
    swift_beginAccess();
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v34 + v33, v11, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);

    if ((*(v6 + 48))(v11, 1, v44))
    {
      return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v11, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
    }

    v37 = v42;
    v38 = v44;
    (*(v6 + 16))(v42, v11, v44);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v11, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
    v49 = a1;
    v39 = a1;
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v35 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_uiContinuation;
    v36 = result;
    swift_beginAccess();
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v36 + v35, v13, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
    outlined copy of Result<[AnyHashable : Any], Error>(a1, 0);

    if ((*(v6 + 48))(v13, 1, v44))
    {
      outlined consume of Result<[AnyHashable : Any], Error>(a1, 0);
      return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v13, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
    }

    v37 = v42;
    v38 = v44;
    (*(v6 + 16))(v42, v13, v44);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v13, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
    v49 = a1;
    CheckedContinuation.resume(returning:)();
  }

  return (*(v6 + 8))(v37, v38);
}

uint64_t LACUIRatchetViewModel.confirmBiometry(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v2;

  v11 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in LACUIRatchetViewModel.confirmBiometry(completion:), v9);
  v12 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_tasks;
  swift_beginAccess();
  v13 = *&v10[v12];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v10[v12] = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
    *&v10[v12] = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v13[v16 + 4] = v11;
  *&v10[v12] = v13;
  swift_endAccess();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t LACUIRatchetViewModel.arm(with:)(uint64_t a1)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = v1;
  return MEMORY[0x2822009F8](LACUIRatchetViewModel.arm(with:), 0, 0);
}

uint64_t LACUIRatchetViewModel.arm(with:)()
{
  v17 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_options);
  *(v0 + 144) = *MEMORY[0x277D23F90];

  AnyHashable.init<A>(_:)();
  v4 = MEMORY[0x277D839B0];
  *(v0 + 168) = MEMORY[0x277D839B0];
  *(v0 + 144) = 1;
  outlined init with take of Any((v0 + 144), (v0 + 176));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v3;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 176), v0 + 80, isUniquelyReferenced_nonNull_native);
  outlined destroy of AnyHashable(v0 + 80);
  *(v0 + 144) = *MEMORY[0x277D23F98];
  AnyHashable.init<A>(_:)();
  *(v0 + 168) = v4;
  *(v0 + 144) = 1;
  outlined init with take of Any((v0 + 144), (v0 + 176));
  v6 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 176), v0 + 80, v6);
  outlined destroy of AnyHashable(v0 + 80);

  v7 = swift_isUniquelyReferenced_nonNull_native();
  v16 = v3;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v2, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v7, &v16);

  v9 = (*((*MEMORY[0x277D85000] & *v1) + 0x1A0))(v8);
  *(v0 + 224) = v9;
  v10 = LACUIRatchetViewModel.ratchetIdentifier.getter();
  v11 = MEMORY[0x259C58D00](v10);
  *(v0 + 232) = v11;

  v12 = LACUIRatchetViewModel.context.getter();
  *(v0 + 240) = v12;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 248) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = LACUIRatchetViewModel.arm(with:);
  v14 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDys11AnyHashableVypGs5Error_pGMd, &_sSccySDys11AnyHashableVypGs5Error_pGMR);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary?, @unowned NSError?) -> () with result type [AnyHashable : Any];
  *(v0 + 104) = &block_descriptor_1;
  *(v0 + 112) = v14;
  [v9 performArmRequestWithIdentifier:v11 context:v12 options:isa completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = LACUIRatchetViewModel.arm(with:);
  }

  else
  {
    v2 = LACUIRatchetViewModel.arm(with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 144);

  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4(v3);
}

{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[28];
  swift_willThrow();

  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}

uint64_t LACUIRatchetViewModel.showUI(for:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for Date();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for LACUIRatchetViewModel.State(0);
  v2[15] = v4;
  v5 = *(v4 - 8);
  v2[16] = v5;
  v2[17] = *(v5 + 64);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](LACUIRatchetViewModel.showUI(for:), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = LACUIRatchetViewModel.showUI(for:);
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = LACUIRatchetViewModel.showUI(for:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = LACUIRatchetViewModel.showUI(for:);
  }

  else
  {
    *(v4 + 232) = a1;
    v5 = LACUIRatchetViewModel.showUI(for:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v5 = LACUIRatchetViewModel.showUI(for:);
  }

  else
  {
    *(v4 + 256) = a1;
    v5 = LACUIRatchetViewModel.showUI(for:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t LACUIRatchetViewModel.showUI(for:)()
{
  v1 = *(v0 + 72);
  v2 = [*(v0 + 64) ratchetState];
  *(v0 + 184) = v2;
  static LACLog.dtoUI.getter();
  v3 = v1;
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 72);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543618;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2114;
    *(v8 + 14) = v4;
    *v9 = v7;
    v9[1] = v4;
    v10 = v7;
    v11 = v4;
    _os_log_impl(&dword_256063000, v5, v6, "%{public}@ showing UI for state: %{public}@", v8, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x259C59AD0](v9, -1, -1);
    MEMORY[0x259C59AD0](v8, -1, -1);
  }

  v13 = *(v0 + 168);
  v12 = *(v0 + 176);
  v14 = *(v0 + 160);
  v15 = *(v0 + 64);

  (*(v13 + 8))(v12, v14);
  v16 = [v15 gracePeriodState];
  LOBYTE(v12) = [v16 isActive];

  if (v12)
  {
    v18 = *(v0 + 144);
    v17 = *(v0 + 152);
    v59 = *(v0 + 128);
    v57 = *(v0 + 112);
    v19 = *(v0 + 96);
    v20 = *(v0 + 104);
    v22 = *(v0 + 80);
    v21 = *(v0 + 88);
    v24 = *(v0 + 64);
    v23 = *(v0 + 72);
    static Date.now.getter();
    v25 = [v24 gracePeriodState];
    [v25 time];

    Date.addingTimeInterval(_:)();
    (*(v21 + 8))(v19, v22);
    (*(v21 + 56))(v20, 0, 1, v22);
    v26 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_gracePeriodExpirationDate;
    swift_beginAccess();
    outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v20, v23 + v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_endAccess();
    LACUIRatchetViewModel.uiConfiguration.getter(v17);
    swift_storeEnumTagMultiPayload();
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v57, 1, 1, v27);
    outlined init with copy of LACUIRatchetViewModel.State(v17, v18);
    v28 = (*(v59 + 80) + 40) & ~*(v59 + 80);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v23;
    outlined init with take of LACUIRatchetViewModel.State(v18, v29 + v28, type metadata accessor for LACUIRatchetViewModel.State);
    v30 = v23;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v57, &closure #1 in LACUIRatchetViewModel.set(state:)partial apply, v29);

    outlined destroy of LACUIRatchetViewModel.State(v17, type metadata accessor for LACUIRatchetViewModel.State);
    v31 = swift_task_alloc();
    *(v0 + 240) = v31;
    *v31 = v0;
    v32 = LACUIRatchetViewModel.showUI(for:);
LABEL_9:
    v31[1] = v32;

    return LACUIRatchetViewModel.setupContinuationAndWait()();
  }

  v33 = [v4 rawValue];
  if (v33 == 1)
  {
    v44 = *(v0 + 144);
    v43 = *(v0 + 152);
    v60 = *(v0 + 128);
    v58 = *(v0 + 112);
    v45 = *(v0 + 96);
    v46 = *(v0 + 104);
    v48 = *(v0 + 80);
    v47 = *(v0 + 88);
    v49 = *(v0 + 72);
    [v4 duration];
    static Date.now.getter();
    Date.addingTimeInterval(_:)();
    (*(v47 + 8))(v45, v48);
    (*(v47 + 56))(v46, 0, 1, v48);
    v50 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_expirationDate;
    swift_beginAccess();
    outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v46, v49 + v50, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_endAccess();
    LACUIRatchetViewModel.uiConfiguration.getter(v43);
    swift_storeEnumTagMultiPayload();
    v51 = type metadata accessor for TaskPriority();
    (*(*(v51 - 8) + 56))(v58, 1, 1, v51);
    outlined init with copy of LACUIRatchetViewModel.State(v43, v44);
    v52 = (*(v60 + 80) + 40) & ~*(v60 + 80);
    v53 = swift_allocObject();
    v53[2] = 0;
    v53[3] = 0;
    v53[4] = v49;
    outlined init with take of LACUIRatchetViewModel.State(v44, v53 + v52, type metadata accessor for LACUIRatchetViewModel.State);
    v54 = v49;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v58, &closure #1 in LACUIRatchetViewModel.set(state:)partial apply, v53);

    outlined destroy of LACUIRatchetViewModel.State(v43, type metadata accessor for LACUIRatchetViewModel.State);
    v31 = swift_task_alloc();
    *(v0 + 216) = v31;
    *v31 = v0;
    v32 = LACUIRatchetViewModel.showUI(for:);
    goto LABEL_9;
  }

  if (!v33)
  {
    v35 = *(v0 + 144);
    v34 = *(v0 + 152);
    v36 = *(v0 + 128);
    v37 = *(v0 + 112);
    v38 = *(v0 + 72);
    LACUIRatchetViewModel.uiConfiguration.getter(v34);
    swift_storeEnumTagMultiPayload();
    v39 = type metadata accessor for TaskPriority();
    (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
    outlined init with copy of LACUIRatchetViewModel.State(v34, v35);
    v40 = (*(v36 + 80) + 40) & ~*(v36 + 80);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v38;
    outlined init with take of LACUIRatchetViewModel.State(v35, v41 + v40, type metadata accessor for LACUIRatchetViewModel.State);
    v42 = v38;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v37, &closure #1 in LACUIRatchetViewModel.set(state:)partial apply, v41);

    outlined destroy of LACUIRatchetViewModel.State(v34, type metadata accessor for LACUIRatchetViewModel.State);
    v31 = swift_task_alloc();
    *(v0 + 192) = v31;
    *v31 = v0;
    v32 = LACUIRatchetViewModel.showUI(for:);
    goto LABEL_9;
  }

  v56 = *(v0 + 8);

  return v56(0);
}

{

  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LACUIRatchetViewModel.showRatchetUI(for:)(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  return MEMORY[0x2822009F8](LACUIRatchetViewModel.showRatchetUI(for:), 0, 0);
}

{
  *(*v2 + 200) = v1;

  if (v1)
  {
    v3 = LACUIRatchetViewModel.showRatchetUI(for:);
  }

  else
  {

    v3 = LACUIRatchetViewModel.showRatchetUI(for:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t LACUIRatchetViewModel.showRatchetUI(for:)()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = (*((*MEMORY[0x277D85000] & *v2) + 0x1A0))();
  [v3 addObserver_];

  v4 = v1;
  v5 = *(v0 + 128);
  *(v0 + 80) = v5;
  v6 = *MEMORY[0x277D23ED0];
  *(v0 + 144) = *MEMORY[0x277D23E78];
  *(v0 + 152) = v6;
  *(v0 + 160) = *MEMORY[0x277D23EB8];
  *(v0 + 168) = v5;
  v7 = v5;
  v8 = v5;
  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for LACDTORatchetStateComposite(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
  if (!swift_dynamicCast())
  {
    goto LABEL_14;
  }

  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v12 = *(v0 + 88);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = _convertErrorToNSError(_:)();

  LOBYTE(v10) = [v13 error:v15 hasCode:v11 subcode:v10];
  if ((v10 & 1) == 0)
  {

LABEL_14:
    goto LABEL_15;
  }

  v16 = [v14 userInfo];
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v17 + 16))
  {

LABEL_21:

    goto LABEL_15;
  }

  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {

    goto LABEL_21;
  }

  outlined init with copy of Any(*(v17 + 56) + 32 * v20, v0 + 16);

  type metadata accessor for LACDTORatchetStateComposite(0, &lazy cache variable for type metadata for LACDTORatchetStateComposite, 0x277D24040);
  if (swift_dynamicCast())
  {

    *(v0 + 104) = v5;
    v23 = v5;
    if (swift_dynamicCast())
    {
      v24 = *(v0 + 112);
      *(v0 + 176) = v24;
      v25 = [v24 userInfo];
      v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v26 + 16))
      {
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
        v31 = v30;

        if (v31)
        {
          outlined init with copy of Any(*(v26 + 56) + 32 * v29, v0 + 48);

          if (swift_dynamicCast())
          {
            v32 = *(v0 + 120);
            *(v0 + 184) = v32;
            v33 = swift_task_alloc();
            *(v0 + 192) = v33;
            *v33 = v0;
            v33[1] = LACUIRatchetViewModel.showRatchetUI(for:);

            return LACUIRatchetViewModel.showUI(for:)(v32);
          }

          goto LABEL_25;
        }
      }

      else
      {
      }
    }

LABEL_25:
    v35 = *(v0 + 168);
    goto LABEL_16;
  }

LABEL_15:
  v35 = v5;
LABEL_16:

  v36 = *(v0 + 8);
  v37 = *(v0 + 168);

  return v36(v37);
}

{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2(v3);
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);

  v3 = *(v0 + 200);
  *(v0 + 80) = v3;
  *(v0 + 168) = v3;
  v4 = v3;
  v5 = v3;
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for LACDTORatchetStateComposite(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
  if (!swift_dynamicCast())
  {
    goto LABEL_14;
  }

  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 88);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = _convertErrorToNSError(_:)();

  LOBYTE(v7) = [v10 error:v12 hasCode:v8 subcode:v7];
  if ((v7 & 1) == 0)
  {

LABEL_14:
    goto LABEL_15;
  }

  v13 = [v11 userInfo];
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v14 + 16))
  {

LABEL_21:

    goto LABEL_15;
  }

  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {

    goto LABEL_21;
  }

  outlined init with copy of Any(*(v14 + 56) + 32 * v17, v0 + 16);

  type metadata accessor for LACDTORatchetStateComposite(0, &lazy cache variable for type metadata for LACDTORatchetStateComposite, 0x277D24040);
  if (swift_dynamicCast())
  {

    *(v0 + 104) = v3;
    v20 = v3;
    if (swift_dynamicCast())
    {
      v21 = *(v0 + 112);
      *(v0 + 176) = v21;
      v22 = [v21 userInfo];
      v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v23 + 16))
      {
        v26 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
        v28 = v27;

        if (v28)
        {
          outlined init with copy of Any(*(v23 + 56) + 32 * v26, v0 + 48);

          if (swift_dynamicCast())
          {
            v29 = *(v0 + 120);
            *(v0 + 184) = v29;
            v30 = swift_task_alloc();
            *(v0 + 192) = v30;
            *v30 = v0;
            v30[1] = LACUIRatchetViewModel.showRatchetUI(for:);

            return LACUIRatchetViewModel.showUI(for:)(v29);
          }

          goto LABEL_25;
        }
      }

      else
      {
      }
    }

LABEL_25:
    v32 = *(v0 + 168);
    goto LABEL_16;
  }

LABEL_15:
  v32 = v3;
LABEL_16:

  v33 = *(v0 + 8);
  v34 = *(v0 + 168);

  return v33(v34);
}

uint64_t LACUIRatchetViewModel.armIfPossible()()
{
  v1[33] = v0;
  v2 = type metadata accessor for Logger();
  v1[34] = v2;
  v1[35] = *(v2 - 8);
  v1[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](LACUIRatchetViewModel.armIfPossible(), 0, 0);
}

{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 264)) + 0x1A0))();
  *(v0 + 296) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 248;
  *(v0 + 24) = LACUIRatchetViewModel.armIfPossible();
  v2 = swift_continuation_init();
  *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo18LACDTORatchetStateCs5Error_pGMd, &_sSccySo18LACDTORatchetStateCs5Error_pGMR);
  *(v0 + 184) = MEMORY[0x277D85DD0];
  *(v0 + 192) = 1107296256;
  *(v0 + 200) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LACDTORatchetState?, @unowned NSError?) -> () with result type LACDTORatchetState;
  *(v0 + 208) = &block_descriptor_121;
  *(v0 + 216) = v2;
  [v1 stateWithCompletion_];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = LACUIRatchetViewModel.armIfPossible();
  }

  else
  {
    v2 = LACUIRatchetViewModel.armIfPossible();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[31];
  v0[39] = v3;

  static LACLog.dtoUI.getter();
  v4 = v2;
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[33];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543618;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2114;
    *(v9 + 14) = v5;
    *v10 = v8;
    v10[1] = v5;
    v11 = v8;
    v12 = v5;
    _os_log_impl(&dword_256063000, v6, v7, "%{public}@ checking state at the end of evaluation: %{public}@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x259C59AD0](v10, -1, -1);
    MEMORY[0x259C59AD0](v9, -1, -1);
  }

  v14 = v0[35];
  v13 = v0[36];
  v15 = v0[34];

  (*(v14 + 8))(v13, v15);
  if ([v5 rawValue] - 2 >= 3)
  {

    v21 = v0[1];

    return v21(0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2560BACC0;
    v0[32] = *MEMORY[0x277D23FA0];
    AnyHashable.init<A>(_:)();
    v17 = [v5 rawValue] == 3;
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = v17;
    v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
    v0[40] = v18;
    swift_setDeallocating();
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
    v19 = swift_task_alloc();
    v0[41] = v19;
    *v19 = v0;
    v19[1] = LACUIRatchetViewModel.armIfPossible();

    return LACUIRatchetViewModel.arm(with:)(v18);
  }
}

{
  v1 = *(v0 + 344);

  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v1 = *(v0 + 296);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 312);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t LACUIRatchetViewModel.armIfPossible()(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v5 = LACUIRatchetViewModel.armIfPossible();
  }

  else
  {

    *(v4 + 344) = a1;
    v5 = LACUIRatchetViewModel.armIfPossible();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t closure #1 in LACUIRatchetViewModel.confirmBiometry(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.confirmBiometry(completion:), 0, 0);
}

uint64_t closure #1 in LACUIRatchetViewModel.confirmBiometry(completion:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2560BACC0;
  v0[15] = *MEMORY[0x277D23F58];
  AnyHashable.init<A>(_:)();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  v0[19] = v2;
  swift_setDeallocating();
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = closure #1 in LACUIRatchetViewModel.confirmBiometry(completion:);

  return LACUIRatchetViewModel.arm(with:)(v2);
}

{
  (*(v0 + 136))(*(v0 + 176), 0);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[21];
  v2 = v0[17];

  v3 = v1;
  v2(v1, 1);

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in LACUIRatchetViewModel.confirmBiometry(completion:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = closure #1 in LACUIRatchetViewModel.confirmBiometry(completion:);
  }

  else
  {

    *(v4 + 176) = a1;
    v5 = closure #1 in LACUIRatchetViewModel.confirmBiometry(completion:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LACDTORatchetState?, @unowned NSError?) -> () with result type LACDTORatchetState(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t closure #1 in LACUIRatchetViewModel.set(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for LACUIRatchetViewModel.State(0);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.set(state:), 0, 0);
}

uint64_t closure #1 in LACUIRatchetViewModel.set(state:)()
{
  type metadata accessor for MainActor();
  *(v0 + 104) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.set(state:), v2, v1);
}

{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];

  outlined init with copy of LACUIRatchetViewModel.State(v5, v1);
  v6 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_state;
  swift_beginAccess();
  outlined init with copy of LACUIRatchetViewModel.State(v4 + v6, v3);
  swift_beginAccess();
  outlined assign with copy of LACUIRatchetViewModel.State(v1, v4 + v6);
  swift_endAccess();
  outlined init with copy of LACUIRatchetViewModel.State(v4 + v6, v2);
  LACUIRatchetViewModel.stateUpdated(from:to:)(v3, v2);
  outlined destroy of LACUIRatchetViewModel.State(v2, type metadata accessor for LACUIRatchetViewModel.State);
  outlined destroy of LACUIRatchetViewModel.State(v3, type metadata accessor for LACUIRatchetViewModel.State);
  outlined destroy of LACUIRatchetViewModel.State(v1, type metadata accessor for LACUIRatchetViewModel.State);

  v7 = v0[1];

  return v7();
}

uint64_t LACUIRatchetViewModel.setupContinuationAndWait()()
{
  *(v1 + 72) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
  *(v1 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](LACUIRatchetViewModel.setupContinuationAndWait(), 0, 0);
}

{
  v1 = swift_allocObject();
  *(v0 + 88) = v1;
  swift_unknownObjectWeakInit();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
  *v2 = v0;
  v2[1] = LACUIRatchetViewModel.setupContinuationAndWait();

  return MEMORY[0x2822008A0](v0 + 64, 0, 0, 0xD00000000000001ALL, 0x80000002560BE940, partial apply for closure #1 in LACUIRatchetViewModel.setupContinuationAndWait(), v1, v3);
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = LACUIRatchetViewModel.setupContinuationAndWait();
  }

  else
  {

    v2 = LACUIRatchetViewModel.setupContinuationAndWait();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGMd, _sScCySDys11AnyHashableVypGSgs5Error_pGMR);
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_uiContinuation;
  swift_beginAccess();
  outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v1, v2 + v5, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
  swift_endAccess();

  v6 = v0[1];

  return v6(v3);
}

{
  v1 = v0[10];
  v2 = v0[9];

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGMd, _sScCySDys11AnyHashableVypGSgs5Error_pGMR);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_uiContinuation;
  swift_beginAccess();
  outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v1, v2 + v4, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
  swift_endAccess();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

void closure #1 in LACUIRatchetViewModel.setupContinuationAndWait()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-v4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGMd, _sScCySDys11AnyHashableVypGSgs5Error_pGMR);
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, a1, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    v10 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_uiContinuation;
    swift_beginAccess();
    outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v5, v7 + v10, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
    swift_endAccess();
  }
}

uint64_t LACUIRatchetViewModel.beginDelayText.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_options);
  v12[0] = *MEMORY[0x277D23F38];
  AnyHashable.init<A>(_:)();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v12);
    outlined destroy of AnyHashable(v11);
    if (swift_dynamicCast())
    {
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    outlined destroy of AnyHashable(v11);
    v5 = 0;
  }

  if (*(v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isStrictModeEnabled) == 1)
  {
    v10 = *MEMORY[0x277D23F50];
    AnyHashable.init<A>(_:)();
    if (*(v2 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v7 & 1) != 0))
    {
      outlined init with copy of Any(*(v2 + 56) + 32 * v6, v12);
      outlined destroy of AnyHashable(v11);
      if (swift_dynamicCast())
      {
        v5 = v10;
      }
    }

    else
    {
      outlined destroy of AnyHashable(v11);
    }
  }

  return v5;
}

uint64_t LACUIRatchetViewModel.beginDelayLocationWarning.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_options);
  v7[0] = *MEMORY[0x277D23F48];
  AnyHashable.init<A>(_:)();
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v3 & 1) != 0))
  {
    outlined init with copy of Any(*(v1 + 56) + 32 * v2, v7);
    outlined destroy of AnyHashable(v6);
    result = swift_dynamicCast();
    if (result)
    {
      return v5;
    }
  }

  else
  {
    outlined destroy of AnyHashable(v6);
    return 0;
  }

  return result;
}

uint64_t LACUIRatchetViewModel.beginDelayTitle.getter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_options);
  v8[0] = *a1;
  AnyHashable.init<A>(_:)();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v8);
    outlined destroy of AnyHashable(v7);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of AnyHashable(v7);
    return 0;
  }
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationVGMd, &_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI19LACUIAngelPresenterC11HostedScene33_9F3F8244F22CF33ABB39A642650B213BLLVGMd, &_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI19LACUIAngelPresenterC11HostedScene33_9F3F8244F22CF33ABB39A642650B213BLLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    v10 = MEMORY[0x277D84F90];
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

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5NeverOGMd, &_sScTyyts5NeverOGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10Foundation12URLQueryItemVGGMd, &_ss23_ContiguousArrayStorageCySay10Foundation12URLQueryItemVGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation12URLQueryItemVGMd, &_sSay10Foundation12URLQueryItemVGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation13URLComponentsVGMd, &_ss23_ContiguousArrayStorageCy10Foundation13URLComponentsVGMR);
  v10 = *(type metadata accessor for URLComponents() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URLComponents() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo23LACUserInterfaceRequestC7request_So16LACXPCConnection_p10connectiontGMd, &_ss23_ContiguousArrayStorageCySo23LACUserInterfaceRequestC7request_So16LACXPCConnection_p10connectiontGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23LACUserInterfaceRequestC7request_So16LACXPCConnection_p10connectiontMd, &_sSo23LACUserInterfaceRequestC7request_So16LACXPCConnection_p10connectiontMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
  __swift_destroy_boxed_opaque_existential_0(v11);
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

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
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
          return MEMORY[0x277D84F90];
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

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of AnyHashable(a1, a2);

  return outlined init with copy of Any(a1 + 40, a2 + 40);
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        outlined init with take of Any((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        outlined init with copy of AnyHashable(v23, &v36);
        outlined init with copy of Any(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = outlined init with take of Any(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        outlined init with copy of Any(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = outlined init with take of Any(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v21);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return outlined init with take of Any(a1, v17);
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *specialized LazyMapSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    outlined init with copy of AnyHashable(*(v3 + 48) + 40 * v13, &v17);
    outlined init with copy of Any(*(v3 + 56) + 32 * v13, v22);
    v23 = v17;
    v24 = v18;
    *&v25 = v19;
    result = outlined init with take of Any(v22, (&v25 + 8));
    v15 = *(&v24 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v16 = v1[5];
      v17 = v23;
      *&v18 = v24;
      *(&v18 + 1) = v15;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16(&v17);
      return outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v17, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized static LACUIRatchetViewModel.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = type metadata accessor for LACUIRatchetViewModel.State(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = (&v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v54 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v54 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v54 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI21LACUIRatchetViewModelC5StateO_AEtMd, &_s25LocalAuthenticationCoreUI21LACUIRatchetViewModelC5StateO_AEtMR);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v54 - v20;
  v22 = type metadata accessor for LACUIAuthCountdownConfiguration(0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v54 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v54 - v25;
  v27 = &v21[*(v19 + 56)];
  outlined init with copy of LACUIRatchetViewModel.State(a1, v21);
  outlined init with copy of LACUIRatchetViewModel.State(v55, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        outlined init with copy of LACUIRatchetViewModel.State(v21, v9);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v29 = v21;
          v12 = v9;
          goto LABEL_30;
        }

        outlined destroy of LACUIRatchetViewModel.State(v9, type metadata accessor for LACUIAuthCountdownConfiguration);
      }

      else
      {
        outlined init with copy of LACUIRatchetViewModel.State(v21, v15);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v29 = v21;
          v12 = v15;
          goto LABEL_30;
        }

        outlined destroy of LACUIRatchetViewModel.State(v15, type metadata accessor for LACUIAuthCountdownConfiguration);
      }
    }

    else
    {
      outlined init with copy of LACUIRatchetViewModel.State(v21, v17);
      if (!swift_getEnumCaseMultiPayload())
      {
        v29 = v21;
        v12 = v17;
        goto LABEL_30;
      }

      outlined destroy of LACUIRatchetViewModel.State(v17, type metadata accessor for LACUIAuthCountdownConfiguration);
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      outlined init with copy of LACUIRatchetViewModel.State(v21, v12);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v29 = v21;
LABEL_30:
        outlined init with take of LACUIRatchetViewModel.State(v12, v26, type metadata accessor for LACUIAuthCountdownConfiguration);
        v39 = v54;
        outlined init with take of LACUIRatchetViewModel.State(v27, v54, type metadata accessor for LACUIAuthCountdownConfiguration);
        outlined destroy of LACUIRatchetViewModel.State(v29, type metadata accessor for LACUIRatchetViewModel.State);
        v38 = specialized static LACUIAuthCountdownConfiguration.== infix(_:_:)(v26, v39);
        outlined destroy of LACUIRatchetViewModel.State(v39, type metadata accessor for LACUIAuthCountdownConfiguration);
        v40 = v26;
        v41 = type metadata accessor for LACUIAuthCountdownConfiguration;
LABEL_66:
        outlined destroy of LACUIRatchetViewModel.State(v40, v41);
        return v38 & 1;
      }

      outlined destroy of LACUIRatchetViewModel.State(v12, type metadata accessor for LACUIAuthCountdownConfiguration);
      goto LABEL_28;
    }

    outlined init with copy of LACUIRatchetViewModel.State(v21, v6);
    v31 = *v6;
    v30 = v6[1];
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v32 = v21;
      v33 = *v27;
      v34 = *(v27 + 1);
      if (v31)
      {
        v35 = Dictionary.description.getter();
        v37 = v36;

        if (!v33)
        {
          if (!v37)
          {
LABEL_45:
            if (v30)
            {
              v57 = v30;
              v47 = v30;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
              type metadata accessor for LACDTORatchetStateComposite(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
              v48 = swift_dynamicCast();
              v49 = v56;
              if (v48)
              {
                v50 = v56;
              }

              else
              {
                v50 = 0;
              }

              if (!v34)
              {
                if (v50)
                {
                  v34 = 0;
LABEL_60:

                  goto LABEL_64;
                }

                v51 = 0;
                goto LABEL_62;
              }
            }

            else
            {
              v50 = 0;
              v51 = 0;
              if (!v34)
              {
                goto LABEL_62;
              }
            }

            v57 = v34;
            v52 = v34;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
            type metadata accessor for LACDTORatchetStateComposite(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
            if (swift_dynamicCast())
            {
              v51 = v56;
            }

            else
            {
              v51 = 0;
            }

            if (v50)
            {
              if (v51)
              {
                v38 = static NSObject.== infix(_:_:)();

LABEL_65:
                v40 = v32;
                v41 = type metadata accessor for LACUIRatchetViewModel.State;
                goto LABEL_66;
              }

              v49 = v50;
              goto LABEL_60;
            }

LABEL_62:

            if (!v51)
            {
              v38 = 1;
              goto LABEL_65;
            }

            goto LABEL_64;
          }

          goto LABEL_43;
        }
      }

      else
      {
        if (!v33)
        {
          goto LABEL_45;
        }

        v37 = 0;
        v35 = 0;
      }

      v42 = Dictionary.description.getter();
      v44 = v43;

      if (v37)
      {
        if (v44)
        {
          if (v35 == v42 && v37 == v44)
          {

            goto LABEL_45;
          }

          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v46)
          {
            goto LABEL_45;
          }

LABEL_64:
          v38 = 0;
          goto LABEL_65;
        }
      }

      else if (!v44)
      {
        goto LABEL_45;
      }

LABEL_43:

      goto LABEL_64;
    }

LABEL_28:
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v21, &_s25LocalAuthenticationCoreUI21LACUIRatchetViewModelC5StateO_AEtMd, &_s25LocalAuthenticationCoreUI21LACUIRatchetViewModelC5StateO_AEtMR);
    v38 = 0;
    return v38 & 1;
  }

  if (EnumCaseMultiPayload == 5)
  {
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_28;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 6)
  {
    goto LABEL_28;
  }

  outlined destroy of LACUIRatchetViewModel.State(v21, type metadata accessor for LACUIRatchetViewModel.State);
  v38 = 1;
  return v38 & 1;
}

uint64_t outlined init with copy of LACUIRatchetViewModel.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LACUIRatchetViewModel.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id specialized LACUIRatchetViewModel.init(contextProvider:options:configuration:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 16);
  v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isInvalidated] = 0;
  type metadata accessor for LACUIRatchetViewModel.State(0);
  swift_storeEnumTagMultiPayload();
  v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isRunning] = 0;
  *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___stateSubject] = 0;
  *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___learnMoreSubject] = 0;
  *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___tapToRadarSubject] = 0;
  v9 = &v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___ratchetIdentifier];
  *v9 = 0;
  v9[1] = 0;
  *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___context] = 0;
  *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_tasks] = MEMORY[0x277D84F90];
  v10 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_uiContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGMd, _sScCySDys11AnyHashableVypGSgs5Error_pGMR);
  (*(*(v11 - 8) + 56))(&v3[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_expirationDate;
  v13 = type metadata accessor for Date();
  v14 = *(*(v13 - 8) + 56);
  v14(&v3[v12], 1, 1, v13);
  v14(&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_gracePeriodExpirationDate], 1, 1, v13);
  v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isStrictModeEnabled] = 0;
  *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_options] = a2;
  v15 = &v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_configuration];
  *v15 = v6;
  *(v15 + 1) = v7;
  v15[16] = v8;
  *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_contextProvider] = a1;
  v16 = objc_allocWithZone(MEMORY[0x277D24038]);
  swift_unknownObjectRetain();
  v17 = [v16 initWithContextProvider_];
  *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_ratchetManager] = v17;
  v19.receiver = v3;
  v19.super_class = type metadata accessor for LACUIRatchetViewModel(0);
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t type metadata accessor for LACUIRatchetViewModel.State(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25608BDF0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in LACUIRatchetViewModel.start()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in LACUIRatchetViewModel.start();

  return closure #1 in LACUIRatchetViewModel.start()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in LACUIRatchetViewModel.stop(withReason:invalidate:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in LACUIRatchetViewModel.start();

  return closure #1 in LACUIRatchetViewModel.stop(withReason:invalidate:)(a1, v4, v5, v6, v7, v8, v9);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v52 = a1;
  v53 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v54 = v8;
  v55 = 0;
  v56 = v11 & v9;
  v57 = a2;
  v58 = a3;

  specialized LazyMapSequence.Iterator.next()(&v48);
  if (!*(&v49 + 1))
  {
    goto LABEL_25;
  }

  v45 = v48;
  v46 = v49;
  v47 = v50;
  outlined init with take of Any(v51, v44);
  v12 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = result;
    specialized _NativeDictionary.copy()();
    result = v24;
    v21 = *a5;
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v21 = *a5;
  if (v19)
  {
LABEL_11:
    v22 = result;
    outlined destroy of AnyHashable(&v45);
    v23 = (v21[7] + 32 * v22);
    __swift_destroy_boxed_opaque_existential_0(v23);
    outlined init with take of Any(v44, v23);
    goto LABEL_15;
  }

LABEL_13:
  v21[(result >> 6) + 8] |= 1 << result;
  v25 = v21[6] + 40 * result;
  v26 = v45;
  v27 = v46;
  *(v25 + 32) = v47;
  *v25 = v26;
  *(v25 + 16) = v27;
  result = outlined init with take of Any(v44, (v21[7] + 32 * result));
  v28 = v21[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v17)
  {
    v21[2] = v29;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v48);
    if (*(&v49 + 1))
    {
      v19 = 1;
      do
      {
        v45 = v48;
        v46 = v49;
        v47 = v50;
        outlined init with take of Any(v51, v44);
        v32 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v17 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v17)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, 1);
          result = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;
          outlined destroy of AnyHashable(&v45);
          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v31);
          outlined init with take of Any(v44, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = v38[6] + 40 * result;
          v40 = v45;
          v41 = v46;
          *(v39 + 32) = v47;
          *v39 = v40;
          *(v39 + 16) = v41;
          result = outlined init with take of Any(v44, (v38[7] + 32 * result));
          v42 = v38[2];
          v17 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v17)
          {
            goto LABEL_27;
          }

          v38[2] = v43;
        }

        specialized LazyMapSequence.Iterator.next()(&v48);
      }

      while (*(&v49 + 1));
    }

LABEL_25:
    outlined consume of [AnyHashable : Any].Iterator._Variant(v52);
  }

LABEL_27:
  __break(1u);
  return result;
}

id specialized static LACUIRatchetViewModel.mapError(_:)(void *a1)
{
  v2 = type metadata accessor for CancellationError();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    v7 = _convertErrorToNSError(_:)();
    v8 = [v7 domain];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        v23[1] = a1;
        v15 = a1;
        v16 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        if (swift_dynamicCast())
        {
          (*(v3 + 8))(v5, v2);
          v17 = [objc_opt_self() errorWithCode_];
        }

        else
        {
          v17 = a1;
        }

        v18 = objc_opt_self();
        v19 = *MEMORY[0x277D23E88];
        v20 = _convertErrorToNSError(_:)();
        v21 = [v18 errorWithCode:v19 underlyingError:v20];

        return v21;
      }
    }
  }

  return a1;
}

uint64_t sub_25608C6B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in LACUIRatchetViewModel.ratchetStateDidChange(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in LACUIRatchetViewModel.start();

  return closure #1 in LACUIRatchetViewModel.ratchetStateDidChange(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in LACUIRatchetViewModel.set(state:)(uint64_t a1)
{
  v4 = *(type metadata accessor for LACUIRatchetViewModel.State(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in LACUIRatchetViewModel.start();

  return closure #1 in LACUIRatchetViewModel.set(state:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_25608C958@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25608CA24@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x120))();
  *a2 = result & 1;
  return result;
}

uint64_t keypath_setTm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_25608CAE8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1A0))();
  *a2 = result;
  return result;
}

void type metadata completion function for LACUIRatchetViewModel(uint64_t a1)
{
  type metadata accessor for LACUIRatchetViewModel.State(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CheckedContinuation<[AnyHashable : Any]?, Error>?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date?(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of LACUIRatchetViewModel.stop(withReason:invalidate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x260);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in LACUIRatchetViewModel.start();

  return v11(a1, a2, a3);
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

void type metadata completion function for LACUIRatchetViewModel.State(uint64_t a1)
{
  type metadata accessor for (configuration: LACUIAuthCountdownConfiguration)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (result: [AnyHashable : Any]?, error: Error?)(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (configuration: LACUIAuthCountdownConfiguration)()
{
  if (!lazy cache variable for type metadata for (configuration: LACUIAuthCountdownConfiguration))
  {
    v0 = type metadata accessor for LACUIAuthCountdownConfiguration(0);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (configuration: LACUIAuthCountdownConfiguration));
    }
  }
}

uint64_t outlined assign with copy of LACUIRatchetViewModel.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LACUIRatchetViewModel.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined consume of LACUIAuthImageConfiguration?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of LACUIAuthImageConfiguration(a1, a2);
  }

  return a1;
}

uint64_t sub_25608D500()
{
  MEMORY[0x259C59B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_3Tm(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();

  a1(*(v2 + 48));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t partial apply for closure #1 in LACUIRatchetViewModel.confirmBiometry(completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:);

  return closure #1 in LACUIRatchetViewModel.confirmBiometry(completion:)(a1, v4, v5, v6, v7, v8);
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined destroy of LACUIRatchetViewModel.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(type metadata accessor for LACUIRatchetViewModel.State(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_15;
    }
  }

  else if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
    }

    goto LABEL_15;
  }

  outlined consume of LACUIAuthImageConfiguration(*v5, *(v5 + 8));

  v7 = type metadata accessor for LACUIAuthCountdownConfiguration(0);
  v8 = v5 + v7[7];
  v9 = type metadata accessor for LACUIAuthCountdownDelayConfiguration(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {

    v10 = *(v9 + 20);
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  v12 = v5 + v7[10];
  if (*(v12 + 8))
  {

    if (*(v12 + 64) != 255)
    {
      outlined consume of LACUIAuthImageConfiguration(*(v12 + 48), *(v12 + 56));
    }
  }

  v13 = v5 + v7[11];
  if (*(v13 + 8))
  {

    if (*(v13 + 64) != 255)
    {
      outlined consume of LACUIAuthImageConfiguration(*(v13 + 48), *(v13 + 56));
    }
  }

LABEL_15:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t lazy protocol witness table accessor for type CancellationError and conformance CancellationError()
{
  result = lazy protocol witness table cache variable for type CancellationError and conformance CancellationError;
  if (!lazy protocol witness table cache variable for type CancellationError and conformance CancellationError)
  {
    type metadata accessor for CancellationError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CancellationError and conformance CancellationError);
  }

  return result;
}

uint64_t outlined assign with take of LACUIAuthCountdownDelayConfiguration?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for LACDTORatchetStateComposite(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t outlined init with take of LACUIRatchetViewModel.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t key path getter for LACUIFaceIDSpinnerViewModel.state : LACUIFaceIDSpinnerViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t LACUIFaceIDSpinnerViewModel.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_25608DCF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t LACUIFaceIDSpinnerViewModel.state.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}