uint64_t type metadata accessor for CallStatusService(uint64_t a1)
{
  result = type metadata singleton initialization cache for CallStatusService;
  if (!type metadata singleton initialization cache for CallStatusService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CallStatusService(uint64_t a1)
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

id LocalParticipantControlsView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

ConversationKit::LocalParticipantControlsView::Capabilities __swiftcall LocalParticipantControlsView.Capabilities.updated(cinematicFraming:cameraBlur:effects:cameraFlip:cameraRotate:reactionGestures:studioLight:)(Swift::Bool_optional cinematicFraming, Swift::Bool_optional cameraBlur, Swift::Bool_optional effects, Swift::Bool_optional cameraFlip, Swift::Bool_optional cameraRotate, Swift::Bool_optional reactionGestures, Swift::Bool_optional studioLight)
{
  if (studioLight.value == 2)
  {
    value = BYTE6(v7) & 1;
  }

  else
  {
    value = studioLight.value;
  }

  v9 = (value & 1) == 0;
  v10 = 0x1000000000000;
  if (v9)
  {
    v10 = 0;
  }

  return OUTLINED_FUNCTION_43_27(v10);
}

ConversationKit::LocalParticipantControlsView::Capabilities __swiftcall LocalParticipantControlsView.Capabilities.init(cinematicFraming:cameraBlur:effects:cameraFlip:cameraRotate:reactionGestures:studioLight:)(Swift::Bool cinematicFraming, Swift::Bool cameraBlur, Swift::Bool effects, Swift::Bool cameraFlip, Swift::Bool cameraRotate, Swift::Bool reactionGestures, Swift::Bool studioLight)
{
  v7 = 0x1000000000000;
  if (!studioLight)
  {
    v7 = 0;
  }

  return OUTLINED_FUNCTION_43_27(v7);
}

void LocalParticipantControlsView.updateConstraints(for:angle:)(uint64_t a1, CGFloat a2)
{
  v3 = v2;
  v6 = objc_opt_self();
  v7 = [v6 currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (!v8)
  {
    v9 = [v6 currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_4_0(&static AmbientState.isPresented, &v34);
    if (static AmbientState.isPresented != 1)
    {
      goto LABEL_7;
    }

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for shared);
    }

    if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
    {
LABEL_7:
      v11 = objc_opt_self();
      v12 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_22_49();
      (*(v13 + 936))();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
      OUTLINED_FUNCTION_170();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v11 deactivateConstraints_];

      LocalParticipantControlsView.buttonLayoutConstraints(for:)(a1);
      OUTLINED_FUNCTION_11_23();
      (*((*v12 & v15) + 0x3B0))();
      Rotation = CGAffineTransformMakeRotation(&v37, a2);
      OUTLINED_FUNCTION_42_30(Rotation, v17, v18, v19, v20, v21, v22, v23, *&v37.a, *&v37.c, *&v37.tx, v32, v34, v35, v36, *&v37.a, *&v37.c, *&v37.tx);
      v24 = CGAffineTransformMakeRotation(&v37, a2);
      OUTLINED_FUNCTION_42_30(v24, v25, v26, v27, v28, v29, v30, v31, *&v37.a, *&v37.c, *&v37.tx, v33, v34, v35, v36, *&v37.a, *&v37.c, *&v37.tx);
      [v3 setNeedsLayout];
    }
  }
}

id LocalParticipantControlsView.Style.textStyle.getter(unsigned __int8 a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = MEMORY[0x1E69DDCF8];
  v5 = MEMORY[0x1E69DDD10];
  if (v3 == 1)
  {
    v5 = MEMORY[0x1E69DDCF8];
  }

  if (!a1)
  {
    v4 = v5;
  }

  if (a1 - 2 < 2)
  {
    v4 = MEMORY[0x1E69DDDC8];
  }

  v6 = *v4;

  return v6;
}

double LocalParticipantControlsView.Style.margin.getter(unsigned __int8 a1)
{
  if (a1 >= 2u)
  {
    if (a1 == 2)
    {
      static Layout.LocalParticipantViewCameraControls.iOS.getter(v2);
      return *v2;
    }

    else
    {
      static Layout.LocalParticipantViewCameraControls.iOS.getter(v2);
      return *&v2[7];
    }
  }

  else
  {
    static Layout.LocalParticipantViewCameraControls.iOS.getter(v2);
    return *&v2[3];
  }
}

double LocalParticipantControlsView.Style.bottomMargin.getter(unsigned __int8 a1)
{
  if (a1 >= 2u)
  {
    if (a1 == 2)
    {
      static Layout.LocalParticipantViewCameraControls.iOS.getter(v2);
      return *v2;
    }

    else
    {
      static Layout.LocalParticipantViewCameraControls.iOS.getter(v2);
      return *&v2[8];
    }
  }

  else
  {
    static Layout.LocalParticipantViewCameraControls.iOS.getter(v2);
    return *&v2[3];
  }
}

double LocalParticipantControlsView.Style.buttonSize.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_55_19(a1, a2, a3, a4, a5, a6, a7, a8, v11);
      v9 = v8 + 48;
      break;
    case 2:
      OUTLINED_FUNCTION_55_19(a1, a2, a3, a4, a5, a6, a7, a8, v11);
      v9 = v8 + 8;
      break;
    case 3:
      OUTLINED_FUNCTION_55_19(a1, a2, a3, a4, a5, a6, a7, a8, v11);
      v9 = v8 + 16;
      break;
    default:
      OUTLINED_FUNCTION_55_19(a1, a2, a3, a4, a5, a6, a7, a8, v11);
      v9 = v8 + 40;
      break;
  }

  return *v9;
}

double LocalParticipantControlsView.Style.buttonSpacing.getter(char a1)
{
  if (a1 == 3)
  {
    static Layout.LocalParticipantViewCameraControls.iOS.getter(v2);
    return *&v2[11];
  }

  else
  {
    result = 0.0;
    if (a1 == 2)
    {
      static Layout.LocalParticipantViewCameraControls.iOS.getter(v2);
      return *&v2[9];
    }
  }

  return result;
}

Swift::Int LocalParticipantControlsView.Style.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocalParticipantControlsView.Style(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  LocalParticipantControlsView.Style.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

void static LocalParticipantControlsView.ViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_50_2();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  v25 = OUTLINED_FUNCTION_22(v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  if (*v23 == *v21 && ((v23[1] ^ v21[1]) & 1) == 0 && ((v23[2] ^ v21[2]) & 1) == 0 && ((v23[3] ^ v21[3]) & 1) == 0 && ((v23[4] ^ v21[4]) & 1) == 0 && ((v23[5] ^ v21[5]) & 1) == 0 && ((v23[6] ^ v21[6]) & 1) == 0)
  {
    v31 = v21[7];
    v32 = VideoMessageController.State.rawValue.getter(v23[7]);
    v34 = v33;
    if (v32 == VideoMessageController.State.rawValue.getter(v31) && v34 == v35)
    {
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v37 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v23[8] == v21[8] && v23[9] == v21[9])
    {
      v38 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
      outlined init with copy of ConversationControlsRecipe?(&v23[*(v38 + 32)], v30);
      v39 = type metadata accessor for ConversationControlsRecipe(0);
      __swift_getEnumTagSinglePayload(v30, 1, v39);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
      outlined init with copy of ConversationControlsRecipe?(&v21[*(v38 + 32)], v27);
      __swift_getEnumTagSinglePayload(v27, 1, v39);
      v40 = OUTLINED_FUNCTION_247();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_49();
}

void LocalParticipantControlsView.ViewModel.capabilities.setter(unint64_t a1)
{
  *v1 = a1 & 1;
  v2 = vdupq_n_s64(a1);
  *(v1 + 1) = OUTLINED_FUNCTION_24_51(v2, vshlq_u64(v2, xmmword_1BC4DFB80), xmmword_1BC4DFB90).u32[0];
  *(v1 + 5) = v3 & 1;
  *(v1 + 6) = v4 & 1;
}

uint64_t LocalParticipantControlsView.ViewModel.hudRecipe.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_38_35();

  return outlined init with copy of ConversationControlsRecipe?(v1 + v3, a1);
}

uint64_t LocalParticipantControlsView.ViewModel.hudRecipe.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_38_35();

  return outlined assign with take of ConversationControlsRecipe?(a1, v1 + v3);
}

uint64_t LocalParticipantControlsView.ViewModel.init(capabilities:videoMessagingState:isInComingCall:isOutgoingCall:hudRecipe:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  *a3 = a1 & 1;
  v5 = vdupq_n_s64(a1);
  *(a3 + 1) = OUTLINED_FUNCTION_24_51(v5, vshlq_u64(v5, xmmword_1BC4DFB80), xmmword_1BC4DFB90).u32[0];
  *(a3 + 5) = v6 & 1;
  *(a3 + 6) = v7 & 1;
  *(a3 + 7) = v8;
  *(a3 + 8) = v9;
  *(a3 + 9) = v10;
  OUTLINED_FUNCTION_38_35();

  return outlined init with take of ConversationControlsRecipe?(a2, a3 + v11);
}

void LocalParticipantControlsView.Capabilities.hash(into:)(uint64_t a1, uint64_t a2)
{
  Hasher._combine(_:)(a2 & 1);
  Hasher._combine(_:)(BYTE1(a2) & 1);
  Hasher._combine(_:)(BYTE2(a2) & 1);
  Hasher._combine(_:)(BYTE3(a2) & 1);
  Hasher._combine(_:)(BYTE4(a2) & 1);
  Hasher._combine(_:)(BYTE5(a2) & 1);
  Hasher._combine(_:)(BYTE6(a2) & 1);
}

Swift::Int LocalParticipantControlsView.Capabilities.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  LocalParticipantControlsView.Capabilities.hash(into:)(v3, a1 & 0x1010101010101);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LocalParticipantControlsView.Capabilities()
{
  v1 = 0x1000000000000;
  if (!v0[6])
  {
    v1 = 0;
  }

  v2 = 0x10000000000;
  if (!v0[5])
  {
    v2 = 0;
  }

  v3 = 0x100000000;
  if (!v0[4])
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if (!v0[3])
  {
    v4 = 0;
  }

  v5 = 0x10000;
  if (!v0[2])
  {
    v5 = 0;
  }

  v6 = 256;
  if (!v0[1])
  {
    v6 = 0;
  }

  return LocalParticipantControlsView.Capabilities.hashValue.getter(v6 | *v0 | v5 | v4 | v3 | v2 | v1);
}

void protocol witness for Hashable.hash(into:) in conformance LocalParticipantControlsView.Capabilities(uint64_t a1)
{
  v2 = 0x1000000000000;
  if (!v1[6])
  {
    v2 = 0;
  }

  v3 = 0x10000000000;
  if (!v1[5])
  {
    v3 = 0;
  }

  v4 = 0x100000000;
  if (!v1[4])
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!v1[3])
  {
    v5 = 0;
  }

  v6 = 0x10000;
  if (!v1[2])
  {
    v6 = 0;
  }

  v7 = 256;
  if (!v1[1])
  {
    v7 = 0;
  }

  LocalParticipantControlsView.Capabilities.hash(into:)(a1, v7 | *v1 | v6 | v5 | v4 | v3 | v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocalParticipantControlsView.Capabilities(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  Hasher.init(_seed:)();
  v9 = 0x1000000000000;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = 0x10000000000;
  if (!v7)
  {
    v10 = 0;
  }

  v11 = 0x100000000;
  if (!v6)
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if (!v5)
  {
    v12 = 0;
  }

  v13 = 0x10000;
  if (!v4)
  {
    v13 = 0;
  }

  v14 = 256;
  if (!v3)
  {
    v14 = 0;
  }

  LocalParticipantControlsView.Capabilities.hash(into:)(v16, v14 | v2 | v13 | v12 | v11 | v10 | v9);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance LocalParticipantControlsView.Capabilities(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = v9 == 0;
  v18 = 0x1000000000000;
  if (v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = 0x1000000000000;
  }

  v17 = v8 == 0;
  v20 = 0x10000000000;
  if (v17)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0x10000000000;
  }

  v17 = v7 == 0;
  v22 = 0x100000000;
  if (v17)
  {
    v23 = 0;
  }

  else
  {
    v23 = 0x100000000;
  }

  v17 = v6 == 0;
  v24 = 0x1000000;
  if (v17)
  {
    v25 = 0;
  }

  else
  {
    v25 = 0x1000000;
  }

  v17 = v5 == 0;
  v26 = 0x10000;
  if (v17)
  {
    v27 = 0;
  }

  else
  {
    v27 = 0x10000;
  }

  v17 = v4 == 0;
  v28 = 256;
  if (v17)
  {
    v29 = 0;
  }

  else
  {
    v29 = 256;
  }

  v30 = v29 | v3 | v27 | v25;
  v31 = v23 | v21 | v19;
  if (!v16)
  {
    v18 = 0;
  }

  if (!v15)
  {
    v20 = 0;
  }

  if (!v14)
  {
    v22 = 0;
  }

  if (!v13)
  {
    v24 = 0;
  }

  if (!v12)
  {
    v26 = 0;
  }

  if (!v11)
  {
    v28 = 0;
  }

  return static LocalParticipantControlsView.Capabilities.== infix(_:_:)(v30 | v31, v28 | v10 | v26 | v24 | v22 | v20 | v18);
}

id closure #1 in variable initialization expression of LocalParticipantControlsView.effectsButton()
{
  type metadata accessor for InCallControlButton();
  v4 = &type metadata for SymbolImageDescribers.LocalParticipantView;
  v5 = &protocol witness table for SymbolImageDescribers.LocalParticipantView;
  v3[0] = 3;
  v0 = InCallControlButton.__allocating_init(style:symbolDescriber:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:isImageTrailing:)(1, v3, 0, 0, 0, 1, 0xD00000000000001DLL, 0x80000001BC5042F0, 1, 0);
  v1 = MEMORY[0x1BFB209B0](0x4273746365666665, 0xED00006E6F747475);
  [v0 setAccessibilityIdentifier_];

  return v0;
}

id closure #1 in variable initialization expression of LocalParticipantControlsView.cameraBlurButton()
{
  type metadata accessor for InCallControlButton();
  v4 = &type metadata for SymbolImageDescribers.LocalParticipantView;
  v5 = &protocol witness table for SymbolImageDescribers.LocalParticipantView;
  v3[0] = 1;
  v0 = InCallControlButton.__allocating_init(style:symbolDescriber:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:isImageTrailing:)(1, v3, 0, 0, 0, 1, 0xD00000000000001DLL, 0x80000001BC5042F0, 1, 0);
  v1 = MEMORY[0x1BFB209B0](0xD000000000000010, 0x80000001BC4F7A10);
  [v0 setAccessibilityIdentifier_];

  return v0;
}

id closure #1 in variable initialization expression of LocalParticipantControlsView.cinematicFramingButton()
{
  type metadata accessor for InCallControlButton();
  v4 = &type metadata for SymbolImageDescribers.LocalParticipantView;
  v5 = &protocol witness table for SymbolImageDescribers.LocalParticipantView;
  v3[0] = 2;
  v0 = InCallControlButton.__allocating_init(style:symbolDescriber:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:isImageTrailing:)(1, v3, 0, 0, 0, 1, 0xD00000000000001DLL, 0x80000001BC5042F0, 1, 0);
  v1 = MEMORY[0x1BFB209B0](0xD000000000000011, 0x80000001BC4F7A50);
  [v0 setAccessibilityIdentifier_];

  return v0;
}

id closure #1 in variable initialization expression of LocalParticipantControlsView.collapseButton()
{
  type metadata accessor for InCallControlButton();
  v4 = &type metadata for SymbolImageDescribers.LocalParticipantView;
  v5 = &protocol witness table for SymbolImageDescribers.LocalParticipantView;
  v3[0] = 4;
  static Layout.LocalParticipantViewCameraControls.iOS.getter(&v6);
  v0 = InCallControlButton.__allocating_init(style:symbolDescriber:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:isImageTrailing:)(1, v3, 0, 0, 0, 1, 0xD00000000000001DLL, 0x80000001BC5042F0, 1, 0);
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = MEMORY[0x1BFB209B0](0x657370616C6C6F63, 0xEE006E6F74747542);
  [v0 setAccessibilityIdentifier_];

  return v0;
}

id closure #1 in variable initialization expression of LocalParticipantControlsView.rotateButton()
{
  type metadata accessor for InCallControlButton();
  v15 = &type metadata for SymbolImageDescribers.ParticipantView;
  v16 = &protocol witness table for SymbolImageDescribers.ParticipantView;
  v14[0] = 2;
  static Layout.LocalParticipantViewCameraControls.iOS.getter(&v17);
  v0 = InCallControlButton.__allocating_init(style:symbolDescriber:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:isImageTrailing:)(1, v14, 0, 0, 0, 1, 0xD00000000000001DLL, 0x80000001BC5042F0, 1, 0);
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 conversationKit];
  v18._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0x4320657461746F52;
  v4._object = 0xED00006172656D61;
  v5.value._countAndFlagsBits = 0x61737265766E6F43;
  v5.value._object = 0xEF74694B6E6F6974;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v18);

  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(v7._countAndFlagsBits, v7._object, v2);
  v8 = [v1 conversationKit];
  v19._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x4320657461746F52;
  v9._object = 0xED00006172656D61;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v10.value._object = 0xEF74694B6E6F6974;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v19);

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v12._countAndFlagsBits, v12._object, v2);
  return v2;
}

id closure #1 in variable initialization expression of LocalParticipantControlsView.cameraFlipButton()
{
  type metadata accessor for InCallControlButton();
  v4 = &type metadata for SymbolImageDescribers.LocalParticipantView;
  v5 = &protocol witness table for SymbolImageDescribers.LocalParticipantView;
  v3[0] = 0;
  static Layout.LocalParticipantViewCameraControls.iOS.getter(&v6);
  v0 = InCallControlButton.__allocating_init(style:symbolDescriber:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:isImageTrailing:)(1, v3, 0, 0, 0, 1, 0xD00000000000001DLL, 0x80000001BC5042F0, 1, 0);
  v1 = MEMORY[0x1BFB209B0](0xD000000000000010, 0x80000001BC4F7A70);
  [v0 setAccessibilityIdentifier_];

  return v0;
}

id closure #1 in variable initialization expression of LocalParticipantControlsView.cameraFlipButtonWithText()
{
  type metadata accessor for InCallControlButton();
  v9 = &type metadata for SymbolImageDescribers.LocalParticipantView;
  v10 = &protocol witness table for SymbolImageDescribers.LocalParticipantView;
  v8[0] = 0;
  v0 = [objc_opt_self() conversationKit];
  v11._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x4D41435F50494C46;
  v1._object = 0xEB00000000415245;
  v2.value._countAndFlagsBits = 0x61737265766E6F43;
  v2.value._object = 0xEF74694B6E6F6974;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v11);

  v5 = InCallControlButton.__allocating_init(style:symbolDescriber:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:isImageTrailing:)(7, v8, v4._countAndFlagsBits, v4._object, 0, 1, 0xD00000000000001DLL, 0x80000001BC5042F0, 1, 0);
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = MEMORY[0x1BFB209B0](0xD000000000000010, 0x80000001BC4F7A70);
  [v5 setAccessibilityIdentifier_];

  return v5;
}

id closure #1 in variable initialization expression of LocalParticipantControlsView.reactionEffectGestureButton()
{
  type metadata accessor for InCallControlButton();
  v4 = &type metadata for SymbolImageDescribers.LocalParticipantView;
  v5 = &protocol witness table for SymbolImageDescribers.LocalParticipantView;
  v3[0] = 11;
  static Layout.LocalParticipantViewCameraControls.iOS.getter(&v6);
  v0 = InCallControlButton.__allocating_init(style:symbolDescriber:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:isImageTrailing:)(1, v3, 0, 0, 0, 1, 0xD00000000000001DLL, 0x80000001BC5042F0, 1, 0);
  v1 = MEMORY[0x1BFB209B0](0xD00000000000001BLL, 0x80000001BC4F7A90);
  [v0 setAccessibilityIdentifier_];

  return v0;
}

id closure #1 in variable initialization expression of LocalParticipantControlsView.studioLightButton()
{
  type metadata accessor for InCallControlButton();
  v4 = &type metadata for SymbolImageDescribers.LocalParticipantView;
  v5 = &protocol witness table for SymbolImageDescribers.LocalParticipantView;
  v3[0] = 12;
  static Layout.LocalParticipantViewCameraControls.iOS.getter(&v6);
  v0 = InCallControlButton.__allocating_init(style:symbolDescriber:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:isImageTrailing:)(1, v3, 0, 0, 0, 1, 0xD00000000000001DLL, 0x80000001BC5042F0, 1, 0);
  v1 = MEMORY[0x1BFB209B0](0xD000000000000011, 0x80000001BC4F7AB0);
  [v0 setAccessibilityIdentifier_];

  return v0;
}

id closure #1 in variable initialization expression of LocalParticipantControlsView.videoPauseButton()
{
  type metadata accessor for InCallControlButton();
  v10 = &type metadata for SymbolImageDescribers.LocalParticipantView;
  v11 = &protocol witness table for SymbolImageDescribers.LocalParticipantView;
  v9[0] = 7;
  static Layout.LocalParticipantViewCameraControls.iOS.getter(v12);
  v0 = InCallControlButton.__allocating_init(style:symbolDescriber:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:isImageTrailing:)(6, v9, 0, 0, 0, 1, 0xD00000000000001DLL, 0x80000001BC5042F0, 1, 0);
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 conversationKit];
  v13._object = 0xE000000000000000;
  v4.value._countAndFlagsBits = 0x61737265766E6F43;
  v4.value._object = 0xEF74694B6E6F6974;
  v5._object = 0x80000001BC519000;
  v5._countAndFlagsBits = 0xD00000000000001CLL;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v13);

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v7._countAndFlagsBits, v7._object, v2);
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  return v2;
}

uint64_t key path getter for LocalParticipantControlsView.videoMessageControls : LocalParticipantControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x160))();
  *a2 = result;
  return result;
}

uint64_t key path setter for LocalParticipantControlsView.videoMessageControls : LocalParticipantControlsView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x168);
  v4 = *a1;
  return v3(v2);
}

void *LocalParticipantControlsView.videoMessageControls.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_videoMessageControls;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void LocalParticipantControlsView.videoMessageControls.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_videoMessageControls;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for LocalParticipantControlsView.videoMessageViewModel : LocalParticipantControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x178))();
  *a2 = result;
  return result;
}

void *LocalParticipantControlsView.videoMessageViewModel.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17[-v4];
  v6 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView____lazy_storage___videoMessageViewModel;
  v7 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView____lazy_storage___videoMessageViewModel);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView____lazy_storage___videoMessageViewModel);
  }

  else
  {
    v9 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
    v17[15] = 0;
    v10 = objc_allocWithZone(type metadata accessor for VideoMessagePlayerViewModel(0));
    VideoMessagePlayerViewModel.init(videoMessageURL:playerSpaciality:)();
    v12 = v11;
    v13 = closure #1 in LocalParticipantControlsView.videoMessageViewModel.getter(v11);

    v14 = *(v1 + v6);
    *(v1 + v6) = v13;
    v8 = v13;

    v7 = 0;
  }

  v15 = v7;
  return v8;
}

void *closure #1 in LocalParticipantControlsView.videoMessageViewModel.getter(void *a1)
{
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xF8))(0);
  v2 = *(a1 + OBJC_IVAR____TtC15ConversationKit27VideoMessagePlayerViewModel_shutterModel);
  (*(*v2 + 520))(0);
  (*((*v1 & *a1) + 0xC8))(0);
  v3 = static Layout.LocalParticipantViewCameraControls.iOS.getter(v19);
  v4 = v20;
  v5 = (*(*v2 + 368))(v3);
  v6.n128_f64[0] = v4 - (v5 + v5);
  (*(*v2 + 328))(v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = *((*v1 & *a1) + 0x1C0);

  v9 = v8(v18);
  *v10 = partial apply for closure #1 in closure #1 in LocalParticipantControlsView.videoMessageViewModel.getter;
  v10[1] = v7;

  v9(v18, 0);

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;

  v14 = v8(v18);
  *(v15 + 32) = partial apply for closure #2 in closure #1 in LocalParticipantControlsView.videoMessageViewModel.getter;
  *(v15 + 40) = v13;

  v14(v18, 0);

  return a1;
}

void closure #1 in closure #1 in LocalParticipantControlsView.videoMessageViewModel.getter(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x220))();
    v5 = v4;

    if (v3)
    {
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(2, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }
}

void closure #2 in closure #1 in LocalParticipantControlsView.videoMessageViewModel.getter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = MEMORY[0x1E69E7D40];
  if (Strong && (v4 = Strong, v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xF0))(), v4, !v5))
  {
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      (*((*v3 & *v19) + 0xF8))(3);
    }

    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v23 = (*((*v3 & *v21) + 0x220))();
      v25 = v24;

      if (v23)
      {
        ObjectType = swift_getObjectType();
        (*(v25 + 8))(1, ObjectType, v25);
        goto LABEL_17;
      }
    }
  }

  else
  {
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = (*((*v3 & *v6) + 0xF0))();

      if (v8 == 2)
      {
        swift_beginAccess();
        v9 = swift_unknownObjectWeakLoadStrong();
        if (v9)
        {
          v10 = v9;
          (*((*v3 & *v9) + 0x4A0))();
        }

        return;
      }
    }

    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      (*((*v3 & *v11) + 0xF8))(0);
    }

    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = (*((*v3 & *v13) + 0x220))();
      v17 = v16;

      if (v15)
      {
        v18 = swift_getObjectType();
        (*(v17 + 8))(0, v18, v17);
LABEL_17:
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t LocalParticipantControlsView.videoMessageViewModel.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = LocalParticipantControlsView.videoMessageViewModel.getter();
  return OUTLINED_FUNCTION_8_1();
}

uint64_t key path getter for LocalParticipantControlsView.callAgainHUDView : LocalParticipantControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x190))();
  *a2 = result;
  return result;
}

uint64_t key path setter for LocalParticipantControlsView.callAgainHUDView : LocalParticipantControlsView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x198);
  v4 = *a1;
  return v3(v2);
}

