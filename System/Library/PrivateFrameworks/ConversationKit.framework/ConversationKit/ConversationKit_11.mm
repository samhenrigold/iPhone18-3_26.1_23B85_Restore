id closure #1 in SystemApertureConversationDetailsView.layoutSubviews()(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_primaryLabel);
  [v3 setFrame_];
  [v3 setNeedsLayout];

  return [v3 layoutIfNeeded];
}

id SystemApertureConversationDetailsView.updateStatus()()
{
  v1 = v0;
  v2 = type metadata accessor for ConversationControlsRecipe(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v21 - v7);
  v9 = *&v0[OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_primaryLabel];
  v10 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v10(v6);
  v11 = v8[10];
  outlined destroy of ConversationControlsRecipe(v8);
  [v9 setAttributedText_];

  v12 = *&v1[OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_secondaryLabel];
  (v10)();
  v13 = *(v4 + 11);

  outlined destroy of ConversationControlsRecipe(v4);
  if (specialized Array.count.getter())
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v13 & 0xC000000000000001) == 0, v13);
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1BFB22010](0, v13);
    }

    else
    {
      v14 = *(v13 + 32);
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  [v12 setAttributedText_];

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.conversationKit);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1BBC58000, v17, v18, "[SystemApertureDetails] updateStatus", v19, 2u);
    OUTLINED_FUNCTION_27();
  }

  [v12 setMarqueeEnabled_];
  [v12 setMarqueeRunning_];
  return [v1 setNeedsLayout];
}

uint64_t type metadata accessor for SystemApertureConversationDetailsView(uint64_t a1)
{
  result = type metadata singleton initialization cache for SystemApertureConversationDetailsView;
  if (!type metadata singleton initialization cache for SystemApertureConversationDetailsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id SystemApertureConversationDetailsView.configureSubviews()()
{
  [v0 addSubview_];
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_secondaryLabel];

  return [v0 addSubview_];
}

id SystemApertureConversationDetailsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SystemApertureConversationDetailsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemApertureConversationDetailsView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for SystemApertureControlsStatusView.recipe.modify in conformance SystemApertureConversationDetailsView(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))();
  return protocol witness for Control.cnkContentAlpha.modify in conformance BaseButton;
}

uint64_t type metadata completion function for SystemApertureConversationDetailsView(uint64_t a1)
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

uint64_t UIAction.init(title:subtitle:imageSymbolName:target:selector:discoverabilityTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for UIImage();
  @nonobjc UIImage.__allocating_init(systemName:)(a5, a6);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a8;

  v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  swift_unknownObjectRelease();
  return v15;
}

unint64_t type metadata accessor for UIImage()
{
  result = lazy cache variable for type metadata for UIImage;
  if (!lazy cache variable for type metadata for UIImage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIImage);
  }

  return result;
}

void *closure #1 in UIAction.init(title:subtitle:imageSymbolName:target:selector:discoverabilityTitle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [swift_unknownObjectRetain() performSelector_];
      v6 = v5;
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *TextLayoutEngine.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_25(&one-time initialization token for shared);
  }

  return &static TextLayoutEngine.shared;
}

uint64_t static TextLayoutEngine.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_25(&one-time initialization token for shared);
  }
}

uint64_t TextLayoutEngine.().init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DB800]) init];
  *(v0 + 24) = v1;
  [v1 setLineFragmentPadding_];
  [*(v0 + 24) setMaximumNumberOfLines_];
  [*(v0 + 24) setLineBreakMode_];
  [*(v0 + 24) setWidthTracksTextView_];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DB7C0]) init];
  *(v0 + 32) = v2;
  [v2 addTextContainer_];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DB850]) init];
  *(v0 + 16) = v3;
  [v3 addLayoutManager_];
  return v0;
}

id TextLayoutEngine.draw(text:font:color:lowConfidenceRanges:viewSize:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  TextLayoutEngine.updateMembers(text:font:color:lowConfidenceRanges:viewSize:)(a6, a7, a1, a2, a3, a4, a5);
  v8 = String.count.getter();
  v9 = *(v7 + 32);

  return [v9 drawGlyphsForGlyphRange:0 atPoint:{v8, 0.0, 0.0}];
}

void TextLayoutEngine.updateMembers(text:font:color:lowConfidenceRanges:viewSize:)(double a1, double a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v11 = TextLayoutEngine.attributedTextWithUnderlines(text:font:color:lowConfidenceRanges:)(a3, a4, a5, a6, a7);
  [*(v7 + 16) setAttributedString_];
  v10 = *(v7 + 24);
  [v10 setSize_];
  [*(v7 + 32) ensureLayoutForTextContainer_];
}

__C::CGRect __swiftcall TextLayoutEngine.frame(for:text:font:lowConfidenceRanges:viewSize:)(__C::_NSRange a1, Swift::String text, UIFont font, Swift::OpaquePointer lowConfidenceRanges, CGSize viewSize)
{
  length = a1.length;
  location = a1.location;
  TextLayoutEngine.updateMembers(text:font:color:lowConfidenceRanges:viewSize:)(viewSize.width, viewSize.height, text._countAndFlagsBits, text._object, font.super.isa, 0, lowConfidenceRanges._rawValue);
  v9 = *(v5 + 24);
  v8 = *(v5 + 32);

  [v8 boundingRectForGlyphRange:location inTextContainer:{length, v9}];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

Class TextLayoutEngine.attributedTextWithUnderlines(text:font:color:lowConfidenceRanges:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40);

  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v11.super.isa = NSAttributedString.__allocating_init(string:)(v10).super.isa;
  v44 = String.count.getter();
  static Color.blue.getter();
  if (!a4)
  {
    static Color.primary.getter();
  }

  v12 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);

  v13 = UIColor.init(_:)();
  if (!a4)
  {
  }

  v41 = UIColor.init(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  v15 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v16 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
  v17 = MEMORY[0x1E69DB650];
  *(inited + 40) = a3;
  v18 = *v17;
  v39 = v16;
  *(inited + 64) = v16;
  *(inited + 72) = v18;
  *(inited + 104) = v12;
  *(inited + 80) = v13;
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  v19 = v15;
  v38 = a3;
  v20 = v18;
  v40 = v13;
  v21 = Dictionary.init(dictionaryLiteral:)();
  outlined bridged method (mbnnn) of @objc NSMutableAttributedString.setAttributes(_:range:)(v21, 0, v44, v11.super.isa);
  v22 = *(a5 + 16);
  if (v22)
  {
    v35 = *MEMORY[0x1E69DB758];
    v34 = *MEMORY[0x1E69DB750];
    v23 = (a5 + 40);
    v36 = v12;
    isa = v11.super.isa;
    do
    {
      v43 = *(v23 - 1);
      v45 = v22;
      v42 = *v23;
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_1BC4BB990;
      *(v24 + 32) = v19;
      *(v24 + 40) = v38;
      *(v24 + 64) = v39;
      *(v24 + 72) = v20;
      *(v24 + 80) = v40;
      *(v24 + 104) = v12;
      *(v24 + 112) = v35;
      *(v24 + 120) = 33024;
      *(v24 + 144) = MEMORY[0x1E69E6530];
      *(v24 + 152) = v34;
      *(v24 + 184) = v12;
      *(v24 + 160) = v41;
      v25 = v19;
      v26 = v38;
      v27 = v20;
      v28 = v40;
      v29 = v35;
      v30 = v34;
      v31 = v41;
      v12 = v36;
      v32 = Dictionary.init(dictionaryLiteral:)();
      v11.super.isa = isa;
      outlined bridged method (mbnnn) of @objc NSMutableAttributedString.setAttributes(_:range:)(v32, v43, v42, isa);
      v23 += 2;
      v22 = v45 - 1;
    }

    while (v45 != 1);
  }

  return v11.super.isa;
}

uint64_t TextLayoutEngine.__deallocating_deinit()
{
  TextLayoutEngine.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey()
{
  result = lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey;
  if (!lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey)
  {
    type metadata accessor for NSAttributedStringKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey);
  }

  return result;
}

void outlined bridged method (mbnnn) of @objc NSMutableAttributedString.setAttributes(_:range:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a4 setAttributes:isa range:{a2, a3}];
}

BOOL static PushToTalkViewModel.TalkButtonState.== infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if ((a2 & 0xFE) == 2)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0;
}

Swift::Int PushToTalkViewModel.TransmitSource.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PushToTalkViewModel.TransmitSource(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  PushToTalkViewModel.TransmitSource.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t key path getter for PushToTalkViewModel.pttTalkButtonState : PushToTalkViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t PushToTalkViewModel.pttTalkButtonState.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t PushToTalkViewModel.pttTalkButtonState.setter(char a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for PushToTalkViewModel.$pttTalkButtonState : PushToTalkViewModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit19PushToTalkViewModelC0H11ButtonStateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit19PushToTalkViewModelC0H11ButtonStateO_GMR);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return PushToTalkViewModel.$pttTalkButtonState.setter(v5);
}

uint64_t PushToTalkViewModel.$pttTalkButtonState.getter()
{
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit19PushToTalkViewModel__pttTalkButtonState, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit19PushToTalkViewModelC0G11ButtonStateOGMd, &_s7Combine9PublishedVy15ConversationKit19PushToTalkViewModelC0G11ButtonStateOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t PushToTalkViewModel.$pttTalkButtonState.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit19PushToTalkViewModelC0H11ButtonStateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit19PushToTalkViewModelC0H11ButtonStateO_GMR);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v5 + 16))(&v11[-v8 - 8], a1, v3, v7);
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit19PushToTalkViewModel__pttTalkButtonState, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit19PushToTalkViewModelC0G11ButtonStateOGMd, &_s7Combine9PublishedVy15ConversationKit19PushToTalkViewModelC0G11ButtonStateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t key path setter for PushToTalkViewModel.conversationControlsManager : PushToTalkViewModel(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 168);
  v4 = *a1;
  return v3(v2);
}

void PushToTalkViewModel.conversationControlsManager.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*PushToTalkViewModel.conversationControlsManager.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit19PushToTalkViewModel_conversationControlsManager;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_30_2(v1 + v4, v3);
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return TapInteraction.view.modify;
}

uint64_t PushToTalkViewModel.__allocating_init(conversationControlsManager:)(void *a1)
{
  v2 = swift_allocObject();
  PushToTalkViewModel.init(conversationControlsManager:)(a1);
  return v2;
}

uint64_t PushToTalkViewModel.init(conversationControlsManager:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo22TUCallTransmissionModeV_GMd, &_s7Combine9PublishedV9PublisherVySo22TUCallTransmissionModeV_GMR);
  OUTLINED_FUNCTION_1();
  v60 = v4;
  v61 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_1();
  v54 = v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySo22TUCallTransmissionModeV_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySo22TUCallTransmissionModeV_GGMR);
  OUTLINED_FUNCTION_1();
  v65 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_1();
  v55 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GMd, &_s7Combine9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GMR);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GGMR);
  OUTLINED_FUNCTION_1();
  v58 = v17;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GGAGy_AKySo22TUCallTransmissionModeV_GGGMd, &_s7Combine10PublishersO0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GGAGy_AKySo22TUCallTransmissionModeV_GGGMR);
  OUTLINED_FUNCTION_1();
  v64 = v21;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_1();
  v53 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GGAIy_AMySo22TUCallTransmissionModeV_GGG15ConversationKit0lmN9ViewModelC0n6ButtonP0OGMd, &_s7Combine10PublishersO10CompactMapVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GGAIy_AMySo22TUCallTransmissionModeV_GGG15ConversationKit0lmN9ViewModelC0n6ButtonP0OGMR);
  OUTLINED_FUNCTION_1();
  v66 = v24;
  v67 = v25;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_1();
  v57 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit19PushToTalkViewModelC0G11ButtonStateOGMd, &_s7Combine9PublishedVy15ConversationKit19PushToTalkViewModelC0G11ButtonStateOGMR);
  OUTLINED_FUNCTION_1();
  v30 = v29;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v53 - v32;
  v34 = OBJC_IVAR____TtC15ConversationKit19PushToTalkViewModel__pttTalkButtonState;
  v68[24] = 2;
  Published.init(initialValue:)();
  (*(v30 + 32))(v2 + v34, v33, v28);
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC15ConversationKit19PushToTalkViewModel_talkButtonIsBeingPressed) = 0;
  v59 = OBJC_IVAR____TtC15ConversationKit19PushToTalkViewModel_cancellables;
  *(v2 + OBJC_IVAR____TtC15ConversationKit19PushToTalkViewModel_cancellables) = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v35 = swift_unknownObjectWeakAssign();
  v36 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x780))(v35);
  v37 = MEMORY[0x1E695C068];
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<PushToTalkChannelState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GMd, &_s7Combine9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GMR, MEMORY[0x1E695C068]);
  lazy protocol witness table accessor for type PushToTalkChannelState and conformance PushToTalkChannelState(&lazy protocol witness table cache variable for type PushToTalkChannelState and conformance PushToTalkChannelState, MEMORY[0x1E6995F48], MEMORY[0x1E6995F50]);
  Publisher<>.removeDuplicates()();
  v38 = (*(v13 + 8))(v16, v11);
  v39 = v54;
  (*((*v36 & *a1) + 0x7B0))(v38);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<TUCallTransmissionMode>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo22TUCallTransmissionModeV_GMd, &_s7Combine9PublishedV9PublisherVySo22TUCallTransmissionModeV_GMR, v37);
  lazy protocol witness table accessor for type PushToTalkChannelState and conformance PushToTalkChannelState(&lazy protocol witness table cache variable for type TUCallTransmissionMode and conformance TUCallTransmissionMode, type metadata accessor for TUCallTransmissionMode, &protocol conformance descriptor for TUCallTransmissionMode);
  v40 = v55;
  v41 = v60;
  Publisher<>.removeDuplicates()();
  (*(v61 + 8))(v39, v41);
  v42 = MEMORY[0x1E695BD38];
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<PushToTalkChannelState>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GGMR, MEMORY[0x1E695BD38]);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<TUCallTransmissionMode>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySo22TUCallTransmissionModeV_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySo22TUCallTransmissionModeV_GGMR, v42);
  v43 = v53;
  v44 = v40;
  v45 = v56;
  v46 = v63;
  Publisher.combineLatest<A>(_:)();
  (*(v65 + 8))(v44, v46);
  (*(v58 + 8))(v20, v45);
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = partial apply for closure #1 in PushToTalkViewModel.init(conversationControlsManager:);
  *(v48 + 24) = v47;
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.RemoveDuplicates<Published<PushToTalkChannelState>.Publisher>, Publishers.RemoveDuplicates<Published<TUCallTransmissionMode>.Publisher>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GGAGy_AKySo22TUCallTransmissionModeV_GGGMd, &_s7Combine10PublishersO0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GGAGy_AKySo22TUCallTransmissionModeV_GGGMR, MEMORY[0x1E695BC68]);

  v49 = v57;
  v50 = v62;
  Publisher.compactMap<A>(_:)();

  (*(v64 + 8))(v43, v50);
  swift_allocObject();
  swift_weakInit();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CompactMap<Publishers.CombineLatest<Publishers.RemoveDuplicates<Published<PushToTalkChannelState>.Publisher>, Publishers.RemoveDuplicates<Published<TUCallTransmissionMode>.Publisher>>, PushToTalkViewModel.TalkButtonState> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GGAIy_AMySo22TUCallTransmissionModeV_GGG15ConversationKit0lmN9ViewModelC0n6ButtonP0OGMd, &_s7Combine10PublishersO10CompactMapVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GGAIy_AMySo22TUCallTransmissionModeV_GGG15ConversationKit0lmN9ViewModelC0n6ButtonP0OGMR, MEMORY[0x1E695BC80]);
  v51 = v66;
  Publisher<>.sink(receiveValue:)();

  (*(v67 + 8))(v49, v51);
  OUTLINED_FUNCTION_30_2(v2 + v59, v68);
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v2;
}

uint64_t lazy protocol witness table accessor for type PushToTalkChannelState and conformance PushToTalkChannelState(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t closure #1 in PushToTalkViewModel.init(conversationControlsManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 4;
  }

  v5 = PushToTalkViewModel.state(channelState:transmissionMode:)(a1, a2);

  return v5;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed PushToTalkChannelState, @unowned TUCallTransmissionMode) -> (@unowned PushToTalkViewModel.TalkButtonState?)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore22PushToTalkChannelStateO_So22TUCallTransmissionModeVtMd, &_s20CommunicationsUICore22PushToTalkChannelStateO_So22TUCallTransmissionModeVtMR);
  result = a2(a1, *(a1 + *(v6 + 48)));
  *a3 = result;
  return result;
}

uint64_t closure #2 in PushToTalkViewModel.init(conversationControlsManager:)(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    PushToTalkViewModel.pttTalkButtonState.setter(v2, v4);
  }

  return result;
}

uint64_t PushToTalkViewModel.state(channelState:transmissionMode:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PushToTalkChannelState();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 2)
  {
    return 3;
  }

  (*(v7 + 16))(v11, a1, v5, v9);
  v12 = (*(v7 + 88))(v11, v5);
  if (v12 == *MEMORY[0x1E6995F20])
  {
    return 3;
  }

  if (v12 == *MEMORY[0x1E6995F38])
  {
    return 2;
  }

  if (v12 == *MEMORY[0x1E6995F40])
  {
    if (a2)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else if (v12 == *MEMORY[0x1E6995F28] || v12 == *MEMORY[0x1E6995F30])
  {
    return (*(v2 + OBJC_IVAR____TtC15ConversationKit19PushToTalkViewModel_talkButtonIsBeingPressed) & 1) == 0;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t PushToTalkViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit19PushToTalkViewModel__pttTalkButtonState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit19PushToTalkViewModelC0G11ButtonStateOGMd, &_s7Combine9PublishedVy15ConversationKit19PushToTalkViewModelC0G11ButtonStateOGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  MEMORY[0x1BFB23F10](v0 + OBJC_IVAR____TtC15ConversationKit19PushToTalkViewModel_conversationControlsManager);

  return v0;
}

uint64_t PushToTalkViewModel.__deallocating_deinit()
{
  PushToTalkViewModel.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type PushToTalkViewModel.TransmitSource and conformance PushToTalkViewModel.TransmitSource()
{
  result = lazy protocol witness table cache variable for type PushToTalkViewModel.TransmitSource and conformance PushToTalkViewModel.TransmitSource;
  if (!lazy protocol witness table cache variable for type PushToTalkViewModel.TransmitSource and conformance PushToTalkViewModel.TransmitSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PushToTalkViewModel.TransmitSource and conformance PushToTalkViewModel.TransmitSource);
  }

  return result;
}

uint64_t type metadata accessor for PushToTalkViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for PushToTalkViewModel;
  if (!type metadata singleton initialization cache for PushToTalkViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PushToTalkViewModel(uint64_t a1)
{
  type metadata accessor for Published<PushToTalkViewModel.TalkButtonState>();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<PushToTalkViewModel.TalkButtonState>()
{
  if (!lazy cache variable for type metadata for Published<PushToTalkViewModel.TalkButtonState>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<PushToTalkViewModel.TalkButtonState>);
    }
  }
}

unsigned __int8 *getEnumTagSinglePayload for PushToTalkViewModel.TalkButtonState(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 2)
    {
      v7 = v6 - 1;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 3)
    {
      return (v7 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 3);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PushToTalkViewModel.TalkButtonState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for PushToTalkViewModel.TalkButtonState(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for PushToTalkViewModel.TalkButtonState(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PushToTalkViewModel.TransmitSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PushToTalkViewModel.TransmitSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

id PushToTalkFullScreenViewController.backgroundMaterialView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController____lazy_storage___backgroundMaterialView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController____lazy_storage___backgroundMaterialView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController____lazy_storage___backgroundMaterialView);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle_];
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id PushToTalkFullScreenViewController.init(conversationControlsManager:)(void *a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController____lazy_storage___backgroundMaterialView] = 0;
  *&v2[OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController_cancellables] = MEMORY[0x1E69E7CD0];
  *&v2[OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController_conversationControlsManager] = a1;
  objc_allocWithZone(type metadata accessor for PushToTalkView());
  v4 = a1;
  *&v2[OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController_pttView] = PushToTalkView.init(conversationControlsManager:)(v4);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PushToTalkFullScreenViewController();
  v5 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);

  return v5;
}

id PushToTalkFullScreenViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PushToTalkFullScreenViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController____lazy_storage___backgroundMaterialView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController_cancellables) = MEMORY[0x1E69E7CD0];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall PushToTalkFullScreenViewController.viewDidLoad()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_1();
  v110 = v2;
  type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  OUTLINED_FUNCTION_1();
  v111 = v4;
  v112 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v109 = v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v88 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGMd, &_s7Combine10PublishersO9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGMR);
  v115 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
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
  v98 = v88 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGSo6TUCallCSgGMd, &_s7Combine10PublishersO3MapVy_AC9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGSo6TUCallCSgGMR);
  OUTLINED_FUNCTION_1();
  v103 = v25;
  v104 = v26;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_1();
  v99 = v28;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVySo6TUCallCSgGMd, &_s7Combine4JustVySo6TUCallCSgGMR);
  OUTLINED_FUNCTION_1();
  v101 = v29;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v30);
  v94 = v88 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5MergeVy_AA4JustVySo6TUCallCSgGAC3MapVy_AC0C4ManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGAJGGMd, &_s7Combine10PublishersO5MergeVy_AA4JustVySo6TUCallCSgGAC3MapVy_AC0C4ManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGAJGGMR);
  OUTLINED_FUNCTION_1();
  v105 = v32;
  v106 = v33;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_1();
  v97 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AC5MergeVy_AA4JustVySo6TUCallCSgGAC3MapVy_AC0D4ManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGALGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO8DebounceVy_AC5MergeVy_AA4JustVySo6TUCallCSgGAC3MapVy_AC0D4ManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGALGGSo17OS_dispatch_queueCGMR);
  OUTLINED_FUNCTION_1();
  v107 = v36;
  v108 = v37;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_1();
  v102 = v39;
  v40 = type metadata accessor for PushToTalkFullScreenViewController();
  v117.receiver = v0;
  v117.super_class = v40;
  objc_msgSendSuper2(&v117, sel_viewDidLoad);
  v41 = [objc_opt_self() sharedInstance];
  v42 = [v41 frontmostBargeCall];

  v116 = v42;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6TUCallCSgMd, &_sSo6TUCallCSgMR);
  Just.init(_:)();
  v43 = objc_opt_self();
  v44 = [v43 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v45 = [v43 &off_1E7FE9380 + 5];
  NSNotificationCenter.publisher(for:object:)();

  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher();
  Publisher.merge(with:)();
  v46 = *(v8 + 8);
  v47 = v11;
  v48 = v6;
  v46(v47, v6);
  v46(v14, v6);
  v89 = v46;
  v113 = v43;
  v49 = [v43 &off_1E7FE9380 + 5];
  NSNotificationCenter.publisher(for:object:)();

  v50 = v90;
  v51 = v17;
  Publishers.MergeMany.merge(with:)();
  v46(v14, v48);
  v52 = v115 + 8;
  v114 = *(v115 + 8);
  v114(v51, v15);
  v115 = v52;
  v53 = [v43 &off_1E7FE9380 + 5];
  NSNotificationCenter.publisher(for:object:)();

  v54 = v91;
  v55 = v15;
  Publishers.MergeMany.merge(with:)();
  v56 = v14;
  v88[0] = v48;
  v88[1] = v8 + 8;
  v57 = v89;
  v89(v14, v48);
  v58 = v50;
  v59 = v55;
  v60 = v55;
  v61 = v114;
  v114(v58, v59);
  v62 = v113;
  v63 = [v113 defaultCenter];
  OUTLINED_FUNCTION_8_27(*MEMORY[0x1E69D8D60]);

  v64 = v93;
  Publishers.MergeMany.merge(with:)();
  v57(v56, v48);
  v61(v54, v60);
  v65 = v62;
  v66 = [v62 defaultCenter];
  OUTLINED_FUNCTION_8_27(*MEMORY[0x1E69D8D68]);

  v67 = v95;
  v68 = v60;
  Publishers.MergeMany.merge(with:)();
  v69 = v88[0];
  v57(v56, v88[0]);
  v114(v64, v60);
  v70 = [v65 defaultCenter];
  OUTLINED_FUNCTION_8_27(*MEMORY[0x1E69D8D80]);

  v71 = v96;
  Publishers.MergeMany.merge(with:)();
  v57(v56, v69);
  v72 = v114;
  v114(v67, v68);
  v73 = [v113 defaultCenter];
  OUTLINED_FUNCTION_8_27(*MEMORY[0x1E69D8D88]);

  v74 = v98;
  Publishers.MergeMany.merge(with:)();
  v57(v56, v69);
  v72(v71, v68);
  v75 = v72;
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<NSNotificationCenter.Publisher> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGMd, &_s7Combine10PublishersO9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGMR, MEMORY[0x1E695BE80]);
  v76 = v99;
  Publisher.map<A>(_:)();
  v75(v74, v68);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Just<TUCall?> and conformance Just<A>, &_s7Combine4JustVySo6TUCallCSgGMd, &_s7Combine4JustVySo6TUCallCSgGMR, MEMORY[0x1E695C008]);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.MergeMany<NSNotificationCenter.Publisher>, TUCall?> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGSo6TUCallCSgGMd, &_s7Combine10PublishersO3MapVy_AC9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGSo6TUCallCSgGMR, MEMORY[0x1E695BD60]);
  v77 = v97;
  v78 = v100;
  v79 = v103;
  v80 = v94;
  Publisher.merge<A>(with:)();
  (*(v104 + 8))(v76, v79);
  (*(v101 + 8))(v80, v78);
  v81 = v109;
  static OS_dispatch_queue.SchedulerTimeType.Stride.milliseconds(_:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v82 = static OS_dispatch_queue.main.getter();
  v116 = v82;
  v83 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v84 = v110;
  __swift_storeEnumTagSinglePayload(v110, 1, 1, v83);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Merge<Just<TUCall?>, Publishers.Map<Publishers.MergeMany<NSNotificationCenter.Publisher>, TUCall?>> and conformance Publishers.Merge<A, B>, &_s7Combine10PublishersO5MergeVy_AA4JustVySo6TUCallCSgGAC3MapVy_AC0C4ManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGAJGGMd, &_s7Combine10PublishersO5MergeVy_AA4JustVySo6TUCallCSgGAC3MapVy_AC0C4ManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGAJGGMR, MEMORY[0x1E695BDC0]);
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v85 = v102;
  v86 = v105;
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of TapInteractionHandler?(v84, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v111 + 8))(v81, v112);
  (*(v106 + 8))(v77, v86);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Debounce<Publishers.Merge<Just<TUCall?>, Publishers.Map<Publishers.MergeMany<NSNotificationCenter.Publisher>, TUCall?>>, OS_dispatch_queue> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AC5MergeVy_AA4JustVySo6TUCallCSgGAC3MapVy_AC0D4ManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGALGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO8DebounceVy_AC5MergeVy_AA4JustVySo6TUCallCSgGAC3MapVy_AC0D4ManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGALGGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE50]);
  v87 = v107;
  Publisher<>.sink(receiveValue:)();

  (*(v108 + 8))(v85, v87);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  PushToTalkFullScreenViewController.setupMaterialView()();
  PushToTalkFullScreenViewController.setupPTTView()();
}

uint64_t closure #1 in PushToTalkFullScreenViewController.viewDidLoad()@<X0>(void *a1@<X8>)
{
  Notification.object.getter();
  if (!v3[3])
  {
    result = outlined destroy of TapInteractionHandler?(v3, &_sypSgMd, &_sypSgMR);
    goto LABEL_5;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    *a1 = 0;
  }

  return result;
}

void closure #2 in PushToTalkFullScreenViewController.viewDidLoad()(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      v5 = v2;
      if ([v5 isPTT] & 1) != 0 && (v6 = OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController_conversationControlsManager, v7 = MEMORY[0x1E69E7D40], v8 = (*((*MEMORY[0x1E69E7D40] & **&v4[OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController_conversationControlsManager]) + 0x2A0))(), v10 = v9, v5 = v5, LOBYTE(v10) = specialized == infix(_:_:)(v8, v10, v5), swift_unknownObjectRelease(), v5, (v10))
      {
        v11 = *&v4[v6];
        v12 = *((*v7 & *v11) + 0x2A0);
        v13 = v11;
        v12();

        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = v14;
          v16 = *&v4[OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController_pttView];
          v17 = *((*v7 & *v16) + 0x128);
          v18 = v16;
          v17(v15);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void PushToTalkFullScreenViewController.setupMaterialView()()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = PushToTalkFullScreenViewController.backgroundMaterialView.getter();
  [v2 addSubview_];

  v4 = OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController____lazy_storage___backgroundMaterialView;
  [*&v0[OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController____lazy_storage___backgroundMaterialView] setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4BA7F0;
  v6 = [*&v0[v4] topAnchor];
  v7 = OUTLINED_FUNCTION_2_34();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 topAnchor];

  v10 = OUTLINED_FUNCTION_3_28();
  v12 = [v10 v11];

  *(v5 + 32) = v12;
  v13 = [*&v0[v4] leadingAnchor];
  v14 = OUTLINED_FUNCTION_2_34();
  if (!v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = v14;
  v16 = [v14 leadingAnchor];

  v17 = OUTLINED_FUNCTION_3_28();
  v19 = [v17 v18];

  *(v5 + 40) = v19;
  v20 = [*&v0[v4] trailingAnchor];
  v21 = OUTLINED_FUNCTION_2_34();
  if (!v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = v21;
  v23 = [v21 trailingAnchor];

  v24 = OUTLINED_FUNCTION_3_28();
  v26 = [v24 v25];

  *(v5 + 48) = v26;
  v27 = [*&v0[v4] bottomAnchor];
  v28 = OUTLINED_FUNCTION_2_34();
  if (!v28)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v29 = v28;
  v30 = [v28 bottomAnchor];

  v31 = OUTLINED_FUNCTION_3_28();
  v33 = [v31 v32];

  *(v5 + 56) = v33;
  v34 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v34 activateConstraints_];
}

void PushToTalkFullScreenViewController.setupPTTView()()
{
  v1 = PushToTalkFullScreenViewController.backgroundMaterialView.getter();
  v2 = [v1 contentView];

  v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController_pttView);
  [v2 addSubview_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BA7F0;
  v5 = [v3 topAnchor];
  v6 = OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController____lazy_storage___backgroundMaterialView;
  v7 = [*(v0 + OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController____lazy_storage___backgroundMaterialView) topAnchor];
  v8 = OUTLINED_FUNCTION_6_21();

  *(v4 + 32) = v8;
  v9 = [v3 leadingAnchor];
  v10 = [*(v0 + v6) leadingAnchor];
  v11 = OUTLINED_FUNCTION_6_21();

  *(v4 + 40) = v11;
  v12 = [v3 trailingAnchor];
  v13 = [*(v0 + v6) trailingAnchor];
  v14 = OUTLINED_FUNCTION_6_21();

  *(v4 + 48) = v14;
  v15 = [v3 bottomAnchor];
  v16 = [*(v0 + v6) bottomAnchor];
  v17 = OUTLINED_FUNCTION_3_28();
  v19 = [v17 v18];

  *(v4 + 56) = v19;
  v20 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 activateConstraints_];
}

id PushToTalkFullScreenViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id PushToTalkFullScreenViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PushToTalkFullScreenViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher()
{
  result = lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher;
  if (!lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher);
  }

  return result;
}

uint64_t specialized == infix(_:_:)(void *a1, uint64_t a2, void *a3)
{
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40, &protocol conformance descriptor for TUCall);
  if (a1 == a3)
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    swift_unknownObjectRetain();
    v5 = a3;
    v6 = static NSObject.== infix(_:_:)();

    swift_unknownObjectRelease();
    return v6 & 1;
  }

  type metadata accessor for PlaceholderCall(0);
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    _StringGuts.grow(_:)(40);

    swift_getObjectType();
    v11 = _typeName(_:qualified:)();
    MEMORY[0x1BFB20B10](v11);

    MEMORY[0x1BFB20B10](0x203A736872202CLL, 0xE700000000000000);
    swift_getObjectType();
    v12 = _typeName(_:qualified:)();
    MEMORY[0x1BFB20B10](v12);

    MEMORY[0x1BFB20B10](41, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v9 = v8;
  result = swift_dynamicCastClass();
  if (result)
  {
    swift_unknownObjectRetain();
    v10 = a3;
    v6 = static PlaceholderCall.== infix(_:_:)(v9);
    swift_unknownObjectRelease();

    return v6 & 1;
  }

  return result;
}

BOOL static CATransform3D.== infix(_:_:)(const void *a1, const void *a2)
{
  memcpy(&v4, a2, sizeof(v4));
  memcpy(&__dst, a1, sizeof(__dst));
  return CATransform3DEqualToTransform(&__dst, &v4);
}

void CATransform3D.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1BFB22680](*&v1);
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
}

Swift::Int CATransform3D.hashValue.getter()
{
  Hasher.init(_seed:)();
  CATransform3D.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CATransform3D(uint64_t a1)
{
  Hasher.init(_seed:)();
  CATransform3D.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type CATransform3D and conformance CATransform3D()
{
  result = lazy protocol witness table cache variable for type CATransform3D and conformance CATransform3D;
  if (!lazy protocol witness table cache variable for type CATransform3D and conformance CATransform3D)
  {
    type metadata accessor for CATransform3D(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CATransform3D and conformance CATransform3D);
  }

  return result;
}

id NSValue.init(point:)(SEL *a1, double a2, double a3)
{
  v3 = [swift_getObjCClassFromMetadata() *a1];

  return v3;
}

uint64_t CaptionsViewController.captioningStateManager.setter(uint64_t a1)
{
  v3 = direct field offset for CaptionsViewController.captioningStateManager;
  OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = a1;
}

uint64_t key path getter for CaptionsViewController.delegate : CaptionsViewController@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + direct field offset for CaptionsViewController.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CaptionsViewController.delegate : CaptionsViewController(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + direct field offset for CaptionsViewController.delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t CaptionsViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_13(a1);
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CaptionsViewController.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = direct field offset for CaptionsViewController.delegate;
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

uint64_t key path getter for CaptionsViewController.captionVisibilityDuringCapture : CaptionsViewController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + direct field offset for CaptionsViewController.captionVisibilityDuringCapture);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned CGRect, @unowned Bool) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for CaptionsViewController.captionVisibilityDuringCapture : CaptionsViewController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CGRect, @in_guaranteed Bool) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for CaptionsViewController.captionVisibilityDuringCapture);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t CaptionsViewController.captionVisibilityDuringCapture.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_11(a1);
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(*v1, v1[1]);
  return v2;
}

uint64_t CaptionsViewController.captionVisibilityDuringCapture.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_13(a1);
  v5 = *v2;
  v6 = v2[1];
  *v2 = a1;
  v2[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
}

uint64_t CaptionsViewController.speechModelDownloadPromptBlocked.getter(uint64_t a1)
{
  v2 = direct field offset for CaptionsViewController.speechModelDownloadPromptBlocked;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t CaptionsViewController.speechModelDownloadPromptBlocked.setter(uint64_t a1)
{
  v2 = a1;
  v3 = direct field offset for CaptionsViewController.speechModelDownloadPromptBlocked;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t CaptionsViewController.isBroadcastingScreenSharingActive.getter(uint64_t a1)
{
  v2 = direct field offset for CaptionsViewController.isBroadcastingScreenSharingActive;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t CaptionsViewController.isBroadcastingScreenSharingActive.setter(uint64_t a1)
{
  v2 = a1;
  v3 = direct field offset for CaptionsViewController.isBroadcastingScreenSharingActive;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t (*CaptionsViewController.allowsMinimization.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = CaptionsViewController.allowsMinimization.getter() & 1;
  return CaptionsViewController.allowsMinimization.modify;
}

uint64_t CaptionsViewController.allowsMinimization.getter(uint64_t (*a1)(void))
{

  CaptionsViewModel.source.getter(v2, v3);
  LOBYTE(a1) = a1();

  return a1 & 1;
}

uint64_t CaptionsViewController.minimize(_:)(uint64_t a1, void (*a2)(uint64_t))
{

  CaptionsViewModel.source.getter(v4, v5);
  a2(a1);
}

uint64_t (*CaptionsViewController.isGroupCall.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = CaptionsViewController.isGroupCall.getter() & 1;
  return CaptionsViewController.isGroupCall.modify;
}

uint64_t CaptionsViewController.callName.getter()
{
  v0 = OUTLINED_FUNCTION_10_10();
  v2 = CaptionsViewModel.source.getter(v0, v1);
  v4 = CaptionsStateSource.callName.getter(v2, v3);

  return v4;
}

uint64_t key path setter for CaptionsViewController.callName : CaptionsViewController(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CaptionsViewController.callName.setter(v1, v2);
}

uint64_t CaptionsViewController.callName.setter(uint64_t a1, uint64_t a2)
{

  CaptionsViewModel.source.getter(v4, v5);
  CaptionsStateSource.callName.setter(a1, a2);
}

void (*CaptionsViewController.callName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CaptionsViewController.callName.getter();
  a1[1] = v3;
  return CaptionsViewController.callName.modify;
}

void CaptionsViewController.callName.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    CaptionsViewController.callName.setter(v3, v2);
  }

  else
  {
    CaptionsViewController.callName.setter(*a1, v2);
  }
}

void *CaptionsViewController.groupImage.getter()
{
  v0 = OUTLINED_FUNCTION_10_10();
  v2 = CaptionsViewModel.source.getter(v0, v1);
  v4 = CaptionsStateSource.groupImage.getter(v2, v3);

  return v4;
}

uint64_t key path setter for CaptionsViewController.groupImage : CaptionsViewController(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CaptionsViewController.groupImage.setter(v1);
}

uint64_t CaptionsViewController.groupImage.setter(void *a1)
{

  CaptionsViewModel.source.getter(v2, v3);
  CaptionsStateSource.groupImage.setter(a1);
}

void (*CaptionsViewController.groupImage.modify(void **a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = CaptionsViewController.groupImage.getter();
  return CaptionsViewController.groupImage.modify;
}

void CaptionsViewController.groupImage.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    CaptionsViewController.groupImage.setter(v2);
  }

  else
  {
    CaptionsViewController.groupImage.setter(*a1);
  }
}

uint64_t CaptionsViewController.languageModelDownloadingProgress.getter()
{
  v0 = OUTLINED_FUNCTION_10_10();
  v2 = CaptionsViewModel.source.getter(v0, v1);
  v4 = CaptionsStateSource.languageModelDownloadingProgress.getter(v2, v3);

  return v4;
}

uint64_t CaptionsViewController.languageModelDownloadingProgress.setter(uint64_t a1, char a2)
{

  CaptionsViewModel.source.getter(v2, v3);
  CaptionsStateSource.languageModelDownloadingProgress.setter();
}

uint64_t (*CaptionsViewController.languageModelDownloadingProgress.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = CaptionsViewController.languageModelDownloadingProgress.getter();
  *(a1 + 8) = v3 & 1;
  return CaptionsViewController.languageModelDownloadingProgress.modify;
}

uint64_t CaptionsViewController.updateCaptions(for:)(uint64_t a1)
{

  CaptionsViewModel.updateCaptions(for:)(a1, v2);
}

char *CaptionsViewController.__allocating_init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9)
{
  v12 = a6;
  v13 = a5;
  v18 = objc_allocWithZone(v9);
  return CaptionsViewController.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:)(a1, a2, a3, a4, v13, v12, a7, a8, a9);
}

char *CaptionsViewController.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, char a6, char *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = type metadata accessor for UIHostingControllerSizingOptions();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = *a7;
  *(v10 + direct field offset for CaptionsViewController.screenSharingStateMonitor) = 0;
  *(v10 + direct field offset for CaptionsViewController.captioningStateManager) = 0;
  *(v10 + direct field offset for CaptionsViewController.delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v18 = (v10 + direct field offset for CaptionsViewController.captionVisibilityDuringCapture);
  *v18 = 0;
  v18[1] = 0;
  *(v10 + direct field offset for CaptionsViewController.speechModelDownloadPromptBlocked) = 0;
  *(v10 + direct field offset for CaptionsViewController.isBroadcastingScreenSharingActive) = 0;
  v19 = direct field offset for CaptionsViewController.logger;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_1_20();
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logger.conversationKit);
  (*(*(v20 - 8) + 16))(v10 + v19, v21, v20);
  ObjectType = swift_getObjectType();
  *(v10 + direct field offset for CaptionsViewController.allowsScreenshots) = (*(a9 + 512))(ObjectType, a9) & 1;
  LOBYTE(v36[0]) = v17;
  v35 = a4;
  swift_unknownObjectRetain();
  v23 = static Platform.current.getter() == 2;
  type metadata accessor for CaptionsViewModel(0);
  swift_allocObject();
  v24 = a6 & 1;
  v25 = CaptionsViewModel.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:allowsSuppression:)(a1, a2, a3, a4, a5 & 1, v24, v36, a8, a9, v23);
  *(v10 + direct field offset for CaptionsViewController.viewModel) = v25;
  v36[1] = 0;
  v36[2] = 0;
  v36[0] = v25;

  v26 = UIHostingController.init(rootView:)();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  *(v28 + 24) = v27;
  v29 = v26;

  CaptionsViewModel.onRequestMinimizeHandler.setter(partial apply for closure #1 in CaptionsViewController.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:), v28);

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  CaptionsViewModel.onRequestDismissControlsHandler.setter(partial apply for closure #2 in CaptionsViewController.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:), v30);

  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  swift_unknownObjectRelease();

  return v29;
}

void closure #1 in CaptionsViewController.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:)(char a1, char a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = Strong + direct field offset for CaptionsViewController.delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v6 + 8);
        ObjectType = swift_getObjectType();
        (*(v7 + 8))(v5, a1 & 1, ObjectType, v7);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void closure #2 in CaptionsViewController.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + direct field offset for CaptionsViewController.delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(v2, ObjectType, v4);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id CaptionsViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CaptionsViewController.init(coder:)()
{
  *(v0 + direct field offset for CaptionsViewController.screenSharingStateMonitor) = 0;
  *(v0 + direct field offset for CaptionsViewController.captioningStateManager) = 0;
  *(v0 + direct field offset for CaptionsViewController.delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + direct field offset for CaptionsViewController.captionVisibilityDuringCapture);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + direct field offset for CaptionsViewController.speechModelDownloadPromptBlocked) = 0;
  *(v0 + direct field offset for CaptionsViewController.isBroadcastingScreenSharingActive) = 0;
  v2 = direct field offset for CaptionsViewController.logger;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_1_20();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v4 = __swift_project_value_buffer(v3, static Logger.conversationKit);
  (*(*(v3 - 8) + 16))(v0 + v2, v4, v3);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CaptionsViewController.viewDidLoad()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 layer];

  if (*(v0 + direct field offset for CaptionsViewController.allowsScreenshots))
  {
    v7 = 0;
  }

  else
  {
    v7 = 1042;
  }

  [v6 setDisableUpdateMask_];
}

void @objc CaptionsViewController.viewDidLoad()(void *a1)
{
  v1 = a1;
  CaptionsViewController.viewDidLoad()();
}

Swift::Void __swiftcall CaptionsViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_traitCollectionDidChange_, isa);
  if (!static Platform.current.getter() || static Platform.current.getter() == 1)
  {
    v3 = [v1 traitCollection];
    v4 = [v3 preferredContentSizeCategory];

    LOBYTE(v3) = UIContentSizeCategory.isAccessibilityCategory.getter();
    if (v3)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v5 = static OS_os_log.conversationKit;
      v6 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Switching to transcript mode because of change in accessibility size", 68, 2, &dword_1BBC58000, v5, v6, MEMORY[0x1E69E7CC0]);
      v7 = OUTLINED_FUNCTION_10_10();
      CaptionsViewModel.source.getter(v7, v8);
      CaptionsStateSource.isMinimized.setter(0);
    }
  }
}

