void RecentsListViewController.joinConversationLink(_:wantsStagingArea:)(void *a1, char a2)
{
  v3 = v2;
  if (specialized Array.count.getter())
  {
    v6 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8TUHandleC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  objc_allocWithZone(MEMORY[0x1E69D8C10]);
  v7 = @nonobjc TUJoinConversationRequest.init(conversationLink:otherInvitedHandles:sendLetMeInRequest:)(a1, v6, 0);
  [v7 setVideoEnabled_];
  if (one-time initialization token for joinLink != -1)
  {
    swift_once();
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationInvitationPreference, 0x1E69D8B68);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationInvitationPreference and conformance NSObject, &lazy cache variable for type metadata for TUConversationInvitationPreference, 0x1E69D8B68);
  isa = Set._bridgeToObjectiveC()().super.isa;
  [v7 setInvitationPreferences_];

  [v7 setWantsStagingArea_];
  v9 = [v7 setOriginatingUIType_];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x4B8))(v9);
  if (v10)
  {
    v12 = v10;
    v13 = v11;
    v14 = [objc_opt_self() sharedInstance];
    v15 = [v14 callFilterController];

    LODWORD(v14) = [v15 shouldRestrictJoinConversationRequest:v7 performSynchronously:1];
    if (v14)
    {
      v16 = v7;
      v12();

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v12, v13);
      goto LABEL_11;
    }

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v12, v13);
  }

  v16 = [objc_opt_self() sharedInstance];
  [v16 launchAppForJoinRequest_];

LABEL_11:
}

void RecentsListViewController.joinOngoingConversation(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 state])
  {
    v9 = [objc_opt_self() faceTimeShowInCallUIURL];
    if (v9)
    {
      v10 = v9;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v11);
      v13 = v12;
      (*(v5 + 8))(v8, v4);
      TUOpenURL();
    }

    else
    {
      __break(1u);
    }

    return;
  }

  v14 = TUConversation.joinConversationRequest()();
  v15 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x4B8))();
  if (!v15)
  {
    goto LABEL_8;
  }

  v17 = v15;
  v18 = v16;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 callFilterController];

  LODWORD(v19) = [v20 shouldRestrictJoinConversationRequest:v14 performSynchronously:1];
  if (!v19)
  {
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v17, v18);
LABEL_8:
    v23 = [objc_opt_self() sharedInstance];
    [v23 launchAppForJoinRequest_];

    goto LABEL_9;
  }

  v23 = v14;
  v17();

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v17, v18);
LABEL_9:
  v21 = v23;
}

id RecentsListViewController.conversationLink(at:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_146();
  v3 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  RecentsListViewController.recentsCallItem(at:)();
  OUTLINED_FUNCTION_115(v0, 1, v3);
  if (v5)
  {
    outlined destroy of CallControlsService?(v0, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_3_66();
    OUTLINED_FUNCTION_44_0();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
    RecentsCallItem.conversationLink.getter();
    OUTLINED_FUNCTION_0_74();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
    v6 = v11;
    if (v11)
    {
      v7 = v11;
      v8 = OUTLINED_FUNCTION_44_0();
      outlined consume of ConversationLink?(v8, v9, v12);
    }
  }

  return v6;
}

Swift::Void __swiftcall RecentsListViewController.presentOnboardingViewController()()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_11_2();
    swift_once();
  }

  if (Features.isNameAndPhotoC3Enabled.getter())
  {
    OUTLINED_FUNCTION_257(v0, sel_dismissViewControllerAnimated_completion_);
    v2 = *&v0[OBJC_IVAR___FTRecentsListViewController_onboardingController];
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sharedInstance];
    v6 = [v5 contactStore];

    [v4 presentOnboardingControllerFrom:v1 withContactStore:v6];
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_41_0();

    os_log(_:dso:log:type:_:)(v7);
  }
}

Swift::Void __swiftcall RecentsListViewController.updateEditing(_:)(Swift::Bool a1)
{
  [v1 setEditing:a1 animated:1];

  RecentsListViewController.updateLeftBarButton()();
}

void RecentsListViewController.beginEditing()()
{
  [v0 setEditing:1 animated:1];

  RecentsListViewController.updateLeftBarButton()();
}

void RecentsListViewController.endEditing()()
{
  [v0 setEditing:0 animated:1];

  RecentsListViewController.updateLeftBarButton()();
}

char *closure #1 in RecentsListViewController.editMenuItems.getter(uint64_t a1, void *a2)
{
  v6 = 0;
  v3 = objc_allocWithZone(type metadata accessor for PersonalNicknameMenuView());
  v4 = a2;
  return PersonalNicknameMenuView.init(displayContext:personalNicknameMenuViewDelegate:)(&v6, a2, &protocol witness table for RecentsListViewController);
}

void closure #2 in RecentsListViewController.editMenuItems.getter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + OBJC_IVAR___FTRecentsListViewController_snapController) startOnboardingOrEditForMode:1 fromViewController:Strong];
  }
}

void closure #1 in RecentsListViewController.selectActionItem.getter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong beginEditing];
}

void RecentsListViewController.doneEditingBarButtonItem.getter()
{
  type metadata accessor for RecentsListViewController(0);
  objc_allocWithZone(MEMORY[0x1E69DC708]);
  v1 = v0;
  @nonobjc UIBarButtonItem.init(barButtonSystemItem:target:action:)();
}

uint64_t RecentsListViewController.getFilterMenuBadge()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UIBarButtonItem.Badge();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (RecentsListViewController.getFilterMenuBadgeCount()() < 1)
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }

  else
  {
    static UIBarButtonItem.Badge.count(_:)();
    v6 = [objc_opt_self() systemGreenColor];
    UIBarButtonItem.Badge.backgroundColor.setter();
    (*(v3 + 32))(a1, v5, v2);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
  }
}

id RecentsListViewController.newCallBarButtonItem.getter()
{
  v1 = type metadata accessor for CapsuleButtonViewModel();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = type metadata accessor for CapsuleButton.ContentType();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB013CapsuleButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy014CommunicationsB013CapsuleButtonVAA14_PaddingLayoutVGMR);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = [objc_opt_self() conversationKit];
  v27._object = 0xE000000000000000;
  v11.value._countAndFlagsBits = 0x61737265766E6F43;
  v11.value._object = 0xEF74694B6E6F6974;
  v12._countAndFlagsBits = 5719374;
  v12._object = 0xE300000000000000;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v11, v10, v13, v27);

  v5->_countAndFlagsBits = 0x69662E6F65646976;
  v5->_object = 0xEA00000000006C6CLL;
  v5[1] = v14;
  (*(v3 + 104))(v5, *MEMORY[0x1E69959C0], v2);
  *(swift_allocObject() + 16) = v0;
  v15 = v0;
  CapsuleButtonViewModel.init(badgeCount:)();
  CapsuleButton.init(content:action:largeScale:viewModel:)();
  v16 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v17 = &v9[*(v7 + 44)];
  *v17 = v16;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVy014CommunicationsB013CapsuleButtonVAA14_PaddingLayoutVGGMd, &_s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVy014CommunicationsB013CapsuleButtonVAA14_PaddingLayoutVGGMR));
  v23 = _UIHostingView.init(rootView:)();
  v24 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];

  return v24;
}

Swift::Int __swiftcall RecentsListViewController.getFilterMenuBadgeCount()()
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x630))();
  OUTLINED_FUNCTION_27_15();
  (*(v2 + 184))();
  OUTLINED_FUNCTION_247();

  CurrentValueSubject.value.getter();

  return v4;
}

void closure #1 in RecentsListViewController.generateFilterMenu()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FilterMenuViewModel.Action();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v4 + 104))(v6, *MEMORY[0x1E6995A60], v3);
    v9 = specialized == infix<A>(_:_:)(a1, v6);
    (*(v4 + 8))(v6, v3);
    if (v9)
    {
      RecentsListViewController.handleCallFilteringAction()();
    }

    else
    {
      (*(v4 + 16))(v6, a1, v3);
      (*((*MEMORY[0x1E69E7D40] & *v8) + 0x570))(v6);
    }
  }
}

void RecentsListViewController.handleCallFilteringAction()()
{
  v1 = v0;
  v2 = type metadata accessor for FilterMenuViewModel.Style();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.conversationKit);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BBC58000, v7, v8, "Did tap call filtering button", v9, 2u);
    MEMORY[0x1BFB23DF0](v9, -1, -1);
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E69D8D10]) init];
  v11 = [v10 isFilterAsNewCallersEnabledForFaceTime];

  if (v11 & 1) != 0 || (TUFilterAsNewCallersSeenOnboardingScreenForFaceTime())
  {

    RecentsListViewController.goToCallFilteringInSettings()();
  }

  else
  {
    type metadata accessor for FilterOnboardingViewController();
    (*(v3 + 104))(v5, *MEMORY[0x1E6995A58], v2);
    v12 = static FilterOnboardingViewController.onboardingScreen(style:continueAction:dismissAction:target:)();
    (*(v3 + 8))(v5, v2);
    [v1 presentViewController:v12 animated:1 completion:0];
    TUSetFilterAsNewCallersSeenOnboardingScreenForFaceTime();
    v13 = *&v1[OBJC_IVAR___FTRecentsListViewController_callFilteringOnboardingViewController];
    *&v1[OBJC_IVAR___FTRecentsListViewController_callFilteringOnboardingViewController] = v12;
  }
}

void RecentsListViewController.goToCallFilteringInSettings()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v18 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.conversationKit);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1BBC58000, v8, v9, "RecentsListViewController: Did call goToCallFilteringInSettings", v10, 2u);
    MEMORY[0x1BFB23DF0](v10, -1, -1);
  }

  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 5)
  {
    v13 = [objc_opt_self() defaultCenter];
    v19 = v13;
    if (one-time initialization token for showCallFilteringSettings != -1)
    {
      swift_once();
      v13 = v19;
    }

    [v13 postNotificationName:static NSNotificationName.showCallFilteringSettings object:0];
    v14 = v19;
  }

  else
  {
    URL.init(string:)();
    if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
    {
      outlined destroy of CallControlsService?(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      URL._bridgeToObjectiveC()(v15);
      v17 = v16;
      TUOpenSensitiveURL();

      (*(v4 + 8))(v6, v3);
    }
  }
}

id RecentsListViewController.enableCallFiltering()()
{
  v1 = v0;
  if ([*&v0[OBJC_IVAR___FTRecentsListViewController_featureFlags] deviceExpertMigrationEnabled])
  {
    v2 = RecentsListViewController.configurationProvider.getter();
    [v2 setFilterAsNewCallersEnabledForFaceTime_];
  }

  else
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v7 = @nonobjc NSUserDefaults.init(suiteName:)(v3, v5);
    if (!v7)
    {
      goto LABEL_6;
    }

    v2 = v7;
    [v7 setBool:1 forKey:*MEMORY[0x1E69D8E90]];
  }

LABEL_6:

  return [v1 dismissCallFilteringOnboarding];
}

void RecentsListViewController.dismissCallFilteringOnboarding()()
{
  v1 = OBJC_IVAR___FTRecentsListViewController_callFilteringOnboardingViewController;
  v2 = *(v0 + OBJC_IVAR___FTRecentsListViewController_callFilteringOnboardingViewController);
  if (v2)
  {
    [v2 dismissViewControllerAnimated:1 completion:0];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

Swift::Void __swiftcall RecentsListViewController.configurationChanged()()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_1();
  v49 = v5;
  OUTLINED_FUNCTION_4_24();
  v6 = type metadata accessor for FilterMenuViewModel.Action();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_20();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_201(v10);
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR___FTRecentsListViewController_filterMenuViewModel;
  v12 = *(v0 + OBJC_IVAR___FTRecentsListViewController_filterMenuViewModel);
  if (v12)
  {
    v50 = v10;
    v13 = v12;
    v14 = FilterMenuViewModel.actions.getter();

    v48 = *MEMORY[0x1E6995A90];
    v47 = *(v8 + 104);
    v15 = v47();
    MEMORY[0x1EEE9AC00](v15);
    OUTLINED_FUNCTION_302_0();
    LOBYTE(v13) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v16, v14);

    v17 = *(v8 + 8);
    v18 = OUTLINED_FUNCTION_157();
    v17(v18);
    if (v13)
    {
      v19 = RecentsListViewController.configurationProvider.getter();
      v20 = [v19 isFilterAsNewCallersEnabledForFaceTime];

      if ((v20 & 1) == 0)
      {
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_1_20();
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v36, static Logger.conversationKit);
        v31 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        v26 = v50;
        if (!OUTLINED_FUNCTION_18_0(v37))
        {
          goto LABEL_16;
        }

        v38 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_296(v38);
        OUTLINED_FUNCTION_120(&dword_1BBC58000, v39, v40, "Requests toggled off, updating UI");
        goto LABEL_15;
      }
    }

    v21 = *(v2 + v11);
    if (v21)
    {
      v22 = v21;
      v23 = FilterMenuViewModel.actions.getter();

      v24 = (v47)(v1, v48, v6);
      MEMORY[0x1EEE9AC00](v24);
      OUTLINED_FUNCTION_302_0();
      LOBYTE(v22) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v25, v23);
      v26 = v50;

      v27 = OUTLINED_FUNCTION_157();
      v17(v27);
      if ((v22 & 1) == 0)
      {
        v28 = RecentsListViewController.configurationProvider.getter();
        v29 = [v28 isFilterAsNewCallersEnabledForFaceTime];

        if (v29)
        {
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_1_20();
            swift_once();
          }

          v30 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v30, static Logger.conversationKit);
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.default.getter();
          if (!OUTLINED_FUNCTION_18_0(v32))
          {
            goto LABEL_16;
          }

          v33 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_296(v33);
          OUTLINED_FUNCTION_120(&dword_1BBC58000, v34, v35, "Requests toggled on, updating UI");
LABEL_15:
          OUTLINED_FUNCTION_2_2();
LABEL_16:

          v41 = type metadata accessor for TaskPriority();
          OUTLINED_FUNCTION_168(v49, v42, v43, v41);
          v44 = type metadata accessor for MainActor();

          static MainActor.shared.getter();
          OUTLINED_FUNCTION_182();
          OUTLINED_FUNCTION_109();
          v45 = swift_allocObject();
          v46 = MEMORY[0x1E69E85E0];
          v45[2] = v44;
          v45[3] = v46;
          v45[4] = partial apply for closure #1 in RecentsListViewController.configurationChanged();
          v45[5] = v26;
          type metadata completion function for SyncedScreeningAlphaGradientView();
          _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
        }
      }
    }
  }

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in RecentsListViewController.configurationChanged()(uint64_t a1)
{
  v1 = type metadata accessor for FilterMenuViewModel.Action();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    RecentsListViewController.updateFilterMenu()();
    v10 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v9) + 0x568))();
    v11 = *(v2 + 104);
    v11(v4, *MEMORY[0x1E6995A90], v1);
    v12 = specialized == infix<A>(_:_:)(v7, v4);
    v13 = *(v2 + 8);
    v13(v4, v1);
    v14 = (v13)(v7, v1);
    if (v12)
    {
      v11(v7, *MEMORY[0x1E6995A70], v1);
      (*((*v10 & *v9) + 0x570))(v7);
    }

    else
    {
      v15 = (*((*v10 & *v9) + 0x630))(v14);
      v16 = (*(*v15 + 184))(v15);

      (*((*v10 & *v16) + 0x408))(0, 0);
    }
  }
}

uint64_t closure #2 in RecentsListViewController.configurationChanged()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in RecentsListViewController.configurationChanged(), v7, v6);
}

uint64_t closure #2 in RecentsListViewController.configurationChanged()()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 16);

  v1(v2);
  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t closure #3 in RecentsListViewController.configurationChanged()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #3 in RecentsListViewController.configurationChanged(), v7, v6);
}

void RecentsListViewController.didSelect(_:didSelectItemAt:)()
{
  OUTLINED_FUNCTION_331();
  OUTLINED_FUNCTION_256();
  if ([*(v1 + OBJC_IVAR___FTRecentsListViewController_featureFlags) recentsCallTapTargetsEnabled])
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v3 = OUTLINED_FUNCTION_205();
    v5 = [v3 v4];

    if (!v5)
    {
      v5 = v0;
    }

    v6 = OUTLINED_FUNCTION_316();
    RecentsListViewController.showDetailsAtIndexPath(_:from:)(v6);
  }

  else
  {
    RecentsListViewController.joinCall(at:)();
  }

  [v0 deselectItemAtIndexPath:IndexPath._bridgeToObjectiveC()().super.isa animated:1];
  OUTLINED_FUNCTION_9_17();
}

void RecentsListViewController.collectionView(_:didSelectItemAt:)()
{
  OUTLINED_FUNCTION_256();
  if (((*((*MEMORY[0x1E69E7D40] & *v1) + 0x5F8))() & 1) == 0)
  {
    if ([v0 isEditing])
    {
      v2 = RecentsListViewController.deleteButtonItem.getter();
      outlined bridged method (pb) of @objc UICollectionView.indexPathsForSelectedItems.getter(v0);
      [v2 setEnabled_];
    }

    else
    {
      OUTLINED_FUNCTION_44_0();

      RecentsListViewController.didSelect(_:didSelectItemAt:)();
    }
  }
}

void RecentsListViewController.collectionView(_:didDeselectItemAt:)(void *a1)
{
  if (((*((*MEMORY[0x1E69E7D40] & *v1) + 0x5F8))() & 1) == 0 && [a1 isEditing])
  {
    v3 = RecentsListViewController.deleteButtonItem.getter();
    outlined bridged method (pb) of @objc UICollectionView.indexPathsForSelectedItems.getter(a1);
    [v3 setEnabled_];
  }
}

void RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v67 = type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v69 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_1();
  v70 = v10;
  v11 = OUTLINED_FUNCTION_4_24();
  v71 = type metadata accessor for RecentsCallItem(v11);
  OUTLINED_FUNCTION_1();
  v65 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v66 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_83_1();
  v16 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v74 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v73 = v19;
  v79 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_223();
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v77 = v23;
  v78 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v72 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_149();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_32();
  v29 = v28;
  v30 = RecentsListViewController.conversationLink(at:)();
  if (v30)
  {
    v31 = v30;
    v75 = v16;
    v76 = v4;
    v68 = v0;
    v32 = [v30 URL];
    if (v32)
    {
      v33 = v32;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = v77;
      v35 = *(v77 + 32);
      v70 = v77 + 32;
      v71 = v35;
      v36 = v29;
      v64 = v29;
      v35(v29, v1, v78);
      v38 = v74;
      v37 = v75;
      v67 = *(v74 + 16);
      v67(v2, v76, v75);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v37);
      v42 = v68;
      OUTLINED_FUNCTION_30_2(v68 + OBJC_IVAR___FTRecentsListViewController_indexPathForMenu, &v80);
      outlined assign with take of RecentsCallItem?();
      swift_endAccess();
      v69 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIContextMenuConfiguration, 0x1E69DC8D8);
      v43 = v34;
      OUTLINED_FUNCTION_284();
      v44 = v72;
      v45 = v36;
      v46 = v78;
      v47(v72, v45, v78);
      v67(v79, v76, v37);
      v48 = (*(v43 + 80) + 16) & ~*(v43 + 80);
      v49 = (v25 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
      v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
      v51 = (*(v38 + 80) + v50 + 8) & ~*(v38 + 80);
      v52 = swift_allocObject();
      v71(v52 + v48, v44, v46);
      *(v52 + v49) = v42;
      *(v52 + v50) = v31;
      (*(v38 + 32))(v52 + v51, v79, v75);
      v53 = v42;
      type metadata completion function for SyncedScreeningAlphaGradientView();
      UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)();
      (*(v77 + 8))(v64, v46);
      goto LABEL_10;
    }

    v0 = v68;
  }

  OUTLINED_FUNCTION_287();
  if (v54)
  {
    v55 = v70;
    v56 = v0;
    RecentsListViewController.recentsCallItem(at:)();
    v57 = v71;
    OUTLINED_FUNCTION_115(v55, 1, v71);
    if (v54)
    {
      outlined destroy of CallControlsService?(v55, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
    }

    else
    {
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
      v58 = type metadata accessor for SpamFlowController();
      v59 = OUTLINED_FUNCTION_328(v58);
      v81 = v57;
      v82 = &protocol witness table for RecentsCallItem;
      __swift_allocate_boxed_opaque_existential_1(&v80);
      OUTLINED_FUNCTION_1_72();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
      outlined init with take of TapInteractionHandler(&v80, v59 + 16);
      OUTLINED_FUNCTION_6_47();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 4 && ((1 << EnumCaseMultiPayload) & 0x19) != 0)
      {
        OUTLINED_FUNCTION_4_47();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIContextMenuConfiguration, 0x1E69DC8D8);
        OUTLINED_FUNCTION_1_72();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
        v61 = (v66 + ((*(v65 + 80) + 24) & ~*(v65 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
        v62 = swift_allocObject();
        *(v62 + 16) = v56;
        OUTLINED_FUNCTION_3_66();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
        *(v62 + v61) = v59;
        v63 = v56;
        type metadata completion function for SyncedScreeningAlphaGradientView();
        UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)();
        OUTLINED_FUNCTION_0_74();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
      }

      else
      {
        OUTLINED_FUNCTION_0_74();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();

        OUTLINED_FUNCTION_4_47();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_30_0();
}

Class closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v59 = a5;
  v52 = a3;
  v53 = a4;
  v54 = a2;
  v58 = type metadata accessor for IndexPath();
  v56 = *(v58 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v9 = @nonobjc UIImage.__allocating_init(systemName:)(0x642E6E6F2E636F64, 0xEA0000000000636FLL);
  v60 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
  v10 = objc_opt_self();
  v11 = [v10 conversationKit];
  v62._object = 0xE000000000000000;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13._object = 0x80000001BC4FC5B0;
  v13._countAndFlagsBits = 0xD000000000000010;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v62._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v62);

  (*(v7 + 16))(&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v54, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v15, &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v54 = v9;
  v51 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v17 = @nonobjc UIImage.__allocating_init(systemName:)(0xD000000000000013, 0x80000001BC4FC5D0);
  v18 = [v10 conversationKit];
  v63._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000011;
  v19._object = 0x80000001BC4FC5F0;
  v20.value._countAndFlagsBits = 0x61737265766E6F43;
  v20.value._object = 0xEF74694B6E6F6974;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v63._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v63);

  v22 = swift_allocObject();
  v23 = v52;
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v25 = v53;
  *(v24 + 16) = v53;
  *(v24 + 24) = v22;
  v50 = v17;
  v26 = v25;
  v53 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v27 = @nonobjc UIImage.__allocating_init(systemName:)(0x6873617274, 0xE500000000000000);
  v28 = [v10 conversationKit];
  v64._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0xD000000000000012;
  v29._object = 0x80000001BC4FC610;
  v30.value._countAndFlagsBits = 0x61737265766E6F43;
  v30.value._object = 0xEF74694B6E6F6974;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v64._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v64);

  v33 = v55;
  v32 = v56;
  v34 = v58;
  (*(v56 + 16))(v55, v59, v58);
  v35 = (*(v32 + 80) + 24) & ~*(v32 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v23;
  (*(v32 + 32))(v36 + v35, v33, v34);
  v37 = v27;
  v38 = v23;
  v39 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1BC4BC370;
  v41 = v51;
  v42 = v53;
  *(v40 + 32) = v51;
  *(v40 + 40) = v42;
  *(v40 + 48) = v39;
  v43 = v41;
  v44 = v42;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v61.value.super.isa = 0;
  v61.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v45, 0, v61, 1, 0xFFFFFFFFFFFFFFFFLL, v40, v48).super.super.isa;

  return isa;
}

void closure #1 in closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)()
{
  v2 = [objc_opt_self() generalPasteboard];
  v0 = URL.absoluteString.getter();
  outlined bridged method (mbnn) of @objc UIViewController.title.setter(v0, v1, v2, &selRef_setString_);
}

void closure #2 in closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69D8C20]) initWithTUConversationLink_];
  v4 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUStringShareItem, 0x1E69D8CF8);
  v5 = [objc_opt_self() conversationKit];
  v23._object = 0xE000000000000000;
  v6.value._countAndFlagsBits = 0x61737265766E6F43;
  v6.value._object = 0xEF74694B6E6F6974;
  v7._object = 0x80000001BC4F97A0;
  v7._countAndFlagsBits = 0xD000000000000010;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v23);

  v9 = TUStringShareItem.__allocating_init(message:)();
  type metadata accessor for LinkShareActivityViewController();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BC4BAA20;
  v11 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TULinkShareItem, 0x1E69D8C20);
  *(v10 + 32) = v3;
  *(v10 + 88) = v4;
  *(v10 + 56) = v11;
  *(v10 + 64) = v9;
  v12 = v3;
  v13 = v9;
  v14 = LinkShareActivityViewController.__allocating_init(activityItems:applicationActivities:)(v10, 0);
  [v14 setOverrideUserInterfaceStyle_];
  [v14 setAllowsCustomPresentationStyle_];
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = [Strong traitCollection];

      v20 = [v19 horizontalSizeClass];
      if (v20 == 2)
      {
        [v14 setModalPresentationStyle_];
      }
    }
  }

  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    [v21 presentViewController:v14 animated:1 completion:0];
  }
}

