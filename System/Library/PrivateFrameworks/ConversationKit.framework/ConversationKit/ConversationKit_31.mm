void HomeButton.body.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v38 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5ImageVGMd, &_s7SwiftUI6ButtonVyAA5ImageVGMR);
  OUTLINED_FUNCTION_1();
  v36 = v6;
  v37 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarfE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarfE0VQo_MR);
  OUTLINED_FUNCTION_1();
  v35 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;

  v23 = v3;
  if ((v1 & 1) == 0)
  {
    v24 = static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v24, &dword_1BBC58000, v25, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v22 = (*(v17 + 8))(v21, v15);
    v23 = v40;
  }

  v26 = (*(*v23 + 864))(v22);

  v27 = 1;
  v28 = v38;
  if (v26)
  {
    OUTLINED_FUNCTION_8_61();
    v29 = swift_allocObject();
    *(v29 + 16) = v3;
    *(v29 + 24) = v1 & 1;

    Button.init(action:label:)();
    v39 = 1;
    OUTLINED_FUNCTION_1_9();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v30, v31, v32, v33);
    lazy protocol witness table accessor for type ScreenSharingToolbarButtonStyle and conformance ScreenSharingToolbarButtonStyle();
    v34 = v37;
    View.buttonStyle<A>(_:)();
    (*(v36 + 8))(v9, v34);
    (*(v35 + 32))(v28, v14, v10);
    v27 = 0;
  }

  __swift_storeEnumTagSinglePayload(v28, v27, 1, v10);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in HomeButton.body.getter(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v9 = static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v9, &dword_1BBC58000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v8 = (*(v5 + 8))(v7, v4);
    a1 = v12[1];
  }

  (*(*a1 + 872))(v8);
}

uint64_t closure #2 in HomeButton.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t ZoomButton.init()()
{
  type metadata accessor for ScreenSharingSpectatorViewModel(0);
  OUTLINED_FUNCTION_0_111();
  v2 = lazy protocol witness table accessor for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel(v0, v1, &protocol conformance descriptor for ScreenSharingSpectatorViewModel);
  return OUTLINED_FUNCTION_12_45(v2);
}

void RemoteControlButton.body.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v86 = v4;
  type metadata accessor for AccessibilityTraits();
  OUTLINED_FUNCTION_1();
  v82 = v6;
  v83 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v81 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5ImageVGMd, &_s7SwiftUI6ButtonVyAA5ImageVGMR);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v78 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v78 - v16;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v80 = &v78 - v21;
  v22 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v87 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  v27 = v26 - v25;

  countAndFlagsBits = v3;
  if ((v1 & 1) == 0)
  {
    v30 = static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    OUTLINED_FUNCTION_10_48(v30, &dword_1BBC58000, v32, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    EnvironmentValues.init()();
    OUTLINED_FUNCTION_9_53();

    v33 = OUTLINED_FUNCTION_6_62();
    v28 = v34(v33);
    countAndFlagsBits = v88._countAndFlagsBits;
  }

  v35 = (*(*countAndFlagsBits + 752))(v28);

  if (RemoteControlRequirements.isComplete.getter(v35))
  {
    OUTLINED_FUNCTION_8_61();
    v36 = swift_allocObject();
    *(v36 + 16) = v3;
    *(v36 + 24) = v1 & 1;

    Button.init(action:label:)();

    v38 = v3;
    if ((v1 & 1) == 0)
    {
      v39 = static os_log_type_t.fault.getter();
      v40 = static Log.runtimeIssuesLog.getter();
      OUTLINED_FUNCTION_10_48(v39, &dword_1BBC58000, v41, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

      EnvironmentValues.init()();
      OUTLINED_FUNCTION_9_53();

      v42 = OUTLINED_FUNCTION_6_62();
      v37 = v43(v42);
      v38 = v88._countAndFlagsBits;
    }

    (*(*v38 + 648))(&v88, v37);

    v44 = (v88._countAndFlagsBits >> 61) - 2 < 3;
    outlined consume of RemoteControlState(v88._countAndFlagsBits);
    LOBYTE(v88._countAndFlagsBits) = 1;
    BYTE1(v88._countAndFlagsBits) = v44;
    OUTLINED_FUNCTION_1_9();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v45, v46, v47, v48);
    lazy protocol witness table accessor for type ScreenSharingToolbarButtonStyle and conformance ScreenSharingToolbarButtonStyle();
    View.buttonStyle<A>(_:)();
    (*(v11 + 8))(v14, v9);

    v50 = v3;
    if ((v1 & 1) == 0)
    {
      v51 = static os_log_type_t.fault.getter();
      v52 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v51, &dword_1BBC58000, v52, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      EnvironmentValues.init()();
      OUTLINED_FUNCTION_9_53();

      v53 = OUTLINED_FUNCTION_6_62();
      v49 = v54(v53);
      v50 = v88._countAndFlagsBits;
    }

    v55 = (*(*v50 + 360))(v49);

    KeyPath = swift_getKeyPath();
    v57 = swift_allocObject();
    *(v57 + 16) = v55 & 1;
    v58 = &v17[*(v79 + 36)];
    *v58 = KeyPath;
    v58[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_0;
    v58[2] = v57;
    v59 = [objc_opt_self() conversationKit];
    v89._object = 0xE000000000000000;
    v60.value._countAndFlagsBits = 0x61737265766E6F43;
    v60.value._object = 0xEF74694B6E6F6974;
    v61._object = 0x80000001BC5030D0;
    v61._countAndFlagsBits = 0xD000000000000021;
    v62._countAndFlagsBits = 0;
    v62._object = 0xE000000000000000;
    v89._countAndFlagsBits = 0;
    v63 = NSLocalizedString(_:tableName:bundle:value:comment:)(v61, v60, v59, v62, v89);

    v88 = v63;
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type String and conformance String();
    View.accessibilityLabel<A>(_:)();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMR);

    v65 = v81;
    if ((v1 & 1) == 0)
    {
      v66 = static os_log_type_t.fault.getter();
      v67 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v66, &dword_1BBC58000, v67, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      EnvironmentValues.init()();
      OUTLINED_FUNCTION_9_53();

      v64 = (*(v87 + 8))(v27, v22);
      v3 = v88._countAndFlagsBits;
    }

    (*(*v3 + 648))(&v88, v64);

    v68 = (v88._countAndFlagsBits >> 61) - 2;
    outlined consume of RemoteControlState(v88._countAndFlagsBits);
    v69 = v82;
    if (v68 >= 3)
    {
      v88._countAndFlagsBits = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI19AccessibilityTraitsVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI19AccessibilityTraitsVGMR);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_1BC4BA940;
      static AccessibilityTraits.isSelected.getter();
      v88._countAndFlagsBits = v70;
    }

    lazy protocol witness table accessor for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel(&lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI19AccessibilityTraitsVGMd, &_sSay7SwiftUI19AccessibilityTraitsVGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AccessibilityTraits] and conformance [A], &_sSay7SwiftUI19AccessibilityTraitsVGMd, &_sSay7SwiftUI19AccessibilityTraitsVGMR, MEMORY[0x1E69E6328]);
    v74 = v83;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v75 = v80;
    v76 = v84;
    v73 = v85;
    MEMORY[0x1BFB1E4A0](v65, v85);
    (*(v69 + 8))(v65, v74);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v76, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGMR);
    v77 = v75;
    v72 = v86;
    sub_1BBCEA1CC(v77, v86);
    v71 = 0;
  }

  else
  {
    v71 = 1;
    v73 = v85;
    v72 = v86;
  }

  __swift_storeEnumTagSinglePayload(v72, v71, 1, v73);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in RemoteControlButton.body.getter(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v9 = static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v9, &dword_1BBC58000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v8 = (*(v5 + 8))(v7, v4);
    a1 = v12[1];
  }

  (*(*a1 + 880))(v8);
}

uint64_t closure #2 in RemoteControlButton.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t CompactScreenSharingSpectatorToolbar.body.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_61();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_17_40(v3);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = partial apply for closure #1 in CompactScreenSharingSpectatorToolbar.body.getter;
  *(a1 + 24) = v1;
  *(a1 + 32) = closure #2 in CompactScreenSharingSpectatorToolbar.body.getter;
  *(a1 + 40) = 0;
  *(a1 + 48) = closure #2 in CompactScreenSharingSpectatorToolbar.body.getter;
  *(a1 + 56) = 0;
  *(a1 + 64) = closure #2 in CompactScreenSharingSpectatorToolbar.body.getter;
  *(a1 + 72) = 0;
}

uint64_t closure #2 in CompactScreenSharingSpectatorToolbar.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ScreenSharingSpectatorViewModel(0);
  OUTLINED_FUNCTION_0_111();
  v4 = lazy protocol witness table accessor for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel(v2, v3, &protocol conformance descriptor for ScreenSharingSpectatorViewModel);
  result = OUTLINED_FUNCTION_11_51(v4);
  *a1 = result;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t RegularScreenSharingSpectatorToolbar.body.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_61();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_17_40(v3);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = partial apply for closure #1 in RegularScreenSharingSpectatorToolbar.body.getter;
  *(a1 + 24) = v1;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = closure #2 in RegularScreenSharingSpectatorToolbar.body.getter;
  *(a1 + 72) = 0;
}

uint64_t closure #1 in CompactScreenSharingSpectatorToolbar.body.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;

  if ((a2 & 1) == 0)
  {
    v14 = static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    OUTLINED_FUNCTION_10_48(v14, &dword_1BBC58000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v13 = (*(v8 + 8))(v12, v6);
    a1 = v22;
  }

  v17 = (*(*a1 + 792))(v13);
  v19 = v18;

  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMd, &_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMR) + 40);
  *(a3 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  result = swift_storeEnumTagMultiPayload();
  *a3 = v17;
  a3[1] = v19;
  return result;
}

uint64_t closure #2 in RegularScreenSharingSpectatorToolbar.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ScreenSharingSpectatorViewModel(0);
  lazy protocol witness table accessor for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel(&lazy protocol witness table cache variable for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel, type metadata accessor for ScreenSharingSpectatorViewModel, &protocol conformance descriptor for ScreenSharingSpectatorViewModel);
  v2 = Environment.init<A>(_:)();
  v4 = v3;
  v5 = Environment.init<A>(_:)();
  v7 = v6;
  result = Environment.init<A>(_:)();
  *a1 = v2;
  *(a1 + 8) = v4 & 1;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = result;
  *(a1 + 40) = v9 & 1;
  return result;
}

void ScreenSharingSpectatorToolbar.horizontalSizeClass.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_8();
  v32 = v31 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v23, &a9 - v34, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v35, v25, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  }

  else
  {
    v36 = static os_log_type_t.fault.getter();
    v37 = static Log.runtimeIssuesLog.getter();
    OUTLINED_FUNCTION_10_48(v36, &dword_1BBC58000, v38, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v28 + 8))(v32, v26);
  }

  OUTLINED_FUNCTION_30_0();
}

void *ScreenSharingSpectatorToolbar.body.getter@<X0>(uint64_t a1@<X8>)
{
  result = ScreenSharingSpectatorToolbar.resolvedToolbarForSizeClass.getter(&v5);
  v3 = v6;
  v4 = v7;
  *a1 = v5;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;
  return result;
}

uint64_t ScreenSharingSpectatorToolbar.init()@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  swift_storeEnumTagMultiPayload();
  v3 = a2 + *(type metadata accessor for ScreenSharingSpectatorToolbar(0) + 20);
  type metadata accessor for ScreenSharingSpectatorViewModel(0);
  OUTLINED_FUNCTION_0_111();
  v6 = lazy protocol witness table accessor for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel(v4, v5, &protocol conformance descriptor for ScreenSharingSpectatorViewModel);
  result = OUTLINED_FUNCTION_12_45(v6);
  *v3 = result;
  v3[8] = v8 & 1;
  return result;
}

uint64_t default argument 0 of ScreenSharingSpectatorToolbar.init(horizontalSizeClass:)@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ScreenSharingSpectatorToolbar.init(horizontalSizeClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(a1, a2, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMR);
  v3 = a2 + *(type metadata accessor for ScreenSharingSpectatorToolbar(0) + 20);
  type metadata accessor for ScreenSharingSpectatorViewModel(0);
  OUTLINED_FUNCTION_0_111();
  v6 = lazy protocol witness table accessor for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel(v4, v5, &protocol conformance descriptor for ScreenSharingSpectatorViewModel);
  result = OUTLINED_FUNCTION_12_45(v6);
  *v3 = result;
  *(v3 + 8) = v8 & 1;
  return result;
}

uint64_t key path getter for EnvironmentValues.isEnabled : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA5ImageVGMd, &_s7SwiftUI6ButtonVyAA5ImageVGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Image> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5ImageVGMd, &_s7SwiftUI6ButtonVyAA5ImageVGMR, MEMORY[0x1E697D680]);
    lazy protocol witness table accessor for type ScreenSharingToolbarButtonStyle and conformance ScreenSharingToolbarButtonStyle();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMR, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6VStackVyAA05TupleE0VyACyAA6HStackVyAMyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGSgSg_ACyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameV0VG_A_SgtGGG_15ConversationKit09ShareCardiG0VQo_AA01_no9TransformQ0VySbGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6VStackVyAA05TupleE0VyACyAA6HStackVyAMyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGSgSg_ACyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameV0VG_A_SgtGGG_15ConversationKit09ShareCardiG0VQo_AA01_no9TransformQ0VySbGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAGyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGSgSg_AIyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameS0VG_AWSgtGGGMd, &_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAGyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGSgSg_AIyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameS0VG_AWSgtGGGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>??, ModifiedContent<Text, _FixedSizeLayout>)>>, _FlexFrameLayout>, Text?)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAGyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGSgSg_AIyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameS0VG_AWSgtGGGMd, &_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAGyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGSgSg_AIyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameS0VG_AWSgtGGGMR, MEMORY[0x1E697D680]);
    lazy protocol witness table accessor for type ShareCardButtonStyle and conformance ShareCardButtonStyle();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMR, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit011CallControljiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit011CallControljiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    type metadata accessor for CallControlTextButtonStyle(255);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x1E697D680]);
    lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(&lazy protocol witness table cache variable for type CallControlTextButtonStyle and conformance CallControlTextButtonStyle, type metadata accessor for CallControlTextButtonStyle, &protocol conformance descriptor for CallControlTextButtonStyle);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMR, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RegularScreenSharingSpectatorToolbar and conformance RegularScreenSharingSpectatorToolbar()
{
  result = lazy protocol witness table cache variable for type RegularScreenSharingSpectatorToolbar and conformance RegularScreenSharingSpectatorToolbar;
  if (!lazy protocol witness table cache variable for type RegularScreenSharingSpectatorToolbar and conformance RegularScreenSharingSpectatorToolbar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegularScreenSharingSpectatorToolbar and conformance RegularScreenSharingSpectatorToolbar);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompactScreenSharingSpectatorToolbar and conformance CompactScreenSharingSpectatorToolbar()
{
  result = lazy protocol witness table cache variable for type CompactScreenSharingSpectatorToolbar and conformance CompactScreenSharingSpectatorToolbar;
  if (!lazy protocol witness table cache variable for type CompactScreenSharingSpectatorToolbar and conformance CompactScreenSharingSpectatorToolbar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompactScreenSharingSpectatorToolbar and conformance CompactScreenSharingSpectatorToolbar);
  }

  return result;
}

uint64_t type metadata accessor for ScreenSharingSpectatorToolbar(uint64_t a1)
{
  result = type metadata singleton initialization cache for ScreenSharingSpectatorToolbar;
  if (!type metadata singleton initialization cache for ScreenSharingSpectatorToolbar)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ScreenSharingSpectatorToolbar(uint64_t a1)
{
  type metadata accessor for Environment<UserInterfaceSizeClass?>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<ScreenSharingSpectatorViewModel>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Environment<ScreenSharingSpectatorViewModel>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<ScreenSharingSpectatorViewModel>)
  {
    type metadata accessor for ScreenSharingSpectatorViewModel(255);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<ScreenSharingSpectatorViewModel>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarfE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarfE0VQo_SgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA5ImageVGMd, &_s7SwiftUI6ButtonVyAA5ImageVGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Image> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5ImageVGMd, &_s7SwiftUI6ButtonVyAA5ImageVGMR, MEMORY[0x1E697D680]);
    lazy protocol witness table accessor for type ScreenSharingToolbarButtonStyle and conformance ScreenSharingToolbarButtonStyle();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<RegularScreenSharingSpectatorToolbar, CompactScreenSharingSpectatorToolbar> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<RegularScreenSharingSpectatorToolbar, CompactScreenSharingSpectatorToolbar> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<RegularScreenSharingSpectatorToolbar, CompactScreenSharingSpectatorToolbar> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy15ConversationKit36RegularScreenSharingSpectatorToolbarVAD07CompacthijK0VGMd, &_s7SwiftUI19_ConditionalContentVy15ConversationKit36RegularScreenSharingSpectatorToolbarVAD07CompacthijK0VGMR);
    lazy protocol witness table accessor for type RegularScreenSharingSpectatorToolbar and conformance RegularScreenSharingSpectatorToolbar();
    lazy protocol witness table accessor for type CompactScreenSharingSpectatorToolbar and conformance CompactScreenSharingSpectatorToolbar();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<RegularScreenSharingSpectatorToolbar, CompactScreenSharingSpectatorToolbar> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t InCallControlsPTTOpenAppCell.cellContentConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  v10 = OBJC_IVAR____TtC15ConversationKit28InCallControlsPTTOpenAppCell____lazy_storage___cellContentConfiguration;
  swift_beginAccess();
  outlined init with copy of UIListContentConfiguration?(v1 + v10, v9);
  v11 = type metadata accessor for UIListContentConfiguration();
  if (__swift_getEnumTagSinglePayload(v9, 1, v11) != 1)
  {
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  closure #1 in InCallControlsPTTOpenAppCell.cellContentConfiguration.getter();
  (*(*(v11 - 8) + 16))(v6, a1, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  swift_beginAccess();
  outlined assign with take of UIListContentConfiguration?(v6, v1 + v10);
  return swift_endAccess();
}

uint64_t closure #1 in InCallControlsPTTOpenAppCell.cellContentConfiguration.getter()
{
  MEMORY[0x1BFB21750]();
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69DDCF8];
  v2 = [v0 preferredFontForTextStyle_];
  UIFont.caseSensitive()();

  v3 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v3(v10, 0);
  if (one-time initialization token for tableViewCellTitleLabel != -1)
  {
    swift_once();
  }

  v4 = static Colors.InCallControls.tableViewCellTitleLabel;
  v5 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v5(v10, 0);
  v6 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontForContentSizeCategory.setter();
  v6(v10, 0);
  v7 = [v0 preferredFontForTextStyle_];
  isa = UIFont.caseSensitive()().super.isa;

  InCallControlsPTTOpenAppCell.verticalInset(_:scaledToFont:)(isa, 18.5);
  return UIListContentConfiguration.directionalLayoutMargins.setter();
}

id InCallControlsPTTOpenAppCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id InCallControlsPTTOpenAppCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  *(v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsPTTOpenAppCell_appIconImageView) = 0;
  v1 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_0_11(v1);
  v6 = type metadata accessor for InCallControlsPTTOpenAppCell(0);
  v2 = OUTLINED_FUNCTION_18_1();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

uint64_t type metadata accessor for InCallControlsPTTOpenAppCell(uint64_t a1)
{
  result = type metadata singleton initialization cache for InCallControlsPTTOpenAppCell;
  if (!type metadata singleton initialization cache for InCallControlsPTTOpenAppCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void InCallControlsPTTOpenAppCell.configure(with:)(uint64_t *a1)
{
  v2 = v1;
  type metadata accessor for UICellAccessory();
  OUTLINED_FUNCTION_1();
  v77 = v5;
  v78 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v76 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v66 - v10;
  type metadata accessor for UICellAccessory.Placement();
  OUTLINED_FUNCTION_1();
  v69 = v12;
  v70 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v71 = v14 - v13;
  type metadata accessor for UICellAccessory.CustomViewConfiguration();
  OUTLINED_FUNCTION_1();
  v74 = v16;
  v75 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v73 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v20 = OUTLINED_FUNCTION_22(v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - v21;
  v23 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_8();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v66 - v32;
  static UIBackgroundConfiguration.preferredInCallControlsBackground.getter();
  v34 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v34);
  MEMORY[0x1BFB216F0](v33);
  [v2 setAutomaticallyUpdatesBackgroundConfiguration_];
  InCallControlsPTTOpenAppCell.cellContentConfiguration.getter(v29);
  v35 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v36 = swift_allocObject();
  v68 = xmmword_1BC4BA940;
  *(v36 + 16) = xmmword_1BC4BA940;
  v38 = *a1;
  v37 = a1[1];
  *(v36 + 56) = MEMORY[0x1E69E6158];
  *(v36 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v36 + 32) = v38;
  *(v36 + 40) = v37;
  v39 = one-time initialization token for conversationKit;

  if (v39 != -1)
  {
    swift_once();
  }

  v80._object = 0xE000000000000000;
  v40._object = 0x80000001BC503140;
  v40._countAndFlagsBits = 0xD00000000000001ELL;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v80._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v40, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v41, v80);
  if (*(v36 + 16))
  {
    String.init(format:locale:arguments:)();
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  UIListContentConfiguration.text.setter();
  v79[3] = v23;
  v79[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v79);
  (*(v25 + 16))(boxed_opaque_existential_1, v29, v23);
  MEMORY[0x1BFB216E0](v79);
  v43 = objc_opt_self();
  v44 = MEMORY[0x1BFB209B0](a1[2], a1[3]);
  v45 = [v43 _applicationIconImageForBundleIdentifier_format_];

  v46 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v47 = *&v2[OBJC_IVAR____TtC15ConversationKit28InCallControlsPTTOpenAppCell_appIconImageView];
  *&v2[OBJC_IVAR____TtC15ConversationKit28InCallControlsPTTOpenAppCell_appIconImageView] = v46;
  v48 = v46;

  if (v48)
  {
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd, &_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMR) + 48);
    v67 = v23;
    v50 = v71;
    v51 = (v71 + v49);
    v52 = *MEMORY[0x1E69DBF28];
    type metadata accessor for UICellAccessory.DisplayedState();
    OUTLINED_FUNCTION_7_0();
    (*(v53 + 104))(v50, v52);
    *v51 = OUTLINED_FUNCTION_14_0;
    v51[1] = 0;
    (*(v69 + 104))(v50, *MEMORY[0x1E69DBF60], v70);
    v54 = *MEMORY[0x1E69DBF30];
    v55 = type metadata accessor for UICellAccessory.LayoutDimension();
    OUTLINED_FUNCTION_7_0();
    v57 = v72;
    (*(v56 + 104))(v72, v54, v55);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v55);
    v58 = v48;
    v59 = v73;
    UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
    v60 = v76;
    static UICellAccessory.customView(configuration:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd, &_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMR);
    v61 = v77;
    v62 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v68;
    v64 = v63 + v62;
    v65 = v78;
    (*(v61 + 16))(v64, v60, v78);
    UICollectionViewListCell.accessories.setter();
    [v2 setAccessibilityTraits_];

    (*(v61 + 8))(v60, v65);
    (*(v74 + 8))(v59, v75);
    (*(v25 + 8))(v29, v67);
  }

  else
  {
    (*(v25 + 8))(v29, v23);
  }
}

id InCallControlsPTTOpenAppCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsPTTOpenAppCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsPTTOpenAppCell_appIconImageView) = 0;
  v1 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_0_11(v1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double InCallControlsPTTOpenAppCell.verticalInset(_:scaledToFont:)(void *a1, double a2)
{
  v3 = [a1 fontDescriptor];
  v4 = [v3 objectForKey_];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    type metadata accessor for UIFontTextStyle(0);
    if (swift_dynamicCast())
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
      [v5 scaledValueForValue_];
      a2 = v6;
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_sypSgMd, &_sypSgMR);
  }

  return a2;
}

id InCallControlsPTTOpenAppCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InCallControlsPTTOpenAppCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for InCallControlsPTTOpenAppCell(uint64_t a1)
{
  type metadata accessor for UIListContentConfiguration?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of InCallControlsPTTOpenAppCell.configure(with:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  v6[0] = *a1;
  v6[1] = v2;
  v7 = v3;
  v8 = *(a1 + 40);
  return v4(v6);
}

void type metadata accessor for UIListContentConfiguration?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIListContentConfiguration?)
  {
    type metadata accessor for UIListContentConfiguration();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UIListContentConfiguration?);
    }
  }
}

uint64_t outlined init with copy of UIListContentConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of UIListContentConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SystemApertureInCallWaveformTrailingView.__allocating_init(call:numBands:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 sharedInstance];
  v8 = [objc_opt_self() defaultCenter];
  v9 = objc_allocWithZone(type metadata accessor for AudioPowerSpectrumViewModel(0));
  AudioPowerSpectrumViewModel.init(call:callCenter:notificationCenter:numBands:)();
  v10 = (*(v3 + 232))();

  return v10;
}

id SystemApertureInCallWaveformTrailingView.backdropLayer.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___backdropLayer;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___backdropLayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___backdropLayer);
  }

  else
  {
    v4 = closure #1 in SystemApertureInCallWaveformTrailingView.backdropLayer.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in SystemApertureInCallWaveformTrailingView.backdropLayer.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  v1 = MEMORY[0x1BFB209B0](0x4C73756C70, 0xE500000000000000);
  [v0 setCompositingFilter_];

  LODWORD(v2) = 1057803469;
  [v0 setOpacity_];

  return v0;
}

id SystemApertureInCallWaveformTrailingView.localAudioView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___localAudioView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___localAudioView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___localAudioView);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_numBands);
    v6 = objc_allocWithZone(type metadata accessor for DeviceWaveformView());
    v7 = DeviceWaveformView.init(numBands:)(v5);
    v8 = [v7 layer];
    CATransform3DMakeScale(&v12, -1.0, 1.0, 1.0);
    [v8 setTransform_];

    v9 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id SystemApertureInCallWaveformTrailingView.remoteAudioView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___remoteAudioView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___remoteAudioView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___remoteAudioView);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_numBands);
    v6 = objc_allocWithZone(type metadata accessor for DeviceWaveformView());
    v7 = DeviceWaveformView.init(numBands:)(v5);
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id SystemApertureInCallWaveformTrailingView.init(viewModel:numBands:)(void *a1, uint64_t a2)
{
  swift_getObjectType();
  *&v2[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_cancellables] = MEMORY[0x1E69E7CD0];
  *&v2[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___backdropLayer] = 0;
  *&v2[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___localAudioView] = 0;
  *&v2[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___remoteAudioView] = 0;
  *&v2[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_viewModel] = a1;
  v5 = a1;
  static WaveformConfigurations.framerateRange.getter();
  v6 = &v2[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_framerateRange];
  *v6 = v7;
  *(v6 + 1) = v8;
  *(v6 + 2) = v9;
  *&v2[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_numBands] = a2;
  v28.receiver = v2;
  v28.super_class = type metadata accessor for SystemApertureInCallWaveformTrailingView();
  v10 = objc_msgSendSuper2(&v28, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor_];

  [v12 setClipsToBounds_];
  v14 = [v12 layer];
  [v14 setCornerCurve_];

  SystemApertureInCallWaveformTrailingView.configureSubviews()();
  SystemApertureInCallWaveformTrailingView.observeViewModel()();
  if (one-time initialization token for systemAperture != -1)
  {
    swift_once();
  }

  v29._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0x46455641575F5841;
  v15._object = 0xEB000000004D524FLL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, xmmword_1EDDCCED0, static LocalizationSource.systemAperture, v16, v29);
  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v17._countAndFlagsBits, v17._object, v12);

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, &static Logger.conversationControls);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136446210;
    v23 = _typeName(_:qualified:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v27);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1BBC58000, v19, v20, "[SystemAperture] %{public}s created", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  return v12;
}

id SystemApertureInCallWaveformTrailingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SystemApertureInCallWaveformTrailingView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_cancellables) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___backdropLayer) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___localAudioView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___remoteAudioView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id SystemApertureInCallWaveformTrailingView.__deallocating_deinit()
{
  v1 = v0;
  swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_viewModel];
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x248);
  v4 = v2;
  v3(0x74696E696564, 0xE600000000000000);

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Logger.conversationControls);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = _typeName(_:qualified:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1BBC58000, v6, v7, "[SystemAperture] %{public}s deinit", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v13 = type metadata accessor for SystemApertureInCallWaveformTrailingView();
  v16.receiver = v1;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, sel_dealloc);
}

id SystemApertureInCallWaveformTrailingView.frame.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemApertureInCallWaveformTrailingView();
  return objc_msgSendSuper2(&v2, sel_frame);
}

void SystemApertureInCallWaveformTrailingView.frame.setter()
{
  OUTLINED_FUNCTION_20_2();
  v1 = type metadata accessor for SystemApertureInCallWaveformTrailingView();
  v13.receiver = v0;
  v13.super_class = v1;
  objc_msgSendSuper2(&v13, sel_frame);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_18_1();
  objc_msgSendSuper2(v11, v12, v10, v0, v1);
  SystemApertureInCallWaveformTrailingView.frame.didset(v3, v5, v7, v9);
}

void SystemApertureInCallWaveformTrailingView.frame.didset(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  [v4 frame];
  v17.origin.x = v9;
  v17.origin.y = v10;
  v17.size.width = v11;
  v17.size.height = v12;
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  if (!CGRectEqualToRect(v15, v17))
  {
    v13 = [v4 layer];
    [v4 frame];
    [v13 setCornerRadius_];
  }
}

Swift::Void __swiftcall SystemApertureInCallWaveformTrailingView.layoutSubviews()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SystemApertureInCallWaveformTrailingView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = SystemApertureInCallWaveformTrailingView.backdropLayer.getter();
  OUTLINED_FUNCTION_3_88(v1, sel_setFrame_);

  v2 = SystemApertureInCallWaveformTrailingView.localAudioView.getter();
  OUTLINED_FUNCTION_3_88(v2, sel_setFrame_);

  v3 = SystemApertureInCallWaveformTrailingView.remoteAudioView.getter();
  OUTLINED_FUNCTION_3_88(v3, sel_setFrame_);
}

CGSize __swiftcall SystemApertureInCallWaveformTrailingView.sizeThatFits(_:)(CGSize a1)
{
  swift_getObjectType();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, &static Logger.conversationControls);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    v6 = _typeName(_:qualified:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1BBC58000, v2, v3, "[SystemAperture] %{public}s sizeThatFits", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v9 = 43.0;
  v10 = 19.0;
  result.height = v10;
  result.width = v9;
  return result;
}

uint64_t SystemApertureInCallWaveformTrailingView.shouldReplace(_:)(void *a1)
{
  type metadata accessor for SystemApertureInCallWaveformTrailingView();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_viewModel);
    v5 = *(v1 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_viewModel);
    type metadata accessor for AudioPowerSpectrumViewModel(0);
    v6 = a1;
    v7 = v4;
    v8 = v5;
    v9 = static NSObject.== infix(_:_:)();

    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

Swift::Void __swiftcall SystemApertureInCallWaveformTrailingView.start()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_75(&dword_1BBC58000, v5, v6, "Starting waveform");
    OUTLINED_FUNCTION_27();
  }

  (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_viewModel)) + 0x240))();
}

Swift::Void __swiftcall SystemApertureInCallWaveformTrailingView.stop()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_75(&dword_1BBC58000, v5, v6, "Stopping waveform");
    OUTLINED_FUNCTION_27();
  }

  (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_viewModel)) + 0x248))(0x2928706F7473, 0xE600000000000000);
}

void SystemApertureInCallWaveformTrailingView.configureSubviews()()
{
  v1 = v0;
  v2 = [v0 layer];
  [v2 setBorderWidth_];

  v3 = SystemApertureInCallWaveformTrailingView.remoteAudioView.getter();
  v4 = *&v1[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_viewModel];
  v5 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x160))();
  OUTLINED_FUNCTION_11_52();
  (*(v6 + 128))();

  v7 = OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___remoteAudioView;
  v8 = [*&v1[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___remoteAudioView] layer];
  OUTLINED_FUNCTION_4_78();
  v10 = (*((*v5 & v9) + 0x1C0))();
  [v3 setCompositingFilter_];

  SystemApertureInCallWaveformTrailingView.localAudioView.getter();
  OUTLINED_FUNCTION_4_78();
  (*((*v5 & v11) + 0x178))();
  OUTLINED_FUNCTION_11_52();
  (*(v12 + 128))();

  v13 = OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___localAudioView;
  v14 = [*&v1[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___localAudioView] layer];
  OUTLINED_FUNCTION_4_78();
  v16 = (*((*v5 & v15) + 0x1A8))();
  [v3 setCompositingFilter_];

  [v1 addSubview_];
  v17 = (*((*v5 & *v4) + 0x190))([v1 addSubview_]) & 1;

  SystemApertureInCallWaveformTrailingView.configureFilter(_:)(v17);
}

void SystemApertureInCallWaveformTrailingView.configureFilter(_:)(char a1)
{
  if (a1)
  {
    v2 = [v1 layer];
    v3 = SystemApertureInCallWaveformTrailingView.backdropLayer.getter();
    [v2 addSublayer_];
  }

  else
  {
    v3 = SystemApertureInCallWaveformTrailingView.backdropLayer.getter();
    [v3 removeFromSuperlayer];
  }
}

uint64_t SystemApertureInCallWaveformTrailingView.observeViewModel()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_1();
  v58 = v2;
  type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  OUTLINED_FUNCTION_1();
  v61 = v4;
  v62 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySfG_GMd, "ֵ\b");
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGMR);
  OUTLINED_FUNCTION_1();
  v50 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGANGMd, &_s7Combine10PublishersO0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGANGMR);
  OUTLINED_FUNCTION_1();
  v55 = v19;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_1();
  v63 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGAPGSo9NSRunLoopCGMd, &_s7Combine10PublishersO8DebounceVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGAPGSo9NSRunLoopCGMR);
  OUTLINED_FUNCTION_1();
  v56 = v22;
  v57 = v23;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_1();
  v51 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC8DebounceVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGARGSo9NSRunLoopCGAUGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC8DebounceVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGARGSo9NSRunLoopCGAUGMR);
  OUTLINED_FUNCTION_1();
  v59 = v26;
  v60 = v27;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_1();
  v52 = v29;
  v30 = *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_viewModel);
  (*((*MEMORY[0x1E69E7D40] & *v30) + 0x148))();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<[Float]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySfG_GMd, "ֵ\b", MEMORY[0x1E695C068]);
  lazy protocol witness table accessor for type [Float] and conformance <A> [A]();
  OUTLINED_FUNCTION_14_33();
  v31 = *(v8 + 8);
  v32 = v31(v11, v6);
  (*((*MEMORY[0x1E69E7D40] & *v30) + 0x118))(v32);
  v33 = v49;
  OUTLINED_FUNCTION_14_33();
  v31(v11, v6);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<[Float]>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGMR, MEMORY[0x1E695BD38]);
  Publisher.combineLatest<A>(_:)();
  v34 = *(v50 + 8);
  v34(v33, v12);
  v34(v18, v12);
  v35 = v54;
  static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
  v36 = objc_opt_self();
  v37 = [v36 mainRunLoop];
  v64 = v37;
  type metadata accessor for NSRunLoop.SchedulerOptions();
  v38 = v58;
  OUTLINED_FUNCTION_12_46();
  type metadata accessor for NSRunLoop();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.RemoveDuplicates<Published<[Float]>.Publisher>, Publishers.RemoveDuplicates<Published<[Float]>.Publisher>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGANGMd, &_s7Combine10PublishersO0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGANGMR, MEMORY[0x1E695BC68]);
  lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  v39 = v51;
  v40 = v53;
  v41 = v63;
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of NSRunLoop.SchedulerOptions?(v38);

  (*(v61 + 8))(v35, v62);
  (*(v55 + 8))(v41, v40);
  v42 = [v36 mainRunLoop];
  v64 = v42;
  OUTLINED_FUNCTION_12_46();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Debounce<Publishers.CombineLatest<Publishers.RemoveDuplicates<Published<[Float]>.Publisher>, Publishers.RemoveDuplicates<Published<[Float]>.Publisher>>, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGAPGSo9NSRunLoopCGMd, &_s7Combine10PublishersO8DebounceVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGAPGSo9NSRunLoopCGMR, MEMORY[0x1E695BE50]);
  v43 = v52;
  v44 = v56;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSRunLoop.SchedulerOptions?(v38);

  (*(v57 + 8))(v39, v44);
  OUTLINED_FUNCTION_20();
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = partial apply for closure #1 in SystemApertureInCallWaveformTrailingView.observeViewModel();
  *(v46 + 24) = v45;
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Debounce<Publishers.CombineLatest<Publishers.RemoveDuplicates<Published<[Float]>.Publisher>, Publishers.RemoveDuplicates<Published<[Float]>.Publisher>>, NSRunLoop>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC8DebounceVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGARGSo9NSRunLoopCGAUGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC8DebounceVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGARGSo9NSRunLoopCGAUGMR, MEMORY[0x1E695BE98]);
  v47 = v59;
  Publisher<>.sink(receiveValue:)();

  (*(v60 + 8))(v43, v47);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void closure #1 in SystemApertureInCallWaveformTrailingView.observeViewModel()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    SystemApertureInCallWaveformTrailingView.updatePowerLevels(remotePowerSpectrum:localPowerSpectrum:)();
  }
}

void SystemApertureInCallWaveformTrailingView.updatePowerLevels(remotePowerSpectrum:localPowerSpectrum:)()
{
  v1 = v0;
  v2 = SystemApertureInCallWaveformTrailingView.remoteAudioView.getter();
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA8))();

  OUTLINED_FUNCTION_2_93();
  v6 = *(v5 + 176);
  v8 = v7;

  v6(v9);

  OUTLINED_FUNCTION_2_93();
  v11 = *(v10 + 168);
  v13 = v12;
  v14 = v11();

  SystemApertureInCallWaveformTrailingView.generateMaxFrameRate(_:_:)(v4, v14);
  v16 = v15;

  v17 = SystemApertureInCallWaveformTrailingView.localAudioView.getter();
  v18 = (*((*v3 & *v17) + 0xA8))();

  OUTLINED_FUNCTION_2_93();
  v20 = *(v19 + 176);
  v22 = v21;

  v20(v23);

  OUTLINED_FUNCTION_2_93();
  v25 = *(v24 + 168);
  v27 = v26;
  v28 = v25();

  SystemApertureInCallWaveformTrailingView.generateMaxFrameRate(_:_:)(v18, v28);
  v30 = v29;

  if (v16 > v30)
  {
    v31 = v16;
  }

  else
  {
    v31 = v30;
  }

  v40 = CAFrameRateRange.init(minimum:maximum:preferred:)(*(v1 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_framerateRange), v31, 0x100000000);
  minimum = v40.minimum;
  maximum = v40.maximum;
  preferred = v40.__preferred;
  v35 = objc_opt_self();
  OUTLINED_FUNCTION_20();
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = minimum;
  *(v37 + 28) = maximum;
  *(v37 + 32) = preferred;
  v39[4] = partial apply for closure #1 in SystemApertureInCallWaveformTrailingView.updatePowerLevels(remotePowerSpectrum:localPowerSpectrum:);
  v39[5] = v37;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 1107296256;
  v39[2] = thunk for @escaping @callee_guaranteed () -> ();
  v39[3] = &block_descriptor_40;
  v38 = _Block_copy(v39);

  [v35 animateWithDuration:4 delay:v38 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.0];
  _Block_release(v38);
}

void closure #1 in SystemApertureInCallWaveformTrailingView.updatePowerLevels(remotePowerSpectrum:localPowerSpectrum:)(uint64_t a1, float a2, float a3, float a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = partial apply for closure #1 in CallControlsMenuViewController.updateDogingState(animated:);
    *(v11 + 24) = v10;
    aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_22;
    v12 = _Block_copy(aBlock);
    v13 = v8;

    *&v14 = a2;
    *&v15 = a3;
    *&v16 = a4;
    [v9 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
    _Block_release(v12);
  }
}

uint64_t SystemApertureInCallWaveformTrailingView.generateMaxFrameRate(_:_:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 == *(a2 + 16) && v2)
  {
    v3 = (result + 32);
    v4 = (a2 + 32);
    v5 = 1 - v2;
    v6 = 0.0;
    while (1)
    {
      if (v5 == 1)
      {
        __break(1u);
        return result;
      }

      v7 = *v3;
      if (*v4 >= *v3)
      {
        v8 = *v3;
      }

      else
      {
        v8 = *v4;
      }

      if (v7 <= *v4)
      {
        v7 = *v4;
      }

      v9 = v7 - v8;
      if (v9 >= 0.25)
      {
        if (v6 < 0.25)
        {
          v6 = 0.25;
        }
      }

      else if (v9 >= 0.1)
      {
        if (v9 > v6)
        {
          v6 = v9;
        }
      }

      else if (v6 < 0.1)
      {
        v6 = 0.1;
        if (!v5)
        {
          return result;
        }

        goto LABEL_20;
      }

      if (!v5)
      {
        return result;
      }

LABEL_20:
      ++v5;
      ++v3;
      ++v4;
    }
  }

  return result;
}

id SystemApertureInCallWaveformTrailingView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

unint64_t lazy protocol witness table accessor for type [Float] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [Float] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Float] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySfGMd, &_sSaySfGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Float] and conformance <A> [A]);
  }

  return result;
}

uint64_t InCallControlsReportCell.cellContentConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC15ConversationKit24InCallControlsReportCell____lazy_storage___cellContentConfiguration;
  swift_beginAccess();
  outlined init with copy of Participant?(v1 + v9, v8, &_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  v10 = type metadata accessor for UIListContentConfiguration();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  closure #1 in InCallControlsReportCell.cellContentConfiguration.getter();
  (*(*(v10 - 8) + 16))(v5, a1, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  swift_beginAccess();
  outlined assign with take of Participant?(v5, v1 + v9, &_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  return swift_endAccess();
}

uint64_t closure #1 in InCallControlsReportCell.cellContentConfiguration.getter()
{
  MEMORY[0x1BFB21750]();
  v0 = [objc_opt_self() conversationKit];
  v15._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x61737265766E6F43;
  v1.value._object = 0xEF74694B6E6F6974;
  v2._object = 0x80000001BC503410;
  v2._countAndFlagsBits = 0xD00000000000001ALL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v15);

  UIListContentConfiguration.text.setter();
  v4 = objc_opt_self();
  v5 = *MEMORY[0x1E69DDCF8];
  v6 = [v4 preferredFontForTextStyle_];
  UIFont.caseSensitive()();

  v7 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v7(v14, 0);
  v8 = [objc_opt_self() systemRedColor];
  v9 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v9(v14, 0);
  v10 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontForContentSizeCategory.setter();
  v10(v14, 0);
  v11 = [v4 preferredFontForTextStyle_];
  isa = UIFont.caseSensitive()().super.isa;

  InCallControlsBlockCell.verticalInset(_:scaledToFont:)(isa, 18.5);
  return UIListContentConfiguration.directionalLayoutMargins.setter();
}

id InCallControlsReportCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id InCallControlsReportCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_17_5(v2);
  v3 = type metadata accessor for UICellAccessory();
  OUTLINED_FUNCTION_17_5(v3);
  v4 = OUTLINED_FUNCTION_18_1();
  v7 = objc_msgSendSuper2(v5, v6, v4, v0, ObjectType);
  InCallControlsReportCell.configureContent()();

  return v7;
}

uint64_t InCallControlsReportCell.configureContent()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11[-1] - v2;
  static UIBackgroundConfiguration.preferredInCallControlsBackground.getter();
  v4 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  MEMORY[0x1BFB216F0](v3);
  [v0 setAutomaticallyUpdatesBackgroundConfiguration_];
  v11[3] = type metadata accessor for UIListContentConfiguration();
  v11[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  InCallControlsReportCell.cellContentConfiguration.getter(boxed_opaque_existential_1);
  MEMORY[0x1BFB216E0](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd, &_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMR);
  v6 = *(type metadata accessor for UICellAccessory() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BA940;
  InCallControlsReportCell.reportImageAccessory.getter(v8 + v7);
  return UICollectionViewListCell.accessories.setter();
}

id InCallControlsReportCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsReportCell.init(coder:)()
{
  v0 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_0_11(v0);
  v1 = type metadata accessor for UICellAccessory();
  OUTLINED_FUNCTION_0_11(v1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t InCallControlsReportCell.reportImageAccessory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd, &_s5UIKit15UICellAccessoryVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC15ConversationKit24InCallControlsReportCell____lazy_storage___reportImageAccessory;
  swift_beginAccess();
  outlined init with copy of Participant?(v1 + v9, v8, &_s5UIKit15UICellAccessoryVSgMd, &_s5UIKit15UICellAccessoryVSgMR);
  v10 = type metadata accessor for UICellAccessory();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s5UIKit15UICellAccessoryVSgMd, &_s5UIKit15UICellAccessoryVSgMR);
  closure #1 in InCallControlsReportCell.reportImageAccessory.getter(a1);
  (*(*(v10 - 8) + 16))(v5, a1, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  swift_beginAccess();
  outlined assign with take of Participant?(v5, v1 + v9, &_s5UIKit15UICellAccessoryVSgMd, &_s5UIKit15UICellAccessoryVSgMR);
  return swift_endAccess();
}

uint64_t closure #1 in InCallControlsReportCell.reportImageAccessory.getter@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v21 - v2;
  v4 = type metadata accessor for UICellAccessory.Placement();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIImage();
  v12 = @nonobjc UIImage.__allocating_init(systemName:)(0xD000000000000016, 0x80000001BC5033F0);
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  v14 = [objc_opt_self() systemRedColor];
  [v13 setTintColor_];

  v15 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd, &_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMR) + 48)];
  v16 = *MEMORY[0x1E69DBF28];
  v17 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v17 - 8) + 104))(v7, v16, v17);
  *v15 = OUTLINED_FUNCTION_14_0;
  v15[1] = 0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69DBF60], v4);
  v18 = type metadata accessor for UICellAccessory.LayoutDimension();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v18);
  v19 = v13;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();

  return (*(v9 + 8))(v11, v8);
}

id InCallControlsReportCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for InCallControlsReportCell(uint64_t a1)
{
  result = type metadata singleton initialization cache for InCallControlsReportCell;
  if (!type metadata singleton initialization cache for InCallControlsReportCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for InCallControlsReportCell(uint64_t a1)
{
  type metadata accessor for UIListContentConfiguration?(319, &lazy cache variable for type metadata for UIListContentConfiguration?, MEMORY[0x1E69DC118]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIListContentConfiguration?(319, &lazy cache variable for type metadata for UICellAccessory?, MEMORY[0x1E69DBF68]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed GCPhysicalInputElement, @guaranteed GCPressedStateInput, @unowned Bool) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void GameControllerManager.addControl(_:event:when:)()
{
  OUTLINED_FUNCTION_287();
  if (v5)
  {
    v6 = v0;
    v7 = v4;
    v8 = v3;
    v9 = v2;
    v10 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_controls;
    swift_beginAccess();
    v32 = v10;
    specialized Dictionary.subscript.getter(v7, *(v6 + v10));
    v12 = v11;
    swift_endAccess();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v14 = specialized Array.count.getter();

    for (i = 0; v14 != i; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v1 = MEMORY[0x1BFB22010](i, v13);
      }

      else
      {
        if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v1 = *(v13 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v17 = Strong, Strong, v17 == v9))
      {
        v18 = *(v1 + 24);

        if (v18 == v8)
        {
          swift_bridgeObjectRelease_n();
          return;
        }
      }

      else
      {
      }
    }

    v1 = v7;
    GameControllerManager.nextControl(forButton:)(v7);
    v14 = v19;
    type metadata accessor for GameControllerManager.WeakControl();
    swift_allocObject();
    v9 = v9;
    GameControllerManager.WeakControl.init(_:event:)(v9, v8);
    MEMORY[0x1BFB20CC0]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }

LABEL_30:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_19:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20 = v32;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v6 + v32);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v1, isUniquelyReferenced_nonNull_native, v22, v23, v24, v25, v26, v31, v32);
    *(v6 + v20) = v33;
    swift_endAccess();
    if (*(v6 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hasKeyboardFocus) == 1)
    {
      if (v14)
      {
        v27 = swift_dynamicCastObjCProtocolConditional();
        if (v27)
        {
          [v27 didResignFirstResponderForGameControllerButton_];
        }
      }

      v28 = swift_dynamicCastObjCProtocolConditional();
      if (v28)
      {
        v29 = v28;
        v30 = v9;
        [v29 didBecomeFirstResponderForGameControllerButton_];
      }
    }
  }
}

uint64_t GameControllerSymbolDescribers.sfSymbol(forButton:)(int a1)
{
  if (a1)
  {
    if (a1 == 2)
    {
      v2 = v1 + 4;
    }

    else
    {
      if (a1 != 1)
      {
        return 0;
      }

      v2 = v1 + 2;
    }
  }

  else
  {
    v2 = v1;
  }

  v3 = *v2;

  return v3;
}

id GameControllerManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static GameControllerManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_4(&one-time initialization token for shared);
  }

  v1 = static GameControllerManager.shared;

  return v1;
}

id GameControllerManager.init()()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_systemButtonService;
  *&v0[v9] = [objc_opt_self() sharedInstance];
  *&v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_systemButtonInvalidatable] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_systemButtonServiceAvailabilityObservation] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hidEventObserver] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_controllerConnectedSink] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_controllerDisconnectedSink] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_controllerDidBecomeCurrentSink] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_controllerDidStopBeingCurrentSink] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_responders] = MEMORY[0x1E69E7CC0];
  v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hasKeyboardFocus] = 0;
  v10 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_controls;
  type metadata accessor for CNKGameControllerButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit21GameControllerManagerC11WeakControl33_5FD9E534FCA3327AE0AE348C3E444B19LLCGMd, _sSay15ConversationKit21GameControllerManagerC11WeakControl33_5FD9E534FCA3327AE0AE348C3E444B19LLCGMR);
  lazy protocol witness table accessor for type CNKGameControllerButton and conformance CNKGameControllerButton(&lazy protocol witness table cache variable for type CNKGameControllerButton and conformance CNKGameControllerButton, type metadata accessor for CNKGameControllerButton, &protocol conformance descriptor for CNKGameControllerButton);
  *&v0[v10] = Dictionary.init(dictionaryLiteral:)();
  v11 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v12 = [v11 gameControllerSystemButton];

  v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_isActive] = v12;
  v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hasController] = 0;
  v31.receiver = v0;
  v31.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v31, sel_init);
  if (*(v13 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_isActive) == 1)
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E698E3B8]) init];
    v15 = [objc_opt_self() keyboardFocusEnvironment];
    [v14 setDeferringEnvironment_];

    v16 = v13;
    [v14 addObserver_];
    v17 = *&v16[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hidEventObserver];
    *&v16[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hidEventObserver] = v14;
    v30 = v14;

    v18 = objc_opt_self();
    v19 = [v18 defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type CNKGameControllerButton and conformance CNKGameControllerButton(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    v20 = Publisher<>.sink(receiveValue:)();

    v21 = *(v4 + 8);
    v21(v8, v2);
    *&v16[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_controllerDidBecomeCurrentSink] = v20;

    v22 = [v18 defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v23 = Publisher<>.sink(receiveValue:)();

    v21(v8, v2);
    *&v16[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_controllerDidStopBeingCurrentSink] = v23;

    swift_getKeyPath();
    OUTLINED_FUNCTION_20();
    *(swift_allocObject() + 16) = v16;
    v24 = v16;
    v25 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v26 = *&v24[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_systemButtonServiceAvailabilityObservation];
    *&v24[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_systemButtonServiceAvailabilityObservation] = v25;

    v27 = [objc_opt_self() current];
    if (v27)
    {
      v28 = v27;
      GameControllerManager.configureButtonHandlers(forController:)(v27);
    }

    GameControllerManager.updateControllerState()();
  }

  return v13;
}

uint64_t GameControllerManager.configureButtonHandlers(forController:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14GameController32GCPhysicalInputElementCollectionVySo08GCButtonE0_pGMd, &_s14GameController32GCPhysicalInputElementCollectionVySo08GCButtonE0_pGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = [a1 input];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCControllerLiveInput, 0x1E696B1C8);
  GCDevicePhysicalInputState.buttons.getter();

  if (one-time initialization token for acceptButton != -1)
  {
    swift_once();
  }

  v11 = GCPhysicalInputElementCollection.subscript.getter();
  v12 = *(v3 + 8);
  v12(v9, v2);
  v13 = &selRef_isRecordingAllowed;
  if (v11)
  {
    v14 = [v11 pressedInput];
    swift_unknownObjectRelease();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = partial apply for closure #1 in GameControllerManager.configureButtonHandlers(forController:);
    v30 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = thunk for @escaping @callee_guaranteed (@guaranteed GCPhysicalInputElement, @guaranteed GCPressedStateInput, @unowned Bool) -> ();
    v28 = &block_descriptor_44_2;
    v16 = _Block_copy(&aBlock);

    [v14 setPressedDidChangeHandler_];
    _Block_release(v16);
    swift_unknownObjectRelease();
    v13 = 0x1FC56A000;
  }

  v17 = v13;
  v18 = [a1 input];
  GCDevicePhysicalInputState.buttons.getter();

  if (one-time initialization token for declineButton != -1)
  {
    swift_once();
  }

  v19 = GCPhysicalInputElementCollection.subscript.getter();
  result = (v12)(v5, v2);
  if (v19)
  {
    v21 = [v19 v17 + 3445];
    swift_unknownObjectRelease();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = partial apply for closure #2 in GameControllerManager.configureButtonHandlers(forController:);
    v30 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = thunk for @escaping @callee_guaranteed (@guaranteed GCPhysicalInputElement, @guaranteed GCPressedStateInput, @unowned Bool) -> ();
    v28 = &block_descriptor_40;
    v23 = _Block_copy(&aBlock);

    [v21 setPressedDidChangeHandler_];
    _Block_release(v23);
    return swift_unknownObjectRelease();
  }

  return result;
}

void GameControllerManager.updateControllerState()()
{
  v1 = v0;
  if (one-time initialization token for conversationControlsGaming != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationControlsGaming);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "GameControllerManager: updateControllerState", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_responders;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = specialized Array.count.getter();
  if (v8)
  {
    v9 = v8;
    if (v8 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v9; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFB22010](i, v7);
      }

      else
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong gameControllerDidChangeContext];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  GameControllerManager.updateButtonHandlers()();
  v12 = [objc_opt_self() current];
  v13 = v12;
  if (v12)
  {
  }

  *(v1 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hasController) = v13 != 0;
}

void closure #1 in GameControllerManager.init()(uint64_t a1, uint64_t a2, void (*a3)())
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    Notification.object.getter();
    if (v8)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCController, 0x1E696B1C0);
      if (swift_dynamicCast())
      {
        a3();
      }
    }

    else
    {
      outlined destroy of TapInteractionHandler?(v7, &_sypSgMd, &_sypSgMR);
    }

    GameControllerManager.updateControllerState()();
  }
}

uint64_t GameControllerManager.clearButtonHandlers(forController:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14GameController32GCPhysicalInputElementCollectionVySo08GCButtonE0_pGMd, &_s14GameController32GCPhysicalInputElementCollectionVySo08GCButtonE0_pGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v10 = [a1 input];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCControllerLiveInput, 0x1E696B1C8);
  GCDevicePhysicalInputState.buttons.getter();

  if (one-time initialization token for acceptButton != -1)
  {
    swift_once();
  }

  v11 = GCPhysicalInputElementCollection.subscript.getter();
  v12 = *(v3 + 8);
  v12(v9, v2);
  if (v11)
  {
    v13 = [v11 pressedInput];
    swift_unknownObjectRelease();
    [v13 setPressedDidChangeHandler_];
    swift_unknownObjectRelease();
  }

  v14 = [a1 input];
  GCDevicePhysicalInputState.buttons.getter();

  if (one-time initialization token for declineButton != -1)
  {
    swift_once();
  }

  v15 = GCPhysicalInputElementCollection.subscript.getter();
  result = (v12)(v5, v2);
  if (v15)
  {
    v17 = [v15 pressedInput];
    swift_unknownObjectRelease();
    [v17 setPressedDidChangeHandler_];
    return swift_unknownObjectRelease();
  }

  return result;
}

id key path getter for GameControllerManager.systemButtonService : GameControllerManager@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 systemButtonService];
  *a2 = result;
  return result;
}

void closure #3 in GameControllerManager.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24NSKeyValueObservedChangeVySbGMd, &_s10Foundation24NSKeyValueObservedChangeVySbGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v30 - v10;
  if (one-time initialization token for conversationControlsGaming != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.conversationControlsGaming);
  v13 = *(v6 + 16);
  v13(v11, a2, v5);
  v13(v8, a2, v5);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    v33 = v30[0];
    *v16 = 136315394;
    NSKeyValueObservedChange.oldValue.getter();
    v17 = 1702195828;
    if ((v32 & 1) == 0)
    {
      v17 = 0x65736C6166;
    }

    v18 = 0xE500000000000000;
    if (v32)
    {
      v18 = 0xE400000000000000;
    }

    if (v32 == 2)
    {
      v19 = 0;
    }

    else
    {
      v19 = v17;
    }

    if (v32 == 2)
    {
      v20 = 0xE000000000000000;
    }

    else
    {
      v20 = v18;
    }

    v30[1] = a3;
    v21 = *(v6 + 8);
    v21(v11, v5);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v33);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    NSKeyValueObservedChange.newValue.getter();
    v23 = 1702195828;
    if ((v31 & 1) == 0)
    {
      v23 = 0x65736C6166;
    }

    v24 = 0xE400000000000000;
    if ((v31 & 1) == 0)
    {
      v24 = 0xE500000000000000;
    }

    if (v31 == 2)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    if (v31 == 2)
    {
      v26 = 0xE000000000000000;
    }

    else
    {
      v26 = v24;
    }

    v21(v8, v5);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v33);

    *(v16 + 14) = v27;
    _os_log_impl(&dword_1BBC58000, v14, v15, "GameControllerManager: system button isAvailable changed from %s to: %s", v16, 0x16u);
    v28 = v30[0];
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v28, -1, -1);
    MEMORY[0x1BFB23DF0](v16, -1, -1);
  }

  else
  {

    v29 = *(v6 + 8);
    v29(v8, v5);
    v29(v11, v5);
  }

  GameControllerManager.updateControllerState()();
}

void GameControllerManager.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hidEventObserver];
  if (v2)
  {
    [v2 removeObserver_];
  }

  v3 = [objc_opt_self() controllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCController, 0x1E696B1C0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized Array.count.getter();
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      v9.receiver = v0;
      v9.super_class = ObjectType;
      objc_msgSendSuper2(&v9, sel_dealloc);
      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1BFB22010](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      break;
    }

    GameControllerManager.clearButtonHandlers(forController:)(v7);
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t one-time initialization function for acceptButton()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GameControllerManager.acceptButton = result;
  unk_1EBCAE570 = v1;
  return result;
}

uint64_t one-time initialization function for declineButton()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GameControllerManager.declineButton = result;
  unk_1EBCAE580 = v1;
  return result;
}

void GameControllerManager.observerDeliveryPolicyDidChange(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  if (*(v2 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_isActive) == 1)
  {
    v18 = [a1 canReceiveEvents];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v19 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    *(v20 + 24) = v18;
    aBlock[4] = partial apply for closure #1 in GameControllerManager.observerDeliveryPolicyDidChange(_:);
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_41;
    v21 = _Block_copy(aBlock);
    v22 = v2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type CNKGameControllerButton and conformance CNKGameControllerButton(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v17, v10, v21);
    _Block_release(v21);

    (*(v6 + 8))(v10, v4);
    (*(v13 + 8))(v17, v11);
  }
}

void closure #1 in GameControllerManager.observerDeliveryPolicyDidChange(_:)(uint64_t result, char a2)
{
  *(result + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hasKeyboardFocus) = a2;
  if (*(result + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hasController) == 1)
  {
    v3 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_responders;
    swift_beginAccess();
    v4 = *(result + v3);
    if (v4 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {

      while (!__OFSUB__(i--, 1))
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1BFB22010](i, v4);
        }

        else
        {
          if ((i & 0x8000000000000000) != 0)
          {
            goto LABEL_19;
          }

          if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong gameControllerDidChangeContext];

          swift_unknownObjectRelease();
          if (!i)
          {
            goto LABEL_15;
          }
        }

        else
        {

          if (!i)
          {
LABEL_15:

            goto LABEL_16;
          }
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_16:
    GameControllerManager.updateControls(forButton:)(1);
    GameControllerManager.updateControls(forButton:)(2);
  }
}

void GameControllerManager.performAction(forButton:)(uint64_t a1, __n128 a2)
{
  GameControllerManager.nextControl(forButton:)(a1);
  if (v2)
  {
    v4 = v2;
    [v2 sendActionsForControlEvents_];
  }
}

void closure #1 in GameControllerManager.configureButtonHandlers(forController:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, const char *a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a3)
    {
      if (one-time initialization token for conversationControlsGaming != -1)
      {
        OUTLINED_FUNCTION_4_79(&one-time initialization token for conversationControlsGaming);
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.conversationControlsGaming);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1BBC58000, v12, v13, a5, v14, 2u);
        MEMORY[0x1BFB23DF0](v14, -1, -1);
      }

      GameControllerManager.performAction(forButton:)(a6, v15);
    }
  }
}

void GameControllerManager.beginConsumingSystemButtonPresses()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_systemButtonInvalidatable;
  if (!*&v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_systemButtonInvalidatable])
  {
    v2 = [v0 systemButtonService];
    v3 = MEMORY[0x1BFB209B0](0xD000000000000010, 0x80000001BC503780);
    v4 = [v2 beginConsumingPressesWithReason:v3 consumer:v0 priority:60];

    *&v0[v1] = v4;

    swift_unknownObjectRelease();
  }
}

Swift::Bool __swiftcall GameControllerManager.focus(hasKeyboardFocus:)(Swift::Bool hasKeyboardFocus)
{
  OUTLINED_FUNCTION_287();
  if (!v3)
  {
    LOBYTE(v10) = 0;
    return v10;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_19_1(v2);
    v10 = specialized Array.count.getter();
    if (!v10)
    {
      return v10;
    }

    result = OUTLINED_FUNCTION_2_94();
    while (1)
    {
      v5 = __OFSUB__(v10--, 1);
      if (v5)
      {
        break;
      }

      if (v1)
      {
        v6 = OUTLINED_FUNCTION_38_2();
        MEMORY[0x1BFB22010](v6);
      }

      else
      {
        if (v10 < 0)
        {
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_13_44();
        if (v7)
        {
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_16_40();
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = [Strong gameControllerDidRequestDismissal];

        result = swift_unknownObjectRelease();
        if (v9)
        {
          goto LABEL_32;
        }

        if (!v10)
        {
          goto LABEL_33;
        }
      }

      else
      {

        if (!v10)
        {
          goto LABEL_33;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_1(v2);
    v10 = specialized Array.count.getter();
    if (!v10)
    {
      return v10;
    }

    result = OUTLINED_FUNCTION_2_94();
    while (1)
    {
      v5 = __OFSUB__(v10--, 1);
      if (v5)
      {
        break;
      }

      if (v1)
      {
        v11 = OUTLINED_FUNCTION_38_2();
        MEMORY[0x1BFB22010](v11);
      }

      else
      {
        if (v10 < 0)
        {
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_13_44();
        if (v7)
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_16_40();
      }

      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        v13 = [v12 gameControllerDidRequestActivation];

        result = swift_unknownObjectRelease();
        if (v13)
        {
LABEL_32:
          LOBYTE(v10) = 1;
LABEL_33:

          return v10;
        }
      }

      else
      {
      }

      if (!v10)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
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
  return result;
}

Swift::Void __swiftcall GameControllerManager.resignFocus()()
{
  OUTLINED_FUNCTION_287();
  if (v1)
  {
    OUTLINED_FUNCTION_287();
    if (v1)
    {
      OUTLINED_FUNCTION_287();
      if (v1)
      {
        OUTLINED_FUNCTION_19_1(v2);
        v3 = specialized Array.count.getter();
        if (v3)
        {
          v4 = v3;
          OUTLINED_FUNCTION_2_94();
          while (!__OFSUB__(v4--, 1))
          {
            if (v0)
            {
              v6 = OUTLINED_FUNCTION_38_2();
              MEMORY[0x1BFB22010](v6);
            }

            else
            {
              if (v4 < 0)
              {
                goto LABEL_23;
              }

              OUTLINED_FUNCTION_13_44();
              if (v7)
              {
                goto LABEL_24;
              }

              OUTLINED_FUNCTION_16_40();
            }

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v9 = [Strong gameControllerDidRequestFocus_];

              swift_unknownObjectRelease();
              if ((v9 & 1) != 0 || !v4)
              {
LABEL_20:

                return;
              }
            }

            else
            {

              if (!v4)
              {
                goto LABEL_20;
              }
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
        }
      }
    }
  }
}

Swift::Bool __swiftcall GameControllerManager.consumePressEventForGCSystemButton()()
{
  OUTLINED_FUNCTION_287();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  if (one-time initialization token for conversationControlsGaming != -1)
  {
    OUTLINED_FUNCTION_4_79(&one-time initialization token for conversationControlsGaming);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationControlsGaming);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1BBC58000, v4, v5, "GameControllerManager: system button pressed", v6, 2u);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
  }

  v7 = *(v2 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hasKeyboardFocus);

  return GameControllerManager.focus(hasKeyboardFocus:)(v7);
}

void *GameControllerManager.stopConsumingSystemButtonPresses()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_systemButtonInvalidatable;
  result = *(v0 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_systemButtonInvalidatable);
  if (result)
  {
    [result invalidate];
    *(v0 + v1) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t GameControllerManager.WeakControl.init(_:event:)(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  *(v2 + 24) = a2;
  return v2;
}

uint64_t GameControllerManager.WeakControl.__deallocating_deinit()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocClassInstance();
}

void GameControllerManager.nextControl(forButton:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_controls;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v7 & 1) == 0))
  {
    swift_endAccess();
    return;
  }

  HIDWORD(v36) = a1;
  v8 = *(*(v5 + 56) + 8 * v6);
  v38 = v8;
  swift_endAccess();
  v9 = specialized Array.count.getter();

  v10 = 0;
  while (1)
  {
    if (v9 == v10)
    {
      v10 = specialized Array.count.getter();
      goto LABEL_18;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB22010](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      break;
    }

    v12 = __OFADD__(v10++, 1);
    if (v12)
    {
      goto LABEL_60;
    }
  }

  if (__OFADD__(v10, 1))
  {
    goto LABEL_74;
  }

  if (v10 + 1 == specialized Array.count.getter())
  {
LABEL_18:
    v13 = specialized Array.count.getter();
    v14 = v13 - v10;
    if (v13 >= v10)
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        v15 = v13;
        if (specialized Array.count.getter() >= v13)
        {
          v12 = __OFSUB__(0, v14);
          v16 = -v14;
          if (!v12)
          {
            v17 = specialized Array.count.getter();
            v12 = __OFADD__(v17, v16);
            v18 = v17 + v16;
            if (!v12)
            {
              specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v18, 1);
              specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v10, v15, 0);
              v19 = specialized BidirectionalCollection.last.getter(v38);
              swift_beginAccess();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v38, HIDWORD(v36), isUniquelyReferenced_nonNull_native, v21, v22, v23, v24, v25, v36, *(v2 + v4));
              *(v2 + v4) = v37;
              swift_endAccess();
              if (v19)
              {
                swift_unknownObjectWeakLoadStrong();
                goto LABEL_25;
              }

              return;
            }

LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
            return;
          }

LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v26 = v10 + 5;
  while (1)
  {
    v27 = v26 - 4;
    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB22010](v26 - 4, v8);
    }

    else
    {
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

      if (v27 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }
    }

    v28 = swift_unknownObjectWeakLoadStrong();

    if (!v28)
    {
      goto LABEL_50;
    }

    if (v27 != v10)
    {
      break;
    }

LABEL_49:
    v12 = __OFADD__(v10++, 1);
    if (v12)
    {
      goto LABEL_64;
    }

LABEL_50:
    v12 = __OFADD__(v27, 1);
    v34 = v26 - 3;
    if (v12)
    {
      goto LABEL_63;
    }

    if (v8 >> 62)
    {
      v35 = __CocoaSet.count.getter();
    }

    else
    {
      v35 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v26;
    if (v34 == v35)
    {
      goto LABEL_18;
    }
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x1BFB22010](v10, v8);
    v30 = MEMORY[0x1BFB22010](v26 - 4, v8);
  }

  else
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_71;
    }

    v31 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 >= v31)
    {
      goto LABEL_72;
    }

    if (v27 >= v31)
    {
      goto LABEL_73;
    }

    v29 = *(v8 + 8 * v10 + 32);
    v30 = *(v8 + 8 * v26);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()();
    v32 = (v8 >> 62) & 1;
  }

  else
  {
    LODWORD(v32) = 0;
  }

  v33 = v8 & 0xFFFFFFFFFFFFFF8;
  *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v30;

  if ((v8 & 0x8000000000000000) == 0 && !v32)
  {
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_47;
  }

  v8 = specialized _ArrayBuffer._consumeAndCreateNew()();
  v33 = v8 & 0xFFFFFFFFFFFFFF8;
  if ((v27 & 0x8000000000000000) == 0)
  {
LABEL_47:
    if (v27 >= *(v33 + 16))
    {
      goto LABEL_65;
    }

    *(v33 + 8 * v26) = v29;

    v38 = v8;
    goto LABEL_49;
  }

LABEL_58:
  __break(1u);
LABEL_25:
}