void LocalParticipantControlsView.callAgainHUDView.setter(void *a1)
{
  OUTLINED_FUNCTION_3_12(a1);
  swift_unknownObjectWeakAssign();
}

uint64_t LocalParticipantControlsView.callAgainHUDView.modify()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  v3 = OUTLINED_FUNCTION_47(v2);
  v4 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_callAgainHUDView;
  *(v3 + 32) = v0;
  *(v3 + 40) = v4;
  v5 = OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_30_2(v5, v6);
  *(v1 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_28_3();
}

uint64_t key path setter for LocalParticipantControlsView.hudRecipe : LocalParticipantControlsView(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ConversationControlsRecipe?(a1, &v8 - v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x1B0))(v6);
}

uint64_t LocalParticipantControlsView.hudRecipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_67();
  (*((*MEMORY[0x1E69E7D40] & v5) + 0x2C8))();
  return outlined init with take of ConversationControlsRecipe?(v1 + *(v4 + 40), a1);
}

uint64_t LocalParticipantControlsView.hudRecipe.setter(uint64_t a1)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2D8))(v15);
  OUTLINED_FUNCTION_18_8();
  OUTLINED_FUNCTION_38_35();
  v5 = outlined assign with copy of ConversationControlsRecipe?(a1, v2 + v4);
  v13 = OUTLINED_FUNCTION_30_35(v5, v6, v7, v8, v9, v10, v11, v12, v15[0]);
  v1(v13);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a1, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
}

void (*LocalParticipantControlsView.hudRecipe.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x68uLL);
  *(OUTLINED_FUNCTION_47(v2) + 64) = v0;
  v3 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  v1[9] = v3;
  OUTLINED_FUNCTION_7_0();
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v1[10] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  v1[11] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v1[12] = v9;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C8))();
  outlined init with take of ConversationControlsRecipe?(v5 + *(v3 + 32), v9);
  return LocalParticipantControlsView.hudRecipe.modify;
}

void LocalParticipantControlsView.hudRecipe.modify()
{
  OUTLINED_FUNCTION_50_2();
  v1 = *v0;
  v4 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  if (v2)
  {
    v6 = *(v1 + 72);
    v5 = *(v1 + 80);
    outlined init with copy of ConversationControlsRecipe?(*(v1 + 96), *(v1 + 88));
    OUTLINED_FUNCTION_13_2();
    v8 = (*((*MEMORY[0x1E69E7D40] & v7) + 0x2D8))(v1);
    outlined assign with copy of ConversationControlsRecipe?(v4, v9 + *(v6 + 32));
    v8(v1, 0);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  }

  else
  {
    v10 = *(v1 + 72);
    v5 = *(v1 + 80);
    v11 = (*((*MEMORY[0x1E69E7D40] & **(v1 + 64)) + 0x2D8))(v1 + 32);
    outlined assign with copy of ConversationControlsRecipe?(v3, v12 + *(v10 + 32));
    v11(v1 + 32, 0);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  free(v3);
  free(v4);
  free(v5);
  OUTLINED_FUNCTION_49();

  free(v13);
}

uint64_t key path getter for LocalParticipantControlsView.spinnerView : LocalParticipantControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C0))();
  *a2 = result;
  return result;
}

id LocalParticipantControlsView.spinnerView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView____lazy_storage___spinnerView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView____lazy_storage___spinnerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView____lazy_storage___spinnerView);
  }

  else
  {
    v4 = v0;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIActivityIndicatorView, 0x1E69DC638);
    UIActivityIndicatorView.init(style:size:)(v5, ConversationKit_PlatformActivityIndicatorStyle_spinner, ConversationKit_PlatformActivityIndicatorSize_large);
    v6 = *(v0 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t LocalParticipantControlsView.spinnerView.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = LocalParticipantControlsView.spinnerView.getter();
  return OUTLINED_FUNCTION_8_1();
}

uint64_t key path getter for LocalParticipantControlsView.hasInitializedShutterButton : LocalParticipantControlsView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D8))();
  *a2 = result & 1;
  return result;
}

uint64_t LocalParticipantControlsView.hasInitializedShutterButton.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_hasInitializedShutterButton;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t LocalParticipantControlsView.hasInitializedShutterButton.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_hasInitializedShutterButton;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

id LocalParticipantControlsView.shutterButton.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView____lazy_storage___shutterButton;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView____lazy_storage___shutterButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView____lazy_storage___shutterButton);
  }

  else
  {
    closure #1 in LocalParticipantControlsView.shutterButton.getter(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t key path getter for LocalParticipantControlsView.shutterButton : LocalParticipantControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F0))();
  *a2 = result;
  return result;
}

void closure #1 in LocalParticipantControlsView.shutterButton.getter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit07ShutterhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA08AnyShapeG0VSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit07ShutterhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA08AnyShapeG0VSgGGMR);
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - v4;
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x1E0))(1, v3);
  v8 = (*((*v6 & *a1) + 0x178))(v7);
  static Color.white.getter();
  static Color.red.getter();
  VideoMessagePlayerViewModel.shutterButton(trackBackgroundColor:trackForegroundColor:)();

  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
  v9 = View.inLockScreenHostingController()();
  sub_1BBD00E28(v5);
  v10 = v9;
  v11 = [v10 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  v12 = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];

  v13 = [v10 view];
  if (!v13)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v14 = v13;
  v15 = [objc_opt_self() clearColor];
  [v14 setBackgroundColor_];

  v16 = [v10 view];
  if (v16)
  {

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t LocalParticipantControlsView.shutterButton.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = LocalParticipantControlsView.shutterButton.getter();
  return OUTLINED_FUNCTION_8_1();
}

uint64_t key path getter for LocalParticipantControlsView.currentConstraints : LocalParticipantControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x208))();
  *a2 = result;
  return result;
}

uint64_t key path setter for LocalParticipantControlsView.currentConstraints : LocalParticipantControlsView(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x210);

  return v2(v3);
}

uint64_t key path getter for LocalParticipantControlsView.delegate : LocalParticipantControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x220))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for LocalParticipantControlsView.delegate : LocalParticipantControlsView(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x228);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t LocalParticipantControlsView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t LocalParticipantControlsView.delegate.modify()
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  v3 = OUTLINED_FUNCTION_47(v2);
  v4 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_delegate;
  *(v3 + 40) = v0;
  *(v3 + 48) = v4;
  v5 = v0 + v4;
  OUTLINED_FUNCTION_30_2(v5, v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  *(v1 + 24) = Strong;
  *(v1 + 32) = v7;
  return OUTLINED_FUNCTION_28_3();
}

uint64_t key path getter for LocalParticipantControlsView.zoomButtonLayoutGuide : LocalParticipantControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x238))();
  *a2 = result;
  return result;
}

uint64_t key path setter for LocalParticipantControlsView.zoomButtonLayoutGuide : LocalParticipantControlsView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x240);
  v4 = *a1;
  return v3(v2);
}

void *LocalParticipantControlsView.zoomButtonLayoutGuide.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_zoomButtonLayoutGuide;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void LocalParticipantControlsView.zoomButtonLayoutGuide.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_zoomButtonLayoutGuide;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for LocalParticipantControlsView.style : LocalParticipantControlsView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x250))();
  *a2 = result;
  return result;
}

void LocalParticipantControlsView.style.didset(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_style;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    LocalParticipantControlsView.updateViews()();
  }
}

uint64_t LocalParticipantControlsView.style.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_style;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void LocalParticipantControlsView.style.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_style;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  LocalParticipantControlsView.style.didset(v4);
}

uint64_t LocalParticipantControlsView.style.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_style;
  v4 = OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_4_0(v4, v5);
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_28_3();
}

void LocalParticipantControlsView.style.modify(uint64_t a1)
{
  v1 = *a1;
  LocalParticipantControlsView.style.setter(*(*a1 + 32));

  free(v1);
}

uint64_t key path getter for LocalParticipantControlsView.buttonsStackViewController : LocalParticipantControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x268))();
  *a2 = result;
  return result;
}

id LocalParticipantControlsView.buttonsStackViewController.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_buttonsStackViewController;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);

  return v3;
}

void LocalParticipantControlsView.buttonsStackViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_buttonsStackViewController;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

int8x8_t key path getter for LocalParticipantControlsView.capabilities : LocalParticipantControlsView@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x280))();
  *a2 = v3 & 1;
  v4 = vdupq_n_s64(v3);
  *v4.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v4, xmmword_1BC4DFB90), vshlq_u64(v4, xmmword_1BC4DFB80))), 0x1000100010001);
  result = vuzp1_s8(*v4.i8, *v4.i8);
  *(a2 + 1) = result.i32[0];
  *(a2 + 5) = BYTE5(v3) & 1;
  *(a2 + 6) = BYTE6(v3) & 1;
  return result;
}

uint64_t key path setter for LocalParticipantControlsView.capabilities : LocalParticipantControlsView(unsigned __int8 *a1, void **a2)
{
  v2 = 0x1000000000000;
  if (!a1[6])
  {
    v2 = 0;
  }

  v3 = 0x10000000000;
  if (!a1[5])
  {
    v3 = 0;
  }

  v4 = 0x100000000;
  if (!a1[4])
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!a1[3])
  {
    v5 = 0;
  }

  v6 = 0x10000;
  if (!a1[2])
  {
    v6 = 0;
  }

  v7 = 256;
  if (!a1[1])
  {
    v7 = 0;
  }

  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x288))(v7 | *a1 | v6 | v5 | v4 | v3 | v2);
}

void LocalParticipantControlsView.capabilities.getter()
{
  OUTLINED_FUNCTION_50_2();
  v1 = OUTLINED_FUNCTION_4_142();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_154();
  (*((*MEMORY[0x1E69E7D40] & v2) + 0x2C8))();
  v3 = *(v0 + 6);
  OUTLINED_FUNCTION_0_205();
  _s15ConversationKit28LocalParticipantControlsViewC0F5ModelVWOhTm_0(v0, v4);
  v5 = 0x1000000000000;
  if (!v3)
  {
    v5 = 0;
  }

  OUTLINED_FUNCTION_43_27(v5);
  OUTLINED_FUNCTION_49();
}

uint64_t LocalParticipantControlsView.capabilities.setter(unint64_t a1)
{
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_137();
  (*(v3 + 728))(v20);
  *v4 = a1 & 1;
  v5 = vdupq_n_s64(a1);
  v6 = OUTLINED_FUNCTION_24_51(v5, vshlq_u64(v5, xmmword_1BC4DFB80), xmmword_1BC4DFB90).u32[0];
  *(v7 + 1) = v6;
  *(v7 + 5) = BYTE5(a1) & 1;
  *(v7 + 6) = BYTE6(a1) & 1;
  v15 = OUTLINED_FUNCTION_30_35(v8, v7, v9, v10, v11, v12, v13, v14, v20[0]);
  v16(v15);
  OUTLINED_FUNCTION_13_2();
  result = (*((*v2 & v17) + 0x220))();
  if (result)
  {
    OUTLINED_FUNCTION_24_23();
    ObjectType = swift_getObjectType();
    (*(a1 + 24))(ObjectType, a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*LocalParticipantControlsView.capabilities.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  LocalParticipantControlsView.capabilities.getter();
  *(a1 + 14) = v3;
  *(a1 + 12) = v4;
  *(a1 + 8) = v5;
  return LocalParticipantControlsView.capabilities.modify;
}

uint64_t key path getter for LocalParticipantControlsView.isInComingCall : LocalParticipantControlsView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x298))();
  *a2 = result & 1;
  return result;
}

uint64_t LocalParticipantControlsView.isInComingCall.getter()
{
  v1 = OUTLINED_FUNCTION_4_142();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_154();
  (*((*MEMORY[0x1E69E7D40] & v2) + 0x2C8))();
  v3 = *(v0 + 8);
  OUTLINED_FUNCTION_0_205();
  _s15ConversationKit28LocalParticipantControlsViewC0F5ModelVWOhTm_0(v0, v4);
  return v3;
}

uint64_t LocalParticipantControlsView.isInComingCall.setter(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x2D8);
  v4 = v3(v25);
  *(v5 + 8) = a1;
  v12 = OUTLINED_FUNCTION_30_35(v4, v5, v6, v7, v8, v9, v10, v11, v25[0]);
  result = v13(v12);
  if (a1)
  {
    v15 = v3(v25);
    *(v16 + 9) = 0;
    v23 = OUTLINED_FUNCTION_30_35(v15, v16, v17, v18, v19, v20, v21, v22, v25[0]);
    return v24(v23);
  }

  return result;
}

uint64_t (*LocalParticipantControlsView.isInComingCall.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = LocalParticipantControlsView.isInComingCall.getter() & 1;
  return LocalParticipantControlsView.isInComingCall.modify;
}

uint64_t key path getter for LocalParticipantControlsView.isOutgoingCall : LocalParticipantControlsView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2B0))();
  *a2 = result & 1;
  return result;
}

uint64_t LocalParticipantControlsView.isOutgoingCall.getter()
{
  v1 = OUTLINED_FUNCTION_4_142();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_154();
  (*((*MEMORY[0x1E69E7D40] & v2) + 0x2C8))();
  v3 = *(v0 + 9);
  OUTLINED_FUNCTION_0_205();
  _s15ConversationKit28LocalParticipantControlsViewC0F5ModelVWOhTm_0(v0, v4);
  return v3;
}

uint64_t LocalParticipantControlsView.isOutgoingCall.setter(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x2D8);
  v4 = v3(v25);
  *(v5 + 9) = a1;
  v12 = OUTLINED_FUNCTION_30_35(v4, v5, v6, v7, v8, v9, v10, v11, v25[0]);
  result = v13(v12);
  if (a1)
  {
    v15 = v3(v25);
    *(v16 + 8) = 0;
    v23 = OUTLINED_FUNCTION_30_35(v15, v16, v17, v18, v19, v20, v21, v22, v25[0]);
    return v24(v23);
  }

  return result;
}

uint64_t (*LocalParticipantControlsView.isOutgoingCall.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = LocalParticipantControlsView.isOutgoingCall.getter() & 1;
  return LocalParticipantControlsView.isOutgoingCall.modify;
}

uint64_t key path setter for LocalParticipantControlsView.viewModel : LocalParticipantControlsView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of LocalParticipantControlsView.ViewModel(a1, v6);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x2D0))(v6);
}

uint64_t LocalParticipantControlsView.viewModel.didset(_BYTE *a1)
{
  v3 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_viewModel;
  swift_beginAccess();
  outlined init with copy of LocalParticipantControlsView.ViewModel(v1 + v6, v5);
  static LocalParticipantControlsView.ViewModel.== infix(_:_:)(a1, v5, v7, v8, v9, v10, v11, v12, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9]);
  v14 = v13;
  result = _s15ConversationKit28LocalParticipantControlsViewC0F5ModelVWOhTm_0(v5, type metadata accessor for LocalParticipantControlsView.ViewModel);
  if ((v14 & 1) == 0)
  {
    outlined init with copy of LocalParticipantControlsView.ViewModel(v1 + v6, v5);
    LocalParticipantControlsView.changed(_:from:)(v5, a1);
    return _s15ConversationKit28LocalParticipantControlsViewC0F5ModelVWOhTm_0(v5, type metadata accessor for LocalParticipantControlsView.ViewModel);
  }

  return result;
}

uint64_t LocalParticipantControlsView.viewModel.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_viewModel;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_viewModel, a1);
  return outlined init with copy of LocalParticipantControlsView.ViewModel(v2 + v4, a2);
}

uint64_t LocalParticipantControlsView.viewModel.setter(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_142();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = (v5 - v4);
  v7 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_viewModel;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_viewModel, v12);
  v8 = OUTLINED_FUNCTION_97();
  outlined init with copy of LocalParticipantControlsView.ViewModel(v8, v9);
  OUTLINED_FUNCTION_30_2(v1 + v7, v11);
  outlined assign with copy of LocalParticipantControlsView.ViewModel(a1, v1 + v7);
  swift_endAccess();
  LocalParticipantControlsView.viewModel.didset(v6);
  _s15ConversationKit28LocalParticipantControlsViewC0F5ModelVWOhTm_0(a1, type metadata accessor for LocalParticipantControlsView.ViewModel);
  return _s15ConversationKit28LocalParticipantControlsViewC0F5ModelVWOhTm_0(v6, type metadata accessor for LocalParticipantControlsView.ViewModel);
}

void (*LocalParticipantControlsView.viewModel.modify())(uint64_t a1, char a2, double a3)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_18_7(v2);
  OUTLINED_FUNCTION_4_142();
  v4 = *(v3 + 64);
  *(v1 + 32) = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  *(v1 + 40) = v5;
  v6 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_viewModel;
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_viewModel, v1);
  outlined init with copy of LocalParticipantControlsView.ViewModel(v0 + v6, v5);
  return LocalParticipantControlsView.viewModel.modify;
}

void LocalParticipantControlsView.viewModel.modify(uint64_t a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  if (a2)
  {
    outlined init with copy of LocalParticipantControlsView.ViewModel(v5, v4);
    LocalParticipantControlsView.viewModel.setter(v4);
    OUTLINED_FUNCTION_0_205();
    _s15ConversationKit28LocalParticipantControlsViewC0F5ModelVWOhTm_0(v5, v6);
  }

  else
  {
    LocalParticipantControlsView.viewModel.setter(v5);
  }

  free(v5);
  free(v4);

  free(v3);
}

uint64_t key path getter for LocalParticipantControlsView.effectsSelected : LocalParticipantControlsView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2E0))();
  *a2 = result & 1;
  return result;
}

uint64_t LocalParticipantControlsView.effectsSelected.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_effectsSelected;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t LocalParticipantControlsView.effectsSelected.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t key path getter for LocalParticipantControlsView.blurEnabled : LocalParticipantControlsView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2F8))();
  *a2 = result & 1;
  return result;
}

uint64_t LocalParticipantControlsView.blurEnabled.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_blurEnabled;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

id LocalParticipantControlsView.effectsSelected.setter(char a1, uint64_t *a2, void *a3)
{
  v7 = *a2;
  swift_beginAccess();
  *(v3 + v7) = a1;
  return LocalParticipantControlsView.effectsSelected.didset(a3, a2);
}

uint64_t LocalParticipantControlsView.blurEnabled.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

id LocalParticipantControlsView.effectsSelected.modify(uint64_t a1, char a2, void *a3, uint64_t *a4)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return LocalParticipantControlsView.effectsSelected.didset(a3, a4);
  }

  return result;
}

uint64_t key path getter for LocalParticipantControlsView.cinematicFramingIsEnabled : LocalParticipantControlsView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x310))();
  *a2 = result & 1;
  return result;
}

uint64_t LocalParticipantControlsView.cinematicFramingIsEnabled.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cinematicFramingIsEnabled;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t LocalParticipantControlsView.cinematicFramingIsEnabled.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t key path getter for LocalParticipantControlsView.reactionEffectGestureIsEnabled : LocalParticipantControlsView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x328))();
  *a2 = result & 1;
  return result;
}

uint64_t LocalParticipantControlsView.reactionEffectGestureIsEnabled.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_reactionEffectGestureIsEnabled;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t LocalParticipantControlsView.reactionEffectGestureIsEnabled.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t key path getter for LocalParticipantControlsView.studioLightIsEnabled : LocalParticipantControlsView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x340))();
  *a2 = result & 1;
  return result;
}

id LocalParticipantControlsView.effectsSelected.didset(void *a1, uint64_t *a2)
{
  v3 = *(v2 + *a1);
  v4 = *a2;
  OUTLINED_FUNCTION_4_5(v2 + *a2, a2);
  return [v3 setSelected_];
}

uint64_t LocalParticipantControlsView.studioLightIsEnabled.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_studioLightIsEnabled;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t LocalParticipantControlsView.studioLightIsEnabled.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t key path getter for LocalParticipantControlsView.isDisabled : LocalParticipantControlsView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x358))();
  *a2 = result & 1;
  return result;
}

void LocalParticipantControlsView.isDisabled.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_isDisabled;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    LocalParticipantControlsView.updateViews()();
  }
}

uint64_t LocalParticipantControlsView.isDisabled.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_isDisabled;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void LocalParticipantControlsView.isDisabled.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_isDisabled;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  LocalParticipantControlsView.isDisabled.didset(v4);
}

uint64_t LocalParticipantControlsView.isDisabled.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_isDisabled;
  v4 = OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_4_0(v4, v5);
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_28_3();
}

void LocalParticipantControlsView.isDisabled.modify(uint64_t a1)
{
  v1 = *a1;
  LocalParticipantControlsView.isDisabled.setter(*(*a1 + 32));

  free(v1);
}

uint64_t LocalParticipantControlsView.callAgainHUDViewIsHidden.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x190);
  v2 = v1();
  if (v2)
  {
    v3 = v2;
    [v2 alpha];
    v5 = v4;

    if (v5 == 0.0)
    {
      return 1;
    }
  }

  v6 = v1();
  if (!v6)
  {
    return 1;
  }

  return 0;
}

void LocalParticipantControlsView.needsVideoMessageControls.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_50_2();
  a17 = v19;
  a18 = v20;
  v21 = OUTLINED_FUNCTION_4_142();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_31_36();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &a9 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  OUTLINED_FUNCTION_13_2();
  v29 = *((*MEMORY[0x1E69E7D40] & v28) + 0x2C8);
  v29();
  v30 = v27[7];
  OUTLINED_FUNCTION_0_205();
  _s15ConversationKit28LocalParticipantControlsViewC0F5ModelVWOhTm_0(v27, v31);
  if (VideoMessageController.State.rawValue.getter(v30) == 0x676E696D726177 && v32 == 0xE700000000000000)
  {
    goto LABEL_16;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v34 & 1) == 0)
  {
    (v29)(v35);
    v36 = v24[7];
    OUTLINED_FUNCTION_0_205();
    _s15ConversationKit28LocalParticipantControlsViewC0F5ModelVWOhTm_0(v24, v37);
    if (VideoMessageController.State.rawValue.getter(v36) == 0x7964616572 && v38 == 0xE500000000000000)
    {
      goto LABEL_16;
    }

    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v40 & 1) == 0)
    {
      (v29)(v41);
      v42 = *(v18 + 7);
      OUTLINED_FUNCTION_0_205();
      _s15ConversationKit28LocalParticipantControlsViewC0F5ModelVWOhTm_0(v18, v43);
      if (VideoMessageController.State.rawValue.getter(v42) != 0x6552657669746361 || v44 != 0xEF676E6964726F63)
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
        OUTLINED_FUNCTION_247();

        goto LABEL_17;
      }

LABEL_16:
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_49();
}

void LocalParticipantControlsView.shouldNotHaveVideoMessageControls.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_50_2();
  a17 = v19;
  a18 = v20;
  v21 = OUTLINED_FUNCTION_4_142();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_31_36();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &a9 - v23;
  OUTLINED_FUNCTION_13_2();
  v26 = *((*MEMORY[0x1E69E7D40] & v25) + 0x2C8);
  v26();
  v27 = v24[7];
  OUTLINED_FUNCTION_0_205();
  _s15ConversationKit28LocalParticipantControlsViewC0F5ModelVWOhTm_0(v24, v28);
  if (VideoMessageController.State.rawValue.getter(v27) == 1953391987 && v29 == 0xE400000000000000)
  {
    goto LABEL_11;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v31 & 1) == 0)
  {
    (v26)(v32);
    v33 = *(v18 + 7);
    OUTLINED_FUNCTION_0_205();
    _s15ConversationKit28LocalParticipantControlsViewC0F5ModelVWOhTm_0(v18, v34);
    if (VideoMessageController.State.rawValue.getter(v33) != 0x7964616552746F6ELL || v35 != 0xE800000000000000)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();

      goto LABEL_12;
    }

LABEL_11:
  }

LABEL_12:
  OUTLINED_FUNCTION_49();
}

uint64_t LocalParticipantControlsView.shouldShowAllEffectsControls.getter()
{
  v1 = OUTLINED_FUNCTION_4_142();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_154();
  (*((*MEMORY[0x1E69E7D40] & v2) + 0x2C8))();
  v3 = *(v0 + 7);
  OUTLINED_FUNCTION_0_205();
  _s15ConversationKit28LocalParticipantControlsViewC0F5ModelVWOhTm_0(v0, v4);
  if (v3 > 1)
  {
    v6 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_137();
    if ((*(v5 + 880))())
    {
      v6 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_137();
      v6 = (*(v7 + 888))();
    }
  }

  return v6 & 1;
}

uint64_t LocalParticipantControlsView.shouldShowOnlyCameraFlipPreRecording.getter()
{
  v0 = 114;
  v1 = OUTLINED_FUNCTION_4_142();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_13_2();
  (*((*MEMORY[0x1E69E7D40] & v5) + 0x2C8))();
  v6 = *(v4 + 7);
  OUTLINED_FUNCTION_0_205();
  _s15ConversationKit28LocalParticipantControlsViewC0F5ModelVWOhTm_0(v4, v7);
  if (VideoMessageController.State.rawValue.getter(v6) == 0x7964616572 && v8 == 0xE500000000000000)
  {

    v0 = 1;
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_247();
  }

  return v0 & 1;
}

uint64_t LocalParticipantControlsView.shouldHideCameraFlipDuringRecording.getter()
{
  v1 = 99;
  v2 = OUTLINED_FUNCTION_4_142();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_67();
  (*((*MEMORY[0x1E69E7D40] & v3) + 0x2C8))();
  v4 = *(v0 + 7);
  OUTLINED_FUNCTION_0_205();
  _s15ConversationKit28LocalParticipantControlsViewC0F5ModelVWOhTm_0(v0, v5);
  if (VideoMessageController.State.rawValue.getter(v4) == 0x6552657669746361 && v6 == 0xEF676E6964726F63)
  {

    v1 = 1;
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_247();
  }

  return v1 & 1;
}

uint64_t key path getter for LocalParticipantControlsView.previewButtonConstraints : LocalParticipantControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3A8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for LocalParticipantControlsView.previewButtonConstraints : LocalParticipantControlsView(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3B0);

  return v2(v3);
}