uint64_t closure #3 in closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x630))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BA940;
  (*(v6 + 16))(v8 + v7, a3, v5);
  (*(*v4 + 296))(v8);

  swift_allocObject();
  swift_unknownObjectUnownedInit();

  RecentsListViewController.removeRecentCallsAndReportIfNeeded(_:shouldDeleteAllItemsForContact:preparationHandler:)();
}

void closure #1 in closure #3 in closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(char a1, uint64_t a2)
{
  if (a1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    [Strong setEditing_];
  }
}

void UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)()
{
  OUTLINED_FUNCTION_321();
  v20 = v4;
  v21 = v5;
  OUTLINED_FUNCTION_244();
  v7 = v6;
  OUTLINED_FUNCTION_256();
  if (!v8)
  {
    v9 = 0;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v18 = v1;
  v19 = v7;
  OUTLINED_FUNCTION_1_25();
  OUTLINED_FUNCTION_301();
  v16 = thunk for @escaping @callee_guaranteed () -> (@owned UIViewController?);
  v17 = &block_descriptor_389;
  v9 = _Block_copy(v15);

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = v3;
  v19 = v2;
  OUTLINED_FUNCTION_1_25();
  OUTLINED_FUNCTION_301();
  v16 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  v17 = &block_descriptor_386;
  v10 = _Block_copy(v15);

LABEL_6:
  [swift_getObjCClassFromMetadata() configurationWithIdentifier:v0 previewProvider:v9 actionProvider:v10];
  v11 = OUTLINED_FUNCTION_33_0();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v11, v12);
  v13 = OUTLINED_FUNCTION_4_31();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v13, v14);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  OUTLINED_FUNCTION_273();
}

Class closure #2 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = type metadata accessor for RecentsCallItem(0) - 8;
  MEMORY[0x1EEE9AC00](v34);
  v29 = v3;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v4 = @nonobjc UIImage.__allocating_init(systemName:)(0x6873617274, 0xE500000000000000);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
  v31 = objc_opt_self();
  v5 = [v31 conversationKit];
  v37._object = 0xE000000000000000;
  v6.value._countAndFlagsBits = 0x61737265766E6F43;
  v6.value._object = 0xEF74694B6E6F6974;
  v7._object = 0x80000001BC4FC610;
  v7._countAndFlagsBits = 0xD000000000000012;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v37);

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  *(swift_allocObject() + 16) = v9;
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
  v33 = v4;
  v32 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v10 = SpamFlowController.determineFlow()();
  v11 = @nonobjc UIImage.__allocating_init(systemName:)(0x6961722E646E6168, 0xEB00000000646573);
  v12 = [v31 conversationKit];
  v38._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0x5045525F4D415053;
  v13._object = 0xEB0000000054524FLL;
  v14.value._countAndFlagsBits = 0x61737265766E6F43;
  v14.value._object = 0xEF74694B6E6F6974;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v38);

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  *(v17 + 24) = v16;
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
  v18 = v11;
  v19 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BC4BAC30;
  *(v20 + 32) = v32;
  v35 = v20;
  v21 = *(a3 + *(v34 + 68));
  v22 = v32;
  if (v21 == 1)
  {

    v20 = MEMORY[0x1E69E7CC0];
    v35 = MEMORY[0x1E69E7CC0];
  }

  if (v10 != ConversationKit_SpamFlowController_Flow_groupIntiatorReport && v10 != ConversationKit_SpamFlowController_Flow_knownContact)
  {
    v24 = v19;
    MEMORY[0x1BFB20CC0]();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20 = v35;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v36.value.super.isa = 0;
  v36.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v25, 0, v36, 1, 0xFFFFFFFFFFFFFFFFLL, v20, v28).super.super.isa;

  return isa;
}

double closure #1 in closure #2 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit15RecentsCallItemVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit15RecentsCallItemVGMR);
    type metadata accessor for RecentsCallItem(0);
    *(swift_allocObject() + 16) = xmmword_1BC4BA940;
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)();
  }

  return result;
}

void closure #2 in closure #2 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (one-time initialization token for spam != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Logger.spam);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a2;
    _os_log_impl(&dword_1BBC58000, v5, v6, "spamFlowController: %ld", v7, 0xCu);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  switch(a2)
  {
    case 1u:
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        RecentsListViewController.presentBlockUnknownAction(of:)();
        goto LABEL_14;
      }

      break;
    case 2u:
    case 5u:
      return;
    case 3u:
      swift_beginAccess();
      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        v9 = v12;
        RecentsListViewController.presentGroupReportAndBlockAction(of:)();
        goto LABEL_14;
      }

      break;
    case 4u:
      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v9 = v11;
        RecentsListViewController.presentReportAndBlockAction(of:)();
        goto LABEL_14;
      }

      break;
    default:
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        RecentsListViewController.presentBlockAllAction(of:)();
LABEL_14:
      }

      break;
  }
}

UITargetedPreview_optional __swiftcall RecentsListViewController.collectionView(_:previewForHighlightingContextMenuWithConfiguration:)(UICollectionView *_, UIContextMenuConfiguration previewForHighlightingContextMenuWithConfiguration)
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_214();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30[-v9];
  v11 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v13 = OBJC_IVAR___FTRecentsListViewController_indexPathForMenu;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  OUTLINED_FUNCTION_115(v10, 1, v11);
  if (v14)
  {
    outlined destroy of CallControlsService?(v10, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_4_31();
    v16(v15);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v18 = [v5 cellForItemAtIndexPath_];

    if (v18)
    {
      v19 = OUTLINED_FUNCTION_84_1();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v11);
      OUTLINED_FUNCTION_30_2(v3 + v13, v30);
      outlined assign with take of RecentsCallItem?();
      swift_endAccess();
      v22 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
      v23 = [objc_opt_self() clearColor];
      [v22 setBackgroundColor_];

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITargetedPreview, 0x1E69DD070);
      v24 = OUTLINED_FUNCTION_208();
      UITargetedPreview.__allocating_init(view:parameters:)(v24, v25);
    }

    v26 = OUTLINED_FUNCTION_45_1();
    v27(v26);
  }

  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_30_0();
  result.value.super.isa = v28;
  result.is_nil = v29;
  return result;
}

Swift::Void __swiftcall RecentsListViewController.showLinkDetailViewController(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_55();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_34_15();
  v8 = type metadata accessor for RecentsCallItem(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  if (RecentsListViewController.viewDidFinishInitialLoad.getter())
  {
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x630))();
    OUTLINED_FUNCTION_27_15();
    v14 = (*(v13 + 184))();

    v15 = OUTLINED_FUNCTION_45_1();
    v16(v15);

    v17 = OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_115(v17, v18, v8);
    if (v19)
    {
      outlined destroy of CallControlsService?(v4, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v21 = OUTLINED_FUNCTION_13_12(v20);
      *(v21 + 16) = xmmword_1BC4BA940;
      v29 = v3;
      v30 = v1;

      v22 = MEMORY[0x1E69E6158];
      v23 = String.init<A>(reflecting:)();
      v25 = v24;
      *(v21 + 56) = v22;
      *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v21 + 32) = v23;
      *(v21 + 40) = v25;
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_156();
      os_log(_:dso:log:type:_:)(v26, v29, v30);
    }

    else
    {
      OUTLINED_FUNCTION_3_66();
      OUTLINED_FUNCTION_32_2();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
      RecentsListViewController.showLinkDetailViewController(for:)(v12);
      OUTLINED_FUNCTION_0_74();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
    }

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    v27 = (v2 + OBJC_IVAR___FTRecentsListViewController_pseudonymForDeferredLinkDetailPresentation);
    *v27 = v3;
    v27[1] = v1;

    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_30_0();
  }
}

double RecentsListViewController.handleDeferredLinkDetailPresentation()()
{
  v1 = (v0 + OBJC_IVAR___FTRecentsListViewController_pseudonymForDeferredLinkDetailPresentation);
  v2 = *(v0 + OBJC_IVAR___FTRecentsListViewController_pseudonymForDeferredLinkDetailPresentation + 8);
  if (v2)
  {
    v3 = *v1;

    v4._countAndFlagsBits = v3;
    v4._object = v2;
    RecentsListViewController.showLinkDetailViewController(for:)(v4);

    *v1 = 0;
    v1[1] = 0;
  }

  return result;
}

void RecentsListViewController.showVideoPlayerForMessage(targetItem:bypassSafety:)(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v50 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v3 isViewLoaded])
  {
LABEL_9:
    if ([v3 isViewLoaded] && (v27 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x630))(), v28 = (*(*v27 + 168))(v27), , (v28 & 1) != 0))
    {
      if (one-time initialization token for videoMessaging != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, &static Logger.videoMessaging);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1BBC58000, v30, v31, "Not showing video message: Video message missing media url.", v32, 2u);
        MEMORY[0x1BFB23DF0](v32, -1, -1);
      }
    }

    else
    {
      if (one-time initialization token for videoMessaging != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, &static Logger.videoMessaging);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1BBC58000, v34, v35, "Not showing Video message: view is not loaded or in background.", v36, 2u);
        MEMORY[0x1BFB23DF0](v36, -1, -1);
      }

      v37 = RecentsCallItem.messageIndicatorViewModel.getter();
      if (v37)
      {
        v38 = v37;
        v39 = [v37 messageUUID];

        if (v39)
        {
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v40 = 0;
        }

        else
        {
          v40 = 1;
        }

        v42 = type metadata accessor for UUID();
        __swift_storeEnumTagSinglePayload(v7, v40, 1, v42);
        outlined init with take of URL?();
      }

      else
      {
        v41 = type metadata accessor for UUID();
        __swift_storeEnumTagSinglePayload(v10, 1, 1, v41);
      }

      swift_beginAccess();
      outlined assign with take of RecentsCallItem?();
      swift_endAccess();
    }

    return;
  }

  v51 = v18;
  v22 = RecentsCallItem.messageIndicatorViewModel.getter();
  if (!v22)
  {
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
LABEL_8:
    outlined destroy of CallControlsService?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    goto LABEL_9;
  }

  v23 = v22;
  v50[1] = a2;
  v24 = [v22 mediaURL];

  if (v24)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v51;
  __swift_storeEnumTagSinglePayload(v13, v25, 1, v17);
  outlined init with take of URL?();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    goto LABEL_8;
  }

  v43 = (*(v26 + 32))(v21, v16, v17);
  v44 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x630))(v43);
  v45 = (*(*v44 + 168))(v44);

  if ((v45 & 1) == 0)
  {
    (*(v26 + 8))(v21, v17);
    goto LABEL_9;
  }

  if (one-time initialization token for videoMessaging != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, &static Logger.videoMessaging);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1BBC58000, v47, v48, "Presenting video message player", v49, 2u);
    MEMORY[0x1BFB23DF0](v49, -1, -1);
  }

  RecentsListViewController.presentVideoMessagePlayer(url:and:bypassSafety:)();
  (*(v51 + 8))(v21, v17);
}

void closure #1 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)(uint64_t a1)
{
  v1 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong navigationController];
    if (v7)
    {
      v8 = v7;
    }

    v9 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v9);
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    type metadata accessor for MainActor();
    v10 = v6;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v10;
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }
}

uint64_t closure #1 in closure #1 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:), v7, v6);
}

uint64_t closure #1 in closure #1 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)()
{
  OUTLINED_FUNCTION_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit15RecentsCallItemVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit15RecentsCallItemVGMR);
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = type metadata accessor for RecentsCallItem(v1);
  OUTLINED_FUNCTION_9_0(v2);
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = xmmword_1BC4BA940;
  OUTLINED_FUNCTION_1_72();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:);

  return RecentsListViewController.deleteVideoMessageCallItems(_:)(v3);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  v3[9] = v0;

  if (v0)
  {
    v7 = v3[5];
    v8 = v3[6];
    v9 = closure #1 in closure #1 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:);
  }

  else
  {

    v7 = v3[5];
    v8 = v3[6];
    v9 = closure #1 in closure #1 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_1_20();
    swift_once();
  }

  v2 = *(v0 + 72);
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, static Logger.conversationKit);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 72);
  if (v7)
  {
    OUTLINED_FUNCTION_42();
    v9 = OUTLINED_FUNCTION_268();
    *v1 = 138412290;
    v10 = v8;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_140();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    outlined destroy of CallControlsService?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_319();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

void RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:)(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = v4;
  OUTLINED_FUNCTION_20_2();
  v10 = OUTLINED_FUNCTION_17_1();
  v11 = type metadata accessor for RecentsCallItem(v10);
  v12 = OUTLINED_FUNCTION_9_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v17);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_11_2();
    swift_once();
  }

  if ((Features.lvmEverywhereEnabled.getter() & 1) == 0 || *(v4 + OBJC_IVAR___FTRecentsListViewController_isFaceTimeLaunchPageEnabled) != 1)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_176();
  (*(v18 + 2288))(&v37);
  if (!v38)
  {
    outlined destroy of CallControlsService?(&v37, &_s15ConversationKit25RecentsListViewControllerC23VoicemailDetailBuilding_pSgMd, &_s15ConversationKit25RecentsListViewControllerC23VoicemailDetailBuilding_pSgMR);
LABEL_12:
    RecentsListViewController.presentVoicemail(message:)();
    return;
  }

  outlined init with take of TapInteractionHandler(&v37, v39);
  v35 = v40;
  v33 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  OUTLINED_FUNCTION_20();
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_24();
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = v3;
  OUTLINED_FUNCTION_20();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_1_72();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  v19 = ((*(v14 + 80) + 24) & ~*(v14 + 80)) + v16;
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
  OUTLINED_FUNCTION_20();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  v21 = (v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
  v23 = (v22 + v21);
  *v23 = v8;
  v23[1] = v7;
  v23[2] = v6;
  v23[3] = v5;
  *(v22 + ((v21 + 39) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v29 = *(v33 + 8);
  v24 = a3;

  v25 = v3;

  v26 = v29(v25, partial apply for closure #1 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:), v34, partial apply for closure #2 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:), v31, partial apply for closure #3 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:), v22, v35, v33);

  if (!v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
    goto LABEL_12;
  }

  v27 = [v9 navigationController];
  if (v27)
  {
    v28 = v27;
    [v27 pushViewController:v26 animated:1];
  }

  __swift_destroy_boxed_opaque_existential_1(v39);
}

void closure #1 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong navigationController];
    if (v8)
    {
      v9 = v8;
    }

    v10 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
    type metadata accessor for MainActor();
    v11 = v7;
    v12 = a2;
    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v11;
    v14[5] = v12;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }
}

uint64_t closure #1 in closure #1 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for UUID();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v8;
  v5[10] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:), v8, v7);
}

uint64_t closure #1 in closure #1 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:)()
{
  OUTLINED_FUNCTION_24_0();
  dispatch thunk of Message.recordUUID.getter();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:);
  v2 = *(v0 + 56);

  return RecentsListViewController.deleteFTMSMessage(uuid:)(v2);
}

{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;
  v5 = v2[5];
  *v4 = *v1;
  v3[12] = v0;

  v3[13] = *(v5 + 8);
  v3[14] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6 = OUTLINED_FUNCTION_43_0();
  v7(v6);
  v8 = v2[10];
  v9 = v2[9];
  if (v0)
  {
    v10 = closure #1 in closure #1 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:);
  }

  else
  {
    v10 = closure #1 in closure #1 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:);
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

{

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_1_20();
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, static Logger.conversationKit);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v18 = v0[12];
    v7 = OUTLINED_FUNCTION_42();
    v19 = OUTLINED_FUNCTION_23();
    *v7 = 136315138;
    dispatch thunk of Message.recordUUID.getter();
    OUTLINED_FUNCTION_18_29();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(v8, v9);
    dispatch thunk of CustomStringConvertible.description.getter();
    v10 = OUTLINED_FUNCTION_77();
    v6(v10);
    v11 = OUTLINED_FUNCTION_252();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v13);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Failed to delete orphan voicemail with uuid: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_2();
    v15 = v18;
  }

  else
  {
    v15 = v0[12];
  }

  OUTLINED_FUNCTION_13();

  return v16();
}

uint64_t RecentsListViewController.deleteFTMSMessage(uuid:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x1EEE6DFA0](RecentsListViewController.deleteFTMSMessage(uuid:), v4, v3);
}

uint64_t RecentsListViewController.deleteFTMSMessage(uuid:)()
{
  OUTLINED_FUNCTION_44();
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  type metadata accessor for MessageStoreController();
  v0[9] = static MessageStoreController.shared.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  OUTLINED_FUNCTION_64_4();
  v5 = swift_allocObject();
  v0[10] = v5;
  *(v5 + 16) = xmmword_1BC4BA940;
  v6 = *(v3 + 16);
  v0[11] = v6;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v5 + v1, v4, v2);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_277(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_130(v8);

  return MEMORY[0x1EEE03C10](v5);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  v3[14] = v0;

  if (v0)
  {
    v7 = v3[7];
    v8 = v3[8];
    v9 = RecentsListViewController.deleteFTMSMessage(uuid:);
  }

  else
  {

    v7 = v3[7];
    v8 = v3[8];
    v9 = RecentsListViewController.deleteFTMSMessage(uuid:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{

  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
  }

  v1 = *(v0 + 88);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.videoMessaging);
  v3 = OUTLINED_FUNCTION_15_14();
  v1(v3);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_42();
    v21 = OUTLINED_FUNCTION_23();
    *v6 = 136446210;
    OUTLINED_FUNCTION_18_29();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(v7, v8);
    OUTLINED_FUNCTION_278_0();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_243_0();
    v9 = OUTLINED_FUNCTION_148();
    v10(v9);
    v11 = OUTLINED_FUNCTION_77();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v13);

    *(v6 + 4) = v14;
    OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v15, v16, "Deleted video message with UUID %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {

    v17 = OUTLINED_FUNCTION_148();
    v18(v17);
  }

  OUTLINED_FUNCTION_13();

  return v19();
}

{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

void *closure #2 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)()
{
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result navigationController];
    if (v2)
    {
      v3 = v2;
    }

    OUTLINED_FUNCTION_176();
    (*(v4 + 704))(v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = OUTLINED_FUNCTION_29_6();
    v6(v5);

    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return result;
}

void closure #3 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_20_2();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_173();
    v6 = OUTLINED_FUNCTION_18_1();
    RecentsListViewController.presentDetailsView(for:sourceRect:sourceView:)(v7, a3, v6, v8, v9, v10);
  }
}

void RecentsListViewController.presentVoicemail(message:)()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_224();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  dispatch thunk of Message.recordUUID.getter();
  v4 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v6 = [v4 phoneAppVoicemailURLForMessageUUID_];

  if (v6)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = OUTLINED_FUNCTION_308();
    v8(v7);
    URL._bridgeToObjectiveC()(v9);
    OUTLINED_FUNCTION_271(v10);

    v11 = OUTLINED_FUNCTION_309();
    v12(v11);
  }

  v13 = OUTLINED_FUNCTION_206();
  v14(v13);
  OUTLINED_FUNCTION_30_0();
}

uint64_t RecentsListViewController.presentVideoMessagePlayerForOrphaned(message:and:bypassSafety:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_241();
  v58 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v57 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v56 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  v55 = v12;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_32();
  v54 = v14;
  OUTLINED_FUNCTION_4_24();
  v53 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20FaceTimeMessageStore10TranscriptVSgMd, &_s20FaceTimeMessageStore10TranscriptVSgMR);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_34_15();
  v20 = type metadata accessor for Summary();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_240_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20FaceTimeMessageStore7SummaryVSgMd, &_s20FaceTimeMessageStore7SummaryVSgMR);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_146();
  v26 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_5_5();
  v27.super.isa = v26;
  v59 = OUTLINED_FUNCTION_17_0(0xD000000000000015, 0x80000001BC4FB490, v28, v29, v27);

  dispatch thunk of Message.summary.getter();
  if (__swift_getEnumTagSinglePayload(v2, 1, v20))
  {
    outlined destroy of CallControlsService?(v2, &_s20FaceTimeMessageStore7SummaryVSgMd, &_s20FaceTimeMessageStore7SummaryVSgMR);
  }

  else
  {
    (*(v22 + 16))(v5, v2, v20);
    outlined destroy of CallControlsService?(v2, &_s20FaceTimeMessageStore7SummaryVSgMd, &_s20FaceTimeMessageStore7SummaryVSgMR);
    v34 = Summary.text.getter();
    (*(v22 + 8))(v5, v20);
    OUTLINED_FUNCTION_38_2();
    if (String.count.getter() >= 1)
    {
      goto LABEL_9;
    }
  }

  dispatch thunk of Message.transcript.getter();
  v30 = type metadata accessor for Transcript();
  v31 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_115(v31, v32, v30);
  if (!v33)
  {
    v34 = Transcript.text.getter();
    (*(*(v30 - 8) + 8))(v4, v30);
    OUTLINED_FUNCTION_38_2();
    if (String.count.getter() < 1)
    {

      goto LABEL_10;
    }

LABEL_9:

    v59 = v34;
    goto LABEL_10;
  }

  outlined destroy of CallControlsService?(v4, &_s20FaceTimeMessageStore10TranscriptVSgMd, &_s20FaceTimeMessageStore10TranscriptVSgMR);
LABEL_10:
  dispatch thunk of Message.duration.getter();
  v36 = v35;
  dispatch thunk of Message.recordUUID.getter();
  v52 = UUID.uuidString.getter();
  v38 = v37;
  v40 = *(v16 + 8);
  v39 = (v16 + 8);
  v40(v3, v53);
  dispatch thunk of Message.messageFile.getter();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v58);
  dispatch thunk of Message.messageThumbnail.getter();
  v44 = dispatch thunk of Message.isRead.getter();
  v45 = dispatch thunk of Message.isSensitive.getter();
  v46 = objc_opt_self();
  v47 = dispatch thunk of Message.from.getter();
  MEMORY[0x1BFB209B0](v47);
  OUTLINED_FUNCTION_242();

  v48 = [v46 normalizedHandleWithDestinationID_];

  v49 = objc_allocWithZone(MEMORY[0x1E69D89D8]);
  LOBYTE(v52) = 1;
  v50 = @nonobjc TPMessageIndicatorViewModel.init(duration:identifier:mediaURL:thumbnailURL:transcriptSummary:isRead:isSensitive:isVideo:from:)(v36, v52, v38, v54, v55, v59, v48, v44 & 1, v45 & 1, 1, v48);
  dispatch thunk of Message.messageFile.getter();
  RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)();

  return (*(v57 + 8))(v56, v58);
}

void RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v131 = v9;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_174();
  v130 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v134 = v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_159();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_223();
  if ((v6 & 1) == 0 && [objc_opt_self() isCommunicationSafetyEnabled] && objc_msgSend(v8, sel_isSensitive))
  {
    v23 = [v8 messageUUID];
    if (v23)
    {
      v24 = v23;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = type metadata accessor for UUID();
      v26 = 0;
    }

    else
    {
      v25 = type metadata accessor for UUID();
      v26 = 1;
    }

    __swift_storeEnumTagSinglePayload(v3, v26, 1, v25);
    OUTLINED_FUNCTION_30_2(v4 + OBJC_IVAR___FTRecentsListViewController_messageUUIDForDeferredPresentation, &v138);
    outlined assign with take of RecentsCallItem?();
    swift_endAccess();
    RecentsListViewController.showSafetyIntervention()();
  }

  else
  {
    v133 = v8;
    v27 = type metadata accessor for TaskPriority();
    v28 = v17;
    OUTLINED_FUNCTION_168(v1, v29, v30, v27);
    OUTLINED_FUNCTION_1_72();
    LODWORD(v127) = v6;
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    type metadata accessor for MainActor();
    v31 = v4;
    v32 = static MainActor.shared.getter();
    v33 = v11;
    v34 = *(v15 + 80);
    v129 = v28;
    v136 = v34;
    v35 = swift_allocObject();
    v36 = MEMORY[0x1E69E85E0];
    v35[2] = v32;
    v35[3] = v36;
    v132 = v31;
    v35[4] = v31;
    OUTLINED_FUNCTION_3_66();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
    type metadata completion function for SyncedScreeningAlphaGradientView();
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();

    v37 = type metadata accessor for URL();
    OUTLINED_FUNCTION_7_0();
    (*(v38 + 16))(v2, v131, v37);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v37);
    LOBYTE(v138) = 1;
    v42 = objc_allocWithZone(type metadata accessor for VideoMessagePlayerViewModel(0));
    VideoMessagePlayerViewModel.init(videoMessageURL:playerSpaciality:)();
    v44 = v43;
    v45 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_5_5();
    v46.super.isa = v45;
    OUTLINED_FUNCTION_17_0(0xD000000000000018, 0x80000001BC4FB4B0, v47, v48, v46);

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v50 = OUTLINED_FUNCTION_13_12(v49);
    *(v50 + 16) = xmmword_1BC4BA940;
    v51 = v33;
    v52 = (v33 + *(v130 + 20));
    v53 = *v52;
    v54 = v52[1];
    *(v50 + 56) = MEMORY[0x1E69E6158];
    *(v50 + 64) = lazy protocol witness table accessor for type String and conformance String();
    v123 = v53;
    if (v54)
    {
      v55 = v53;
    }

    else
    {
      v55 = 0;
    }

    if (v54)
    {
      v56 = v54;
    }

    else
    {
      v56 = 0xE000000000000000;
    }

    *(v50 + 32) = v55;
    *(v50 + 40) = v56;
    v128 = v54;
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_211();
    String.init(format:_:)();

    OUTLINED_FUNCTION_13_2();
    v57 = MEMORY[0x1E69E7D40];
    v58 = OUTLINED_FUNCTION_1_5();
    v59(v58);
    if (v127)
    {
      v60 = [objc_opt_self() isCommunicationSafetyEnabled];
      v61 = v133;
      v62 = &selRef_fillRule;
      if (v60)
      {
        OUTLINED_FUNCTION_142_2();
        (*(v63 + 680))(1);
      }

      v64 = v136;
    }

    else
    {
      v62 = &selRef_fillRule;
      v61 = v133;
      [v133 isSensitive];
      v64 = v136;
    }

    OUTLINED_FUNCTION_142_2();
    (*(v65 + 632))();
    if ([v61 v62[247]] && objc_msgSend(objc_opt_self(), sel_isCommunicationSafetyEnabled))
    {
      OUTLINED_FUNCTION_142_2();
      (*(v66 + 536))(0);
    }

    OUTLINED_FUNCTION_20();
    v67 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v68 = v57;
    v135 = v51;
    v69 = v44;
    v126 = type metadata accessor for RecentsCallItem;
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    v124 = ~v64;
    v70 = (v64 + 24) & ~v64;
    v71 = v129;
    v72 = swift_allocObject();
    *(v72 + 16) = v67;
    OUTLINED_FUNCTION_111_0();
    v122[1] = v70;
    v125 = v73;
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
    v131 = ((*v68 & *v69) + 448);
    v74 = *v131;

    v75 = OUTLINED_FUNCTION_197();
    v76 = v74(v75);
    *(v77 + 80) = partial apply for closure #2 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:);
    *(v77 + 88) = v72;

    v78 = OUTLINED_FUNCTION_196();
    v76(v78);

    OUTLINED_FUNCTION_286();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    v79 = ((v136 + 16) & v124) + v71;
    v80 = swift_allocObject();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
    v81 = OUTLINED_FUNCTION_197();
    v127 = v74;
    v82 = v74(v81);
    *(v83 + 96) = partial apply for closure #3 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:);
    *(v83 + 104) = v80;

    v84 = OUTLINED_FUNCTION_196();
    v82(v84);
    OUTLINED_FUNCTION_20();
    v85 = swift_allocObject();
    v86 = v132;
    swift_unknownObjectWeakInit();

    v87 = OUTLINED_FUNCTION_197();
    v88 = v74(v87);
    *v89 = partial apply for closure #4 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:);
    v89[1] = v85;

    v90 = OUTLINED_FUNCTION_196();
    v88(v90);

    OUTLINED_FUNCTION_286();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    v91 = swift_allocObject();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
    *(v91 + ((v79 + 7) & 0xFFFFFFFFFFFFFFF8)) = v86;
    v92 = *((*MEMORY[0x1E69E7D40] & *v69) + 0x1F0);
    v93 = v86;
    v94 = OUTLINED_FUNCTION_197();
    v95 = v92(v94);
    *v96 = partial apply for closure #5 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:);
    v96[1] = v91;

    v97 = OUTLINED_FUNCTION_196();
    v95(v97);
    OUTLINED_FUNCTION_20();
    v98 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v99 = OUTLINED_FUNCTION_197();
    v100 = v92(v99);
    *(v101 + 16) = partial apply for closure #6 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:);
    *(v101 + 24) = v98;

    v102 = OUTLINED_FUNCTION_196();
    v100(v102);

    OUTLINED_FUNCTION_24();
    v103 = swift_allocObject();
    v104 = v133;
    *(v103 + 16) = v133;
    *(v103 + 24) = v93;
    v105 = v93;
    v106 = v104;
    v107 = OUTLINED_FUNCTION_197();
    v108 = v127(v107);
    *(v109 + 48) = partial apply for closure #7 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:);
    *(v109 + 56) = v103;

    v110 = OUTLINED_FUNCTION_196();
    v108(v110);
    OUTLINED_FUNCTION_20();
    v111 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v112 = v128;
    if (v128)
    {
      OUTLINED_FUNCTION_1_72();
      v113 = v135;
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
      v114 = swift_allocObject();
      *(v114 + 16) = v111;
      OUTLINED_FUNCTION_3_66();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
      v115 = *(v113 + *(v130 + 48));

      RecentsCallItem.atLeastOneUnknownCaller.getter();
      *&v138 = v123;
      *(&v138 + 1) = v112;
      BYTE8(v139) = v116 & 1;
      v117 = partial apply for closure #1 in closure #8 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:);
    }

    else
    {

      v115 = 0;
      v117 = 0;
      v114 = 0;
      *(&v139 + 1) = 0;
      v138 = 0uLL;
    }

    *&v139 = v115;
    v140 = 0;
    v141 = 0;
    *&v142 = v117;
    *(&v142 + 1) = v114;
    v137[0] = v138;
    v137[1] = v139;
    v137[2] = 0u;
    v137[3] = v142;
    objc_allocWithZone(type metadata accessor for VideoMessagePlayerViewController());
    v118 = v69;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    v119 = VideoMessagePlayerViewController.init(viewModel:participantInfo:)(v118, v137);
    if (static Platform.current.getter() == 1)
    {
      [v119 setModalPresentationStyle_];
      OUTLINED_FUNCTION_259(v105, sel_presentViewController_animated_completion_, v119);
    }

    else
    {
      v120 = [v105 navigationController];
      if (v120)
      {
        v121 = v120;
        [v120 pushViewController:v119 animated:1];
      }

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      SafetyCheckManager.fetchSharing()();
    }

    outlined destroy of CallControlsService?(&v138, &_s15ConversationKit21PlayerParticipantInfoVSgMd, &_s15ConversationKit21PlayerParticipantInfoVSgMR);
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall RecentsListViewController.showSafetyIntervention()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x1E69CA8E8]);
  v3 = type metadata completion function for SyncedScreeningAlphaGradientView();
  v5 = @nonobjc SCUIInterventionViewController.init(workflow:contextDictionary:)(v3, v4);
  [v5 setInterventionDelegate_];
  v6 = v5;
  [v6 setModalInPresentation_];
  [v6 setModalPresentationStyle_];

  OUTLINED_FUNCTION_259(v1, sel_presentViewController_animated_completion_, v6);
}

uint64_t closure #1 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:), v7, v6);
}

uint64_t closure #1 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)()
{
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 64)) + 0x2C0))();
  OUTLINED_FUNCTION_62_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit15RecentsCallItemVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit15RecentsCallItemVGMR);
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for RecentsCallItem(v1);
  OUTLINED_FUNCTION_9_0(v2);
  OUTLINED_FUNCTION_64_4();
  v3 = swift_allocObject();
  *(v0 + 104) = v3;
  *(v3 + 16) = xmmword_1BC4BA940;
  OUTLINED_FUNCTION_1_72();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  OUTLINED_FUNCTION_72_3();
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_130(v5);
  v6 = OUTLINED_FUNCTION_312();

  return v8(v6);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  v3[15] = v0;

  if (v0)
  {
    v7 = v3[11];
    v8 = v3[12];
    v9 = closure #1 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:);
  }

  else
  {

    v7 = v3[11];
    v8 = v3[12];
    v9 = RecentsListViewController.deleteVideoMessageCallItems(_:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{
  OUTLINED_FUNCTION_24_0();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_13();

  return v1();
}

void *closure #2 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = [result dismissViewControllerAnimated:1 completion:0];
    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x2C0))(v8, v5);
    v6 = v9;
    v7 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v7 + 64))(a2, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return result;
}

void closure #3 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)()
{
  v71 = *MEMORY[0x1E69E9840];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v63 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v63 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URLComponents();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecentsCallItem.tuHandles.getter();
  v17 = specialized Collection.first.getter(v16);

  if (v17)
  {
    v63 = v10;
    v65 = v13;
    v66 = v12;
    URLComponents.init()();
    URLComponents.scheme.setter();
    MEMORY[0x1BFB19BE0](1852141679, 0xE400000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
    type metadata accessor for URLQueryItem();
    v18 = swift_allocObject();
    v67 = xmmword_1BC4BA940;
    *(v18 + 16) = xmmword_1BC4BA940;
    v64 = v17;
    v19 = [v17 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URLQueryItem.init(name:value:)();

    URLComponents.queryItems.setter();
    URLComponents.url.getter();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      outlined destroy of CallControlsService?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v20 = static OS_os_log.conversationKit;
      v21 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v22 = swift_allocObject();
      *(v22 + 16) = v67;
      v24 = v65;
      v23 = v66;
      (*(v65 + 16))(v2, v15, v66);
      __swift_storeEnumTagSinglePayload(v2, 0, 1, v23);
      specialized >> prefix<A>(_:)(v2, v25, v26, v27, v28, v29, v30, v31, v63, v64, v65, v66, v67, *(&v67 + 1), v68, v69, v70, v71);
      v33 = v32;
      v35 = v34;
      outlined destroy of CallControlsService?(v2, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v22 + 32) = v33;
      *(v22 + 40) = v35;
      os_log(_:dso:log:type:_:)("Could not construct Messages URL from %@", 40, 2, &dword_1BBC58000, v20, v21, v22);

      (*(v24 + 8))(v15, v23);
    }

    else
    {
      v36 = v63;
      v37 = v69;
      (*(v63 + 32))(v69, v8, v9);
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v38 = static OS_os_log.conversationKit;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v39 = swift_allocObject();
      *(v39 + 16) = v67;
      (*(v36 + 16))(v5, v37, v9);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
      specialized >> prefix<A>(_:)(v5, v40, v41, v42, v43, v44, v45, v46, v63, v64, v65, v66, v67, *(&v67 + 1), v68, v69, v70, v71);
      v48 = v47;
      v50 = v49;
      outlined destroy of CallControlsService?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      *(v39 + 56) = MEMORY[0x1E69E6158];
      v51 = lazy protocol witness table accessor for type String and conformance String();
      *(v39 + 64) = v51;
      *(v39 + 32) = v48;
      *(v39 + 40) = v50;
      v52 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Opening messages URL %@", 23, 2, &dword_1BBC58000, v38, v52, v39);

      URL._bridgeToObjectiveC()(v53);
      v55 = v54;
      v70 = 0;
      LODWORD(v39) = TUOpenURLWithError();

      v56 = v70;
      if (v39)
      {
        v57 = v70;

        (*(v36 + 8))(v37, v9);
        (*(v65 + 8))(v15, v66);
      }

      else
      {
        v58 = swift_allocObject();
        *(v58 + 16) = v67;
        if (v56)
        {
          v70 = v56;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0);
          v59 = v56;
          v60 = String.init<A>(reflecting:)();
        }

        else
        {
          v61 = 0xE300000000000000;
          v60 = 7104878;
        }

        *(v58 + 56) = MEMORY[0x1E69E6158];
        *(v58 + 64) = v51;
        *(v58 + 32) = v60;
        *(v58 + 40) = v61;
        v62 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Failed to launch messages with error: %@", 40, 2, &dword_1BBC58000, v38, v62, v58);

        (*(v36 + 8))(v69, v9);
        (*(v65 + 8))(v15, v66);
      }
    }
  }
}

void closure #4 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t closure #5 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(uint64_t a1, UIViewController_optional *a2)
{
  v3 = RecentsCallItem.contact.getter();
  if (v3)
  {
    v4 = v3;
    CNContact.block()();
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo9CNContactCSgGMd, &_ss23_ContiguousArrayStorageCySo9CNContactCSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA940;
  *(inited + 32) = RecentsCallItem.contact.getter();
  SafetyCheckManager.present(for:on:)(inited, a2);
  swift_setDeallocating();
  return specialized _ContiguousArrayStorage.__deallocating_deinit();
}

Swift::Void __swiftcall CNContact.block()()
{
  if (one-time initialization token for conversationKit != -1)
  {
LABEL_43:
    OUTLINED_FUNCTION_1_20();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationKit);
  v4 = v0;
  v0 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v46 = v4;
  if (os_log_type_enabled(v0, v5))
  {
    v6 = OUTLINED_FUNCTION_30_1();
    v50 = swift_slowAlloc();
    *v6 = 136315394;
    v2 = 0x1FA9B0000uLL;
    v7 = [v4 phoneNumbers];
    __swift_instantiateConcreteTypeFromMangledNameV2(_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
    OUTLINED_FUNCTION_246_0();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14CNLabeledValueCGMd, &_sSaySo14CNLabeledValueCGMR);
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v50);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = [v4 0x1FA9B0D78];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = v46;
    v12 = String.init<A>(reflecting:)();
    v1 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v50);

    *(v6 + 14) = v1;
    _os_log_impl(&dword_1BBC58000, v0, v5, "Block: blocking phoneNumbers %s \n\n emailAddreses: %s", v6, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_26();
  }

  v14 = [v4 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  OUTLINED_FUNCTION_235();
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = MEMORY[0x1E69E7CC0];
  v50 = MEMORY[0x1E69E7CC0];
  specialized Array.count.getter();
  OUTLINED_FUNCTION_145();
  v47 = v16;
  v48 = v17;
  while (v1 != v4)
  {
    if (v48)
    {
      v35 = OUTLINED_FUNCTION_281();
      v18 = MEMORY[0x1BFB22010](v35);
    }

    else
    {
      if (v4 >= *(v47 + 16))
      {
        goto LABEL_38;
      }

      v18 = *(v15 + 8 * v4 + 32);
    }

    v19 = v18;
    v20 = (v4 + 1);
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v21 = [v18 value];
    v22 = [v21 digits];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_250();

    v23 = TUHomeCountryCode();
    if (v23)
    {
      v24 = v23;
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v2 = 0;
      v26 = 0;
    }

    v27 = objc_allocWithZone(MEMORY[0x1E69D8C98]);
    v28 = OUTLINED_FUNCTION_152();
    v0 = v29;
    v33 = @nonobjc TUPhoneNumber.init(digits:countryCode:)(v32, v28, v30, v31, v26);

    ++v4;
    if (v33)
    {
      MEMORY[0x1BFB20CC0]();
      v34 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v34 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v34);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v0 = &v50;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v49 = v50;
      v4 = v20;
    }
  }

  v36 = v49;
  v0 = specialized Array.count.getter();
  for (i = 0; v0 != i; i = (i + 1))
  {
    if ((v49 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x1BFB22010](i, v49);
    }

    else
    {
      if (i >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v38 = *(v49 + 8 * i + 32);
    }

    v1 = v38;
    if (__OFADD__(i, 1))
    {
      goto LABEL_39;
    }

    v39 = [objc_opt_self() sharedPrivacyManager];
    if (!v39)
    {
      __break(1u);
LABEL_45:
      __break(1u);
      return;
    }

    v36 = v39;
    [v39 setBlockIncomingCommunication:1 forPhoneNumber:v1];
  }

  v0 = [v46 emailAddresses];
  v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array.count.getter();
  OUTLINED_FUNCTION_251();
  while (v0 != v36)
  {
    if (0x1E69D8000uLL)
    {
      v45 = OUTLINED_FUNCTION_45_1();
      v41 = MEMORY[0x1BFB22010](v45);
    }

    else
    {
      if (v36 >= *(v2 + 16))
      {
        goto LABEL_42;
      }

      v41 = *(v40 + 8 * v36 + 32);
    }

    v42 = v41;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_41;
    }

    v43 = [objc_opt_self() sharedPrivacyManager];
    if (!v43)
    {
      goto LABEL_45;
    }

    v44 = v43;
    v1 = [v42 value];
    [v44 &selRef_cornerRadius + 2];

    ++v36;
  }
}

void closure #6 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    RecentsListViewController.showGetMoreHelp()();
  }
}

uint64_t RecentsListViewController.showGetMoreHelp()()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for URLRequest();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E69853A8]) init];
  v8 = [objc_opt_self() nonPersistentDataStore];
  [v7 setWebsiteDataStore_];

  v9 = [objc_allocWithZone(MEMORY[0x1E69853A0]) initWithFrame:v7 configuration:{0.0, 0.0, 0.0, 0.0}];
  v10 = [objc_opt_self() waysToGetHelpURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  isa = URLRequest._bridgeToObjectiveC()().super.isa;

  v12 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  [v12 setView_];
  v13 = [v12 navigationItem];
  v22[3] = type metadata accessor for RecentsListViewController(0);
  v22[0] = v1;
  objc_allocWithZone(MEMORY[0x1E69DC708]);
  v14 = v1;
  @nonobjc UIBarButtonItem.init(barButtonSystemItem:target:action:)();
  v16 = v15;
  [v13 setRightBarButtonItem_];

  v17 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  [v17 setModalPresentationStyle_];
  v18 = [v14 presentedViewController];
  if (!v18)
  {
    goto LABEL_4;
  }

  v19 = v18;
  type metadata accessor for VideoMessagePlayerViewController();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {

LABEL_4:
    v20 = v14;
  }

  [v20 presentViewController:v17 animated:1 completion:0];

  return (*(v4 + 8))(v6, v3);
}

void closure #7 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  v15 = [a1 messageUUID];
  if (v15)
  {
    v16 = v15;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    static TaskPriority.userInitiated.getter();
    v17 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v17);
    (*(v8 + 16))(v10, v14, v7);
    type metadata accessor for MainActor();
    v18 = a2;
    v19 = static MainActor.shared.getter();
    v20 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v21 = swift_allocObject();
    v22 = MEMORY[0x1E69E85E0];
    *(v21 + 2) = v19;
    *(v21 + 3) = v22;
    *(v21 + 4) = v18;
    (*(v8 + 32))(&v21[v20], v10, v7);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

    (*(v8 + 8))(v14, v7);
  }

  else
  {
    if (one-time initialization token for videoMessaging != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, &static Logger.videoMessaging);
    v24 = a1;
    v31 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v24;
      *v27 = v24;
      v28 = v24;
      _os_log_impl(&dword_1BBC58000, v31, v25, "Failed to save video message with indicator model %@ because no UUID was found", v26, 0xCu);
      outlined destroy of CallControlsService?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1BFB23DF0](v27, -1, -1);
      MEMORY[0x1BFB23DF0](v26, -1, -1);
    }

    v29 = v31;
  }
}

uint64_t closure #1 in closure #7 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = type metadata accessor for UUID();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[15] = v8;
  v5[16] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #7 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:), v8, v7);
}

uint64_t closure #1 in closure #7 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)()
{
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  v5 = *(v2 + 72);
  (*((*MEMORY[0x1E69E7D40] & **(v2 + 64)) + 0x2C0))();
  OUTLINED_FUNCTION_62_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v2 + 136) = v7;
  *(v7 + 16) = xmmword_1BC4BA940;
  v8 = *(v4 + 16);
  *(v2 + 144) = v8;
  *(v2 + 152) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v7 + v6, v5, v3);
  OUTLINED_FUNCTION_72_3();
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v2 + 160) = v10;
  *v10 = v2;
  OUTLINED_FUNCTION_130(v10);

  return v12(v7, v0, v1);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  v3[21] = v0;

  if (v0)
  {
    v7 = v3[15];
    v8 = v3[16];
    v9 = closure #1 in closure #7 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:);
  }

  else
  {

    v7 = v3[15];
    v8 = v3[16];
    v9 = closure #1 in closure #7 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
  }

  v1 = *(v0 + 144);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.videoMessaging);
  v3 = OUTLINED_FUNCTION_15_14();
  v1(v3);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_42();
    v21 = OUTLINED_FUNCTION_23();
    *v6 = 136446210;
    OUTLINED_FUNCTION_18_29();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(v7, v8);
    OUTLINED_FUNCTION_278_0();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_243_0();
    v9 = OUTLINED_FUNCTION_148();
    v10(v9);
    v11 = OUTLINED_FUNCTION_77();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v13);

    *(v6 + 4) = v14;
    OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v15, v16, "Saved video message with UUID %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {

    v17 = OUTLINED_FUNCTION_148();
    v18(v17);
  }

  OUTLINED_FUNCTION_13();

  return v19();
}

{
  v26 = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
  }

  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[9];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Logger.videoMessaging);
  v5 = OUTLINED_FUNCTION_209();
  v2(v5);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[21];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  if (v9)
  {
    OUTLINED_FUNCTION_30_1();
    v23 = OUTLINED_FUNCTION_268();
    v24 = OUTLINED_FUNCTION_23();
    v25 = v24;
    *v3 = 136446466;
    OUTLINED_FUNCTION_18_29();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(v14, v15);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v25);
    OUTLINED_FUNCTION_34_2();

    *(v3 + 4) = v11;
    *(v3 + 12) = 2114;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v20;
    *v23 = v20;
    _os_log_impl(&dword_1BBC58000, v7, v8, "Failed to save video message with UUID %{public}s: %{public}@", v3, 0x16u);
    outlined destroy of CallControlsService?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_27();
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  OUTLINED_FUNCTION_13();

  return v21();
}

void closure #1 in closure #8 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(uint64_t a1, char *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    v6 = 0.0;
    v7 = MEMORY[0x1E69E7D40];
    if (v5)
    {
      v8 = v5;
      v9 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x500))();

      v10 = 0.0;
      v11 = 0.0;
      v12 = 0.0;
      if (v9)
      {
        UIView.windowRect.getter(v16);
        v6 = *v16;
        v10 = *&v16[1];
        v11 = *&v16[2];
        v12 = *&v16[3];

        if (v17)
        {
          v6 = 0.0;
          v10 = 0.0;
          v11 = 0.0;
          v12 = 0.0;
        }
      }
    }

    else
    {
      v10 = 0.0;
      v11 = 0.0;
      v12 = 0.0;
    }

    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = (*((*v7 & *v13) + 0x500))();
    }

    else
    {
      v15 = 0;
    }

    RecentsListViewController.presentDetailsView(for:sourceRect:sourceView:)(a2, v15, v6, v10, v11, v12);
  }
}