void GameControllerManager.queryFirstResponder(_:)(void *a1)
{
  v23 = MEMORY[0x1E69E7CD0];
  OUTLINED_FUNCTION_287();
  if (v3)
  {
    v4 = v1;
    v5 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_controls;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v6 = *(v4 + v5);
    v7 = 1 << *(v6 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v6 + 64);
    v19 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hasKeyboardFocus;
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    while (v9)
    {
LABEL_11:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = *(*(v6 + 48) + ((v11 << 8) | (4 * v13)));
      GameControllerManager.nextControl(forButton:)(v14);
      if (v15)
      {
        v16 = v15;
        if (v15 == a1)
        {
          if (*(v4 + v19) == 1)
          {
            v21 = &unk_1F3B515E8;
            v17 = swift_dynamicCastObjCProtocolConditional();
            if (v17)
            {
              [v17 didBecomeFirstResponderForGameControllerButton_];
            }

            specialized Set._Variant.insert(_:)(v20, v14);
          }

          else
          {
            v22 = &unk_1F3B515E8;
            v18 = swift_dynamicCastObjCProtocolConditional();
            if (v18)
            {
              [v18 didResignFirstResponderForGameControllerButton_];
            }
          }
        }
      }
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return;
      }

      v9 = *(v6 + 64 + 8 * v12);
      ++v11;
      if (v9)
      {
        v11 = v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void GameControllerManager.updateControls(forButton:)(uint64_t a1)
{
  GameControllerManager.nextControl(forButton:)(a1);
  if (v3)
  {
    v4 = v3;
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      if (*(v1 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hasKeyboardFocus))
      {
        v6 = &selRef_didBecomeFirstResponderForGameControllerButton_;
      }

      else
      {
        v6 = &selRef_didResignFirstResponderForGameControllerButton_;
      }

      [v5 *v6];
    }
  }
}

uint64_t GameControllerManager.WeakResponder.__deallocating_deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 16);

  return swift_deallocClassInstance();
}

void GameControllerManager.hasResponder.getter()
{
  v2 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_responders;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v13 = *(v0 + v2);
  v3 = specialized Array.count.getter();
  v4 = OUTLINED_FUNCTION_2_94();
  while (1)
  {
    v5 = v3;
    if (!v3)
    {
      break;
    }

    --v3;
    if (__OFSUB__(v5, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    if (v1)
    {
      v8 = OUTLINED_FUNCTION_38_2();
      MEMORY[0x1BFB22010](v8);
    }

    else
    {
      if (v3 < 0)
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_13_44();
      if (v6)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_16_40();
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v4 = swift_unknownObjectRelease();
      break;
    }
  }

  MEMORY[0x1EEE9AC00](v4);
  v12[2] = &v13;
  v10 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_15ConversationKit21GameControllerManagerC13WeakResponder33_5FD9E534FCA3327AE0AE348C3E444B19LLCTg5(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), v12, v3, v9);

  if (v10)
  {
    v11 = swift_unknownObjectWeakLoadStrong();

    if (v11)
    {
      swift_unknownObjectRelease();
    }
  }
}

void GameControllerManager.addResponder(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  specialized GameControllerManager.addResponder(_:)(a1, v1, ObjectType);
}

void GameControllerManager.updateButtonHandlers()()
{
  GameControllerManager.hasResponder.getter();
  if (v1)
  {
    GameControllerManager.gameControllerContext()(v4);
    outlined destroy of GameControllerContext(v4);
    if (LODWORD(v4[0]) && (v2 = [v0 systemButtonService], v3 = objc_msgSend(v2, sel_isAvailable), v2, v3))
    {
      GameControllerManager.beginConsumingSystemButtonPresses()();
    }

    else
    {
      GameControllerManager.stopConsumingSystemButtonPresses()();
    }
  }

  else
  {

    GameControllerManager.stopConsumingSystemButtonPresses()();
  }
}

void GameControllerManager.removeResponder(_:)(uint64_t a1)
{
  swift_getObjectType();

  specialized GameControllerManager.removeResponder(_:)(a1, v1);
}

uint64_t closure #1 in GameControllerManager.removeResponder(_:)(uint64_t *a1, uint64_t a2)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 1;
  }

  swift_unknownObjectRelease();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRelease();
    return v4 == a2;
  }

  return result;
}

void GameControllerManager.gameControllerContext()(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_287();
  if (!v8)
  {
    OUTLINED_FUNCTION_9_54();
    object = 1;
    goto LABEL_13;
  }

  v9 = objc_opt_self();
  v4 = &selRef_displayString;
  v10 = [v9 current];
  if (!v10)
  {
    object = 1;
LABEL_11:
    OUTLINED_FUNCTION_3_0();
    outlined consume of GameControllerSymbolDescribers?(v15, v16);
LABEL_12:
    OUTLINED_FUNCTION_9_54();
    goto LABEL_13;
  }

  countAndFlagsBits = &selRef_displayString;
  v2 = [v1 systemButtonService];
  v3 = [v2 isAvailable];

  if (!v3)
  {
    object = 1;
    goto LABEL_11;
  }

  v11 = [v1 systemButtonService];
  v27.service = [v9 current];
  v3 = &v23;
  v27.super.isa = v11;
  GameControllerSymbolDescribers.init(systemButtonService:controller:)(&v23, v27, v26);
  object = v23.symbolSystem.value._object;
  if (!v23.symbolSystem.value._object)
  {
    object = 1;
    OUTLINED_FUNCTION_3_0();
    outlined consume of GameControllerSymbolDescribers?(v21, v22);
    symbolAccept = v23.symbolAccept;
    v1 = &_sSSSgMd;
    v2 = &_sSSSgMR;
    outlined destroy of TapInteractionHandler?(&symbolAccept, &_sSSSgMd, &_sSSSgMR);
    symbolDecline = v23.symbolDecline;
    outlined destroy of TapInteractionHandler?(&symbolDecline, &_sSSSgMd, &_sSSSgMR);
    goto LABEL_12;
  }

  countAndFlagsBits = v23.symbolDecline.value._countAndFlagsBits;
  v6 = v23.symbolDecline.value._object;
  v3 = v23.symbolAccept.value._countAndFlagsBits;
  v4 = v23.symbolAccept.value._object;
  v2 = v23.symbolSystem.value._countAndFlagsBits;
  OUTLINED_FUNCTION_3_0();
  outlined consume of GameControllerSymbolDescribers?(v12, v13);
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hasKeyboardFocus))
  {
    LODWORD(v1) = 2;
  }

  else
  {
    LODWORD(v1) = 1;
  }

LABEL_13:
  v17 = OUTLINED_FUNCTION_7_61();
  outlined copy of GameControllerSymbolDescribers?(v17, v18);
  v19 = OUTLINED_FUNCTION_7_61();
  outlined consume of GameControllerSymbolDescribers?(v19, v20);
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = object;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = countAndFlagsBits;
  *(a1 + 48) = v6;
}

double GameControllerContext.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_1BC4BB7D0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void __swiftcall GameControllerSymbolDescribers.init(systemButtonService:controller:)(ConversationKit::GameControllerSymbolDescribers *__return_ptr retstr, GCSystemButtonServiceRevlock systemButtonService, GCController_optional controller)
{
  service = systemButtonService.service;
  isa = systemButtonService.super.isa;
  v10 = outlined bridged method (pb) of @objc GCSystemButtonServiceRevlock.sfSymbolName.getter(systemButtonService.super.isa);
  v11 = v10;
  v13 = v12;
  if (service)
  {
    v24 = v10;
    v14 = service;
    v15 = [v14 extendedGamepad];
    if (v15)
    {
      v16 = v15;
      v3 = outlined bridged method (ob) of @objc GCControllerElement.sfSymbolsName.getter([v15 buttonA]);
      v4 = v17;
      v18 = [v16 buttonB];
      v19 = [v18 sfSymbolsName];

      if (v19)
      {
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = v20;

LABEL_13:
        v11 = v24;
        goto LABEL_14;
      }

LABEL_9:

      v5 = 0;
      v6 = 0;
      goto LABEL_13;
    }

    v21 = [v14 microGamepad];
    if (v21)
    {
      v16 = v21;
      v3 = [v21 buttonA];
      v22 = [v3 sfSymbolsName];

      if (v22)
      {
        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v4 = v23;

        goto LABEL_9;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_14_34();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_14_34();
LABEL_14:
  retstr->symbolSystem.value._countAndFlagsBits = v11;
  retstr->symbolSystem.value._object = v13;
  retstr->symbolAccept.value._countAndFlagsBits = v3;
  retstr->symbolAccept.value._object = v4;
  retstr->symbolDecline.value._countAndFlagsBits = v5;
  retstr->symbolDecline.value._object = v6;
}

uint64_t static GameControllerSymbolDescribers.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = a1[2] == a2[2] && v7 == v8;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = a1[5];
  v11 = a2[5];
  if (v10)
  {
    if (v11)
    {
      v12 = a1[4] == a2[4] && v10 == v11;
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v11)
  {
    return 1;
  }

  return 0;
}

void GameControllerSymbolDescribers.hash(into:)(uint64_t a1)
{
  if (v1[1])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v1[3])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v1[5])
  {
    Hasher._combine(_:)(1u);
    OUTLINED_FUNCTION_38_2();

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int GameControllerSymbolDescribers.hashValue.getter()
{
  Hasher.init(_seed:)();
  GameControllerSymbolDescribers.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GameControllerSymbolDescribers(uint64_t a1)
{
  Hasher.init(_seed:)();
  GameControllerSymbolDescribers.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL static GameControllerContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v22[17] = v2;
  v22[18] = v3;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v13 = *(a2 + 8);
  v12 = *(a2 + 16);
  v15 = *(a2 + 24);
  v14 = *(a2 + 32);
  v17 = *(a2 + 40);
  v16 = *(a2 + 48);
  if (v7 != 1)
  {
    if (v12 != 1)
    {
      v22[0] = *(a2 + 8);
      v22[1] = v12;
      v22[2] = v15;
      v22[3] = v14;
      v22[4] = v17;
      v22[5] = v16;
      v21[0] = v6;
      v21[1] = v7;
      v21[2] = v8;
      v21[3] = v9;
      v21[4] = v11;
      v21[5] = v10;
      v19 = static GameControllerSymbolDescribers.== infix(_:_:)(v21, v22);
      outlined init with copy of GameControllerContext(a2, v20);
      outlined init with copy of GameControllerContext(a1, v20);

      outlined destroy of GameControllerContext(a1);
      return (v19 & 1) != 0;
    }

LABEL_7:
    outlined init with copy of GameControllerContext(a2, v20);
    outlined init with copy of GameControllerContext(a1, v20);
    outlined consume of GameControllerSymbolDescribers?(v6, v7);
    outlined consume of GameControllerSymbolDescribers?(v13, v12);
    return 0;
  }

  if (v12 != 1)
  {
    goto LABEL_7;
  }

  outlined init with copy of GameControllerContext(a2, v20);
  return 1;
}

void GameControllerContext.hash(into:)(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  if (*(v1 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    GameControllerSymbolDescribers.hash(into:)(a1);
  }
}

Swift::Int GameControllerContext.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *(v0 + 8);
    v6 = v1;
    v2 = *(v0 + 40);
    v7 = *(v0 + 24);
    v8 = v2;
    Hasher._combine(_:)(1u);
    GameControllerSymbolDescribers.hash(into:)(v4);
  }

  return Hasher._finalize()();
}

double default argument 1 of GameControllerContext.init(state:symbolDescriptors:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1BC4BB7D0;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

__n128 GameControllerContext.init(state:symbolDescriptors:)@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  v3 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  result = *(a2 + 32);
  *(a3 + 40) = result;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance GameControllerContext(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return static GameControllerContext.== infix(_:_:)(v5, v7);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GameControllerContext(uint64_t a1)
{
  Hasher.init(_seed:)();
  GameControllerContext.hash(into:)(v2);
  return Hasher._finalize()();
}

void CNKGameControllerContext.value.getter(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___CNKGameControllerContext_value);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = *(v3 + 4);
  v10 = *(v3 + 5);
  v9 = *(v3 + 6);
  outlined copy of GameControllerSymbolDescribers?(v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 48) = v9;
}

double CNKGameControllerContext.value.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___CNKGameControllerContext_value;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v6;
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = *(a1 + 48);
  return outlined consume of GameControllerSymbolDescribers?(v4, v5);
}

char *CNKGameControllerContext.init(value:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = &v2[OBJC_IVAR___CNKGameControllerContext_value];
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *(v3 + 2);
  v6 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v6;
  *(v3 + 2) = *(a1 + 32);
  *(v3 + 6) = *(a1 + 48);
  v7 = v2;
  outlined consume of GameControllerSymbolDescribers?(v4, v5);

  return v7;
}

uint64_t CNKGameControllerContext.state.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___CNKGameControllerContext_value;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t CNKGameControllerContext.sfSymbol(forButton:)(int a1)
{
  v3 = v1 + OBJC_IVAR___CNKGameControllerContext_value;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*(v3 + 16) != 1 && (!a1 || a1 == 2 || a1 == 1))
  {
  }

  return OUTLINED_FUNCTION_38_2();
}

id CNKGameControllerManager.value.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___CNKGameControllerManager_value;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);

  return v3;
}

void CNKGameControllerManager.value.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___CNKGameControllerManager_value;
  OUTLINED_FUNCTION_6_0(v2 + OBJC_IVAR___CNKGameControllerManager_value, a2);
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

char *CNKGameControllerManager.init(value:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR___CNKGameControllerManager_value;
  OUTLINED_FUNCTION_6_0(&v2[OBJC_IVAR___CNKGameControllerManager_value], v4);
  v5 = *&v2[v3];
  *&v2[v3] = a1;
  v6 = v2;

  return v6;
}

char *static CNKGameControllerManager.shared()()
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_4(&one-time initialization token for shared);
  }

  v2 = static GameControllerManager.shared;
  v3 = OBJC_IVAR___CNKGameControllerManager_value;
  OUTLINED_FUNCTION_6_0(&v1[OBJC_IVAR___CNKGameControllerManager_value], v0);
  v4 = *&v1[v3];
  *&v1[v3] = v2;
  v5 = v2;

  return v1;
}

void CNKGameControllerManager.addControl(_:event:when:)()
{
  v1 = OBJC_IVAR___CNKGameControllerManager_value;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  GameControllerManager.addControl(_:event:when:)();
}

void CNKGameControllerManager.addResponder(_:)(uint64_t a1, void (*a2)(uint64_t, id, uint64_t))
{
  v5 = OBJC_IVAR___CNKGameControllerManager_value;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = *(v2 + v5);
  ObjectType = swift_getObjectType();
  v8 = v6;
  a2(a1, v8, ObjectType);
}

void @objc CNKGameControllerManager.addResponder(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall CNKGameControllerManager.focus()()
{
  v2 = OBJC_IVAR___CNKGameControllerManager_value;
  OUTLINED_FUNCTION_19_1(v0);
  v3 = *(v1 + v2);
  GameControllerManager.focus(hasKeyboardFocus:)(0);
}

void __swiftcall CNKGameControllerManager.gameControllerContext()(CNKGameControllerContext *__return_ptr retstr)
{
  type metadata accessor for CNKGameControllerContext(v1);
  v3 = OBJC_IVAR___CNKGameControllerManager_value;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = *(v2 + v3);
  GameControllerManager.gameControllerContext()(v5);

  CNKGameControllerContext.init(value:)(v5);
}

uint64_t specialized closure #1 in BidirectionalCollection.last(where:)(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a1, (a2 & 0xC000000000000001) == 0, a2);
  if (v4)
  {
    return MEMORY[0x1BFB22010](a1, a2);
  }

  else
  {
  }
}

void *_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_15ConversationKit21GameControllerManagerC13WeakResponder33_5FD9E534FCA3327AE0AE348C3E444B19LLCTg5(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t outlined bridged method (pb) of @objc GCSystemButtonServiceRevlock.sfSymbolName.getter(void *a1)
{
  v1 = [a1 sfSymbolName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc GCControllerElement.sfSymbolsName.getter(void *a1)
{
  v2 = [a1 sfSymbolsName];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t lazy protocol witness table accessor for type CNKGameControllerButton and conformance CNKGameControllerButton(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized closure #1 in BidirectionalCollection.last(where:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized closure #1 in BidirectionalCollection.last(where:)(*a1, *a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void specialized GameControllerManager.removeResponder(_:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_isActive) == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v5[2] = v2;
    swift_beginAccess();
    v3 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #1 in GameControllerManager.removeResponder(_:), v5);
    v4 = specialized Array.count.getter();
    if (v4 < v3)
    {
      __break(1u);
      swift_endAccess();
      __break(1u);
    }

    else
    {
      specialized Array.replaceSubrange<A>(_:with:)(v3, v4);
      swift_endAccess();
      if (!specialized Array.count.getter())
      {
        GameControllerManager.updateButtonHandlers()();
      }
    }
  }
}

void specialized GameControllerManager.addResponder(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_isActive) == 1)
  {
    v5 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_responders;
    swift_beginAccess();
    v6 = *(a2 + v5);
    v7 = specialized Array.count.getter();

    for (i = 0; v7 != i; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFB22010](i, v6);
      }

      else
      {
        if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {

          return;
        }
      }
    }

    GameControllerManager.hasResponder.getter();
    v11 = v10;
    type metadata accessor for GameControllerManager.WeakResponder();
    v12 = swift_allocObject();
    v13 = swift_unknownObjectRetain();
    specialized GameControllerManager.WeakResponder.init(_:)(v13, v12);
    v14 = swift_beginAccess();
    MEMORY[0x1BFB20CC0](v14);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    if ((v11 & 1) == 0)
    {
      GameControllerManager.updateButtonHandlers()();
    }
  }
}

