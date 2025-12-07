uint64_t closure #10 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = OUTLINED_FUNCTION_39_1(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_7_0();
  v9 = *(v8 + 16);

  return v9(a3, a1, v7);
}

id closure #21 in implicit closure #1 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(const char *a1)
{
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, a1, v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v6 = objc_allocWithZone(MEMORY[0x1E69DC738]);

  return [v6 init];
}

uint64_t closure #23 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(void *a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x4B8))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 48))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

id IntelligenceControlsViewContainer.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void IntelligenceControlsViewContainer.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsView) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_features;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_11_2();
    swift_once();
  }

  *(v0 + v1) = static Features.shared;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_callHoldingTranscriptViewModelComposer) = 0;
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_viewModel;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double IntelligenceControlsViewContainer.systemAperturePreferredContentSize.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsView;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!v3 || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250), v4 = v3, __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit42SystemAperturePreferredContentSizeProvider_pMd, &_s15ConversationKit42SystemAperturePreferredContentSizeProvider_pMR), (swift_dynamicCast() & 1) == 0))
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    goto LABEL_7;
  }

  v5 = *(&v25 + 1);
  if (!*(&v25 + 1))
  {
LABEL_7:
    outlined destroy of IDView<AvatarStackView, [UUID]>(&v24, &_s15ConversationKit42SystemAperturePreferredContentSizeProvider_pSgMd);
    goto LABEL_8;
  }

  v6 = v26;
  __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
  (*(v6 + 8))(v5, v6);
  if ((v8 & 1) == 0)
  {
    v23 = v7;
    __swift_destroy_boxed_opaque_existential_1(&v24);
    v11 = v23;
    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(&v24);
LABEL_8:
  v9 = *&v0[v2];
  if (!v9)
  {
    v11 = 0.0;
    v16 = 1;
LABEL_18:
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, &static Logger.conversationControls);
    v13 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v13, v18))
    {
      goto LABEL_24;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1BBC58000, v13, v18, "Controls View in IntelligenceControlsViewContainer is nil", v15, 2u);
    goto LABEL_22;
  }

  [v9 intrinsicContentSize];
  v11 = v10;
LABEL_10:
  if (!*&v1[v2])
  {
    v16 = 0;
    goto LABEL_18;
  }

  if (v11 > 30.0)
  {
    goto LABEL_26;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, &static Logger.conversationControls);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v11;
    _os_log_impl(&dword_1BBC58000, v13, v14, "Controls View in IntelligenceControlsViewContainer has a unexpected height of %f", v15, 0xCu);
    v16 = 0;
LABEL_22:
    MEMORY[0x1BFB23DF0](v15, -1, -1);
    goto LABEL_24;
  }

  v16 = 0;
LABEL_24:

  if (v16)
  {
    v11 = 1.79769313e308;
  }

LABEL_26:
  static Layout.ConversationControls.values.getter(&v24);
  v19 = [v1 SBUISA_systemApertureCustomControlsContentLayoutGuide];
  [v19 layoutFrame];
  v21 = v20;

  return v11 + v21;
}

id IntelligenceControlsViewContainer.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id IntelligenceControlsViewContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id (*protocol witness for ControlsView.recipe.modify in conformance IntelligenceControlsViewContainer(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IntelligenceControlsViewContainer.recipe.modify;
}

uint64_t IntelligenceControlsViewContainer.canUpdate(to:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_viewModel;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*(v3 + 24))
  {
    outlined init with copy of IDSLookupManager(v3, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v6 = (*(v5 + 16))(a1, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t lazy protocol witness table accessor for type IntelligenceControlsViewContainerViewModel.ControlsType and conformance IntelligenceControlsViewContainerViewModel.ControlsType(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s15ConversationKit0A14ControlsRecipeVWOhTm_1()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

id key path getter for UILayoutGuide.centerYAnchor : UILayoutGuide, serialized@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 centerYAnchor];
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB020WaitOnHoldAvatarViewVyAD0fgh16LeadingAccessoryJ0VGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy014CommunicationsB020WaitOnHoldAvatarViewVyAD0fgh16LeadingAccessoryJ0VGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>(&lazy protocol witness table cache variable for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>, &_s16CommunicationsUI20WaitOnHoldAvatarViewVyAA0cde16LeadingAccessoryG0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<WaitOnHoldHoldingDetectedView<ApertureButtonRepresentable, ApertureButtonRepresentable>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<WaitOnHoldHoldingDetectedView<ApertureButtonRepresentable, ApertureButtonRepresentable>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<WaitOnHoldHoldingDetectedView<ApertureButtonRepresentable, ApertureButtonRepresentable>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB029WaitOnHoldHoldingDetectedViewVyAD27ApertureButtonRepresentableVAHGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy014CommunicationsB029WaitOnHoldHoldingDetectedViewVyAD27ApertureButtonRepresentableVAHGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>(&lazy protocol witness table cache variable for type WaitOnHoldHoldingDetectedView<ApertureButtonRepresentable, ApertureButtonRepresentable> and conformance WaitOnHoldHoldingDetectedView<A, B>, &_s16CommunicationsUI29WaitOnHoldHoldingDetectedViewVyAA27ApertureButtonRepresentableVAEGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<WaitOnHoldHoldingDetectedView<ApertureButtonRepresentable, ApertureButtonRepresentable>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA9EmptyViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA9EmptyViewVAA12_FrameLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntelligenceBottomApertureView, _BackgroundStyleModifier<Color>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_39_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntelligenceBottomApertureView, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntelligenceBottomApertureView, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntelligenceBottomApertureView, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type IntelligenceControlsViewContainerViewModel.ControlsType and conformance IntelligenceControlsViewContainerViewModel.ControlsType(&lazy protocol witness table cache variable for type IntelligenceBottomApertureView and conformance IntelligenceBottomApertureView, MEMORY[0x1E6995C48]);
    lazy protocol witness table accessor for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntelligenceBottomApertureView, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntelligenceLabelView<_ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntelligenceLabelView<_ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntelligenceLabelView<_ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB021IntelligenceLabelViewVyAA012_ConditionalD0VyAA05EmptyH0VAD016WaitOnHoldAvatarH0VyAD0klm16LeadingAccessoryH0VGGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVy014CommunicationsB021IntelligenceLabelViewVyAA012_ConditionalD0VyAA05EmptyH0VAD016WaitOnHoldAvatarH0VyAD0klm16LeadingAccessoryH0VGGGAA13_OffsetEffectVGMR);
    lazy protocol witness table accessor for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>(&lazy protocol witness table cache variable for type IntelligenceLabelView<_ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>>> and conformance IntelligenceLabelView<A>, &_s16CommunicationsUI21IntelligenceLabelViewVy05SwiftB019_ConditionalContentVyAD05EmptyE0VAA016WaitOnHoldAvatarE0VyAA0jkl16LeadingAccessoryE0VGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntelligenceLabelView<_ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_39_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for IntelligenceStrings(uint64_t a1)
{
  result = type metadata accessor for ConversationControlsRecipe(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ConversationControlsManager(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for CallScreeningService();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for TranscriptionViewModel(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for IntelligenceControlsViewContainer(uint64_t a1)
{
  result = type metadata accessor for ConversationControlsRecipe(319);
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewV014CommunicationsB0016WaitOnHoldAvatarF0VyAF0hij16LeadingAccessoryF0VGGMd, &_s7SwiftUI19_ConditionalContentVyAA9EmptyViewV014CommunicationsB0016WaitOnHoldAvatarF0VyAF0hij16LeadingAccessoryF0VGGMR);
    lazy protocol witness table accessor for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>(&lazy protocol witness table cache variable for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>, &_s16CommunicationsUI20WaitOnHoldAvatarViewVyAA0cde16LeadingAccessoryG0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

id SystemApertureAlertingManager.systemApertureElementContext.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong systemApertureElementContext];

  return v1;
}

uint64_t SystemApertureAlertingManager.__allocating_init(systemApertureElement:sceneStateDescriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_25();
  v4 = swift_allocObject();
  ObjectType = swift_getObjectType();
  swift_getObjectType();
  v6 = OUTLINED_FUNCTION_1_5();

  return specialized SystemApertureAlertingManager.init(systemApertureElement:sceneStateDescriber:)(v6, v7, v4, ObjectType, v8, a3);
}

uint64_t SystemApertureAlertingManager.init(systemApertureElement:sceneStateDescriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_25();
  ObjectType = swift_getObjectType();
  swift_getObjectType();
  v6 = OUTLINED_FUNCTION_1_5();

  return specialized SystemApertureAlertingManager.init(systemApertureElement:sceneStateDescriber:)(v6, v7, v3, ObjectType, v8, a3);
}

Swift::Bool __swiftcall SystemApertureAlertingManager.requestEphemeralAlertingAssertion(reason:shouldOverridePersistentAssertion:includingWhileFullscreen:)(Swift::String reason, Swift::Bool shouldOverridePersistentAssertion, Swift::Bool includingWhileFullscreen)
{
  v4 = v3;
  object = reason._object;
  countAndFlagsBits = reason._countAndFlagsBits;
  v8 = *(v4 + 40);
  if (!v8 || (v10 = [v8 isAutomaticallyInvalidatable], shouldOverridePersistentAssertion) || v10)
  {
    v11 = SystemApertureAlertingManager.startAlerting(reason:includingWhileFullscreen:)(countAndFlagsBits, object, includingWhileFullscreen);
    v12 = *(v4 + 40);
    if (v12)
    {
      if (([swift_unknownObjectRetain() isAutomaticallyInvalidatable] & 1) == 0)
      {
        [v12 setAutomaticallyInvalidatable_];
      }

      swift_unknownObjectRelease();
    }

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = 7104878;
      OUTLINED_FUNCTION_30_1();
      v30 = OUTLINED_FUNCTION_10_40();
      *countAndFlagsBits = 136315394;
      if (*(v4 + 40))
      {
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo44SBUISystemApertureAutomaticallyInvalidatable_pMd, &_sSo44SBUISystemApertureAutomaticallyInvalidatable_pMR);
        v16 = String.init<A>(reflecting:)();
        v18 = v17;
      }

      else
      {
        v18 = 0xE300000000000000;
        v16 = 7104878;
      }

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v30);

      *(countAndFlagsBits + 4) = v19;
      OUTLINED_FUNCTION_18_33();
      v20 = *(v4 + 40);
      if (v20)
      {
        [v20 isAutomaticallyInvalidatable];
        v15 = String.init<A>(reflecting:)();
        v22 = v21;
      }

      else
      {
        v22 = 0xE300000000000000;
      }

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v22, &v30);

      *(countAndFlagsBits + 14) = v23;
      OUTLINED_FUNCTION_11_44();
      _os_log_impl(v24, v25, v26, v27, v28, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_18();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

Swift::Bool __swiftcall SystemApertureAlertingManager.requestPersistentAlertingAssertion(reason:includingWhileFullscreen:)(Swift::String reason, Swift::Bool includingWhileFullscreen)
{
  v4 = v2;
  v5 = SystemApertureAlertingManager.startAlerting(reason:includingWhileFullscreen:)(reason._countAndFlagsBits, reason._object, includingWhileFullscreen);
  v6 = *(v2 + 40);
  if (v6)
  {
    if ([swift_unknownObjectRetain() isAutomaticallyInvalidatable])
    {
      [v6 setAutomaticallyInvalidatable_];
    }

    swift_unknownObjectRelease();
  }

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = 7104878;
    OUTLINED_FUNCTION_30_1();
    v24 = OUTLINED_FUNCTION_10_40();
    *v3 = 136315394;
    if (*(v4 + 40))
    {
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo44SBUISystemApertureAutomaticallyInvalidatable_pMd, &_sSo44SBUISystemApertureAutomaticallyInvalidatable_pMR);
      v10 = String.init<A>(reflecting:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xE300000000000000;
      v10 = 7104878;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v24);

    *(v3 + 4) = v13;
    OUTLINED_FUNCTION_18_33();
    v14 = *(v4 + 40);
    if (v14)
    {
      [v14 isAutomaticallyInvalidatable];
      v9 = String.init<A>(reflecting:)();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v16, &v24);

    *(v3 + 14) = v17;
    OUTLINED_FUNCTION_11_44();
    _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_18();
  }

  return v5 & 1;
}

Swift::Void __swiftcall SystemApertureAlertingManager.updatePersistentToEphemeralAlertIfNeeded(reason:)(Swift::String reason)
{
  if (!*(v1 + 40))
  {
LABEL_4:
    oslogb = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_15_29(v2, v3, v4, v5, v6, v7, v8, v9, v32, oslogb))
    {
      v10 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_21_24(v10);
      OUTLINED_FUNCTION_7_14(&dword_1BBC58000, v11, v12, "Ignoring request to update persistent alert because none exist", v13, v14, v15, v16, v33, oslog);
      OUTLINED_FUNCTION_27();
    }

LABEL_13:
    OUTLINED_FUNCTION_9_17();

    return;
  }

  OUTLINED_FUNCTION_15_25();
  if ([swift_unknownObjectRetain() isAutomaticallyInvalidatable])
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v18 = [Strong activeLayoutMode];

  if (v18 != 4)
  {
    osloga = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_9_46();
    if (os_log_type_enabled(osloga, v22))
    {
      v23 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v23);
      OUTLINED_FUNCTION_23_27(&dword_1BBC58000, v24, v25, "Ignoring request to update persistent alert while not in custom layout", v26, v27, v28, v29, v32, osloga);
      OUTLINED_FUNCTION_27();
    }

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v19 = OUTLINED_FUNCTION_1_5();
  v20(v19);
  OUTLINED_FUNCTION_9_17();

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall SystemApertureAlertingManager.invalidatePersistentAlertingAssertion(reason:)(Swift::String reason)
{
  if (!*(v1 + 40))
  {
LABEL_4:
    oslogb = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_15_29(v2, v3, v4, v5, v6, v7, v8, v9, v32, oslogb))
    {
      v10 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_21_24(v10);
      OUTLINED_FUNCTION_7_14(&dword_1BBC58000, v11, v12, "Ignoring request to invalidate persistent alert because none exist", v13, v14, v15, v16, v33, oslog);
      OUTLINED_FUNCTION_27();
    }

LABEL_13:
    OUTLINED_FUNCTION_9_17();

    return;
  }

  OUTLINED_FUNCTION_15_25();
  if ([swift_unknownObjectRetain() isAutomaticallyInvalidatable])
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v18 = [Strong activeLayoutMode];

  if (v18 != 4)
  {
    osloga = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_9_46();
    if (os_log_type_enabled(osloga, v22))
    {
      v23 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v23);
      OUTLINED_FUNCTION_23_27(&dword_1BBC58000, v24, v25, "Ignoring request to invalidate persistent alert while not in custom layout", v26, v27, v28, v29, v32, osloga);
      OUTLINED_FUNCTION_27();
    }

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v19 = OUTLINED_FUNCTION_1_5();
  v20(v19);
  OUTLINED_FUNCTION_9_17();

  swift_unknownObjectRelease();
}

uint64_t SystemApertureAlertingManager.handleRecipeTransition(from:to:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_4();
  v116 = v5;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v118 = v7;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v112 = v9;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v114 = v11;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v113 = v13;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v110 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v110 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v110 - v21;
  v23 = type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4();
  v117 = v25;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v115 = v27;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v110 - v29;
  outlined init with copy of (CGFloat, AutoplayCandidate)(a2, v22, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_2_83(v22);
  if (v38)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
LABEL_4:
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v32))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_11_44();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_18();
    }

    goto LABEL_40;
  }

  outlined init with take of ConversationControlsRecipe(v22, v30);
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, v19, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_2_83(v19);
  v39 = a1;
  if (v38)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    memset(v123, 0, sizeof(v123));
    v124 = -1;
  }

  else
  {
    outlined init with copy of ConversationControlsType(v19, v123);
    outlined destroy of ConversationControlsRecipe(v19);
  }

  outlined init with copy of ConversationControlsType(v30, &v126);
  v40 = &_s15ConversationKit0A12ControlsTypeOSgMR;
  outlined init with copy of (CGFloat, AutoplayCandidate)(v123, __dst, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
  outlined init with copy of (CGFloat, AutoplayCandidate)(&v126, &__dst[48], &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
  if (__dst[40] == 255)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v126, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v123, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
    if (__dst[88] == 255)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
      goto LABEL_16;
    }

LABEL_20:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit0A12ControlsTypeOSg_ADtMd, &_s15ConversationKit0A12ControlsTypeOSg_ADtMR);
    goto LABEL_21;
  }

  outlined init with copy of (CGFloat, AutoplayCandidate)(__dst, v122, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
  if (__dst[88] == 255)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v126, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v123, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
    outlined destroy of ConversationControlsType(v122);
    goto LABEL_20;
  }

  v120 = *&__dst[48];
  v121[0] = *&__dst[64];
  *(v121 + 9) = *&__dst[73];
  v41 = static ConversationControlsType.== infix(_:_:)(v122, &v120);
  outlined destroy of ConversationControlsType(&v120);
  v40 = &_s15ConversationKit0A12ControlsTypeOSgMd;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v126, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v123, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
  outlined destroy of ConversationControlsType(v122);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
  if ((v41 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, v16, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_2_83(v16);
  if (v38)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
LABEL_43:
    v80 = 254;
    goto LABEL_45;
  }

  memcpy(__dst, &v16[*(v23 + 72)], 0x49uLL);
  outlined init with copy of (CGFloat, AutoplayCandidate)(__dst, v123, &_s15ConversationKit21SystemApertureElementVSgMd, &_s15ConversationKit21SystemApertureElementVSgMR);
  outlined destroy of ConversationControlsRecipe(v16);
  if (*__dst == 1)
  {
    goto LABEL_43;
  }

  v80 = __dst[72];
  v81 = *&__dst[48];
  v40 = *&__dst[32];
  v82 = *&__dst[16];

LABEL_45:
  v83 = &v30[*(v23 + 72)];
  v84 = *v83;
  v85 = v83[72];
  if (v84 == 1)
  {
    v86 = -2;
  }

  else
  {
    v86 = v85;
  }

  if (v80 > 0xFD)
  {
    if (v86 <= 0xFDu)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

  if (v86 <= 0xFDu && (static SystemApertureElement.AlertingStyle.== infix(_:_:)(v80, v86) & 1) != 0)
  {
LABEL_53:
    outlined destroy of ConversationControlsRecipe(v30);
    goto LABEL_4;
  }

LABEL_21:
  outlined init with copy of ConversationControlsType(v30, &v126);
  if (v129 == 3)
  {
    outlined destroy of ConversationControlsType(&v126);
  }

  else if (v129 != 7 || v126 != 4 || (v42 = vorrq_s8(v127, v128), *&vorr_s8(*v42.i8, *&vextq_s8(v42, v42, 8uLL))))
  {
    outlined destroy of ConversationControlsType(&v126);
    v43 = &v30[*(v23 + 72)];
    if (*v43 == 1 || *(v43 + 8) != 4)
    {
      v47 = v119;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_18_0(v49))
      {
        *OUTLINED_FUNCTION_33() = 0;
        OUTLINED_FUNCTION_11_44();
        _os_log_impl(v50, v51, v52, v53, v54, 2u);
        OUTLINED_FUNCTION_18();
      }

      (*(*v47 + 216))(0xD00000000000001FLL, 0x80000001BC500760);
      goto LABEL_39;
    }

    v44 = v43[72];
    v45 = v115;
    if (v44 > 0xFD)
    {
      goto LABEL_60;
    }

    v46 = v113;
    outlined init with copy of (CGFloat, AutoplayCandidate)(v39, v113, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    OUTLINED_FUNCTION_2_83(v46);
    if (v38)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v46, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    }

    else
    {
      memcpy(__dst, (v46 + *(v23 + 72)), 0x49uLL);
      outlined init with copy of (CGFloat, AutoplayCandidate)(__dst, v123, &_s15ConversationKit21SystemApertureElementVSgMd, &_s15ConversationKit21SystemApertureElementVSgMR);
      outlined destroy of ConversationControlsRecipe(v46);
      if (*__dst != 1)
      {
        v87 = __dst[72];
        v88 = *&__dst[48];
        v89 = *&__dst[32];
        v90 = *&__dst[16];

        v45 = v115;
        goto LABEL_57;
      }
    }

    v87 = 254;
LABEL_57:
    if ((v44 & 0x80) == 0 || v87 > 0xFD || (v87 & 0xC0) != 0x40)
    {
      v78 = SystemApertureAlertingManager.requestAlertingAssertion(style:type:)(v44, v30);
      outlined destroy of ConversationControlsRecipe(v30);
      return v78 & 1;
    }

LABEL_60:
    v91 = v114;
    outlined init with copy of (CGFloat, AutoplayCandidate)(v39, v114, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    outlined init with copy of ConversationControlsRecipe(v30, v45);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v93))
    {
      OUTLINED_FUNCTION_30_1();
      v123[0] = OUTLINED_FUNCTION_10_40();
      *v45 = 136315394;
      v94 = v91;
      v95 = v112;
      outlined init with copy of (CGFloat, AutoplayCandidate)(v94, v112, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
      OUTLINED_FUNCTION_2_83(v95);
      v111 = v30;
      if (v38)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v95, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
        memset(__dst, 0, 40);
        __dst[40] = -1;
      }

      else
      {
        outlined init with copy of ConversationControlsType(v95, __dst);
        outlined destroy of ConversationControlsRecipe(v95);
      }

      v96 = specialized >> prefix<A>(_:)(__dst);
      v98 = v97;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v114, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
      v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, v123);

      *(v45 + 4) = v99;
      OUTLINED_FUNCTION_18_33();
      v100 = v115;
      outlined init with copy of ConversationControlsType(v115, __dst);
      v101 = specialized >> prefix<A>(_:)(__dst);
      v103 = v102;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
      outlined destroy of ConversationControlsRecipe(v100);
      v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v103, v123);

      *(v45 + 14) = v104;
      OUTLINED_FUNCTION_11_44();
      _os_log_impl(v105, v106, v107, v108, v109, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_18();

      v30 = v111;
      goto LABEL_39;
    }

    outlined destroy of ConversationControlsRecipe(v45);
    v77 = v91;
    goto LABEL_38;
  }

  v55 = a1;
  v56 = v118;
  outlined init with copy of (CGFloat, AutoplayCandidate)(v55, v118, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  v57 = v117;
  outlined init with copy of ConversationControlsRecipe(v30, v117);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (!OUTLINED_FUNCTION_18_0(v59))
  {

    outlined destroy of ConversationControlsRecipe(v57);
    v77 = v56;
LABEL_38:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v77, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_30_1();
  v60 = OUTLINED_FUNCTION_10_40();
  v111 = v30;
  *__dst = v60;
  *v40 = 136315394;
  specialized >> prefix<A>(_:)();
  v62 = v61;
  v64 = v63;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v56, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, __dst);

  *(v40 + 1) = v65;
  OUTLINED_FUNCTION_18_33();
  v66 = v116;
  outlined init with copy of ConversationControlsRecipe(v57, v116);
  __swift_storeEnumTagSinglePayload(v66, 0, 1, v23);
  specialized >> prefix<A>(_:)();
  v68 = v67;
  v70 = v69;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v66, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  outlined destroy of ConversationControlsRecipe(v57);
  v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, __dst);

  *(v40 + 14) = v71;
  OUTLINED_FUNCTION_11_44();
  _os_log_impl(v72, v73, v74, v75, v76, 0x16u);
  swift_arrayDestroy();
  v30 = v111;
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18();

LABEL_39:
  outlined destroy of ConversationControlsRecipe(v30);
LABEL_40:
  v78 = 0;
  return v78 & 1;
}

Swift::Void __swiftcall SystemApertureAlertingManager.invalidateAlertingAssertonIfFullScreen()()
{
  swift_unknownObjectUnownedLoadStrong();
  v1 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v1) = (*(v1 + 8))(ObjectType, v1);
  swift_unknownObjectRelease();
  if (v1)
  {
    OUTLINED_FUNCTION_13_38();
    v5 = *(v4 + 216);

    v5(0xD00000000000001ELL, v3 | 0x8000000000000000);
  }

  else
  {
    v23 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_15_29(v6, v7, v8, v9, v10, v11, v12, v13, v21, v23))
    {
      v14 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_21_24(v14);
      OUTLINED_FUNCTION_7_14(&dword_1BBC58000, v15, v16, "Ignoring invalidation request, full-screen presentation hasn't happened yet", v17, v18, v19, v20, v22, v24);
      OUTLINED_FUNCTION_27();
    }
  }
}

uint64_t SystemApertureAlertingManager.requestAlertingAssertion(style:type:)(unsigned __int8 a1, uint64_t a2)
{
  v12 = 0;
  *&v13 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  MEMORY[0x1BFB20B10](0xD000000000000034, 0x80000001BC500860);
  v16 = a1;
  v4 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v4);

  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      OUTLINED_FUNCTION_13_38();
    }

    else
    {
      v12 = 2;
      v13 = 0u;
      v14 = 0u;
      v15 = 7;
      static ConversationControlsType.== infix(_:_:)(a2, &v12);
      outlined destroy of ConversationControlsType(&v12);
      OUTLINED_FUNCTION_13_38();
    }

    v5 = OUTLINED_FUNCTION_15_14();
    v7 = v6(v5);
  }

  else if (a1)
  {
    OUTLINED_FUNCTION_13_38();
    v8 = OUTLINED_FUNCTION_15_14();
    v7 = v9(v8);
  }

  else
  {
    OUTLINED_FUNCTION_15_14();
    v7 = SystemApertureAlertingManager.requestPersistentAlertingAssertionUntilFirstFullScreenPresentation(reason:)();
  }

  v10 = v7;

  return v10 & 1;
}