uint64_t closure #1 in closure #1 in RecentsListViewController.handleDeferredVideoMessagePresentation()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v35 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v20 = RecentsCallItem.messageIndicatorViewModel.getter();
  if (v20)
  {
    v21 = v20;
    v33 = v4;
    v22 = a2;
    v23 = [v20 messageUUID];

    if (v23)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    __swift_storeEnumTagSinglePayload(v16, v24, 1, v3);
    outlined init with take of URL?();
    a2 = v22;
    v4 = v33;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v3);
  }

  (*(v4 + 16))(v13, a2, v3);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v3);
  v25 = *(v6 + 48);
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  if (__swift_getEnumTagSinglePayload(v8, 1, v3) != 1)
  {
    v27 = v35;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    if (__swift_getEnumTagSinglePayload(&v8[v25], 1, v3) != 1)
    {
      v28 = &v8[v25];
      v29 = v34;
      (*(v4 + 32))(v34, v28, v3);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v4 + 8);
      v30(v29, v3);
      outlined destroy of CallControlsService?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of CallControlsService?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v30(v35, v3);
      outlined destroy of CallControlsService?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return v26 & 1;
    }

    outlined destroy of CallControlsService?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of CallControlsService?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v4 + 8))(v27, v3);
    goto LABEL_12;
  }

  outlined destroy of CallControlsService?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of CallControlsService?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (__swift_getEnumTagSinglePayload(&v8[v25], 1, v3) != 1)
  {
LABEL_12:
    outlined destroy of CallControlsService?(v8, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v26 = 0;
    return v26 & 1;
  }

  outlined destroy of CallControlsService?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v26 = 1;
  return v26 & 1;
}

void closure #2 in RecentsListViewController.handleDeferredVideoMessagePresentation()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (one-time initialization token for videoMessaging != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, &static Logger.videoMessaging);
    v15 = *(v9 + 16);
    v15(v11, a3, v8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v35 = a1;
      v19 = v18;
      v34 = swift_slowAlloc();
      v36 = v34;
      *v19 = 136315138;
      v15(v7, v11, v8);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
      specialized >> prefix<A>(_:)(v7, v20, v21, v22, v23, v24, v25, v26, v34, v35, v36, *v37, *&v37[8], *&v37[16], v38, v39, v40, v41);
      v28 = v27;
      v30 = v29;
      outlined destroy of CallControlsService?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v9 + 8))(v11, v8);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v36);

      *(v19 + 4) = v31;
      _os_log_impl(&dword_1BBC58000, v16, v17, "Video message loaded. uuid %s", v19, 0xCu);
      v32 = v34;
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1BFB23DF0](v32, -1, -1);
      v33 = v19;
      a1 = v35;
      MEMORY[0x1BFB23DF0](v33, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    RecentsListViewController.clearDeferredVideoMessagePresetation()();
    RecentsListViewController.showVideoPlayerForMessage(targetItem:bypassSafety:)(a1, 0);
  }
}

void RecentsListViewController.didConfirm(forInterventionViewController:)()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_241();
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_7();
  if (v2)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      OUTLINED_FUNCTION_257(v8, sel_dismissViewControllerAnimated_completion_);
    }
  }

  v9 = OBJC_IVAR___FTRecentsListViewController_messageUUIDForDeferredPresentation;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  v10 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_115(v10, v11, v3);
  if (!v12)
  {
    v13 = OUTLINED_FUNCTION_40_2();
    v14(v13);
    RecentsListViewController.showVideoPlayerForMessage(withUUID:bypassSafety:)();
    v15 = OUTLINED_FUNCTION_309();
    v16(v15);
  }

  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  OUTLINED_FUNCTION_30_2(v0 + v9, &v17);
  outlined assign with take of RecentsCallItem?();
  swift_endAccess();
  OUTLINED_FUNCTION_49();
}

uint64_t RecentsListViewController.didReject(forInterventionViewController:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  if (a1)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_108_0();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      OUTLINED_FUNCTION_257(v6, sel_dismissViewControllerAnimated_completion_);
    }
  }

  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_168(v1, v8, v9, v7);
  OUTLINED_FUNCTION_30_2(v2 + OBJC_IVAR___FTRecentsListViewController_messageUUIDForDeferredPresentation, v11);
  OUTLINED_FUNCTION_295();
  outlined assign with take of RecentsCallItem?();
  return swift_endAccess();
}

void @objc RecentsListViewController.didConfirm(forInterventionViewController:)()
{
  OUTLINED_FUNCTION_238();
  v3 = v2;
  swift_unknownObjectRetain();
  v4 = v3;
  v0(v1);
  swift_unknownObjectRelease();
}

void RecentsListViewController.dismissMoreHelp()()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for VideoMessagePlayerViewController();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      goto LABEL_5;
    }
  }

  v3 = v0;
LABEL_5:
  v4 = v3;
  [v3 dismissViewControllerAnimated:1 completion:0];
}

Swift::Void __swiftcall RecentsListViewController.configureNewDeleteAndMarkAsReadButtons()()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  v157 = type metadata accessor for UITraitOverrides();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit40UIConfigurationTextAttributesTransformerVSgMd, &_s5UIKit40UIConfigurationTextAttributesTransformerVSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_4_24();
  v7 = type metadata accessor for AttributeContainer();
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v11 = type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  v160 = v15;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v161 = v17;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_149();
  v19 = RecentsListViewController.gridLayoutInset()();
  v20 = OBJC_IVAR___FTRecentsListViewController_newFaceTimeDeleteButton;
  v21 = &off_1E7FE9000;
  v156 = ObjectType;
  if (!*&v0[OBJC_IVAR___FTRecentsListViewController_newFaceTimeDeleteButton])
  {
    v158 = OBJC_IVAR___FTRecentsListViewController_newFaceTimeDeleteButton;
    MEMORY[0x1BFB21AA0]();
    v22 = v13;
    v23 = objc_opt_self();
    v24 = [v23 systemRedColor];
    UIButton.Configuration.baseBackgroundColor.setter();
    v25 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    v26.super.isa = v25;
    OUTLINED_FUNCTION_17_0(0xD000000000000020, 0x80000001BC4FB4D0, v27, v28, v26);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    type metadata accessor for AttributedString();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    UIButton.Configuration.attributedTitle.setter();
    OUTLINED_FUNCTION_33_15();
    UIConfigurationTextAttributesTransformer.init(_:)();
    type metadata accessor for UIConfigurationTextAttributesTransformer();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    v37 = [v23 whiteColor];
    UIButton.Configuration.baseForegroundColor.setter();
    OUTLINED_FUNCTION_188_0(v38, v39, v40, v41);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIButton, 0x1E69DC738);
    v155 = v22;
    OUTLINED_FUNCTION_284();
    v42 = OUTLINED_FUNCTION_1_5();
    v43(v42);
    v44 = UIButton.init(configuration:primaryAction:)();
    outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x61436574656C6544, 0xEB00000000736C6CLL, v44);
    v45 = *MEMORY[0x1E69DDC38];
    v46 = v44;
    [v46 setMaximumContentSizeCategory_];
    [v46 addTarget:v2 action:sel_deleteButtonAction_ forControlEvents:64];
    OUTLINED_FUNCTION_11_23();
    v48 = (*((*MEMORY[0x1E69E7D40] & v47) + 0x678))();
    v49 = [objc_allocWithZone(MEMORY[0x1E69DD6C8]) initWithScrollView:v48 edge:4 style:1];

    [v46 addInteraction_];
    [v46 setTranslatesAutoresizingMaskIntoConstraints_];
    v50 = [v46 titleLabel];
    if (v50)
    {
      v51 = v50;
      UIView.traitOverrides.getter();
      UIMutableTraits._userInterfaceRenderingMode.setter();
      UIView.traitOverrides.setter();
    }

    v52 = [v46 imageView];
    if (v52)
    {
      v53 = v52;
      UIView.traitOverrides.getter();
      UIMutableTraits._userInterfaceRenderingMode.setter();
      UIView.traitOverrides.setter();
    }

    v54 = [v2 view];
    if (!v54)
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v55 = v54;
    [v54 addSubview_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_37_0();
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1BC4BAC30;
    v57 = [v46 bottomAnchor];

    v58 = [v2 view];
    if (!v58)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v59 = v58;
    v60 = [v58 safeAreaLayoutGuide];

    v61 = [v60 bottomAnchor];
    v62 = [objc_opt_self() currentDevice];
    v63 = [v62 userInterfaceIdiom];

    if (v63 == 1)
    {
      v64 = -16.0;
    }

    else
    {
      v64 = 0.0;
    }

    v65 = objc_opt_self();
    v66 = [v57 constraintEqualToAnchor:v61 constant:v64];

    *(v56 + 32) = v66;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
    OUTLINED_FUNCTION_170();
    Array._bridgeToObjectiveC()();
    OUTLINED_FUNCTION_212();

    [v65 activateConstraints_];

    (*(v155 + 8))(v1, v11);
    v20 = v158;
    v67 = *&v2[v158];
    *&v2[v158] = v46;
    v13 = v155;

    v21 = 0x1FC567000;
  }

  v68 = OBJC_IVAR___FTRecentsListViewController_newFaceTimeMarkAsReadButton;
  if (!*&v2[OBJC_IVAR___FTRecentsListViewController_newFaceTimeMarkAsReadButton])
  {
    v159 = v20;
    MEMORY[0x1BFB21AA0]();
    v69 = objc_opt_self();
    v70 = [v69 systemLightGrayTintColor];
    UIButton.Configuration.baseBackgroundColor.setter();
    v71 = [objc_opt_self() v21 + 1416];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_180_0();
    OUTLINED_FUNCTION_5_5();
    v72.super.isa = v71;
    OUTLINED_FUNCTION_17_0(v73, v74, v75, v76, v72);
    OUTLINED_FUNCTION_213();

    AttributeContainer.init()();
    OUTLINED_FUNCTION_40_2();
    AttributedString.init(_:attributes:)();
    type metadata accessor for AttributedString();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
    UIButton.Configuration.attributedTitle.setter();
    OUTLINED_FUNCTION_33_15();
    UIConfigurationTextAttributesTransformer.init(_:)();
    type metadata accessor for UIConfigurationTextAttributesTransformer();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    v85 = [v69 whiteColor];
    UIButton.Configuration.baseForegroundColor.setter();
    OUTLINED_FUNCTION_188_0(v86, v87, v88, v89);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIButton, 0x1E69DC738);
    (*(v13 + 16))(v161, v160, v11);
    v90 = UIButton.init(configuration:primaryAction:)();
    outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x655273416B72614DLL, 0xEF736C6C61436461, v90);
    v91 = *MEMORY[0x1E69DDC38];
    v92 = v90;
    [v92 setMaximumContentSizeCategory_];
    [v92 addTarget:v2 action:sel_markAsReadButtonAction_ forControlEvents:64];
    if (_UISolariumEnabled())
    {
      OUTLINED_FUNCTION_293();
      v94 = (*(v93 + 1656))();
      v95 = [objc_allocWithZone(MEMORY[0x1E69DD6C8]) initWithScrollView:v94 edge:4 style:1];

      v96 = OUTLINED_FUNCTION_16_0();
      [v96 v97];
    }

    [v92 setTranslatesAutoresizingMaskIntoConstraints_];

    v98 = [v2 view];
    if (v98)
    {
      v99 = v98;
      [v98 addSubview_];

      (*(v13 + 8))(v160, v11);
      v100 = *&v2[v68];
      *&v2[v68] = v92;

      v20 = v159;
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_17:
  v101 = *&v2[v20];
  if (v101)
  {
    v102 = *&v2[v68];
    if (v102)
    {
      v103 = OBJC_IVAR___FTRecentsListViewController_newFaceTimeEditModeButtonWidthConstraints;
      if (!*&v2[OBJC_IVAR___FTRecentsListViewController_newFaceTimeEditModeButtonWidthConstraints])
      {
        type metadata accessor for RecentsListViewController(0);
        v104 = v102;
        v105 = v101;
        static RecentsListViewController.gridLayoutItemSize()();
        v107 = v106 * 0.8;
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        OUTLINED_FUNCTION_109();
        v109 = swift_allocObject();
        *(v109 + 16) = xmmword_1BC4BA930;
        v110 = v105;
        v111 = [v110 widthAnchor];
        v112 = [v111 constraintEqualToConstant_];

        *(v109 + 32) = v112;
        v113 = v104;
        v114 = [v113 widthAnchor];
        v115 = [v114 constraintEqualToConstant_];

        *(v109 + 40) = v115;
        v116 = objc_opt_self();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v116 activateConstraints_];

        *&v2[v103] = v109;

        v118 = OUTLINED_FUNCTION_328(v108);
        *(v118 + 16) = xmmword_1BC4BC370;
        v119 = [v110 leadingAnchor];
        v120 = [v2 view];
        if (v120)
        {
          v121 = v120;
          v122 = [v120 centerXAnchor];

          v123 = [v119 constraintEqualToAnchor:v122 constant:v19 * 0.5];
          *(v118 + 32) = v123;
          v124 = [v113 bottomAnchor];
          v125 = [v2 view];
          if (v125)
          {
            v126 = v125;
            v127 = [v125 safeAreaLayoutGuide];

            v128 = [v127 bottomAnchor];
            v129 = [objc_opt_self() currentDevice];
            v130 = [v129 userInterfaceIdiom];

            v131 = 0.0;
            if (v130 == 1)
            {
              v131 = -16.0;
            }

            v132 = [v124 constraintEqualToAnchor:v128 constant:v131];

            *(v118 + 40) = v132;
            v133 = [v113 trailingAnchor];
            v134 = [v2 view];
            if (v134)
            {
              v135 = v134;
              v136 = [v134 centerXAnchor];

              v137 = [v133 constraintEqualToAnchor:v136 constant:v19 * -0.5];
              *(v118 + 48) = v137;
              *&v2[OBJC_IVAR___FTRecentsListViewController_newFaceTimeEditModeButtonStandardConstraints] = v118;

              v138 = OUTLINED_FUNCTION_328(v108);
              *(v138 + 16) = xmmword_1BC4BC370;
              v139 = [v110 centerXAnchor];
              v140 = [v2 view];
              if (v140)
              {
                v141 = v140;
                v142 = [v140 centerXAnchor];

                v143 = [v139 constraintEqualToAnchor_];
                *(v138 + 32) = v143;
                v144 = [v113 bottomAnchor];
                v145 = [v110 topAnchor];

                v146 = [v144 constraintEqualToAnchor:v145 constant:-v19];
                *(v138 + 40) = v146;
                v147 = [v113 centerXAnchor];

                v148 = [v2 view];
                if (v148)
                {
                  v149 = v148;

                  v150 = [v149 centerXAnchor];

                  v151 = [v147 constraintEqualToAnchor_];
                  *(v138 + 48) = v151;
                  *&v2[OBJC_IVAR___FTRecentsListViewController_newFaceTimeEditModeButtonAXConstraints] = v138;

                  RecentsListViewController.updateEditModeButtonConstraints()();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
                  OUTLINED_FUNCTION_109();
                  v152 = swift_allocObject();
                  *(v152 + 16) = xmmword_1BC4BA940;
                  v153 = type metadata accessor for UITraitPreferredContentSizeCategory();
                  v154 = MEMORY[0x1E69DC2B0];
                  *(v152 + 32) = v153;
                  *(v152 + 40) = v154;
                  OUTLINED_FUNCTION_20();
                  *(swift_allocObject() + 16) = v156;
                  OUTLINED_FUNCTION_16_0();
                  UIViewController.registerForTraitChanges<A>(_:handler:)();
                  swift_unknownObjectRelease();

                  return;
                }

LABEL_36:
                __break(1u);
                return;
              }

LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }
  }
}

void RecentsListViewController.updateEditModeButtonConstraints()()
{
  v1 = *(v0 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeEditModeButtonWidthConstraints);
  if (v1 && *(v0 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeEditModeButtonStandardConstraints) && *(v0 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeEditModeButtonAXConstraints))
  {
    type metadata accessor for RecentsCollectionViewGridCell();

    static RecentsCollectionViewGridCell.needsAXLayout.getter();
    v2 = objc_opt_self();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 deactivateConstraints_];

    v4 = Array._bridgeToObjectiveC()().super.isa;

    [v2 activateConstraints_];

    type metadata accessor for RecentsListViewController(0);
    static RecentsListViewController.gridLayoutItemSize()();
    v6 = v5;
    v7 = specialized Array.count.getter();
    if (v7)
    {
      v8 = v7;
      if (v7 < 1)
      {
        __break(1u);
        return;
      }

      v9 = 0;
      v10 = v6 * 0.8;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1BFB22010](v9, v1);
        }

        else
        {
          v11 = *(v1 + 8 * v9 + 32);
        }

        v12 = v11;
        ++v9;
        [v11 setConstant_];
      }

      while (v8 != v9);
    }
  }
}

void closure #1 in RecentsListViewController.configureNewDeleteAndMarkAsReadButtons()(uint64_t a1, uint64_t a2)
{
  if (_s15ConversationKit29RecentsCollectionViewGridCellC22didChangeNeedsAXLayout013previousTraitD04selfSbSo07UITraitD0C_So0O11Environment_ptFZTf4nen_nAA0c4ListE10ControllerC_Tt1g5(a2))
  {
    RecentsListViewController.updateEditModeButtonConstraints()();
  }
}

uint64_t closure #1 in RecentsListViewController.textCenteringTransformer()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_msgSend(objc_allocWithZone(MEMORY[0x1E69DB7C8]) init)];
  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ParagraphStyleAttribute and conformance AttributeScopes.UIKitAttributes.ParagraphStyleAttribute();
  return AttributeContainer.subscript.setter();
}

void WeakBox<>.acceptedIntroductionsDidChange()()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong isViewLoaded])
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_156();
      os_log(_:dso:log:type:_:)(v3);
      OUTLINED_FUNCTION_11_23();
      v4 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & v5) + 0x630))();
      OUTLINED_FUNCTION_27_15();
      (*(v6 + 184))();
      OUTLINED_FUNCTION_173();

      OUTLINED_FUNCTION_283();
      (*((*v4 & v7) + 0x408))(0, 1);

      v2 = v0;
    }
  }
}

uint64_t key path getter for AvatarViewControllerDelegateWrapper.hostingViewController : AvatarViewControllerDelegateWrapper@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AvatarViewControllerDelegateWrapper.hostingViewController : AvatarViewControllerDelegateWrapper(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x60);
  v4 = *a1;
  return v3(v2);
}

void AvatarViewControllerDelegateWrapper.hostingViewController.setter(void *a1)
{
  OUTLINED_FUNCTION_3_12(a1);
  OUTLINED_FUNCTION_75_1();
  swift_unknownObjectWeakAssign();
}

void (*AvatarViewControllerDelegateWrapper.hostingViewController.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  v3 = OUTLINED_FUNCTION_47(v2);
  v4 = OBJC_IVAR____TtC15ConversationKit35AvatarViewControllerDelegateWrapper_hostingViewController;
  *(v3 + 32) = v0;
  *(v3 + 40) = v4;
  OUTLINED_FUNCTION_30_2(v0 + v4, v1);
  *(v1 + 24) = swift_unknownObjectWeakLoadStrong();
  return AvatarViewControllerDelegateWrapper.hostingViewController.modify;
}

void AvatarViewControllerDelegateWrapper.hostingViewController.modify()
{
  OUTLINED_FUNCTION_297();
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

id AvatarViewControllerDelegateWrapper.init(hostingViewController:)(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit35AvatarViewControllerDelegateWrapper_hostingViewController;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_5(v1 + v3, v7);
  OUTLINED_FUNCTION_75_1();
  swift_unknownObjectWeakAssign();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AvatarViewControllerDelegateWrapper();
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

uint64_t AvatarViewControllerDelegateWrapper.hostingViewController(for:)()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))();
  if (!result)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_1_20();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v2, static Logger.conversationKit);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (OUTLINED_FUNCTION_25(v4))
    {
      v5 = OUTLINED_FUNCTION_42();
      v6 = OUTLINED_FUNCTION_23();
      v7[0] = v6;
      *v5 = 136446210;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000001BC4FB5A0, v7);
      _os_log_impl(&dword_1BBC58000, v3, v0, "AvatarViewControllerDelegateWrapper %{public}s: hostingViewController is unexpectedly nil, this is a fatal error.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_18();
    }

    else
    {
    }

    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(105);
    MEMORY[0x1BFB20B10](0xD000000000000024, 0x80000001BC4FB570);
    MEMORY[0x1BFB20B10](0xD00000000000001BLL, 0x80000001BC4FB5A0);
    MEMORY[0x1BFB20B10](0xD000000000000043, 0x80000001BC4FB5C0);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id AvatarViewControllerDelegateWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void RecentsListViewController.peoplePickerInvited(_:withVideo:button:callerID:messagesGroup:)()
{
  OUTLINED_FUNCTION_331();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2F0))();
  OUTLINED_FUNCTION_27_15();
  (*(v9 + 128))(v8, v6, v4, 0, v2);

  v10 = [v0 presentedViewController];
  if (v10)
  {
    OUTLINED_FUNCTION_257(v10, sel_dismissViewControllerAnimated_completion_);
    OUTLINED_FUNCTION_9_17();
  }

  else
  {
    OUTLINED_FUNCTION_9_17();
  }
}

Swift::Void __swiftcall RecentsListViewController.peoplePickerCancelled()()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_257(v1, sel_dismissViewControllerAnimated_completion_);
  }

  RecentsListViewController.fadeInNavigationController()();
}

void RecentsListViewController.fadeInNavigationController()()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 view];

    if (v3)
    {
      [v3 alpha];
      v5 = v4;

      if (v5 == 0.0)
      {
        v6 = objc_opt_self();
        v7 = swift_allocObject();
        *(v7 + 16) = v0;
        v10[4] = partial apply for closure #1 in RecentsListViewController.fadeInNavigationController();
        v10[5] = v7;
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 1107296256;
        v10[2] = thunk for @escaping @callee_guaranteed () -> ();
        v10[3] = &block_descriptor_353;
        v8 = _Block_copy(v10);
        v9 = v0;

        [v6 animateWithDuration:v8 animations:0.3];
        _Block_release(v8);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void RecentsListViewController.peoplePickerRequestedDialCall(using:video:contact:handle:senderIdentity:ttyType:)()
{
  OUTLINED_FUNCTION_272();
  v4 = v3;
  OUTLINED_FUNCTION_244();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2F0))();
  OUTLINED_FUNCTION_27_15();
  (*(v11 + 136))(v10, v8, v6, v2, v1, v4, 1);

  v12 = [v0 presentedViewController];
  if (v12)
  {
    OUTLINED_FUNCTION_257(v12, sel_dismissViewControllerAnimated_completion_);
    OUTLINED_FUNCTION_194_0();
  }

  else
  {
    OUTLINED_FUNCTION_194_0();
  }
}

void RecentsListViewController.peoplePickerSentInvitation(with:facetimeUnavailablePeople:facetimeAvailablePeople:shouldAddOtherInvitedToRemoteMembers:)()
{
  OUTLINED_FUNCTION_331();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2F0))();
  OUTLINED_FUNCTION_27_15();
  v1 = OUTLINED_FUNCTION_7_8();
  v2(v1);

  v3 = [v0 presentedViewController];
  if (v3)
  {
    OUTLINED_FUNCTION_257(v3, sel_dismissViewControllerAnimated_completion_);
    OUTLINED_FUNCTION_9_17();
  }

  else
  {
    OUTLINED_FUNCTION_9_17();
  }
}

uint64_t RecentsListViewController.peoplePickerRequestedUnknownContactPopover(for:sourceView:sourceRect:)()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_55();
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2A8))();
  if (result)
  {
    OUTLINED_FUNCTION_213();
    swift_getObjectType();
    OUTLINED_FUNCTION_15_14();
    v2 = OUTLINED_FUNCTION_18_1();
    v3(v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

void closure #1 in RecentsListViewController.fadeInNavigationController()(void *a1)
{
  v1 = [a1 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 view];

    if (v3)
    {
      [v3 setAlpha_];
    }

    else
    {
      __break(1u);
    }
  }
}

void RecentsListViewController.contactStoreDidChange(_:)()
{
  v1 = v0;
  if ([v0 isViewLoaded])
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.conversationKit);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BBC58000, v3, v4, "ContactStoreDidChange. Reload data.", v5, 2u);
      MEMORY[0x1BFB23DF0](v5, -1, -1);
    }

    if (one-time initialization token for faceTime != -1)
    {
      swift_once();
    }

    v6 = [*(static ParticipantContactDetailsCache.faceTime + 3) removeAllObjects];
    v7 = MEMORY[0x1E69E7D40];
    v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x630))(v6);
    oslog = (*(*v8 + 184))(v8);

    (*((*v7 & oslog->isa) + 0x408))(1, 0);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.conversationKit);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BBC58000, oslog, v10, "ContactStoreDidChange. Skip reload data before view is loaded.", v11, 2u);
      MEMORY[0x1BFB23DF0](v11, -1, -1);
    }
  }
}