uint64_t outlined init with copy of GameControllerSymbolDescribers?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit30GameControllerSymbolDescribersVSgMd, &_s15ConversationKit30GameControllerSymbolDescribersVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of GameControllerSymbolDescribers?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit30GameControllerSymbolDescribersVSgMd, &_s15ConversationKit30GameControllerSymbolDescribersVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type GameControllerSymbolDescribers and conformance GameControllerSymbolDescribers()
{
  result = lazy protocol witness table cache variable for type GameControllerSymbolDescribers and conformance GameControllerSymbolDescribers;
  if (!lazy protocol witness table cache variable for type GameControllerSymbolDescribers and conformance GameControllerSymbolDescribers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameControllerSymbolDescribers and conformance GameControllerSymbolDescribers);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GameControllerContext and conformance GameControllerContext()
{
  result = lazy protocol witness table cache variable for type GameControllerContext and conformance GameControllerContext;
  if (!lazy protocol witness table cache variable for type GameControllerContext and conformance GameControllerContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameControllerContext and conformance GameControllerContext);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameControllerSymbolDescribers(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for GameControllerSymbolDescribers(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit30GameControllerSymbolDescribersVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for GameControllerContext(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 56))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GameControllerContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t specialized GameControllerManager.WeakResponder.init(_:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return a2;
}

uint64_t TimeToWaitForCallService.init(timeToWaitForCall:defaultTimeToWaitForCall:randomRange:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t TimeToWaitForCallService.timeToWait(for:)()
{
  v1 = (*v0)(&v6);
  if (v7 != 1)
  {
    return v6;
  }

  specialized Collection.randomElement<A>(using:)(v1, *(v0 + 32), *(v0 + 40));
  if (v3)
  {
    v2 = 0;
  }

  _ss8DurationV7secondsyABxSzRzlFZSi_Tt0g5(v2);
  v4 = static Duration.+ infix(_:_:)();
  if (static Duration.< infix(_:_:)())
  {
    return 1000000000000000000;
  }

  else
  {
    return v4;
  }
}

void specialized Collection.randomElement<A>(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 == -1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = specialized RandomNumberGenerator.next<A>(upperBound:)(v4);
  specialized ClosedRange<>.index(_:offsetBy:)(a2, 0, v7, a2, a3);
  if (v8)
  {
LABEL_11:
    __break(1u);
  }
}

uint64_t getEnumTagSinglePayload for TimeToWaitForCall(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimeToWaitForCall(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTag for TimeToWaitForCall(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for TimeToWaitForCall(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

unint64_t specialized Collection.randomElement<A>(using:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

LABEL_3:
  result = specialized Set.count.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result)
  {
    v4 = specialized RandomNumberGenerator.next<A>(upperBound:)(result);
    v5 = specialized Set.startIndex.getter();
    v7 = v6;
    v9 = v8;
    specialized Collection.index(_:offsetBy:)(v5, v6, v8 & 1, v4, a2);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v5, v7, v9 & 1);
    specialized Set.subscript.getter(v11, v13, v15 & 1, a2);
    v17 = v16;
    outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v11, v13, v15 & 1);
    return v17;
  }

  __break(1u);
  return result;
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1BFB23E10](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1BFB23E10](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized Collection.index(_:offsetBy:)(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
    goto LABEL_28;
  }

  v22 = result;
  v23 = a2;
  v6 = a3 & 1;
  v24 = v6;
  if (!a4)
  {
    outlined copy of Set<A>.Index._Variant<A>(result, a2, v6);
    return;
  }

  v8 = a5 & 0xC000000000000001;
  outlined copy of Set<A>.Index._Variant<A>(result, a2, v6);
  v9 = 0;
  while (1)
  {
    if (v8)
    {
      if (v24 != 1)
      {
        goto LABEL_29;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo25TUConversationParticipantC_GMd, &_sSh5IndexVySo25TUConversationParticipantC_GMR);
      v14 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      v14(v21, 0);
      goto LABEL_22;
    }

    if (v24)
    {
      goto LABEL_30;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      break;
    }

    v10 = 1 << *(a5 + 32);
    if (v22 >= v10)
    {
      break;
    }

    v11 = v22 >> 6;
    v12 = *(a5 + 56 + 8 * (v22 >> 6));
    if (((v12 >> v22) & 1) == 0)
    {
      goto LABEL_26;
    }

    if (*(a5 + 36) != v23)
    {
      goto LABEL_27;
    }

    v13 = v12 & (-2 << (v22 & 0x3F));
    if (v13)
    {
      v10 = __clz(__rbit64(v13)) | v22 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v15 = v11 << 6;
      v16 = v11 + 1;
      v17 = (a5 + 64 + 8 * v11);
      while (v16 < (v10 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v22, v23, 0);
          v10 = __clz(__rbit64(v18)) + v15;
          goto LABEL_21;
        }
      }

      outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v22, v23, 0);
    }

LABEL_21:
    v20 = *(a5 + 36);
    v22 = v10;
    v23 = v20;
    v24 = 0;
LABEL_22:
    if (++v9 >= a4)
    {
      return;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

double outlined copy of Set<A>.Index._Variant<A>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t specialized ClosedRange<>.index(_:offsetBy:)(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        return specialized ClosedRange<>.index(_:offsetBy:)(a5, 0, a3 + 1, a4, a5);
      }

      goto LABEL_14;
    }
  }

  else
  {
    v5 = a5 - result;
    if (__OFSUB__(a5, result))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (v5 >= a3)
    {
      v6 = __OFADD__(result, a3);
      result += a3;
      if (v6)
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if (result < a4)
      {
LABEL_17:
        __break(1u);
      }
    }

    else
    {
      if (v5 + 1 != a3)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CallControlsContext(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for CallControlsContext(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t LargeMultiwayControllerLayout.localParticipantViewRegularWidth.getter()
{
  if (*(v0 + 96))
  {

    LocalParticipantViewConstraintManager.regularWidth.getter();
  }

  return result;
}

uint64_t LargeMultiwayControllerLayout.__allocating_init(containingView:participantListView:participantListState:rosterCellLayoutGuide:gridView:participantGridState:controlsView:controlsState:callControlsViewController:bannerView:bannerState:bannerLayoutGuide:bannerDodgingLayoutGuide:localParticipantView:localParticipantState:localParticipantAspectRatio:localParticipantButtonShelfView:localParticipantControlsView:effectsView:effectsBrowserView:effectsBrowserContainerView:deviceOrientation:participantLabelsView:bottomControlsView:oneToOneShutterButton:changeLayoutButton:topCornerButtonsStackView:captionsView:captionsState:reactionsView:reactionsState:reactionPickerTipView:reactionPickerTipState:isLocalReactionActive:usesPaddingInsteadOfSafeArea:)(void *a1, void *a2, char a3, void *a4, void *a5, char a6, void *a7, unint64_t a8, void *a9, uint64_t a10, void *a11, unsigned __int8 *a12, void *a13, void *a14, void *a15, unsigned __int8 a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21, void *a22, unint64_t a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, unsigned __int8 *a30, void *a31, uint64_t a32, void *a33, uint64_t a34, char a35, char a36)
{
  v39 = swift_allocObject();
  LargeMultiwayControllerLayout.init(containingView:participantListView:participantListState:rosterCellLayoutGuide:gridView:participantGridState:controlsView:controlsState:callControlsViewController:bannerView:bannerState:bannerLayoutGuide:bannerDodgingLayoutGuide:localParticipantView:localParticipantState:localParticipantAspectRatio:localParticipantButtonShelfView:localParticipantControlsView:effectsView:effectsBrowserView:effectsBrowserContainerView:deviceOrientation:participantLabelsView:bottomControlsView:oneToOneShutterButton:changeLayoutButton:topCornerButtonsStackView:captionsView:captionsState:reactionsView:reactionsState:reactionPickerTipView:reactionPickerTipState:isLocalReactionActive:usesPaddingInsteadOfSafeArea:)(a1, a2, a3 & 1, a4, a5, a6 & 1, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, v41, a33, v42, a35, a36);
  return v39;
}

void *LargeMultiwayControllerLayout.init(containingView:participantListView:participantListState:rosterCellLayoutGuide:gridView:participantGridState:controlsView:controlsState:callControlsViewController:bannerView:bannerState:bannerLayoutGuide:bannerDodgingLayoutGuide:localParticipantView:localParticipantState:localParticipantAspectRatio:localParticipantButtonShelfView:localParticipantControlsView:effectsView:effectsBrowserView:effectsBrowserContainerView:deviceOrientation:participantLabelsView:bottomControlsView:oneToOneShutterButton:changeLayoutButton:topCornerButtonsStackView:captionsView:captionsState:reactionsView:reactionsState:reactionPickerTipView:reactionPickerTipState:isLocalReactionActive:usesPaddingInsteadOfSafeArea:)(void *a1, void *a2, char a3, void *a4, void *a5, char a6, void *a7, unint64_t a8, void *a9, uint64_t a10, void *a11, unsigned __int8 *a12, void *a13, void *a14, void *a15, unsigned __int8 a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21, void *a22, unint64_t a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, unsigned __int8 *a30, void *a31, uint64_t a32, void *a33, uint64_t a34, char a35, char a36)
{
  v261 = *a12;
  v36[4] = 0;
  v237 = v36 + 4;
  v40 = MEMORY[0x1E69E7CC0];
  v248 = *a30;
  v36[5] = 0;
  v36[6] = v40;
  v36[10] = 0;
  v276 = (v36 + 10);
  v36[11] = 0;
  v260 = v36 + 11;
  v36[12] = 0;
  v36[2] = a1;
  v277 = a1;
  [(UIView *)v277 frame];
  v36[7] = v41;
  v36[8] = v42;
  v36[9] = a23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd, &_ss23_ContiguousArrayStorageCySo6UIViewCSgGMR);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1BC4CD550;
  *(v43 + 32) = a2;
  *(v43 + 40) = a5;
  v268 = a5;
  v258 = a7;
  *(v43 + 48) = a7;
  *(v43 + 56) = a15;
  *(v43 + 64) = a18;
  *(v43 + 72) = a19;
  *(v43 + 80) = a27;
  *(v43 + 88) = a28;
  *(v43 + 96) = a31;
  v44 = a15;
  v266 = a31;
  v45 = &off_1E7FE9000;
  v271 = v44;
  v251 = a2;
  v46 = v44;
  if (a2)
  {
    v47 = a2;
    v48 = v268;
    v49 = a7;
    v50 = a7;
    v51 = a18;
    v52 = a19;
    v53 = a27;
    v54 = a28;
    [v47 setTranslatesAutoresizingMaskIntoConstraints_];
    v55 = v268;
    v45 = &off_1E7FE9000;
  }

  else
  {
    v56 = v268;
    v49 = a7;
    v57 = a7;
    v58 = a18;
    v59 = a19;
    v60 = a27;
    v61 = a28;
    v55 = v268;
  }

  [v55 v45[473]];
  [v49 v45[473]];
  [v44 v45[473]];
  if (a18)
  {
    [a18 v45[473]];
  }

  [a19 v45[473]];
  if (a27)
  {
    [a27 v45[473]];
  }

  if (a28)
  {
    [a28 v45[473]];
  }

  if (a31)
  {
    [v266 v45[473]];
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v62 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  [(UIView *)v277 addLayoutGuide:v62];
  v263 = v36;
  if (a36)
  {
    v63 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
    UILayoutGuide.addConstraintsToFill(_:insets:)(v277, *MEMORY[0x1E69DC5C0]);
  }

  else
  {
    v63 = [(UIView *)v277 safeAreaLayoutGuide];
  }

  v64 = v63;
  v65 = v62;
  v66 = 0.0;
  v67 = 0.0;
  if (static Platform.current.getter())
  {
    Layout.MultiwayFaceTime.init()(v289);
    v67 = v290;
  }

  if (static Platform.current.getter())
  {
    Layout.MultiwayFaceTime.init()(v291);
    v68 = v291[0];
    Layout.MultiwayFaceTime.init()(v292);
    v66 = v68 + v293;
  }

  v69 = [v65 topAnchor];
  v70 = [(UIView *)v277 topAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:v66];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v256 = v65;
  if (Features.isICUIRedesignEnabled.getter())
  {
    v72 = objc_opt_self();
    v73 = [v72 currentDevice];
    v74 = [v73 userInterfaceIdiom];

    if (v74)
    {
      v75 = [v72 &selRef_localizedShortName + 2];
      v76 = [v75 &selRef_isAvailable];

      if (v76 != 1)
      {
        v77 = [v65 topAnchor];
        v78 = [(UIView *)v277 topAnchor];
        v79 = [v77 constraintEqualToAnchor:v78 constant:8.0];

        v71 = v79;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1BC4BA7F0;
  *(v80 + 32) = v71;
  v253 = v71;
  v81 = [v65 bottomAnchor];
  v82 = [(UILayoutGuide *)v64 bottomAnchor];
  v83 = OUTLINED_FUNCTION_205();
  v85 = [v83 v84];

  *(v80 + 40) = v85;
  v86 = [v65 trailingAnchor];
  v270 = v64;
  v87 = [(UILayoutGuide *)v64 trailingAnchor];
  if (Features.isICUIRedesignEnabled.getter())
  {
    v88 = 0.0;
  }

  else
  {
    v88 = -v67;
  }

  v89 = objc_opt_self();
  v90 = [v86 constraintEqualToAnchor:v87 constant:v88];

  *(v80 + 48) = v90;
  v91 = [v65 bottomAnchor];
  v92 = [a4 bottomAnchor];
  v93 = OUTLINED_FUNCTION_205();
  v95 = [v93 v94];

  *(v80 + 56) = v95;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v265 = v89;
  [v89 activateConstraints_];

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    v97 = [v65 trailingAnchor];
    v98 = [a4 trailingAnchor];
    v99 = OUTLINED_FUNCTION_205();
    v101 = [v99 v100];

    [v101 setActive_];
  }

  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1BC4BAC30;
  v103 = [v65 leadingAnchor];
  v104 = [(UIView *)v270 leadingAnchor];

  Features.isICUIRedesignEnabled.getter();
  v105 = OUTLINED_FUNCTION_16_0();
  v107 = [v105 v106];

  *(v102 + 32) = v107;
  v108 = Array._bridgeToObjectiveC()().super.isa;

  [v89 activateConstraints_];

  v109 = *v276;
  *v276 = a24;
  v250 = a24;

  if (a25)
  {
    v110 = a25;
    v111 = static Platform.current.getter();
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_1BC4BA930;
    v113 = [v110 bottomAnchor];
    v114 = v270;
    v115 = [(UIView *)v270 bottomAnchor];
    v116 = OUTLINED_FUNCTION_16_0();
    v118 = [v116 v117];
    if (v111)
    {
      v119 = &selRef_centerXAnchor;
      v114 = v277;
    }

    else
    {
      v119 = &selRef_trailingAnchor;
    }

    v120 = v118;

    *(v112 + 32) = v120;
    v121 = [v110 *v119];
    v122 = [v114 *v119];
    v123 = OUTLINED_FUNCTION_16_0();
    v125 = [v123 v124];

    *(v112 + 40) = v125;
    v126 = Array._bridgeToObjectiveC()().super.isa;

    [v89 activateConstraints_];
  }

  v127 = a9;
  if (!a26)
  {
    goto LABEL_48;
  }

  v128 = a26;
  v129 = [v128 trailingAnchor];
  v130 = [(UIView *)v277 safeAreaLayoutGuide];
  v131 = [(UILayoutGuide *)v130 trailingAnchor];

  v132 = [v129 constraintEqualToAnchor_];
  type metadata accessor for UILayoutPriority(0);
  v295[0] = 1144750080;
  LODWORD(v294[0]) = 1065353216;
  lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v133) = v297[0];
  [v132 setPriority_];
  v134 = [v128 trailingAnchor];
  v135 = [v268 trailingAnchor];
  Layout.MultiwayFaceTime.init()(v294);
  v136 = OUTLINED_FUNCTION_205();
  v138 = [v136 v137];

  if (Features.isICUIRedesignEnabled.getter())
  {
    v139 = [objc_opt_self() currentDevice];
    v140 = [v139 userInterfaceIdiom];

    if (v140 == 1)
    {
      v141 = [v128 trailingAnchor];
      v142 = [(UIView *)v277 trailingAnchor];
      v143 = OUTLINED_FUNCTION_205();
      v145 = [v143 v144];

      v138 = v145;
    }
  }

  v146 = [v128 centerYAnchor];
  v147 = [(UIView *)v277 centerYAnchor];
  v148 = [v146 constraintEqualToAnchor_];

  if (Features.isICUIRedesignEnabled.getter())
  {
    v149 = objc_opt_self();
    v150 = [v149 currentDevice];
    v151 = [v150 userInterfaceIdiom];

    if (!v151)
    {
      swift_beginAccess();
      if (static AmbientState.isPresented == 1 && (Features.isICUIRedesignEnabled.getter() & 1) != 0)
      {
        v152 = [v128 topAnchor];
        v153 = [(UIView *)v277 topAnchor];
        Layout.MultiwayFaceTime.init()(v295);
        v154 = [v152 constraintEqualToAnchor:v153 constant:v296];
LABEL_46:
        v157 = v154;

        v148 = v157;
        goto LABEL_47;
      }
    }

    v155 = [v149 currentDevice];
    v156 = [v155 userInterfaceIdiom];

    if (v156 == 1)
    {
      v152 = [v128 topAnchor];
      v153 = [(UIView *)v277 topAnchor];
      v154 = [v152 constraintEqualToAnchor:v153 constant:v66];
      goto LABEL_46;
    }
  }

LABEL_47:
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_1BC4BA920;
  *(v158 + 32) = v138;
  *(v158 + 40) = v132;
  *(v158 + 48) = v148;
  v159 = v138;
  v160 = v132;
  v161 = v148;
  v162 = [v128 widthAnchor];
  Layout.MultiwayFaceTime.init()(v297);
  v163 = [v162 constraintEqualToConstant_];

  *(v158 + 56) = v163;
  v164 = [v128 heightAnchor];
  v165 = [v128 widthAnchor];
  v166 = [v164 constraintEqualToAnchor_];

  *(v158 + 64) = v166;
  v167 = Array._bridgeToObjectiveC()().super.isa;

  [v265 activateConstraints_];

  v127 = a9;
LABEL_48:
  if (v127)
  {
    v168 = v127;
    if (static Platform.current.getter() == 3)
    {
      v169 = a26;
      v170 = a26;
    }

    else
    {
      v169 = 0;
    }

    ObjectType = swift_getObjectType();
    v172 = v277;
    v171 = (*(a10 + 160))(v277, v169, v271, a36 & 1, ObjectType);

    v174 = v171;
  }

  else
  {
    v171 = 0;
    v172 = v277;
  }

  v288[0] = v248;
  v244 = type metadata accessor for GridViewConstraintManager();
  swift_allocObject();
  v249 = a28;
  v175 = v256;
  v176 = a4;
  v177 = a13;
  v178 = v172;
  v179 = v268;
  v257 = a27;
  v278 = GridViewConstraintManager.init(containingGuide:containingView:gridView:rosterCellLayoutGuide:changeLayoutButton:topCornerButtonsStackView:captionsState:bannerLayoutGuide:)(v175, v178, v179, v176, a27, a28, v288, v177);
  v247 = v171;
  if (v171)
  {
    v180 = v171;
  }

  else
  {
    v180 = v175;
  }

  v288[0] = v261;
  v240 = type metadata accessor for LocalParticipantViewConstraintManager();
  swift_allocObject();
  v246 = a22;
  v181 = v178;
  v182 = v271;
  v183 = v179;
  v184 = v258;
  v185 = v176;
  v272 = v177;
  v274 = v182;
  v186 = LocalParticipantViewConstraintManager.init(containingGuide:rosterCellLayoutGuide:containingView:localPIPView:controlsView:effectsBrowserContainerView:localState:bannerState:controlsState:gridView:aspectRatio:deviceOrientation:bannerLayoutGuide:)(v180, v185, v181, v182, v184, a22, a16, v288, a8, v183, a17, a23, v272);
  v263[12] = v186;

  if (a9)
  {
    v187 = swift_getObjectType();
    v188 = *(a10 + 144);
    v189 = a9;

    v188(v190, &protocol witness table for LocalParticipantViewConstraintManager, v187, a10);
  }

  v275 = v186;
  v236 = type metadata accessor for InCallControlsViewConstraintManager();
  swift_allocObject();
  v191 = v181;
  v192 = v184;
  v193 = v175;
  v264 = InCallControlsViewConstraintManager.init(containingGuide:containingView:controlsView:type:)(v193, v191, v192, 1, 2);
  if (static Platform.current.getter())
  {
    goto LABEL_60;
  }

  v195 = [objc_opt_self() currentDevice];
  v196 = [v195 userInterfaceIdiom];

  if (v196)
  {
    goto LABEL_62;
  }

  swift_beginAccess();
  if (static AmbientState.isPresented != 1)
  {
    v194 = 2;
    goto LABEL_67;
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
LABEL_60:
    v194 = 1;
  }

  else
  {
LABEL_62:
    v194 = 2;
  }

LABEL_67:
  v239 = type metadata accessor for ParticipantListViewConstraintManager();
  swift_allocObject();
  v197 = v251;
  v198 = v183;
  v199 = v192;
  v200 = v193;
  v201 = v185;
  v202 = v272;
  v252 = v197;
  v259 = v199;
  v273 = ParticipantListViewConstraintManager.init(containingGuide:rosterView:controlsView:type:bannerLayoutGuide:rosterCellLayoutGuide:gridView:)(v200, v197, v199, v194, v202, v201, v198);
  v238 = type metadata accessor for CaptionsViewConstraintManager();
  swift_allocObject();
  v203 = v191;
  v204 = v198;
  v205 = v200;
  v206 = v201;
  v207 = a29;
  v208 = a11;
  v243 = v204;
  v245 = v207;
  v269 = CaptionsViewConstraintManager.init(containingGuide:rosterCellLayoutGuide:containingView:captionsView:bannerView:gridView:)(v205, v206, v203, v207, v208, v204);
  v288[0] = 0;
  v209 = type metadata accessor for InCallBannerViewConstraintManager();
  swift_allocObject();
  v210 = v203;
  v211 = v205;
  v212 = v202;
  v213 = v208;
  v242 = a14;
  v241 = v213;
  v214 = InCallBannerViewConstraintManager.init(layoutIdiom:containingGuide:containingView:visibleGuide:bannerView:bannerDodgingGuide:)(v288, v211, v210, v212, v213, v242);
  OUTLINED_FUNCTION_3_5(v260, v288);
  *v260 = v214;

  if (a20 && a21)
  {
    v215 = a20;
    v216 = a21;
    v217 = _s15ConversationKit20ViewControllerLayoutPAAE25effectsConstraintManagers4with11layoutIdiom08controlsC0016localParticipantC00fC00f7BrowserC0SayAA0cG7Manager_pGSo6UIViewC_AA08MultiwaycD0C0eK0OA2NSgA2NtFZAA05LargerdE0C_Tt5B5Tm(v210, 0, v259, a15, v215, v216);

    *v237 = v217;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit21ViewConstraintManager_pGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit21ViewConstraintManager_pGMR);
  v218 = swift_allocObject();
  *(v218 + 16) = xmmword_1BC4BAA20;
  *(v218 + 56) = v244;
  *(v218 + 64) = &protocol witness table for GridViewConstraintManager;
  *(v218 + 32) = v278;
  *(v218 + 96) = v240;
  *(v218 + 104) = &protocol witness table for LocalParticipantViewConstraintManager;
  *(v218 + 72) = v275;
  v287 = v218;
  if (!a9)
  {

LABEL_76:
    v223 = OUTLINED_FUNCTION_0_112();
    *(v223 + 16) = xmmword_1BC4BA940;
    *(v223 + 56) = v236;
    *(v223 + 64) = &protocol witness table for InCallControlsViewConstraintManager;
    *(v223 + 32) = v264;

    specialized Array.append<A>(contentsOf:)(v223);
    goto LABEL_77;
  }

  v219 = OUTLINED_FUNCTION_0_112();
  *(v219 + 16) = xmmword_1BC4BA940;
  *(v219 + 56) = swift_getObjectType();
  *(v219 + 64) = *(a10 + 8);
  *(v219 + 32) = a9;
  v220 = a9;

  specialized Array.append<A>(contentsOf:)(v219);
  if (Features.isICUIRedesignEnabled.getter())
  {
    v221 = [objc_opt_self() currentDevice];
    v222 = [v221 userInterfaceIdiom];

    if (v222 == 1)
    {
      goto LABEL_76;
    }
  }

LABEL_77:
  v224 = *v260;
  if (*v260)
  {
    v225 = OUTLINED_FUNCTION_0_112();
    *(v225 + 16) = xmmword_1BC4BA940;
    *(v225 + 56) = v209;
    *(v225 + 64) = &protocol witness table for InCallBannerViewConstraintManager;
    *(v225 + 32) = v224;

    specialized Array.append<A>(contentsOf:)(v225);
  }

  v226 = swift_allocObject();
  *(v226 + 16) = xmmword_1BC4BAA20;
  *(v226 + 56) = v239;
  *(v226 + 64) = &protocol witness table for ParticipantListViewConstraintManager;
  *(v226 + 32) = v273;
  *(v226 + 96) = v238;
  *(v226 + 104) = &protocol witness table for CaptionsViewConstraintManager;
  *(v226 + 72) = v269;

  specialized Array.append<A>(contentsOf:)(v226);
  if (a31)
  {
    v227 = type metadata accessor for ReactionsViewConstraintManager();
    swift_allocObject();
    v228 = ReactionsViewConstraintManager.init(localParticipantView:reactionsView:)(v274, v266);
    v229 = OUTLINED_FUNCTION_0_112();
    *(v229 + 16) = xmmword_1BC4BA940;
    *(v229 + 56) = v227;
    *(v229 + 64) = &protocol witness table for ReactionsViewConstraintManager;
    *(v229 + 32) = v228;
    specialized Array.append<A>(contentsOf:)(v229);
  }

  if (a33)
  {
    v230 = type metadata accessor for ReactionPickerTipViewConstraintManager();
    swift_allocObject();
    v231 = ReactionPickerTipViewConstraintManager.init(containingGuide:localParticipantView:reactionPickerTipView:)(v211, v274, a33);
    v232 = OUTLINED_FUNCTION_0_112();
    *(v232 + 16) = xmmword_1BC4BA940;
    *(v232 + 56) = v230;
    *(v232 + 64) = &protocol witness table for ReactionPickerTipViewConstraintManager;
    *(v232 + 32) = v231;
    specialized Array.append<A>(contentsOf:)(v232);
  }

  else
  {
  }

  if (a18)
  {
    v279[0] = 0;
    v233 = a18;
    v234 = static ViewControllerLayout.buttonShelfConstraintManagers(with:localParticipantView:localParticipantButtonShelfView:localParticipantControlsView:layoutIdiom:)(v210, v274, v233, a19, v279);

    v263[5] = v234;
  }

  v263[3] = v287;
  v279[0] = a3 & 1;
  v280 = a8;
  v281 = v261;
  v282 = a16;
  v283 = a6 & 1;
  v284 = 0;
  v285 = 0;
  v286 = a35 & 1;
  LargeMultiwayControllerLayout.updateLayoutWith(_:)(v279);

  return v263;
}

uint64_t _s15ConversationKit20ViewControllerLayoutPAAE25effectsConstraintManagers4with11layoutIdiom08controlsC0016localParticipantC00fC00f7BrowserC0SayAA0cG7Manager_pGSo6UIViewC_AA08MultiwaycD0C0eK0OA2NSgA2NtFZAA05LargerdE0C_Tt5B5Tm(void *a1, char a2, void *a3, void *a4, void *a5, void *a6)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  [a1 addLayoutGuide_];
  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BC4BA7F0;
  v11 = [v8 topAnchor];
  v12 = [a1 safeAreaLayoutGuide];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v10 + 32) = v14;
  v15 = [v8 bottomAnchor];
  v16 = OUTLINED_FUNCTION_3_89();
  v17 = [v16 bottomAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v10 + 40) = v18;
  v19 = [v8 leadingAnchor];
  v20 = OUTLINED_FUNCTION_3_89();
  v21 = [v20 leadingAnchor];

  v22 = [v14 constraintEqualToAnchor_];
  *(v10 + 48) = v22;
  v23 = [v8 trailingAnchor];
  v24 = OUTLINED_FUNCTION_3_89();
  v25 = [v24 trailingAnchor];

  v26 = [v14 constraintEqualToAnchor_];
  *(v10 + 56) = v26;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 activateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit21ViewConstraintManager_pGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit21ViewConstraintManager_pGMR);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BC4BAA20;
  v29 = type metadata accessor for EffectsViewConstraintManager();
  swift_allocObject();
  v30 = a4;
  v31 = a5;
  v32 = v8;
  v33 = EffectsViewConstraintManager.init(containingGuide:localParticipantView:effectsView:)(v32, a4, v31);
  *(v28 + 56) = v29;
  *(v28 + 64) = &protocol witness table for EffectsViewConstraintManager;
  *(v28 + 32) = v33;
  v43 = a2 & 1;
  v34 = type metadata accessor for EffectsBrowserViewConstraintManager();
  swift_allocObject();
  v35 = v32;
  v36 = v30;
  v37 = EffectsBrowserViewConstraintManager.init(layoutIdiom:containingGuide:effectsBrowserView:controlsView:localParticipantView:)(&v43, v35, a6, a3, a4);
  *(v28 + 96) = v34;
  *(v28 + 104) = &protocol witness table for EffectsBrowserViewConstraintManager;
  *(v28 + 72) = v37;

  return v28;
}

void LargeMultiwayControllerLayout.updateLayoutWith(_:)(_BYTE *a1)
{
  v30[40] = *a1;
  v30[38] = a1[18];
  v30[36] = a1[20];
  v30[32] = a1[21];
  v30[30] = a1[22];
  v2 = objc_opt_self();
  OUTLINED_FUNCTION_3_5((v1 + 6), v30);
  type metadata accessor for NSLayoutConstraint();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 deactivateConstraints_];

  OUTLINED_FUNCTION_1_97();
  *(v1 + 6) = _s15ConversationKit20ViewControllerLayoutPAAE11constraints4with11layoutState4size17deviceOrientationSaySo18NSLayoutConstraintCGSayAA0cN7Manager_pGSg_AA08Multiwayc11ConstraintsD0C07OveralleI0VSo6CGSizeVSo09CNKDeviceL0VtFZAA05LargepdE0C_Tt3B5Tm(v4, v5, v6, v7, v8, v9, v10);

  v11 = v1[7];
  v12 = v1[8];
  v13 = *(v1 + 9);

  OUTLINED_FUNCTION_1_97();
  v18 = _s15ConversationKit20ViewControllerLayoutPAAE11constraints4with11layoutState4size17deviceOrientationSaySo18NSLayoutConstraintCGSayAA0cN7Manager_pGSg_AA08Multiwayc11ConstraintsD0C07OveralleI0VSo6CGSizeVSo09CNKDeviceL0VtFZAA05LargepdE0C_Tt3B5Tm(v14, v15, v16, v17, v13, v11, v12);

  OUTLINED_FUNCTION_5_71(v19);
  specialized Array.append<A>(contentsOf:)(v18);
  swift_endAccess();
  v20 = v1[7];
  v21 = v1[8];
  v22 = *(v1 + 9);

  OUTLINED_FUNCTION_1_97();
  v27 = _s15ConversationKit20ViewControllerLayoutPAAE11constraints4with11layoutState4size17deviceOrientationSaySo18NSLayoutConstraintCGSayAA0cN7Manager_pGSg_AA08Multiwayc11ConstraintsD0C07OveralleI0VSo6CGSizeVSo09CNKDeviceL0VtFZAA05LargepdE0C_Tt3B5Tm(v23, v24, v25, v26, v22, v20, v21);

  OUTLINED_FUNCTION_5_71(v28);
  specialized Array.append<A>(contentsOf:)(v27);
  swift_endAccess();

  v29 = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints_];
}

uint64_t _s15ConversationKit20ViewControllerLayoutPAAE11constraints4with11layoutState4size17deviceOrientationSaySo18NSLayoutConstraintCGSayAA0cN7Manager_pGSg_AA08Multiwayc11ConstraintsD0C07OveralleI0VSo6CGSizeVSo09CNKDeviceL0VtFZAA05LargepdE0C_Tt3B5Tm(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v7 = MEMORY[0x1E69E7CC0];
  if (!a1)
  {
    return v7;
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v57 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    result = v57;
    v15 = a1 + 32;
    do
    {
      v16 = result;
      outlined init with copy of IDSLookupManager(v15, v54);
      v17 = v55;
      v18 = v56;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      v49[0] = a2;
      v50 = a3;
      v53 = BYTE6(a4);
      v52 = WORD2(a4);
      v51 = a4;
      v19 = (*(v18 + 8))(v49, a5, v17, v18, a6, a7);
      __swift_destroy_boxed_opaque_existential_1(v54);
      result = v16;
      v57 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        result = v57;
      }

      *(result + 16) = v22;
      *(result + 8 * v21 + 32) = v19;
      v15 += 40;
      --v9;
    }

    while (v9);
  }

  else
  {
    v22 = *(MEMORY[0x1E69E7CC0] + 16);
    result = MEMORY[0x1E69E7CC0];
  }

  v23 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v46 = result;
  v48 = result + 32;
  v44 = v22;
  while (1)
  {
    if (v23 == v22)
    {

      return v7;
    }

    if (v23 >= *(result + 16))
    {
      break;
    }

    v24 = *(v48 + 8 * v23);
    if (v24 >> 62)
    {
      v25 = __CocoaSet.count.getter();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v7 >> 62;
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = result + v25;
    if (__OFADD__(result, v25))
    {
      goto LABEL_45;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v26)
      {
LABEL_22:
        __CocoaSet.count.getter();
      }

LABEL_23:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v7 = result;
      v28 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v26)
    {
      goto LABEL_22;
    }

    v28 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v27 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_23;
    }

LABEL_24:
    ++v23;
    v29 = *(v28 + 16);
    v30 = (*(v28 + 24) >> 1) - v29;
    v31 = v28 + 8 * v29;
    if (v24 >> 62)
    {
      v33 = __CocoaSet.count.getter();
      if (v33)
      {
        v34 = v33;
        result = __CocoaSet.count.getter();
        if (v30 < result)
        {
          goto LABEL_49;
        }

        if (v34 < 1)
        {
          goto LABEL_50;
        }

        v43 = result;
        v35 = v31 + 32;
        lazy protocol witness table accessor for type [NSLayoutConstraint] and conformance [A]();
        for (i = 0; i != v34; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18NSLayoutConstraintCGMd, &_sSaySo18NSLayoutConstraintCGMR);
          v37 = specialized protocol witness for Collection.subscript.read in conformance [A](v54, i, v24);
          v39 = *v38;
          v37(v54, 0);
          *(v35 + 8 * i) = v39;
        }

        v32 = v43;
        goto LABEL_34;
      }

LABEL_38:

      v22 = v44;
      result = v46;
      if (v25 > 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v32 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v32)
      {
        goto LABEL_38;
      }

      if (v30 < v32)
      {
        goto LABEL_48;
      }

      type metadata accessor for NSLayoutConstraint();
      swift_arrayInitWithCopy();
LABEL_34:

      v22 = v44;
      result = v46;
      if (v32 < v25)
      {
        goto LABEL_46;
      }

      if (v32 > 0)
      {
        v40 = *(v28 + 16);
        v41 = __OFADD__(v40, v32);
        v42 = v40 + v32;
        if (v41)
        {
          goto LABEL_47;
        }

        *(v28 + 16) = v42;
      }
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

Swift::Void __swiftcall LargeMultiwayControllerLayout.addEffectsConstraints(with:controlsView:localParticipantView:effectsView:effectsBrowserView:)(UIView *with, UIView *controlsView, UIView_optional *localParticipantView, UIView *effectsView, UIView *effectsBrowserView)
{
  *(v5 + 32) = _s15ConversationKit20ViewControllerLayoutPAAE25effectsConstraintManagers4with11layoutIdiom08controlsC0016localParticipantC00fC00f7BrowserC0SayAA0cG7Manager_pGSo6UIViewC_AA08MultiwaycD0C0eK0OA2NSgA2NtFZAA05LargerdE0C_Tt5B5Tm(with, 0, controlsView, localParticipantView, effectsView, effectsBrowserView);
}

Swift::Void __swiftcall LargeMultiwayControllerLayout.update(with:)(CGSize with)
{
  v2 = *(v1 + 96);
  if (v2)
  {
    *(v2 + 312) = with.width;
    *(v2 + 320) = with.height;
    *(v2 + 328) = 0;
  }
}

void LargeMultiwayControllerLayout.update(for:with:deviceOrientation:)(_BYTE *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = a6;
  *(v6 + 72) = a2;
  LargeMultiwayControllerLayout.updateLayoutWith(_:)(a1);
}

double LargeMultiwayControllerLayout.update(localParticipantAspectRatio:layoutState:)(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v18[0] = *a2;
  *(v18 + 15) = *(a2 + 15);
  v5 = v2[3];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      outlined init with copy of IDSLookupManager(v7, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21ViewConstraintManager_pMd, &_s15ConversationKit21ViewConstraintManager_pMR);
      type metadata accessor for LocalParticipantViewConstraintManager();
      if (swift_dynamicCast())
      {
        v8 = v2[9];
        *v17 = v18[0];
        *&v17[15] = *(v18 + 15);
        LocalParticipantViewConstraintManager.update(aspectRatio:deviceOrientation:layoutState:)(a1, v8, v17);
      }

      v7 += 40;
      --v6;
    }

    while (v6);
  }

  v9 = v2[5];
  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = v9 + 32;

      do
      {
        outlined init with copy of IDSLookupManager(v11, v17);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21ViewConstraintManager_pMd, &_s15ConversationKit21ViewConstraintManager_pMR);
        type metadata accessor for LocalParticipantControlsViewConstraintManager();
        if (swift_dynamicCast())
        {
          v12 = v16;
          OUTLINED_FUNCTION_3_5(v16 + 16, v15);
          v13 = *(a1 + 16);
          *(v12 + 16) = *a1;
          *(v12 + 32) = v13;
          *(v12 + 48) = *(a1 + 32);
        }

        v11 += 40;
        --v10;
      }

      while (v10);
    }
  }

  return *&v4;
}