Swift::Void __swiftcall SystemApertureAlertingManager.invalidateAlertingAssertion(reason:)(Swift::String reason)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    OUTLINED_FUNCTION_15_25();
    if ([swift_unknownObjectRetain() isValid])
    {
      CurrentValueSubject.send(_:)();
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_18_0(v4))
      {
        v5 = OUTLINED_FUNCTION_33();
        *v5 = 0;
        _os_log_impl(&dword_1BBC58000, v3, v4, "Invalidating alerting assertion", v5, 2u);
        OUTLINED_FUNCTION_27();
      }

      v6 = OUTLINED_FUNCTION_1_5();
      v7 = MEMORY[0x1BFB209B0](v6);
      [v2 invalidateWithReason_];
      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_9_17();
      return;
    }

    swift_unknownObjectRelease();
  }

  v8 = (v1 + OBJC_IVAR____TtC15ConversationKit29SystemApertureAlertingManager_logger);
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_21_24(v10);
    _os_log_impl(&dword_1BBC58000, oslog, v9, "Ignoring invalidation request, there's no valid alert to invalidate", v8, 2u);
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_9_17();
}

uint64_t SystemApertureAlertingManager.requestPersistentAlertingAssertionUntilFirstFullScreenPresentation(reason:)()
{
  OUTLINED_FUNCTION_15_25();
  swift_unknownObjectUnownedLoadStrong();
  v1 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v1) = (*(v1 + 8))(ObjectType, v1);
  swift_unknownObjectRelease();
  if (v1)
  {
    v3 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_9_46();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v5);
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v6, v7, "Ignoring request for alerting assertion because full-screen presentation has already happened");
      OUTLINED_FUNCTION_27();
    }

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_38();
    v9 = OUTLINED_FUNCTION_1_5();

    return v10(v9);
  }
}

uint64_t SystemApertureAlertingManager.startAlerting(reason:includingWhileFullscreen:)(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectUnownedLoadStrong();
  v12 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v12) = (*(v12 + 16))(ObjectType, v12);
  swift_unknownObjectRelease();
  if ((v12 & 1) != 0 && (a3 & 1) == 0)
  {
    v14 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_9_46();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v16);
      v19 = "No alerting required for recipe transition because call UI is full-screen";
LABEL_12:
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v17, v18, v19);
      OUTLINED_FUNCTION_27();
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v20 = [SystemApertureAlertingManager.systemApertureElementContext.getter() requestAlertingAssertion];
  swift_unknownObjectRelease();
  if (!v20)
  {
    v14 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    OUTLINED_FUNCTION_9_46();
    if (os_log_type_enabled(v14, v34))
    {
      v35 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v35);
      v19 = "Unable to obtain alerting assertion, likely because the system aperture element context isn't ready";
      goto LABEL_12;
    }

LABEL_16:

    return 0;
  }

  if (![v20 isValid])
  {
    v36 = v3 + OBJC_IVAR____TtC15ConversationKit29SystemApertureAlertingManager_logger;
    v14 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_9_46();
    if (os_log_type_enabled(v14, v37))
    {
      v38 = OUTLINED_FUNCTION_33();
      *v38 = 0;
      _os_log_impl(&dword_1BBC58000, v14, v36, "Received an invalid alerting assertion", v38, 2u);
      OUTLINED_FUNCTION_18();
    }

    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v40 = a1;
  v21 = swift_allocObject();
  swift_weakInit();
  v41 = OBJC_IVAR____TtC15ConversationKit29SystemApertureAlertingManager_logger;
  (*(v9 + 16))(&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v4 + OBJC_IVAR____TtC15ConversationKit29SystemApertureAlertingManager_logger, v8);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v9 + 32))(v24 + v22, v11, v8);
  *(v24 + v23) = v21;
  aBlock[4] = partial apply for closure #1 in SystemApertureAlertingManager.startAlerting(reason:includingWhileFullscreen:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed SBUISystemApertureAutomaticallyInvalidatable, @guaranteed String) -> ();
  aBlock[3] = &block_descriptor_35;
  v25 = _Block_copy(aBlock);

  [v20 addInvalidationBlock_];
  _Block_release(v25);
  swift_unknownObjectRetain();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_30_1();
    v29 = swift_slowAlloc();
    v42 = v20;
    aBlock[0] = v29;
    *v28 = 136315394;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo44SBUISystemApertureAutomaticallyInvalidatable_pMd, &_sSo44SBUISystemApertureAutomaticallyInvalidatable_pMR);
    v30 = String.init<A>(reflecting:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, aBlock);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, a2, aBlock);
    _os_log_impl(&dword_1BBC58000, v26, v27, "Obtained alerting assertion %s for reason: %s", v28, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  *(v4 + 40) = v20;
  swift_unknownObjectRelease();
  return 1;
}

uint64_t closure #1 in SystemApertureAlertingManager.startAlerting(reason:includingWhileFullscreen:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v50 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for DispatchTime();
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  swift_unknownObjectRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43 = v10;
    v22 = v21;
    v23 = swift_slowAlloc();
    v42 = v12;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136315138;
    aBlock[6] = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo44SBUISystemApertureAutomaticallyInvalidatable_pMd, &_sSo44SBUISystemApertureAutomaticallyInvalidatable_pMR);
    v25 = String.init<A>(reflecting:)();
    v27 = a5;
    v28 = v9;
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, aBlock);

    *(v22 + 4) = v29;
    v9 = v28;
    a5 = v27;
    _os_log_impl(&dword_1BBC58000, v19, v20, "Invalidated assertion %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v30 = v24;
    v12 = v42;
    MEMORY[0x1BFB23DF0](v30, -1, -1);
    v31 = v22;
    v10 = v43;
    MEMORY[0x1BFB23DF0](v31, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 40) = 0;

    swift_unknownObjectRelease();
  }

  type metadata accessor for OS_dispatch_queue();
  v43 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v12 = 500;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E7F38], v9);
  MEMORY[0x1BFB20700](v15, v12);
  (*(v10 + 8))(v12, v9);
  v33 = *(v46 + 8);
  v34 = v15;
  v35 = v47;
  v33(v34, v47);
  aBlock[4] = partial apply for closure #1 in closure #1 in SystemApertureAlertingManager.startAlerting(reason:includingWhileFullscreen:);
  aBlock[5] = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_10;
  v36 = _Block_copy(aBlock);

  v37 = v49;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v38 = v44;
  v39 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v40 = v43;
  MEMORY[0x1BFB21510](v18, v37, v38, v36);
  _Block_release(v36);

  (*(v45 + 8))(v38, v39);
  (*(v50 + 8))(v37, v48);
  return (v33)(v18, v35);
}

uint64_t closure #1 in closure #1 in SystemApertureAlertingManager.startAlerting(reason:includingWhileFullscreen:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    CurrentValueSubject.send(_:)();
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed SBUISystemApertureAutomaticallyInvalidatable, @guaranteed String) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = swift_unknownObjectRetain();
  v3(v7, v4, v6);

  return swift_unknownObjectRelease();
}

uint64_t SystemApertureAlertingManager.deinit()
{
  outlined destroy of unowned CNKCallDetailsDeferredPresentationManager(v0 + 16);
  outlined destroy of unowned CNKCallDetailsDeferredPresentationManager(v0 + 24);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC15ConversationKit29SystemApertureAlertingManager_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t SystemApertureAlertingManager.__deallocating_deinit()
{
  SystemApertureAlertingManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized SystemApertureAlertingManager.init(systemApertureElement:sceneStateDescriber:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a3 + 40) = 0;
  v9 = OBJC_IVAR____TtC15ConversationKit29SystemApertureAlertingManager_logger;
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, &static Logger.conversationControls);
  (*(*(v10 - 8) + 16))(a3 + v9, v11, v10);
  v12 = OBJC_IVAR____TtC15ConversationKit29SystemApertureAlertingManager_invalidationInProgressSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  swift_allocObject();
  *(a3 + v12) = CurrentValueSubject.init(_:)();
  swift_unknownObjectUnownedInit();
  *(a3 + 32) = a6;
  swift_unknownObjectUnownedInit();
  CurrentValueSubject.send(_:)();

  swift_unknownObjectRelease();
  return a3;
}

uint64_t type metadata accessor for SystemApertureAlertingManager(uint64_t a1)
{
  result = type metadata singleton initialization cache for SystemApertureAlertingManager;
  if (!type metadata singleton initialization cache for SystemApertureAlertingManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SystemApertureAlertingManager(uint64_t a1)
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

uint64_t partial apply for closure #1 in SystemApertureAlertingManager.startAlerting(reason:includingWhileFullscreen:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_25();
  type metadata accessor for Logger();
  v4 = OUTLINED_FUNCTION_1_5();

  return closure #1 in SystemApertureAlertingManager.startAlerting(reason:includingWhileFullscreen:)(v4, v5, a3, v6, v7);
}

uint64_t static RecentsJoinButton.fetchButtonImageName(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_4();
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 conversationManager];

  v9 = TUConversationManager.conversation(with:)(a1);
  if (v9)
  {
    v10 = [v9 resolvedAudioVideoMode];

    type metadata accessor for ContactAvatarTileView.ButtonConfiguration.Symbol();
    OUTLINED_FUNCTION_7_0();
    v12 = *(v11 + 104);
    if (v10 == 1)
    {
      v13 = MEMORY[0x1E6995B50];
    }

    else
    {
      v13 = MEMORY[0x1E6995B58];
    }

    v25 = *v13;

    return v12(a2, v25);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v14 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BC4BA940;
    outlined init with copy of RecentOngoingConversationMetadata(a1, v2);
    v16 = type metadata accessor for RecentOngoingConversationMetadata(0);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v16);
    specialized >> prefix<A>(_:)();
    v18 = v17;
    v20 = v19;
    outlined destroy of RecentOngoingConversationMetadata?(v2);
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v15 + 32) = v18;
    *(v15 + 40) = v20;
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Did not find conversation for ongoing conversation metadata: %@", 63, 2, &dword_1BBC58000, v14, v21, v15);

    v22 = *MEMORY[0x1E6995B58];
    type metadata accessor for ContactAvatarTileView.ButtonConfiguration.Symbol();
    OUTLINED_FUNCTION_7_0();
    return (*(v23 + 104))(a2, v22);
  }
}

uint64_t static RecentsJoinButton.fetchMenuItems(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_4();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v5 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BA940;
  outlined init with copy of RecentOngoingConversationMetadata(a1, v1);
  v7 = type metadata accessor for RecentOngoingConversationMetadata(0);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v7);
  specialized >> prefix<A>(_:)();
  v9 = v8;
  v11 = v10;
  outlined destroy of RecentOngoingConversationMetadata?(v1);
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  v12 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Asking for menu or join for ongoing conversation: %@", 52, 2, &dword_1BBC58000, v5, v12, v6);

  v13 = [*(a1 + *(v7 + 24)) handoffEligibility];
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = v13;
  v15 = [v13 isEligible];

  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for RecentsJoinButton(0);
  return static RecentsJoinButton.buildItems(_:)(a1);
}

id @nonobjc UIImage.init(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = MEMORY[0x1BFB209B0](a1);
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() imageNamed:v4 inBundle:a3];

  return v5;
}

id RecentsJoinButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t key path setter for RecentsJoinButton.conversationMetadata : RecentsJoinButton(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of RecentOngoingConversationMetadata?(a1, &v8 - v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x60))(v6);
}

void RecentsJoinButton.conversationMetadata.didset()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = type metadata accessor for RecentOngoingConversationMetadata(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC15ConversationKit17RecentsJoinButton_conversationMetadata;
  swift_beginAccess();
  outlined init with copy of RecentOngoingConversationMetadata?(v1 + v11, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    outlined destroy of RecentOngoingConversationMetadata?(v7);
LABEL_7:
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BC4BA940;
    outlined init with copy of RecentOngoingConversationMetadata?(v1 + v11, v4);
    specialized >> prefix<A>(_:)();
    v21 = v20;
    v23 = v22;
    outlined destroy of RecentOngoingConversationMetadata?(v4);
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v19 + 32) = v21;
    *(v19 + 40) = v23;
    v24 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Did not find conversation for ongoing conversation metadata: %@", 63, 2, &dword_1BBC58000, v18, v24, v19);

    return;
  }

  outlined init with take of RecentOngoingConversationMetadata(v7, v10);
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 conversationManager];

  v14 = TUConversationManager.conversation(with:)(v10);
  if (!v14)
  {
    outlined destroy of RecentOngoingConversationMetadata(v10);
    goto LABEL_7;
  }

  v15 = [v14 resolvedAudioVideoMode];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  if (v15 == 1)
  {
    v16 = [objc_opt_self() conversationKit];
    v17 = @nonobjc UIImage.init(named:in:)(0xD000000000000011, 0x80000001BC500C10, v16);
    [v1 setImage:v17 forState:0];
  }

  else
  {
    v17 = v14;
    v25 = [objc_opt_self() conversationKit];
    v14 = @nonobjc UIImage.init(named:in:)(0x7475622D6E696F6ALL, 0xEB000000006E6F74, v25);
    [v1 setImage:v14 forState:0];
  }

  outlined destroy of RecentOngoingConversationMetadata(v10);
}

uint64_t RecentsJoinButton.conversationMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit17RecentsJoinButton_conversationMetadata;
  swift_beginAccess();
  return outlined init with copy of RecentOngoingConversationMetadata?(v1 + v3, a1);
}

uint64_t RecentsJoinButton.conversationMetadata.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit17RecentsJoinButton_conversationMetadata;
  swift_beginAccess();
  outlined assign with copy of RecentOngoingConversationMetadata?(a1, v1 + v3);
  swift_endAccess();
  RecentsJoinButton.conversationMetadata.didset();
  return outlined destroy of RecentOngoingConversationMetadata?(a1);
}

void (*RecentsJoinButton.conversationMetadata.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return RecentsJoinButton.conversationMetadata.modify;
}

void RecentsJoinButton.conversationMetadata.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    RecentsJoinButton.conversationMetadata.didset();
  }
}

id RecentsJoinButton.init()()
{
  v1 = type metadata accessor for RecentOngoingConversationMetadata(0);
  OUTLINED_FUNCTION_0_11(v1);
  v12.receiver = v0;
  v12.super_class = type metadata accessor for RecentsJoinButton(0);
  v2 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 32.0, 32.0);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v6 = objc_opt_self();
  v7 = v4;
  v8 = @nonobjc UIImage.init(named:in:)(0x7475622D6E696F6ALL, 0xEB000000006E6F74, [v6 conversationKit]);
  [v7 setImage:v8 forState:0];

  v9 = v7;
  v10 = RecentsJoinButton.handoffOrJoinMenu.getter();
  [v9 setMenu_];

  [v9 setShowsMenuAsPrimaryAction_];
  [v9 _setChangesSelectionAsPrimaryAction_];

  return v9;
}

Class RecentsJoinButton.handoffOrJoinMenu.getter()
{
  v0 = [objc_opt_self() currentDeviceRouteGlyphForDisplayStyle_];
  if (!v0)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v15 = static OS_os_log.default.getter();
    v16 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Unable to obtain separateDeviceImage for the RecentsJoinButton menu", 67, 2, &dword_1BBC58000, v15, v16, MEMORY[0x1E69E7CC0]);

    return 0;
  }

  v1 = v0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
  v2 = [objc_opt_self() conversationKit];
  swift__string._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._object = 0x80000001BC500AE0;
  v4._countAndFlagsBits = 0xD000000000000017;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  swift__string._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, swift__string);

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = v1;
  v8 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  type metadata accessor for RecentsJoinButton(0);
  static RecentsJoinButton.handoffContext.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg_So7UIImageCSgtMd, &_sSSSg_So7UIImageCSgtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So7UIImageCtMd, &_sSS_So7UIImageCtMR);
  if (!swift_dynamicCast())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v17 = static OS_os_log.default.getter();
    v18 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Unable to obtain an image/label for the RecentsJoinButton menu", 62, 2, &dword_1BBC58000, v17, v18, MEMORY[0x1E69E7CC0], 0, 0, 0, partial apply for closure #1 in RecentsJoinButton.handoffOrJoinMenu.getter, v6);

    return 0;
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = v20;
  v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1BC4BA930;
  *(preferredElementSize + 32) = v10;
  *(preferredElementSize + 40) = v8;
  v12 = v8;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v21.value.super.isa = 0;
  v21.is_nil = 0;
  v14.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v13, 0, v21, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;

  return v14.super.super.isa;
}

id RecentsJoinButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void RecentsJoinButton.init(coder:)()
{
  v0 = type metadata accessor for RecentOngoingConversationMetadata(0);
  OUTLINED_FUNCTION_0_11(v0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

UIContextMenuConfiguration_optional __swiftcall RecentsJoinButton.contextMenuInteraction(_:configurationForMenuAtLocation:)(UIContextMenuInteraction _, CGPoint configurationForMenuAtLocation)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_4();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v6 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA940;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x58))();
  specialized >> prefix<A>(_:)();
  v9 = v8;
  v11 = v10;
  outlined destroy of RecentOngoingConversationMetadata?(v3);
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  v12 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Asking for menu or join for ongoing conversation: %@", 52, 2, &dword_1BBC58000, v6, v12, v7);

  if (RecentsJoinButton.isHandoffEligible.getter())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIContextMenuConfiguration, 0x1E69DC8D8);
    *(swift_allocObject() + 16) = v2;
    v13 = v2;
    UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)();
  }

  else
  {
    RecentsJoinButton.joinOngoingConversation()();
    v14 = 0;
  }

  result.value.super.isa = v14;
  result.is_nil = v15;
  return result;
}

id RecentsJoinButton.isHandoffEligible.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for RecentOngoingConversationMetadata(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v5);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    outlined destroy of RecentOngoingConversationMetadata?(v3);
    return 0;
  }

  else
  {
    outlined init with take of RecentOngoingConversationMetadata(v3, v7);
    v9 = [*&v7[*(v4 + 24)] handoffEligibility];
    if (v9)
    {
      v10 = v9;
      v8 = [v9 isEligible];
    }

    else
    {
      v8 = 0;
    }

    outlined destroy of RecentOngoingConversationMetadata(v7);
  }

  return v8;
}

double RecentsJoinButton.joinOngoingConversation()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  v7 = type metadata accessor for RecentOngoingConversationMetadata(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v11(v8);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of RecentOngoingConversationMetadata?(v6);
  }

  else
  {
    outlined init with take of RecentOngoingConversationMetadata(v6, v10);
    v12 = [objc_opt_self() sharedInstance];
    v13 = [v12 conversationManager];

    v14 = TUConversationManager.conversation(with:)(v10);
    if (v14)
    {
      type metadata accessor for RecentsJoinButton(0);
      static RecentsJoinButton.joinOngoingConversation(conversationToJoin:)(v14);

      outlined destroy of RecentOngoingConversationMetadata(v10);
      return result;
    }

    outlined destroy of RecentOngoingConversationMetadata(v10);
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v16 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BC4BA940;
  (v11)();
  specialized >> prefix<A>(_:)();
  v19 = v18;
  v21 = v20;
  outlined destroy of RecentOngoingConversationMetadata?(v3);
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  v22 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("(Join) Could not retrieve conversation for recent conversation metadata: %@", 75, 2, &dword_1BBC58000, v16, v22, v17);

  return result;
}

id RecentsJoinButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id RecentsJoinButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentsJoinButton(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static RecentsJoinButton.joinOngoingConversation(conversationToJoin:)(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 state])
  {
    v7 = [objc_opt_self() faceTimeShowInCallUIURL];
    if (v7)
    {
      v8 = v7;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v9);
      v11 = v10;
      (*(v3 + 8))(v6, v2);
      TUOpenURL();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v12 = [objc_opt_self() sharedInstance];
    v15 = TUConversation.joinConversationRequest()();
    [v12 launchAppForJoinRequest_];

    v13 = v15;
  }
}

double RecentsJoinButton.handoffOngoingConversation()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  v7 = type metadata accessor for RecentOngoingConversationMetadata(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v11(v8);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of RecentOngoingConversationMetadata?(v6);
  }

  else
  {
    outlined init with take of RecentOngoingConversationMetadata(v6, v10);
    v12 = [objc_opt_self() sharedInstance];
    v13 = [v12 conversationManager];

    v14 = TUConversationManager.conversation(with:)(v10);
    if (v14)
    {
      v15 = [v14 handoffEligibility];

      if (v15)
      {
        type metadata accessor for RecentsJoinButton(0);
        static RecentsJoinButton.handoffOngoingConversation(handoffEligibility:)(v15);

        outlined destroy of RecentOngoingConversationMetadata(v10);
        return result;
      }
    }

    outlined destroy of RecentOngoingConversationMetadata(v10);
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v17 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BC4BA940;
  (v11)();
  specialized >> prefix<A>(_:)();
  v20 = v19;
  v22 = v21;
  outlined destroy of RecentOngoingConversationMetadata?(v3);
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  v23 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("(Handoff) Could not retrieve conversation for recent conversation metadata: %@", 78, 2, &dword_1BBC58000, v17, v23, v18);

  return result;
}

void static RecentsJoinButton.handoffOngoingConversation(handoffEligibility:)(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  [v2 continueHandoffForConversationWithEligibility_];
}

id static RecentsJoinButton.handoffContext.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result deviceType];

    if (v2 == 4)
    {
      v9 = 0xD000000000000016;
      v3 = [objc_opt_self() conversationKit];
      v19._object = 0xE000000000000000;
      v14._countAndFlagsBits = 0x4F52465F4E494F4ALL;
      v14._object = 0xEE00444150495F4DLL;
      v15.value._countAndFlagsBits = 0x61737265766E6F43;
      v15.value._object = 0xEF74694B6E6F6974;
      v16._countAndFlagsBits = 0;
      v16._object = 0xE000000000000000;
      v19._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v3, v16, v19)._countAndFlagsBits;
      v13 = "ipad.and.arrow.forward";
    }

    else
    {
      if (v2 != 3)
      {
        if (v2 != 2)
        {
          return 0;
        }

        v3 = [objc_opt_self() conversationKit];
        v4._countAndFlagsBits = 0xD000000000000010;
        v17._object = 0xE000000000000000;
        v5.value._countAndFlagsBits = 0x61737265766E6F43;
        v5.value._object = 0xEF74694B6E6F6974;
        v4._object = 0x80000001BC500BD0;
        v6._countAndFlagsBits = 0;
        v6._object = 0xE000000000000000;
        v17._countAndFlagsBits = 0;
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v17)._countAndFlagsBits;
        v8 = "JOIN_FROM_IPHONE";
        v9 = 0xD000000000000018;
LABEL_9:

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
        @nonobjc UIImage.__allocating_init(systemName:)(v9, v8 | 0x8000000000000000);
        return countAndFlagsBits;
      }

      v9 = 0xD000000000000016;
      v3 = [objc_opt_self() conversationKit];
      v18._object = 0xE000000000000000;
      v10._countAndFlagsBits = 0x4F52465F4E494F4ALL;
      v10._object = 0xEE00444F50495F4DLL;
      v11.value._countAndFlagsBits = 0x61737265766E6F43;
      v11.value._object = 0xEF74694B6E6F6974;
      v12._countAndFlagsBits = 0;
      v12._object = 0xE000000000000000;
      v18._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v3, v12, v18)._countAndFlagsBits;
      v13 = "ipod.and.arrow.forward";
    }

    v8 = v13 - 32;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void closure #1 in RecentsJoinButton.handoffOrJoinMenu.getter(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

uint64_t static RecentsJoinButton.buildItems(_:)(uint64_t a1)
{
  v2 = type metadata accessor for RecentOngoingConversationMetadata(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = type metadata accessor for MenuItem();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v39 - v10;
  v12 = [objc_opt_self() currentDeviceRouteGlyphForDisplayStyle_];
  if (!v12)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.conversationKit);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1BBC58000, v32, v33, "Unable to obtain separateDeviceImage for the RecentsJoinButton menu", v34, 2u);
      MEMORY[0x1BFB23DF0](v34, -1, -1);
    }

    goto LABEL_13;
  }

  v13 = v12;
  v46 = static RecentsJoinButton.handoffContext.getter();
  v47 = v14;
  v48 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg_So7UIImageCSgtMd, &_sSSSg_So7UIImageCSgtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So7UIImageCtMd, &_sSS_So7UIImageCtMR);
  if (!swift_dynamicCast())
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.conversationKit);
    v32 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1BBC58000, v32, v36, "Unable to obtain an image/label for the RecentsJoinButton menu", v37, 2u);
      MEMORY[0x1BFB23DF0](v37, -1, -1);
    }

LABEL_13:
    return MEMORY[0x1E69E7CC0];
  }

  v39[1] = v44;
  v43 = v45;
  Image.init(uiImage:)();
  v41 = v8;
  outlined init with copy of RecentOngoingConversationMetadata(a1, v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = a1;
  v16 = *(v3 + 80);
  v42 = v5;
  v17 = (v16 + 16) & ~v16;
  v18 = swift_allocObject();
  outlined init with take of RecentOngoingConversationMetadata(v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  MenuItem.init(label:icon:action:)();
  v19 = [objc_opt_self() conversationKit];
  v49._object = 0xE000000000000000;
  v20.value._countAndFlagsBits = 0x61737265766E6F43;
  v20.value._object = 0xEF74694B6E6F6974;
  v21._object = 0x80000001BC500AE0;
  v21._countAndFlagsBits = 0xD000000000000017;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v20, v19, v22, v49);

  v23 = v13;
  Image.init(uiImage:)();
  outlined init with copy of RecentOngoingConversationMetadata(v40, v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = swift_allocObject();
  outlined init with take of RecentOngoingConversationMetadata(v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v17);
  v25 = v41;
  MenuItem.init(label:icon:action:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16CommunicationsUI8MenuItemVGMd, &_ss23_ContiguousArrayStorageCy16CommunicationsUI8MenuItemVGMR);
  v26 = *(v6 + 72);
  v27 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BC4BAA20;
  v29 = v28 + v27;
  v30 = v42;
  (*(v6 + 16))(v29, v11, v42);
  (*(v6 + 32))(v29 + v26, v25, v30);

  (*(v6 + 8))(v11, v30);
  return v28;
}

void closure #1 in static RecentsJoinButton.buildItems(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for RecentOngoingConversationMetadata(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 conversationManager];

  v10 = TUConversationManager.conversation(with:)(a1);
  if (v10 && (v22 = [v10 handoffEligibility], v10, v22))
  {
    type metadata accessor for RecentsJoinButton(0);
    static RecentsJoinButton.handoffOngoingConversation(handoffEligibility:)(v22);
    v11 = v22;
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.conversationKit);
    outlined init with copy of RecentOngoingConversationMetadata(a1, v7);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315138;
      outlined init with copy of RecentOngoingConversationMetadata(v7, v4);
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
      specialized >> prefix<A>(_:)();
      v18 = v17;
      v20 = v19;
      outlined destroy of RecentOngoingConversationMetadata?(v4);
      outlined destroy of RecentOngoingConversationMetadata(v7);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v23);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_1BBC58000, v13, v14, "(Handoff) Could not retrieve conversation for recent conversation metadata: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFB23DF0](v16, -1, -1);
      MEMORY[0x1BFB23DF0](v15, -1, -1);
    }

    else
    {

      outlined destroy of RecentOngoingConversationMetadata(v7);
    }
  }
}

