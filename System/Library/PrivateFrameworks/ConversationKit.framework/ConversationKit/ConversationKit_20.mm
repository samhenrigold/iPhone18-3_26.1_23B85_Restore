uint64_t ScreenSharingOverlayPlatterButtonStyle.horizontalSizeClass.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v2, &v17 - v12, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v13, a1, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  }

  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  OUTLINED_FUNCTION_25_22(v15, &dword_1BBC58000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v10, v4);
}

uint64_t ScreenSharingSpectatorModalOverlay.title.getter()
{
  v70 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v70);
  v69 = v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v68 - v6;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v0 + *(type metadata accessor for ScreenSharingSpectatorModalOverlay(0) + 20);
  v13 = *v12;
  v14 = *(v12 + 8);

  v16 = v13;
  if ((v14 & 1) == 0)
  {
    v17 = static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v17, &dword_1BBC58000, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v15 = (*(v9 + 8))(v11, v8);
    v16 = v71;
  }

  (*(*v16 + 648))(&v72, v15);

  v19 = v72;

  v21 = v13;
  if ((v14 & 1) == 0)
  {
    v22 = static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v22, &dword_1BBC58000, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v20 = (*(v9 + 8))(v11, v8);
    v21 = v71;
  }

  v24 = (*(*v21 + 504))(v20);

  switch(v19 >> 61)
  {
    case 1uLL:
      v25 = [objc_opt_self() conversationKit];
      v73._object = 0xE000000000000000;
      v26.value._countAndFlagsBits = 0x61737265766E6F43;
      v26.value._object = 0xEF74694B6E6F6974;
      v27._object = 0x80000001BC4F3F30;
      v27._countAndFlagsBits = 0xD00000000000001CLL;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      v73._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v26, v25, v28, v73)._countAndFlagsBits;

      goto LABEL_7;
    case 2uLL:
      outlined consume of RemoteControlState(v19);
      goto LABEL_12;
    case 4uLL:
      if (v24)
      {
        v30 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        outlined consume of RemoteControlState(v19);
        if (v30 >> 61 != 2)
        {
          return 0;
        }

LABEL_12:
        v31 = [objc_opt_self() conversationKit];
        v74._object = 0xE000000000000000;
        v32.value._countAndFlagsBits = 0x61737265766E6F43;
        v32.value._object = 0xEF74694B6E6F6974;
        v33._countAndFlagsBits = 0xD000000000000022;
        v33._object = 0x80000001BC4F9EF0;
        v34._countAndFlagsBits = 0;
        v34._object = 0xE000000000000000;
        v74._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v32, v31, v34, v74);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1BC4BA940;

        if ((v14 & 1) == 0)
        {
          v37 = static os_log_type_t.fault.getter();
          v38 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)(v37, &dword_1BBC58000, v38, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          v36 = (*(v9 + 8))(v11, v8);
          v13 = v71;
        }

        (*(*v13 + 216))(v36);

        if (__swift_getEnumTagSinglePayload(v7, 1, v70))
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          v39 = 0;
          v40 = 0;
        }

        else
        {
          v55 = v69;
          outlined init with copy of ScreenSharingSpectatorModalOverlay(v7, v69, type metadata accessor for Participant);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          Participant.contactDetails.getter();
          v56 = v71;

          Participant.name(_:)();
          v39 = v57;
          v40 = v58;

          _s15ConversationKit11ParticipantVWOhTm_5(v55, type metadata accessor for Participant);
        }

        *(v35 + 56) = MEMORY[0x1E69E6158];
        *(v35 + 64) = lazy protocol witness table accessor for type String and conformance String();
        if (v40)
        {
          v59 = v39;
        }

        else
        {
          v59 = 0;
        }

        v60 = 0xE000000000000000;
        if (v40)
        {
          v60 = v40;
        }

        *(v35 + 32) = v59;
        *(v35 + 40) = v60;
        countAndFlagsBits = String.init(format:_:)();
      }

      else
      {
        if (*((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) != 2)
        {
LABEL_23:
          outlined consume of RemoteControlState(v19);
          return 0;
        }

        v45 = [objc_opt_self() conversationKit];
        v76._object = 0xE000000000000000;
        v46.value._countAndFlagsBits = 0x61737265766E6F43;
        v46.value._object = 0xEF74694B6E6F6974;
        v47._countAndFlagsBits = 0xD000000000000030;
        v47._object = 0x80000001BC4F9EB0;
        v48._countAndFlagsBits = 0;
        v48._object = 0xE000000000000000;
        v76._countAndFlagsBits = 0;
        v68[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, v46, v45, v48, v76)._countAndFlagsBits;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_1BC4BA940;

        if ((v14 & 1) == 0)
        {
          v51 = static os_log_type_t.fault.getter();
          v52 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)(v51, &dword_1BBC58000, v52, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          v50 = (*(v9 + 8))(v11, v8);
          v13 = v71;
        }

        (*(*v13 + 216))(v50);

        if (__swift_getEnumTagSinglePayload(v4, 1, v70))
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          v53 = 0;
          v54 = 0;
        }

        else
        {
          v62 = v69;
          outlined init with copy of ScreenSharingSpectatorModalOverlay(v4, v69, type metadata accessor for Participant);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          Participant.contactDetails.getter();
          v63 = v71;

          Participant.name(_:)();
          v53 = v64;
          v54 = v65;

          _s15ConversationKit11ParticipantVWOhTm_5(v62, type metadata accessor for Participant);
        }

        *(v49 + 56) = MEMORY[0x1E69E6158];
        *(v49 + 64) = lazy protocol witness table accessor for type String and conformance String();
        if (v54)
        {
          v66 = v53;
        }

        else
        {
          v66 = 0;
        }

        v67 = 0xE000000000000000;
        if (v54)
        {
          v67 = v54;
        }

        *(v49 + 32) = v66;
        *(v49 + 40) = v67;
        countAndFlagsBits = String.init(format:_:)();

LABEL_7:
        outlined consume of RemoteControlState(v19);
      }

      return countAndFlagsBits;
    case 5uLL:
      if ((v19 | 0x10) != 0xA000000000000010)
      {
        goto LABEL_23;
      }

      v41 = [objc_opt_self() conversationKit];
      v75._object = 0xE000000000000000;
      v42.value._countAndFlagsBits = 0x61737265766E6F43;
      v42.value._object = 0xEF74694B6E6F6974;
      v43._object = 0x80000001BC4F3F30;
      v43._countAndFlagsBits = 0xD00000000000001CLL;
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      v75._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v42, v41, v44, v75)._countAndFlagsBits;

      return countAndFlagsBits;
    default:
      goto LABEL_23;
  }
}

uint64_t ScreenSharingSpectatorModalOverlay.statusText.getter()
{
  v51 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v51);
  v2 = &v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v48 - v4;
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0 + *(type metadata accessor for ScreenSharingSpectatorModalOverlay(0) + 20);
  v11 = *v10;
  v12 = *(v10 + 8);

  v14 = v11;
  if ((v12 & 1) == 0)
  {
    v15 = static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v15, &dword_1BBC58000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v13 = (*(v7 + 8))(v9, v6);
    v14 = v52;
  }

  (*(*v14 + 648))(&v53, v13);

  v17 = v53;

  v19 = v11;
  if ((v12 & 1) == 0)
  {
    v20 = static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v20, &dword_1BBC58000, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v18 = (*(v7 + 8))(v9, v6);
    v19 = v52;
  }

  v22 = (*(*v19 + 504))(v18);

  switch(v17 >> 61)
  {
    case 1uLL:
      v49 = v2;
      v23 = [objc_opt_self() conversationKit];
      v54._object = 0xE000000000000000;
      v24.value._countAndFlagsBits = 0x61737265766E6F43;
      v24.value._object = 0xEF74694B6E6F6974;
      v25._countAndFlagsBits = 0xD00000000000002FLL;
      v25._object = 0x80000001BC4F9E80;
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      v54._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v24, v23, v26, v54)._countAndFlagsBits;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1BC4BA940;

      if ((v12 & 1) == 0)
      {
        v29 = static os_log_type_t.fault.getter();
        v30 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)(v29, &dword_1BBC58000, v30, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        v28 = (*(v7 + 8))(v9, v6);
        v11 = v52;
      }

      (*(*v11 + 216))(v28);

      if (__swift_getEnumTagSinglePayload(v5, 1, v51))
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        v31 = 0;
        v32 = 0;
      }

      else
      {
        v41 = v49;
        outlined init with copy of ScreenSharingSpectatorModalOverlay(v5, v49, type metadata accessor for Participant);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        Participant.contactDetails.getter();
        v42 = v52;

        Participant.name(_:)();
        v31 = v43;
        v32 = v44;

        _s15ConversationKit11ParticipantVWOhTm_5(v41, type metadata accessor for Participant);
      }

      *(v27 + 56) = MEMORY[0x1E69E6158];
      *(v27 + 64) = lazy protocol witness table accessor for type String and conformance String();
      if (v32)
      {
        v45 = v31;
      }

      else
      {
        v45 = 0;
      }

      v46 = 0xE000000000000000;
      if (v32)
      {
        v46 = v32;
      }

      *(v27 + 32) = v45;
      *(v27 + 40) = v46;
      v40 = String.init(format:_:)();

      outlined consume of RemoteControlState(v17);
      return v40;
    case 2uLL:
      outlined consume of RemoteControlState(v17);
      goto LABEL_13;
    case 4uLL:
      v33 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) >> 61 == 2;
      outlined consume of RemoteControlState(v17);
      if ((v33 & v22 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_13:
      v34 = "%@_WANTS_TO_VIEW_SCREEN";
      v35 = [objc_opt_self() conversationKit];
      goto LABEL_16;
    case 5uLL:
      if ((v17 | 0x10) != 0xA000000000000010)
      {
        goto LABEL_17;
      }

      v34 = "SCREEN_SHARING_CONTROL_CANCEL";
      v35 = [objc_opt_self() conversationKit];
LABEL_16:
      v36 = v35;
      v55._object = 0xE000000000000000;
      v37.value._countAndFlagsBits = 0x61737265766E6F43;
      v37.value._object = 0xEF74694B6E6F6974;
      v38._object = (v34 | 0x8000000000000000);
      v38._countAndFlagsBits = 0xD00000000000001CLL;
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      v55._countAndFlagsBits = 0;
      v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v37, v36, v39, v55)._countAndFlagsBits;

      break;
    default:
LABEL_17:
      outlined consume of RemoteControlState(v17);
LABEL_18:
      v40 = 0;
      break;
  }

  return v40;
}

unint64_t ScreenSharingSpectatorModalOverlay.statusView.getter@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMd, &_s7SwiftUI6ZStackVyAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMR);
  MEMORY[0x1EEE9AC00](v75);
  v3 = (&v58 - v2);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyAA08ModifiedD0VyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyAA08ModifiedD0VyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGG_GMR);
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v58 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0V_GMR);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v58 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGMR);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v58 - v6;
  v66 = type metadata accessor for ScreenSharingOverlayPlatterButtonStyle(0);
  MEMORY[0x1EEE9AC00](v66);
  v62 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ScreenSharingSpectatorModalOverlay(0);
  v9 = v8 - 8;
  v58 = *(v8 - 8);
  v10 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v60 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v59 = &v58 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterfE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterfE0VQo_MR);
  v64 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v63 = &v58 - v12;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v9 + 28);
  v61 = v1;
  v18 = v1 + v17;
  v19 = *v18;
  v20 = *(v18 + 8);

  v22 = v19;
  if ((v20 & 1) == 0)
  {
    v23 = static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v23, &dword_1BBC58000, v24, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v21 = (*(v14 + 8))(v16, v13);
    v22 = v76;
  }

  (*(*v22 + 648))(&v80, v21);

  v25 = v80;

  if ((v20 & 1) == 0)
  {
    v27 = static os_log_type_t.fault.getter();
    v28 = v25;
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v27, &dword_1BBC58000, v29, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v25 = v28;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v26 = (*(v14 + 8))(v16, v13);
    v19 = v76;
  }

  v30 = (*(*v19 + 504))(v26);

  if (v25 >> 61 == 1)
  {
    outlined init with copy of ScreenSharingSpectatorModalOverlay(v61, &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScreenSharingSpectatorModalOverlay);
    v44 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v45 = swift_allocObject();
    outlined init with take of ScreenSharingSpectatorModalOverlay(&v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v44);
    v46 = v59;
    Button.init(action:label:)();
    KeyPath = swift_getKeyPath();
    v48 = v62;
    *v62 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
    swift_storeEnumTagMultiPayload();
    v49 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x1E697D680]);
    v50 = lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type ScreenSharingOverlayPlatterButtonStyle and conformance ScreenSharingOverlayPlatterButtonStyle, type metadata accessor for ScreenSharingOverlayPlatterButtonStyle, &protocol conformance descriptor for ScreenSharingOverlayPlatterButtonStyle);
    v51 = v63;
    v53 = v65;
    v52 = v66;
    View.buttonStyle<A>(_:)();
    _s15ConversationKit11ParticipantVWOhTm_5(v48, type metadata accessor for ScreenSharingOverlayPlatterButtonStyle);
    (*(v60 + 8))(v46, v53);
    v54 = v64;
    v55 = v68;
    (*(v64 + 16))(v69, v51, v68);
    swift_storeEnumTagMultiPayload();
    v76 = v53;
    v77 = v52;
    v78 = v49;
    v79 = v50;
    swift_getOpaqueTypeConformance2();
    v56 = v25;
    v57 = v70;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v57, v73, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMd, &_s7SwiftUI6ZStackVyAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMR, MEMORY[0x1E6981880]);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGMR);
    (*(v54 + 8))(v51, v55);
    v35 = v56;
  }

  else
  {
    if (v25 >> 61 != 4 || (v30 & 1) != 0 || *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) != 2)
    {
      outlined consume of RemoteControlState(v25);
      *v3 = static Alignment.center.getter();
      v3[1] = v36;
      v37 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMR) + 44));
      *v37 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ControlSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ControlSizeO_GMR);
      swift_storeEnumTagMultiPayload();
      v38 = type metadata accessor for ActivityIndicator(0);
      *(v37 + v38[5]) = 0x402C000000000000;
      *(v37 + v38[6]) = 0x403E000000000000;
      *(v37 + v38[7]) = 0x4038000000000000;
      v39 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMR) + 36));
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMR) + 28);
      v41 = *MEMORY[0x1E697DC28];
      v42 = type metadata accessor for ControlSize();
      (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
      *v39 = swift_getKeyPath();
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v3, v73, &_s7SwiftUI6ZStackVyAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMd, &_s7SwiftUI6ZStackVyAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMd, &_s7SwiftUI6ZStackVyAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMR, MEMORY[0x1E6981880]);
      _ConditionalContent<>.init(storage:)();
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s7SwiftUI6ZStackVyAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMd, &_s7SwiftUI6ZStackVyAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMR);
    }

    swift_storeEnumTagMultiPayload();
    v31 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x1E697D680]);
    v32 = lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type ScreenSharingOverlayPlatterButtonStyle and conformance ScreenSharingOverlayPlatterButtonStyle, type metadata accessor for ScreenSharingOverlayPlatterButtonStyle, &protocol conformance descriptor for ScreenSharingOverlayPlatterButtonStyle);
    v76 = v65;
    v77 = v66;
    v78 = v31;
    v79 = v32;
    swift_getOpaqueTypeConformance2();
    v33 = v25;
    v34 = v70;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v34, v73, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMd, &_s7SwiftUI6ZStackVyAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMR, MEMORY[0x1E6981880]);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGMR);
    v35 = v33;
  }

  return outlined consume of RemoteControlState(v35);
}

uint64_t closure #1 in ScreenSharingSpectatorModalOverlay.statusView.getter(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for ScreenSharingSpectatorModalOverlay(0) + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    v10 = static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v10, &dword_1BBC58000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v9 = (*(v3 + 8))(v5, v2);
    v7 = v13[1];
  }

  (*(*v7 + 904))(v9);
}

uint64_t closure #2 in ScreenSharingSpectatorModalOverlay.statusView.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() conversationKit];
  v10._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._object = 0x80000001BC4F9E40;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
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

unint64_t ScreenSharingSpectatorModalOverlay.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_AGyAA6SpacerVALGAA6IDViewVyACyAEyAA4TextVSg_AGyAtA15_BackdropEffectVyAA0E0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApGyAA012_ConditionalG0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyE0VGAA6ZStackVyAGyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_AGyAA6SpacerVALGAA6IDViewVyACyAEyAA4TextVSg_AGyAtA15_BackdropEffectVyAA0E0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApGyAA012_ConditionalG0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyE0VGAA6ZStackVyAGyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGMR);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_ACyAA6SpacerVALGAA6IDViewVyAEyAGyAA4TextVSg_ACyAtA15_BackdropEffectVyAA0G0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApCyAA012_ConditionalD0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyG0VGAA6ZStackVyACyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGA38_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_ACyAA6SpacerVALGAA6IDViewVyAEyAGyAA4TextVSg_ACyAtA15_BackdropEffectVyAA0G0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApCyAA012_ConditionalD0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyG0VGAA6ZStackVyACyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGA38_GMR) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA06_FrameG0VG_AKyAA6SpacerVAPGAA6IDViewVyAA0F0VyAIyAA4TextVSg_AKyAzA15_BackdropEffectVyAA0D0PAAE12_colorMatrixyQrAA06_ColorV0VFQOyAA01_sT11PlaceholderV_Qo_GGSgtGGAL18RemoteControlStateOGAtKyAA012_ConditionalJ0VyA19_yA3_AAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAZG_AL38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyD0VGAA6ZStackVyAKyAL17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0Z4SizeOGGGGAA05_FlexoG0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA06_FrameG0VG_AKyAA6SpacerVAPGAA6IDViewVyAA0F0VyAIyAA4TextVSg_AKyAzA15_BackdropEffectVyAA0D0PAAE12_colorMatrixyQrAA06_ColorV0VFQOyAA01_sT11PlaceholderV_Qo_GGSgtGGAL18RemoteControlStateOGAtKyAA012_ConditionalJ0VyA19_yA3_AAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAZG_AL38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyD0VGAA6ZStackVyAKyAL17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0Z4SizeOGGGGAA05_FlexoG0VGtGGMR);
  closure #1 in ScreenSharingSpectatorModalOverlay.body.getter(v2, &v12[*(v17 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)(__src);
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v12, v16, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_AGyAA6SpacerVALGAA6IDViewVyACyAEyAA4TextVSg_AGyAtA15_BackdropEffectVyAA0E0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApGyAA012_ConditionalG0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyE0VGAA6ZStackVyAGyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_AGyAA6SpacerVALGAA6IDViewVyACyAEyAA4TextVSg_AGyAtA15_BackdropEffectVyAA0E0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApGyAA012_ConditionalG0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyE0VGAA6ZStackVyAGyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGMR);
  memcpy(&v16[*(v13 + 44)], __src, 0x70uLL);
  v18 = static Animation.default.getter();
  v19 = v2 + *(type metadata accessor for ScreenSharingSpectatorModalOverlay(0) + 20);
  v20 = *v19;
  v21 = *(v19 + 8);

  if ((v21 & 1) == 0)
  {
    v23 = static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v23, &dword_1BBC58000, v24, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v22 = (*(v5 + 8))(v9, v3);
    v20 = v30;
  }

  (*(*v20 + 648))(&v30, v22);

  v25 = v29;
  v26 = v30;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v16, v29, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_ACyAA6SpacerVALGAA6IDViewVyAEyAGyAA4TextVSg_ACyAtA15_BackdropEffectVyAA0G0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApCyAA012_ConditionalD0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyG0VGAA6ZStackVyACyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGA38_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_ACyAA6SpacerVALGAA6IDViewVyAEyAGyAA4TextVSg_ACyAtA15_BackdropEffectVyAA0G0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApCyAA012_ConditionalD0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyG0VGAA6ZStackVyACyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGA38_GMR);
  v27 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_ACyAA6SpacerVALGAA6IDViewVyAEyAGyAA4TextVSg_ACyAtA15_BackdropEffectVyAA0G0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApCyAA012_ConditionalD0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyG0VGAA6ZStackVyACyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGA38_GAA18_AnimationModifierVyA10_GGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_ACyAA6SpacerVALGAA6IDViewVyAEyAGyAA4TextVSg_ACyAtA15_BackdropEffectVyAA0G0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApCyAA012_ConditionalD0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyG0VGAA6ZStackVyACyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGA38_GAA18_AnimationModifierVyA10_GGMR) + 36));
  *v27 = v18;
  v27[1] = v26;

  outlined copy of RemoteControlState(v26);

  return outlined consume of RemoteControlState(v26);
}