uint64_t @objc RecentsListViewController.deleteAllRecents(_:)(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a1;
  v9 = OUTLINED_FUNCTION_182();
  a4(v9);

  v10 = OUTLINED_FUNCTION_33_0();
  return v11(v10);
}

void closure #1 in RecentsListViewController.showMakoUserAlert()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    URL.init(string:)();
    v5 = type metadata accessor for URL();
    v7 = 0;
    if (__swift_getEnumTagSinglePayload(v2, 1, v5) != 1)
    {
      URL._bridgeToObjectiveC()(v6);
      v7 = v8;
      (*(*(v5 - 8) + 8))(v2, v5);
    }

    [v4 openSensitiveURL:v7 withOptions:0];
  }
}

uint64_t RecentsListViewController.coordinatorFinished(_:completed:)(void *a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_41_0();
  v3 = os_log(_:dso:log:type:_:)(v2);
  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC0))(v3);
}

uint64_t RecentsListViewController.coordinatorFailed(_:)(void *a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_41_0();
  v3 = os_log(_:dso:log:type:_:)(v2);
  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC0))(v3);
}

void WeakBox<>.recentsHeaderButtonsView(_:didTapAction:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO18InvalidationReasonOSgMd, &_s6TipKit4TipsO18InvalidationReasonOSgMR);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.default.getter();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = OUTLINED_FUNCTION_13_12(v11);
    *(v12 + 16) = xmmword_1BC4BA940;
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_243_0();
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = v1;
    *(v12 + 40) = v2;
    OUTLINED_FUNCTION_156();
    os_log(_:dso:log:type:_:)(v13);

    if (v4)
    {
      v15 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0xE8))(v14);
      v16 = OUTLINED_FUNCTION_205();
      [v16 v17];
    }

    else
    {
      v18 = type metadata accessor for Tips.InvalidationReason();
      OUTLINED_FUNCTION_168(v0, v19, v20, v18);
      RecentsListViewController.tipKitDismissTip(_:)(v0);
      outlined destroy of CallControlsService?(v0, &_s6TipKit4TipsO18InvalidationReasonOSgMd, &_s6TipKit4TipsO18InvalidationReasonOSgMR);
      [v10 didTapNewCallButton];
    }
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t RecentsListViewController.didJoinCall(from:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_44_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_34_15();
  v7 = type metadata accessor for RecentsCallItem(v6);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  (*(*a1 + 432))();
  type metadata accessor for IndexPath();
  v9 = OUTLINED_FUNCTION_84_1();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_7_8();
  RecentsListViewController.joinCall(for:indexPath:isOrphanedVideoMessage:)();
  v13 = OUTLINED_FUNCTION_249();
  outlined destroy of CallControlsService?(v13, v14, &_s10Foundation9IndexPathVSgMR);
  OUTLINED_FUNCTION_0_74();
  return _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
}

Swift::Void __swiftcall RecentsListViewController.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  OUTLINED_FUNCTION_29();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_83_1();
  v59.receiver = v2;
  v59.super_class = type metadata accessor for RecentsListViewController(0);
  objc_msgSendSuper2(&v59, sel_setEditing_animated_, v7 & 1, v5 & 1);
  v16 = MEMORY[0x1E69E7D40];
  if (*(v2 + OBJC_IVAR___FTRecentsListViewController_isFaceTimeLaunchPageEnabled) == 1)
  {
    OUTLINED_FUNCTION_137();
    v58 = *(v17 + 1656);
    v18 = v58();
    v19 = [v18 indexPathsForVisibleItems];

    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    v22 = *(v20 + 16);
    v23 = v2;
    if (v7)
    {
      if (v22)
      {
        v24 = OUTLINED_FUNCTION_198(v21);
        v26 = v24 + v25;
        OUTLINED_FUNCTION_285();
        do
        {
          v27 = OUTLINED_FUNCTION_157();
          v28 = v57(v27);
          v29 = (v58)(v28);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          (*v10)(v3, v8);
          v31 = [v29 cellForItemAtIndexPath_];

          if (v31)
          {
            type metadata accessor for RecentsCollectionViewGridCell();
            v32 = swift_dynamicCastClass();
            if (v32)
            {
              (*((*MEMORY[0x1E69E7D40] & *v32) + 0x198))();
            }
          }

          v26 += v56;
          --v22;
          v2 = v23;
        }

        while (v22);

        v7 = v55;
      }

      else
      {
      }

      v16 = MEMORY[0x1E69E7D40];
      RecentsListViewController.configureNewDeleteAndMarkAsReadButtons()();
      v48 = *(v2 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeDeleteButton);
      if (v48)
      {
        [v48 setAlpha_];
      }

      v49 = *(v2 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeMarkAsReadButton);
      if (v49)
      {
        [v49 setAlpha_];
      }

      v50 = [objc_opt_self() currentDevice];
      v51 = [v50 userInterfaceIdiom];

      if (!v51)
      {
        v47 = *(v2 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeButton);
        if (v47)
        {
          v47 = [v47 setAlpha_];
        }
      }
    }

    else
    {
      if (v22)
      {
        v38 = OUTLINED_FUNCTION_198(v21);
        v40 = v38 + v39;
        OUTLINED_FUNCTION_285();
        do
        {
          v41 = OUTLINED_FUNCTION_43_0();
          v42 = v57(v41);
          v43 = (v58)(v42);
          v44 = IndexPath._bridgeToObjectiveC()().super.isa;
          (*v10)(v14, v8);
          v45 = [v43 cellForItemAtIndexPath_];

          if (v45)
          {
            type metadata accessor for RecentsCollectionViewGridCell();
            v46 = swift_dynamicCastClass();
            if (v46)
            {
              (*((*MEMORY[0x1E69E7D40] & *v46) + 0x1A0))();
            }
          }

          v40 += v56;
          --v22;
          v2 = v23;
        }

        while (v22);

        v7 = v55;
      }

      else
      {
      }

      v16 = MEMORY[0x1E69E7D40];
      RecentsListViewController.configureNewFaceTimeButton()();
      v52 = *(v2 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeDeleteButton);
      if (v52)
      {
        [v52 setAlpha_];
      }

      v53 = *(v2 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeMarkAsReadButton);
      if (v53)
      {
        [v53 setAlpha_];
      }

      v47 = *(v2 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeButton);
      if (v47)
      {
        v47 = [v47 setAlpha_];
      }
    }
  }

  else
  {
    v33 = [v2 navigationController];
    if (v33)
    {
      v5 = v33;
      [v33 setToolbarHidden:(v7 & 1) == 0 animated:1];
    }

    v34 = RecentsListViewController.deleteButtonItem.getter();
    if (v7)
    {
      OUTLINED_FUNCTION_137();
      v36 = (*(v35 + 1656))();
      outlined bridged method (ob) of @objc UICollectionView.indexPathsForSelectedItems.getter(v36);
      OUTLINED_FUNCTION_270();
      v37 = v5 != 0;
    }

    else
    {
      v37 = 0;
    }

    [v34 setEnabled_];
  }

  v54 = (*((*v16 & *v2) + 0x678))(v47);
  [v54 setEditing_];

  OUTLINED_FUNCTION_30_0();
}

double RecentsListViewController.deleteButtonAction(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x678))();
  v5 = outlined bridged method (ob) of @objc UICollectionView.indexPathsForSelectedItems.getter(v4);
  if (v5)
  {
    v7 = v5;
    if (*(v5 + 16))
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController, 0x1E69DC650);
      v8 = objc_opt_self();
      v9 = [v8 conversationKit];
      v25._object = 0xE000000000000000;
      v10.value._countAndFlagsBits = 0x61737265766E6F43;
      v11._object = 0x80000001BC4FC410;
      v11._countAndFlagsBits = 0xD00000000000001DLL;
      v10.value._object = 0xEF74694B6E6F6974;
      v12._countAndFlagsBits = 0;
      v12._object = 0xE000000000000000;
      v25._countAndFlagsBits = 0;
      v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, v9, v12, v25);

      v23 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v13._countAndFlagsBits, v13._object, 0, 0, 0);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction, 0x1E69DC648);
      v14 = [v8 conversationKit];
      v26._object = 0xE000000000000000;
      v15._countAndFlagsBits = 0x415F4554454C4544;
      v15._object = 0xEA00000000004C4CLL;
      v16.value._countAndFlagsBits = 0x61737265766E6F43;
      v16.value._object = 0xEF74694B6E6F6974;
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      v26._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v26);

      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = v7;
      v20 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
      [v23 addAction_];

      v21 = [v23 popoverPresentationController];
      if (v21)
      {
        v22 = v21;
        [v21 setSourceView_];
      }

      [v2 presentViewController:v23 animated:1 completion:0];
    }

    else
    {
    }
  }

  return result;
}

void *closure #1 in RecentsListViewController.deleteButtonAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(*((*MEMORY[0x1E69E7D40] & *result) + 0x630))();
    (*(v6 + 296))(a3);

    swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    RecentsListViewController.removeRecentCallsAndReportIfNeeded(_:shouldDeleteAllItemsForContact:preparationHandler:)();
  }

  return result;
}

void closure #1 in closure #1 in RecentsListViewController.deleteButtonAction(_:)(char a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      [Strong endEditing];
    }
  }
}

id RecentsListViewController.markAsReadButtonAction(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2.n128_f64[0] = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17 - v3;
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x678))(v2);
  v7 = outlined bridged method (ob) of @objc UICollectionView.indexPathsForSelectedItems.getter(v6);
  if (v7)
  {
    v8 = v7;
    if (*(v7 + 16))
    {
      v9 = *(*((*v5 & *v0) + 0x630))();
      v10 = (*(v9 + 296))(v8);

      v11 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
      type metadata accessor for MainActor();
      v12 = v0;
      v13 = static MainActor.shared.getter();
      v14 = swift_allocObject();
      v15 = MEMORY[0x1E69E85E0];
      v14[2] = v13;
      v14[3] = v15;
      v14[4] = v12;
      v14[5] = v10;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

      return [v12 endEditing];
    }
  }

  return [v0 endEditing];
}

uint64_t closure #1 in RecentsListViewController.markAsReadButtonAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsListViewController.markAsReadButtonAction(_:), v7, v6);
}

uint64_t closure #1 in RecentsListViewController.markAsReadButtonAction(_:)()
{
  OUTLINED_FUNCTION_44();
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 64)) + 0x2C0))();
  OUTLINED_FUNCTION_62_5();
  OUTLINED_FUNCTION_72_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_277(v1);
  *v2 = v3;
  v2[1] = closure #1 in RecentsListViewController.markAsReadButtonAction(_:);
  v4 = OUTLINED_FUNCTION_87_3(*(v0 + 72));

  return v5(v4);
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 112) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = closure #1 in RecentsListViewController.markAsReadButtonAction(_:);
  }

  else
  {
    v7 = closure #1 in RecentsListViewController.markAsReadButtonAction(_:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  OUTLINED_FUNCTION_9();

  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  if (one-time initialization token for recents != -1)
  {
    OUTLINED_FUNCTION_44_9(&one-time initialization token for recents);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, &static Logger.recents);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_18_0(v4))
  {
    v5 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v5);
    _os_log_impl(&dword_1BBC58000, v3, v4, "Successfully marked call items as read", v0, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_13();

  return v6();
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (one-time initialization token for recents != -1)
  {
    OUTLINED_FUNCTION_44_9(&one-time initialization token for recents);
  }

  v2 = *(v0 + 112);
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, &static Logger.recents);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 112);
  if (v7)
  {
    OUTLINED_FUNCTION_42();
    v9 = OUTLINED_FUNCTION_268();
    *v1 = 138543362;
    v10 = v8;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_140();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    outlined destroy of CallControlsService?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_319();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

void *RecentsListViewController.presentingViewController(for:sourceView:sourceRect:)(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x500))(a1);
  }

  v3 = v2;
  return v2;
}

Swift::Void __swiftcall CNContact.unblock()()
{
  OUTLINED_FUNCTION_321();
  v42 = v0;
  v4 = [v0 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  OUTLINED_FUNCTION_235();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = MEMORY[0x1E69E7CC0];
  v46 = MEMORY[0x1E69E7CC0];
  specialized Array.count.getter();
  OUTLINED_FUNCTION_145();
  v43 = v6;
  v44 = v7;
  while (v1 != v2)
  {
    if (v44)
    {
      v25 = OUTLINED_FUNCTION_281();
      v8 = MEMORY[0x1BFB22010](v25);
    }

    else
    {
      if (v2 >= *(v43 + 16))
      {
        goto LABEL_37;
      }

      v8 = *(v5 + 8 * v2 + 32);
    }

    v9 = v8;
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      return;
    }

    v11 = [v8 value];
    v12 = [v11 digits];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_250();

    v13 = TUHomeCountryCode();
    if (v13)
    {
      v14 = v13;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      v3 = 0;
      v16 = 0;
    }

    v17 = objc_allocWithZone(MEMORY[0x1E69D8C98]);
    v18 = OUTLINED_FUNCTION_152();
    v22 = @nonobjc TUPhoneNumber.init(digits:countryCode:)(v21, v18, v19, v20, v16);

    ++v2;
    if (v22)
    {
      MEMORY[0x1BFB20CC0]();
      OUTLINED_FUNCTION_280();
      if (v24)
      {
        OUTLINED_FUNCTION_59_3(v23);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_304();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v45 = v46;
      v2 = v10;
    }
  }

  v26 = specialized Array.count.getter();
  v27 = 0;
  v28 = v45 & 0xC000000000000001;
  while (v26 != v27)
  {
    if (v28)
    {
      v29 = MEMORY[0x1BFB22010](v27, v45);
    }

    else
    {
      if (v27 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v29 = *(v45 + 8 * v27 + 32);
    }

    v30 = v29;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_38;
    }

    v31 = [objc_opt_self() sharedPrivacyManager];
    if (!v31)
    {
      goto LABEL_42;
    }

    v32 = v31;
    [v31 setBlockIncomingCommunication:0 forPhoneNumber:v30];

    ++v27;
  }

  v33 = [v42 emailAddresses];
  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array.count.getter();
  OUTLINED_FUNCTION_251();
  while (v33 != v28)
  {
    if (0x1E69D8000uLL)
    {
      v40 = OUTLINED_FUNCTION_45_1();
      v35 = MEMORY[0x1BFB22010](v40);
    }

    else
    {
      if (v28 >= *(v3 + 16))
      {
        goto LABEL_41;
      }

      v35 = *(v34 + 8 * v28 + 32);
    }

    v36 = v35;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_40;
    }

    v37 = [objc_opt_self() sharedPrivacyManager];
    if (!v37)
    {
      goto LABEL_43;
    }

    v38 = v37;
    v39 = [v36 value];
    [v38 &selRef_cornerRadius + 2];

    ++v28;
  }

  OUTLINED_FUNCTION_273();
}

Swift::Bool __swiftcall CNContact.isBlocked()()
{
  OUTLINED_FUNCTION_321();
  v38 = v0;
  v3 = [v0 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  OUTLINED_FUNCTION_235();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  specialized Array.count.getter();
  OUTLINED_FUNCTION_145();
  v39 = v6;
  v40 = v7;
  while (v1 != v2)
  {
    if (v40)
    {
      v24 = OUTLINED_FUNCTION_281();
      v5 = MEMORY[0x1BFB22010](v24);
    }

    else
    {
      if (v2 >= *(v39 + 16))
      {
        goto LABEL_35;
      }

      v5 = *(v4 + 8 * v2 + 32);
    }

    v8 = v5;
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return v5;
    }

    v10 = [v5 value];
    v11 = [v10 digits];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_250();

    v12 = TUHomeCountryCode();
    if (v12)
    {
      v13 = v12;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = objc_allocWithZone(MEMORY[0x1E69D8C98]);
    v17 = OUTLINED_FUNCTION_152();
    v21 = @nonobjc TUPhoneNumber.init(digits:countryCode:)(v20, v17, v18, v19, v15);

    ++v2;
    if (v21)
    {
      MEMORY[0x1BFB20CC0]();
      OUTLINED_FUNCTION_280();
      if (v23)
      {
        OUTLINED_FUNCTION_59_3(v22);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_304();
      LOBYTE(v5) = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v41 = v42;
      v2 = v9;
    }
  }

  v5 = specialized Array.count.getter();
  v25 = v5;
  for (i = 0; v25 != i; ++i)
  {
    if ((v41 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFB22010](i, v41);
    }

    else
    {
      if (i >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v5 = *(v41 + 8 * i + 32);
    }

    v27 = v5;
    if (__OFADD__(i, 1))
    {
      goto LABEL_36;
    }

    v5 = [objc_opt_self() sharedPrivacyManager];
    if (!v5)
    {
      goto LABEL_40;
    }

    v28 = v5;
    [v5 isIncomingCommunicationBlockedForPhoneNumber_];
  }

  v29 = [v38 emailAddresses];
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized Array.count.getter();
  v31 = v5;
  for (j = 0; v31 != j; ++j)
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      v36 = OUTLINED_FUNCTION_45_1();
      v5 = MEMORY[0x1BFB22010](v36);
    }

    else
    {
      if (j >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v5 = *(v30 + 8 * j + 32);
    }

    v33 = v5;
    if (__OFADD__(j, 1))
    {
      goto LABEL_38;
    }

    v5 = [objc_opt_self() sharedPrivacyManager];
    if (!v5)
    {
      goto LABEL_41;
    }

    v34 = v5;
    v35 = [v33 value];
    [v34 isIncomingCommunicationBlockedForEmailAddress_];
  }

  OUTLINED_FUNCTION_273();
  return v5;
}

void @objc TUHandle.unblock()(void *a1)
{
  v1 = a1;
  TUHandle.unblock()();
}

void TUHandle.unblock()(char a1)
{
  v4 = [v1 type];
  if (v4 == 1)
  {
    return;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_1_20();
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.conversationKit);
      v13 = v1;
      oslog = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v14))
      {
        v15 = OUTLINED_FUNCTION_42();
        v16 = OUTLINED_FUNCTION_23();
        v29 = v16;
        *v15 = 136315138;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
        v17 = v13;
        v18 = String.init<A>(reflecting:)();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v29);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_1BBC58000, oslog, v14, "Unknown handle type: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_27();

        return;
      }

      goto LABEL_16;
    }

    oslog = [objc_opt_self() sharedPrivacyManager];
    if (oslog)
    {
      v5 = [v1 value];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      outlined bridged method (mnbnn) of @objc TUPrivacyManager.setBlockIncomingCommunication(_:forEmailAddress:)(a1 & 1, v6, v8, oslog);
LABEL_16:

      return;
    }

    __break(1u);
    goto LABEL_21;
  }

  v9 = [v1 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = TUHomeCountryCode();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_213();
  }

  else
  {
    v9 = 0;
    v2 = 0;
  }

  v21 = objc_allocWithZone(MEMORY[0x1E69D8C98]);
  v22 = OUTLINED_FUNCTION_15_14();
  v25 = @nonobjc TUPhoneNumber.init(digits:countryCode:)(v24, v22, v23, v9, v2);
  if (v25)
  {
    v26 = v25;
    v27 = [objc_opt_self() sharedPrivacyManager];
    if (v27)
    {
      oslog = v27;
      [v27 setBlockIncomingCommunication:a1 & 1 forPhoneNumber:v26];

      goto LABEL_16;
    }

LABEL_21:
    __break(1u);
  }
}

void @objc TUHandle.block()(void *a1)
{
  v1 = a1;
  TUHandle.block()();
}

Swift::Bool __swiftcall TUHandle.isBlocked()()
{
  OUTLINED_FUNCTION_272();
  v65 = v2;
  v66 = v3;
  v4 = v0;
  v5 = [v0 type];
  if (v5 != 1)
  {
    if (v5 == 2)
    {
      v13 = [v0 value];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = TUHomeCountryCode();
      if (v14)
      {
        v15 = v14;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        OUTLINED_FUNCTION_213();
      }

      else
      {
        v13 = 0;
        v1 = 0;
      }

      v31 = objc_allocWithZone(MEMORY[0x1E69D8C98]);
      v32 = OUTLINED_FUNCTION_15_14();
      v35 = @nonobjc TUPhoneNumber.init(digits:countryCode:)(v34, v32, v33, v13, v1);
      if (!v35)
      {
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_1_20();
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v47, static Logger.conversationKit);
        v48 = v0;
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = OUTLINED_FUNCTION_42();
          v52 = OUTLINED_FUNCTION_23();
          v64[0] = v52;
          *v51 = 136315138;
          v53 = [v48 value];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v54 = OUTLINED_FUNCTION_43_0();
          v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v56);

          *(v51 + 4) = v57;
          OUTLINED_FUNCTION_132();
          _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v52);
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_26();
        }

        goto LABEL_29;
      }

      v36 = v35;
      v6 = [objc_opt_self() sharedPrivacyManager];
      if (v6)
      {
        v37 = v6;
        v12 = [v6 isIncomingCommunicationBlockedForPhoneNumber_];

LABEL_19:
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_1_20();
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v38, static Logger.conversationKit);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_163(v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 67109120;
          v41[1] = v12;
          OUTLINED_FUNCTION_219();
          _os_log_impl(v42, v43, v44, v45, v46, 8u);
          OUTLINED_FUNCTION_18();
        }

        goto LABEL_29;
      }
    }

    else
    {
      if (v5 != 3)
      {
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_1_20();
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v16, static Logger.conversationKit);
        v17 = v0;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = OUTLINED_FUNCTION_42();
          v21 = OUTLINED_FUNCTION_23();
          v64[0] = v21;
          *v20 = 136315138;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
          v22 = v17;
          v23 = String.init<A>(reflecting:)();
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v64);

          *(v20 + 4) = v25;
          OUTLINED_FUNCTION_132();
          _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v21);
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_26();
        }

        v12 = 0;
        goto LABEL_19;
      }

      v6 = [objc_opt_self() sharedPrivacyManager];
      if (v6)
      {
        v7 = v6;
        v8 = [v4 value];
        if (!v8)
        {
          v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v8 = MEMORY[0x1BFB209B0](v9);
        }

        v10 = OUTLINED_FUNCTION_2_52();
        v12 = [v10 v11];

        goto LABEL_19;
      }

      __break(1u);
    }

    __break(1u);
    return v6;
  }

LABEL_29:
  OUTLINED_FUNCTION_194_0();
  return v6;
}