void closure #2 in static RecentsJoinButton.buildItems(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for RecentOngoingConversationMetadata(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 conversationManager];

  v21 = TUConversationManager.conversation(with:)(a1);
  if (v21)
  {
    type metadata accessor for RecentsJoinButton(0);
    static RecentsJoinButton.joinOngoingConversation(conversationToJoin:)(v21);
    v10 = v21;
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.conversationKit);
    outlined init with copy of RecentOngoingConversationMetadata(a1, v7);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      outlined init with copy of RecentOngoingConversationMetadata(v7, v4);
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
      specialized >> prefix<A>(_:)();
      v17 = v16;
      v19 = v18;
      outlined destroy of RecentOngoingConversationMetadata?(v4);
      outlined destroy of RecentOngoingConversationMetadata(v7);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v22);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_1BBC58000, v12, v13, "(Join) Could not retrieve conversation for recent conversation metadata: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1BFB23DF0](v15, -1, -1);
      MEMORY[0x1BFB23DF0](v14, -1, -1);
    }

    else
    {

      outlined destroy of RecentOngoingConversationMetadata(v7);
    }
  }
}

uint64_t outlined init with copy of RecentOngoingConversationMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentOngoingConversationMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RecentOngoingConversationMetadata?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for RecentsJoinButton(uint64_t a1)
{
  result = type metadata singleton initialization cache for RecentsJoinButton;
  if (!type metadata singleton initialization cache for RecentsJoinButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of RecentOngoingConversationMetadata?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of RecentOngoingConversationMetadata?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void type metadata completion function for RecentsJoinButton(uint64_t a1)
{
  type metadata accessor for RecentOngoingConversationMetadata?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for RecentOngoingConversationMetadata?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for RecentOngoingConversationMetadata?)
  {
    type metadata accessor for RecentOngoingConversationMetadata(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for RecentOngoingConversationMetadata?);
    }
  }
}

uint64_t outlined destroy of RecentOngoingConversationMetadata(uint64_t a1)
{
  v2 = type metadata accessor for RecentOngoingConversationMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_9Tm()
{
  v1 = (type metadata accessor for RecentOngoingConversationMetadata(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v2);

  v4 = *(v2 + v1[9]);
  if (v4)
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static RecentsJoinButton.buildItems(_:)(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for RecentOngoingConversationMetadata(0);
  OUTLINED_FUNCTION_22(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t ScreenShareAttributes.Style.debugDescription.getter(void *a1)
{
  if (!a1)
  {
    return 0x656E6F6E2ELL;
  }

  if (a1 == 1)
  {
    return 0x7263536C6C75662ELL;
  }

  if (a1 == 2)
  {
    return 0x776F646E69772ELL;
  }

  v2 = [a1 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x1BFB20B10](v3, v5);

  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return 0x79616C707369642ELL;
}

uint64_t ScreenShareAttributes.sessionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

void *ScreenShareAttributes.style.getter()
{
  OUTLINED_FUNCTION_5_62();
  v2 = *(v0 + v1);
  outlined copy of ScreenShareAttributes.Style(v2);
  return v2;
}

id outlined copy of ScreenShareAttributes.Style(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

BOOL ScreenShareAttributes.displayIsScaled.getter()
{
  v1 = *(v0 + *(type metadata accessor for ScreenShareAttributes(0) + 32));
  v2 = [objc_opt_self() defaultScaleFactor];
  [v2 floatValue];
  v4 = v3;

  return v1 != v4;
}

uint64_t ScreenShareAttributes.originalResolution.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for ScreenShareAttributes(0);
  v10 = (v4 + *(result + 36));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t ScreenShareAttributes.debugDescription.getter()
{
  _StringGuts.grow(_:)(178);
  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10]();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v1);

  MEMORY[0x1BFB20B10](0x3D656C797473202CLL, 0xE800000000000000);
  v2 = type metadata accessor for ScreenShareAttributes(0);
  v3 = *(v0 + v2[5]);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1BFB20B10](0x616C70736964202CLL, 0xEF3D656C61635379);
  v4 = Double.description.getter();
  MEMORY[0x1BFB20B10](v4);

  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10]();
  if (*(v0 + v2[7] + 8))
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v6 = String.init<A>(reflecting:)();
    v5 = v7;
  }

  MEMORY[0x1BFB20B10](v6, v5);

  MEMORY[0x1BFB20B10](0x46656C616373202CLL, 0xEE003D726F746361);
  v8 = *(v0 + v2[8]);
  v9 = Double.description.getter();
  MEMORY[0x1BFB20B10](v9);

  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10](0xD000000000000012);
  v10 = [objc_opt_self() defaultScaleFactor];
  [v10 floatValue];
  v12 = v11;

  if (v8 == v12)
  {
    v13 = 0x65736C6166;
  }

  else
  {
    v13 = 1702195828;
  }

  if (v8 == v12)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x1BFB20B10](v13, v14);

  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10]();
  v15 = CGRect.description.getter();
  MEMORY[0x1BFB20B10](v15);

  MEMORY[0x1BFB20B10](0x646E69577369202CLL, 0xED00003D6465776FLL);
  if (v3 == 2)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v3 == 2)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x1BFB20B10](v16, v17);

  MEMORY[0x1BFB20B10](0x727474417574202CLL, 0xEF3D736574756269);
  ScreenShareAttributes.tuCallScreenShareAttributes.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27TUCallScreenShareAttributesCSgMd, &_sSo27TUCallScreenShareAttributesCSgMR);
  v18 = String.init<A>(describing:)();
  MEMORY[0x1BFB20B10](v18);

  return 0;
}

id ScreenShareAttributes.tuCallScreenShareAttributes.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69D8A98]) init];
  v2 = type metadata accessor for ScreenShareAttributes(0);
  v3 = *(v0 + v2[5]);
  if (v3 >= 2)
  {
    if (v3 == 2)
    {
      [v1 setWindowed_];
    }

    else
    {
      [v1 setDisplayID_];
      [v1 setWindowed_];
      outlined consume of ScreenShareAttributes.Style(v3);
    }
  }

  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 setWindowUUID_];

  v5 = objc_opt_self();
  [v1 setDeviceFamily_];
  [v1 setDeviceHomeButtonType_];
  if (v3 > 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = qword_1BC4CAB50[v3];
  }

  [v1 setStyle_];
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  [v1 setDisplayScale_];

  v8 = v0 + v2[7];
  if (*(v8 + 8))
  {
    v9 = 0;
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  [v1 setCornerRadius_];

  v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  [v1 setScaleFactor_];

  v11 = (v0 + v2[9]);
  v12 = [objc_opt_self() valueWithRect_];
  OUTLINED_FUNCTION_1_70(v12, sel_setOriginalResolution_);

  return v1;
}

int *ScreenShareAttributes.init(sessionUUID:style:displayScale:displayCornerRadius:scaleFactor:originalResolution:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v22 + 32))(a5, a1);
  result = OUTLINED_FUNCTION_5_62();
  *(a5 + v24) = a2;
  *(a5 + result[6]) = a6;
  v25 = a5 + result[7];
  *v25 = a3;
  *(v25 + 8) = a4 & 1;
  *(a5 + result[8]) = a7;
  v26 = (a5 + result[9]);
  *v26 = a8;
  v26[1] = a9;
  v26[2] = a10;
  v26[3] = a11;
  return result;
}

uint64_t ScreenShareAttributes.tuStyle.getter()
{
  OUTLINED_FUNCTION_5_62();
  v2 = *(v0 + v1);
  if (v2 > 2)
  {
    return 2;
  }

  else
  {
    return qword_1BC4CAB50[v2];
  }
}

void outlined consume of ScreenShareAttributes.Style(id a1)
{
  if (a1 >= 3)
  {
  }
}

void TUScreenShareAttributes.update(with:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 setWindowed_];
  isa = [a1 windowUUID];
  if (isa)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v10, v4);
  }

  [v2 setWindowUUID_];

  [v2 setDeviceFamily_];
  [v2 setDeviceHomeButtonType_];
  [v2 setStyle_];
  v12 = [a1 displayScale];
  OUTLINED_FUNCTION_1_70(v12, sel_setDisplayScale_);

  v13 = [a1 scaleFactor];
  OUTLINED_FUNCTION_1_70(v13, sel_setScaleFactor_);

  v14 = [a1 originalResolution];
  OUTLINED_FUNCTION_1_70(v14, sel_setOriginalResolution_);

  v15 = [a1 displayID];
  OUTLINED_FUNCTION_1_70(v15, sel_setDisplayID_);
}

uint64_t key path getter for SingleDisplaySharingSession.sessionDidCreateNewSession : SingleDisplaySharingSession@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> ()partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
}

uint64_t key path setter for SingleDisplaySharingSession.sessionDidCreateNewSession : SingleDisplaySharingSession(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = a2[1];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v7, v8);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t SingleDisplaySharingSession.sessionDidCreateNewSession.setter()
{
  OUTLINED_FUNCTION_55();
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*v1, v1[1]);
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t key path getter for SingleDisplaySharingSession.sessionDidBegin : SingleDisplaySharingSession@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> ()partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
}

uint64_t key path setter for SingleDisplaySharingSession.sessionDidBegin : SingleDisplaySharingSession(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v7, v8);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t SingleDisplaySharingSession.sessionDidBegin.setter()
{
  OUTLINED_FUNCTION_55();
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t key path getter for SingleDisplaySharingSession.sessionDidEnd : SingleDisplaySharingSession@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
}

uint64_t key path setter for SingleDisplaySharingSession.sessionDidEnd : SingleDisplaySharingSession(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v7, v8);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  return result;
}

uint64_t SingleDisplaySharingSession.sessionDidEnd.setter()
{
  OUTLINED_FUNCTION_55();
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t key path getter for SingleDisplaySharingSession.sessionDidChangeAttributes : SingleDisplaySharingSession@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> ()partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
}

uint64_t key path setter for SingleDisplaySharingSession.sessionDidChangeAttributes : SingleDisplaySharingSession(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v7, v8);
  *(a2 + 48) = v6;
  *(a2 + 56) = v5;
  return result;
}

uint64_t SingleDisplaySharingSession.sessionDidChangeAttributes.setter()
{
  OUTLINED_FUNCTION_55();
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t key path getter for SingleDisplaySharingSession.sessionDidChangeContent : SingleDisplaySharingSession@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
}

uint64_t key path setter for SingleDisplaySharingSession.sessionDidChangeContent : SingleDisplaySharingSession(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v7, v8);
  *(a2 + 64) = v6;
  *(a2 + 72) = v5;
  return result;
}

uint64_t SingleDisplaySharingSession.sessionDidChangeContent.setter()
{
  OUTLINED_FUNCTION_55();
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v1 + 64), *(v1 + 72));
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t key path getter for SingleDisplaySharingSession.sessionPickerCanceled : SingleDisplaySharingSession@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
}

uint64_t key path setter for SingleDisplaySharingSession.sessionPickerCanceled : SingleDisplaySharingSession(uint64_t *a1, uint64_t a2)
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

  v7 = *(a2 + 80);
  v8 = *(a2 + 88);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v7, v8);
  *(a2 + 80) = v6;
  *(a2 + 88) = v5;
  return result;
}

uint64_t SingleDisplaySharingSession.sessionPickerCanceled.setter()
{
  OUTLINED_FUNCTION_55();
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v1 + 80), *(v1 + 88));
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t SingleDisplaySharingSession.begin(with:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21ScreenShareAttributesVSgMd, &_s15ConversationKit21ScreenShareAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v48 - v3;
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ScreenShareAttributes(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v18 = [objc_opt_self() mainScreen];
  [v18 scale];
  v20 = v19;

  UUID.init()();
  v21 = objc_opt_self();
  v22 = [v21 defaultCornerRadius];
  v23 = v22;
  if (v22)
  {
    [v22 doubleValue];
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = [v21 defaultScaleFactor];
  [v26 floatValue];
  v28 = v27;

  (*(v7 + 32))(v17, v10, v5);
  *&v17[v11[5]] = 1;
  *&v17[v11[6]] = v20;
  v29 = &v17[v11[7]];
  *v29 = v25;
  v29[8] = v23 == 0;
  *&v17[v11[8]] = v28;
  v30 = &v17[v11[9]];
  *v30 = 0u;
  *(v30 + 1) = 0u;
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_7(&one-time initialization token for screenSharing);
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, &static Log.screenSharing);
  outlined init with copy of ScreenShareAttributes(v17, v14);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = v48;
    *v34 = 136315138;
    outlined init with copy of ScreenShareAttributes(v14, v4);
    OUTLINED_FUNCTION_2_84();
    specialized >> prefix<A>(_:)();
    v35 = v1;
    v37 = v36;
    v39 = v38;
    outlined destroy of ScreenShareAttributes?(v4);
    outlined destroy of ScreenShareAttributes(v14);
    v40 = v37;
    v1 = v35;
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, &v49);

    *(v34 + 4) = v41;
    _os_log_impl(&dword_1BBC58000, v32, v33, "Began single display sharing session with attributes %s", v34, 0xCu);
    v42 = v48;
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x1BFB23DF0](v42, -1, -1);
    MEMORY[0x1BFB23DF0](v34, -1, -1);
  }

  else
  {

    outlined destroy of ScreenShareAttributes(v14);
  }

  v43 = *v1;
  if (*v1)
  {
    outlined init with copy of ScreenShareAttributes(v17, v4);
    v44 = OUTLINED_FUNCTION_2_84();
    v43(v44);
    outlined destroy of ScreenShareAttributes?(v4);
  }

  v45 = v1[2];
  if (v45)
  {
    outlined init with copy of ScreenShareAttributes(v17, v4);
    v46 = OUTLINED_FUNCTION_2_84();
    v45(v46);
    outlined destroy of ScreenShareAttributes?(v4);
  }

  return outlined destroy of ScreenShareAttributes(v17);
}

Swift::Void __swiftcall SingleDisplaySharingSession.end()()
{
  v1 = v0;
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_7(&one-time initialization token for screenSharing);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Log.screenSharing);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Ending single display sharing session", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v6 = *(v1 + 32);
  if (v6)
  {
    v6();
  }
}

double SingleDisplaySharingSession.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 SingleDisplaySharingSession.init(sessionDidCreateNewSession:sessionDidBegin:sessionDidEnd:sessionDidChangeAttributes:sessionDidChangeContent:sessionPickerCanceled:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, __n128 a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5] = a11;
  return result;
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionDidCreateNewSession.getter in conformance SingleDisplaySharingSession()
{
  v1 = *v0;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(*v0, v0[1]);
  return v1;
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionDidBegin.getter in conformance SingleDisplaySharingSession()
{
  v1 = *(v0 + 16);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v1, *(v0 + 24));
  return v1;
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionDidEnd.getter in conformance SingleDisplaySharingSession()
{
  v1 = *(v0 + 32);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v1, *(v0 + 40));
  return v1;
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionDidChangeAttributes.getter in conformance SingleDisplaySharingSession()
{
  v1 = *(v0 + 48);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v1, *(v0 + 56));
  return v1;
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionDidChangeContent.getter in conformance SingleDisplaySharingSession()
{
  v1 = *(v0 + 64);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v1, *(v0 + 72));
  return v1;
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionPickerCanceled.getter in conformance SingleDisplaySharingSession()
{
  v1 = *(v0 + 80);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v1, *(v0 + 88));
  return v1;
}

uint64_t outlined init with copy of ScreenShareAttributes(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenShareAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ScreenShareAttributes(uint64_t a1)
{
  v2 = type metadata accessor for ScreenShareAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of ScreenShareAttributes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21ScreenShareAttributesVSgMd, &_s15ConversationKit21ScreenShareAttributesVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata completion function for ScreenShareAttributes(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGRect(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Double?()
{
  if (!lazy cache variable for type metadata for Double?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Double?);
    }
  }
}

uint64_t getEnumTagSinglePayload for ScreenShareAttributes.Style(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScreenShareAttributes.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t type metadata completion function for ScreenSharingSessionConfiguration(uint64_t a1)
{
  v1 = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for SingleDisplaySharingSession(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for SingleDisplaySharingSession(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t JoinButtonViewModel.__allocating_init(service:letMeInViewModel:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  JoinButtonViewModel.init(service:letMeInViewModel:)(a1, a2);
  return v4;
}

void *JoinButtonViewModel.init(service:letMeInViewModel:)(__int128 *a1, uint64_t a2)
{
  v2[8] = 0;
  v2[9] = 0;
  closure #1 in variable initialization expression of JoinButtonViewModel.flexibleGlass();
  outlined init with take of TapInteractionHandler(a1, (v2 + 3));
  v2[2] = a2;
  return v2;
}

uint64_t JoinButtonViewModel.controlType.getter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) != 0 && (v1 = [objc_opt_self() currentDevice], v2 = objc_msgSend(v1, sel_userInterfaceIdiom), v1, !v2))
  {
    return JoinButtonViewModel.staticIconConfig.getter();
  }

  else
  {
    return JoinButtonViewModel.textConfig.getter();
  }
}

uint64_t JoinButtonViewModel.staticIconConfig.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleVyytGMd, &_s16CommunicationsUI15IconButtonStyleVyytGMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  if (*(v0 + 72))
  {
    v5 = *(v0 + 72);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI16IconButtonConfigCyytGMd, &_s16CommunicationsUI16IconButtonConfigCyytGMR);
    JoinButtonViewModel.buttonStyle.getter(v4);
    v6 = [objc_opt_self() conversationKit];
    v7 = OUTLINED_FUNCTION_1_85();
    v8.super.isa = v6;
    OUTLINED_FUNCTION_17_0(v7, v9, 0x61737265766E6F43, 0xEF74694B6E6F6974, v8);

    swift_allocObject();
    swift_weakInit();
    v5 = IconButtonConfig<A>.init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:enabled:didTap:)();
    *(v1 + 72) = v5;
  }

  return v5;
}

uint64_t JoinButtonViewModel.textConfig.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CallControlTextButtonStyle(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v1 + 64))
  {
    v6 = *(v1 + 64);
  }

  else
  {
    v7 = [objc_opt_self() systemGreenColor];
    v8 = Color.init(uiColor:)();
    v9 = *(v2 + 20);
    v10 = type metadata accessor for ButtonRole();
    __swift_storeEnumTagSinglePayload(v5 + v9, 1, 1, v10);
    *v5 = v8;
    v11 = objc_opt_self();
    v12 = [v11 conversationKit];
    v13.super.isa = v12;
    v14 = OUTLINED_FUNCTION_17_0(1852403530, 0xE400000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974, v13);
    v16 = v15;

    v17 = [v11 conversationKit];
    v18 = OUTLINED_FUNCTION_1_85();
    v19.super.isa = v17;
    v21 = OUTLINED_FUNCTION_17_0(v18, v20, 0x61737265766E6F43, 0xEF74694B6E6F6974, v19);
    v23 = v22;

    v24 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for CallControlsTextButtonConfiguration(0);
    swift_allocObject();
    v6 = CallControlsTextButtonConfiguration.init(buttonStyle:text:accessibilityLabel:accessibilityIdentifier:enabled:didTap:)(v5, v14, v16, v21, v23, 0x747475426E696F6ALL, 0xEA00000000006E6FLL, 1, partial apply for closure #1 in JoinButtonViewModel.textConfig.getter, v24);
    *(v1 + 64) = v6;
  }

  return v6;
}

void *JoinButtonViewModel.handoffInProgress.getter()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  result = (*(v2 + 8))(v1, v2);
  if (result)
  {
    v4 = result;
    v5 = [result localParticipantAssociation];
    if (v5)
    {

      v6 = [v4 state];
      return (v6 == 1);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t JoinButtonViewModel.enabled(for:)(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  switch(BYTE4(a1) >> 5)
  {
    case 1:
      if ((a1 & 0x100000000) == 0)
      {
        goto LABEL_12;
      }

      v3 = JoinButtonViewModel.handoffInProgress.getter() ^ 1;
      break;
    case 2:
      v3 = BYTE4(a1) ^ 1;
      break;
    case 3:
      if (BYTE4(a1) == 96 && a2 == 3)
      {
        v6 = *(v2 + 16);
        swift_beginAccess();
        v3 = *(v6 + 16) ^ 1;
      }

      else
      {
LABEL_12:
        v3 = 0;
      }

      break;
    default:
      return v3 & 1;
  }

  return v3 & 1;
}

Swift::Void __swiftcall JoinButtonViewModel.didTap()()
{
  LetMeInCountdownViewModel.resetCountdown()();
  OUTLINED_FUNCTION_4_67();
  v0 = OUTLINED_FUNCTION_2_14();
  v1(v0);
}

Swift::Void __swiftcall JoinButtonViewModel.onAppearance()()
{
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  v1 = OUTLINED_FUNCTION_2_14();
  if (v2(v1) == 96)
  {
    OUTLINED_FUNCTION_4_67();
    v3 = OUTLINED_FUNCTION_2_14();
    if (v4(v3) == 3)
    {
      OUTLINED_FUNCTION_4_67();
      v5 = OUTLINED_FUNCTION_2_14();
      v6(v5);
    }
  }
}

uint64_t JoinButtonViewModel.buttonStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for IconButtonWidthRestriction();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Font.Leading();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Image.Scale();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6_GlassVSgMd, &_s7SwiftUI6_GlassVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVyyt_GMd, &_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVyyt_GMR);
  v29 = *(v14 - 8);
  v30 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = [objc_opt_self() systemGreenColor];
  v18 = Color.init(uiColor:)();
  *(&v36 + 1) = MEMORY[0x1E69815C0];
  v37 = MEMORY[0x1E6981568];
  *&v35 = v18;
  v19 = OBJC_IVAR____TtC15ConversationKit19JoinButtonViewModel_flexibleGlass;
  v20 = type metadata accessor for _Glass();
  (*(*(v20 - 8) + 16))(v13, v1 + v19, v20);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v20);
  static Font.Weight.bold.getter();
  static Color.white.getter();
  (*(v8 + 104))(v10, *MEMORY[0x1E69816E0], v7);
  static IconButtonStyle.Defaults.phone.iconFont.getter();
  static IconButtonStyle.SystemSymbol<A>.iosCallControl(name:color:background:glass:scale:font:weight:)();

  (*(v8 + 8))(v10, v7);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s7SwiftUI6_GlassVSgMd, &_s7SwiftUI6_GlassVSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v35, &_s7SwiftUI10ShapeStyle_pSgMd, &_s7SwiftUI10ShapeStyle_pSgMR);
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v20);
  static Color.white.getter();
  static Font.subheadline.getter();
  v21 = v27;
  v22 = v28;
  (*(v27 + 104))(v6, *MEMORY[0x1E6980EA8], v28);
  Font.leading(_:)();

  (*(v21 + 8))(v6, v22);
  static IconButtonStyle.Defaults.phone.iconWidth.getter();
  v24 = v31;
  v23 = v32;
  v25 = v33;
  (*(v32 + 104))(v31, *MEMORY[0x1E6995BD0], v33);
  static IconButtonStyle.iosCallControl(symbol:background:glass:labelColor:labelFont:labelPosition:maxWidth:width:widthRestriction:spacing:)();

  (*(v23 + 8))(v24, v25);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s7SwiftUI6_GlassVSgMd, &_s7SwiftUI6_GlassVSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v35, &_s7SwiftUI10ShapeStyle_pSgMd, &_s7SwiftUI10ShapeStyle_pSgMR);
  return (*(v29 + 8))(v16, v30);
}

uint64_t closure #1 in JoinButtonViewModel.textConfig.getter(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    JoinButtonViewModel.didTap()();
  }

  return result;
}

uint64_t closure #1 in variable initialization expression of JoinButtonViewModel.flexibleGlass()
{
  v0 = type metadata accessor for _Glass();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static _Glass.regular.getter();
  v4 = [objc_opt_self() systemGreenColor];
  Color.init(uiColor:)();
  _Glass.tintColor(_:)();

  (*(v1 + 8))(v3, v0);
  static _Glass.Options.supportsFlexInteraction.getter();
  return _Glass.options.setter();
}