uint64_t key path getter for LocalParticipantControlsView.videoMessagingState : LocalParticipantControlsView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3C0))();
  *a2 = result;
  return result;
}

uint64_t LocalParticipantControlsView.videoMessagingState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t LocalParticipantControlsView.videoMessagingState.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

void (*LocalParticipantControlsView.videoMessagingState.modify())(void *a1)
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_47(v1);
  v0[4] = swift_getKeyPath();
  v0[5] = swift_getKeyPath();
  v0[6] = static Published.subscript.modify();
  return LinkDetailHeaderView.invitedMemberHandles.modify;
}

uint64_t key path setter for LocalParticipantControlsView.$videoMessagingState : LocalParticipantControlsView(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x3E0))(v7);
}

uint64_t LocalParticipantControlsView.$videoMessagingState.getter()
{
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView__videoMessagingState, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMd, &_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t LocalParticipantControlsView.$videoMessagingState.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMR);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v5 + 16))(&v11[-v8 - 8], a1, v3, v7);
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView__videoMessagingState, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMd, &_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*LocalParticipantControlsView.$videoMessagingState.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMR);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64);
  v1[6] = __swift_coroFrameAllocStub(v5);
  v1[7] = __swift_coroFrameAllocStub(v5);
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView__videoMessagingState, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMd, &_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LocalParticipantControlsView.$videoMessagingState.modify;
}

void LocalParticipantControlsView.$videoMessagingState.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    LocalParticipantControlsView.$videoMessagingState.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    LocalParticipantControlsView.$videoMessagingState.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t key path getter for LocalParticipantControlsView.subscriptions : LocalParticipantControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3F0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for LocalParticipantControlsView.subscriptions : LocalParticipantControlsView(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3F8);

  return v2(v3);
}

double LocalParticipantControlsView.currentConstraints.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_3_12(a1);
  *(v2 + v4) = a1;

  return result;
}

uint64_t key path getter for LocalParticipantControlsView.timerSink : LocalParticipantControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x408))();
  *a2 = result;
  return result;
}

uint64_t key path setter for LocalParticipantControlsView.timerSink : LocalParticipantControlsView(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x410);

  return v2(v3);
}

uint64_t LocalParticipantControlsView.timerSink.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_timerSink;
  OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = a1;
}

uint64_t LocalParticipantControlsView.init()()
{
  v0 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v4 = v3 - v2;
  ObjectType = swift_getObjectType();
  v6 = *(v1 + 40);
  v7 = type metadata accessor for ConversationControlsRecipe(0);
  __swift_storeEnumTagSinglePayload(v4 + v6, 1, 1, v7);
  *(v4 + 3) = 0;
  *v4 = 0;
  *(v4 + 7) = 257;
  *(v4 + 9) = 0;
  v8 = (*(ObjectType + 1056))(v4);
  OUTLINED_FUNCTION_11_23();
  swift_deallocPartialClassInstance();
  return v8;
}

void LocalParticipantControlsView.init(viewModel:)()
{
  OUTLINED_FUNCTION_50_2();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMd, &_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMR);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_effectsButton;
  *&v1[v10] = closure #1 in variable initialization expression of LocalParticipantControlsView.effectsButton();
  v11 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton;
  *&v1[v11] = closure #1 in variable initialization expression of LocalParticipantControlsView.cameraBlurButton();
  v12 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cinematicFramingButton;
  *&v1[v12] = closure #1 in variable initialization expression of LocalParticipantControlsView.cinematicFramingButton();
  v13 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_collapseButton;
  *&v1[v13] = closure #1 in variable initialization expression of LocalParticipantControlsView.collapseButton();
  v14 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_rotateButton;
  *&v1[v14] = closure #1 in variable initialization expression of LocalParticipantControlsView.rotateButton();
  v15 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButton;
  *&v1[v15] = closure #1 in variable initialization expression of LocalParticipantControlsView.cameraFlipButton();
  v16 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButtonWithText;
  *&v1[v16] = closure #1 in variable initialization expression of LocalParticipantControlsView.cameraFlipButtonWithText();
  v17 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_reactionEffectGestureButton;
  *&v1[v17] = closure #1 in variable initialization expression of LocalParticipantControlsView.reactionEffectGestureButton();
  v18 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_studioLightButton;
  *&v1[v18] = closure #1 in variable initialization expression of LocalParticipantControlsView.studioLightButton();
  v19 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_videoPauseButton;
  *&v1[v19] = closure #1 in variable initialization expression of LocalParticipantControlsView.videoPauseButton();
  *&v1[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_videoMessageControls] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView____lazy_storage___videoMessageViewModel] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView____lazy_storage___spinnerView] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_hasInitializedShutterButton] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView____lazy_storage___shutterButton] = 0;
  v20 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_currentConstraints] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_controlsLayoutGuide;
  *&v1[v21] = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  *&v1[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_zoomButtonLayoutGuide] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_style] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_effectsSelected] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_blurEnabled] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cinematicFramingIsEnabled] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_reactionEffectGestureIsEnabled] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_studioLightIsEnabled] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_isDisabled] = 0;
  v22 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_tuFeatures;
  *&v1[v22] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *&v1[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_previewButtonConstraints] = v20;
  v23 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView__videoMessagingState;
  v30 = 1;
  Published.init(initialValue:)();
  (*(v6 + 32))(&v1[v23], v9, v4);
  *&v1[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_subscriptions] = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_timerSink] = 0;
  outlined init with copy of LocalParticipantControlsView.ViewModel(v3, &v1[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_viewModel]);
  v24 = objc_allocWithZone(type metadata accessor for ButtonsStackViewController(0));
  *&v1[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_buttonsStackViewController] = ButtonsStackViewController.init(isFrontFacingOrExternal:updateVideoLayers:)(OUTLINED_FUNCTION_3, 0, TPNumberPadCharacter.rawValue.getter, 0);
  v25 = type metadata accessor for LocalParticipantControlsView(0);
  v29.receiver = v1;
  v29.super_class = v25;
  v26 = objc_msgSendSuper2(&v29, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  LocalParticipantControlsView.commonInit()();

  OUTLINED_FUNCTION_0_205();
  _s15ConversationKit28LocalParticipantControlsViewC0F5ModelVWOhTm_0(v3, v27);
  OUTLINED_FUNCTION_49();
}

id LocalParticipantControlsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void LocalParticipantControlsView.init(coder:)()
{
  OUTLINED_FUNCTION_50_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMd, &_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMR);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21[-v5];
  v7 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_effectsButton;
  *(v0 + v7) = closure #1 in variable initialization expression of LocalParticipantControlsView.effectsButton();
  v8 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton;
  *(v0 + v8) = closure #1 in variable initialization expression of LocalParticipantControlsView.cameraBlurButton();
  v9 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cinematicFramingButton;
  *(v0 + v9) = closure #1 in variable initialization expression of LocalParticipantControlsView.cinematicFramingButton();
  v10 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_collapseButton;
  *(v0 + v10) = closure #1 in variable initialization expression of LocalParticipantControlsView.collapseButton();
  v11 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_rotateButton;
  *(v0 + v11) = closure #1 in variable initialization expression of LocalParticipantControlsView.rotateButton();
  v12 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButton;
  *(v0 + v12) = closure #1 in variable initialization expression of LocalParticipantControlsView.cameraFlipButton();
  v13 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButtonWithText;
  *(v0 + v13) = closure #1 in variable initialization expression of LocalParticipantControlsView.cameraFlipButtonWithText();
  v14 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_reactionEffectGestureButton;
  *(v0 + v14) = closure #1 in variable initialization expression of LocalParticipantControlsView.reactionEffectGestureButton();
  v15 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_studioLightButton;
  *(v0 + v15) = closure #1 in variable initialization expression of LocalParticipantControlsView.studioLightButton();
  v16 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_videoPauseButton;
  *(v0 + v16) = closure #1 in variable initialization expression of LocalParticipantControlsView.videoPauseButton();
  *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_videoMessageControls) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView____lazy_storage___videoMessageViewModel) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView____lazy_storage___spinnerView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_hasInitializedShutterButton) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView____lazy_storage___shutterButton) = 0;
  v17 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_currentConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_controlsLayoutGuide;
  *(v0 + v18) = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_zoomButtonLayoutGuide) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_style) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_effectsSelected) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_blurEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cinematicFramingIsEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_reactionEffectGestureIsEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_studioLightIsEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_isDisabled) = 0;
  v19 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_tuFeatures;
  *(v0 + v19) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_previewButtonConstraints) = v17;
  v20 = OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView__videoMessagingState;
  v21[15] = 1;
  Published.init(initialValue:)();
  (*(v3 + 32))(v0 + v20, v6, v1);
  *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_subscriptions) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_timerSink) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void LocalParticipantControlsView.commonInit()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMR);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v54[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GGMR);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16_67();
  v13 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v14) + 0x3D8))();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Published<VideoMessageController.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMR);
  lazy protocol witness table accessor for type VideoMessageController.State and conformance VideoMessageController.State();
  Publisher<>.removeDuplicates()();
  v15 = v8;
  v16 = v13;
  (*(v5 + 8))(v15, v3);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<VideoMessageController.State>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GGMR);
  Publisher<>.sink(receiveValue:)();

  (*(v11 + 8))(v1, v9);
  OUTLINED_FUNCTION_11_23();
  v18 = (*((*v13 & v17) + 0x400))(v54);
  AnyCancellable.store(in:)();

  (v18)(v54, 0);
  OUTLINED_FUNCTION_11_23();
  if (!(*((*v13 & v19) + 0x220))())
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_18_8();
  ObjectType = swift_getObjectType();
  v21 = (*(v18 + 16))(ObjectType, v18);
  swift_unknownObjectRelease();
  if (!v21)
  {
    goto LABEL_18;
  }

  v22 = objc_opt_self();
  v23 = [v22 currentDevice];
  v24 = [v23 userInterfaceIdiom];

  if (v24 != 1)
  {
    goto LABEL_11;
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
LABEL_11:
    v25 = [v22 currentDevice];
    v26 = [v25 userInterfaceIdiom];

    if (v26)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_4_0(&static AmbientState.isPresented, v54);
    if (static AmbientState.isPresented != 1)
    {
      goto LABEL_17;
    }

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for shared);
    }

    if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
    {
LABEL_17:

LABEL_18:
      v49 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
      [v2 addLayoutGuide_];
      OUTLINED_FUNCTION_11_23();
      v51 = *((*v16 & v50) + 0x240);
      v52 = v49;
      v51(v49);
      LocalParticipantControlsView.defaultButtonConstraints()();
      OUTLINED_FUNCTION_11_23();
      (*((*v16 & v53) + 0x3B0))();

      return;
    }
  }

  OUTLINED_FUNCTION_33_6();
  v27 += 77;
  v28 = *v27;
  v29 = (*v27)();
  v30 = [v29 view];

  if (!v30)
  {
    __break(1u);
    goto LABEL_20;
  }

  [v30 setTranslatesAutoresizingMaskIntoConstraints_];

  v31 = v28();
  [(objc_class *)v21 addChildViewController:v31];

  v32 = v28();
  v33 = [v32 view];

  if (!v33)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v2 addSubview_];

  v34 = v28();
  [v34 didMoveToParentViewController_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1BC4BA930;
  v36 = v28();
  v37 = [v36 view];

  if (!v37)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v38 = [v37 topAnchor];

  v39 = [v2 safeAreaLayoutGuide];
  v40 = [v39 topAnchor];

  v41 = [v38 constraintEqualToAnchor_];
  *(v35 + 32) = v41;
  v42 = v28();
  v43 = [v42 view];

  if (v43)
  {
    v44 = objc_opt_self();
    v45 = [v43 trailingAnchor];

    v46 = [v2 trailingAnchor];
    v47 = [v45 constraintEqualToAnchor:v46 constant:-10.0];

    *(v35 + 40) = v47;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
    OUTLINED_FUNCTION_50_22();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v44 activateConstraints_];

    v21 = isa;
    goto LABEL_17;
  }

LABEL_22:
  __break(1u);
}

void closure #1 in LocalParticipantControlsView.commonInit()(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x2D8))(v7);
    *(v6 + 7) = v2;
    v5(v7, 0);
  }
}

uint64_t LocalParticipantControlsView.defaultButtonConstraints()()
{
  v1 = v0;
  static Layout.LocalParticipantViewCameraControls.iOS.getter(v38);
  v2 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA930;
  v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_collapseButton);
  v5 = [v4 leadingAnchor];
  v6 = [v1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:v2];

  *(v3 + 32) = v7;
  v8 = [v4 topAnchor];
  v9 = [v1 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:v2];

  *(v3 + 40) = v10;
  v37 = v3;
  v11 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButtonWithText);
  v12 = [v11 centerXAnchor];
  v13 = [v1 centerXAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  v15 = [v11 bottomAnchor];
  v16 = [v1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:-v2];

  outlined bridged method (mbnn) of @objc NSLayoutConstraint.identifier.setter(0xD00000000000001ELL, 0x80000001BC518FC0, v14);
  outlined bridged method (mbnn) of @objc NSLayoutConstraint.identifier.setter(0xD00000000000001DLL, 0x80000001BC518FE0, v17);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA930;
  *(inited + 32) = v14;
  *(inited + 40) = v17;
  v19 = v14;
  v20 = v17;
  v21 = specialized Array.append<A>(contentsOf:)(inited);
  v22 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x238))(v21);
  if (v22)
  {
    v23 = v22;
    v24 = LocalParticipantControlsView.zoomButtonDiameter()();
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_1BC4BA7F0;
    v26 = [v23 leadingAnchor];
    v27 = [v1 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:v2];

    *(v25 + 32) = v28;
    v29 = [v23 bottomAnchor];
    v30 = [v1 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:-v2];

    *(v25 + 40) = v31;
    v32 = [v23 widthAnchor];
    v33 = [v32 constraintEqualToConstant_];

    *(v25 + 48) = v33;
    v34 = [v23 heightAnchor];
    v35 = [v34 constraintEqualToConstant_];

    *(v25 + 56) = v35;
    specialized Array.append<A>(contentsOf:)(v25);
  }

  return v37;
}

uint64_t LocalParticipantControlsView.buttons(for:)(_BYTE *a1)
{
  v16 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_collapseButton);
  OUTLINED_FUNCTION_34_37();
  OUTLINED_FUNCTION_2_162();
  if (v4)
  {
    OUTLINED_FUNCTION_5_137();
  }

  v5 = OUTLINED_FUNCTION_19_51();
  if (a1[2] == 1)
  {
    v6 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_effectsButton);
    OUTLINED_FUNCTION_34_37();
    OUTLINED_FUNCTION_2_162();
    if (v4)
    {
      OUTLINED_FUNCTION_5_137();
    }

    v5 = OUTLINED_FUNCTION_19_51();
  }

  if (a1[4] == 1)
  {
    v7 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_rotateButton);
    OUTLINED_FUNCTION_34_37();
    OUTLINED_FUNCTION_2_162();
    if (v4)
    {
      OUTLINED_FUNCTION_5_137();
    }

    v5 = OUTLINED_FUNCTION_19_51();
  }

  if (a1[1] == 1)
  {
    v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton);
    OUTLINED_FUNCTION_34_37();
    OUTLINED_FUNCTION_2_162();
    if (v4)
    {
      OUTLINED_FUNCTION_5_137();
    }

    v5 = OUTLINED_FUNCTION_19_51();
  }

  if (a1[3] == 1)
  {
    v9 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButton);
    OUTLINED_FUNCTION_34_37();
    OUTLINED_FUNCTION_2_162();
    if (v4)
    {
      OUTLINED_FUNCTION_5_137();
    }

    OUTLINED_FUNCTION_19_51();
    v10 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButtonWithText);
    OUTLINED_FUNCTION_34_37();
    OUTLINED_FUNCTION_2_162();
    if (v4)
    {
      OUTLINED_FUNCTION_5_137();
    }

    v5 = OUTLINED_FUNCTION_19_51();
  }

  if (*a1 == 1)
  {
    v11 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cinematicFramingButton);
    OUTLINED_FUNCTION_34_37();
    OUTLINED_FUNCTION_2_162();
    if (v4)
    {
      OUTLINED_FUNCTION_5_137();
    }

    v5 = OUTLINED_FUNCTION_19_51();
  }

  if (a1[6] == 1)
  {
    v12 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_studioLightButton);
    OUTLINED_FUNCTION_34_37();
    OUTLINED_FUNCTION_2_162();
    if (v4)
    {
      OUTLINED_FUNCTION_5_137();
    }

    v5 = OUTLINED_FUNCTION_19_51();
  }

  if (a1[5] == 1)
  {
    v13 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_reactionEffectGestureButton);
    OUTLINED_FUNCTION_34_37();
    OUTLINED_FUNCTION_2_162();
    if (v4)
    {
      OUTLINED_FUNCTION_5_137();
    }

    v5 = OUTLINED_FUNCTION_19_51();
  }

  switch(a1[7])
  {
    case 2:
    case 3:
    case 5:
      goto LABEL_37;
    case 4:
      v14 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_videoPauseButton);
      MEMORY[0x1BFB20CC0]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v5 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_37:
      (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1F0))(v5);
      MEMORY[0x1BFB20CC0]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      break;
    default:
      return v16;
  }

  return v16;
}

Swift::Void __swiftcall LocalParticipantControlsView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for LocalParticipantControlsView(0);
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  LocalParticipantControlsView.layoutViews()();
}

Swift::Void __swiftcall LocalParticipantControlsView.updateButtonUserInteraction(for:shouldHaveUserInteraction:)(UIControl *a1, Swift::Bool shouldHaveUserInteraction)
{
  v3 = shouldHaveUserInteraction;
  v4 = 0.0;
  if (shouldHaveUserInteraction)
  {
    v4 = 1.0;
  }

  UIControl._cnkContentAlpha.setter(v4);

  [(UIControl *)a1 setUserInteractionEnabled:v3];
}

void UIControl._cnkContentAlpha.setter(double a1)
{
  type metadata accessor for InCallControlButton();
  OUTLINED_FUNCTION_170();
  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_3_52();
    v4 = *(v3 + 488);
    v5 = v1;
    v4(a1);
  }

  else
  {

    [v1 setAlpha_];
  }
}

Swift::Void __swiftcall LocalParticipantControlsView.handleEffectsTapped()()
{
  type metadata accessor for SpringBoardUtilities();
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)();
}

double closure #1 in LocalParticipantControlsView.handleEffectsTapped()(char a1, uint64_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_4_5(a2 + 16, a2);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      OUTLINED_FUNCTION_3_52();
      v8 = v7;
      (*(v6 + 544))();
      OUTLINED_FUNCTION_24_23();

      if (v8)
      {
        swift_getObjectType();
        OUTLINED_FUNCTION_32_30();
        v9(7);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BC4BA940;
    OUTLINED_FUNCTION_4_5(a2 + 16, v12);
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      *(v13 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_effectsButton);

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIControl, 0x1E69DC8F0);
      v15 = String.init<A>(reflecting:)();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v11 + 32) = v15;
    *(v11 + 40) = v17;
    v18 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Ignoring tap on %@ button. Springboard wasn't unlocked.", 55, 2, &dword_1BBC58000, v10, v18, v11);
  }

  return result;
}

Swift::Void __swiftcall LocalParticipantControlsView.handleCameraBlurTapped()()
{
  [*(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton) setSelected_];
  OUTLINED_FUNCTION_13_2();
  if ((*((*MEMORY[0x1E69E7D40] & v1) + 0x220))())
  {
    OUTLINED_FUNCTION_24_23();
    swift_getObjectType();
    OUTLINED_FUNCTION_32_30();
    v2(8);

    swift_unknownObjectRelease();
  }
}

uint64_t LocalParticipantControlsView.handleCinematicFramingTapped()()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x220))();
  if (result)
  {
    OUTLINED_FUNCTION_18_8();
    swift_getObjectType();
    v2 = OUTLINED_FUNCTION_36_37();
    v3(v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t LocalParticipantControlsView.handleVideoMessageButtonTapped()(const char *a1)
{
  v3 = v1;
  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Logger.videoMessaging);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BBC58000, v5, v6, a1, v7, 2u);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x220))();
  if (result)
  {
    OUTLINED_FUNCTION_18_8();
    swift_getObjectType();
    v9 = OUTLINED_FUNCTION_36_37();
    v10(v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall LocalParticipantControlsView.handleShutterButtonTapped()()
{
  v0 = OUTLINED_FUNCTION_4_142();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v3 = v2 - v1;
  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Logger.videoMessaging);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BBC58000, v5, v6, "Shutter for video message button tapped", v7, 2u);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  OUTLINED_FUNCTION_22_49();
  (*(v8 + 712))();
  v9 = *(v3 + 7);
  OUTLINED_FUNCTION_0_205();
  _s15ConversationKit28LocalParticipantControlsViewC0F5ModelVWOhTm_0(v3, v10);
  if (VideoMessageController.State.rawValue.getter(v9) == 0x6552657669746361 && v11 == 0xEF676E6964726F63)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      OUTLINED_FUNCTION_22_49();
      if (!(*(v14 + 544))())
      {
        return;
      }

      OUTLINED_FUNCTION_24_23();
      v15 = 0;
      goto LABEL_15;
    }
  }

  OUTLINED_FUNCTION_22_49();
  if (!(*(v16 + 544))())
  {
    return;
  }

  OUTLINED_FUNCTION_24_23();
  v15 = 3;
LABEL_15:
  swift_getObjectType();
  OUTLINED_FUNCTION_32_30();
  v17(v15);
  swift_unknownObjectRelease();
}

void __swiftcall LocalParticipantControlsView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for LocalParticipantControlsView(0);
  v7 = [(UIView_optional *)&v11 hitTest:isa withEvent:x, y];
  if (v7)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    v8 = v7;
    v9 = v3;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
    }
  }
}

id LocalParticipantControlsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id LocalParticipantControlsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalParticipantControlsView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall LocalParticipantControlsView.addVideoMessageControls()()
{
  v2 = v0;
  v3 = type metadata accessor for VideoMessageControlsView(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_13_2();
  v8 = MEMORY[0x1E69E7D40];
  if (!(*((*MEMORY[0x1E69E7D40] & v9) + 0x220))())
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_18_8();
  ObjectType = swift_getObjectType();
  v11 = (*(v1 + 16))(ObjectType);
  swift_unknownObjectRelease();
  if (!v11)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_33_6();
  if (!(*(v12 + 352))())
  {
    OUTLINED_FUNCTION_33_6();
    (*(v15 + 376))();
    *(v7 + v3[5]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
    swift_storeEnumTagMultiPayload();
    *(v7 + v3[6]) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *v7 = swift_getKeyPath();
    *(v7 + 8) = 0;
    v16 = (v7 + v3[7]);
    type metadata accessor for VideoMessagePlayerViewModel(0);
    _s15ConversationKit27VideoMessagePlayerViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel, type metadata accessor for VideoMessagePlayerViewModel);
    *v16 = ObservedObject.init(wrappedValue:)();
    v16[1] = v17;
    v18 = v7 + v3[8];
    State.init(wrappedValue:)();
    *v18 = v59;
    *(v18 + 8) = v60;
    *(v7 + v3[9]) = 0;
    *(v7 + v3[10]) = 0x3FC51EB851EB851FLL;
    *(v7 + v3[11]) = 0x4077C00000000000;
    _s15ConversationKit27VideoMessagePlayerViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type VideoMessageControlsView and conformance VideoMessageControlsView, type metadata accessor for VideoMessageControlsView);
    OUTLINED_FUNCTION_50_22();
    v19 = View.inLockScreenHostingController()();
    _s15ConversationKit28LocalParticipantControlsViewC0F5ModelVWOhTm_0(v7, type metadata accessor for VideoMessageControlsView);
    v20 = v19;
    v21 = [v20 view];
    if (v21)
    {
      v22 = v21;
      [v21 setTranslatesAutoresizingMaskIntoConstraints_];

      v23 = [v20 view];
      if (v23)
      {
        v24 = v23;
        v25 = [objc_opt_self() clearColor];
        [v24 setBackgroundColor_];

        v26 = [v20 view];
        if (v26)
        {
          v27 = v26;
          [v2 insertSubview:v26 atIndex:0];

          [v11 addChildViewController_];
          [v20 didMoveToParentViewController_];
          v28 = [v2 superview];
          if (v28)
          {
            v29 = v28;
            [v28 bounds];
            OUTLINED_FUNCTION_6_3();
          }

          else
          {
            [v2 bounds];
            OUTLINED_FUNCTION_6_3();
          }

          v61.origin.x = OUTLINED_FUNCTION_5_72();
          Height = CGRectGetHeight(v61);
          [v2 bounds];
          v62.origin.x = OUTLINED_FUNCTION_5_72();
          v63 = CGRectIntersection(v62, v64);
          v31 = CGRectGetHeight(v63);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_1BC4BA7F0;
          v33 = [v20 view];
          if (v33)
          {
            v34 = v33;
            v35 = [v33 leadingAnchor];

            v36 = [v2 safeAreaLayoutGuide];
            v37 = [v36 leadingAnchor];

            v38 = [v35 constraintEqualToAnchor_];
            *(v32 + 32) = v38;
            v39 = [v20 view];
            if (v39)
            {
              v40 = v39;
              v41 = [v39 trailingAnchor];

              v42 = [v2 safeAreaLayoutGuide];
              v43 = [v42 trailingAnchor];

              v44 = [v41 constraintEqualToAnchor_];
              *(v32 + 40) = v44;
              v45 = [v20 view];
              if (v45)
              {
                v46 = v45;
                v47 = [v45 topAnchor];

                v48 = [v2 topAnchor];
                v49 = [v47 constraintEqualToAnchor_];

                *(v32 + 48) = v49;
                v50 = [v20 view];

                if (v50)
                {
                  v51 = objc_opt_self();
                  v52 = [v50 bottomAnchor];

                  v53 = [v2 bottomAnchor];
                  v54 = [v52 constraintEqualToAnchor:v53 constant:Height - v31];

                  *(v32 + 56) = v54;
                  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
                  OUTLINED_FUNCTION_50_22();
                  isa = Array._bridgeToObjectiveC()().super.isa;

                  [v51 activateConstraints_];

                  OUTLINED_FUNCTION_11_23();
                  v57 = *((*v8 & v56) + 0x168);
                  v58 = v20;
                  v57(v20);

LABEL_18:
                  OUTLINED_FUNCTION_80();
                  return;
                }

LABEL_25:
                __break(1u);
                return;
              }

LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_80();
}

Swift::Void __swiftcall LocalParticipantControlsView.removeVideoMessageControls()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x160);
  v3 = v2();
  if (v3)
  {
    v4 = v3;
    [v3 willMoveToParentViewController_];
  }

  v5 = v2();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 view];

    if (!v7)
    {
      __break(1u);
      return;
    }

    [v7 removeFromSuperview];
  }

  v8 = v2();
  if (v8)
  {
    v9 = v8;
    [v8 removeFromParentViewController];
  }

  (*((*v1 & *v0) + 0x168))(0);
  OUTLINED_FUNCTION_13_2();
  v11 = *((*v1 & v10) + 0x410);

  v11(0);
}

Swift::Void __swiftcall LocalParticipantControlsView.startElapsedTimeCounter()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSiGMd, &_s7Combine10PublishersO3MapVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSiGMR);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_67();
  v9 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & v10) + 0x178);
  v12 = v11();
  static String.localizedStringWithFormat(_:_:)();
  OUTLINED_FUNCTION_13_2();
  (*((*v9 & v13) + 0x158))();

  v14 = v11();
  OUTLINED_FUNCTION_3_52();
  (*(v15 + 248))(2);

  OUTLINED_FUNCTION_20();
  *(swift_allocObject() + 16) = 0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTimer, 0x1E695DFF0);
  v16 = [objc_opt_self() currentRunLoop];
  v17 = type metadata accessor for NSRunLoop.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v17);
  v18 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v23 = v18;
  type metadata accessor for NSTimer.TimerPublisher();
  _s15ConversationKit27VideoMessagePlayerViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x1E6969F70]);
  v19 = ConnectablePublisher.autoconnect()();

  v23 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  Publisher.map<A>(_:)();

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.Autoconnect<NSTimer.TimerPublisher>, Int> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSiGMd, &_s7Combine10PublishersO3MapVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSiGMR);
  v20 = Publisher<>.sink(receiveValue:)();

  (*(v7 + 8))(v0, v5);
  OUTLINED_FUNCTION_11_23();
  (*((*MEMORY[0x1E69E7D40] & v21) + 0x410))(v20);
}