uint64_t closure #1 in ScreenSharingSpectatorModalOverlay.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v187 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGAA6ZStackVyAA08ModifiedD0VyAM17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGAA6ZStackVyAA08ModifiedD0VyAM17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v204 = &v167 - v4;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyACyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyACyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGAA16_FlexFrameLayoutVGMR);
  MEMORY[0x1EEE9AC00](v183);
  v186 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v182 = &v167 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v185 = &v167 - v9;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6IDViewVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AA15ModifiedContentVyAiA15_BackdropEffectVyAA0F0PAAE12_colorMatrixyQrAA06_ColorM0VFQOyAA01_jK11PlaceholderV_Qo_GGSgtGG15ConversationKit18RemoteControlStateOGMd, &_s7SwiftUI6IDViewVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AA15ModifiedContentVyAiA15_BackdropEffectVyAA0F0PAAE12_colorMatrixyQrAA06_ColorM0VFQOyAA01_jK11PlaceholderV_Qo_GGSgtGG15ConversationKit18RemoteControlStateOGMR);
  MEMORY[0x1EEE9AC00](v177);
  v184 = &v167 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v206 = &v167 - v12;
  v13 = type metadata accessor for UserInterfaceSizeClass();
  v208 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v191 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v211);
  v16 = &v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v179 = &v167 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v178 = &v167 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v197 = &v167 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v167 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v171 = &v167 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v181 = &v167 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v190 = &v167 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v170 = &v167 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v188 = &v167 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v189 = &v167 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v169 = &v167 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v195 = &v167 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v196 = &v167 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v168 = &v167 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v193 = &v167 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v194 = &v167 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v167 = &v167 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v167 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v192 = &v167 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v59 = &v167 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v167 - v61;
  v63 = type metadata accessor for EnvironmentValues();
  v175 = *(v63 - 8);
  v176 = v63;
  MEMORY[0x1EEE9AC00](v63);
  v174 = &v167 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(type metadata accessor for ScreenSharingSpectatorModalOverlay(0) + 20);
  v212 = a1;
  v66 = (a1 + v65);
  v67 = *v66;
  v68 = *(v66 + 8);

  v70 = v67;
  v205 = v16;
  v173 = v68;
  if ((v68 & 1) == 0)
  {
    v71 = static os_log_type_t.fault.getter();
    v72 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v71, &dword_1BBC58000, v72, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v73 = v174;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v69 = (*(v175 + 8))(v73, v176);
    v70 = __src[0];
  }

  (*(*v70 + 216))(v69);

  outlined init with copy of IDView<AvatarStackView, [UUID]>(v62, v59, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v74 = type metadata accessor for Participant(0);
  if (__swift_getEnumTagSinglePayload(v59, 1, v74) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v62, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v75 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v59, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v202 = 0;
    v203 = 0;
    v180 = 0;
    v200 = 0;
    v201 = 0;
    v198 = 0;
    v199 = 0;
  }

  else
  {
    Participant.contactDetails.getter();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v62, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v180 = __src[1];
    v202 = __src[2];
    v203 = __src[0];
    v200 = __src[4];
    v201 = __src[3];
    v198 = __src[6];
    v199 = __src[5];
    v75 = _s15ConversationKit11ParticipantVWOhTm_5(v59, type metadata accessor for Participant);
  }

  v76 = v211;
  v77 = v192;
  ScreenSharingSpectatorModalOverlay.horizontalSizeClass.getter(v75);
  v78 = *(v208 + 104);
  v207 = *MEMORY[0x1E697FF40];
  v209 = v78;
  v210 = v208 + 104;
  (v78)(v54);
  __swift_storeEnumTagSinglePayload(v54, 0, 1, v13);
  v79 = *(v76 + 48);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v77, v25, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v54, &v25[v79], &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v13);
  v172 = v67;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v54, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v77, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    if (__swift_getEnumTagSinglePayload(&v25[v79], 1, v13) == 1)
    {
      v81 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      v82 = 0x4056800000000000;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v83 = v167;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v25, v167, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (__swift_getEnumTagSinglePayload(&v25[v79], 1, v13) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v54, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v192, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    (*(v208 + 8))(v83, v13);
LABEL_11:
    v81 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
    v82 = 0x4052C00000000000;
    goto LABEL_14;
  }

  v84 = v208;
  v85 = v191;
  (*(v208 + 32))(v191, &v25[v79], v13);
  lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v86 = v83;
  v87 = dispatch thunk of static Equatable.== infix(_:_:)();
  v88 = *(v84 + 8);
  v88(v85, v13);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v54, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v192, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v88(v86, v13);
  v81 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v82 = 0x4052C00000000000;
  if (v87)
  {
    v82 = 0x4056800000000000;
  }

LABEL_14:
  v192 = v82;
  v89 = v206;
  v90 = v212;
  v91 = v193;
  v92 = v194;
  ScreenSharingSpectatorModalOverlay.horizontalSizeClass.getter(v81);
  v209(v91, v207, v13);
  __swift_storeEnumTagSinglePayload(v91, 0, 1, v13);
  v93 = *(v211 + 48);
  v94 = v197;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v92, v197, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v91, v94 + v93, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (__swift_getEnumTagSinglePayload(v94, 1, v13) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v91, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    v95 = v197;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    v96 = __swift_getEnumTagSinglePayload(v95 + v93, 1, v13);
    v97 = v172;
    if (v96 == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v95, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      v98 = v188;
      v99 = v195;
      v100 = v204;
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v101 = v168;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v94, v168, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v102 = __swift_getEnumTagSinglePayload(v94 + v93, 1, v13);
  v97 = v172;
  if (v102 == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v193, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    v95 = v197;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v194, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    (*(v208 + 8))(v101, v13);
LABEL_19:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v95, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
    v98 = v188;
    v99 = v195;
    v100 = v204;
    goto LABEL_21;
  }

  v103 = v208;
  v104 = v191;
  (*(v208 + 32))(v191, v94 + v93, v13);
  lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  dispatch thunk of static Equatable.== infix(_:_:)();
  v105 = v89;
  v106 = *(v103 + 8);
  v106(v104, v13);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v193, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v194, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v106(v101, v13);
  v89 = v105;
  v90 = v212;
  v100 = v204;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v197, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v98 = v188;
  v99 = v195;
LABEL_21:
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(v225 + 7) = *&v225[7];
  *(&v225[2] + 7) = *&v225[9];
  *(&v225[4] + 7) = *&v225[11];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v197 = v225[13];
  v193 = v229;
  v194 = v227;
  v192 = v230;
  v224 = 1;
  v223 = v226;
  v222 = v228;
  *v89 = static HorizontalAlignment.center.getter();
  *(v89 + 8) = 0;
  *(v89 + 16) = 1;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextVSg_AA15ModifiedContentVyAkA15_BackdropEffectVyAA0D0PAAE12_colorMatrixyQrAA06_ColorO0VFQOyAA01_lM11PlaceholderV_Qo_GGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextVSg_AA15ModifiedContentVyAkA15_BackdropEffectVyAA0D0PAAE12_colorMatrixyQrAA06_ColorO0VFQOyAA01_lM11PlaceholderV_Qo_GGSgtGGMR);
  closure #1 in closure #1 in ScreenSharingSpectatorModalOverlay.body.getter(v90, (v89 + *(v107 + 44)));

  if ((v173 & 1) == 0)
  {
    v109 = static os_log_type_t.fault.getter();
    v110 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v109, &dword_1BBC58000, v110, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v111 = v174;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v108 = (*(v175 + 8))(v111, v176);
    v97 = __src[0];
  }

  (*(*v97 + 648))(__src, v108);

  *(v89 + *(v177 + 52)) = __src[0];
  v113 = v196;
  ScreenSharingSpectatorModalOverlay.horizontalSizeClass.getter(v112);
  v209(v99, v207, v13);
  __swift_storeEnumTagSinglePayload(v99, 0, 1, v13);
  v114 = *(v211 + 48);
  v115 = v178;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v113, v178, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v99, v115 + v114, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (__swift_getEnumTagSinglePayload(v115, 1, v13) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v113, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    v116 = __swift_getEnumTagSinglePayload(v115 + v114, 1, v13);
    v117 = v189;
    if (v116 == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v115, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v118 = v169;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v115, v169, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (__swift_getEnumTagSinglePayload(v115 + v114, 1, v13) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v195, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v196, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    (*(v208 + 8))(v118, v13);
    v117 = v189;
LABEL_28:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v115, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
    goto LABEL_30;
  }

  v119 = v118;
  v120 = v208;
  v121 = v191;
  (*(v208 + 32))(v191, v115 + v114, v13);
  lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  dispatch thunk of static Equatable.== infix(_:_:)();
  v122 = *(v120 + 8);
  v122(v121, v13);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v195, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v196, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v123 = v119;
  v100 = v204;
  v122(v123, v13);
  v98 = v188;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v115, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v117 = v189;
LABEL_30:
  v124 = v207;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v195 = v233;
  v196 = v231;
  v188 = v235;
  v178 = v236;
  v221 = 1;
  v220 = v232;
  v219 = v234;
  v125 = ScreenSharingSpectatorModalOverlay.statusView.getter(v100);
  ScreenSharingSpectatorModalOverlay.horizontalSizeClass.getter(v125);
  v209(v98, v124, v13);
  __swift_storeEnumTagSinglePayload(v98, 0, 1, v13);
  v126 = v211;
  v127 = *(v211 + 48);
  v128 = v179;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v117, v179, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v98, v128 + v127, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (__swift_getEnumTagSinglePayload(v128, 1, v13) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v117, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    if (__swift_getEnumTagSinglePayload(v128 + v127, 1, v13) == 1)
    {
      v189 = 0x4065400000000000;
      v129 = &_s7SwiftUI22UserInterfaceSizeClassOSgMd;
      v130 = &_s7SwiftUI22UserInterfaceSizeClassOSgMR;
LABEL_36:
      v132 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v128, v129, v130);
      goto LABEL_40;
    }

LABEL_35:
    v189 = 0x4061C00000000000;
    v129 = &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd;
    v130 = &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR;
    goto LABEL_36;
  }

  v131 = v170;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v128, v170, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (__swift_getEnumTagSinglePayload(v128 + v127, 1, v13) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v117, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    (*(v208 + 8))(v131, v13);
    goto LABEL_35;
  }

  v133 = v208;
  v134 = v191;
  (*(v208 + 32))(v191, v128 + v127, v13);
  lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v135 = v131;
  v136 = dispatch thunk of static Equatable.== infix(_:_:)();
  v137 = *(v133 + 8);
  v137(v134, v13);
  v124 = v207;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v189, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v138 = v135;
  v126 = v211;
  v137(v138, v13);
  v132 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v128, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v139 = 0x4061C00000000000;
  if (v136)
  {
    v139 = 0x4065400000000000;
  }

  v189 = v139;
LABEL_40:
  v140 = v190;
  ScreenSharingSpectatorModalOverlay.horizontalSizeClass.getter(v132);
  v141 = v181;
  v209(v181, v124, v13);
  __swift_storeEnumTagSinglePayload(v141, 0, 1, v13);
  v142 = *(v126 + 48);
  v143 = v205;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v140, v205, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v141, v143 + v142, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (__swift_getEnumTagSinglePayload(v143, 1, v13) != 1)
  {
    v144 = v205;
    v145 = v171;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v205, v171, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    if (__swift_getEnumTagSinglePayload(v144 + v142, 1, v13) != 1)
    {
      v146 = v141;
      v147 = v208;
      v148 = v205;
      v149 = v191;
      (*(v208 + 32))(v191, &v205[v142], v13);
      lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v150 = *(v147 + 8);
      v150(v149, v13);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v146, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v190, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      v150(v145, v13);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v148, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      goto LABEL_47;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v141, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v140, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    (*(v208 + 8))(v145, v13);
    goto LABEL_45;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v141, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v140, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (__swift_getEnumTagSinglePayload(&v205[v142], 1, v13) != 1)
  {
LABEL_45:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v205, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
    goto LABEL_47;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v205, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
LABEL_47:
  v151 = v204;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)(__src);
  v152 = v182;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v151, v182, &_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGAA6ZStackVyAA08ModifiedD0VyAM17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGAA6ZStackVyAA08ModifiedD0VyAM17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGMR);
  memcpy((v152 + *(v183 + 36)), __src, 0x70uLL);
  v153 = v185;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v152, v185, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyACyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyACyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGAA16_FlexFrameLayoutVGMR);
  v154 = v224;
  v155 = v223;
  v156 = v222;
  v157 = v184;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v206, v184, &_s7SwiftUI6IDViewVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AA15ModifiedContentVyAiA15_BackdropEffectVyAA0F0PAAE12_colorMatrixyQrAA06_ColorM0VFQOyAA01_jK11PlaceholderV_Qo_GGSgtGG15ConversationKit18RemoteControlStateOGMd, &_s7SwiftUI6IDViewVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AA15ModifiedContentVyAiA15_BackdropEffectVyAA0F0PAAE12_colorMatrixyQrAA06_ColorM0VFQOyAA01_jK11PlaceholderV_Qo_GGSgtGG15ConversationKit18RemoteControlStateOGMR);
  LODWORD(v210) = v221;
  LODWORD(v211) = v220;
  LODWORD(v212) = v219;
  v158 = v186;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v153, v186, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyACyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyACyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGAA16_FlexFrameLayoutVGMR);
  *(&v213[7] + 1) = *v225;
  v159 = v180;
  v213[0] = v203;
  v213[1] = v180;
  v213[2] = v202;
  v213[3] = v201;
  v213[4] = v200;
  v213[5] = v199;
  v213[6] = v198;
  LOBYTE(v213[7]) = 1;
  *(&v213[9] + 1) = *&v225[2];
  *(&v213[11] + 1) = *&v225[4];
  v213[13] = *(&v225[5] + 7);
  v160 = v187;
  memcpy(v187, v213, 0x70uLL);
  v160[14] = 0;
  *(v160 + 120) = v154;
  v160[16] = v197;
  *(v160 + 136) = v155;
  v161 = v193;
  v160[18] = v194;
  *(v160 + 152) = v156;
  v162 = v192;
  v160[20] = v161;
  v160[21] = v162;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_ACyAA6SpacerVAHGAA6IDViewVyAA6VStackVyAA9TupleViewVyAA4TextVSg_ACyAtA15_BackdropEffectVyAA0O0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAD18RemoteControlStateOGAlCyAA012_ConditionalD0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AD38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyO0VGAA6ZStackVyACyAD17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexiJ0VGtMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_ACyAA6SpacerVAHGAA6IDViewVyAA6VStackVyAA9TupleViewVyAA4TextVSg_ACyAtA15_BackdropEffectVyAA0O0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAD18RemoteControlStateOGAlCyAA012_ConditionalD0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AD38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyO0VGAA6ZStackVyACyAD17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexiJ0VGtMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v157, v160 + v163[16], &_s7SwiftUI6IDViewVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AA15ModifiedContentVyAiA15_BackdropEffectVyAA0F0PAAE12_colorMatrixyQrAA06_ColorM0VFQOyAA01_jK11PlaceholderV_Qo_GGSgtGG15ConversationKit18RemoteControlStateOGMd, &_s7SwiftUI6IDViewVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AA15ModifiedContentVyAiA15_BackdropEffectVyAA0F0PAAE12_colorMatrixyQrAA06_ColorM0VFQOyAA01_jK11PlaceholderV_Qo_GGSgtGG15ConversationKit18RemoteControlStateOGMR);
  v164 = v160 + v163[20];
  *v164 = 0;
  v164[8] = v210;
  *(v164 + 2) = v196;
  v164[24] = v211;
  *(v164 + 4) = v195;
  v164[40] = v212;
  v165 = v178;
  *(v164 + 6) = v188;
  *(v164 + 7) = v165;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v158, v160 + v163[24], &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyACyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyACyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGAA16_FlexFrameLayoutVGMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v213, v214, &_s7SwiftUI15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v153, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyACyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyACyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGAA16_FlexFrameLayoutVGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v206, &_s7SwiftUI6IDViewVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AA15ModifiedContentVyAiA15_BackdropEffectVyAA0F0PAAE12_colorMatrixyQrAA06_ColorM0VFQOyAA01_jK11PlaceholderV_Qo_GGSgtGG15ConversationKit18RemoteControlStateOGMd, &_s7SwiftUI6IDViewVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AA15ModifiedContentVyAiA15_BackdropEffectVyAA0F0PAAE12_colorMatrixyQrAA06_ColorM0VFQOyAA01_jK11PlaceholderV_Qo_GGSgtGG15ConversationKit18RemoteControlStateOGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v158, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyACyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyACyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGAA16_FlexFrameLayoutVGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v157, &_s7SwiftUI6IDViewVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AA15ModifiedContentVyAiA15_BackdropEffectVyAA0F0PAAE12_colorMatrixyQrAA06_ColorM0VFQOyAA01_jK11PlaceholderV_Qo_GGSgtGG15ConversationKit18RemoteControlStateOGMd, &_s7SwiftUI6IDViewVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AA15ModifiedContentVyAiA15_BackdropEffectVyAA0F0PAAE12_colorMatrixyQrAA06_ColorM0VFQOyAA01_jK11PlaceholderV_Qo_GGSgtGG15ConversationKit18RemoteControlStateOGMR);
  v216 = *v225;
  v214[0] = v203;
  v214[1] = v159;
  v214[2] = v202;
  v214[3] = v201;
  v214[4] = v200;
  v214[5] = v199;
  v214[6] = v198;
  v215 = 1;
  v217 = *&v225[2];
  *v218 = *&v225[4];
  *&v218[15] = *(&v225[5] + 7);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v214, &_s7SwiftUI15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVGMR);
}

double closure #1 in closure #1 in ScreenSharingSpectatorModalOverlay.body.getter@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v103 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGMR);
  MEMORY[0x1EEE9AC00](v100);
  v97 = &v85 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGSgMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v102 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v101 = &v85 - v7;
  v8 = type metadata accessor for UserInterfaceSizeClass();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v104);
  v95 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v85 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v96 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v85 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v85 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v85 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v85 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v85 - v30;
  v32 = ScreenSharingSpectatorModalOverlay.title.getter();
  v34 = MEMORY[0x1E697FF40];
  v105 = v9;
  v98 = v19;
  v99 = v22;
  if (!v33)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    goto LABEL_13;
  }

  v106 = v32;
  v107 = v33;
  lazy protocol witness table accessor for type String and conformance String();
  v91 = Text.init<A>(_:)();
  v90 = v35;
  LODWORD(v89) = v36;
  v92 = v37;
  v93 = a1;
  ScreenSharingSpectatorModalOverlay.horizontalSizeClass.getter(v91);
  (*(v9 + 104))(v28, *v34, v8);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v8);
  v38 = *(v104 + 48);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v31, v14, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v28, &v14[v38], &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (__swift_getEnumTagSinglePayload(v14, 1, v8) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    if (__swift_getEnumTagSinglePayload(&v14[v38], 1, v8) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
LABEL_11:
      static Font.title2.getter();
      static Font.Weight.semibold.getter();
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  outlined init with copy of IDView<AvatarStackView, [UUID]>(v14, v25, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (__swift_getEnumTagSinglePayload(&v14[v38], 1, v8) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    (*(v105 + 8))(v25, v8);
LABEL_8:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
    goto LABEL_9;
  }

  v43 = v105;
  v44 = v94;
  (*(v105 + 32))(v94, &v14[v38], v8);
  lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  LODWORD(v88) = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v43 + 8);
  v45(v44, v8);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v45(v25, v8);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (v88)
  {
    goto LABEL_11;
  }

LABEL_9:
  static Font.title3.getter();
  static Font.Weight.medium.getter();
LABEL_12:
  Font.weight(_:)();

  v46 = v89;
  v47 = v91;
  v48 = v90;
  v39 = Text.font(_:)();
  v40 = v49;
  v51 = v50;
  v42 = v52;

  outlined consume of Text.Storage(v47, v48, v46 & 1);

  v41 = v51 & 1;
  outlined copy of Text.Storage(v39, v40, v51 & 1);

  v9 = v105;
  v19 = v98;
  v22 = v99;
LABEL_13:
  v53 = ScreenSharingSpectatorModalOverlay.statusText.getter();
  if (v54)
  {
    v93 = v39;
    v106 = v53;
    v107 = v54;
    lazy protocol witness table accessor for type String and conformance String();
    v91 = Text.init<A>(_:)();
    v89 = v55;
    v87 = v56;
    v92 = v57;
    ScreenSharingSpectatorModalOverlay.horizontalSizeClass.getter(v91);
    (*(v9 + 104))(v19, *MEMORY[0x1E697FF40], v8);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v8);
    v58 = v22;
    v59 = *(v104 + 48);
    v60 = v22;
    v61 = v95;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v60, v95, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v19, v61 + v59, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v8);
    v90 = v40;
    v88 = v42;
    v86 = v41;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v58, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      if (__swift_getEnumTagSinglePayload(v61 + v59, 1, v8) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v61, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
        v63 = v100;
LABEL_23:
        static Font.body.getter();
        goto LABEL_24;
      }
    }

    else
    {
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v61, v96, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      if (__swift_getEnumTagSinglePayload(v61 + v59, 1, v8) != 1)
      {
        v66 = v105;
        v67 = v94;
        (*(v105 + 32))(v94, v61 + v59, v8);
        lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
        v68 = v96;
        LODWORD(v104) = dispatch thunk of static Equatable.== infix(_:_:)();
        v69 = *(v66 + 8);
        v69(v67, v8);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
        v69(v68, v8);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v61, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
        v63 = v100;
        if (v104)
        {
          goto LABEL_23;
        }

LABEL_21:
        static Font.subheadline.getter();
        static Font.Weight.regular.getter();
        Font.weight(_:)();

LABEL_24:
        v70 = v87;
        v71 = v91;
        v72 = v89;
        v73 = Text.font(_:)();
        v75 = v74;
        v77 = v76;
        v79 = v78;

        outlined consume of Text.Storage(v71, v72, v70 & 1);

        static _ColorMatrix.secondaryText.getter(&v106);
        v80 = v97;
        View._colorMatrix(_:)();
        *v80 = v73;
        *(v80 + 8) = v75;
        *(v80 + 16) = v77 & 1;
        *(v80 + 24) = v79;
        v65 = v101;
        outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v80, v101, &_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGMR);
        v64 = 0;
        v39 = v93;
        v40 = v90;
        v42 = v88;
        v41 = v86;
        goto LABEL_25;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      (*(v105 + 8))(v96, v8);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v61, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
    v63 = v100;
    goto LABEL_21;
  }

  v64 = 1;
  v63 = v100;
  v65 = v101;
LABEL_25:
  __swift_storeEnumTagSinglePayload(v65, v64, 1, v63);
  v81 = v102;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v65, v102, &_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGSgMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGSgMR);
  v82 = v103;
  *v103 = v39;
  v82[1] = v40;
  v82[2] = v41;
  v82[3] = v42;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextVSg_AA15ModifiedContentVyAcA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGSgtMd, &_s7SwiftUI4TextVSg_AA15ModifiedContentVyAcA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGSgtMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v81, v82 + *(v83 + 48), &_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGSgMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGSgMR);
  outlined copy of Text?(v39, v40, v41, v42);
  outlined consume of Text?(v39, v40, v41, v42);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v65, &_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGSgMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v81, &_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGSgMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGSgMR);
  return outlined consume of Text?(v39, v40, v41, v42);
}

uint64_t ScreenSharingSpectatorModalOverlay.init()@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  OUTLINED_FUNCTION_12_31();
  swift_storeEnumTagMultiPayload();
  v3 = a2 + *(type metadata accessor for ScreenSharingSpectatorModalOverlay(0) + 20);
  type metadata accessor for ScreenSharingSpectatorViewModel(0);
  OUTLINED_FUNCTION_6_44();
  lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(v4, v5, &protocol conformance descriptor for ScreenSharingSpectatorViewModel);
  result = Environment.init<A>(_:)();
  *v3 = result;
  v3[8] = v7 & 1;
  return result;
}

uint64_t ScreenSharingOverlayPlatterButtonStyle.init()@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  OUTLINED_FUNCTION_12_31();

  return swift_storeEnumTagMultiPayload();
}

uint64_t ScreenSharingSpectatorModalOverlay.init(horizontalSizeClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(a1, a2, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMR);
  v3 = a2 + *(type metadata accessor for ScreenSharingSpectatorModalOverlay(0) + 20);
  type metadata accessor for ScreenSharingSpectatorViewModel(0);
  OUTLINED_FUNCTION_6_44();
  lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(v4, v5, &protocol conformance descriptor for ScreenSharingSpectatorViewModel);
  result = Environment.init<A>(_:)();
  *v3 = result;
  *(v3 + 8) = v7 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.controlSize : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ControlSize();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x1BFB1E760](v5);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_BackdropEffectPlaceholder, _BlurEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_BackdropEffectPlaceholder, _BlurEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_BackdropEffectPlaceholder, _BlurEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA26_BackdropEffectPlaceholderVAA05_BlurF0VGMd, &_s7SwiftUI15ModifiedContentVyAA26_BackdropEffectPlaceholderVAA05_BlurF0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_BackdropEffectPlaceholder, _BlurEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t outlined copy of RemoteControlState(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t outlined consume of RemoteControlState(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for ActivityIndicator(uint64_t a1)
{
  type metadata accessor for Environment<ControlSize>(319, &lazy cache variable for type metadata for Environment<ControlSize>, MEMORY[0x1E697DC30]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata completion function for ScreenSharingOverlayPlatterButtonStyle(uint64_t a1)
{
  type metadata accessor for Environment<UserInterfaceSizeClass?>(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata completion function for ScreenSharingSpectatorModalOverlay(uint64_t a1)
{
  type metadata accessor for Environment<UserInterfaceSizeClass?>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<ControlSize>(319, &lazy cache variable for type metadata for Environment<ScreenSharingSpectatorViewModel>, type metadata accessor for ScreenSharingSpectatorViewModel);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Environment<ControlSize>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect>, _BlurEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect>, _BlurEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect>, _BlurEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGAA05_BlurM0VGAA06_ScaleM0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGAA05_BlurM0VGAA06_ScaleM0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect>, _BlurEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect>, _BlurEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect>, _BlurEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect>, _BlurEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect>, _BlurEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGAA05_BlurM0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGAA05_BlurM0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect>, _BlurEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PlaceholderContentView<ModalOverlayTransition> and conformance PlaceholderContentView<A>, &_s7SwiftUI22PlaceholderContentViewVy15ConversationKit22ModalOverlayTransitionVGMd, &_s7SwiftUI22PlaceholderContentViewVy15ConversationKit22ModalOverlayTransitionVGMR, MEMORY[0x1E697FEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, _BackgroundModifier<ModifiedContent<Capsule, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>>>, _ContentShapeModifier<Capsule>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, _BackgroundModifier<ModifiedContent<Capsule, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>>>, _ContentShapeModifier<Capsule>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, _BackgroundModifier<ModifiedContent<Capsule, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>>>, _ContentShapeModifier<Capsule>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGAA011_BackgroundL0VyACyAA7CapsuleVAA09_BackdropO0VyAA4ViewPAAE12_colorMatrixyQrAA06_ColorX0VFQOyACyAA01_uO11PlaceholderVAA05_BlurO0VG_Qo_GGGGAA01_d5ShapeL0VyAXGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGAA011_BackgroundL0VyACyAA7CapsuleVAA09_BackdropO0VyAA4ViewPAAE12_colorMatrixyQrAA06_ColorX0VFQOyACyAA01_uO11PlaceholderVAA05_BlurO0VG_Qo_GGGGAA01_d5ShapeL0VyAXGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, _BackgroundModifier<ModifiedContent<Capsule, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Capsule> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA7CapsuleVGMd, &_s7SwiftUI21_ContentShapeModifierVyAA7CapsuleVGMR, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, _BackgroundModifier<ModifiedContent<Capsule, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>>>, _ContentShapeModifier<Capsule>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, _BackgroundModifier<ModifiedContent<Capsule, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, _BackgroundModifier<ModifiedContent<Capsule, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, _BackgroundModifier<ModifiedContent<Capsule, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGAA011_BackgroundL0VyACyAA7CapsuleVAA09_BackdropO0VyAA4ViewPAAE12_colorMatrixyQrAA06_ColorX0VFQOyACyAA01_uO11PlaceholderVAA05_BlurO0VG_Qo_GGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGAA011_BackgroundL0VyACyAA7CapsuleVAA09_BackdropO0VyAA4ViewPAAE12_colorMatrixyQrAA06_ColorX0VFQOyACyAA01_uO11PlaceholderVAA05_BlurO0VG_Qo_GGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<Capsule, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA7CapsuleVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorL0VFQOyAEyAA01_hI11PlaceholderVAA05_BlurI0VG_Qo_GGGMd, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA7CapsuleVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorL0VFQOyAEyAA01_hI11PlaceholderVAA05_BlurI0VG_Qo_GGGMR, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, _BackgroundModifier<ModifiedContent<Capsule, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ParticipantAvatar, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, IDView<VStack<TupleView<(Text?, ModifiedContent<Text, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>?)>>, RemoteControlState>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView>, ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>>>, _FlexFrameLayout>)>>, _FlexFrameLayout>, _AnimationModifier<RemoteControlState>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ParticipantAvatar, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, IDView<VStack<TupleView<(Text?, ModifiedContent<Text, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>?)>>, RemoteControlState>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView>, ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>>>, _FlexFrameLayout>)>>, _FlexFrameLayout>, _AnimationModifier<RemoteControlState>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ParticipantAvatar, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, IDView<VStack<TupleView<(Text?, ModifiedContent<Text, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>?)>>, RemoteControlState>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView>, ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>>>, _FlexFrameLayout>)>>, _FlexFrameLayout>, _AnimationModifier<RemoteControlState>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_ACyAA6SpacerVALGAA6IDViewVyAEyAGyAA4TextVSg_ACyAtA15_BackdropEffectVyAA0G0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApCyAA012_ConditionalD0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyG0VGAA6ZStackVyACyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGA38_GAA18_AnimationModifierVyA10_GGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_ACyAA6SpacerVALGAA6IDViewVyAEyAGyAA4TextVSg_ACyAtA15_BackdropEffectVyAA0G0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApCyAA012_ConditionalD0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyG0VGAA6ZStackVyACyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGA38_GAA18_AnimationModifierVyA10_GGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ParticipantAvatar, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, IDView<VStack<TupleView<(Text?, ModifiedContent<Text, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>?)>>, RemoteControlState>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView>, ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>>>, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<RemoteControlState> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVy15ConversationKit18RemoteControlStateOGMd, &_s7SwiftUI18_AnimationModifierVy15ConversationKit18RemoteControlStateOGMR, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ParticipantAvatar, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, IDView<VStack<TupleView<(Text?, ModifiedContent<Text, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>?)>>, RemoteControlState>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView>, ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>>>, _FlexFrameLayout>)>>, _FlexFrameLayout>, _AnimationModifier<RemoteControlState>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ParticipantAvatar, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, IDView<VStack<TupleView<(Text?, ModifiedContent<Text, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>?)>>, RemoteControlState>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView>, ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>>>, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ParticipantAvatar, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, IDView<VStack<TupleView<(Text?, ModifiedContent<Text, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>?)>>, RemoteControlState>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView>, ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>>>, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ParticipantAvatar, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, IDView<VStack<TupleView<(Text?, ModifiedContent<Text, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>?)>>, RemoteControlState>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView>, ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>>>, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_ACyAA6SpacerVALGAA6IDViewVyAEyAGyAA4TextVSg_ACyAtA15_BackdropEffectVyAA0G0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApCyAA012_ConditionalD0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyG0VGAA6ZStackVyACyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGA38_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_ACyAA6SpacerVALGAA6IDViewVyAEyAGyAA4TextVSg_ACyAtA15_BackdropEffectVyAA0G0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApCyAA012_ConditionalD0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyG0VGAA6ZStackVyACyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGA38_GMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ParticipantAvatar, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, IDView<VStack<TupleView<(Text?, ModifiedContent<Text, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>?)>>, RemoteControlState>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView>, ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>>>, _FlexFrameLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_AGyAA6SpacerVALGAA6IDViewVyACyAEyAA4TextVSg_AGyAtA15_BackdropEffectVyAA0E0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApGyAA012_ConditionalG0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyE0VGAA6ZStackVyAGyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_AGyAA6SpacerVALGAA6IDViewVyACyAEyAA4TextVSg_AGyAtA15_BackdropEffectVyAA0E0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApGyAA012_ConditionalG0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyE0VGAA6ZStackVyAGyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGMR, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ParticipantAvatar, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, IDView<VStack<TupleView<(Text?, ModifiedContent<Text, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>?)>>, RemoteControlState>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView>, ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>>>, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    type metadata accessor for ScreenSharingOverlayPlatterButtonStyle(255);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x1E697D680]);
    lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type ScreenSharingOverlayPlatterButtonStyle and conformance ScreenSharingOverlayPlatterButtonStyle, type metadata accessor for ScreenSharingOverlayPlatterButtonStyle, &protocol conformance descriptor for ScreenSharingOverlayPlatterButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ScreenSharingSpectatorModalOverlay(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenSharingSpectatorModalOverlay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ScreenSharingSpectatorModalOverlay.statusView.getter()
{
  v1 = *(type metadata accessor for ScreenSharingSpectatorModalOverlay(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in ScreenSharingSpectatorModalOverlay.statusView.getter(v2);
}

double outlined copy of Text?(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined copy of Text.Storage(a1, a2, a3 & 1);
  }

  return result;
}

double outlined consume of Text?(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined init with copy of ScreenSharingSpectatorModalOverlay(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

id @nonobjc NSMapTable.__allocating_init(keyOptions:valueOptions:)(uint64_t a1, uint64_t a2)
{
  v2 = [swift_getObjCClassFromMetadata() mapTableWithKeyOptions:a1 valueOptions:a2];

  return v2;
}

uint64_t OSAllocatedUnfairLock.init(uncheckedState:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  type metadata accessor for ManagedBuffer();
  v4 = static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t AudioCallManager.CallsCache.__deallocating_deinit()
{
  AudioCallManager.CallsCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t AudioCallManager.CallsCache.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10NSMapTableCMd, &_sSo10NSMapTableCMR);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v3 = @nonobjc NSMapTable.__allocating_init(keyOptions:valueOptions:)(0, 5);
  *(v0 + 16) = OSAllocatedUnfairLock.init(uncheckedState:)(&v3, v1);
  return v0;
}

uint64_t AudioCallManager.foregroundRingingCall.setter(char a1)
{
  result = AudioCallManager.callResolver.getter();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(a1 & 1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t AudioCallManager.foregroundRingingCall.getter()
{
  result = AudioCallManager.callResolver.getter();
  if (result)
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    LOBYTE(v2) = (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
    return v2 & 1;
  }

  return result;
}

uint64_t (*AudioCallManager.foregroundRingingCall.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = AudioCallManager.foregroundRingingCall.getter() & 1;
  return AudioCallManager.foregroundRingingCall.modify;
}

uint64_t AudioCallManager.isICSInBackground.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in AudioCallManager.isICSInBackground.didset()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return AudioCallManager.resolveAndPresent()();
}

uint64_t AudioCallManager.isICSInBackground.setter(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 32, a2);
  *(v2 + 32) = a1;
  return AudioCallManager.isICSInBackground.didset();
}

uint64_t (*AudioCallManager.isICSInBackground.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return AudioCallManager.isICSInBackground.modify;
}

uint64_t AudioCallManager.isICSInBackground.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return AudioCallManager.isICSInBackground.didset();
  }

  return result;
}

uint64_t AudioCallManager.isWatchedAppInBackground.setter(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_6_0(v2 + 33, a2);
  *(v2 + 33) = a1;
  return result;
}

uint64_t key path setter for AudioCallManager.callCoordinator : <A>AudioCallManager<A>(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return AudioCallManager.callCoordinator.setter(v2, v1);
}

uint64_t AudioCallManager.callCoordinator.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 40, a2);
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t AudioCallManager.__allocating_init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v11 = *(*v7 + 88);
  v12 = *(*v7 + 96);
  v13 = *(*v7 + 104);
  v20[0] = *(*v7 + 80);
  v10 = v20[0];
  v20[1] = v11;
  v20[2] = v12;
  v20[3] = v13;
  type metadata accessor for AudioCallManager.CallsCache(0, v20);
  *(v7 + 16) = AudioCallManager.CallsCache.__allocating_init()();
  *(v7 + 24) = 0;
  *(v7 + 32) = 1;
  *(v7 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 80) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for ProcessWatcherStream(0);
  swift_allocObject();
  *(v7 + 88) = ProcessWatcherStream.init()();
  *(v7 + 96) = 0;
  swift_beginAccess();
  *(v7 + 48) = a2;
  swift_unknownObjectWeakAssign();
  *(v7 + 64) = a5;
  swift_unknownObjectWeakAssign();
  *(v7 + 80) = a7;
  swift_unknownObjectWeakAssign();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySo6TUCallCs5NeverOGMd, &_s7Combine18PassthroughSubjectCySo6TUCallCs5NeverOGMR);
  lazy protocol witness table accessor for type PassthroughSubject<TUCall, Never> and conformance PassthroughSubject<A, B>();
  v16 = Publisher<>.sink(receiveValue:)();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v8 + 24) = v16;

  return v8;
}