uint64_t JoinButtonViewModel.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  v1 = OBJC_IVAR____TtC15ConversationKit19JoinButtonViewModel_flexibleGlass;
  type metadata accessor for _Glass();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t JoinButtonViewModel.__deallocating_deinit()
{
  JoinButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JoinButtonViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for JoinButtonViewModel;
  if (!type metadata singleton initialization cache for JoinButtonViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for JoinButtonViewModel(uint64_t a1)
{
  result = type metadata accessor for _Glass();
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

uint64_t key path getter for CameraViewController.cameraDelegate : CameraViewController@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CameraViewController.cameraDelegate : CameraViewController(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t CameraViewController.cameraDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CameraViewController.cameraDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

void CameraViewController.effectBrowserViewController(_:didSelectAppWith:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v9 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BC4BA940;
  v11 = MEMORY[0x1E69E6158];
  if (a3)
  {
    v21[0] = a2;
    v21[1] = a3;

    v12 = String.init<A>(reflecting:)();
    v14 = v13;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  *(v10 + 56) = v11;
  *(v10 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v15 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Effects browser selected app: %@", 32, 2, &dword_1BBC58000, v9, v15, v10);

  if (a3)
  {
    v16 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v16 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v17 = &v4[OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate];
      OUTLINED_FUNCTION_4_0(&v4[OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate], v21);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 1);
        v19 = swift_getObjectType();
        (*(v18 + 8))(a2, a3, v19, v18);
        swift_unknownObjectRelease();
      }
    }

    v20 = MEMORY[0x1BFB209B0](a2, a3);
  }

  else
  {
    v20 = 0;
  }

  v22.receiver = v4;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, sel_effectBrowserViewController_didSelectAppWithIdentifier_, a1, v20);
}

uint64_t CameraViewController.effectBrowserViewController(_:didSelect:)(uint64_t a1, uint64_t a2)
{
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_effectBrowserViewController_didSelectEffect_, a1, a2);
  v5 = &v2[OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate];
  OUTLINED_FUNCTION_4_0(&v2[OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate], v9);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(a2, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CameraViewController.effectBrowserViewController(_:didDismissPickerFor:)(uint64_t a1, void *a2)
{
  v4 = &v2[OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate];
  OUTLINED_FUNCTION_4_0(&v2[OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate], v9);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v8 = [a2 identifier];
    (*(v6 + 24))(v8, [v2 effectsState], ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

id CameraViewController.__allocating_init(captureMode:devicePosition:flashMode:aspectRatioCrop:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_4_44());
  OUTLINED_FUNCTION_1_86();

  return [v1 v2];
}

id CameraViewController.init(captureMode:devicePosition:flashMode:aspectRatioCrop:)()
{
  OUTLINED_FUNCTION_4_44();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_1_86();
  return objc_msgSendSuper2(v2, v3, v0, ObjectType);
}

id CameraViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int MovingToScreeningStateService.Error.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MovingToScreeningStateService.Error(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MovingToScreeningStateService.Error.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t MovingToScreeningStateService.logger.getter()
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_46();

  return v1(v0);
}

uint64_t type metadata accessor for MovingToScreeningStateService(uint64_t a1)
{
  result = type metadata singleton initialization cache for MovingToScreeningStateService;
  if (!type metadata singleton initialization cache for MovingToScreeningStateService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MovingToScreeningStateService.getStreamToken.getter()
{
  type metadata accessor for MovingToScreeningStateService(0);
  OUTLINED_FUNCTION_11_1();
  return OUTLINED_FUNCTION_46();
}

uint64_t MovingToScreeningStateService.getReceptionistState.getter()
{
  type metadata accessor for MovingToScreeningStateService(0);
  OUTLINED_FUNCTION_11_1();
  return OUTLINED_FUNCTION_46();
}

uint64_t MovingToScreeningStateService.getCall.getter()
{
  type metadata accessor for MovingToScreeningStateService(0);
  OUTLINED_FUNCTION_11_1();
  return OUTLINED_FUNCTION_46();
}

uint64_t MovingToScreeningStateService.onProviderCreation.getter()
{
  type metadata accessor for MovingToScreeningStateService(0);
  OUTLINED_FUNCTION_11_1();
  return OUTLINED_FUNCTION_46();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MovingToScreeningStateService.startScreening(callUUID:)(Swift::String callUUID)
{
  v3 = v1;
  object = callUUID._object;
  countAndFlagsBits = callUUID._countAndFlagsBits;
  v6 = type metadata accessor for MovingToScreeningStateService(0);
  OUTLINED_FUNCTION_1();
  v66 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v67 = v9;
  v69 = &v59[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v68 = &v59[-v11];
  v65 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v63 = v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v64 = &v59[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v1 + v6[6]);
  v70 = countAndFlagsBits;
  v17 = v16(countAndFlagsBits, object, v14);
  v18 = *(v1 + v6[5]);
  type metadata accessor for Defaults();
  swift_allocObject();
  v19 = *Defaults.init()();
  v20 = (*(v19 + 816))();

  v21 = Logger.logObject.getter();
  if ((v20 & 1) == 0 && (v18 & 1) == 0 && !v17)
  {
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *(v23 + 4) = OUTLINED_FUNCTION_7_55(4.8751e-34);
      OUTLINED_FUNCTION_3_23(&dword_1BBC58000, v24, v25, "Recieved 0 stream token for call: %{public}s");
      OUTLINED_FUNCTION_28_2();
      MEMORY[0x1BFB23DF0](v23, -1, -1);
    }

    lazy protocol witness table accessor for type MovingToScreeningStateService.Error and conformance MovingToScreeningStateService.Error();
    swift_allocError();
    v27 = 0;
    goto LABEL_7;
  }

  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v21, v28);
  v61 = v17;
  v62 = v2;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v60 = v18;
    v31 = object;
    v32 = v17;
    v33 = v30;
    v71 = swift_slowAlloc();
    *v33 = 136446466;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v31, &v71);
    *(v33 + 12) = 2050;
    *(v33 + 14) = v32;
    object = v31;
    v18 = v60;
    _os_log_impl(&dword_1BBC58000, v21, v28, "Connecting call %{public}s to captionsClient with token %{public}ld", v33, 0x16u);
    OUTLINED_FUNCTION_28_2();
    MEMORY[0x1BFB23DF0](v33, -1, -1);
  }

  swift_allocObject();
  v34 = *Defaults.init()();
  v35 = (*(v34 + 816))();

  if ((v35 & 1) == 0)
  {
    if (v18)
    {
      v38 = (*(v3 + v6[8]))(v70, object);
      if (v38)
      {
        v39 = v38;
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v36 = ReceiptionistCaptionsProviderBuilder.build(with:)(v39);
        v65 = v40;

        goto LABEL_20;
      }

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *(v56 + 4) = OUTLINED_FUNCTION_7_55(4.8751e-34);
        OUTLINED_FUNCTION_3_23(&dword_1BBC58000, v57, v58, "Not able to find call for: %{public}s");
        OUTLINED_FUNCTION_28_2();
        MEMORY[0x1BFB23DF0](v56, -1, -1);
      }
    }

    else
    {
      (*(v63 + 16))(v64, v3, v65);
      v41 = objc_allocWithZone(type metadata accessor for CaptionsClientParticipantCaptionsProvider(0));
      CaptionsClientParticipantCaptionsProvider.init(logger:token:usage:)();
      if (v42)
      {
        v36 = v42;
        v37 = &protocol witness table for CaptionsClientParticipantCaptionsProvider;
        goto LABEL_19;
      }
    }

    lazy protocol witness table accessor for type MovingToScreeningStateService.Error and conformance MovingToScreeningStateService.Error();
    swift_allocError();
    v27 = 1;
LABEL_7:
    *v26 = v27;
    swift_willThrow();
    return;
  }

  type metadata accessor for MockCaptionsProvider();
  swift_allocObject();
  v36 = MockCaptionsProvider.init()();
  v37 = &protocol witness table for MockCaptionsProvider;
LABEL_19:
  v65 = v37;
LABEL_20:
  swift_unknownObjectRetain();
  v43 = v68;
  static TaskPriority.userInitiated.getter();
  v44 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v44);
  v45 = v69;
  outlined init with copy of MovingToScreeningStateService(v3, v69);
  type metadata accessor for MainActor();

  v46 = static MainActor.shared.getter();
  v47 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v48 = (v67 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v50 = MEMORY[0x1E69E85E0];
  *(v49 + 16) = v46;
  *(v49 + 24) = v50;
  outlined init with take of MovingToScreeningStateService(v45, v49 + v47);
  v51 = (v49 + v48);
  v52 = v65;
  *v51 = v36;
  v51[1] = v52;
  v53 = (v49 + ((v48 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v53 = v70;
  v53[1] = object;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  swift_unknownObjectRelease();
}

uint64_t closure #2 in MovingToScreeningStateService.startScreening(callUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for MainActor();
  v8[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[8] = v10;
  v8[9] = v9;

  return MEMORY[0x1EEE6DFA0](closure #2 in MovingToScreeningStateService.startScreening(callUUID:), v10, v9);
}

uint64_t closure #2 in MovingToScreeningStateService.startScreening(callUUID:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = v0[2];
  v2 = (v1 + *(type metadata accessor for MovingToScreeningStateService(0) + 36));
  v9 = (*v2 + **v2);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = closure #2 in MovingToScreeningStateService.startScreening(callUUID:);
  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];

  return v9(v7, v6, v4, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](closure #2 in MovingToScreeningStateService.startScreening(callUUID:), v3, v2);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = *(v0 + 8);

  return v1();
}

int *MovingToScreeningStateService.init(logger:receptionistEnabled:getStreamToken:getReceptionistState:getCall:onProviderCreation:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v19 + 32))(a9, a1);
  result = type metadata accessor for MovingToScreeningStateService(0);
  *(a9 + result[5]) = a2;
  v21 = (a9 + result[6]);
  *v21 = a3;
  v21[1] = a4;
  v22 = (a9 + result[7]);
  *v22 = a5;
  v22[1] = a6;
  v23 = (a9 + result[8]);
  *v23 = a7;
  v23[1] = a8;
  v24 = (a9 + result[9]);
  *v24 = a10;
  v24[1] = a11;
  return result;
}

unint64_t lazy protocol witness table accessor for type MovingToScreeningStateService.Error and conformance MovingToScreeningStateService.Error()
{
  result = lazy protocol witness table cache variable for type MovingToScreeningStateService.Error and conformance MovingToScreeningStateService.Error;
  if (!lazy protocol witness table cache variable for type MovingToScreeningStateService.Error and conformance MovingToScreeningStateService.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MovingToScreeningStateService.Error and conformance MovingToScreeningStateService.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MovingToScreeningStateService.Error and conformance MovingToScreeningStateService.Error;
  if (!lazy protocol witness table cache variable for type MovingToScreeningStateService.Error and conformance MovingToScreeningStateService.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MovingToScreeningStateService.Error and conformance MovingToScreeningStateService.Error);
  }

  return result;
}

uint64_t outlined init with copy of MovingToScreeningStateService(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MovingToScreeningStateService(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of MovingToScreeningStateService(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MovingToScreeningStateService(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in MovingToScreeningStateService.startScreening(callUUID:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MovingToScreeningStateService(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = partial apply for closure #2 in RecentsListViewController.presentBlockAllAction(of:);

  return closure #2 in MovingToScreeningStateService.startScreening(callUUID:)(a1, v9, v10, v1 + v6, v12, v13, v14, v15);
}

unint64_t type metadata completion function for MovingToScreeningStateService(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MovingToScreeningStateService.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t key path getter for InsulatingView.content : <A>InsulatingView<A>@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

id InsulatingView.content.getter(uint64_t a1)
{
  v2 = direct field offset for InsulatingView.content;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);

  return v3;
}

void InsulatingView.content.setter(uint64_t a1)
{
  v3 = direct field offset for InsulatingView.content;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for InsulatingView.forwardHits : <A>InsulatingView<A>@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result & 1;
  return result;
}

uint64_t InsulatingView.forwardHits.getter(uint64_t a1)
{
  v2 = direct field offset for InsulatingView.forwardHits;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t InsulatingView.forwardHits.setter(uint64_t a1)
{
  v2 = a1;
  v3 = direct field offset for InsulatingView.forwardHits;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

id InsulatingView.__allocating_init(frame:content:forwardHits:)(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_2();
  v4 = objc_allocWithZone(v2);
  OUTLINED_FUNCTION_18_1();
  return InsulatingView.init(frame:content:forwardHits:)(a1);
}

id InsulatingView.init(frame:content:forwardHits:)(void *a1)
{
  OUTLINED_FUNCTION_20_2();
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  *(v1 + direct field offset for InsulatingView.content) = v5;
  *(v1 + direct field offset for InsulatingView.forwardHits) = v6;
  v17 = type metadata accessor for InsulatingView(0, *((v4 & v3) + 0x50), v7, v8);
  v9 = a1;
  v10 = OUTLINED_FUNCTION_18_1();
  v13 = objc_msgSendSuper2(v11, v12, v10, v1, v17);
  v14 = v9;
  v15 = v13;
  [v15 bounds];
  [v14 setBounds_];
  [v15 center];
  [v14 setCenter_];
  [v14 setAutoresizingMask_];
  [v14 _setHostsLayoutEngine_];
  [v15 addSubview_];
  [v14 setNeedsLayout];
  [v14 layoutIfNeeded];

  [v15 setAutoresizingMask_];
  return v15;
}

id InsulatingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void __swiftcall InsulatingView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v7 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v3) + 0x80))(with.value.super.isa, *&with.is_nil))
  {
    v8 = *((*v7 & *v3) + 0x68);
    v9 = v8();
    [v3 convertPoint:v9 toCoordinateSpace:{x, y}];
    v11 = v10;
    v13 = v12;

    v14 = v8();
    [v14 hitTest:isa withEvent:{v11, v13}];
  }
}

id @objc InsulatingView.hitTest(_:with:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v16.value.super.isa = a5;
  InsulatingView.hitTest(_:with:)(v11, __PAIR128__(*&a3, *&a2), v16);
  v13 = v12;

  return v13;
}

id InsulatingView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id InsulatingView.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for InsulatingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t ScreenSharingBroadcasterToolbar.toolbarPlacement.getter(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    v10 = static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v10, &dword_1BBC58000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(a1, 0);
    (*(v6 + 8))(v9, v4);
    return v13[15];
  }

  return a1;
}

uint64_t ScreenSharingBroadcasterToolbar.body.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  a2 &= 1u;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  v11 = a4 & 1;
  *(v10 + 40) = a4 & 1;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = v11;
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  *(a5 + 16) = partial apply for closure #1 in ScreenSharingBroadcasterToolbar.body.getter;
  *(a5 + 24) = v10;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = partial apply for closure #2 in ScreenSharingBroadcasterToolbar.body.getter;
  *(a5 + 72) = v12;
  outlined copy of Environment<Edge>.Content(a1, a2);

  outlined copy of Environment<Edge>.Content(a1, a2);
}

uint64_t closure #1 in ScreenSharingBroadcasterToolbar.body.getter@<X0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v11 = static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v11, &dword_1BBC58000, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v10 = (*(v7 + 8))(v9, v6);
    a1 = v18[1];
  }

  v13 = (*(*a1 + 248))(v10);
  v15 = v14;

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMd, &_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMR) + 40);
  *(a3 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  result = swift_storeEnumTagMultiPayload();
  *a3 = v13;
  a3[1] = v15;
  return result;
}

uint64_t closure #2 in ScreenSharingBroadcasterToolbar.body.getter(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  a2 &= 1u;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4 & 1;
  outlined copy of Environment<Edge>.Content(a1, a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR, MEMORY[0x1E697D658]);
  Button.init(action:label:)();
  ScreenSharingBroadcasterToolbar.toolbarPlacement.getter(a1, a2);
  v13 = Axis.rawValue.getter();
  v15[3] = v13 != Axis.rawValue.getter();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Label<Text, Image>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMR, MEMORY[0x1E697D680]);
  lazy protocol witness table accessor for type ScreenSharingToolbarButtonStyle and conformance ScreenSharingToolbarButtonStyle();
  View.buttonStyle<A>(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t outlined copy of Environment<Edge>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t closure #1 in closure #2 in ScreenSharingBroadcasterToolbar.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a4 & 1) == 0)
  {
    v11 = static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v11, &dword_1BBC58000, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v10 = (*(v7 + 8))(v9, v6);
    a3 = v14[1];
  }

  (*(*a3 + 232))(v10);
}

uint64_t closure #1 in closure #2 in closure #2 in ScreenSharingBroadcasterToolbar.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() conversationKit];
  v10._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._object = 0x80000001BC500F50;
  v4._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v10);

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t closure #2 in closure #2 in closure #2 in ScreenSharingBroadcasterToolbar.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t ScreenSharingBroadcasterToolbar.init()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for ScreenSharingBroadcasterViewModel(0);
  OUTLINED_FUNCTION_0_102();
  lazy protocol witness table accessor for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel(v3, v4, &protocol conformance descriptor for ScreenSharingBroadcasterViewModel);
  Environment.init<A>(_:)();
  return KeyPath;
}

uint64_t ScreenSharingBroadcasterToolbar.init(toolbarPlacement:)(uint64_t a1)
{
  type metadata accessor for ScreenSharingBroadcasterViewModel(0);
  OUTLINED_FUNCTION_0_102();
  lazy protocol witness table accessor for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel(v2, v3, &protocol conformance descriptor for ScreenSharingBroadcasterViewModel);
  Environment.init<A>(_:)();
  return a1;
}

uint64_t ScreenSharingBroadcasterView.model.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMR);
  State.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for ScreenSharingBroadcasterView.model : ScreenSharingBroadcasterView@<X0>(uint64_t *a1@<X8>)
{
  result = ScreenSharingBroadcasterView.model.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for ScreenSharingBroadcasterView.model : ScreenSharingBroadcasterView(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];

  return ScreenSharingBroadcasterView.model.setter(v4, v2, v3);
}

void (*ScreenSharingBroadcasterView.model.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v6;
  v6[6] = a2;
  v6[7] = a3;
  *v6 = a2;
  v6[1] = a3;

  v6[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMR);
  State.wrappedValue.getter();
  return FindoView.viewModel.modify;
}

uint64_t ScreenSharingBroadcasterView.$model.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMR);
  State.projectedValue.getter();
  return v3;
}

uint64_t ScreenSharingBroadcasterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ScreenSharingContentViewVy7SwiftUI08ModifiedE0VyAA20SystemRootLayerProxyVAA19BezelEffectModifierVGAA17TransitioningTextVyAA07FadeOutS12InTransitionVGAA0cD18BroadcasterToolbarVSgGMd, &_s15ConversationKit24ScreenSharingContentViewVy7SwiftUI08ModifiedE0VyAA20SystemRootLayerProxyVAA19BezelEffectModifierVGAA17TransitioningTextVyAA07FadeOutS12InTransitionVGAA0cD18BroadcasterToolbarVSgGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v47 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit020ScreenSharingContentC0VyAA08ModifiedK0VyAH20SystemRootLayerProxyVAH19BezelEffectModifierVGAH17TransitioningTextVyAH07FadeOutV12InTransitionVGAH0iJ18BroadcasterToolbarVSgG_AH0ijzC5ModelCQo_Md, &_s7SwiftUI4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit020ScreenSharingContentC0VyAA08ModifiedK0VyAH20SystemRootLayerProxyVAH19BezelEffectModifierVGAH17TransitioningTextVyAH07FadeOutV12InTransitionVGAH0iJ18BroadcasterToolbarVSgG_AH0ijzC5ModelCQo_MR);
  OUTLINED_FUNCTION_1();
  v53 = v10;
  v54 = v9;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_1();
  v48 = v12;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGMR) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_1();
  v49 = v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGAA010_AnimationS0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGAA010_AnimationS0VySbGGMR) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_1();
  v52 = v16;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGAA010_AnimationS0VySbGGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGAA010_AnimationS0VySbGGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_1();
  v51 = v18;
  v60 = a1;
  v61 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMR);
  OUTLINED_FUNCTION_9_47();
  v47[1] = v19;
  v20 = State.wrappedValue.getter();
  v21 = (*(*v58 + 256))(v20);

  OUTLINED_FUNCTION_24();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  OUTLINED_FUNCTION_24();
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  OUTLINED_FUNCTION_24();
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v25 = v5[17];
  *&v8[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  swift_storeEnumTagMultiPayload();
  v8[v5[18]] = (v21 & 1) == 0;
  v26 = &v8[v5[19]];
  *v26 = partial apply for closure #1 in ScreenSharingBroadcasterView.body.getter;
  v26[1] = v22;
  v27 = &v8[v5[20]];
  *v27 = partial apply for closure #2 in ScreenSharingBroadcasterView.body.getter;
  v27[1] = v23;
  v28 = &v8[v5[21]];
  *v28 = partial apply for closure #3 in ScreenSharingBroadcasterView.body.getter;
  v28[1] = v24;
  v60 = a1;
  v61 = a2;
  swift_retain_n();
  swift_retain_n();
  OUTLINED_FUNCTION_9_47();
  State.wrappedValue.getter();
  type metadata accessor for ScreenSharingBroadcasterViewModel(0);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ScreenSharingContentView<ModifiedContent<SystemRootLayerProxy, BezelEffectModifier>, TransitioningText<FadeOutFadeInTransition>, ScreenSharingBroadcasterToolbar?> and conformance ScreenSharingContentView<A, B, C>, &_s15ConversationKit24ScreenSharingContentViewVy7SwiftUI08ModifiedE0VyAA20SystemRootLayerProxyVAA19BezelEffectModifierVGAA17TransitioningTextVyAA07FadeOutS12InTransitionVGAA0cD18BroadcasterToolbarVSgGMd, &_s15ConversationKit24ScreenSharingContentViewVy7SwiftUI08ModifiedE0VyAA20SystemRootLayerProxyVAA19BezelEffectModifierVGAA17TransitioningTextVyAA07FadeOutS12InTransitionVGAA0cD18BroadcasterToolbarVSgGMR, &protocol conformance descriptor for ScreenSharingContentView<A, B, C>);
  OUTLINED_FUNCTION_0_102();
  lazy protocol witness table accessor for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel(v29, v30, &protocol conformance descriptor for ScreenSharingBroadcasterViewModel);
  v31 = v48;
  View.environment<A>(_:)();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit24ScreenSharingContentViewVy7SwiftUI08ModifiedE0VyAA20SystemRootLayerProxyVAA19BezelEffectModifierVGAA17TransitioningTextVyAA07FadeOutS12InTransitionVGAA0cD18BroadcasterToolbarVSgGMd, &_s15ConversationKit24ScreenSharingContentViewVy7SwiftUI08ModifiedE0VyAA20SystemRootLayerProxyVAA19BezelEffectModifierVGAA17TransitioningTextVyAA07FadeOutS12InTransitionVGAA0cD18BroadcasterToolbarVSgGMR);
  v32 = v49;
  (*(v53 + 32))(v49, v31, v54);
  v33 = (v32 + *(v50 + 44));
  *v33 = closure #4 in ScreenSharingBroadcasterView.body.getter;
  v33[1] = 0;
  v34 = static Animation.default.getter();
  v60 = a1;
  v61 = a2;
  OUTLINED_FUNCTION_9_47();
  v35 = State.wrappedValue.getter();
  LOBYTE(v31) = (*(*v58 + 256))(v35);

  v36 = v32;
  v37 = v52;
  _s10Foundation3URLVSgWObTm_0(v36, v52, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGMR);
  v38 = v37 + *(v55 + 44);
  *v38 = v34;
  *(v38 + 8) = v31 & 1;
  v39 = static SafeAreaRegions.keyboard.getter();
  v40 = static Edge.Set.all.getter();
  v41 = v51;
  _s10Foundation3URLVSgWObTm_0(v37, v51, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGAA010_AnimationS0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGAA010_AnimationS0VySbGGMR);
  v42 = v41 + *(v56 + 36);
  *v42 = v39;
  *(v42 + 8) = v40;
  v58 = a1;
  v59 = a2;
  State.projectedValue.getter();
  v43 = v60;
  v44 = v61;
  v45 = v62;
  swift_getKeyPath();
  v60 = v43;
  v61 = v44;
  v62 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMd, &_s7SwiftUI7BindingVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMR);
  OUTLINED_FUNCTION_9_47();
  Binding.subscript.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit27RemoteControlOnboardingViewVSgSgMd, &_s15ConversationKit27RemoteControlOnboardingViewVSgSgMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier>, _AnimationModifier<Bool>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type RemoteControlOnboardingView?? and conformance <A> A?();
  View.sheet<A>(isPresented:onDismiss:content:)();

  return sub_1BBCE9124(v41);
}

double closure #1 in ScreenSharingBroadcasterView.body.getter@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMR);
  v2 = State.wrappedValue.getter();
  v3 = (*(*v7 + 264))(v2);

  if (one-time initialization token for forCurrentDisplay != -1)
  {
    swift_once();
  }

  v4 = xmmword_1EBCDAF60;
  result = *(&xmmword_1EBCDAF60 + 1);
  *a1 = v3;
  v6 = *algn_1EBCDAF50;
  *(a1 + 8) = static BezelMetrics.forCurrentDisplay;
  *(a1 + 24) = v6;
  *(a1 + 40) = v4;
  *(a1 + 48) = result;
  return result;
}

uint64_t closure #2 in ScreenSharingBroadcasterView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMR);
  v2 = State.wrappedValue.getter();
  v3 = (*(*v8 + 248))(v2);
  v5 = v4;

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMd, &_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMR) + 40);
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  result = swift_storeEnumTagMultiPayload();
  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t closure #3 in ScreenSharingBroadcasterView.body.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMR);
  v2 = State.wrappedValue.getter();
  v3 = (*(*v9 + 256))(v2);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    type metadata accessor for ScreenSharingBroadcasterViewModel(0);
    lazy protocol witness table accessor for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel(&lazy protocol witness table cache variable for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel, type metadata accessor for ScreenSharingBroadcasterViewModel, &protocol conformance descriptor for ScreenSharingBroadcasterViewModel);
    result = Environment.init<A>(_:)();
    v6 = 0;
    v8 = v7 & 1;
  }

  else
  {
    KeyPath = 0;
    result = 0;
    v8 = 0;
    v6 = 255;
  }

  *a1 = KeyPath;
  *(a1 + 8) = v6;
  *(a1 + 16) = result;
  *(a1 + 24) = v8;
  return result;
}

uint64_t objectdestroy_5Tm_1()
{

  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

uint64_t key path getter for ScreenSharingBroadcasterViewModel.isPresentingOnboardingView : ScreenSharingBroadcasterViewModel()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 192))();
  *v0 = result & 1;
  return result;
}