void closure #1 in LocalParticipantControlsView.startElapsedTimeCounter()(uint64_t a1@<X1>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v6;
    *a2 = v6;
  }
}

void closure #2 in LocalParticipantControlsView.startElapsedTimeCounter()(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x178);
  v7 = COERCE_DOUBLE(v6());
  if (v2 < 1)
  {
    goto LABEL_6;
  }

  v8 = v2;
  if (one-time initialization token for timeFormatter != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v9 = [static NSDateComponentsFormatter.timeFormatter stringFromTimeInterval_];
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
LABEL_6:
      v11 = static String.localizedStringWithFormat(_:_:)();
      v13 = v14;
    }

    (*((*v5 & **&v7) + 0x158))(v11, v13);

    v15 = v6();
    v16 = *&v15[OBJC_IVAR____TtC15ConversationKit27VideoMessagePlayerViewModel_shutterModel];

    v8 = *(v16 + 16);
    v7 = v8;

    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v8 <= -9.22337204e18)
    {
      goto LABEL_16;
    }

    if (v8 < 9.22337204e18)
    {
      break;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
  }

  if (v2 >= v8 && (v17 = (*((*v5 & *v4) + 0x410))(0), (*((*v5 & *v4) + 0x220))(v17)))
  {
    v19 = v18;
    ObjectType = swift_getObjectType();
    (*(v19 + 8))(3, ObjectType, v19);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

Swift::Void __swiftcall LocalParticipantControlsView.showLoading()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1C0);
  v2 = v1();
  v16 = [v2 superview];

  v3 = v16;
  if (!v16)
  {
    v4 = v1();
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];

    v5 = v1();
    [v0 addSubview_];

    v6 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BC4BA930;
    v8 = v1();
    v9 = [v8 centerYAnchor];

    v10 = [v0 centerYAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v7 + 32) = v11;
    v12 = v1();
    v13 = [v12 centerXAnchor];

    v14 = [v0 centerXAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v7 + 40) = v15;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
    OUTLINED_FUNCTION_50_22();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 activateConstraints_];
    v3 = isa;
  }
}

Swift::Void __swiftcall LocalParticipantControlsView.hideLoading()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C0))();
  [v1 removeFromSuperview];
}

uint64_t LocalParticipantControlsView.buttonLayoutConstraints(for:)(uint64_t a1)
{
  if (!a1)
  {
    return LocalParticipantControlsView.landscapeLeftButtonConstraints()();
  }

  if (a1 == 2)
  {
    return LocalParticipantControlsView.landscapeRightButtonConstraints()();
  }

  return LocalParticipantControlsView.defaultButtonConstraints()();
}

double LocalParticipantControlsView.zoomButtonDiameter()()
{
  v1 = objc_opt_self();
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  [v1 circleDiameterForContentSize_];
  v5 = v4;

  return v5;
}

uint64_t LocalParticipantControlsView.landscapeLeftButtonConstraints()()
{
  v1 = v0;
  static Layout.LocalParticipantViewCameraControls.iOS.getter(v41);
  v2 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA930;
  v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_collapseButton);
  v5 = [v4 trailingAnchor];
  v6 = [v1 trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:0.0 - v2];

  *(v3 + 32) = v7;
  v8 = [v4 topAnchor];
  v9 = [v1 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:v2 + 0.0];

  *(v3 + 40) = v10;
  v40 = v3;
  v11 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButtonWithText);
  [v11 bounds];
  v14 = (v12 - v13) * -0.5;
  v15 = [v11 leadingAnchor];
  v16 = [v1 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:v2 + v14];

  v18 = [v11 centerYAnchor];
  v19 = [v1 centerYAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  outlined bridged method (mbnn) of @objc NSLayoutConstraint.identifier.setter(0xD000000000000018, 0x80000001BC519020, v17);
  outlined bridged method (mbnn) of @objc NSLayoutConstraint.identifier.setter(0xD000000000000018, 0x80000001BC519040, v20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA930;
  *(inited + 32) = v17;
  *(inited + 40) = v20;
  v22 = v17;
  v23 = v20;
  v24 = specialized Array.append<A>(contentsOf:)(inited);
  v25 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x238))(v24);
  if (v25)
  {
    v26 = v25;
    v27 = LocalParticipantControlsView.zoomButtonDiameter()();
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_1BC4BA7F0;
    v29 = [v26 leadingAnchor];
    v30 = [v1 leadingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:v2];

    *(v28 + 32) = v31;
    v32 = [v26 topAnchor];
    v33 = [v1 topAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 constant:v2];

    *(v28 + 40) = v34;
    v35 = [v26 widthAnchor];
    v36 = [v35 constraintEqualToConstant_];

    *(v28 + 48) = v36;
    v37 = [v26 heightAnchor];
    v38 = [v37 constraintEqualToConstant_];

    *(v28 + 56) = v38;
    specialized Array.append<A>(contentsOf:)(v28);
  }

  return v40;
}

uint64_t LocalParticipantControlsView.landscapeRightButtonConstraints()()
{
  v1 = v0;
  static Layout.LocalParticipantViewCameraControls.iOS.getter(v42);
  v2 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA930;
  v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_collapseButton);
  v5 = [v4 leadingAnchor];
  v6 = [v1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:v2];

  *(v3 + 32) = v7;
  v8 = [v4 bottomAnchor];
  v9 = [v1 bottomAnchor];
  v10 = -v2;
  v11 = [v8 constraintEqualToAnchor:v9 constant:-v2];

  *(v3 + 40) = v11;
  v41 = v3;
  v12 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButtonWithText);
  [v12 bounds];
  v15 = (v13 - v14) * 0.5;
  v16 = [v12 trailingAnchor];
  v17 = [v1 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:v15 - v2];

  v19 = [v12 centerYAnchor];
  v20 = [v1 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  outlined bridged method (mbnn) of @objc NSLayoutConstraint.identifier.setter(0xD000000000000019, 0x80000001BC519060, v18);
  outlined bridged method (mbnn) of @objc NSLayoutConstraint.identifier.setter(0xD000000000000018, 0x80000001BC519040, v21);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA930;
  *(inited + 32) = v18;
  *(inited + 40) = v21;
  v23 = v18;
  v24 = v21;
  v25 = specialized Array.append<A>(contentsOf:)(inited);
  v26 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x238))(v25);
  if (v26)
  {
    v27 = v26;
    v28 = LocalParticipantControlsView.zoomButtonDiameter()();
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_1BC4BA7F0;
    v30 = [v27 trailingAnchor];
    v31 = [v1 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:v10];

    *(v29 + 32) = v32;
    v33 = [v27 bottomAnchor];
    v34 = [v1 bottomAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:v10];

    *(v29 + 40) = v35;
    v36 = [v27 widthAnchor];
    v37 = [v36 constraintEqualToConstant_];

    *(v29 + 48) = v37;
    v38 = [v27 heightAnchor];
    v39 = [v38 constraintEqualToConstant_];

    *(v29 + 56) = v39;
    specialized Array.append<A>(contentsOf:)(v29);
  }

  return v41;
}

void UIControl._cnkContentAlpha.getter()
{
  type metadata accessor for InCallControlButton();
  OUTLINED_FUNCTION_170();
  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_3_52();
    v2 = *(v1 + 480);
    v3 = v0;
    v2();
  }

  else
  {

    [v0 alpha];
  }
}

uint64_t UIControl._cnkContentAlpha.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  UIControl._cnkContentAlpha.getter();
  *v1 = v2;
  return OUTLINED_FUNCTION_8_1();
}

uint64_t outlined assign with take of ConversationControlsRecipe?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of ConversationControlsRecipe?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of LocalParticipantControlsView.ViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of LocalParticipantControlsView.ViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t _s15ConversationKit28LocalParticipantControlsViewC0F5ModelVWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s15ConversationKit27VideoMessagePlayerViewModelCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type LocalParticipantControlsView.Style and conformance LocalParticipantControlsView.Style()
{
  result = lazy protocol witness table cache variable for type LocalParticipantControlsView.Style and conformance LocalParticipantControlsView.Style;
  if (!lazy protocol witness table cache variable for type LocalParticipantControlsView.Style and conformance LocalParticipantControlsView.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalParticipantControlsView.Style and conformance LocalParticipantControlsView.Style);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocalParticipantControlsView.Capabilities and conformance LocalParticipantControlsView.Capabilities()
{
  result = lazy protocol witness table cache variable for type LocalParticipantControlsView.Capabilities and conformance LocalParticipantControlsView.Capabilities;
  if (!lazy protocol witness table cache variable for type LocalParticipantControlsView.Capabilities and conformance LocalParticipantControlsView.Capabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalParticipantControlsView.Capabilities and conformance LocalParticipantControlsView.Capabilities);
  }

  return result;
}

void type metadata completion function for LocalParticipantControlsView(uint64_t a1)
{
  type metadata accessor for LocalParticipantControlsView.ViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<VideoMessageController.State>();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LocalParticipantControlsView.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for LocalParticipantControlsView.ViewModel(uint64_t a1)
{
  type metadata accessor for ConversationControlsRecipe?(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for ConversationControlsRecipe?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ConversationControlsRecipe?)
  {
    type metadata accessor for ConversationControlsRecipe(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ConversationControlsRecipe?);
    }
  }
}

_DWORD *__swift_memcpy7_1(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LocalParticipantControlsView.Capabilities(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[7])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
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

uint64_t storeEnumTagSinglePayload for LocalParticipantControlsView.Capabilities(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void outlined bridged method (mbnn) of @objc NSLayoutConstraint.identifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0](a1);

  [a3 setIdentifier_];
}

uint64_t ClarityUIActionGlyphLabel.actionGlyph.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ClarityUIActionGlyphLabel.init(actionGlyph:title:icon:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>, uint64_t a8)
{
  v21[0] = a4;
  v21[1] = a5;
  v21[2] = a6;
  v21[3] = a8;
  v12 = type metadata accessor for ClarityUIActionGlyphLabel(0, v21);
  *(a7 + v12[15]) = 0;
  v13 = v12[16];
  *(a7 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19MultimodalListStyleV6LayoutO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19MultimodalListStyleV6LayoutO_GMR);
  swift_storeEnumTagMultiPayload();
  v14 = v12[17];
  static ClarityUIMetrics.standardSpacing.getter();
  *(a7 + v14) = v15 * 0.5;
  v16 = v12[18];
  static ClarityUIMetrics.standardSpacing.getter();
  *(a7 + v16) = v17 * -0.5;
  *(a7 + v12[19]) = 0x4018000000000000;
  *(a7 + v12[20]) = xmmword_1BC4E60B0;
  *a7 = a1;

  v19 = a2(v18);
  a3(v19);
}

uint64_t ClarityUIActionGlyphLabel.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  OUTLINED_FUNCTION_1();
  v52 = v3;
  v54 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA6SpacerV_15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVtGSgMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVtGSgMR);
  *&v47 = a1[2];
  swift_getTupleTypeMetadata2();
  v7 = type metadata accessor for TupleView();
  OUTLINED_FUNCTION_5_138(v7);
  OUTLINED_FUNCTION_7_2();
  v8 = type metadata accessor for HStack();
  v46 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit23IconBoundsPreferenceKey33_A5A29C6D3794560EE297715D1CD250B5LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit23IconBoundsPreferenceKey33_A5A29C6D3794560EE297715D1CD250B5LLVGMR);
  OUTLINED_FUNCTION_7_2();
  v9 = type metadata accessor for ModifiedContent();
  v10 = OUTLINED_FUNCTION_6_120();
  v45 = v10;
  v11 = a1[5];
  OUTLINED_FUNCTION_2_163();
  v15 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v12, v13, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit23IconBoundsPreferenceKey33_A5A29C6D3794560EE297715D1CD250B5LLVGMR, v14);
  v68 = v11;
  v69 = v15;
  v53 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v64 = v8;
  v65 = v9;
  v66 = v10;
  v67 = WitnessTable;
  v17 = type metadata accessor for Label();
  OUTLINED_FUNCTION_1();
  v48 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI26_OverlayPreferenceModifierVy15ConversationKit010IconBoundsD3Key33_A5A29C6D3794560EE297715D1CD250B5LLVAA14GeometryReaderVyAA15ModifiedContentVyAKyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA6VStackVyAOyAKyAKyAD17ActionGlyphCircleAFLLVAA13_OffsetEffectVGAA011_BackgroundE0VyAA07_ShadowY0VyAA6CircleVGGG_AQtGGtGGAA12_FrameLayoutVGAWGSgGSgGMd, &_s7SwiftUI26_OverlayPreferenceModifierVy15ConversationKit010IconBoundsD3Key33_A5A29C6D3794560EE297715D1CD250B5LLVAA14GeometryReaderVyAA15ModifiedContentVyAKyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA6VStackVyAOyAKyAKyAD17ActionGlyphCircleAFLLVAA13_OffsetEffectVGAA011_BackgroundE0VyAA07_ShadowY0VyAA6CircleVGGG_AQtGGtGGAA12_FrameLayoutVGAWGSgGSgGMR);
  v22 = type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_1();
  v49 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v44 - v28;
  *&v30 = a1[4];
  *(&v30 + 1) = v11;
  v44 = v30;
  *&v31 = v47;
  *(&v31 + 1) = v46;
  v47 = v31;
  v59 = v31;
  v60 = v30;
  v32 = v50;
  v61 = v50;
  v56 = v31;
  v57 = v30;
  v58 = v50;
  Label.init(title:icon:)();
  v33 = v52;
  v34 = v51;
  (*(v52 + 16))(v51, v32, a1);
  v35 = (*(v33 + 80) + 48) & ~*(v33 + 80);
  v36 = swift_allocObject();
  v37 = v44;
  *(v36 + 16) = v47;
  *(v36 + 32) = v37;
  (*(v33 + 32))(v36 + v35, v34, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA6VStackVyAIyAEyAEy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA07_ShadowI0VyAA0P0VGGG_AKtGGtGGAA12_FrameLayoutVGASGSgGSgMd, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA6VStackVyAIyAEyAEy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA07_ShadowI0VyAA0P0VGGG_AKtGGtGGAA12_FrameLayoutVGASGSgGSgMR);
  OUTLINED_FUNCTION_3_155();
  v38 = swift_getWitnessTable();
  lazy protocol witness table accessor for type IconBoundsPreferenceKey and conformance IconBoundsPreferenceKey();
  lazy protocol witness table accessor for type GeometryReader<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(ModifiedContent<ModifiedContent<ActionGlyphCircle, _OffsetEffect>, _BackgroundModifier<_ShadowView<Circle>>>, Spacer)>>)>>, _FrameLayout>, _OffsetEffect>?>? and conformance <A> A?();
  static Alignment.center.getter();
  View.overlayPreferenceValue<A, B>(_:alignment:_:)();

  (*(v48 + 8))(v21, v17);
  OUTLINED_FUNCTION_4_143();
  v41 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v39, &_s7SwiftUI26_OverlayPreferenceModifierVy15ConversationKit010IconBoundsD3Key33_A5A29C6D3794560EE297715D1CD250B5LLVAA14GeometryReaderVyAA15ModifiedContentVyAKyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA6VStackVyAOyAKyAKyAD17ActionGlyphCircleAFLLVAA13_OffsetEffectVGAA011_BackgroundE0VyAA07_ShadowY0VyAA6CircleVGGG_AQtGGtGGAA12_FrameLayoutVGAWGSgGSgGMd, &_s7SwiftUI26_OverlayPreferenceModifierVy15ConversationKit010IconBoundsD3Key33_A5A29C6D3794560EE297715D1CD250B5LLVAA14GeometryReaderVyAA15ModifiedContentVyAKyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA6VStackVyAOyAKyAKyAD17ActionGlyphCircleAFLLVAA13_OffsetEffectVGAA011_BackgroundE0VyAA07_ShadowY0VyAA6CircleVGGG_AQtGGtGGAA12_FrameLayoutVGAWGSgGSgGMR, v40);
  v62 = v38;
  v63 = v41;
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v42 = *(v49 + 8);
  v42(v26, v22);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v42)(v29, v22);
}

uint64_t closure #1 in ClarityUIActionGlyphLabel.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20[0] = a5;
  v20[1] = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA6SpacerV_15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVtGSgMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVtGSgMR);
  swift_getTupleTypeMetadata2();
  v10 = type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for HStack();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v20 - v16;
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a4;
  v20[7] = v20[0];
  v20[8] = a1;
  default argument 0 of HStack.init(alignment:spacing:content:)(v10);
  HStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v18 = *(v12 + 8);
  v18(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v18)(v17, v11);
}

uint64_t closure #1 in closure #1 in ClarityUIActionGlyphLabel.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a5;
  v43 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v39 = &v38 - v11;
  v12 = type metadata accessor for MultimodalListStyle.Layout();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  v19 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v41 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - v23;
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v50 = v42;
  v25 = type metadata accessor for ClarityUIActionGlyphLabel(0, &v47);
  v42 = a4;
  static ViewBuilder.buildExpression<A>(_:)();
  v40 = a1;
  specialized Environment.wrappedValue.getter(v18);
  (*(v13 + 104))(v15, *MEMORY[0x1E697C578], v12);
  lazy protocol witness table accessor for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v26 = *(v13 + 8);
  v26(v15, v12);
  v26(v18, v12);
  if (v47 == v53[0] && (v27 = v40, *(v40 + *(v25 + 60)) == 1))
  {
    static ClarityUIMetrics.standardSpacing.getter();
    v29 = v28;
    v30 = *v27;

    static Font.Weight.semibold.getter();
    v31 = type metadata accessor for Font.Design();
    v32 = v39;
    __swift_storeEnumTagSinglePayload(v39, 1, 1, v31);
    v33 = static Font.system(size:weight:design:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v32, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);

    v34 = 0x404B000000000000;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v34 = 0;
    v33 = 0;
  }

  v35 = v41;
  (*(v19 + 16))(v41, v24, a2);
  v47 = v29;
  v48 = 0;
  v49 = v30;
  v50 = 0;
  v51 = v34;
  v52 = v33;
  v53[0] = v35;
  v53[1] = &v47;
  v46[0] = a2;
  v46[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6SpacerV_15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVtGSgMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVtGSgMR);
  v44 = v42;
  v45 = lazy protocol witness table accessor for type TupleView<(Spacer, ActionGlyphCircle)>? and conformance <A> A?();
  static ViewBuilder.buildBlock<each A>(_:)(v53, 2, v46);
  outlined consume of TupleView<(Spacer, ActionGlyphCircle)>?(v29, 0, v30);
  v36 = *(v19 + 8);
  v36(v24, a2);
  outlined consume of TupleView<(Spacer, ActionGlyphCircle)>?(v47, v48, v49);
  return (v36)(v35, a2);
}

uint64_t closure #2 in ClarityUIActionGlyphLabel.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v19[1] = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit23IconBoundsPreferenceKey33_A5A29C6D3794560EE297715D1CD250B5LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit23IconBoundsPreferenceKey33_A5A29C6D3794560EE297715D1CD250B5LLVGMR);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  v20[0] = a1;
  v20[1] = a2;
  v20[2] = a3;
  v20[3] = a4;
  type metadata accessor for ClarityUIActionGlyphLabel(0, v20);
  static Anchor.Source<A>.bounds.getter();
  type metadata accessor for CGRect(0);
  lazy protocol witness table accessor for type IconBoundsPreferenceKey and conformance IconBoundsPreferenceKey();
  View.anchorPreference<A, B>(key:value:transform:)();

  v16 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnchorWritingModifier<CGRect, IconBoundsPreferenceKey> and conformance _AnchorWritingModifier<A, B>, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit23IconBoundsPreferenceKey33_A5A29C6D3794560EE297715D1CD250B5LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit23IconBoundsPreferenceKey33_A5A29C6D3794560EE297715D1CD250B5LLVGMR, MEMORY[0x1E697FF70]);
  v19[2] = a4;
  v19[3] = v16;
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v17 = *(v10 + 8);
  v17(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v17)(v15, v9);
}

uint64_t closure #3 in ClarityUIActionGlyphLabel.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)()@<X8>)
{
  v33 = a6;
  v34 = a7;
  v30 = a3;
  v31 = a4;
  v36[0] = a3;
  v36[1] = a4;
  v32 = a5;
  v36[2] = a5;
  v36[3] = a6;
  v9 = type metadata accessor for ClarityUIActionGlyphLabel(0, v36);
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for MultimodalListStyle.Layout();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  v28 = *a1;
  specialized Environment.wrappedValue.getter(&v28 - v17);
  (*(v13 + 104))(v15, *MEMORY[0x1E697C570], v12);
  lazy protocol witness table accessor for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v13 + 8);
  v19(v15, v12);
  result = (v19)(v18, v12);
  if (v36[0] == v35 && *(a2 + *(v9 + 60)) == 1)
  {
    v21 = v29;
    (*(v29 + 16))(v11, a2, v9);
    v22 = (*(v21 + 80) + 56) & ~*(v21 + 80);
    v23 = swift_allocObject();
    v24 = v31;
    *(v23 + 2) = v30;
    *(v23 + 3) = v24;
    v25 = v33;
    *(v23 + 4) = v32;
    *(v23 + 5) = v25;
    *(v23 + 6) = v28;
    (*(v21 + 32))(&v23[v22], v11, v9);

    v26 = partial apply for closure #1 in closure #3 in ClarityUIActionGlyphLabel.body.getter;
  }

  else
  {
    v26 = 0;
    v23 = 0;
  }

  v27 = v34;
  *v34 = v26;
  v27[1] = v23;
  return result;
}

void *closure #1 in closure #3 in ClarityUIActionGlyphLabel.body.getter@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>, uint64_t x3_0@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>)
{
  if (a2)
  {
    closure #1 in closure #1 in closure #3 in ClarityUIActionGlyphLabel.body.getter(a3, x3_0, a5, a6, a7, __src);
    memcpy(__dst, __src, sizeof(__dst));
    TPNumberPadCharacter.rawValue.getter();
    memcpy(__src, __dst, sizeof(__src));
  }

  else
  {
    _s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA6VStackVyAGyACyACy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA07_ShadowG0VyAA0N0VGGG_AItGGtGGAA12_FrameLayoutVGAQGSgWOi0_(__src);
  }

  return memcpy(a4, __src, 0xF0uLL);
}