uint64_t type metadata accessor for ProcessWatcherStream(uint64_t a1)
{
  result = type metadata singleton initialization cache for ProcessWatcherStream;
  if (!type metadata singleton initialization cache for ProcessWatcherStream)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AudioCallManager.watchProcessForCall(_:)()
{
  v37 = *v0;
  v1 = v37;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGSgMd, &_sScSySbGSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGMd, &_sScSySbGMR);
  OUTLINED_FUNCTION_1();
  v38 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v40 = &v35 - v15;
  v16 = *(v1 + 88);
  v17 = *(v16 + 208);
  v18 = *(v1 + 80);
  if (v17(v18, v16, v14) == 6 || (v17)(v18, v16) == 6)
  {

    return AudioCallManager.processUpdateTask.setter(0);
  }

  else
  {
    v20 = (*(v16 + 184))(v18, v16);
    v21 = [v20 bundleIdentifier];

    if (v21)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      ProcessWatcherStream.watchProcessForBundleIdentifier(_:)(v22, v24, v6);
      swift_bridgeObjectRelease_n();
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);

      if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
      {
        v25 = v38;
        v26 = *(v38 + 32);
        v35 = v38 + 32;
        v36 = v26;
        v26(v40, v6, v7);
        v27 = type metadata accessor for TaskPriority();
        __swift_storeEnumTagSinglePayload(v39, 1, 1, v27);
        v28 = swift_allocObject();
        swift_weakInit();
        (*(v25 + 16))(v12, v40, v7);
        type metadata accessor for MainActor();

        v29 = static MainActor.shared.getter();
        v30 = (*(v25 + 80) + 64) & ~*(v25 + 80);
        v31 = swift_allocObject();
        v32 = MEMORY[0x1E69E85E0];
        *(v31 + 2) = v29;
        *(v31 + 3) = v32;
        *(v31 + 4) = v18;
        *(v31 + 5) = v16;
        v33 = v37;
        *(v31 + 6) = *(v37 + 96);
        *(v31 + 7) = *(v33 + 104);
        v36(&v31[v30], v12, v7);
        *&v31[(v10 + v30 + 7) & 0xFFFFFFFFFFFFFFF8] = v28;

        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
        AudioCallManager.processUpdateTask.setter(v34);
        return (*(v38 + 8))(v40, v7);
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_sScSySbGSgMd, &_sScSySbGSgMR);
  }
}

uint64_t closure #1 in AudioCallManager.watchProcessForCall(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySb_GMd, &_sScS8IteratorVySb_GMR);
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = type metadata accessor for MainActor();
  v5[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[18] = v8;
  v5[19] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in AudioCallManager.watchProcessForCall(_:), v8, v7);
}

uint64_t closure #1 in AudioCallManager.watchProcessForCall(_:)()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGMd, &_sScSySbGMR);
  AsyncStream.makeAsyncIterator()();
  OUTLINED_FUNCTION_4_0(v1 + 16, (v0 + 2));
  OUTLINED_FUNCTION_4_0(v1 + 16, (v0 + 5));
  OUTLINED_FUNCTION_4_0(v1 + 16, (v0 + 8));
  v2 = static MainActor.shared.getter();
  v0[20] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  v0[21] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_0_68(v3);
  v5 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 24, v2, v5);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 152);
  v5 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](closure #1 in AudioCallManager.watchProcessForCall(_:), v5, v4);
}

{
  v1 = *(v0 + 192);
  if (v1 == 2)
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    OUTLINED_FUNCTION_13();

    return v2();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.conversationKit);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v1 & 1;
      _os_log_impl(&dword_1BBC58000, v5, v6, "ProcessWatcherStream processUpdate %{BOOL}d", v7, 8u);
      MEMORY[0x1BFB23DF0](v7, -1, -1);
    }

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = (*(*Strong + 280))(Strong);
    }

    else
    {
      v9 = 0;
    }

    v10 = swift_weakLoadStrong();
    if (v10)
    {
      (*(*v10 + 288))((v1 & 1) == 0);
    }

    if (((v9 ^ v1) & 1) != 0 || (v11 = swift_weakLoadStrong(), (*(v0 + 176) = v11) == 0))
    {
      v13 = static MainActor.shared.getter();
      *(v0 + 160) = v13;
      swift_task_alloc();
      OUTLINED_FUNCTION_14_4();
      *(v0 + 168) = v14;
      *v14 = v15;
      OUTLINED_FUNCTION_0_68(v14);
      v16 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6D9C8](v0 + 192, v13, v16);
    }

    else
    {
      v12 = swift_task_alloc();
      *(v0 + 184) = v12;
      *v12 = v0;
      v12[1] = closure #1 in AudioCallManager.watchProcessForCall(_:);

      return AudioCallManager.resolveAndPresent()();
    }
  }
}

{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 152);
  v5 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](closure #1 in AudioCallManager.watchProcessForCall(_:), v5, v4);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = static MainActor.shared.getter();
  *(v0 + 160) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 168) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_0_68(v2);
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 192, v1, v4);
}

uint64_t AudioCallManager.deinit()
{

  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 40);
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 56);
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 72);

  return v0;
}

uint64_t AudioCallManager.__deallocating_deinit()
{
  AudioCallManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t Call.displayStyle.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = (*(a1 + 208))();
  v4 = 0x3030000010003uLL >> (8 * result);
  if (result >= 7)
  {
    LOBYTE(v4) = 3;
  }

  *a2 = v4;
  return result;
}

Swift::Int DisplayStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

uint64_t ProcessWatcherStream.watchProcessForBundleIdentifier(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySb__GMd, &_sScS12ContinuationV15BufferingPolicyOySb__GMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGSgMd, &_sScSySbGSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v3[3] = a1;
  v3[4] = a2;

  v15 = OBJC_IVAR____TtC15ConversationKitP33_3A0EEB366752F2F4FD7C097A5827E2E220ProcessWatcherStream_currentStream;
  swift_beginAccess();
  outlined init with copy of Participant?(v3 + v15, v14, &_sScSySbGSgMd, &_sScSySbGSgMR);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGMd, &_sScSySbGMR);
  if (__swift_getEnumTagSinglePayload(v14, 1, v16) != 1)
  {
    return (*(*(v16 - 8) + 32))(v34, v14, v16);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_sScSySbGSgMd, &_sScSySbGSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySb_GSgMd, &_sScS12ContinuationVySb_GSgMR);
  v17 = swift_allocBox();
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySb_GMd, &_sScS12ContinuationVySb_GMR);
  v21 = __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  *(&v32 - 2) = v19;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8650], v6, v22);
  v23 = v34;
  AsyncStream.init(_:bufferingPolicy:_:)();
  v24 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  [v24 setNeedsUserInteractivePriority_];
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v17;
  *(v26 + 24) = v25;
  aBlock[4] = partial apply for closure #2 in ProcessWatcherStream.watchProcessForBundleIdentifier(_:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed FBSDisplayLayoutMonitor, @guaranteed FBSDisplayLayout?, @guaranteed FBSDisplayLayoutTransitionContext?) -> ();
  aBlock[3] = &block_descriptor_18;
  v27 = _Block_copy(aBlock);

  [v24 setTransitionHandler_];
  _Block_release(v27);
  v28 = [objc_opt_self() monitorWithConfiguration_];

  v29 = v3[2];
  v3[2] = v28;

  v30 = v33;
  (*(*(v16 - 8) + 16))(v33, v23, v16);
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v16);
  swift_beginAccess();
  outlined assign with take of Participant?(v30, v3 + v15, &_sScSySbGSgMd, &_sScSySbGSgMR);
  swift_endAccess();
}

uint64_t closure #1 in ProcessWatcherStream.watchProcessForBundleIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a2, &_sScS12ContinuationVySb_GSgMd, &_sScS12ContinuationVySb_GSgMR);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySb_GMd, &_sScS12ContinuationVySb_GMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

void closure #2 in ProcessWatcherStream.watchProcessForBundleIdentifier(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySb_GSgMd, &_sScS12ContinuationVySb_GSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySb__GMd, &_sScS12ContinuationV11YieldResultOySb__GMR);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v19 = swift_projectBox();
  v20 = v19;
  if (a2)
  {
    v46 = v19;
    v47 = v15;
    v48 = v8;
    v49 = v13;
    v50 = v12;
    v45 = a2;
    v21 = [v45 elements];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for FBSDisplayLayoutElement, 0x1E699FAD8);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = specialized Array.count.getter();
    v24 = 0;
    v25 = &selRef_fillRule;
    v51 = v23;
    while (1)
    {
      if (v23 == v24)
      {
LABEL_26:

        goto LABEL_32;
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1BFB22010](v24, v22);
      }

      else
      {
        if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v26 = *(v22 + 8 * v24 + 32);
      }

      v27 = v26;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (![v26 v25[149]])
      {

        goto LABEL_24;
      }

      v28 = outlined bridged method (pb) of @objc FBSDisplayLayoutElement.bundleIdentifier.getter(v27);
      v30 = v29;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        break;
      }

      v33 = *(Strong + 24);
      v32 = *(Strong + 32);

      if (!v30)
      {
        if (!v32)
        {
LABEL_29:

          goto LABEL_31;
        }

        goto LABEL_23;
      }

      if (!v32)
      {
        goto LABEL_20;
      }

      if (v28 == v33 && v30 == v32)
      {

LABEL_31:

        v23 = v51;
LABEL_32:
        v37 = v46;
        swift_beginAccess();
        v38 = v48;
        outlined init with copy of Participant?(v37, v48, &_sScS12ContinuationVySb_GSgMd, &_sScS12ContinuationVySb_GSgMR);
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySb_GMd, &_sScS12ContinuationVySb_GMR);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v39);
        v42 = v49;
        v41 = v50;
        v43 = v47;
        if (EnumTagSinglePayload != 1)
        {
          v53 = v23 != v24;
          AsyncStream.Continuation.yield(_:)();

          (*(v42 + 8))(v43, v41);
          (*(*(v39 - 8) + 8))(v38, v39);
          return;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v23 = v51;
      v25 = &selRef_fillRule;
      if (v35)
      {
        goto LABEL_26;
      }

LABEL_24:
      ++v24;
    }

    if (!v30)
    {
      goto LABEL_29;
    }

LABEL_20:

LABEL_23:
    v23 = v51;
    v25 = &selRef_fillRule;
    goto LABEL_24;
  }

  swift_beginAccess();
  outlined init with copy of Participant?(v20, v11, &_sScS12ContinuationVySb_GSgMd, &_sScS12ContinuationVySb_GSgMR);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySb_GMd, &_sScS12ContinuationVySb_GMR);
  if (__swift_getEnumTagSinglePayload(v11, 1, v36) == 1)
  {
    goto LABEL_38;
  }

  v54 = 0;
  AsyncStream.Continuation.yield(_:)();
  (*(v13 + 8))(v18, v12);
  (*(*(v36 - 8) + 8))(v11, v36);
}

void thunk for @escaping @callee_guaranteed (@guaranteed FBSDisplayLayoutMonitor, @guaranteed FBSDisplayLayout?, @guaranteed FBSDisplayLayoutTransitionContext?) -> ()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

uint64_t ProcessWatcherStream.deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 16);
  }

  else
  {
    v2 = 0;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0 + OBJC_IVAR____TtC15ConversationKitP33_3A0EEB366752F2F4FD7C097A5827E2E220ProcessWatcherStream_currentStream, &_sScSySbGSgMd, &_sScSySbGSgMR);
  return v0;
}

uint64_t ProcessWatcherStream.__deallocating_deinit()
{
  ProcessWatcherStream.deinit();

  return swift_deallocClassInstance();
}

void *ProcessWatcherStream.init()()
{
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  v1 = OBJC_IVAR____TtC15ConversationKitP33_3A0EEB366752F2F4FD7C097A5827E2E220ProcessWatcherStream_currentStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGMd, &_sScSySbGMR);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  return v0;
}

unint64_t lazy protocol witness table accessor for type PassthroughSubject<TUCall, Never> and conformance PassthroughSubject<A, B>()
{
  result = lazy protocol witness table cache variable for type PassthroughSubject<TUCall, Never> and conformance PassthroughSubject<A, B>;
  if (!lazy protocol witness table cache variable for type PassthroughSubject<TUCall, Never> and conformance PassthroughSubject<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine18PassthroughSubjectCySo6TUCallCs5NeverOGMd, &_s7Combine18PassthroughSubjectCySo6TUCallCs5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PassthroughSubject<TUCall, Never> and conformance PassthroughSubject<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayStyle and conformance DisplayStyle()
{
  result = lazy protocol witness table cache variable for type DisplayStyle and conformance DisplayStyle;
  if (!lazy protocol witness table cache variable for type DisplayStyle and conformance DisplayStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayStyle and conformance DisplayStyle);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DisplayStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CallsPresentation(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for CallsPresentation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void type metadata completion function for ProcessWatcherStream(uint64_t a1)
{
  type metadata accessor for AsyncStream<Bool>?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for AsyncStream<Bool>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AsyncStream<Bool>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScSySbGMd, &_sScSySbGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AsyncStream<Bool>?);
    }
  }
}

uint64_t closure #1 in OSAllocatedUnfairLock.init(uncheckedState:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v2 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2);
}

uint64_t outlined bridged method (pb) of @objc FBSDisplayLayoutElement.bundleIdentifier.getter(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t partial apply for closure #1 in AudioCallManager.watchProcessForCall(_:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGMd, &_sScSySbGMR) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return closure #1 in AudioCallManager.watchProcessForCall(_:)(a1, v7, v8, v1 + v6, v9);
}

uint64_t partial apply for closure #1 in AudioCallManager.isICSInBackground.didset()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return closure #1 in AudioCallManager.isICSInBackground.didset();
}

uint64_t key path getter for InCallControlsTitleCell.delegate : InCallControlsTitleCell@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for InCallControlsTitleCell.delegate : InCallControlsTitleCell(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t InCallControlsTitleCell.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*InCallControlsTitleCell.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_delegate;
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

id InCallControlsTitleCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id InCallControlsTitleCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_avatarHeaderViewController) = 0;
  v2 = OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_avatarHeaderVCWrapper;
  *(v0 + v2) = [objc_allocWithZone(CNKGroupIdentityHeaderSNaPWrapper) init];
  v3 = OUTLINED_FUNCTION_18_1();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, ObjectType);
  [v6 setAutomaticallyUpdatesBackgroundConfiguration_];
  return v6;
}

id InCallControlsTitleCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsTitleCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_avatarHeaderViewController) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_avatarHeaderVCWrapper;
  *(v0 + v1) = [objc_allocWithZone(CNKGroupIdentityHeaderSNaPWrapper) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void InCallControlsTitleCell.configure(with:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  static UIBackgroundConfiguration.listPlainCell()();
  v7 = [objc_opt_self() clearColor];
  UIBackgroundConfiguration.backgroundColor.setter();
  v8 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  MEMORY[0x1BFB216F0](v6);
  v9 = *a1;
  v10 = a1[1];
  v12 = a1[5];
  v11 = a1[6];
  v13 = a1[4];
  v14 = objc_allocWithZone(MEMORY[0x1E695D158]);

  outlined copy of Data?(v12, v11);
  v15 = @nonobjc CNGroupIdentity.init(groupWithName:photo:contacts:)(v9, v10, v12, v11);
  v16 = v15;
  v17 = *(v2 + OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_avatarHeaderViewController);
  if (v17)
  {
    v18 = v17;
    [v18 groupIdentityDidUpdate_];
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((Features.isNameAndPhotoC3Enabled.getter() & 1) != 0 && specialized Array.count.getter() == 1 && specialized Array.count.getter())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v13 & 0xC000000000000001) == 0, v13);
      if ((v13 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1BFB22010](0, v13);
      }

      else
      {
        v19 = *(v13 + 32);
      }

      v20 = *(v2 + OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_avatarHeaderVCWrapper);
      v21 = v19;
      [v20 configureGroupIdentityHeaderViewController:v18 contact:v21];
    }

    else
    {

      v16 = v18;
    }
  }

  else
  {
    InCallControlsTitleCell.setupAvatarViewController(for:)(v15);
  }
}

void InCallControlsTitleCell.setupAvatarViewController(for:)(void *a1)
{
  v3 = v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNGroupIdentityInlineActionsViewConfiguration, 0x1E695D170);
  v5 = CNGroupIdentityInlineActionsViewConfiguration.__allocating_init(defaultActionItems:displaysUnavailableActionTypes:)(MEMORY[0x1E69E7CC0], 0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNGroupIdentityHeaderViewController, 0x1E695D168);
  v6 = a1;
  v7 = v5;
  v8 = CNGroupIdentityHeaderViewController.__allocating_init(groupIdentity:actionsViewConfiguration:)(v6, v5);
  v9 = *&v3[OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_avatarHeaderViewController];
  *&v3[OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_avatarHeaderViewController] = v8;
  v32 = v8;

  v10 = [(objc_class *)v32 view];
  if (v10)
  {
    v11 = v10;
    v12 = [v3 contentView];
    [v12 addSubview_];

    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    v13 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BC4BA7F0;
    v15 = [v11 topAnchor];
    v16 = OUTLINED_FUNCTION_0_69();
    v17 = [v16 topAnchor];

    v18 = OUTLINED_FUNCTION_1_68();
    *(v14 + 32) = v18;
    v19 = [v11 bottomAnchor];
    v20 = OUTLINED_FUNCTION_0_69();
    v21 = [v20 bottomAnchor];

    v22 = OUTLINED_FUNCTION_1_68();
    *(v14 + 40) = v22;
    v23 = [v11 leadingAnchor];
    v24 = OUTLINED_FUNCTION_0_69();
    v25 = [v24 leadingAnchor];

    v26 = OUTLINED_FUNCTION_1_68();
    *(v14 + 48) = v26;
    v27 = [v11 trailingAnchor];
    v28 = OUTLINED_FUNCTION_0_69();
    v29 = [v28 trailingAnchor];

    v30 = [v2 constraintEqualToAnchor_];
    *(v14 + 56) = v30;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 activateConstraints_];

    v7 = v11;
    v32 = isa;
  }
}

id CNGroupIdentityInlineActionsViewConfiguration.__allocating_init(defaultActionItems:displaysUnavailableActionTypes:)(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNGroupIdentityActionItem, 0x1E695D160);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithDefaultActionItems:isa displaysUnavailableActionTypes:a2 & 1];

  return v5;
}

id CNGroupIdentityHeaderViewController.__allocating_init(groupIdentity:actionsViewConfiguration:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGroupIdentity:a1 actionsViewConfiguration:a2];

  return v4;
}

UICollectionViewLayoutAttributes __swiftcall InCallControlsTitleCell.preferredLayoutAttributesFitting(_:)(UICollectionViewLayoutAttributes a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  v4 = objc_msgSendSuper2(&v17, sel_preferredLayoutAttributesFittingAttributes_, a1.super.isa);
  v5 = *&v1[OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_avatarHeaderViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 contentView];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v18.origin.x = v9;
    v18.origin.y = v11;
    v18.size.width = v13;
    v18.size.height = v15;
    [v6 sizeForLayoutInContainerSize_];
    [v4 bounds];
    [v4 setBounds_];
  }

  return v4;
}

id InCallControlsTitleCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id ClarityUIKeypadView.init(didEnterNumberAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6CGSizeVSgMd, &_sSo6CGSizeVSgMR);
  State.init(wrappedValue:)();
  *a3 = v9;
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  *(a3 + 32) = 0x4020000000000000;
  static ClarityUIMetrics.standardSpacing.getter();
  *(a3 + 40) = v6;
  closure #1 in variable initialization expression of ClarityUIKeypadView.numberPadStrings();
  *(a3 + 48) = v7;
  result = [objc_allocWithZone(MEMORY[0x1E69D89A8]) init];
  *(a3 + 56) = result;
  *(a3 + 64) = a1;
  *(a3 + 72) = a2;
  return result;
}

uint64_t ClarityUIKeypadView.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = swift_allocObject();
  memcpy((v3 + 16), v1, 0x50uLL);
  KeyPath = swift_getKeyPath();
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyACyACyACyACyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAnA0G3RowVyAIyAnmA4ViewPAAE11buttonStyleyQrqd__AA06ButtonR0Rd__lFQOyACyAsAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0S0VyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0W18AttachmentModifierVG_15ConversationKit06KeypadsR0VQo_GGGGAA12_ScaleEffectVGAA16_OverlayModifierVyAEyACyAA5ColorVAA26_PreferenceWritingModifierVyA10_27CalculatedSizePreferenceKey33_6EF1B68AECCFB236B5DBC4796FF5B98CLLVGGGGGA3_GAA25_PreferenceActionModifierVyA29_So6CGSizeVSgSQHPA39_SQ12CoreGraphicsyHC_HCg0_GGGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMd, &_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyACyACyACyACyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAnA0G3RowVyAIyAnmA4ViewPAAE11buttonStyleyQrqd__AA06ButtonR0Rd__lFQOyACyAsAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0S0VyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0W18AttachmentModifierVG_15ConversationKit06KeypadsR0VQo_GGGGAA12_ScaleEffectVGAA16_OverlayModifierVyAEyACyAA5ColorVAA26_PreferenceWritingModifierVyA10_27CalculatedSizePreferenceKey33_6EF1B68AECCFB236B5DBC4796FF5B98CLLVGGGGGA3_GAA25_PreferenceActionModifierVyA29_So6CGSizeVSgSQHPA39_SQ12CoreGraphicsyHC_HCg0_GGGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMR) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMR) + 28);
  v7 = *MEMORY[0x1E697E7D0];
  type metadata accessor for LayoutDirection();
  OUTLINED_FUNCTION_7_0();
  (*(v8 + 104))(v5 + v6, v7);
  *v5 = KeyPath;
  *a1 = partial apply for closure #1 in ClarityUIKeypadView.body.getter;
  a1[1] = v3;
  return outlined init with copy of ClarityUIKeypadView(__dst, &v10);
}

uint64_t closure #1 in ClarityUIKeypadView.body.getter@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(v38, a2, sizeof(v38));
  ClarityUIKeypadView.horizontalSpacingBetweenButtons(_:)(a1);
  v7 = v6;
  v8 = a2[4];
  GeometryProxy.size.getter();
  v10 = v9;
  v11 = objc_opt_self();
  [v11 outerCircleDiameter];
  v13 = (v10 + v12 * -4.0) / 3.0;
  if (v13 > v8)
  {
    v8 = v13;
  }

  [v11 outerCircleDiameter];
  v15 = v14 / 3.0;
  if (v15 >= v8)
  {
    v16 = v8;
  }

  else
  {
    v16 = v15;
  }

  *a3 = static Alignment.center.getter();
  *(a3 + 8) = v17;
  *(a3 + 16) = v7;
  *(a3 + 24) = 0;
  *(a3 + 32) = v16;
  *(a3 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA10GridLayoutVAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAnA0F3RowVyAIyAnmA0D0PAAE11buttonStyleyQrqd__AA06ButtonQ0Rd__lFQOyAA15ModifiedContentVyAsAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0R0VyAWyAA5ImageVAA06_FrameG0VGG_Qo_AA0X18AttachmentModifierVG_15ConversationKit06KeypadrQ0VQo_GGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA10GridLayoutVAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAnA0F3RowVyAIyAnmA0D0PAAE11buttonStyleyQrqd__AA06ButtonQ0Rd__lFQOyAA15ModifiedContentVyAsAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0R0VyAWyAA5ImageVAA06_FrameG0VGG_Qo_AA0X18AttachmentModifierVG_15ConversationKit06KeypadrQ0VQo_GGGGMR);
  closure #1 in closure #1 in ClarityUIKeypadView.body.getter(a2);
  v18 = *(a2 + 1);
  v38[0] = *a2;
  v38[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo6CGSizeVSgGMd, &_s7SwiftUI5StateVySo6CGSizeVSgGMR);
  State.wrappedValue.getter();
  v19 = 1.0;
  if ((v40 & 1) == 0)
  {
    v20 = v39;
    GeometryProxy.size.getter();
    v22 = v21 / *&v20;
    GeometryProxy.size.getter();
    if (v23 / *(&v20 + 1) >= v22)
    {
      v19 = v22;
    }

    else
    {
      v19 = v23 / *(&v20 + 1);
    }

    if (v19 >= 1.0)
    {
      v19 = 1.0;
    }
  }

  static UnitPoint.center.getter();
  v25 = v24;
  v27 = v26;
  v28 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAlA0E3RowVyAGyAlkA4ViewPAAE11buttonStyleyQrqd__AA06ButtonP0Rd__lFQOyACyAqAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0Q0VyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadqP0VQo_GGGGAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAlA0E3RowVyAGyAlkA4ViewPAAE11buttonStyleyQrqd__AA06ButtonP0Rd__lFQOyACyAqAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0Q0VyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadqP0VQo_GGGGAA12_ScaleEffectVGMR) + 36);
  *v28 = v19;
  *(v28 + 8) = v19;
  *(v28 + 16) = v25;
  *(v28 + 24) = v27;
  v29 = static Alignment.center.getter();
  v31 = v30;
  v32 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAlA0E3RowVyAGyAlkA4ViewPAAE11buttonStyleyQrqd__AA06ButtonP0Rd__lFQOyACyAqAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0Q0VyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadqP0VQo_GGGGAA12_ScaleEffectVGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA5ColorVAA26_PreferenceWritingModifierVyA8_27CalculatedSizePreferenceKey33_6EF1B68AECCFB236B5DBC4796FF5B98CLLVGGGGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAlA0E3RowVyAGyAlkA4ViewPAAE11buttonStyleyQrqd__AA06ButtonP0Rd__lFQOyACyAqAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0Q0VyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadqP0VQo_GGGGAA12_ScaleEffectVGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA5ColorVAA26_PreferenceWritingModifierVyA8_27CalculatedSizePreferenceKey33_6EF1B68AECCFB236B5DBC4796FF5B98CLLVGGGGGMR) + 36));
  *v32 = closure #1 in closure #2 in closure #1 in ClarityUIKeypadView.body.getter;
  v32[1] = 0;
  v32[2] = v29;
  v32[3] = v31;
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v33 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAlA0E3RowVyAGyAlkA4ViewPAAE11buttonStyleyQrqd__AA06ButtonP0Rd__lFQOyACyAqAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0Q0VyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadqP0VQo_GGGGAA12_ScaleEffectVGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA5ColorVAA26_PreferenceWritingModifierVyA8_27CalculatedSizePreferenceKey33_6EF1B68AECCFB236B5DBC4796FF5B98CLLVGGGGGA1_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAlA0E3RowVyAGyAlkA4ViewPAAE11buttonStyleyQrqd__AA06ButtonP0Rd__lFQOyACyAqAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0Q0VyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadqP0VQo_GGGGAA12_ScaleEffectVGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA5ColorVAA26_PreferenceWritingModifierVyA8_27CalculatedSizePreferenceKey33_6EF1B68AECCFB236B5DBC4796FF5B98CLLVGGGGGA1_GMR) + 36));
  v34 = v40;
  *v33 = v39;
  v33[1] = v34;
  v33[2] = v41;
  v35 = swift_allocObject();
  memcpy((v35 + 16), a2, 0x50uLL);
  v36 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAlA0E3RowVyAGyAlkA4ViewPAAE11buttonStyleyQrqd__AA06ButtonP0Rd__lFQOyACyAqAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0Q0VyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadqP0VQo_GGGGAA12_ScaleEffectVGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA5ColorVAA26_PreferenceWritingModifierVyA8_27CalculatedSizePreferenceKey33_6EF1B68AECCFB236B5DBC4796FF5B98CLLVGGGGGA1_GAA25_PreferenceActionModifierVyA29_So6CGSizeVSgSQHPA39_SQ12CoreGraphicsyHC_HCg0_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAlA0E3RowVyAGyAlkA4ViewPAAE11buttonStyleyQrqd__AA06ButtonP0Rd__lFQOyACyAqAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0Q0VyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadqP0VQo_GGGGAA12_ScaleEffectVGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA5ColorVAA26_PreferenceWritingModifierVyA8_27CalculatedSizePreferenceKey33_6EF1B68AECCFB236B5DBC4796FF5B98CLLVGGGGGA1_GAA25_PreferenceActionModifierVyA29_So6CGSizeVSgSQHPA39_SQ12CoreGraphicsyHC_HCg0_GGMR) + 36));
  *v36 = partial apply for closure #3 in closure #1 in ClarityUIKeypadView.body.getter;
  v36[1] = v35;
  return outlined init with copy of ClarityUIKeypadView(a2, v38);
}