uint64_t specialized IndexPathMappable.prefetchIndexPathsFor(_:amount:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v72 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v67 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v67 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v67 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v67 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v68 = &v67 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v76 = &v67 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v74 = &v67 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v67 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v73 = &v67 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v67 - v30;
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v32 = RecentsCollectionViewDataSource.mapping()();
  v70 = a1;
  v71 = v5;
  v34 = *(v5 + 16);
  v33 = v5 + 16;
  v77 = v34;
  v34(v31, a1, v4);
  v88 = 1;
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v4);
  if (a2 > 0)
  {
    v35 = 1;
  }

  else
  {
    v35 = a2;
  }

  if (a2 <= 0)
  {
    v36 = -1;
  }

  else
  {
    v36 = a2;
  }

  v80 = v36;
  v87 = (v33 + 16);
  v89 = MEMORY[0x1E69E7CC0];
  v78 = v33;
  v79 = v26;
  v85 = (v33 - 8);
  v37 = 1;
  v81 = 1;
  v86 = 1;
  v38 = &_s10Foundation9IndexPathVSgMR;
  v75 = v13;
  v39 = v76;
  v82 = v32;
  while (v35 < 0 && (v86 & 1) != 0)
  {
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    if (__swift_getEnumTagSinglePayload(v26, 1, v4) == 1)
    {
      v77(v13, v70, v4);
      if (__swift_getEnumTagSinglePayload(v26, 1, v4) != 1)
      {
        outlined destroy of CallControlsService?(v26, &_s10Foundation9IndexPathVSgMd, v38);
      }
    }

    else
    {
      (*v87)(v13, v26, v4);
    }

    Dictionary<>.previousIndexPath(from:)(v13, v32);
    (*v85)(v13, v4);
    outlined destroy of CallControlsService?(v31, &_s10Foundation9IndexPathVSgMd, v38);
    outlined init with take of URL?();
    v42 = v74;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    v41 = 1;
    v43 = v38;
    v44 = __swift_getEnumTagSinglePayload(v42, 1, v4) != 1;
    outlined destroy of CallControlsService?(v42, &_s10Foundation9IndexPathVSgMd, v43);
    v86 = v44;
    v45 = v44;
    v38 = v43;
    if ((v37 & 1) == 0)
    {
      if ((v45 & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_39;
    }

LABEL_45:
    v88 = v45;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    result = __swift_getEnumTagSinglePayload(v39, 1, v4);
    if (result == 1)
    {
      v32 = v82;
    }

    else
    {
      v57 = *v87;
      v58 = v83;
      (*v87)(v83, v39, v4);
      v77(v84, v58, v4);
      v59 = v89;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v82;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v59 = v65;
      }

      v62 = *(v59 + 16);
      v61 = *(v59 + 24);
      v89 = v59;
      if (v62 >= v61 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v89 = v66;
      }

      v63 = v71;
      (*(v71 + 8))(v83, v4);
      v64 = v89;
      *(v89 + 16) = v62 + 1;
      result = (v57)(v64 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v62, v84, v4);
      v13 = v75;
      v39 = v76;
    }

    if (v35 == v80)
    {
      outlined destroy of CallControlsService?(v31, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);

      return v89;
    }

    v37 = v41;
    v50 = __OFADD__(v35++, 1);
    v26 = v79;
    if (v50)
    {
      goto LABEL_61;
    }
  }

  if ((v81 & 1) == 0)
  {
    if ((v37 & 1) == 0)
    {
      if ((v88 & 1) == 0)
      {
LABEL_58:

        outlined destroy of CallControlsService?(v31, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        return v89;
      }

      v41 = 0;
      v81 = 0;
      goto LABEL_42;
    }

    v81 = 0;
    v41 = 1;
    goto LABEL_44;
  }

  v40 = v69;
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  if (__swift_getEnumTagSinglePayload(v40, 1, v4) == 1)
  {
    v77(v72, v70, v4);
    if (__swift_getEnumTagSinglePayload(v40, 1, v4) != 1)
    {
      outlined destroy of CallControlsService?(v40, &_s10Foundation9IndexPathVSgMd, v38);
    }
  }

  else
  {
    (*v87)(v72, v40, v4);
  }

  v46 = IndexPath.item.getter();
  result = IndexPath.section.getter();
  v48 = result;
  v49 = v32[2];
  if (result >= v49)
  {
LABEL_34:
    if (v48 >= v49)
    {
LABEL_36:
      v53 = 1;
      v52 = v68;
    }

    else
    {
      v52 = v68;
      MEMORY[0x1BFB1A660](v46, v48);
      v53 = 0;
    }

    v54 = v72;
    v41 = 1;
    __swift_storeEnumTagSinglePayload(v52, v53, 1, v4);
    (*v85)(v54, v4);
    outlined destroy of CallControlsService?(v31, &_s10Foundation9IndexPathVSgMd, v38);
    outlined init with take of URL?();
    v55 = v67;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v55, 1, v4);
    outlined destroy of CallControlsService?(v55, &_s10Foundation9IndexPathVSgMd, v38);
    v13 = v75;
    if (EnumTagSinglePayload == 1)
    {
      v81 = 0;
      v39 = v76;
      if ((v88 & 1) == 0)
      {
        goto LABEL_58;
      }

LABEL_39:
      v41 = 0;
LABEL_42:
      v45 = 1;
      goto LABEL_45;
    }

    v81 = 1;
    v39 = v76;
LABEL_44:
    v45 = v88;
    goto LABEL_45;
  }

  while (1)
  {
    v50 = __OFADD__(v46++, 1);
    if (v50)
    {
      break;
    }

    if (v49 && (result = specialized __RawDictionaryStorage.find<A>(_:)(v48), (v51 & 1) != 0))
    {
      if (v46 < *(v32[7] + 8 * result))
      {
        goto LABEL_34;
      }
    }

    else if (v46 < 0)
    {
      goto LABEL_34;
    }

    ++v48;
    v46 = -1;
    if (v48 >= v49)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

id @nonobjc SCUIInterventionViewController.init(workflow:contextDictionary:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = OUTLINED_FUNCTION_253();
  v5 = [v3 v4];

  return v5;
}

id @nonobjc TUPhoneNumber.init(digits:countryCode:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    v8 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = MEMORY[0x1BFB209B0](a2, a1);

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = MEMORY[0x1BFB209B0](a4, a5);

LABEL_6:
  v10 = [v5 initWithDigits:v8 countryCode:v9];

  return v10;
}

id thunk for @escaping @callee_guaranteed () -> (@owned UIViewController?)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v2(v3);

  return v4;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  static ConversationControlsAction.== infix(_:_:)();
  return OUTLINED_FUNCTION_94_1(v2);
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, a2, MEMORY[0x1E69695A8]) & 1;
}

{
  v2 = static ConversationControlsType.== infix(_:_:)(a1, a2);
  return OUTLINED_FUNCTION_94_1(v2);
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, a2, MEMORY[0x1E6995C98]) & 1;
}

{
  v2 = static HUDActivityManager.BannerUpdate.== infix(_:_:)(a1, a2);
  return OUTLINED_FUNCTION_94_1(v2);
}

BOOL specialized closure #1 in Sequence<>.contains(_:)(unint64_t a1, unint64_t a2)
{
  result = (a1 | a2) == 0;
  if (a1)
  {
    if (a2)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      v5 = a1;
      v6 = a2;
      OUTLINED_FUNCTION_308();
      v7 = static NSObject.== infix(_:_:)();

      return v7 & 1;
    }
  }

  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  v3 = OUTLINED_FUNCTION_91_2();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(v3, v4);
  OUTLINED_FUNCTION_157();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySi15ConversationKit14AutoplayActionO_AH0K9CandidateVtG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_Si_15i5Kit14kl7O_AI0J9M5VtTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySiAJ_ALtIsgnndzo_Tf1nc_n04_s15i77Kit25RecentsListViewControllerC11viewDidLoadyyFySo7CGPointVcfU0_SbSi3key_AA14kl7O_AA0L9M17Vt5valuet_tXEfU2_Tf1nnc_n(unint64_t *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeDictionary.filter(_:)(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();
}

{
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_238();
  v4 = v3;
  v6 = v5;
  v7 = *v1;
  v8 = *(type metadata accessor for Participant(0) - 8);
  v9 = *(v8 + 72);
  v10 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v12 = v11 + v9 * v6;
  OUTLINED_FUNCTION_208();
  swift_arrayDestroy();
  v13 = v2 - v10;
  if (__OFSUB__(v2, v10))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v12 + v9 * v2;
  if (v13)
  {
    v15 = *(v7 + 16);
    if (!__OFSUB__(v15, v4))
    {
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11 + v9 * v4, v15 - v4, v12 + v9 * v2);
      v16 = *(v7 + 16);
      v17 = __OFADD__(v16, v13);
      v18 = v16 + v13;
      if (!v17)
      {
        *(v7 + 16) = v18;
        goto LABEL_7;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_7:
  if (v2 < 1 || v9 * v2 < 1)
  {
LABEL_14:
    outlined destroy of CallControlsService?(v0, &_ss15CollectionOfOneVy15ConversationKit11ParticipantVGMd, &_ss15CollectionOfOneVy15ConversationKit11ParticipantVGMR);
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v20 = 0;
  while ((v20 & 1) == 0)
  {
    OUTLINED_FUNCTION_46();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    v12 += v9;
    v20 = 1;
    if (v12 >= v14)
    {
      goto LABEL_14;
    }
  }

LABEL_19:
  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  v11 = v10 - v9;
  if (__OFSUB__(v10, v9))
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = v8;
  v12 = OUTLINED_FUNCTION_184();
  type metadata accessor for NSObject(v12, v13, v14);
  OUTLINED_FUNCTION_40_2();
  swift_arrayDestroy();
  v15 = __OFSUB__(v0, v11);
  v11 = v0 - v11;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  v7 = v5 >> 62;
  if (!(v5 >> 62))
  {
    v16 = *(v1 + 16);
    goto LABEL_6;
  }

LABEL_16:
  v16 = __CocoaSet.count.getter();
LABEL_6:
  if (__OFSUB__(v16, v4))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2(v6 + 8 * v4, v16 - v4, v3 + 8 * v0);
  if (v7)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *(v1 + 16);
  }

  if (__OFADD__(v17, v11))
  {
    goto LABEL_18;
  }

  *(v1 + 16) = v17 + v11;
LABEL_12:
  if (v0 <= 0)
  {
    OUTLINED_FUNCTION_30_0();
    return;
  }

LABEL_19:
  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  v6 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v5;
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = *v0;
  v12 = (v11 + 32 + 16 * v1);
  OUTLINED_FUNCTION_62_0();
  swift_arrayDestroy();
  v13 = v9 - v6;
  if (__OFSUB__(v9, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, v10))
  {
    goto LABEL_16;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v11 + 32 + 16 * v10), v14 - v10, &v12[2 * v9]);
  v15 = *(v11 + 16);
  v16 = __OFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
LABEL_17:
    __break(1u);
    return;
  }

  *(v11 + 16) = v17;
LABEL_7:
  if (v9 < 1)
  {
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    *v12 = v8;
    v12[1] = v7;
    if (v12 + 2 < &v12[2 * v9])
    {

      __break(1u);
    }

    OUTLINED_FUNCTION_30_0();
  }
}

{
  OUTLINED_FUNCTION_29();
  v11 = v10 - v9;
  if (__OFSUB__(v10, v9))
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = v8;
  v12 = OUTLINED_FUNCTION_184();
  v13(v12);
  OUTLINED_FUNCTION_40_2();
  swift_arrayDestroy();
  v14 = __OFSUB__(v0, v11);
  v11 = v0 - v11;
  if (v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  v7 = v5 >> 62;
  if (!(v5 >> 62))
  {
    v15 = *(v1 + 16);
    goto LABEL_6;
  }

LABEL_16:
  v15 = __CocoaSet.count.getter();
LABEL_6:
  if (__OFSUB__(v15, v4))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2(v6 + 8 * v4, v15 - v4, v3 + 8 * v0);
  if (v7)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *(v1 + 16);
  }

  if (__OFADD__(v16, v11))
  {
    goto LABEL_18;
  }

  *(v1 + 16) = v16 + v11;
LABEL_12:
  if (v0 <= 0)
  {
    OUTLINED_FUNCTION_30_0();
    return;
  }

LABEL_19:
  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  v5 = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_238();
  v7 = v6;
  v8 = *v1;
  v9 = *v1 + 32;
  v11 = v9 + 40 * v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32RecentsCollectionViewSectionable_pMd, &_s15ConversationKit32RecentsCollectionViewSectionable_pMR);
  OUTLINED_FUNCTION_208();
  swift_arrayDestroy();
  v12 = v2 - v5;
  if (__OFSUB__(v2, v5))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v11 + 40 * v2;
  if (!v12)
  {
LABEL_7:
    if (v2 < 1)
    {
LABEL_11:
      outlined destroy of CallControlsService?(v0, &_ss15CollectionOfOneVy15ConversationKit07RecentsA15ViewSectionable_pGMd, &_ss15CollectionOfOneVy15ConversationKit07RecentsA15ViewSectionable_pGMR);
      OUTLINED_FUNCTION_30_0();
      return;
    }

    v18 = 0;
    while ((v18 & 1) == 0)
    {
      v19 = OUTLINED_FUNCTION_46();
      outlined init with copy of IDSLookupManager(v19, v20);
      v11 += 40;
      v18 = 1;
      if (v11 >= v13)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_15;
  }

  v14 = *(v8 + 16);
  if (__OFSUB__(v14, v7))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v9 + 40 * v7), v14 - v7, (v11 + 40 * v2));
  v15 = *(v8 + 16);
  v16 = __OFADD__(v15, v12);
  v17 = v15 + v12;
  if (!v16)
  {
    *(v8 + 16) = v17;
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, &lazy cache variable for type metadata for NSAttributedString, -426333520, specialized UnsafeMutablePointer.moveInitialize(from:count:), a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

{
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, &lazy cache variable for type metadata for UIView, -425864624, specialized UnsafeMutablePointer.moveInitialize(from:count:), a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = *v4;
  v10 = *v4 + 32;
  v11 = &result[v10];
  if (v7)
  {
    v12 = *(v9 + 16);
    v13 = __OFSUB__(v12, a2);
    v14 = v12 - a2;
    if (!v13)
    {
      result = specialized UnsafeMutablePointer.moveInitialize(from:count:)((v10 + a2), v14, &v11[a3]);
      v15 = *(v9 + 16);
      v13 = __OFADD__(v15, v7);
      v16 = v15 + v7;
      if (!v13)
      {
        *(v9 + 16) = v16;
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_7:
  if (a3 >= 1)
  {
    *v11 = a4;
    if (a3 != 1)
    {
      goto LABEL_14;
    }
  }

  return result;
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_0();
  v36 = v30 - v29;
  if (__OFSUB__(v30, v29))
  {
    __break(1u);
    goto LABEL_19;
  }

  v24 = v35;
  v22 = v31;
  v25 = v30;
  a10 = v32;
  v37 = *v23;
  v26 = *v23 & 0xFFFFFFFFFFFFFF8;
  v27 = v26 + 32;
  v23 = (v26 + 32 + 8 * v29);
  type metadata accessor for NSObject(0, v33, v34);
  OUTLINED_FUNCTION_209();
  swift_arrayDestroy();
  v38 = __OFSUB__(v22, v36);
  v36 = v22 - v36;
  if (v38)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v36)
  {
    goto LABEL_12;
  }

  v28 = v37 >> 62;
  if (!(v37 >> 62))
  {
    v39 = *(v26 + 16);
    goto LABEL_6;
  }

LABEL_20:
  v39 = __CocoaSet.count.getter();
LABEL_6:
  if (__OFSUB__(v39, v25))
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v42 = v39;
    __break(1u);
    return;
  }

  v24(v27 + 8 * v25, &v39[-v25], &v23[v22]);
  if (v28)
  {
    v39 = __CocoaSet.count.getter();
  }

  else
  {
    v39 = *(v26 + 16);
  }

  if (__OFADD__(v39, v36))
  {
    goto LABEL_22;
  }

  *(v26 + 16) = &v39[v36];
LABEL_12:
  v39 = a10;
  if (v22 >= 1)
  {
    *v23 = a10;
    if (v22 == 1)
    {
      OUTLINED_FUNCTION_1_3();
      return;
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_1_3();
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySi15ConversationKit14AutoplayActionO_AH0K9CandidateVtG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_Si_15i5Kit14kl7O_AI0J9M5VtTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySiAJ_ALtIsgnndzo_Tf1nc_n04_s15i77Kit25RecentsListViewControllerC11viewDidLoadyyFySo7CGPointVcfU0_SbSi3key_AA14kl7O_AA0L9M17Vt5valuet_tXEfU2_Tf1nnc_n(v8, v4, v2);
      MEMORY[0x1BFB23DF0](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  specialized UnsafeMutablePointer.assign(repeating:count:)(0, v4, v5);
  specialized closure #1 in _NativeDictionary.filter(_:)(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, void *a3)
{
  v25 = a2;
  v26 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_15ConversationKit14AutoplayActionO_AB0D9CandidateVt5valuetMd, &_sSi3key_15ConversationKit14AutoplayActionO_AB0D9CandidateVt5valuetMR);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMR);
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v29 = &v24 - v6;
  v27 = 0;
  v7 = 0;
  v32 = a3;
  v10 = a3[8];
  v9 = a3 + 8;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v15 = v28;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_11:
    v19 = *(v32[6] + 8 * (v16 | (v7 << 6)));
    v20 = v29;
    v21 = v16 | (v7 << 6);
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    *v15 = v19;
    v22 = *(v31 + 48);
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    LODWORD(v22) = *(v15 + v22);
    outlined destroy of CallControlsService?(v15, &_sSi3key_15ConversationKit14AutoplayActionO_AB0D9CandidateVt5valuetMd, &_sSi3key_15ConversationKit14AutoplayActionO_AB0D9CandidateVt5valuetMR);
    outlined destroy of CallControlsService?(v20, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMR);
    v13 = v33;
    if (v22 == 1)
    {
      *(v26 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_15:
        specialized _NativeDictionary.extractDictionary(using:count:)(v26, v25, v27, v32);
        return;
      }
    }
  }

  v17 = v7;
  while (1)
  {
    v7 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v7 >= v14)
    {
      goto LABEL_15;
    }

    v18 = v9[v7];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_15_14();
}

uint64_t outlined bridged method (ob) of @objc UICollectionView.indexPathsForSelectedItems.getter(void *a1)
{
  v2 = [a1 indexPathsForSelectedItems];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for IndexPath();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

_OWORD *outlined init with take of RecentCallProviding & RecentsControllable(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t outlined bridged method (pb) of @objc UICollectionView.indexPathsForSelectedItems.getter(void *a1)
{
  v1 = [a1 indexPathsForSelectedItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for IndexPath();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mnbnn) of @objc TUPrivacyManager.setBlockIncomingCommunication(_:forEmailAddress:)(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x1BFB209B0](a2, a3);

  [a4 setBlockIncomingCommunication:a1 & 1 forEmailAddress:v6];
}

void *outlined copy of ConversationLink?(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

uint64_t objectdestroy_63Tm()
{

  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_109();

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in RecentsListViewController.presentReportJunkAlert(_:isVideoMessage:completion:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16), MEMORY[0x1E6995AA8]) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16), MEMORY[0x1E6969C28]) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

uint64_t partial apply for closure #3 in RecentsListViewController.configurationChanged()()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_60_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_319();

  return closure #3 in RecentsListViewController.configurationChanged()(v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_75Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_109();

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in RecentsListViewController.configurationChanged()()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_60_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_319();

  return closure #2 in RecentsListViewController.configurationChanged()(v3, v4, v5, v6, v7);
}

Class partial apply for closure #2 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = type metadata accessor for RecentsCallItem(v2);
  OUTLINED_FUNCTION_9_0(v3);
  OUTLINED_FUNCTION_11_7();
  v5 = *(v1 + 16);

  return closure #2 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(v0, v5, v1 + v4);
}

Class partial apply for closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)()
{
  OUTLINED_FUNCTION_17_1();
  v2 = type metadata accessor for URL();
  OUTLINED_FUNCTION_9_0(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = v1 + ((v7 + *(v9 + 80) + 8) & ~*(v9 + 80));

  return closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(v0, (v1 + v4), v10, v11, v12);
}

void *partial apply for closure #2 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)()
{
  v0 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_298();
  return closure #2 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)();
}

uint64_t objectdestroy_10Tm()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_35_7();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);

  OUTLINED_FUNCTION_262_0();
  OUTLINED_FUNCTION_108_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 3u:
    case 4u:

      type metadata accessor for RecentCallRecentItemMetadata(0);
      v6 = OUTLINED_FUNCTION_90_1();
      if (!OUTLINED_FUNCTION_25_21(v6))
      {
        OUTLINED_FUNCTION_16_3();
        v7 = OUTLINED_FUNCTION_53_0();
        v8(v7);
      }

      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_233();
      v9 = OUTLINED_FUNCTION_261();
      if (!OUTLINED_FUNCTION_25_21(v9))
      {
        OUTLINED_FUNCTION_16_3();
        v10 = OUTLINED_FUNCTION_53_0();
        v11(v10);
      }

      OUTLINED_FUNCTION_73_0();
      if (v12)
      {
      }

      if (!OUTLINED_FUNCTION_52_7())
      {
        OUTLINED_FUNCTION_16_3();
        v13 = OUTLINED_FUNCTION_53_0();
        v14(v13);
      }

      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_231();
      break;
    case 1u:
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_15_1();
      (*(v15 + 8))(v1);
      v16 = type metadata accessor for RecentOngoingConversationMetadata(0);
      OUTLINED_FUNCTION_89(v16);
      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_72();
      if (v17)
      {

        goto LABEL_14;
      }

      break;
    case 2u:

LABEL_14:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_96_4();
  v18 = OUTLINED_FUNCTION_260_0();
  if (!OUTLINED_FUNCTION_58(v18))
  {
    OUTLINED_FUNCTION_71();
    v19 = OUTLINED_FUNCTION_177();
    v20(v19);
  }

  OUTLINED_FUNCTION_230_0();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_95_0();

  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}

void partial apply for closure #3 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)()
{
  v1 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_9_0(v1);
  OUTLINED_FUNCTION_11_7();
  closure #3 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)(*(v0 + 16), v0 + v3, *(v0 + ((v2 + 39) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t partial apply for closure #1 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)()
{
  OUTLINED_FUNCTION_44();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for RecentsCallItem(v0);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_144();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v5 = OUTLINED_FUNCTION_13_35();

  return closure #1 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(v5, v6, v7, v8, v9);
}

void partial apply for closure #3 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)()
{
  v0 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_22(v0);

  closure #3 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)();
}

uint64_t partial apply for closure #5 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)()
{
  v1 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_9_0(v1);
  OUTLINED_FUNCTION_11_7();
  v4 = *(v0 + v3);

  return closure #5 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(v0 + v2, v4);
}

uint64_t partial apply for closure #1 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)(uint64_t (*a1)(uint64_t))
{
  v1 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_22(v1);
  v2 = OUTLINED_FUNCTION_298();

  return a1(v2);
}

uint64_t type metadata completion function for RecentItemContactsViewControllerDelegate(uint64_t a1)
{
  result = type metadata accessor for RecentsCallItem(319);
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

uint64_t partial apply for closure #1 in RecentsListViewController.markAsReadButtonAction(_:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_60_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_319();

  return closure #1 in RecentsListViewController.markAsReadButtonAction(_:)(v3, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in RecentsListViewController.handleDeferredVideoMessagePresentation()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22(v4);

  return closure #1 in RecentsListViewController.handleDeferredVideoMessagePresentation()(a1, a2);
}

uint64_t partial apply for closure #1 in closure #7 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_1();
  v0 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_144();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v4 = OUTLINED_FUNCTION_13_35();

  return closure #1 in closure #7 in RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)(v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_60_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_319();

  return closure #1 in closure #1 in RecentsListViewController.presentOrphanVoicemailDetail(voiceMailMessage:callItem:sourceRect:sourceView:)(v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_328Tm(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

void partial apply for closure #1 in closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)()
{
  OUTLINED_FUNCTION_17_1();
  v0 = type metadata accessor for URL();
  OUTLINED_FUNCTION_22(v0);

  closure #1 in closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)();
}

uint64_t objectdestroy_29Tm(void (*a1)(void))
{
  a1(*(v1 + 24));
  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

void partial apply for closure #2 in closure #2 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = type metadata accessor for RecentsCallItem(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_40_3();
  v4 = *(v1 + 24);
  v5 = *(v1 + 16);

  closure #2 in closure #2 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(v0, v5, v4);
}

uint64_t partial apply for closure #1 in closure #2 in RecentsListViewController.presentReportJunkAlert(_:isVideoMessage:completion:)(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1);
  }

  return result;
}

uint64_t objectdestroy_46Tm()
{

  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_77_0();

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_60_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_319();

  return closure #2 in closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)(v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_318Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_109();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_60_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_319();

  return closure #1 in closure #1 in removeRecents #1 (calls:links:videoMessages:allItems:) in RecentsListViewController.deleteRecentCalls(_:shouldDeleteAllItemsForContact:preparationHandler:)(v3, v4, v5, v6, v7);
}

uint64_t partial apply for closure #3 in closure #1 in RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)()
{
  v0 = OUTLINED_FUNCTION_17_1();
  v2 = v1(v0);
  OUTLINED_FUNCTION_22(v2);
  v3 = OUTLINED_FUNCTION_203();

  return v4(v3);
}