Swift::Void __swiftcall LargeMultiwayControllerLayout.update(remoteParticipantAspectRatio:)(CGSize remoteParticipantAspectRatio)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    height = remoteParticipantAspectRatio.height;
    width = remoteParticipantAspectRatio.width;
    v6 = v2 + 32;
    do
    {
      outlined init with copy of IDSLookupManager(v6, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21ViewConstraintManager_pMd, &_s15ConversationKit21ViewConstraintManager_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit37CaptionsViewConstraintManagerProtocol_pMd, &_s15ConversationKit37CaptionsViewConstraintManagerProtocol_pMR);
      if (swift_dynamicCast())
      {
        outlined init with take of TapInteractionHandler(v9, v12);
        v7 = v13;
        v8 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(v8 + 24))(v7, v8, width, height);
        __swift_destroy_boxed_opaque_existential_1(v12);
      }

      else
      {
        v10 = 0;
        memset(v9, 0, sizeof(v9));
        outlined destroy of CaptionsViewConstraintManagerProtocol?(v9);
      }

      v6 += 40;
      --v3;
    }

    while (v3);
  }
}

Swift::Void __swiftcall LargeMultiwayControllerLayout.update(isDisplayedInBanner:containingView:)(Swift::Bool isDisplayedInBanner, UIView *containingView)
{
  v3 = *(v2 + 80);
  if (v3)
  {
    v7 = v3;
    v6 = static Platform.current.getter() == 0;
    [v7 setFrame_];
  }
}

double _s15ConversationKit20ViewControllerLayoutPAAE017participantLabelsC5Frame19isDisplayedInBanner0ijK7Ambient010containingC00fgC0So6CGRectVSb_SbSo6UIViewCALtFZAA013SmallMultiwaydE0C_Tt3g5Tm(char a1, char a2, id a3, void *a4)
{
  if (a1)
  {
    [a3 bounds];
    v9 = v8;
  }

  else
  {
    if (a2)
    {
      v10 = [a3 safeAreaLayoutGuide];
    }

    else
    {
      v10 = [a3 readableContentGuide];
    }

    v11 = v10;
    [v11 layoutFrame];
    v9 = v12;
  }

  [a4 systemLayoutSizeFittingSize_];
  if (a2)
  {
    [a3 safeAreaInsets];
    v14 = v13;
    if ((a1 & 1) == 0)
    {
      return v14;
    }
  }

  else
  {
    [a3 bounds];
    v14 = floor((v15 - v9) * 0.5);
    if ((a1 & 1) == 0)
    {
      v16 = [objc_opt_self() mainScreen];
      [v16 bounds];

      [a3 safeAreaInsets];
      return v14;
    }
  }

  [a3 bounds];
  return v14;
}

Swift::Void __swiftcall LargeMultiwayControllerLayout.update(localParticipantCorner:)(ConversationKit::MultiwayViewConstraintsController::MultiwayCorner_optional localParticipantCorner)
{
  v2 = *(v1 + 96);
  if (v2)
  {
    OUTLINED_FUNCTION_3_5(&v2[297], v4);
    v2[297].value = localParticipantCorner.value;
  }
}

uint64_t LargeMultiwayControllerLayout.deinit()
{

  return v0;
}

uint64_t LargeMultiwayControllerLayout.__deallocating_deinit()
{
  LargeMultiwayControllerLayout.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of CaptionsViewConstraintManagerProtocol?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit37CaptionsViewConstraintManagerProtocol_pSgMd, &_s15ConversationKit37CaptionsViewConstraintManagerProtocol_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [NSLayoutConstraint] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [NSLayoutConstraint] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NSLayoutConstraint] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo18NSLayoutConstraintCGMd, &_sSaySo18NSLayoutConstraintCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [NSLayoutConstraint] and conformance [A]);
  }

  return result;
}

ConversationKit::SpamFlowController::Flow __swiftcall SpamFlowController.determineFlow()()
{
  v1 = v0;
  if (one-time initialization token for spam != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.spam);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "determine SpamFlow", v5, 2u);
    OUTLINED_FUNCTION_27();
  }

  v6 = v1[5];
  v7 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v6);
  OUTLINED_FUNCTION_2_7();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_0_113(v11, v37);
  v13(v12);
  LOBYTE(v7) = (*(v7 + 40))(v6, v7);
  (*(v9 + 8))(v3, v6);
  if ((v7 & 1) == 0)
  {
    return 5;
  }

  outlined init with copy of IDSLookupManager((v1 + 2), v39);
  v14 = SpamFlowController.KnownCallers.init(spamCall:)(v39);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v14;
    _os_log_impl(&dword_1BBC58000, v15, v16, "determineFlow knownCallers %ld", v17, 0xCu);
    OUTLINED_FUNCTION_27();
  }

  v19 = v1[5];
  v18 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v19);
  OUTLINED_FUNCTION_2_7();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = OUTLINED_FUNCTION_0_113(v23, v38);
  v25(v24);
  v26 = (*(v18 + 32))(v19, v18);
  (*(v21 + 8))(v15, v19);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 67109120;
    *(v29 + 4) = v26 & 1;
    _os_log_impl(&dword_1BBC58000, v27, v28, "determineFlow oneOnOneUnknown %{BOOL}d", v29, 8u);
    OUTLINED_FUNCTION_27();
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  if (v26)
  {
    v33 = ConversationKit_SpamFlowController_Flow_reportAndBlock;
    if (v32)
    {
      v34 = "determineFlow 1-1 report and block ";
LABEL_23:
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1BBC58000, v30, v31, v34, v35, 2u);
      OUTLINED_FUNCTION_27();
    }
  }

  else
  {
    switch(v14)
    {
      case 0u:
        v33 = ConversationKit_SpamFlowController_Flow_groupBlockSome;
        if (v32)
        {
          v34 = "determineFlow groupBlockSome";
          goto LABEL_23;
        }

        break;
      case 2u:
        v33 = ConversationKit_SpamFlowController_Flow_groupIntiatorReportAndBlock;
        if (v32)
        {
          v34 = "determineFlow groupIntiatorReportAndBlock";
          goto LABEL_23;
        }

        break;
      case 3u:
        v33 = ConversationKit_SpamFlowController_Flow_knownContact;
        if (v32)
        {
          v34 = "determineFlow knownContact ";
          goto LABEL_23;
        }

        break;
      default:
        v33 = ConversationKit_SpamFlowController_Flow_groupBlockAll;
        if (v32)
        {
          v34 = "determineFlow groupBlockAll";
          goto LABEL_23;
        }

        break;
    }
  }

  return v33;
}

ConversationKit::SpamFlowController::Flow_optional __swiftcall SpamFlowController.Flow.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 6)
  {
    LOBYTE(rawValue) = 6;
  }

  return rawValue;
}

ConversationKit::SpamFlowController::Flow_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SpamFlowController.Flow@<W0>(Swift::Int *a1@<X0>, ConversationKit::SpamFlowController::Flow_optional *a2@<X8>)
{
  result.value = SpamFlowController.Flow.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SpamFlowController.Flow@<X0>(uint64_t *a1@<X8>)
{
  result = SpamFlowController.Flow.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t SpamFlowController.KnownCallers.init(spamCall:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  if ((*(v3 + 24))(v2, v3))
  {
    v4 = 2;
  }

  else
  {
    v5 = a1[3];
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v5);
    if ((*(v6 + 8))(v5, v6))
    {
      v4 = 1;
    }

    else
    {
      v7 = a1[3];
      v8 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v7);
      if ((*(v8 + 16))(v7, v8))
      {
        v4 = 0;
      }

      else
      {
        v4 = 3;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t SpamFlowController.__allocating_init(spamCall:)(void *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  OUTLINED_FUNCTION_2_7();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t SpamFlowController.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t specialized SpamFlowController.__allocating_init(spamCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v11 = specialized SpamFlowController.init(spamCall:)(v9, v10, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v11;
}

uint64_t specialized SpamFlowController.init(spamCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  outlined init with take of TapInteractionHandler(&v9, a2 + 16);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SpamFlowController.Flow and conformance SpamFlowController.Flow()
{
  result = lazy protocol witness table cache variable for type SpamFlowController.Flow and conformance SpamFlowController.Flow;
  if (!lazy protocol witness table cache variable for type SpamFlowController.Flow and conformance SpamFlowController.Flow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpamFlowController.Flow and conformance SpamFlowController.Flow);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpamFlowController.Flow(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SpamFlowController.Flow(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

char *PushToTalkLeavePillButton.init(viewModel:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit19PushToTalkViewModelC0H11ButtonStateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit19PushToTalkViewModelC0H11ButtonStateO_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19[-v5 - 8];
  *(v1 + OBJC_IVAR____TtC15ConversationKit25PushToTalkLeavePillButton_cancellables) = MEMORY[0x1E69E7CD0];
  *(v1 + OBJC_IVAR____TtC15ConversationKit25PushToTalkLeavePillButton_viewModel) = a1;
  v7 = objc_opt_self();

  v8 = [v7 conversationKit];
  v22._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x657661654CLL;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v10.value._object = 0xEF74694B6E6F6974;
  v9._object = 0xE500000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v22);

  v20 = &type metadata for SymbolImageDescribers.ConversationControls;
  v21 = &protocol witness table for SymbolImageDescribers.ConversationControls;
  v19[0] = 16;
  if (one-time initialization token for pttLeaveButtonBanner != -1)
  {
    swift_once();
  }

  v13 = static Colors.InCallControls.pttLeaveButtonBanner;

  v14 = PillButton.init(title:symbol:stateConfiguration:context:)(v12._countAndFlagsBits, v12._object, v19, v13, 1u);
  v15 = *(*a1 + 136);
  v16 = v14;
  v15();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type Published<PushToTalkViewModel.TalkButtonState>.Publisher and conformance Published<A>.Publisher();
  Publisher<>.sink(receiveValue:)();

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v16;
}

void closure #1 in PushToTalkLeavePillButton.init(viewModel:)(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 0xFE) == 2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_7;
    }

    v3 = Strong;
    [Strong setEnabled_];
  }

  else
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (!v4)
    {
      goto LABEL_7;
    }

    v3 = v4;
    [v4 setEnabled_];
  }

LABEL_7:
  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    [v5 setNeedsUpdateConfiguration];
  }
}

id PushToTalkLeavePillButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PushToTalkLeavePillButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit25PushToTalkLeavePillButton_cancellables) = MEMORY[0x1E69E7CD0];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double PushToTalkLeavePillButton.__ivar_destroyer()
{

  return result;
}

id PushToTalkLeavePillButton.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PushToTalkLeavePillButton();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void key path getter for CaptionsViewDragController.dragEnabled : CaptionsViewDragController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

void CaptionsViewDragController.dragEnabled.setter(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 16, a2);
  v4 = *(v2 + 16);
  *(v2 + 16) = a1;
  CaptionsViewDragController.dragEnabled.didset(v4);
}

void CaptionsViewDragController.dragEnabled.didset(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    [*(v1 + 72) setEnabled_];
  }
}

void (*CaptionsViewDragController.dragEnabled.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  OUTLINED_FUNCTION_4_0(v1 + 16, v3);
  *(v3 + 32) = *(v1 + 16);
  return CaptionsViewDragController.dragEnabled.modify;
}

void CaptionsViewDragController.dragEnabled.modify(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  CaptionsViewDragController.dragEnabled.setter(*(*a1 + 32), a2);

  free(v2);
}

uint64_t key path getter for CaptionsViewDragController.delegate : CaptionsViewDragController@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CaptionsViewDragController.delegate : CaptionsViewDragController(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t CaptionsViewDragController.delegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 24, a2);
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CaptionsViewDragController.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return CaptionsViewDragController.delegate.modify;
}

void CaptionsViewDragController.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
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

uint64_t CaptionsViewDragController.isDragging.setter(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_6_0(v2 + 64, a2);
  *(v2 + 64) = a1;
  return result;
}

uint64_t CaptionsViewDragController.__allocating_init(captionsView:)(void *a1)
{
  v2 = swift_allocObject();
  CaptionsViewDragController.init(captionsView:)(a1);
  return v2;
}

uint64_t CaptionsViewDragController.init(captionsView:)(void *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = [objc_allocWithZone(MEMORY[0x1E69DCD28]) init];
  swift_unknownObjectWeakAssign();
  [*(v1 + 72) addTarget:v1 action:sel_handlePanGestureRecognizer_];
  [*(v1 + 72) setEnabled_];
  [a1 addGestureRecognizer_];

  return v1;
}

Swift::Void __swiftcall CaptionsViewDragController.handlePanGestureRecognizer(_:)(UIPanGestureRecognizer *a1)
{
  switch([(UIPanGestureRecognizer *)a1 state])
  {
    case 0uLL:
      return;
    case 1uLL:
      Strong = swift_unknownObjectWeakLoadStrong();
      [(UIPanGestureRecognizer *)a1 locationInView:Strong];

      v14 = OUTLINED_FUNCTION_3_90();
      CaptionsViewDragController.handleDragDidBegin(with:)(__PAIR128__(v15, *&v14));
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        goto LABEL_14;
      }

      v17 = 0;
      goto LABEL_17;
    case 2uLL:
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
LABEL_14:
        v16 = v6;
        v17 = [v6 superview];
      }

      else
      {
        v17 = 0;
      }

LABEL_17:
      [(UIPanGestureRecognizer *)a1 locationInView:v17];

      v18 = OUTLINED_FUNCTION_3_90();

      CaptionsViewDragController.handleDragDidMove(to:)(__PAIR128__(v19, *&v18));
      break;
    case 3uLL:
    case 4uLL:
    case 5uLL:
      v2 = swift_unknownObjectWeakLoadStrong();
      if (v2)
      {
        v3 = v2;
        v20 = [v2 superview];

        if (v20)
        {
          [(UIPanGestureRecognizer *)a1 velocityInView:v20];
          CaptionsViewDragController.handleDragDidEnd(with:)(__PAIR128__(v5, v4));
        }
      }

      break;
    default:
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v7 = static OS_os_log.conversationKit;
      v8 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1BC4BA940;
      [(UIPanGestureRecognizer *)a1 state];
      type metadata accessor for UIGestureRecognizerState(0);
      v10 = String.init<A>(reflecting:)();
      v12 = v11;
      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v9 + 32) = v10;
      *(v9 + 40) = v12;
      os_log(_:dso:log:type:_:)("Unhandeled unknown recognizer state: %@", 39, 2, &dword_1BBC58000, v7, v8, v9);

      break;
  }
}