uint64_t closure #5 in ScreenSharingBroadcasterView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v39 = type metadata accessor for RemoteControlOnboardingView(0);
  MEMORY[0x1EEE9AC00](v39);
  v37 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v36 - v4;
  v6 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit27RemoteControlOnboardingViewVSgMd, &_s15ConversationKit27RemoteControlOnboardingViewVSgMR);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v36 - v10;
  v11 = type metadata accessor for Participant();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_opt_self();
  v15 = [v14 sharedInstance];
  v16 = [v15 frontmostAudioOrVideoCall];

  if (v16)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*((*MEMORY[0x1E69E7D40] & *static ScreenSharingInteractionController.shared) + 0x178))(&v42);
    v17 = v42;
    switch(v42 >> 61)
    {
      case 1uLL:
      case 2uLL:
      case 3uLL:
      case 4uLL:

        outlined consume of RemoteControlState(v17);
        goto LABEL_6;
      case 5uLL:

        goto LABEL_6;
      default:
        v36 = a1;
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVSbtMd, &_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVSbtMR);
        v20 = swift_projectBox();
        (*(v40 + 16))(v13, v20 + *(v19 + 48), v41);
        outlined consume of RemoteControlState(v17);
        v21 = v16;
        v22 = [v14 &selRef_isOnScreen];
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v23 = static PlaceholderCallCenter.shared;
        objc_allocWithZone(type metadata accessor for CallCenter());
        CallCenter.init(callCenter:placeholderCallCenter:shouldRegisterForMediaControllerChanges:shouldRegisterForReactionsControllerChanges:)(v22, v23, 0, 0);
        v24 = _s15ConversationKit0A15ControlsManagerC10activeCall10callCenterAcA0F0_p_AA0fH8Provider_ptcfCTf4nen_nAA0fH0C_Tg5Tf4enn_nSo6TUCallC_Tt1g5();
        v25 = (*((*MEMORY[0x1E69E7D40] & *v24) + 0x9D8))();
        MEMORY[0x1EEE9AC00](v25);
        *(&v36 - 2) = v13;
        specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in closure #5 in ScreenSharingBroadcasterView.body.getter, (&v36 - 4), v26);
        specialized Collection.first.getter(v27, v5);

        if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          v28 = 1;
          v29 = v36;
          v31 = v38;
          v30 = v39;
        }

        else
        {
          _s15ConversationKit11ParticipantVWObTm_2(v5, v8, type metadata accessor for Participant);
          v32 = v37;
          _s15ConversationKit11ParticipantVWObTm_2(v8, v37, type metadata accessor for Participant);
          KeyPath = swift_getKeyPath();
          v30 = v39;
          *(v32 + *(v39 + 24)) = KeyPath;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
          swift_storeEnumTagMultiPayload();
          v34 = *(v30 + 20);
          *(v32 + v34) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
          swift_storeEnumTagMultiPayload();
          v35 = v32;
          v31 = v38;
          _s15ConversationKit11ParticipantVWObTm_2(v35, v38, type metadata accessor for RemoteControlOnboardingView);
          v28 = 0;
          v29 = v36;
        }

        __swift_storeEnumTagSinglePayload(v31, v28, 1, v30);
        outlined init with take of RemoteControlOnboardingView?(v31, v29);
        __swift_storeEnumTagSinglePayload(v29, 0, 1, v9);
        result = (*(v40 + 8))(v13, v41);
        break;
    }
  }

  else
  {
LABEL_6:

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
  }

  return result;
}

uint64_t closure #1 in closure #5 in ScreenSharingBroadcasterView.body.getter(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for Participant(0) + 28));
  if (v1)
  {
    v2 = outlined bridged method (ob) of @objc TUHandle.normalizedValue.getter(v1);
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v5 = Participant.handle.getter();
  if (v4)
  {
    if (v2 == v5 && v4 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t ScreenSharingBroadcasterView.init(model:)(uint64_t a1)
{
  type metadata accessor for ScreenSharingBroadcasterViewModel(0);
  State.init(wrappedValue:)();
  return v2;
}

void *ScreenSharingBroadcasterViewController.bannerPresentationManager.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit38ScreenSharingBroadcasterViewController_bannerPresentationManager);
  v2 = v1;
  return v1;
}

id ScreenSharingBroadcasterViewController.init(bannerPresentationManager:)(void *a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC15ConversationKit38ScreenSharingBroadcasterViewController_bannerPresentationManager] = a1;
  v4 = one-time initialization token for shared;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = static ScreenSharingInteractionController.shared;
  type metadata accessor for ScreenSharingBroadcasterViewModel(0);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC15ConversationKit38ScreenSharingBroadcasterViewController_model] = ScreenSharingBroadcasterViewModel.init(interactionController:bannerPresentationManager:)(v6, a1);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for ScreenSharingBroadcasterViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);

  return v7;
}

id ScreenSharingBroadcasterViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall ScreenSharingBroadcasterViewController.loadView()()
{
  v1 = v0;
  v47.receiver = v0;
  v47.super_class = type metadata accessor for ScreenSharingBroadcasterViewController();
  objc_msgSendSuper2(&v47, sel_loadView);
  [v0 setOverrideUserInterfaceStyle_];
  v2 = OUTLINED_FUNCTION_4_1();
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 clearColor];
  [v3 setBackgroundColor_];

  type metadata accessor for ScreenSharingBroadcasterViewModel(0);

  State.init(wrappedValue:)();
  lazy protocol witness table accessor for type ScreenSharingBroadcasterView and conformance ScreenSharingBroadcasterView();
  v6 = View.inLockScreenHostingController()();

  v7 = v6;
  v8 = [v7 view];
  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  v10 = OUTLINED_FUNCTION_4_1();
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  v12 = [v4 clearColor];
  [v11 setBackgroundColor_];

  v13 = OUTLINED_FUNCTION_5_63();
  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v13;
  v15 = OUTLINED_FUNCTION_4_1();
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v15;
  [v14 addSubview_];

  [v1 addChildViewController_];
  [v7 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BC4BA7F0;
  v18 = OUTLINED_FUNCTION_4_1();
  if (!v18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = OUTLINED_FUNCTION_5_63();
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = OUTLINED_FUNCTION_2_85();
  *(v17 + 32) = v24;
  v25 = OUTLINED_FUNCTION_4_1();
  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = v25;
  v27 = [v25 trailingAnchor];

  v28 = OUTLINED_FUNCTION_5_63();
  if (!v28)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v29 = v28;
  v30 = [v28 trailingAnchor];

  v31 = OUTLINED_FUNCTION_2_85();
  *(v17 + 40) = v31;
  v32 = OUTLINED_FUNCTION_4_1();
  if (!v32)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v33 = v32;
  v34 = [v32 topAnchor];

  v35 = OUTLINED_FUNCTION_5_63();
  if (!v35)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v36 = v35;
  v37 = [v35 topAnchor];

  v38 = OUTLINED_FUNCTION_2_85();
  *(v17 + 48) = v38;
  v39 = OUTLINED_FUNCTION_4_1();

  if (!v39)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v40 = [v39 bottomAnchor];

  v41 = OUTLINED_FUNCTION_5_63();
  if (v41)
  {
    v42 = v41;
    v43 = objc_opt_self();
    v44 = [v42 bottomAnchor];

    v45 = OUTLINED_FUNCTION_2_85();
    *(v17 + 56) = v45;
    type metadata accessor for NSLayoutConstraint();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v43 activateConstraints_];

    return;
  }

LABEL_27:
  __break(1u);
}

id ScreenSharingBroadcasterViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

uint64_t ScreenSharingBroadcasterViewController.__ivar_destroyer()
{
}

id ScreenSharingBroadcasterViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenSharingBroadcasterViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier>, _AnimationModifier<Bool>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier>, _AnimationModifier<Bool>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier>, _AnimationModifier<Bool>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGAA010_AnimationS0VySbGGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGAA010_AnimationS0VySbGGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier>, _AnimationModifier<Bool>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGAA010_AnimationS0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGAA010_AnimationS0VySbGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd, &_s7SwiftUI18_AnimationModifierVySbGMR, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit24ScreenSharingContentViewVy7SwiftUI08ModifiedE0VyAA20SystemRootLayerProxyVAA19BezelEffectModifierVGAA17TransitioningTextVyAA07FadeOutS12InTransitionVGAA0cD18BroadcasterToolbarVSgGMd, &_s15ConversationKit24ScreenSharingContentViewVy7SwiftUI08ModifiedE0VyAA20SystemRootLayerProxyVAA19BezelEffectModifierVGAA17TransitioningTextVyAA07FadeOutS12InTransitionVGAA0cD18BroadcasterToolbarVSgGMR);
    type metadata accessor for ScreenSharingBroadcasterViewModel(255);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ScreenSharingContentView<ModifiedContent<SystemRootLayerProxy, BezelEffectModifier>, TransitioningText<FadeOutFadeInTransition>, ScreenSharingBroadcasterToolbar?> and conformance ScreenSharingContentView<A, B, C>, &_s15ConversationKit24ScreenSharingContentViewVy7SwiftUI08ModifiedE0VyAA20SystemRootLayerProxyVAA19BezelEffectModifierVGAA17TransitioningTextVyAA07FadeOutS12InTransitionVGAA0cD18BroadcasterToolbarVSgGMd, &_s15ConversationKit24ScreenSharingContentViewVy7SwiftUI08ModifiedE0VyAA20SystemRootLayerProxyVAA19BezelEffectModifierVGAA17TransitioningTextVyAA07FadeOutS12InTransitionVGAA0cD18BroadcasterToolbarVSgGMR, &protocol conformance descriptor for ScreenSharingContentView<A, B, C>);
    lazy protocol witness table accessor for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel(&lazy protocol witness table cache variable for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel, type metadata accessor for ScreenSharingBroadcasterViewModel, &protocol conformance descriptor for ScreenSharingBroadcasterViewModel);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RemoteControlOnboardingView?? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type RemoteControlOnboardingView?? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type RemoteControlOnboardingView?? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit27RemoteControlOnboardingViewVSgSgMd, &_s15ConversationKit27RemoteControlOnboardingViewVSgSgMR);
    lazy protocol witness table accessor for type RemoteControlOnboardingView? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlOnboardingView?? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RemoteControlOnboardingView? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type RemoteControlOnboardingView? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type RemoteControlOnboardingView? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit27RemoteControlOnboardingViewVSgMd, &_s15ConversationKit27RemoteControlOnboardingViewVSgMR);
    lazy protocol witness table accessor for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel(&lazy protocol witness table cache variable for type RemoteControlOnboardingView and conformance RemoteControlOnboardingView, type metadata accessor for RemoteControlOnboardingView, &protocol conformance descriptor for RemoteControlOnboardingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlOnboardingView? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ScreenSharingBroadcasterView and conformance ScreenSharingBroadcasterView()
{
  result = lazy protocol witness table cache variable for type ScreenSharingBroadcasterView and conformance ScreenSharingBroadcasterView;
  if (!lazy protocol witness table cache variable for type ScreenSharingBroadcasterView and conformance ScreenSharingBroadcasterView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingBroadcasterView and conformance ScreenSharingBroadcasterView);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ScreenSharingBroadcasterToolbar(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenSharingBroadcasterToolbar(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t outlined init with take of RemoteControlOnboardingView?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit27RemoteControlOnboardingViewVSgMd, &_s15ConversationKit27RemoteControlOnboardingViewVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ScreenSharingToolbarButtonStyle and conformance ScreenSharingToolbarButtonStyle()
{
  result = lazy protocol witness table cache variable for type ScreenSharingToolbarButtonStyle and conformance ScreenSharingToolbarButtonStyle;
  if (!lazy protocol witness table cache variable for type ScreenSharingToolbarButtonStyle and conformance ScreenSharingToolbarButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingToolbarButtonStyle and conformance ScreenSharingToolbarButtonStyle);
  }

  return result;
}

id @nonobjc UICustomViewMenuElement.__allocating_init(viewProvider:)(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed (@guaranteed UICustomViewMenuElement) -> (@owned UIView);
  v5[3] = &block_descriptor_29;
  v2 = _Block_copy(v5);
  v3 = [swift_getObjCClassFromMetadata() elementWithViewProvider_];
  _Block_release(v2);

  return v3;
}

id thunk for @escaping @callee_guaranteed (@guaranteed UICustomViewMenuElement) -> (@owned UIView)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void ConversationControlsShareMenuButtonProvider.shareScreenCountdownView.didset(void *a1)
{
  v2 = v1;
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = v1[29];
    if (v5)
    {
      v6 = v1[3];
      v5[OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_isCountingDown] = 1;
      v7 = v1[20];
      v8 = v5;
      v9 = ConversationControlsShareMenuButtonProvider.countdownEphemeralAlert.getter();
      (*((*MEMORY[0x1E69E7D40] & *v7) + 0x8E0))(v9);
      [v8 addTarget:v2 action:sel_screenSharingButtonPressed forControlEvents:64];
      v10 = objc_opt_self();
      v11 = swift_allocObject();
      v11[2] = v4;
      v11[3] = v6;
      v11[4] = v8;
      v12 = swift_allocObject();
      *(v12 + 16) = partial apply for closure #1 in ConversationControlsShareMenuButtonProvider.shareScreenCountdownView.didset;
      *(v12 + 24) = v11;
      aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_44_1;
      v13 = _Block_copy(aBlock);
      v14 = v8;
      v15 = v4;

      [v10 performWithoutAnimation_];
      _Block_release(v13);
      LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

      if (v10)
      {
        __break(1u);
        return;
      }

      v16 = *MEMORY[0x1E69DC5C0];
      v17 = *(MEMORY[0x1E69DC5C0] + 8);
      v18 = *(MEMORY[0x1E69DC5C0] + 16);
      v19 = *(MEMORY[0x1E69DC5C0] + 24);
      v20 = v15;
      v22.top = v16;
      v22.leading = v17;
      v22.bottom = v18;
      v22.trailing = v19;
      UIView.addConstraintsToFill(_:insets:)(v20, v22);
    }
  }
}

Class ConversationControlsShareMenuButtonProvider.countdownEphemeralAlert.getter()
{
  OUTLINED_FUNCTION_23_28();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
  v2 = objc_opt_self();
  v3 = [v2 conversationKit];
  v4 = OUTLINED_FUNCTION_9_48();
  v6 = OUTLINED_FUNCTION_48_1(v4, v5, v1, 0xEF74694B6E6F6974);
  v8 = v7;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40);
  v9._countAndFlagsBits = v6;
  v9._object = v8;
  v10.super.isa = NSAttributedString.__allocating_init(string:)(v9).super.isa;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  v12 = (*(v11 + 192))();
  if (v12)
  {
    v13 = 0xD00000000000002ELL;
  }

  else
  {
    v13 = 0xD00000000000002FLL;
  }

  if (v12)
  {
    v14 = "RTED_SUBTITLE_NOTIFICATIONS_OFF";
  }

  else
  {
    v14 = "SCREEN_SHARING_STOP";
  }

  v15 = [v2 conversationKit];
  v16.super.isa = v15;
  v17 = OUTLINED_FUNCTION_17_0(v13, v14 | 0x8000000000000000, v1, 0xEF74694B6E6F6974, v16);
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  NSAttributedString.__allocating_init(string:)(v20);
  return v10.super.isa;
}

id closure #1 in ConversationControlsShareMenuButtonProvider.shareScreenCountdownView.didset(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 setSelected_];

  return [a1 addSubview_];
}

void ConversationControlsShareMenuButtonProvider.shareScreenCountdownView.setter(void *a1)
{
  v3 = *(v1 + 232);
  *(v1 + 232) = a1;
  v2 = a1;
  ConversationControlsShareMenuButtonProvider.shareScreenCountdownView.didset(v3);
}

Swift::Void __swiftcall ConversationControlsShareMenuButtonProvider.buttonChanged()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GMR);
  OUTLINED_FUNCTION_1();
  v49 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GGMR);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGGMR);
  OUTLINED_FUNCTION_1();
  v48 = v14;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  ControlsButtonProvider.buttonChanged()();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v44 = v2;
    v45 = v12;
    v46 = v9;
    v47 = v7;
    type metadata accessor for ConversationControlsButton();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = v20;
      v22 = objc_opt_self();
      v23 = v19;
      v24 = [v22 conversationKit];
      OUTLINED_FUNCTION_5_5();
      v25.super.isa = v24;
      v28 = OUTLINED_FUNCTION_17_0(0xD00000000000001CLL, 0x80000001BC500FD0, v26, v27, v25);
      v30 = v29;

      v31 = (v21 + OBJC_IVAR___CNKConversationControlsButton_localizedName);
      swift_beginAccess();
      *v31 = v28;
      v31[1] = v30;

      ConversationControlsButton.localizedName.didset();
    }

    outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x6E654D6572616873, 0xEF6E6F7474754275, v19);
    v32 = [v19 addTarget:v1 action:sel_screenSharingButtonPressed forControlEvents:64];
    v33 = v1[20];
    v50[0] = (*((*MEMORY[0x1E69E7D40] & *v33) + 0x740))(v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMd, &_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<ShareMenuActionState, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMd, &_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMR, MEMORY[0x1E695BED8]);
    lazy protocol witness table accessor for type ShareMenuActionState and conformance ShareMenuActionState();
    Publisher<>.removeDuplicates()();

    OUTLINED_FUNCTION_20();
    v34 = swift_allocObject();
    OUTLINED_FUNCTION_20_0(v34);
    v35 = MEMORY[0x1E695BD38];
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<ShareMenuActionState, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGGMR, MEMORY[0x1E695BD38]);
    v36 = Publisher<>.sink(receiveValue:)();

    (*(v48 + 8))(v17, v13);
    swift_beginAccess();
    v1[6] = v36;

    (*((*MEMORY[0x1E69E7D40] & *v33) + 0x878))(v37);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<ForegroundApp?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GMR, MEMORY[0x1E695C068]);
    lazy protocol witness table accessor for type ForegroundApp? and conformance <A> A?();
    v38 = v44;
    Publisher<>.removeDuplicates()();
    (*(v49 + 8))(v6, v38);
    OUTLINED_FUNCTION_20();
    v39 = swift_allocObject();
    OUTLINED_FUNCTION_20_0(v39);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<ForegroundApp?>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GGMR, v35);
    v40 = Publisher<>.sink(receiveValue:)();

    v41 = OUTLINED_FUNCTION_206();
    v42(v41);
    v1[23] = v40;
  }
}

void closure #1 in ConversationControlsShareMenuButtonProvider.buttonChanged()(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = a1[16];
  v6 = a1[17];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      [v9 setEnabled_];
      if (v3)
      {
        v11 = 256;
      }

      else
      {
        v11 = 0;
      }

      if (v6)
      {
        v12 = 256;
      }

      else
      {
        v12 = 0;
      }

      ConversationControlsShareMenuButtonProvider.updateShareScreenCountdownView(with:)(v11 | v2, v4, v12 | v5);
      v13 = *(v8 + 160);
      v14 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x860);
      v15 = v13;
      v16 = v14();

      ConversationControlsShareMenuButtonProvider.updateButtonStyle(buttonState:foregroundApp:)(v11 | v2, v4, v12 | v5, v16);
      v17 = v10;
      *&v18.buttonEnabled = v11 | v2;
      [v17 setShowsMenuAsPrimaryAction_];
    }

    else
    {
    }
  }
}

void ConversationControlsShareMenuButtonProvider.updateShareScreenCountdownView(with:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    ConversationControlsShareMenuButtonProvider.shareScreenCountdownView.setter(0);
  }

  else
  {
    v5 = *(v3 + 232);
    if (v5 || (v6 = [objc_allocWithZone(type metadata accessor for CountdownLabelView()) init], ConversationControlsShareMenuButtonProvider.shareScreenCountdownView.setter(v6), (v5 = *(v3 + 232)) != 0))
    {
      v7 = *(v5 + OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_countdownLabel);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumberFormatter, 0x1E696ADA0);
      v10 = v7;
      v8 = static NSNumberFormatter.localizedStringForInt(_:)(a2);
      outlined bridged method (mbnn) of @objc UILabel.text.setter(v8, v9, v10);
    }
  }
}

__n128 ConversationControlsShareMenuButtonProvider.updateButtonStyle(buttonState:foregroundApp:)(__int16 a1, uint64_t a2, __int16 a3, void *a4)
{
  v5 = v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v11 = Strong;
  if (!*(v5 + 232))
  {
    if ((a1 & 0x100) != 0)
    {
      [Strong setSelected_];
    }

    else
    {
      if ((a3 & 0x100) != 0)
      {
        [Strong setSelected_];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
        v20 = *MEMORY[0x1E69DDCF8];
        v30 = 0;
        v39 = 0x616C706572616873;
        v40 = 0xE900000000000079;
        v41 = 3;
        v42 = v20;
        v43 = 0;
        v44 = 4;
        v45 = 0;
        v46 = 0;
        v31 = 0x616C706572616873;
        v32 = 0xE900000000000079;
        v33 = 3;
        v34 = v20;
        v35 = 0;
        v36 = 4;
        v37 = 0;
        v38 = 0;
        v21 = v20;
        outlined init with copy of SymbolImageDescription(&v39, v29);
        outlined destroy of SymbolImageDescription(&v31);
        v22 = static UIImage.symbolImage(for:)(&v39);
        outlined destroy of SymbolImageDescription(&v39);
        ControlsButtonProvider.image.setter(v22, v23);
        goto LABEL_13;
      }

      if (a4)
      {
        v14 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x80);
        v15 = a4;
        if (v14())
        {
          [v11 setSelected_];
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
          v16 = *MEMORY[0x1E69DDCF8];
          v30 = 0;
          v39 = 0x616C706572616873;
          v40 = 0xE900000000000079;
          v41 = 3;
          v42 = v16;
          v43 = 0;
          v44 = 4;
          v45 = 0;
          v46 = 0;
          v31 = 0x616C706572616873;
          v32 = 0xE900000000000079;
          v33 = 3;
          v34 = v16;
          v35 = 0;
          v36 = 4;
          v37 = 0;
          v38 = 0;
          v17 = v16;
          outlined init with copy of SymbolImageDescription(&v39, v29);
          outlined destroy of SymbolImageDescription(&v31);
          v18 = static UIImage.symbolImage(for:)(&v39);
          outlined destroy of SymbolImageDescription(&v39);
          ControlsButtonProvider.image.setter(v18, v19);

LABEL_13:
          *(v5 + 200) = xmmword_1BC4CB170;
          result.n128_u64[0] = 0x4000000000000000;
          *(v5 + 216) = xmmword_1BC4CB180;
          return result;
        }
      }

      [v11 setSelected_];
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    v24 = *MEMORY[0x1E69DDCF8];
    v30 = 0;
    v39 = 0xD000000000000028;
    v40 = 0x80000001BC4F3800;
    v41 = 3;
    v42 = v24;
    v43 = 0;
    v44 = 4;
    v45 = 0;
    v46 = 0;
    v31 = 0xD000000000000028;
    v32 = 0x80000001BC4F3800;
    v33 = 3;
    v34 = v24;
    v35 = 0;
    v36 = 4;
    v37 = 0;
    v38 = 0;
    v25 = v24;
    outlined init with copy of SymbolImageDescription(&v39, v29);
    outlined destroy of SymbolImageDescription(&v31);
    v26 = static UIImage.symbolImage(for:)(&v39);
    outlined destroy of SymbolImageDescription(&v39);
    ControlsButtonProvider.image.setter(v26, v27);

    result = *MEMORY[0x1E69DC5C0];
    v28 = *(MEMORY[0x1E69DC5C0] + 16);
    *(v5 + 200) = *MEMORY[0x1E69DC5C0];
    *(v5 + 216) = v28;
    return result;
  }

  [Strong setSelected_];
  v12 = [v11 imageView];
  if (v12)
  {
    v13 = v12;
    [v12 setAlpha_];
  }

  return result;
}

Swift::Bool __swiftcall ConversationControlsShareMenuButtonProvider.shouldEnableMenu(state:)(ConversationKit::ShareMenuActionState state)
{
  v2 = (*&state.buttonEnabled & 0x100) == 0;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v3 + 296))())
  {
    return 0;
  }

  v4 = *(v1 + 232);
  if (v4)
  {
    if (*(v4 + OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_isCountingDown))
    {
      return 0;
    }
  }

  return v2;
}

uint64_t closure #2 in ConversationControlsShareMenuButtonProvider.buttonChanged()(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + 160);
    v6 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x710);
    v7 = v5;
    LOWORD(v6) = v6();
    v9 = v8;
    v11 = v10;

    ConversationControlsShareMenuButtonProvider.updateButtonStyle(buttonState:foregroundApp:)(v6 & 0x101, v9, v11 & 0x101, v2);
    if (*(v4 + 40) <= 1u)
    {
      v12._object = 0x80000001BC5012A0;
      v12._countAndFlagsBits = 0xD000000000000016;
      ConversationControlsMenuButtonProvider.dismissMenu(context:)(v12);
    }
  }

  return result;
}

Swift::Bool __swiftcall ConversationControlsShareMenuButtonProvider.shouldEnableMenu()()
{
  *&v1.buttonEnabled = (*((*MEMORY[0x1E69E7D40] & **(v0 + 160)) + 0x710))() & 0x101;

  return ConversationControlsShareMenuButtonProvider.shouldEnableMenu(state:)(v1);
}

uint64_t ConversationControlsShareMenuButtonProvider.buttonConfiguration.getter@<X0>(uint64_t x8_0@<X8>)
{
  ConversationControlsMenuButtonProvider.buttonConfiguration.getter(x8_0);
  UIButton.Configuration.contentInsets.getter();
  UIButton.Configuration.contentInsets.getter();
  UIButton.Configuration.contentInsets.getter();
  UIButton.Configuration.contentInsets.getter();
  return UIButton.Configuration.contentInsets.setter();
}

Swift::Void __swiftcall ConversationControlsShareMenuButtonProvider.didLayoutSubviews(button:)(UIButton *button)
{
  ControlsButtonProvider.didLayoutSubviews(button:)(button);
  v3 = *(v1 + 232);
  if (v3)
  {
    v4 = [v3 layer];
    [(UIButton *)button bounds];
    [v4 setCornerRadius_];
  }

  v5 = [(UIButton *)button imageView];
  if (v5)
  {
    v6 = 0.0;
    if (!*(v1 + 232))
    {
      v6 = 1.0;
    }

    v7 = v5;
    [(UIImageView *)v5 setAlpha:v6];
  }
}