id ClarityUIKeypadView.horizontalSpacingBetweenButtons(_:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  GeometryProxy.size.getter();
  v4 = v3;
  v5 = objc_opt_self();
  [v5 outerCircleDiameter];
  if ((v4 + v6 * -3.0) * 0.25 < v2)
  {
    GeometryProxy.size.getter();
    [v5 outerCircleDiameter];
  }

  return [v5 outerCircleDiameter];
}

uint64_t closure #1 in closure #1 in ClarityUIKeypadView.body.getter(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v5 = ClarityUIKeypadView.numberPadCharacters.getter();
  swift_getKeyPath();
  v2 = swift_allocObject();
  memcpy((v2 + 16), __src, 0x50uLL);
  outlined init with copy of ClarityUIKeypadView(__src, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays10ArraySliceVySo20TPNumberPadCharacterVGGMd, &_sSays10ArraySliceVySo20TPNumberPadCharacterVGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7GridRowVyAA7ForEachVys10ArraySliceVySo20TPNumberPadCharacterVGAiA4ViewPAAE11buttonStyleyQrqd__AA06ButtonN0Rd__lFQOyAA15ModifiedContentVyAlAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0O0VyAPyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadoN0VQo_GGMd, &_s7SwiftUI7GridRowVyAA7ForEachVys10ArraySliceVySo20TPNumberPadCharacterVGAiA4ViewPAAE11buttonStyleyQrqd__AA06ButtonN0Rd__lFQOyAA15ModifiedContentVyAlAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0O0VyAPyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadoN0VQo_GGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [ArraySlice<TPNumberPadCharacter>] and conformance [A], &_sSays10ArraySliceVySo20TPNumberPadCharacterVGGMd, &_sSays10ArraySliceVySo20TPNumberPadCharacterVGGMR, MEMORY[0x1E69E6338]);
  lazy protocol witness table accessor for type ArraySlice<TPNumberPadCharacter> and conformance <A> ArraySlice<A>();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type GridRow<ForEach<ArraySlice<TPNumberPadCharacter>, TPNumberPadCharacter, <<opaque return type of View.buttonStyle<A>(_:)>>.0>> and conformance GridRow<A>, &_s7SwiftUI7GridRowVyAA7ForEachVys10ArraySliceVySo20TPNumberPadCharacterVGAiA4ViewPAAE11buttonStyleyQrqd__AA06ButtonN0Rd__lFQOyAA15ModifiedContentVyAlAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0O0VyAPyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadoN0VQo_GGMd, &_s7SwiftUI7GridRowVyAA7ForEachVys10ArraySliceVySo20TPNumberPadCharacterVGAiA4ViewPAAE11buttonStyleyQrqd__AA06ButtonN0Rd__lFQOyAA15ModifiedContentVyAlAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0O0VyAPyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadoN0VQo_GGMR, MEMORY[0x1E697D6E0]);
  return ForEach<>.init(_:id:content:)();
}

uint64_t ClarityUIKeypadView.numberPadCharacters.getter()
{
  v1 = objc_opt_self();
  v2 = outlined bridged method (pb) of @objc static TPDialerNumberPad.dialerNumberPadFullCharacters()(v1);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = v2;
  v4 = 0;
  v5 = *(v2 + 16);
  v6 = v2 + 32;
  v0 = MEMORY[0x1E69E7CC0];
  while (v5 != v4)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v38[0] = 0;
      v38[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      MEMORY[0x1BFB20B10](0xD000000000000032, 0x80000001BC4FA1B0);
      _print_unlocked<A, B>(_:_:)();
      while (1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_17:
        v39[0] = 0;
        v39[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(53);
        MEMORY[0x1BFB20B10](0xD000000000000033, 0x80000001BC4FA1F0);
        type metadata accessor for TPNumberPadCharacter(0);
        v35 = MEMORY[0x1BFB20D10](v0, v34);
        v0 = v36;
        MEMORY[0x1BFB20B10](v35);
      }
    }

    outlined init with copy of Any(v6, v39);
    outlined init with copy of Any(v39, v38);
    type metadata accessor for NSNumber();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_15;
    }

    v7 = [v37 integerValue];

    __swift_destroy_boxed_opaque_existential_1(v39);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 16) + 1, 1, v0);
      v0 = v10;
    }

    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    if (v9 >= v8 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v8 > 1, v9 + 1, 1, v0);
      v0 = v11;
    }

    *(v0 + 16) = v9 + 1;
    *(v0 + 8 * v9 + 32) = v7;
    v6 += 32;
    ++v4;
  }

  if (*(v0 + 16) != 12)
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys0B5SliceVySo20TPNumberPadCharacterVGGMd, &_ss23_ContiguousArrayStorageCys0B5SliceVySo20TPNumberPadCharacterVGGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BC4BB990;
  specialized Array.subscript.getter(0, 3, v0);
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  *(v12 + 48) = v15;
  *(v12 + 56) = v16;
  specialized Array.subscript.getter(3, 6, v0);
  *(v12 + 64) = v17;
  *(v12 + 72) = v18;
  *(v12 + 80) = v19;
  *(v12 + 88) = v20;
  specialized Array.subscript.getter(6, 9, v0);
  *(v12 + 96) = v21;
  *(v12 + 104) = v22;
  *(v12 + 112) = v23;
  *(v12 + 120) = v24;
  specialized Array.subscript.getter(9, 12, v0);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  *(v12 + 128) = v26;
  *(v12 + 136) = v28;
  *(v12 + 144) = v30;
  *(v12 + 152) = v32;
  return v12;
}

uint64_t closure #1 in closure #1 in closure #1 in ClarityUIKeypadView.body.getter@<X0>(__int128 *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  *a3 = 0;
  *(a3 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7GridRowVyAA7ForEachVys10ArraySliceVySo20TPNumberPadCharacterVGAiA4ViewPAAE11buttonStyleyQrqd__AA06ButtonN0Rd__lFQOyAA15ModifiedContentVyAlAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0O0VyAPyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadoN0VQo_GGMd, &_s7SwiftUI7GridRowVyAA7ForEachVys10ArraySliceVySo20TPNumberPadCharacterVGAiA4ViewPAAE11buttonStyleyQrqd__AA06ButtonN0Rd__lFQOyAA15ModifiedContentVyAlAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0O0VyAPyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadoN0VQo_GGMR);
  v13 = *a1;
  v14 = v5;
  v15 = v6;
  swift_getKeyPath();
  v7 = swift_allocObject();
  memcpy((v7 + 16), a2, 0x50uLL);
  swift_unknownObjectRetain();
  outlined init with copy of ClarityUIKeypadView(a2, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySo20TPNumberPadCharacterVGMd, &_ss10ArraySliceVySo20TPNumberPadCharacterVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA15ModifiedContentVyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0F0VyAGyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0L18AttachmentModifierVG_15ConversationKit06KeypadfE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA15ModifiedContentVyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0F0VyAGyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0L18AttachmentModifierVG_15ConversationKit06KeypadfE0VQo_MR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ArraySlice<TPNumberPadCharacter> and conformance ArraySlice<A>, &_ss10ArraySliceVySo20TPNumberPadCharacterVGMd, &_ss10ArraySliceVySo20TPNumberPadCharacterVGMR, MEMORY[0x1E69E6970]);
  lazy protocol witness table accessor for type TPNumberPadCharacter and conformance TPNumberPadCharacter(&lazy protocol witness table cache variable for type TPNumberPadCharacter and conformance TPNumberPadCharacter, type metadata accessor for TPNumberPadCharacter, &protocol conformance descriptor for TPNumberPadCharacter);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0I18AttachmentModifierVGMR);
  v9 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v10 = lazy protocol witness table accessor for type KeypadButtonStyle and conformance KeypadButtonStyle();
  v12[0] = v8;
  v12[1] = &type metadata for KeypadButtonStyle;
  v12[2] = v9;
  v12[3] = v10;
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in ClarityUIKeypadView.body.getter@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyAA15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyAA15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGG_Qo_MR);
  v26 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v13 = &v26 - v12;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0I18AttachmentModifierVGMR);
  MEMORY[0x1EEE9AC00](v28);
  v15 = &v26 - v14;
  v16 = *a1;
  v17 = swift_allocObject();
  memcpy((v17 + 16), a2, 0x50uLL);
  *(v17 + 96) = v16;
  v32 = v16;
  v33 = a2;
  outlined init with copy of ClarityUIKeypadView(a2, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  static AccessibilityChildBehavior.ignore.getter();
  v18 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Image, _FrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGGMR, MEMORY[0x1E697D680]);
  View.accessibilityElement(children:)();
  (*(v30 + 8))(v7, v31);
  result = (*(v9 + 8))(v11, v8);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v20 = a2[6];
    if (v16 < *(v20 + 16))
    {
      v21 = v20 + 16 * v16;
      v23 = *(v21 + 32);
      v22 = *(v21 + 40);
      v36[0] = v23;
      v36[1] = v22;
      v34 = v8;
      v35 = v18;
      swift_getOpaqueTypeConformance2();
      lazy protocol witness table accessor for type String and conformance String();
      v24 = v27;
      View.accessibilityLabel<A>(_:)();
      (*(v26 + 8))(v13, v24);
      v25 = swift_allocObject();
      memcpy((v25 + 16), a2, 0x50uLL);
      *(v25 + 96) = v16;
      v34 = partial apply for closure #3 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in ClarityUIKeypadView.body.getter;
      v35 = v25;
      outlined init with copy of ClarityUIKeypadView(a2, v36);
      lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type KeypadButtonStyle and conformance KeypadButtonStyle();
      View.buttonStyle<A>(_:)();

      return sub_1BBCE2A04(v15);
    }
  }

  __break(1u);
  return result;
}

void closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in ClarityUIKeypadView.body.getter(uint64_t a1, unint64_t a2)
{
  [*(a1 + 56) playSoundForDialerCharacter_];
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(a1 + 48);
  if (*(v4 + 16) <= a2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = *(a1 + 64);
  v6 = v4 + 16 * a2;
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);

  v5(v7, v8);
}

void *closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in ClarityUIKeypadView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV21TemplateRenderingModeOSgMd, &_s7SwiftUI5ImageV21TemplateRenderingModeOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = objc_opt_self();
  result = [v7 imageForCharacter:a1 highlighted:0 whiteVersion:0];
  if (result)
  {
    Image.init(uiImage:)();
    v9 = *MEMORY[0x1E6981698];
    v10 = type metadata accessor for Image.TemplateRenderingMode();
    (*(*(v10 - 8) + 104))(v6, v9, v10);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
    v11 = Image.renderingMode(_:)();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s7SwiftUI5ImageV21TemplateRenderingModeOSgMd, &_s7SwiftUI5ImageV21TemplateRenderingModeOSgMR);
    [v7 outerCircleDiameter];
    [v7 outerCircleDiameter];
    static Alignment.center.getter();
    result = _FrameLayout.init(width:height:alignment:)();
    v12 = v16;
    v13 = v17;
    v14 = v18;
    v15 = v19;
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 32) = v15;
    *(a2 + 40) = v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #2 in closure #1 in ClarityUIKeypadView.body.getter(uint64_t a2@<X8>)
{
  v3 = static Color.clear.getter();
  GeometryProxy.size.getter();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
}

uint64_t key path setter for EnvironmentValues.layoutDirection : EnvironmentValues(uint64_t a1)
{
  type metadata accessor for LayoutDirection();
  OUTLINED_FUNCTION_1();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.layoutDirection.setter();
}

void closure #1 in variable initialization expression of ClarityUIKeypadView.numberPadStrings()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8NSStringCSgGMd, &_ss23_ContiguousArrayStorageCySo8NSStringCSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4C4190;
  *(inited + 32) = @"1";
  *(inited + 40) = @"2";
  *(inited + 48) = @"3";
  *(inited + 56) = @"4";
  *(inited + 64) = @"5";
  *(inited + 72) = @"6";
  *(inited + 80) = @"7";
  *(inited + 88) = @"8";
  *(inited + 96) = @"9";
  *(inited + 104) = @"*";
  *(inited + 112) = @"0";
  *(inited + 120) = @"#";
  v1 = @"1";
  v2 = @"2";
  v3 = @"3";
  v4 = @"4";
  v5 = @"5";
  v6 = @"6";
  v7 = @"7";
  v8 = @"8";
  v9 = @"9";
  v10 = @"*";
  v11 = @"0";
  v12 = @"#";
  for (i = 0; ; ++i)
  {
    if (i == 12)
    {
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      return;
    }

    if (i > 0xB)
    {
      break;
    }

    v14 = *(inited + 8 * i + 32);
    if (v14)
    {
      v15 = v14;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  __break(1u);
}

uint64_t key path getter for KeypadButtonStyle.onStateChanged : KeypadButtonStyle@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  a2[1] = v5;
}

uint64_t key path setter for KeypadButtonStyle.onStateChanged : KeypadButtonStyle(uint64_t *a1, uint64_t (**a2)(uint64_t a1))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ());
  a2[1] = v5;
  return result;
}

uint64_t KeypadButtonStyle.onStateChanged.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t KeypadButtonStyle.makeBody(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21KeypadButtonStyleViewVy7SwiftUI5ColorVGMd, &_s15ConversationKit21KeypadButtonStyleViewVy7SwiftUI5ColorVGMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18[-v8];
  type metadata accessor for ButtonStyleConfiguration();
  OUTLINED_FUNCTION_7_0();
  (*(v10 + 16))(v9, a1);
  v11 = static Color.clarityUIButtonBackground.getter();
  v12 = static Color.primary.getter();
  *&v9[*(v6 + 36)] = v11;
  *&v9[*(v6 + 40)] = v12;
  v18[15] = ButtonStyleConfiguration.isPressed.getter() & 1;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  OUTLINED_FUNCTION_1_69();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v14, v15, &_s15ConversationKit21KeypadButtonStyleViewVy7SwiftUI5ColorVGMR, v16);

  View.onChange<A>(of:initial:_:)();

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit21KeypadButtonStyleViewVy7SwiftUI5ColorVGMd, &_s15ConversationKit21KeypadButtonStyleViewVy7SwiftUI5ColorVGMR);
}

uint64_t KeypadButtonStyleView.init(configuration:background:foregroundColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for ButtonStyleConfiguration();
  OUTLINED_FUNCTION_7_0();
  (*(v12 + 32))(a6, a1);
  v14 = type metadata accessor for KeypadButtonStyleView(0, a4, a5, v13);
  result = (*(*(a4 - 8) + 32))(a6 + *(v14 + 36), a2, a4);
  *(a6 + *(v14 + 40)) = a3;
  return result;
}

uint64_t KeypadButtonStyleView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMd, &_s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMR);
  v4 = *(a1 + 24);
  v38 = *(a1 + 16);
  v37 = v4;
  type metadata accessor for _BackgroundStyleModifier();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16_OverlayModifierVyAA5ColorVGMd, &_s7SwiftUI16_OverlayModifierVyAA5ColorVGMR);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR);
  OUTLINED_FUNCTION_7_2();
  v5 = type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_5_41();
  v8 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v6, &_s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMd, &_s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMR, v7);
  OUTLINED_FUNCTION_4_45();
  v53 = v8;
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x1E697E858];
  v10 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  v51 = v10;
  v52 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v11, &_s7SwiftUI16_OverlayModifierVyAA5ColorVGMd, &_s7SwiftUI16_OverlayModifierVyAA5ColorVGMR, v12);
  v36[2] = v9;
  v13 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_64();
  v49 = v13;
  v50 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v14, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, v15);
  v36[1] = v5;
  v16 = swift_getWitnessTable();
  v17 = lazy protocol witness table accessor for type Circle and conformance Circle();
  v45 = v5;
  v46 = MEMORY[0x1E69817E8];
  v47 = v16;
  v48 = v17;
  v18 = type metadata accessor for PlatterShadowedContent();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v36 - v22;
  v24 = type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v36 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v36 - v31;
  ButtonStyleConfiguration.isPressed.getter();
  v40 = v38;
  v41 = v37;
  v42 = v2;
  PlatterShadowedContent.init(shape:isPressed:content:)();
  ButtonStyleConfiguration.isPressed.getter();
  v33 = swift_getWitnessTable();
  static UnitPoint.center.getter();
  View.scaleEffect(_:anchor:)();
  (*(v20 + 8))(v23, v18);
  v43 = v33;
  v44 = MEMORY[0x1E697E070];
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v34 = *(v26 + 8);
  v34(v29, v24);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v34)(v32, v24);
}

unint64_t lazy protocol witness table accessor for type Circle and conformance Circle()
{
  result = lazy protocol witness table cache variable for type Circle and conformance Circle;
  if (!lazy protocol witness table cache variable for type Circle and conformance Circle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Circle and conformance Circle);
  }

  return result;
}

uint64_t closure #1 in KeypadButtonStyleView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMd, &_s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMR);
  MEMORY[0x1EEE9AC00](v32);
  v8 = v30 - v7;
  v34 = type metadata accessor for _BackgroundStyleModifier();
  v9 = type metadata accessor for ModifiedContent();
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v31 = v30 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16_OverlayModifierVyAA5ColorVGMd, &_s7SwiftUI16_OverlayModifierVyAA5ColorVGMR);
  v37 = type metadata accessor for ModifiedContent();
  v40 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v33 = v30 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR);
  v36 = type metadata accessor for ModifiedContent();
  v41 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v38 = v30 - v14;
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA24ButtonStyleConfigurationV5LabelVGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA24ButtonStyleConfigurationV5LabelVGMR);
  ButtonStyleConfiguration.label.getter();
  v30[1] = type metadata accessor for KeypadButtonStyleView(0, a2, a3, v15);
  v16 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HStack<ButtonStyleConfiguration.Label> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMd, &_s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMR, MEMORY[0x1E69817F8]);
  static Edge.Set.all.getter();
  v17 = v31;
  View.background<A>(_:ignoresSafeAreaEdges:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMd, &_s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMR);
  v43 = a2;
  v44 = a3;
  v45 = a1;
  WitnessTable = swift_getWitnessTable();
  v50 = v16;
  v51 = WitnessTable;
  v19 = swift_getWitnessTable();
  default argument 0 of View.overlay<A>(alignment:content:)(v9);
  v20 = v33;
  View.overlay<A>(alignment:content:)();
  (*(v39 + 8))(v17, v9);
  v21 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _OverlayModifier<Color> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA5ColorVGMd, &_s7SwiftUI16_OverlayModifierVyAA5ColorVGMR, MEMORY[0x1E697EC18]);
  v48 = v19;
  v49 = v21;
  v22 = v37;
  v23 = swift_getWitnessTable();
  v24 = v35;
  View.foregroundColor(_:)();
  (*(v40 + 8))(v20, v22);
  v25 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x1E6980A18]);
  v46 = v23;
  v47 = v25;
  v26 = v36;
  swift_getWitnessTable();
  v27 = v38;
  static ViewBuilder.buildExpression<A>(_:)();
  v28 = *(v41 + 8);
  v28(v24, v26);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v28)(v27, v26);
}