double closure #1 in closure #1 in closure #3 in ClarityUIActionGlyphLabel.body.getter@<D0>(uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v16 = static VerticalAlignment.center.getter();
  v21 = 1;
  closure #1 in closure #1 in closure #1 in closure #3 in ClarityUIActionGlyphLabel.body.getter(a2, a3, a4, a5, a6, __src);
  memcpy(__dst, __src, 0x91uLL);
  memcpy(v24, __src, 0x91uLL);
  outlined init with copy of (CGFloat, AutoplayCandidate)(__dst, &v18, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA6VStackVyACyAA15ModifiedContentVyAIy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA07_ShadowD0VyAA0M0VGGG_AEtGGtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA6VStackVyACyAA15ModifiedContentVyAIy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA07_ShadowD0VyAA0M0VGGG_AEtGGtGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA6VStackVyACyAA15ModifiedContentVyAIy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA07_ShadowD0VyAA0M0VGGG_AEtGGtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA6VStackVyACyAA15ModifiedContentVyAIy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA07_ShadowD0VyAA0M0VGGG_AEtGGtGMR);
  memcpy(&v20[7], __dst, 0x91uLL);
  LOBYTE(a4) = v21;
  type metadata accessor for CGRect(0);
  GeometryProxy.subscript.getter();
  GeometryProxy.subscript.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v22[7] = *__src;
  *&v22[23] = *&__src[16];
  *&v22[39] = *&__src[32];
  GeometryProxy.subscript.getter();
  v13 = v18;
  GeometryProxy.subscript.getter();
  *a7 = v16;
  *(a7 + 8) = 0;
  *(a7 + 16) = a4;
  memcpy((a7 + 17), v20, 0x98uLL);
  v14 = *&v22[16];
  *(a7 + 169) = *v22;
  *(a7 + 185) = v14;
  result = *&v22[32];
  *(a7 + 201) = *&v22[32];
  *(a7 + 216) = *&v22[47];
  *(a7 + 224) = v13;
  *(a7 + 232) = v17;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #3 in ClarityUIActionGlyphLabel.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = static HorizontalAlignment.center.getter();
  v15[0] = 1;
  closure #1 in closure #1 in closure #1 in closure #1 in closure #3 in ClarityUIActionGlyphLabel.body.getter(a1, a2, a3, a4, a5, __src);
  memcpy(__dst, __src, 0x69uLL);
  memcpy(v19, __src, 0x69uLL);
  outlined init with copy of (CGFloat, AutoplayCandidate)(__dst, v20, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA07_ShadowD0VyAA0K0VGGG_AA6SpacerVtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA07_ShadowD0VyAA0K0VGGG_AA6SpacerVtGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA07_ShadowD0VyAA0K0VGGG_AA6SpacerVtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA07_ShadowD0VyAA0K0VGGG_AA6SpacerVtGMR);
  memcpy(&v17[7], __dst, 0x69uLL);
  v16[136] = 1;
  v20[0] = v13;
  v20[1] = 0;
  LOBYTE(v20[2]) = 1;
  memcpy(&v20[2] + 1, v17, 0x70uLL);
  memcpy(&v16[7], v20, 0x81uLL);
  *a6 = 0;
  *(a6 + 8) = 1;
  memcpy((a6 + 9), v16, 0x88uLL);
  __src[0] = v13;
  __src[1] = 0;
  LOBYTE(__src[2]) = 1;
  memcpy(&__src[2] + 1, v17, 0x70uLL);
  outlined init with copy of (CGFloat, AutoplayCandidate)(v20, v15, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA07_ShadowE0VyAA0L0VGGG_AA6SpacerVtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA07_ShadowE0VyAA0L0VGGG_AA6SpacerVtGGMR);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__src, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA07_ShadowE0VyAA0L0VGGG_AA6SpacerVtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA07_ShadowE0VyAA0L0VGGG_AA6SpacerVtGGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #3 in ClarityUIActionGlyphLabel.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v8 = type metadata accessor for Color.RGBColorSpace();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - v13;
  v15 = *a1;

  static Font.Weight.semibold.getter();
  v16 = type metadata accessor for Font.Design();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v16);
  v17 = static Font.system(size:weight:design:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v37 = v30;
  v38 = v31;
  v39 = v32;
  v40 = v33;
  v18 = type metadata accessor for ClarityUIActionGlyphLabel(0, &v37);
  v19 = *(a1 + v18[17]);
  v20 = *(a1 + v18[18]);
  v21 = v18[20];
  v22 = *(a1 + v18[19]);
  v23 = *(a1 + v21);
  v24 = *(a1 + v21 + 8);
  (*(v9 + 104))(v11, *MEMORY[0x1E69814C8], v8);
  v25 = Color.init(_:white:opacity:)();
  v26 = static Alignment.center.getter();
  v28 = v27;
  v36[0] = v15;
  LOBYTE(v36[1]) = 1;
  *(&v36[1] + 1) = *v35;
  HIDWORD(v36[1]) = *&v35[3];
  v36[2] = 0x404B000000000000;
  v36[3] = v17;
  v36[4] = v19;
  v36[5] = v20;
  v36[6] = v25;
  v36[7] = v22;
  v36[8] = v23;
  v36[9] = v24;
  v36[10] = v26;
  v36[11] = v27;
  v34[96] = 1;
  memcpy(a6, v36, 0x60uLL);
  *(a6 + 96) = 0;
  *(a6 + 104) = 1;
  v37 = v15;
  LOBYTE(v38) = 1;
  *(&v38 + 1) = *v35;
  HIDWORD(v38) = *&v35[3];
  v39 = 0x404B000000000000;
  v40 = v17;
  v41 = v19;
  v42 = v20;
  v43 = v25;
  v44 = v22;
  v45 = v23;
  v46 = v24;
  v47 = v26;
  v48 = v28;
  outlined init with copy of (CGFloat, AutoplayCandidate)(v36, v34, &_s7SwiftUI15ModifiedContentVyACy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA11_ShadowViewVyAA0I0VGGGMd, &_s7SwiftUI15ModifiedContentVyACy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA11_ShadowViewVyAA0I0VGGGMR);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v37, &_s7SwiftUI15ModifiedContentVyACy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA11_ShadowViewVyAA0I0VGGGMd, &_s7SwiftUI15ModifiedContentVyACy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA11_ShadowViewVyAA0I0VGGGMR);
}

uint64_t partial apply for closure #3 in ClarityUIActionGlyphLabel.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for ClarityUIActionGlyphLabel(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return closure #3 in ClarityUIActionGlyphLabel.body.getter(a1, v10, v5, v6, v7, v8, a2);
}

unint64_t lazy protocol witness table accessor for type IconBoundsPreferenceKey and conformance IconBoundsPreferenceKey()
{
  result = lazy protocol witness table cache variable for type IconBoundsPreferenceKey and conformance IconBoundsPreferenceKey;
  if (!lazy protocol witness table cache variable for type IconBoundsPreferenceKey and conformance IconBoundsPreferenceKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IconBoundsPreferenceKey and conformance IconBoundsPreferenceKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeometryReader<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(ModifiedContent<ModifiedContent<ActionGlyphCircle, _OffsetEffect>, _BackgroundModifier<_ShadowView<Circle>>>, Spacer)>>)>>, _FrameLayout>, _OffsetEffect>?>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(ModifiedContent<ModifiedContent<ActionGlyphCircle, _OffsetEffect>, _BackgroundModifier<_ShadowView<Circle>>>, Spacer)>>)>>, _FrameLayout>, _OffsetEffect>?>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(ModifiedContent<ModifiedContent<ActionGlyphCircle, _OffsetEffect>, _BackgroundModifier<_ShadowView<Circle>>>, Spacer)>>)>>, _FrameLayout>, _OffsetEffect>?>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA6VStackVyAIyAEyAEy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA07_ShadowI0VyAA0P0VGGG_AKtGGtGGAA12_FrameLayoutVGASGSgGSgMd, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA6VStackVyAIyAEyAEy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA07_ShadowI0VyAA0P0VGGG_AKtGGtGGAA12_FrameLayoutVGASGSgGSgMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(ModifiedContent<ModifiedContent<ActionGlyphCircle, _OffsetEffect>, _BackgroundModifier<_ShadowView<Circle>>>, Spacer)>>)>>, _FrameLayout>, _OffsetEffect>?> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA6VStackVyAIyAEyAEy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA07_ShadowI0VyAA0P0VGGG_AKtGGtGGAA12_FrameLayoutVGASGSgGMd, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA6VStackVyAIyAEyAEy15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVAA13_OffsetEffectVGAA19_BackgroundModifierVyAA07_ShadowI0VyAA0P0VGGG_AKtGGtGGAA12_FrameLayoutVGASGSgGMR, MEMORY[0x1E697E378]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(ModifiedContent<ModifiedContent<ActionGlyphCircle, _OffsetEffect>, _BackgroundModifier<_ShadowView<Circle>>>, Spacer)>>)>>, _FrameLayout>, _OffsetEffect>?>? and conformance <A> A?);
  }

  return result;
}

void type metadata completion function for ClarityUIActionGlyphLabel(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Environment<MultimodalListStyle.Layout>(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ClarityUIActionGlyphLabel(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v29 = *(a3 + 16);
  v4 = *(v29 - 8);
  v5 = *(v4 + 84);
  v28 = *(a3 + 24);
  v6 = *(v28 - 8);
  v27 = *(v6 + 84);
  if (v5 <= v27)
  {
    v7 = *(v6 + 84);
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(type metadata accessor for MultimodalListStyle.Layout() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v4 + 80);
  v12 = *(v4 + 64);
  v13 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  result = a1;
  if (v8 >= a2)
  {
LABEL_32:
    if ((v7 & 0x80000000) != 0)
    {
      v24 = (a1 + v11 + 8) & ~v11;
      if (v5 == v8)
      {
        v25 = v5;
        v26 = v29;
      }

      else
      {
        v24 = (v24 + v12 + v13) & ~v13;
        v25 = v27;
        v26 = v28;
      }

      return __swift_getEnumTagSinglePayload(v24, v25, v26);
    }

    else
    {
      v23 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v23) = -1;
      }

      return (v23 + 1);
    }
  }

  else
  {
    v15 = *(v9 + 80) & 0xF8 | 7;
    v16 = ((((((((v10 + ((*(v6 + 64) + v15 + ((v12 + v13 + ((v11 + 8) & ~v11)) & ~v13) + 1) & ~v15) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v17 = v16 & 0xFFFFFFF8;
    if ((v16 & 0xFFFFFFF8) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = a2 - v8 + 1;
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

    switch(v20)
    {
      case 1:
        v21 = *(a1 + v16);
        if (!v21)
        {
          goto LABEL_32;
        }

        goto LABEL_28;
      case 2:
        v21 = *(a1 + v16);
        if (!v21)
        {
          goto LABEL_32;
        }

        goto LABEL_28;
      case 3:
        __break(1u);
        return result;
      case 4:
        v21 = *(a1 + v16);
        if (!v21)
        {
          goto LABEL_32;
        }

LABEL_28:
        v22 = v21 - 1;
        if (v17)
        {
          v22 = 0;
          LODWORD(v17) = *a1;
        }

        result = v8 + (v17 | v22) + 1;
        break;
      default:
        goto LABEL_32;
    }
  }

  return result;
}

void storeEnumTagSinglePayload for ClarityUIActionGlyphLabel(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v25 = *(a4 + 24);
  v26 = *(a4 + 16);
  v5 = *(v26 - 8);
  v6 = *(v25 - 8);
  v7 = *(v6 + 84);
  v27 = *(v5 + 84);
  if (v27 <= v7)
  {
    v8 = *(v6 + 84);
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(type metadata accessor for MultimodalListStyle.Layout() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v5 + 80);
  v13 = *(v5 + 64);
  v14 = *(v6 + 80);
  v15 = *(v10 + 80) & 0xF8 | 7;
  v16 = ((((((((v11 + ((*(v6 + 64) + v15 + ((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14) + 1) & ~v15) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v19 = 0;
  }

  else
  {
    if (((((((((v11 + ((*(v6 + 64) + v15 + ((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14) + 1) & ~v15) + 8) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a3 - v9 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v19)
    {
      case 1:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        break;
      case 2:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        break;
      case 3:
LABEL_52:
        __break(1u);
        break;
      case 4:
        *(a1 + v16) = 0;
        goto LABEL_37;
      default:
LABEL_37:
        if (a2)
        {
LABEL_38:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = (a1 + v12 + 8) & ~v12;
            v23 = v27;
            if (v27 == v9)
            {
              v24 = v26;
            }

            else
            {
              v22 = (v22 + v13 + v14) & ~v14;
              v23 = v7;
              v24 = v25;
            }

            __swift_storeEnumTagSinglePayload(v22, a2, v23, v24);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = a2 - 1;
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    if (v16)
    {
      v20 = 1;
    }

    else
    {
      v20 = a2 - v9;
    }

    if (v16)
    {
      bzero(a1, v16);
      *a1 = ~v9 + a2;
    }

    switch(v19)
    {
      case 1:
        *(a1 + v16) = v20;
        break;
      case 2:
        *(a1 + v16) = v20;
        break;
      case 3:
        goto LABEL_52;
      case 4:
        *(a1 + v16) = v20;
        break;
      default:
        return;
    }
  }
}

void type metadata accessor for Environment<MultimodalListStyle.Layout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<MultimodalListStyle.Layout>)
  {
    type metadata accessor for MultimodalListStyle.Layout();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<MultimodalListStyle.Layout>);
    }
  }
}

double ActionGlyphCircle.body.getter@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = static Alignment.center.getter();
  v11 = v10;
  KeyPath = swift_getKeyPath();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a4 = a2;
  *(a4 + 1) = 256;
  *(a4 + 8) = a1;
  *(a4 + 16) = KeyPath;
  *(a4 + 24) = a3;
  *(a4 + 32) = v9;
  *(a4 + 40) = v11;
  *(a4 + 48) = v14;
  *(a4 + 64) = v15;
  result = *&v16;
  *(a4 + 80) = v16;
  *(a4 + 96) = 0;
  return result;
}

uint64_t ActionGlyphCircleBackground._apply(to:)(uint64_t a1, char a2)
{
  v3 = type metadata accessor for Material();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    static Material.regular.getter();
    Material._apply(to:)();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    static Color.black.getter();
    Color.opacity(_:)();

    Color._apply(to:)();
  }
}

void *specialized static IconBoundsPreferenceKey.reduce(value:nextValue:)(void *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v5);
  v4 = v5;
  if (v5)
  {

    *a1 = v4;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout()
{
  result = lazy protocol witness table cache variable for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout;
  if (!lazy protocol witness table cache variable for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout)
  {
    type metadata accessor for MultimodalListStyle.Layout();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout);
  }

  return result;
}

void *partial apply for closure #1 in closure #3 in ClarityUIActionGlyphLabel.body.getter@<X0>(void *a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v12[0] = v2[2];
  v4 = v12[0];
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v8 = *(type metadata accessor for ClarityUIActionGlyphLabel(0, v12) - 8);
  v9 = v2[6];
  v10 = (v2 + ((*(v8 + 80) + 56) & ~*(v8 + 80)));

  return closure #1 in closure #3 in ClarityUIActionGlyphLabel.body.getter(v9, v10, a2, v4, v5, v6, v7);
}

unint64_t lazy protocol witness table accessor for type TupleView<(Spacer, ActionGlyphCircle)>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TupleView<(Spacer, ActionGlyphCircle)>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TupleView<(Spacer, ActionGlyphCircle)>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA6SpacerV_15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVtGSgMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVtGSgMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TupleView<(Spacer, ActionGlyphCircle)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6SpacerV_15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_15ConversationKit17ActionGlyphCircle33_A5A29C6D3794560EE297715D1CD250B5LLVtGMR, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(Spacer, ActionGlyphCircle)>? and conformance <A> A?);
  }

  return result;
}

uint64_t outlined consume of TupleView<(Spacer, ActionGlyphCircle)>?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActionGlyphCircleBackground(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, ActionGlyphCircleBackground>, _OverlayModifier<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>>, _FrameLayout>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, ActionGlyphCircleBackground>, _OverlayModifier<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>>, _FrameLayout>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, ActionGlyphCircleBackground>, _OverlayModifier<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>>, _FrameLayout>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA6CircleV15ConversationKit011ActionGlyphG10Background33_A5A29C6D3794560EE297715D1CD250B5LLVGAA16_OverlayModifierVyACyAA5ImageVAA022_EnvironmentKeyWritingV0VyAA4FontVSgGGGGAA12_FrameLayoutVGAA017_AllowsHitTestingV0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA6CircleV15ConversationKit011ActionGlyphG10Background33_A5A29C6D3794560EE297715D1CD250B5LLVGAA16_OverlayModifierVyACyAA5ImageVAA022_EnvironmentKeyWritingV0VyAA4FontVSgGGGGAA12_FrameLayoutVGAA017_AllowsHitTestingV0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Circle, ActionGlyphCircleBackground>, _OverlayModifier<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, ActionGlyphCircleBackground>, _OverlayModifier<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>>, _FrameLayout>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Circle, ActionGlyphCircleBackground>, _OverlayModifier<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, ActionGlyphCircleBackground>, _OverlayModifier<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, ActionGlyphCircleBackground>, _OverlayModifier<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleV15ConversationKit011ActionGlyphG10Background33_A5A29C6D3794560EE297715D1CD250B5LLVGAA16_OverlayModifierVyACyAA5ImageVAA022_EnvironmentKeyWritingV0VyAA4FontVSgGGGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleV15ConversationKit011ActionGlyphG10Background33_A5A29C6D3794560EE297715D1CD250B5LLVGAA16_OverlayModifierVyACyAA5ImageVAA022_EnvironmentKeyWritingV0VyAA4FontVSgGGGGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Circle, ActionGlyphCircleBackground>, _OverlayModifier<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, ActionGlyphCircleBackground>, _OverlayModifier<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Circle, ActionGlyphCircleBackground>, _OverlayModifier<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Circle, ActionGlyphCircleBackground>, _OverlayModifier<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Circle, ActionGlyphCircleBackground>, _OverlayModifier<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleV15ConversationKit011ActionGlyphG10Background33_A5A29C6D3794560EE297715D1CD250B5LLVGAA16_OverlayModifierVyACyAA5ImageVAA022_EnvironmentKeyWritingV0VyAA4FontVSgGGGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleV15ConversationKit011ActionGlyphG10Background33_A5A29C6D3794560EE297715D1CD250B5LLVGAA16_OverlayModifierVyACyAA5ImageVAA022_EnvironmentKeyWritingV0VyAA4FontVSgGGGGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ShapeView<Circle, ActionGlyphCircleBackground> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA6CircleV15ConversationKit011ActionGlyphE10Background33_A5A29C6D3794560EE297715D1CD250B5LLVGMd, &_s7SwiftUI10_ShapeViewVyAA6CircleV15ConversationKit011ActionGlyphE10Background33_A5A29C6D3794560EE297715D1CD250B5LLVGMR, MEMORY[0x1E697DB78]);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA5ImageVAA022_EnvironmentKeyWritingD0VyAA4FontVSgGGGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA5ImageVAA022_EnvironmentKeyWritingD0VyAA4FontVSgGGGMR, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Circle, ActionGlyphCircleBackground>, _OverlayModifier<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t LocalParticipantButtonShelfViewConstraintManager.__allocating_init(localParticipantButtonShelfView:containingView:layoutIdiom:)(void *a1, void *a2, char *a3)
{
  v6 = swift_allocObject();
  LocalParticipantButtonShelfViewConstraintManager.init(localParticipantButtonShelfView:containingView:layoutIdiom:)(a1, a2, a3);
  return v6;
}

void *LocalParticipantButtonShelfViewConstraintManager.init(localParticipantButtonShelfView:containingView:layoutIdiom:)(void *a1, void *a2, char *a3)
{
  v6 = *a3;
  static Layout.LocalParticipantViewCameraControls.iOS.getter(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BC370;
  v8 = &selRef_isRecordingAllowed;
  if (v6)
  {
    v9 = [a1 leadingAnchor];
    v10 = [a2 safeAreaLayoutGuide];
    v11 = [v10 leadingAnchor];

    v12 = v33;
    v13 = [v9 constraintEqualToAnchor:v11 constant:v33];

    *(v7 + 32) = v13;
    v14 = [a1 trailingAnchor];
    v15 = [a2 &selRef_isHighlighted + 2];
    v16 = [v15 trailingAnchor];

    v8 = &selRef_isRecordingAllowed;
    v17 = [v14 constraintEqualToAnchor:v16 constant:-v12];
  }

  else
  {
    v18 = [a1 centerXAnchor];
    v19 = [a2 centerXAnchor];
    v20 = [v18 constraintEqualToAnchor_];

    *(v7 + 32) = v20;
    v21 = [a1 widthAnchor];
    v17 = [v21 constraintEqualToConstant_];
  }

  *(v7 + 40) = v17;
  v22 = [a1 heightAnchor];
  v23 = [v22 v8[97]];

  *(v7 + 48) = v23;
  v3[2] = v7;
  v24 = [a1 topAnchor];
  v25 = [a2 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  v3[3] = v26;
  v27 = [a1 bottomAnchor];
  v28 = [a2 safeAreaLayoutGuide];
  v29 = [v28 bottomAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  v3[4] = v30;
  return v3;
}

uint64_t LocalParticipantButtonShelfViewConstraintManager.constraintsForLayout(_:in:deviceOrientation:)(uint64_t a1)
{
  v2 = *(a1 + 17);
  v3 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  if (v2 == 128)
  {
    v5 = inited;
    *(inited + 16) = xmmword_1BC4BAC30;
    v6 = v1[4];
  }

  else
  {
    v5 = inited;
    *(inited + 16) = xmmword_1BC4BAC30;
    v6 = v1[3];
  }

  *(inited + 32) = v6;

  v7 = v6;
  specialized Array.append<A>(contentsOf:)(v5);
  return v3;
}

uint64_t LocalParticipantButtonShelfViewConstraintManager.deinit()
{

  return v0;
}

uint64_t LocalParticipantButtonShelfViewConstraintManager.__deallocating_deinit()
{
  LocalParticipantButtonShelfViewConstraintManager.deinit();

  return swift_deallocClassInstance();
}

void VariableBlurUIView.radius.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit18VariableBlurUIView_radius;
  swift_beginAccess();
  *(v1 + v3) = a1;
  VariableBlurUIView.setupLayers()();
}

uint64_t VariableBlurUIView.blurMask.setter(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit18VariableBlurUIView_blurMask;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v9;
  v10 = *(v3 + 40);
  *(v3 + 25) = *(a1 + 25);
  outlined init with copy of VariableBlurMask(a1, v12);
  outlined consume of VariableBlurMask(v4, v5, v6, v7, v8, v10);
  VariableBlurUIView.blurMask.didset();
  return outlined destroy of VariableBlurMask(a1);
}

double VariableBlurUIView.radius.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit18VariableBlurUIView_radius;
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit18VariableBlurUIView_radius, v3);
  return *(v0 + v1);
}

double key path getter for VariableBlurUIView.radius : VariableBlurUIView@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit18VariableBlurUIView_radius;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

void VariableBlurUIView.setupLayers()()
{
  v1 = v0;
  v2 = VariableBlurUIView.backdropLayer.getter();
  if (v2)
  {
    v3 = v2;
    [v3 setFlipsHorizontalAxis_];
    v4 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CAFilter, 0x1E6979378);
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = CAFilter.__allocating_init(type:)(v5, v6);
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v9 = MEMORY[0x1BFB209B0](0x7469447475706E69, 0xEB00000000726568);
    OUTLINED_FUNCTION_3_156();

    v10 = *&v1[OBJC_IVAR____TtC15ConversationKit18VariableBlurUIView_blurMaskImage];
    v11 = MEMORY[0x1BFB209B0](0x73614D7475706E69, 0xEE006567616D496BLL);
    OUTLINED_FUNCTION_3_156();

    v12 = Bool._bridgeToObjectiveC()().super.super.isa;
    v13 = MEMORY[0x1BFB209B0](0xD000000000000013, 0x80000001BC4F6B30);
    OUTLINED_FUNCTION_3_156();

    OUTLINED_FUNCTION_4_0(&v1[OBJC_IVAR____TtC15ConversationKit18VariableBlurUIView_radius], v21);
    v14 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v15 = MEMORY[0x1BFB209B0](0x6461527475706E69, 0xEB00000000737569);
    [v7 setValue:v14 forKey:v15];

    [v3 setScale_];
    [v3 setAllowsHitTesting_];
    [v3 setMasksToBounds_];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = CAFilter.__allocating_init(type:)(v16, v17);
    [v3 setCompositingFilter_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BC4BA940;
    *(v19 + 56) = v4;
    *(v19 + 32) = v7;
    v20 = v7;
    outlined bridged method (mbnn) of @objc CALayer.filters.setter(v19, v3);
  }
}

uint64_t (*VariableBlurUIView.radius.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return VariableBlurUIView.radius.modify;
}

id VariableBlurUIView.blurMask.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit18VariableBlurUIView_blurMask;
  OUTLINED_FUNCTION_4_0(v3, v10);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 40);
  result = outlined copy of VariableBlurMask(v4, v5, v6, v7, v8, v3);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v3;
  return result;
}

id key path getter for VariableBlurUIView.blurMask : VariableBlurUIView@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit18VariableBlurUIView_blurMask;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  v9 = *(v3 + 40);
  *(a2 + 40) = v9;
  return outlined copy of VariableBlurMask(v4, v5, v6, v7, v8, v9);
}

uint64_t key path setter for VariableBlurUIView.blurMask : VariableBlurUIView(__int128 *a1)
{
  v1 = a1[1];
  v4 = *a1;
  v5[0] = v1;
  *(v5 + 9) = *(a1 + 25);
  outlined init with copy of VariableBlurMask(&v4, &v3);
  return VariableBlurUIView.blurMask.setter(&v4);
}

void VariableBlurUIView.blurMask.didset()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC15ConversationKit18VariableBlurUIView_blurMask];
  swift_beginAccess();
  v3 = *(v2 + 1);
  v8 = *v2;
  v9[0] = v3;
  *(v9 + 9) = *(v2 + 25);
  outlined init with copy of VariableBlurMask(&v8, v7);
  [v1 bounds];
  value = VariableBlurMask.image(size:)(__PAIR128__(v5, v4)).value;
  outlined destroy of VariableBlurMask(&v8);
  VariableBlurUIView.blurMaskImage.setter(value);
}

CGImageRef_optional __swiftcall VariableBlurMask.image(size:)(CGSize size)
{
  height = size.height;
  width = size.width;
  v4 = *v1;
  v5 = *(v1 + 40);
  if (!(v5 >> 6))
  {
    v8 = *(v1 + 32);
    v9 = *(v1 + 24);
    v23 = *(v1 + 8);
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v11 = swift_allocObject();
    *(v11 + 16) = width;
    *(v11 + 24) = height;
    *(v11 + 32) = v4;
    *(v11 + 40) = v23;
    *(v11 + 56) = v9;
    *(v11 + 64) = v8;
    *(v11 + 72) = v5 & 1;
    v12 = swift_allocObject();
    *(v12 + 16) = partial apply for closure #1 in static VariableBlurMask.gradientMask(size:start:end:mid:);
    *(v12 + 24) = v11;
    v28 = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
    v29 = v12;
    OUTLINED_FUNCTION_2_164();
    OUTLINED_FUNCTION_1_175();
    v26 = v13;
    v27 = &block_descriptor_13_3;
    v14 = _Block_copy(aBlock);

    v15 = [v10 imageWithActions_];

    _Block_release(v14);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      v16 = [v15 CGImage];

      return v16;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 >> 6 != 1)
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v18 = swift_allocObject();
    v18[2] = width;
    v18[3] = height;
    v18[4] = v4;
    v19 = swift_allocObject();
    *(v19 + 16) = partial apply for closure #1 in VariableBlurMask.image(size:);
    *(v19 + 24) = v18;
    v28 = _sSo30UIGraphicsImageRendererContextCIgg_ABIegg_TRTA_0;
    v29 = v19;
    OUTLINED_FUNCTION_2_164();
    OUTLINED_FUNCTION_1_175();
    v26 = v20;
    v27 = &block_descriptor_107;
    v21 = _Block_copy(aBlock);
    outlined init with copy of VariableBlurMask(v1, v24);

    v22 = [v17 imageWithActions_];

    _Block_release(v21);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if ((v17 & 1) == 0)
    {
      v16 = [v22 CGImage];

      return v16;
    }

    goto LABEL_12;
  }

  v6 = *v1;

  return static VariableBlurMask.shadowMask(size:fadeLength:)(size.width, size.height, v6);
}

void VariableBlurUIView.blurMaskImage.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit18VariableBlurUIView_blurMaskImage);
  *(v1 + OBJC_IVAR____TtC15ConversationKit18VariableBlurUIView_blurMaskImage) = a1;
  v3 = a1;

  VariableBlurUIView.setupLayers()();
}

uint64_t (*VariableBlurUIView.blurMask.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return VariableBlurUIView.blurMask.modify;
}

uint64_t VariableBlurUIView.radius.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

_OWORD *VariableBlurUIView.init(radius:blurMask:)(_OWORD *a1, double a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC15ConversationKit18VariableBlurUIView_blurMaskImage] = 0;
  *&v2[OBJC_IVAR____TtC15ConversationKit18VariableBlurUIView_radius] = a2;
  v6 = &v2[OBJC_IVAR____TtC15ConversationKit18VariableBlurUIView_blurMask];
  v7 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v7;
  *(v6 + 25) = *(a1 + 25);
  outlined init with copy of VariableBlurMask(a1, v14);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 clearColor];
  [v10 setBackgroundColor_];

  outlined destroy of VariableBlurMask(a1);
  return v10;
}

void outlined consume of VariableBlurMask(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 0xC0) == 0x80)
  {
  }
}

id outlined copy of VariableBlurMask(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 0xC0) == 0x80)
  {
    return result;
  }

  return result;
}

id VariableBlurUIView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void VariableBlurUIView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit18VariableBlurUIView_blurMaskImage) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t VariableBlurUIView.backdropLayer.getter()
{
  v1 = [v0 layer];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

Swift::Void __swiftcall VariableBlurUIView.layoutSubviews()()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v2 = &v0[OBJC_IVAR____TtC15ConversationKit18VariableBlurUIView_blurMask];
  OUTLINED_FUNCTION_4_0(v2, v8);
  v3 = *(v2 + 1);
  v10 = *v2;
  v11[0] = v3;
  *(v11 + 9) = *(v2 + 25);
  outlined init with copy of VariableBlurMask(&v10, v7);
  [v1 bounds];
  value = VariableBlurMask.image(size:)(__PAIR128__(v5, v4)).value;
  outlined destroy of VariableBlurMask(&v10);
  VariableBlurUIView.blurMaskImage.setter(value);
}

id VariableBlurUIView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id VariableBlurUIView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 VariableBlurView.init(radius:blurMask:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *a2 = a3;
  result = *a1;
  v6 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v6;
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  return result;
}

_OWORD *VariableBlurView.makeUIView(context:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 24);
  v7 = *(v1 + 8);
  v8[0] = v3;
  *(v8 + 9) = *(v1 + 33);
  v4 = objc_allocWithZone(type metadata accessor for VariableBlurUIView());
  outlined init with copy of VariableBlurMask(&v7, &v6);
  return VariableBlurUIView.init(radius:blurMask:)(&v7, v2);
}

uint64_t VariableBlurView.updateUIView(_:context:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = OBJC_IVAR____TtC15ConversationKit18VariableBlurUIView_radius;
  swift_beginAccess();
  *(a1 + v5) = v4;
  VariableBlurUIView.setupLayers()();
  v6 = *(v2 + 3);
  v9 = *(v2 + 1);
  v10[0] = v6;
  *(v10 + 9) = *(v2 + 33);
  outlined init with copy of VariableBlurMask(&v9, v8);
  return VariableBlurUIView.blurMask.setter(&v9);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance VariableBlurView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type VariableBlurView and conformance VariableBlurView();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance VariableBlurView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type VariableBlurView and conformance VariableBlurView();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance VariableBlurView(uint64_t a1)
{
  lazy protocol witness table accessor for type VariableBlurView and conformance VariableBlurView();
  UIViewRepresentable.body.getter();
  __break(1u);
}

id static VariableBlurMask.shadowMask(size:fadeLength:)(CGFloat a1, CGFloat a2, double a3)
{
  v6 = -a3;
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = a1;
  v31.size.height = a2;
  v32 = CGRectInset(v31, v6, v6);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v12 = swift_allocObject();
  *(v12 + 16) = x;
  *(v12 + 24) = y;
  *(v12 + 32) = width;
  *(v12 + 40) = height;
  *(v12 + 48) = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in static VariableBlurMask.shadowMask(size:fadeLength:);
  *(v13 + 24) = v12;
  v29 = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  v30 = v13;
  v25 = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v28 = &block_descriptor_32_2;
  v14 = _Block_copy(&v25);

  v15 = [v11 imageWithActions_];

  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v17 = [v15 CGImage];

    v18 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    *(v19 + 32) = v17;
    v20 = swift_allocObject();
    *(v20 + 16) = partial apply for closure #2 in static VariableBlurMask.shadowMask(size:fadeLength:);
    *(v20 + 24) = v19;
    v29 = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
    v30 = v20;
    v25 = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
    v28 = &block_descriptor_42_1;
    v21 = _Block_copy(&v25);
    v22 = v17;

    v23 = [v18 imageWithActions_];

    _Block_release(v21);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if ((v18 & 1) == 0)
    {
      v24 = [v23 CGImage];

      return v24;
    }
  }

  __break(1u);
  return result;
}

void closure #1 in VariableBlurMask.image(size:)(void *a1, void *a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  [v8 setFrame_];
  v9 = [a2 CGImage];
  [v8 setContents_];

  [v8 setContentsGravity_];
  v10 = [a1 CGContext];
  [v8 renderInContext_];
}

void closure #1 in static VariableBlurMask.gradientMask(size:start:end:mid:)(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, char a9)
{
  v17 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  [v17 setBounds_];
  [v17 setStartPoint_];
  [v17 setEndPoint_];
  if (a9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BC4BAA20;
    v19 = objc_opt_self();
    v20 = [v19 blackColor];
    v21 = [v20 colorWithAlphaComponent_];

    v22 = [v21 CGColor];
    type metadata accessor for CGColorRef(0);
    v24 = v23;
    *(v18 + 56) = v23;
    *(v18 + 32) = v22;
    v25 = [v19 blackColor];
    v26 = [v25 CGColor];

    *(v18 + 88) = v24;
    *(v18 + 64) = v26;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1BC4BC370;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    *(v27 + 32) = NSNumber.init(floatLiteral:)(0.0);
    *(v27 + 40) = CGFloat._bridgeToObjectiveC()();
    *(v27 + 48) = NSNumber.init(floatLiteral:)(1.0);
    outlined bridged method (mbnn) of @objc CAGradientLayer.locations.setter(v27, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BC4BB980;
    v28 = objc_opt_self();
    v29 = [v28 blackColor];
    v30 = [v29 colorWithAlphaComponent_];

    v31 = [v30 CGColor];
    type metadata accessor for CGColorRef(0);
    v33 = v32;
    *(v18 + 56) = v32;
    *(v18 + 32) = v31;
    v34 = [v28 blackColor];
    v35 = [v34 CGColor];

    *(v18 + 88) = v33;
    *(v18 + 64) = v35;
    v36 = [v28 blackColor];
    v37 = [v36 CGColor];

    *(v18 + 120) = v33;
    *(v18 + 96) = v37;
  }

  outlined bridged method (mbnn) of @objc CAGradientLayer.colors.setter(v18, v17);
  v38 = [a1 CGContext];
  [v17 renderInContext_];
}

unint64_t lazy protocol witness table accessor for type VariableBlurView and conformance VariableBlurView()
{
  result = lazy protocol witness table cache variable for type VariableBlurView and conformance VariableBlurView;
  if (!lazy protocol witness table cache variable for type VariableBlurView and conformance VariableBlurView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VariableBlurView and conformance VariableBlurView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VariableBlurView and conformance VariableBlurView;
  if (!lazy protocol witness table cache variable for type VariableBlurView and conformance VariableBlurView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VariableBlurView and conformance VariableBlurView);
  }

  return result;
}

uint64_t dispatch thunk of VariableBlurUIView.__allocating_init(radius:blurMask:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v1 + 104);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v2;
  v9 = v3;
  return v4(v7);
}

uint64_t getEnumTagSinglePayload for VariableBlurView(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 49))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 48) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 48) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for VariableBlurView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 40) = 0;
      *(result + 24) = 0u;
      *(result + 8) = 0u;
      *(result + 48) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VariableBlurMask(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 41))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 40) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 40) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for VariableBlurMask(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

void closure #1 in static VariableBlurMask.shadowMask(size:fadeLength:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  [v12 setFrame_];
  v13 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  v24 = CGRectOffset(v23, -a6, a6 * 3.0);
  [v13 setFrame_];
  [v12 addSublayer_];
  v14 = objc_opt_self();
  v15 = [v14 blackColor];
  v16 = [v15 CGColor];

  [v13 setBackgroundColor_];
  v17 = [a1 CGContext];
  v18 = [v14 blackColor];
  v19 = [v18 CGColor];

  v22.width = a6;
  v22.height = -a6;
  CGContextSetShadowWithColor(v17, v22, a6, v19);

  v20 = [a1 CGContext];
  [v12 renderInContext_];
}