Swift::Void __swiftcall ConversationControlsShareMenuButtonProvider.screenSharingButtonPressed()()
{
  swift_weakInit();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  if (((*(v1 + 296))() & 1) != 0 && (!static Platform.current.getter() || static Platform.current.getter() == 1))
  {
    v2 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 160)) + 0x710))();
    v3 = *(v0 + 232);
    if (v3 && (*(v3 + OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_isCountingDown) & 1) != 0)
    {
      ConversationControlsManager.declineIncomingScreenShareRequests()();
LABEL_13:
      specialized closure #1 in ConversationControlsShareMenuButtonProvider.screenSharingButtonPressed()(v7);
      goto LABEL_14;
    }

    if ((v2 & 0x100) != 0)
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    ConversationControlsManager.presentShareCard(source:)(Strong);
  }

  else
  {
    specialized closure #1 in ConversationControlsShareMenuButtonProvider.screenSharingButtonPressed()(v7);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      *&v8.buttonEnabled = (*((*MEMORY[0x1E69E7D40] & **(v0 + 160)) + 0x710))() & 0x101;
      [v5 setShowsMenuAsPrimaryAction_];
    }
  }

LABEL_14:
  swift_weakDestroy();
}

uint64_t specialized closure #1 in ConversationControlsShareMenuButtonProvider.screenSharingButtonPressed()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, &static Logger.conversationControls);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1BBC58000, v4, v5, "Stopping screen sharing", v6, 2u);
      MEMORY[0x1BFB23DF0](v6, -1, -1);
    }

    v7 = *(v2 + 160);

    v8 = v7;
    ConversationControlsManager.stopScreenShare()();

    v9 = *(v2 + 160);
    v10 = MEMORY[0x1E69E7D40];
    v11 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x710);
    v12 = v9;
    if ((v11() & 0x100) != 0)
    {
      v13 = ConversationControlsShareMenuButtonProvider.endedScreenSharingEphemeralAlert.getter();
      v15 = 1;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

    (*((*v10 & *v12) + 0x8E0))(v13, v14, v15);

    ConversationControlsShareMenuButtonProvider.shareScreenCountdownView.setter(0);
    v16 = *(v2 + 160);
    v17 = *((*v10 & *v16) + 0xA48);
    v18 = v16;
    v17();

    v19 = *(v2 + 160);

    v21 = (*((*v10 & *v19) + 0x710))(v20);
    v23 = v22;
    LOWORD(v17) = v24;

    ConversationControlsShareMenuButtonProvider.updateButtonStyle(buttonState:foregroundApp:)(v21 & 0x101, v23, v17 & 0x101, 0);
  }

  return result;
}

Class ConversationControlsShareMenuButtonProvider.endedScreenSharingEphemeralAlert.getter()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
  v2 = objc_opt_self();
  v3 = [v2 conversationKit];
  OUTLINED_FUNCTION_9_48();
  OUTLINED_FUNCTION_23_28();
  v6 = OUTLINED_FUNCTION_48_1(v4, v5, v1, 0xEF74694B6E6F6974);
  v8 = v7;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40);
  v9._countAndFlagsBits = v6;
  v9._object = v8;
  isa = NSAttributedString.__allocating_init(string:)(v9).super.isa;
  v11 = [v2 conversationKit];
  OUTLINED_FUNCTION_48_1(0xD00000000000001BLL, 0x80000001BC500FF0, v1, 0xEF74694B6E6F6974);
  OUTLINED_FUNCTION_7_19();

  v12._countAndFlagsBits = OUTLINED_FUNCTION_62_0();
  NSAttributedString.__allocating_init(string:)(v12);
  return isa;
}

Swift::Void __swiftcall ConversationControlsShareMenuButtonProvider.setAutomaticShareState(_:)(Swift::Bool a1)
{
  v2 = v1;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Logger.conversationControls);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_1BBC58000, v5, v6, "togglePlaybackAuthorization: %{BOOL}d", v7, 8u);
    OUTLINED_FUNCTION_27();
  }

  v8 = *(v2 + 160);
  v9 = ConversationControlsShareMenuButtonProvider.shareMediaEphemeralAlert(authorization:)();
  v10 = MEMORY[0x1E69E7D40];
  v11 = (*((*MEMORY[0x1E69E7D40] & *v8) + 0x8E0))(v9);
  v12 = (*((*v10 & *v8) + 0x860))(v11);
  if (v12)
  {
    v13 = v12;
    (*((*v10 & *v12) + 0x90))(a1);
  }
}

Class ConversationControlsShareMenuButtonProvider.shareMediaEphemeralAlert(authorization:)()
{
  v1 = v0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v2 = *MEMORY[0x1E69DDD40];
  v34 = 0;
  v35[0] = 0x616C706572616873;
  v35[1] = 0xE900000000000079;
  v35[2] = 1;
  v35[3] = v2;
  v36 = 0;
  v37 = 4;
  v38 = 0;
  v39 = 0;
  v40[0] = 0x616C706572616873;
  v40[1] = 0xE900000000000079;
  v40[2] = 1;
  v40[3] = v2;
  v41 = 0;
  v42 = 4;
  v43 = 0;
  v44 = 0;
  v3 = v2;
  outlined init with copy of SymbolImageDescription(v35, v32);
  outlined destroy of SymbolImageDescription(v40);
  v4 = static UIImage.symbolImage(for:)(v35);
  outlined destroy of SymbolImageDescription(v35);
  if (v4)
  {
    v5 = [objc_opt_self() labelColor];
    v6 = [v4 imageWithTintColor_];
  }

  else
  {
    v6 = 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
  v7 = objc_opt_self();
  v8 = [v7 conversationKit];
  v9 = OUTLINED_FUNCTION_48_1(0x414C504552414853, 0xE900000000000059, 0x61737265766E6F43, 0xEF74694B6E6F6974);
  v11 = v10;

  memset(v32, 0, sizeof(v32));
  v33 = 1;
  v12 = static NSAttributedString.localizedString(_:prefixImage:imageBounds:)(v9, v11, v6, v32);

  v14 = MEMORY[0x1E69E7D40];
  v15 = (*((*MEMORY[0x1E69E7D40] & **(v1 + 160)) + 0x860))(v13);
  if (v15)
  {
    v16 = v15;
    v17 = (*((*v14 & *v15) + 0x68))(v15);
    v19 = v18;
  }

  else
  {
    v19 = 0x80000001BC501010;
    v17 = 0xD000000000000010;
  }

  v20 = [v7 conversationKit];
  OUTLINED_FUNCTION_5_5();
  v21.super.isa = v20;
  OUTLINED_FUNCTION_17_0(v22, v23, v24, v25, v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BC4BA940;
  *(v26 + 56) = MEMORY[0x1E69E6158];
  *(v26 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v26 + 32) = v17;
  *(v26 + 40) = v19;
  v27 = String.init(format:_:)();
  v29 = v28;

  v30._countAndFlagsBits = v27;
  v30._object = v29;
  NSAttributedString.__allocating_init(string:)(v30);

  return v12;
}

uint64_t ConversationControlsShareMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  *(v5 + 184) = 0;
  *(v5 + 192) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v8 = *(MEMORY[0x1E69DC5C0] + 16);
  *(v5 + 200) = *MEMORY[0x1E69DC5C0];
  *(v5 + 216) = v8;
  *(v5 + 232) = 0;
  *(v5 + 240) = MEMORY[0x1BFB209B0](0xD000000000000013, 0x80000001BC501030);
  *(v5 + 248) = MEMORY[0x1BFB209B0](0xD00000000000001ALL, 0x80000001BC501050);
  v9 = a4;
  v10 = a1;
  v11 = ConversationControlsMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
  v12 = objc_opt_self();

  v13 = [v12 defaultCenter];
  [v13 addObserver:v11 selector:sel_capturedDidChangeNotification_ name:*MEMORY[0x1E69DE370] object:0];

  return v11;
}

void ConversationControlsShareMenuButtonProvider.capturedDidChangeNotification(_:)(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd, &_s10Foundation12NotificationVSgMR);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - v5;
  v7 = type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, &static Logger.conversationControls);
  v14 = *(v9 + 16);
  v14(v12, a1, v7);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v16))
  {
    v17 = swift_slowAlloc();
    v42 = v2;
    v18 = v17;
    v19 = swift_slowAlloc();
    aBlock = v19;
    *v18 = 136315138;
    v14(v6, v12, v7);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    specialized >> prefix<A>(_:)(v6, v20, v21, v22, v23, v24, v25, v26, v42, aBlock, v44, v45, v46, v47, v48, v49, v50, v51);
    v28 = v27;
    v30 = v29;
    outlined destroy of Notification?(v6);
    v31 = OUTLINED_FUNCTION_206();
    v32(v31);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &aBlock);

    *(v18 + 4) = v33;
    _os_log_impl(&dword_1BBC58000, v15, v16, "capturedDidChangeNotification: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_27();
    v2 = v42;
    OUTLINED_FUNCTION_27();
  }

  else
  {

    v34 = OUTLINED_FUNCTION_206();
    v35(v34);
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = [Strong contextMenuInteraction];

    if (v38)
    {
      v39 = swift_allocObject();
      *(v39 + 16) = partial apply for closure #1 in ConversationControlsShareMenuButtonProvider.capturedDidChangeNotification(_:);
      *(v39 + 24) = v2;
      v47 = partial apply for thunk for @callee_guaranteed (@guaranteed UIMenu) -> (@owned UIMenu);
      v48 = v39;
      aBlock = MEMORY[0x1E69E9820];
      v44 = 1107296256;
      v45 = thunk for @escaping @callee_guaranteed (@guaranteed UIMenu) -> (@owned UIMenu);
      v46 = &block_descriptor_36;
      v40 = _Block_copy(&aBlock);

      [v38 updateVisibleMenuWithBlock_];

      _Block_release(v40);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }
}

id closure #1 in ConversationControlsShareMenuButtonProvider.capturedDidChangeNotification(_:)(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = [a1 children];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized Array.count.getter();
  if (v5)
  {
    v6 = v5;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if ((v6 & 0x8000000000000000) == 0)
    {
      v23 = v2;
      v8 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1BFB22010](v8, v4);
        }

        else
        {
          v9 = *(v4 + 8 * v8 + 32);
        }

        v10 = v9;
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (!v11)
        {
          goto LABEL_17;
        }

        v12 = v11;
        v13 = v10;
        v14 = [v12 identifier];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
        if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
        {
        }

        else
        {
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v20 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        ConversationControlsShareMenuButtonProvider.determineState(for:)(v12);
LABEL_16:

LABEL_17:
        ++v8;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v6 == v8)
        {

          v2 = v23;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
  }

  else
  {

LABEL_20:
    isa = Array._bridgeToObjectiveC()().super.isa;

    v22 = [v2 menuByReplacingChildren_];

    return v22;
  }

  return result;
}

Swift::Void __swiftcall ConversationControlsShareMenuButtonProvider.determineState(for:)(UIAction a1)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  if (((*(v2 + 160))() & 1) == 0)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, &static Logger.conversationControls);
    v9 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v20))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_75(&dword_1BBC58000, v21, v22, "Hardware doesn't support screen sharing");
      OUTLINED_FUNCTION_27();
    }

    [(objc_class *)a1.super.super.isa setAttributes:1];
    v23 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_5_64();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_0_1();
  v4 = (*(v3 + 224))();
  v5 = [objc_opt_self() mainScreen];
  v6 = [v5 isCaptured];

  if (v4 & 1) != 0 && !v6 || (OUTLINED_FUNCTION_0_1(), ((*(v7 + 232))()))
  {
    if (ConversationControlsManager.isShownAboveCoverSheet.getter())
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v8 = type metadata accessor for Logger();
      v9 = __swift_project_value_buffer(v8, &static Logger.conversationControls);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v52 = v13;
        *v12 = 136315138;
        v14 = ConversationControlsManager.isShownAboveCoverSheet.getter();
        v15 = (v14 & 1) == 0;
        if (v14)
        {
          v16 = 1702195828;
        }

        else
        {
          v16 = 0x65736C6166;
        }

        if (v15)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE400000000000000;
        }

        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v9, &v52);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_1BBC58000, v10, v11, "controlsManager.isShownAboveCoverSheet:%s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      [(objc_class *)a1.super.super.isa setAttributes:1];
      v18 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_5_64();
LABEL_24:
      OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_48_1(v24, v25, v26, v27);
      OUTLINED_FUNCTION_7_19();

      OUTLINED_FUNCTION_62_0();
      OUTLINED_FUNCTION_62();

      outlined bridged method (mbnn) of @objc UIAction.discoverabilityTitle.setter(v28, v29, v30);
      return;
    }

    [(objc_class *)a1.super.super.isa setAttributes:[(objc_class *)a1.super.super.isa attributes]& 0xFFFFFFFFFFFFFFFELL];
    OUTLINED_FUNCTION_62();

    [v32 v33];
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, &static Logger.conversationControls);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v37))
    {
      v38 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v38 = 136315394;
      v39 = String.init<A>(reflecting:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v52);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      v42 = String.init<A>(reflecting:)();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v52);

      *(v38 + 14) = v44;
      _os_log_impl(&dword_1BBC58000, v36, v37, "screenSharingAvailable:%s, screenIsCaptured:%s", v38, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    [(objc_class *)a1.super.super.isa setAttributes:1];
    v45 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_5_64();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_48_1(v46, v47, v48, v49);
    OUTLINED_FUNCTION_7_19();

    v50 = OUTLINED_FUNCTION_62_0();
    outlined bridged method (mbnn) of @objc UIAction.discoverabilityTitle.setter(v50, v51, a1.super.super.isa);
    OUTLINED_FUNCTION_62();
  }
}

id thunk for @escaping @callee_guaranteed (@guaranteed UIMenu) -> (@owned UIMenu)(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

Class ConversationControlsShareMenuButtonProvider.menu(for:)()
{
  v1 = v0;
  v2 = *(v0 + 160);
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, &static Logger.conversationControls);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v5))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_75(&dword_1BBC58000, v6, v7, "Displaying Share menu");
    OUTLINED_FUNCTION_27();
  }

  v103 = MEMORY[0x1E69E7CC0];
  v8 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV0B8ControlsO_Tt0g5();
  v9 = objc_opt_self();
  v10 = [v9 labelColor];
  v11 = [v8 imageWithTintColor_];

  v12 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
  v13 = objc_opt_self();
  v14 = [v13 conversationKit];
  v15.super.isa = v14;
  OUTLINED_FUNCTION_17_0(0x794D206572616853, 0xEF6E656572635320, 0x61737265766E6F43, 0xEF74694B6E6F6974, v15);

  v16 = *(v1 + 240);
  OUTLINED_FUNCTION_20();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_20_0(v17);
  v96 = v11;
  v18 = v16;
  preferredElementSize = UIMenuElementSizeSmall;
  children._rawValue = 0;
  v91 = v17;
  OUTLINED_FUNCTION_3_0();
  v19 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  ConversationControlsShareMenuButtonProvider.determineState(for:)(v19);
  v20 = v19;
  MEMORY[0x1BFB20CC0](v20);
  OUTLINED_FUNCTION_10_41();
  if (v21)
  {
    OUTLINED_FUNCTION_1_27();
  }

  v22 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v23 = v103;
  v24 = MEMORY[0x1E69E7D40];
  v25 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x988))(v22);
  if (v25)
  {
    v26 = v25;
    if ([v25 state] == 1)
    {
      TUConversationActivitySession.generateType.getter(v104);
      if (LOBYTE(v104[0]) == 6)
      {

        goto LABEL_22;
      }

      v95 = v20;
      v64 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      v65 = *MEMORY[0x1E69DDCF8];
      v66 = [v9 labelColor];
      v97[64] = 0;
      v104[0] = 0x616C706572616873;
      v104[1] = 0xEF6873616C732E79;
      v104[2] = 3;
      v104[3] = v65;
      v105 = 0;
      v106 = 4;
      v107 = 0;
      v108 = v66;
      v98[0] = 0x616C706572616873;
      v98[1] = 0xEF6873616C732E79;
      v98[2] = 3;
      v98[3] = v65;
      v99 = 0;
      v100 = 4;
      v101 = 0;
      v102 = v66;
      outlined init with copy of SymbolImageDescription(v104, v97);
      outlined destroy of SymbolImageDescription(v98);
      v67 = static UIImage.symbolImage(for:)(v104);
      outlined destroy of SymbolImageDescription(v104);
      v68 = [v13 conversationKit];
      OUTLINED_FUNCTION_5_64();
      OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_48_1(v69, v70, v71, v72);

      v94 = v67;
      TUConversationActivitySession.concatenatedDescription.getter();
      v74 = v73;
      OUTLINED_FUNCTION_20();
      v75 = swift_allocObject();
      OUTLINED_FUNCTION_20_0(v75);
      OUTLINED_FUNCTION_37_0();
      v76 = swift_allocObject();
      v76[2] = v75;
      v76[3] = v2;
      v76[4] = v26;
      v77 = v2;
      v78 = v26;
      children._rawValue = 0;
      preferredElementSize = v74;
      OUTLINED_FUNCTION_3_0();
      v79 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      MEMORY[0x1BFB20CC0](v79);
      OUTLINED_FUNCTION_10_41();
      if (v21)
      {
        OUTLINED_FUNCTION_1_27();
      }

      OUTLINED_FUNCTION_206();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v23 = v103;

      goto LABEL_21;
    }
  }

  OUTLINED_FUNCTION_11_45();
  v28 = (*(v27 + 2144))();
  if (!v28)
  {
    goto LABEL_22;
  }

  v29 = v28;
  if (((*((*v24 & *v28) + 0x80))() & 1) == 0)
  {

    goto LABEL_22;
  }

  v95 = v20;
  OUTLINED_FUNCTION_11_45();
  v31 = (*(v30 + 104))();
  v92 = v32;
  v93 = v31;
  OUTLINED_FUNCTION_11_45();
  v34 = (*(v33 + 120))();
  v35 = [v13 conversationKit];
  OUTLINED_FUNCTION_5_64();
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_48_1(v36, v37, v38, v39);

  OUTLINED_FUNCTION_20();
  v40 = swift_allocObject();
  OUTLINED_FUNCTION_20_0(v40);
  OUTLINED_FUNCTION_37_0();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v93;
  v41[4] = v92;

  OUTLINED_FUNCTION_0_71();
  v42 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v43 = [v13 conversationKit];
  OUTLINED_FUNCTION_5_64();
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_48_1(v44, v45, v46, v47);

  OUTLINED_FUNCTION_20();
  v48 = swift_allocObject();
  OUTLINED_FUNCTION_20_0(v48);
  OUTLINED_FUNCTION_37_0();
  v49 = swift_allocObject();
  v49[2] = v48;
  v49[3] = v93;
  v49[4] = v92;

  OUTLINED_FUNCTION_0_71();
  v50 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1BC4BA930;
  *(v51 + 32) = v42;
  *(v51 + 40) = v50;
  v52 = v42;
  v53 = v50;
  v54 = [v13 conversationKit];
  OUTLINED_FUNCTION_5_5();
  v55.super.isa = v54;
  OUTLINED_FUNCTION_17_0(v56, v57, v58, v59, v55);

  String.uppercased()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1BC4BA940;
  *(v60 + 56) = MEMORY[0x1E69E6158];
  *(v60 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v60 + 32) = v93;
  *(v60 + 40) = v92;
  String.init(format:_:)();
  OUTLINED_FUNCTION_7_19();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_0_71();
  v63 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v61, v62, v109, 33, 0xFFFFFFFFFFFFFFFFLL, v51, 0).super.super.isa;
  MEMORY[0x1BFB20CC0]();
  if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v23 = v103;

LABEL_21:
  v20 = v95;
LABEL_22:
  if ([*(v1 + 192) sharePlayDiscoverabilityEnabled])
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICustomViewMenuElement, 0x1E69DC910);
    v80 = @nonobjc UICustomViewMenuElement.__allocating_init(viewProvider:)(closure #5 in ConversationControlsShareMenuButtonProvider.menu(for:), 0);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_37_0();
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1BC4BAC30;
    *(v81 + 32) = v80;
    v82 = v80;
    OUTLINED_FUNCTION_0_71();
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v83, v84, v110, 33, 0xFFFFFFFFFFFFFFFFLL, v81, children);
    MEMORY[0x1BFB20CC0]();
    OUTLINED_FUNCTION_10_41();
    if (v21)
    {
      OUTLINED_FUNCTION_1_27();
    }

    OUTLINED_FUNCTION_206();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v23 = v103;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
  OUTLINED_FUNCTION_0_71();
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v85, v86, v111, 33, 0xFFFFFFFFFFFFFFFFLL, v23, children).super.super.isa;

  return isa;
}

uint64_t closure #1 in ConversationControlsShareMenuButtonProvider.menu(for:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, &static Logger.conversationControls);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BBC58000, v5, v6, "Start screen sharing (countdown)", v7, 2u);
      MEMORY[0x1BFB23DF0](v7, -1, -1);
    }

    v8 = *(v3 + 160);

    ConversationControlsManager.startScreenShareWithCountdown(completion:)(partial apply for closure #1 in closure #1 in ConversationControlsShareMenuButtonProvider.menu(for:), v3, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, vars0, vars8);

    ConversationControlsMenuButtonProvider.disableMenuContainerViewInteraction()();
  }

  return result;
}

void closure #1 in closure #1 in ConversationControlsShareMenuButtonProvider.menu(for:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v9 = partial apply for closure #1 in closure #1 in closure #1 in ConversationControlsShareMenuButtonProvider.menu(for:);
  v10 = a1;
  v5 = MEMORY[0x1E69E9820];
  v6 = 1107296256;
  v7 = thunk for @escaping @callee_guaranteed () -> ();
  v8 = &block_descriptor_32_1;
  v3 = _Block_copy(&v5);

  v9 = partial apply for closure #2 in closure #1 in closure #1 in ConversationControlsShareMenuButtonProvider.menu(for:);
  v10 = a1;
  v5 = MEMORY[0x1E69E9820];
  v6 = 1107296256;
  v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v8 = &block_descriptor_35_0;
  v4 = _Block_copy(&v5);

  [v2 animateWithDuration:v3 animations:v4 completion:0.5];
  _Block_release(v4);
  _Block_release(v3);
}

id closure #1 in closure #1 in closure #1 in ConversationControlsShareMenuButtonProvider.menu(for:)(uint64_t a1)
{
  result = *(a1 + 232);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

void closure #2 in ConversationControlsShareMenuButtonProvider.menu(for:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = (*((*MEMORY[0x1E69E7D40] & *a3) + 0x2C0))();
    if (v6)
    {
      v7 = v6;
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, &static Logger.conversationControls);
      v9 = a4;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v19 = v13;
        *v12 = 136315138;
        v14 = TUConversationActivitySession.uniqueIdentifier.getter();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_1BBC58000, v10, v11, "End active SharePlay activity: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x1BFB23DF0](v13, -1, -1);
        MEMORY[0x1BFB23DF0](v12, -1, -1);
      }

      v17 = [objc_opt_self() sharedInstance];
      v18 = [v17 conversationManager];

      [v18 presentDismissalAlertForActivitySession:v9 onConversation:v7];
      ConversationControlsMenuButtonProvider.disableMenuContainerViewInteraction()();
    }

    else
    {
    }
  }
}

void closure #3 in ConversationControlsShareMenuButtonProvider.menu(for:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const char *a5, char a6)
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, &static Logger.conversationControls);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v15);
      _os_log_impl(&dword_1BBC58000, v11, v12, a5, v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    ConversationControlsShareMenuButtonProvider.setAutomaticShareState(_:)(a6 & 1);
    ConversationControlsMenuButtonProvider.disableMenuContainerViewInteraction()();
  }

  OUTLINED_FUNCTION_62();
}

void closure #5 in ConversationControlsShareMenuButtonProvider.menu(for:)()
{
  LOWORD(v8) = 0;
  v0 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy15ConversationKit32SharePlayDiscoverabilityMenuViewVGMd, &_s7SwiftUI19UIHostingControllerCy15ConversationKit32SharePlayDiscoverabilityMenuViewVGMR));
  v1 = UIHostingController.init(rootView:)();
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor_];

  v7 = [v1 view];
  if (v7)
  {

    return;
  }

LABEL_7:
  __break(1u);
}

void ConversationControlsShareMenuButtonProvider.__ivar_destroyer()
{

  v1 = *(v0 + 248);
}

id *ConversationControlsShareMenuButtonProvider.deinit()
{
  v0 = ConversationControlsMenuButtonProvider.deinit();

  return v0;
}

uint64_t ConversationControlsShareMenuButtonProvider.__deallocating_deinit()
{
  ConversationControlsShareMenuButtonProvider.deinit();

  return swift_deallocClassInstance();
}

id CountdownLabelView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static NSNumberFormatter.localizedStringForInt(_:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v4 = [v2 localizedStringFromNumber:v3 numberStyle:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

char *CountdownLabelView.init()()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_isCountingDown) = 0;
  v1 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  v2 = OUTLINED_FUNCTION_28();
  v5 = [v3 v4];
  v6 = OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_countdownLabel;
  *(v0 + OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_countdownLabel) = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = *(v0 + v6);
  v8 = objc_opt_self();
  v9 = *MEMORY[0x1E69DB958];
  v10 = v7;
  v11 = [v8 systemFontOfSize:20.0 weight:v9];
  [v10 setFont_];

  v31 = type metadata accessor for CountdownLabelView();
  v12 = OUTLINED_FUNCTION_28();
  v15 = objc_msgSendSuper2(v13, v14, v12, v0, v31);
  v16 = [v15 layer];
  v17 = [objc_opt_self() whiteColor];
  v18 = [v17 CGColor];

  [v16 setBorderColor_];
  v19 = [v15 layer];
  [v19 setBorderWidth_];

  v20 = OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_countdownLabel;
  [v15 addSubview_];
  v21 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BC4BA930;
  v23 = [*&v15[v20] centerXAnchor];
  v24 = [v15 centerXAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v22 + 32) = v25;
  v26 = [*&v15[v20] centerYAnchor];
  v27 = [v15 centerYAnchor];

  v28 = [v26 constraintEqualToAnchor_];
  *(v22 + 40) = v28;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v21 activateConstraints_];

  return v15;
}