Swift::Void __swiftcall CaptionsViewDragController.handleDragDidBegin(with:)(CGPoint with)
{
  v4 = OUTLINED_FUNCTION_4_80();
  if (v4)
  {
    v5 = v4;
    OUTLINED_FUNCTION_4_0(v1 + 24, v8);
    if (swift_unknownObjectWeakLoadStrong())
    {
      *(v1 + 48) = v3;
      *(v1 + 56) = v2;
      swift_beginAccess();
      *(v1 + 64) = 1;
      OUTLINED_FUNCTION_8_62();
      OUTLINED_FUNCTION_8_62();
      swift_getObjectType();
      v6 = OUTLINED_FUNCTION_3_90();
      v7(v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall CaptionsViewDragController.handleDragDidMove(to:)(CGPoint to)
{
  v2 = OUTLINED_FUNCTION_4_80();
  if (v2)
  {
    v9 = v2;
    OUTLINED_FUNCTION_4_0(v1 + 64, v18);
    if (*(v1 + 64) == 1 && (v10 = [v9 superview]) != 0)
    {
      v12 = v10;
      OUTLINED_FUNCTION_4_5(v1 + 24, v11);
      if (swift_unknownObjectWeakLoadStrong())
      {
        [v12 frame];
        CGRectGetWidth(v19);
        [v9 frame];
        CGRectGetWidth(v20);
        [objc_msgSend(v12 safeAreaLayoutGuide)];
        OUTLINED_FUNCTION_7_62();
        v21.origin.x = OUTLINED_FUNCTION_5_72();
        CGRectGetMinY(v21);
        [objc_msgSend(v12 safeAreaLayoutGuide)];
        OUTLINED_FUNCTION_7_62();
        v22.origin.x = OUTLINED_FUNCTION_5_72();
        CGRectGetMaxY(v22);
        [v9 frame];
        CGRectGetHeight(v23);
        [v9 frame];
        v13 = OUTLINED_FUNCTION_3_90();
        [v14 v15];
        [v9 center];
        [v9 center];
        swift_getObjectType();
        v16 = OUTLINED_FUNCTION_3_90();
        v17(v16);
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      v12 = v9;
    }
  }

  OUTLINED_FUNCTION_6_63(v2, v3, v4, v5, v6, v7, v8);
  *(v1 + 64) = 0;
}

Swift::Void __swiftcall CaptionsViewDragController.handleDragDidEnd(with:)(CGPoint with)
{
  v4 = OUTLINED_FUNCTION_4_80();
  if (v4)
  {
    v6 = v4;
    OUTLINED_FUNCTION_4_0(v1 + 24, v21);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v1 + 32);
      OUTLINED_FUNCTION_6_0(v1 + 64, v7);
      if (*(v1 + 64))
      {
        *(v1 + 64) = 0;
        OUTLINED_FUNCTION_8_62();
        v10 = v3 * 0.3 + v9;
        OUTLINED_FUNCTION_8_62();
        v12 = v2 * 0.3 + v11;
        ObjectType = swift_getObjectType();
        (*(v8 + 24))(v1, ObjectType, v8, v10, v12);

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  CaptionsViewDragController.dragEnabled.setter(0, v5);
  OUTLINED_FUNCTION_6_63(v14, v15, v16, v17, v18, v19, v20);
  *(v1 + 64) = 0;
}

uint64_t CaptionsViewDragController.deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 24);
  MEMORY[0x1BFB23F10](v0 + 40);

  return v0;
}

uint64_t CaptionsViewDragController.__deallocating_deinit()
{
  CaptionsViewDragController.deinit();

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of RecentCallProviding.deleteVideoMessageCallItems(_:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_1_98(v0, v1, v2);
  OUTLINED_FUNCTION_2_95();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_92(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_114(v4);

  return v7(v6);
}

uint64_t dispatch thunk of RecentCallProviding.deleteAllItemsForContacts(_:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_1_98(v0, v1, v2);
  OUTLINED_FUNCTION_2_95();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_92(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_114(v4);

  return v7(v6);
}

uint64_t dispatch thunk of RecentCallProviding.markCallItemAsRead(_:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_1_98(v0, v1, v2);
  OUTLINED_FUNCTION_2_95();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_92(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_114(v4);

  return v7(v6);
}

uint64_t dispatch thunk of RecentCallProviding.saveToPhotoLibrary(_:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_1_98(v0, v1, v2);
  OUTLINED_FUNCTION_2_95();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_92(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_114(v4);

  return v7(v6);
}

Swift::Int GridLayout.Orientation.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GridLayout.Orientation(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  GridLayout.Orientation.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t GridLayout.Configuration.init(interItemSpacing:scaleAmount:deviceType:mediaPipIsVisible:)(unsigned __int8 a1, char a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 0xFFFFFF00 | a1;
}

void GridLayout.init(containingRect:frameCount:indexToExpand:configuration:displayScale:)(int64_t a1, unint64_t a2, int a3, unsigned __int16 a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  v12 = HIBYTE(a4);
  v22 = a4;
  v23 = type metadata accessor for FloatingPointRoundingRule();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73.origin.x = OUTLINED_FUNCTION_3_91();
  Width = CGRectGetWidth(v73);
  v74.origin.x = OUTLINED_FUNCTION_3_91();
  Height = CGRectGetHeight(v74);
  v66 = a2;
  v68 = a3;
  if (v22)
  {
    v29 = static GridLayout.padGridSize(for:orientation:)(a1, Height >= Width);
  }

  else
  {
    v29 = static GridLayout.phoneGridSize(for:orientation:mediaPipIsVisible:)(a1, Height >= Width, v12 & 1);
  }

  v31 = v29;
  v32 = v30;
  if (__OFSUB__(v29, 1))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (__OFSUB__(v30, 1))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v65 = a10;
  v69 = a8;
  v70 = a6;
  v33 = (v29 - 1) * a9;
  v67 = a9;
  v71 = (v30 - 1) * a9;
  if (a8 - v71 >= (a7 - v33) / v29 * v30)
  {
    v34 = (a7 - v33) / v29;
  }

  else
  {
    v34 = (a8 - v71) / v30;
  }

  v35 = *MEMORY[0x1E69E7040];
  v22 = v24 + 104;
  v36 = *(v24 + 104);
  v36(v26, *MEMORY[0x1E69E7040], v23);
  a9 = a11;
  a11 = CGFloat.rounded(_:toScale:)(v26, a11, v34);
  v37 = *(v24 + 8);
  v72 = v24 + 8;
  v38 = OUTLINED_FUNCTION_4_31();
  v37(v38);
  v39 = v33 + a11 * v31;
  v75.origin.x = a5;
  a6 = v69;
  a8 = v70;
  v75.origin.y = v70;
  v75.size.width = a7;
  v75.size.height = v69;
  v40 = (CGRectGetWidth(v75) - v39) * 0.5;
  v41 = *MEMORY[0x1E69E7048];
  v36(v26, v41, v23);
  Width = CGFloat.rounded(_:toScale:)(v26, a9, v40);
  v42 = OUTLINED_FUNCTION_4_31();
  v37(v42);
  v43 = v71 + a11 * v32;
  v76.origin.x = a5;
  v76.origin.y = a8;
  v76.size.width = a7;
  v76.size.height = a6;
  v44 = (CGRectGetHeight(v76) - v43) * 0.5;
  v36(v26, v41, v23);
  a10 = a9;
  a7 = CGFloat.rounded(_:toScale:)(v26, a9, v44);
  v45 = OUTLINED_FUNCTION_4_31();
  v71 = *&v37;
  v37(v45);
  if (v32 < 0)
  {
    goto LABEL_34;
  }

  v64 = v22;
  v63 = v35;
  v62 = v36;
  if (!v32)
  {
    v47 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  if (v31 < 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v46 = 0;
  a6 = a11 + v67;
  v47 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v22 = 0;
    ++v46;
    a9 = Width;
    do
    {
      if (v31 == v22)
      {
        break;
      }

      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v47 = v51;
      }

      v48 = *(v47 + 16);
      v49 = v48 + 1;
      if (v48 >= *(v47 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v47 = v52;
      }

      *(v47 + 16) = v49;
      v50 = (v47 + 32 * v48);
      v50[4] = a9;
      v50[5] = a7;
      v50[6] = a11;
      v50[7] = a11;
      a9 = a6 + a9;
      ++v22;
    }

    while (v49 < a1);
    a7 = a6 + a7;
    if (v46 != v32)
    {
      continue;
    }

    break;
  }

LABEL_24:
  if (v68)
  {
    return;
  }

  v22 = v66;
  if ((v66 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  if (*(v47 + 16) > v66)
  {
    v53 = (v47 + 32 * v66);
    a7 = v53[4];
    a6 = v53[5];
    a11 = v53[6];
    Width = v53[7];
    v54 = v63;
    v55 = v62;
    v62(v26, v63, v23);
    a9 = CGFloat.rounded(_:toScale:)(v26, a10, v65);
    v56 = OUTLINED_FUNCTION_4_31();
    v57 = v71;
    (*&v71)(v56);
    v77.origin.x = OUTLINED_FUNCTION_0_115();
    CGRectGetMinX(v77);
    v78.origin.x = OUTLINED_FUNCTION_0_115();
    CGRectGetMaxX(v78);
    v79.origin.x = OUTLINED_FUNCTION_0_115();
    CGRectGetMinY(v79);
    v80.origin.x = OUTLINED_FUNCTION_0_115();
    CGRectGetMaxY(v80);
    v55(v26, v54, v23);
    a8 = CGFloat.rounded(_:toScale:)(v26, a10, a9 * 0.5);
    v58 = OUTLINED_FUNCTION_4_31();
    (*&v57)(v58);
    v55(v26, v54, v23);
    a10 = CGFloat.rounded(_:toScale:)(v26, a10, a9 * 0.5);
    v59 = OUTLINED_FUNCTION_4_31();
    (*&v57)(v59);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  specialized _ArrayBuffer._consumeAndCreateNew()();
  v47 = v61;
LABEL_28:
  if (*(v47 + 16) <= v22)
  {
    __break(1u);
  }

  else
  {
    v60 = (v47 + 32 * v22);
    v60[4] = a7 - a8;
    v60[5] = a6 - a10;
    v60[6] = a11 + a9;
    v60[7] = Width + a9;
  }
}

uint64_t static GridLayout.phoneGridSize(for:orientation:mediaPipIsVisible:)(uint64_t a1, char a2, unsigned __int8 a3)
{
  v4 = a3 & ((a2 & 1) == 0);
  if (a1 != 3)
  {
    v4 = 1;
  }

  v5 = v4 == 0;
  v6 = 1;
  if (!v5)
  {
    v6 = 2;
  }

  if (a1 >= 3)
  {
    result = v6;
  }

  else
  {
    result = 1;
  }

  if (__OFADD__(a1 / result, ((result - 1) & a1) != 0))
  {
    __break(1u);
  }

  return result;
}

unint64_t static GridLayout.padGridSize(for:orientation:)(unint64_t result, char a2)
{
  if (a2)
  {
    v2 = 1;
    v3 = 4;
    v4 = 3;
    if (result > 0xC)
    {
      v4 = 4;
    }

    if (result >= 7)
    {
      v3 = v4;
    }

    if (result - 7 <= 0xFFFFFFFFFFFFFFFCLL)
    {
      v5 = v3;
    }

    else
    {
      v5 = 2;
    }

    if (result >= 4)
    {
      v2 = v5;
    }

    if (__OFADD__(result / v2, result % v2 != 0))
    {
      __break(1u);
    }

    else
    {
      return v2;
    }
  }

  else if (result >= 4)
  {
    if (result - 9 >= 0xFFFFFFFFFFFFFFFBLL)
    {
      return (result & 1) + (result >> 1);
    }

    else if (result - 13 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      return 4;
    }

    else if (result - 16 >= 0xFFFFFFFFFFFFFFFDLL)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GridLayout.Orientation and conformance GridLayout.Orientation()
{
  result = lazy protocol witness table cache variable for type GridLayout.Orientation and conformance GridLayout.Orientation;
  if (!lazy protocol witness table cache variable for type GridLayout.Orientation and conformance GridLayout.Orientation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridLayout.Orientation and conformance GridLayout.Orientation);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GridLayout.Orientation(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for GridLayout.Configuration(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 18))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 17);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for GridLayout.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GridLayout.GridSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t VideoAttributeCamera.cameraPosition.getter(unsigned int a1)
{
  if (a1 >= 4)
  {
    return 0;
  }

  else
  {
    return 0x2010100u >> (8 * a1);
  }
}

__n128 ButtonGradientBackgroundView.buttonFrame.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit28ButtonGradientBackgroundView_buttonFrame;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 key path getter for ButtonGradientBackgroundView.buttonFrame : ButtonGradientBackgroundView@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit28ButtonGradientBackgroundView_buttonFrame;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

void ButtonGradientBackgroundView.buttonFrame.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit28ButtonGradientBackgroundView_buttonFrame;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v6[0] = *v3;
  v6[1] = v4;
  v7 = *(v3 + 32);
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  ButtonGradientBackgroundView.buttonFrame.didset(v6);
}

void ButtonGradientBackgroundView.buttonFrame.didset(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = &v1[OBJC_IVAR____TtC15ConversationKit28ButtonGradientBackgroundView_buttonFrame];
  swift_beginAccess();
  if (*(a1 + 32))
  {
    if (LOBYTE(v7[1].origin.x))
    {
      return;
    }

LABEL_6:
    [v1 setNeedsDisplay];
    return;
  }

  if (LOBYTE(v7[1].origin.x))
  {
    goto LABEL_6;
  }

  v8.origin.x = v3;
  v8.origin.y = v4;
  v8.size.width = v5;
  v8.size.height = v6;
  if (!CGRectEqualToRect(v8, *v7))
  {
    goto LABEL_6;
  }
}

void (*ButtonGradientBackgroundView.buttonFrame.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x98uLL);
  *a1 = v3;
  v3[18] = v1;
  v4 = v1 + OBJC_IVAR____TtC15ConversationKit28ButtonGradientBackgroundView_buttonFrame;
  swift_beginAccess();
  v5 = *(v4 + 32);
  v6 = *(v4 + 16);
  *(v3 + 5) = *v4;
  *(v3 + 6) = v6;
  *(v3 + 112) = v5;
  return ButtonGradientBackgroundView.buttonFrame.modify;
}

void ButtonGradientBackgroundView.buttonFrame.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1 + 40;
  }

  v4 = *(v2 + 96);
  *v3 = *(v2 + 80);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(v2 + 112);
  ButtonGradientBackgroundView.buttonFrame.setter(v3);

  free(v2);
}

id ButtonGradientBackgroundView.init(participantCount:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC15ConversationKit28ButtonGradientBackgroundView_buttonFrame];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = 1.0;
  if (!a1)
  {
    v9 = 0.0;
  }

  [v7 setAlpha_];

  UIView.addTapInteraction(withTapCount:)(1);
  return v7;
}

id ButtonGradientBackgroundView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ButtonGradientBackgroundView.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit28ButtonGradientBackgroundView_buttonFrame;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ButtonGradientBackgroundView.draw(_:)(__C::CGRect a1)
{
  v2 = UIGraphicsGetCurrentContext();
  if (v2)
  {
    v3 = v2;
    v4 = v1 + OBJC_IVAR____TtC15ConversationKit28ButtonGradientBackgroundView_buttonFrame;
    swift_beginAccess();
    if ((*(v4 + 32) & 1) == 0)
    {
      OUTLINED_FUNCTION_149_0();
      MaxY = CGRectGetMaxY(v33);
      v34.origin.x = OUTLINED_FUNCTION_0_116();
      v6 = MaxY - CGRectGetMinY(v34);
      if (v6 > 0.0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0.0;
      }

      v35.origin.x = OUTLINED_FUNCTION_0_116();
      v29 = CGRectGetMaxX(v35) - v7 / 1.73205081;
      OUTLINED_FUNCTION_149_0();
      MinY = CGRectGetMinY(v36);
      OUTLINED_FUNCTION_149_0();
      v8 = CGRectGetHeight(v37) - v7;
      v38.origin.x = OUTLINED_FUNCTION_0_116();
      v9 = CGRectGetMaxX(v38) + v8 / 1.73205081;
      OUTLINED_FUNCTION_149_0();
      Height = CGRectGetHeight(v39);
      v11 = sqrt(v7 * v7 + v7 / 1.73205081 * (v7 / 1.73205081)) / sqrt((v9 - v29) * (v9 - v29) + Height * Height);
      if (v11 <= 1.0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 1.0;
      }

      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1BC4BA7F0;
      v15 = objc_opt_self();
      v16 = [v15 blackColor];
      v17 = [v16 CGColor];

      *(v14 + 32) = v17;
      v18 = [v15 blackColor];
      v19 = [v18 colorWithAlphaComponent_];

      v20 = [v19 CGColor];
      *(v14 + 40) = v20;
      v21 = [v15 blackColor];
      v22 = [v21 colorWithAlphaComponent_];

      v23 = [v22 CGColor];
      *(v14 + 48) = v23;
      v24 = [v15 clearColor];
      v25 = [v24 CGColor];

      *(v14 + 56) = v25;
      type metadata accessor for CGColorRef(0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v30[0] = 0.0;
      v30[1] = v12;
      v30[2] = v12 + (1.0 - v12) * 0.5;
      v30[3] = 1.0;
      v27 = CGGradientCreateWithColors(DeviceRGB, isa, v30);

      if (v27)
      {
        v31.x = v29;
        v32.y = MinY;
        v31.y = MaxY;
        v32.x = v9;
        CGContextDrawLinearGradient(v3, v27, v31, v32, 1u);
      }
    }
  }
}

id ButtonGradientBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ButtonGradientBackgroundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void AudioPowerSpectrumViewModel.init(call:callCenter:notificationCenter:numBands:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v40 = v2;
  v41 = v3;
  v39 = v4;
  v34 = v5;
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_1();
  v37 = v7;
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v36 = v9 - v8;
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v11 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_8();
  *&v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_call] = 0;
  v12 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_waveformColorRemote;
  v13 = objc_opt_self();
  *&v0[v12] = [v13 greenColor];
  v14 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_waveformColorLocal;
  *&v0[v14] = [v13 orangeColor];
  v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_needsBackdropFilterLayer] = 1;
  *&v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_localWaveformFilter] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_remoteWaveformFilter] = 0;
  v15 = &v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_localParticipantStreamToken];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_remoteParticipantStreamToken];
  *v16 = 0;
  v16[8] = 1;
  v17 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_cancellables] = MEMORY[0x1E69E7CC0];
  v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_hasActiveWaveform] = 0;
  v35 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_audioPowerTapQueue;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static DispatchQoS.userInitiated.getter();
  v44[0] = v17;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v18, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, v19);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v37 + 104))(v36, *MEMORY[0x1E69E8090], v38);
  *&v0[v35] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_callCenter] = v39;
  *&v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_notificationCenter] = v40;
  *&v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_numBands] = v41;
  v20 = v39;
  v21 = v40;
  v22 = _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(v41, 0.0);
  v23 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_initialPowerSpectrum;
  *&v1[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_initialPowerSpectrum] = v22;
  OUTLINED_FUNCTION_30_2(&v1[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel__localPowerSpectrum], v44);
  v43 = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  Published.init(initialValue:)();
  swift_endAccess();
  v24 = *&v1[v23];
  OUTLINED_FUNCTION_30_2(&v1[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel__remotePowerSpectrum], v44);
  v43 = v24;

  Published.init(initialValue:)();
  swift_endAccess();
  type metadata accessor for AudioPowerTap();
  v25 = type metadata accessor for CellularAudioSampleNormalizer();
  v26 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type CellularAudioSampleNormalizer and conformance CellularAudioSampleNormalizer, type metadata accessor for CellularAudioSampleNormalizer, &protocol conformance descriptor for CellularAudioSampleNormalizer);
  v27 = AudioPowerTap.__allocating_init(type:normalizer:numBands:)(0, v25, v26, v41);
  if (!v27)
  {
    __break(1u);
    goto LABEL_7;
  }

  *&v1[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_uplinkPowerTap] = v27;
  v28 = AudioPowerTap.__allocating_init(type:normalizer:numBands:)(1, v25, v26, v41);
  if (!v28)
  {
LABEL_7:
    __break(1u);
    return;
  }

  *&v1[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_downlinkPowerTap] = v28;
  v42.receiver = v1;
  v42.super_class = type metadata accessor for AudioPowerSpectrumViewModel(0);
  v29 = objc_msgSendSuper2(&v42, sel_init);
  v30 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_call;
  swift_beginAccess();
  v31 = *&v29[v30];
  *&v29[v30] = v34;
  v32 = v29;
  v33 = v34;

  if (v34)
  {
    AudioPowerSpectrumViewModel.updateWaveform(forCall:)(v33);
  }

  OUTLINED_FUNCTION_30_0();
}

void *AudioPowerSpectrumViewModel.call.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_call;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void AudioPowerSpectrumViewModel.call.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_call;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = v4;
  AudioPowerSpectrumViewModel.call.willset(a1);
  v6 = *(v1 + v3);
  *(v1 + v3) = a1;
  v7 = a1;

  AudioPowerSpectrumViewModel.call.didset(v4);
}

void (*AudioPowerSpectrumViewModel.call.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_47(v2) + 32) = v0;
  v3 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_call;
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return AudioPowerSpectrumViewModel.call.modify;
}

void AudioPowerSpectrumViewModel.call.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    AudioPowerSpectrumViewModel.call.setter(v3);
  }

  else
  {
    AudioPowerSpectrumViewModel.call.setter(*(*a1 + 24));
  }

  free(v2);
}

uint64_t (*AudioPowerSpectrumViewModel.localPowerSpectrum.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_47(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(KeyPath);
  return LinkDetailHeaderView.invitedMemberHandles.modify;
}

void (*AudioPowerSpectrumViewModel.$localPowerSpectrum.modify())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySfG_GMd, "ֵ\b");
  OUTLINED_FUNCTION_46_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel__localPowerSpectrum, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySfGGMd, &_s7Combine9PublishedVySaySfGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AudioPowerSpectrumViewModel.$localPowerSpectrum.modify;
}

uint64_t AudioPowerSpectrumViewModel.localPowerSpectrum.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t AudioPowerSpectrumViewModel.localPowerSpectrum.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t (*AudioPowerSpectrumViewModel.remotePowerSpectrum.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_47(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(KeyPath);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t AudioPowerSpectrumViewModel.$localPowerSpectrum.getter(void *a1)
{
  OUTLINED_FUNCTION_30_2(v1 + *a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySfGGMd, &_s7Combine9PublishedVySaySfGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AudioPowerSpectrumViewModel.$localPowerSpectrum.setter(uint64_t a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySfG_GMd, "ֵ\b");
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_101();
  (*(v8 + 16))(v3, a1, v6);
  OUTLINED_FUNCTION_30_2(v2 + *a2, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySfGGMd, &_s7Combine9PublishedVySaySfGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v8 + 8))(a1, v6);
}

void (*AudioPowerSpectrumViewModel.$remotePowerSpectrum.modify())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySfG_GMd, "ֵ\b");
  OUTLINED_FUNCTION_46_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel__remotePowerSpectrum, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySfGGMd, &_s7Combine9PublishedVySaySfGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return AudioPowerSpectrumViewModel.$remotePowerSpectrum.modify;
}

void AudioPowerSpectrumViewModel.$localPowerSpectrum.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

id AudioPowerSpectrumViewModel.waveformColorRemote.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_waveformColorRemote;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);

  return v3;
}

id AudioPowerSpectrumViewModel.waveformColorLocal.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_waveformColorLocal;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);

  return v3;
}

uint64_t AudioPowerSpectrumViewModel.needsBackdropFilterLayer.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_needsBackdropFilterLayer;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t AudioPowerSpectrumViewModel.needsBackdropFilterLayer.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_needsBackdropFilterLayer;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

void *AudioPowerSpectrumViewModel.localWaveformFilter.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_localWaveformFilter;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void *AudioPowerSpectrumViewModel.remoteWaveformFilter.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_remoteWaveformFilter;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

Swift::Void __swiftcall AudioPowerSpectrumViewModel.start()()
{
  if ((*(v0 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_hasActiveWaveform) & 1) == 0)
  {
    if (one-time initialization token for default != -1)
    {
      OUTLINED_FUNCTION_0_45(&one-time initialization token for default);
    }

    v1 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v1, &static Log.default);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_33();
      *v4 = 0;
      _os_log_impl(&dword_1BBC58000, v2, v3, "Starting power spectrum observation", v4, 2u);
      OUTLINED_FUNCTION_27();
    }

    OUTLINED_FUNCTION_293();
    v6 = (*(v5 + 232))();
    if (v6)
    {
      v9 = v6;
      AudioPowerSpectrumViewModel.callChanged(_:)(v6);
    }

    AudioPowerSpectrumViewModel.registerNotifications()(v6, v7, v8);
  }
}