void closure #2 in static VariableBlurMask.shadowMask(size:fadeLength:)(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  [v8 setFrame_];
  [v8 setContents_];
  [v8 setContentsGravity_];
  v9 = [a1 CGContext];
  [v8 renderInContext_];
}

void outlined bridged method (mbnn) of @objc CAGradientLayer.locations.setter(uint64_t a1, void *a2)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setLocations_];
}

uint64_t *Defaults.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  return &static Defaults.shared;
}

uint64_t Defaults.__allocating_init()()
{
  OUTLINED_FUNCTION_19_16();
  v0 = swift_allocObject();
  Defaults.init()();
  return v0;
}

uint64_t static Defaults.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }
}

id Defaults.Observation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

ConversationKit::Defaults::CallScreeningOverride_optional __swiftcall Defaults.CallScreeningOverride.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 6)
  {
    LOBYTE(rawValue) = 6;
  }

  return rawValue;
}

ConversationKit::Defaults::CallScreeningOverride_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Defaults.CallScreeningOverride@<W0>(Swift::Int *a1@<X0>, ConversationKit::Defaults::CallScreeningOverride_optional *a2@<X8>)
{
  result.value = Defaults.CallScreeningOverride.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Defaults.CallScreeningOverride@<X0>(uint64_t *a1@<X8>)
{
  result = Defaults.CallScreeningOverride.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t Defaults.allowsScreenSharingNotifications.getter()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = Defaults.BOOL(for:domain:default:)(92, v2, 0);

  return v3 & 1;
}

id Defaults.supportsEffects.getter()
{
  OUTLINED_FUNCTION_0_1();
  if ((*(v0 + 152))())
  {
    return [objc_opt_self() supportsEffects];
  }

  else
  {
    return 0;
  }
}

id Defaults.supportsCinematicFraming.getter()
{
  OUTLINED_FUNCTION_0_1();
  if (((*(v0 + 152))() & 1) == 0)
  {
    return 0;
  }

  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 videoDeviceController];

  v3 = [v2 currentInputSupportsCinematicFraming];
  return v3;
}

uint64_t (*Defaults.shouldShowVoicemailIntroText.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  v1 = Defaults.shouldShowVoicemailIntroText.getter();
  OUTLINED_FUNCTION_18_2(v1);
  return Defaults.shouldShowVoicemailIntroText.modify;
}

uint64_t Defaults.shouldShowVideoLayerDebugColors.getter()
{
  return Defaults.shouldShowVideoLayerDebugColors.getter();
}

{
  if ((Defaults.isInternalInstall.getter() & 1) == 0)
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = OUTLINED_FUNCTION_28_0();
  v3 = Defaults.BOOL(for:domain:default:)(v2, v0, 0);

  return v3 & 1;
}

id Defaults.collaborateTogetherEnabled.getter()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v2 = result;
    v3 = outlined bridged method (mbnn) of @objc LSApplicationWorkspace.applicationIsInstalled(_:)(0xD000000000000013, 0x80000001BC5082B0, result);

    if (v3)
    {
      return [*(v0 + 16) collaborateTogetherEnabled];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

float Defaults.activelyCommunicatingAudioThreshold.getter()
{
  Defaults.float(for:default:)(7, 155.0);
  OUTLINED_FUNCTION_8_103();
  if (!(!v3 & v2))
  {
    return v1;
  }

  return result;
}

double Defaults.mimimumActiveDuration.getter()
{
  Defaults.double(for:default:)(9, 0.25);
  OUTLINED_FUNCTION_14_70();
  if (!(!v3 & v2))
  {
    return v1;
  }

  return result;
}

uint64_t Defaults.forceMostActiveParticipantHandle.getter()
{
  if (Defaults.isInternalInstall.getter())
  {
    return Defaults.string(for:default:)(10, 0);
  }

  else
  {
    return 0;
  }
}

double Defaults.mostActiveParticipantChangeInterval.getter()
{
  Defaults.double(for:default:)(11, 0.5);
  OUTLINED_FUNCTION_14_70();
  if (!(!v3 & v2))
  {
    return v1;
  }

  return result;
}

double Defaults.organicCellCornerRadius.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = Features.isICUIRedesignEnabled.getter();
  v1 = 10.0;
  if (v0)
  {
    v1 = 30.0;
  }

  return Defaults.float(for:default:)(25, v1);
}

double Defaults.localParticipantCornerRadius.getter()
{
  v0 = static Platform.current.getter();
  v1 = 20.0;
  if (v0 == 3)
  {
    v1 = 10.0;
  }

  return Defaults.float(for:default:)(25, v1);
}

float Defaults.emaTimeScale.getter()
{
  Defaults.float(for:default:)(29, 60.0);
  OUTLINED_FUNCTION_8_103();
  if (!(!v3 & v2))
  {
    return v1;
  }

  return result;
}

double Defaults.emaTimerFrequency.getter()
{
  Defaults.double(for:default:)(30, 0.06);
  OUTLINED_FUNCTION_14_70();
  if (!(!v3 & v2))
  {
    return v1;
  }

  return result;
}

float Defaults.emaProminenceWeight1.getter()
{
  Defaults.float(for:default:)(31, 1.15);
  OUTLINED_FUNCTION_8_103();
  if (!(!v3 & v2))
  {
    return v1;
  }

  return result;
}

float Defaults.emaProminenceWeight2.getter()
{
  Defaults.float(for:default:)(32, 1.1);
  OUTLINED_FUNCTION_8_103();
  if (!(!v3 & v2))
  {
    return v1;
  }

  return result;
}

float Defaults.emaProminenceWeight3.getter()
{
  Defaults.float(for:default:)(33, 1.05);
  OUTLINED_FUNCTION_8_103();
  if (!(!v3 & v2))
  {
    return v1;
  }

  return result;
}

float Defaults.emaProminenceWeight4.getter()
{
  Defaults.float(for:default:)(34, 1.0);
  OUTLINED_FUNCTION_8_103();
  if (!(!v3 & v2))
  {
    return v1;
  }

  return result;
}

double Defaults.emaMinUIUpdateInterval.getter()
{
  Defaults.double(for:default:)(35, 0.3);
  OUTLINED_FUNCTION_14_70();
  if (!(!v3 & v2))
  {
    return v1;
  }

  return result;
}

float Defaults.emaLowerBoundTreshold.getter()
{
  Defaults.float(for:default:)(36, 0.3);
  OUTLINED_FUNCTION_8_103();
  if (!(!v3 & v2))
  {
    return v1;
  }

  return result;
}

double Defaults.gridInterItemSpacing.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2)
  {
    v3 = [v0 currentDevice];
    v4 = [v3 userInterfaceIdiom];

    v5 = 8.0;
    if (v4 == 2)
    {
      v5 = 20.0;
    }
  }

  else
  {
    v5 = 5.0;
  }

  return Defaults.float(for:default:)(46, v5);
}

double Defaults.gridLayoutProminenceScaleAmount.getter()
{
  v0 = static Platform.current.getter();
  v1 = 16.0;
  if (v0 == 2)
  {
    v1 = 0.0;
  }

  if (!v0)
  {
    v1 = 10.0;
  }

  return Defaults.float(for:default:)(47, v1);
}

uint64_t (*Defaults.shouldUseGridView.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  v1 = Defaults.shouldUseGridView.getter();
  OUTLINED_FUNCTION_18_2(v1);
  return Defaults.shouldUseGridView.modify;
}

uint64_t Defaults.maxHighVideoQualityParticipantCount.getter()
{
  if (Defaults.isInternalInstall.getter())
  {
    return Defaults.int(for:default:)(44, 2);
  }

  else
  {
    return 2;
  }
}

uint64_t Defaults.maxMediumVideoQualityParticipantCount.getter()
{
  if (Defaults.isInternalInstall.getter())
  {
    return Defaults.int(for:default:)(45, 8);
  }

  else
  {
    return 8;
  }
}

uint64_t Defaults.lastUserRequestedLocalParticipantCorner.getter()
{
  v0 = static MultiwayViewConstraintsController.MultiwayCorner.defaultCorner.getter();
  v1 = Defaults.int(for:default:)(80, v0);
  LOBYTE(result) = MultiwayViewConstraintsController.MultiwayCorner.init(rawValue:)(v1);
  if (result == 4)
  {
    return v0;
  }

  else
  {
    return result;
  }
}

uint64_t Defaults.lastUserRequestedLocalParticipantCorner.setter(unsigned __int8 a1)
{
  v2[3] = MEMORY[0x1E69E6530];
  v2[0] = a1;
  Defaults.writeDefaults(value:for:)(v2, 80);
  return outlined destroy of Any?(v2);
}

uint64_t (*Defaults.lastUserRequestedLocalParticipantCorner.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  *(v1 + 8) = Defaults.lastUserRequestedLocalParticipantCorner.getter();
  return Defaults.lastUserRequestedLocalParticipantCorner.modify;
}

uint64_t Defaults.participantEmailsToShowAsNeedingAuthorization.getter()
{
  if ((Defaults.isInternalInstall.getter() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v0 = MEMORY[0x1E69E7CC0];

  return specialized Defaults.array<A>(for:default:)(42, v0);
}

uint64_t (*Defaults.captionsDisclosureHasBeenShown.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  HasBeen = Defaults.captionsDisclosureHasBeenShown.getter();
  OUTLINED_FUNCTION_18_2(HasBeen);
  return Defaults.captionsDisclosureHasBeenShown.modify;
}

uint64_t Defaults.captionsUserAXSettingEnabled.setter(char a1)
{
  v1 = a1 & 1;
  OUTLINED_FUNCTION_0_1();
  result = (*(v2 + 752))();
  if ((result & 1) != v1)
  {

    return MEMORY[0x1EEE60F30](v1);
  }

  return result;
}

uint64_t (*Defaults.captionsUserAXSettingEnabled.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  *(v1 + 8) = _AXSFaceTimeCaptionsEnabled() != 0;
  return Defaults.captionsUserAXSettingEnabled.modify;
}

double Defaults.captionsLowConfidenceThreshold.getter()
{
  v0 = Defaults.isInternalInstall.getter();
  result = 50.0;
  if (v0)
  {
    return Defaults.double(for:default:)(68, 50.0);
  }

  return result;
}

uint64_t Defaults.captionsUnavailableThreshold.getter()
{
  if (Defaults.isInternalInstall.getter())
  {
    return Defaults.int(for:default:)(70, 3);
  }

  else
  {
    return 3;
  }
}

double Defaults.captionsTimeToSuppression.getter()
{
  v0 = Defaults.isInternalInstall.getter();
  result = 5.0;
  if (v0)
  {
    return Defaults.double(for:default:)(71, 5.0);
  }

  return result;
}

double Defaults.captionsTimeToLive.getter()
{
  v0 = Defaults.isInternalInstall.getter();
  result = 60.0;
  if (v0)
  {
    return Defaults.double(for:default:)(72, 60.0);
  }

  return result;
}

unint64_t Defaults.mockScreeningGeneratorEnabled.getter()
{
  return Defaults.mockScreeningGeneratorEnabled.getter();
}

{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = OUTLINED_FUNCTION_28_0();
  v3 = Defaults.BOOL(for:domain:default:)(v2, v0, 0);

  if (v3)
  {
    return Defaults.isInternalInstall.getter() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t Defaults.screeningStatusOverride.getter()
{
  if ((Defaults.isInternalInstall.getter() & 1) == 0)
  {
    return 0;
  }

  v0 = Defaults.int(for:default:)(90, 0);
  LOBYTE(result) = Defaults.CallScreeningOverride.init(rawValue:)(v0);
  if (result == 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t Defaults.screeningSummaryOverride.getter()
{
  if ((Defaults.isInternalInstall.getter() & 1) == 0)
  {
    return 0;
  }

  result = Defaults.string(for:default:)(91, 0);
  if (!v1)
  {
    return 0;
  }

  return result;
}

unint64_t Defaults.Key.rawValue.getter(char a1)
{
  result = 0x6E656E696D6F7270;
  switch(a1)
  {
    case 1:
    case 47:
    case 82:
      result = 0xD00000000000001FLL;
      break;
    case 2:
    case 79:
    case 81:
      result = 0xD000000000000010;
      break;
    case 3:
    case 18:
    case 35:
    case 38:
    case 63:
    case 73:
      result = 0xD000000000000016;
      break;
    case 4:
    case 17:
    case 24:
    case 57:
    case 75:
      result = 0xD00000000000001ALL;
      break;
    case 5:
    case 28:
    case 50:
      result = 0xD00000000000001DLL;
      break;
    case 6:
    case 23:
    case 40:
    case 69:
    case 70:
      result = 0xD00000000000001CLL;
      break;
    case 7:
    case 8:
    case 11:
    case 12:
    case 44:
      result = 0xD000000000000023;
      break;
    case 9:
    case 36:
    case 61:
    case 62:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000020;
      break;
    case 13:
    case 37:
    case 48:
    case 49:
    case 72:
      result = 0xD000000000000012;
      break;
    case 14:
      return result;
    case 15:
    case 27:
    case 85:
      result = 0xD000000000000013;
      break;
    case 16:
    case 30:
    case 43:
    case 60:
      result = 0xD000000000000011;
      break;
    case 19:
    case 21:
    case 65:
    case 87:
      result = 0xD00000000000001BLL;
      break;
    case 20:
    case 26:
    case 41:
    case 55:
    case 71:
      result = 0xD000000000000019;
      break;
    case 22:
      result = 0xD000000000000017;
      break;
    case 25:
      result = 0xD000000000000017;
      break;
    case 29:
      result = 0x53656D6954616D65;
      break;
    case 31:
    case 32:
    case 33:
    case 34:
    case 39:
    case 46:
    case 84:
    case 93:
      result = 0xD000000000000014;
      break;
    case 42:
      result = 0xD00000000000002DLL;
      break;
    case 45:
    case 64:
    case 74:
      result = 0xD000000000000025;
      break;
    case 51:
      result = 0x6944656369746F6ELL;
      break;
    case 52:
      result = 0xD000000000000017;
      break;
    case 54:
      result = 0xD000000000000017;
      break;
    case 56:
      result = 0xD000000000000017;
      break;
    case 58:
      result = 0xD000000000000017;
      break;
    case 59:
      result = 0xD000000000000017;
      break;
    case 67:
    case 68:
    case 83:
      result = 0xD00000000000001ELL;
      break;
    case 76:
    case 80:
    case 92:
      result = 0xD000000000000027;
      break;
    case 77:
      result = 0xD00000000000002BLL;
      break;
    case 78:
      result = 0xD000000000000017;
      break;
    case 86:
      result = 0xD00000000000002FLL;
      break;
    case 88:
      result = 0xD00000000000002ALL;
      break;
    case 89:
      result = 0xD000000000000022;
      break;
    case 90:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t (*Defaults.shouldShowLinkEducationFirstTimeAlert.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  Time = Defaults.shouldShowLinkEducationFirstTimeAlert.getter();
  OUTLINED_FUNCTION_18_2(Time);
  return Defaults.shouldShowLinkEducationFirstTimeAlert.modify;
}

uint64_t key path setter for Defaults.participantHandlesOfAcknowledgedRCSessions : Defaults(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 936);

  return v2(v3);
}

uint64_t Defaults.participantHandlesOfAcknowledgedRCSessions.setter(uint64_t a1)
{
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v3[0] = a1;
  Defaults.writeDefaults(value:for:)(v3, 88);
  return outlined destroy of Any?(v3);
}

void (*Defaults.participantHandlesOfAcknowledgedRCSessions.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = specialized Defaults.array<A>(for:default:)(88, MEMORY[0x1E69E7CC0]);
  return Defaults.participantHandlesOfAcknowledgedRCSessions.modify;
}

void Defaults.participantHandlesOfAcknowledgedRCSessions.modify(uint64_t *a1, char a2)
{
  if (a2)
  {

    Defaults.participantHandlesOfAcknowledgedRCSessions.setter(v2);
  }

  else
  {
    Defaults.participantHandlesOfAcknowledgedRCSessions.setter(*a1);
  }
}

uint64_t Defaults.enableAudioVisualization.getter(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = Defaults.BOOL(for:domain:default:)(v3, v4, v2);

  return v5 & 1;
}

uint64_t Defaults.callScreeningLiveActivitiesEnabledOnLock.getter()
{
  result = [*(v0 + 16) receptionistEnabled];
  if (result)
  {
    if (Defaults.isInternalInstall.getter())
    {

      return Defaults.sensitiveUIEnabled.getter();
    }

    else
    {
      return 1;
    }
  }

  return result;
}

id Defaults.callScreeningLiveActivitiesEnabledOnLock(with:)()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = objc_allocWithZone(type metadata accessor for Defaults.Observation());
  v3 = v1;

  return Defaults.Observation.init(userDefault:key:onChange:)();
}

uint64_t Defaults.shouldShowVoicemailIntroText.setter(char a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E6370];
  v3[0] = a1;
  Defaults.writeDefaults(value:for:)(v3, a2);
  return outlined destroy of Any?(v3);
}

uint64_t (*Defaults.testTrackingFailure.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  v1 = Defaults.testTrackingFailure.getter();
  OUTLINED_FUNCTION_18_2(v1);
  return Defaults.testTrackingFailure.modify;
}

uint64_t Defaults.BoxedValue.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t Defaults.sensitiveUIEnabled.getter()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (Defaults.BOOL(for:domain:default:)(93, v2, 0))
  {
    v3 = 1;
  }

  else
  {
    v3 = _UISolariumEnabled();
  }

  return v3;
}

void Defaults.writeDefaults(value:for:)(uint64_t a1, char a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  outlined init with copy of Any?(a1, v14);
  v5 = v15;
  if (v15)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = Defaults.Key.rawValue.getter(a2);
  v13 = MEMORY[0x1BFB209B0](v12);

  [v4 setValue:v11 forKey:v13];

  swift_unknownObjectRelease();
}

uint64_t Defaults.BOOL(for:domain:default:)(char a1, void *a2, unsigned __int8 a3)
{
  v6 = Defaults.Key.rawValue.getter(a1);
  v7 = MEMORY[0x1BFB209B0](v6);

  v8 = [a2 objectForKey_];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v20, v23);
    outlined destroy of Any?(v23);
    v17 = Defaults.Key.rawValue.getter(a1);
    v18 = MEMORY[0x1BFB209B0](v17);

    a3 = [a2 BOOLForKey_];
  }

  else
  {
    OUTLINED_FUNCTION_12_91(v9, v10, v11, v12, v13, v14, v15, v16, v20, *(&v20 + 1), v21, v22, v23[0], v23[1]);
  }

  return a3 & 1;
}

id Defaults.int(for:default:)(char a1, id a2)
{
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = Defaults.Key.rawValue.getter(a1);
  v7 = MEMORY[0x1BFB209B0](v6);

  v8 = [v5 objectForKey_];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v21, v24);
    outlined destroy of Any?(v24);
    v17 = [v4 standardUserDefaults];
    v18 = Defaults.Key.rawValue.getter(a1);
    v19 = MEMORY[0x1BFB209B0](v18);

    a2 = [v17 integerForKey_];
  }

  else
  {
    OUTLINED_FUNCTION_12_91(v9, v10, v11, v12, v13, v14, v15, v16, v21, *(&v21 + 1), v22, v23, v24[0], v24[1]);
  }

  return a2;
}