uint64_t partial apply for closure #1 in closure #3 in RecentsListViewController.viewWillAppear(_:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_0(v2);

  return closure #1 in closure #1 in RecentsListViewController.viewWillAppear(_:)(v4, v5, v6, v0);
}

uint64_t partial apply for closure #1 in closure #2 in RecentsListViewController.viewWillAppear(_:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_0(v2);

  return closure #1 in closure #2 in RecentsListViewController.viewWillAppear(_:)(v4, v5, v6, v0);
}

uint64_t partial apply for closure #1 in closure #1 in RecentsListViewController.viewWillAppear(_:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_0(v2);

  return closure #1 in closure #1 in RecentsListViewController.viewWillAppear(_:)(v4, v5, v6, v0);
}

uint64_t outlined init with take of URL?()
{
  OUTLINED_FUNCTION_6_7();
  v4 = OUTLINED_FUNCTION_314(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_7_0();
  v6 = OUTLINED_FUNCTION_46();
  v7(v6);
  return v0;
}

uint64_t partial apply for closure #1 in closure #1 in RecentsListViewController.createCallFilteringTipRegistration()()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_92(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_130(v3);

  return closure #1 in closure #1 in RecentsListViewController.createCallFilteringTipRegistration()(v1);
}

uint64_t partial apply for closure #2 in closure #1 in RecentsListViewController.createCallFilteringTipRegistration()()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_92(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_130(v3);

  return closure #2 in closure #1 in RecentsListViewController.createCallFilteringTipRegistration()(v1);
}

uint64_t partial apply for closure #2 in RecentsListViewController.handleDeferredVideoMessagePresentation()()
{
  v0 = OUTLINED_FUNCTION_17_1();
  v2 = v1(v0);
  OUTLINED_FUNCTION_22(v2);
  v3 = OUTLINED_FUNCTION_203();

  return v4(v3);
}

uint64_t outlined assign with take of RecentsCallItem?()
{
  OUTLINED_FUNCTION_6_7();
  v4 = OUTLINED_FUNCTION_314(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_7_0();
  v6 = OUTLINED_FUNCTION_46();
  v7(v6);
  return v0;
}

uint64_t outlined init with copy of RecentCallDetailControllerFactoryProtocol?()
{
  OUTLINED_FUNCTION_6_7();
  v4 = OUTLINED_FUNCTION_314(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_7_0();
  v6 = OUTLINED_FUNCTION_46();
  v7(v6);
  return v0;
}

uint64_t partial apply for closure #1 in RecentsListViewController.blockAllAction(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return partial apply for closure #1 in RecentsListViewController.blockAllAction(of:)(a1, a2, a3, a4, closure #1 in RecentsListViewController.blockAllAction(of:), a6, a7, a8, a9);
}

{
  OUTLINED_FUNCTION_331();
  v20 = v9;
  OUTLINED_FUNCTION_238();
  v10 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_9_17();

  return v17(v11, v12, v13, v14, v15, v16, v17, v18, a9, v20);
}

uint64_t partial apply for closure #2 in closure #1 in RecentsListViewController.blockAllAction(of:)()
{
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_18(v1);

  return closure #2 in closure #1 in RecentsListViewController.blockAllAction(of:)(v3, v4);
}

uint64_t partial apply for closure #2 in closure #1 in RecentsListViewController.blockUnknownAction(of:)()
{
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_18(v1);

  return closure #2 in closure #1 in RecentsListViewController.groupReportAndBlockAction(of:)(v3, v4);
}

uint64_t partial apply for closure #2 in closure #1 in RecentsListViewController.groupReportAndBlockAction(of:)()
{
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_18(v1);

  return closure #2 in closure #1 in RecentsListViewController.groupReportAndBlockAction(of:)(v3, v4);
}

uint64_t objectdestroy_436Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  OUTLINED_FUNCTION_37_0();

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #1 in RecentsListViewController.reportAndBlockAction(of:)()
{
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_18(v1);

  return closure #2 in closure #1 in RecentsListViewController.groupReportAndBlockAction(of:)(v3, v4);
}

uint64_t partial apply for closure #1 in RecentsListViewController.performDeleteAction(of:completionHandler:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v0 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_9_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_92(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_319();

  return closure #1 in RecentsListViewController.performDeleteAction(of:completionHandler:)(v4, v5, v6, v7);
}

uint64_t objectdestroy_101Tm()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_35_7();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_262_0();
  OUTLINED_FUNCTION_108_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 3u:
    case 4u:

      type metadata accessor for RecentCallRecentItemMetadata(0);
      v2 = OUTLINED_FUNCTION_90_1();
      if (!OUTLINED_FUNCTION_25_21(v2))
      {
        OUTLINED_FUNCTION_16_3();
        v3 = OUTLINED_FUNCTION_53_0();
        v4(v3);
      }

      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_233();
      v5 = OUTLINED_FUNCTION_261();
      if (!OUTLINED_FUNCTION_25_21(v5))
      {
        OUTLINED_FUNCTION_16_3();
        v6 = OUTLINED_FUNCTION_53_0();
        v7(v6);
      }

      OUTLINED_FUNCTION_73_0();
      if (v8)
      {
      }

      if (!OUTLINED_FUNCTION_52_7())
      {
        OUTLINED_FUNCTION_16_3();
        v9 = OUTLINED_FUNCTION_53_0();
        v10(v9);
      }

      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_231();
      break;
    case 1u:
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_15_1();
      (*(v11 + 8))(v1);
      v12 = type metadata accessor for RecentOngoingConversationMetadata(0);
      OUTLINED_FUNCTION_89(v12);
      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_72();
      if (v13)
      {

        goto LABEL_14;
      }

      break;
    case 2u:

LABEL_14:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_96_4();
  v14 = OUTLINED_FUNCTION_260_0();
  if (!OUTLINED_FUNCTION_58(v14))
  {
    OUTLINED_FUNCTION_71();
    v15 = OUTLINED_FUNCTION_177();
    v16(v15);
  }

  OUTLINED_FUNCTION_230_0();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)()
{
  OUTLINED_FUNCTION_44();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for RecentsCallItem(v0);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_144();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v5 = OUTLINED_FUNCTION_13_35();

  return closure #1 in closure #1 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)(v5, v6, v7, v8, v9);
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply(uint64_t a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

double OUTLINED_FUNCTION_99_1()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_131(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_260_0()
{

  return type metadata accessor for Date();
}

uint64_t OUTLINED_FUNCTION_262_0()
{

  return type metadata accessor for RecentsCallItemType(0);
}

uint64_t OUTLINED_FUNCTION_265()
{

  return __swift_getEnumTagSinglePayload(v0 + v2, 1, v1);
}

id OUTLINED_FUNCTION_267(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 (v6 + 2040)];
}

double OUTLINED_FUNCTION_270()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_271(uint64_t a1)
{
  *(v1 - 96) = 0;

  return TUOpenURLWithError();
}

unint64_t OUTLINED_FUNCTION_323_0()
{
  *(v1 - 104) = v0;

  return specialized __RawDictionaryStorage.find<A>(_:)();
}

void OUTLINED_FUNCTION_324(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

id OUTLINED_FUNCTION_326()
{

  return [v0 (v1 + 901)];
}

uint64_t OUTLINED_FUNCTION_328(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_24SensitiveContentAnalysis11ParticipantVs5NeverOTg5085_s7SwiftUI4ViewP15ConversationKitE12intervention18forRecentsCallItemQrAD0hiJ0VSg_tF24ef10Analysis11h4VSo8D6CXEfU_SSSgTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v60 = type metadata accessor for Participant();
  v62 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_34:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_34;
  }

LABEL_3:
  v70 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v9 = v70;
  result = specialized Set.startIndex.getter();
  v67 = result;
  v68 = v11;
  v69 = v12 & 1;
  if ((v8 & 0x8000000000000000) == 0)
  {
    v48 = v3;
    v13 = 0;
    v55 = v62 + 32;
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v14 = a1;
    }

    v51 = v14;
    v50 = a1 + 56;
    v49 = a1 + 64;
    v53 = xmmword_1BC4BA940;
    v58 = a3;
    v57 = a1;
    v56 = v7;
    v52 = v8;
    while (!__OFADD__(v13++, 1))
    {
      v63 = v9;
      v16 = v67;
      v65 = v68;
      HIDWORD(v64) = v69;
      specialized Set.subscript.getter(v67, v68, v69, a1);
      v18 = v17;
      if (!a3)
      {
        outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v17);
        if (!v19)
        {
          v20 = [v18 value];
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      inited = swift_initStackObject();
      *(inited + 16) = v53;

      v22 = [v18 value];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      *(inited + 32) = v23;
      *(inited + 40) = v25;
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(inited, v26, v27, v28, v29, v30, v31, v32, v47, v48, v49, v50, v51, v52, v53, *(&v53 + 1), v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66[0], v66[1]);
      v33 = v56;
      Participant.init(displayName:handles:)();

      v9 = v63;
      v70 = v63;
      v34 = *(v63 + 16);
      if (v34 >= *(v63 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v9 = v70;
      }

      *(v9 + 16) = v34 + 1;
      result = (*(v62 + 32))(v9 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v34, v33, v60);
      if (v59)
      {
        a3 = v58;
        a1 = v57;
        if (!HIDWORD(v64))
        {
          goto LABEL_41;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v39 = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd, &_sSh5IndexVySo8TUHandleC_GMR);
        v40 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v40(v66, 0);
      }

      else
      {
        a3 = v58;
        a1 = v57;
        if ((v64 & 0x100000000) != 0)
        {
          goto LABEL_42;
        }

        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        v35 = 1 << *(v57 + 32);
        if (v16 >= v35)
        {
          goto LABEL_37;
        }

        v36 = v16 >> 6;
        v37 = *(v50 + 8 * (v16 >> 6));
        if (((v37 >> v16) & 1) == 0)
        {
          goto LABEL_38;
        }

        if (*(v57 + 36) != v65)
        {
          goto LABEL_39;
        }

        v38 = v37 & (-2 << (v16 & 0x3F));
        if (v38)
        {
          v35 = __clz(__rbit64(v38)) | v16 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v41 = v36 << 6;
          v42 = v36 + 1;
          v43 = (v49 + 8 * v36);
          while (v42 < (v35 + 63) >> 6)
          {
            v45 = *v43++;
            v44 = v45;
            v41 += 64;
            ++v42;
            if (v45)
            {
              result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v16, v65, 0);
              v35 = __clz(__rbit64(v44)) + v41;
              goto LABEL_30;
            }
          }

          result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v16, v65, 0);
        }

LABEL_30:
        v46 = *(a1 + 36);
        v67 = v35;
        v68 = v46;
        v69 = 0;
        v39 = v52;
      }

      if (v13 == v39)
      {
        outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v67, v68, v69);

        return v9;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void specialized Sequence.forEach(_:)(uint64_t a1, void *a2)
{
  v4 = &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd;
  v5 = &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMR;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMR);
  v35[1] = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v45 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v37 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v36 = v35 - v12;
  v13 = 0;
  v14 = *(a1 + 16);
  v42 = a1;
  v43 = v14;
  while (v43 != v13)
  {
    v44 = v13;
    v15 = v36;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    v16 = *&v15[*(v39 + 48)];
    outlined destroy of AutoplayCandidate();
    *v40 = 1;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    outlined init with take of AutoplayCandidate();
    v17 = v4;
    v18 = v5;
    outlined init with take of URL?();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = a2;
    v46 = *a2;
    v21 = v46;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
    v24 = *(v21 + 16);
    v25 = (v23 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v27 = v22;
    v28 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySi15ConversationKit14AutoplayActionO_AC0E9CandidateVtGMd, &_ss17_NativeDictionaryVySi15ConversationKit14AutoplayActionO_AC0E9CandidateVtGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v26))
    {
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_15;
      }

      v27 = v29;
    }

    v31 = v46;
    if (v28)
    {
      v4 = v17;
      v5 = v18;
      outlined assign with take of RecentsCallItem?();
    }

    else
    {
      *(v46 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(*(v31 + 48) + 8 * v27) = v16;
      v4 = v17;
      v5 = v18;
      outlined init with take of URL?();
      v32 = *(v31 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_14;
      }

      *(v31 + 16) = v34;
    }

    a2 = v20;
    *v20 = v31;
    v13 = v44 + 1;
  }
}

uint64_t static ViewBuilder.buildEither<A, B>(first:)()
{
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_142();
  v1();
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_108_3();
}

uint64_t static ViewBuilder.buildEither<A, B>(second:)()
{
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_71_3();
  (*(*(v0 - 8) + 16))(v2, v1, v0);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_108_3();
}

uint64_t specialized Dictionary.subscript.setter()
{
  OUTLINED_FUNCTION_6_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_140_0();
  v5 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_115(v1, 1, v5);
  if (v12)
  {
    v13 = OUTLINED_FUNCTION_106_1();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, v14, v15);
    specialized Dictionary._Variant.removeValue(forKey:)(v2);
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_7_0();
    (*(v16 + 8))(v0);
    v17 = OUTLINED_FUNCTION_40_2();
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, v18, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v7 + 32))(v11, v1, v5);
    swift_isUniquelyReferenced_nonNull_native();
    v30 = *v1;
    v19 = OUTLINED_FUNCTION_312();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v20, v21, v22, v23, v24, v25, v26, v29, v30, v32, v33);
    *v1 = v31;
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_7_0();
    return (*(v27 + 8))(v0);
  }
}

void specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a1, &_s15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVSgMd, &_s15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVSgMR);
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    v6 = v5;
    if (v5)
    {
      v7 = v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_23_10();
      v10 = *(v9 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySO15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVGMd, &_ss17_NativeDictionaryVySO15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVGMR);
      OUTLINED_FUNCTION_130_0();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);
      outlined init with take of ScreenSharingStateMonitor.Observation(*(v18 + 56) + 8 * v7, &v20);
      _NativeDictionary._delete(at:)();
      *v2 = v18;
    }

    else
    {
      v20 = 0;
    }

    v21 = (v6 & 1) == 0;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v20, &_s15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVSgMd, &_s15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVSgMR);
  }

  else
  {
    outlined init with take of ScreenSharingStateMonitor.Observation(a1, &v20);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_23_10();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v20, a2, v11, v12, v13, v14, v15, v16, v17, v18);
    *v2 = v19;
  }
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtSgMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMR);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  if (__swift_getEnumTagSinglePayload(a1, 1, v9) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a1, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtSgMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtSgMR);
    specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v12)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *v3;
      v14 = *(v24 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySi15ConversationKit14AutoplayActionO_AC0E9CandidateVtGMd, &_ss17_NativeDictionaryVySi15ConversationKit14AutoplayActionO_AC0E9CandidateVtGMR);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v14);
      v15 = v24;
      outlined init with take of URL?();
      _NativeDictionary._delete(at:)();
      v16 = 0;
      *v3 = v15;
    }

    else
    {
      v16 = 1;
    }

    __swift_storeEnumTagSinglePayload(v8, v16, 1, v9);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtSgMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtSgMR);
  }

  else
  {
    outlined init with take of URL?();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a2, v17, v18, v19, v20, v21, v22, v23, *v3);
    *v3 = v24;
  }
}

void specialized Dictionary.subscript.setter(uint64_t a1)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v9);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_23_10();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9);
    *v1 = v8;
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a1, &_sypSgMd, &_sypSgMR);
    v2 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v3)
    {
      v4 = v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_23_10();
      v7 = *(v6 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit34ContextMenuNotificationUserInfoKeyOypGMd, &_ss17_NativeDictionaryVy15ConversationKit34ContextMenuNotificationUserInfoKeyOypGMR);
      OUTLINED_FUNCTION_130_0();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
      outlined init with take of Any((*(v8 + 56) + 32 * v4), v9);
      lazy protocol witness table accessor for type ContextMenuNotificationUserInfoKey and conformance ContextMenuNotificationUserInfoKey();
      _NativeDictionary._delete(at:)();
      *v1 = v8;
    }

    else
    {
      memset(v9, 0, sizeof(v9));
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_sypSgMd, &_sypSgMR);
  }
}

void specialized MutableCollection<>.sort(by:)()
{
  OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_22(v1);
  v3 = v2;
  v4 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v7[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v7[1] = v6;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7);
  *v0 = v4;
}

{
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = type metadata accessor for HUDActivityManager.BannerUpdate(v1);
  OUTLINED_FUNCTION_22(v2);
  v4 = v3;
  v5 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v5 = v7;
  }

  v6 = *(v5 + 16);
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v8);
  *v0 = v5;
}

uint64_t specialized MutableCollection<>.sort(by:)()
{
  OUTLINED_FUNCTION_6_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
  OUTLINED_FUNCTION_22(v2);
  v4 = v3;
  v5 = *v1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v9[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9[1] = v7;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v0);
  *v1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t static RecentsCollectionViewGridCell.gridLayoutNumberOfColumns.getter(uint64_t a1)
{
  if (static RecentsCollectionViewGridCell.needsAXLayout.getter())
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t static RecentsCollectionViewGridCell.needsAXLayout.getter()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = UIContentSizeCategory.isAccessibilityCategory.getter();
  return v0 & 1;
}

void static RecentsCollectionViewGridCell.effectiveScreenWidth.getter()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  OUTLINED_FUNCTION_40_1();

  v2.origin.x = OUTLINED_FUNCTION_35();
  CGRectGetWidth(v2);
  v3.origin.x = OUTLINED_FUNCTION_35();
  CGRectGetHeight(v3);
  v1 = [objc_opt_self() currentDevice];
  [v1 userInterfaceIdiom];
}

uint64_t ContactAvatarTileViewModel.__allocating_init(state:primaryAction:secondaryAction:tertiaryAction:longPressAction:menuItems:recentCallItem:accessibilityCustomActions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = swift_allocObject();
  ContactAvatarTileViewModel.init(state:primaryAction:secondaryAction:tertiaryAction:longPressAction:menuItems:recentCallItem:accessibilityCustomActions:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  return v19;
}

void VideoPlayerListContaining<>.autoplayCandidates(withEdgeBias:)()
{
  OUTLINED_FUNCTION_29();
  v79 = v3;
  v80 = v0;
  v5 = v4;
  v7 = v6;
  v77 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit17AutoplayCandidateVSgMd, &_s15ConversationKit17AutoplayCandidateVSgMR);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_71_3();
  v76 = type metadata accessor for AutoplayCandidate(0);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4();
  v73 = v14;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_32();
  v72 = v16;
  OUTLINED_FUNCTION_4_24();
  v17 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_17();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v71 = v25;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v67 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_4();
  v70 = v31;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v74 = v33;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v34);
  v36 = v67 - v35;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_26_7();
  if (UIAccessibilityIsVoiceOverRunning())
  {
LABEL_24:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v67[1] = v12;
  v38 = *(v5 + 24);
  v75 = v5;
  v82 = v38(v7, v5);

  specialized MutableCollection<>.sort(by:)();

  v69 = v82;
  specialized Collection.first.getter(v82, v1);
  OUTLINED_FUNCTION_33_0();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  OUTLINED_FUNCTION_115(v36, 1, v17);
  v78 = v7;
  if (v39)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    v40 = v74;
LABEL_6:
    v43 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  (*(v19 + 32))(v28, v36, v17);
  OUTLINED_FUNCTION_113();
  v41 = v28;
  v43 = v42(v28, -3, v78);
  (*(v19 + 8))(v41, v17);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v7 = v78;
  v40 = v74;
  if (!v43)
  {
    goto LABEL_6;
  }

LABEL_7:
  v68 = v43;
  v44 = v69;
  specialized BidirectionalCollection.last.getter(v69, v40);
  v45 = v70;
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  OUTLINED_FUNCTION_115(v45, 1, v17);
  v46 = v71;
  if (v39)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    v47 = v68;
LABEL_11:
    v51 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  (*(v19 + 32))(v71, v45, v17);
  OUTLINED_FUNCTION_113();
  v49 = v48(v46, 3, v7);
  v50 = v46;
  v51 = v49;
  (*(v19 + 8))(v50, v17);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v74, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v47 = v68;
  v44 = v69;
  if (!v51)
  {
    goto LABEL_11;
  }

LABEL_12:
  v81 = v47;
  specialized Array.append<A>(contentsOf:)(v44);
  specialized Array.append<A>(contentsOf:)(v51);
  v52 = 0;
  v53 = v81;
  v54 = *(v81 + 16);
  v55 = (v19 + 8);
  v74 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v54 == v52)
    {

      goto LABEL_24;
    }

    if (v52 >= *(v53 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_40_3();
    (*(v19 + 16))(v23, v53 + v56 + *(v19 + 72) * v52, v17);
    closure #4 in VideoPlayerListContaining<>.autoplayCandidates(withEdgeBias:)(v23, v77, v78, v75, v2);
    (*v55)(v23, v17);
    OUTLINED_FUNCTION_115(v2, 1, v76);
    if (v39)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit17AutoplayCandidateVSgMd, &_s15ConversationKit17AutoplayCandidateVSgMR);
      ++v52;
    }

    else
    {
      OUTLINED_FUNCTION_3_67();
      v71 = v57;
      outlined init with take of AutoplayCandidate();
      outlined init with take of AutoplayCandidate();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_43();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v74 = v62;
      }

      v60 = *(v74 + 16);
      v59 = *(v74 + 24);
      v61 = v60 + 1;
      if (v60 >= v59 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v59);
        v70 = v64;
        v71 = v63;
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v61 = v71;
        v74 = v65;
      }

      ++v52;
      *(v74 + 16) = v61;
      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_3_67();
      outlined init with take of AutoplayCandidate();
    }
  }

  __break(1u);

  (*v55)(v23, v17);

  __break(1u);

  __break(1u);
  (*v66)(v52, v17);
  __break(1u);
}