uint64_t closure #2 in closure #1 in KeypadButtonStyleView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    result = static Color.clarityUIPressedButtonOverlay.getter();
  }

  else
  {
    result = static Color.clear.getter();
  }

  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ClarityUIKeypadView(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for ClarityUIKeypadView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for KeypadButtonStyleView(uint64_t a1)
{
  result = type metadata accessor for ButtonStyleConfiguration();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KeypadButtonStyleView(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for ButtonStyleConfiguration();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = *(*(v6 - 8) + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v6;
  v15 = *(*(v6 - 8) + 64) + v12;
  v16 = v13 + 7;
  if (v11 >= a2)
  {
LABEL_27:
    if (v7 == v11)
    {
      v26 = a1;
      v8 = v14;
    }

    else
    {
      v26 = ((a1 + v15) & ~v12);
      if (v10 != v11)
      {
        v27 = *((v26 + v16) & 0xFFFFFFFFFFFFFFF8);
        if (v27 >= 0xFFFFFFFF)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }

      v7 = v10;
    }

    return __swift_getEnumTagSinglePayload(v26, v7, v8);
  }

  v17 = ((v16 + (v15 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v18 = v17 & 0xFFFFFFF8;
  if ((v17 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = a2 - v11 + 1;
  }

  result = 4;
  if (v19 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v19 < 0x100)
  {
    v21 = 1;
  }

  if (v19 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  switch(v22)
  {
    case 1:
      v23 = *(a1 + v17);
      if (!v23)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    case 2:
      v23 = *(a1 + v17);
      if (!v23)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    case 3:
      __break(1u);
      return result;
    case 4:
      v23 = *(a1 + v17);
      if (!v23)
      {
        goto LABEL_27;
      }

LABEL_24:
      v24 = v23 - 1;
      if (v18)
      {
        v24 = 0;
        v25 = *a1;
      }

      else
      {
        v25 = 0;
      }

      result = v11 + (v25 | v24) + 1;
      break;
    default:
      goto LABEL_27;
  }

  return result;
}

void storeEnumTagSinglePayload for KeypadButtonStyleView(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for ButtonStyleConfiguration();
  v9 = *(*(v8 - 8) + 84);
  v10 = *(a4 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = *(*(v8 - 8) + 84);
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v11 + 80);
  v15 = *(*(v8 - 8) + 64) + v14;
  v16 = *(v11 + 64) + 7;
  v17 = ((v16 + (v15 & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 >= a3)
  {
    v20 = 0;
  }

  else
  {
    if (((v16 + (v15 & ~v14)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a3 - v13 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  if (a2 <= v13)
  {
    switch(v20)
    {
      case 1:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_48:
        __break(1u);
        return;
      case 4:
        *(a1 + v17) = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if (v9 == v13)
        {
          v23 = a1;
          v24 = a2;
          v10 = v8;
        }

        else
        {
          v23 = ((a1 + v15) & ~v14);
          if (v12 != v13)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v25 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v25 = (a2 - 1);
            }

            *((v23 + v16) & 0xFFFFFFFFFFFFFFF8) = v25;
            return;
          }

          v24 = a2;
          v9 = v12;
        }

        __swift_storeEnumTagSinglePayload(v23, v24, v9, v10);
        break;
    }
  }

  else
  {
    if (((v16 + (v15 & ~v14)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a2 - v13;
    }

    else
    {
      v21 = 1;
    }

    if (((v16 + (v15 & ~v14)) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v22 = ~v13 + a2;
      bzero(a1, v17);
      *a1 = v22;
    }

    switch(v20)
    {
      case 1:
        *(a1 + v17) = v21;
        break;
      case 2:
        *(a1 + v17) = v21;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *(a1 + v17) = v21;
        break;
      default:
        return;
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Grid<ForEach<[ArraySlice<TPNumberPadCharacter>], ArraySlice<TPNumberPadCharacter>, GridRow<ForEach<ArraySlice<TPNumberPadCharacter>, TPNumberPadCharacter, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>>>, _ScaleEffect>, _OverlayModifier<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<CalculatedSizePreferenceKey>>>>>, _FrameLayout>, _PreferenceActionModifier<CalculatedSizePreferenceKey>>>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Grid<ForEach<[ArraySlice<TPNumberPadCharacter>], ArraySlice<TPNumberPadCharacter>, GridRow<ForEach<ArraySlice<TPNumberPadCharacter>, TPNumberPadCharacter, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>>>, _ScaleEffect>, _OverlayModifier<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<CalculatedSizePreferenceKey>>>>>, _FrameLayout>, _PreferenceActionModifier<CalculatedSizePreferenceKey>>>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Grid<ForEach<[ArraySlice<TPNumberPadCharacter>], ArraySlice<TPNumberPadCharacter>, GridRow<ForEach<ArraySlice<TPNumberPadCharacter>, TPNumberPadCharacter, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>>>, _ScaleEffect>, _OverlayModifier<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<CalculatedSizePreferenceKey>>>>>, _FrameLayout>, _PreferenceActionModifier<CalculatedSizePreferenceKey>>>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyACyACyACyACyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAnA0G3RowVyAIyAnmA4ViewPAAE11buttonStyleyQrqd__AA06ButtonR0Rd__lFQOyACyAsAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0S0VyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0W18AttachmentModifierVG_15ConversationKit06KeypadsR0VQo_GGGGAA12_ScaleEffectVGAA16_OverlayModifierVyAEyACyAA5ColorVAA26_PreferenceWritingModifierVyA10_27CalculatedSizePreferenceKey33_6EF1B68AECCFB236B5DBC4796FF5B98CLLVGGGGGA3_GAA25_PreferenceActionModifierVyA29_So6CGSizeVSgSQHPA39_SQ12CoreGraphicsyHC_HCg0_GGGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMd, &_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyACyACyACyACyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAnA0G3RowVyAIyAnmA4ViewPAAE11buttonStyleyQrqd__AA06ButtonR0Rd__lFQOyACyAsAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0S0VyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0W18AttachmentModifierVG_15ConversationKit06KeypadsR0VQo_GGGGAA12_ScaleEffectVGAA16_OverlayModifierVyAEyACyAA5ColorVAA26_PreferenceWritingModifierVyA10_27CalculatedSizePreferenceKey33_6EF1B68AECCFB236B5DBC4796FF5B98CLLVGGGGGA3_GAA25_PreferenceActionModifierVyA29_So6CGSizeVSgSQHPA39_SQ12CoreGraphicsyHC_HCg0_GGGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Grid<ForEach<[ArraySlice<TPNumberPadCharacter>], ArraySlice<TPNumberPadCharacter>, GridRow<ForEach<ArraySlice<TPNumberPadCharacter>, TPNumberPadCharacter, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>>>, _ScaleEffect>, _OverlayModifier<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<CalculatedSizePreferenceKey>>>>>, _FrameLayout>, _PreferenceActionModifier<CalculatedSizePreferenceKey>>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAEyAEyAEyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAnA0G3RowVyAIyAnmA4ViewPAAE11buttonStyleyQrqd__AA06ButtonR0Rd__lFQOyAEyAsAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0S0VyAEyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0W18AttachmentModifierVG_15ConversationKit06KeypadsR0VQo_GGGGAA12_ScaleEffectVGAA16_OverlayModifierVyACyAEyAA5ColorVAA26_PreferenceWritingModifierVyA10_27CalculatedSizePreferenceKey33_6EF1B68AECCFB236B5DBC4796FF5B98CLLVGGGGGA3_GAA25_PreferenceActionModifierVyA29_So6CGSizeVSgSQHPA39_SQ12CoreGraphicsyHC_HCg0_GGGMd, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAEyAEyAEyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAnA0G3RowVyAIyAnmA4ViewPAAE11buttonStyleyQrqd__AA06ButtonR0Rd__lFQOyAEyAsAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0S0VyAEyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0W18AttachmentModifierVG_15ConversationKit06KeypadsR0VQo_GGGGAA12_ScaleEffectVGAA16_OverlayModifierVyACyAEyAA5ColorVAA26_PreferenceWritingModifierVyA10_27CalculatedSizePreferenceKey33_6EF1B68AECCFB236B5DBC4796FF5B98CLLVGGGGGA3_GAA25_PreferenceActionModifierVyA29_So6CGSizeVSgSQHPA39_SQ12CoreGraphicsyHC_HCg0_GGGMR, MEMORY[0x1E697E378]);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<LayoutDirection> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Grid<ForEach<[ArraySlice<TPNumberPadCharacter>], ArraySlice<TPNumberPadCharacter>, GridRow<ForEach<ArraySlice<TPNumberPadCharacter>, TPNumberPadCharacter, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>>>, _ScaleEffect>, _OverlayModifier<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<CalculatedSizePreferenceKey>>>>>, _FrameLayout>, _PreferenceActionModifier<CalculatedSizePreferenceKey>>>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double specialized static CalculatedSizePreferenceKey.reduce(value:nextValue:)(uint64_t a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v4);
  if ((v5 & 1) == 0)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = 0;
  }

  return result;
}

void protocol witness for static PreferenceKey.defaultValue.getter in conformance CalculatedSizePreferenceKey(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<TPNumberPadCharacter> and conformance <A> ArraySlice<A>()
{
  result = lazy protocol witness table cache variable for type ArraySlice<TPNumberPadCharacter> and conformance <A> ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<TPNumberPadCharacter> and conformance <A> ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySo20TPNumberPadCharacterVGMd, &_ss10ArraySliceVySo20TPNumberPadCharacterVGMR);
    lazy protocol witness table accessor for type TPNumberPadCharacter and conformance TPNumberPadCharacter(&lazy protocol witness table cache variable for type TPNumberPadCharacter and conformance TPNumberPadCharacter, type metadata accessor for TPNumberPadCharacter, &protocol conformance descriptor for TPNumberPadCharacter);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArraySlice<TPNumberPadCharacter> and conformance <A> ArraySlice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0I18AttachmentModifierVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Image, _FrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGGMR, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TPNumberPadCharacter and conformance TPNumberPadCharacter(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyACyAA6VStackVyAA05TupleE0Vy15ConversationKit22VideoReactionButtonRowV_APtGGAA30_EnvironmentKeyWritingModifierVyAN0pq6PickerE5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionW0VGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_BackgroundW0VyAA14GeometryReaderVyACyACyACyAA06_ShapeE0VyAN13ThoughtBubbleVAA8MaterialVGAA026_InsettableBackgroundShapeW0VyAA5ColorVA15_GGAA13_ShadowEffectVGAA010_AnimationW0VySbGGGGGAA016_CoordinateSpaceW0VySSGG_Qo_AA0i10AttachmentW0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyACyAA6VStackVyAA05TupleE0Vy15ConversationKit22VideoReactionButtonRowV_APtGGAA30_EnvironmentKeyWritingModifierVyAN0pq6PickerE5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionW0VGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_BackgroundW0VyAA14GeometryReaderVyACyACyACyAA06_ShapeE0VyAN13ThoughtBubbleVAA8MaterialVGAA026_InsettableBackgroundShapeW0VyAA5ColorVA15_GGAA13_ShadowEffectVGAA010_AnimationW0VySbGGGGGAA016_CoordinateSpaceW0VySSGG_Qo_AA0i10AttachmentW0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6VStackVyAA9TupleViewVy15ConversationKit22VideoReactionButtonRowV_AJtGGAA30_EnvironmentKeyWritingModifierVyAH0jk6PickerG5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionQ0VGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_BackgroundQ0VyAA14GeometryReaderVyACyACyACyAA06_ShapeG0VyAH13ThoughtBubbleVAA8MaterialVGAA026_InsettableBackgroundShapeQ0VyAA5ColorVA9_GGAA13_ShadowEffectVGAA010_AnimationQ0VySbGGGGGAA016_CoordinateSpaceQ0VySSGGMd, "V]\b");
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout>, _FrameLayout>, _BackgroundModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<ThoughtBubble, Material>, _InsettableBackgroundShapeModifier<Color, ThoughtBubble>>, _ShadowEffect>, _AnimationModifier<Bool>>>>>, _CoordinateSpaceModifier<String>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyAA6ZStackVyAA05TupleE0VyACy15ConversationKit012AnimatedSaveE0VAA14_OpacityEffectVG_ACyACyACyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonU0Rd__lFQOyAA0W0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGA_GAA010_FlexFrameZ0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlesswU0VQo_AA19_BackgroundModifierVyAA06_ShapeE0VyA10_AA017HierarchicalShapeU0VGGGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA32_EnvironmentKeyTransformModifierVySbGGAA010_FixedSizeZ0VGSgtGGARGAA18_AnimationModifierVyAP0Q5StateOGG_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyAA6ZStackVyAA05TupleE0VyACy15ConversationKit012AnimatedSaveE0VAA14_OpacityEffectVG_ACyACyACyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonU0Rd__lFQOyAA0W0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGA_GAA010_FlexFrameZ0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlesswU0VQo_AA19_BackgroundModifierVyAA06_ShapeE0VyA10_AA017HierarchicalShapeU0VGGGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA32_EnvironmentKeyTransformModifierVySbGGAA010_FixedSizeZ0VGSgtGGARGAA18_AnimationModifierVyAP0Q5StateOGG_Qo_AA0I18AttachmentModifierVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACy15ConversationKit012AnimatedSaveG0VAA14_OpacityEffectVG_ACyACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAWGAA010_FlexFrameT0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlessqO0VQo_AA01_xZ0VyAA01_yG0VyA6_AA012HierarchicalyO0VGGGAA022_EnvironmentKeyWritingZ0VyAA11ColorSchemeOGGAA024_EnvironmentKeyTransformZ0VySbGGAA010_FixedSizeT0VGSgtGGALGAA010_AnimationZ0VyAJ0K5StateOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACy15ConversationKit012AnimatedSaveG0VAA14_OpacityEffectVG_ACyACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAWGAA010_FlexFrameT0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlessqO0VQo_AA01_xZ0VyAA01_yG0VyA6_AA012HierarchicalyO0VGGGAA022_EnvironmentKeyWritingZ0VyAA11ColorSchemeOGGAA024_EnvironmentKeyTransformZ0VySbGGAA010_FixedSizeT0VGSgtGGALGAA010_AnimationZ0VyAJ0K5StateOGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<AnimatedSaveView, _OpacityEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, HierarchicalShapeStyle>>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _EnvironmentKeyTransformModifier<Bool>>, _FixedSizeLayout>?)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA5GroupVyAA012_ConditionalD0VyACyAA6VStackVyAA05TupleE0VyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameS0VG_ACyACyAeAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_AXyAA13TextAlignmentOGGAA010_FixedSizeS0VGtGGAA05_FlexzS0VGAA6HStackVyAQyA3__ACyACyA7_AXySiSgGGA14_GtGGGG_Qo_AA0i10AttachmentW0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA5GroupVyAA012_ConditionalD0VyACyAA6VStackVyAA05TupleE0VyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameS0VG_ACyACyAeAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_AXyAA13TextAlignmentOGGAA010_FixedSizeS0VGtGGAA05_FlexzS0VGAA6HStackVyAQyA3__ACyACyA7_AXySiSgGGA14_GtGGGG_Qo_AA0i10AttachmentW0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6VStackVyAA9TupleViewVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameM0VG_AGyAGyAA0I0PAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_ARyAA0Y9AlignmentOGGAA010_FixedSizeM0VGtGGAA05_FlextM0VGAA6HStackVyAKyAY_AGyAGyA3_ARySiSgGGA10_GtGGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6VStackVyAA9TupleViewVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameM0VG_AGyAGyAA0I0PAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_ARyAA0Y9AlignmentOGGAA010_FixedSizeM0VGtGGAA05_FlextM0VGAA6HStackVyAKyAY_AGyAGyA3_ARySiSgGGA10_GtGGGGMR);
    lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.lineLimit(_:reservesSpace:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>)>>, _FlexFrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>)>>>> and conformance <A> Group<A>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6ZStackVyAA05TupleE0VyAA011StrokeShapeE0VyAA4PathVAA15ForegroundStyleVAA05EmptyE0VG_AeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAOyAA08_TrimmedO0VyAQGAA04TintoR0VAUG_12CoreGraphics7CGFloatVQo_SgACyACyACyACyACyAA01_oE0VyAA9RectangleVA2_GAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA18_AnimationModifierVySbGGA24_y15ConversationKit013ShutterButtonR0V05InnerR0OGGA25_GtGGA15_G_Qo_AA0I18AttachmentModifierVGMd, "8B\b");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA011StrokeShapeG0VyAA4PathVAA15ForegroundStyleVAA05EmptyG0VG_AA0G0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAIyAA08_TrimmedI0VyAKGAA04TintiL0VAOG_12CoreGraphics7CGFloatVQo_SgACyACyACyACyACyAA01_iG0VyAA9RectangleVAZGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedW0VGGAA18_AnimationModifierVySbGGA20_y15ConversationKit013ShutterButtonL0V05InnerL0OGGA21_GtGGA11_GMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA011StrokeShapeG0VyAA4PathVAA15ForegroundStyleVAA05EmptyG0VG_AA0G0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAIyAA08_TrimmedI0VyAKGAA04TintiL0VAOG_12CoreGraphics7CGFloatVQo_SgACyACyACyACyACyAA01_iG0VyAA9RectangleVAZGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedW0VGGAA18_AnimationModifierVySbGGA20_y15ConversationKit013ShutterButtonL0V05InnerL0OGGA21_GtGGA11_GMR);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<Path, ForegroundStyle, EmptyView>, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _AnimationModifier<Bool>>, _AnimationModifier<ShutterButtonStyle.InnerStyle>>, _AnimationModifier<Bool>>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ShutterModel and conformance ShutterModel(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TPNumberPadCharacter and conformance TPNumberPadCharacter(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type KeypadButtonStyle and conformance KeypadButtonStyle()
{
  result = lazy protocol witness table cache variable for type KeypadButtonStyle and conformance KeypadButtonStyle;
  if (!lazy protocol witness table cache variable for type KeypadButtonStyle and conformance KeypadButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeypadButtonStyle and conformance KeypadButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

id partial apply for closure #3 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in ClarityUIKeypadView.body.getter(char a1)
{
  v2 = &selRef_playSoundForDialerCharacter_;
  if ((a1 & 1) == 0)
  {
    v2 = &selRef_stopSoundForDialerCharacter_;
  }

  return [*(v1 + 72) *v2];
}

uint64_t outlined bridged method (pb) of @objc static TPDialerNumberPad.dialerNumberPadFullCharacters()(void *a1)
{
  v1 = [a1 dialerNumberPadFullCharacters];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
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

id PictureInPictureWrapperView._touchInsets.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PictureInPictureWrapperView();
  return objc_msgSendSuper2(&v2, sel__touchInsets);
}

void PictureInPictureWrapperView._touchInsets.setter(double a1, double a2, double a3, double a4)
{
  v9.receiver = v4;
  v9.super_class = type metadata accessor for PictureInPictureWrapperView();
  objc_msgSendSuper2(&v9, sel__setTouchInsets_, a1, a2, a3, a4);
  PictureInPictureWrapperView._touchInsets.didset();
}

void PictureInPictureWrapperView.layoutSubviews()()
{
  v1 = [v0 subviews];
  type metadata accessor for UIView();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Array.count.getter();
  if (v3)
  {
    v4 = v3;
    if (v3 < 1)
    {
      __break(1u);
      return;
    }

    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB22010](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      [v0 bounds];
      [v7 setFrame_];
    }

    while (v4 != v5);
  }
}

id PictureInPictureWrapperView.addSubview(_:)(void *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PictureInPictureWrapperView();
  objc_msgSendSuper2(&v4, sel_addSubview_, a1);
  [v1 bounds];
  return [a1 setFrame_];
}

void PictureInPictureWrapperView._touchInsets.didset()
{
  v1 = [v0 superview];
  if (v1)
  {
    v2 = v1;
    [v0 _touchInsets];
    [v2 _setTouchInsets_];
  }
}

id PictureInPictureWrapperView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PictureInPictureWrapperView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id PictureInPictureWrapperView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PictureInPictureWrapperView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PictureInPictureWrapperView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PictureInPictureWrapperView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void key path getter for PictureInPictureWrapperViewController.touchInsets : <A>PictureInPictureWrapperViewController<A>(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void PictureInPictureWrapperViewController.touchInsets.didset()
{
  v1 = [v0 viewIfLoaded];
  if (v1)
  {
    v2 = v1;
    v3 = &v0[direct field offset for PictureInPictureWrapperViewController.touchInsets];
    swift_beginAccess();
    [v2 _setTouchInsets_];
  }

  v4 = [*&v0[direct field offset for PictureInPictureWrapperViewController.wrappedViewController] viewIfLoaded];
  if (v4)
  {
    v5 = v4;
    v6 = &v0[direct field offset for PictureInPictureWrapperViewController.touchInsets];
    swift_beginAccess();
    [v5 _setTouchInsets_];
  }
}

double PictureInPictureWrapperViewController.touchInsets.getter()
{
  v1 = v0 + direct field offset for PictureInPictureWrapperViewController.touchInsets;
  swift_beginAccess();
  return *v1;
}

void PictureInPictureWrapperViewController.touchInsets.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + direct field offset for PictureInPictureWrapperViewController.touchInsets);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  PictureInPictureWrapperViewController.touchInsets.didset();
}

void (*PictureInPictureWrapperViewController.touchInsets.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PictureInPictureWrapperViewController.touchInsets.modify;
}

void PictureInPictureWrapperViewController.touchInsets.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    PictureInPictureWrapperViewController.touchInsets.didset();
  }
}

id PictureInPictureWrapperViewController.init(wrappedViewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = (v4 + direct field offset for PictureInPictureWrapperViewController.touchInsets);
  v8 = *(MEMORY[0x1E69DDCE0] + 16);
  *v7 = *MEMORY[0x1E69DDCE0];
  v7[1] = v8;
  *(v4 + direct field offset for PictureInPictureWrapperViewController.wrappedViewController) = a1;
  OUTLINED_FUNCTION_2_65(a1, *((v6 & v5) + 0x50), a3, a4);
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

id PictureInPictureWrapperViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PictureInPictureWrapperViewController.init(coder:)()
{
  v1 = (v0 + direct field offset for PictureInPictureWrapperViewController.touchInsets);
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  *v1 = *MEMORY[0x1E69DDCE0];
  v1[1] = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id PictureInPictureWrapperViewController.updatePreferredContentSize()()
{
  [*&v0[direct field offset for PictureInPictureWrapperViewController.wrappedViewController] preferredContentSize];

  return [v0 setPreferredContentSize_];
}

Swift::Void __swiftcall PictureInPictureWrapperViewController.loadView()()
{
  v1 = [objc_allocWithZone(type metadata accessor for PictureInPictureWrapperView()) initWithFrame_];
  [v0 setView_];

  v2 = *&v0[direct field offset for PictureInPictureWrapperViewController.wrappedViewController];
  [v2 willMoveToParentViewController_];
  v3 = OUTLINED_FUNCTION_3_64();
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  [v4 addSubview_];

  [v0 addChildViewController_];
  [v2 didMoveToParentViewController_];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 setAutoresizingMask_];
}

void @objc PictureInPictureWrapperViewController.loadView()(void *a1)
{
  v1 = a1;
  PictureInPictureWrapperViewController.loadView()();
}

Swift::Void __swiftcall PictureInPictureWrapperViewController.viewDidLoad()()
{
  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_2_65(v0, *((*MEMORY[0x1E69E7D40] & *v3) + 0x50), v1, v2);
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  PictureInPictureWrapperViewController.updatePreferredContentSize()();
  v5 = [v3 view];
  if (v5)
  {
    v6 = v5;
    v7 = *((*v4 & *v3) + 0x68);
    v7();
    [v6 _setTouchInsets_];

    v8 = [*(v3 + direct field offset for PictureInPictureWrapperViewController.wrappedViewController) view];
    if (v8)
    {
      v9 = v8;
      v7();
      [v9 _setTouchInsets_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void @objc PictureInPictureWrapperViewController.viewDidLoad()(void *a1)
{
  v1 = a1;
  PictureInPictureWrapperViewController.viewDidLoad()();
}

id PictureInPictureWrapperViewController.preferredContentSizeDidChange(forChildContentContainer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_65(a1, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), a3, a4);
  objc_msgSendSuper2(&v7, sel_preferredContentSizeDidChangeForChildContentContainer_, a1);
  return PictureInPictureWrapperViewController.updatePreferredContentSize()();
}

void @objc PictureInPictureWrapperViewController.preferredContentSizeDidChange(forChildContentContainer:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v7 = a1;
  PictureInPictureWrapperViewController.preferredContentSizeDidChange(forChildContentContainer:)(a3, v7, v5, v6);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall PictureInPictureWrapperViewController.handlePictureInPictureRestored()()
{
  PictureInPictureWrapperViewController.updatePreferredContentSize()();
  v1 = [*(v0 + direct field offset for PictureInPictureWrapperViewController.wrappedViewController) view];
  if (v1)
  {
    v2 = v1;
    [v1 setAutoresizingMask_];
  }

  else
  {
    __break(1u);
  }
}

__C::CGRect __swiftcall PictureInPictureWrapperViewController.frameForRestoreAnimation()()
{
  v0 = OUTLINED_FUNCTION_3_64();
  if (!v0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v0;
  v6 = [v0 window];

  if (!v6 || (v7 = [v6 windowScene], v6, !v7))
  {
    v13 = [objc_opt_self() mainScreen];
    [v13 _referenceBounds];
    OUTLINED_FUNCTION_40_1();
    goto LABEL_8;
  }

  v8 = [v7 screen];
  v9 = [v8 fixedCoordinateSpace];

  v10 = OUTLINED_FUNCTION_3_64();
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  [v10 bounds];
  OUTLINED_FUNCTION_40_1();

  v12 = OUTLINED_FUNCTION_3_64();
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  v14 = OUTLINED_FUNCTION_35();
  [v15 v16];
  OUTLINED_FUNCTION_40_1();

  swift_unknownObjectRelease();
LABEL_8:

  v1 = OUTLINED_FUNCTION_35();
LABEL_12:
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

double @objc PictureInPictureWrapperViewController.frameForRestoreAnimation()(void *a1)
{
  v1 = a1;
  *&v2 = PictureInPictureWrapperViewController.frameForRestoreAnimation()();

  return v2;
}

CGSize __swiftcall PictureInPictureWrapperViewController.preferredPiPContentAspectRatio()()
{
  [*(v0 + direct field offset for PictureInPictureWrapperViewController.wrappedViewController) preferredPiPContentAspectRatio];
  result.height = v2;
  result.width = v1;
  return result;
}

double @objc PictureInPictureWrapperViewController.preferredPiPContentAspectRatio()(void *a1)
{
  v1 = a1;
  *&v2 = *&PictureInPictureWrapperViewController.preferredPiPContentAspectRatio()();

  return v2;
}

id @objc PictureInPictureWrapperViewController.viewControllerForPiP()@<X0>(UIViewController_optional *a1@<X8>)
{
  PictureInPictureWrapperViewController.viewControllerForPiP()(a1);

  return v1;
}

id PictureInPictureWrapperViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

void @objc PictureInPictureWrapperViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  PictureInPictureWrapperViewController.init(nibName:bundle:)();
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance PictureInPictureWrapper<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB778](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance PictureInPictureWrapper<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB740](a1, a2, a3, WitnessTable);
}

void protocol witness for View.body.getter in conformance PictureInPictureWrapper<A>(uint64_t a1)
{
  swift_getWitnessTable();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t type metadata instantiation function for PictureInPictureWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t type metadata accessor for UIView()
{
  result = lazy cache variable for type metadata for UIView;
  if (!lazy cache variable for type metadata for UIView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIView);
  }

  return result;
}

uint64_t specialized SyncedScreeningAlphaGradientView.AnimatedState.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - v3;
  v5 = direct field offset for SyncedScreeningAlphaGradientView.AnimatedState._minOpacity;
  v11 = 0;
  Published.init(initialValue:)();
  v6 = *(v2 + 32);
  v6(v0 + v5, v4, v1);
  v7 = direct field offset for SyncedScreeningAlphaGradientView.AnimatedState._maxOpacity;
  v11 = 0;
  Published.init(initialValue:)();
  v6(v0 + v7, v4, v1);
  v8 = direct field offset for SyncedScreeningAlphaGradientView.AnimatedState._unitStart;
  v11 = 0;
  Published.init(initialValue:)();
  v6(v0 + v8, v4, v1);
  return v0;
}

uint64_t specialized implicit closure #2 in implicit closure #1 in variable initialization expression of SyncedScreeningAlphaGradientView._viewState()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32SyncedScreeningAlphaGradientViewV13AnimatedState33_BB03C5CC00615F544789F4E076AB947ELLCySo6UIViewC_GMd, &_s15ConversationKit32SyncedScreeningAlphaGradientViewV13AnimatedState33_BB03C5CC00615F544789F4E076AB947ELLCySo6UIViewC_GMR);
  swift_allocObject();
  return specialized SyncedScreeningAlphaGradientView.AnimatedState.init()();
}

uint64_t one-time initialization function for positionalData()
{
  type metadata accessor for PositionalData(0);
  swift_allocObject();
  result = PositionalData.init()();
  static TranscriptionViewComposer.positionalData = result;
  return result;
}

uint64_t *TranscriptionViewComposer.positionalData.unsafeMutableAddressor()
{
  if (one-time initialization token for positionalData != -1)
  {
    OUTLINED_FUNCTION_0_70(&one-time initialization token for positionalData);
  }

  return &static TranscriptionViewComposer.positionalData;
}

uint64_t static TranscriptionViewComposer.positionalData.getter()
{
  if (one-time initialization token for positionalData != -1)
  {
    OUTLINED_FUNCTION_0_70(&one-time initialization token for positionalData);
  }
}

void TranscriptionViewComposer.compose(with:createTextField:liveReply:textFieldPadding:)(void *a1, char a2, char a3, double a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC15ConversationKit25TranscriptionViewComposer_featureFlags);
  if ((([v6 receptionistEnabled] & 1) != 0 || objc_msgSend(v6, sel_LVMEverywhere)) && a1)
  {
    v8 = one-time initialization token for shared;
    v9 = a1;
    if (v8 != -1)
    {
      swift_once();
    }

    ReceiptionistCaptionsProviderBuilder.build(with:)(v9);
    type metadata accessor for CallScreeningTranscriptsService();
    v10 = [v9 callUUID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRetain();
    v11 = [v9 lastReceptionistMessage];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    CallScreeningTranscriptsService.__allocating_init(_:captionsProvider:initialMessage:liveReply:)();
    objc_allocWithZone(type metadata accessor for CallScreeningViewController());

    v12 = CallScreeningViewController.init(service:createTextField:showEmptyState:liveReply:textFieldPadding:)();
    v13 = [objc_opt_self() conversationKit];
    v17._object = 0xE000000000000000;
    OUTLINED_FUNCTION_5_5();
    v14._object = 0x80000001BC4F9C10;
    v14._countAndFlagsBits = 0xD000000000000011;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v16, v13, v15, v17);

    LockStateContentViewController.inLockStateViewController(subtitle:)();

    swift_unknownObjectRelease();
  }

  else
  {
    TranscriptionViewComposer.compose()(v7);
  }
}

void __swiftcall TranscriptionViewComposer.compose()(UIViewController *__return_ptr retstr)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  OUTLINED_FUNCTION_2_7();
  v67 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v60 - v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit28AudioCallMiddleContainerViewVyAA013TranscriptionG0VGMd, &_s15ConversationKit28AudioCallMiddleContainerViewVyAA013TranscriptionG0VGMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v60 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - v10;
  v12 = type metadata accessor for TranscriptionView(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v16 = objc_opt_self();

  v17 = [v16 sharedInstance];
  v18 = [v17 screeningCall];

  if (v18)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v19 = *(*static CallScreeningRTTHelper.shared + 184);
    v20 = v18;
    if (v19(v18))
    {
      v21 = [objc_opt_self() viewControllerForCall_];

      if (v21)
      {

        return;
      }
    }

    else
    {
    }
  }

  v61 = v1;
  v62 = v11;
  v22 = one-time initialization token for positionalData;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_0_70(&one-time initialization token for positionalData);
  }

  v23 = static TranscriptionViewComposer.positionalData;
  v24 = [objc_opt_self() conversationKit];
  v68._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  v25._object = 0x80000001BC4FA3D0;
  v25._countAndFlagsBits = 0xD000000000000025;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v68._countAndFlagsBits = 0;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v27, v24, v26, v68);

  *v15 = 0x10000;
  v29 = v12[6];
  *&v15[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TranscriptionViewModel(0);
  _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type TranscriptionViewModel and conformance TranscriptionViewModel, type metadata accessor for TranscriptionViewModel, &protocol conformance descriptor for TranscriptionViewModel);

  *(v15 + 1) = ObservedObject.init(wrappedValue:)();
  *(v15 + 2) = v30;
  *&v15[v12[7]] = v23;
  *&v15[v12[8]] = v28;
  v31 = objc_allocWithZone(MEMORY[0x1E69D8BE8]);

  v32 = [v31 init];
  [v32 LVMEverywhere];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
  v34 = OUTLINED_FUNCTION_5_42(v33);
  isa = UIFont.withTraits(_:)(0x10000u).super.isa;

  [(objc_class *)isa pointSize];
  v37 = v36;

  v38 = OBJC_IVAR____TtC15ConversationKit14PositionalData_autoScrollTolerance;
  swift_beginAccess();
  *(v23 + v38) = v37 + v37;
  PositionalData.updateBottomVisibility()();

  v39 = v62;
  outlined init with copy of TranscriptionView(v15, v62);
  v40 = (v39 + *(v63 + 36));

  v41 = v39;
  *v40 = ObservedObject.init(wrappedValue:)();
  v40[1] = v42;
  v43 = v65;
  outlined init with copy of AudioCallMiddleContainerView<TranscriptionView>(v39, v65);
  v44 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit37MaskSizingLockScreenHostingControllerCyAA28AudioCallMiddleContainerViewVyAA013TranscriptionM0VGGMd, &_s15ConversationKit37MaskSizingLockScreenHostingControllerCyAA28AudioCallMiddleContainerViewVyAA013TranscriptionM0VGGMR));
  outlined init with copy of AudioCallMiddleContainerView<TranscriptionView>(v43, v64);
  v45 = LockScreenHostingController.init(rootView:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s15ConversationKit28AudioCallMiddleContainerViewVyAA013TranscriptionG0VGMd, &_s15ConversationKit28AudioCallMiddleContainerViewVyAA013TranscriptionG0VGMR);
  v46 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  [v46 LVMEverywhere];

  v48 = OUTLINED_FUNCTION_5_42(v47);
  v49 = UIFont.withTraits(_:)(0x10000u).super.isa;

  [(objc_class *)v49 pointSize];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v50 = v66;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR, MEMORY[0x1E695C068]);
  v51 = v61;
  Publisher.eraseToAnyPublisher()();
  (*(v67 + 8))(v50, v51);
  v52 = objc_allocWithZone(type metadata accessor for BlurryMaskView());
  v53 = BlurryMaskView.init(textSize:isBottomVisiblePublisher:topPositions:)();
  v54 = v45;
  v55 = [v54 view];
  if (v55)
  {
    v56 = v55;
    [v55 setMaskView_];

    v57 = [v54 view];
    if (v57)
    {
      v58 = v57;
      v59 = [objc_opt_self() clearColor];
      [v58 setBackgroundColor_];

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v41, &_s15ConversationKit28AudioCallMiddleContainerViewVyAA013TranscriptionG0VGMd, &_s15ConversationKit28AudioCallMiddleContainerViewVyAA013TranscriptionG0VGMR);
      outlined destroy of TranscriptionView(v15);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void __swiftcall TranscriptionViewComposer.composeBackground(with:)(UIViewController *__return_ptr retstr, UIView *with)
{
  if (one-time initialization token for positionalData != -1)
  {
    OUTLINED_FUNCTION_0_70(&one-time initialization token for positionalData);
  }

  type metadata accessor for PositionalData(0);
  _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type PositionalData and conformance PositionalData, type metadata accessor for PositionalData, &protocol conformance descriptor for PositionalData);

  v9[0] = with;
  *&v9[1] = xmmword_1BC4BD470;
  *&v9[3] = xmmword_1BC4BD480;
  *&v9[5] = xmmword_1BC4BD490;
  v9[7] = ObservedObject.init(wrappedValue:)();
  v9[8] = v3;
  v9[9] = specialized implicit closure #2 in implicit closure #1 in variable initialization expression of SyncedScreeningAlphaGradientView._viewState;
  v9[10] = 0;
  LOBYTE(v9[11]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32SyncedScreeningAlphaGradientViewVySo6UIViewCGMd, &_s15ConversationKit32SyncedScreeningAlphaGradientViewVySo6UIViewCGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type SyncedScreeningAlphaGradientView<UIView> and conformance SyncedScreeningAlphaGradientView<A>, &_s15ConversationKit32SyncedScreeningAlphaGradientViewVySo6UIViewCGMd, &_s15ConversationKit32SyncedScreeningAlphaGradientViewVySo6UIViewCGMR, &protocol conformance descriptor for SyncedScreeningAlphaGradientView<A>);
  v4 = View.inLockScreenHostingController()();
  memcpy(__dst, v9, 0x59uLL);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit32SyncedScreeningAlphaGradientViewVySo6UIViewCGMd, &_s15ConversationKit32SyncedScreeningAlphaGradientViewVySo6UIViewCGMR);
  v5 = v4;
  v6 = [v5 view];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

id TranscriptionViewComposer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TranscriptionViewComposer.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC15ConversationKit25TranscriptionViewComposer_featureFlags;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id TranscriptionViewComposer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CNKTranscriptionViewComposerFactory.makeViewComposer()()
{
  v0 = objc_allocWithZone(type metadata accessor for TranscriptionViewComposer());

  return [v0 init];
}

CNKTranscriptionViewComposerFactory __swiftcall CNKTranscriptionViewComposerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

Swift::Void __swiftcall MaskSizingLockScreenHostingController.viewDidLayoutSubviews()()
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_7_42(((*MEMORY[0x1E69E7D40] & v1) + class metadata base offset for MaskSizingLockScreenHostingController), v2);
  objc_msgSendSuper2(&v19, sel_viewDidLayoutSubviews);
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v3 maskView];

  if (!v5)
  {
    return;
  }

  v6 = [v0 view];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 maskView];

  if (!v8)
  {
    return;
  }

  v9 = [v0 view];
  if (!v9)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame_];
}

void @objc MaskSizingLockScreenHostingController.viewDidLayoutSubviews()(void *a1)
{
  v1 = a1;
  MaskSizingLockScreenHostingController.viewDidLayoutSubviews()();
}

uint64_t MaskSizingLockScreenHostingController.init(rootView:)(uint64_t a1)
{
  OUTLINED_FUNCTION_13_2();
  v3 = *((*MEMORY[0x1E69E7D40] & v2) + class metadata base offset for MaskSizingLockScreenHostingController);
  OUTLINED_FUNCTION_2_7();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v5 + 16))(&v11 - v8, a1, v3, v7);
  v9 = LockScreenHostingController.init(rootView:)();
  (*(v5 + 8))(a1, v3);
  return v9;
}

void *MaskSizingLockScreenHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_2();
  v4 = *((*MEMORY[0x1E69E7D40] & v3) + class metadata base offset for MaskSizingLockScreenHostingController);
  OUTLINED_FUNCTION_2_7();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(v6 + 16))(&v14 - v9, v8);
  v10 = LockScreenHostingController.init(coder:rootView:)();
  v11 = *(v6 + 8);
  v12 = v10;
  v11(a2, v4);
  if (v10)
  {
  }

  return v10;
}

id MaskSizingLockScreenHostingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MaskSizingLockScreenHostingController.init(coder:)(void *a1)
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_7_42(((*MEMORY[0x1E69E7D40] & v2) + class metadata base offset for MaskSizingLockScreenHostingController), v3);
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id MaskSizingLockScreenHostingController.__deallocating_deinit()
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_7_42(((*MEMORY[0x1E69E7D40] & v0) + class metadata base offset for MaskSizingLockScreenHostingController), v1);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t outlined init with copy of TranscriptionView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of AudioCallMiddleContainerView<TranscriptionView>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit28AudioCallMiddleContainerViewVyAA013TranscriptionG0VGMd, &_s15ConversationKit28AudioCallMiddleContainerViewVyAA013TranscriptionG0VGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TranscriptionView(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptionView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CNKCommand.isAvailableWhileLocked.getter(unint64_t a1)
{
  if (a1 >= 0x16)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, &static Log.default);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BBC58000, v3, v4, "Unknown enum case", v5, 2u);
      MEMORY[0x1BFB23DF0](v5, -1, -1);
    }

    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = 0x3F6EFCu >> a1;
  }

  return v1 & 1;
}

void specialized Sequence.first(where:)(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSOrderedSet.makeIterator()();
  lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator();
  v6 = &lazy cache variable for type metadata for TUSenderIdentity;
  v25 = v3;
  v26 = v5;
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v31)
    {
      (*(v23 + 8))(v5, v3);
      v22 = v24;
      *v24 = 0u;
      v22[1] = 0u;
      goto LABEL_18;
    }

    outlined init with take of Any(&v30, v29);
    outlined init with copy of Any(v29, v28);
    type metadata accessor for NSObject(0, v6, 0x1E69D8CD8);
    if (!swift_dynamicCast())
    {
      goto LABEL_13;
    }

    v7 = v32;
    v8 = [v32 handle];
    if (!v8)
    {

      goto LABEL_13;
    }

    v9 = v8;
    if ([a1 isEqualToHandle_])
    {
      goto LABEL_16;
    }

    v27 = v7;
    v10 = v6;
    v11 = a1;
    v12 = [a1 value];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = [v9 value];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v13 == v17 && v15 == v19)
    {
      break;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a1 = v11;
    v3 = v25;
    v5 = v26;
    v6 = v10;
    if (v21)
    {
      goto LABEL_17;
    }

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  a1 = v11;
  v3 = v25;
  v5 = v26;
  v7 = v27;
LABEL_16:

LABEL_17:
  (*(v23 + 8))(v5, v3);
  outlined init with take of Any(v29, v24);
LABEL_18:
}

void PeoplePickerViewController.updatePillView(callerID:)(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDPillView);
    v4 = a1;
    [v3 setHidden_];
    v20 = v4;
    v5 = PeoplePickerViewController.matchingSenderIdentity(for:)(a1);

    if (v5)
    {
      v6 = [v5 localizedShortName];
      v7 = v6;
      if (!v6)
      {
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = MEMORY[0x1BFB209B0](v8);
      }

      OUTLINED_FUNCTION_1_70(v6, sel_setBadgeText_);

      [v3 setBadgeSymbolName_];
      v9 = [v5 localizedName];
      v10 = v9;
      if (!v9)
      {
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = MEMORY[0x1BFB209B0](v11);
      }

      OUTLINED_FUNCTION_1_70(v9, sel_setTitle_);
    }

    else
    {
      v13 = MEMORY[0x1BFB209B0](0, 0xE000000000000000);
      [v3 setBadgeText_];

      outlined bridged method (mbnn) of @objc TPPillView.badgeSymbolName.setter(0x65706F6C65766E65, 0xED00006C6C69662ELL, v3);
      v14 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))();
      PeoplePickerViewController.emailPillTitle(for:allCallerIDs:)(v20, v14);
      v16 = v15;
      v18 = v17;

      v10 = MEMORY[0x1BFB209B0](v16, v18);

      OUTLINED_FUNCTION_1_70(v19, sel_setTitle_);
    }
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDPillView);

    [v12 setHidden_];
  }
}

Swift::Void __swiftcall PeoplePickerViewController.refreshCallerIDPicker()()
{
  if (PeoplePickerViewController.hasMultipleSenderIdentities()())
  {
    v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_accountFetcher) validCallerIDs];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = PeoplePickerViewController.sortCallerIDs(_:)(v2);

    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C8))(v3);

    PeoplePickerViewController.pickDefaultSelectedCallerID()();
  }
}

void *PeoplePickerViewController.matchingSenderIdentity(for:)(void *result)
{
  if (result)
  {
    v2 = result;
    if ([v2 type] == 2)
    {
      v3 = [*(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callProviderManager) faceTimeProvider];
      v4 = [v3 prioritizedSenderIdentities];
      v5 = v2;
      specialized Sequence.first(where:)(v5, &v7);

      if (v8)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUSenderIdentity, 0x1E69D8CD8);
        if (swift_dynamicCast())
        {
          return v6;
        }

        else
        {
          return 0;
        }
      }

      outlined destroy of Any?(&v7);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

BOOL PeoplePickerViewController.hasMultipleSenderIdentities()()
{
  if (_TUIsInternalInstall())
  {
    v1 = [objc_opt_self() tu_defaults];
    v2 = MEMORY[0x1BFB209B0](0xD00000000000001FLL, 0x80000001BC4FA600);
    v3 = [v1 BOOLForKey_];

    if (v3)
    {
      return 1;
    }
  }

  v5 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callProviderManager) faceTimeProvider];
  v6 = [v5 prioritizedSenderIdentities];
  v7 = [v6 count];

  return v7 > 1;
}

uint64_t PeoplePickerViewController.sortCallerIDs(_:)(unint64_t a1)
{
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (v8 < 1)
  {
    return v9;
  }

  v22 = v3;
  v27 = MEMORY[0x1E69E7CC0];
  v10 = [*(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callProviderManager) faceTimeProvider];
  v11 = [v10 prioritizedSenderIdentities];

  NSOrderedSet.makeIterator()();
  while (1)
  {
    NSFastEnumerationIterator.next()();
    if (!v26)
    {
      break;
    }

    outlined init with take of Any(&v25, &v24);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUSenderIdentity, 0x1E69D8CD8);
    if (swift_dynamicCast())
    {
      v12 = v23;
      v13 = [v23 handle];
      if (v13)
      {
        v14 = v13;
        MEMORY[0x1BFB20CC0]();
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v21 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v9 = v27;
      }

      else
      {
      }
    }
  }

  (*(v4 + 8))(v7, v22);
  result = specialized Array.count.getter();
  if (!result)
  {
    return v9;
  }

  v16 = result;
  if (result >= 1)
  {
    for (i = 0; i != v16; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1BFB22010](i, a1);
      }

      else
      {
        v18 = *(a1 + 8 * i + 32);
      }

      v19 = v18;
      if ([v18 type] == 2)
      {
      }

      else
      {
        v20 = v19;
        MEMORY[0x1BFB20CC0]();
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v9 = v27;
      }
    }

    return v9;
  }

  __break(1u);
  return result;
}

void PeoplePickerViewController.pickDefaultSelectedCallerID()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x2D8);
  v3 = v2();
  if (v3)
  {
LABEL_2:
  }

  else
  {
    v60 = v2;
    v4 = *((*v1 & *v0) + 0x2C0);
    v5 = v4();
    v6 = specialized Array.count.getter();

    if (v6 >= 2)
    {
      v7 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_accountFetcher) defaultSelectedCallerID];
      v59 = v0;
      v8 = v4();
      v9 = specialized Array.count.getter();
      v10 = v9;
      if (v7)
      {
        v58 = v4;
        v11 = 0;
        v61 = v8 & 0xFFFFFFFFFFFFFF8;
        v63 = v8 & 0xC000000000000001;
        while (1)
        {
          if (v10 == v11)
          {
            v5 = v7;

            v13 = 0;
            goto LABEL_29;
          }

          if (v63)
          {
            v12 = MEMORY[0x1BFB22010](v11, v8);
          }

          else
          {
            if (v11 >= *(v61 + 16))
            {
              goto LABEL_53;
            }

            v12 = *(v8 + 8 * v11 + 32);
          }

          v13 = v12;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
          if (static NSObject.== infix(_:_:)())
          {
            v5 = v7;
            goto LABEL_28;
          }

          v6 = v8;
          v14 = v10;
          v15 = [v13 value];
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;

          v5 = v7;
          v19 = [v7 value];
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          if (v16 == v20 && v18 == v22)
          {
            break;
          }

          v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v1)
          {
            goto LABEL_28;
          }

          ++v11;
          v10 = v14;
          v8 = v6;
          v7 = v5;
        }

LABEL_28:

LABEL_29:
        v25 = *((*MEMORY[0x1E69E7D40] & *v59) + 0x2E0);
        v26 = v25(v13);
        v27 = (v60)(v26);
        if (v27)
        {
          v64 = v27;

          v3 = v64;
          goto LABEL_2;
        }

        if (one-time initialization token for peoplePicker != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        __swift_project_value_buffer(v28, static Logger.peoplePicker);
        v29 = v5;
        v30 = v59;
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v66 = v62;
          *v33 = 136315394;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
          v34 = v29;
          v35 = String.init<A>(reflecting:)();
          v65 = v29;
          v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v66);

          *(v33 + 4) = v37;
          *(v33 + 12) = 2080;
          v39 = v58;
          (v58)(v38);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8TUHandleCGMd, &_sSaySo8TUHandleCGMR);
          v40 = String.init<A>(reflecting:)();
          v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v66);

          *(v33 + 14) = v42;
          v29 = v65;
          _os_log_impl(&dword_1BBC58000, v31, v32, "Couldnt find a matching callerID with %s, out of callerIDs: %s", v33, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB23DF0](v62, -1, -1);
          MEMORY[0x1BFB23DF0](v33, -1, -1);
        }

        else
        {

          v39 = v58;
        }

        v54 = v39();
        if (specialized Array.count.getter())
        {
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v54 & 0xC000000000000001) == 0, v54);
          if ((v54 & 0xC000000000000001) != 0)
          {
            v55 = MEMORY[0x1BFB22010](0, v54);
          }

          else
          {
            v55 = *(v54 + 32);
          }

          v56 = v55;
        }

        else
        {

          v56 = 0;
        }

        v25(v56);
      }

      else
      {
        if (v9)
        {
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v8 & 0xC000000000000001) == 0, v8);
          if ((v8 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x1BFB22010](0, v8);
          }

          else
          {
            v24 = *(v8 + 32);
          }

          v6 = v24;
          v5 = v0;
        }

        else
        {

          v6 = 0;
          v5 = v0;
        }

        if (one-time initialization token for peoplePicker != -1)
        {
LABEL_54:
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        __swift_project_value_buffer(v43, static Logger.peoplePicker);
        v44 = v6;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = v1;
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v66 = v49;
          *v48 = 136315138;
          if (v6)
          {
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
            v50 = v44;
            v51 = String.init<A>(reflecting:)();
            v53 = v52;
          }

          else
          {
            v53 = 0xE300000000000000;
            v51 = 7104878;
          }

          v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v66);

          *(v48 + 4) = v57;
          _os_log_impl(&dword_1BBC58000, v45, v46, "Couldnt find a default selected callerID, just setting it to %s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v49);
          MEMORY[0x1BFB23DF0](v49, -1, -1);
          MEMORY[0x1BFB23DF0](v48, -1, -1);

          v1 = v47;
          v5 = v59;
        }

        else
        {
        }

        (*((*v1 & *v5) + 0x2E0))(v6);
      }
    }
  }
}

void PeoplePickerViewController.emailPillTitle(for:allCallerIDs:)(void *a1, uint64_t a2)
{
  v4 = TUHandle.isGmail()(0x632E6C69616D6740);
  v5 = MEMORY[0x1E69E7CC0];
  v107 = a1;
  if (v4)
  {
    v108 = MEMORY[0x1E69E7CC0];
    v6 = specialized Array.count.getter();
    for (i = 0; v6 != i; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB22010](i, a2);
      }

      else
      {
        if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_134;
        }

        v8 = *(a2 + 8 * i + 32);
      }

      v9 = v8;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_134:
        __break(1u);
        goto LABEL_135;
      }

      if (TUHandle.isGmail()(0x632E6C69616D6740))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }
    }

    v14 = specialized Array.count.getter();
    v15 = 0;
    while (1)
    {
      if (v14 == v15)
      {

        goto LABEL_71;
      }

      if ((v108 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1BFB22010](v15, v108);
      }

      else
      {
        if (v15 >= *(v108 + 16))
        {
          goto LABEL_137;
        }

        v16 = *(v108 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 value];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = [a1 value];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      if (v19 == v23 && v21 == v25)
      {

        if (v15)
        {
          goto LABEL_67;
        }

        goto LABEL_71;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        break;
      }

      v28 = __OFADD__(v15++, 1);
      a1 = v107;
      if (v28)
      {
        goto LABEL_138;
      }
    }

    while (1)
    {

      if (!v15)
      {
        break;
      }

LABEL_67:
      v48 = [objc_opt_self() conversationKit];
      v109._object = 0xE000000000000000;
      v49.value._countAndFlagsBits = 0x61737265766E6F43;
      v49.value._object = 0xEF74694B6E6F6974;
      v50._countAndFlagsBits = 0xD00000000000001DLL;
      v50._object = 0x80000001BC4FA6E0;
      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      v109._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v49, v48, v51, v109);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1BC4BA940;
      v53 = v15 + 1;
      if (!__OFADD__(v15, 1))
      {
        goto LABEL_128;
      }

      __break(1u);
    }

LABEL_71:
    v54 = "CALLER_ID_PICKER_GMAIL_ALT_%d";
    v55 = [objc_opt_self() conversationKit];
    goto LABEL_72;
  }

  if (TUHandle.isICloud()())
  {
    v10 = specialized Array.count.getter();
    for (j = 0; v10 != j; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1BFB22010](j, a2);
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_136;
        }

        v12 = *(a2 + 8 * j + 32);
      }

      v13 = v12;
      if (__OFADD__(j, 1))
      {
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      if (TUHandle.isICloud()())
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }
    }

    v34 = specialized Array.count.getter();
    v35 = 0;
    while (1)
    {
      if (v34 == v35)
      {

        goto LABEL_118;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1BFB22010](v35, v5);
      }

      else
      {
        if (v35 >= *(v5 + 16))
        {
          goto LABEL_143;
        }

        v36 = *(v5 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = [v36 value];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = [a1 value];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      if (v39 == v43 && v41 == v45)
      {

        if (v35)
        {
          goto LABEL_114;
        }

        goto LABEL_118;
      }

      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v47)
      {
        break;
      }

      v28 = __OFADD__(v35++, 1);
      a1 = v107;
      if (v28)
      {
        goto LABEL_144;
      }
    }

    while (1)
    {

      if (!v35)
      {
        break;
      }

LABEL_114:
      v91 = [objc_opt_self() conversationKit];
      v110._object = 0xE000000000000000;
      v92.value._countAndFlagsBits = 0x61737265766E6F43;
      v92.value._object = 0xEF74694B6E6F6974;
      v93._countAndFlagsBits = 0xD00000000000001ELL;
      v93._object = 0x80000001BC4FA6A0;
      v94._countAndFlagsBits = 0;
      v94._object = 0xE000000000000000;
      v110._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v93, v92, v91, v94, v110);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1BC4BA940;
      v53 = v35 + 1;
      if (!__OFADD__(v35, 1))
      {
        goto LABEL_128;
      }

      __break(1u);
    }

LABEL_118:
    v56 = [objc_opt_self() conversationKit];
    v106 = 0xE000000000000000;
    v57 = 0x61737265766E6F43;
    v58 = 0xEF74694B6E6F6974;
    v60 = 0xD000000000000017;
    v59 = 0x80000001BC4FA6C0;
    goto LABEL_119;
  }

  v29 = a2 & 0xC000000000000001;
  if ((TUHandle.isGmail()(0x632E6F6F68617940) & 1) == 0)
  {
    v61 = specialized Array.count.getter();
    for (k = 0; v61 != k; ++k)
    {
      if (v29)
      {
        v63 = MEMORY[0x1BFB22010](k, a2);
      }

      else
      {
        if (k >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_142;
        }

        v63 = *(a2 + 8 * k + 32);
      }

      v64 = v63;
      if (__OFADD__(k, 1))
      {
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      if (TUHandle.isGeneric()())
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }
    }

    v79 = specialized Array.count.getter();
    v66 = 0;
    while (1)
    {
      if (v79 == v66)
      {

        goto LABEL_132;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v68 = MEMORY[0x1BFB22010](v66, v5);
        v80 = v107;
      }

      else
      {
        v80 = v107;
        if (v66 >= *(v5 + 16))
        {
          goto LABEL_146;
        }

        v68 = *(v5 + 8 * v66 + 32);
      }

      v81 = [v68 value];
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      v85 = [v80 value];
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;

      if (v82 == v86 && v84 == v88)
      {
        goto LABEL_126;
      }

      v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v90)
      {
        break;
      }

      v28 = __OFADD__(v66++, 1);
      if (v28)
      {
        goto LABEL_148;
      }
    }

    if (v66)
    {
      goto LABEL_127;
    }

LABEL_132:
    v54 = "CALLER_ID_PICKER_EMAIL_ALT_%d";
    v55 = [objc_opt_self() conversationKit];
LABEL_72:
    v56 = v55;
    v106 = 0xE000000000000000;
    v57 = 0x61737265766E6F43;
    v58 = 0xEF74694B6E6F6974;
    v59 = v54 | 0x8000000000000000;
    v60 = 0xD000000000000016;
LABEL_119:
    v95._countAndFlagsBits = 0;
    v95._object = 0xE000000000000000;
    v96 = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v60, *&v57, v56, v95, *(&v106 - 1));

    return;
  }

  v30 = specialized Array.count.getter();
  for (m = 0; v30 != m; ++m)
  {
    if (v29)
    {
      v32 = MEMORY[0x1BFB22010](m, a2);
    }

    else
    {
      if (m >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_141;
      }

      v32 = *(a2 + 8 * m + 32);
    }

    v33 = v32;
    if (__OFADD__(m, 1))
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    if (TUHandle.isGmail()(0x632E6F6F68617940))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  v65 = specialized Array.count.getter();
  v66 = 0;
  while (1)
  {
    if (v65 == v66)
    {

      goto LABEL_130;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v68 = MEMORY[0x1BFB22010](v66, v5);
      v67 = v107;
    }

    else
    {
      v67 = v107;
      if (v66 >= *(v5 + 16))
      {
        goto LABEL_145;
      }

      v68 = *(v5 + 8 * v66 + 32);
    }

    v69 = [v68 value];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    v73 = [v67 value];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    if (v70 == v74 && v72 == v76)
    {

      if (v66)
      {
        goto LABEL_123;
      }

LABEL_130:
      v54 = "CALLER_ID_PICKER_YAHOO_ALT_%d";
      v55 = [objc_opt_self() conversationKit];
      goto LABEL_72;
    }

    v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v78)
    {
      break;
    }

    v28 = __OFADD__(v66++, 1);
    if (v28)
    {
      goto LABEL_147;
    }
  }

  if (!v66)
  {
    goto LABEL_130;
  }

LABEL_123:
  v97 = [objc_opt_self() conversationKit];
  v111._object = 0xE000000000000000;
  v98.value._countAndFlagsBits = 0x61737265766E6F43;
  v98.value._object = 0xEF74694B6E6F6974;
  v99._countAndFlagsBits = 0xD00000000000001DLL;
  v99._object = 0x80000001BC4FA660;
  v100._countAndFlagsBits = 0;
  v100._object = 0xE000000000000000;
  v111._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v99, v98, v97, v100, v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1BC4BA940;
  v53 = v66 + 1;
  if (!__OFADD__(v66, 1))
  {
    goto LABEL_128;
  }

  __break(1u);
LABEL_126:

  if (!v66)
  {
    goto LABEL_132;
  }

LABEL_127:
  v101 = [objc_opt_self() conversationKit];
  v112._object = 0xE000000000000000;
  v102.value._countAndFlagsBits = 0x61737265766E6F43;
  v102.value._object = 0xEF74694B6E6F6974;
  v103._countAndFlagsBits = 0xD00000000000001DLL;
  v103._object = 0x80000001BC4FA620;
  v104._countAndFlagsBits = 0;
  v104._object = 0xE000000000000000;
  v112._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v103, v102, v101, v104, v112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1BC4BA940;
  v53 = v66 + 1;
  if (__OFADD__(v66, 1))
  {
LABEL_149:
    __break(1u);
  }

  else
  {
LABEL_128:
    v105 = MEMORY[0x1E69E65A8];
    *(v52 + 56) = MEMORY[0x1E69E6530];
    *(v52 + 64) = v105;
    *(v52 + 32) = v53;
    String.init(format:_:)();
  }
}

Class PeoplePickerViewController.menu(for:)()
{
  v1 = v0;
  preferredElementSize = MEMORY[0x1E69E7CC0];
  v32 = MEMORY[0x1E69E7CC0];
  v3 = MEMORY[0x1E69E7D40];
  v30 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0);
  v31 = v30();
  v4 = specialized Array.count.getter();
  if (!v4)
  {
LABEL_14:

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
    v20 = [objc_opt_self() conversationKit];
    swift__string._object = 0xE000000000000000;
    v21.value._countAndFlagsBits = 0x61737265766E6F43;
    v21.value._object = 0xEF74694B6E6F6974;
    v22._object = 0x80000001BC4FA5A0;
    v22._countAndFlagsBits = 0xD000000000000015;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    swift__string._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, swift__string);

    OUTLINED_FUNCTION_0_71();
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, v25, v33, 2, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v28).super.super.isa;
    v27 = [objc_allocWithZone(MEMORY[0x1E69DCC70]) init];
    OUTLINED_FUNCTION_1_70([v27 setMaximumNumberOfTitleLines_], sel_setDisplayPreferences_);

    return isa;
  }

  v5 = v4;
  result = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
  if (v5 >= 1)
  {
    v7 = 0;
    v29 = *((*v3 & *v0) + 0x2D8);
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB22010](v7, v31);
      }

      else
      {
        v8 = *(v31 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = v1;
      *(v10 + 24) = v9;
      v1;
      v11 = v9;
      v28._rawValue = 0;
      OUTLINED_FUNCTION_0_71();
      v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      (v30)(v12);
      v13 = PeoplePickerViewController.menuActionTitle(for:allCallerIDs:)(v11);
      v15 = v14;

      v16 = MEMORY[0x1BFB209B0](v13, v15);

      [v12 setTitle_];

      v17 = v29();
      if (v17)
      {
        v18 = v17;
        [v12 setState_];
      }

      else
      {
        [v12 setState_];
      }

      v19 = v12;
      MEMORY[0x1BFB20CC0]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v7;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v5 != v7);
    preferredElementSize = v32;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in PeoplePickerViewController.menu(for:)(uint64_t a1, void *a2, void *a3)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x2E0);
  v5 = a3;
  return v4(a3);
}

uint64_t PeoplePickerViewController.menuActionTitle(for:allCallerIDs:)(void *a1)
{
  if ([a1 type] != 2)
  {
    return TUHandle.formattedValue.getter();
  }

  return PeoplePickerViewController.phoneNumberMenuActionTitle(for:)(a1);
}

uint64_t PeoplePickerViewController.phoneNumberMenuActionTitle(for:)(void *a1)
{
  if (!PeoplePickerViewController.hasMultipleSenderIdentities()())
  {
    return TUHandle.formattedValue.getter();
  }

  v2 = PeoplePickerViewController.matchingSenderIdentity(for:)(a1);
  if (!v2)
  {
    return TUHandle.formattedValue.getter();
  }

  v3 = v2;
  v4 = [objc_opt_self() conversationKit];
  v15._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x61737265766E6F43;
  v5.value._object = 0xEF74694B6E6F6974;
  v6._object = 0x80000001BC4FA5E0;
  v6._countAndFlagsBits = 0xD000000000000017;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BA940;
  v9 = [v3 localizedName];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  v13 = String.init(format:_:)();

  return v13;
}