id CountdownLabelView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CountdownLabelView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_isCountingDown) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CountdownLabelView.set(countdownIsActive:countdownLabelText:)(Swift::Bool countdownIsActive, Swift::String_optional countdownLabelText)
{
  *(v2 + OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_isCountingDown) = countdownIsActive;
  v3 = *(v2 + OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_countdownLabel);
  if (countdownLabelText.value._object)
  {
    v4 = v3;
    v5 = OUTLINED_FUNCTION_62_0();
    v6 = MEMORY[0x1BFB209B0](v5);
  }

  else
  {
    v7 = v3;
    v6 = 0;
  }

  v8 = v6;
  [v3 setText_];
}

id CountdownLabelView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CountdownLabelView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CountdownLabelView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type ShareMenuActionState and conformance ShareMenuActionState()
{
  result = lazy protocol witness table cache variable for type ShareMenuActionState and conformance ShareMenuActionState;
  if (!lazy protocol witness table cache variable for type ShareMenuActionState and conformance ShareMenuActionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShareMenuActionState and conformance ShareMenuActionState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForegroundApp? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ForegroundApp? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ForegroundApp? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit13ForegroundAppCSgMd, &_s15ConversationKit13ForegroundAppCSgMR);
    lazy protocol witness table accessor for type ForegroundApp and conformance NSObject();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForegroundApp? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForegroundApp and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type ForegroundApp and conformance NSObject;
  if (!lazy protocol witness table cache variable for type ForegroundApp and conformance NSObject)
  {
    type metadata accessor for ForegroundApp();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForegroundApp and conformance NSObject);
  }

  return result;
}

uint64_t outlined destroy of Notification?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd, &_s10Foundation12NotificationVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void outlined bridged method (mbnn) of @objc UIAction.discoverabilityTitle.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0](a1);

  [a3 setDiscoverabilityTitle_];
}

id partial apply for closure #2 in closure #1 in closure #1 in ConversationControlsShareMenuButtonProvider.menu(for:)()
{
  result = *(v0 + 232);
  if (result)
  {
    return [result removeFromSuperview];
  }

  return result;
}

uint64_t ConversationControlsStringProvider.callTypeSubtitles(for:)(void *a1)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))();
  v3 = v2;
  swift_getObjectType();
  v4 = *(v3 + 184);
  v5 = v4();
  v6 = [v5 isFaceTimeProvider];

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BC4BAC30;
    isa = ConversationControlsStringProvider.faceTimeIncomingCallSubtitle(for:)(a1);
LABEL_12:
    *(v7 + 32) = isa;
    goto LABEL_13;
  }

  v9 = OUTLINED_FUNCTION_11_46();
  v10 = (v4)(v9);
  v11 = [v10 isSystemProvider];

  if (!v11)
  {
    v26 = OUTLINED_FUNCTION_11_46();
    v27 = (v4)(v26);
    v28 = [v27 localizedName];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = OUTLINED_FUNCTION_11_46();
    v33(v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BC4BAC30;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v34 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_14_2();
    v35.super.isa = v34;
    OUTLINED_FUNCTION_17_0(v36, v37, v38, v39, v35);

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v41 = OUTLINED_FUNCTION_13_12(v40);
    *(v41 + 16) = xmmword_1BC4BA940;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v41 + 32) = v29;
    *(v41 + 40) = v31;
    v42 = static String.localizedStringWithFormat(_:_:)();
    v44 = v43;

    v24 = v42;
    v25 = v44;
LABEL_11:
    isa = NSAttributedString.__allocating_init(string:)(*&v24).super.isa;
    goto LABEL_12;
  }

  v7 = ConversationControlsStringProvider.telephonyCallSubtitles(for:)(a1);
  if (!specialized Array.count.getter())
  {

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, &static Logger.conversationControls);
    swift_unknownObjectRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v46 = v16;
      *v15 = 136446210;
      v17 = OUTLINED_FUNCTION_11_46();
      v18 = (v4)(v17);
      v19 = [v18 identifier];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v46);

      *(v15 + 4) = v23;
      _os_log_impl(&dword_1BBC58000, v13, v14, "Unknown call type subtitle for provider: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BC4BAC30;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v24 = OUTLINED_FUNCTION_19_22();
    goto LABEL_11;
  }

LABEL_13:
  swift_unknownObjectRelease();
  return v7;
}

uint64_t ConversationControlsStringProvider.screenShareHUDStrings(initiator:incomingRequest:)()
{
  OUTLINED_FUNCTION_27_20();
  OUTLINED_FUNCTION_10_42();
  v0 = objc_opt_self();
  v1 = [v0 conversationKit];
  OUTLINED_FUNCTION_22_26();
  v2.super.isa = v1;
  OUTLINED_FUNCTION_17_0(v3, v4, v5, v6, v2);
  OUTLINED_FUNCTION_16_6();

  v7 = [v0 conversationKit];
  OUTLINED_FUNCTION_22_26();
  v8.super.isa = v7;
  OUTLINED_FUNCTION_17_0(v9, v10, v11, v12, v8);

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v14 = OUTLINED_FUNCTION_13_12(v13);
  *(v14 + 16) = xmmword_1BC4BA940;
  Participant.contactDetails.getter();

  Participant.name(_:)();
  v16 = v15;
  v18 = v17;

  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v14 + 32) = v16;
  *(v14 + 40) = v18;
  String.init(format:_:)();

  return OUTLINED_FUNCTION_44_0();
}

NSAttributedString __swiftcall ConversationControlsStringProvider.incomingRemoteControlRequestSubtitle(requestingParticipantDisplayName:)(Swift::String requestingParticipantDisplayName)
{
  object = requestingParticipantDisplayName._object;
  countAndFlagsBits = requestingParticipantDisplayName._countAndFlagsBits;
  v3 = 0xD00000000000002DLL;
  v4 = "@_WANTS_TO_CONTROL_YOUR_PAD";
  switch(static Platform.current.getter())
  {
    case 1u:
      v5 = "SCREEN_SHARING_%@_WANTS_TO_CONTROL_YOUR_PAD";
      goto LABEL_5;
    case 2u:
      v4 = "@_WANTS_TO_CONTROL_YOUR_MAC";
      v3 = 0xD00000000000002ALL;
      break;
    case 3u:
      v5 = "SCREEN_SHARING_%@_WANTS_TO_CONTROL_YOUR_MAC";
LABEL_5:
      v4 = (v5 - 32);
      v3 = 0xD00000000000002BLL;
      break;
    default:
      break;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
  v6 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_5_5();
  v7.super.isa = v6;
  OUTLINED_FUNCTION_17_0(v3, v4 | 0x8000000000000000, v8, v9, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BC4BAA20;
  v11 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v12 = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 64) = v12;
  *(v10 + 32) = countAndFlagsBits;
  *(v10 + 40) = object;
  v13 = objc_opt_self();

  v14 = [v13 currentDevice];
  v15 = [v14 model];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 72) = v16;
  *(v10 + 80) = v18;
  String.init(format:_:)();
  OUTLINED_FUNCTION_16_6();

  v19._countAndFlagsBits = OUTLINED_FUNCTION_44_0();
  return NSAttributedString.__allocating_init(string:)(v19);
}

id ConversationControlsStringProvider.collaborationHUDStrings(initiator:itemTitle:)(void *a1, uint64_t a2, uint64_t a3)
{
  v89 = a1;
  OUTLINED_FUNCTION_23_28();
  *&v90 = type metadata accessor for PersonNameComponents();
  v87 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSg_SSSgtMd, &_s10Foundation20PersonNameComponentsVSg_SSSgtMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v84 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v84 - v11;
  v13 = MEMORY[0x1E69E6158];
  if (a3)
  {
    v14 = objc_opt_self();

    v15 = [v14 &off_1E7FE9588];
    OUTLINED_FUNCTION_14_2();
    v16.super.isa = v15;
    OUTLINED_FUNCTION_17_0(v17, v18, v19, v20, v16);

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v22 = OUTLINED_FUNCTION_13_12(v21);
    *(v22 + 16) = xmmword_1BC4BA940;
    v23 = v13;
    *(v22 + 56) = v13;
    *(v22 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v22 + 32) = a2;
    *(v22 + 40) = a3;
    v24 = String.init(format:_:)();
    v26 = v25;
  }

  else
  {
    v27 = v3;
    v23 = MEMORY[0x1E69E6158];
    v28 = [objc_opt_self() conversationKit];
    v29.super.isa = v28;
    v24 = OUTLINED_FUNCTION_17_0(0xD000000000000024, 0x80000001BC5013E0, v27, 0xEF74694B6E6F6974, v29);
    v26 = v30;
  }

  v31 = v89;
  v32 = [v89 nameComponents];
  v33 = v90;
  if (v32)
  {
    v34 = v32;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v35, 1, v33);
  v36 = outlined bridged method (pb) of @objc TUCollaborationInitiator.handle.getter(v31);
  v38 = v37;
  outlined init with take of PersonNameComponents?(v12, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v33) == 1)
  {
    if (v38)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v39 = swift_allocObject();
      v90 = xmmword_1BC4BA940;
      *(v39 + 16) = xmmword_1BC4BA940;
      v40 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_9_49();
      OUTLINED_FUNCTION_5_5();
      v41.super.isa = v40;
      OUTLINED_FUNCTION_17_0(v42, v43, v44, v45, v41);
      OUTLINED_FUNCTION_18_8();

      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v47 = OUTLINED_FUNCTION_13_12(v46);
      *(v47 + 16) = v90;
      *(v47 + 56) = v23;
      *(v47 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v47 + 32) = v36;
      *(v47 + 40) = v38;
      OUTLINED_FUNCTION_15_14();
      String.init(format:_:)();
      OUTLINED_FUNCTION_17_37();
      *(v39 + 32) = v47;
      *(v39 + 40) = v26;
    }
  }

  else
  {
    *&v85 = v36;
    v86 = v26;
    v89 = v24;
    v48 = v87;
    if (v38)
    {
      (*(v87 + 32))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1BC4BA940;
      v50 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_9_49();
      OUTLINED_FUNCTION_5_5();
      v51.super.isa = v50;
      v84[1] = OUTLINED_FUNCTION_17_0(v52, v53, v54, v55, v51);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1BC4BAA20;
      v57 = objc_opt_self();
      isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v59 = [v57 localizedStringFromPersonNameComponents:isa style:0 options:0];

      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      v63 = v33;
      v64 = MEMORY[0x1E69E6158];
      *(v56 + 56) = MEMORY[0x1E69E6158];
      v65 = lazy protocol witness table accessor for type String and conformance String();
      *(v56 + 32) = v60;
      *(v56 + 40) = v62;
      *(v56 + 96) = v64;
      *(v56 + 104) = v65;
      v66 = v85;
      *(v56 + 64) = v65;
      *(v56 + 72) = v66;
      *(v56 + 80) = v38;
      String.init(format:_:)();
      OUTLINED_FUNCTION_18_8();

      *(v49 + 32) = v62;
      *(v49 + 40) = v59;
      (*(v48 + 8))(v88, v63);
    }

    else
    {
      v67 = v88;
      (*(v87 + 32))(v88, v9, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v68 = swift_allocObject();
      v85 = xmmword_1BC4BA940;
      *(v68 + 16) = xmmword_1BC4BA940;
      v69 = [objc_opt_self() &off_1E7FE9588];
      OUTLINED_FUNCTION_9_49();
      OUTLINED_FUNCTION_5_5();
      v70.super.isa = v69;
      OUTLINED_FUNCTION_17_0(v71, v72, v73, v74, v70);

      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v76 = OUTLINED_FUNCTION_13_12(v75);
      *(v76 + 16) = v85;
      v77 = objc_opt_self();
      v78 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v79 = [v77 localizedStringFromPersonNameComponents:v78 style:0 options:0];

      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      *(v76 + 56) = MEMORY[0x1E69E6158];
      *(v76 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v76 + 32) = v80;
      *(v76 + 40) = v82;
      String.init(format:_:)();
      OUTLINED_FUNCTION_18_8();

      *(v68 + 32) = v80;
      *(v68 + 40) = v76;
      (*(v48 + 8))(v67, v33);
    }

    return v89;
  }

  return v24;
}

void ConversationControlsStringProvider.groupCallSubtitle(conversation:isConnecting:)(void *a1, unint64_t a2)
{
  v4 = [a1 mergedActiveRemoteParticipants];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized Set.count.getter();

  v6 = [a1 pendingMembers];
  OUTLINED_FUNCTION_10_9();
  type metadata accessor for NSObject(v7, v8, v9);
  OUTLINED_FUNCTION_10_9();
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(v10, v11, v12);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = specialized Set.count.getter();

  v14 = [a1 localParticipantAssociation];
  if (!v14 || (v14, [a1 state] != 1))
  {
    if (v5 || v13 < 1)
    {
      if (a2)
      {
        v26 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_5_5();
        v27.super.isa = v26;
        v5 = OUTLINED_FUNCTION_17_0(v28, 0xEA0000000000474ELL, v29, v30, v27);
        a2 = v31;

        goto LABEL_17;
      }

      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for shared);
      }

      a2 = static Features.shared;
      if (Features.isICUIRedesignEnabled.getter() & 1) != 0 && (GondolaControlsRecipeGenerator.isPresentingFullScreenCallUI.getter())
      {
        v5 = 0;
        a2 = 0xE000000000000000;
        goto LABEL_17;
      }

      String.localizedConversationControls.getter();
      OUTLINED_FUNCTION_18_8();
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v33 = OUTLINED_FUNCTION_13_12(v32);
      v34 = MEMORY[0x1E69E6530];
      *(v33 + 16) = xmmword_1BC4BA940;
      v35 = MEMORY[0x1E69E65A8];
      *(v33 + 56) = v34;
      *(v33 + 64) = v35;
      *(v33 + 32) = v5;
      OUTLINED_FUNCTION_15_14();
      static String.localizedStringWithFormat(_:_:)();
      OUTLINED_FUNCTION_17_37();
    }

    else
    {
      String.localizedConversationControls.getter();
      OUTLINED_FUNCTION_16_6();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v23 = OUTLINED_FUNCTION_13_12(v22);
      v24 = MEMORY[0x1E69E6530];
      *(v23 + 16) = xmmword_1BC4BA940;
      v25 = MEMORY[0x1E69E65A8];
      *(v23 + 56) = v24;
      *(v23 + 64) = v25;
      *(v23 + 32) = v13;
      OUTLINED_FUNCTION_44_0();
      static String.localizedStringWithFormat(_:_:)();
      OUTLINED_FUNCTION_17_37();
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_30_14();
  a2 = v15;
  v5 = TUStringKeyForProduct();

  if (v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_18_8();

    v16 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_5_5();
    v17 = OUTLINED_FUNCTION_15_14();
    v18.super.isa = v16;
    OUTLINED_FUNCTION_17_0(v17, v19, v20, v21, v18);
    OUTLINED_FUNCTION_17_37();

LABEL_17:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v36._countAndFlagsBits = v5;
    v36._object = a2;
    NSAttributedString.__allocating_init(string:)(v36);
    return;
  }

  __break(1u);
}

void ConversationControlsStringProvider.individualCallSubtitle(conversation:call:isConnecting:)(void *a1, uint64_t a2, uint8_t *a3, char a4)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationKit);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109376;
    *(v12 + 4) = a4 & 1;
    *(v12 + 8) = 1024;
    *(v12 + 10) = [v9 isVideo];

    _os_log_impl(&dword_1BBC58000, v10, v11, "[CallSubtitle] individualCall: connecting=%{BOOL}d video=%{BOOL}d", v12, 0xEu);
    OUTLINED_FUNCTION_27();
  }

  else
  {

    v10 = v9;
  }

  if (a4)
  {
    v13 = static Platform.current.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = OUTLINED_FUNCTION_25(v15);
    if (v13 == 2)
    {
      if (!v16)
      {
LABEL_10:

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
        v22 = OUTLINED_FUNCTION_19_22();
LABEL_17:
        NSAttributedString.__allocating_init(string:)(*&v22);
        return;
      }

LABEL_9:
      v17 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v17);
      OUTLINED_FUNCTION_8_57();
      _os_log_impl(v18, v19, v20, v21, v13, 2u);
      OUTLINED_FUNCTION_27();
      goto LABEL_10;
    }

    if (v16)
    {
      v49 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v49);
      OUTLINED_FUNCTION_8_57();
      _os_log_impl(v50, v51, v52, v53, v13, 2u);
      OUTLINED_FUNCTION_27();
    }

    v54 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_4_15();
    OUTLINED_FUNCTION_5_5();
    v58 = 0xEA0000000000474ELL;
    goto LABEL_41;
  }

  v24 = [v9 localParticipantAssociation];
  if (!v24 || (v24, [v9 state]!= 1))
  {
    if (![v9 avMode])
    {
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_23_28();
      v59 = [v9 activeRemoteParticipants];
      OUTLINED_FUNCTION_10_9();
      type metadata accessor for NSObject(v60, v61, v62);
      OUTLINED_FUNCTION_10_9();
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(v63, v64, v65);
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v66 = specialized Set.isEmpty.getter();

      v14 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      v68 = OUTLINED_FUNCTION_25(v67);
      if (v66)
      {
        if (v68)
        {
          v69 = OUTLINED_FUNCTION_33();
          *v69 = 0;
          OUTLINED_FUNCTION_8_57();
          _os_log_impl(v70, v71, v72, v73, v69, 2u);
          OUTLINED_FUNCTION_27();
        }

        v74 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_4_15();
        v55 = 0x44455449564E49;
        v58 = 0xE700000000000000;
      }

      else
      {
        if (v68)
        {
          v97 = OUTLINED_FUNCTION_33();
          *v97 = 0;
          OUTLINED_FUNCTION_8_57();
          _os_log_impl(v98, v99, v100, v101, v97, 2u);
          OUTLINED_FUNCTION_27();
        }

        v102 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_4_15();
        v55 = 0x455649544341;
        v58 = 0xE600000000000000;
      }

      v56 = a2;
      v57 = a3;
LABEL_41:
      v103.super.isa = v14;
      OUTLINED_FUNCTION_17_0(v55, v58, v56, v57, v103);
      OUTLINED_FUNCTION_18_8();

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40);
      v104._countAndFlagsBits = OUTLINED_FUNCTION_15_14();
      NSAttributedString.__allocating_init(string:)(v104);
      return;
    }

    if ([v9 isVideo])
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      v45 = *MEMORY[0x1E69DDD80];
      v153 = 0;
      OUTLINED_FUNCTION_6_57(v45);
      outlined init with copy of SymbolImageDescription(v155, v151);
      outlined destroy of SymbolImageDescription(v154);
      v46 = static UIImage.symbolImage(for:)(v155);
      outlined destroy of SymbolImageDescription(v155);
      if (v46)
      {
        v47 = [objc_opt_self() secondaryLabelColor];
        v48 = [v46 imageWithTintColor_];
      }

      else
      {
        v48 = 0;
      }

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v105 = (*((*MEMORY[0x1E69E7D40] & *static HUDActivityManager.shared) + 0xB0))();
      if (v105)
      {
        v106 = v105;
        v107 = [v105 isPresentingFullScreenCallUI];
      }

      else
      {
        v107 = 0;
      }

      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for shared);
      }

      OUTLINED_FUNCTION_27_20();
      OUTLINED_FUNCTION_10_42();
      v111 = Features.isICUIRedesignEnabled.getter() & v107;
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.default.getter();
      v114 = OUTLINED_FUNCTION_25(v113);
      if (v111)
      {
        if (v114)
        {
          v115 = OUTLINED_FUNCTION_33();
          *v115 = 0;
          OUTLINED_FUNCTION_8_57();
          _os_log_impl(v116, v117, v118, v119, v115, 2u);
          OUTLINED_FUNCTION_27();
        }

        v120 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_4_15();
        OUTLINED_FUNCTION_22_26();
        v121.super.isa = v112;
        v126 = OUTLINED_FUNCTION_17_0(v122, v123, v124, v125, v121);
        v128 = v127;

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40);

        v129._countAndFlagsBits = v126;
        v129._object = v128;
        NSAttributedString.__allocating_init(string:)(v129);
        goto LABEL_64;
      }

      if (v114)
      {
        v130 = OUTLINED_FUNCTION_33();
        *v130 = 0;
        OUTLINED_FUNCTION_8_57();
        _os_log_impl(v131, v132, v133, v134, v130, 2u);
        OUTLINED_FUNCTION_27();
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
      v135 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_2_86();
      OUTLINED_FUNCTION_22_26();
    }

    else
    {
      swift_getObjectType();
      if (Call.isFromMessagesScreenShare.getter())
      {
        v75 = OUTLINED_FUNCTION_21_25();
        if (v76(v75) == 3)
        {
          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.default.getter();
          if (OUTLINED_FUNCTION_25(v78))
          {
            v79 = OUTLINED_FUNCTION_33();
            *v79 = 0;
            OUTLINED_FUNCTION_8_57();
            _os_log_impl(v80, v81, v82, v83, v79, 2u);
            OUTLINED_FUNCTION_27();
          }

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
          v84 = [objc_opt_self() conversationKit];
          OUTLINED_FUNCTION_5_5();
          v86.super.isa = v84;
          OUTLINED_FUNCTION_17_0(v85 + 22, 0x80000001BC501530, v87, v88, v86);

          v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v90 = OUTLINED_FUNCTION_13_12(v89);
          *(v90 + 16) = xmmword_1BC4BA940;
          v91 = OUTLINED_FUNCTION_21_25();
          v92(v91);
          OUTLINED_FUNCTION_18_8();
          *(v90 + 56) = MEMORY[0x1E69E6158];
          *(v90 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v90 + 32) = v84;
          *(v90 + 40) = a3;
          String.init(format:_:)();
          OUTLINED_FUNCTION_18_8();

          v22 = OUTLINED_FUNCTION_15_14();
          goto LABEL_17;
        }
      }

      v93 = OUTLINED_FUNCTION_21_25();
      v95 = v94(v93);
      v13 = [v95 isTelephonyProvider];

      if (v13)
      {
        v14 = Logger.logObject.getter();
        v96 = static os_log_type_t.default.getter();
        if (!OUTLINED_FUNCTION_25(v96))
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      v108 = *MEMORY[0x1E69DDD80];
      v153 = 0;
      OUTLINED_FUNCTION_6_57(v108);
      outlined init with copy of SymbolImageDescription(v155, v151);
      outlined destroy of SymbolImageDescription(v154);
      v109 = static UIImage.symbolImage(for:)(v155);
      outlined destroy of SymbolImageDescription(v155);
      if (v109)
      {
        v110 = [objc_opt_self() secondaryLabelColor];
        v48 = [v109 imageWithTintColor_];
      }

      else
      {
        v48 = 0;
      }

      v140 = Logger.logObject.getter();
      v141 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_25(v141))
      {
        v142 = OUTLINED_FUNCTION_33();
        *v142 = 0;
        OUTLINED_FUNCTION_8_57();
        _os_log_impl(v143, v144, v145, v146, v142, 2u);
        OUTLINED_FUNCTION_27();
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
      v135 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_2_86();
      OUTLINED_FUNCTION_5_5();
    }

    v147.super.isa = v135;
    v148 = OUTLINED_FUNCTION_17_0(v136, v137, v138, v139, v147);
    v150 = v149;

    memset(v151, 0, sizeof(v151));
    v152 = 1;
    static NSAttributedString.localizedString(_:prefixImage:imageBounds:)(v148, v150, v48, v151);
LABEL_64:

    return;
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_25(v26))
  {
    v27 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v27);
    OUTLINED_FUNCTION_8_57();
    _os_log_impl(v28, v29, v30, v31, a3, 2u);
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_30_14();
  v33 = v32;
  v34 = TUStringKeyForProduct();

  if (v34)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_4_15();
    OUTLINED_FUNCTION_5_5();
    v39.super.isa = v34;
    v42 = OUTLINED_FUNCTION_17_0(v35, v37, v40, v41, v39);
    v44 = v43;

    v22 = v42;
    v23 = v44;
    goto LABEL_17;
  }

  __break(1u);
}

NSAttributedString ConversationControlsStringProvider.handoffNearbySubtitle(conversation:)(void *a1)
{
  v2 = [a1 resolvedAudioVideoMode];
  if (!v2)
  {
    v3 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_5_5();
    v5 = 0xE900000000000059;
    goto LABEL_6;
  }

  if (v2 == 1 || v2 == 2)
  {
    v3 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_2_86();
    OUTLINED_FUNCTION_5_5();
LABEL_6:
    v8.super.isa = v3;
    v9 = OUTLINED_FUNCTION_17_0(v4, v5, v6, v7, v8);
    v11 = v10;

    v12 = [a1 handoffEligibility];
    if (v12)
    {
      v13 = outlined bridged method (ob) of @objc TUConversationHandoffEligibility.localizedDeviceCategory.getter(v12);
      if (v14)
      {
        v15 = v13;
        v16 = v14;
        v33[0] = v9;
        v33[1] = v11;
        MEMORY[0x1BFB20B10](2108704, 0xE300000000000000);
        MEMORY[0x1BFB20B10](v15, v16);
      }
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40);
    v17._countAndFlagsBits = v9;
    v17._object = v11;
    return NSAttributedString.__allocating_init(string:)(v17);
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, &static Logger.conversationControls);
  v20 = a1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v33[0] = v24;
    *v23 = 136315138;
    v33[2] = [v20 resolvedAudioVideoMode];
    v25 = String.init<A>(reflecting:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v33);

    *(v23 + 4) = v27;
    OUTLINED_FUNCTION_8_57();
    _os_log_impl(v28, v29, v30, v31, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
  v32._countAndFlagsBits = OUTLINED_FUNCTION_19_22();
  return NSAttributedString.__allocating_init(string:)(v32);
}

NSAttributedString __swiftcall ConversationControlsStringProvider.handoffCompletedSubtitle(localizedDeviceCategory:)(Swift::String_optional localizedDeviceCategory)
{
  OUTLINED_FUNCTION_28_4();
  OUTLINED_FUNCTION_10_42();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v7 = objc_opt_self();

    v8 = [v7 conversationKit];
    OUTLINED_FUNCTION_29_3();
    v9.super.isa = v8;
    OUTLINED_FUNCTION_17_0(0x255F4E4F5F574F4ELL, 0xE900000000000040, v2, v1, v9);

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v11 = OUTLINED_FUNCTION_13_12(v10);
    *(v11 + 16) = xmmword_1BC4BA940;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v11 + 32) = v6;
    *(v11 + 40) = v5;
    OUTLINED_FUNCTION_10_9();
    String.init(format:_:)();
    OUTLINED_FUNCTION_16_6();
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v12 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_3();
    v13.super.isa = v12;
    OUTLINED_FUNCTION_17_0(0xD000000000000013, 0x80000001BC501560, v2, v1, v13);
    OUTLINED_FUNCTION_16_6();
  }

  v14._countAndFlagsBits = OUTLINED_FUNCTION_44_0();
  return NSAttributedString.__allocating_init(string:)(v14);
}