id static AutoplayAction.uponScrolling(in:candidates:isUsingGridLayout:scrollDirection:allowsSimultaneous:)(int a1, void *a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v168 = a6;
  Height = *&a5;
  v174 = a4;
  v172 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtSgMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtSgMR);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtSgMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtSgMR);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
  OUTLINED_FUNCTION_1();
  v186 = v19;
  v187 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v161 - v28);
  v30 = type metadata accessor for AutoplayCandidate(0);
  OUTLINED_FUNCTION_1();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4();
  v185 = v34;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_32();
  v181 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_15ConversationKit17AutoplayCandidateVtMd, &_sSi_15ConversationKit17AutoplayCandidateVtMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_16_4();
  v40 = a3;
  v41 = *(a3 + 16);
  v42 = MEMORY[0x1E69E7CC0];
  v188 = v30;
  v178 = v32;
  if (v41)
  {
    v183 = *&a2;
    v166 = v29;
    v190 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41, 0);
    v42 = v190;
    OUTLINED_FUNCTION_40_3();
    v44 = v40 + v43;
    v45 = *(v32 + 72);
    do
    {
      v46 = *(v38 + 48);
      OUTLINED_FUNCTION_1_73();
      outlined init with copy of AutoplayCandidate();
      *v6 = *(v6 + v46);
      v190 = v42;
      v48 = *(v42 + 16);
      v47 = *(v42 + 24);
      if (v48 >= v47 >> 1)
      {
        v49 = OUTLINED_FUNCTION_59_3(v47);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49, v48 + 1, 1);
        v42 = v190;
      }

      *(v42 + 16) = v48 + 1;
      OUTLINED_FUNCTION_40_3();
      outlined init with take of URL?();
      v44 += v45;
      --v41;
    }

    while (v41);
    v30 = v188;
    v29 = v166;
    *&a2 = v183;
    v50 = Height;
  }

  else
  {
    v50 = Height;
  }

  v51 = _sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSi_15ConversationKit17AutoplayCandidateVSaySi_AGtGTt1g506_sSa15ef49E3map33_D500BD934DFCA1988754422B7642B6E113usingb45FromSDyqd__xGqd__xXE_tSHRd__lFxx_xtXEfU0_AA17gH7V_SiTg5Tf1nc_n(v42);
  v52 = a2;
  v53 = specialized _NativeDictionary.mapValues<A>(_:)(v51, v172 & 1, v52);
  v190 = v53;
  UIScrollView.videoSafeAreaInWindowCoordinates.getter();
  OUTLINED_FUNCTION_40_1();
  MidX = CGRectGetMidX(v193);
  v194.origin.x = OUTLINED_FUNCTION_35();
  CGRectGetMidY(v194);
  MinX = static AutoplayAction.biasAdjustment(in:for:)(v52, MidX);
  MinY = v56;
  if (v174)
  {
    UIScrollView.videoSafeAreaInWindowCoordinates.getter();
    if (*&v50 == 1)
    {
      MinY = CGRectGetMinY(*&v58);
    }

    else
    {
      MinX = CGRectGetMinX(*&v58);
    }
  }

  UIScrollView.videoSafeAreaInWindowCoordinates.getter();
  v182 = static AutoplayAction.autoplayRect(in:biasPoint:proportion:)(v62, v63, v64, v65, MinX, MinY, 0.6);
  v183 = v66;
  Height = v68;
  v179 = v52;
  v163 = v53;
  v167 = 0.0;
  if (v174)
  {
    UIScrollView.videoSafeAreaInWindowCoordinates.getter();
    Width = CGRectGetWidth(v195);
    if (*&v50 == 1)
    {
      UIScrollView.videoSafeAreaInWindowCoordinates.getter();
      Height = CGRectGetHeight(v196);
      v182 = MinX;
      v183 = 0.0;
      v70 = 10.0;
    }

    else
    {
      v70 = Width;
      v182 = 0.0;
      v183 = MinY;
      Height = 10.0;
    }
  }

  else
  {
    v70 = v67;
  }

  *&v71 = v51 + 64;
  v72 = 1 << *(v51 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & *(v51 + 64);
  v75 = (v72 + 63) >> 6;

  v76 = 0;
  v173 = MEMORY[0x1E69E7CC0];
  v177 = MinY;
  v176 = MinX;
  v175 = v70;
  while (2)
  {
    v77 = v76;
    if (!v74)
    {
      goto LABEL_22;
    }

LABEL_21:
    v76 = v77;
LABEL_25:
    OUTLINED_FUNCTION_1_73();
    v78 = v181;
    outlined init with copy of AutoplayCandidate();
    v79 = v179;
    UIScrollView.videoSafeAreaInWindowCoordinates.getter();
    v81 = v80;
    v83 = v82;
    v180 = v84;
    v7 = v85;
    switch(*(v78 + *(v30 + 28)))
    {
      case 1:
        v197.origin.x = OUTLINED_FUNCTION_16_32();
        v86 = CGRectGetMidX(v197);
        v198.origin.x = OUTLINED_FUNCTION_16_32();
        MaxY = CGRectGetMinY(v198);
        goto LABEL_32;
      case 2:
        v201.origin.x = OUTLINED_FUNCTION_16_32();
        MaxX = CGRectGetMinX(v201);
        goto LABEL_31;
      case 4:
        v199.origin.x = OUTLINED_FUNCTION_16_32();
        v86 = CGRectGetMidX(v199);
        v200.origin.x = OUTLINED_FUNCTION_16_32();
        MaxY = CGRectGetMaxY(v200);
        goto LABEL_32;
      case 8:
        v202.origin.x = OUTLINED_FUNCTION_16_32();
        MaxX = CGRectGetMaxX(v202);
        goto LABEL_31;
      default:
        v203.origin.x = OUTLINED_FUNCTION_16_32();
        MaxX = CGRectGetMidX(v203);
LABEL_31:
        v86 = MaxX;
        v204.origin.x = OUTLINED_FUNCTION_16_32();
        MaxY = CGRectGetMidY(v204);
LABEL_32:
        v192.y = MaxY;
        v74 &= v74 - 1;
        v205.origin.x = v81;
        v205.origin.y = v83;
        v205.size.width = v180;
        v205.size.height = v7;
        v192.x = v86;
        if (CGRectContainsPoint(v205, v192))
        {
          OUTLINED_FUNCTION_3_67();
          outlined init with take of AutoplayCandidate();
          OUTLINED_FUNCTION_111_1(&v191);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v189 = v79;
          MinY = v177;
          MinX = v176;
          v70 = v175;
          v166 = v29;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v79 = v189;
          }

          v91 = *(v79 + 16);
          v90 = *(v79 + 24);
          if (v91 >= v90 >> 1)
          {
            OUTLINED_FUNCTION_59_3(v90);
            OUTLINED_FUNCTION_135();
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v79 = v189;
          }

          *(v79 + 16) = v91 + 1;
          OUTLINED_FUNCTION_40_3();
          v173 = v79;
          OUTLINED_FUNCTION_3_67();
          outlined init with take of AutoplayCandidate();
          v30 = v188;
          v29 = v166;
          continue;
        }

        OUTLINED_FUNCTION_0_75();
        outlined destroy of AutoplayCandidate();
        v77 = v76;
        MinY = v177;
        MinX = v176;
        v70 = v175;
        if (v74)
        {
          goto LABEL_21;
        }

        while (1)
        {
LABEL_22:
          v76 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            __break(1u);
            goto LABEL_96;
          }

          if (v76 >= v75)
          {
            break;
          }

          v74 = *(*&v71 + 8 * v76);
          ++v77;
          if (v74)
          {
            goto LABEL_25;
          }
        }

        v92 = v173;
        v93 = *(v173 + 16);
        if (v93)
        {
          v181 = v51;
          v189 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v93, 0);
          v94 = v189;
          OUTLINED_FUNCTION_40_3();
          v96 = v92 + v95;
          v98 = *(v97 + 72);
          v99 = v172 | v174;
          do
          {
            OUTLINED_FUNCTION_1_73();
            v100 = v185;
            outlined init with copy of AutoplayCandidate();
            if ((v99 & 1) == 0 || (v206.origin.x = v182, v206.origin.y = v183, v206.size.width = v70, v206.size.height = Height, CGRectIntersection(v206, *(v100 + *(v30 + 24))), OUTLINED_FUNCTION_40_1(), v101 == 0.0) && v7 == 0.0)
            {
              switch(*(v100 + *(v30 + 28)))
              {
                case 1:
                  v207.origin.x = OUTLINED_FUNCTION_8_47();
                  v7 = CGRectGetMidX(v207);
                  v208.origin.x = OUTLINED_FUNCTION_8_47();
                  MidY = CGRectGetMinY(v208);
                  goto LABEL_53;
                case 2:
                  v213.origin.x = OUTLINED_FUNCTION_8_47();
                  v105 = CGRectGetMinX(v213);
                  goto LABEL_52;
                case 4:
                  v211.origin.x = OUTLINED_FUNCTION_8_47();
                  v7 = CGRectGetMidX(v211);
                  v212.origin.x = OUTLINED_FUNCTION_8_47();
                  MidY = CGRectGetMaxY(v212);
                  goto LABEL_53;
                case 8:
                  v214.origin.x = OUTLINED_FUNCTION_8_47();
                  v105 = CGRectGetMaxX(v214);
                  goto LABEL_52;
                default:
                  v215.origin.x = OUTLINED_FUNCTION_8_47();
                  v105 = CGRectGetMidX(v215);
LABEL_52:
                  v7 = v105;
                  v216.origin.x = OUTLINED_FUNCTION_8_47();
                  MidY = CGRectGetMidY(v216);
LABEL_53:
                  v104 = fabs(sqrt((v7 - MinX) * (v7 - MinX) + (MidY - MinY) * (MidY - MinY)));
                  break;
              }
            }

            else
            {
              v209.origin.x = OUTLINED_FUNCTION_35();
              v103 = CGRectGetWidth(v209);
              v210.origin.x = OUTLINED_FUNCTION_35();
              v104 = -(v103 * CGRectGetHeight(v210));
            }

            *v29 = v104;
            OUTLINED_FUNCTION_3_67();
            outlined init with take of AutoplayCandidate();
            v189 = v94;
            v106 = v29;
            v108 = *(v94 + 16);
            v107 = *(v94 + 24);
            if (v108 >= v107 >> 1)
            {
              OUTLINED_FUNCTION_59_3(v107);
              OUTLINED_FUNCTION_135();
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v109, v110, v111);
              v94 = v189;
            }

            *(v94 + 16) = v108 + 1;
            OUTLINED_FUNCTION_40_3();
            outlined init with take of URL?();
            v96 += v98;
            --v93;
            v30 = v188;
            v29 = v106;
          }

          while (v93);

          v51 = v181;
        }

        else
        {

          v94 = MEMORY[0x1E69E7CC0];
        }

        v112 = v179;
        v189 = v94;

        v71 = v167;
        specialized MutableCollection<>.sort(by:)();
        v113 = v169;
        if (v71 != 0.0)
        {
          goto LABEL_96;
        }

        v114 = v189;
        if (v168)
        {

          specialized Sequence.forEach(_:)(v114, &v190);

          return v190;
        }

        if ((v174 & 1) == 0)
        {
LABEL_84:
          v138 = v165;
          specialized Collection.first.getter(v114, v165);

          v139 = v187;
          OUTLINED_FUNCTION_115(v138, 1, v187);
          if (v116)
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v138, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtSgMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtSgMR);
            v140 = v112;

            v141 = OUTLINED_FUNCTION_111_1(&v189);
            specialized _NativeDictionary.filter(_:)(v141, v51, v142, v140);
            OUTLINED_FUNCTION_247();

            return v140;
          }

          OUTLINED_FUNCTION_98_1();
          outlined init with take of URL?();
          OUTLINED_FUNCTION_96_2();
          OUTLINED_FUNCTION_98_1();
          outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
          v143 = *(v113 + *(v139 + 48));
          OUTLINED_FUNCTION_0_75();
          outlined destroy of AutoplayCandidate();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMR);
          OUTLINED_FUNCTION_69_3();
          OUTLINED_FUNCTION_3_67();
          outlined init with take of AutoplayCandidate();
          OUTLINED_FUNCTION_12();
          __swift_storeEnumTagSinglePayload(v144, v145, v146, v112);
          specialized Dictionary.subscript.setter(v94, v143);
LABEL_87:
          OUTLINED_FUNCTION_92_0();
          goto LABEL_88;
        }

        v115 = v164;
        specialized Collection.first.getter(v189, v164);
        OUTLINED_FUNCTION_115(v115, 1, v187);
        if (v116)
        {
          v117 = &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtSgMd;
          v118 = &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtSgMR;
          v119 = v115;
LABEL_83:
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v119, v117, v118);
          goto LABEL_84;
        }

        v94 = v30;
        outlined init with take of URL?();
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
        OUTLINED_FUNCTION_0_75();
        outlined destroy of AutoplayCandidate();
        v217.origin.x = OUTLINED_FUNCTION_35();
        if (MinY <= CGRectGetMinY(v217))
        {
          v117 = &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd;
          v118 = &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR;
          v119 = v113;
          goto LABEL_83;
        }

        OUTLINED_FUNCTION_312();
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
        OUTLINED_FUNCTION_0_75();
        outlined destroy of AutoplayCandidate();
        v218.origin.x = OUTLINED_FUNCTION_35();
        v120 = CGRectGetHeight(v218);
        v219.origin.x = OUTLINED_FUNCTION_35();
        v121 = 1.0 - (v120 - (MinY - CGRectGetMinY(v219))) / v120;
        v220.origin.x = OUTLINED_FUNCTION_35();
        if (CGRectGetMaxY(v220) < MinY)
        {
          UIScrollView.videoSafeAreaInWindowCoordinates.getter();
          CGRectGetMaxX(v221);
        }

        v222.origin.x = v182;
        v222.origin.y = v183;
        v222.size.width = v70;
        v222.size.height = Height;
        v122 = v121 * CGRectGetWidth(v222);
        v123 = *(v114 + 16);
        if (v123)
        {
          Height = 0.0;
          v181 = v51;
          v189 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v123, 0);
          v124 = v189;
          OUTLINED_FUNCTION_40_3();
          v183 = *&v114;
          v185 = v125;
          v126 = v114 + v125;
          v128 = *(v127 + 72);
          while (2)
          {
            OUTLINED_FUNCTION_145_0();
            outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
            OUTLINED_FUNCTION_96_2();
            OUTLINED_FUNCTION_145_0();
            outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
            v129 = v187;
            switch(*(v113 + *(v187 + 48) + *(v188 + 28)))
            {
              case 1:
                v223.origin.x = OUTLINED_FUNCTION_14_23();
                v130 = CGRectGetMidX(v223);
                v224.origin.x = OUTLINED_FUNCTION_14_23();
                v131 = CGRectGetMinY(v224);
                goto LABEL_78;
              case 2:
                v227.origin.x = OUTLINED_FUNCTION_14_23();
                v132 = CGRectGetMinX(v227);
                goto LABEL_77;
              case 4:
                v225.origin.x = OUTLINED_FUNCTION_14_23();
                v130 = CGRectGetMidX(v225);
                v226.origin.x = OUTLINED_FUNCTION_14_23();
                v131 = CGRectGetMaxY(v226);
                goto LABEL_78;
              case 8:
                v228.origin.x = OUTLINED_FUNCTION_14_23();
                v132 = CGRectGetMaxX(v228);
                goto LABEL_77;
              default:
                v229.origin.x = OUTLINED_FUNCTION_14_23();
                v132 = CGRectGetMidX(v229);
LABEL_77:
                v130 = v132;
                v230.origin.x = OUTLINED_FUNCTION_14_23();
                v131 = CGRectGetMidY(v230);
LABEL_78:
                v133 = v131;
                v113 = *(v129 + 48);
                OUTLINED_FUNCTION_0_75();
                outlined destroy of AutoplayCandidate();
                v134 = OUTLINED_FUNCTION_84_2(v130 - v122, v133 - MinY);
                *v170 = v134;
                OUTLINED_FUNCTION_145_0();
                outlined init with take of URL?();
                OUTLINED_FUNCTION_3_67();
                outlined init with take of AutoplayCandidate();
                v189 = v124;
                v136 = *(v124 + 16);
                v135 = *(v124 + 24);
                if (v136 >= v135 >> 1)
                {
                  v137 = OUTLINED_FUNCTION_59_3(v135);
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v137, v136 + 1, 1);
                  v124 = v189;
                }

                *(v124 + 16) = v136 + 1;
                OUTLINED_FUNCTION_145_0();
                outlined init with take of URL?();
                v126 += v128;
                if (--v123)
                {
                  continue;
                }

                v151 = v187;
                v71 = Height;
                break;
            }

            break;
          }
        }

        else
        {

          v124 = MEMORY[0x1E69E7CC0];
          v151 = v187;
        }

        v189 = v124;

        specialized MutableCollection<>.sort(by:)();
        if (v71 == 0.0)
        {

          v152 = v162;
          specialized Collection.first.getter(v189, v162);

          OUTLINED_FUNCTION_115(v152, 1, v151);
          if (!v116)
          {
            OUTLINED_FUNCTION_98_1();
            outlined init with take of URL?();
            v153 = v171;
            OUTLINED_FUNCTION_98_1();
            outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
            v154 = *(v153 + *(v151 + 48));
            OUTLINED_FUNCTION_0_75();
            outlined destroy of AutoplayCandidate();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMR);
            OUTLINED_FUNCTION_69_3();
            OUTLINED_FUNCTION_3_67();
            outlined init with take of AutoplayCandidate();
            OUTLINED_FUNCTION_12();
            __swift_storeEnumTagSinglePayload(v155, v156, v157, v153);
            specialized Dictionary.subscript.setter(0, v154);
            OUTLINED_FUNCTION_92_0();
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v158, v159, v160);
            goto LABEL_87;
          }

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v169, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
          v148 = &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtSgMd;
          v149 = &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtSgMR;
          v147 = v152;
LABEL_88:
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v147, v148, v149);
          return v190;
        }

LABEL_96:

        __break(1u);
        return result;
    }
  }
}

uint64_t static RecentsCollectionViewGridCell.didChangeNeedsAXLayout(previousTraitCollection:self:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_76_2(a1, a2);
  swift_getObjectType();
  v2 = OUTLINED_FUNCTION_45_1();

  return _s15ConversationKit29RecentsCollectionViewGridCellC22didChangeNeedsAXLayout013previousTraitD04selfSbSo07UITraitD0C_So0O11Environment_ptFZTf4nen_nAA0c4ListE10ControllerC_Tt1g5Tm(v2, v3);
}

uint64_t AutoplayCandidate.indexPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AutoplayCandidate(0) + 20);
  type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

double AutoplayCandidate.autoplaySourcePoint.getter()
{
  switch(*(v0 + *(type metadata accessor for AutoplayCandidate(0) + 28)))
  {
    case 1:
      v4.origin.x = OUTLINED_FUNCTION_15_24();
      MidX = CGRectGetMidX(v4);
      v5.origin.x = OUTLINED_FUNCTION_15_24();
      CGRectGetMinY(v5);
      return MidX;
    case 2:
      v8.origin.x = OUTLINED_FUNCTION_15_24();
      MinX = CGRectGetMinX(v8);
      goto LABEL_7;
    case 4:
      v6.origin.x = OUTLINED_FUNCTION_15_24();
      MidX = CGRectGetMidX(v6);
      v7.origin.x = OUTLINED_FUNCTION_15_24();
      CGRectGetMaxY(v7);
      return MidX;
    case 8:
      v9.origin.x = OUTLINED_FUNCTION_15_24();
      MinX = CGRectGetMaxX(v9);
      goto LABEL_7;
    default:
      v10.origin.x = OUTLINED_FUNCTION_15_24();
      MinX = CGRectGetMidX(v10);
LABEL_7:
      MidX = MinX;
      v11.origin.x = OUTLINED_FUNCTION_15_24();
      CGRectGetMidY(v11);
      return MidX;
  }
}

uint64_t AutoplayCandidate.init(videoId:indexPath:videoRect:edgeBias:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_20_2();
  v9 = v8;
  v11 = v10;
  *v10 = v12;
  v13 = type metadata accessor for AutoplayCandidate(0);
  v14 = v13[5];
  type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_7_0();
  result = (*(v15 + 32))(&v11[v14], v9);
  v17 = &v11[v13[6]];
  *v17 = v6;
  *(v17 + 1) = v5;
  *(v17 + 2) = v4;
  *(v17 + 3) = v3;
  *&v11[v13[7]] = a3;
  return result;
}

id UIScrollView.videoSafeAreaInWindowCoordinates.getter()
{
  [v0 bounds];
  OUTLINED_FUNCTION_40_1();
  [v0 safeAreaInsets];
  v1 = OUTLINED_FUNCTION_35();
  v7 = UIEdgeInsetsInsetRect(v1, v2, v3, v4, v5, v6);

  return [v0 convertRect:0 toView:v7];
}

double AutoplayContext.autoplaySourcePoint.getter()
{
  UIScrollView.videoSafeAreaInWindowCoordinates.getter();
  OUTLINED_FUNCTION_40_1();
  MidX = CGRectGetMidX(v2);
  v3.origin.x = OUTLINED_FUNCTION_35();
  CGRectGetMidY(v3);
  return MidX;
}

Swift::Int AutoplayAction.EvaluationMethod.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AutoplayAction.EvaluationMethod(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  AutoplayAction.EvaluationMethod.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

double static AutoplayAction.autoplayRect(in:biasPoint:proportion:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v21 = floor(a6);
  v22 = floor(a5);
  rect = floor(CGRectGetWidth(*&a1) * a7);
  v24.origin.x = OUTLINED_FUNCTION_8_47();
  v12 = floor(CGRectGetHeight(v24) * a7);
  v25.origin.x = OUTLINED_FUNCTION_8_47();
  v13 = floor(-(CGRectGetWidth(v25) * a7) * 0.5);
  v26.origin.x = OUTLINED_FUNCTION_8_47();
  v14 = floor(-(CGRectGetHeight(v26) * a7) * 0.5);
  v27.origin.y = v21;
  v27.origin.x = v22;
  v27.size.width = rect;
  v27.size.height = v12;
  v28 = CGRectOffset(v27, v13, v14);
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;

  *&result = CGRectIntersection(v28, *&v15);
  return result;
}

double static AutoplayAction.biasAdjustment(in:for:)(void *a1, double a2)
{
  [a1 contentSize];
  v42 = v4;
  v6 = v5;
  [a1 contentOffset];
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_109_2();
  v12 = v11;
  OUTLINED_FUNCTION_109_2();
  v14 = v10 + v12 + v13;
  OUTLINED_FUNCTION_109_2();
  v16 = v15;
  OUTLINED_FUNCTION_109_2();
  v18 = v16 + v17;
  OUTLINED_FUNCTION_83_4();
  if (v14 < v19)
  {
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_83_4();
    OUTLINED_FUNCTION_83_4();
    OUTLINED_FUNCTION_83_4();
  }

  v20 = v8 + v18;
  OUTLINED_FUNCTION_83_4();
  v22 = v14 + v21;
  OUTLINED_FUNCTION_83_4();
  if (v6 - v23 < v22)
  {
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_83_4();
    OUTLINED_FUNCTION_83_4();
    OUTLINED_FUNCTION_83_4();
  }

  OUTLINED_FUNCTION_83_4();
  v24 = a2;
  if (v20 < v25)
  {
    OUTLINED_FUNCTION_83_4();
    v27 = v26 - v20;
    OUTLINED_FUNCTION_83_4();
    v29 = v27 / v28;
    [a1 adjustedContentInset];
    v24 = a2 - v29 * (a2 - v30);
  }

  OUTLINED_FUNCTION_83_4();
  v32 = v20 + v31;
  OUTLINED_FUNCTION_83_4();
  if (v42 - v33 < v32)
  {
    OUTLINED_FUNCTION_109_2();
    v35 = v34;
    OUTLINED_FUNCTION_83_4();
    v37 = v20 + v36;
    OUTLINED_FUNCTION_83_4();
    v39 = v37 - (v42 - v38);
    OUTLINED_FUNCTION_83_4();
    return v24 + (a2 - v35) * (v39 / v40);
  }

  return v24;
}

void closure #5 in static AutoplayAction.uponScrolling(in:candidates:isUsingGridLayout:scrollDirection:allowsSimultaneous:)()
{
  OUTLINED_FUNCTION_57_4();
  v3 = v2;
  v5 = v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit17AutoplayCandidateVSgMd, &_s15ConversationKit17AutoplayCandidateVSgMR);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_73_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_72_4();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_32();
  v25 = *v5;
  v42 = v3;
  if (v25 == *v3)
  {
    v26 = v24;
    v39 = v23;
    v40 = v22;
    v41 = v21;
    OUTLINED_FUNCTION_312();
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    OUTLINED_FUNCTION_0_75();
    outlined destroy of AutoplayCandidate();
    specialized Dictionary.subscript.getter();
    v27 = type metadata accessor for AutoplayCandidate(0);
    if (__swift_getEnumTagSinglePayload(v15, 1, v27) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s15ConversationKit17AutoplayCandidateVSgMd, &_s15ConversationKit17AutoplayCandidateVSgMR);
    }

    else
    {
      v38 = v0;
      v28 = &v15[*(v27 + 20)];
      v36 = *(v26 + 16);
      v36(v1, v28, v16);
      outlined destroy of AutoplayCandidate();
      v37 = v26;
      v29 = v1;
      v30 = *(v26 + 32);
      v30(v41, v29, v16);
      outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
      outlined destroy of AutoplayCandidate();
      specialized Dictionary.subscript.getter();
      if (__swift_getEnumTagSinglePayload(v12, 1, v27) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s15ConversationKit17AutoplayCandidateVSgMd, &_s15ConversationKit17AutoplayCandidateVSgMR);
        (*(v37 + 8))(v41, v16);
      }

      else
      {
        v31 = v12 + *(v27 + 20);
        v32 = v39;
        v36(v39, v31, v16);
        OUTLINED_FUNCTION_0_75();
        outlined destroy of AutoplayCandidate();
        v30(v40, v32, v16);
        v33 = v41;
        static IndexPath.< infix(_:_:)();
        v34 = *(v37 + 8);
        v35 = OUTLINED_FUNCTION_78();
        v34(v35);
        (v34)(v33, v16);
      }
    }
  }

  OUTLINED_FUNCTION_51_2();
}

Swift::Int AutoplayAction.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AutoplayAction(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  AutoplayAction.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t VideoPlayerCollectionContaining.visibleIndexPaths()(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  v3 = [v2 indexPathsForVisibleItems];

  type metadata accessor for IndexPath();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}