void @objc CaptionsViewController.traitCollectionDidChange(_:)(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  CaptionsViewController.traitCollectionDidChange(_:)(v9);
}

uint64_t CaptionsViewController.update(with:updateReason:)(Swift::OpaquePointer a1)
{

  CaptionsViewModel.update(with:)(a1);
}

uint64_t CaptionsViewController.__ivar_destroyer()
{

  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + direct field offset for CaptionsViewController.delegate);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + direct field offset for CaptionsViewController.captionVisibilityDuringCapture), *(v0 + direct field offset for CaptionsViewController.captionVisibilityDuringCapture + 8));
  v1 = direct field offset for CaptionsViewController.logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_15_1();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

id CaptionsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc CaptionsViewController.__ivar_destroyer(uint64_t a1)
{

  outlined destroy of weak InCallControlsBaseCellDelegate?(a1 + direct field offset for CaptionsViewController.delegate);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(a1 + direct field offset for CaptionsViewController.captionVisibilityDuringCapture), *(a1 + direct field offset for CaptionsViewController.captionVisibilityDuringCapture + 8));
  v2 = direct field offset for CaptionsViewController.logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_15_1();
  v4 = *(v3 + 8);

  return v4(a1 + v2);
}

uint64_t type metadata accessor for CaptionsViewController(uint64_t a1)
{
  result = type metadata singleton initialization cache for CaptionsViewController;
  if (!type metadata singleton initialization cache for CaptionsViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CaptionsViewController(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CGRect, @in_guaranteed Bool) -> (@out ())(char a1, double a2, double a3, double a4, double a5)
{
  v6 = *(v5 + 16);
  *v9 = a2;
  *&v9[1] = a3;
  *&v9[2] = a4;
  *&v9[3] = a5;
  v8 = a1;
  return v6(v9, &v8);
}

uint64_t key path getter for CancelConfirmationViewModel.delegate : CancelConfirmationViewModel@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CancelConfirmationViewModel.delegate : CancelConfirmationViewModel(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t CancelConfirmationViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*CancelConfirmationViewModel.delegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return CancelConfirmationViewModel.delegate.modify;
}

uint64_t CancelConfirmationViewModel.config.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleVyytGMd, &_s16CommunicationsUI15IconButtonStyleVyytGMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v16 - v3;
  if (*(v0 + 32))
  {
    v5 = *(v0 + 32);
  }

  else
  {
    v16[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI16IconButtonConfigCyytGMd, &_s16CommunicationsUI16IconButtonConfigCyytGMR);
    CancelConfirmationViewModel.buttonStyle.getter(v4);
    v6 = objc_opt_self();
    v7 = [v6 conversationKit];
    v17._object = 0xE000000000000000;
    v8._countAndFlagsBits = 0x6C65636E6143;
    v8._object = 0xE600000000000000;
    v9.value._countAndFlagsBits = 0x61737265766E6F43;
    v9.value._object = 0xEF74694B6E6F6974;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v17);

    v11 = [v6 conversationKit];
    v18._object = 0xE000000000000000;
    v12._object = 0x80000001BC4F46F0;
    v12._countAndFlagsBits = 0xD000000000000010;
    v13.value._countAndFlagsBits = 0x61737265766E6F43;
    v13.value._object = 0xEF74694B6E6F6974;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v18);

    swift_allocObject();
    swift_weakInit();
    v5 = IconButtonConfig<A>.init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:enabled:didTap:)();
    *(v1 + 32) = v5;
  }

  return v5;
}

Swift::Void __swiftcall CancelConfirmationViewModel.didTap()()
{
  OUTLINED_FUNCTION_0_27(v0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

uint64_t CancelConfirmationViewModel.symbolName.getter()
{
  v0 = *MEMORY[0x1E69DDDC8];
  v4[64] = 0;
  v5[0] = 0x6F642E656E6F6870;
  v5[1] = 0xEF6C6C69662E6E77;
  v5[2] = 2;
  v5[3] = v0;
  v6 = 0;
  v7 = 7;
  v8 = 0;
  v9 = 0;
  v10[0] = 0x6F642E656E6F6870;
  v10[1] = 0xEF6C6C69662E6E77;
  v10[2] = 2;
  v10[3] = v0;
  v11 = 0;
  v12 = 7;
  v13 = 0;
  v14 = 0;
  v1 = v0;
  outlined init with copy of SymbolImageDescription(v5, v4);
  outlined destroy of SymbolImageDescription(v10);
  v2 = v5[0];

  outlined destroy of SymbolImageDescription(v5);
  return v2;
}

uint64_t CancelConfirmationViewModel.buttonStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for IconButtonWidthRestriction();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v30 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Font.Leading();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v25 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Image.Scale();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6_GlassVSgMd, &_s7SwiftUI6_GlassVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVyyt_GMd, &_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVyyt_GMR);
  v28 = *(v12 - 8);
  v29 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v24 = v23 - v13;
  v23[1] = CancelConfirmationViewModel.symbolName.getter();
  static Color.white.getter();
  *(&v35 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVAASbRszlE23iOSControlBackgroundOffQrvpZQOySb__Qo_Md, &_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVAASbRszlE23iOSControlBackgroundOffQrvpZQOySb__Qo_MR);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(&v34);
  static IconButtonStyle.SystemSymbol<A>.iOSControlBackgroundOff.getter();
  static IconButtonStyle.SystemSymbol<A>.controlGlassOff.getter();
  v14 = type metadata accessor for _Glass();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
  (*(v6 + 104))(v8, *MEMORY[0x1E69816E0], v5);
  static IconButtonStyle.Defaults.phone.iconFont.getter();
  static Font.Weight.regular.getter();
  static IconButtonStyle.SystemSymbol<A>.iosCallControl(name:color:background:glass:scale:font:weight:)();

  (*(v6 + 8))(v8, v5);
  outlined destroy of TapInteractionHandler?(v11, &_s7SwiftUI6_GlassVSgMd, &_s7SwiftUI6_GlassVSgMR);
  outlined destroy of TapInteractionHandler?(&v34, &_s7SwiftUI10ShapeStyle_pSgMd, &_s7SwiftUI10ShapeStyle_pSgMR);
  OpaqueTypeConformance2 = 0;
  v34 = 0u;
  v35 = 0u;
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v14);
  static Color.white.getter();
  static Font.subheadline.getter();
  v15 = v25;
  v16 = v26;
  v17 = v27;
  (*(v26 + 104))(v25, *MEMORY[0x1E6980EA8], v27);
  Font.leading(_:)();

  (*(v16 + 8))(v15, v17);
  static IconButtonStyle.Defaults.phone.iconWidth.getter();
  v19 = v30;
  v18 = v31;
  v20 = v32;
  (*(v31 + 104))(v30, *MEMORY[0x1E6995BD0], v32);
  v21 = v24;
  static IconButtonStyle.iosCallControl(symbol:background:glass:labelColor:labelFont:labelPosition:maxWidth:width:widthRestriction:spacing:)();

  (*(v18 + 8))(v19, v20);
  outlined destroy of TapInteractionHandler?(v11, &_s7SwiftUI6_GlassVSgMd, &_s7SwiftUI6_GlassVSgMR);
  outlined destroy of TapInteractionHandler?(&v34, &_s7SwiftUI10ShapeStyle_pSgMd, &_s7SwiftUI10ShapeStyle_pSgMR);
  return (*(v28 + 8))(v21, v29);
}

uint64_t closure #1 in CancelConfirmationViewModel.config.getter(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CancelConfirmationViewModel.didTap()();
  }

  return result;
}

uint64_t CancelConfirmationViewModel.deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 16);

  return v0;
}

uint64_t CancelConfirmationViewModel.__deallocating_deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t CancelConfirmationViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  CancelConfirmationViewModel.init()();
  return v0;
}

uint64_t CancelConfirmationViewModel.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  return v0;
}

uint64_t protocol witness for CallControlsPreCallButtonViewModel.delegate.setter in conformance CancelConfirmationViewModel(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for CallControlsPreCallButtonViewModel.delegate.modify in conformance CancelConfirmationViewModel(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = *v1;
  v3[5] = v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 24);
  v3[3] = Strong;
  v3[4] = v6;
  return protocol witness for CallControlsPreCallButtonViewModel.delegate.modify in conformance CancelConfirmationViewModel;
}

void CancelConfirmationViewModel.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
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

uint64_t ConversationNoticeButtonProvider.init(controlsManager:context:)(void *a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  v4 = ControlsButtonProvider.init(context:shape:)(a2, 2);
  v5 = a1;

  v6 = ConversationNoticeButtonProvider.noticeButtonTitleFont.getter();
  ControlsButtonProvider.titleFont.setter(v6, v7);

  return v4;
}

id ConversationNoticeButtonProvider.noticeButtonTitleFont.getter()
{
  if (*(v0 + 40))
  {
    type metadata accessor for UIFont();
    return static UIFont.preferredFont(textStyle:weight:maximumPointSize:)(*MEMORY[0x1E69DDD80], 0, 1);
  }

  else
  {
    result = [objc_opt_self() _preferredFontForTextStyle_variant_];
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall ConversationNoticeButtonProvider.buttonChanged()()
{
  ControlsButtonProvider.buttonChanged()();
  if (!*(v0 + 40))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = [Strong titleLabel];

      if (v3)
      {
        [v3 setAdjustsFontSizeToFitWidth_];
        [v3 setMinimumScaleFactor_];
      }
    }
  }
}

uint64_t ConversationNoticeButtonProvider.buttonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v22 = type metadata accessor for UIButton.Configuration.Size();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIBackgroundConfiguration();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - v14;
  ControlsButtonProvider.defaultButtonConfiguration.getter(v12);
  v16 = objc_opt_self();
  v17 = [v16 whiteColor];
  (*(v9 + 16))(v15, v12, v7);
  static UIBackgroundConfiguration.clear()();
  UIButton.Configuration.background.setter();
  UIButton.Configuration.baseBackgroundColor.setter();
  (*(v9 + 8))(v12, v7);
  v18 = [v16 blackColor];
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v2 + 104))(v5, *MEMORY[0x1E69DC568], v22);
  UIButton.Configuration.buttonSize.setter();
  if (!*(v21[1] + 40))
  {
    v19 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.cornerRadius.setter();
    v19(v24, 0);
    UIButton.Configuration.contentInsets.setter();
    UIButton.Configuration.titleLineBreakMode.setter();
  }

  return (*(v9 + 32))(v23, v15, v7);
}

uint64_t ConversationNoticeButtonProvider.deinit()
{
  v0 = ControlsButtonProvider.deinit();

  return v0;
}

uint64_t ConversationNoticeButtonProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t type metadata accessor for UIFont()
{
  result = lazy cache variable for type metadata for UIFont;
  if (!lazy cache variable for type metadata for UIFont)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIFont);
  }

  return result;
}

ConversationKit::ServiceAvailability __swiftcall ServiceAvailability.init(telephony:faceTimeAudio:faceTimeVideo:faceTimeMultiway:avLessSharePlay:videoMessaging:)(Swift::Bool telephony, Swift::Bool faceTimeAudio, Swift::Bool faceTimeVideo, Swift::Bool faceTimeMultiway, Swift::Bool avLessSharePlay, Swift::Bool videoMessaging)
{
  v6 = 0x10000000000;
  if (!videoMessaging)
  {
    v6 = 0;
  }

  v7 = 0x100000000;
  if (!avLessSharePlay)
  {
    v7 = 0;
  }

  v8 = 0x1000000;
  if (!faceTimeMultiway)
  {
    v8 = 0;
  }

  v9 = 0x10000;
  if (!faceTimeVideo)
  {
    v9 = 0;
  }

  v10 = 256;
  if (!faceTimeAudio)
  {
    v10 = 0;
  }

  return (v10 & 0xFFFFFFFFFFFFFFFELL | telephony | v9 | v8 | v7 | v6);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ServiceAvailability(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = v7 == 0;
  v15 = 0x10000000000;
  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0x10000000000;
  }

  v14 = v6 == 0;
  v17 = 0x100000000;
  if (v14)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0x100000000;
  }

  v14 = v5 == 0;
  v19 = 0x1000000;
  if (v14)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0x1000000;
  }

  v14 = v4 == 0;
  v21 = 0x10000;
  if (v14)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0x10000;
  }

  v14 = v3 == 0;
  v23 = 256;
  if (v14)
  {
    v24 = 0;
  }

  else
  {
    v24 = 256;
  }

  v25 = v24 | v2 | v22 | v20;
  v26 = v18 | v16;
  if (!v13)
  {
    v15 = 0;
  }

  if (!v12)
  {
    v17 = 0;
  }

  if (!v11)
  {
    v19 = 0;
  }

  if (!v10)
  {
    v21 = 0;
  }

  if (!v9)
  {
    v23 = 0;
  }

  return static ServiceAvailability.== infix(_:_:)(v25 | v26, v23 | v8 | v21 | v19 | v17 | v15);
}

uint64_t getEnumTagSinglePayload for ServiceAvailability(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[6])
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

uint64_t storeEnumTagSinglePayload for ServiceAvailability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

id UIView.windowRect.getter@<X0>(uint64_t a1@<X8>)
{
  result = [v1 superview];
  if (result)
  {
    v4 = result;
    [v1 frame];
    [v4 convertPoint:0 toView:?];
    v12 = v5;
    v13 = v6;

    [v1 frame];
    v11 = v7;
    result = [v1 frame];
    *&v10 = v11;
    *&v8 = v12;
    *(&v8 + 1) = v13;
    *(&v10 + 1) = v9;
  }

  else
  {
    v8 = 0uLL;
    v10 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 16) = v10;
  *(a1 + 32) = 0;
  return result;
}

void *iOSPeoplePickerAddButtonHandler.presenterViewController.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_presenterViewController;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_presenterViewController, a2);
  v4 = *(v2 + v3);
  v5 = v4;
  return v4;
}

void iOSPeoplePickerAddButtonHandler.presenterViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_presenterViewController;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *iOSPeoplePickerAddButtonHandler.contactsSearchViewController.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_contactsSearchViewController;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_contactsSearchViewController, a2);
  v4 = *(v2 + v3);
  v5 = v4;
  return v4;
}

void iOSPeoplePickerAddButtonHandler.contactsSearchViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_contactsSearchViewController;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for iOSPeoplePickerAddButtonHandler.addToken : iOSPeoplePickerAddButtonHandler@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_addToken);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CNComposeRecipient) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for iOSPeoplePickerAddButtonHandler.addToken : iOSPeoplePickerAddButtonHandler(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNComposeRecipient) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_addToken);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t iOSPeoplePickerAddButtonHandler.addToken.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_addToken);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(*v1, v1[1]);
  return v2;
}

uint64_t iOSPeoplePickerAddButtonHandler.addToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_addToken);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
}

Swift::Void __swiftcall iOSPeoplePickerAddButtonHandler.handleAddButtonPressed(sourceView:)(UIView *sourceView)
{
  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x1E695D120]) init];
  [v3 setAllowsCancel_];
  [v3 setAllowsEditing_];
  [v3 setDelegate_];
  [v3 setMode_];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSPredicate, 0x1E696AE18);
  v4 = NSPredicate.init(format:_:)();
  [v3 setPredicateForEnablingContact_];

  v5 = v3;
  [v5 setModalPresentationStyle_];
  v6 = [v5 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 systemGreenColor];
  [v7 setTintColor_];

  v10 = [v5 view];
  if (!v10)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v11 = [v8 systemBackgroundColor];
  [v10 setBackgroundColor_];

  v12 = OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_presenterViewController;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_presenterViewController, v13);
  v14 = *(v2 + v12);
  if (v14)
  {
    v15 = v14;
    [v15 presentViewController:v5 animated:1 completion:0];
  }
}

id iOSPeoplePickerAddButtonHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id iOSPeoplePickerAddButtonHandler.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_presenterViewController] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_contactsSearchViewController] = 0;
  v2 = &v0[OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_addToken];
  *v2 = 0;
  *(v2 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id iOSPeoplePickerAddButtonHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall iOSPeoplePickerAddButtonHandler.contactPicker(_:didSelect:)(CNContactPickerViewController *_, CNContactProperty didSelect)
{
  [(CNContactPickerViewController *)_ dismissViewControllerAnimated:1 completion:0];
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_addToken;
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);
    v7 = didSelect.super.isa;
    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v5, v6);
    v8 = specialized CNKContactProperty.asRecipient()();
    if (v8)
    {
      v9 = v8;
      v5();
    }

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
  }
}

id specialized CNKContactProperty.asRecipient()()
{
  v1 = [v0 contact];
  @nonobjc CNContactProperty.value.getter(v12);
  if (v13)
  {
    if (swift_dynamicCast())
    {
      v2 = 0;
      v3 = v10;
      v4 = v11;
      goto LABEL_10;
    }
  }

  else
  {
    outlined destroy of Any?(v12);
  }

  @nonobjc CNContactProperty.value.getter(v12);
  if (v13)
  {
    type metadata accessor for NSObject(0, lazy cache variable for type metadata for CNPhoneNumber, 0x1E695CF50);
    if (swift_dynamicCast())
    {
      v5 = [v10 stringValue];
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v6;

      v2 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    outlined destroy of Any?(v12);
  }

  v3 = 0;
  v4 = 0xE000000000000000;
  v2 = 5;
LABEL_10:
  if (String.count.getter() < 1)
  {
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x1E6996408]);
    result = @nonobjc CNComposeRecipient.init(contact:address:kind:)(v1, v3, v4, v2, v8);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNComposeRecipient) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AudioSampleNormalizer.description.getter(uint64_t a1)
{
  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  DynamicType = swift_getDynamicType();
  MetatypeMetadata = swift_getMetatypeMetadata();
  v2 = >> prefix<A>(_:)(&DynamicType, MetatypeMetadata);
  MEMORY[0x1BFB20B10](v2);

  MEMORY[0x1BFB20B10](0x52656C706D617328, 0xED0000203A657461);
  v3 = OUTLINED_FUNCTION_14_9();
  LODWORD(DynamicType) = v4(v3);
  v5 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v5);

  MEMORY[0x1BFB20B10](0xD000000000000014, 0x80000001BC4F48F0);
  v6 = OUTLINED_FUNCTION_14_9();
  LODWORD(DynamicType) = v7(v6);
  v8 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v8);

  v9 = OUTLINED_FUNCTION_11_15();
  MEMORY[0x1BFB20B10](v9);
  v10 = OUTLINED_FUNCTION_14_9();
  LOBYTE(DynamicType) = v11(v10) & 1;
  v12 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v12);

  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return v15;
}

Swift::Int AudioPowerTap.Errors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioPowerTap.Errors(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  AudioPowerTap.Errors.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t AudioPowerTap.TapType.description.getter(char a1)
{
  if (a1)
  {
    return 0x6E696C6E776F642ELL;
  }

  else
  {
    return 0x6B6E696C70752ELL;
  }
}

ConversationKit::AudioPowerTap::TapType_optional __swiftcall AudioPowerTap.TapType.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue == -2)
  {
    v1.value = ConversationKit_AudioPowerTap_TapType_downlink;
  }

  else
  {
    v1.value = ConversationKit_AudioPowerTap_TapType_unknownDefault;
  }

  if (rawValue == -3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

ConversationKit::AudioPowerTap::TapType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AudioPowerTap.TapType@<W0>(Swift::Int32 *a1@<X0>, ConversationKit::AudioPowerTap::TapType_optional *a2@<X8>)
{
  result.value = AudioPowerTap.TapType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AudioPowerTap.TapType@<X0>(_DWORD *a1@<X8>)
{
  result = AudioPowerTap.TapType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

id AudioPowerTap.tapDescription.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v2 = 4294967294;
  }

  else
  {
    v2 = 4294967293;
  }

  v3 = objc_allocWithZone(MEMORY[0x1E695A888]);

  return [v3 initProcessTapWithFormat:v1 PID:v2];
}

uint64_t key path setter for AudioPowerTap.waveform : AudioPowerTap(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 168);

  return v2(v3);
}

uint64_t AudioPowerTap.waveform.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t AudioPowerTap.__allocating_init(type:normalizer:numBands:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a3 + 48);
  v12[3] = a2;
  v12[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(v12);
  v10(a1 & 1, a4, a2, a3);
  return (*(v5 + 280))(a1 & 1, v12);
}

uint64_t AudioPowerTap.init(type:normalizer:)(char a1, void *a2)
{
  v3 = v2;
  type metadata accessor for Lock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *(v6 + 16) = v7;
  *v7 = 0;
  *(v3 + 32) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySaySfGSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySaySfGSgs5NeverOGMR);
  swift_allocObject();
  *(v3 + 80) = CurrentValueSubject.init(_:)();
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = [objc_allocWithZone(MEMORY[0x1E6958418]) initWithCommonFormat:1 sampleRate:1 channels:1 interleaved:(*(v9 + 16))(v8, v9)];
  if (v10)
  {
    *(v3 + 16) = v10;
    *(v3 + 24) = a1 & 1;
    outlined init with copy of IDSLookupManager(a2, v3 + 40);
  }

  else
  {
    if (one-time initialization token for audioTap != -1)
    {
      OUTLINED_FUNCTION_0_28();
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.audioTap);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_8_10();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      v19 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v19);
    }

    type metadata accessor for AudioPowerTap();
    swift_deallocPartialClassInstance();
    v3 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v3;
}

uint64_t AudioPowerTap.deinit()
{
  v1 = v0;
  if (one-time initialization token for audioTap != -1)
  {
    OUTLINED_FUNCTION_0_28();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.audioTap);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_13_10();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_0();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136315138;
    type metadata accessor for AudioPowerTap();

    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v26);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_8_10();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0](v15, v16);
    v17 = OUTLINED_FUNCTION_2_35();
    MEMORY[0x1BFB23DF0](v17);
  }

  if ((*(*v1 + 296))(v18, v19))
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BBC58000, v20, v21, "AudioPowerTap is being stopped on deinit which is errorprone, leading to hangs in main", v22, 2u);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0](v23, v24);
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return v1;
}