Swift::Void __swiftcall AudioPowerSpectrumViewModel.stop(caller:)(Swift::String caller)
{
  object = caller._object;
  countAndFlagsBits = caller._countAndFlagsBits;
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_45(&one-time initialization token for default);
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, &static Log.default);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_23();
    v8 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v8);
    _os_log_impl(&dword_1BBC58000, v4, v5, "Stopping power spectrum observation by: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  AudioPowerSpectrumViewModel.unregisterNotifications()();

  AudioPowerSpectrumViewModel.removeObservation()();
}

id AudioPowerSpectrumViewModel.registerNotifications()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_25_27(a1, a2, a3, sel_handleCallStatusChanged_, *MEMORY[0x1E69D8E08]);
  result = OUTLINED_FUNCTION_25_27(v4, v5, v6, sel_handleCallRecordingStateChanged_, *MEMORY[0x1E69D8ED0]);
  *(v3 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_hasActiveWaveform) = 1;
  return result;
}

id AudioPowerSpectrumViewModel.unregisterNotifications()()
{
  result = [*(v0 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_notificationCenter) removeObserver:v0 name:*MEMORY[0x1E69D8E08] object:0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_hasActiveWaveform) = 0;
  return result;
}

void AudioPowerSpectrumViewModel.handleCallStatusChanged(_:)()
{
  Notification.object.getter();
  if (v6)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    if (swift_dynamicCast())
    {
      v0 = v4;
      AudioPowerSpectrumViewModel.callChanged(_:)(v4);
      goto LABEL_9;
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_sypSgMd, &_sypSgMR);
  }

  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_45(&one-time initialization token for default);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v1, &static Log.default);
  v0 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v0, v2))
  {
    v3 = OUTLINED_FUNCTION_33();
    *v3 = 0;
    _os_log_impl(&dword_1BBC58000, v0, v2, "AudioPowerSpectrumViewModel.callStatusChanged without valid call", v3, 2u);
    OUTLINED_FUNCTION_27();
  }

LABEL_9:
}

void AudioPowerSpectrumViewModel.callChanged(_:)(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v2 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v2, *MEMORY[0x1E69E8020], v5);
  v9 = _dispatchPreconditionTest(_:)();
  v10 = OUTLINED_FUNCTION_33_0();
  v11(v10);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    OUTLINED_FUNCTION_0_45(&one-time initialization token for default);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_293();
  v13 = (*(v12 + 232))();
  if (v13)
  {
    v14 = v13;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    v15 = a1;
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      if ([v15 isActive])
      {
        v17 = [*(v3 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_callCenter) activeConversationForCall_];
        v18 = v17;
        if (v17)
        {
          v17 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
          v19 = &protocol witness table for TUConversation;
        }

        else
        {
          v19 = 0;
          v31[1] = 0;
          v31[2] = 0;
        }

        v31[0] = v18;
        v31[3] = v17;
        v31[4] = v19;
        v30 = v18;
        AudioPowerSpectrumViewModel.observeActiveCall(using:)();

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      }

      else
      {
        AudioPowerSpectrumViewModel.removeObservation()();
      }

      return;
    }
  }

  if (one-time initialization token for default != -1)
  {
    goto LABEL_15;
  }

LABEL_8:
  v20 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v20, &static Log.default);
  v21 = a1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = OUTLINED_FUNCTION_23();
    v31[0] = v25;
    *v24 = 136315138;
    v31[5] = v21;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    v26 = v21;
    v27 = String.init<A>(reflecting:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v31);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_1BBC58000, v22, v23, "Skipping registering for power spectrum: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }
}

void AudioPowerSpectrumViewModel.observeActiveCall(using:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  OUTLINED_FUNCTION_1();
  v30 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AA19CurrentValueSubjectCySaySfGSgs5NeverOGALGMd, &_s7Combine10PublishersO0A6LatestVy_AA19CurrentValueSubjectCySaySfGSgs5NeverOGALGMR);
  OUTLINED_FUNCTION_1();
  v29 = v9;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v28 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8ThrottleVy_AC0A6LatestVy_AA19CurrentValueSubjectCySaySfGSgs5NeverOGANGSo9NSRunLoopCGMd, &_s7Combine10PublishersO8ThrottleVy_AC0A6LatestVy_AA19CurrentValueSubjectCySaySfGSgs5NeverOGANGSo9NSRunLoopCGMR);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_101();
  v16 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE8))();
  if (v16)
  {
    v17 = v16;
    if (([v16 isVideo] & 1) == 0)
    {
      v31[0] = (*(**(v0 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_uplinkPowerTap) + 160))();
      v31[3] = (*(**(v0 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_downlinkPowerTap) + 160))();
      v28[0] = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySaySfGSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySaySfGSgs5NeverOGMR);
      v28[1] = v14;
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<[Float]?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySaySfGSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySaySfGSgs5NeverOGMR, MEMORY[0x1E695BFB0]);
      Publishers.CombineLatest.init(_:_:)();
      NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
      v23 = [objc_opt_self() mainRunLoop];
      v31[0] = v23;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop, 0x1E695DFD0);
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<CurrentValueSubject<[Float]?, Never>, CurrentValueSubject<[Float]?, Never>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AA19CurrentValueSubjectCySaySfGSgs5NeverOGALGMd, &_s7Combine10PublishersO0A6LatestVy_AA19CurrentValueSubjectCySaySfGSgs5NeverOGALGMR, MEMORY[0x1E695BC68]);
      lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
      Publisher.throttle<A>(for:scheduler:latest:)();

      (v30[1].isa)(v7, v28[0]);
      (*(v29 + 8))(v12, v8);
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_24();
      v25 = swift_allocObject();
      *(v25 + 16) = partial apply for closure #1 in AudioPowerSpectrumViewModel.observeActiveCall(using:);
      *(v25 + 24) = v24;
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Throttle<Publishers.CombineLatest<CurrentValueSubject<[Float]?, Never>, CurrentValueSubject<[Float]?, Never>>, NSRunLoop> and conformance Publishers.Throttle<A, B>, &_s7Combine10PublishersO8ThrottleVy_AC0A6LatestVy_AA19CurrentValueSubjectCySaySfGSgs5NeverOGANGSo9NSRunLoopCGMd, &_s7Combine10PublishersO8ThrottleVy_AC0A6LatestVy_AA19CurrentValueSubjectCySaySfGSgs5NeverOGANGSo9NSRunLoopCGMR, MEMORY[0x1E695BE68]);
      Publisher<>.sink(receiveValue:)();

      v26 = OUTLINED_FUNCTION_33_0();
      v27(v26);
      OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_cancellables, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd, &_sSay7Combine14AnyCancellableCGMR);
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A], &_sSay7Combine14AnyCancellableCGMd, &_sSay7Combine14AnyCancellableCGMR, MEMORY[0x1E69E6348]);
      AnyCancellable.store<A>(in:)();
      swift_endAccess();

      AudioPowerSpectrumViewModel.startAudioTaps()();

      OUTLINED_FUNCTION_30_0();
      return;
    }
  }

  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_45(&one-time initialization token for default);
  }

  v18 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v18, &static Log.default);
  v30 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v19))
  {
    v20 = OUTLINED_FUNCTION_33();
    *v20 = 0;
    _os_log_impl(&dword_1BBC58000, v30, v19, "Ignoring request to observe active call since its nil or is ineligible", v20, 2u);
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t AudioPowerSpectrumViewModel.removeObservation()()
{
  AudioPowerSpectrumViewModel.stopAudioTaps()();
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_localParticipantStreamToken;
  *v1 = 0;
  v1[8] = 1;
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_remoteParticipantStreamToken;
  *v2 = 0;
  v2[8] = 1;
  v3 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_cancellables;
  swift_beginAccess();
  *(v0 + v3) = MEMORY[0x1E69E7CC0];

  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x108);

  v5(v6);
  v7 = *((*v4 & *v0) + 0x138);

  return v7(v8);
}

void AudioPowerSpectrumViewModel.startAudioTaps()()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v18 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v17 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19[4] = partial apply for closure #1 in AudioPowerSpectrumViewModel.startAudioTaps();
  v19[5] = v10;
  OUTLINED_FUNCTION_5_73();
  OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
  v19[2] = v11;
  v19[3] = &block_descriptor_51;
  v12 = _Block_copy(v19);

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_6_64();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(v13, v14, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v15, &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, v16);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v0, v6, v12);
  _Block_release(v12);
  (*(v18 + 8))(v6, v1);
  (*(v8 + 8))(v0, v17);

  OUTLINED_FUNCTION_30_0();
}

void AudioPowerSpectrumViewModel.stopAudioTaps()()
{
  OUTLINED_FUNCTION_29();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v21 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v12 = *(v0 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_uplinkPowerTap);
  v13 = *(v0 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_downlinkPowerTap);
  OUTLINED_FUNCTION_24();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  v22[4] = partial apply for closure #1 in AudioPowerSpectrumViewModel.stopAudioTaps();
  v22[5] = v14;
  OUTLINED_FUNCTION_5_73();
  OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
  v22[2] = v15;
  v22[3] = &block_descriptor_42;
  v16 = _Block_copy(v22);

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_6_64();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(v17, v18, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v19, &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, v20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v1, v8, v16);
  _Block_release(v16);
  (*(v4 + 8))(v8, v2);
  (*(v10 + 8))(v1, v21);

  OUTLINED_FUNCTION_30_0();
}

void AudioPowerSpectrumViewModel.__allocating_init(call:callCenter:notificationCenter:numBands:)()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_33_0();
  AudioPowerSpectrumViewModel.init(call:callCenter:notificationCenter:numBands:)();
}

uint64_t key path getter for AudioPowerSpectrumViewModel.call : AudioPowerSpectrumViewModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AudioPowerSpectrumViewModel.call : AudioPowerSpectrumViewModel(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xF0);
  v4 = *a1;
  return v3(v2);
}

void AudioPowerSpectrumViewModel.call.willset(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_call;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!v5 || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40), v6 = v5, v7 = a1, v8 = static NSObject.== infix(_:_:)(), v7, v6, (v8 & 1) == 0))
  {
LABEL_6:
    AudioPowerSpectrumViewModel.removeObservation()();
  }
}

void AudioPowerSpectrumViewModel.call.didset(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_call;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!a1)
  {
    goto LABEL_5;
  }

  if (v5)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    v6 = v5;
    v7 = a1;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      v5 = *(v2 + v4);
LABEL_5:
      if (v5)
      {
        v9 = v5;
        AudioPowerSpectrumViewModel.callChanged(_:)(v9);
      }
    }
  }
}

uint64_t key path getter for AudioPowerSpectrumViewModel.localPowerSpectrum : AudioPowerSpectrumViewModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x100))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AudioPowerSpectrumViewModel.localPowerSpectrum : AudioPowerSpectrumViewModel(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x108);

  return v2(v3);
}

uint64_t key path setter for AudioPowerSpectrumViewModel.$localPowerSpectrum : AudioPowerSpectrumViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySfG_GMd, "ֵ\b");
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x120))(v7);
}

uint64_t key path getter for AudioPowerSpectrumViewModel.remotePowerSpectrum : AudioPowerSpectrumViewModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x130))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AudioPowerSpectrumViewModel.remotePowerSpectrum : AudioPowerSpectrumViewModel(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x138);

  return v2(v3);
}

uint64_t key path setter for AudioPowerSpectrumViewModel.$remotePowerSpectrum : AudioPowerSpectrumViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySfG_GMd, "ֵ\b");
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x150))(v7);
}

uint64_t key path getter for AudioPowerSpectrumViewModel.waveformColorRemote : AudioPowerSpectrumViewModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x160))();
  *a2 = result;
  return result;
}

uint64_t key path getter for AudioPowerSpectrumViewModel.waveformColorLocal : AudioPowerSpectrumViewModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x178))();
  *a2 = result;
  return result;
}

uint64_t key path getter for AudioPowerSpectrumViewModel.needsBackdropFilterLayer : AudioPowerSpectrumViewModel@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x190))();
  *a2 = result & 1;
  return result;
}

uint64_t key path getter for AudioPowerSpectrumViewModel.localWaveformFilter : AudioPowerSpectrumViewModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AudioPowerSpectrumViewModel.localWaveformFilter : AudioPowerSpectrumViewModel(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1B0);
  v4 = *a1;
  return v3(v2);
}

uint64_t key path getter for AudioPowerSpectrumViewModel.remoteWaveformFilter : AudioPowerSpectrumViewModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AudioPowerSpectrumViewModel.remoteWaveformFilter : AudioPowerSpectrumViewModel(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1C8);
  v4 = *a1;
  return v3(v2);
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSo6CGRectV_Tt1g5(uint64_t result, double a2, double a3, double a4, double a5)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      type metadata accessor for CGRect(0);
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(result + 16) = v5;
      v10 = (result + 56);
      do
      {
        *(v10 - 3) = a2;
        *(v10 - 2) = a3;
        *(v10 - 1) = a4;
        *v10 = a5;
        v10 += 4;
        --v5;
      }

      while (v5);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(uint64_t result, float a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v4 = 0;
      v5 = (result + 44);
      *(result + 16) = v2;
      v6 = vdupq_n_s64(v2 - 1);
      do
      {
        v7 = vdupq_n_s64(v4);
        v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_1BC4BB7D0)));
        if (vuzp1_s16(v8, *v6.i8).u8[0])
        {
          *(v5 - 3) = a2;
        }

        if (vuzp1_s16(v8, *&v6).i8[2])
        {
          *(v5 - 2) = a2;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_1BC4CD9A0)))).i32[1])
        {
          *(v5 - 1) = a2;
          *v5 = a2;
        }

        v4 += 4;
        v5 += 4;
      }

      while (((v2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v4);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t type metadata accessor for AudioPowerSpectrumViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for AudioPowerSpectrumViewModel;
  if (!type metadata singleton initialization cache for AudioPowerSpectrumViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_1BC4BB7D0)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t AudioPowerSpectrumViewModel.updateWaveform(forCall:)(void *a1)
{
  v2 = v1;
  v3 = [a1 isRecording];
  v4 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x198))(v3 ^ 1);
  v5 = OUTLINED_FUNCTION_30_18();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  if (v5)
  {
    NSString.init(stringLiteral:)("sourceOver", 10, 2);
  }

  else
  {
    NSString.init(stringLiteral:)("plusL", 5, 2);
  }

  OUTLINED_FUNCTION_293();
  (*(v6 + 432))();
  if (OUTLINED_FUNCTION_30_18())
  {
    NSString.init(stringLiteral:)("sourceOver", 10, 2);
  }

  else
  {
    NSString.init(stringLiteral:)("plusL", 5, 2);
  }

  OUTLINED_FUNCTION_293();
  (*(v7 + 456))();
  v8 = OUTLINED_FUNCTION_30_18();
  v9 = objc_opt_self();
  v10 = &selRef_greenColor;
  if (v8)
  {
    v10 = &selRef_systemRedColor;
  }

  (*((*v4 & *v2) + 0x168))([v9 *v10]);
  v11 = OUTLINED_FUNCTION_30_18();
  v12 = objc_opt_self();
  v13 = &selRef_orangeColor;
  if (v11)
  {
    v13 = &selRef_systemRedColor;
  }

  v14 = [v12 *v13];
  v15 = *((*v4 & *v2) + 0x180);

  return v15(v14);
}

id AudioPowerSpectrumViewModel.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_45(&one-time initialization token for default);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Log.default);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_23();
    v16 = v7;
    *v6 = 136315138;
    type metadata accessor for AudioPowerSpectrumViewModel(0);
    v8 = v3;
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Deinit %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v16 = *&v3[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_audioPowerTapQueue];
  v12 = v16;
  closure #1 in AudioPowerSpectrumViewModel.deinit(&v16, v3, ObjectType, v13);

  v15.receiver = v3;
  v15.super_class = type metadata accessor for AudioPowerSpectrumViewModel(0);
  return objc_msgSendSuper2(&v15, sel_dealloc);
}

uint64_t closure #1 in AudioPowerSpectrumViewModel.deinit(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v9 = *(a2 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_uplinkPowerTap);
  closure #1 in closure #1 in AudioPowerSpectrumViewModel.deinit(&v9, v6, a3, a4, &unk_1F3ADA670, partial apply for closure #1 in closure #1 in closure #1 in AudioPowerSpectrumViewModel.deinit, &block_descriptor_67_0);
  v9 = *(a2 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_downlinkPowerTap);
  return closure #1 in closure #1 in AudioPowerSpectrumViewModel.deinit(&v9, v6, a3, v7, &unk_1F3ADA620, partial apply for closure #1 in closure #2 in closure #1 in AudioPowerSpectrumViewModel.deinit, &block_descriptor_61);
}

uint64_t closure #1 in closure #1 in AudioPowerSpectrumViewModel.deinit(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v33 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  v32 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  v22 = v21 - v20;
  v23 = *a1;
  OUTLINED_FUNCTION_24();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = a3;
  v37 = a6;
  v38 = v24;
  OUTLINED_FUNCTION_5_73();
  OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
  v35 = v25;
  v36 = a7;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v39 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_6_64();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(v27, v28, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v29, &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, v30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v22, v16, v26);
  _Block_release(v26);
  (*(v33 + 8))(v16, v11);
  (*(v18 + 8))(v22, v32);
}

void closure #1 in closure #1 in closure #1 in AudioPowerSpectrumViewModel.deinit(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a1 + 296))();
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_45(&one-time initialization token for default);
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, &static Log.default);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_23();
    v11 = v6;
    *v5 = 136446466;
    v7 = _typeName(_:qualified:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 1024;
    *(v5 + 14) = v2 & 1;
    _os_log_impl(&dword_1BBC58000, oslog, v4, "[%{public}s.deinit] downlinkPowerTap stopped: %{BOOL}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }
}

void closure #1 in AudioPowerSpectrumViewModel.observeActiveCall(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0xE8);
  v9 = v8();
  if (v9 && (v10 = v9, v11 = [v9 translationSession], v10, v11) && (v11, (v12 = v8()) != 0) && (v13 = v12, v14 = objc_msgSend(v12, sel_isUplinkMuted), v13, v14))
  {
    a1 = *(v6 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_initialPowerSpectrum);
  }

  else if (!a1)
  {
    v15 = *(v6 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_initialPowerSpectrum);

    goto LABEL_10;
  }

  v15 = a1;
LABEL_10:
  v16 = *((*v7 & *v6) + 0x108);

  v16(v15);
  if (a2)
  {
    v17 = a2;
  }

  else
  {
    v17 = *(v6 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_initialPowerSpectrum);
  }

  v18 = *((*v7 & *v6) + 0x138);

  v18(v17);
}

char *closure #1 in AudioPowerSpectrumViewModel.startAudioTaps()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, &static Log.default);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1BBC58000, v4, v5, "Starting audio taps for power spectrum observation", v6, 2u);
      MEMORY[0x1BFB23DF0](v6, -1, -1);
    }

    v7 = *(**&v2[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_uplinkPowerTap] + 288);

    v7(v8);

    v9 = *(**&v2[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_downlinkPowerTap] + 288);

    v9(v10);
  }

  return result;
}

uint64_t closure #1 in AudioPowerSpectrumViewModel.stopAudioTaps()(uint64_t a1, uint64_t a2)
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
    *v7 = 0;
    _os_log_impl(&dword_1BBC58000, v5, v6, "Stopping audio taps for power spectrum observation", v7, 2u);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  v8 = (*(*a1 + 296))();
  return (*(*a2 + 296))(v8);
}

id AudioPowerSpectrumViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance AudioPowerSpectrumViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudioPowerSpectrumViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void AudioPowerSpectrumViewModel.isEqual(_:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  swift_getObjectType();
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v48 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_101();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v42 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v42 - v18;
  outlined init with copy of (CGFloat, AutoplayCandidate)(v2, v50, &_sypSgMd, &_sypSgMR);
  if (!v50[3])
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v50, &_sypSgMd, &_sypSgMR);
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    v47 = v49;
    OUTLINED_FUNCTION_293();
    v21 = *(v20 + 232);
    v45 = v20 + 232;
    v46 = v21;
    v22 = v21();
    if (v22)
    {
      v23 = v22;
      v24 = [v22 uniqueProxyIdentifierUUID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v26 = 1;
    v27 = __swift_storeEnumTagSinglePayload(v19, v25, 1, v3);
    v28 = *((*MEMORY[0x1E69E7D40] & *v47) + 0xE8);
    v43 = (*MEMORY[0x1E69E7D40] & *v47) + 232;
    v44 = v28;
    v29 = (v28)(v27);
    if (v29)
    {
      v30 = v29;
      v31 = [v29 uniqueProxyIdentifierUUID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = 0;
    }

    __swift_storeEnumTagSinglePayload(v16, v26, 1, v3);
    v32 = *(v9 + 48);
    outlined init with copy of (CGFloat, AutoplayCandidate)(v19, v0, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined init with copy of (CGFloat, AutoplayCandidate)(v16, v0 + v32, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    OUTLINED_FUNCTION_29_0(v0);
    if (v34)
    {
      OUTLINED_FUNCTION_33_3(v16);
      OUTLINED_FUNCTION_33_3(v19);
      OUTLINED_FUNCTION_29_0(v0 + v32);
      if (v34)
      {
        v33 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_19:
        v37 = v47;
        v38 = (v46)(v33);
        if (v38)
        {
          v39 = v38;
          [v38 isRecording];
        }

        v40 = v44();
        if (v40)
        {
          v41 = v40;
          [v40 isRecording];
        }

        goto LABEL_6;
      }
    }

    else
    {
      outlined init with copy of (CGFloat, AutoplayCandidate)(v0, v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      OUTLINED_FUNCTION_29_0(v0 + v32);
      if (!v34)
      {
        v35 = v48;
        (*(v48 + 32))(v8, v0 + v32, v3);
        lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v42[1] = dispatch thunk of static Equatable.== infix(_:_:)();
        v36 = *(v35 + 8);
        v36(v8, v3);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v36(v13, v3);
        v33 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_33_3(v16);
      OUTLINED_FUNCTION_33_3(v19);
      (*(v48 + 8))(v13, v3);
    }

    v33 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_19;
  }

LABEL_6:
  OUTLINED_FUNCTION_30_0();
}

void AudioPowerSpectrumViewModel.handleCallRecordingStateChanged(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v14 - v2;
  Notification.object.getter();
  if (v16)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    if (swift_dynamicCast())
    {
      v4 = v14[1];
      v5 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
      type metadata accessor for MainActor();
      v6 = v0;
      v7 = v4;
      v8 = static MainActor.shared.getter();
      v9 = swift_allocObject();
      v10 = MEMORY[0x1E69E85E0];
      v9[2] = v8;
      v9[3] = v10;
      v9[4] = v6;
      v9[5] = v7;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

      goto LABEL_9;
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_sypSgMd, &_sypSgMR);
  }

  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_45(&one-time initialization token for default);
  }

  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v11, &static Log.default);
  v7 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v7, v12))
  {
    v13 = OUTLINED_FUNCTION_33();
    *v13 = 0;
    _os_log_impl(&dword_1BBC58000, v7, v12, "AudioPowerSpectrumViewModel.handleCallRecordingStateChanged without valid call", v13, 2u);
    OUTLINED_FUNCTION_27();
  }

LABEL_9:
}

uint64_t closure #1 in AudioPowerSpectrumViewModel.handleCallRecordingStateChanged(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in AudioPowerSpectrumViewModel.handleCallRecordingStateChanged(_:), v7, v6);
}

uint64_t closure #1 in AudioPowerSpectrumViewModel.handleCallRecordingStateChanged(_:)()
{
  v1 = *(v0 + 24);

  AudioPowerSpectrumViewModel.updateWaveform(forCall:)(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t @objc AudioPowerSpectrumViewModel.handleCallStatusChanged(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a1;
  a4(v4);

  v9 = OUTLINED_FUNCTION_33_0();
  return v10(v9);
}