float Defaults.float(for:default:)(char a1, float a2)
{
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = Defaults.Key.rawValue.getter(a1);
  v7 = MEMORY[0x1BFB209B0](v6);

  v8 = [v5 objectForKey_];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v23, v26);
    outlined destroy of Any?(v26);
    v17 = [v4 standardUserDefaults];
    v18 = OUTLINED_FUNCTION_28_0();
    v19 = Defaults.Key.rawValue.getter(v18);
    v20 = MEMORY[0x1BFB209B0](v19);

    [v4 floatForKey_];
    a2 = v21;
  }

  else
  {
    OUTLINED_FUNCTION_12_91(v9, v10, v11, v12, v13, v14, v15, v16, v23, *(&v23 + 1), v24, v25, v26[0], v26[1]);
  }

  return a2;
}

double Defaults.double(for:default:)(char a1, double a2)
{
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = Defaults.Key.rawValue.getter(a1);
  v7 = MEMORY[0x1BFB209B0](v6);

  v8 = [v5 objectForKey_];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v23, v26);
    outlined destroy of Any?(v26);
    v17 = [v4 standardUserDefaults];
    v18 = OUTLINED_FUNCTION_28_0();
    v19 = Defaults.Key.rawValue.getter(v18);
    v20 = MEMORY[0x1BFB209B0](v19);

    [v4 doubleForKey_];
    a2 = v21;
  }

  else
  {
    OUTLINED_FUNCTION_12_91(v9, v10, v11, v12, v13, v14, v15, v16, v23, *(&v23 + 1), v24, v25, v26[0], v26[1]);
  }

  return a2;
}

uint64_t specialized Defaults.array<A>(for:default:)(char a1, uint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = Defaults.Key.rawValue.getter(a1);
  v6 = MEMORY[0x1BFB209B0](v5);

  v7 = [v4 arrayForKey_];

  if (v7)
  {
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = specialized _arrayConditionalCast<A, B>(_:)(v8);

    if (v9)
    {
      return v9;
    }
  }

  return a2;
}

uint64_t Defaults.string(for:default:)(char a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = Defaults.Key.rawValue.getter(a1);
  v7 = MEMORY[0x1BFB209B0](v6);

  v8 = [v5 stringForKey_];

  if (v8)
  {

    v9 = [v4 standardUserDefaults];
    v10 = Defaults.Key.rawValue.getter(a1);
    v11 = MEMORY[0x1BFB209B0](v10);

    v12 = [v9 stringForKey_];

    if (v12)
    {
      a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      return 0;
    }
  }

  else
  {
  }

  return a2;
}

uint64_t Defaults.__deallocating_deinit()
{
  Defaults.deinit();
  OUTLINED_FUNCTION_19_16();

  return swift_deallocClassInstance();
}

void (*protocol witness for DefaultsProvider.shouldUseGridView.modify in conformance Defaults(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 544))();
  return protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for DefaultsProvider.shouldShowLinkEducationFirstTimeAlert.modify in conformance Defaults(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 896))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for DefaultsProvider.captionsDisclosureHasBeenShown.modify in conformance Defaults(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 744))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for DefaultsProvider.captionsUserAXSettingEnabled.modify in conformance Defaults(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 768))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for DefaultsProvider.lastUserRequestedLocalParticipantCorner.modify in conformance Defaults(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 704))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for DefaultsProvider.participantHandlesOfAcknowledgedRCSessions.modify in conformance Defaults(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 944))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

id outlined bridged method (mbnn) of @objc LSApplicationWorkspace.applicationIsInstalled(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0](a1);

  v5 = [a3 applicationIsInstalled_];

  return v5;
}

unint64_t lazy protocol witness table accessor for type Defaults.CallScreeningOverride and conformance Defaults.CallScreeningOverride()
{
  result = lazy protocol witness table cache variable for type Defaults.CallScreeningOverride and conformance Defaults.CallScreeningOverride;
  if (!lazy protocol witness table cache variable for type Defaults.CallScreeningOverride and conformance Defaults.CallScreeningOverride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Defaults.CallScreeningOverride and conformance Defaults.CallScreeningOverride);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Defaults.CallScreeningOverride(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey()
{
  result = lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey;
  if (!lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey);
  }

  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id PreCallConfirmationViewController.init(callCenter:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController_confirmationCancel];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController_confirmationCompletion];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___videoPreview] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___buttonsViewModel] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___buttonsView] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___statusViewModel] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___statusView] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController_callCenter] = a1;
  v6 = type metadata accessor for PreCallConfirmationService();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = &v1[OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController_service];
  v8[3] = v6;
  v8[4] = &protocol witness table for PreCallConfirmationService;
  *v8 = v7;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = a1;
  return objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
}

id PreCallConfirmationViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PreCallConfirmationViewController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController_confirmationCancel);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController_confirmationCompletion);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___videoPreview) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___buttonsViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___buttonsView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___statusViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___statusView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t PreCallConfirmationViewController.requestPreCallConfirmation(_:cancel:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = (v5 + OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController_confirmationCancel);
  v11 = *(v5 + OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController_confirmationCancel);
  v12 = *(v5 + OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController_confirmationCancel + 8);
  *v10 = a2;
  v10[1] = a3;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a2, a3);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v11, v12);
  v13 = (v5 + OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController_confirmationCompletion);
  v14 = *(v5 + OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController_confirmationCompletion);
  v15 = *(v5 + OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController_confirmationCompletion + 8);
  *v13 = a4;
  v13[1] = a5;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a4, a5);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v14, v15);
  PreCallConfirmationViewController.buttonsViewModel.getter();
  v18 = v8;
  v19 = v9;
  PreCallButtonsViewModel.setPreCallContext(_:)(&v18, v16);
}

void *PreCallConfirmationViewController.buttonsViewModel.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___buttonsViewModel;
  if (*&v0[OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___buttonsViewModel])
  {
    v2 = *&v0[OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___buttonsViewModel];
  }

  else
  {
    v3 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit7WeakBoxCyAA33PreCallConfirmationViewControllerCGMd, &_s15ConversationKit7WeakBoxCyAA33PreCallConfirmationViewControllerCGMR);
    swift_allocObject();
    v4 = v0;
    v5 = specialized WeakBox.init(_:)(v0);
    type metadata accessor for PreCallButtonsViewModel(0);
    swift_allocObject();
    v2 = PreCallButtonsViewModel.init(preCallDelegate:)(v5, &protocol witness table for <> WeakBox<A>, &protocol witness table for WeakBox<A>);
    *&v3[v1] = v2;
  }

  return v2;
}

Swift::Void __swiftcall PreCallConfirmationViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  PreCallConfirmationViewController.setupConstraints()();
  PreCallConfirmationViewController.statusViewModel.getter();
  PreCallStatusViewModel.startObservation()();
}

void PreCallConfirmationViewController.setupConstraints()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA7F0;
  v3 = PreCallConfirmationViewController.videoPreview.getter(&OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___videoPreview, closure #1 in PreCallConfirmationViewController.videoPreview.getter);
  v4 = [v3 topAnchor];

  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v5 topAnchor];

  v8 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v8;
  v9 = OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___videoPreview;
  v10 = [*&v1[OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___videoPreview] bottomAnchor];
  v11 = [v1 view];
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v11;
  v13 = [v11 bottomAnchor];

  v14 = [v10 constraintEqualToAnchor_];
  *(v2 + 40) = v14;
  v15 = [*&v1[v9] leadingAnchor];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v16 leadingAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v2 + 48) = v19;
  v20 = [*&v1[v9] trailingAnchor];
  v21 = [v1 view];
  if (!v21)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = [v21 trailingAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  *(v2 + 56) = v24;
  v25 = PreCallConfirmationViewController.setupButtonsView()();
  specialized Array.append<A>(contentsOf:)(v25);
  v26 = PreCallConfirmationViewController.setupStatus()();
  specialized Array.append<A>(contentsOf:)(v26);
  v27 = objc_opt_self();
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints_];
}

uint64_t PreCallConfirmationViewController.statusViewModel.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___statusViewModel;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___statusViewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___statusViewModel);
  }

  else
  {
    v3 = PreCallConfirmationViewController.buttonsViewModel.getter();
    type metadata accessor for PreCallStatusViewModel();
    v4 = swift_allocObject();
    v2 = specialized PreCallStatusViewModel.init(preCallContextProvider:)(v3, v4);
    *(v0 + v1) = v2;
  }

  return v2;
}

Swift::Void __swiftcall PreCallConfirmationViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewWillAppear_, a1);
  v3 = [*&v1[OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController_callCenter] videoDeviceController];
  [v3 startPreview];
}

id PreCallConfirmationViewController.setupButtonsView()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC4BC370;
  v2 = PreCallConfirmationViewController.videoPreview.getter(&OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___buttonsView, closure #1 in PreCallConfirmationViewController.buttonsView.getter);
  v3 = [v2 leadingAnchor];

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  v6 = [result leadingAnchor];

  v7 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v7;
  v8 = OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___buttonsView;
  v9 = [*&v0[OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___buttonsView] trailingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = result;
  v11 = [result trailingAnchor];

  v12 = [v9 constraintLessThanOrEqualToAnchor_];
  *(v1 + 40) = v12;
  v13 = [*&v0[v8] bottomAnchor];
  result = [v0 view];
  if (result)
  {
    v14 = result;
    v15 = [result bottomAnchor];

    v16 = [v13 constraintEqualToAnchor_];
    *(v1 + 48) = v16;
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

id PreCallConfirmationViewController.setupStatus()()
{
  v1 = PreCallConfirmationViewController.statusViewModel.getter();
  v2 = PreCallConfirmationViewController.videoPreview.getter(&OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___statusView, closure #1 in CallControlsViewController.statusView.getter);
  swift_beginAccess();
  *(v1 + 24) = &protocol witness table for CallControlsStatusView;
  swift_unknownObjectWeakAssign();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BC370;
  v4 = OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___statusView;
  v5 = [*&v0[OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController____lazy_storage___statusView] topAnchor];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = result;
  v8 = [result topAnchor];

  v9 = [v5 constraintEqualToAnchor:v8 constant:52.0];
  *(v3 + 32) = v9;
  v10 = [*&v0[v4] leadingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  v12 = [result safeAreaLayoutGuide];

  v13 = [v12 leadingAnchor];
  v14 = [v10 constraintEqualToAnchor:v13 constant:24.0];

  *(v3 + 40) = v14;
  v15 = [*&v0[v4] trailingAnchor];
  result = [v0 view];
  if (result)
  {
    v16 = result;
    v17 = [result safeAreaLayoutGuide];

    v18 = [v17 trailingAnchor];
    v19 = [v15 constraintLessThanOrEqualToAnchor_];

    *(v3 + 48) = v19;
    return v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

id closure #1 in PreCallConfirmationViewController.videoPreview.getter(char *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v2 layer];
  [v3 setContentsGravity_];

  v4 = *&a1[OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController_callCenter];
  v5 = [v4 videoDeviceController];
  v6 = [v2 layer];
  [v5 setLocalFrontLayer_];

  v7 = [v4 videoDeviceController];
  [v7 setCurrentVideoOrientation_];

  result = [a1 view];
  if (result)
  {
    v9 = result;
    [result addSubview_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in PreCallConfirmationViewController.buttonsView.getter(void *a1)
{
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for PreCallButtonsView(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21[-1] - v7;
  outlined init with copy of IDSLookupManager(a1 + OBJC_IVAR____TtC15ConversationKit33PreCallConfirmationViewController_service, v21);
  PreCallConfirmationViewController.buttonsViewModel.getter();
  PreCallButtonsView.init(service:viewModel:)(v21, v8);
  outlined init with copy of PreCallButtonsView(v8, v5);
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy15ConversationKit18PreCallButtonsViewVGMd, &_s7SwiftUI19UIHostingControllerCy15ConversationKit18PreCallButtonsViewVGMR));
  v10 = UIHostingController.init(rootView:)();
  UIHostingController.safeAreaRegions.setter();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v11 = v10;
  [a1 addChildViewController_];
  v12 = [a1 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = v12;
  v14 = [v11 view];
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = v14;
  [v13 addSubview_];

  [v11 didMoveToParentViewController_];
  v16 = [v11 view];

  if (!v16)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v16 setTranslatesAutoresizingMaskIntoConstraints_];

  v17 = [v11 view];
  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = [objc_opt_self() clearColor];
  [v17 setBackgroundColor_];

  v19 = [v11 view];
  if (v19)
  {
    outlined destroy of PreCallButtonsView(v8);

    return;
  }

LABEL_11:
  __break(1u);
}

id PreCallConfirmationViewController.videoPreview.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id PreCallConfirmationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id PreCallConfirmationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *WeakBox<>.didTapCancel()(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = &result[*a1];
    v5 = *v4;
    if (*v4)
    {
      v6 = *(v4 + 1);

      v5(v7);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
    }

    PreCallConfirmationViewController.buttonsViewModel.getter();
    PreCallButtonsViewModel.clearPreCallContext()();
  }

  return result;
}

uint64_t specialized PreCallStatusViewModel.init(preCallContextProvider:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for PreCallButtonsViewModel(0);
  v7 = &protocol witness table for PreCallButtonsViewModel;
  *&v5 = a1;
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 72) = 0;
  outlined init with take of TapInteractionHandler(&v5, a2 + 32);
  return a2;
}

uint64_t outlined destroy of PreCallButtonsView(uint64_t a1)
{
  v2 = type metadata accessor for PreCallButtonsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CallRecordingViewMaterialType.effect.getter()
{
  if (*v0)
  {
    if (*v0 != 1)
    {
      goto LABEL_8;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIVisualEffect, 0x1E69DD290);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1BC4BAC30;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColorEffect, 0x1E69DC898);
    *(v1 + 32) = static UIColorEffect.inCallControlsButtonAvatarOnly.getter();
    result = @nonobjc UIVisualEffect.init(combiningEffects:)(v1);
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA930;
  result = [objc_opt_self() effectWithBlurRadius_];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = result;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIVisualEffect, 0x1E69DD290);
  *(v3 + 32) = v4;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColorEffect, 0x1E69DC898);
  *(v3 + 40) = static UIColorEffect.inCallControls.getter();
  result = @nonobjc UIVisualEffect.init(combiningEffects:)(v3);
  if (result)
  {
    return result;
  }

  __break(1u);
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4BA930;
  result = [objc_opt_self() effectWithBlurRadius_];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIVisualEffect, 0x1E69DD290);
  *(v5 + 32) = v6;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColorEffect, 0x1E69DC898);
  *(v5 + 40) = static UIColorEffect.inCallControlsButtonNoPhotoNoAvatar.getter();
  result = @nonobjc UIVisualEffect.init(combiningEffects:)(v5);
  if (!result)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

id @nonobjc UIVisualEffect.init(combiningEffects:)(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIVisualEffect, 0x1E69DD290);
    v1.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v1.super.isa = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() effectCombiningEffects_];

  return v2;
}

ConversationKit::CallRecordingViewMaterialType_optional __swiftcall CallRecordingViewMaterialType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type CallRecordingViewMaterialType and conformance CallRecordingViewMaterialType()
{
  result = lazy protocol witness table cache variable for type CallRecordingViewMaterialType and conformance CallRecordingViewMaterialType;
  if (!lazy protocol witness table cache variable for type CallRecordingViewMaterialType and conformance CallRecordingViewMaterialType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallRecordingViewMaterialType and conformance CallRecordingViewMaterialType);
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CallRecordingViewMaterialType@<X0>(uint64_t *a1@<X8>)
{
  result = CallRecordingViewMaterialType.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CallRecordingViewMaterialType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void DockKitAccessoryManager.trackingSummaryData(info:data:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 56);
    type metadata accessor for TrackingSummaryInternal();
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    v8 = static TrackingSummaryInternal.decode(data:)();
    outlined consume of Data._Representation(v5, v7);
    if (v8)
    {
      v9 = OBJC_IVAR____TtC15ConversationKit23DockKitAccessoryManager_lastTrackingSummary;
      swift_beginAccess();
      *(v2 + v9) = v8;

      ObjectType = swift_getObjectType();
      (*(v4 + 32))(v8, ObjectType, v4);

      swift_unknownObjectRelease();
    }

    else
    {
      v14 = a1;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        *(v17 + 4) = v14;
        *v18 = v14;
        v19 = v14;
        _os_log_impl(&dword_1BBC58000, v15, v16, "Failed to decode tracking summary for %@", v17, 0xCu);
        outlined destroy of NSObject?(v18);
        MEMORY[0x1BFB23DF0](v18, -1, -1);
        MEMORY[0x1BFB23DF0](v17, -1, -1);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BBC58000, v11, v12, "Camera Controller delegate is nil", v13, 2u);
      MEMORY[0x1BFB23DF0](v13, -1, -1);
    }
  }
}

uint64_t TUConversationLetMeInRequestState.debugDescription.getter(uint64_t a1)
{
  result = 0x656E6F6E2ELL;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x75716552746F6E2ELL;
      break;
    case 2:
      result = 0x747365757165722ELL;
      break;
    case 3:
      result = 0x65766F727070612ELL;
      break;
    default:
      _StringGuts.grow(_:)(71);
      MEMORY[0x1BFB20B10](0xD000000000000045, 0x80000001BC51A1B0);
      v3 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1BFB20B10](v3);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

id ConversationNoticeViewController.__allocating_init(recipe:presentationSize:controlsManager:isSystemAperturePresentation:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a3;
  OUTLINED_FUNCTION_0_91();
  v6 = objc_allocWithZone(v3);
  v7 = OUTLINED_FUNCTION_246();
  return ConversationNoticeViewController.init(recipe:presentationSize:controlsManager:isSystemAperturePresentation:)(v7, a2, v4);
}

uint64_t key path getter for ConversationNoticeViewController.delegate : ConversationNoticeViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ConversationNoticeViewController.delegate : ConversationNoticeViewController(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA8);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ConversationNoticeViewController.delegate.getter()
{
  OUTLINED_FUNCTION_37_1(OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_delegate);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t ConversationNoticeViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ConversationNoticeViewController.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_delegate;
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

uint64_t key path getter for ConversationNoticeViewController.controlsManager : ConversationNoticeViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

id ConversationNoticeViewController.controlsManager.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_controlsManager;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);

  return v3;
}

void ConversationNoticeViewController.controlsManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_controlsManager;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path setter for ConversationNoticeViewController.recipe : ConversationNoticeViewController(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, &v8 - v5, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xD8))(v6);
}

uint64_t ConversationNoticeViewController.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_recipe;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return outlined init with copy of (CGFloat, AutoplayCandidate)(v1 + v3, a1, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
}

uint64_t ConversationNoticeViewController.recipe.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_recipe;
  swift_beginAccess();
  outlined assign with copy of ConversationControlsRecipe?(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x180))(v4);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a1, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
}

uint64_t ConversationNoticeViewController.recipe.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t ConversationNoticeViewController.recipe.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x180))(result);
  }

  return result;
}

double ConversationNoticeViewController.presentationSize.getter()
{
  OUTLINED_FUNCTION_37_1(OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_presentationSize);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *v0;
}

void ConversationNoticeViewController.presentationSize.setter()
{
  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_37_1(OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_presentationSize);
  swift_beginAccess();
  *v0 = v2;
  v0[1] = v1;
}

uint64_t key path getter for ConversationNoticeViewController.expanded : ConversationNoticeViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x100))();
  *a2 = result & 1;
  return result;
}

uint64_t ConversationNoticeViewController.expanded.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_expanded;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t ConversationNoticeViewController.expanded.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_expanded;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t key path getter for ConversationNoticeViewController.menuPresented : ConversationNoticeViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x118))();
  *a2 = result & 1;
  return result;
}

uint64_t ConversationNoticeViewController.menuPresented.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_menuPresented;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t ConversationNoticeViewController.menuPresented.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_menuPresented;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

double ConversationNoticeViewController.systemApertureElement.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_0_208();
  (*((*MEMORY[0x1E69E7D40] & v5) + 0xD0))();
  v6 = type metadata accessor for ConversationControlsRecipe(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v6))
  {
    v7 = 0;
    v8 = 0;
    v12 = 0u;
    v13 = xmmword_1BC4C9460;
    v11 = 0u;
    v10 = 0u;
  }

  else
  {
    memcpy(__dst, (v1 + *(v6 + 72)), 0x49uLL);
    outlined init with copy of (CGFloat, AutoplayCandidate)(__dst, v14, &_s15ConversationKit21SystemApertureElementVSgMd, &_s15ConversationKit21SystemApertureElementVSgMR);
    v12 = __dst[1];
    v13 = __dst[0];
    v10 = __dst[3];
    v11 = __dst[2];
    v7 = *&__dst[4];
    v8 = BYTE8(__dst[4]);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  *a1 = v13;
  *(a1 + 16) = v12;
  result = *&v11;
  *(a1 + 32) = v11;
  *(a1 + 48) = v10;
  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  return result;
}

void *ConversationNoticeViewController.systemAperturePreferredContentSize.getter()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_isSystemAperturePresentation) != 1)
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_noticeView);
  if (v1)
  {
    type metadata accessor for SystemApertureNoticeView(0);
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xB8);
      v4 = v1;
      v1 = v3();
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t key path getter for ConversationNoticeViewController.findoView : ConversationNoticeViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x158))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationNoticeViewController.findoView : ConversationNoticeViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x160);
  v4 = *a1;
  return v3(v2);
}

void *ConversationNoticeViewController.findoView.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_findoView;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void ConversationNoticeViewController.findoView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_findoView;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ConversationNoticeViewController.init(recipe:presentationSize:controlsManager:isSystemAperturePresentation:)(uint64_t a1, void *a2, char a3)
{
  OUTLINED_FUNCTION_0_91();
  v9 = v8;
  *(v3 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_recipe;
  v11 = type metadata accessor for ConversationControlsRecipe(0);
  __swift_storeEnumTagSinglePayload(v3 + v10, 1, 1, v11);
  *(v3 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_expanded) = 0;
  *(v3 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_menuPresented) = 0;
  *(v3 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_noticeView) = 0;
  *(v3 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_findoView) = 0;
  *(v3 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController____lazy_storage___systemApertureLeadingAccessoryTapGesture) = 0;
  swift_beginAccess();
  outlined assign with copy of ConversationControlsRecipe?(v9, v3 + v10);
  swift_endAccess();
  v12 = (v3 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_presentationSize);
  *v12 = v5;
  v12[1] = v4;
  *(v3 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_controlsManager) = a2;
  *(v3 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_isSystemAperturePresentation) = a3;
  type metadata accessor for ConversationNoticeViewController(0);
  v13 = a2;
  OUTLINED_FUNCTION_3_0();
  v16 = objc_msgSendSuper2(v14, v15);
  ConversationNoticeViewController.updatePresentationSize(to:)(__PAIR128__(v4, v5));

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  return v16;
}

uint64_t type metadata accessor for ConversationNoticeViewController(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConversationNoticeViewController;
  if (!type metadata singleton initialization cache for ConversationNoticeViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall ConversationNoticeViewController.updatePresentationSize(to:)(CGSize to)
{
  OUTLINED_FUNCTION_0_91();
  static Layout.ConversationControls.values.getter(&v4);
  if (v5 < v3)
  {
    v3 = v5;
  }

  OUTLINED_FUNCTION_37_1(OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_presentationSize);
  swift_beginAccess();
  *v1 = v3;
  *(v1 + 8) = v2;
}

id ConversationNoticeViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ConversationNoticeViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_recipe;
  v2 = type metadata accessor for ConversationControlsRecipe(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_expanded) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_menuPresented) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_noticeView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_findoView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController____lazy_storage___systemApertureLeadingAccessoryTapGesture) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ConversationNoticeViewController.viewDidLoad()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationNoticeViewController(0);
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  ConversationNoticeViewController.setupRootView()(v1);
}