uint64_t AudioPowerTap.__deallocating_deinit()
{
  AudioPowerTap.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioPowerTap.start()()
{
  v1 = v0;
  if (one-time initialization token for audioTap != -1)
  {
    OUTLINED_FUNCTION_0_28();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.audioTap);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_13_10();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_0();
    v6 = swift_slowAlloc();
    v81[0] = v6;
    *v5 = 136315138;
    v80[0] = v1;
    type metadata accessor for AudioPowerTap();

    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v81);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Starting %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  v10 = v1[4];
  os_unfair_lock_lock(*(v10 + 16));
  v11 = swift_beginAccess();
  if (v1[12])
  {
    v12 = lazy protocol witness table accessor for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors();
    OUTLINED_FUNCTION_19_6(&type metadata for AudioPowerTap.Errors, v12);
    *v13 = 0;
LABEL_12:
    swift_willThrow();
LABEL_13:
    os_unfair_lock_unlock(*(v10 + 16));
    return;
  }

  v14 = *(*v1 + 152);
  v15 = v14(v11);
  v16 = [v15 format];

  v17 = [v16 streamDescription];
  swift_beginAccess();
  v18 = AudioQueueNewInput(v17, @objc closure #1 in AudioPowerTap.start(), v1, 0, 0, 0x800u, v1 + 12);
  v19 = swift_endAccess();
  v20 = v1[12];
  if (!v20 || v18)
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v22))
    {
      v23 = OUTLINED_FUNCTION_18_18();
      *v23 = 67109120;
      v23[1] = v18;
      OUTLINED_FUNCTION_5_14(&dword_1BBC58000, v24, v25, "Failed to create processingQueue, OSStatus: %d");
      v26 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v26);
    }

    v27 = lazy protocol witness table accessor for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors();
    OUTLINED_FUNCTION_19_6(&type metadata for AudioPowerTap.Errors, v27);
    *v28 = 1;
    goto LABEL_12;
  }

  v29 = v14(v19);
  v30 = [objc_allocWithZone(MEMORY[0x1E695A880]) initWithTapDescription_];

  v31 = AudioQueueSetProperty(v20, 0x71746F62u, v30, 8u);
  if (v31)
  {
    v32 = v31;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v34))
    {
      v35 = OUTLINED_FUNCTION_18_18();
      *v35 = 67109120;
      v35[1] = v32;
      OUTLINED_FUNCTION_5_14(&dword_1BBC58000, v36, v37, "Failed to configure AudioQueue, status: %d");
      v38 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v38);
    }

    v39 = lazy protocol witness table accessor for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors();
    OUTLINED_FUNCTION_19_6(&type metadata for AudioPowerTap.Errors, v39);
    v41 = 2;
    goto LABEL_30;
  }

  [v1[2] sampleRate];
  v43 = v42;
  v44 = v1[8];
  v45 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v44);
  v46 = (*(v45 + 24))(v44, v45);
  v47 = log2f(v43 / v46);
  v48 = exp2f(ceilf(v47));
  if ((LODWORD(v48) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v48 <= -1.0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v48 >= 4295000000.0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v49 = v48;
  swift_beginAccess();
  Buffer = AudioQueueAllocateBuffer(v20, v49, v1 + 11);
  swift_endAccess();
  if (Buffer)
  {
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_25(v52))
    {
LABEL_29:

      v63 = lazy protocol witness table accessor for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors();
      OUTLINED_FUNCTION_19_6(&type metadata for AudioPowerTap.Errors, v63);
      v41 = 4;
LABEL_30:
      *v40 = v41;
      swift_willThrow();

      goto LABEL_13;
    }

    v53 = OUTLINED_FUNCTION_18_18();
    *v53 = 67109120;
    v53[1] = Buffer;
    v56 = "Failed to allocate buffer, status: %d";
LABEL_28:
    OUTLINED_FUNCTION_5_14(&dword_1BBC58000, v54, v55, v56);
    v62 = OUTLINED_FUNCTION_2_35();
    MEMORY[0x1BFB23DF0](v62);
    goto LABEL_29;
  }

  v57 = v1[11];
  if (v57)
  {
    v58 = AudioQueueEnqueueBuffer(v20, v57, 0, 0);
    if (!v58)
    {
      v64 = AudioQueueStart(v20, 0);
      if (!v64)
      {

        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v73, v74))
        {
          OUTLINED_FUNCTION_13_10();
          v75 = swift_slowAlloc();
          OUTLINED_FUNCTION_12_0();
          v76 = swift_slowAlloc();
          v80[0] = v76;
          *v75 = 136315138;
          type metadata accessor for AudioPowerTap();

          v77 = String.init<A>(reflecting:)();
          v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, v80);

          *(v75 + 4) = v79;
          _os_log_impl(&dword_1BBC58000, v73, v74, "Started %s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v76);
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
        }

        goto LABEL_13;
      }

      v65 = v64;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_25(v67))
      {
        v68 = OUTLINED_FUNCTION_18_18();
        *v68 = 67109120;
        v68[1] = v65;
        OUTLINED_FUNCTION_5_14(&dword_1BBC58000, v69, v70, "Failed to start AudioQueue, status: %d");
        v71 = OUTLINED_FUNCTION_2_35();
        MEMORY[0x1BFB23DF0](v71);
      }

      v72 = lazy protocol witness table accessor for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors();
      OUTLINED_FUNCTION_19_6(&type metadata for AudioPowerTap.Errors, v72);
      v41 = 3;
      goto LABEL_30;
    }

    v59 = v58;
    v51 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_25(v60))
    {
      goto LABEL_29;
    }

    v61 = OUTLINED_FUNCTION_18_18();
    *v61 = 67109120;
    v61[1] = v59;
    v56 = "Failed to enqueue buffer, status: %d";
    goto LABEL_28;
  }

LABEL_41:
  __break(1u);
}

uint64_t closure #1 in AudioPowerTap.start()(uint64_t result, OpaqueAudioQueue *a2, AudioQueueBuffer *a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v8 = result;
    if (one-time initialization token for audioTap != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.audioTap);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v12 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSpySo16AudioQueueBufferVGMd, &_sSpySo16AudioQueueBufferVGMR);
      v13 = String.init<A>(reflecting:)();
      v15 = a2;
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v25);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v25);
      a2 = v15;

      *(v12 + 14) = v19;
      _os_log_impl(&dword_1BBC58000, v10, v11, "queueBufferRef %s ptr %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v24, -1, -1);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
    }

    mAudioDataByteSize = a3->mAudioDataByteSize;

    if (mAudioDataByteSize >> 2 == a5)
    {
      (*(*v8 + 304))(a3->mAudioData, a5);
      AudioQueueEnqueueBuffer(a2, a3, 0, 0);
    }

    else
    {
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 67109632;
        *(v23 + 4) = a5;
        *(v23 + 8) = 1024;
        *(v23 + 10) = mAudioDataByteSize >> 2;
        *(v23 + 14) = 1024;
        *(v23 + 16) = mAudioDataByteSize;
        _os_log_impl(&dword_1BBC58000, v21, v22, "Invalid buffer passed. sampleCount %u is not expected value (%u) for buffer: %u", v23, 0x14u);
        MEMORY[0x1BFB23DF0](v23, -1, -1);
      }
    }
  }

  return result;
}

Swift::Bool __swiftcall AudioPowerTap.stop()()
{
  v1 = v0;
  v2 = *(v0 + 32);
  os_unfair_lock_lock(*(v2 + 16));
  swift_beginAccess();
  v3 = *(v0 + 96);
  if (v3)
  {
    if ([objc_opt_self() isMainThread])
    {
      if (one-time initialization token for audioTap != -1)
      {
        OUTLINED_FUNCTION_0_28();
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.audioTap);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v5, v6))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_8_10();
        _os_log_impl(v7, v8, v9, v10, v11, 2u);
        v12 = OUTLINED_FUNCTION_2_35();
        MEMORY[0x1BFB23DF0](v12);
      }
    }

    if (one-time initialization token for audioTap != -1)
    {
      OUTLINED_FUNCTION_0_28();
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.audioTap);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_13_10();
      v16 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_0();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136315138;
      type metadata accessor for AudioPowerTap();

      v18 = String.init<A>(reflecting:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v35);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1BBC58000, v14, v15, "Stopping %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    AudioQueuePause(v3);
    AudioQueueStop(v3, 1u);
    AudioQueueDispose(v3, 1u);
    *(v1 + 96) = 0;

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_13_10();
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_0();
      v24 = swift_slowAlloc();
      v35 = v24;
      *v23 = 136315138;
      type metadata accessor for AudioPowerTap();

      v25 = String.init<A>(reflecting:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v35);

      *(v23 + 4) = v27;
      OUTLINED_FUNCTION_8_10();
      _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      v33 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v33);
    }
  }

  os_unfair_lock_unlock(*(v2 + 16));
  return v3 != 0;
}

uint64_t AudioPowerTap.process(_:count:)(const void *a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for audioTap != -1)
  {
    OUTLINED_FUNCTION_0_28();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.audioTap);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v24);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSf_SRySfGTt0g5(a1, a2);
    v13 = MEMORY[0x1BFB20D10]();
    v14 = a1;
    v15 = a2;
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v17, v24);
    a2 = v15;
    a1 = v14;

    *(v9 + 14) = v18;
    _os_log_impl(&dword_1BBC58000, v7, v8, "[%s] Buffer: %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  (*(*v3 + 160))();
  v19 = v3[8];
  v20 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v19);
  v21 = (*(v20 + 40))(a1, a2, v19, v20);
  v22 = AudioPowerTap.validatedSamples(_:)(v21);

  v24[0] = v22;
  CurrentValueSubject.send(_:)();
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSf_SRySfGTt0g5(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 <= 0)
  {
    v4 = 4 * a2;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v4 = 4 * a2;
    v5 = swift_allocObject();
    v6 = _swift_stdlib_malloc_size(v5);
    v5[2] = a2;
    v5[3] = 2 * ((v6 - 32) / 4);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5()
{
  OUTLINED_FUNCTION_21_10();
  if (!v1)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_10_11();
  _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5();
  OUTLINED_FUNCTION_6_22();
  specialized Sequence._copySequenceContents(initializing:)(v3, v4, v5, v2);
  OUTLINED_FUNCTION_1_38(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17, v18, v19, v20, v21);
  if (!v14)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v0;
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC15ConversationKit11ParticipantV7CaptionV_SD6ValuesVySiAH_GTt0g5()
{
  OUTLINED_FUNCTION_21_10();
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = OUTLINED_FUNCTION_10_11();
  _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15ConversationKit11ParticipantV7CaptionV_Tt1g5(v3, v4);
  v5 = OUTLINED_FUNCTION_17_1();
  v6 = type metadata accessor for Participant.Caption(v5) - 8;
  v14 = OUTLINED_FUNCTION_15_7(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29);
  specialized Sequence._copySequenceContents(initializing:)(v14, v15, v16, v2);
  OUTLINED_FUNCTION_1_38(v17, v18, v19, v20, v21, v22, v23, v24, v28, v30, v31, v32, v33, v34);
  if (!v25)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v0;
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC15ConversationKit15RecentsCallItemV_ShyAFGTt0g5()
{
  OUTLINED_FUNCTION_21_10();
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = OUTLINED_FUNCTION_10_11();
  _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15ConversationKit15RecentsCallItemV_Tt1g5(v2, v3);
  v4 = OUTLINED_FUNCTION_17_1();
  v5 = type metadata accessor for RecentsCallItem(v4) - 8;
  OUTLINED_FUNCTION_15_7(v5, v6, v7, v8, type metadata accessor for RecentsCallItem, type metadata accessor for RecentsCallItem, v9, v10, v21, v23);
  specialized Sequence._copySequenceContents(initializing:)();
  OUTLINED_FUNCTION_1_38(v11, v12, v13, v14, v15, v16, v17, v18, v22, v24, v25, v26, v27, v28);
  if (!v19)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v0;
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo32UICollectionViewLayoutAttributesC_SD6ValuesVy10Foundation9IndexPathVAE_GTt0g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v5 = OUTLINED_FUNCTION_10_11();
  v6(v5);
  OUTLINED_FUNCTION_6_22();
  v7 = a3();
  OUTLINED_FUNCTION_1_38(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19, v20, v21, v22);
  if (!v15)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC15ConversationKit11ApplicationV_SD6ValuesVySSAF_GTt0g5()
{
  OUTLINED_FUNCTION_21_10();
  if (!v1)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_10_11();
  _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15ConversationKit11ApplicationV_Tt1g5();
  OUTLINED_FUNCTION_6_22();
  v6 = specialized Sequence._copySequenceContents(initializing:)(v3, v4, v5, v2);
  OUTLINED_FUNCTION_1_38(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17, v18, v19, v20, v21);
  if (!v14)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v0;
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_ShyAFGTt0g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v5 = OUTLINED_FUNCTION_10_11();
  v6(v5);
  v7 = OUTLINED_FUNCTION_17_1();
  v8 = a3(v7) - 8;
  OUTLINED_FUNCTION_15_7(v8, v9, v10, v11, v12, v13, v14, v15, v26, v28);
  specialized Sequence._copySequenceContents(initializing:)();
  OUTLINED_FUNCTION_1_38(v16, v17, v18, v19, v20, v21, v22, v23, v27, v29, v30, v31, v32, v33);
  if (!v24)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSi_SNySiGTt0g5(void *result, uint64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v3 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      if (v2 != -1)
      {
        v5 = result;
        OUTLINED_FUNCTION_10_11();
        v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5();
        if (specialized Sequence._copySequenceContents(initializing:)(&v7, (v6 + 4), v3, v5, a2) == v3)
        {
          return v6;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

uint64_t AudioPowerTap.validatedSamples(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v1;
    v23 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v6 = 0;
    v3 = v23;
    v21 = v2;
    do
    {
      v7 = *(a1 + 4 * v6 + 32);
      if ((~v7 & 0x7F800000) == 0 && (v7 & 0x7FFFFF) != 0)
      {
        if (*(v4 + 112))
        {
          v7 = 0;
        }

        else
        {
          *(v4 + 112) = 1;
          if (one-time initialization token for audioTap != -1)
          {
            OUTLINED_FUNCTION_0_28();
            swift_once();
          }

          v8 = type metadata accessor for Logger();
          __swift_project_value_buffer(v8, static Logger.audioTap);

          v9 = Logger.logObject.getter();
          v10 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            *v11 = 136315394;
            v12 = String.init<A>(reflecting:)();
            v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v22);

            *(v11 + 4) = v14;
            *(v11 + 12) = 2080;
            type metadata accessor for AudioPowerTap();

            v15 = String.init<A>(reflecting:)();
            v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v22);

            *(v11 + 14) = v17;
            v2 = v21;
            _os_log_impl(&dword_1BBC58000, v9, v10, "Found NaN when processing %s samples in %s", v11, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_3_4();
            MEMORY[0x1BFB23DF0]();
            OUTLINED_FUNCTION_3_4();
            MEMORY[0x1BFB23DF0]();
          }

          v7 = 0;
        }
      }

      v23 = v3;
      v19 = *(v3 + 16);
      v18 = *(v3 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v3 = v23;
      }

      ++v6;
      *(v3 + 16) = v19 + 1;
      *(v3 + 4 * v19 + 32) = v7;
    }

    while (v2 != v6);
  }

  return v3;
}

uint64_t AudioPowerTap.description.getter()
{
  v10[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(73);
  v11 = 0;
  v12 = 0xE000000000000000;
  MEMORY[0x1BFB20B10](0xD000000000000014, 0x80000001BC4F4910);
  v10[0] = v0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1BFB20B10](0xD000000000000013, 0x80000001BC4F4930);
  swift_beginAccess();
  if (*(v0 + 96))
  {
    v10[0] = *(v0 + 96);
    v1 = String.init<A>(reflecting:)();
    v3 = v2;
  }

  else
  {
    v3 = 0xE300000000000000;
    v1 = 7104878;
  }

  MEMORY[0x1BFB20B10](v1, v3);

  v4 = OUTLINED_FUNCTION_11_15();
  MEMORY[0x1BFB20B10](v4);
  LOBYTE(v10[0]) = *(v0 + 24);
  v5 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v5);

  MEMORY[0x1BFB20B10](0x6C616D726F6E202CLL, 0xEE00203A72657A69);
  outlined init with copy of IDSLookupManager(v0 + 40, v10);
  v6 = specialized >> prefix<A>(_:)(v10);
  v8 = v7;
  outlined destroy of AudioSampleNormalizer?(v10);
  MEMORY[0x1BFB20B10](v6, v8);

  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return v11;
}

unint64_t lazy protocol witness table accessor for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors()
{
  result = lazy protocol witness table cache variable for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors;
  if (!lazy protocol witness table cache variable for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors;
  if (!lazy protocol witness table cache variable for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors);
  }

  return result;
}

uint64_t outlined destroy of AudioSampleNormalizer?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21AudioSampleNormalizer_pSgMd, &_s15ConversationKit21AudioSampleNormalizer_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AudioPowerTap.TapType and conformance AudioPowerTap.TapType()
{
  result = lazy protocol witness table cache variable for type AudioPowerTap.TapType and conformance AudioPowerTap.TapType;
  if (!lazy protocol witness table cache variable for type AudioPowerTap.TapType and conformance AudioPowerTap.TapType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioPowerTap.TapType and conformance AudioPowerTap.TapType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioPowerTap.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioPowerTap.TapType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t *specialized Sequence._copySequenceContents(initializing:)(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3, a4, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20, &lazy protocol witness table cache variable for type TUConversation and conformance NSObject);
}

{
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3, a4, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58, &lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject);
}

{
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3, a4, &lazy cache variable for type metadata for SGURL, 0x1E69992A8, &lazy protocol witness table cache variable for type SGURL and conformance NSObject);
}

{
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3, a4, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00, &lazy protocol witness table cache variable for type TUHandle and conformance NSObject);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v12 = *(a4 + 16);
    v6 = 0;
LABEL_12:
    *v5 = a4;
    v5[1] = v12;
    return v6;
  }

  if (!a3)
  {
    v12 = *(a4 + 16);
LABEL_11:
    v6 = a3;
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = a3 - 1;
    v11 = (a4 + 8 * v6 + 24);
    while (v6 != v9)
    {
      *(a2 + 8 * v9) = *v11;
      if (v10 == v9)
      {

        v12 = ~v9 + v6;
        goto LABEL_11;
      }

      --v11;
      ++v9;
    }

    v12 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v7;
    a1[3] = v13;
    a1[4] = v9;
    return;
  }

  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < a3)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == a3)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Participant.Caption(0);
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v28 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
    v17 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v17;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = -1 << *(a4 + 32);
    v29 = a1;
    v16 = 0;
    v17 = 0;
    v18 = (63 - v13) >> 6;
    v30 = a3;
    while (v16 < a3)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_24;
      }

      if (!v15)
      {
        while (1)
        {
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            v15 = 0;
            v13 = v28;
            a1 = v29;
            goto LABEL_20;
          }

          v15 = *(v12 + 8 * v20);
          ++v17;
          if (v15)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v20 = v17;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v32;
      v25 = *(v33 + 72);
      outlined init with copy of RecentsCallItem(v23 + v25 * (v21 | (v20 << 6)), v32, type metadata accessor for Participant.Caption);
      v26 = v24;
      v27 = v31;
      outlined init with take of RecentsCallItem(v26, v31, type metadata accessor for Participant.Caption);
      outlined init with take of RecentsCallItem(v27, a2, type metadata accessor for Participant.Caption);
      a3 = v30;
      if (v19 == v30)
      {
        v17 = v20;
        v13 = v28;
        a1 = v29;
        a4 = v22;
        goto LABEL_20;
      }

      a2 += v25;
      v16 = v19;
      v17 = v20;
      a4 = v22;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t *specialized Sequence._copySequenceContents(initializing:)(uint64_t *result, uint64_t **a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, a5, a6);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(a7, a5, a6);
    result = Set.Iterator.init(_cocoa:)();
    v9 = v31;
    v13 = v32;
    v14 = v33;
    v15 = v34;
    v16 = v35;
  }

  else
  {
    v15 = 0;
    v17 = -1 << *(a4 + 32);
    v13 = a4 + 56;
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

    v16 = v19 & *(a4 + 56);
  }

  v20 = a3;
  if (!a2)
  {
    v21 = 0;
LABEL_28:
    *v11 = v9;
    v11[1] = v13;
    v11[2] = v14;
    v11[3] = v15;
    v11[4] = v16;
    return v21;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_28;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v27 = a5;
    v28 = a6;
    v21 = 0;
    v26 = v14;
    v22 = (v14 + 64) >> 6;
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v9 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_26;
        }

        type metadata accessor for NSObject(0, v27, v28);
        swift_dynamicCast();
        result = v30;
        v20 = a3;
        if (!v30)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (!v16)
        {
          while (1)
          {
            v24 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              break;
            }

            if (v24 >= v22)
            {
              v16 = 0;
              goto LABEL_26;
            }

            v16 = *(v13 + 8 * v24);
            ++v15;
            if (v16)
            {
              v15 = v24;
              goto LABEL_18;
            }
          }

          __break(1u);
          break;
        }

LABEL_18:
        v25 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        result = *(*(v9 + 48) + ((v15 << 9) | (8 * v25)));
        if (!result)
        {
          goto LABEL_26;
        }
      }

      *a2++ = result;
      ++v21;
      if (v23 == v20)
      {
        v21 = v20;
LABEL_26:
        v14 = v26;
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + (v12 | (v9 << 6)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
    v11 = 0;
    v8 = 0;
LABEL_21:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v11;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v11 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v23 = -1 << *(a4 + 32);
    v24 = result;
    v10 = 0;
    v11 = 0;
    v12 = (63 - v5) >> 6;
    while (1)
    {
      if (v10 >= v8)
      {
        goto LABEL_24;
      }

      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_25;
      }

      if (!v7)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v12)
          {
            v7 = 0;
            v8 = v10;
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v14);
          ++v11;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = v11;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = a4;
      v17 = (*(a4 + 56) + 40 * (v15 | (v14 << 6)));
      v18 = v17[1];
      v19 = v17[2];
      v20 = v17[3];
      v21 = v17[4];
      *v9 = *v17;
      v9[1] = v18;
      v9[2] = v19;
      v9[3] = v20;
      v9[4] = v21;
      if (v13 == v8)
      {
        break;
      }

      v9 += 5;

      result = v21;
      v10 = v13;
      v11 = v14;
      a4 = v16;
    }

    v22 = v21;
    v11 = v14;
    a4 = v16;