uint64_t TUHandle.isICloud()()
{
  v1 = [v0 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v2._countAndFlagsBits = 0x2E64756F6C636940;
  v2._object = 0xEB000000006D6F63;
  LOBYTE(v1) = String.hasSuffix(_:)(v2);

  if (v1)
  {
    return 1;
  }

  v3 = [v0 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4._countAndFlagsBits = 0x6D6F632E656D40;
  v4._object = 0xE700000000000000;
  LOBYTE(v3) = String.hasSuffix(_:)(v4);

  if (v3)
  {
    return 1;
  }

  v6 = [v0 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7._countAndFlagsBits = 0x6D6F632E63616D40;
  v7._object = 0xE800000000000000;
  LOBYTE(v6) = String.hasSuffix(_:)(v7);

  return v6 & 1;
}

uint64_t TUHandle.isGmail()(uint64_t a1)
{
  v3 = [v1 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4._countAndFlagsBits = a1;
  v4._object = 0xEA00000000006D6FLL;
  LOBYTE(a1) = String.hasSuffix(_:)(v4);

  return a1 & 1;
}

uint64_t TUHandle.isGeneric()()
{
  if (TUHandle.isGmail()(0x632E6C69616D6740) & 1) != 0 || (TUHandle.isICloud()())
  {
    v0 = 0;
  }

  else
  {
    v0 = TUHandle.isGmail()(0x632E6F6F68617940) ^ 1;
  }

  return v0 & 1;
}

void outlined bridged method (mbnn) of @objc TPPillView.badgeSymbolName.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0](a1);

  [a3 setBadgeSymbolName_];
}

unint64_t lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator()
{
  result = lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator;
  if (!lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator)
  {
    type metadata accessor for NSFastEnumerationIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator);
  }

  return result;
}

Swift::Int CallStatus.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CallStatus(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  CallStatus.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t CallStatus.init(_:)()
{
  OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for CallStatus();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x1E6995D50])
  {
    v7 = 0;
LABEL_19:
    (*(v2 + 8))(v0, v1);
    return v7;
  }

  if (v6 == *MEMORY[0x1E6995D58] || v6 == *MEMORY[0x1E6995D70])
  {
    v7 = 1;
    goto LABEL_19;
  }

  if (v6 == *MEMORY[0x1E6995D48])
  {
    v7 = 2;
    goto LABEL_19;
  }

  if (v6 == *MEMORY[0x1E6995D68])
  {
    v7 = 3;
    goto LABEL_19;
  }

  if (v6 == *MEMORY[0x1E6995D60])
  {
    v7 = 4;
    goto LABEL_19;
  }

  if (v6 == *MEMORY[0x1E6995D40])
  {
    v7 = 5;
    goto LABEL_19;
  }

  if (v6 == *MEMORY[0x1E6995D38])
  {
    v7 = 6;
    goto LABEL_19;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t AnsweringMachineCallStatus.updateSource.getter()
{
  v1 = *v0;

  return v1;
}

void AnsweringMachineCallStatus.updateSource.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t AnsweringMachineCallStatus.callUUID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void AnsweringMachineCallStatus.callUUID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t AnsweringMachineCallStatus.screeningStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnsweringMachineCallStatus(0) + 28);
  type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t AnsweringMachineCallStatus.screeningStatus.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for AnsweringMachineCallStatus(v2) + 28);
  type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t AnsweringMachineCallStatus.screeningStatus.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AnsweringMachineCallStatus(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AnsweringMachineCallStatus.isScreeningDueToUserInteraction.setter(char a1)
{
  result = type metadata accessor for AnsweringMachineCallStatus(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t AnsweringMachineCallStatus.isScreeningDueToUserInteraction.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AnsweringMachineCallStatus(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AnsweringMachineCallStatus.callIsEligibleForScreening.setter(char a1)
{
  result = type metadata accessor for AnsweringMachineCallStatus(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t AnsweringMachineCallStatus.callIsEligibleForScreening.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AnsweringMachineCallStatus(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AnsweringMachineCallStatus.streamToken.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  result = type metadata accessor for AnsweringMachineCallStatus(v2);
  *(v1 + *(result + 40)) = v0;
  return result;
}

uint64_t AnsweringMachineCallStatus.streamToken.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AnsweringMachineCallStatus(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AnsweringMachineCallStatus.announcementHasFinished.setter(char a1)
{
  result = type metadata accessor for AnsweringMachineCallStatus(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t AnsweringMachineCallStatus.announcementHasFinished.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AnsweringMachineCallStatus(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AnsweringMachineCallStatus.init(updateSource:callUUID:status:screeningStatus:isScreeningDueToUserInteraction:callIsEligibleForScreening:streamToken:announcementHasFinished:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  v15 = type metadata accessor for AnsweringMachineCallStatus(0);
  v16 = v15[7];
  type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_7_0();
  result = (*(v17 + 32))(a9 + v16, a6);
  *(a9 + v15[8]) = a7;
  *(a9 + v15[9]) = a8;
  *(a9 + v15[10]) = a10;
  *(a9 + v15[11]) = a11;
  return result;
}

unint64_t lazy protocol witness table accessor for type CallStatus and conformance CallStatus()
{
  result = lazy protocol witness table cache variable for type CallStatus and conformance CallStatus;
  if (!lazy protocol witness table cache variable for type CallStatus and conformance CallStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallStatus and conformance CallStatus);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CallStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata completion function for AnsweringMachineCallStatus(uint64_t a1)
{
  result = type metadata accessor for CallScreeningStatus();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void key path setter for static AmbientState.isPresented : AmbientState.Type(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static AmbientState.isPresented = v1;
}

uint64_t key path getter for LinkDetailHeaderView.invitedMemberHandles : LinkDetailHeaderView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t key path setter for LinkDetailHeaderView.invitedMemberHandles : LinkDetailHeaderView(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x90);

  return v2(v3);
}

uint64_t LinkDetailHeaderView.invitedMemberHandles.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t LinkDetailHeaderView.invitedMemberHandles.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t (*LinkDetailHeaderView.invitedMemberHandles.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_47(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(KeyPath);
  return LinkDetailHeaderView.invitedMemberHandles.modify;
}

uint64_t key path setter for LinkDetailHeaderView.$invitedMemberHandles : LinkDetailHeaderView(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMd, &_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xA8))(v7);
}

uint64_t LinkDetailHeaderView.$invitedMemberHandles.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMd, &_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMR);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = OUTLINED_FUNCTION_25_0(v7, v11);
  v9(v8);
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView__invitedMemberHandles, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo8TUHandleCGSgGMd, &_s7Combine9PublishedVyShySo8TUHandleCGSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*LinkDetailHeaderView.$invitedMemberHandles.modify())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMd, &_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMR);
  OUTLINED_FUNCTION_46_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView__invitedMemberHandles, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo8TUHandleCGSgGMd, &_s7Combine9PublishedVyShySo8TUHandleCGSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LinkDetailHeaderView.$invitedMemberHandles.modify;
}

uint64_t key path getter for LinkDetailHeaderView.title : LinkDetailHeaderView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for LinkDetailHeaderView.title : LinkDetailHeaderView(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC0);

  return v4(v2, v3);
}

uint64_t LinkDetailHeaderView.title.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t LinkDetailHeaderView.title.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t (*LinkDetailHeaderView.title.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_47(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(KeyPath);
  return LinkDetailHeaderView.title.modify;
}

void LinkDetailHeaderView.invitedMemberHandles.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for LinkDetailHeaderView.$title : LinkDetailHeaderView(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xD8))(v7);
}

uint64_t LinkDetailHeaderView.$invitedMemberHandles.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_30_2(v3 + *a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t LinkDetailHeaderView.$title.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = OUTLINED_FUNCTION_25_0(v7, v11);
  v9(v8);
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView__title, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*LinkDetailHeaderView.$title.modify())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_46_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView__title, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LinkDetailHeaderView.$title.modify;
}

void LinkDetailHeaderView.$invitedMemberHandles.modify()
{
  OUTLINED_FUNCTION_50_2();
  v2 = v1;
  v3 = *v0;
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 56);
  if (v6)
  {
    v7 = *(v3 + 32);
    v8 = *(v3 + 40);
    (*(v8 + 16))(*(*v0 + 48), v5, v7);
    v2(v4);
    (*(v8 + 8))(v5, v7);
  }

  else
  {
    v1(*(*v0 + 56));
  }

  free(v5);
  free(v4);
  OUTLINED_FUNCTION_49();

  free(v9);
}

id closure #1 in LinkDetailHeaderView.linkLabel.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v0 setFont_];

  [v0 setTextAlignment_];
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 labelColor];
  [v3 setTintColor_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setNumberOfLines_];
  return v3;
}

id LinkDetailHeaderView.linkLabel.getter(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in LinkDetailHeaderView.linkDetailImage.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 layer];
  [v1 setCornerRadius_];

  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_opt_self() effectForBlurEffect:v2 style:6];

  v4 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  v5 = v4;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v5 layer];
  v7 = [v0 layer];
  [v7 cornerRadius];
  v9 = v8;

  [v6 setCornerRadius_];
  [v5 setClipsToBounds_];
  v10 = [v5 contentView];
  v11 = objc_opt_self();
  v12 = [v11 whiteColor];
  [v10 setBackgroundColor_];

  [v0 addSubview_];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v13 = [objc_opt_self() configurationWithTextStyle_];
  v14 = @nonobjc UIImage.__allocating_init(systemName:withConfiguration:)();
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  v16 = v15;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [v11 whiteColor];
  [v16 setTintColor_];

  [v0 addSubview_];
  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BC4C48E0;
  v20 = [v5 topAnchor];
  v21 = [v0 topAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v19 + 32) = v22;
  v23 = [v5 bottomAnchor];
  v24 = [v0 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v19 + 40) = v25;
  v26 = [v5 leadingAnchor];
  v27 = [v0 leadingAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v19 + 48) = v28;
  v29 = [v5 trailingAnchor];

  v30 = [v0 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v19 + 56) = v31;
  v32 = [v16 centerXAnchor];
  v33 = [v0 centerXAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v19 + 64) = v34;
  v35 = [v16 centerYAnchor];

  v36 = [v0 centerYAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v19 + 72) = v37;
  v38 = [v0 widthAnchor];
  v39 = [v38 constraintEqualToConstant_];

  *(v19 + 80) = v39;
  v40 = [v0 heightAnchor];
  v41 = [v40 constraintEqualToConstant_];

  *(v19 + 88) = v41;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints_];

  return v0;
}

id LinkDetailHeaderView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

void *LinkDetailHeaderView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo8TUHandleCGSgGMd, &_s7Combine9PublishedVyShySo8TUHandleCGSgGMR);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  v13 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView__invitedMemberHandles;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo8TUHandleCGSgMd, &_sShySo8TUHandleCGSgMR);
  Published.init(initialValue:)();
  (*(v9 + 32))(v0 + v13, v12, v7);
  v14 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView__title;
  v26 = 0;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Published.init(initialValue:)();
  (*(v3 + 32))(v0 + v14, v6, v1);
  *(v0 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_cancellables) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_avatarController) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView____lazy_storage___linkLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView____lazy_storage___linkDetailImage) = 0;
  v15 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_constraintsForAvatarViewVisible;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18NSLayoutConstraintCGMd, &_sSaySo18NSLayoutConstraintCGMR);
  *(v0 + v15) = Dictionary.init(dictionaryLiteral:)();
  v16 = type metadata accessor for LinkDetailHeaderView(0);
  v25[0] = v0;
  v25[1] = v16;
  v17 = OUTLINED_FUNCTION_18_1();
  v20 = objc_msgSendSuper2(v18, v19, v17);
  v21 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x160);
  v22 = v20;
  v21();
  LinkDetailHeaderView.setupDisplayProperties()();
  if (specialized Array.count.getter())
  {
    v23 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8TUHandleC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CD0];
  }

  LinkDetailHeaderView.populateHeaderImage(with:)(v23);

  return v22;
}

uint64_t type metadata accessor for LinkDetailHeaderView(uint64_t a1)
{
  result = type metadata singleton initialization cache for LinkDetailHeaderView;
  if (!type metadata singleton initialization cache for LinkDetailHeaderView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id LinkDetailHeaderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void LinkDetailHeaderView.init(coder:)()
{
  OUTLINED_FUNCTION_50_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo8TUHandleCGSgGMd, &_s7Combine9PublishedVyShySo8TUHandleCGSgGMR);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - v11;
  v13 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView__invitedMemberHandles;
  v16[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo8TUHandleCGSgMd, &_sShySo8TUHandleCGSgMR);
  Published.init(initialValue:)();
  (*(v9 + 32))(v0 + v13, v12, v7);
  v14 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView__title;
  v16[0] = 0;
  v16[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Published.init(initialValue:)();
  (*(v3 + 32))(v0 + v14, v6, v1);
  *(v0 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_cancellables) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_avatarController) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView____lazy_storage___linkLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView____lazy_storage___linkDetailImage) = 0;
  v15 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_constraintsForAvatarViewVisible;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18NSLayoutConstraintCGMd, &_sSaySo18NSLayoutConstraintCGMR);
  *(v0 + v15) = Dictionary.init(dictionaryLiteral:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall LinkDetailHeaderView.setupViews()()
{
  v1 = v0;
  v2 = LinkDetailHeaderView.linkDetailImage.getter();
  OUTLINED_FUNCTION_1_70(v2, sel_addSubview_);

  v3 = LinkDetailHeaderView.linkLabel.getter();
  OUTLINED_FUNCTION_1_70(v3, sel_addSubview_);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BC370;
  v5 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView____lazy_storage___linkDetailImage;
  v6 = [*&v1[OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView____lazy_storage___linkDetailImage] topAnchor];
  v7 = [v1 safeAreaLayoutGuide];
  v8 = [v7 topAnchor];

  v9 = [v6 constraintEqualToAnchor_];
  *(v4 + 32) = v9;
  v10 = [*&v1[v5] centerXAnchor];
  v11 = [v1 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v4 + 40) = v12;
  v13 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView____lazy_storage___linkLabel;
  v14 = [*&v1[OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView____lazy_storage___linkLabel] topAnchor];
  v15 = [*&v1[v5] bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:10.0];

  *(v4 + 48) = v16;
  v17 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_constraintsForAvatarViewVisible;
  OUTLINED_FUNCTION_30_2(&v1[OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_constraintsForAvatarViewVisible], v55);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v4, 0, isUniquelyReferenced_nonNull_native, v19, v20, v21, v22, v23, *&v1[v17], v55[0]);
  *&v1[v17] = v53;
  swift_endAccess();
  v24 = objc_opt_self();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BC4BA7F0;
  v26 = [*&v1[v13] centerXAnchor];
  v27 = [v1 centerXAnchor];
  v28 = OUTLINED_FUNCTION_79();
  v30 = [v28 v29];

  *(v25 + 32) = v30;
  v31 = [*&v1[v13] leadingAnchor];
  v32 = [v1 leadingAnchor];
  v33 = OUTLINED_FUNCTION_79();
  v35 = [v33 v34];

  *(v25 + 40) = v35;
  v36 = [*&v1[v13] trailingAnchor];
  v37 = [v1 trailingAnchor];
  v38 = OUTLINED_FUNCTION_79();
  v40 = [v38 v39];

  *(v25 + 48) = v40;
  v41 = [*&v1[v13] bottomAnchor];
  v42 = [v1 bottomAnchor];
  v43 = OUTLINED_FUNCTION_79();
  v45 = [v43 v44];

  *(v25 + 56) = v45;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 activateConstraints_];

  OUTLINED_FUNCTION_30_2(&v1[v17], v55);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(MEMORY[0x1E69E7CC0], 1, v47, v48, v49, v50, v51, v52, *&v1[v17], v55[0]);
  *&v1[v17] = v54;
  swift_endAccess();
}

void LinkDetailHeaderView.setupDisplayProperties()()
{
  OUTLINED_FUNCTION_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMd, &_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMR);
  OUTLINED_FUNCTION_1();
  v16[1] = v1;
  v16[2] = v2;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_21();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD0))(v8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = MEMORY[0x1E695C068];
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<String?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR, MEMORY[0x1E695C068]);
  Publisher<>.sink(receiveValue:)();

  (*(v6 + 8))(v10, v4);
  v12 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_cancellables;
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_cancellables, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd, &_sSay7Combine14AnyCancellableCGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A], &_sSay7Combine14AnyCancellableCGMd, &_sSay7Combine14AnyCancellableCGMR, MEMORY[0x1E69E6348]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))(v13);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<Set<TUHandle>?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMd, &_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMR, v11);
  Publisher<>.sink(receiveValue:)();

  v14 = OUTLINED_FUNCTION_1_5();
  v15(v14);
  OUTLINED_FUNCTION_30_2(v0 + v12, v17);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in LinkDetailHeaderView.setupDisplayProperties()(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = LinkDetailHeaderView.linkLabel.getter();
    if (v3)
    {
      v7 = MEMORY[0x1BFB209B0](v2, v3);
    }

    else
    {
      v7 = 0;
    }

    [v6 setText_];
  }
}

void closure #2 in LinkDetailHeaderView.setupDisplayProperties()(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      LinkDetailHeaderView.populateHeaderImage(with:)(v2);
    }
  }
}

void LinkDetailHeaderView.populateHeaderImage(with:)(uint64_t a1)
{
  v59[5] = *MEMORY[0x1E69E9840];
  v3 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  specialized _copyCollectionToContiguousArray<A>(_:)(a1);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4BAC30;
  *(v5 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  v6 = Array._bridgeToObjectiveC()().super.isa;

  v59[0] = 0;
  v7 = [v3 tu:isa contactsForHandles:v6 keyDescriptors:v59 error:?];

  v8 = v59[0];
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd, &_sSaySo9CNContactCGMR);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v8;
  }

  else
  {
    v11 = v59[0];
    v12 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v9 = 0;
  }

  v57 = MEMORY[0x1E69E7CC0];
  v56 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    a1 = v59[0];
    v13 = v59[1];
    v14 = v59[2];
    v15 = v59[3];
    v16 = v59[4];
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v13 = (a1 + 56);
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = (v19 & *(a1 + 56));

    v15 = 0;
  }

  v20 = (v14 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v21 = v15;
  v22 = v16;
  v23 = v15;
  if (!v16)
  {
    while (1)
    {
      v23 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        goto LABEL_37;
      }

      v22 = v13[v23];
      ++v21;
      if (v22)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_15:
  v24 = (v22 - 1) & v22;
  v25 = *(*(a1 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
  if (v25)
  {
    while (1)
    {
      if (!v9 || !*(v9 + 16))
      {
        goto LABEL_31;
      }

      v26 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v27 & 1) == 0)
      {
        goto LABEL_30;
      }

      v28 = *(*(v9 + 56) + 8 * v26);

      if (v28 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
LABEL_30:

LABEL_31:
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact, 0x1E695CD58);
          v32 = outlined bridged method (pb) of @objc TUHandle.normalizedValue.getter(v25);
          v34 = v33;
          v35 = outlined bridged method (pb) of @objc TUHandle.normalizedValue.getter(v25);
          v31 = @nonobjc CNContact.init(displayName:emailOrPhoneNumber:)(v37, v32, v34, v35, v36);
          goto LABEL_32;
        }
      }

      else if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      if ((v28 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1BFB22010](0, v28);
      }

      else
      {
        if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v29 = *(v28 + 32);
      }

      v30 = v29;

      v31 = v30;
LABEL_32:
      v38 = v31;
      MEMORY[0x1BFB20CC0](v31);
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v15 = v23;
      v16 = v24;
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      if (__CocoaSet.Iterator.next()())
      {
        swift_dynamicCast();
        v25 = v58;
        v23 = v15;
        v24 = v16;
        if (v58)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_37:
  outlined consume of Set<TUHandle>.Iterator._Variant(a1);
  v39 = specialized Array.count.getter();
  v40 = v39 > 0;
  if (v39 < 1)
  {
    v41 = v56;
    v45 = *(v56 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_avatarController);
    if (!v45)
    {
      v40 = 0;
      goto LABEL_47;
    }

    v46 = [v45 view];
    if (v46)
    {
      v44 = v46;
      [v46 setHidden_];
      goto LABEL_44;
    }

LABEL_56:
    __break(1u);
    return;
  }

  v41 = v56;
  LinkDetailHeaderView.updateAvatarController(with:)();
  v42 = *(v56 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_avatarController);
  if (!v42)
  {
    v40 = 1;
    goto LABEL_47;
  }

  v43 = [v42 view];
  if (!v43)
  {
    __break(1u);
    goto LABEL_56;
  }

  v44 = v43;
  [v43 setHidden_];
LABEL_44:

LABEL_47:
  v47 = LinkDetailHeaderView.linkDetailImage.getter();
  [v47 setHidden_];

  v48 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_constraintsForAvatarViewVisible;
  swift_beginAccess();
  specialized Dictionary.subscript.getter(v39 < 1, *(v41 + v48));
  if (!v49)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  v50 = v39 > 0;
  v51 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  v52 = Array._bridgeToObjectiveC()().super.isa;

  [v51 deactivateConstraints_];

  specialized Dictionary.subscript.getter(v50, *(v41 + v48));
  if (!v53)
  {
    goto LABEL_54;
  }

  v54 = Array._bridgeToObjectiveC()().super.isa;

  OUTLINED_FUNCTION_1_70(v55, sel_activateConstraints_);
}

void LinkDetailHeaderView.updateAvatarController(with:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_avatarController;
  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_avatarController];
  if (!v3)
  {
    v9 = objc_allocWithZone(MEMORY[0x1E695D158]);

    v10 = OUTLINED_FUNCTION_36_14();
    v14 = @nonobjc CNGroupIdentity.init(groupWithName:photo:contacts:)(v10, v11, v12, v13);
    v15 = [objc_allocWithZone(MEMORY[0x1E695D150]) initWithGroup_];
    v16 = [v15 view];
    if (v16)
    {
      v17 = v16;
      [v16 setTranslatesAutoresizingMaskIntoConstraints_];

      v18 = *&v1[v2];
      *&v1[v2] = v15;
      v19 = v15;

      v20 = OUTLINED_FUNCTION_41_11();
      if (v20)
      {
        v21 = v20;
        OUTLINED_FUNCTION_1_70(v20, sel_addSubview_);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1BC4BA920;
        v23 = LinkDetailHeaderView.linkLabel.getter();
        v24 = [v23 topAnchor];

        v25 = OUTLINED_FUNCTION_41_11();
        if (v25)
        {
          v26 = v25;
          v27 = [v25 bottomAnchor];

          v28 = [v24 constraintEqualToAnchor:v27 constant:0.0];
          *(v22 + 32) = v28;
          v29 = OUTLINED_FUNCTION_41_11();
          if (v29)
          {
            v30 = v29;
            v31 = [v29 topAnchor];

            v32 = [v1 safeAreaLayoutGuide];
            v33 = [v32 topAnchor];

            v34 = [v31 constraintEqualToAnchor_];
            *(v22 + 40) = v34;
            v35 = OUTLINED_FUNCTION_41_11();
            if (v35)
            {
              v36 = v35;
              v37 = [v35 leadingAnchor];

              v38 = [v1 safeAreaLayoutGuide];
              v39 = [v38 leadingAnchor];

              v40 = [v37 constraintEqualToAnchor_];
              *(v22 + 48) = v40;
              v41 = OUTLINED_FUNCTION_41_11();
              if (v41)
              {
                v42 = v41;
                v43 = [v41 trailingAnchor];

                v44 = [v1 safeAreaLayoutGuide];
                v45 = [v44 trailingAnchor];

                v46 = [v43 constraintEqualToAnchor_];
                *(v22 + 56) = v46;
                v47 = OUTLINED_FUNCTION_41_11();

                if (v47)
                {
                  v48 = [v47 heightAnchor];

                  v49 = [v48 constraintEqualToConstant_];
                  *(v22 + 64) = v49;
                  v50 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_constraintsForAvatarViewVisible;
                  OUTLINED_FUNCTION_30_2(&v1[OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_constraintsForAvatarViewVisible], v61);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v60 = *&v1[v50];
                  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 1, isUniquelyReferenced_nonNull_native, v52, v53, v54, v55, v56, v57, v58);
                  *&v1[v50] = v60;
                  swift_endAccess();

                  return;
                }

                goto LABEL_19;
              }

LABEL_18:
              __break(1u);
LABEL_19:
              __break(1u);
              return;
            }

LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

  objc_allocWithZone(MEMORY[0x1E695D158]);
  v4 = v3;

  v5 = OUTLINED_FUNCTION_36_14();
  v59 = @nonobjc CNGroupIdentity.init(groupWithName:photo:contacts:)(v5, v6, v7, v8);
  [v4 groupIdentityDidUpdate_];
}

id LinkDetailHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkDetailHeaderView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_33();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3_65();
  OUTLINED_FUNCTION_0_72();
  if (v14)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_29_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVAC4DateVGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDVAC4DateVGMR);
  if (OUTLINED_FUNCTION_8_46())
  {
    OUTLINED_FUNCTION_26_16();
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_13_33();
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if (v12)
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_30_0();

    v19(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_6_45();
    v25(v24);
    OUTLINED_FUNCTION_15_23();
    specialized _NativeDictionary._insert(at:key:value:)();
    OUTLINED_FUNCTION_30_0();
  }
}

{
  OUTLINED_FUNCTION_29();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = *v12;
  OUTLINED_FUNCTION_12_32();
  specialized __RawDictionaryStorage.find<A>(_:)(v25 & 1, v21, v26 & v27, v28);
  OUTLINED_FUNCTION_0_72();
  if (v31)
  {
    __break(1u);
    goto LABEL_13;
  }

  v32 = v29;
  v33 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit29SmallMultiwayControllerLayoutC07OverallH20StateWithOrientationVSaySo18NSLayoutConstraintCGGMd, &_ss17_NativeDictionaryVy15ConversationKit29SmallMultiwayControllerLayoutC07OverallH20StateWithOrientationVSaySo18NSLayoutConstraintCGGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v15 & 1, v24))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_12_32();
  v36 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v21, v19 & v34, v17);
  if ((v33 & 1) != (v37 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v32 = v36;
LABEL_5:
  if (v33)
  {
    *(*(*v13 + 56) + 8 * v32) = v23;
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_30_0();

    specialized _NativeDictionary._insert(at:key:value:)(v39, v40, v41, v42, v43, v44, v45);
  }
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_33();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3_65();
  OUTLINED_FUNCTION_0_72();
  if (v14)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_29_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDV15ConversationKit19ParticipantGridViewC23FrozenFrameOverlayState33_C3C0D7D8F62A84253427EC61D899943ELLOGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDV15ConversationKit19ParticipantGridViewC23FrozenFrameOverlayState33_C3C0D7D8F62A84253427EC61D899943ELLOGMR);
  if (OUTLINED_FUNCTION_8_46())
  {
    OUTLINED_FUNCTION_26_16();
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_13_33();
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if (v12)
  {
    OUTLINED_FUNCTION_30_0();

    outlined assign with take of ParticipantGridView.FrozenFrameOverlayState(v16, v17);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_6_45();
    v20(v19);
    OUTLINED_FUNCTION_15_23();
    specialized _NativeDictionary._insert(at:key:value:)();
    OUTLINED_FUNCTION_30_0();
  }
}

{
  OUTLINED_FUNCTION_29();
  v32 = v14;
  v16 = v15;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_30_10();
  OUTLINED_FUNCTION_0_72();
  if (v20)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = v18;
  v22 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDV15ConversationKit26SensitiveContentControllerC18HistoryCheckStatus33_063DB4DC5BD342763B5D5395B1DD5E15LLOGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDV15ConversationKit26SensitiveContentControllerC18HistoryCheckStatus33_063DB4DC5BD342763B5D5395B1DD5E15LLOGMR);
  if (!OUTLINED_FUNCTION_16_30())
  {
    goto LABEL_5;
  }

  v23 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v22 & 1) != (v24 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v21 = v23;
LABEL_5:
  v25 = *v12;
  if (v22)
  {
    v26 = *(v25 + 56) + 16 * v21;
    *v26 = v16;
    *(v26 + 8) = v32;
    OUTLINED_FUNCTION_30_0();

    outlined consume of SensitiveContentController.HistoryCheckStatus(v27, v28);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_39_5();
    v31(v30);
    specialized _NativeDictionary._insert(at:key:value:)(v21, v13, v16, v32, v25);
    OUTLINED_FUNCTION_30_0();
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, &_ss17_NativeDictionaryVy15ConversationKit33MultiwayViewConstraintsControllerC18OverallLayoutStateVSaySo18NSLayoutConstraintCGGMd, &_ss17_NativeDictionaryVy15ConversationKit33MultiwayViewConstraintsControllerC18OverallLayoutStateVSaySo18NSLayoutConstraintCGGMR, specialized _NativeDictionary._insert(at:key:value:), a9, a10, a11, a12, a13, a14);
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, &_ss17_NativeDictionaryVy15ConversationKit33MultiwayViewConstraintsControllerC18OverallLayoutStateVSayyycGGMd, &_ss17_NativeDictionaryVy15ConversationKit33MultiwayViewConstraintsControllerC18OverallLayoutStateVSayyycGGMR, specialized _NativeDictionary._insert(at:key:value:), a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_34_0();
  v46 = v16;
  v47 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  OUTLINED_FUNCTION_12_32();
  specialized __RawDictionaryStorage.find<A>(_:)(v25 & 1, v24, v26 & v27);
  OUTLINED_FUNCTION_0_72();
  if (v30)
  {
    __break(1u);
    goto LABEL_13;
  }

  v31 = v28;
  v32 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(v20, v18);
  if (!OUTLINED_FUNCTION_16_30())
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_12_32();
  v35 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v24, v22 & v33);
  if ((v32 & 1) != (v36 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v31 = v35;
LABEL_5:
  if (v32)
  {
    *(*(*v14 + 56) + 8 * v31) = v47;
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_3();

    v44(v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, a11, a12, a13, a14);
  }
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss17_NativeDictionaryVySo23TUCallReceptionistStateVSay15ConversationKit11ParticipantV7CaptionVGGMd, &_ss17_NativeDictionaryVySo23TUCallReceptionistStateVSay15ConversationKit11ParticipantV7CaptionVGGMR, specialized _NativeDictionary._insert(at:key:value:), a7, a8, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_34_0();
  v39 = v16;
  v18 = v17;
  v20 = v19;
  OUTLINED_FUNCTION_2_68();
  specialized __RawDictionaryStorage.find<A>(_:)(v21);
  OUTLINED_FUNCTION_0_72();
  if (v22)
  {
    __break(1u);
LABEL_13:
    type metadata accessor for TUCallReceptionistState(0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(v20, v18);
  v23 = OUTLINED_FUNCTION_5_43();
  v25 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v23, v24);
  if (v25)
  {
    v28 = OUTLINED_FUNCTION_38_12();
    specialized __RawDictionaryStorage.find<A>(_:)(v28);
    OUTLINED_FUNCTION_7_43();
    if (!v29)
    {
      goto LABEL_13;
    }
  }

  if (v15)
  {
    OUTLINED_FUNCTION_14_21(v25, v26, v27, *v14);
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    OUTLINED_FUNCTION_17_26();
    OUTLINED_FUNCTION_1_3();

    v35(v31, v32, v33, v34, v35, v36, v37, v38, a9, v39, a11, a12, a13, a14);
  }
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss17_NativeDictionaryVySo23TUCallReceptionistStateVSaySo12RTTUtteranceCGGMd, &_ss17_NativeDictionaryVySo23TUCallReceptionistStateVSaySo12RTTUtteranceCGGMR, specialized _NativeDictionary._insert(at:key:value:), a7, a8, a9, a10, a11, a12, a13, a14);
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss17_NativeDictionaryVy15ConversationKit28SharePlayDiscoverabilityTypeOSDySSAC11ApplicationVGGMd, &_ss17_NativeDictionaryVy15ConversationKit28SharePlayDiscoverabilityTypeOSDySSAC11ApplicationVGGMR, specialized _NativeDictionary._insert(at:key:value:), a7, a8, a9, a10, a11, a12, a13, a14);
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss17_NativeDictionaryVy15ConversationKit28SharePlayDiscoverabilityTypeOSayAC11ApplicationVGGMd, &_ss17_NativeDictionaryVy15ConversationKit28SharePlayDiscoverabilityTypeOSayAC11ApplicationVGGMR, specialized _NativeDictionary._insert(at:key:value:), a7, a8, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_34_0();
  v41 = v17;
  v19 = v18;
  v21 = v20;
  OUTLINED_FUNCTION_2_68();
  specialized __RawDictionaryStorage.find<A>(_:)(v22 & 1);
  OUTLINED_FUNCTION_0_72();
  if (v25)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v26 = v23;
  v27 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(v21, v19);
  v28 = OUTLINED_FUNCTION_5_43();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v28, v29))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v15 & 1);
    OUTLINED_FUNCTION_9_32();
    if (!v31)
    {
      goto LABEL_14;
    }

    v26 = v30;
  }

  if (v27)
  {
    *(*(*v16 + 56) + 8 * v26) = v14;
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    OUTLINED_FUNCTION_1_3();

    v37(v33, v34, v35, v36, v37, v38, v39, v40, a9, v41, a11, a12, a13, a14);
  }
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2)
{
  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_0_72();
  if (v6)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for NSAttributedStringKey(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySo21NSAttributedStringKeyayXlGMd, &_ss17_NativeDictionaryVySo21NSAttributedStringKeyayXlGMR);
  if (OUTLINED_FUNCTION_19_15())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2);
    OUTLINED_FUNCTION_7_43();
    if (!v10)
    {
      goto LABEL_14;
    }

    v7 = v9;
  }

  v11 = *v2;
  if (v8)
  {
    *(*(v11 + 56) + 8 * v7) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v7, a2, a1, v11);

    return a2;
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_2_68();
  specialized __RawDictionaryStorage.find<A>(_:)(v12);
  OUTLINED_FUNCTION_0_72();
  if (v13)
  {
    __break(1u);
LABEL_13:
    type metadata accessor for CNKGameControllerButton(0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySo23CNKGameControllerButtonVSay15ConversationKit04GameD7ManagerC11WeakControl33_5FD9E534FCA3327AE0AE348C3E444B19LLCGGMd, &_ss17_NativeDictionaryVySo23CNKGameControllerButtonVSay15ConversationKit04GameD7ManagerC11WeakControl33_5FD9E534FCA3327AE0AE348C3E444B19LLCGGMR);
  v14 = OUTLINED_FUNCTION_5_43();
  v16 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15);
  if (v16)
  {
    v19 = OUTLINED_FUNCTION_38_12();
    specialized __RawDictionaryStorage.find<A>(_:)(v19);
    OUTLINED_FUNCTION_7_43();
    if (!v20)
    {
      goto LABEL_13;
    }
  }

  if (v11)
  {
    OUTLINED_FUNCTION_14_21(v16, v17, v18, *v10);
    OUTLINED_FUNCTION_49();
  }

  else
  {
    OUTLINED_FUNCTION_17_26();
    OUTLINED_FUNCTION_49();

    specialized _NativeDictionary._insert(at:key:value:)(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }
}