Class ConversationControlsStringProvider.faceTimeIncomingCallSubtitle(for:)(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2C0))();
  if (v3)
  {
    v4 = v3;
    if ([v3 resolvedAudioVideoMode] == 2)
    {
      v5 = 0xEE004F454449565FLL;
    }

    else
    {
      v5 = 0xEE004F494455415FLL;
    }

    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v34._object = 0xE000000000000000;
    v6._countAndFlagsBits = 0x454D495445434146;
    v6._object = v5;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v34._countAndFlagsBits = 0;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v7, v34);

    v9 = [v4 link];
    if (v9 && (v10 = outlined bridged method (ob) of @objc TUConversationLink.displayName.getter(v9), v11))
    {
      countAndFlagsBits = v10;
      object = v11;

      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.conversationKit);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_29;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BBC58000, v15, v16, "[CallSubtitle] faceTimeIncoming: using linkName", v17, 2u);
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.conversationKit);
      v15 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v15, v19))
      {
        countAndFlagsBits = v8._countAndFlagsBits;
        object = v8._object;
        goto LABEL_29;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BBC58000, v15, v19, "[CallSubtitle] faceTimeIncoming: using generic", v17, 2u);
      countAndFlagsBits = v8._countAndFlagsBits;
      object = v8._object;
    }

    MEMORY[0x1BFB23DF0](v17, -1, -1);
LABEL_29:

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v32._countAndFlagsBits = countAndFlagsBits;
    v32._object = object;
    v31.super.isa = NSAttributedString.__allocating_init(string:)(v32).super.isa;

    return v31.super.isa;
  }

  (*((*v2 & *a1) + 0x2A0))();
  v21 = v20;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.conversationKit);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1BBC58000, v23, v24, "[CallSubtitle] faceTimeIncoming: no conversation", v25, 2u);
    MEMORY[0x1BFB23DF0](v25, -1, -1);
  }

  ObjectType = swift_getObjectType();
  if ((*(v21 + 136))(ObjectType, v21))
  {
    v27 = 0xEE004F454449565FLL;
  }

  else
  {
    v27 = 0xEE004F494455415FLL;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v35._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0x454D495445434146;
  v28._object = v27;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v29, v35);

  v31.super.isa = NSAttributedString.__allocating_init(string:)(v30).super.isa;
  swift_unknownObjectRelease();
  return v31.super.isa;
}

void *ConversationControlsStringProvider.telephonyCallSubtitles(for:)(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 184))(ObjectType, v5);
  v8 = [v7 isTelephonyProvider];

  if (!v8)
  {
LABEL_16:
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for CallParticipantLabelDescriptor();
  v9 = (*((*v2 & *a1) + 0xA38))();
  v10 = static CallParticipantLabelDescriptor.labelDescriptor(for:callCount:alertAvailable:allowsDuration:)(v3, v5, 1, v9 & 1, 0);
  if (!v10)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, &static Logger.conversationControls);
    swift_unknownObjectRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd, &_s15ConversationKit4Call_pMR);
      v23 = String.init<A>(reflecting:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v39);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1BBC58000, v19, v20, "Unable to obtain label descriptor for telephony call: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFB23DF0](v22, -1, -1);
      MEMORY[0x1BFB23DF0](v21, -1, -1);
    }

    goto LABEL_16;
  }

  v11 = v10;
  v12 = (*((*v2 & *v10) + 0x90))();
  (*((*v2 & *v11) + 0xA8))();
  if (v13)
  {
    v14 = v12[2];
    if (!swift_isUniquelyReferenced_nonNull_native() || v14 >= v12[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v12 = v15;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    swift_unknownObjectRetain();
    if ([v17 isOutgoing])
    {
      swift_unknownObjectRelease();

      v12 = &outlined read-only object #0 of ConversationControlsStringProvider.telephonyCallSubtitles(for:);
    }

    else
    {
      v27 = [v17 displayContext];
      if (v27)
      {
        outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v27);
        if (v28)
        {

          v30 = (*((*v2 & *v11) + 0xC0))(v29);
          if (v31)
          {
            v32 = v30;
            v33 = v31;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
            v12 = swift_allocObject();
            *(v12 + 1) = xmmword_1BC4BA940;
            v12[4] = v32;
            v12[5] = v33;
          }
        }
      }

      swift_unknownObjectRelease();
    }
  }

  v34 = v12[2];
  if (!v34)
  {

    swift_unknownObjectRelease();

    return MEMORY[0x1E69E7CC0];
  }

  v39 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
  v35 = (v12 + 5);
  do
  {
    v36 = *(v35 - 1);
    v37 = *v35;

    v38._countAndFlagsBits = v36;
    v38._object = v37;
    NSAttributedString.__allocating_init(string:)(v38);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v35 += 2;
    --v34;
  }

  while (v34);

  swift_unknownObjectRelease();

  return v39;
}

uint64_t outlined bridged method (ob) of @objc TUConversationHandoffEligibility.localizedDeviceCategory.getter(void *a1)
{
  v2 = [a1 localizedDeviceCategory];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc TUCollaborationInitiator.handle.getter(void *a1)
{
  v1 = [a1 handle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined init with take of PersonNameComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void specialized RangeReplaceableCollection.removeFirst()()
{
  if (*(*v0 + 16))
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
  }

  else
  {
    __break(1u);
  }
}

void specialized RangeReplaceableCollection.removeFirst()(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  specialized Collection.first.getter(*v1, &v4);
  if (v5)
  {
    outlined init with take of TapInteractionHandler(&v4, a1);
    if (*(v3 + 16))
    {
      specialized Array.replaceSubrange<A>(_:with:)();
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

void specialized NoticeQueueStore.peek()()
{
  OUTLINED_FUNCTION_0_103();
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v4 == v3)
    {

      *v0 = v5;
      specialized Collection.first.getter(v5, v11);
      return;
    }

    if (v3 >= *(v1 + 16))
    {
      break;
    }

    outlined init with copy of IDSLookupManager(v2, &v13);
    __swift_project_boxed_opaque_existential_1(&v13, v14);
    v6 = OUTLINED_FUNCTION_1_87();
    if (v7(v6))
    {
      __swift_destroy_boxed_opaque_existential_1(&v13);
    }

    else
    {
      outlined init with take of TapInteractionHandler(&v13, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_3_82();
        v5 = v15;
      }

      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 > 1, v10 + 1, 1);
        v5 = v15;
      }

      OUTLINED_FUNCTION_4_68(isUniquelyReferenced_nonNull_native);
    }

    v2 += 40;
    ++v3;
  }

  __break(1u);
}

void specialized NoticeQueueStore.pop()()
{
  OUTLINED_FUNCTION_0_103();
  v5 = MEMORY[0x1E69E7CC0];
  while (v4 != v3)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    outlined init with copy of IDSLookupManager(v2, &v14);
    __swift_project_boxed_opaque_existential_1(&v14, v15);
    v6 = OUTLINED_FUNCTION_1_87();
    if (v7(v6))
    {
      __swift_destroy_boxed_opaque_existential_1(&v14);
    }

    else
    {
      outlined init with take of TapInteractionHandler(&v14, v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_3_82();
        v5 = v16;
      }

      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 > 1, v10 + 1, 1);
        v5 = v16;
      }

      OUTLINED_FUNCTION_4_68(isUniquelyReferenced_nonNull_native);
    }

    v2 += 40;
    ++v3;
  }

  *v0 = v5;
  specialized Collection.first.getter(v5, &v14);
  v11 = v15;
  outlined destroy of Notice?(&v14);
  if (v11)
  {
    specialized RangeReplaceableCollection.removeFirst()(v12);
  }

  else
  {
    *(v12 + 32) = 0;
    *v12 = 0u;
    *(v12 + 16) = 0u;
  }
}

uint64_t SimpleNoticeQueue.push(notice:)(uint64_t a1)
{
  outlined init with copy of IDSLookupManager(a1, v12);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v2 = *(*v1 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v2);
  v3 = v13;
  v4 = v14;
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v2, v8, v1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t CoalescingNoticeQueue.push(notice:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized CoalescingNoticeQueue.push(notice:)(v4, v1, v2, v3);
}

uint64_t protocol witness for NoticeQueue.push(notice:) in conformance CoalescingNoticeQueue(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized CoalescingNoticeQueue.push(notice:)(v4, v1, v2, v3);
}

uint64_t ReplacingNoticeQueue.push(notice:)(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit6Notice_pGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit6Notice_pGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA940;
  result = outlined init with copy of IDSLookupManager(a1, v3 + 32);
  *v1 = v3;
  return result;
}

uint64_t specialized CoalescingNoticeQueue.push(notice:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v59[3] = a3;
  v59[4] = a4;
  v51 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
  v8 = *(*(a3 - 8) + 16);
  v50 = a3;
  v8(boxed_opaque_existential_1, a1, a3);
  v9 = 0;
  v10 = *a2;
  v11 = *(*a2 + 16);
  v12 = *a2 + 32;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v11 == v9)
    {

      *a2 = v13;
      specialized BidirectionalCollection.last.getter(v13, &v53);
      if (v54)
      {
        outlined init with take of TapInteractionHandler(&v53, &v56);
        v18 = v57;
        v19 = v58;
        __swift_mutable_project_boxed_opaque_existential_1(&v56, v57);
        if ((*(v19 + 208))(v59, v18, v19))
        {
          if (one-time initialization token for conversationControls != -1)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }

        __swift_destroy_boxed_opaque_existential_1(&v56);
      }

      else
      {
        outlined destroy of Notice?(&v53);
      }

      outlined init with copy of IDSLookupManager(v59, &v56);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v34 = *(*a2 + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v34);
      v35 = __swift_mutable_project_boxed_opaque_existential_1(&v56, v57);
      v36 = MEMORY[0x1EEE9AC00](v35);
      v38 = &v50 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v38, v36);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v34, v38, a2, v50, v51);
      __swift_destroy_boxed_opaque_existential_1(&v56);
      return __swift_destroy_boxed_opaque_existential_1(v59);
    }

    if (v9 >= *(v10 + 16))
    {
      break;
    }

    outlined init with copy of IDSLookupManager(v12, &v56);
    v14 = v57;
    v15 = v58;
    __swift_project_boxed_opaque_existential_1(&v56, v57);
    if ((*(v15 + 40))(v14, v15))
    {
      __swift_destroy_boxed_opaque_existential_1(&v56);
    }

    else
    {
      outlined init with take of TapInteractionHandler(&v56, &v53);
      v52[0] = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
        v13 = v52[0];
      }

      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v17 + 1, 1);
        v13 = v52[0];
      }

      *(v13 + 16) = v17 + 1;
      outlined init with take of TapInteractionHandler(&v53, v13 + 40 * v17 + 32);
    }

    v12 += 40;
    ++v9;
  }

  __break(1u);
LABEL_24:
  swift_once();
LABEL_15:
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, &static Logger.conversationControls);
  outlined init with copy of IDSLookupManager(v59, &v53);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v52[0] = v24;
    *v23 = 136315394;
    __swift_project_boxed_opaque_existential_1(&v53, v54);
    v25 = (*(v51 + 120))(v50);
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v52);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    swift_beginAccess();
    v29 = v57;
    v30 = v58;
    __swift_project_boxed_opaque_existential_1(&v56, v57);
    v31 = (*(v30 + 120))(v29, v30);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v52);

    *(v23 + 14) = v33;
    _os_log_impl(&dword_1BBC58000, v21, v22, "Coalesced notice:%s into existingNotice:%s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v24, -1, -1);
    MEMORY[0x1BFB23DF0](v23, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v53);
  }

  specialized RangeReplaceableCollection<>.removeLast()(&v53);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  swift_beginAccess();
  outlined init with copy of IDSLookupManager(&v56, &v53);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v40 = *(*a2 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v40);
  v41 = v54;
  v42 = v55;
  v43 = __swift_mutable_project_boxed_opaque_existential_1(&v53, v54);
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = &v50 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v47 + 16))(v46, v44);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v40, v46, a2, v41, v42);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  v48 = *a2;
  __swift_destroy_boxed_opaque_existential_1(&v56);
  *a2 = v48;
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of TapInteractionHandler(&v12, v10 + 40 * a1 + 32);
}

uint64_t outlined destroy of Notice?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pSgMd, &_s15ConversationKit6Notice_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConversationControlsPrimaryActionButtonProvider.__allocating_init(controlsManager:context:calls:selectedCallAction:title:symbol:accessory:prefersPill:showsSymbolInPill:prefersMediumSize:menuHostViewController:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, unsigned __int8 a11, void *a12, uint64_t a13)
{
  v14 = a2;
  swift_allocObject();
  return ConversationControlsPrimaryActionButtonProvider.init(controlsManager:context:calls:selectedCallAction:title:symbol:accessory:prefersPill:showsSymbolInPill:prefersMediumSize:menuHostViewController:)(a1, v14, a3, a4, a5, a6, a7, a8, a9, a10, SHIBYTE(a10), a11, a12, a13);
}

uint64_t ConversationControlsPrimaryActionButtonProvider.init(controlsManager:context:calls:selectedCallAction:title:symbol:accessory:prefersPill:showsSymbolInPill:prefersMediumSize:menuHostViewController:)(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, char a11, unsigned __int8 a12, void *a13, uint64_t a14)
{
  v15 = v14;
  v67 = a8;
  v68 = a1;
  v60 = a4;
  v61 = a5;
  v62 = a3;
  v64 = a2;
  v65 = a14;
  v69 = a13;
  v63 = a10;
  v66 = a9;
  HIDWORD(v59) = a12;
  v18 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v73[3] = &type metadata for ScreeningStatusOverride;
  *&v73[4] = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  swift_allocObject();
  *&v73[0] = Defaults.init()();
  CallScreeningService.init(overrides:)();
  v24 = type metadata accessor for Features();
  v25 = [objc_allocWithZone(v24) init];
  type metadata accessor for SystemApertureIconFactory(0);
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E6995EE0];
  v28 = (v26 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
  v28[3] = v18;
  v28[4] = v27;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(v20 + 16))(boxed_opaque_existential_1, v23, v18);
  v30 = (v26 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
  v30[3] = v24;
  v30[4] = &protocol witness table for Features;
  *v30 = v25;
  v31 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
  v32 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
  __swift_storeEnumTagSinglePayload(v26 + v31, 1, 1, v32);
  v33 = v23;
  v34 = v18;
  v35 = v60;
  v36 = v61;
  (*(v20 + 8))(v33, v34);
  *(v15 + 184) = BYTE4(v59);
  *(v15 + 192) = v62;
  *(v15 + 200) = v35;
  *(v15 + 208) = v36;
  *(v15 + 216) = v26;
  if (a7)
  {
    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v35, v36);

    v37 = String.count.getter();

    if ((v63 & 1) == 0)
    {

      v40 = v66;
      v39 = v67;
      goto LABEL_9;
    }

    v38 = a6;
    v40 = v66;
    v39 = v67;
  }

  else
  {
    v38 = a6;
    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v35, v36);
    v40 = v66;
    v39 = v67;
    if ((v63 & 1) == 0)
    {
LABEL_9:
      v41 = v69;
      v42 = v68;
      v43 = ConversationControlsMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
      goto LABEL_11;
    }

    v37 = 0;
  }

  static Layout.ConversationControls.values.getter(v73);
  if (*&v73[37] < v37)
  {

    goto LABEL_9;
  }

  v44 = v69;
  v45 = v68;
  v43 = ConversationControlsMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
  swift_beginAccess();
  *(v43 + 120) = v38;
  *(v43 + 128) = a7;

  ControlsButtonProvider.title.didset(v47, v46);
  v48 = ControlsButtonProvider.prominentTitleFont.getter();
  ControlsButtonProvider.titleFont.setter(v48, v49);

LABEL_11:
  outlined init with copy of SymbolImageDescribing?(v39, &v74);
  if (v75)
  {
    outlined init with take of ImageName(&v74, &v76);
    if (*(v43 + 41) != 2 || (a11 & 1) != 0)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      v50 = v77;
      v51 = v78;
      __swift_project_boxed_opaque_existential_1(&v76, v77);
      (*(v51 + 8))(&v74, v50, v51);
      v52 = static UIImage.symbolImage(for:)(&v74);
      outlined destroy of SymbolImageDescription(&v74);
      ControlsButtonProvider.image.setter(v52, v53);
    }

    __swift_destroy_boxed_opaque_existential_1(&v76);
  }

  else
  {
    outlined destroy of SymbolImageDescribing?(&v74);
  }

  outlined init with copy of SymbolImageDescribing?(v40, &v76);
  if (v77)
  {
    outlined init with take of ImageName(&v76, v70);
    if (*(v43 + 41) != 2)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      v54 = v71;
      v55 = v72;
      __swift_project_boxed_opaque_existential_1(v70, v71);
      (*(v55 + 8))(&v76, v54, v55);
      v56 = static UIImage.symbolImage(for:)(&v76);
      outlined destroy of SymbolImageDescription(&v76);
      ControlsButtonProvider.accessory.setter(v56, v57);
    }

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v35, v36);
    outlined destroy of SymbolImageDescribing?(v40);
    outlined destroy of SymbolImageDescribing?(v39);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v35, v36);
    outlined destroy of SymbolImageDescribing?(v40);
    outlined destroy of SymbolImageDescribing?(v39);
    outlined destroy of SymbolImageDescribing?(&v76);
  }

  return v43;
}

Swift::Void __swiftcall ConversationControlsPrimaryActionButtonProvider.buttonChanged()()
{
  ControlsButtonProvider.buttonChanged()();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(v0 + 41) == 2)
    {
      type metadata accessor for UILayoutPriority(0);
      lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority();
      v3 = v2;
      OUTLINED_FUNCTION_1_88(v3, v4, v5, v6, v7, v8, v9, v10, v21, v23, 0, 16256, 0);
      LODWORD(v11) = v25;
      [v2 setContentCompressionResistancePriority:1 forAxis:v11];

      v12 = v2;
      OUTLINED_FUNCTION_1_88(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24, 0, 16256, 0);
      LODWORD(v20) = v26;
      [v2 setContentHuggingPriority:0 forAxis:v20];
    }
  }
}

void ConversationControlsPrimaryActionButtonProvider.buttonConfiguration.getter(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31UIConfigurationColorTransformerVSgMd, &_s5UIKit31UIConfigurationColorTransformerVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for UIButton.Configuration.Size();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ConversationControlsMenuButtonProvider.buttonConfiguration.getter(a1);
  if (*(v1 + 184) == 1)
  {
    (*(v8 + 104))(v11, *MEMORY[0x1E69DC568], v6);
    UIButton.Configuration.buttonSize.setter();
  }

  v12 = UIButton.Configuration.preferredSymbolConfigurationForImage.getter();
  if (!v12)
  {
    v12 = [objc_opt_self() unspecifiedConfiguration];
  }

  v13 = v12;
  v14 = [objc_opt_self() configurationWithWeight_];
  v15 = [v13 configurationByApplyingConfiguration_];

  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  if (static Platform.current.getter() == 2)
  {
    UIConfigurationColorTransformer.init(_:)();
    v16 = type metadata accessor for UIConfigurationColorTransformer();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v16);
    UIButton.Configuration.imageColorTransformer.setter();
  }
}

id closure #1 in ConversationControlsPrimaryActionButtonProvider.buttonConfiguration.getter()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

UIMenu ConversationControlsPrimaryActionButtonProvider.menu(for:)(void *a1, uint64_t a2)
{
  v3 = *(v2 + 192);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICustomViewMenuElement, 0x1E69DC910);
    v8 = (v3 + 32);
    do
    {
      v9 = swift_allocObject();
      v10 = *v8++;
      swift_weakInit();
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      *(v11 + 24) = v10;
      *(v11 + 40) = a1;
      *(v11 + 48) = a2;
      swift_unknownObjectRetain();
      v12 = a1;
      @nonobjc UICustomViewMenuElement.__allocating_init(viewProvider:)(partial apply for closure #1 in closure #1 in ConversationControlsPrimaryActionButtonProvider.menu(for:), v11);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v4;
    }

    while (v4);
    v5 = v21;
  }

  v13 = [objc_opt_self() conversationKit];
  swift__string._object = 0xE000000000000000;
  v14.value._countAndFlagsBits = 0x61737265766E6F43;
  v14.value._object = 0xEF74694B6E6F6974;
  v15._object = 0x80000001BC501580;
  v15._countAndFlagsBits = 0xD000000000000027;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  swift__string._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v14, v13, v16, swift__string);

  if (v5 >> 62)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
    preferredElementSize = v5;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
  v22.value.super.isa = 0;
  v22.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v17, 0, v22, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v20);
}

char *closure #1 in closure #1 in ConversationControlsPrimaryActionButtonProvider.menu(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  v11 = Strong;
  ObjectType = swift_getObjectType();
  v13 = (*(a4 + 184))(ObjectType, a4);
  v14 = [v13 isSystemProvider];

  v32 = a6;
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v17 = *(v11 + 216);

    v15 = specialized ConversationControlsApertureHelper.makeVoipBadgeIcon(for:)(a3, v17, ObjectType, a4);

    if (v15)
    {
    }
  }

  v18 = type metadata accessor for ConversationControlsBadgingAvatarViewController();
  v19 = objc_opt_self();
  v31 = v15;
  v20 = [v19 clearColor];
  v21 = swift_unknownObjectRetain();
  v22 = specialized ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(v21, 0, v15, v20, v18, ObjectType, a4);
  v23 = (*(a4 + 72))(ObjectType, a4);
  v25 = v24;
  v26 = [v22 view];
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = a5;
  v28[4] = v32;
  v28[5] = a3;
  v28[6] = a4;
  objc_allocWithZone(type metadata accessor for ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView());
  swift_unknownObjectRetain();

  v29 = a5;
  v16 = ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.init(title:accessoryView:onSelection:)(v23, v25, v26, partial apply for closure #1 in closure #1 in closure #1 in ConversationControlsPrimaryActionButtonProvider.menu(for:), v28);

  return v16;
}

uint64_t closure #1 in closure #1 in closure #1 in ConversationControlsPrimaryActionButtonProvider.menu(for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Notification();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v16 = objc_opt_self();
      v17 = a2;
      v18 = [v16 defaultCenter];
      static Notification.contextMenuDidDismiss(target:)(v15);
      NSNotificationCenter.post(_:afterAnimatorCompletes:)(v11, 0);

      (*(v9 + 8))(v11, v8);
    }

    v19 = *(v13 + 200);
    if (v19)
    {
      v19(a4, a5);
    }
  }

  return result;
}

id closure #1 in variable initialization expression of ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.titleLabel(void *a1)
{
  [a1 setAlpha_];
  v1 = [objc_opt_self() systemFontOfSize_];
  [a1 setFont_];

  [a1 setNumberOfLines_];
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];

  return a1;
}

char *ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.init(title:accessoryView:onSelection:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtCC15ConversationKit47ConversationControlsPrimaryActionButtonProvider19AvatarSelectionView_titleLabel;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v13 = closure #1 in variable initialization expression of ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.titleLabel(v12);

  *&v5[v11] = v13;
  v14 = &v5[OBJC_IVAR____TtCC15ConversationKit47ConversationControlsPrimaryActionButtonProvider19AvatarSelectionView_onSelection];
  *v14 = a4;
  *(v14 + 1) = a5;
  v52.receiver = v5;
  v52.super_class = type metadata accessor for ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView();
  super_class = v52.super_class;

  v15 = objc_msgSendSuper2(&v52, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v16 = OBJC_IVAR____TtCC15ConversationKit47ConversationControlsPrimaryActionButtonProvider19AvatarSelectionView_titleLabel;
  v17 = *&v15[OBJC_IVAR____TtCC15ConversationKit47ConversationControlsPrimaryActionButtonProvider19AvatarSelectionView_titleLabel];
  v18 = v15;
  outlined bridged method (mbnn) of @objc UILabel.text.setter(a1, a2, v17);
  v19 = *&v15[v16];
  v20 = v18;
  [v20 addSubview_];
  v49 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BC4BA920;
  v22 = [*&v15[v16] leadingAnchor];
  v23 = [v20 leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:16.0];

  *(v21 + 32) = v24;
  v25 = [v20 trailingAnchor];

  v26 = [*&v15[v16] trailingAnchor];
  v27 = OUTLINED_FUNCTION_0_104();
  v29 = [v27 v28];

  *(v21 + 40) = v29;
  v30 = [*&v15[v16] topAnchor];
  v31 = [v20 topAnchor];

  v32 = OUTLINED_FUNCTION_0_104();
  v34 = [v32 v33];

  *(v21 + 48) = v34;
  v35 = [*&v15[v16] centerYAnchor];
  v36 = [v20 centerYAnchor];

  v37 = [v35 constraintEqualToAnchor_];
  *(v21 + 56) = v37;
  v38 = [v20 bottomAnchor];

  v39 = [*&v15[v16] bottomAnchor];
  v40 = OUTLINED_FUNCTION_0_104();
  v42 = [v40 v41];

  *(v21 + 64) = v42;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v49 activateConstraints_];

  if (a3)
  {
    v44 = v20;
    v45 = a3;
    ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.addAccessoryView(_:)(v45);
  }

  v51[3] = super_class;
  v51[0] = v20;
  objc_allocWithZone(MEMORY[0x1E69DD060]);
  v46 = v20;
  v47 = @nonobjc UITapGestureRecognizer.init(target:action:)(v51, sel_onTap);
  [v46 addGestureRecognizer_];

  return v46;
}

id ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}