LABEL_19:
    v5 = v23;
    result = v24;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v6 = 0;
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_14:
    v7 = a4;
LABEL_16:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = a4;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6)
      {
        v6 = 1;
        a3 = v5;
        goto LABEL_16;
      }

      v6 = v7 == a5;
      if (v7 == a5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }
      }

      *(a2 + 8 * v5++) = v7;
      v7 = v9;
      if (v8 == a3)
      {
        v7 = v9;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int static CNContact.contactsByHandle(handles:knownContacts:)(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v32 = a1 & 0xC000000000000001;
  v33 = specialized Array.count.getter();
  v5 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v33 == v4)
    {
      return v5;
    }

    if (v32)
    {
      v6 = MEMORY[0x1BFB22010](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v8 = [v6 value];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (*(a2 + 16))
    {
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
      v14 = v13;

      if (v14)
      {
        v15 = *(*(a2 + 56) + 8 * v12);
        v16 = v15;
        goto LABEL_12;
      }
    }

    else
    {
    }

    v15 = 0;
LABEL_12:
    v17 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_7_30();
    if (v21)
    {
      goto LABEL_25;
    }

    v22 = v19;
    v23 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySo8TUHandleCSo9CNContactCSgGMd, &_ss17_NativeDictionaryVySo8TUHandleCSo9CNContactCSgGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v5))
    {
      v24 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_27;
      }

      v22 = v24;
    }

    if (v23)
    {
      v26 = *(v5 + 56);
      v27 = *(v26 + 8 * v22);
      *(v26 + 8 * v22) = v15;
    }

    else
    {
      OUTLINED_FUNCTION_6_23(v5 + 8 * (v22 >> 6));
      *(v28 + 8 * v22) = v17;
      *(*(v5 + 56) + 8 * v22) = v15;

      v29 = *(v5 + 16);
      v21 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v21)
      {
        goto LABEL_26;
      }

      *(v5 + 16) = v30;
    }

    ++v4;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int static CNContact.contactsByHandle(handles:knownContacts:)(uint64_t a1, unint64_t a2)
{
  v43 = a1;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a2 + 32);
    v3 = ~v6;
    v2 = a2 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(a2 + 64);
    v5 = a2;
  }

  v9 = 0;
  v42 = v3;
  v10 = (v3 + 64) >> 6;
  v11 = MEMORY[0x1E69E7CC8];
  v45 = v10;
  v46 = v5;
  v44 = v2;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v9;
  v13 = v4;
  v14 = v9;
  if (v4)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v13)));
    v17 = *(*(v5 + 56) + v16);
    v18 = *(*(v5 + 48) + v16);
    v19 = v17;
    if (!v18)
    {
LABEL_26:
      outlined consume of Set<TUHandle>.Iterator._Variant(v5);
      v40 = static CNContact.contactsByHandle(handles:knownContacts:)(v43, v11);

      return v40;
    }

    while (1)
    {
      v47 = v15;
      v20 = v18;
      v21 = [v18 value];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v11;
      specialized __RawDictionaryStorage.find<A>(_:)(v22, v24);
      OUTLINED_FUNCTION_7_30();
      if (v29)
      {
        break;
      }

      v30 = v27;
      v31 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo9CNContactCGMd, &_ss17_NativeDictionaryVySSSo9CNContactCGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v11))
      {
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v24);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_30;
        }

        v30 = v32;
      }

      if (v31)
      {

        v34 = *(v11 + 56);
        v35 = *(v34 + 8 * v30);
        *(v34 + 8 * v30) = v25;
      }

      else
      {
        OUTLINED_FUNCTION_6_23(v11 + 8 * (v30 >> 6));
        v37 = (v36 + 16 * v30);
        *v37 = v22;
        v37[1] = v24;
        *(*(v11 + 56) + 8 * v30) = v25;

        v38 = *(v11 + 16);
        v29 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v29)
        {
          goto LABEL_29;
        }

        *(v11 + 16) = v39;
      }

      v9 = v14;
      v5 = v46;
      v4 = v47;
      v2 = v44;
      v10 = v45;
      if ((v46 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (__CocoaDictionary.Iterator.next()())
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
        swift_dynamicCast();
        v18 = v48;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact, 0x1E695CD58);
        swift_dynamicCast();
        v19 = v48;
        v14 = v9;
        v15 = v4;
        if (v48)
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v10)
      {
        goto LABEL_26;
      }

      v13 = *(v2 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3;
  v7 = a3 >> 16;
  v8 = HIDWORD(a3);
  v9 = a3 >> 40;
  v10 = HIWORD(a3);
  Hasher.init(_seed:)();
  MultiwayViewConstraintsController.OverallLayoutState.hash(into:)();
  MEMORY[0x1BFB22640](a4);
  v11 = Hasher._finalize()();
  v12 = 0x10000;
  if ((v7 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = v12 | v4 & 0xFF00FFFF;
  v14 = 0x100000000;
  if ((v8 & 1) == 0)
  {
    v14 = 0;
  }

  v15 = 0x10000000000;
  if ((v9 & 1) == 0)
  {
    v15 = 0;
  }

  v16 = v13 | v14 | v15;
  v17 = 0x1000000000000;
  if ((v10 & 1) == 0)
  {
    v17 = 0;
  }

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 1, a2, v16 | v17, a4, v11);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1, uint64_t a2, uint64_t a3)
{
  v11 = a3;
  v13 = BYTE6(a3);
  v12 = WORD2(a3);
  Hasher.init(_seed:)();
  MultiwayViewConstraintsController.OverallLayoutState.hash(into:)();
  v3 = Hasher._finalize()();
  v4 = 0x10000;
  if ((v11 & 0x10000) == 0)
  {
    v4 = 0;
  }

  v5 = 0x100000000;
  if ((v12 & 1) == 0)
  {
    v5 = 0;
  }

  v6 = 0x10000000000;
  if ((v12 & 0x100) == 0)
  {
    v6 = 0;
  }

  v7 = 0x1000000000000;
  if ((v13 & 1) == 0)
  {
    v7 = 0;
  }

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 1, a2, v11 | (HIBYTE(v11) << 24) | v4 | v5 | v6 | v7, v3);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  OUTLINED_FUNCTION_5_15();
  String.hash(into:)();
  v0 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0);
}