{
  OUTLINED_FUNCTION_50_2();
  v14 = OUTLINED_FUNCTION_4_46(v12, v13);
  specialized __RawDictionaryStorage.find<A>(_:)(v14);
  OUTLINED_FUNCTION_0_72();
  if (v15)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySO15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVGMd, &_ss17_NativeDictionaryVySO15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVGMR);
  v16 = OUTLINED_FUNCTION_5_43();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v16, v17))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v10);
    OUTLINED_FUNCTION_7_43();
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  if (v11)
  {
    OUTLINED_FUNCTION_49();

    outlined assign with take of ScreenSharingStateMonitor.Observation(v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_49();

    specialized _NativeDictionary._insert(at:key:value:)(v22, v23, v24, v25);
  }
}

{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_2_68();
  specialized __RawDictionaryStorage.find<A>(_:)(v12);
  OUTLINED_FUNCTION_0_72();
  if (v13)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit20MomentsIndicatorTypeOAC0eF6BubbleCGMd, &_ss17_NativeDictionaryVy15ConversationKit20MomentsIndicatorTypeOAC0eF6BubbleCGMR);
  v14 = OUTLINED_FUNCTION_5_43();
  v16 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15);
  if (v16)
  {
    v19 = OUTLINED_FUNCTION_38_12();
    specialized __RawDictionaryStorage.find<A>(_:)(v19);
    OUTLINED_FUNCTION_7_43();
    if (!v20)
    {
      goto LABEL_13;
    }
  }

  if (v11)
  {
    OUTLINED_FUNCTION_14_21(v16, v17, v18, *v10);
    OUTLINED_FUNCTION_49();
  }

  else
  {
    OUTLINED_FUNCTION_17_26();
    OUTLINED_FUNCTION_49();

    specialized _NativeDictionary._insert(at:key:value:)(v23, v24, v25, v26);
  }
}

{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_31_15();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  specialized __RawDictionaryStorage.find<A>(_:)(v13);
  OUTLINED_FUNCTION_0_72();
  if (v19)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_44_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit24PlatformAlertActionStyleOyycGMd, &_ss17_NativeDictionaryVy15ConversationKit24PlatformAlertActionStyleOyycGMR);
  if (OUTLINED_FUNCTION_8_46())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v14);
    OUTLINED_FUNCTION_9_32();
    if (!v21)
    {
      goto LABEL_14;
    }

    v12 = v20;
  }

  if (v11)
  {
    v22 = (*(*v10 + 56) + 16 * v12);
    *v22 = v18;
    v22[1] = v16;
    OUTLINED_FUNCTION_49();
  }

  else
  {
    OUTLINED_FUNCTION_49();

    specialized _NativeDictionary._insert(at:key:value:)(v24, v25, v26, v27, v28);
  }
}

{
  OUTLINED_FUNCTION_50_2();
  v12 = OUTLINED_FUNCTION_4_46(v10, v11);
  specialized __RawDictionaryStorage.find<A>(_:)(v12);
  OUTLINED_FUNCTION_0_72();
  if (v14)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySi15ConversationKit14AutoplayActionO_AC0E9CandidateVtGMd, &_ss17_NativeDictionaryVySi15ConversationKit14AutoplayActionO_AC0E9CandidateVtGMR);
  v16 = OUTLINED_FUNCTION_5_43();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_26_16();
    specialized __RawDictionaryStorage.find<A>(_:)(v18);
    OUTLINED_FUNCTION_9_32();
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMR);
    OUTLINED_FUNCTION_49();

    outlined assign with take of (AutoplayAction, AutoplayCandidate)(v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_49();

    specialized _NativeDictionary._insert(at:key:value:)();
  }
}

{
  OUTLINED_FUNCTION_50_2();
  v13 = OUTLINED_FUNCTION_4_46(v11, v12);
  specialized __RawDictionaryStorage.find<A>(_:)(v13);
  OUTLINED_FUNCTION_0_72();
  if (v15)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys6UInt64V15ConversationKit30ParticipantPresentationContextVGMd, &_ss17_NativeDictionaryVys6UInt64V15ConversationKit30ParticipantPresentationContextVGMR);
  v17 = OUTLINED_FUNCTION_5_43();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v17, v18))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v10);
    OUTLINED_FUNCTION_9_32();
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  if (v16)
  {
    OUTLINED_FUNCTION_49();

    memcpy(v20, v21, v22);
  }

  else
  {
    OUTLINED_FUNCTION_49();

    specialized _NativeDictionary._insert(at:key:value:)(v24, v25, v26, v27);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1)
{
  specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_72();
  if (v5)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v6 = v3;
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit34ContextMenuNotificationUserInfoKeyOypGMd, &_ss17_NativeDictionaryVy15ConversationKit34ContextMenuNotificationUserInfoKeyOypGMR);
  if (OUTLINED_FUNCTION_19_15())
  {
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_7_43();
    if (!v9)
    {
      goto LABEL_14;
    }

    v6 = v8;
  }

  v10 = *v1;
  if (v7)
  {
    v11 = OUTLINED_FUNCTION_49_9();

    outlined init with take of Any(v11, v12);
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v6, a1, v10);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v15 = *v10;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)();
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_13;
  }

  v21 = v16;
  v22 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySbSaySo18NSLayoutConstraintCGGMd, _ss17_NativeDictionaryVySbSaySo18NSLayoutConstraintCGGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v20))
  {
    goto LABEL_5;
  }

  v23 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v22 & 1) != (v24 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v21 = v23;
LABEL_5:
  v25 = *v11;
  if (v22)
  {
    *(*(v25 + 56) + 8 * v21) = a1;
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v21, a2 & 1, a1, v25);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_46(a1, a2);
  specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_72();
  if (v7)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd, &_ss17_NativeDictionaryVys11AnyHashableVypGMR);
  v10 = OUTLINED_FUNCTION_5_43();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    OUTLINED_FUNCTION_26_16();
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_9_32();
    if (!v13)
    {
      goto LABEL_12;
    }

    v8 = v12;
  }

  v14 = *v3;
  if (v9)
  {
    v15 = OUTLINED_FUNCTION_49_9();

    outlined init with take of Any(v15, v16);
  }

  else
  {
    outlined init with copy of AnyHashable(v4, v17);
    specialized _NativeDictionary._insert(at:key:value:)(v8, v17, v2, v14);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, double a2, double a3)
{
  specialized __RawDictionaryStorage.find<A>(_:)(a1);
  OUTLINED_FUNCTION_0_72();
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit14LayoutPosition33_CB5716349B733E4BD07C5ACF0D02830DLLOSo6CGSizeVGMd, &_ss17_NativeDictionaryVy15ConversationKit14LayoutPosition33_CB5716349B733E4BD07C5ACF0D02830DLLOSo6CGSizeVGMR);
  result = OUTLINED_FUNCTION_19_15();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = result;
LABEL_5:
  v14 = *v3;
  if (v11)
  {
    v15 = (*(v14 + 56) + 16 * v10);
    *v15 = a2;
    v15[1] = a3;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v10, a1, v14);
  }

  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1)
{
  OUTLINED_FUNCTION_20_2();
  specialized __RawDictionaryStorage.find<A>(_:)(v7);
  OUTLINED_FUNCTION_0_72();
  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit19InCallControlsStateOSo6CGRectVGMd, &_ss17_NativeDictionaryVy15ConversationKit19InCallControlsStateOSo6CGRectVGMR);
  result = OUTLINED_FUNCTION_19_15();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = result;
LABEL_5:
  if (v12)
  {
    v15 = (*(*v1 + 56) + 32 * v11);
    *v15 = v5;
    v15[1] = v4;
    v15[2] = v3;
    v15[3] = v2;
  }

  else
  {
    OUTLINED_FUNCTION_18_1();

    return specialized _NativeDictionary._insert(at:key:value:)(v16, v17, v18);
  }

  return result;
}

void type metadata completion function for LinkDetailHeaderView(uint64_t a1)
{
  type metadata accessor for Published<Set<TUHandle>?>(319, &lazy cache variable for type metadata for Published<Set<TUHandle>?>, &_sShySo8TUHandleCGSgMd, &_sShySo8TUHandleCGSgMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Set<TUHandle>?>(319, &lazy cache variable for type metadata for Published<String?>, &_sSSSgMd, &_sSSSgMR);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<Set<TUHandle>?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
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

void outlined consume of SensitiveContentController.HistoryCheckStatus(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t outlined assign with take of (AutoplayAction, AutoplayCandidate)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ParticipantContactDetails.init(handle:cache:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  OUTLINED_FUNCTION_5_6();
  ParticipantContactDetailsCache.contactDetails(for:nickname:)();
  v9 = v10;

  static ParticipantContactDetails.initialsFor(_:)(v4, v10);
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.localizedUppercase.getter();
  v7 = v6;

  *a2 = v10;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v14;
  a2[5] = v5;
  a2[6] = v7;
  return result;
}

uint64_t TUHandle.formattedValue.getter()
{
  v1 = [v0 type];
  if (v1 == 2)
  {
    TUHandle.formattedPhoneNumber.getter();
    if (v2)
    {
      return OUTLINED_FUNCTION_46();
    }
  }

  else if (v1 != 3)
  {
    return OUTLINED_FUNCTION_46();
  }

  v3 = [v0 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return OUTLINED_FUNCTION_46();
}

id ParticipantContactDetails.contact.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void ParticipantContactDetails.displayName.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
}

void ParticipantContactDetails.shortName.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
}

void ParticipantContactDetails.initials.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
}

uint64_t static ParticipantContactDetails.defaultMeContactDetails.getter@<X0>(void *a1@<X8>)
{
  v4 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_14_2();
  v5.super.isa = v4;
  OUTLINED_FUNCTION_17_0(17741, 0xE200000000000000, v6, v7, v5);
  OUTLINED_FUNCTION_7_19();

  *a1 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v1;
  a1[6] = v2;
  return swift_bridgeObjectRetain_n();
}

uint64_t ParticipantContactDetails.init(contact:displayName:shortName:initials:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

void ParticipantContactDetails.init(contact:displayName:shortName:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>, __n128 a7@<Q0>)
{
  static ParticipantContactDetails.initialsFor(_:)(a7, a1);
  lazy protocol witness table accessor for type String and conformance String();
  v13 = StringProtocol.localizedUppercase.getter();
  v15 = v14;

  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  a6[5] = v13;
  a6[6] = v15;
}

uint64_t static ParticipantContactDetails.initialsFor(_:)(__n128 a1, void *a2)
{
  v3 = type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  PersonNameComponents.init()();
  if (a2)
  {
    v10 = [a2 givenName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    PersonNameComponents.givenName.setter();
    v11 = [a2 familyName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_7_19();
  }

  else
  {
    type metadata completion function for SyncedScreeningAlphaGradientView();
    PersonNameComponents.givenName.setter();
  }

  OUTLINED_FUNCTION_62_0();
  PersonNameComponents.familyName.setter();
  if (one-time initialization token for initials != -1)
  {
    OUTLINED_FUNCTION_3_16(&one-time initialization token for initials);
  }

  swift_beginAccess();
  v12 = static NSPersonNameComponentsFormatter.initials;
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v14 = [v12 stringFromPersonNameComponents_];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_7_19();

  (*(v5 + 8))(v9, v3);
  return OUTLINED_FUNCTION_62_0();
}

uint64_t ParticipantContactDetails.init(meCard:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v4 = a1;
  static ParticipantContactDetails.initialsFor(_:)(v5, a1);
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.localizedUppercase.getter();
  v8 = v7;

  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v6;
  a2[4] = v8;
  a2[5] = v6;
  a2[6] = v8;
  return swift_bridgeObjectRetain_n();
}

__n128 ParticipantContactDetails.init(participant:cache:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ParticipantContactDetailsCache.contactDetails(for:)();

  outlined destroy of Participant(a1);
  result = v7;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

void ParticipantContactDetailsCache.contactDetails(for:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v126 = v3;
  v139 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v124 = v9 - v8;
  v10 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v129 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v116 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v121 = &v116 - v19;
  v20 = ParticipantContactDetailsCache.key(for:)(v2);
  v127 = v2;
  v128 = v20;
  v125 = v0;
  if (v20)
  {
    v21 = *(v0 + 24);
    v22 = v20;
    v23 = [v21 objectForKey_];
    if (v23)
    {
      v24 = v23;
      v122 = v6;
      v123 = v4;
      v25 = *&v23[OBJC_IVAR____TtCC15ConversationKit30ParticipantContactDetailsCacheP33_84AC34FA5CB4344A8378F61D97FA6ADC12BoxedDetails_details];
      v26 = *&v23[OBJC_IVAR____TtCC15ConversationKit30ParticipantContactDetailsCacheP33_84AC34FA5CB4344A8378F61D97FA6ADC12BoxedDetails_details + 8];
      v27 = *&v23[OBJC_IVAR____TtCC15ConversationKit30ParticipantContactDetailsCacheP33_84AC34FA5CB4344A8378F61D97FA6ADC12BoxedDetails_details + 16];
      v119 = *&v23[OBJC_IVAR____TtCC15ConversationKit30ParticipantContactDetailsCacheP33_84AC34FA5CB4344A8378F61D97FA6ADC12BoxedDetails_details + 24];
      v28 = *&v23[OBJC_IVAR____TtCC15ConversationKit30ParticipantContactDetailsCacheP33_84AC34FA5CB4344A8378F61D97FA6ADC12BoxedDetails_details + 32];
      v118 = *&v23[OBJC_IVAR____TtCC15ConversationKit30ParticipantContactDetailsCacheP33_84AC34FA5CB4344A8378F61D97FA6ADC12BoxedDetails_details + 40];
      v29 = *&v23[OBJC_IVAR____TtCC15ConversationKit30ParticipantContactDetailsCacheP33_84AC34FA5CB4344A8378F61D97FA6ADC12BoxedDetails_details + 48];
      v120 = v25;
      v117 = v25;

      v30 = MEMORY[0x1BFB209B0](v26, v27);
      v31 = [v30 destinationIdIsTemporary];

      v2 = v127;
      if (!v31 || !*&v127[v10[9] + 8])
      {

        v32 = v126;
        *v126 = v120;
        v32[1] = v26;
        v33 = v119;
        v32[2] = v27;
        v32[3] = v33;
        v34 = v118;
        v32[4] = v28;
        v32[5] = v34;
        v32[6] = v29;
        goto LABEL_43;
      }

      v22 = v117;
      v0 = v125;
      v6 = v122;
      v4 = v123;
    }

    else
    {
      v2 = v127;
    }
  }

  v35 = *&v2[v10[7]];
  if (!v35)
  {
    v79 = *(v0 + 16);
    v80 = [objc_opt_self() settingsWithContactStore_];
    v81 = [objc_allocWithZone(MEMORY[0x1E695D0C8]) initWithSettings_];
    v82 = [v81 descriptorForRequiredKeys];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_1BC4BAC30;
    *(v83 + 32) = v82;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v133 = 0;
    v17 = [v79 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

    v85 = v133;
    if (v17)
    {
      v86 = v17;
      v87 = v85;
      v133 = static ParticipantContactDetails.initialsFor(_:)(v88, v17);
      v134 = v89;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.localizedUppercase.getter();
      OUTLINED_FUNCTION_17_27();

      v129 = v86;

      swift_unknownObjectRelease();
      swift_bridgeObjectRetain_n();
      v78 = 1;
    }

    else
    {
      v92 = v133;
      v93 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      v94 = static OS_os_log.conversationKit;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v96 = OUTLINED_FUNCTION_13_12(v95);
      *(v96 + 16) = xmmword_1BC4BA940;
      v133 = v93;
      v97 = v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v98 = String.init<A>(reflecting:)();
      v100 = v99;
      *(v96 + 56) = MEMORY[0x1E69E6158];
      *(v96 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v96 + 32) = v98;
      *(v96 + 40) = v100;
      v101 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Could not fetch me card %@", 26, 2, &dword_1BBC58000, v94, v101, v96);

      v102 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_14_2();
      v103.super.isa = v102;
      OUTLINED_FUNCTION_17_0(17741, 0xE200000000000000, v104, v105, v103);
      OUTLINED_FUNCTION_17_27();

      v17 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
      swift_unknownObjectRelease();
      swift_bridgeObjectRetain_n();
      v78 = 0;
    }

    goto LABEL_38;
  }

  v122 = v6;
  v123 = v4;
  v120 = v35;
  v36 = [v120 value];
  if (!v36)
  {
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = MEMORY[0x1BFB209B0](v37);
  }

  LODWORD(v119) = [v36 destinationIdIsPseudonym];

  v38 = *&v2[v10[11]];
  v39 = 1 << *(v38 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v38 + 56);
  v42 = (v39 + 63) >> 6;

  v43 = 0;
  if (!v41)
  {
    while (1)
    {
LABEL_15:
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_52;
      }

      if (v44 >= v42)
      {
        break;
      }

      v41 = *(v38 + 56 + 8 * v44);
      ++v43;
      if (v41)
      {
        v43 = v44;
        goto LABEL_19;
      }
    }

    v49 = v127;
    v50 = v128;
    if (v119)
    {
      goto LABEL_26;
    }

    v90 = 0;
    goto LABEL_32;
  }

LABEL_19:
  while (1)
  {
    outlined init with copy of Participant(*(v38 + 48) + *(v129 + 9) * (__clz(__rbit64(v41)) | (v43 << 6)), v17);
    outlined init with take of Participant(v17, v14);
    v45 = *&v14[v10[7]];
    if (v45)
    {
      v46 = [v45 value];
      if (!v46)
      {
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = MEMORY[0x1BFB209B0](v47);
      }

      v48 = [v46 destinationIdIsPseudonym];

      if ((v48 & 1) == 0)
      {
        break;
      }
    }

    v41 &= v41 - 1;
    outlined destroy of Participant(v14);
    if (!v41)
    {
      goto LABEL_15;
    }
  }

  v114 = v121;
  outlined init with take of Participant(v14, v121);
  v90 = *(v114 + v10[7]);
  if (v90)
  {
    v115 = v90;
  }

  outlined destroy of Participant(v114);
  v49 = v127;
  v50 = v128;
  if ((v119 & 1) == 0)
  {
LABEL_32:
    OUTLINED_FUNCTION_16_31();
    v17 = *(v91 - 256);
    ParticipantContactDetailsCache.contactDetails(for:nickname:)();

    goto LABEL_33;
  }

  if (v90)
  {
    OUTLINED_FUNCTION_5_6();
    ParticipantContactDetailsCache.contactDetails(for:nickname:)();

LABEL_33:
    v78 = 0;
    OUTLINED_FUNCTION_22_20();
    if (!v50)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

LABEL_26:
  v51 = *&v49[v10[12]];
  if (v51)
  {
    v129 = v51;
    OUTLINED_FUNCTION_5_6();
    ParticipantContactDetailsCache.contactDetails(for:nickname:)();
    v52 = v134;
    v127 = v133;
    v53 = v135;
    v118 = v136;
    v117 = v137;
    v119 = v138;
    v54 = objc_opt_self();
    v55 = [v54 conversationKit];
    OUTLINED_FUNCTION_6_46();
    OUTLINED_FUNCTION_14_2();
    v56.super.isa = v55;
    OUTLINED_FUNCTION_17_0(v57, v58, 0x61737265766E6F43, v59, v56);

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v61 = OUTLINED_FUNCTION_13_12(v60);
    v116 = xmmword_1BC4BA940;
    *(v61 + 16) = xmmword_1BC4BA940;
    v62 = MEMORY[0x1E69E6158];
    *(v61 + 56) = MEMORY[0x1E69E6158];
    v63 = lazy protocol witness table accessor for type String and conformance String();
    *(v61 + 64) = v63;
    *(v61 + 32) = v52;
    *(v61 + 40) = v53;
    v121 = v53;

    String.init(format:_:)();
    OUTLINED_FUNCTION_17_27();

    v64 = [v54 conversationKit];
    OUTLINED_FUNCTION_6_46();
    OUTLINED_FUNCTION_14_2();
    v65.super.isa = v64;
    OUTLINED_FUNCTION_17_0(v66, v67, v68, v69, v65);
    OUTLINED_FUNCTION_7_19();

    v70 = OUTLINED_FUNCTION_13_12(v60);
    *(v70 + 16) = v116;
    *(v70 + 56) = v62;
    *(v70 + 64) = v63;
    v71 = v117;
    *(v70 + 32) = v118;
    *(v70 + 40) = v71;

    OUTLINED_FUNCTION_62_0();
    String.init(format:_:)();

    v43 = v124;
    PersonNameComponents.init()();
    type metadata completion function for SyncedScreeningAlphaGradientView();
    PersonNameComponents.givenName.setter();
    type metadata completion function for SyncedScreeningAlphaGradientView();
    PersonNameComponents.familyName.setter();
    if (one-time initialization token for initials != -1)
    {
LABEL_52:
      OUTLINED_FUNCTION_3_16(&one-time initialization token for initials);
    }

    swift_beginAccess();
    v72 = static NSPersonNameComponentsFormatter.initials;
    v73 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v74 = [v72 stringFromPersonNameComponents_];

    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    (*(v122 + 8))(v43, v123);
    v130 = v75;
    v131 = v77;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.localizedUppercase.getter();

    v78 = 0;
    v17 = 0;
LABEL_38:
    if (!v128)
    {
      goto LABEL_41;
    }

LABEL_39:
    v106 = *(v125 + 24);
    v107 = type metadata accessor for ParticipantContactDetailsCache.BoxedDetails();
    v108 = objc_allocWithZone(v107);
    OUTLINED_FUNCTION_26_17(&v108[OBJC_IVAR____TtCC15ConversationKit30ParticipantContactDetailsCacheP33_84AC34FA5CB4344A8378F61D97FA6ADC12BoxedDetails_details]);
    v132.receiver = v109;
    v132.super_class = v107;
    v110 = v17;

    v111 = objc_msgSendSuper2(&v132, sel_init);
    [v106 setObject:v111 forKey:v128];

    v50 = v128;
LABEL_40:

    goto LABEL_41;
  }

  OUTLINED_FUNCTION_16_31();
  v113 = *(v112 - 256);
  ParticipantContactDetailsCache.contactDetails(for:nickname:)();

  OUTLINED_FUNCTION_22_20();
  v78 = 0;
  if (v50)
  {
    goto LABEL_40;
  }

LABEL_41:
  OUTLINED_FUNCTION_26_17(v126);
  if (v78)
  {
  }

LABEL_43:
  OUTLINED_FUNCTION_30_0();
}