Swift::Void __swiftcall ConversationNoticeViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for ConversationNoticeViewController(0);
  objc_msgSendSuper2(&v14, sel_traitCollectionDidChange_, isa);
  if (isa)
  {
    v3 = isa;
    v4 = [v1 traitCollection];
    v5 = [v4 preferredContentSizeCategory];

    v6 = [(objc_class *)v3 preferredContentSizeCategory];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        if (*(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_isSystemAperturePresentation) == 1)
        {
          (*((*MEMORY[0x1E69E7D40] & *v1) + 0x180))(v13);
        }

        else
        {
          ConversationNoticeViewController.setupPillView()();
        }
      }
    }
  }
}

void ConversationNoticeViewController.viewWillTransition(to:with:)(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = partial apply for closure #1 in ConversationNoticeViewController.viewWillTransition(to:with:);
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v4[3] = &block_descriptor_108;
  v3 = _Block_copy(v4);

  [a1 animateAlongsideTransition:v3 completion:0];
  _Block_release(v3);
}

void closure #1 in ConversationNoticeViewController.viewWillTransition(to:with:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_noticeView);

    [v4 layoutIfNeeded];
  }
}

void ConversationNoticeViewController.setupRootView()(__n128 a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_isSystemAperturePresentation) == 1)
  {
    ConversationNoticeViewController.setupFaceTimeApertureView()();
  }

  else
  {
    ConversationNoticeViewController.setupPillView()();
  }

  ConversationNoticeViewController.updatePreferredContentSize()();
}

Swift::Void __swiftcall ConversationNoticeViewController.updateNoticeView()()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 SBUISA_layoutMode];

    if ((v3 - 2) >= 3)
    {
      ConversationNoticeViewController.setupPillView()();
    }

    else
    {
      (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1D0))();
    }

    ConversationNoticeViewController.updatePreferredContentSize()();
  }

  else
  {
    __break(1u);
  }
}

void ConversationNoticeViewController.setupPillView()()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34();
  v6 = type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_0_208();
  (*((*MEMORY[0x1E69E7D40] & v8) + 0xD0))();
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
LABEL_20:
    OUTLINED_FUNCTION_19_52();
    return;
  }

  outlined init with take of ConversationControlsRecipe(v2, v1);
  v9 = OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_noticeView;
  [*&v0[OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_noticeView] removeFromSuperview];
  ConversationControlsType.associatedNotice.getter(v43);
  if (v44)
  {
    v10 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v11 = OUTLINED_FUNCTION_246();
    v12(v11, v10);
    v13 = v42;
    __swift_destroy_boxed_opaque_existential_1(v43);
    if (v42)
    {
      if (v42 == 1)
      {
        v13 = ConversationNoticeViewController.chevronView.getter();
      }

      else
      {
        ConversationNoticeViewController.trailingButton.getter();
        v14 = OUTLINED_FUNCTION_246();
        outlined consume of NoticeAccessory(v14, v42);
        v13 = v0;
      }
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s15ConversationKit6Notice_pSgMd, &_s15ConversationKit6Notice_pSgMR);
    v13 = 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for PLPillView, 0x1E69C4A70);
  v15 = ConversationNoticeViewController.leadingAccessoryView()();
  v16 = v13;
  v17 = PLPillView.__allocating_init(leadingAccessoryView:trailingAccessoryView:)(v15, v13);
  [v17 setOverrideUserInterfaceStyle_];
  v18 = [objc_allocWithZone(MEMORY[0x1E69C4A68]) initWithAttributedText:*(v1 + 80) style:1];
  v19 = *(v1 + 88);
  if (specialized Array.count.getter())
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v19 & 0xC000000000000001) == 0, v19);
    v40 = v16;
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1BFB22010](0, v19);
    }

    else
    {
      v20 = *(v19 + 32);
    }

    v21 = v20;
    ConversationControlsType.associatedNotice.getter(v43);
    v22 = v44;
    if (v44)
    {
      v23 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      (*(v23 + 104))(&v41, v22, v23);
      v24 = v41;
      __swift_destroy_boxed_opaque_existential_1(v43);
      v25 = qword_1BC4E6A60[v24];
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s15ConversationKit6Notice_pSgMd, &_s15ConversationKit6Notice_pSgMR);
      v25 = 2;
    }

    v28 = [objc_allocWithZone(MEMORY[0x1E69C4A68]) initWithAttributedText:v21 style:v25];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1BC4BA930;
    *(v29 + 32) = v18;
    *(v29 + 40) = v28;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for PLPillContentItem, 0x1E69C4A68);
    v30 = v18;
    v31 = v28;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v17 setCenterContentItems_];

    v16 = v40;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BC4BAC30;
    *(v26 + 32) = v18;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for PLPillContentItem, 0x1E69C4A68);
    v27 = v18;
    v21 = Array._bridgeToObjectiveC()().super.isa;

    [v17 setCenterContentItems_];
  }

  [v17 setAutoresizingMask_];
  v33 = [v3 view];
  if (v33)
  {
    [v33 bounds];
    OUTLINED_FUNCTION_20_62();
    OUTLINED_FUNCTION_12_92(v34, sel_setFrame_);
    v35 = [v3 view];
    if (v35)
    {
      v36 = v35;
      [v35 addSubview_];

      v44 = type metadata accessor for ConversationNoticeViewController(0);
      v43[0] = v3;
      objc_allocWithZone(MEMORY[0x1E69DD060]);
      v37 = v3;
      v38 = @nonobjc UITapGestureRecognizer.init(target:action:)(v43, sel_handleTapGesture);
      [v17 addGestureRecognizer_];

      v39 = *&v3[v9];
      *&v3[v9] = v17;

      outlined destroy of ConversationControlsRecipe(v1);
      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id ConversationNoticeViewController.chevronView.getter()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v0 = @nonobjc UIImage.__allocating_init(systemName:)(0x2E6E6F7276656863, 0xEF64726177726F66);
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v1 setTintColor_];

  return v1;
}

void *ConversationNoticeViewController.leadingAccessoryView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-1] - v4;
  v6 = [v0 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  v8 = UIContentSizeCategory.isAccessibilityCategory.getter();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD0))();
  v9 = type metadata accessor for ConversationControlsRecipe(0);
  if (OUTLINED_FUNCTION_11_103(v9))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  }

  else
  {
    v10 = *(v5 + 7);
    if (!v10)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
      return v10;
    }

    v12 = v10;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    if ((v8 & 1) == 0)
    {
      static Layout.ConversationControls.values.getter(v14);
      [v12 setFrame_];
      [v12 setContentMode_];
      [v12 setClipsToBounds_];
      return v10;
    }
  }

  return 0;
}

id ConversationNoticeViewController.trailingButton.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_0_208();
  (*((*MEMORY[0x1E69E7D40] & v3) + 0xD0))();
  v4 = type metadata accessor for ConversationControlsRecipe(0);
  if (OUTLINED_FUNCTION_11_103(v4))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
LABEL_3:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v18, &_s15ConversationKit6Notice_pSgMd, &_s15ConversationKit6Notice_pSgMR);
    return 0;
  }

  outlined init with copy of ConversationControlsType(v0, v17);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  ConversationControlsType.associatedNotice.getter(&v18);
  outlined destroy of ConversationControlsType(v17);
  if (!*(&v19 + 1))
  {
    goto LABEL_3;
  }

  outlined init with take of TapInteractionHandler(&v18, v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v7 = OUTLINED_FUNCTION_62_0();
  v8(v7);
  if (*(&v18 + 1) >= 2uLL)
  {
    outlined init with copy of IDSLookupManager(v17, &v18);
    v11 = swift_allocObject();
    outlined init with take of TapInteractionHandler(&v18, v11 + 16);
    v12 = OUTLINED_FUNCTION_62_0();
    v5 = ConversationNoticeViewController.buttonView(with:actionHandler:)(v12, v13, v14, v11);
    v15 = OUTLINED_FUNCTION_62_0();
    outlined consume of NoticeAccessory(v15, v16);

    __swift_destroy_boxed_opaque_existential_1(v17);
    return v5;
  }

  v9 = OUTLINED_FUNCTION_62_0();
  outlined consume of NoticeAccessory(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return 0;
}

void (*closure #1 in ConversationNoticeViewController.trailingButton.getter(void *a1))(void)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  result = (*(v2 + 160))(v1, v2);
  if (result)
  {
    v5 = result;
    v6 = v4;
    result();

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
  }

  return result;
}

id ConversationNoticeViewController.buttonView(with:actionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0xB8))();
  v11 = *(v5 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_isSystemAperturePresentation);
  type metadata accessor for ConversationNoticeButtonProvider();
  swift_allocObject();
  v12 = ConversationNoticeButtonProvider.init(controlsManager:context:)(v10, v11 ^ 1u);
  swift_beginAccess();
  *(v12 + 120) = a1;
  *(v12 + 128) = a2;

  ControlsButtonProvider.title.didset(v14, v13);

  v15 = ControlsButtonProvider.makeButton(frame:)();
  v16 = v15;
  if ((v11 & 1) == 0)
  {
    [v15 setTranslatesAutoresizingMaskIntoConstraints_];
    v17 = [v16 widthAnchor];
    [v16 intrinsicContentSize];
    v18 = [v17 constraintEqualToConstant_];

    [v18 setActive_];
    LODWORD(v19) = 1148846080;
    [v16 setContentCompressionResistancePriority:0 forAxis:v19];
  }

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a3;
  v21[4] = a4;
  v22 = v16;

  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a3, a4);
  UIControl.addAction(for:handler:)(64, partial apply for closure #1 in ConversationNoticeViewController.buttonView(with:actionHandler:), v21);

  return v22;
}

Swift::Void __swiftcall ConversationNoticeViewController.handleTapGesture()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_0_208();
  v5 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v6) + 0xD0))();
  v7 = type metadata accessor for ConversationControlsRecipe(0);
  if (OUTLINED_FUNCTION_11_103(v7))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
LABEL_3:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v21, &_s15ConversationKit6Notice_pSgMd, &_s15ConversationKit6Notice_pSgMR);
    return;
  }

  outlined init with copy of ConversationControlsType(v1, &v16);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  ConversationControlsType.associatedNotice.getter(&v21);
  outlined destroy of ConversationControlsType(&v16);
  if (!*(&v22 + 1))
  {
    goto LABEL_3;
  }

  v8 = outlined init with take of TapInteractionHandler(&v21, &v16);
  v9 = (*((*v5 & *v0) + 0xB8))(v8);
  ConversationControlsManager.noticeTapped(notice:isSystemAperturePresentation:)(&v16, *(v2 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_isSystemAperturePresentation), v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24, v25, v26);

  __swift_destroy_boxed_opaque_existential_1(&v16);
}

Swift::Void __swiftcall ConversationNoticeViewController.handleSystemApertureTapGesture()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "handleSystemApertureTapGesture", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1A0);

  v6();
}

uint64_t key path getter for ConversationNoticeViewController.systemApertureLeadingAccessoryTapGesture : ConversationNoticeViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1B0))();
  *a2 = result;
  return result;
}

id ConversationNoticeViewController.systemApertureLeadingAccessoryTapGesture.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController____lazy_storage___systemApertureLeadingAccessoryTapGesture;
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController____lazy_storage___systemApertureLeadingAccessoryTapGesture];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController____lazy_storage___systemApertureLeadingAccessoryTapGesture];
  }

  else
  {
    v4 = v0;
    v10[3] = type metadata accessor for ConversationNoticeViewController(0);
    v10[0] = v0;
    objc_allocWithZone(MEMORY[0x1E69DD060]);
    v5 = v0;
    v6 = @nonobjc UITapGestureRecognizer.init(target:action:)(v10, sel_handleSystemApertureTapGesture);
    v7 = *&v0[v1];
    *&v4[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void ConversationNoticeViewController.systemApertureLeadingAccessoryTapGesture.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController____lazy_storage___systemApertureLeadingAccessoryTapGesture);
  *(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController____lazy_storage___systemApertureLeadingAccessoryTapGesture) = a1;
}

void (*ConversationNoticeViewController.systemApertureLeadingAccessoryTapGesture.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ConversationNoticeViewController.systemApertureLeadingAccessoryTapGesture.getter();
  return ConversationNoticeViewController.systemApertureLeadingAccessoryTapGesture.modify;
}

void ConversationNoticeViewController.systemApertureLeadingAccessoryTapGesture.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController____lazy_storage___systemApertureLeadingAccessoryTapGesture);
  *(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController____lazy_storage___systemApertureLeadingAccessoryTapGesture) = v2;
}

void ConversationNoticeViewController.setupFaceTimeApertureView()()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_34();
  v10 = type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_0_208();
  v12 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v13) + 0xD0))();
  if (__swift_getEnumTagSinglePayload(v2, 1, v10) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    return;
  }

  outlined init with take of ConversationControlsRecipe(v2, v1);
  v14 = OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_noticeView;
  [*&v0[OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_noticeView] removeFromSuperview];
  type metadata accessor for SystemApertureNoticeView(0);
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  outlined init with copy of (CGFloat, AutoplayCandidate)(v1 + *(v10 + 36), v7, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_14_71();
  (*(v16 + 120))(v7);
  ConversationNoticeViewController.trailingButton.getter();
  OUTLINED_FUNCTION_14_71();
  (*(v17 + 168))();
  (*((*v12 & *v0) + 0x1D8))(v15);
  v18 = v15;
  [v18 setAutoresizingMask_];
  v19 = [v0 view];
  if (v19)
  {
    [v19 bounds];
    OUTLINED_FUNCTION_20_62();
    OUTLINED_FUNCTION_12_92(v20, sel_setFrame_);
    v21 = [v0 view];
    if (v21)
    {
      v22 = v21;
      [v21 addSubview_];

      v26[3] = type metadata accessor for ConversationNoticeViewController(0);
      v26[0] = v3;
      objc_allocWithZone(MEMORY[0x1E69DD060]);
      v23 = v3;
      v24 = @nonobjc UITapGestureRecognizer.init(target:action:)(v26, sel_handleSystemApertureTapGesture);
      [v18 addGestureRecognizer_];

      outlined destroy of ConversationControlsRecipe(v1);
      v25 = *&v3[v14];
      *&v3[v14] = v15;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall ConversationNoticeViewController.updateFaceTimeApertureView()()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_0_208();
  v12 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v13) + 0xD0))();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  }

  else
  {
    outlined init with take of ConversationControlsRecipe(v9, v1);
    v14 = *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_noticeView);
    if (v14)
    {
      type metadata accessor for SystemApertureNoticeView(0);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = v15;
        outlined init with copy of (CGFloat, AutoplayCandidate)(v1 + *(v10 + 36), v2, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
        OUTLINED_FUNCTION_18_62();
        v18 = *(v17 + 120);
        v19 = v14;
        v18();
        ConversationNoticeViewController.trailingButton.getter();
        OUTLINED_FUNCTION_18_62();
        (*(v20 + 168))();
        (*((*v12 & *v3) + 0x1D8))(v16);

        outlined destroy of ConversationControlsRecipe(v1);
        return;
      }
    }

    outlined destroy of ConversationControlsRecipe(v1);
  }

  ConversationNoticeViewController.setupFaceTimeApertureView()();
}

void ConversationNoticeViewController.updateLeadingAccessory(in:)(void *a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x88))();
  if (v4)
  {
    v5 = v4;
    v6 = (*((*v3 & *v1) + 0x1B0))();
    [v5 removeGestureRecognizer_];
  }

  v7 = ConversationNoticeViewController.leadingAccessoryView()();
  if (v7)
  {
    v8 = v7;
    if (*(v2 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_isSystemAperturePresentation))
    {
      v9 = 35.33;
    }

    else
    {
      v9 = 35.0;
    }

    v10 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BC4BA930;
    v12 = [v8 widthAnchor];
    v13 = [v12 constraintEqualToConstant_];

    *(v11 + 32) = v13;
    v14 = [v8 heightAnchor];
    v15 = [v14 constraintEqualToConstant_];

    *(v11 + 40) = v15;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 activateConstraints_];

    v17 = (*((*v3 & *v2) + 0x1B0))();
    [v8 addGestureRecognizer_];

    OUTLINED_FUNCTION_15_63();
    v19 = *(v18 + 144);
    v8;
    v19(v8);
    OUTLINED_FUNCTION_19_52();
  }

  else
  {
    OUTLINED_FUNCTION_15_63();
    (*(v22 + 144))();
    OUTLINED_FUNCTION_19_52();
  }
}

id ConversationNoticeViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    MEMORY[0x1BFB209B0](a1);
    OUTLINED_FUNCTION_246();
  }

  else
  {
    v3 = 0;
  }

  v6 = [objc_allocWithZone(v4) initWithNibName:v3 bundle:a3];

  return v6;
}

id ConversationNoticeViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationNoticeViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for ConversationControlsViewController.delegate.modify in conformance ConversationNoticeViewController(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for ConversationControlsViewController.recipe.modify in conformance ConversationNoticeViewController(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE0))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for ConversationControlsViewController.controlsManager.modify in conformance ConversationNoticeViewController(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC8))();
  return protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

Swift::Void __swiftcall ConversationNoticeViewController.updatePreferredContentSize()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationNoticeViewController_noticeView);
  if (v1)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE8);
    v3 = v1;
    v2();
    [v3 systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_];
    [v0 setPreferredContentSize_];
  }
}

void closure #1 in ConversationNoticeViewController.buttonView(with:actionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = MEMORY[0x1E69E7D40];
    v7 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xB8))();
    v8 = (*((*v6 & *v7) + 0x4B8))();
    v10 = v9;

    if (v8)
    {
      ObjectType = swift_getObjectType();
      (*(v10 + 32))(0xD000000000000014, 0x80000001BC51A350, 1, ObjectType, v10);
      (*(v10 + 80))(0xD000000000000014, 0x80000001BC51A350, ObjectType, v10);
      v11 = swift_unknownObjectRelease();
    }

    if (a3)
    {
      a3(v11);
    }
  }
}

void type metadata completion function for ConversationNoticeViewController(uint64_t a1)
{
  type metadata accessor for ConversationControlsRecipe?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t OrganicLayout.Configuration.init(deviceType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v2 = 0;
    v3 = xmmword_1BC4CDB70;
    if (result == 1)
    {
      v4 = 0x408A100000000000;
    }

    else
    {
      v4 = 0x4089000000000000;
    }
  }

  else
  {
    v3 = xmmword_1BC4CDB60;
    v4 = 0;
    v2 = 1;
  }

  *a2 = 0x4030000000000000;
  *(a2 + 8) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v2;
  return result;
}

int8x16_t *OrganicLayout.init(containingSize:frameCount:indexToExpand:configuration:displayScale:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4, CGFloat a5, CGFloat a6, double a7)
{
  v17 = type metadata accessor for FloatingPointRoundingRule();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76.width = 0.0;
  v76.height = 0.0;
  v75.width = a5;
  v75.height = a6;
  if (CGSizeEqualToSize(v75, v76))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.conversationKit;
    v22 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BC4BA940;
    v74 = a1;
    v24 = String.init<A>(reflecting:)();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    os_log(_:dso:log:type:_:)("Asked for frames in zero size. Returning zero frames. frame count: %@", 69, 2, &dword_1BBC58000, v21, v22, v23);

    return _sSa9repeating5countSayxGx_SitcfCSo6CGRectV_Tt1g5(a1, 0.0, 0.0, 0.0, 0.0);
  }

  if (a6 >= a5)
  {
    v28 = a5;
  }

  else
  {
    v28 = a6;
  }

  if (a6 >= a5)
  {
    v29 = a6;
  }

  else
  {
    v29 = a5;
  }

  switch(a1)
  {
    case 4:
      v41 = OUTLINED_FUNCTION_3_157();
      static OrganicLayout.calculate4UpSizeInfo(in:withOverlap:displayScale:)(v41, v42, v43, v44);
      v45 = OUTLINED_FUNCTION_2_165();
      if (v50)
      {
        static OrganicLayout.create4UpOverlappingPairFrames(in:size:overlap:displayScale:)(v45, v46, v47, v48, v49);
      }

      else
      {
        static OrganicLayout.create4UpRegularFrames(in:size:overlap:displayScale:)(v45, v46, v47, v48, v49);
      }

      break;
    case 3:
      v30 = OUTLINED_FUNCTION_3_157();
      static OrganicLayout.calculate3UpSizeInfo(in:withOverlap:displayScale:)(v30, v31, v32, v33);
      v34 = OUTLINED_FUNCTION_2_165();
      if (v39)
      {
        static OrganicLayout.create3UpOverlappingPairFrames(in:size:overlap:displayScale:)(v34, v35, v36, v37, v38);
      }

      else
      {
        static OrganicLayout.create3UpRegularFrames(in:size:overlap:displayScale:)(v34, v35, v36, v37, v38);
      }

      break;
    case 2:
      v40 = static OrganicLayout.createOverlappingPairFrames(in:configuration:displayScale:)(a4, v28, v29, a7);
      break;
    default:
      goto LABEL_42;
  }

  v51 = v40;
  if (a3)
  {
LABEL_36:
    v27 = static OrganicLayout.fitFrames(_:to:)(v51, a5, a6);

    return v27;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v40 + 16) > a2)
  {
    v69 = v28;
    v70 = v29;
    v52 = (v40 + 32 * a2);
    v8 = v52[4];
    v28 = v52[5];
    v7 = v52[6];
    v9 = v52[7];
    v53 = *(v18 + 104);
    v54 = OUTLINED_FUNCTION_1_177();
    v53(v54);
    v71 = a7;
    v73 = CGFloat.rounded(_:toScale:)(v20, a7, v7 * 0.1);
    v55 = *(v18 + 8);
    v55(v20, v17);
    v77.origin.x = OUTLINED_FUNCTION_0_209();
    MinX = CGRectGetMinX(v77);
    v78.origin.x = OUTLINED_FUNCTION_0_209();
    MaxX = CGRectGetMaxX(v78);
    v79.origin.x = OUTLINED_FUNCTION_0_209();
    MinY = CGRectGetMinY(v79);
    v80.origin.x = OUTLINED_FUNCTION_0_209();
    MaxY = CGRectGetMaxY(v80);
    v59 = -1.0;
    v60 = 1.0;
    if (MinX >= 1.0)
    {
      if (v69 + -1.0 >= MaxX)
      {
        v29 = v73;
        v61 = OUTLINED_FUNCTION_1_177();
        v69 = v62;
        v53(v61);
        v63 = CGFloat.rounded(_:toScale:)(v20, v71, v29 * 0.5);
        v55(v20, v17);
        v60 = 1.0;
        v59 = -1.0;
        MaxY = v69;
        v8 = v8 - v63;
      }

      else
      {
        v29 = v73;
        v8 = v8 - v73;
      }
    }

    else
    {
      v29 = v73;
    }

    if (MinY >= v60)
    {
      if (v70 + v59 >= MaxY)
      {
        v64 = OUTLINED_FUNCTION_1_177();
        v53(v64);
        v65 = CGFloat.rounded(_:toScale:)(v20, v71, v29 * 0.5);
        v55(v20, v17);
        v28 = v28 - v65;
      }

      else
      {
        v28 = v28 - v29;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_34;
    }

    goto LABEL_40;
  }

  __break(1u);
LABEL_40:
  specialized _ArrayBuffer._consumeAndCreateNew()();
  v51 = v68;
LABEL_34:
  if (v51[1].i64[0] > a2)
  {
    i64 = v51[2 * a2].i64;
    i64[4] = v8;
    i64[5] = v28;
    i64[6] = v7 + v29;
    i64[7] = v9 + v29;
    goto LABEL_36;
  }

  __break(1u);
LABEL_42:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static OrganicLayout.createOverlappingPairFrames(in:configuration:displayScale:)(uint64_t a1, double a2, double a3, double a4)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = (*a1 + a3) * 0.5;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E7040], v8);
  v14 = CGFloat.rounded(_:toScale:)(v11, a4, v13);
  (*(v9 + 8))(v11, v8);
  v31 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v15 = v31;
  v16 = floor((v14 - v12) * a4);
  v18 = *(v31 + 16);
  v17 = *(v31 + 24);
  v19 = v17 >> 1;
  v20 = v18 + 1;
  if (v17 >> 1 <= v18)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
    v15 = v31;
    v17 = *(v31 + 24);
    v19 = v17 >> 1;
  }

  v21 = v16 / a4;
  *(v15 + 16) = v20;
  v22 = v15 + 32 * v18;
  *(v22 + 32) = 0;
  *(v22 + 40) = v21 * 0.0;
  *(v22 + 48) = v14;
  *(v22 + 56) = v14;
  v23 = v18 + 2;
  if (v19 <= v20)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v23, 1);
    v15 = v31;
  }

  *(v15 + 16) = v23;
  v24 = v15 + 32 * v20;
  *(v24 + 32) = 0;
  *(v24 + 40) = v21;
  *(v24 + 48) = v14;
  *(v24 + 56) = v14;
  if (*(a1 + 32))
  {
    v25 = *(v15 + 48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew()();
      v15 = v28;
    }

    *(v15 + 32) = a2 - v25;
  }

  else
  {
    v26 = *(v15 + 80);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew()();
      v15 = v29;
    }

    *(v15 + 64) = a2 - v26;
  }

  return v15;
}