{
  OUTLINED_FUNCTION_5_15();
  String.hash(into:)();
  v0 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  OUTLINED_FUNCTION_5_15();
  MEMORY[0x1BFB22640](a1 & 1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 1, v2);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, Swift::Int))
{
  OUTLINED_FUNCTION_5_15();
  MEMORY[0x1BFB22640](a1);
  v3 = Hasher._finalize()();

  return a2(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5 + 64;
  v8 = -1 << *(v5 + 32);
  result = a5 & ~v8;
  if ((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v10 = ~v8;
    v11 = BYTE1(a3);
    v12 = a3;
    v13 = *(v5 + 48);
    v14 = BYTE3(a3);
    v15 = (a3 >> 8) & 0xC0;
    v16 = (a3 >> 8) & 0x3F;
    v17 = a1 & 1;
    v18 = HIDWORD(a3) & 1;
    v19 = (a3 >> 16) & 1;
    v20 = HIWORD(a3) & 1;
    v21 = (a3 >> 40) & 1;
    while (1)
    {
      v22 = (v13 + 32 * result);
      if (*v22 != v17 || *(v22 + 1) != a2)
      {
        goto LABEL_7;
      }

      v24 = v22[17];
      v25 = v22[18];
      v26 = v22[19];
      v27 = v22[20];
      v28 = v22[21];
      v29 = v22[22];
      v30 = *(v22 + 3);
      v31 = v22[16];
      if (v31)
      {
        if (v31 == 1)
        {
          if (v12 != 1)
          {
            goto LABEL_7;
          }
        }

        else if (v12 != 2)
        {
          goto LABEL_7;
        }
      }

      else if (v12)
      {
        goto LABEL_7;
      }

      if (!(v24 >> 6))
      {
        break;
      }

      if (v24 >> 6 == 1)
      {
        if (v15 != 64)
        {
          goto LABEL_7;
        }

        v24 &= 0x3Fu;
        goto LABEL_21;
      }

      v32 = v19 ^ v25;
      v33 = v18 ^ v27;
      v34 = v26 != v14;
      if (v24 == 128)
      {
        v35 = v11 == 128;
      }

      else
      {
        v35 = v11 == 129;
      }

      v36 = !v35;
      if ((v36 | v32 | v34 | v33))
      {
        goto LABEL_7;
      }

LABEL_33:
      if (v21 == v28 && ((v20 ^ v29) & 1) == 0 && v30 == a4)
      {
        return result;
      }

LABEL_7:
      result = (result + 1) & v10;
      if (((*(v7 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v11 >= 0x40)
    {
      goto LABEL_7;
    }

LABEL_21:
    if (v16 != v24 || ((v19 ^ v25) & 1) != 0 || v26 != v14 || ((v18 ^ v27) & 1) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4 + 64;
  v7 = -1 << *(v4 + 32);
  result = a4 & ~v7;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v9 = ~v7;
    v10 = BYTE1(a3);
    v11 = a3;
    v12 = *(v4 + 48);
    v13 = BYTE3(a3);
    v14 = (a3 >> 8) & 0xC0;
    v15 = (a3 >> 8) & 0x3F;
    v16 = a1 & 1;
    v17 = HIDWORD(a3) & 1;
    v18 = (a3 >> 16) & 1;
    v19 = HIWORD(a3) & 1;
    v20 = (a3 >> 40) & 1;
    while (1)
    {
      v21 = (v12 + 24 * result);
      if (*v21 != v16 || *(v21 + 1) != a2)
      {
        goto LABEL_7;
      }

      v23 = v21[17];
      v24 = v21[18];
      v25 = v21[19];
      v26 = v21[20];
      v27 = v21[21];
      v28 = v21[22];
      v29 = v21[16];
      if (v29)
      {
        if (v29 == 1)
        {
          if (v11 != 1)
          {
            goto LABEL_7;
          }
        }

        else if (v11 != 2)
        {
          goto LABEL_7;
        }
      }

      else if (v11)
      {
        goto LABEL_7;
      }

      if (!(v23 >> 6))
      {
        break;
      }

      if (v23 >> 6 == 1)
      {
        if (v14 != 64)
        {
          goto LABEL_7;
        }

        v23 &= 0x3Fu;
        goto LABEL_21;
      }

      v30 = v18 ^ v24;
      v31 = v17 ^ v26;
      v32 = v25 != v13;
      if (v23 == 128)
      {
        v33 = v10 == 128;
      }

      else
      {
        v33 = v10 == 129;
      }

      v34 = !v33;
      if ((v34 | v30 | v32 | v31))
      {
        goto LABEL_7;
      }

LABEL_33:
      if (v20 == v27 && ((v19 ^ v28) & 1) == 0)
      {
        return result;
      }

LABEL_7:
      result = (result + 1) & v9;
      if (((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v10 >= 0x40)
    {
      goto LABEL_7;
    }

LABEL_21:
    if (v15 != v23 || ((v18 ^ v24) & 1) != 0 || v25 != v13 || ((v17 ^ v26) & 1) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {

      return i;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    outlined init with copy of AnyHashable(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1BFB21F20](v8, a1);
    outlined destroy of AnyHashable(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = MessageType.rawValue.getter();
    if (v5 == MessageType.rawValue.getter())
    {
      break;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(v2 + 48);
    do
    {
      if (*(v7 + result))
      {
        if (*(v7 + result) == 1)
        {
          if (a1 == 1)
          {
            return result;
          }
        }

        else if (a1 == 2)
        {
          return result;
        }
      }

      else if (!a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v7 = v4;
  v8 = v4 + 64;
  v9 = ~(-1 << *(v4 + 32));
  for (i = a2 & v9; ((1 << i) & *(v8 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    type metadata accessor for NSObject(0, a3, a4);
    v11 = *(*(v7 + 48) + 8 * i);
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      break;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(a1, a2, a3, a4, a5, &unk_1F3ACE1A8, partial apply for closure #1 in InCallControlsCollectionViewController.inCallControlsBaseCellDidTapButton(_:), &block_descriptor_26_0, 6u);
}

{
  specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(a1, a2, a3, a4, a5, &unk_1F3ACE158, partial apply for closure #1 in InCallControlsCollectionViewController.openMessages(cell:tappedOpenMessagesButton:), &block_descriptor_20_0, 5u);
}

{
  specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(a1, a2, a3, a4, a5, &unk_1F3ACE248, partial apply for closure #1 in InCallControlsCollectionViewController.inCallControlsBaseCellDidTapButton(_:), &block_descriptor_38, 6u);
}

{
  specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(a1, a2, a3, a4, a5, &unk_1F3ACE1F8, partial apply for closure #1 in InCallControlsCollectionViewController.shareLinkCell(cell:tappedCopyLinkButton:), &block_descriptor_32_0, 8u);
}

void specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)()
{
  OUTLINED_FUNCTION_6_7();

  v3 = OUTLINED_FUNCTION_7_31(v2, 0x80000001BC4F49E0);
  if (v3)
  {
    v14[4] = partial apply for closure #1 in MultiwayViewController.localParticipantViewDidTap(_:localParticipantView:);
    v14[5] = v0;
    OUTLINED_FUNCTION_1_25();
    v14[1] = 1107296256;
    OUTLINED_FUNCTION_0_30();
    v14[2] = v11;
    v14[3] = &block_descriptor_14;
    _Block_copy(v14);
    OUTLINED_FUNCTION_4_20();

    SBSRequestPasscodeUnlockUI();
    _Block_release(v1);
  }

  else
  {
    OUTLINED_FUNCTION_8_28(v3, v4, v5, v6, v7, v8, v9, v10, v14[0]);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      MultiwayViewController.toggleLocalParticipantEffectsButton()();
      OUTLINED_FUNCTION_5_16();

      return;
    }
  }

  OUTLINED_FUNCTION_5_16();
}

{
  OUTLINED_FUNCTION_6_7();

  if (OUTLINED_FUNCTION_7_31(v1, 0x80000001BC4F49E0))
  {
    aBlock[4] = partial apply for closure #1 in InCallBannerHostViewController.callDetailsGestureRecognizerTapped();
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_0_30();
    aBlock[2] = v2;
    aBlock[3] = &block_descriptor_11;
    v3 = _Block_copy(aBlock);

    SBSRequestPasscodeUnlockUI();
    _Block_release(v3);
LABEL_6:
    OUTLINED_FUNCTION_5_16();
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v5 = Strong;
  v6 = Strong + OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_inCallBannerDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);

    ObjectType = swift_getObjectType();
    (*(v7 + 32))(ObjectType, v7);
    OUTLINED_FUNCTION_5_16();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_5_16();
  }
}

uint64_t specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  if (OUTLINED_FUNCTION_7_31(v6, 0x80000001BC4F49E0))
  {
    v10[4] = partial apply for closure #1 in closure #2 in ConversationControlsManager.startScreenShareWithCountdown(completion:);
    v10[5] = v5;
    OUTLINED_FUNCTION_1_25();
    v10[1] = 1107296256;
    OUTLINED_FUNCTION_0_30();
    v10[2] = v7;
    v10[3] = &block_descriptor_44;
    v8 = _Block_copy(v10);

    SBSRequestPasscodeUnlockUI();
    _Block_release(v8);
  }

  else
  {
    a2();
  }
}

void specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v24 = a8;
  OUTLINED_FUNCTION_6_7();
  v14 = type metadata accessor for InCallControlsCollectionViewController.Action(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = v9;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  swift_unknownObjectRetain();
  v18 = a4;
  v19 = a5;
  if (OUTLINED_FUNCTION_7_31(v19, 0x80000001BC4F49E0))
  {
    aBlock[4] = a7;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_0_30();
    aBlock[2] = v20;
    aBlock[3] = v24;
    v21 = _Block_copy(aBlock);

    SBSRequestPasscodeUnlockUI();
    _Block_release(v21);
  }

  else
  {
    ObjectType = swift_getObjectType();
    swift_storeEnumTagMultiPayload();
    (*(a3 + 8))(v18, v16, v19, ObjectType, a3);
    outlined destroy of InCallControlsCollectionViewController.Action(v16);
  }

  swift_unknownObjectRelease();
}

uint64_t specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)()
{
  OUTLINED_FUNCTION_6_7();

  v3 = OUTLINED_FUNCTION_7_31(v2, 0x80000001BC4F49E0);
  if (v3)
  {
    v19[4] = partial apply for closure #1 in LocalParticipantControlsView.handleEffectsTapped();
    v19[5] = v0;
    OUTLINED_FUNCTION_1_25();
    v19[1] = 1107296256;
    OUTLINED_FUNCTION_0_30();
    v19[2] = v11;
    v19[3] = &block_descriptor_17;
    _Block_copy(v19);
    OUTLINED_FUNCTION_4_20();

    SBSRequestPasscodeUnlockUI();
    _Block_release(v1);
  }

  else
  {
    OUTLINED_FUNCTION_8_28(v3, v4, v5, v6, v7, v8, v9, v10, v19[0]);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x220))();
      v16 = v15;

      if (v14)
      {
        ObjectType = swift_getObjectType();
        (*(v16 + 8))(7, ObjectType, v16);
        OUTLINED_FUNCTION_5_16();
        return swift_unknownObjectRelease();
      }
    }
  }

  return OUTLINED_FUNCTION_5_16();
}

uint64_t specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(uint64_t a1, uint64_t a2)
{
  return specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(a1, a2, partial apply for closure #1 in MultiwayViewController.presentAddParticipantSheet(), &block_descriptor_8, closure #1 in MultiwayViewController.presentAddParticipantSheet());
}

{
  return specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(a1, a2, partial apply for closure #1 in MultiwayViewController.presentContactCard(), &block_descriptor_5, closure #1 in MultiwayViewController.presentContactCard());
}

uint64_t specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_6_7();

  if (OUTLINED_FUNCTION_7_31(v10, 0x80000001BC4F49E0))
  {
    v13[4] = a3;
    v13[5] = v5;
    OUTLINED_FUNCTION_1_25();
    v13[1] = 1107296256;
    OUTLINED_FUNCTION_0_30();
    v13[2] = v11;
    v13[3] = a4;
    _Block_copy(v13);
    OUTLINED_FUNCTION_4_20();

    SBSRequestPasscodeUnlockUI();
    _Block_release(v6);
  }

  else
  {
    a5(1, v5);
  }

  return OUTLINED_FUNCTION_5_16();
}

void static SpringBoardUtilities.requestPasscodeUnlock(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  if (OUTLINED_FUNCTION_7_31(a1, 0x80000001BC4F49E0))
  {
    v6[4] = a1;
    v6[5] = a2;
    OUTLINED_FUNCTION_1_25();
    v6[1] = 1107296256;
    OUTLINED_FUNCTION_0_30();
    v6[2] = v5;
    v6[3] = &block_descriptor_5;
    _Block_copy(v6);
    OUTLINED_FUNCTION_4_20();

    SBSRequestPasscodeUnlockUI();
    _Block_release(v2);
  }

  else
  {
    a1(1);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = a2 != 0;

  v2(v3);
}

uint64_t outlined destroy of InCallControlsCollectionViewController.Action(uint64_t a1)
{
  v2 = type metadata accessor for InCallControlsCollectionViewController.Action(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL static SyncedScreeningAlphaGradientView.AnimatedState.== infix(_:_:)()
{
  v0 = SyncedScreeningAlphaGradientView.AnimatedState.minOpacity.getter();
  if (v0 != SyncedScreeningAlphaGradientView.AnimatedState.minOpacity.getter())
  {
    return 0;
  }

  v1 = SyncedScreeningAlphaGradientView.AnimatedState.maxOpacity.getter();
  if (v1 != SyncedScreeningAlphaGradientView.AnimatedState.maxOpacity.getter())
  {
    return 0;
  }

  v2 = SyncedScreeningAlphaGradientView.AnimatedState.unitStart.getter();
  return v2 == SyncedScreeningAlphaGradientView.AnimatedState.unitStart.getter();
}

double SyncedScreeningAlphaGradientView.AnimatedState.minOpacity.getter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_10_12(KeyPath, v2, v3, v4, v5, v6, v7, v8, v10);
  static Published.subscript.getter();

  return v11;
}

uint64_t SyncedScreeningAlphaGradientView.AnimatedState.minOpacity.setter(uint64_t a1, double a2)
{
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_10_12(KeyPath, v3, v4, v5, v6, v7, v8, v9, v11);

  return static Published.subscript.setter();
}

uint64_t SyncedScreeningAlphaGradientView.AnimatedState.deinit()
{
  v1 = direct field offset for SyncedScreeningAlphaGradientView.AnimatedState._minOpacity;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + direct field offset for SyncedScreeningAlphaGradientView.AnimatedState._maxOpacity, v2);
  v3(v0 + direct field offset for SyncedScreeningAlphaGradientView.AnimatedState._unitStart, v2);
  return v0;
}

uint64_t SyncedScreeningAlphaGradientView.AnimatedState.__deallocating_deinit()
{
  SyncedScreeningAlphaGradientView.AnimatedState.deinit();

  return swift_deallocClassInstance();
}

uint64_t SyncedScreeningAlphaGradientView.AnimatedState.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - v3;
  v5 = direct field offset for SyncedScreeningAlphaGradientView.AnimatedState._minOpacity;
  sub_1BBCDCDF8(0.0);
  v6 = *(v2 + 32);
  v6(v0 + v5, v4, v1);
  v7 = direct field offset for SyncedScreeningAlphaGradientView.AnimatedState._maxOpacity;
  sub_1BBCDCDF8(0.0);
  v6(v0 + v7, v4, v1);
  v8 = direct field offset for SyncedScreeningAlphaGradientView.AnimatedState._unitStart;
  sub_1BBCDCDF8(0.0);
  v6(v0 + v8, v4, v1);
  return v0;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance SyncedScreeningAlphaGradientView<A>.AnimatedState@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  type metadata accessor for SyncedScreeningAlphaGradientView.AnimatedState(0, *(a1 + 80), a3, a4);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

double SyncedScreeningAlphaGradientView.GradientTracking.init()@<D0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1BC4BD470;
  a1[1] = xmmword_1BC4BD480;
  result = 0.0;
  a1[2] = xmmword_1BC4BD490;
  return result;
}

void SyncedScreeningAlphaGradientView.GradientTracking.init(defaultUnitPointStart:unitOffset:gradientTransitionUnitLength:unitTransitionPoint:endOpacity:startOpacity:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
}

uint64_t property wrapper backing initializer of SyncedScreeningAlphaGradientView.positionalData()
{
  lazy protocol witness table accessor for type PositionalData and conformance PositionalData();
  OUTLINED_FUNCTION_46();

  return ObservedObject.init(wrappedValue:)();
}

uint64_t key path getter for SyncedScreeningAlphaGradientView.positionalData : <A>SyncedScreeningAlphaGradientView<A>@<X0>(uint64_t *a1@<X8>)
{
  result = SyncedScreeningAlphaGradientView.positionalData.getter();
  *a1 = result;
  return result;
}

uint64_t SyncedScreeningAlphaGradientView.positionalData.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

void SyncedScreeningAlphaGradientView.$positionalData.getter()
{
  type metadata accessor for PositionalData(0);
  lazy protocol witness table accessor for type PositionalData and conformance PositionalData();
  OUTLINED_FUNCTION_46();

  JUMPOUT(0x1BFB1E3A0);
}

unint64_t lazy protocol witness table accessor for type PositionalData and conformance PositionalData()
{
  result = lazy protocol witness table cache variable for type PositionalData and conformance PositionalData;
  if (!lazy protocol witness table cache variable for type PositionalData and conformance PositionalData)
  {
    type metadata accessor for PositionalData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PositionalData and conformance PositionalData);
  }

  return result;
}

uint64_t property wrapper backing initializer of SyncedScreeningAlphaGradientView.viewState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SyncedScreeningAlphaGradientView.AnimatedState(0, a3, a3, a4);
  OUTLINED_FUNCTION_0_31();
  swift_getWitnessTable();
  return StateObject.init(wrappedValue:)();
}

double SyncedScreeningAlphaGradientView.init(uiView:positionalData:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v8 = property wrapper backing initializer of SyncedScreeningAlphaGradientView.viewState(partial apply for implicit closure #2 in implicit closure #1 in variable initialization expression of SyncedScreeningAlphaGradientView._viewState, v6, a2, v7);
  v10 = v9;
  v15 = v11 & 1;
  v12 = property wrapper backing initializer of SyncedScreeningAlphaGradientView.positionalData();
  *a3 = a1;
  *(a3 + 8) = xmmword_1BC4BD470;
  *(a3 + 24) = xmmword_1BC4BD480;
  result = 0.0;
  *(a3 + 40) = xmmword_1BC4BD490;
  *(a3 + 56) = v12;
  *(a3 + 64) = v14;
  *(a3 + 72) = v8;
  *(a3 + 80) = v10;
  *(a3 + 88) = v15;
  return result;
}

uint64_t SyncedScreeningAlphaGradientView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 16);
  OUTLINED_FUNCTION_11_16(v4);
  v25 = *(*(a1 - 8) + 16);
  v25(&v46, v2, a1);
  type metadata accessor for BackgroundView(255, v5, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_MaskEffectVyAA14LinearGradientVGMd, &_s7SwiftUI11_MaskEffectVyAA14LinearGradientVGMR);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for SyncedScreeningAlphaGradientView.AnimatedState(255, v5, v8, v9);
  OUTLINED_FUNCTION_6_24();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_5_17();
  WitnessTable = swift_getWitnessTable();
  v45 = lazy protocol witness table accessor for type _MaskEffect<LinearGradient> and conformance _MaskEffect<A>();
  OUTLINED_FUNCTION_4_21();
  v42 = swift_getWitnessTable();
  v43 = MEMORY[0x1E697E5C0];
  v10 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_31();
  v40 = v10;
  v41 = swift_getWitnessTable();
  swift_getWitnessTable();
  v46 = GeometryReader.init(content:)();
  v47 = v11;
  type metadata accessor for GeometryReader();
  OUTLINED_FUNCTION_2_37();
  v12 = swift_getWitnessTable();
  static SafeAreaRegions.all.getter();
  static Edge.Set.all.getter();
  View.ignoresSafeArea(_:edges:)();

  v36 = v27;
  v37 = v28;
  v38 = v29;
  v39 = BYTE8(v29);
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_11_16(v13);
  v25(&v46, v2, a1);
  type metadata accessor for ModifiedContent();
  v34 = v12;
  v35 = MEMORY[0x1E6980A30];
  swift_getWitnessTable();
  View.onAppear(perform:)();

  v29 = v55;
  v14 = v56;
  v15 = v57;
  v16 = v58;
  v17 = v59;
  v27 = v53;
  v28 = v54;
  v30 = v56;
  v31 = v57;
  v32 = v58;
  v33 = v59;
  v18 = type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_46();
  swift_getWitnessTable();
  v19 = *(*(v18 - 8) + 16);
  v19(&v46, &v27, v18);

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v14, v15);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v16, v17);
  v55 = v48;
  v20 = v49;
  v21 = v50;
  v22 = v51;
  v23 = v52;
  v53 = v46;
  v54 = v47;
  v56 = v49;
  v57 = v50;
  v58 = v51;
  v59 = v52;
  v19(a2, &v53, v18);

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v20, v21);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v22, v23);
}

uint64_t closure #1 in SyncedScreeningAlphaGradientView.body.getter@<X0>(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>, uint64_t a5@<X3>)
{
  v27 = *a2;
  *&v24[0] = v27;
  v7 = type metadata accessor for SyncedScreeningAlphaGradientView(0, a3, a3, a5);
  v8 = v27;
  SyncedScreeningAlphaGradientView.gradient(for:)(a1, v7, v25);
  *v28 = v25[0];
  *&v28[16] = v25[1];
  *&v28[32] = v26;
  v11 = type metadata accessor for BackgroundView(0, a3, v9, v10);
  WitnessTable = swift_getWitnessTable();
  lazy protocol witness table accessor for type LinearGradient and conformance LinearGradient();
  View.mask<A>(_:)();
  outlined destroy of LinearGradient(v25);
  (*(*(v11 - 8) + 8))(&v27, v11);
  v13 = *&__src[0];
  type metadata accessor for SyncedScreeningAlphaGradientView.AnimatedState(0, a3, v14, v15);
  swift_getWitnessTable();
  StateObject.wrappedValue.getter();
  SyncedScreeningAlphaGradientView.AnimatedState.maxOpacity.getter();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_MaskEffectVyAA14LinearGradientVGMd, &_s7SwiftUI11_MaskEffectVyAA14LinearGradientVGMR);
  type metadata accessor for ModifiedContent();
  __dst[11] = WitnessTable;
  __dst[12] = lazy protocol witness table accessor for type _MaskEffect<LinearGradient> and conformance _MaskEffect<A>();
  v16 = swift_getWitnessTable();
  View.opacity(_:)();

  v24[0] = *v28;
  v24[1] = *&v28[16];
  v24[2] = *&v28[32];
  *&v24[3] = *&v28[48];
  static Animation.default.getter();
  StateObject.wrappedValue.getter();
  type metadata accessor for ModifiedContent();
  __dst[9] = v16;
  __dst[10] = MEMORY[0x1E697E5C0];
  swift_getWitnessTable();
  swift_getWitnessTable();
  View.animation<A>(_:value:)();

  memcpy(__dst, __src, 0x48uLL);
  type metadata accessor for _AnimationModifier();
  v17 = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v19(v24, __dst, v17);
  memcpy(v28, __dst, sizeof(v28));
  v20 = *(v18 + 8);
  v20(v28, v17);
  memcpy(__dst, v24, 0x48uLL);
  v19(a4, __dst, v17);
  memcpy(__src, __dst, 0x48uLL);
  return (v20)(__src, v17);
}

double SyncedScreeningAlphaGradientView.gradient(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v31 = a1;
  v32 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v27 - v7;
  static Color.black.getter();
  v29 = a2;
  v28 = *(a2 + 16);
  type metadata accessor for SyncedScreeningAlphaGradientView.AnimatedState(0, v28, v8, v9);
  OUTLINED_FUNCTION_0_31();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_29();
  SyncedScreeningAlphaGradientView.AnimatedState.maxOpacity.getter();

  Color.opacity(_:)();

  static Color.black.getter();
  OUTLINED_FUNCTION_8_29();
  SyncedScreeningAlphaGradientView.AnimatedState.minOpacity.getter();

  Color.opacity(_:)();

  PositionalData.listBounds.getter(v35);
  v10 = v36;

  if (v10)
  {
    type metadata accessor for CGRect(0);

    GeometryProxy.subscript.getter();
    outlined destroy of ListAnchor?(v35);
    v11 = *(v33 + 1);
    GeometryProxy.size.getter();
    v13 = v12;
    outlined destroy of ListAnchor?(v35);
    v14 = 1.0 - v11 / v13 + v4[2];
  }

  else
  {
    v14 = v4[1];
  }

  if (v4[4] <= v14)
  {
    v15 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v30, 1, 1, v15);
    type metadata accessor for MainActor();
    (*(*(v29 - 8) + 16))(v33, v4);
    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E85E0];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v28;
    memcpy(v17 + 5, v4, 0x59uLL);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BC4BB990;

  *(v19 + 32) = Gradient.Stop.init(color:location:)();
  *(v19 + 40) = v20;

  *(v19 + 48) = Gradient.Stop.init(color:location:)();
  *(v19 + 56) = v21;

  *(v19 + 64) = Gradient.Stop.init(color:location:)();
  *(v19 + 72) = v22;

  *(v19 + 80) = Gradient.Stop.init(color:location:)();
  *(v19 + 88) = v23;
  static UnitPoint.bottom.getter();
  static UnitPoint.top.getter();
  Gradient.init(stops:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();

  result = *v33;
  v25 = v33[1];
  v26 = v32;
  *v32 = v33[0];
  v26[1] = v25;
  *(v26 + 4) = v34;
  return result;
}

unint64_t lazy protocol witness table accessor for type _MaskEffect<LinearGradient> and conformance _MaskEffect<A>()
{
  result = lazy protocol witness table cache variable for type _MaskEffect<LinearGradient> and conformance _MaskEffect<A>;
  if (!lazy protocol witness table cache variable for type _MaskEffect<LinearGradient> and conformance _MaskEffect<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_MaskEffectVyAA14LinearGradientVGMd, &_s7SwiftUI11_MaskEffectVyAA14LinearGradientVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _MaskEffect<LinearGradient> and conformance _MaskEffect<A>);
  }

  return result;
}

uint64_t closure #2 in SyncedScreeningAlphaGradientView.body.getter(uint64_t a1, uint64_t a2)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t objectdestroy_7Tm()
{

  outlined consume of StateObject<SyncedScreeningAlphaGradientView<A>.AnimatedState>.Storage<A>();

  return swift_deallocObject();
}

uint64_t closure #1 in SyncedScreeningAlphaGradientView.gradient(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in SyncedScreeningAlphaGradientView.gradient(for:), v7, v6);
}

uint64_t closure #1 in SyncedScreeningAlphaGradientView.gradient(for:)()
{
  v3 = *(v0 + 24);

  *(swift_task_alloc() + 16) = vextq_s8(v3, v3, 8uLL);
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:)(uint64_t a1)
{
  v5 = v1[3];
  v4 = v1[4];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in SyncedScreeningAlphaGradientView.gradient(for:)(a1, v6, v5, (v1 + 5), v4);
}

uint64_t outlined destroy of ListAnchor?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit10ListAnchorVSgMd, &_s15ConversationKit10ListAnchorVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in closure #2 in SyncedScreeningAlphaGradientView.body.getter(uint64_t a1, uint64_t a2, void (*a3)(double), uint64_t a4)
{
  type metadata accessor for SyncedScreeningAlphaGradientView.AnimatedState(0, a2, a3, a4);
  OUTLINED_FUNCTION_0_31();
  swift_getWitnessTable();
  StateObject.wrappedValue.getter();
  a3(*(a1 + 48));
}

uint64_t type metadata instantiation function for SyncedScreeningAlphaGradientView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for SyncedScreeningAlphaGradientView(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for SyncedScreeningAlphaGradientView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for SyncedScreeningAlphaGradientView.AnimatedState(uint64_t a1)
{
  type metadata accessor for Published<Double>();
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void type metadata accessor for Published<Double>()
{
  if (!lazy cache variable for type metadata for Published<Double>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Double>);
    }
  }
}

uint64_t type metadata instantiation function for SyncedScreeningAlphaGradientView.GradientTracking(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for BackgroundView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance BackgroundView<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance BackgroundView<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, WitnessTable);
}

void protocol witness for View.body.getter in conformance BackgroundView<A>(uint64_t a1)
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type LinearGradient and conformance LinearGradient()
{
  result = lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient;
  if (!lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient);
  }

  return result;
}

void ConversationControlsAudioRouteMenuButtonProvider.shouldToggleBetweenSpeakerAndReceiver.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 routeController];

  v3 = objc_opt_self();
  v4 = [v0 sharedInstance];
  v5 = [v3 eligibleLagunaDevices_];

  if (v5)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUNearbyDeviceHandle, 0x1E69D8C80);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = [v2 routes];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TURoute, 0x1E69D8CA8);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = specialized Array.count.getter();

    if (v7 == 2)
    {
      v8 = [v2 routes];
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = specialized Array.count.getter();
      for (i = 0; ; ++i)
      {
        if (v10 == i)
        {

          specialized Array.count.getter();

          return;
        }

        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1BFB22010](i, v9);
        }

        else
        {
          if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v12 = *(v9 + 8 * i + 32);
        }

        v13 = v12;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ([v12 isSpeaker])
        {
        }

        else
        {
          v14 = [v13 isReceiver];

          if ((v14 & 1) == 0)
          {

            return;
          }
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

LABEL_26:

LABEL_27:

    return;
  }

  v15 = [v2 routes];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TURoute, 0x1E69D8CA8);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = specialized Array.count.getter();

  if (v16 != 2)
  {
    goto LABEL_27;
  }

  v17 = [v2 routes];
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = specialized Array.count.getter();
  for (j = 0; v19 != j; ++j)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1BFB22010](j, v18);
    }

    else
    {
      if (j >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v21 = *(v18 + 8 * j + 32);
    }

    v22 = v21;
    if (__OFADD__(j, 1))
    {
      goto LABEL_34;
    }

    if ([v21 isSpeaker])
    {
    }

    else
    {
      v23 = [v22 isReceiver];

      if ((v23 & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }
}

void *ConversationControlsAudioRouteMenuButtonProvider.makeButton(frame:)()
{
  v0 = ControlsButtonProvider.makeButton(frame:)();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = v0;

  UIControl.addAction(for:handler:)(64, partial apply for closure #1 in ConversationControlsAudioRouteMenuButtonProvider.makeButton(frame:), v1);

  return v0;
}

void closure #1 in ConversationControlsAudioRouteMenuButtonProvider.makeButton(frame:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ConversationControlsAudioRouteMenuButtonProvider.shouldToggleBetweenSpeakerAndReceiver.getter();
    if (v2)
    {
      v3 = [objc_opt_self() sharedInstance];
      v4 = [v3 routeController];

      v5 = [v4 routes];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TURoute, 0x1E69D8CA8);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = specialized Array.count.getter();
      for (i = 0; ; ++i)
      {
        if (v7 == i)
        {

          return;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1BFB22010](i, v6);
        }

        else
        {
          if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        v10 = v9;
        v11 = [v4 pickedRoute];
        if (!v11)
        {

LABEL_16:

          [v4 pickRoute_];

          return;
        }

        v12 = v11;
        v13 = static NSObject.== infix(_:_:)();

        if ((v13 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall ConversationControlsAudioRouteMenuButtonProvider.buttonChanged()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7TURouteCSg_GMd, &_s7Combine9PublishedV9PublisherVySo7TURouteCSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  ControlsButtonProvider.buttonChanged()();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    type metadata accessor for ConversationControlsButton();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      v24 = v3;
      v10 = objc_opt_self();
      v11 = v7;
      v12 = [v10 sharedInstance];
      v13 = [v12 routeController];

      LODWORD(v12) = [v13 areAuxiliaryRoutesAvailable];
      if (v12)
      {
        v14 = [objc_opt_self() conversationKit];
        v23 = 0xE000000000000000;
        v15 = 0x6F69647541;
        v16 = 0xE500000000000000;
      }

      else
      {
        v14 = [objc_opt_self() conversationKit];
        v23 = 0xE000000000000000;
        v15 = 0xD00000000000001ELL;
        v16 = 0x80000001BC4F4AB0;
      }

      v17.value._countAndFlagsBits = 0x61737265766E6F43;
      v17.value._object = 0xEF74694B6E6F6974;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v19 = 0;
      v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v15, v17, v14, v18, *(&v23 - 1));

      v21 = (v9 + OBJC_IVAR___CNKConversationControlsButton_localizedName);
      swift_beginAccess();
      *v21 = v20;

      ConversationControlsButton.localizedName.didset();

      v3 = v24;
    }

    outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD00000000000001ALL, 0x80000001BC4F4A90, v7);
    (*((*MEMORY[0x1E69E7D40] & **(v1 + 160)) + 0x668))();
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type Published<TURoute?>.Publisher and conformance Published<A>.Publisher();
    v22 = Publisher<>.sink(receiveValue:)();

    (*(v3 + 8))(v5, v2);
    swift_beginAccess();
    *(v1 + 48) = v22;
  }
}

uint64_t closure #1 in ConversationControlsAudioRouteMenuButtonProvider.buttonChanged()(void **a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      if (v7)
      {
        v12 = *(v9 + 160);
        v13 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x518);

        v14 = v12;
        v15 = v7;
        v16 = v13();

        if (v16)
        {
          v18 = [v16 audioRouteGlyphFor_];
          swift_unknownObjectRelease();
        }

        else
        {
          v18 = 0;
        }

        ControlsButtonProvider.image.setter(v18, v17);

        [v11 setSelected_];
      }

      else
      {
        v19 = one-time initialization token for conversationControls;

        if (v19 != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        __swift_project_value_buffer(v20, &static Logger.conversationControls);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_1BBC58000, v21, v22, "ConversationControlsManager didn't have a route specified, falling back to Speaker.", v23, 2u);
          MEMORY[0x1BFB23DF0](v23, -1, -1);
        }

        UUID.init()();
        UUID.uuidString.getter();
        (*(v4 + 8))(v6, v3);
        v24 = objc_allocWithZone(MEMORY[0x1E69D8C78]);
        v15 = @nonobjc TUMutableRoute.init(uniqueIdentifier:name:)();
        [v15 setSpeaker_];
        v25 = *(v9 + 160);
        v26 = *((*MEMORY[0x1E69E7D40] & *v25) + 0x518);
        v27 = v25;
        v28 = v26();

        if (v28)
        {
          v30 = [v28 audioRouteGlyphFor_];
          swift_unknownObjectRelease();
        }

        else
        {
          v30 = 0;
        }

        ControlsButtonProvider.image.setter(v30, v29);

        [v11 setSelected_];
      }
    }
  }

  return result;
}

id ConversationControlsAudioRouteMenuButtonProvider.menu(for:)()
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
    _os_log_impl(&dword_1BBC58000, v3, v4, "Displaying Audio Routing menu", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v6 = (*((*MEMORY[0x1E69E7D40] & **(v1 + 160)) + 0x518))();
  if (!v6)
  {
    return 0;
  }

  v7 = [v6 audioRouteMenu];
  swift_unknownObjectRelease();
  return v7;
}

uint64_t ConversationControlsAudioRouteMenuButtonProvider.__deallocating_deinit()
{
  ConversationControlsMenuButtonProvider.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type Published<TURoute?>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<TURoute?>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<TURoute?>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVySo7TURouteCSg_GMd, &_s7Combine9PublishedV9PublisherVySo7TURouteCSg_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<TURoute?>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

Swift::Int ParticipantVideoLayerType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticipantVideoLayerType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  ParticipantVideoLayerType.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

id RemoteParticipantVideoProvider.token.getter()
{
  OUTLINED_FUNCTION_5_18();
  v1 = (*(v0 + 256))();
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 streamToken];

  return v3;
}

id RemoteParticipantVideoProvider.hasReceivedVideoFrames.getter(SEL *a1)
{
  OUTLINED_FUNCTION_5_18();
  v3 = (*(v2 + 256))();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 *a1];

  return v5;
}

unint64_t RemoteParticipantVideoProvider.videoAttributeOrientation.getter(uint64_t (*a1)(void), SEL *a2)
{
  v3 = a1();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 *a2];

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6 | ((v4 == 0) << 32);
}

void RemoteParticipantVideoProvider.contentsRect.getter(uint64_t a1@<X8>)
{
  v2 = RemoteParticipantVideoProvider.remoteVideoAttributes.getter();
  v3 = v2;
  if (v2)
  {
    [v2 contentsRect];
    v11 = v4;
    v12 = v5;
    v10 = v6;
    v13 = v7;

    *&v9 = v10;
    *&v8 = v11;
    *(&v8 + 1) = v12;
    *(&v9 + 1) = v13;
  }

  else
  {
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v3 == 0;
}

void RemoteParticipantVideoProvider.scaleFactor.getter()
{
  v0 = RemoteParticipantVideoProvider.remoteVideoAttributes.getter();
  if (v0)
  {
    v1 = v0;
    VideoAttributes.scaleFactor.getter();
  }
}

double VideoAttributes.scaleFactor.getter()
{
  v1 = MEMORY[0x1BFB209B0](0x636146656C616373, 0xEB00000000726F74);
  v2 = [v0 valueForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v7, &_sypSgMd, &_sypSgMR);
  }

  return 1.0;
}

id RemoteParticipantVideoProvider.videoAspectRatio.getter()
{
  result = RemoteParticipantVideoProvider.remoteVideoAttributes.getter();
  v1 = result;
  if (result)
  {
    [result ratio];
    v3 = v2;

    return v3;
  }

  return result;
}

id RemoteParticipantVideoProvider.remoteVideoAttributes.getter(void *a1, SEL *a2)
{
  v4 = v2 + *a1;
  os_unfair_lock_lock(v4);
  v5 = *(v4 + 8);
  v6 = v5;
  os_unfair_lock_unlock(v4);
  if (!v5)
  {
    OUTLINED_FUNCTION_5_18();
    v8 = (*(v7 + 256))();
    v5 = [v8 *a2];
  }

  return v5;
}

void *RemoteParticipantVideoProvider.portraitVideoAspectRatio.getter(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    v2 = result;
    if ([result orientation] && objc_msgSend(v2, sel_orientation) != 1)
    {

      return 0;
    }

    else
    {
      [v2 ratio];
      v4 = v3;

      return v4;
    }
  }

  return result;
}

void *RemoteParticipantVideoProvider.landscapeVideoAspectRatio.getter(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    v2 = result;
    if ([result orientation] == 2 || objc_msgSend(v2, sel_orientation) == 3)
    {
      [v2 ratio];
      v4 = v3;

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t key path getter for RemoteParticipantVideoProvider.avcRemoteVideoClient : RemoteParticipantVideoProvider@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x100))();
  *a2 = result;
  return result;
}

void key path setter for RemoteParticipantVideoProvider.avcRemoteVideoClient : RemoteParticipantVideoProvider(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  RemoteParticipantVideoProvider.avcRemoteVideoClient.setter(v1);
}

void *RemoteParticipantVideoProvider.avcRemoteVideoClient.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider_avcRemoteVideoClient;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void RemoteParticipantVideoProvider.avcRemoteVideoClient.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider_avcRemoteVideoClient;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t RemoteParticipantVideoProvider.isOneToOneModeEnabled.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider_oneToOneModeStateProvider;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(v3) = (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
    return v3 & 1;
  }

  return result;
}

char *RemoteParticipantVideoProvider.init(streamToken:avcRemoteVideoClientDelegate:oneToOneModeStateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider_features;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static Features.shared;
  *&v4[v7] = static Features.shared;
  v9 = &v4[OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider__remoteVideoAttributes];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider__remoteScreenAttributes];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider_avcRemoteVideoClient] = 0;
  v11 = v8;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider_oneToOneModeStateProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v33.receiver = v4;
  v33.super_class = type metadata accessor for RemoteParticipantVideoProvider();
  v12 = objc_msgSendSuper2(&v33, sel_init);
  swift_unknownObjectWeakAssign();
  *&v12[OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider_oneToOneModeStateProvider + 8] = a4;
  swift_unknownObjectWeakAssign();
  v13 = objc_allocWithZone(MEMORY[0x1E69865D0]);
  v14 = v12;
  v15 = [v13 initWithStreamToken:a1 delegate:v14];
  v16 = MEMORY[0x1E69E6158];
  if (!v15)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v32 = static OS_os_log.conversationKit;
    v17 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BC4BA940;
    v19 = String.init<A>(reflecting:)();
    v21 = v20;
    v22 = MEMORY[0x1E69E6158];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    v16 = v22;
    os_log(_:dso:log:type:_:)("Unable to create AVCRemoteVideoClient with stream token: %@", 59, 2, &dword_1BBC58000, v32, v17, v18);
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v23 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BC4BA940;
  v25 = String.init<A>(reflecting:)();
  v27 = v26;
  *(v24 + 56) = v16;
  *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  v28 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Created AVCRemoteVideoClient with token: %@", 43, 2, &dword_1BBC58000, v23, v28, v24);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v29 = OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider_avcRemoteVideoClient;
  swift_beginAccess();
  v30 = *&v14[v29];
  *&v14[v29] = v15;

  return v14;
}

id RemoteParticipantVideoProvider.__deallocating_deinit()
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v1 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA940;
  OUTLINED_FUNCTION_5_18();
  (*(v3 + 128))();
  if (v4)
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v6 = String.init<A>(reflecting:)();
    v5 = v7;
  }

  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v2 + 32) = v6;
  *(v2 + 40) = v5;
  v8 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Releasing RemoteVideoProvider with token %@", 43, 2, &dword_1BBC58000, v1, v8, v2);

  v10.receiver = v0;
  v10.super_class = type metadata accessor for RemoteParticipantVideoProvider();
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

Swift::Void __swiftcall RemoteParticipantVideoProvider.setLayer(_:for:)(CALayer *_, ConversationKit::ParticipantVideoLayerType a2)
{
  OUTLINED_FUNCTION_5_18();
  v5 = (*(v4 + 256))();
  if (v5)
  {
    v38 = v5;
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
    }

    if (((*(*static Defaults.shared + 312))() & 1) != 0 && a2 == ConversationKit_ParticipantVideoLayerType_screen)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.conversationKit);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1BBC58000, v7, v8, "Using CALayerHost mode for screen", v9, 2u);
        MEMORY[0x1BFB23DF0](v9, -1, -1);
      }

      [v38 setVideoLayerHost:_ forMode:2];
    }

    else
    {
      v10 = objc_opt_self();
      [v10 begin];
      [(CALayer *)_ setContentsGravity:*MEMORY[0x1E6979DF0]];
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.conversationKit);
      v12 = _;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *&v40 = v16;
        *v15 = 136315394;
        v17 = String.init<A>(reflecting:)();
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v40);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2080;
        *&v39[0] = v12;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CALayer, 0x1E6979398);
        v20 = v12;
        v21 = String.init<A>(reflecting:)();
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v40);

        *(v15 + 14) = v23;
        _os_log_impl(&dword_1BBC58000, v13, v14, "Connecting CALayer to AVCRemoteVideoClient type: %s layer: %s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB23DF0](v16, -1, -1);
        MEMORY[0x1BFB23DF0](v15, -1, -1);
      }

      switch(a2)
      {
        case ConversationKit_ParticipantVideoLayerType_back:
        case ConversationKit_ParticipantVideoLayerType_unspecified:
          v24 = [v38 slotForMode_];
          if (!v24)
          {
            __break(1u);
            goto LABEL_33;
          }

          v25 = v24;
          v26 = objc_opt_self();
          v27 = [v25 unsignedIntValue];

          if ([v26 objectForSlot_])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            outlined init with take of Any(v39, &v40);
            __swift_project_boxed_opaque_existential_1(&v40, v41);
            [(CALayer *)v12 setContents:_bridgeAnythingToObjectiveC<A>(_:)()];
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(&v40);
          }

          v28 = 0xD00000000000001FLL;
          v29 = "tVideoLayerScreen";
          goto LABEL_30;
        case ConversationKit_ParticipantVideoLayerType_screen:
          v34 = [v38 slotForMode_];
          if (!v34)
          {
            goto LABEL_34;
          }

          v35 = v34;
          v36 = objc_opt_self();
          v37 = [v35 unsignedIntValue];

          if ([v36 objectForSlot_])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            outlined init with take of Any(v39, &v40);
            __swift_project_boxed_opaque_existential_1(&v40, v41);
            [(CALayer *)v12 setContents:_bridgeAnythingToObjectiveC<A>(_:)()];
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(&v40);
          }

          v29 = "VideoProvider with token %@";
          v28 = 0xD000000000000021;
          goto LABEL_30;
        default:
          v30 = [v38 slotForMode_];
          if (v30)
          {
            v31 = v30;
            v32 = objc_opt_self();
            v33 = [v31 unsignedIntValue];

            if ([v32 objectForSlot_])
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
              outlined init with take of Any(v39, &v40);
              __swift_project_boxed_opaque_existential_1(&v40, v41);
              [(CALayer *)v12 setContents:_bridgeAnythingToObjectiveC<A>(_:)()];
              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_1(&v40);
            }

            v29 = "RemoteParticipantVideoLayerBack";
            v28 = 0xD000000000000020;
LABEL_30:
            outlined bridged method (mbnn) of @objc CALayer.name.setter(v28, v29 | 0x8000000000000000, v12);
            [(CALayer *)v12 setAllowsDisplayCompositing:1];
            [v10 commit];
          }

          else
          {
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
          }

          break;
      }
    }
  }
}

uint64_t key path getter for RemoteParticipantVideoProvider.isTransformForRemoteVideoOrientationEnabled : RemoteParticipantVideoProvider@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x170))();
  *a2 = result & 1;
  return result;
}

uint64_t RemoteParticipantVideoProvider.isPaused.getter(SEL *a1)
{
  OUTLINED_FUNCTION_5_18();
  v3 = (*(v2 + 256))();
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [v3 *a1];

  return v5;
}

void RemoteParticipantVideoProvider.isTransformForRemoteVideoOrientationEnabled.setter(char a1)
{
  OUTLINED_FUNCTION_5_18();
  v3 = (*(v2 + 256))();
  [v3 setTransformForRemoteVideoOrientationEnabled_];
}

void (*RemoteParticipantVideoProvider.isTransformForRemoteVideoOrientationEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = RemoteParticipantVideoProvider.isTransformForRemoteVideoOrientationEnabled.getter() & 1;
  return RemoteParticipantVideoProvider.isTransformForRemoteVideoOrientationEnabled.modify;
}

void RemoteParticipantVideoProvider.isTransformForRemoteVideoOrientationEnabled.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  OUTLINED_FUNCTION_5_18();
  v3 = (*(v2 + 256))();
  [v3 setTransformForRemoteVideoOrientationEnabled_];
}

uint64_t RemoteParticipantVideoProvider.isEqual(to:)(uint64_t a1)
{
  outlined init with copy of IDSLookupManager(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd, &_s15ConversationKit24ParticipantVideoProvider_pMR);
  type metadata accessor for RemoteParticipantVideoProvider();
  if (swift_dynamicCast())
  {
    v1 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_5_18();
    v3 = (*(v2 + 128))();
    v5 = v4;
    v6 = (*((*v1 & *v10) + 0x80))();
    v8 = v7;

    if ((v5 & 1) == 0)
    {
      v8 = (v3 == v6) & ~v8;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

id RemoteParticipantVideoProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double protocol witness for ParticipantVideoProvider.contentsRect.getter in conformance RemoteParticipantVideoProvider@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & **v1) + 0xB8))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

void *RemoteParticipantVideoProvider.remoteVideoClientDidReceiveFirstFrame(_:)(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if ([result respondsToSelector_])
    {
      [v3 remoteVideoClientDidReceiveFirstFrame_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void RemoteParticipantVideoProvider.remoteVideoClient(_:networkQualityDidDegrade:info:)(uint64_t a1, char a2, uint64_t a3)
{
  if (Features.isPoorConnectionLabelsEnabled.getter())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      if ([Strong respondsToSelector_])
      {
        if (a3)
        {
          Dictionary._bridgeToObjectiveC()();
        }

        [v7 remoteVideoClient:a1 networkQualityDidDegrade:a2 & 1 info:?];
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_9_17();
      }

      else
      {
        OUTLINED_FUNCTION_9_17();

        swift_unknownObjectRelease();
      }
    }

    else
    {
      OUTLINED_FUNCTION_9_17();
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_9_17();

    os_log(_:dso:log:type:_:)(v8);
  }
}

void *RemoteParticipantVideoProvider.remoteVideoClient(_:videoDidSuspend:)(uint64_t a1, uint64_t a2, void *a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ([result respondsToSelector_])
    {
      v5 = OUTLINED_FUNCTION_8_30();
      [v5 v6];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *RemoteParticipantVideoProvider.remoteVideoClient(_:remoteVideoAttributesDidChange:)(uint64_t a1, void *a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider__remoteVideoAttributes;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider__remoteVideoAttributes));

  *(v4 + 8) = a2;
  a2;
  os_unfair_lock_unlock(v4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ([result respondsToSelector_])
    {
      v6 = OUTLINED_FUNCTION_8_30();
      [v6 v7];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *RemoteParticipantVideoProvider.remoteVideoClient(_:remoteScreenAttributesDidChange:)(uint64_t a1, void *a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider__remoteScreenAttributes;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC15ConversationKit30RemoteParticipantVideoProvider__remoteScreenAttributes));

  *(v4 + 8) = a2;
  a2;
  os_unfair_lock_unlock(v4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ([result respondsToSelector_])
    {
      v6 = OUTLINED_FUNCTION_8_30();
      [v6 v7];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void RemoteParticipantVideoProvider.remoteVideoClient(_:didDetectSensitiveContentWithAnalysis:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([Strong respondsToSelector_])
    {
      if (a3 >> 60 != 15)
      {
        Data._bridgeToObjectiveC()();
      }

      [v6 remoteVideoClient:a1 didDetectSensitiveContentWithAnalysis:?];
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_9_17();
    }

    else
    {
      OUTLINED_FUNCTION_9_17();

      swift_unknownObjectRelease();
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_17();
  }
}

uint64_t RemoteParticipantVideoProvider.debugDescription.getter()
{
  v1 = 7104878;
  _StringGuts.grow(_:)(73);
  v2 = MEMORY[0x1BFB20B10](0xD000000000000025, 0x80000001BC4F4CA0);
  v3 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))(v2);
  if (v4)
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

  v8 = MEMORY[0x1BFB20B10](0xD000000000000018, 0x80000001BC4F4CD0);
  v9 = (*((*v3 & *v0) + 0x88))(v8);
  v10 = (v9 & 1) == 0;
  if (v9)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v10)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  MEMORY[0x1BFB20B10](v11, v12);

  v13 = MEMORY[0x1BFB20B10](0x3D6376612CLL, 0xE500000000000000);
  if ((*((*v3 & *v0) + 0x100))(v13))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCRemoteVideoClient, 0x1E69865D0);
    v1 = String.init<A>(reflecting:)();
    v15 = v14;
  }

  else
  {
    v15 = 0xE300000000000000;
  }

  MEMORY[0x1BFB20B10](v1, v15);

  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return 0;
}

uint64_t TUVideoDeviceController.videoAttributeOrientationFor(_:)(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 3)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

__n128 TUVideoDeviceController.contentsRect.getter@<Q0>(__n128 *a1@<X8>)
{
  *a1 = 0uLL;
  __asm { FMOV            V0.2D, #1.0 }

  a1[1] = result;
  a1[2].n128_u8[0] = 0;
  return result;
}

uint64_t TUVideoDeviceController.videoAspectRatio.getter()
{
  v1 = [v0 currentVideoOrientation];
  if (v1 >= 4)
  {
    _StringGuts.grow(_:)(62);
    MEMORY[0x1BFB20B10](0xD00000000000003CLL, 0x80000001BC4F4D20);
    [v0 currentVideoOrientation];
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1BFB20B10](v4);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    [v0 *off_1E7FE3478[v1]];
    return v2;
  }

  return result;
}

Swift::Void __swiftcall TUVideoDeviceController.setLayer(_:for:)(CALayer *_, ConversationKit::ParticipantVideoLayerType a2)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  if ((*(*static Defaults.shared + 656))())
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v3 = static OS_os_log.conversationKit;
    v4 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("previewMSROptimizationEnabled in participantVideoProvider, use LayerHostMode", 76, 2, &dword_1BBC58000, v3, v4, MEMORY[0x1E69E7CC0]);
  }

  v5 = objc_opt_self();
  [v5 begin];
  [(CALayer *)_ setContentsGravity:*MEMORY[0x1E6979DF0]];
  v6 = OUTLINED_FUNCTION_8_30();
  [v6 v7];

  [v5 commit];
}

id TUVideoDeviceController.isEqual(to:)(uint64_t a1)
{
  outlined init with copy of IDSLookupManager(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd, &_s15ConversationKit24ParticipantVideoProvider_pMR);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUVideoDeviceController, 0x1E69D8D18);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v2 = v6;
  v5.receiver = v1;
  v5.super_class = MEMORY[0x1E69D8D18];
  v3 = objc_msgSendSuper2(&v5, sel_isEqual_, v6);

  return v3;
}

double protocol witness for ParticipantVideoProvider.contentsRect.getter in conformance TUVideoDeviceController@<D0>(__n128 *a1@<X8>)
{
  TUVideoDeviceController.contentsRect.getter(v4);
  result = v4[0].n128_f64[0];
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  a1[2].n128_u8[0] = v5;
  return result;
}

void outlined bridged method (mbnn) of @objc CALayer.name.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0](a1);

  [a3 setName_];
}

unint64_t lazy protocol witness table accessor for type ParticipantVideoLayerType and conformance ParticipantVideoLayerType()
{
  result = lazy protocol witness table cache variable for type ParticipantVideoLayerType and conformance ParticipantVideoLayerType;
  if (!lazy protocol witness table cache variable for type ParticipantVideoLayerType and conformance ParticipantVideoLayerType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantVideoLayerType and conformance ParticipantVideoLayerType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticipantVideoLayerType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ParticipantVideoLayerType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t dispatch thunk of RemoteParticipantVideoProvider.videoAttributeOrientation.getter()
{
  OUTLINED_FUNCTION_5_18();
  v1 = (*(v0 + 160))();
  return OUTLINED_FUNCTION_1_40(v1);
}

unint64_t dispatch thunk of RemoteParticipantVideoProvider.screenAttributeOrientation.getter()
{
  OUTLINED_FUNCTION_5_18();
  v1 = (*(v0 + 168))();
  return OUTLINED_FUNCTION_1_40(v1);
}

unint64_t dispatch thunk of RemoteParticipantVideoProvider.videoAttributeCamera.getter()
{
  OUTLINED_FUNCTION_5_18();
  v1 = (*(v0 + 176))();
  return OUTLINED_FUNCTION_1_40(v1);
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t ButtonsStackView.viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMd, &_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMR);
  Bindable.wrappedValue.getter();
  return v1;
}

void (*ButtonsStackView.viewModel.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMd, &_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMR);
  v2[4] = Bindable.wrappedValue.modify();
  return ButtonsStackView.viewModel.modify;
}

uint64_t ButtonsStackView.$viewModel.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMd, &_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMR);

  return MEMORY[0x1EEDE4B98](v0);
}

uint64_t ButtonsStackView.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySay15ConversationKit012ButtonsStackD5ModelC16LocalVideoButtonCG10Foundation4UUIDVAA15ModifiedContentVyAA0D0PAAE11buttonStyleyQrqd__AA0qW0Rd__lFQOyAA0Q0VyATyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_5ScaleOGGG_014CommunicationsB004BlurqW0VQo_AA31AccessibilityAttachmentModifierVGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySay15ConversationKit012ButtonsStackD5ModelC16LocalVideoButtonCG10Foundation4UUIDVAA15ModifiedContentVyAA0D0PAAE11buttonStyleyQrqd__AA0qW0Rd__lFQOyAA0Q0VyATyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_5ScaleOGGG_014CommunicationsB004BlurqW0VQo_AA31AccessibilityAttachmentModifierVGGGMR);
  return closure #1 in ButtonsStackView.body.getter(v2);
}

uint64_t closure #1 in ButtonsStackView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ButtonsStackView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMd, &_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMR);
  v5 = Bindable.wrappedValue.getter();
  v6 = (*(*v11 + 160))(v5);

  v11 = v6;
  outlined init with copy of ButtonsStackView(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  outlined init with take of ButtonsStackView(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit21ButtonsStackViewModelC16LocalVideoButtonCGMd, &_sSay15ConversationKit21ButtonsStackViewModelC16LocalVideoButtonCGMR);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGG_014CommunicationsB004BlurhG0VQo_AA023AccessibilityAttachmentM0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGG_014CommunicationsB004BlurhG0VQo_AA023AccessibilityAttachmentM0VGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [ButtonsStackViewModel.LocalVideoButton] and conformance [A], &_sSay15ConversationKit21ButtonsStackViewModelC16LocalVideoButtonCGMd, &_sSay15ConversationKit21ButtonsStackViewModelC16LocalVideoButtonCGMR, MEMORY[0x1E69E6338]);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ButtonsStackViewModel and conformance ButtonsStackViewModel(&lazy protocol witness table cache variable for type ButtonsStackViewModel.LocalVideoButton and conformance ButtonsStackViewModel.LocalVideoButton, type metadata accessor for ButtonsStackViewModel.LocalVideoButton, &protocol conformance descriptor for ButtonsStackViewModel.LocalVideoButton);
  return ForEach<>.init(_:content:)();
}

uint64_t closure #1 in closure #1 in ButtonsStackView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = type metadata accessor for AccessibilityTraits();
  v6 = *(v5 - 8);
  v50 = v5;
  v51 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BlurButtonStyle();
  v9 = *(v8 - 8);
  v46 = v8;
  v47 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ButtonsStackView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGGMR);
  v43 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGG_014CommunicationsB004BlurfE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGG_014CommunicationsB004BlurfE0VQo_MR);
  v20 = *(v19 - 8);
  v44 = v19;
  v45 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v41 - v21;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGG_014CommunicationsB004BlurhG0VQo_AA023AccessibilityAttachmentM0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGG_014CommunicationsB004BlurhG0VQo_AA023AccessibilityAttachmentM0VGMR);
  MEMORY[0x1EEE9AC00](v48);
  v42 = &v41 - v23;
  v24 = *a1;
  outlined init with copy of ButtonsStackView(a2, v15);
  v25 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v26 = (v14 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  outlined init with take of ButtonsStackView(v15, v27 + v25);
  *(v27 + v26) = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
  v28 = Button.init(action:label:)();
  v41 = *(*v24 + 152);
  v41(v28);
  BlurButtonStyle.init(isEnabled:)();
  v29 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGGMR, MEMORY[0x1E697D680]);
  v30 = lazy protocol witness table accessor for type ButtonsStackViewModel and conformance ButtonsStackViewModel(&lazy protocol witness table cache variable for type BlurButtonStyle and conformance BlurButtonStyle, MEMORY[0x1E69959F0], MEMORY[0x1E69959E8]);
  v31 = v46;
  View.buttonStyle<A>(_:)();
  (*(v47 + 8))(v11, v31);
  v32 = (*(v43 + 8))(v18, v16);
  v57 = (*(*v24 + 176))(v32);
  v58 = v33;
  v53 = v16;
  v54 = v31;
  v55 = v29;
  v56 = v30;
  v34 = v42;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type String and conformance String();
  v35 = v44;
  View.accessibilityLabel<A>(_:)();

  v36 = (*(v45 + 8))(v22, v35);
  if ((v41)(v36))
  {
    v37 = v49;
    static AccessibilityTraits.isSelected.getter();
    v38 = v50;
  }

  else
  {
    v53 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type ButtonsStackViewModel and conformance ButtonsStackViewModel(&lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI19AccessibilityTraitsVGMd, &_sSay7SwiftUI19AccessibilityTraitsVGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AccessibilityTraits] and conformance [A], &_sSay7SwiftUI19AccessibilityTraitsVGMd, &_sSay7SwiftUI19AccessibilityTraitsVGMR, MEMORY[0x1E69E6328]);
    v37 = v49;
    v39 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v38 = v39;
  }

  MEMORY[0x1BFB1E4A0](v37, v48);
  (*(v51 + 8))(v37, v38);
  return sub_1BBCDD4DC(v34);
}

uint64_t closure #1 in closure #1 in closure #1 in ButtonsStackView.body.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMd, &_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMR);
  Bindable.wrappedValue.getter();
  (*(*v4 + 256))(a2);
}

uint64_t closure #2 in closure #1 in closure #1 in ButtonsStackView.body.getter@<X0>(uint64_t *a2@<X8>)
{
  v3 = Image.init(systemName:)();
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR) + 36);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
  v6 = *MEMORY[0x1E69816C0];
  v7 = type metadata accessor for Image.Scale();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  result = swift_getKeyPath();
  *v4 = result;
  *a2 = v3;
  return result;
}

uint64_t ButtonsStackView.init(viewModel:)(uint64_t a1)
{
  type metadata accessor for ButtonsStackViewModel(0);
  lazy protocol witness table accessor for type ButtonsStackViewModel and conformance ButtonsStackViewModel(&lazy protocol witness table cache variable for type ButtonsStackViewModel and conformance ButtonsStackViewModel, type metadata accessor for ButtonsStackViewModel, &protocol conformance descriptor for ButtonsStackViewModel);

  return Bindable<A>.init(wrappedValue:)();
}

uint64_t type metadata accessor for ButtonsStackView(uint64_t a1)
{
  result = type metadata singleton initialization cache for ButtonsStackView;
  if (!type metadata singleton initialization cache for ButtonsStackView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ButtonsStackView(uint64_t a1)
{
  type metadata accessor for Bindable<ButtonsStackViewModel>(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for Bindable<ButtonsStackViewModel>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Bindable<ButtonsStackViewModel>)
  {
    type metadata accessor for ButtonsStackViewModel(255);
    v1 = type metadata accessor for Bindable();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Bindable<ButtonsStackViewModel>);
    }
  }
}

uint64_t outlined init with copy of ButtonsStackView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonsStackView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ButtonsStackView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonsStackView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in ButtonsStackView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ButtonsStackView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #1 in ButtonsStackView.body.getter(a1, v6, a2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGG_014CommunicationsB004BlurhG0VQo_AA023AccessibilityAttachmentM0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGG_014CommunicationsB004BlurhG0VQo_AA023AccessibilityAttachmentM0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGGMR);
    type metadata accessor for BlurButtonStyle();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGGMR, MEMORY[0x1E697D680]);
    lazy protocol witness table accessor for type ButtonsStackViewModel and conformance ButtonsStackViewModel(&lazy protocol witness table cache variable for type BlurButtonStyle and conformance BlurButtonStyle, MEMORY[0x1E69959F0], MEMORY[0x1E69959E8]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ButtonsStackViewModel and conformance ButtonsStackViewModel(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGGMR);
    type metadata accessor for VideoReactionButtonStyle(255);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGGMR, MEMORY[0x1E697D680]);
    lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(&lazy protocol witness table cache variable for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle, type metadata accessor for VideoReactionButtonStyle, &protocol conformance descriptor for VideoReactionButtonStyle);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ButtonsStackView.body.getter()
{
  v1 = type metadata accessor for ButtonsStackView(0);
  OUTLINED_FUNCTION_9_0(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in closure #1 in ButtonsStackView.body.getter(v0 + v6, v7);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ButtonsStackViewModel and conformance ButtonsStackViewModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ButtonsStackViewModel.LocalVideoButton.ButtonType.imageName.getter(char a1)
{
  v1 = 0x7669737275632E66;
  v2 = 0xD000000000000016;
  if (a1 == 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (a1 != 3)
  {
    v1 = v2;
  }

  if (a1 == 4)
  {
    return 0xD000000000000027;
  }

  else
  {
    return v1;
  }
}

uint64_t ButtonsStackViewModel.LocalVideoButton.ButtonType.accessibilityLabel.getter(char a1)
{
  if (a1 == 4)
  {
    v1 = [objc_opt_self() conversationKit];
    v6 = 0x80000001BC4F4F60;
    v5 = 0xD000000000000011;
  }

  else if (a1 == 3)
  {
    v1 = [objc_opt_self() conversationKit];
    v5 = 0x5449415254524F50;
    v6 = 0xEE004C4542414C5FLL;
  }

  else
  {
    if (a1 == 2)
    {
      v2 = "CENTER_STAGE_LABEL";
      v3 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_14_10();
      v5 = v4 | 6;
    }

    else
    {
      v2 = "FLIP_CAMERA_LABEL";
      v7 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_14_10();
      v5 = v8 + 1;
    }

    v6 = v2 | 0x8000000000000000;
  }

  v9.super.isa = v1;
  OUTLINED_FUNCTION_17_0(v5, v6, 0x61737265766E6F43, 0xEF74694B6E6F6974, v9);

  return OUTLINED_FUNCTION_46();
}

id ButtonsStackViewModel.LocalVideoButton.ButtonType.notificationName.getter(char a1)
{
  v1 = 0;
  if (a1 != 2)
  {
    if (a1 == 3)
    {
      v2 = MEMORY[0x1E69D9050];
      goto LABEL_6;
    }

    if (a1 != 4)
    {
      v2 = MEMORY[0x1E69D9060];
LABEL_6:
      v1 = *v2;
      v3 = *v2;
    }
  }

  return v1;
}

uint64_t ButtonsStackViewModel.LocalVideoButton.isEnabled.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_isEnabled;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void ButtonsStackViewModel.LocalVideoButton.isEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_isEnabled;
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path setter for ButtonsStackViewModel.LocalVideoButton.accessibilityLabel : ButtonsStackViewModel.LocalVideoButton(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 184);

  return v4(v2, v3);
}

uint64_t ButtonsStackViewModel.LocalVideoButton.accessibilityLabel.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_accessibilityLabel);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double ButtonsStackViewModel.LocalVideoButton.accessibilityLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_accessibilityLabel);
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t ButtonsStackViewModel.LocalVideoButton.__allocating_init(buttonType:)(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  ButtonsStackViewModel.LocalVideoButton.init(buttonType:)(v1);
  return v2;
}

uint64_t ButtonsStackViewModel.LocalVideoButton.init(buttonType:)(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v8 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v34 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMR);
  OUTLINED_FUNCTION_1();
  v35 = v15;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  UUID.init()();
  *(v1 + OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_cancellable) = MEMORY[0x1E69E7CD0];
  v19 = OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_videoDeviceController;
  v20 = [objc_opt_self() sharedInstance];
  v21 = [v20 videoDeviceController];

  *(v2 + v19) = v21;
  *(v2 + OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_isEnabled) = 0;
  *(v2 + OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_buttonType) = a1;
  v22 = ButtonsStackViewModel.LocalVideoButton.ButtonType.accessibilityLabel.getter(a1);
  v23 = (v2 + OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_accessibilityLabel);
  *v23 = v22;
  v23[1] = v24;
  LOBYTE(v20) = (*(*v2 + 208))();
  v25 = OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_isEnabled;
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  *(v2 + v25) = v20 & 1;
  v26 = ButtonsStackViewModel.LocalVideoButton.ButtonType.notificationName.getter(a1);
  if (v26)
  {
    v27 = v26;
    v28 = [objc_opt_self() defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v29 = static OS_dispatch_queue.main.getter();
    v36 = v29;
    v30 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v30);
    OUTLINED_FUNCTION_2_39();
    _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_0(v31, v32, MEMORY[0x1E6969F18]);
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
    Publisher.receive<A>(on:options:)();
    outlined destroy of OS_dispatch_queue.SchedulerOptions?(v7);

    (*(v34 + 8))(v13, v8);
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>();
    Publisher<>.sink(receiveValue:)();

    (*(v35 + 8))(v18, v14);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return v2;
}

uint64_t closure #1 in ButtonsStackViewModel.LocalVideoButton.init(buttonType:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = (*(*result + 208))(result);
    (*(*v3 + 160))(v4 & 1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>()
{
  result = lazy protocol witness table cache variable for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>;
  if (!lazy protocol witness table cache variable for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>);
  }

  return result;
}

Swift::Bool __swiftcall ButtonsStackViewModel.LocalVideoButton.getIsEnabled()()
{
  v1 = 0;
  v2 = *(v0 + OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_buttonType);
  if (v2 != 2)
  {
    if (v2 == 3)
    {
      v1 = [*(v0 + OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_videoDeviceController) cameraBlurEnabled];
    }

    else if (v2 != 4)
    {
      v1 = *(v0 + OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_buttonType);
    }
  }

  return v1 & 1;
}

uint64_t ButtonsStackViewModel.LocalVideoButton.deinit()
{
  v1 = OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_id;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);

  OUTLINED_FUNCTION_17_8(OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_accessibilityLabel);

  return v0;
}

uint64_t protocol witness for Identifiable.id.getter in conformance ButtonsStackViewModel.LocalVideoButton@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t ButtonsStackViewModel.LocalVideoButton.id.getter@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  a2(0);
  OUTLINED_FUNCTION_7_0();
  v8 = *(v7 + 16);

  return v8(a3, v3 + v5, v6);
}

uint64_t key path getter for ButtonsStackViewModel.buttons : ButtonsStackViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ButtonsStackViewModel.buttons : ButtonsStackViewModel(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 168);

  return v2(v3);
}

double ButtonsStackViewModel.buttons.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v2 + 304))();

  return result;
}

uint64_t (*ButtonsStackViewModel.buttons.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 296))(KeyPath);

  v3[5] = OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel___observationRegistrar;
  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_32();
  v3[6] = _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_0(v5, v6, &protocol conformance descriptor for ButtonsStackViewModel);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v3[7] = ButtonsStackViewModel._buttons.modify();
  return ButtonsStackViewModel.buttons.modify;
}

void ButtonsStackViewModel.buttons.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

double ButtonsStackViewModel.buttons.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v2 + 296))();

  OUTLINED_FUNCTION_19_1(v3);

  return result;
}

double ButtonsStackViewModel.cancellable.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel__cancellable;
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();

  _sSh2eeoiySbShyxG_ABtFZ7Combine14AnyCancellableC_Tt1g5();
  v5 = v4;

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 304))(v8);
  }

  return result;
}

void closure #1 in ButtonsStackViewModel.buttons.setter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  *(a1 + v5) = a2;
}

uint64_t ButtonsStackViewModel.__allocating_init(isFrontFacingOrExternal:updateVideoLayers:)()
{
  OUTLINED_FUNCTION_17_6();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_15_8();
  ButtonsStackViewModel.init(isFrontFacingOrExternal:updateVideoLayers:)(v1, v2, v3, v4);
  return v0;
}

char *ButtonsStackViewModel.init(isFrontFacingOrExternal:updateVideoLayers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v47 = a1;
  v48 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v49 = v13;
  v50 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMR);
  OUTLINED_FUNCTION_1();
  v51 = v18;
  v52 = v17;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  v22 = OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_logger;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = __swift_project_value_buffer(v23, static Logger.conversationKit);
  (*(*(v23 - 8) + 16))(&v5[v22], v24, v23);
  v25 = OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_videoDeviceController;
  v26 = [objc_opt_self() sharedInstance];
  v27 = [v26 videoDeviceController];

  *&v5[v25] = v27;
  *&v5[OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel__buttons] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel__cancellable] = MEMORY[0x1E69E7CD0];
  ObservationRegistrar.init()();
  v28 = &v5[OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_isFrontFacingOrExternal];
  v29 = v48;
  *v28 = v47;
  v28[1] = a2;
  v30 = &v5[OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_updateVideoLayers];
  *v30 = v29;
  v30[1] = a4;
  v31 = OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_videoDeviceController;
  v32 = *&v5[OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_videoDeviceController];

  v33 = [v32 currentInputSupportsCinematicFraming];
  v48 = a4;
  if (v33)
  {
    v34 = [*&v5[v31] isCinematicFramingEnabled];
  }

  else
  {
    v34 = 2;
  }

  ButtonsStackViewModel.reloadButtons(centerStageStatus:)(v34);
  v35 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v36 = static OS_dispatch_queue.main.getter();
  v53 = v36;
  v37 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v37);
  OUTLINED_FUNCTION_2_39();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_0(v38, v39, MEMORY[0x1E6969F18]);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v40 = v50;
  Publisher.receive<A>(on:options:)();
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(v11);

  (*(v49 + 8))(v16, v40);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>();
  v41 = v52;
  Publisher<>.sink(receiveValue:)();

  (*(v51 + 8))(v21, v41);
  KeyPath = swift_getKeyPath();
  (*(*v5 + 296))(KeyPath);

  v53 = v5;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_32();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_0(v43, v44, &protocol conformance descriptor for ButtonsStackViewModel);
  OUTLINED_FUNCTION_23_12();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v53 = v5;
  swift_getKeyPath();
  OUTLINED_FUNCTION_23_12();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return v5;
}

uint64_t closure #1 in ButtonsStackViewModel.init(isFrontFacingOrExternal:updateVideoLayers:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = [*(v3 + OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_videoDeviceController) currentInputSupportsCinematicFraming];

      _os_log_impl(&dword_1BBC58000, v4, v5, "CINEMATIC FRAMING: CinematicFramingAvailabilityChanged=%{BOOL}d", v6, 8u);
      MEMORY[0x1BFB23DF0](v6, -1, -1);
    }

    else
    {
    }

    v7 = OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_videoDeviceController;
    if ([*(v3 + OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_videoDeviceController) currentInputSupportsCinematicFraming])
    {
      v8 = [*(v3 + v7) isCinematicFramingEnabled];
    }

    else
    {
      v8 = 2;
    }

    ButtonsStackViewModel.reloadButtons(centerStageStatus:)(v8);
  }

  return result;
}

void ButtonsStackViewModel.reloadButtons(centerStageStatus:)(unsigned __int8 a1)
{
  v3 = v1;
  v5 = a1;
  v45 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit21ButtonsStackViewModelC16LocalVideoButtonC0L4TypeOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit21ButtonsStackViewModelC16LocalVideoButtonC0L4TypeOGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  *(inited + 32) = 772;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = OUTLINED_FUNCTION_18_10(v8);
  if (v5 == 2)
  {
    if (v9)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBC58000, v7, v2, "CINEMATIC FRAMING: Center Stage feature is not available, so we're not adding centerStage button to view", v10, 2u);
      OUTLINED_FUNCTION_27();
    }
  }

  else
  {
    if (v9)
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_12_15();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_27();
    }

    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 3, 1, inited);
    inited = v16;
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, a1 & 1);
  }

  v17 = *(inited + 16);
  if (v17)
  {
    v44 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v18 = OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_videoDeviceController;
    type metadata accessor for ButtonsStackViewModel.LocalVideoButton(0);
    v19 = 32;
    do
    {
      v20 = *(inited + v19);
      v21 = swift_allocObject();
      ButtonsStackViewModel.LocalVideoButton.init(buttonType:)(v20);
      if (v20 == 4)
      {
        v22 = [*(v3 + v18) currentInputDevice];
        if (v22)
        {
          v23 = v22;
          [v22 position];

          v24 = [objc_opt_self() conversationKit];
          OUTLINED_FUNCTION_5_5();
          v25.super.isa = v24;
          v30 = OUTLINED_FUNCTION_17_0(v26, v27, v28, v29, v25);
          v32 = v31;

          (*(*v21 + 184))(v30, v32);
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v19;
      --v17;
    }

    while (v17);

    v33 = v44;
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  (*(*v3 + 168))(v33);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_42();
    v37 = OUTLINED_FUNCTION_23();
    v44 = v37;
    *v36 = 136315138;
    v38 = (*(*v3 + 160))(v37);
    v39 = type metadata accessor for ButtonsStackViewModel.LocalVideoButton(0);
    v40 = MEMORY[0x1BFB20D10](v38, v39);
    v42 = v41;

    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v44);

    *(v36 + 4) = v43;
    _os_log_impl(&dword_1BBC58000, v34, v35, "Reloaded buttons: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }
}

uint64_t AVCaptureDevicePosition.buttonActionLabel.getter()
{
  v0 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_5_5();
  v2.super.isa = v0;
  v6 = OUTLINED_FUNCTION_17_0(v3, v1 | 0x8000000000000000, v4, v5, v2);

  return v6;
}

void ButtonsStackViewModel.didTap(button:)(uint64_t a1)
{
  v2 = (*(*a1 + 168))(v5);
  *v3 = !*v3;
  v2(v5, 0);
  v4 = *(a1 + OBJC_IVAR____TtCC15ConversationKit21ButtonsStackViewModel16LocalVideoButton_buttonType);
  if (v4 != 2)
  {
    if (v4 == 4)
    {
      ButtonsStackViewModel.flipCamera()();
    }

    else if (v4 == 3)
    {
      ButtonsStackViewModel.togglePortrait()();
    }

    else
    {
      ButtonsStackViewModel.toggleCinematicFraming()();
    }
  }
}

void ButtonsStackViewModel.togglePortrait()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_videoDeviceController);
  v2 = [v1 cameraBlurEnabled];
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_10(v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    v6 = v2 ^ 1;
    v5[1] = v6;
    OUTLINED_FUNCTION_12_15();
    _os_log_impl(v7, v8, v9, v10, v11, 8u);
    OUTLINED_FUNCTION_27();
  }

  else
  {

    v6 = v2 ^ 1;
  }

  v12 = 2;
  [v1 setCurrentBackgroundBlurControlMode_];
  [v1 setCameraBlurEnabled_];
  if ([v1 currentInputSupportsCinematicFraming])
  {
    v12 = [v1 isCinematicFramingEnabled];
  }

  ButtonsStackViewModel.reloadButtons(centerStageStatus:)(v12);
}

void ButtonsStackViewModel.toggleCinematicFraming()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_videoDeviceController);
  v2 = [v1 isCinematicFramingEnabled];
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_10(v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    v6 = v2 ^ 1;
    v5[1] = v6;
    OUTLINED_FUNCTION_12_15();
    _os_log_impl(v7, v8, v9, v10, v11, 8u);
    OUTLINED_FUNCTION_27();
  }

  else
  {

    v6 = v2 ^ 1;
  }

  [v1 setCinematicFramingEnabled_];

  ButtonsStackViewModel.reloadButtons(centerStageStatus:)(v6);
}

void ButtonsStackViewModel.flipCamera()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_videoDeviceController);
  v3 = [v2 currentInputDevice];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 position];
    if (v5 == 1)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5 == 2;
    }

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v51 = v4;
    v52 = v1;
    oslog = v6;
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_42();
      v10 = OUTLINED_FUNCTION_23();
      v55 = v10;
      *v9 = 136315138;
      type metadata accessor for AVCaptureDevicePosition(0);
      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v55);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1BBC58000, v7, v8, "Flipping camera to position %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    v50 = v2;
    v14 = [v2 inputDevices];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCaptureDevice, 0x1E69870A0);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = specialized Array.count.getter();
    if (!v16)
    {
LABEL_24:

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_42();
        v33 = OUTLINED_FUNCTION_23();
        *v32 = 136315138;
        v55 = v33;
        type metadata accessor for AVCaptureDevicePosition(0);
        v34 = String.init<A>(reflecting:)();
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v55);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_1BBC58000, v30, v31, "Unable to find input device for position %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      return;
    }

    v17 = v16;
    v18 = 0;
    v19 = (v1 + OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_isFrontFacingOrExternal);
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1BFB22010](v18, v15);
      }

      else
      {
        if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v20 = *(v15 + 8 * v18 + 32);
      }

      v21 = v20;
      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        return;
      }

      v23 = [v20 deviceType];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
      {
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v29 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if ((*v19)(v21))
      {
        goto LABEL_32;
      }

LABEL_22:
      if ([v21 position] == oslog)
      {
LABEL_32:

        v39 = v21;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = OUTLINED_FUNCTION_42();
          v43 = OUTLINED_FUNCTION_23();
          v55 = v43;
          *v42 = 136315138;
          v44 = [v39 localizedName];
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v46;

          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v55);

          *(v42 + 4) = v48;
          _os_log_impl(&dword_1BBC58000, v40, v41, "Setting input device to %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v43);
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();
        }

        [v50 setCurrentInputDevice:v39 isUserPreferred:1];
        [v50 startPreview];
        (*(v52 + OBJC_IVAR____TtC15ConversationKit21ButtonsStackViewModel_updateVideoLayers))(oslog);
        if ([v50 currentInputSupportsCinematicFraming])
        {
          v49 = [v50 isCinematicFramingEnabled];
        }

        else
        {
          v49 = 2;
        }

        ButtonsStackViewModel.reloadButtons(centerStageStatus:)(v49);

        return;
      }

      ++v18;
      if (v22 == v17)
      {
        goto LABEL_24;
      }
    }
  }

  osloga = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(osloga, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1BBC58000, osloga, v37, "Unable to flip camera since there is not current input", v38, 2u);
    OUTLINED_FUNCTION_27();
  }
}