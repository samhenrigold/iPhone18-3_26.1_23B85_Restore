void specialized _dictionaryUpCast<A, B, C, D>(_:)(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, "@M\b");
    v4 = OUTLINED_FUNCTION_6_98();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_0_180();
  v7 = v6 & v5;
  OUTLINED_FUNCTION_13_65();

  v8 = 0;
  if (!v7)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v10 = (a1[6] + ((v8 << 10) | (16 * __clz(__rbit64(v7)))));
    v11 = v10[1];
    *&v29[0] = *v10;
    *(&v29[0] + 1) = v11;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    swift_dynamicCast();
    v25 = v21;
    v26 = v22;
    v27 = v23;
    outlined init with take of Any(&v24, v28);
    v21 = v25;
    v22 = v26;
    v23 = v27;
    outlined init with take of Any(v28, v29);
    AnyHashable._rawHashValue(seed:)(*(v4 + 40));
    OUTLINED_FUNCTION_7_90();
    OUTLINED_FUNCTION_8_92();
    if (v12)
    {
      OUTLINED_FUNCTION_3_21();
      while (1)
      {
        OUTLINED_FUNCTION_19_2();
        if (v12)
        {
          if (v14)
          {
            goto LABEL_23;
          }
        }

        if (v13 == v15)
        {
          v13 = 0;
        }

        if (*(v2 + 8 * v13) != -1)
        {
          OUTLINED_FUNCTION_2_0();
          goto LABEL_19;
        }
      }
    }

    OUTLINED_FUNCTION_4_12();
LABEL_19:
    v7 &= v7 - 1;
    OUTLINED_FUNCTION_8_3();
    *(v2 + v16) |= v17;
    v19 = *(v4 + 48) + 40 * v18;
    *v19 = v21;
    *(v19 + 16) = v22;
    *(v19 + 32) = v23;
    OUTLINED_FUNCTION_12_73();
    outlined init with take of Any(v29, v20);
    OUTLINED_FUNCTION_4_127();
  }

  while (v7);
LABEL_5:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v1)
    {

      return;
    }

    v7 = a1[v9 + 8];
    ++v8;
    if (v7)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t static Notification.contextMenuDidDismiss(target:)(void *a1, void *a2, void **a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = *a3;
  type metadata accessor for UIView();
  v7 = v6;
  v8 = a1;
  v9 = UIView.contextMenuUserInfo.getter();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v9);

  return Notification.init(name:object:userInfo:)();
}

uint64_t *NSNotificationName.contextMenuWillPresent.unsafeMutableAddressor()
{
  if (one-time initialization token for contextMenuWillPresent != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.contextMenuWillPresent;
}

uint64_t *NSNotificationName.contextMenuDidDismiss.unsafeMutableAddressor()
{
  if (one-time initialization token for contextMenuDidDismiss != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.contextMenuDidDismiss;
}

uint64_t one-time initialization function for contextMenuWillPresent()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000022, 0x80000001BC513910);
  static NSNotificationName.contextMenuWillPresent = result;
  return result;
}

uint64_t one-time initialization function for contextMenuDidDismiss()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000021, 0x80000001BC513940);
  static NSNotificationName.contextMenuDidDismiss = result;
  return result;
}

void closure #1 in NSNotificationCenter.post(_:afterAnimatorCompletes:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, &static Log.default);
  (*(v5 + 16))(v7, a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v22 = Notification.name.getter();
    type metadata accessor for NSNotificationName(0);
    v14 = String.init<A>(reflecting:)();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1BBC58000, v9, v10, "Posting %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
    v18 = v12;
    a2 = v21;
    MEMORY[0x1BFB23DF0](v18, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  isa = Notification._bridgeToObjectiveC()().super.isa;
  [a2 postNotification_];
}

void partial apply for closure #1 in NSNotificationCenter.post(_:afterAnimatorCompletes:)()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in NSNotificationCenter.post(_:afterAnimatorCompletes:)(v0 + v2, v3);
}

uint64_t key path getter for LabeledButtonView.control : LabeledButtonView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t key path setter for LabeledButtonView.control : LabeledButtonView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x70);
  v4 = *a1;
  return v3(v2);
}

void *LabeledButtonView.control.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit17LabeledButtonView_control;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void LabeledButtonView.control.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit17LabeledButtonView_control;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for LabeledButtonView.label : LabeledButtonView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

id LabeledButtonView.label.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit17LabeledButtonView____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit17LabeledButtonView____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit17LabeledButtonView____lazy_storage___label);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setNumberOfLines_];
    [v4 setTextAlignment_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void LabeledButtonView.label.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit17LabeledButtonView____lazy_storage___label);
  *(v1 + OBJC_IVAR____TtC15ConversationKit17LabeledButtonView____lazy_storage___label) = a1;
}

void (*LabeledButtonView.label.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = LabeledButtonView.label.getter();
  return LabeledButtonView.label.modify;
}

void LabeledButtonView.label.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit17LabeledButtonView____lazy_storage___label);
  *(v1 + OBJC_IVAR____TtC15ConversationKit17LabeledButtonView____lazy_storage___label) = v2;
}

uint64_t LabeledButtonView.preferredFocusEnvironments.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18UIFocusEnvironment_pSgGMd, &_ss23_ContiguousArrayStorageCySo18UIFocusEnvironment_pSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA940;
  *(inited + 32) = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))();
  v2 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CC0];
  if (*(inited + 32))
  {
    v3 = swift_unknownObjectRetain();
    MEMORY[0x1BFB20CC0](v3);
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = v5;
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  return v2;
}

void *LabeledButtonView.init(control:text:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC15ConversationKit17LabeledButtonView_control;
  *&v3[OBJC_IVAR____TtC15ConversationKit17LabeledButtonView_control] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit17LabeledButtonView____lazy_storage___label] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit17LabeledButtonView_labelTopConstraint] = 0;
  swift_beginAccess();
  *&v3[v7] = a1;
  v17.receiver = v3;
  v17.super_class = type metadata accessor for LabeledButtonView();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x80))();
  if (a3)
  {

    v11 = MEMORY[0x1BFB209B0](a2, a3);
  }

  else
  {
    v11 = 0;
  }

  [v10 setText_];

  if (a1)
  {
    v12 = v8;
    if (a3)
    {
      v13 = MEMORY[0x1BFB209B0](a2, a3);
    }

    else
    {
      v13 = 0;
    }

    [v8 setAccessibilityLabel_];
  }

  else
  {
  }

  LabeledButtonView.configureAppearance()();
  if (a1)
  {
    type metadata accessor for ConversationControlsButton();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = v14 + OBJC_IVAR___CNKConversationControlsButton_delegate;
      swift_beginAccess();
      *(v15 + 8) = &protocol witness table for LabeledButtonView;
      swift_unknownObjectWeakAssign();
    }
  }

  return v9;
}

id LabeledButtonView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void LabeledButtonView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit17LabeledButtonView_control) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit17LabeledButtonView____lazy_storage___label) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit17LabeledButtonView_labelTopConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void LabeledButtonView.configureAppearance()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))();
  if (v3)
  {
    v4 = v3;
    v5 = [v0 addSubview_];
    v6 = *((*v2 & *v0) + 0x80);
    v7 = (*v2 & *v0) + 128;
    v8 = (v6)(v5);
    [v1 addSubview_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v97 = v7;
    v92 = v6;
    v9 = v6();
    v10 = [v9 topAnchor];

    v11 = [v4 bottomAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:5.0];

    v13 = OBJC_IVAR____TtC15ConversationKit17LabeledButtonView_labelTopConstraint;
    v14 = *&v1[OBJC_IVAR____TtC15ConversationKit17LabeledButtonView_labelTopConstraint];
    *&v1[OBJC_IVAR____TtC15ConversationKit17LabeledButtonView_labelTopConstraint] = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BC4BA920;
    v16 = [v1 widthAnchor];
    v17 = [v4 widthAnchor];

    v18 = OUTLINED_FUNCTION_1_149();
    *(v15 + 32) = v18;
    v19 = [v4 topAnchor];

    v20 = [v1 topAnchor];
    v21 = OUTLINED_FUNCTION_1_149();

    *(v15 + 40) = v21;
    v22 = [v4 centerXAnchor];

    v23 = [v1 centerXAnchor];
    v24 = OUTLINED_FUNCTION_1_149();

    *(v15 + 48) = v24;
    v25 = *&v1[v13];
    if (v25)
    {
      v86 = objc_opt_self();
      *(v15 + 56) = v25;
      v26 = v92;
      v27 = (v92)(v25);
      v28 = [v27 centerXAnchor];

      v29 = [v1 centerXAnchor];
      v30 = [v28 constraintEqualToAnchor_];

      *(v15 + 64) = v30;
      v88 = type metadata accessor for NSLayoutConstraint();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v86 activateConstraints_];

      v94 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
      [v94 setTranslatesAutoresizingMaskIntoConstraints_];
      [v1 addSubview_];
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1BC4CB3D0;
      v33 = v92();
      v34 = [v33 leadingAnchor];

      v35 = [v1 leadingAnchor];
      static Layout.ConversationControls.values.getter(v103);
      v36 = [v34 constraintGreaterThanOrEqualToAnchor:v35 constant:-v103[29]];

      *(v32 + 32) = v36;
      v37 = v92();
      v38 = [v37 trailingAnchor];

      v39 = [v1 trailingAnchor];
      static Layout.ConversationControls.values.getter(v104);
      v40 = [v38 constraintLessThanOrEqualToAnchor:v39 constant:v104[29]];

      *(v32 + 40) = v40;
      v41 = v92();
      v42 = [v41 bottomAnchor];

      v43 = [v94 topAnchor];
      v44 = [v42 constraintEqualToAnchor_];

      *(v32 + 48) = v44;
      v45 = [v94 leadingAnchor];
      v46 = [v1 leadingAnchor];
      v47 = [v45 constraintEqualToAnchor_];

      *(v32 + 56) = v47;
      v48 = [v94 trailingAnchor];
      v49 = [v1 trailingAnchor];
      v50 = [v48 constraintEqualToAnchor_];

      *(v32 + 64) = v50;
      v51 = [v94 bottomAnchor];
      v52 = [v1 bottomAnchor];
      v53 = [v51 constraintEqualToAnchor_];

      *(v32 + 72) = v53;
      v54 = [v94 heightAnchor];
      v55 = [v54 constraintEqualToConstant_];

      LODWORD(v56) = 1132068864;
      [v55 setPriority_];
      *(v32 + 80) = v55;
      v57 = Array._bridgeToObjectiveC()().super.isa;

      [v86 activateConstraints_];

      LODWORD(v58) = 1144750080;
      v59 = (v92)([v4 setContentHuggingPriority:1 forAxis:v58]);
      type metadata accessor for UILayoutPriority(0);
      v60 = lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority();
      OUTLINED_FUNCTION_0_181(v60, v61, v62, v63, v64, v65, v66, v67, v84, v86, v88, v4, v92, v94, v97, v99, 0, 16256, 0);
      LODWORD(v68) = v101;
      [v59 setContentHuggingPriority:0 forAxis:v68];

      v69 = v26();
      LODWORD(v70) = 1144750080;
      [v69 setContentHuggingPriority:1 forAxis:v70];

      v71 = v26();
      OUTLINED_FUNCTION_0_181(v71, v72, v73, v74, v75, v76, v77, v78, v85, v87, v89, v90, v93, v95, v98, v100, 0, 16256, 0);
      LODWORD(v79) = v102;
      [v71 setContentCompressionResistancePriority:0 forAxis:v79];

      v80 = v26();
      v81 = [objc_opt_self() preferredFontForTextStyle_];
      [v80 setFont_];

      v82 = v26();
      [v82 setMaximumContentSizeCategory_];

      v83 = v26();
      [v83 setAdjustsFontForContentSizeCategory_];
    }

    else
    {
      __break(1u);
    }
  }
}

id LabeledButtonView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id LabeledButtonView.__deallocating_deinit(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LabeledButtonView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void LabeledButtonView.buttonDidUpdateLocalizedName(_:)(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))();
  v4 = (a1 + OBJC_IVAR___CNKConversationControlsButton_localizedName);
  swift_beginAccess();
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;

    v7 = MEMORY[0x1BFB209B0](v6, v5);
  }

  else
  {
    v7 = 0;
  }

  [v3 setText_];
}

id ParticipantMediaPriorities.remoteIdentifiers.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v7 = *v1;
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;

  return v7;
}

void ParticipantMediaPriorities.remoteIdentifiers.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
}

uint64_t ParticipantMediaPriorities.init(remoteIdentifiers:audioPriority:videoPriority:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  v4 = *(result + 8);
  v5 = *(result + 16);
  *a2 = *result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = *(result + 24);
  *(a2 + 40) = a3;
  *(a2 + 44) = a4;
  return result;
}

float ParticipantMediaPriorities.init(conversationParticipant:)@<S0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 handle];
  v5 = [v3 identifier];
  v6 = [v3 avcIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = v7;
  *(a2 + 32) = v9;
  *(a2 + 40) = [v3 audioPriority];
  v10 = [v3 videoPriority];

  result = v10;
  *(a2 + 44) = v10;
  return result;
}

BOOL static Platform.isIPad.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 1;
}

uint64_t static Platform.useiPadLikeAmbientUI.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 || (swift_beginAccess(), static AmbientState.isPresented != 1))
  {
    v2 = 0;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v2 = Features.isICUIRedesignEnabled.getter();
  }

  return v2 & 1;
}

BOOL static Platform.isIPhone.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 0;
}

Swift::Int Platform.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Platform(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Platform.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type Platform and conformance Platform()
{
  result = lazy protocol witness table cache variable for type Platform and conformance Platform;
  if (!lazy protocol witness table cache variable for type Platform and conformance Platform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Platform and conformance Platform);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Platform(_BYTE *result, unsigned int a2, unsigned int a3)
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

id CNKCrossFadeAnimatorFactory.makeAnimator()()
{
  v0 = objc_allocWithZone(type metadata accessor for CrossFadeAnimator());

  return [v0 init];
}

id CrossFadeAnimator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

CNKCrossFadeAnimatorFactory __swiftcall CNKCrossFadeAnimatorFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id CrossFadeAnimator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CrossFadeAnimator();
  return objc_msgSendSuper2(&v2, sel_init);
}

void CrossFadeAnimator.animateTransition(using:)(void *a1)
{
  v2 = [a1 viewForKey_];
  if (v2)
  {
    v3 = v2;
    [v2 setAlpha_];
    v4 = [a1 containerView];
    [v4 addSubview_];

    [v3 layoutIfNeeded];
    v5 = objc_opt_self();
    OUTLINED_FUNCTION_20();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    v15 = partial apply for closure #1 in MultiwayViewController.fadeInView(view:duration:);
    v16 = v6;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = thunk for @escaping @callee_guaranteed () -> ();
    v14 = &block_descriptor_86;
    v7 = _Block_copy(&v11);
    v8 = v3;

    OUTLINED_FUNCTION_20();
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    v15 = partial apply for closure #2 in CrossFadeAnimator.animateTransition(using:);
    v16 = v9;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v14 = &block_descriptor_6_3;
    v10 = _Block_copy(&v11);
    swift_unknownObjectRetain();

    [v5 animateWithDuration:0 delay:v7 options:v10 animations:0.3 completion:0.0];

    _Block_release(v10);
    _Block_release(v7);
  }

  else
  {

    [a1 completeTransition_];
  }
}

id CrossFadeAnimator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CrossFadeAnimator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t type metadata accessor for CNKCrossFadeAnimatorFactory()
{
  result = lazy cache variable for type metadata for CNKCrossFadeAnimatorFactory;
  if (!lazy cache variable for type metadata for CNKCrossFadeAnimatorFactory)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNKCrossFadeAnimatorFactory);
  }

  return result;
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v3 = v11;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      outlined init with copy of Any(v4, v10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v11 = v3;
      v5 = *(v3 + 16);
      if (v5 >= *(v3 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v11;
      }

      *(v3 + 16) = v5 + 1;
      v6 = v3 + 16 * v5;
      *(v6 + 32) = v8;
      *(v6 + 40) = v9;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void specialized _arrayConditionalCast<A, B>(_:)()
{
  OUTLINED_FUNCTION_29();
  v21 = v1;
  v22 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_79_0();
  v8 = type metadata accessor for RecentsCallItem(v7);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = *(v4 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v16 = v24;
  v17 = v4 + 32;
  if (v15)
  {
    while (1)
    {
      outlined init with copy of IDSLookupManager(v17, &v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      __swift_storeEnumTagSinglePayload(v0, 0, 1, v8);
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v0, v14, type metadata accessor for RecentsCallItem);
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v14, v11, type metadata accessor for RecentsCallItem);
      v24 = v16;
      v18 = *(v16 + 16);
      if (v18 >= *(v16 + 24) >> 1)
      {
        OUTLINED_FUNCTION_53_15();
        v16 = v24;
      }

      *(v16 + 16) = v18 + 1;
      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_0_182();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v11, v19, v20);
      v17 += 40;
      if (!--v15)
      {
        goto LABEL_8;
      }
    }

    __swift_storeEnumTagSinglePayload(v0, 1, 1, v8);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  }

LABEL_8:
  OUTLINED_FUNCTION_30_0();
}

void specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_71_11();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  a14 = MEMORY[0x1E69E7CC0];
  v28 = *(v26 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  v29 = v27 + 32;
  if (v28)
  {
    while (1)
    {
      outlined init with copy of Any(v29, &a10);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMSPIMessage, 0x1E69A5C70);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v29 += 32;
      if (!--v28)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_6:
  OUTLINED_FUNCTION_70_6();
}

void RecentsCallItem.isMessage.getter()
{
  RecentsCallItem.hasAudioMessage.getter();
  if ((v0 & 1) == 0)
  {

    RecentsCallItem.hasVideoMessage.getter();
  }
}

BOOL RecentsCallItem.isMissed.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_15_43();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v1, v10, v11);
  OUTLINED_FUNCTION_316();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_4_128();
    outlined destroy of RecentsCallItemType(v10, v12);
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_3_135();
    v14 = OUTLINED_FUNCTION_45_1();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v14, v15, v16);
    v17 = *(v6 + *(v2 + 24));
    if (v17)
    {
      v18 = [v17 callStatus];
      v13 = v18 == *MEMORY[0x1E69935C8];
    }

    else
    {
      v13 = 0;
    }

    OUTLINED_FUNCTION_2_145();
    outlined destroy of RecentsCallItemType(v6, v19);
  }

  return v13;
}

uint64_t key path getter for RecentsCollectionViewCollator.linkController : RecentsCollectionViewCollator@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x168))();
  *a2 = result;
  return result;
}

uint64_t key path setter for RecentsCollectionViewCollator.linkController : RecentsCollectionViewCollator(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x170);

  return v2(v3);
}

uint64_t RecentsCollectionViewCollator.linkController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_linkController;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for RecentsCollectionViewCollator.hasFinishedFirstLoad : RecentsCollectionViewCollator@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x180))();
  *a2 = result & 1;
  return result;
}

uint64_t key path setter for RecentsCollectionViewCollator.$hasFinishedFirstLoad : RecentsCollectionViewCollator(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  return RecentsCollectionViewCollator.$hasFinishedFirstLoad.setter();
}

uint64_t RecentsCollectionViewCollator.$hasFinishedFirstLoad.getter()
{
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator__hasFinishedFirstLoad, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t RecentsCollectionViewCollator.$hasFinishedFirstLoad.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_92_0();
  v2();
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator__hasFinishedFirstLoad, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  v3 = OUTLINED_FUNCTION_44_0();
  return v4(v3);
}

uint64_t key path setter for RecentsCollectionViewCollator.currentFilterMode : RecentsCollectionViewCollator(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for FilterMenuViewModel.Action();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x218))(v7);
}

uint64_t RecentsCollectionViewCollator.currentFilterMode.didset(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI19FilterMenuViewModelC6ActionOSgMd, &_s16CommunicationsUI19FilterMenuViewModelC6ActionOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - v7;
  v9 = type metadata accessor for FilterMenuViewModel.Action();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentFilterMode;
  swift_beginAccess();
  v14 = *(v10 + 16);
  v14(v12, &v1[v13], v9);
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type FilterMenuViewModel.Action and conformance FilterMenuViewModel.Action, MEMORY[0x1E6995AA8], MEMORY[0x1E6995AB8]);
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v10 + 8))(v12, v9);
  if ((v15 & 1) == 0)
  {
    v43 = v3;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.conversationKit);
    v18 = v2;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v21 = 136315138;
      v14(v8, &v2[v13], v9);
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
      specialized >> prefix<A>(_:)(v8, v22, v23, v24, v25, v26, v27, v28, v41, v42, v43, v44, v45, v46, v47, v48, v49, aBlock[0]);
      v30 = v29;
      v32 = v31;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s16CommunicationsUI19FilterMenuViewModelC6ActionOSgMd, &_s16CommunicationsUI19FilterMenuViewModelC6ActionOSgMR);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, aBlock);

      *(v21 + 4) = v33;
      _os_log_impl(&dword_1BBC58000, v19, v20, "Changed filterMode to %s", v21, 0xCu);
      v34 = v42;
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1BFB23DF0](v34, -1, -1);
      MEMORY[0x1BFB23DF0](v21, -1, -1);
    }

    v35 = swift_allocObject();
    *(v35 + 16) = v18;
    aBlock[4] = partial apply for closure #1 in RecentsCollectionViewCollator.currentFilterMode.didset;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_181_0;
    v36 = _Block_copy(aBlock);
    v37 = v18;
    v38 = v44;
    static DispatchQoS.unspecified.getter();
    v49 = MEMORY[0x1E69E7CC0];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v39 = v46;
    v40 = v43;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v38, v39, v36);
    _Block_release(v36);
    (*(v48 + 8))(v39, v40);
    (*(v45 + 8))(v38, v47);
  }

  return result;
}

double closure #1 in RecentsCollectionViewCollator.currentFilterMode.didset(void *a1)
{
  v2 = type metadata accessor for FilterMenuViewModel.Action();
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x210))(v4);
  RecentsCollectionViewCollator.items(for:)();
  (*(v3 + 8))(v6, v2);
  RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:)();

  return result;
}

uint64_t RecentsCollectionViewCollator.currentFilterMode.setter()
{
  v1 = type metadata accessor for FilterMenuViewModel.Action();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentFilterMode;
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentFilterMode, v14);
  (*(v3 + 16))(v7, v0 + v8, v1);
  OUTLINED_FUNCTION_30_2(v0 + v8, v13);
  OUTLINED_FUNCTION_92_0();
  v9();
  swift_endAccess();
  RecentsCollectionViewCollator.currentFilterMode.didset(v7);
  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_44_0();
  v10(v11);
  return (v10)(v7, v1);
}

void (*RecentsCollectionViewCollator.currentFilterMode.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = type metadata accessor for FilterMenuViewModel.Action();
  v3[4] = v4;
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v3[5] = v5;
  v8 = *(v7 + 64);
  v3[6] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[7] = v9;
  v10 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentFilterMode;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentFilterMode, v3);
  v11 = *(v6 + 16);
  v3[8] = v11;
  v3[9] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v9, v1 + v10, v4);
  return RecentsCollectionViewCollator.currentFilterMode.modify;
}

void RecentsCollectionViewCollator.currentFilterMode.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    RecentsCollectionViewCollator.currentFilterMode.setter();
    v5 = OUTLINED_FUNCTION_316();
    v6(v5);
  }

  else
  {
    RecentsCollectionViewCollator.currentFilterMode.setter();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t RecentsCollectionViewCollator.currentFilterBadgeCountPublisher.getter()
{
  return RecentsCollectionViewCollator.currentFilterBadgeCountPublisher.getter();
}

{
  v1 = OUTLINED_FUNCTION_62_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_101();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySis5NeverOGMd, &_s7Combine19CurrentValueSubjectCySis5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<Int, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySis5NeverOGMd, &_s7Combine19CurrentValueSubjectCySis5NeverOGMR, MEMORY[0x1E695BFB0]);
  Publisher<>.removeDuplicates()();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<Int, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySis5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySis5NeverOGGMR, MEMORY[0x1E695BD38]);
  v7 = Publisher.eraseToAnyPublisher()();
  (*(v5 + 8))(v0, v3);
  return v7;
}

void RecentsCollectionViewCollator.init(recentsController:conversationManager:linkController:sensitiveContentTipViewModel:dataSource:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v73 = v3;
  v74 = v2;
  v78 = v5;
  v79 = v4;
  v80 = v6;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v76 = v8;
  v77 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v75 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  OUTLINED_FUNCTION_1();
  v70 = v12;
  v71 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v69 = v66 - v14;
  v72 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_1();
  v68 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v19 = v18 - v17;
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  v21 = type metadata accessor for DispatchQoS();
  v22 = OUTLINED_FUNCTION_22(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v67 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_updateQueue;
  v66[1] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static DispatchQoS.userInteractive.getter();
  v82[0] = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v23 = OUTLINED_FUNCTION_44_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_92_0();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v25, v26, v27, v28);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v68 + 104))(v19, *MEMORY[0x1E69E8090], v72);
  v72 = 0x80000001BC513AC0;
  *&v0[v67] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v29 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_updateQueueKey;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A11SpecificKeyCySSGMd, &_s8Dispatch0A11SpecificKeyCySSGMR);
  swift_allocObject();
  *&v0[v29] = DispatchSpecificKey.init()();
  v30 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator__hasFinishedFirstLoad;
  LOBYTE(v82[0]) = 0;
  v31 = v69;
  Published.init(initialValue:)();
  (*(v70 + 32))(&v1[v30], v31, v71);
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cancellables] = MEMORY[0x1E69E7CD0];
  v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_isShowingRequestsTip] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_shouldPresentRequestsTip] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_shouldPresentRequestsTipOnResume] = 0;
  v32 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentFilterMode;
  v33 = *MEMORY[0x1E6995A70];
  type metadata accessor for FilterMenuViewModel.Action();
  OUTLINED_FUNCTION_7_0();
  (*(v34 + 104))(&v1[v32], v33);
  v35 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentFilterBadgeCount;
  v82[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySis5NeverOGMd, &_s7Combine19CurrentValueSubjectCySis5NeverOGMR);
  swift_allocObject();
  *&v1[v35] = OUTLINED_FUNCTION_72_13();
  v36 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentRequestCount;
  OUTLINED_FUNCTION_37_28();
  *&v1[v36] = OUTLINED_FUNCTION_72_13();
  v37 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentVoicemailCount;
  OUTLINED_FUNCTION_37_28();
  *&v1[v37] = OUTLINED_FUNCTION_72_13();
  v38 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentVideomailCount;
  OUTLINED_FUNCTION_37_28();
  *&v1[v38] = OUTLINED_FUNCTION_72_13();
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_recentCallsDidChangeObserver] = 0;
  v39 = &v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator____lazy_storage___upcomingSectionItemLimit];
  *v39 = 0;
  v39[8] = 1;
  v40 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_featureFlags;
  *&v1[v40] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_wantsSynchronousLoad] = 1;
  v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_isDataLoading] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_pendingDataLoading] = 0;
  v41 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedJunkItems] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedRequestItems] = v41;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedMissedItems] = v41;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedVoicemailItems] = v41;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedVideomailItems] = v41;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedDefaultItems] = v41;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator__requestCount] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator__voicemailCount] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator__videomailCount] = 0;
  v42 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_requestsHandler;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *&v1[v42] = static RequestsHandler.shared;
  v43 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_recentsController;
  outlined init with copy of IDSLookupManager(v80, &v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_recentsController]);
  v44 = v73;
  v45 = v74;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_conversationManager] = v74;
  v46 = v78;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_linkController] = v79;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_sensitiveContentTipViewModel] = v46;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_dataSource] = v44;
  outlined init with copy of IDSLookupManager(&v1[v43], v82);
  v47 = v83;
  v48 = v84;
  __swift_project_boxed_opaque_existential_1(v82, v83);
  v49 = *(v48 + 40);

  v73 = v44;

  v50 = v45;

  v49(v47, v48);
  __swift_destroy_boxed_opaque_existential_1(v82);
  v51 = v75;
  Date.init()();
  static RecentsCollectionViewModel.sections(from:now:upcomingSectionItemLimit:suggestedContact:)();
  v53 = v52;
  (*(v76 + 8))(v51, v77);
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_model] = v53;
  *&v1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_suggestionFetcher] = [objc_allocWithZone(type metadata accessor for RecentsListSuggestionFetcher(0)) init];
  v54 = type metadata accessor for RecentsCollectionViewCollator(0);
  v81.receiver = v1;
  v81.super_class = v54;
  v55 = objc_msgSendSuper2(&v81, sel_init);
  v56 = *&v55[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_updateQueue];
  v82[0] = 0xD00000000000003ELL;
  v82[1] = v72;
  v57 = v55;
  v58 = v56;

  OS_dispatch_queue.setSpecific<A>(key:value:)();

  v59 = *&v57[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_suggestionFetcher];
  v60 = *((*MEMORY[0x1E69E7D40] & *v59) + 0x118);
  v61 = v57;
  v62 = v59;
  v60(v57, &protocol witness table for RecentsCollectionViewCollator);

  type metadata accessor for ScreenAndFilterUnknownCallersTipController();
  static ScreenAndFilterUnknownCallersTipController.shared.getter();
  updated = ScreenAndFilterUnknownCallersTipController.onUpdatePublisher.getter();

  v82[0] = updated;
  OUTLINED_FUNCTION_20();
  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();

  OUTLINED_FUNCTION_24();
  v65 = swift_allocObject();
  *(v65 + 16) = partial apply for closure #1 in RecentsCollectionViewCollator.init(recentsController:conversationManager:linkController:sensitiveContentTipViewModel:dataSource:);
  *(v65 + 24) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVyyts5NeverOGMd, &_s7Combine12AnyPublisherVyyts5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<(), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVyyts5NeverOGMd, &_s7Combine12AnyPublisherVyyts5NeverOGMR, MEMORY[0x1E695BED8]);
  Publisher<>.sink(receiveValue:)();

  OUTLINED_FUNCTION_30_2(&v61[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cancellables], v82);
  AnyCancellable.store(in:)();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v80);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in RecentsCollectionViewCollator.init(recentsController:conversationManager:linkController:sensitiveContentTipViewModel:dataSource:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      RecentsCollectionViewCollator.shouldShowRequestsTip()();
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v2[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_shouldPresentRequestsTipOnResume] = v6 & 1;
  }
}

void RecentsCollectionViewCollator.shouldShowRequestsTip()()
{
  v1 = type metadata accessor for RecentCallRecentItemMetadata(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v58 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v58 - v8;
  v70 = type metadata accessor for RecentsCallItemType(0);
  MEMORY[0x1EEE9AC00](v70);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for RecentsCallItem(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v65 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  if (RecentsCollectionViewCollator.isRequestsEnabled()())
  {
    return;
  }

  v69 = v1;
  v64 = type metadata accessor for ScreenAndFilterUnknownCallersTipController();
  static ScreenAndFilterUnknownCallersTipController.shared.getter();
  v23 = ScreenAndFilterUnknownCallersTipController.isFaceTimeFilteringTipAvailable.getter();

  if ((v23 & 1) == 0)
  {
    return;
  }

  v62 = v10;
  v66 = v6;
  v24 = *(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_recentsController + 24);
  v25 = *(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_recentsController + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_recentsController), v24);
  v26 = (*(v25 + 16))(v24, v25);
  if (!v26)
  {
    return;
  }

  v27 = v26;
  v63 = v3;
  v28 = [objc_opt_self() sharedInstance];
  if (!v28)
  {
    goto LABEL_47;
  }

  v29 = v28;
  v71 = [v28 deviceType];

  v30 = 0;
  v72 = *(v27 + 16);
  v67 = *MEMORY[0x1E69935C8];
  v60 = *MEMORY[0x1E69935E8];
  v61 = MEMORY[0x1E69E7CC0];
  v31 = v68;
  while (1)
  {
    if (v72 == v30)
    {

      static ScreenAndFilterUnknownCallersTipController.numCallsToTriggerFilteringTip.getter();
      return;
    }

    if (v30 >= *(v27 + 16))
    {
      break;
    }

    v32 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v33 = *(v18 + 72);
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v27 + v32 + v33 * v30, v22, type metadata accessor for RecentsCallItem);
    if (v71 == 4)
    {
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v22, v16, type metadata accessor for RecentsCallItemType);
      if (swift_getEnumCaseMultiPayload())
      {
        v34 = type metadata accessor for RecentsCallItemType;
        v35 = v16;
LABEL_13:
        outlined destroy of RecentsCallItemType(v35, v34);
        goto LABEL_14;
      }

      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v16, v31, type metadata accessor for RecentCallRecentItemMetadata);
      v36 = *(v31 + *(v69 + 24));
      if (!v36)
      {
        v34 = type metadata accessor for RecentCallRecentItemMetadata;
        v35 = v31;
        goto LABEL_13;
      }

      v37 = [v36 callStatus];
      outlined destroy of RecentsCallItemType(v31, type metadata accessor for RecentCallRecentItemMetadata);
      if (v37 == v67)
      {
        RecentsCallItem.isIncomingCall.getter();
        if (v38)
        {
          v39 = v62;
          _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v22, v62, type metadata accessor for RecentsCallItemType);
          if (swift_getEnumCaseMultiPayload())
          {
            outlined destroy of RecentsCallItemType(v39, type metadata accessor for RecentsCallItemType);
            goto LABEL_39;
          }

          v40 = v63;
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v39, v63, type metadata accessor for RecentCallRecentItemMetadata);
          v41 = *(v40 + *(v69 + 24));
          if (v41 && (v42 = [v41 serviceProvider]) != 0)
          {
            v43 = v42;
            v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v45 = v44;
          }

          else
          {
            v59 = 0;
            v45 = 0;
          }

          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (!v45)
          {

            outlined destroy of RecentsCallItemType(v63, type metadata accessor for RecentCallRecentItemMetadata);
            goto LABEL_39;
          }

          if (v59 == v50 && v45 == v51)
          {

            outlined destroy of RecentsCallItemType(v63, type metadata accessor for RecentCallRecentItemMetadata);
            v31 = v68;
          }

          else
          {
            LODWORD(v59) = _stringCompareWithSmolCheck(_:_:expecting:)();

            outlined destroy of RecentsCallItemType(v63, type metadata accessor for RecentCallRecentItemMetadata);
            v31 = v68;
            if ((v59 & 1) == 0)
            {
              goto LABEL_39;
            }
          }
        }
      }

      goto LABEL_14;
    }

    _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v22, v13, type metadata accessor for RecentsCallItemType);
    if (swift_getEnumCaseMultiPayload())
    {
      v34 = type metadata accessor for RecentsCallItemType;
      v35 = v13;
      goto LABEL_13;
    }

    v46 = v66;
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v13, v66, type metadata accessor for RecentCallRecentItemMetadata);
    v47 = *(v46 + *(v69 + 24));
    if (!v47)
    {
      outlined destroy of RecentsCallItemType(v46, type metadata accessor for RecentCallRecentItemMetadata);
      v31 = v68;
      goto LABEL_14;
    }

    v48 = [v47 callStatus];
    outlined destroy of RecentsCallItemType(v46, type metadata accessor for RecentCallRecentItemMetadata);
    v31 = v68;
    if (v48 == v67 && (RecentsCallItem.isIncomingCall.getter(), (v49 & 1) != 0))
    {
LABEL_39:
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v22, v65, type metadata accessor for RecentsCallItem);
      v53 = v61;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v53;
      v73 = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v55 = v73;
      }

      v56 = *(v55 + 16);
      v57 = v56 + 1;
      if (v56 >= *(v55 + 24) >> 1)
      {
        v61 = v56 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v57 = v61;
        v55 = v73;
      }

      ++v30;
      *(v55 + 16) = v57;
      v61 = v55;
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v65, v55 + v32 + v56 * v33, type metadata accessor for RecentsCallItem);
      v31 = v68;
    }

    else
    {
LABEL_14:
      outlined destroy of RecentsCallItemType(v22, type metadata accessor for RecentsCallItem);
      ++v30;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t RecentsCollectionViewCollator.isOnUpdateQueue.getter()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static OS_dispatch_queue.getSpecific<A>(key:)();
  if (v4)
  {
    if (v3 == 0xD00000000000003ELL && v4 == 0x80000001BC513AC0)
    {
      v1 = 1;
    }

    else
    {
      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

id RecentsCollectionViewCollator.__deallocating_deinit()
{
  RecentsCollectionViewCollator.deregisterRecentCallsDidChangeObserver()();
  v1 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_linkController;
  OUTLINED_FUNCTION_4_0(&v0[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_linkController], v8);
  v2 = *(**&v0[v1] + 264);

  v2(v3);

  v4 = *(**&v0[v1] + 136);

  v5 = type metadata completion function for SyncedScreeningAlphaGradientView();
  v4(v5);

  v7.receiver = v0;
  v7.super_class = type metadata accessor for RecentsCollectionViewCollator(0);
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void RecentsCollectionViewCollator.callItem(for:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_71_11();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = *v33;
  v35 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_38_28(v35);
  v36 = *&v24[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_updateQueue];
  v37 = swift_allocObject();
  *(v37 + 16) = v32;
  *(v37 + 24) = v24;
  *(v37 + 32) = v34;
  *(v37 + 40) = v30;
  *(v37 + 48) = v28;
  OUTLINED_FUNCTION_24();
  v38 = swift_allocObject();
  *(v38 + 16) = partial apply for closure #1 in RecentsCollectionViewCollator.callItem(for:identifier:);
  *(v38 + 24) = v37;
  a13 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  a14 = v38;
  OUTLINED_FUNCTION_1_25();
  a10 = 1107296256;
  OUTLINED_FUNCTION_11_0();
  a11 = v39;
  a12 = &block_descriptor_87;
  v40 = _Block_copy(&a9);
  v41 = v24;

  dispatch_sync(v36, v40);
  _Block_release(v40);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_70_6();
  }
}

uint64_t closure #1 in RecentsCollectionViewCollator.callItem(for:identifier:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v20 = *(a2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_model);
  v19 = a3;

  RecentsCollectionViewModel.sectionable(for:identifier:)(&v19, a4, a5, v21);

  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32RecentsCollectionViewSectionable_pMd, &_s15ConversationKit32RecentsCollectionViewSectionable_pMR);
    v13 = type metadata accessor for RecentsCallItem(0);
    v14 = swift_dynamicCast() ^ 1;
    v15 = v12;
    v16 = v13;
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, &_s15ConversationKit32RecentsCollectionViewSectionable_pSgMd, &_s15ConversationKit32RecentsCollectionViewSectionable_pSgMR);
    v16 = type metadata accessor for RecentsCallItem(0);
    v15 = v12;
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v14, 1, v16);
  return outlined assign with take of RecentsCallItem?(v12, a1);
}

void RecentsCollectionViewCollator.callItem(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_71_11();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_38_28(v33);
  v34 = *&v24[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_updateQueue];
  OUTLINED_FUNCTION_109();
  v35 = swift_allocObject();
  v35[2] = v32;
  v35[3] = v24;
  v35[4] = v30;
  v35[5] = v28;
  OUTLINED_FUNCTION_24();
  v36 = swift_allocObject();
  *(v36 + 16) = partial apply for closure #1 in RecentsCollectionViewCollator.callItem(for:);
  *(v36 + 24) = v35;
  a13 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a14 = v36;
  OUTLINED_FUNCTION_1_25();
  a10 = 1107296256;
  OUTLINED_FUNCTION_11_0();
  a11 = v37;
  a12 = &block_descriptor_21_0;
  v38 = _Block_copy(&a9);
  v39 = v24;

  dispatch_sync(v34, v38);
  _Block_release(v38);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_70_6();
  }
}

uint64_t closure #1 in RecentsCollectionViewCollator.callItem(for:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v8 - v5;
  v8[1] = *(a2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_model);

  RecentsCollectionViewModel.sectionable(with:)();

  return outlined assign with take of RecentsCallItem?(v6, a1);
}

void RecentsCollectionViewCollator.videoMessageCallItem(withUUID:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v11 = type metadata accessor for RecentsCallItem(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
  (*(v7 + 16))(v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v5);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v0;
  (*(v7 + 32))(v13 + v12, v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  OUTLINED_FUNCTION_24();
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in RecentsCollectionViewCollator.videoMessageCallItem(withUUID:);
  *(v14 + 24) = v13;
  v21[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v21[5] = v14;
  OUTLINED_FUNCTION_5_73();
  v21[1] = 1107296256;
  OUTLINED_FUNCTION_11_0();
  v21[2] = v15;
  v21[3] = &block_descriptor_31_0;
  v16 = _Block_copy(v21);
  v17 = v0;

  v18 = OUTLINED_FUNCTION_76();
  dispatch_sync(v18, v19);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
  }
}

uint64_t closure #1 in RecentsCollectionViewCollator.videoMessageCallItem(withUUID:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v8 - v5;
  v8[1] = *(a2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_model);

  RecentsCollectionViewModel.videoMessageCallItem(withUUID:)();

  return outlined assign with take of RecentsCallItem?(v6, a1);
}

BOOL RecentsCollectionViewCollator.isActive.getter()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x168))();
  OUTLINED_FUNCTION_27_15();
  v2 = (*(v1 + 128))();

  if (v2)
  {
    swift_unknownObjectRelease();
  }

  return v2 != 0;
}

Swift::Void __swiftcall RecentsCollectionViewCollator.suspend()()
{
  RecentsCollectionViewCollator.deregisterRecentCallsDidChangeObserver()();
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_conversationManager) removeDelegate_];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x168);
  v2(v1);
  OUTLINED_FUNCTION_20_8();
  (*(v3 + 264))();

  v2(v4);
  OUTLINED_FUNCTION_27_15();
  v5 = type metadata completion function for SyncedScreeningAlphaGradientView();
  v6(v5);
}

Swift::Void __swiftcall RecentsCollectionViewCollator.reloadData(contactDidChange:acceptedIntroductionsDidChange:)(Swift::Bool contactDidChange, Swift::Bool acceptedIntroductionsDidChange)
{
  OUTLINED_FUNCTION_29();
  isEscapingClosureAtFileLocation = v2;
  v5 = v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v19 = v18 - v17;
  v20 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_isDataLoading;
  if ((*(v2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_isDataLoading) & 1) == 0)
  {
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v2 + v20) = 1;
    if (*(v2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_wantsSynchronousLoad) == 1)
    {
      *(v2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_wantsSynchronousLoad) = 0;
      v13 = *(v2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_updateQueue);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_24_43(v6);
      OUTLINED_FUNCTION_24();
      v26 = swift_allocObject();
      *(v26 + 16) = partial apply for closure #2 in RecentsCollectionViewCollator.reloadData(contactDidChange:acceptedIntroductionsDidChange:);
      *(v26 + 24) = v6;
      v41 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
      v42 = v26;
      OUTLINED_FUNCTION_5_73();
      v38[1] = 1107296256;
      OUTLINED_FUNCTION_11_0();
      v39 = v27;
      v40 = &block_descriptor_48_1;
      v15 = _Block_copy(v38);
      v12 = v42;
      v28 = isEscapingClosureAtFileLocation;

      dispatch_sync(v13, v15);

      _Block_release(v15);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_11;
      }

      __break(1u);
    }

    v29 = swift_allocObject();
    v30 = OUTLINED_FUNCTION_24_43(v29);
    v41 = partial apply for closure #3 in RecentsCollectionViewCollator.reloadData(contactDidChange:acceptedIntroductionsDidChange:);
    v42 = v30;
    OUTLINED_FUNCTION_5_73();
    OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
    v39 = v31;
    v40 = &block_descriptor_38_2;
    v37 = _Block_copy(v38);
    v32 = isEscapingClosureAtFileLocation;

    static DispatchQoS.unspecified.getter();
    OUTLINED_FUNCTION_9_91();
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(v33, v34, MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    OUTLINED_FUNCTION_3_8();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v35, &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, v36);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v19, v12, v37);
    _Block_release(v37);

    (*(v8 + 8))(v12, v6);
    (*(v15 + 1))(v19, v13);

    goto LABEL_11;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.conversationKit);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1BBC58000, v22, v23, "Request reloadData while data is loading, will be processed later.", v24, 2u);
    OUTLINED_FUNCTION_27();
  }

  v25 = (isEscapingClosureAtFileLocation + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_pendingDataLoading);
  *v25 = 1;
  v25[1] = v5 & 1;
LABEL_11:
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in RecentsCollectionViewCollator.reloadData(contactDidChange:acceptedIntroductionsDidChange:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    RecentsCollectionViewCollator.hasFinishedFirstLoad.setter(1, v11);
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v13[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_isDataLoading] = 0;
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_pendingDataLoading];

    if (v15 == 1)
    {
      v26 = v7;
      swift_beginAccess();
      v16 = swift_unknownObjectWeakLoadStrong();
      if (v16)
      {
        v17 = v16[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_pendingDataLoading + 1];
      }

      else
      {
        v17 = 0;
      }

      swift_beginAccess();
      v18 = swift_unknownObjectWeakLoadStrong();
      if (v18)
      {
        *&v18[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_pendingDataLoading] = 0;
      }

      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v27 = v3;
      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.conversationKit);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1BBC58000, v20, v21, "Request reloadData after data loading is done.", v22, 2u);
        MEMORY[0x1BFB23DF0](v22, -1, -1);
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v23 = static OS_dispatch_queue.main.getter();
      v24 = swift_allocObject();
      *(v24 + 16) = a1;
      *(v24 + 24) = v17;
      aBlock[4] = partial apply for closure #1 in closure #1 in RecentsCollectionViewCollator.reloadData(contactDidChange:acceptedIntroductionsDidChange:);
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_171_0;
      v25 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1BFB215C0](0, v9, v5, v25);
      _Block_release(v25);

      (*(v27 + 8))(v5, v2);
      (*(v26 + 8))(v9, v6);
    }
  }
}

void closure #1 in closure #1 in RecentsCollectionViewCollator.reloadData(contactDidChange:acceptedIntroductionsDidChange:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x408))(0, a2 & 1);
  }
}

void RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v11 = *(*&v0[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_model] + 16) != 0;
  v12 = RecentsCollectionViewCollator.isRequestsEnabled()();
  v13 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_38_28(v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v0;
  *(v14 + 40) = v12 & 1;
  *(v14 + 41) = v2;
  *(v14 + 42) = v11;
  *(v14 + 48) = v8;
  *(v14 + 56) = v6;
  *(v14 + 64) = v4;
  v15 = v0;
  v16 = OUTLINED_FUNCTION_45_1();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v16, v17);
  type metadata completion function for SyncedScreeningAlphaGradientView();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 435) = v14;
  *(v8 + 80) = a8;
  *(v8 + 88) = v13;
  *(v8 + 434) = a7;
  *(v8 + 433) = a6;
  *(v8 + 432) = a5;
  *(v8 + 72) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 96) = v9;
  *(v8 + 104) = *(v9 - 8);
  *(v8 + 112) = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  *(v8 + 120) = v10;
  *(v8 + 128) = *(v10 - 8);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = type metadata accessor for RecentsCallItemType(0);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = type metadata accessor for RecentCallRecentItemMetadata(0);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = *(type metadata accessor for RecentsCallItem(0) - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:), 0, 0);
}

uint64_t closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 72) + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_recentsController), *(*(v0 + 72) + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_recentsController + 24));
  OUTLINED_FUNCTION_92_0();
  v2 = v1();
  v10 = *(v2 + 16);
  if (!v10)
  {
    goto LABEL_102;
  }

  v11 = v2;
  v2 = *(v2 + 32);
  *(v0 + 368) = v2;
  if (v10 == 1)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  *(v0 + 376) = v11[5];
  if (v10 < 3)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v12 = v11[6];
  *(v0 + 384) = v12;
  if (v10 == 3)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  *(v0 + 392) = v11[7];
  if (v10 < 5)
  {
LABEL_106:
    __break(1u);
    return MEMORY[0x1EEE6DDE0](v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v13 = *(v0 + 432);
  *(v0 + 400) = v11[8];

  if (v13 != 1)
  {
    v192 = v12;
    v56 = 0;
    v57 = *(v0 + 240);
    v202 = *(v0 + 376);
    v58 = *(v202 + 16);
    v193 = MEMORY[0x1E69E7CC0];
    while (v58 != v56)
    {
      if (v56 >= *(v202 + 16))
      {
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v59 = *(v0 + 320);
      OUTLINED_FUNCTION_14_45();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v60, v59, v61);
      RequestsHandler.isRequestItem(_:)();
      if (v62)
      {
        v2 = OUTLINED_FUNCTION_6_99(*(v0 + 320));
        ++v56;
      }

      else
      {
        OUTLINED_FUNCTION_0_182();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v63, v64, v65);
        v66 = v193;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_14_58();
          v66 = v193;
        }

        v68 = *(v66 + 16);
        v67 = *(v66 + 24);
        v69 = v68 + 1;
        if (v68 >= v67 >> 1)
        {
          OUTLINED_FUNCTION_10_69(v67);
          v197 = v73;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v69 = v197;
          v66 = v193;
        }

        ++v56;
        *(v66 + 16) = v69;
        v193 = v66;
        OUTLINED_FUNCTION_0_182();
        v2 = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v70, v71, v72);
      }
    }

    v78 = *(v0 + 392);

    v79 = 0;
    v203 = v78;
    v80 = *(v78 + 16);
    v195 = MEMORY[0x1E69E7CC0];
    while (v80 != v79)
    {
      if (v79 >= *(v203 + 16))
      {
        goto LABEL_98;
      }

      v81 = *(v0 + 304);
      OUTLINED_FUNCTION_60_13();
      OUTLINED_FUNCTION_14_45();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v82, v81, v83);
      RequestsHandler.isRequestItem(_:)();
      if (v84)
      {
        v2 = OUTLINED_FUNCTION_6_99(*(v0 + 304));
        ++v79;
      }

      else
      {
        OUTLINED_FUNCTION_0_182();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v85, v86, v87);
        v88 = v195;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_14_58();
          v88 = v195;
        }

        v90 = *(v88 + 16);
        v89 = *(v88 + 24);
        v91 = v90 + 1;
        if (v90 >= v89 >> 1)
        {
          OUTLINED_FUNCTION_10_69(v89);
          v198 = v95;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v91 = v198;
          v88 = v195;
        }

        ++v79;
        *(v88 + 16) = v91;
        v195 = v88;
        OUTLINED_FUNCTION_0_182();
        v2 = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v92, v93, v94);
      }
    }

    v96 = *(v0 + 400);

    v97 = 0;
    v199 = v96;
    v98 = *(v96 + 16);
    v99 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v204 = v99;
      if (v98 == v97)
      {
        break;
      }

      if (v97 >= *(v199 + 16))
      {
        goto LABEL_99;
      }

      v100 = *(v0 + 288);
      OUTLINED_FUNCTION_60_13();
      OUTLINED_FUNCTION_14_45();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v101, v100, v102);
      RequestsHandler.isRequestItem(_:)();
      if (v103)
      {
        v2 = OUTLINED_FUNCTION_6_99(*(v0 + 288));
        ++v97;
      }

      else
      {
        OUTLINED_FUNCTION_0_182();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v104, v105, v106);
        v107 = v99;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_14_58();
          v107 = v99;
        }

        v109 = *(v107 + 16);
        v108 = *(v107 + 24);
        v110 = v109 + 1;
        if (v109 >= v108 >> 1)
        {
          OUTLINED_FUNCTION_10_69(v108);
          v205 = v114;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v110 = v205;
          v107 = v99;
        }

        ++v97;
        *(v107 + 16) = v110;
        OUTLINED_FUNCTION_0_182();
        v2 = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v111, v112, v113);
        v99 = v107;
      }
    }

    v115 = *(v0 + 368);
    v200 = *(v0 + 192);
    v116 = *(v0 + 72);

    (*((*MEMORY[0x1E69E7D40] & *v116) + 0x168))(v117);
    OUTLINED_FUNCTION_20_8();
    v119 = (*(v118 + 272))();

    v120 = RecentsCollectionViewCollator.linkCallItems(combining:with:)(v192, v119);

    RecentsCollectionViewCollator.activeCallItems()();
    specialized Array.append<A>(contentsOf:)(v121);
    v122 = v120;
    *(v116 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedJunkItems) = v115;

    v123 = MEMORY[0x1E69E7CC0];
    *(v116 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedRequestItems) = MEMORY[0x1E69E7CC0];

    *(v116 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedMissedItems) = v193;

    v124 = v195;
    *(v116 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedVoicemailItems) = v195;

    *(v116 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedVideomailItems) = v99;
    v125 = v123;

    *(v116 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedDefaultItems) = v120;

    v194 = *(v123 + 16);

    v126 = 0;
    v127 = *(v195 + 16);
    while (v127 != v126)
    {
      if (v126 >= *(v124 + 16))
      {
        goto LABEL_100;
      }

      v128 = *(v0 + 272);
      v129 = *(v0 + 160);
      v122 = ((*(v57 + 80) + 32) & ~*(v57 + 80));
      OUTLINED_FUNCTION_14_45();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v130, v128, v131);
      OUTLINED_FUNCTION_15_43();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v128, v129, v132);
      swift_getEnumCaseMultiPayload();
      OUTLINED_FUNCTION_67_10();
      if (v133)
      {
        OUTLINED_FUNCTION_4_128();
LABEL_72:
        outlined destroy of RecentsCallItemType(v140, v141);
LABEL_73:
        OUTLINED_FUNCTION_0_182();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v142, v143, v144);
        v207 = v125;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_19_41();
        }

        v145 = v125;
        v146 = *(v125 + 16);
        v147 = *(v145 + 24);
        v123 = v146 + 1;
        if (v146 >= v147 >> 1)
        {
          OUTLINED_FUNCTION_10_69(v147);
          OUTLINED_FUNCTION_53_15();
          v145 = v207;
        }

        ++v126;
        *(v145 + 16) = v123;
        OUTLINED_FUNCTION_0_182();
        v2 = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v148, v149, v150);
        v124 = v195;
        v125 = v145;
      }

      else
      {
        v134 = *(v0 + 208);
        OUTLINED_FUNCTION_3_135();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v135, v134, v136);
        v137 = *(v134 + *(v200 + 52));
        v138 = *(v0 + 208);
        if (!v137)
        {
          OUTLINED_FUNCTION_2_145();
          v140 = v138;
          goto LABEL_72;
        }

        v123 = [v137 isRead];
        OUTLINED_FUNCTION_2_145();
        outlined destroy of RecentsCallItemType(v138, v139);
        if ((v123 & 1) == 0)
        {
          goto LABEL_73;
        }

        v2 = OUTLINED_FUNCTION_6_99(*(v0 + 272));
        ++v126;
        v124 = v195;
      }
    }

    v196 = *(v125 + 16);

    v151 = 0;
    v2 = v204;
    v152 = *(v204 + 16);
    v153 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      while (1)
      {
        if (v152 == v151)
        {
          OUTLINED_FUNCTION_23_49();
          OUTLINED_FUNCTION_27_44(v176);

          v177 = swift_allocObject();
          *(v177 + 16) = v122;
          *(v177 + 24) = v194;
          OUTLINED_FUNCTION_25_43(v177, v196);
          *(v0 + 16) = MEMORY[0x1E69E9820];
          OUTLINED_FUNCTION_26_42(COERCE_DOUBLE(1107296256));
          *(v0 + 32) = v178;
          *(v0 + 40) = &block_descriptor_160;
          v179 = _Block_copy(v152);
          v180 = v122;
          outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v57, v151);
          static DispatchQoS.unspecified.getter();
          *(v0 + 64) = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_9_91();
          _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(v181, v182, MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          OUTLINED_FUNCTION_3_8();
          v185 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v183, &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, v184);
          OUTLINED_FUNCTION_36_30(v185);
          OUTLINED_FUNCTION_51_18();
          _Block_release(v179);
          v186 = OUTLINED_FUNCTION_59_11();
          v187(v186);
          (*(v191 + 8))();

          OUTLINED_FUNCTION_13();
          OUTLINED_FUNCTION_69_8();

          __asm { BRAA            X1, X16 }
        }

        if (v151 >= *(v2 + 16))
        {
          goto LABEL_101;
        }

        OUTLINED_FUNCTION_64_13();
        v122 = (v155 & ~v154);
        OUTLINED_FUNCTION_14_45();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v156, v123, v157);
        OUTLINED_FUNCTION_15_43();
        v158 = OUTLINED_FUNCTION_76();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v158, v159, v160);
        swift_getEnumCaseMultiPayload();
        OUTLINED_FUNCTION_67_10();
        if (!v133)
        {
          break;
        }

        OUTLINED_FUNCTION_4_128();
LABEL_87:
        outlined destroy of RecentsCallItemType(v167, v168);
LABEL_88:
        OUTLINED_FUNCTION_0_182();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v169, v170, v171);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_14_58();
        }

        OUTLINED_FUNCTION_45_23();
        if (v133)
        {
          OUTLINED_FUNCTION_10_69(v172);
          OUTLINED_FUNCTION_53_15();
        }

        ++v151;
        *(v153 + 16) = v123;
        OUTLINED_FUNCTION_0_182();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v173, v174, v175);
        v2 = v204;
      }

      v161 = *(v0 + 200);
      OUTLINED_FUNCTION_3_135();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v162, v161, v163);
      v164 = OUTLINED_FUNCTION_43_19();
      v123 = *(v0 + 200);
      if (!v164)
      {
        OUTLINED_FUNCTION_2_145();
        v167 = v123;
        goto LABEL_87;
      }

      v165 = [v164 isRead];
      OUTLINED_FUNCTION_2_145();
      outlined destroy of RecentsCallItemType(v123, v166);
      if ((v165 & 1) == 0)
      {
        goto LABEL_88;
      }

      OUTLINED_FUNCTION_6_99(*(v0 + 256));
      ++v151;
      v2 = v204;
    }
  }

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  v16 = *(v0 + 192);
  v206 = MEMORY[0x1E69E7CC0];
  v17 = *(v12 + 16);
LABEL_8:
  v18 = v12;
  v201 = v15;
  *(v0 + 408) = v15;
  while (v17 != v14)
  {
    if (v14 >= *(v18 + 16))
    {
      __break(1u);
      goto LABEL_97;
    }

    v19 = *(v0 + 360);
    v20 = *(v0 + 184);
    OUTLINED_FUNCTION_40_3();
    v12 = v21;
    OUTLINED_FUNCTION_14_45();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v22, v19, v23);
    OUTLINED_FUNCTION_15_43();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v19, v20, v24);
    OUTLINED_FUNCTION_316();
    if (swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_4_128();
      outlined destroy of RecentsCallItemType(v25, v26);
      v27 = 0;
    }

    else
    {
      v28 = *(v0 + 232);
      OUTLINED_FUNCTION_3_135();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v29, v28, v30);
      v27 = *(v28 + *(v16 + 24));
      v31 = v27;
      OUTLINED_FUNCTION_2_145();
      outlined destroy of RecentsCallItemType(v28, v32);
    }

    v33 = *(v0 + 176);
    OUTLINED_FUNCTION_15_43();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v34, v33, v35);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v36 = *(v0 + 224);
      OUTLINED_FUNCTION_3_135();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v37, v36, v38);
      v39 = *(v36 + *(v16 + 24));
      v40 = v39;
      OUTLINED_FUNCTION_2_145();
      outlined destroy of RecentsCallItemType(v36, v41);
      if (v39)
      {

        v27 = v39;
      }
    }

    else
    {
      OUTLINED_FUNCTION_4_128();
      outlined destroy of RecentsCallItemType(v42, v43);
    }

    v44 = *(v0 + 168);
    OUTLINED_FUNCTION_15_43();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v45, v44, v46);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v47 = *(v0 + 216);
      OUTLINED_FUNCTION_3_135();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v48, v47, v49);
      v50 = *(v47 + *(v16 + 24));
      v51 = v50;
      OUTLINED_FUNCTION_2_145();
      outlined destroy of RecentsCallItemType(v47, v52);
      if (v50)
      {

        goto LABEL_24;
      }
    }

    else
    {
      OUTLINED_FUNCTION_4_128();
      outlined destroy of RecentsCallItemType(v53, v54);
    }

    if (!v27)
    {
      goto LABEL_26;
    }

    v51 = v27;
LABEL_24:
    if (CHRecentCall.isIncoming.getter())
    {
      v55 = OUTLINED_FUNCTION_6_99(*(v0 + 360));
      MEMORY[0x1BFB20CC0](v55);
      if (*((v206 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v206 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v14;
      v2 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v15 = v206;
      goto LABEL_8;
    }

LABEL_26:
    v2 = OUTLINED_FUNCTION_6_99(*(v0 + 360));
    ++v14;
    v18 = v12;
  }

  v74 = *(v0 + 433);
  v75 = *(v0 + 72);
  v76 = swift_task_alloc();
  *(v0 + 416) = v76;
  *(v76 + 16) = v75;
  *(v76 + 24) = v201;
  *(v76 + 32) = v74;
  v77 = swift_task_alloc();
  *(v0 + 424) = v77;
  *v77 = v0;
  v77[1] = closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:);
  OUTLINED_FUNCTION_69_8();

  return MEMORY[0x1EEE6DDE0](v2, v3, v4, v5, v6, v7, v8, v9);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:), 0, 0);
}

void closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)()
{
  v1 = 0;
  v2 = *(v0[48] + 16);
  v161 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v3 = v0[48];
    if (v2 == v1)
    {
      v17 = 0;
      v18 = *(v3 + 16);
      v19 = MEMORY[0x1E69E7CC0];
      while (v18 != v17)
      {
        if (v17 >= *(v0[48] + 16))
        {
          goto LABEL_85;
        }

        v20 = v0[42];
        OUTLINED_FUNCTION_14_45();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v21, v20, v22);
        RequestsHandler.isRequestItem(_:)();
        if (v23)
        {
          OUTLINED_FUNCTION_6_99(v0[42]);
          ++v17;
        }

        else
        {
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v24, v25, v26);
          v171 = v19;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_19_41();
          }

          v27 = v19;
          v28 = *(v19 + 16);
          v29 = *(v27 + 24);
          if (v28 >= v29 >> 1)
          {
            OUTLINED_FUNCTION_10_69(v29);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v27 = v171;
          }

          ++v17;
          *(v27 + 16) = v28 + 1;
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v30, v31, v32);
          v19 = v27;
        }
      }

      v158 = v19;

      v33 = 0;
      v34 = v0[30];
      v167 = v0[47];
      v35 = *(v167 + 16);
      v159 = MEMORY[0x1E69E7CC0];
      while (v35 != v33)
      {
        if (v33 >= *(v167 + 16))
        {
          goto LABEL_86;
        }

        v36 = v0[40];
        OUTLINED_FUNCTION_29_32();
        OUTLINED_FUNCTION_14_45();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v37, v36, v38);
        RequestsHandler.isRequestItem(_:)();
        if (v39)
        {
          OUTLINED_FUNCTION_6_99(v0[40]);
          ++v33;
        }

        else
        {
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v40, v41, v42);
          v43 = v159;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_14_58();
            v43 = v159;
          }

          v45 = *(v43 + 16);
          v44 = *(v43 + 24);
          v46 = v45 + 1;
          if (v45 >= v44 >> 1)
          {
            OUTLINED_FUNCTION_10_69(v44);
            v164 = v50;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v46 = v164;
            v43 = v159;
          }

          ++v33;
          *(v43 + 16) = v46;
          v159 = v43;
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v47, v48, v49);
        }
      }

      v51 = v0[49];

      v52 = 0;
      v165 = v51;
      v168 = *(v51 + 16);
      v53 = MEMORY[0x1E69E7CC0];
      while (v168 != v52)
      {
        if (v52 >= *(v165 + 16))
        {
          goto LABEL_87;
        }

        v54 = v0[38];
        OUTLINED_FUNCTION_29_32();
        OUTLINED_FUNCTION_14_45();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v55, v54, v56);
        RequestsHandler.isRequestItem(_:)();
        if (v57)
        {
          OUTLINED_FUNCTION_6_99(v0[38]);
          ++v52;
        }

        else
        {
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v58, v59, v60);
          v61 = v53;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_14_58();
            v61 = v53;
          }

          v63 = *(v61 + 16);
          v62 = *(v61 + 24);
          if (v63 >= v62 >> 1)
          {
            OUTLINED_FUNCTION_10_69(v62);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v61 = v53;
          }

          ++v52;
          *(v61 + 16) = v63 + 1;
          OUTLINED_FUNCTION_0_182();
          v53 = v61;
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v64, v65, v66);
        }
      }

      v162 = v53;
      v67 = v0[50];

      v68 = 0;
      v166 = v67;
      v69 = *(v67 + 16);
      v70 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v169 = v70;
        if (v69 == v68)
        {
          break;
        }

        if (v68 >= *(v166 + 16))
        {
          goto LABEL_88;
        }

        v71 = v0[36];
        OUTLINED_FUNCTION_29_32();
        OUTLINED_FUNCTION_14_45();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v72, v71, v73);
        RequestsHandler.isRequestItem(_:)();
        if (v74)
        {
          OUTLINED_FUNCTION_6_99(v0[36]);
          ++v68;
        }

        else
        {
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v75, v76, v77);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_14_58();
          }

          v79 = *(v70 + 16);
          v78 = *(v70 + 24);
          v80 = v79 + 1;
          if (v79 >= v78 >> 1)
          {
            OUTLINED_FUNCTION_10_69(v78);
            v170 = v84;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v80 = v170;
          }

          ++v68;
          *(v70 + 16) = v80;
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v81, v82, v83);
        }
      }

      v85 = v0[46];
      v86 = v0[9];

      (*((*MEMORY[0x1E69E7D40] & *v86) + 0x168))(v87);
      OUTLINED_FUNCTION_20_8();
      v89 = (*(v88 + 272))();

      v90 = RecentsCollectionViewCollator.linkCallItems(combining:with:)(v158, v89);

      RecentsCollectionViewCollator.activeCallItems()();
      specialized Array.append<A>(contentsOf:)(v91);
      *(v86 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedJunkItems) = v85;

      *(v86 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedRequestItems) = v161;

      *(v86 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedMissedItems) = v159;

      *(v86 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedVoicemailItems) = v162;

      *(v86 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedVideomailItems) = v70;

      *(v86 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedDefaultItems) = v90;

      v160 = *(v161 + 16);

      v92 = v162;
      v93 = 0;
      v94 = *(v162 + 16);
      v95 = MEMORY[0x1E69E7CC0];
      while (v94 != v93)
      {
        if (v93 >= *(v92 + 16))
        {
          goto LABEL_89;
        }

        v90 = v0[34];
        v69 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        OUTLINED_FUNCTION_14_45();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v96, v90, v97);
        OUTLINED_FUNCTION_15_43();
        v98 = OUTLINED_FUNCTION_76();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v98, v99, v100);
        swift_getEnumCaseMultiPayload();
        OUTLINED_FUNCTION_67_10();
        if (v101)
        {
          OUTLINED_FUNCTION_4_128();
LABEL_60:
          outlined destroy of RecentsCallItemType(v108, v109);
LABEL_61:
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v110, v111, v112);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_14_58();
          }

          OUTLINED_FUNCTION_45_23();
          if (v101)
          {
            OUTLINED_FUNCTION_10_69(v113);
            OUTLINED_FUNCTION_53_15();
          }

          ++v93;
          *(v95 + 16) = v90;
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v114, v115, v116);
          v92 = v162;
        }

        else
        {
          v102 = v0[26];
          OUTLINED_FUNCTION_3_135();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v103, v102, v104);
          v105 = OUTLINED_FUNCTION_43_19();
          v90 = v0[26];
          if (!v105)
          {
            OUTLINED_FUNCTION_2_145();
            v108 = v90;
            goto LABEL_60;
          }

          v106 = [v105 isRead];
          OUTLINED_FUNCTION_2_145();
          outlined destroy of RecentsCallItemType(v90, v107);
          if ((v106 & 1) == 0)
          {
            goto LABEL_61;
          }

          OUTLINED_FUNCTION_6_99(v0[34]);
          ++v93;
          v92 = v162;
        }
      }

      v163 = *(v95 + 16);

      v117 = 0;
      v118 = v169;
      v119 = *(v169 + 16);
      v120 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        while (1)
        {
          if (v119 == v117)
          {
            OUTLINED_FUNCTION_23_49();
            OUTLINED_FUNCTION_27_44(v143);

            v144 = swift_allocObject();
            *(v144 + 16) = v119;
            *(v144 + 24) = v160;
            OUTLINED_FUNCTION_25_43(v144, v163);
            v0[2] = MEMORY[0x1E69E9820];
            OUTLINED_FUNCTION_26_42(COERCE_DOUBLE(1107296256));
            v0[4] = v145;
            v0[5] = &block_descriptor_160;
            v146 = _Block_copy(v93);
            v147 = v119;
            outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v34, v69);
            static DispatchQoS.unspecified.getter();
            v0[8] = MEMORY[0x1E69E7CC0];
            OUTLINED_FUNCTION_9_91();
            _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(v148, v149, MEMORY[0x1E69E7F70]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
            OUTLINED_FUNCTION_3_8();
            v152 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v150, &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, v151);
            OUTLINED_FUNCTION_36_30(v152);
            OUTLINED_FUNCTION_51_18();
            _Block_release(v146);
            v153 = OUTLINED_FUNCTION_59_11();
            v154(v153);
            (*(v157 + 8))();

            OUTLINED_FUNCTION_13();
            OUTLINED_FUNCTION_69_8();

            __asm { BRAA            X1, X16 }
          }

          if (v117 >= *(v118 + 16))
          {
            goto LABEL_90;
          }

          OUTLINED_FUNCTION_64_13();
          v93 = (v122 & ~v121);
          v69 = *(v34 + 72);
          OUTLINED_FUNCTION_14_45();
          _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v123, v90, v124);
          OUTLINED_FUNCTION_15_43();
          v125 = OUTLINED_FUNCTION_76();
          _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v125, v126, v127);
          swift_getEnumCaseMultiPayload();
          OUTLINED_FUNCTION_67_10();
          if (!v101)
          {
            break;
          }

          OUTLINED_FUNCTION_4_128();
LABEL_75:
          outlined destroy of RecentsCallItemType(v134, v135);
LABEL_76:
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v136, v137, v138);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_14_58();
          }

          OUTLINED_FUNCTION_45_23();
          if (v101)
          {
            OUTLINED_FUNCTION_10_69(v139);
            OUTLINED_FUNCTION_53_15();
          }

          ++v117;
          *(v120 + 16) = v90;
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v140, v141, v142);
          v118 = v169;
        }

        v128 = v0[25];
        OUTLINED_FUNCTION_3_135();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v129, v128, v130);
        v131 = OUTLINED_FUNCTION_43_19();
        v90 = v0[25];
        if (!v131)
        {
          OUTLINED_FUNCTION_2_145();
          v134 = v90;
          goto LABEL_75;
        }

        v132 = [v131 isRead];
        OUTLINED_FUNCTION_2_145();
        outlined destroy of RecentsCallItemType(v90, v133);
        if ((v132 & 1) == 0)
        {
          goto LABEL_76;
        }

        OUTLINED_FUNCTION_6_99(v0[32]);
        ++v117;
        v118 = v169;
      }
    }

    if (v1 >= *(v3 + 16))
    {
      break;
    }

    v4 = v0[44];
    OUTLINED_FUNCTION_14_45();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v5, v4, v6);
    RequestsHandler.isRequestItem(_:)();
    if (v7)
    {
      OUTLINED_FUNCTION_0_182();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v8, v9, v10);
      v11 = v161;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_14_58();
        v11 = v161;
      }

      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      if (v13 >= v12 >> 1)
      {
        OUTLINED_FUNCTION_10_69(v12);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v11 = v161;
      }

      ++v1;
      *(v11 + 16) = v13 + 1;
      v161 = v11;
      OUTLINED_FUNCTION_0_182();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v14, v15, v16);
    }

    else
    {
      OUTLINED_FUNCTION_6_99(v0[44]);
      ++v1;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
}

uint64_t closure #1 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(void *a1)
{
  OUTLINED_FUNCTION_63_1(a1);
  v1 = OUTLINED_FUNCTION_4_38();
  return v2(v1) & 1;
}

uint64_t closure #2 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = OUTLINED_FUNCTION_62_0();
  if (v2(v1))
  {
    v3 = OUTLINED_FUNCTION_44_0();
    __swift_project_boxed_opaque_existential_1(v3, v4);
    v5 = OUTLINED_FUNCTION_62_0();
    v7 = v6(v5) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL closure #3 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(void *a1)
{
  OUTLINED_FUNCTION_63_1(a1);
  v1 = OUTLINED_FUNCTION_4_38();
  return (v2(v1) & 1) == 0;
}

uint64_t closure #4 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(void *a1)
{
  OUTLINED_FUNCTION_63_1(a1);
  v1 = OUTLINED_FUNCTION_4_38();
  return v2(v1) & 1;
}

uint64_t closure #5 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(void *a1)
{
  OUTLINED_FUNCTION_63_1(a1);
  v1 = OUTLINED_FUNCTION_4_38();
  return v2(v1) & 1;
}

uint64_t closure #7 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  RequestsHandler.updateCache(with:shouldRequeryCached:_:)();
}

uint64_t RecentsCollectionViewCollator.linkCallItems(combining:with:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecentsCollectionViewCollator(0);
  specialized _arrayForceCast<A, B>(_:)(a1);
  v9 = v8;
  specialized _arrayForceCast<A, B>(_:)(a2);
  v11 = v10;
  static Date.now.getter();
  v16 = 0;
  static RecentsCollectionViewCollator.combinables(combining:with:now:using:combiningType:)(v9, v11, v7, closure #1 in RecentsCollectionViewCollator.linkCallItems(combining:with:), 0, &v16);

  (*(v5 + 8))(v7, v4);
  specialized _arrayConditionalCast<A, B>(_:)();
  v13 = v12;

  if (v13)
  {
    return v13;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

double closure #15 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v18[3] = a8;
  v12 = type metadata accessor for FilterMenuViewModel.Action();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator__requestCount) = a2;
  RecentsCollectionViewCollator._requestCount.didset(&OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentRequestCount, &OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator__requestCount);
  *(a1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator__voicemailCount) = a3;
  RecentsCollectionViewCollator._requestCount.didset(&OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentVoicemailCount, &OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator__voicemailCount);
  *(a1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator__videomailCount) = a4;
  v16 = RecentsCollectionViewCollator._requestCount.didset(&OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_currentVideomailCount, &OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator__videomailCount);
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x210))(v16);
  RecentsCollectionViewCollator.items(for:)();
  (*(v13 + 8))(v15, v12);
  RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:)();

  return result;
}

uint64_t RecentsCollectionViewCollator.items(for:)()
{
  type metadata accessor for FilterMenuViewModel.Action();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v4 = OUTLINED_FUNCTION_62_0();
  v5(v4);
  v6 = OUTLINED_FUNCTION_45_1();
  v8 = v7(v6);
  if (v8 == *MEMORY[0x1E6995A78])
  {
    v9 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedMissedItems;
  }

  else if (v8 == *MEMORY[0x1E6995AA0])
  {
    v9 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedVoicemailItems;
  }

  else if (v8 == *MEMORY[0x1E6995A98])
  {
    v9 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedVideomailItems;
  }

  else if (v8 == *MEMORY[0x1E6995A90])
  {
    v9 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedRequestItems;
  }

  else
  {
    if (v8 != *MEMORY[0x1E6995A68])
    {
      v10 = *(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedDefaultItems);
      v12 = *(v2 + 8);

      v13 = OUTLINED_FUNCTION_45_1();
      v12(v13);
      return v10;
    }

    v9 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_cachedJunkItems;
  }

  v10 = *(v0 + v9);

  return v10;
}

void RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  LODWORD(v3) = v2;
  v87 = v4;
  v89 = v5;
  v91 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v83[-v11];
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit28RecentsCollectionViewSectionOAD0H8CallItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit28RecentsCollectionViewSectionOAD0H8CallItemVGMR);
  OUTLINED_FUNCTION_1();
  v86 = v12;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v83[-v14];
  v96 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  *&v92 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v88 = (v18 - v17);
  v19 = type metadata accessor for FilterMenuViewModel.Action();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v83[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v83[-v26];
  if (one-time initialization token for recents != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = __swift_project_value_buffer(v28, &static Log.recents);

  v90 = v29;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v93 = v8;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v84 = v3;
    v3 = v34;
    v98 = v34;
    *v33 = 136315650;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, 0x80000001BC513F70, &v98);
    *(v33 + 12) = 2048;
    *(v33 + 14) = *(v8 + 16);

    *(v33 + 22) = 1024;
    *(v33 + 24) = v91 & 1;
    _os_log_impl(&dword_1BBC58000, v30, v31, "%s: %ld call items, animate: %{BOOL}d", v33, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    LOBYTE(v3) = v84;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  v36 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x210))(v35);
  (*(v21 + 104))(v24, *MEMORY[0x1E6995A70], v19);
  v37 = specialized == infix<A>(_:_:)(v27, v24);
  v38 = *(v21 + 8);
  v38(v24, v19);
  v38(v27, v19);
  if (v37)
  {
    v39 = *(v1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_suggestionFetcher);
    v40 = v36;
    v41 = *((*v36 & *v39) + 0x130);
    v42 = v39;
    v43 = v41();
  }

  else
  {
    v40 = v36;
    v43 = 0;
  }

  v44 = v93;
  v45 = v43;
  specialized _arrayForceCast<A, B>(_:)(v44);
  RecentsCollectionViewCollator.upcomingSectionItemLimit.getter();
  v46 = v88;
  Date.init()();
  static RecentsCollectionViewModel.sections(from:now:upcomingSectionItemLimit:suggestedContact:)();
  v48 = v47;

  (*(v92 + 8))(v46, v96);
  v49 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_model;
  v97 = *(v1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_model);
  v98 = v48;

  v50 = static RecentsCollectionViewModel.== infix(_:_:)(&v98, &v97);

  if ((v50 & 1) == 0 || (v3 & 1) != 0 || (*(v1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_shouldPresentRequestsTip) & 1) != 0 || ((*((*v40 & *v1) + 0x180))(v51) & 1) == 0)
  {
    v88 = v45;

    v55 = v1;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    v58 = os_log_type_enabled(v56, v57);
    v96 = v55;
    if (v58)
    {
      v59 = swift_slowAlloc();
      *v59 = 67109376;
      *(v59 + 4) = (*((*v40 & *v96) + 0x180))() & 1;

      *(v59 + 8) = 2048;
      *(v59 + 10) = *(v44 + 16);

      _os_log_impl(&dword_1BBC58000, v56, v57, "reloadData hasFinishedFirstLoad: %{BOOL}d. call items count: %ld", v59, 0x12u);
      v55 = v96;
      OUTLINED_FUNCTION_27();
    }

    else
    {
    }

    *(v1 + v49) = v48;

    type metadata accessor for RecentsCallItem(0);
    lazy protocol witness table accessor for type RecentsCollectionViewSection and conformance RecentsCollectionViewSection();
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type RecentsCallItem and conformance RecentsCallItem, type metadata accessor for RecentsCallItem, &protocol conformance descriptor for RecentsCallItem);
    NSDiffableDataSourceSnapshot.init()();
    v60 = *(v55 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_sensitiveContentTipViewModel);
    if (v60)
    {
      v61 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v85, 1, 1, v61);
      type metadata accessor for MainActor();
      swift_retain_n();

      v62 = static MainActor.shared.getter();
      OUTLINED_FUNCTION_109();
      v63 = swift_allocObject();
      v64 = MEMORY[0x1E69E85E0];
      v63[2] = v62;
      v63[3] = v64;
      v63[4] = v60;
      v63[5] = v44;
      type metadata completion function for SyncedScreeningAlphaGradientView();
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

      NSDiffableDataSourceSnapshot.appendSections(_:)(&outlined read-only object #0 of RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:));
    }

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for shared);
    }

    if ((Features.isFaceTimeLaunchPageEnabled.getter() & 1) == 0)
    {
      NSDiffableDataSourceSnapshot.appendSections(_:)(&outlined read-only object #1 of RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:));
    }

    if (*(v55 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_shouldPresentRequestsTip) == 1)
    {
      *(v55 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_shouldPresentRequestsTip) = 0;
      *(v55 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_isShowingRequestsTip) = 1;
    }

    if (*(v55 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_isShowingRequestsTip) == 1)
    {
      NSDiffableDataSourceSnapshot.appendSections(_:)(&outlined read-only object #2 of RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:));
    }

    v90 = static RecentsCollectionViewSection.callItemCases.getter();
    v65 = *(v90 + 16);
    if (v65)
    {
      v66 = (v90 + 32);
      v67 = &_s15ConversationKit32RecentsCollectionViewSectionable_pMd;
      v92 = xmmword_1BC4BA940;
      do
      {
        v69 = *v66++;
        v68 = v69;
        if (*(*(v1 + v49) + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v68);
          if (v70)
          {

            specialized _arrayConditionalCast<A, B>(_:)();
            v72 = v71;

            if (v72)
            {
              if (*(v72 + 16))
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit28RecentsCollectionViewSectionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit28RecentsCollectionViewSectionOGMR);
                v73 = swift_allocObject();
                v74 = v67;
                *(v73 + 16) = v92;
                *(v73 + 32) = v68;
                NSDiffableDataSourceSnapshot.appendSections(_:)(v73);

                OUTLINED_FUNCTION_24();
                v75 = swift_allocObject();
                v76 = v96;
                *(v75 + 16) = v96;
                *(v75 + 24) = v72;
                v77 = v76;

                specialized NSDiffableDataSourceSnapshot.appendItemsRemovingDupes(_:toSection:onDupe:)(v78, v68, partial apply for closure #2 in RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:), v75);
                v67 = v74;
              }
            }
          }
        }

        --v65;
      }

      while (v65);
    }

    OUTLINED_FUNCTION_37_0();
    v79 = swift_allocObject();
    v80 = v89;
    v79[2] = v93;
    v79[3] = v80;
    v81 = v87;
    v79[4] = v87;

    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v80, v81);
    v82 = v94;
    RecentsCollectionViewCollator.apply(_:animatingDifferences:completion:)();

    (*(v86 + 8))(v82, v95);
  }

  else
  {

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1BBC58000, v52, v53, "Skipping reloadData because model has not changed", v54, 2u);
      OUTLINED_FUNCTION_27();
    }

    if (v89)
    {
      v89();
    }
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:), v7, v6);
}

uint64_t closure #1 in RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:)()
{
  v1._rawValue = *(v0 + 24);

  SensitiveContentRecentsTipViewModel.update(with:)(v1);
  OUTLINED_FUNCTION_13();

  return v2();
}

void closure #2 in RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:)(uint64_t a1, void *a2, uint64_t a3)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.conversationKit);
  v6 = a2;

  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 138412546;
    *(v8 + 4) = v6;
    *v9 = v6;
    *(v8 + 12) = 2080;
    v11 = type metadata accessor for RecentsCallItem(0);
    v12 = v6;
    v13 = MEMORY[0x1BFB20D10](a3, v11);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1BBC58000, oslog, v7, "When updating %@ found dupes in items %s", v8, 0x16u);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1BFB23DF0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFB23DF0](v10, -1, -1);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
  }
}

void closure #3 in RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:)(uint64_t a1, void (*a2)(void))
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationKit);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v5, v6))
  {

    if (!a2)
    {
      return;
    }

    goto LABEL_7;
  }

  v7 = swift_slowAlloc();
  *v7 = 134217984;
  *(v7 + 4) = *(a1 + 16);

  _os_log_impl(&dword_1BBC58000, v5, v6, "reloadData done. call items count: %ld", v7, 0xCu);
  MEMORY[0x1BFB23DF0](v7, -1, -1);

  if (a2)
  {
LABEL_7:
    a2();
  }
}

void RecentsCollectionViewCollator.deleteCallItems(_:completion:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_79_0();
  v25 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_109();
  v16 = swift_allocObject();
  v16[2] = v0;
  v16[3] = v8;
  v16[4] = v6;
  v16[5] = v4;
  v26[4] = partial apply for closure #1 in RecentsCollectionViewCollator.deleteCallItems(_:completion:);
  v26[5] = v16;
  OUTLINED_FUNCTION_5_73();
  OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
  v26[2] = v17;
  v26[3] = &block_descriptor_54_0;
  v18 = _Block_copy(v26);
  v19 = v0;

  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v6, v4);
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_9_91();
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(v20, v21, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v22, &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, v23);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v24);
  _Block_release(v18);
  (*(v11 + 8))(v1, v9);
  (*(v14 + 8))(v2, v25);

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in RecentsCollectionViewCollator.deleteCallItems(_:completion:)(uint64_t a1, Swift::OpaquePointer a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit28RecentsCollectionViewSectionOAD0H8CallItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit28RecentsCollectionViewSectionOAD0H8CallItemVGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  NSDiffableDataSourceSnapshot.deleteItems(_:)(a2);
  RecentsCollectionViewCollator.apply(_:animatingDifferences:completion:)();
  return (*(v4 + 8))(v6, v3);
}

void RecentsCollectionViewCollator.deleteCallFilteringTip(completion:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_79_0();
  v23 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_37_0();
  v14 = swift_allocObject();
  v14[2] = v0;
  v14[3] = v6;
  v14[4] = v4;
  v24[4] = partial apply for closure #1 in RecentsCollectionViewCollator.deleteCallFilteringTip(completion:);
  v24[5] = v14;
  OUTLINED_FUNCTION_5_73();
  OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
  v24[2] = v15;
  v24[3] = &block_descriptor_60;
  v16 = _Block_copy(v24);
  v17 = v0;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v6, v4);
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_9_91();
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(v18, v19, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v20, &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, v21);
  OUTLINED_FUNCTION_68_6();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v22);
  _Block_release(v16);
  (*(v9 + 8))(v1, v7);
  (*(v12 + 8))(v2, v23);

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in RecentsCollectionViewCollator.deleteCallFilteringTip(completion:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit28RecentsCollectionViewSectionOAD0H8CallItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit28RecentsCollectionViewSectionOAD0H8CallItemVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  NSDiffableDataSourceSnapshot.deleteSections(_:)(&outlined read-only object #0 of closure #1 in RecentsCollectionViewCollator.deleteCallFilteringTip(completion:));
  *(a1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_isShowingRequestsTip) = 0;
  RecentsCollectionViewCollator.apply(_:animatingDifferences:completion:)();
  return (*(v3 + 8))(v5, v2);
}

void RecentsCollectionViewCollator.activeCallItems()()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_8();
  v4 = v3 - v2;
  v5 = [*(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_conversationManager) activeConversations];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversation and conformance NSObject, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = MEMORY[0x1E69E7CC0];
  if ((v6 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v7 = v36;
    v8 = v37;
    v9 = v38;
    v10 = v39;
    v11 = v40;
  }

  else
  {
    v10 = 0;
    v12 = -1 << *(v6 + 32);
    v8 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);
    v7 = v6;
  }

  v15 = (v9 + 64) >> 6;
  while (1)
  {
    if (v7 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v19 = v34, v18 = v11, !v34))
      {
LABEL_29:
        outlined consume of Set<TUHandle>.Iterator._Variant(v7);
        v24 = specialized Array.count.getter();
        v25 = 0;
        v26 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v24 == v25)
          {

            OUTLINED_FUNCTION_30_0();
            return;
          }

          if ((v35 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1BFB22010](v25, v35);
          }

          else
          {
            if (v25 >= *(v35 + 16))
            {
              goto LABEL_44;
            }

            v27 = *(v35 + 8 * v25 + 32);
          }

          if (__OFADD__(v25, 1))
          {
            break;
          }

          RecentsCallItem.init(conversation:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v26 = v31;
          }

          v28 = *(v26 + 16);
          if (v28 >= *(v26 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v26 = v32;
          }

          *(v26 + 16) = v28 + 1;
          OUTLINED_FUNCTION_40_3();
          OUTLINED_FUNCTION_0_182();
          _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v4, v29, v30);
          ++v25;
        }

        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      goto LABEL_17;
    }

    v16 = v10;
    v17 = v11;
    if (!v11)
    {
      break;
    }

LABEL_13:
    v18 = (v17 - 1) & v17;
    v19 = *(*(v7 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v19)
    {
      goto LABEL_29;
    }

LABEL_17:
    if ([v19 state] || objc_msgSend(v19, sel_isOneToOneModeEnabled))
    {

      v11 = v18;
    }

    else
    {
      v33 = v7;
      v20 = [v19 link];
      if (v20)
      {

LABEL_26:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_27;
      }

      v21 = [v19 mergedRemoteMembers];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
      v22 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = __CocoaSet.count.getter();
      }

      else
      {
        v23 = *(v22 + 16);
      }

      if (v23 > 0)
      {
        goto LABEL_26;
      }

LABEL_27:
      v11 = v18;
      v7 = v33;
    }
  }

  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      goto LABEL_29;
    }

    v17 = *(v8 + 8 * v10);
    ++v16;
    if (v17)
    {
      goto LABEL_13;
    }
  }

LABEL_45:
  __break(1u);
}

void closure #1 in RecentsCollectionViewCollator.registerRecentCallsDidChangeObserver()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x408))(0, 0);
  }
}

void RecentsCollectionViewCollator.deregisterRecentCallsDidChangeObserver()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_recentCallsDidChangeObserver;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_recentCallsDidChangeObserver);
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];

    swift_unknownObjectRelease();
    *(v0 + v1) = 0;

    swift_unknownObjectRelease();
  }
}

id RecentsCollectionViewCollator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Int CombiningType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

uint64_t closure #1 in RecentsCollectionViewCollator.linkCallItems(combining:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30[-v9 - 8];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30[-v12 - 8];
  v14 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30[-v18 - 8];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30[-v21 - 8];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30[-v24 - 8];
  outlined init with copy of IDSLookupManager(a1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15GroupCombinable_pMd, &_s15ConversationKit15GroupCombinable_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    v27 = v13;
LABEL_7:
    result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v13, v25, type metadata accessor for RecentsCallItem);
  outlined init with copy of IDSLookupManager(v29, v30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v14);
    outlined destroy of RecentsCallItemType(v25, type metadata accessor for RecentsCallItem);
    v27 = v10;
    goto LABEL_7;
  }

  __swift_storeEnumTagSinglePayload(v10, 0, 1, v14);
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v10, v22, type metadata accessor for RecentsCallItem);
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v25, v19, type metadata accessor for RecentsCallItem);
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v22, v16, type metadata accessor for RecentsCallItem);
  RecentsCallItem.init(recentItem:linkItem:)();
  if (__swift_getEnumTagSinglePayload(v7, 1, v14) == 1)
  {
    outlined destroy of RecentsCallItemType(v22, type metadata accessor for RecentsCallItem);
    outlined destroy of RecentsCallItemType(v25, type metadata accessor for RecentsCallItem);
    result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
  }

  else
  {
    *(a3 + 24) = v14;
    *(a3 + 32) = &protocol witness table for RecentsCallItem;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v7, boxed_opaque_existential_1, type metadata accessor for RecentsCallItem);
    outlined destroy of RecentsCallItemType(v22, type metadata accessor for RecentsCallItem);
    return outlined destroy of RecentsCallItemType(v25, type metadata accessor for RecentsCallItem);
  }

  return result;
}

void closure #2 in static RecentsCollectionViewCollator.combinables(combining:with:now:using:combiningType:)(void *a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a4;
  v28 = a6;
  v29 = a7;
  v27 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  LOBYTE(v32) = a2 & 1;
  (*(v17 + 16))(&v32, v18, v17);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v19 = *(*a3 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v19);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v20 = v30;
    v21 = specialized Dictionary.subscript.getter();
    if (v21)
    {
      v22 = v21;
      if (*(v21 + 16))
      {
        v32 = MEMORY[0x1E69E7CC0];
        MEMORY[0x1EEE9AC00](v21);
        v23 = v28;
        *(&v27 - 6) = v27;
        *(&v27 - 5) = v23;
        *(&v27 - 4) = a1;
        *(&v27 - 3) = a3;
        *(&v27 - 2) = &v32;
        *(&v27 - 1) = v29;
        specialized Sequence.forEach(_:)(partial apply for closure #1 in closure #2 in static RecentsCollectionViewCollator.combinables(combining:with:now:using:combiningType:), (&v27 - 8), v22);

        v24 = v32;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *v20;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v16, isUniquelyReferenced_nonNull_native);
        *v20 = v31;
        (*(v14 + 8))(v16, v13);

        return;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v19 = *(*a3 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v19);
    (*(v14 + 8))(v16, v13);
  }

  v26 = *a3;
  *(v26 + 16) = v19 + 1;
  outlined init with copy of IDSLookupManager(a1, v26 + 40 * v19 + 32);
}

uint64_t closure #1 in closure #2 in static RecentsCollectionViewCollator.combinables(combining:with:now:using:combiningType:)(uint64_t a1, void (*a2)(__int128 *__return_ptr, uint64_t, void *), uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  a2(&v26, a1, a4);
  if (v27)
  {
    outlined init with take of ImageName(&v26, v28);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v12 = *(*a6 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v12);
    v13 = *a6;
    *(v13 + 16) = v12 + 1;
    outlined init with copy of IDSLookupManager(v28, v13 + 40 * v12 + 32);
    v14 = a4[3];
    v15 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v14);
    v16 = (*(v15 + 24))(a7, v14, v15);
    if ((v16 & 1) == 0)
    {
      return __swift_destroy_boxed_opaque_existential_1(v28);
    }

    MEMORY[0x1EEE9AC00](v16);

    v17 = specialized Sequence.contains(where:)();

    if (v17)
    {
      return __swift_destroy_boxed_opaque_existential_1(v28);
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v24 = *(*a5 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v24);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v25 = *a5;
    *(v25 + 16) = v24 + 1;
    v23 = v25 + 40 * v24;
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v26, &_s15ConversationKit15GroupCombinable_pSgMd, &_s15ConversationKit15GroupCombinable_pSgMR);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v19 = *(*a5 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v19);
    v20 = *a5;
    *(v20 + 16) = v19 + 1;
    outlined init with copy of IDSLookupManager(a1, v20 + 40 * v19 + 32);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v21 = *(*a5 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v21);
    v22 = *a5;
    *(v22 + 16) = v21 + 1;
    v23 = v22 + 40 * v21;
  }

  return outlined init with copy of IDSLookupManager(a4, v23 + 32);
}

uint64_t closure #1 in implicit closure #1 in closure #1 in closure #2 in static RecentsCollectionViewCollator.combinables(combining:with:now:using:combiningType:)(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == (*(v9 + 8))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Void __swiftcall RecentsCollectionViewCollator.suggestionFetcherDidFetchSuggestion()()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  if (Features.isFaceTimeLaunchPageEnabled.getter())
  {
    v0 = OUTLINED_FUNCTION_66_9();

    v1(v0);
  }
}

uint64_t RecentsCollectionViewCollator.conversationManager(_:addedActiveConversation:)(uint64_t a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  static os_log_type_t.default.getter();
  v1 = OUTLINED_FUNCTION_45_1();
  os_log(_:dso:log:type:_:)(v1);
  v2 = OUTLINED_FUNCTION_66_9();

  return v3(v2);
}

uint64_t RecentsCollectionViewCollator.conversationManager(_:didChangeActivatedLinks:)(uint64_t a1, uint64_t a2)
{
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x168))(a1);
  OUTLINED_FUNCTION_20_8();
  (*(v4 + 336))(a2);
}

uint64_t RecentsCollectionViewCollator.conversationManager(_:linkChangedFor:)(uint64_t a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v2 = static OS_os_log.conversationKit;
  v3 = static os_log_type_t.default.getter();
  v4 = os_log(_:dso:log:type:_:)("conversationManager linkChangedFor", 34, 2, &dword_1BBC58000, v2, v3, MEMORY[0x1E69E7CC0]);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x168))(v4);
  OUTLINED_FUNCTION_20_8();
  (*(v5 + 344))();
}

void RecentsCollectionViewCollator.recentsLinkControllerRefreshedLinks(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_29();
  v14 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_79_0();
  v18 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v22 = static OS_os_log.conversationKit;
  v23 = static os_log_type_t.default.getter();
  v24 = MEMORY[0x1E69E7CC0];
  os_log(_:dso:log:type:_:)("recentsLinkController recentsLinkControllerRefreshedLinks", 57, 2, &dword_1BBC58000, v22, v23, MEMORY[0x1E69E7CC0]);
  if ([objc_opt_self() isMainThread])
  {
    OUTLINED_FUNCTION_66_9();
    OUTLINED_FUNCTION_30_0();

    v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v40 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_20();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41[4] = partial apply for closure #1 in RecentsCollectionViewCollator.recentsLinkControllerRefreshedLinks(_:);
    v41[5] = v33;
    OUTLINED_FUNCTION_5_73();
    v41[1] = 1107296256;
    v41[2] = thunk for @escaping @callee_guaranteed () -> ();
    v41[3] = &block_descriptor_64;
    v34 = _Block_copy(v41);

    static DispatchQoS.unspecified.getter();
    v41[0] = v24;
    OUTLINED_FUNCTION_9_91();
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(v35, v36, MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    OUTLINED_FUNCTION_3_8();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v37, &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, v38);
    OUTLINED_FUNCTION_68_6();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v39 = OUTLINED_FUNCTION_117();
    MEMORY[0x1BFB215C0](v39);
    _Block_release(v34);

    (*(v16 + 8))(v12, v14);
    (*(v20 + 8))(v13, v18);
    OUTLINED_FUNCTION_30_0();
  }
}

void closure #1 in RecentsCollectionViewCollator.recentsLinkControllerRefreshedLinks(_:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x408))(0, 0);
  }
}

uint64_t partial apply for closure #1 in RecentsCollectionViewCollator.videoMessageCallItem(withUUID:)()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_40_3();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return closure #1 in RecentsCollectionViewCollator.videoMessageCallItem(withUUID:)(v2, v3);
}

uint64_t objectdestroy_34Tm()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type CombiningType and conformance CombiningType()
{
  result = lazy protocol witness table cache variable for type CombiningType and conformance CombiningType;
  if (!lazy protocol witness table cache variable for type CombiningType and conformance CombiningType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CombiningType and conformance CombiningType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CombiningType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t partial apply for closure #1 in RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in HUDActivityService.startActivity(with:);

  return closure #1 in RecentsCollectionViewCollator.updateDataSource(_:animate:completion:contactDidChange:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(uint64_t a1)
{
  v4 = *(v1 + 24);
  v12 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 41);
  v8 = *(v1 + 42);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in HUDActivityService.stopActivity(reason:);

  return closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t partial apply for closure #1 in closure #7 in closure #1 in RecentsCollectionViewCollator.doReloadData(completion:contactDidChange:acceptedIntroductionsDidChange:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  OUTLINED_FUNCTION_22(v0);

  return closure #1 in closure #1 in closure #1 in RecentsListViewController.observeTip<A>(_:)();
}

uint64_t outlined assign with take of RecentsCallItem?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PlaceholderCall and conformance PlaceholderCall()
{
  result = lazy protocol witness table cache variable for type PlaceholderCall and conformance PlaceholderCall;
  if (!lazy protocol witness table cache variable for type PlaceholderCall and conformance PlaceholderCall)
  {
    type metadata accessor for PlaceholderCall(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaceholderCall and conformance PlaceholderCall);
  }

  return result;
}

uint64_t PlaceholderBasicCall.uniqueProxyIdentifierUUID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC15ConversationKit15PlaceholderCall_conversationUUID;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t PlaceholderBasicCall.status.getter(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t))
{
  v2 = lazy protocol witness table accessor for type PlaceholderCall and conformance PlaceholderCall();

  return a2(v3, v2);
}

uint64_t PlaceholderBasicCall.activeRemoteParticipant.getter@<X0>(uint64_t a1@<X8>)
{
  Participant.init()();
  v2 = type metadata accessor for Participant();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

uint64_t PlaceholderBasicCall.underlyingObject.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for PlaceholderCall(0);
  *a2 = a1;
}

unint64_t PlaceholderBasicCall.provider.getter@<X0>(void *a1@<X8>)
{
  v2 = PlaceholderCall.provider.getter();
  a1[3] = &type metadata for CallCenterCallProvider;
  result = lazy protocol witness table accessor for type CallCenterCallProvider and conformance CallCenterCallProvider();
  a1[4] = result;
  *a1 = v2;
  return result;
}

uint64_t PlaceholderBasicCall.localSenderIdentity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SenderIdentity();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

id PlaceholderBasicCall.contactStoreConfiguration.getter()
{
  v0 = objc_opt_self();
  v1 = PlaceholderCall.conversation.getter();
  v2 = [v0 tu:v1 contactStoreConfigurationForConversation:?];

  return v2;
}

uint64_t ConversationControlsMoreMenuHandle.__allocating_init()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69D42A0]);
  v1 = @nonobjc SBSRemoteAlertDefinition.init(serviceName:viewControllerClassName:)(0xD000000000000017, 0x80000001BC506380, 0xD00000000000002DLL, 0x80000001BC514040);
  v2 = [objc_opt_self() newHandleWithDefinition:v1 configurationContext:0];

  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t ConversationControlsMoreMenuHandle.__allocating_init(handle:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ConversationControlsMoreMenuHandle.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id @nonobjc SBSRemoteAlertDefinition.init(serviceName:viewControllerClassName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1BFB209B0](a1);

  v8 = MEMORY[0x1BFB209B0](a3, a4);

  v9 = [v4 initWithServiceName:v7 viewControllerClassName:v8];

  return v9;
}

id TULinkShareItem.linkMetadata.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - v3;
  v5 = [v0 tuConversationLink];
  v6 = [v5 URL];

  if (v6)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = type metadata accessor for URL();
    v8 = 0;
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v8, 1, v7);
  v9 = outlined bridged method (pb) of @objc SWCollaborationHighlight.title.getter(v0);
  v11 = TULinkShareItem.linkMetadata(forURL:withTitle:)(v4, v9, v10);

  outlined destroy of URL?(v4);
  return v11;
}

void TULinkShareItem.activityViewControllerPlaceholderItem(_:)(uint64_t *a1@<X8>)
{
  v3 = [v1 placeholder];
  a1[3] = type metadata accessor for URL();
  __swift_allocate_boxed_opaque_existential_1(a1);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

id @objc TULinkShareItem.activityViewControllerPlaceholderItem(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  TULinkShareItem.activityViewControllerPlaceholderItem(_:)(v8);

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v8);

  return v6;
}

uint64_t TULinkShareItem.activityViewController(_:itemForActivityType:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  v11 = [v2 tuConversationLink];
  v12 = [v11 URL];

  if (v12)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = type metadata accessor for URL();
    v14 = 0;
  }

  else
  {
    v13 = type metadata accessor for URL();
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v14, 1, v13);
  outlined init with take of URL?(v6, v10);
  type metadata accessor for URL();
  if (__swift_getEnumTagSinglePayload(v10, 1, v13) == 1)
  {
    result = outlined destroy of URL?(v10);
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (*(*(v13 - 8) + 32))(boxed_opaque_existential_1, v10, v13);
  }

  return result;
}

id @objc TULinkShareItem.activityViewController(_:itemForActivityType:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  TULinkShareItem.activityViewController(_:itemForActivityType:)(v17);

  v9 = v18;
  if (v18)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(v9 - 8);
    v12 = MEMORY[0x1EEE9AC00](v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

Swift::String __swiftcall TULinkShareItem.activityViewController(_:subjectForActivityType:)(UIActivityViewController *_, UIActivityType_optional subjectForActivityType)
{
  v3 = outlined bridged method (ob) of @objc TUConversationLink.linkName.getter([v2 tuConversationLink]);
  if (!v4)
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id @objc TULinkShareItem.activityViewController(_:subjectForActivityType:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v10 = TULinkShareItem.activityViewController(_:subjectForActivityType:)(v8, v9);

  v11 = MEMORY[0x1BFB209B0](v10._countAndFlagsBits, v10._object);

  return v11;
}

id @objc TULinkShareItem.activityViewControllerLinkMetadata(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = TULinkShareItem.activityViewControllerLinkMetadata(_:)(v5);

  return v6;
}

id TULinkShareItem.linkMetadata(forURL:withTitle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  outlined init with copy of URL?(a1, v11);
  v13 = type metadata accessor for URL();
  v15 = 0;
  if (__swift_getEnumTagSinglePayload(v11, 1, v13) != 1)
  {
    URL._bridgeToObjectiveC()(v14);
    v15 = v16;
    (*(*(v13 - 8) + 8))(v11, v13);
  }

  [v12 setOriginalURL_];

  outlined init with copy of URL?(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    v18 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v17);
    v18 = v19;
    (*(*(v13 - 8) + 8))(v8, v13);
  }

  [v12 setURL_];

  v20 = [objc_allocWithZone(MEMORY[0x1E696EC50]) init];
  if (a3)
  {
    outlined bridged method (mbgnn) of @objc LPFaceTimeInviteMetadata.title.setter(a2, a3, v20);
  }

  [v12 setSpecialization_];

  return v12;
}

uint64_t TULinkShareItem.dataRepresentation.getter()
{
  v0 = TULinkShareItem.linkMetadata.getter();
  v1 = [v0 dataRepresentation];

  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  return v2;
}

void outlined bridged method (mbgnn) of @objc LPFaceTimeInviteMetadata.title.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0](a1, a2);
  [a3 setTitle_];
}

uint64_t outlined bridged method (ob) of @objc TUConversationLink.linkName.getter(void *a1)
{
  v2 = [a1 linkName];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t View.screenSharingTouchShield(isActive:isCapturingTouch:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5Error_pGSgMd, &_sScTyyts5Error_pGSgMR);
  State.init(wrappedValue:)();
  *v13 = a1;
  *&v13[8] = xmmword_1BC4DF1A0;
  *&v13[24] = v14[0];
  *&v13[40] = a2;
  *&v13[48] = a3;
  v13[56] = a4;

  MEMORY[0x1BFB1FAD0](v13, a5, &type metadata for ScreenSharingTouchShield, a6);
  v14[0] = *v13;
  v14[1] = *&v13[16];
  v15[0] = *&v13[32];
  *(v15 + 9) = *&v13[41];
  return outlined destroy of ScreenSharingTouchShield(v14);
}

uint64_t ScreenSharingTouchShield.isCapturingTouch.getter()
{
  OUTLINED_FUNCTION_2_19();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x1BFB20050](&v2, v0);
  return v2;
}

uint64_t ScreenSharingTouchShield.isCapturingTouch.setter()
{
  OUTLINED_FUNCTION_2_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  return Binding.wrappedValue.setter();
}

void (*ScreenSharingTouchShield.isCapturingTouch.modify(void *a1))(uint64_t *a1)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v3[7] = v4;
  v3[8] = v5;
  v6 = *(v1 + 56);
  *(v3 + 19) = v6;
  v3[6] = v4;
  *v3 = v4;
  v3[1] = v5;
  *(v3 + 16) = v6;
  outlined init with copy of Transaction((v3 + 6), (v3 + 3));

  v3[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x1BFB20050]();
  return ClarityUIDialerView.isPresented.modify;
}

uint64_t ScreenSharingTouchShield.$isCapturingTouch.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t ScreenSharingTouchShield.gesture.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LocalCoordinateSpace();
  MEMORY[0x1EEE9AC00](v2);
  v3 = type metadata accessor for DragGesture();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMd, &_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-v9];
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v11 = swift_allocObject();
  v12 = v1[1];
  v11[1] = *v1;
  v11[2] = v12;
  v11[3] = v1[2];
  *(v11 + 57) = *(v1 + 41);
  outlined init with copy of ScreenSharingTouchShield(v1, v16);
  lazy protocol witness table accessor for type DragGesture and conformance DragGesture(&lazy protocol witness table cache variable for type DragGesture and conformance DragGesture, MEMORY[0x1E697BEA8], MEMORY[0x1E697BEA0]);
  lazy protocol witness table accessor for type DragGesture and conformance DragGesture(&lazy protocol witness table cache variable for type DragGesture.Value and conformance DragGesture.Value, MEMORY[0x1E697BE90], MEMORY[0x1E697BE98]);
  Gesture<>.onChanged(_:)();

  (*(v4 + 8))(v6, v3);
  v13 = swift_allocObject();
  v14 = v1[1];
  v13[1] = *v1;
  v13[2] = v14;
  v13[3] = v1[2];
  *(v13 + 57) = *(v1 + 41);
  outlined init with copy of ScreenSharingTouchShield(v1, v16);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ChangedGesture<DragGesture> and conformance _ChangedGesture<A>, &_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMd, &_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMR, MEMORY[0x1E697E8D0]);
  Gesture.onEnded(_:)();

  return (*(v8 + 8))(v10, v7);
}

uint64_t closure #1 in ScreenSharingTouchShield.gesture.getter(uint64_t a1, uint64_t a2)
{
  v9 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyScTyyts5Error_pGSgGMd, "0J\b");
  State.wrappedValue.getter();
  if (v11)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1BFB21000](v11, MEMORY[0x1E69E7CA8] + 8, v3, MEMORY[0x1E69E7288]);
  }

  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  v6 = *(a2 + 56);
  v11 = v5;
  *&v9 = v5;
  *(&v9 + 1) = v4;
  v10 = v6;
  outlined init with copy of Transaction(&v11, &v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x1BFB20050](&v8);
  if ((v8 & 1) == 0)
  {
    *&v9 = v5;
    *(&v9 + 1) = v4;
    v10 = v6;
    LOBYTE(v8) = 1;
    Binding.wrappedValue.setter();
  }

  outlined destroy of Transaction(&v11);
}

uint64_t closure #2 in ScreenSharingTouchShield.gesture.getter(uint64_t a1, _OWORD *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  outlined init with copy of ScreenSharingTouchShield(a2, v14);
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = a2[1];
  *(v8 + 32) = *a2;
  *(v8 + 48) = v10;
  *(v8 + 64) = a2[2];
  *(v8 + 73) = *(a2 + 41);
  v11 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
  v14[0] = *(a2 + 24);
  v13[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyScTyyts5Error_pGSgGMd, "0J\b");
  return State.wrappedValue.setter();
}

uint64_t closure #1 in closure #2 in ScreenSharingTouchShield.gesture.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in ScreenSharingTouchShield.gesture.getter, v7, v6);
}

uint64_t closure #1 in closure #2 in ScreenSharingTouchShield.gesture.getter()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #2 in ScreenSharingTouchShield.gesture.getter;

  return specialized Clock.sleep(for:tolerance:)();
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = closure #1 in closure #2 in ScreenSharingTouchShield.gesture.getter;
  }

  else
  {
    v8 = closure #1 in closure #2 in ScreenSharingTouchShield.gesture.getter;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

{
  v1 = *(v0 + 40);

  v2 = *(v1 + 40);
  *(v0 + 32) = *(v1 + 56);
  *(v0 + 16) = v2;
  *(v0 + 33) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.wrappedValue.setter();

  v3 = *(v0 + 8);

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ScreenSharingTouchShield.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v32 = type metadata accessor for SensoryFeedback();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit24ScreenSharingTouchShieldVGAA08_OverlayF0VyAA0E0PAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0P0Rd__lFQOyACyAA5ColorVAA01_d5ShapeF0VyAA9RectangleVGG_AA06_EndedP0VyAA08_ChangedP0VyAA04DragP0VGGQo_SgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit24ScreenSharingTouchShieldVGAA08_OverlayF0VyAA0E0PAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0P0Rd__lFQOyACyAA5ColorVAA01_d5ShapeF0VyAA9RectangleVGG_AA06_EndedP0VyAA08_ChangedP0VyAA04DragP0VGGQo_SgGGMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15sensoryFeedback_7trigger9conditionQrAA07SensoryE0V_qd__Sbqd___qd__tctSQRd__lFQOyAA15ModifiedContentVyAA01_c9Modifier_J0Vy15ConversationKit24ScreenSharingTouchShieldVGAA08_OverlayK0VyAcAE7gesture_9includingQrqd___AA11GestureMaskVtAA0U0Rd__lFQOyAJyAA5ColorVAA01_j5ShapeK0VyAA9RectangleVGG_AA06_EndedU0VyAA08_ChangedU0VyAA04DragU0VGGQo_SgGG_SbQo_Md, &_s7SwiftUI4ViewPAAE15sensoryFeedback_7trigger9conditionQrAA07SensoryE0V_qd__Sbqd___qd__tctSQRd__lFQOyAA15ModifiedContentVyAA01_c9Modifier_J0Vy15ConversationKit24ScreenSharingTouchShieldVGAA08_OverlayK0VyAcAE7gesture_9includingQrqd___AA11GestureMaskVtAA0U0Rd__lFQOyAJyAA5ColorVAA01_j5ShapeK0VyAA9RectangleVGG_AA06_EndedU0VyAA08_ChangedU0VyAA04DragU0VGGQo_SgGG_SbQo_MR);
  OUTLINED_FUNCTION_1();
  v33 = v14;
  v34 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  v18 = static Alignment.center.getter();
  v20 = v19;
  v21 = &v13[*(v10 + 36)];
  closure #1 in ScreenSharingTouchShield.body(content:)(v3, v21);
  v22 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA4ViewPAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0H0Rd__lFQOyAA15ModifiedContentVyAA5ColorVAA01_k5ShapeD0VyAA9RectangleVGG_AA06_EndedH0VyAA08_ChangedH0VyAA04DragH0VGGQo_SgGMd, &_s7SwiftUI16_OverlayModifierVyAA4ViewPAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0H0Rd__lFQOyAA15ModifiedContentVyAA5ColorVAA01_k5ShapeD0VyAA9RectangleVGG_AA06_EndedH0VyAA08_ChangedH0VyAA04DragH0VGGQo_SgGMR) + 36));
  *v22 = v18;
  v22[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit24ScreenSharingTouchShieldVGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit24ScreenSharingTouchShieldVGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v23 + 16))(v13, a1);
  static SensoryFeedback.error.getter();
  v36 = *(v3 + 40);
  LOBYTE(v37) = *(v3 + 56);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x1BFB20050](&v39, v24);
  LOBYTE(v36) = v39;
  v25 = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ScreenSharingTouchShield>, _OverlayModifier<(<<opaque return type of View.gesture<A>(_:including:)>>.0)?>> and conformance <> ModifiedContent<A, B>();
  v26 = MEMORY[0x1E69E6370];
  v27 = MEMORY[0x1E69E6388];
  View.sensoryFeedback<A>(_:trigger:condition:)();
  (*(v6 + 8))(v9, v32);
  sub_1BBCFB080(v13);
  LOBYTE(v39) = *v3;
  v28 = swift_allocObject();
  v29 = *(v3 + 16);
  v28[1] = *v3;
  v28[2] = v29;
  v28[3] = *(v3 + 32);
  *(v28 + 57) = *(v3 + 41);
  outlined init with copy of ScreenSharingTouchShield(v3, &v36);
  *&v36 = v10;
  *(&v36 + 1) = v26;
  v37 = v25;
  v38 = v27;
  OUTLINED_FUNCTION_0_183();
  swift_getOpaqueTypeConformance2();
  v30 = v33;
  View.onChange<A>(of:initial:_:)();

  return (*(v34 + 8))(v17, v30);
}

uint64_t closure #1 in ScreenSharingTouchShield.body(content:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_EndedGestureVyAA08_ChangedD0VyAA04DragD0VGGMd, &_s7SwiftUI13_EndedGestureVyAA08_ChangedD0VyAA04DragD0VGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0F0Rd__lFQOyAA15ModifiedContentVyAA5ColorVAA01_I13ShapeModifierVyAA9RectangleVGG_AA06_EndedF0VyAA08_ChangedF0VyAA04DragF0VGGQo_Md, &_s7SwiftUI4ViewPAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0F0Rd__lFQOyAA15ModifiedContentVyAA5ColorVAA01_I13ShapeModifierVyAA9RectangleVGG_AA06_EndedF0VyAA08_ChangedF0VyAA04DragF0VGGQo_MR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - v10;
  if (*a1)
  {
    v12 = static Color.clear.getter();
    v16 = a2;
    v17 = v12;
    v18 = 0;
    ScreenSharingTouchShield.gesture.getter();
    v15[1] = static GestureMask.all.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA01_D13ShapeModifierVyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA5ColorVAA01_D13ShapeModifierVyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Color, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EndedGesture<_ChangedGesture<DragGesture>> and conformance _EndedGesture<A>, &_s7SwiftUI13_EndedGestureVyAA08_ChangedD0VyAA04DragD0VGGMd, &_s7SwiftUI13_EndedGestureVyAA08_ChangedD0VyAA04DragD0VGGMR, MEMORY[0x1E697E238]);
    View.gesture<A>(_:including:)();
    (*(v5 + 8))(v7, v4);

    v13 = v16;
    (*(v9 + 32))(v16, v11, v8);
    return __swift_storeEnumTagSinglePayload(v13, 0, 1, v8);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v8);
  }
}

_BYTE *closure #3 in ScreenSharingTouchShield.body(content:)(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyScTyyts5Error_pGSgGMd, "0J\b");
    State.wrappedValue.getter();
    if (v2)
    {
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      MEMORY[0x1BFB21000](v2, MEMORY[0x1E69E7CA8] + 8, v1, MEMORY[0x1E69E7288]);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    return Binding.wrappedValue.setter();
  }

  return result;
}

__n128 ScreenSharingTouchShield.init(isActive:isCapturingTouch:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5Error_pGSgMd, &_sScTyyts5Error_pGSgMR);
  State.init(wrappedValue:)();
  result = v11;
  *a5 = a1;
  *(a5 + 8) = xmmword_1BC4DF1A0;
  *(a5 + 24) = v11;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ScreenSharingTouchShield>, _OverlayModifier<(<<opaque return type of View.gesture<A>(_:including:)>>.0)?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ScreenSharingTouchShield>, _OverlayModifier<(<<opaque return type of View.gesture<A>(_:including:)>>.0)?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ScreenSharingTouchShield>, _OverlayModifier<(<<opaque return type of View.gesture<A>(_:including:)>>.0)?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit24ScreenSharingTouchShieldVGAA08_OverlayF0VyAA0E0PAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0P0Rd__lFQOyACyAA5ColorVAA01_d5ShapeF0VyAA9RectangleVGG_AA06_EndedP0VyAA08_ChangedP0VyAA04DragP0VGGQo_SgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit24ScreenSharingTouchShieldVGAA08_OverlayF0VyAA0E0PAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0P0Rd__lFQOyACyAA5ColorVAA01_d5ShapeF0VyAA9RectangleVGG_AA06_EndedP0VyAA08_ChangedP0VyAA04DragP0VGGQo_SgGGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ScreenSharingTouchShield> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit24ScreenSharingTouchShieldVGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit24ScreenSharingTouchShieldVGMR, MEMORY[0x1E697FDF8]);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _OverlayModifier<(<<opaque return type of View.gesture<A>(_:including:)>>.0)?> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA4ViewPAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0H0Rd__lFQOyAA15ModifiedContentVyAA5ColorVAA01_k5ShapeD0VyAA9RectangleVGG_AA06_EndedH0VyAA08_ChangedH0VyAA04DragH0VGGQo_SgGMd, &_s7SwiftUI16_OverlayModifierVyAA4ViewPAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0H0Rd__lFQOyAA15ModifiedContentVyAA5ColorVAA01_k5ShapeD0VyAA9RectangleVGG_AA06_EndedH0VyAA08_ChangedH0VyAA04DragH0VGGQo_SgGMR, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ScreenSharingTouchShield>, _OverlayModifier<(<<opaque return type of View.gesture<A>(_:including:)>>.0)?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScreenSharingTouchShield(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for ScreenSharingTouchShield(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Color, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Color, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Color, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA01_D13ShapeModifierVyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA5ColorVAA01_D13ShapeModifierVyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMR, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Color, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DragGesture and conformance DragGesture(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in closure #2 in ScreenSharingTouchShield.gesture.getter(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in closure #2 in ScreenSharingTouchShield.gesture.getter(a1, v4, v5, v1 + 32);
}

void *static CallParticipantLabelDescriptor.labelDescriptor(for:callCount:alertAvailable:allowsDuration:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  swift_unknownObjectRetain();
  v10 = static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:alertAvailable:allowsDuration:)(v9, a3, a4 & 1, a5 & 1);
  swift_unknownObjectRelease();
  return v10;
}

id thunk for @escaping @callee_guaranteed (@guaranteed TUCall) -> (@owned String?)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x1BFB209B0](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t thunk for @escaping @callee_unowned @convention(block) (@unowned TUCall) -> (@autoreleased NSString?)(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a2, a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t key path getter for CNKCallParticipantLabelDescriptorFactory.organizationNameProvider : CNKCallParticipantLabelDescriptorFactory@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 organizationNameProvider];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = thunk for @escaping @callee_unowned @convention(block) (@unowned TUCall) -> (@autoreleased NSString?)partial apply;
  *(result + 24) = v4;
  *a2 = thunk for @escaping @callee_guaranteed (@guaranteed TUCall) -> (@owned String?)partial apply;
  a2[1] = result;
  return result;
}

void key path setter for CNKCallParticipantLabelDescriptorFactory.organizationNameProvider : CNKCallParticipantLabelDescriptorFactory(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v8[4] = thunk for @escaping @callee_guaranteed (@in_guaranteed TUCall) -> (@out String?)partial apply;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed TUCall) -> (@owned String?);
  v8[3] = &block_descriptor_41_1;
  v7 = _Block_copy(v8);

  [v6 setOrganizationNameProvider_];
  _Block_release(v7);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed TUCall) -> (@out String?)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

uint64_t CallParticipantLabelDescriptor.__allocating_init(string:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BC4BA940;
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
    OUTLINED_FUNCTION_11_89();
  }

  else
  {
    v12 = *(v2 + 336);
    v6 = MEMORY[0x1E69E7CC0];
    v7 = a1;
    v8 = 0;
    v9 = a1;
    v10 = 0;
    v11 = a1;
  }

  return v12(v6, v7, v8, v9, v10, v11, 0, 0);
}

uint64_t CNKCallParticipantLabelDescriptorFactory.makeLabel(using:)()
{
  type metadata accessor for CallParticipantLabelDescriptor();

  v0 = OUTLINED_FUNCTION_38_2();
  return CallParticipantLabelDescriptor.__allocating_init(string:)(v0, v1);
}

id CNKCallParticipantLabelDescriptorFactory.makeLabel(using:secondaryString:layoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA940;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v11 = MEMORY[0x1E69E7CC0];
  v12 = *(inited + 40);
  if (v12)
  {
    v13 = *(inited + 32);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_43();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v11 = v17;
    }

    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      OUTLINED_FUNCTION_8_93(v14);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v11 = v18;
    }

    *(v11 + 16) = v15 + 1;
    v16 = v11 + 16 * v15;
    *(v16 + 32) = v13;
    *(v16 + 40) = v12;
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v19 = objc_allocWithZone(type metadata accessor for CallParticipantLabelDescriptor());

  return CallParticipantLabelDescriptor.init(strings:secondaryString:sourceString:durationString:layoutState:)(v11, a3, a4, 0, 0, 0, 0, a5);
}

id CallParticipantLabelDescriptor.__allocating_init(strings:secondaryString:sourceString:durationString:layoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_14_59();
  v17 = v16;
  v18 = objc_allocWithZone(v8);
  return CallParticipantLabelDescriptor.init(strings:secondaryString:sourceString:durationString:layoutState:)(v17, v14, v13, v12, v11, v10, v9, a8);
}

void *CNKCallParticipantLabelDescriptorFactory.labelDescriptor(call:callCount:callCenter:alertAvailable:allowsDuration:)(void *a1, uint64_t a2, void *a3, char a4, char a5)
{
  v10 = type metadata accessor for CallParticipantLabelDescriptor();
  if (one-time initialization token for featureFlags != -1)
  {
    OUTLINED_FUNCTION_1_150(&one-time initialization token for featureFlags);
  }

  v11 = static CallParticipantLabelDescriptor.featureFlags;
  v12 = specialized static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(a1, a2, a3, a4 & 1, a5 & 1, v11, v10);

  return v12;
}

void *static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a5;
  v9 = a4;
  ObjectType = swift_getObjectType();

  return specialized static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(a1, a2, a3, v9, v8, a6, v6, ObjectType);
}

id CNKCallParticipantLabelDescriptorFactory.callScreeningLabelDescriptor(call:callCount:)()
{
  if (one-time initialization token for featureFlags != -1)
  {
    OUTLINED_FUNCTION_1_150(&one-time initialization token for featureFlags);
  }

  v0 = static CallParticipantLabelDescriptor.featureFlags;
  v1 = OUTLINED_FUNCTION_38_2();
  v3 = _s15ConversationKit30CallParticipantLabelDescriptorC013callScreeningeF03for0G5Count12featureFlagsACSgSo6TUCallC_SiSo09TUFeatureL0_ptFZTf4nnen_nSoAKC_Tt2g5(v1, v2, v0);

  return v3;
}

id static CallParticipantLabelDescriptor.callScreeningLabelDescriptor(for:callCount:featureFlags:)(void *a1, uint64_t a2, void *a3)
{
  swift_getObjectType();

  return specialized static CallParticipantLabelDescriptor.callScreeningLabelDescriptor(for:callCount:featureFlags:)(a1, a2, a3);
}

CNKCallParticipantLabelDescriptorFactory __swiftcall CNKCallParticipantLabelDescriptorFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double CallParticipantLabelDescriptor.strings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_strings;
  OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = a1;

  return result;
}

uint64_t key path getter for CallParticipantLabelDescriptor.strings : CallParticipantLabelDescriptor@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CallParticipantLabelDescriptor.strings : CallParticipantLabelDescriptor(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x98);

  return v2(v3);
}

uint64_t key path getter for CallParticipantLabelDescriptor.secondaryString : CallParticipantLabelDescriptor@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for CallParticipantLabelDescriptor.secondaryString : CallParticipantLabelDescriptor(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB0);

  return v4(v2, v3);
}

void @objc CallParticipantLabelDescriptor.secondaryString.setter(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t key path getter for CallParticipantLabelDescriptor.sourceString : CallParticipantLabelDescriptor@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for CallParticipantLabelDescriptor.sourceString : CallParticipantLabelDescriptor(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC8);

  return v4(v2, v3);
}

uint64_t key path getter for CallParticipantLabelDescriptor.durationString : CallParticipantLabelDescriptor@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for CallParticipantLabelDescriptor.durationString : CallParticipantLabelDescriptor(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xE0);

  return v4(v2, v3);
}

uint64_t CallParticipantLabelDescriptor.layoutState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_layoutState;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for CallParticipantLabelDescriptor.layoutState : CallParticipantLabelDescriptor@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t key path getter for CallParticipantLabelDescriptor.isDynamic : CallParticipantLabelDescriptor@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x108))();
  *a2 = result & 1;
  return result;
}

uint64_t CallParticipantLabelDescriptor.isCallIdentification.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_isCallIdentification;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t CallParticipantLabelDescriptor.isCallIdentification.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_isCallIdentification;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t key path getter for CallParticipantLabelDescriptor.isCallIdentification : CallParticipantLabelDescriptor@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x120))();
  *a2 = result & 1;
  return result;
}

double CallParticipantLabelDescriptor.secondaryString.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  OUTLINED_FUNCTION_3_5(v6, v8);
  *v6 = a1;
  v6[1] = a2;

  return result;
}

uint64_t key path getter for CallParticipantLabelDescriptor.localizedSenderIdentity : CallParticipantLabelDescriptor@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x138))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for CallParticipantLabelDescriptor.localizedSenderIdentity : CallParticipantLabelDescriptor(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x140);

  return v4(v2, v3);
}

id CallParticipantLabelDescriptor.init(strings:secondaryString:sourceString:durationString:layoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_14_59();
  v15 = &v8[OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_secondaryString];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v8[OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_sourceString];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v8[OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_durationString];
  *v17 = 0;
  v17[1] = 0;
  v8[OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_isDynamic] = 0;
  v8[OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_isCallIdentification] = 0;
  v18 = &v8[OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_localizedSenderIdentity];
  *v18 = 0;
  v18[1] = 0;
  *&v8[OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_strings] = v19;
  OUTLINED_FUNCTION_3_5(v15, v25);
  *v15 = v14;
  v15[1] = v13;
  OUTLINED_FUNCTION_3_5(v16, v24);
  *v16 = v12;
  v16[1] = v11;
  OUTLINED_FUNCTION_3_5(v17, v23);
  *v17 = v10;
  v17[1] = v9;

  *&v8[OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_layoutState] = a8;
  v22.receiver = v8;
  v22.super_class = type metadata accessor for CallParticipantLabelDescriptor();
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t *CallParticipantLabelDescriptor.featureFlags.unsafeMutableAddressor()
{
  if (one-time initialization token for featureFlags != -1)
  {
    OUTLINED_FUNCTION_1_150(&one-time initialization token for featureFlags);
  }

  return &static CallParticipantLabelDescriptor.featureFlags;
}

id static CallParticipantLabelDescriptor.featureFlags.getter()
{
  if (one-time initialization token for featureFlags != -1)
  {
    OUTLINED_FUNCTION_1_150(&one-time initialization token for featureFlags);
  }

  v1 = static CallParticipantLabelDescriptor.featureFlags;

  return v1;
}

uint64_t specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(void *a1, _BYTE *a2)
{
  v3 = outlined bridged method (pb) of @objc TUCall.callDurationString.getter(a1);
  if (v4)
  {
    v5 = v3;
    swift_beginAccess();
    *a2 = 1;
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
    v6 = NSString.init(stringLiteral:)("%02d:%02d", v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BC4BAA20;
    v8 = MEMORY[0x1E69E6530];
    v9 = MEMORY[0x1E69E65A8];
    *(v7 + 56) = MEMORY[0x1E69E6530];
    *(v7 + 64) = v9;
    *(v7 + 32) = 0;
    *(v7 + 96) = v8;
    *(v7 + 104) = v9;
    *(v7 + 72) = 0;
    v10 = static NSString.localizedStringWithFormat(_:_:)();

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v5;
}

void static CallParticipantLabelDescriptor.ringingStateAudioCallLabels(_:callProvider:)(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, void *a3@<X0>)
{
  v7 = 0xD000000000000032;
  v8 = 0x746174536C6C6143;
  if ([a2 isFaceTimeProvider])
  {
    v9 = "NAME_VIDEO_CALLING";
    v10 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_12_74();
    v11.super.isa = v10;
    OUTLINED_FUNCTION_17_0(v12, v13, v14, v15, v11);
    OUTLINED_FUNCTION_19_42();
  }

  else
  {
    v16 = [a3 isThirdPartyVideo];
    v17 = [objc_opt_self() conversationKit];
    if (v16)
    {
      v7 = OUTLINED_FUNCTION_5_123("CALL_PROVIDER_NAME_%@_CALL_TYPE_NAME_VIDEO_CALLING", v68);
    }

    else
    {
      v7 = OUTLINED_FUNCTION_5_123("CALL_PROVIDER_NAME_%@_CALL_TYPE_NAME_AUDIO_CALLING", v68);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1BC4BA940;
    v9 = [a2 localizedName];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(v3 + 56) = MEMORY[0x1E69E6158];
    *(v3 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v3 + 32) = v8;
    *(v3 + 40) = v19;
    String.init(format:_:)();
    OUTLINED_FUNCTION_19_42();
  }

  v20 = outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(a3);
  if (v20)
  {
    v21 = *(v20 + 16);

    if (v21)
    {
      goto LABEL_21;
    }
  }

  v8 = &selRef_displayString;
  v25 = [a3 displayContext];
  if (!v25 || (v26 = outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v25), !v27))
  {
LABEL_17:
    v22 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(a3);
    if (v23)
    {
      v53 = v22;
      v54 = v23;

      OUTLINED_FUNCTION_13_66(v55, v56, v57, MEMORY[0x1E69E7CC0]);
      a3 = v58;
      v60 = v58[2];
      v59 = v58[3];
      if (v60 >= v59 >> 1)
      {
        OUTLINED_FUNCTION_17_57(v59 > 1, v60 + 1);
        a3 = v66;
      }

      v52 = 0;
      v48 = 0;
      v50 = 0;
      a3[2] = v60 + 1;
      v61 = &a3[2 * v60];
      v61[4] = v53;
      v61[5] = v54;
LABEL_24:
      v51 = 1;
      goto LABEL_25;
    }

LABEL_21:
    OUTLINED_FUNCTION_13_66(v22, v23, v24, MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_20_51();
    if (v63)
    {
      OUTLINED_FUNCTION_8_93(v62);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      a3 = v65;
    }

    v52 = 0;
    v48 = 0;
    v50 = 0;
    a3[2] = v3;
    v64 = &a3[2 * v8];
    v64[4] = v7;
    v64[5] = v9;
    goto LABEL_24;
  }

  v3 = v26;
  v28 = v27;
  v29 = [a3 displayContext];
  if (!v29 || (v30 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v29, &selRef_callDirectoryLocalizedExtensionContainingAppName), !v31))
  {

    goto LABEL_17;
  }

  v33 = v31;
  v69 = v30;
  OUTLINED_FUNCTION_13_66(v30, v31, v32, MEMORY[0x1E69E7CC0]);
  a3 = v34;
  v36 = v34[2];
  v35 = v34[3];
  v37 = v36 + 1;
  if (v36 >= v35 >> 1)
  {
    OUTLINED_FUNCTION_17_57(v35 > 1, v36 + 1);
    v37 = v36 + 1;
    a3 = v67;
  }

  a3[2] = v37;
  v38 = &a3[2 * v36];
  v38[4] = v7;
  v38[5] = v9;
  v39 = [objc_opt_self() &off_1E7FE9588];
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_12_74();
  v40.super.isa = v39;
  OUTLINED_FUNCTION_17_0(v41, v42, v43, v44, v40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1BC4BAA20;
  v46 = MEMORY[0x1E69E6158];
  *(v45 + 56) = MEMORY[0x1E69E6158];
  v47 = lazy protocol witness table accessor for type String and conformance String();
  *(v45 + 32) = v69;
  *(v45 + 40) = v33;
  *(v45 + 96) = v46;
  *(v45 + 104) = v47;
  *(v45 + 64) = v47;
  *(v45 + 72) = v3;
  *(v45 + 80) = v28;
  v48 = String.init(format:_:)();
  v50 = v49;

  v51 = 0;
  v52 = 1;
LABEL_25:
  *a1 = a3;
  a1[1] = v48;
  a1[2] = v50;
  a1[3] = v52;
  *(a1 + 32) = v51;
}

void static CallParticipantLabelDescriptor.ringingStateUnknownContactLabels(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = outlined bridged method (pb) of @objc TUCall.supplementalInCallString.getter(a1);
  if (v9)
  {
    v11 = v8;
    v12 = v9;
    OUTLINED_FUNCTION_13_66(v8, v9, v10, MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_20_51();
    if (v14)
    {
      OUTLINED_FUNCTION_8_93(v13);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = v30;
    }

    *(v3 + 16) = v4;
    v15 = v3 + 16 * v5;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v16 = (*(v2 + 344))(a1);
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_43();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = v31;
    }

    v21 = *(v3 + 16);
    v20 = *(v3 + 24);
    if (v21 >= v20 >> 1)
    {
      OUTLINED_FUNCTION_17_57(v20 > 1, v21 + 1);
      v3 = v32;
    }

    *(v3 + 16) = v21 + 1;
    v22 = v3 + 16 * v21;
    *(v22 + 32) = v18;
    *(v22 + 40) = v19;
  }

  v23 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(a1);
  if (v24)
  {
    v25 = v23;
    v26 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_43();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = v33;
    }

    v28 = *(v3 + 16);
    v27 = *(v3 + 24);
    if (v28 >= v27 >> 1)
    {
      OUTLINED_FUNCTION_17_57(v27 > 1, v28 + 1);
      v3 = v34;
    }

    *(v3 + 16) = v28 + 1;
    v29 = v3 + 16 * v28;
    *(v29 + 32) = v25;
    *(v29 + 40) = v26;
  }

  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
}

uint64_t static CallParticipantLabelDescriptor.organizationName(for:)(void *a1)
{
  swift_beginAccess();
  v2 = static CallParticipantLabelDescriptor.organizationNameProvider;

  v3 = v2(a1);

  return v3;
}

void *static CallParticipantLabelDescriptor.callerIdentificationString(for:callCount:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v36 - v7;
  v9 = [a1 displayContext];
  if (v9)
  {
    v10 = outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v9);
    if (v11)
    {
      v2 = v10;
      v12 = v11;
      v13 = [a1 displayContext];
      if (v13)
      {
        v14 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v13, &selRef_callDirectoryLocalizedExtensionContainingAppName);
        if (v15)
        {
          v16 = v14;
          v17 = v15;
          v18 = [objc_opt_self() conversationKit];
          OUTLINED_FUNCTION_2_146();
          OUTLINED_FUNCTION_12_74();
          v19.super.isa = v18;
          OUTLINED_FUNCTION_17_0(v20, v21, v22, v23, v19);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_1BC4BAA20;
          v25 = MEMORY[0x1E69E6158];
          *(v24 + 56) = MEMORY[0x1E69E6158];
          v26 = lazy protocol witness table accessor for type String and conformance String();
          *(v24 + 32) = v16;
          *(v24 + 40) = v17;
          *(v24 + 96) = v25;
          *(v24 + 104) = v26;
          *(v24 + 64) = v26;
          *(v24 + 72) = v2;
          *(v24 + 80) = v12;
          String.init(format:_:)();
          OUTLINED_FUNCTION_19_42();

          return v2;
        }
      }
    }
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isHeroImageEnabled.getter())
  {
    v27 = [a1 imageURL];
    if (v27)
    {
      v2 = v27;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = type metadata accessor for URL();
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v28);
      outlined destroy of URL?(v8);
      v29 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(a1);
      if (v30)
      {
        if (a2 == 1)
        {
          return v29;
        }
      }
    }

    else
    {
      v31 = type metadata accessor for URL();
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v31);
      outlined destroy of URL?(v8);
    }
  }

  if (!Features.isHeroImageEnabled.getter() || (v32 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(a1), !v33))
  {
LABEL_23:
    outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(a1);
    OUTLINED_FUNCTION_19_42();
    return v2;
  }

  if (a2 != 1)
  {
    goto LABEL_22;
  }

  v2 = v32;
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {
LABEL_22:

    goto LABEL_23;
  }

  return v2;
}

uint64_t static CallParticipantLabelDescriptor.identificationCategoryDisplayString(for:)(void *a1)
{
  switch([a1 identificationCategory])
  {
    case 4uLL:
    case 7uLL:
    case 9uLL:
    case 0xDuLL:
    case 0x12uLL:
      v1 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_29_3();
      OUTLINED_FUNCTION_2_146();
      break;
    default:
      v2 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_0_184();
      OUTLINED_FUNCTION_2_146();
      break;
  }

  OUTLINED_FUNCTION_12_74();
  v3.super.isa = v1;
  v8 = OUTLINED_FUNCTION_17_0(v4, v5, v6, v7, v3);

  return v8;
}

uint64_t closure #1 in variable initialization expression of static CallParticipantLabelDescriptor.organizationNameProvider(void *a1)
{
  v52[3] = *MEMORY[0x1E69E9840];
  v2 = outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(a1);
  if (!v2)
  {
    return 0;
  }

  if (!v2[2])
  {

    return 0;
  }

  v4 = v2[4];
  v3 = v2[5];

  v5 = [objc_opt_self() tu:a1 contactStoreConfigurationForCall:?];
  v6 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA7F0;
  v8 = *MEMORY[0x1E695C240];
  v9 = *MEMORY[0x1E695C2F0];
  *(v7 + 32) = *MEMORY[0x1E695C240];
  *(v7 + 40) = v9;
  v10 = *MEMORY[0x1E695C230];
  v11 = *MEMORY[0x1E695C328];
  *(v7 + 48) = *MEMORY[0x1E695C230];
  *(v7 + 56) = v11;
  v12 = v8;
  v13 = v9;
  v51 = v10;
  v14 = v11;
  v15 = MEMORY[0x1BFB209B0](v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v52[0] = 0;
  v17 = [v6 unifiedContactWithIdentifier:v15 keysToFetch:isa error:v52];

  if (!v17)
  {
    v41 = v52[0];
    v42 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v43 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1BC4BA940;
    v52[0] = v4;
    v52[1] = v3;
    v45 = MEMORY[0x1E69E6158];
    v46 = String.init<A>(reflecting:)();
    v48 = v47;
    *(v44 + 56) = v45;
    *(v44 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v44 + 32) = v46;
    *(v44 + 40) = v48;
    v49 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Contact retrieval failed for contact identifier %{sensitive}@", 61, 2, &dword_1BBC58000, v43, v49, v44);

    goto LABEL_26;
  }

  v18 = v52[0];

  if (![v17 isKeyAvailable_])
  {
    goto LABEL_22;
  }

  v19 = [v17 organizationName];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
LABEL_22:

LABEL_26:
    return 0;
  }

  if (![v17 isKeyAvailable_])
  {
    goto LABEL_19;
  }

  v24 = [v17 givenName];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
LABEL_19:
    if (![v17 isKeyAvailable_])
    {
      goto LABEL_32;
    }

    v29 = [v17 middleName];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (!v33)
    {
LABEL_32:
      if (![v17 isKeyAvailable_])
      {
        goto LABEL_29;
      }

      v34 = [v17 familyName];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = HIBYTE(v37) & 0xF;
      if ((v37 & 0x2000000000000000) == 0)
      {
        v38 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if (!v38)
      {
LABEL_29:

        return 0;
      }
    }
  }

  v39 = [v17 organizationName];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v40;
}

uint64_t CNKCallParticipantLabelDescriptorFactory.organizationNameProvider.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_22_2(a1);

  return OUTLINED_FUNCTION_38_2();
}

uint64_t CNKCallParticipantLabelDescriptorFactory.organizationNameProvider.setter(uint64_t (*a1)(), uint64_t a2)
{
  OUTLINED_FUNCTION_3_5(&static CallParticipantLabelDescriptor.organizationNameProvider, v5);
  static CallParticipantLabelDescriptor.organizationNameProvider = a1;
  qword_1EE94DEF8 = a2;
}

uint64_t (*static CallParticipantLabelDescriptor.organizationNameProvider.modify())()
{
  OUTLINED_FUNCTION_38_2();
  swift_beginAccess();
  return CaptionsViewController.captionVisibilityDuringCapture.modify;
}

uint64_t key path getter for static CallParticipantLabelDescriptor.organizationNameProvider : CallParticipantLabelDescriptor.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static CallParticipantLabelDescriptor.organizationNameProvider;
  v2 = qword_1EE94DEF8;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed TUCall) -> (@owned String?);
  a1[1] = v4;
}

uint64_t key path setter for static CallParticipantLabelDescriptor.organizationNameProvider : CallParticipantLabelDescriptor.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static CallParticipantLabelDescriptor.organizationNameProvider = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed TUCall) -> (@out String?);
  qword_1EE94DEF8 = v3;
}

id CallParticipantLabelDescriptor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CallParticipantLabelDescriptor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallParticipantLabelDescriptor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined bridged method (pb) of @objc TUCall.supplementalInCallString.getter(void *a1)
{
  v1 = [a1 supplementalInCallString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *specialized static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(void *a1, uint64_t a2, void *a3, char a4, int a5, void *a6, uint64_t a7, uint64_t a8)
{
  v402 = a3;
  v403 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v401 = &v394 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v394 - v17;
  v410 = MEMORY[0x1E69E7CC0];
  v409 = 0;
  v19 = [a1 provider];
  v20 = 0;
  if (([v19 isTelephonyProvider] & 1) == 0)
  {
    v20 = TUCall.cnk_isAudio.getter() & (v403 == 1);
  }

  v21 = [a1 status];
  if (TUCallScreeningEnabled())
  {
    v22 = specialized static CallParticipantLabelDescriptor.callScreeningLabelDescriptor(for:callCount:featureFlags:)(a1, v403, a6);
    if (v22)
    {
      v23 = v22;
      goto LABEL_166;
    }
  }

  v400 = a7;
  if (![a1 canDisplayAlertUI_])
  {
    if ([a1 canDisplayRedirectingUI])
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v26 = static OS_os_log.conversationKit;
      v27 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Can display redirecting label for callParticipantLabel, about to return labelDescriptor for stewie", 98, 2, &dword_1BBC58000, v26, v27, MEMORY[0x1E69E7CC0]);
      goto LABEL_14;
    }

    v396 = a5;
    v398 = v19;
    v399 = a1;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v397 = static OS_os_log.conversationKit;
    v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v36 = swift_allocObject();
    v37 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v36, 5);
    v39 = v38;
    LODWORD(v404) = v21;
    type metadata accessor for TUCallStatus(0);
    v40 = String.init<A>(reflecting:)();
    v42 = v41;
    v43 = MEMORY[0x1E69E6158];
    v39[3] = MEMORY[0x1E69E6158];
    v44 = lazy protocol witness table accessor for type String and conformance String();
    v39[4] = v44;
    *v39 = v40;
    v39[1] = v42;
    v45 = v399;
    LOBYTE(v404) = [v399 isEmergency];
    v46 = String.init<A>(reflecting:)();
    v39[8] = v43;
    v39[9] = v44;
    v39[5] = v46;
    v39[6] = v47;
    LOBYTE(v404) = [v45 isFailureExpected];
    v48 = String.init<A>(reflecting:)();
    v39[13] = v43;
    v39[14] = v44;
    v39[10] = v48;
    v39[11] = v49;
    LOBYTE(v404) = a4 & 1;
    v50 = String.init<A>(reflecting:)();
    v39[18] = v43;
    v39[19] = v44;
    v39[15] = v50;
    v39[16] = v51;
    LOBYTE(v404) = [v45 hasBeenRedirected];
    v52 = String.init<A>(reflecting:)();
    v39[23] = v43;
    v39[24] = v44;
    v395 = v44;
    v39[20] = v52;
    v39[21] = v53;
    v54 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Can't display alert label or redirecting label for callParticipantLabel, callStatus = %@, isEmergency = %@, isFailureExpected = %@, alertServiceAvailable = %@ hasBeenRedirected = %@", 181, 2, &dword_1BBC58000, v397, v54, v37);

    v55 = &selRef_isRecordingAllowed;
    switch(v21)
    {
      case 1u:
        v56 = v399;
        if (v20)
        {
          if (([v399 isOutgoing] & 1) == 0 && !objc_msgSend(v56, sel_isConnected))
          {
            v19 = v398;
            v57 = &selRef_initWithSuggestion_selectedActivity_type_;
            if ([v398 isFaceTimeProvider])
            {
              v59 = String.localizedCallStatus.getter();
              goto LABEL_25;
            }

            [v56 isThirdPartyVideo];
            String.localizedCallStatus.getter();
            v263 = swift_allocObject();
            _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v263, 1);
            v265 = v264;
            v266 = [v19 localizedName];
            v267 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v269 = v268;

            v270 = v395;
            v265[3] = MEMORY[0x1E69E6158];
            v265[4] = v270;
            *v265 = v267;
            v265[1] = v269;
            v19 = v398;
            v271 = String.init(format:_:)();
            v402 = v272;

            v62 = 0;
            v63 = 0;
            v64 = 0;
            v66 = 0;
            v65 = v399;
            v55 = &selRef_isRecordingAllowed;
            v61 = v271;
            goto LABEL_275;
          }

          v57 = &selRef_initWithSuggestion_selectedActivity_type_;
          v58 = [v56 wantsHoldMusic];
          v19 = v398;
          if (v58)
          {
LABEL_24:
            v59 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v56, &v409);
LABEL_25:
            v61 = v59;
            v402 = v60;
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v65 = v56;
            v66 = 0;
            goto LABEL_276;
          }

          if ([v398 isFaceTimeProvider])
          {
            if (v396)
            {
              String.localizedCallStatus.getter();
              v109 = swift_allocObject();
              _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v109, 1);
              v111 = v110;
              v112 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v56, &v409);
              v113 = v395;
              v111[3] = MEMORY[0x1E69E6158];
              v111[4] = v113;
              *v111 = v112;
              v111[1] = v114;
              v61 = String.init(format:_:)();
              v402 = v115;
            }

            else
            {
              v61 = String.localizedCallStatus.getter();
              v402 = v216;
            }

            v217 = [v56 displayContext];
            if (v217)
            {
              v218 = outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v217);
              if (v219)
              {
                v220 = v218;
                v221 = v219;
                v222 = [v56 displayContext];
                if (v222)
                {
                  v223 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v222, &selRef_callDirectoryLocalizedExtensionContainingAppName);
                  if (v224)
                  {
                    v225 = v223;
                    v226 = v224;
                    String.localizedCallStatus.getter();
                    v227 = swift_allocObject();
                    _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v227, 2);
                    v228 = MEMORY[0x1E69E6158];
                    v229 = v395;
                    v230[3] = MEMORY[0x1E69E6158];
                    v230[4] = v229;
                    *v230 = v225;
                    v230[1] = v226;
                    v230[8] = v228;
                    v230[9] = v229;
                    v230[5] = v220;
                    v230[6] = v221;
                    TPNumberPadCharacter.rawValue.getter();
                    v64 = String.init(format:_:)();
                    v66 = v231;
                    v19 = v398;

                    v63 = 1;
                    v62 = 1;
                  }

                  else
                  {

                    v62 = 0;
                    v63 = 0;
                    v64 = 0;
                    v66 = 0;
                  }

                  v65 = v399;
                  goto LABEL_274;
                }
              }
            }

            v62 = 0;
            v63 = 0;
            v64 = 0;
            v65 = v56;
            v66 = 0;
LABEL_274:
            v55 = &selRef_isRecordingAllowed;
            goto LABEL_275;
          }

          if ([v56 isThirdPartyVideo])
          {
            if (v396)
            {
              String.localizedCallStatus.getter();
              v172 = swift_allocObject();
              _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v172, 2);
              v174 = v173;
              v175 = [v19 localizedName];
              v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v178 = v177;

              v179 = MEMORY[0x1E69E6158];
              v180 = v395;
              v174[3] = MEMORY[0x1E69E6158];
              v174[4] = v180;
              *v174 = v176;
              v174[1] = v178;
              v19 = v398;
              v181 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v56, &v409);
              v174[8] = v179;
              v174[9] = v180;
              v174[5] = v181;
              v174[6] = v182;
            }

            else
            {
              String.localizedCallStatus.getter();
              v273 = swift_allocObject();
              _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v273, 1);
              v275 = v274;
              v276 = [v19 localizedName];
              v277 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v279 = v278;

              v280 = v395;
              v275[3] = MEMORY[0x1E69E6158];
              v275[4] = v280;
              *v275 = v277;
              v275[1] = v279;
              v19 = v398;
            }

            v61 = String.init(format:_:)();
            v402 = v183;

            v63 = 0;
            v64 = 0;
            v65 = v56;
            v66 = 0;
            v55 = &selRef_isRecordingAllowed;
            v62 = 0;
            goto LABEL_275;
          }

          if (v396)
          {
            String.localizedCallStatus.getter();
            v232 = swift_allocObject();
            _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v232, 2);
            v234 = v233;
            v235 = [v19 localizedName];
            v236 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v238 = v237;

            v239 = MEMORY[0x1E69E6158];
            v240 = v395;
            v234[3] = MEMORY[0x1E69E6158];
            v234[4] = v240;
            *v234 = v236;
            v234[1] = v238;
            v241 = v399;
            v242 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v399, &v409);
            v234[8] = v239;
            v234[9] = v240;
            v234[5] = v242;
            v234[6] = v243;
            v61 = String.init(format:_:)();
            v402 = v244;
          }

          else
          {
            String.localizedCallStatus.getter();
            v281 = swift_allocObject();
            _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v281, 1);
            v283 = v282;
            v284 = [v19 localizedName];
            v285 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v287 = v286;

            v288 = v395;
            v283[3] = MEMORY[0x1E69E6158];
            v283[4] = v288;
            *v283 = v285;
            v283[1] = v287;
            v61 = String.init(format:_:)();
            v402 = v289;
            v241 = v399;
          }

          v290 = [v241 displayContext];
          v57 = &selRef_initWithSuggestion_selectedActivity_type_;
          if (v290)
          {
            v291 = outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v290);
            if (v292)
            {
              v293 = v291;
              v294 = v292;
              v295 = [v241 displayContext];
              if (v295)
              {
                v296 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v295, &selRef_callDirectoryLocalizedExtensionContainingAppName);
                if (v297)
                {
                  v298 = v296;
                  v299 = v297;
                  String.localizedCallStatus.getter();
                  v300 = swift_allocObject();
                  _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v300, 2);
                  v301 = MEMORY[0x1E69E6158];
                  v302 = v395;
                  v303[3] = MEMORY[0x1E69E6158];
                  v303[4] = v302;
                  *v303 = v298;
                  v303[1] = v299;
                  v303[8] = v301;
                  v303[9] = v302;
                  v303[5] = v293;
                  v303[6] = v294;
                  TPNumberPadCharacter.rawValue.getter();
                  v57 = &selRef_initWithSuggestion_selectedActivity_type_;
                  v64 = String.init(format:_:)();
                  v66 = v304;
                  v19 = v398;

                  v62 = 0;
                  v63 = 1;
                }

                else
                {

                  v62 = 0;
                  v63 = 0;
                  v64 = 0;
                  v66 = 0;
                }

                v65 = v399;
                goto LABEL_305;
              }
            }
          }

          v62 = 0;
          v63 = 0;
          v64 = 0;
          v65 = v241;
          v66 = 0;
LABEL_305:
          v55 = &selRef_isRecordingAllowed;
          goto LABEL_276;
        }

        if (([v398 isFaceTimeProvider] & 1) != 0 && objc_msgSend(v56, sel_isVideo))
        {
          if ([v56 &selRef_setLocalBackLayerHost_])
          {
            String.localizedCallStatus.getter();
            v88 = swift_allocObject();
            _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v88, 1);
            v90 = v89;
            v91 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v56, &v409);
            v92 = v395;
            v90[3] = MEMORY[0x1E69E6158];
            v90[4] = v92;
            *v90 = v91;
            v90[1] = v93;
          }

          else
          {
            String.localizedCallStatus.getter();
          }

          v61 = String.init(format:_:)();
          v402 = v94;

          v62 = 0;
          v63 = 0;
          v64 = 0;
          v65 = v56;
          v66 = 0;
          v19 = v398;
          v55 = &selRef_isRecordingAllowed;
          goto LABEL_275;
        }

        if (([v56 isOutgoing] & 1) == 0 && !objc_msgSend(v56, sel_isConnected) && (objc_msgSend(v56, sel_isHostedOnCurrentDevice) & 1) == 0)
        {
          v61 = String.localizedCallStatus.getter();
          v402 = v215;
          v62 = 0;
          v63 = 0;
          v64 = 0;
          v65 = v56;
          v66 = 0;
          v19 = v398;
          goto LABEL_275;
        }

        v96 = [v56 isEmergency];
        v19 = v398;
        if (v96)
        {
          String.localizedCallStatus.getter();
          v97 = swift_allocObject();
          _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v97, 1);
          v99 = v98;
          v100 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v56, &v409);
          v101 = v395;
          v99[3] = MEMORY[0x1E69E6158];
          v99[4] = v101;
          *v99 = v100;
          v99[1] = v102;
          v55 = &selRef_isRecordingAllowed;
          v61 = String.init(format:_:)();
          v402 = v103;

LABEL_68:
          v62 = 0;
          v63 = 0;
          v64 = 0;
          v65 = v56;
          v66 = 0;
LABEL_275:
          v57 = &selRef_initWithSuggestion_selectedActivity_type_;
          goto LABEL_276;
        }

        v116 = [v56 displayContext];
        if (!v116)
        {
          goto LABEL_188;
        }

        v117 = outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v116);
        v402 = v118;
        if (!v118)
        {
          goto LABEL_188;
        }

        v61 = v117;
        v119 = [v56 displayContext];
        if (v119 && (outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v119, &selRef_callDirectoryLocalizedExtensionContainingAppName), v120))
        {

          if ([v56 isOutgoing])
          {

            v61 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v56, &v409);
            v402 = v121;
            goto LABEL_68;
          }

          v57 = &selRef_initWithSuggestion_selectedActivity_type_;
          if (v403 == 1)
          {
            v64 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v56, &v409);
            v65 = v56;
            v66 = v346;
            v63 = 0;
            v62 = 1;
            goto LABEL_276;
          }
        }

        else
        {

LABEL_188:
          if ((v396 & 1) == 0)
          {
            v62 = 0;
            v63 = 0;
            v61 = 0;
            v64 = 0;
            v65 = v56;
            v66 = 0;
            v402 = 0xE000000000000000;
            goto LABEL_275;
          }

          v57 = &selRef_initWithSuggestion_selectedActivity_type_;
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          if (Features.isHeroImageEnabled.getter())
          {
            v245 = [v56 imageURL];
            if (v245)
            {
              v246 = v245;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v247 = type metadata accessor for URL();
              __swift_storeEnumTagSinglePayload(v18, 0, 1, v247);
              outlined destroy of URL?(v18);
              v248 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v56);
              v55 = &selRef_isRecordingAllowed;
              v402 = v249;
              if (v249)
              {
                if (v403 == 1)
                {
                  v61 = v248;
                  v250 = outlined bridged method (pb) of @objc TUCall.companyDepartment.getter(v56);
                  v66 = v251;
                  if (v251)
                  {
                    v64 = v250;
                    v62 = 0;
                    v63 = 1;
                  }

                  else
                  {
                    v62 = 0;
                    v63 = 0;
                    v64 = 0;
                  }

                  v65 = v399;
LABEL_276:
                  if ([v65 v55[364]] && objc_msgSend(v399, v57[393]))
                  {
                    String.localizedCallStatus.getter();
                    v350 = swift_allocObject();
                    _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v350, 1);
                    v351 = v395;
                    v352[3] = MEMORY[0x1E69E6158];
                    v352[4] = v351;
                    v353 = v402;
                    *v352 = v61;
                    v352[1] = v353;
                    v61 = String.init(format:_:)();
                    v355 = v354;

                    v356 = v410;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                      v356 = v377;
                    }

                    v357 = *(v356 + 16);
                    v358 = v357 + 1;
                    if (v357 < *(v356 + 24) >> 1)
                    {
                      goto LABEL_285;
                    }
                  }

                  else
                  {
                    v356 = v410;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                      v356 = v376;
                    }

                    v357 = *(v356 + 16);
                    v358 = v357 + 1;
                    v355 = v402;
                    if (v357 < *(v356 + 24) >> 1)
                    {
                      goto LABEL_285;
                    }
                  }

                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v356 = v359;
LABEL_285:
                  *(v356 + 16) = v358;
                  v360 = v356 + 16 * v357;
                  *(v360 + 32) = v61;
                  *(v360 + 40) = v355;
                  v410 = v356;
                  if ((v396 & 1) == 0)
                  {
                    goto LABEL_293;
                  }

                  outlined bridged method (pb) of @objc TUCall.callDurationString.getter(v399);
                  if (!v361)
                  {
                    goto LABEL_293;
                  }

                  swift_beginAccess();
                  v74 = 0;
                  v75 = 0;
                  v409 = 1;
                  goto LABEL_165;
                }
              }
            }

            else
            {
              v345 = type metadata accessor for URL();
              __swift_storeEnumTagSinglePayload(v18, 1, 1, v345);
              outlined destroy of URL?(v18);
            }
          }

          if (!Features.isHeroImageEnabled.getter())
          {
            goto LABEL_24;
          }

          v362 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(v56);
          if (!v363)
          {
            goto LABEL_24;
          }

          if (v403 == 1)
          {
            v364 = HIBYTE(v363) & 0xF;
            if ((v363 & 0x2000000000000000) == 0)
            {
              v364 = v362 & 0xFFFFFFFFFFFFLL;
            }

            if (v364)
            {
              v404 = v362;
              v405 = v363;
              MEMORY[0x1BFB20B10](2108704, 0xE300000000000000);
              v365 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v56, &v409);
              MEMORY[0x1BFB20B10](v365);
              v55 = &selRef_isRecordingAllowed;

              v59 = MEMORY[0x1BFB20AB0](v404, v405);
              goto LABEL_25;
            }
          }
        }

        goto LABEL_24;
      case 2u:
        if (([v402 isAmbiguous] & 1) == 0)
        {
          goto LABEL_157;
        }

        v76 = specialized closure #1 in static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(v399, &v409);
        goto LABEL_158;
      case 3u:
        v69 = v399;
        if ([v399 wasPulledToCurrentDevice])
        {
          goto LABEL_157;
        }

        if (v20)
        {
          v79 = [v69 0x1FB729D78];
          v68 = v398;
          v80 = [v398 &selRef_path + 7];
          if (v79)
          {
            if (v80)
            {
              goto LABEL_157;
            }
          }

          else if (v80)
          {
            goto LABEL_157;
          }

          [v69 isThirdPartyVideo];
LABEL_199:
          String.localizedCallStatus.getter();
          v254 = swift_allocObject();
          _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v254, 1);
          v256 = v255;
          v257 = [v68 localizedName];
          v258 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v260 = v259;

          v261 = v395;
          v256[3] = MEMORY[0x1E69E6158];
          v256[4] = v261;
          *v256 = v258;
          v256[1] = v260;
LABEL_200:
          v201 = String.init(format:_:)();
          v202 = v262;

          goto LABEL_159;
        }

        if (([v398 &selRef_path + 7] & 1) != 0 && objc_msgSend(v69, &selRef_currentlyPlayingSoundType + 5))
        {
          [v69 0x1FB729D78];
          goto LABEL_157;
        }

        if ([v69 isEmergency])
        {
          goto LABEL_157;
        }

        v139 = [v69 wasDialAssisted];
        v19 = v398;
        if (v139)
        {
          v140 = String.localizedCallStatus.getter();
          v142 = v141;
          v143 = v410;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v143 = v380;
          }

          v144 = *(v143 + 16);
          if (v144 >= *(v143 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v143 = v381;
          }

          *(v143 + 16) = v144 + 1;
          v145 = v143 + 16 * v144;
          *(v145 + 32) = v140;
          *(v145 + 40) = v142;
          v410 = v143;
          v19 = v398;
        }

        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        if (Features.isOutgoingCallCallerIDEnabled.getter())
        {
          v146 = outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(v69);
          if (!v146)
          {
            goto LABEL_135;
          }

          v147 = specialized Array._getCount()(v146);

          if (!v147)
          {
            goto LABEL_135;
          }

          v148 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v69);
          if (!v149)
          {
            goto LABEL_135;
          }

          v150 = v148;
          v151 = v149;
          v152 = HIBYTE(v149) & 0xF;
          if ((v149 & 0x2000000000000000) == 0)
          {
            v152 = v148 & 0xFFFFFFFFFFFFLL;
          }

          if (!v152)
          {
LABEL_134:

LABEL_135:
            v155 = String.localizedCallStatus.getter();
            v157 = v156;
            v158 = v410;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v158 = v382;
            }

            v159 = *(v158 + 16);
            if (v159 >= *(v158 + 24) >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v158 = v383;
            }

            *(v158 + 16) = v159 + 1;
            v160 = v158 + 16 * v159;
            *(v160 + 32) = v155;
            *(v160 + 40) = v157;
            v410 = v158;
            v161 = [v69 0x1FB41CFDCLL];
            if (v161)
            {
              outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v161);
              if (v162)
              {

                v163 = [v69 0x1FB41CFDCLL];
                if (v163)
                {
                  v164 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v163, &selRef_callDirectoryLocalizedExtensionContainingAppName);
                  if (v165)
                  {
                    v166 = v164;
                    v167 = v165;
                    String.localizedCallStatus.getter();
                    v168 = swift_allocObject();
                    _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v168, 1);
                    v169 = v395;
                    v170[3] = MEMORY[0x1E69E6158];
                    v170[4] = v169;
                    *v170 = v166;
                    v170[1] = v167;
                    TPNumberPadCharacter.rawValue.getter();
                    v64 = String.init(format:_:)();
                    v66 = v171;

                    v62 = 0;
                    v74 = 0;
                    v75 = 0;
                    v63 = 3;
                    goto LABEL_165;
                  }
                }
              }
            }

            v252 = (*(v400 + 352))(v69, v403);
LABEL_243:
            v66 = v253;
            if (v253)
            {
              v64 = v252;
LABEL_245:
              v62 = 0;
              v74 = 0;
              v75 = 0;
              v63 = 1;
            }

            else
            {
              v62 = 0;
              v63 = 0;
              v74 = 0;
              v75 = 0;
              v64 = 0;
            }

            goto LABEL_165;
          }

          v153 = [v69 0x1FB41CFDCLL];
          if (v153)
          {
            outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v153, &selRef_location);
            if (v154)
            {

              goto LABEL_134;
            }
          }

LABEL_177:
          String.localizedCallStatus.getter();
          v212 = swift_allocObject();
          _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v212, 1);
          v213 = v395;
          v214[3] = MEMORY[0x1E69E6158];
          v214[4] = v213;
          *v214 = v150;
          v214[1] = v151;
          TPNumberPadCharacter.rawValue.getter();
          goto LABEL_200;
        }

        v210 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v69);
        if (!v211)
        {
          goto LABEL_157;
        }

        v150 = v210;
        v151 = v211;
        if (String.count.getter() > 0)
        {
          goto LABEL_177;
        }

        goto LABEL_157;
      case 4u:
        v70 = v399;
        if (v20)
        {
          v19 = v398;
          static CallParticipantLabelDescriptor.ringingStateAudioCallLabels(_:callProvider:)(&v404, v398, v399);
          v71 = v405;
          v66 = v406;
          v72 = v407;
          v73 = v408;
          specialized Array.append<A>(contentsOf:)(v404);
          v62 = 0;
          v74 = 0;
          v75 = 0;
          if (v66)
          {
            v64 = v71;
          }

          else
          {
            v64 = 0;
          }

          if (v73)
          {
            v63 = 0;
          }

          else
          {
            v63 = v72;
          }

          goto LABEL_165;
        }

        if ([v399 &selRef_currentlyPlayingSoundType + 5])
        {
          if ([v70 0x1FBE104C8])
          {
            if ([v70 &selRef_setLocalBackLayerHost_])
            {
              v81 = outlined bridged method (pb) of @objc TUCall.callDurationString.getter(v70);
              if (v82)
              {
                v83 = v81;
                v84 = v82;
                String.localizedCallStatus.getter();
                v85 = swift_allocObject();
                _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v85, 1);
                v86 = v395;
                v87[3] = MEMORY[0x1E69E6158];
                v87[4] = v86;
                *v87 = v83;
                v87[1] = v84;
                goto LABEL_200;
              }
            }
          }

          else
          {
            [v70 0x1FB729D78];
          }

LABEL_157:
          v76 = String.localizedCallStatus.getter();
LABEL_158:
          v201 = v76;
          v202 = v77;
LABEL_159:
          v203 = v410;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v203 = v375;
          }

          v204 = *(v203 + 16);
          if (v204 >= *(v203 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v203 = v374;
          }

          v63 = 0;
          v74 = 0;
          v75 = 0;
          v64 = 0;
          v66 = 0;
          *(v203 + 16) = v204 + 1;
          v62 = 0;
          v205 = v203 + 16 * v204;
          *(v205 + 32) = v201;
          *(v205 + 40) = v202;
          v410 = v203;
LABEL_164:
          v19 = v398;
LABEL_165:
          v206 = v410;
          v207 = objc_allocWithZone(type metadata accessor for CallParticipantLabelDescriptor());
          v23 = CallParticipantLabelDescriptor.init(strings:secondaryString:sourceString:durationString:layoutState:)(v206, v64, v66, 0, 0, 0, 0, v63);
          swift_beginAccess();
          v208 = MEMORY[0x1E69E7D40];
          (*((*MEMORY[0x1E69E7D40] & *v23) + 0x110))(v409);
          (*((*v208 & *v23) + 0xC8))(v74, v75);
          (*((*v208 & *v23) + 0x128))(v62);
          goto LABEL_166;
        }

        v104 = outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(v70);
        if (v104)
        {
          v105 = specialized Array._getCount()(v104);

          if (v105)
          {
            static CallParticipantLabelDescriptor.ringingStateUnknownContactLabels(_:)(v70, &v404);
            v106 = v405;
            v66 = v406;
            v107 = v407;
            v108 = v408;
            specialized Array.append<A>(contentsOf:)(v404);
            v62 = 0;
            v74 = 0;
            v75 = 0;
            if (v66)
            {
              v64 = v106;
            }

            else
            {
              v64 = 0;
            }

            if (v108)
            {
              v63 = 0;
            }

            else
            {
              v63 = v107;
            }

            goto LABEL_164;
          }
        }

        v122 = [v70 isInternational];
        v19 = v398;
        v123 = v400;
        if (v122)
        {
          String.localizedCallStatus.getter();
          v124 = String.init(format:_:)();
          v126 = v125;

          v127 = v410;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v127 = v378;
          }

          v128 = *(v127 + 16);
          if (v128 >= *(v127 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v127 = v379;
          }

          *(v127 + 16) = v128 + 1;
          v129 = v127 + 16 * v128;
          *(v129 + 32) = v124;
          *(v129 + 40) = v126;
          v410 = v127;
          v130 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(v70);
          if (v131)
          {
            v132 = v130;
            v133 = v131;
            v134 = HIBYTE(v131) & 0xF;
            if ((v131 & 0x2000000000000000) == 0)
            {
              v134 = v130 & 0xFFFFFFFFFFFFLL;
            }

            if (v134)
            {
              String.localizedCallStatus.getter();
              v135 = swift_allocObject();
              _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v135, 1);
              v136 = v395;
              v137[3] = MEMORY[0x1E69E6158];
              v137[4] = v136;
              *v137 = v132;
              v137[1] = v133;
              TPNumberPadCharacter.rawValue.getter();
              v64 = String.init(format:_:)();
              v66 = v138;

              goto LABEL_253;
            }
          }

          v339 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v70);
          v64 = v340;
          if (!v340)
          {
            v62 = 0;
            v63 = 0;
            v74 = 0;
            v75 = 0;
            goto LABEL_269;
          }

          v341 = v339;

          v342 = HIBYTE(v64) & 0xF;
          if ((v64 & 0x2000000000000000) == 0)
          {
            v342 = v341 & 0xFFFFFFFFFFFFLL;
          }

          if (v342)
          {
            v64 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v70);
            v66 = v343;
            if (!v343)
            {
              v62 = 0;
              v63 = 0;
LABEL_293:
              v74 = 0;
              v75 = 0;
              goto LABEL_165;
            }

LABEL_253:
            v62 = 0;
            v74 = 0;
            v75 = 0;
            v344 = HIBYTE(v66) & 0xF;
            if ((v66 & 0x2000000000000000) == 0)
            {
              v344 = v64 & 0xFFFFFFFFFFFFLL;
            }

            v63 = v344 != 0;
            goto LABEL_165;
          }
        }

        else
        {
          v184 = [v70 0x1FB41CFDCLL];
          if (v184)
          {
            v185 = outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v184);
            if (v186)
            {
              v187 = v185;
              v188 = v186;
              v189 = [v70 0x1FB41CFDCLL];
              if (v189)
              {
                v190 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v189, &selRef_callDirectoryLocalizedExtensionContainingAppName);
                if (v191)
                {
                  v192 = v190;
                  v193 = v191;
                  v194 = v410;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v194 = v392;
                  }

                  v195 = *(v194 + 16);
                  if (v195 >= *(v194 + 24) >> 1)
                  {
                    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v194 = v393;
                  }

                  *(v194 + 16) = v195 + 1;
                  v196 = v194 + 16 * v195;
                  *(v196 + 32) = v187;
                  *(v196 + 40) = v188;
                  v410 = v194;
                  String.localizedCallStatus.getter();
                  v197 = swift_allocObject();
                  v62 = 1;
                  _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v197, 1);
                  v198 = v395;
                  v199[3] = MEMORY[0x1E69E6158];
                  v199[4] = v198;
                  *v199 = v192;
                  v199[1] = v193;
                  TPNumberPadCharacter.rawValue.getter();
                  v74 = String.init(format:_:)();
                  v75 = v200;

                  v64 = 0;
                  v66 = 0;
                  v63 = 3;
                  goto LABEL_164;
                }
              }
            }
          }

          v305 = outlined bridged method (pb) of @objc TUCall.supplementalInCallString.getter(v70);
          if (v306)
          {
            v307 = v305;
            v308 = v306;
            v309 = v410;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v309 = v384;
            }

            v310 = *(v309 + 16);
            if (v310 >= *(v309 + 24) >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v309 = v385;
            }

            *(v309 + 16) = v310 + 1;
            v311 = v309 + 16 * v310;
            *(v311 + 32) = v307;
            *(v311 + 40) = v308;
            v410 = v309;
            v123 = v400;
          }

          v312 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(v70);
          if (v313)
          {
            v314 = v312;
            v315 = v313;
            v316 = v410;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v316 = v386;
            }

            v317 = *(v316 + 16);
            if (v317 >= *(v316 + 24) >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v316 = v387;
            }

            *(v316 + 16) = v317 + 1;
            v318 = v316 + 16 * v317;
            *(v318 + 32) = v314;
            *(v318 + 40) = v315;
            v410 = v316;
            v123 = v400;
          }

          if ([v70 isJunk])
          {
            v319 = String.localizedCallStatus.getter();
            v321 = v320;
            v64 = (*(v123 + 360))(v70);
            v66 = v322;
            v323 = v410;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v323 = v388;
            }

            v324 = *(v323 + 16);
            if (v324 >= *(v323 + 24) >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v323 = v389;
            }

            *(v323 + 16) = v324 + 1;
            v325 = v323 + 16 * v324;
            *(v325 + 32) = v319;
            *(v325 + 40) = v321;
            v410 = v323;
            if (v319 == v64 && v321 == v66)
            {
            }

            else
            {
              v327 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v327 & 1) == 0)
              {
                goto LABEL_245;
              }
            }
          }

          else
          {
            v328 = [v70 imageURL];
            if (v328)
            {
              v329 = v328;
              v330 = v401;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v331 = type metadata accessor for URL();
              __swift_storeEnumTagSinglePayload(v330, 0, 1, v331);
              outlined destroy of URL?(v330);
              v332 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v70);
              if (v333)
              {
                v334 = v332;
                v335 = v333;
                v336 = v410;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v336 = v390;
                }

                v337 = *(v336 + 16);
                if (v337 >= *(v336 + 24) >> 1)
                {
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v336 = v391;
                }

                *(v336 + 16) = v337 + 1;
                v338 = v336 + 16 * v337;
                *(v338 + 32) = v334;
                *(v338 + 40) = v335;
                v410 = v336;
                v252 = outlined bridged method (pb) of @objc TUCall.companyDepartment.getter(v70);
                goto LABEL_243;
              }
            }

            else
            {
              v347 = type metadata accessor for URL();
              v348 = v401;
              __swift_storeEnumTagSinglePayload(v401, 1, 1, v347);
              outlined destroy of URL?(v348);
            }

            v76 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v70);
            if (v77)
            {
              goto LABEL_158;
            }
          }
        }

LABEL_268:
        v62 = 0;
        v63 = 0;
        v74 = 0;
        v75 = 0;
        v64 = 0;
LABEL_269:
        v66 = 0;
        goto LABEL_165;
      case 5u:
        v67 = v399;
        if ([v399 wasDeclined])
        {
          v68 = v398;
          if (v20 & 1) == 0 || ([v398 &selRef_path + 7])
          {
            goto LABEL_157;
          }
        }

        else
        {
          v68 = v398;
          if (v20 & 1) == 0 || ([v398 &selRef_path + 7])
          {
            goto LABEL_157;
          }
        }

        [v67 isThirdPartyVideo];
        goto LABEL_199;
      case 6u:
        v78 = v399;
        if ([v399 disconnectedReason] == 15)
        {
          goto LABEL_157;
        }

        v95 = [v78 disconnectedReason];
        v19 = v398;
        if (v95 == 7 || [v78 disconnectedReasonRequiresCallFailureUI])
        {
          goto LABEL_157;
        }

        if ([v78 disconnectedReasonRequiresCallBackUI])
        {
          if ((v20 & 1) == 0)
          {
            goto LABEL_268;
          }

          if ([v19 &selRef_path + 7])
          {
            goto LABEL_157;
          }
        }

        else if ([v78 wasDeclined])
        {
          if (v20 & 1) == 0 || ([v19 &selRef_path + 7])
          {
            goto LABEL_157;
          }
        }

        else if (v20 & 1) == 0 || ([v19 &selRef_path + 7])
        {
          goto LABEL_157;
        }

        [v78 isThirdPartyVideo];
        String.localizedCallStatus.getter();
        v366 = swift_allocObject();
        _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs7CVarArg_p_Tt1g5(v366, 1);
        v368 = v367;
        v369 = [v19 localizedName];
        v370 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v372 = v371;

        v373 = v395;
        v368[3] = MEMORY[0x1E69E6158];
        v368[4] = v373;
        *v368 = v370;
        v368[1] = v372;
        TPNumberPadCharacter.rawValue.getter();
        goto LABEL_200;
      default:
        v62 = 0;
        v63 = 0;
        v74 = 0;
        v75 = 0;
        v64 = 0;
        v66 = 0;
        goto LABEL_164;
    }
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v24 = static OS_os_log.conversationKit;
  v25 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Can display alert label for callParticipantLabel, about to return labelDescriptor for stewie", 92, 2, &dword_1BBC58000, v24, v25, MEMORY[0x1E69E7CC0]);
LABEL_14:
  v28 = String.localizedAlerts.getter();
  v30 = v29;
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v32 = v31;
  v33 = *(v31 + 16);
  if (v33 >= *(v31 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v32 = v349;
  }

  *(v32 + 16) = v33 + 1;
  v34 = v32 + 16 * v33;
  *(v34 + 32) = v28;
  *(v34 + 40) = v30;
  v35 = objc_allocWithZone(type metadata accessor for CallParticipantLabelDescriptor());
  v23 = CallParticipantLabelDescriptor.init(strings:secondaryString:sourceString:durationString:layoutState:)(v32, 0, 0, 0, 0, 0, 0, 0);
  (*((*MEMORY[0x1E69E7D40] & *v23) + 0x110))(0);
LABEL_166:

  return v23;
}

id _s15ConversationKit30CallParticipantLabelDescriptorC013callScreeningeF03for0G5Count12featureFlagsACSgSo6TUCallC_SiSo09TUFeatureL0_ptFZTf4nnen_nSoAKC_Tt2g5(void *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v58 - v8;
  v10 = [a1 smartHoldingSession];
  v11 = v10;
  if (v10)
  {
  }

  v12 = [a1 isScreening];
  result = 0;
  if (!v11 && v12)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.isHeroImageEnabled.getter())
    {
      v14 = [a1 imageURL];
      if (v14)
      {
        v15 = v14;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v16 = type metadata accessor for URL();
        __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
        outlined destroy of URL?(v9);
        if (a2 == 1)
        {
          v17 = [a1 provider];
          v18 = [v17 isTelephonyProvider];

          if (v18)
          {
            outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(a1);
            if (v19)
            {

              v20 = 1;
LABEL_15:
              if ([a3 receptionistEnabled] && objc_msgSend(a1, sel_receptionistState))
              {
                v22 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(a1);
                if (v23)
                {
                  v24 = v22;
                  v25 = v23;
                  if (String.count.getter() > 0)
                  {
                    v26 = [objc_opt_self() conversationKit];
                    v59._object = 0xE000000000000000;
                    v27.value._countAndFlagsBits = 0x746174536C6C6143;
                    v28._countAndFlagsBits = 0xD000000000000014;
                    v28._object = 0x80000001BC514560;
                    v27.value._object = 0xEA00000000007375;
                    v29._countAndFlagsBits = 0;
                    v29._object = 0xE000000000000000;
                    v59._countAndFlagsBits = 0;
                    NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v27, v26, v29, v59);

                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                    v30 = swift_allocObject();
                    *(v30 + 16) = xmmword_1BC4BA940;
                    *(v30 + 56) = MEMORY[0x1E69E6158];
                    *(v30 + 64) = lazy protocol witness table accessor for type String and conformance String();
                    *(v30 + 32) = v24;
                    *(v30 + 40) = v25;
                    countAndFlagsBits = String.init(format:_:)();
                    object = v32;

                    if (!v20)
                    {
                      goto LABEL_34;
                    }

                    goto LABEL_23;
                  }
                }

                if (([a1 isScreeningDueToUserInteraction] & 1) == 0)
                {
                  if ((v20 & 1) == 0)
                  {
                    v48 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(a1);
                    if (v49)
                    {
                      countAndFlagsBits = v48;
                      object = v49;
                    }

                    else
                    {
                      v50 = [objc_opt_self() conversationKit];
                      v60._object = 0xE000000000000000;
                      v51.value._countAndFlagsBits = 0x746174536C6C6143;
                      v52._object = 0x80000001BC4F9C10;
                      v52._countAndFlagsBits = 0xD000000000000011;
                      v51.value._object = 0xEA00000000007375;
                      v53._countAndFlagsBits = 0;
                      v53._object = 0xE000000000000000;
                      v60._countAndFlagsBits = 0;
                      v54 = NSLocalizedString(_:tableName:bundle:value:comment:)(v52, v51, v50, v53, v60);
                      countAndFlagsBits = v54._countAndFlagsBits;
                      object = v54._object;
                    }

                    goto LABEL_34;
                  }

                  v45 = [a1 handle];
                  if (v45)
                  {
                    v46 = v45;
                    countAndFlagsBits = TUHandle.formattedValue.getter();
                    object = v47;
                  }

                  else
                  {
                    countAndFlagsBits = 0;
                    object = 0xE000000000000000;
                  }

                  goto LABEL_23;
                }

                v34 = [objc_opt_self() conversationKit];
                v57 = 0xE000000000000000;
                v37 = 0x4E495F594C504552;
                v36 = 0xED00004C4C41435FLL;
                v35 = 0x746174536C6C6143;
              }

              else
              {
                v34 = [objc_opt_self() conversationKit];
                v57 = 0xE000000000000000;
                v35 = 0x746174536C6C6143;
                v36 = 0x80000001BC4F9C10;
                v37 = 0xD000000000000011;
              }

              v38 = 0xEA00000000007375;
              v39._countAndFlagsBits = 0;
              v39._object = 0xE000000000000000;
              v40 = 0;
              v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v37, *&v35, v34, v39, *(&v57 - 1));
              countAndFlagsBits = v41._countAndFlagsBits;
              object = v41._object;

              if (!v20)
              {
LABEL_34:
                v42 = 0;
                v44 = 0;
                goto LABEL_35;
              }

LABEL_23:
              v42 = outlined bridged method (pb) of @objc TUCall.companyDepartment.getter(a1);
              v44 = v43;
LABEL_35:
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
              v55 = swift_allocObject();
              *(v55 + 16) = xmmword_1BC4BA940;
              *(v55 + 32) = countAndFlagsBits;
              *(v55 + 40) = object;
              v56 = objc_allocWithZone(type metadata accessor for CallParticipantLabelDescriptor());
              return CallParticipantLabelDescriptor.init(strings:secondaryString:sourceString:durationString:layoutState:)(v55, v42, v44, 0, 0, 0, 0, 1);
            }
          }
        }
      }

      else
      {
        v21 = type metadata accessor for URL();
        __swift_storeEnumTagSinglePayload(v9, 1, 1, v21);
        outlined destroy of URL?(v9);
      }
    }

    v20 = 0;
    goto LABEL_15;
  }

  return result;
}

id specialized static CallParticipantLabelDescriptor.callScreeningLabelDescriptor(for:callCount:featureFlags:)(void *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v58 - v8;
  v10 = [a1 smartHoldingSession];
  v11 = v10;
  if (v10)
  {
  }

  v12 = [a1 isScreening];
  result = 0;
  if (!v11 && v12)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.isHeroImageEnabled.getter())
    {
      v14 = [a1 imageURL];
      if (v14)
      {
        v15 = v14;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v16 = type metadata accessor for URL();
        __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
        outlined destroy of URL?(v9);
        if (a2 == 1)
        {
          v17 = [a1 provider];
          v18 = [v17 isTelephonyProvider];

          if (v18)
          {
            outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(a1);
            if (v19)
            {

              v20 = 1;
LABEL_15:
              if ([a3 receptionistEnabled] && objc_msgSend(a1, sel_receptionistState))
              {
                v22 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(a1);
                if (v23)
                {
                  v24 = v22;
                  v25 = v23;
                  if (String.count.getter() > 0)
                  {
                    v26 = [objc_opt_self() conversationKit];
                    v59._object = 0xE000000000000000;
                    v27.value._countAndFlagsBits = 0x746174536C6C6143;
                    v28._countAndFlagsBits = 0xD000000000000014;
                    v28._object = 0x80000001BC514560;
                    v27.value._object = 0xEA00000000007375;
                    v29._countAndFlagsBits = 0;
                    v29._object = 0xE000000000000000;
                    v59._countAndFlagsBits = 0;
                    NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v27, v26, v29, v59);

                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                    v30 = swift_allocObject();
                    *(v30 + 16) = xmmword_1BC4BA940;
                    *(v30 + 56) = MEMORY[0x1E69E6158];
                    *(v30 + 64) = lazy protocol witness table accessor for type String and conformance String();
                    *(v30 + 32) = v24;
                    *(v30 + 40) = v25;
                    countAndFlagsBits = String.init(format:_:)();
                    object = v32;

                    if (!v20)
                    {
                      goto LABEL_34;
                    }

                    goto LABEL_23;
                  }
                }

                if (![a1 isScreeningDueToUserInteraction])
                {
                  if (!v20)
                  {
                    v48 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(a1);
                    if (v49)
                    {
                      countAndFlagsBits = v48;
                      object = v49;
                    }

                    else
                    {
                      v50 = [objc_opt_self() conversationKit];
                      v60._object = 0xE000000000000000;
                      v51.value._countAndFlagsBits = 0x746174536C6C6143;
                      v52._object = 0x80000001BC4F9C10;
                      v52._countAndFlagsBits = 0xD000000000000011;
                      v51.value._object = 0xEA00000000007375;
                      v53._countAndFlagsBits = 0;
                      v53._object = 0xE000000000000000;
                      v60._countAndFlagsBits = 0;
                      v54 = NSLocalizedString(_:tableName:bundle:value:comment:)(v52, v51, v50, v53, v60);
                      countAndFlagsBits = v54._countAndFlagsBits;
                      object = v54._object;
                    }

                    goto LABEL_34;
                  }

                  v45 = [a1 handle];
                  if (v45)
                  {
                    v46 = v45;
                    countAndFlagsBits = TUHandle.formattedValue.getter();
                    object = v47;
                  }

                  else
                  {
                    countAndFlagsBits = 0;
                    object = 0xE000000000000000;
                  }

                  goto LABEL_23;
                }

                v34 = [objc_opt_self() conversationKit];
                v57 = 0xE000000000000000;
                v37 = 0x4E495F594C504552;
                v36 = 0xED00004C4C41435FLL;
                v35 = 0x746174536C6C6143;
              }

              else
              {
                v34 = [objc_opt_self() conversationKit];
                v57 = 0xE000000000000000;
                v35 = 0x746174536C6C6143;
                v36 = 0x80000001BC4F9C10;
                v37 = 0xD000000000000011;
              }

              v38 = 0xEA00000000007375;
              v39._countAndFlagsBits = 0;
              v39._object = 0xE000000000000000;
              v40 = 0;
              v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v37, *&v35, v34, v39, *(&v57 - 1));
              countAndFlagsBits = v41._countAndFlagsBits;
              object = v41._object;

              if (!v20)
              {
LABEL_34:
                v42 = 0;
                v44 = 0;
                goto LABEL_35;
              }

LABEL_23:
              v42 = outlined bridged method (pb) of @objc TUCall.companyDepartment.getter(a1);
              v44 = v43;
LABEL_35:
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
              v55 = swift_allocObject();
              *(v55 + 16) = xmmword_1BC4BA940;
              *(v55 + 32) = countAndFlagsBits;
              *(v55 + 40) = object;
              v56 = objc_allocWithZone(type metadata accessor for CallParticipantLabelDescriptor());
              return CallParticipantLabelDescriptor.init(strings:secondaryString:sourceString:durationString:layoutState:)(v55, v42, v44, 0, 0, 0, 0, 1);
            }
          }
        }
      }

      else
      {
        v21 = type metadata accessor for URL();
        __swift_storeEnumTagSinglePayload(v9, 1, 1, v21);
        outlined destroy of URL?(v9);
      }
    }

    v20 = 0;
    goto LABEL_15;
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed TUCall) -> (@owned String?)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t CallScreening.MachineStateObserver.init(logger:stateMachine:statusService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v8 + 32))(a4, a1);
  result = type metadata accessor for CallScreening.MachineStateObserver(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

void CallScreening.MachineStateObserver.start()()
{
  v1 = v0;
  v2 = type metadata accessor for CallScreening.MachineStateObserver(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  static TaskPriority.userInitiated.getter();
  v8 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  OUTLINED_FUNCTION_9_92();
  outlined init with copy of CallScreening.MachineStateObserver(v1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static CKStateMachineActor.shared;
  v11 = lazy protocol witness table accessor for type CKStateMachineActor.ActorType and conformance CKStateMachineActor.ActorType();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  outlined init with take of CallScreening.MachineStateObserver(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

char *BackgroundTask.init(onExpire:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC15ConversationKitP33_63743B1C6178440FC5E37EF7A84CACCF14BackgroundTask_logger;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = __swift_project_value_buffer(v7, static Logger.conversationKit);
  (*(*(v7 - 8) + 16))(v3 + v6, v8, v7);
  *(v3 + OBJC_IVAR____TtC15ConversationKitP33_63743B1C6178440FC5E37EF7A84CACCF14BackgroundTask_backgroundTask) = *MEMORY[0x1E69DDBE8];
  v9 = (v3 + OBJC_IVAR____TtC15ConversationKitP33_63743B1C6178440FC5E37EF7A84CACCF14BackgroundTask_onExpire);
  *v9 = a1;
  v9[1] = a2;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136446210;
    v14 = _typeName(_:qualified:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1BBC58000, v10, v11, "%{public}s created", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
    MEMORY[0x1BFB23DF0](v12, -1, -1);
  }

  return v3;
}

void BackgroundTask.end()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_63743B1C6178440FC5E37EF7A84CACCF14BackgroundTask_backgroundTask);
  v3 = *MEMORY[0x1E69DDBE8];
  oslog = Logger.logObject.getter();
  if (v2 == v3)
  {
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446210;
      v7 = _typeName(_:qualified:)();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v19);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1BBC58000, oslog, v4, "%{public}s end failed", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1BFB23DF0](v6, -1, -1);
      MEMORY[0x1BFB23DF0](v5, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136446210;
      v13 = _typeName(_:qualified:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v19);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1BBC58000, oslog, v10, "%{public}s endBackgroundTask", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
      MEMORY[0x1BFB23DF0](v11, -1, -1);
    }

    v16 = [objc_opt_self() sharedApplication];
    v17 = OBJC_IVAR____TtC15ConversationKitP33_63743B1C6178440FC5E37EF7A84CACCF14BackgroundTask_backgroundTask;
    [v16 endBackgroundTask_];

    *(v1 + v17) = v3;
  }
}

void BackgroundTask.start()()
{
  v1 = v0;
  v2 = *v0;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKitP33_63743B1C6178440FC5E37EF7A84CACCF14BackgroundTask_backgroundTask) == *MEMORY[0x1E69DDBE8])
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      aBlock[0] = v6;
      *v5 = 136446466;
      v7 = _typeName(_:qualified:)();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, aBlock);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2082;
      *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001BC5137D0, aBlock);
      _os_log_impl(&dword_1BBC58000, v3, v4, "%{public}s beginBackgroundTask %{public}s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v6, -1, -1);
      MEMORY[0x1BFB23DF0](v5, -1, -1);
    }

    v10 = [objc_opt_self() sharedApplication];
    v11 = MEMORY[0x1BFB209B0](0xD000000000000010, 0x80000001BC5137D0);
    v12 = swift_allocObject();
    v12[2] = v1;
    v12[3] = 0xD000000000000010;
    v12[4] = 0x80000001BC5137D0;
    v12[5] = v2;
    aBlock[4] = partial apply for closure #1 in BackgroundTask.start();
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_89;
    v13 = _Block_copy(aBlock);

    v14 = [v10 beginBackgroundTaskWithName:v11 expirationHandler:v13];
    _Block_release(v13);

    *(v1 + OBJC_IVAR____TtC15ConversationKitP33_63743B1C6178440FC5E37EF7A84CACCF14BackgroundTask_backgroundTask) = v14;
  }

  else
  {
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136446210;
      v18 = _typeName(_:qualified:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, aBlock);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1BBC58000, oslog, v15, "%{public}s start failed", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1BFB23DF0](v17, -1, -1);
      MEMORY[0x1BFB23DF0](v16, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t closure #1 in BackgroundTask.start()(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446466;
    v11 = _typeName(_:qualified:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v17);
    _os_log_impl(&dword_1BBC58000, v7, v8, "%{public}s backgroundTask %{public}s expired", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v10, -1, -1);
    MEMORY[0x1BFB23DF0](v9, -1, -1);
  }

  v14 = *(a1 + OBJC_IVAR____TtC15ConversationKitP33_63743B1C6178440FC5E37EF7A84CACCF14BackgroundTask_onExpire);

  v14(v15);
}

uint64_t BackgroundTask.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKitP33_63743B1C6178440FC5E37EF7A84CACCF14BackgroundTask_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t CallScreening.MachineStateObserver.logger.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t CallScreening.MachineStateObserver.stateMachine.getter()
{
  type metadata accessor for CallScreening.MachineStateObserver(0);
}

uint64_t CallScreening.MachineStateObserver.statusService.getter()
{
  type metadata accessor for CallScreening.MachineStateObserver(0);
}

uint64_t closure #1 in CallScreening.MachineStateObserver.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[48] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAF13CallScreeningO0K0O_Gs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAF13CallScreeningO0K0O_Gs5NeverOGGMR);
  v4[49] = v5;
  v4[50] = *(v5 - 8);
  v4[51] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAH13CallScreeningO0L0O_Gs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAH13CallScreeningO0L0O_Gs5NeverOG_GMR);
  v4[52] = v6;
  v4[53] = *(v6 - 8);
  v4[54] = swift_task_alloc();
  v7 = type metadata accessor for CallScreening.MachineStateObserver(0);
  v4[55] = v7;
  v8 = *(v7 - 8);
  v4[56] = v8;
  v4[57] = *(v8 + 64);
  v4[58] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static CKStateMachineActor.shared;
  v4[59] = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreening.MachineStateObserver.start(), v9, 0);
}

uint64_t closure #1 in CallScreening.MachineStateObserver.start()()
{
  v1 = v0[58];
  v2 = v0[56];
  v0[39] = 0;
  v0[40] = 0;
  OUTLINED_FUNCTION_9_92();
  outlined init with copy of CallScreening.MachineStateObserver(v3, v1, v4);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v0[60] = v6;
  outlined init with take of CallScreening.MachineStateObserver(v1, v6 + v5);
  type metadata accessor for MainActor();
  v7 = OUTLINED_FUNCTION_79_1();
  v0[61] = v7;
  OUTLINED_FUNCTION_12_7(v7, MEMORY[0x1E69E85E0]);
  v8 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = v0[60];
  v2 = v0[59];

  type metadata accessor for BackgroundTask(0);
  swift_allocObject();
  v0[62] = BackgroundTask.init(onExpire:)(partial apply for closure #1 in closure #1 in CallScreening.MachineStateObserver.start(), v1);

  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreening.MachineStateObserver.start(), v2, 0);
}

{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_22_0(v2))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v3, v4, "Started listening to StateMachine changes for StateMachine");
    OUTLINED_FUNCTION_27();
  }

  v5 = v0[55];
  v7 = v0[50];
  v6 = v0[51];
  v9 = v0[48];
  v8 = v0[49];

  v10 = *(v9 + *(v5 + 20));
  v0[45] = *(v10 + *(*v10 + 120));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAD13CallScreeningO0I0O_Gs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAD13CallScreeningO0I0O_Gs5NeverOGMR);
  v12 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<CKStateMachine<CallScreening.State>.StateUpdate, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAD13CallScreeningO0I0O_Gs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAD13CallScreeningO0I0O_Gs5NeverOGMR, MEMORY[0x1E695BFB0]);
  MEMORY[0x1BFB1DE80](v11, v12);
  AsyncPublisher.makeAsyncIterator()();
  (*(v7 + 8))(v6, v8);
  v0[63] = lazy protocol witness table accessor for type CKStateMachineActor.ActorType and conformance CKStateMachineActor.ActorType();
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<CKStateMachine<CallScreening.State>.StateUpdate, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAH13CallScreeningO0L0O_Gs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAH13CallScreeningO0L0O_Gs5NeverOG_GMR);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_14_60(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_0_185(v14);

  return MEMORY[0x1EEE6D8C8](v0 + 2);
}

{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 520) = v0;

  v5 = *(v2 + 472);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v10 = closure #1 in CallScreening.MachineStateObserver.start();
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v9;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v10 = closure #1 in CallScreening.MachineStateObserver.start();
  }

  return MEMORY[0x1EEE6DFA0](v10, v6, v8);
}

{
  v1 = *(v0 + 472);
  v2 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v2;
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);
  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreening.MachineStateObserver.start(), v1, 0);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 136);
  if (v2 == 255)
  {
    (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_22_0(v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v13, v14, "stopped listening to changes for StateMachine");
      OUTLINED_FUNCTION_27();
    }

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_23_50();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 104);
  v39 = *(v0 + 120);
  v40 = *(v0 + 112);
  v38 = *(v0 + 128);
  outlined copy of CKStateMachine<CallScreening.State>.StateUpdate(*(v0 + 80), v4, v3, v5, v40, v39, v38, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0 + 80, &_s15ConversationKit14CKStateMachineC11StateUpdateOyAA13CallScreeningO0E0O_GSgMd, &_s15ConversationKit14CKStateMachineC11StateUpdateOyAA13CallScreeningO0E0O_GSgMR);
  if (os_log_type_enabled(v6, v7))
  {
    v36 = v5;
    v37 = v3;
    v8 = OUTLINED_FUNCTION_42();
    v9 = swift_slowAlloc();
    *(v0 + 376) = v9;
    *v8 = 136446210;
    v35 = v4;
    if (v2)
    {
      if (v2 != 1)
      {
        v26 = 0xE700000000000000;
        v25 = 0x65756C61566F6ELL;
LABEL_19:
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, (v0 + 376));

        *(v8 + 4) = v27;
        _os_log_impl(&dword_1BBC58000, v6, v7, "StateMachine Reported statemachine update %{public}s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v9);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();

        v4 = v35;
        v5 = v36;
        v3 = v37;
        if (!v2)
        {
          goto LABEL_20;
        }

        goto LABEL_12;
      }

      v33 = v1;
      v34 = (v0 + 328);
      v10 = (v0 + 336);
      *(v0 + 144) = v1;
      *(v0 + 152) = v4;
      *(v0 + 160) = v37;
      *(v0 + 168) = v36;
      *(v0 + 176) = v40;
      *(v0 + 184) = v39;
      *(v0 + 192) = v38;
      *(v0 + 328) = 0x2064657265746E45;
    }

    else
    {
      v33 = v1;
      v34 = (v0 + 344);
      v10 = (v0 + 352);
      *(v0 + 200) = v1;
      *(v0 + 208) = v4;
      *(v0 + 216) = v37;
      *(v0 + 224) = v36;
      *(v0 + 232) = v40;
      *(v0 + 240) = v39;
      *(v0 + 248) = v38;
      *(v0 + 344) = 0x20676E6974697845;
    }

    *v10 = 0xE800000000000000;
    v23 = v10;
    v24 = CallScreening.State.description.getter();
    MEMORY[0x1BFB20B10](v24);

    v25 = *v34;
    v26 = *v23;
    v1 = v33;
    goto LABEL_19;
  }

  if (!v2)
  {
LABEL_20:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0 + 80, &_s15ConversationKit14CKStateMachineC11StateUpdateOyAA13CallScreeningO0E0O_GSgMd, &_s15ConversationKit14CKStateMachineC11StateUpdateOyAA13CallScreeningO0E0O_GSgMR);
    goto LABEL_21;
  }

LABEL_12:
  if (v2 != 1)
  {
LABEL_21:
    OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<CKStateMachine<CallScreening.State>.StateUpdate, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAH13CallScreeningO0L0O_Gs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAH13CallScreeningO0L0O_Gs5NeverOG_GMR);
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_14_60(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_0_185(v29);
    OUTLINED_FUNCTION_23_50();

    return MEMORY[0x1EEE6D8C8](v31);
  }

  *(v0 + 256) = v1;
  *(v0 + 264) = v4;
  *(v0 + 272) = v3;
  *(v0 + 280) = v5;
  *(v0 + 288) = v40;
  *(v0 + 296) = v39;
  *(v0 + 304) = v38;
  outlined copy of CKStateMachine<CallScreening.State>.StateUpdate(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  v17 = swift_task_alloc();
  *(v0 + 528) = v17;
  *v17 = v0;
  v17[1] = closure #1 in CallScreening.MachineStateObserver.start();
  OUTLINED_FUNCTION_23_50();

  return CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:)(v18, v19, v20);
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 368) = *(v0 + 520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 472);
  v3 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreening.MachineStateObserver.start(), v2, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0 + 80, &_s15ConversationKit14CKStateMachineC11StateUpdateOyAA13CallScreeningO0E0O_GSgMd, &_s15ConversationKit14CKStateMachineC11StateUpdateOyAA13CallScreeningO0E0O_GSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0 + 80, &_s15ConversationKit14CKStateMachineC11StateUpdateOyAA13CallScreeningO0E0O_GSgMd, &_s15ConversationKit14CKStateMachineC11StateUpdateOyAA13CallScreeningO0E0O_GSgMR);
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<CKStateMachine<CallScreening.State>.StateUpdate, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAH13CallScreeningO0L0O_Gs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAH13CallScreeningO0L0O_Gs5NeverOG_GMR);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_14_60(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_0_185(v2);

  return MEMORY[0x1EEE6D8C8](v0 + 16);
}

void closure #1 in closure #1 in CallScreening.MachineStateObserver.start()()
{
  oslog = Logger.logObject.getter();
  v0 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&dword_1BBC58000, oslog, v0, "MainAnsweringMachine: Recieved expiration notice for background task.", v1, 2u);
    MEMORY[0x1BFB23DF0](v1, -1, -1);
  }
}

uint64_t CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[12] = *(type metadata accessor for AnsweringMachineCallStatus(0) - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:), 0, 0);
}

uint64_t CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:)()
{
  v32 = v0;
  v1 = *(v0 + 64);
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  switch(v1[6] >> 61)
  {
    case 2uLL:
      v17 = *(v0 + 72);
      v2 = v1[3];
      *v17 = v4;
      v17[1] = v2;

      goto LABEL_9;
    case 3uLL:
    case 4uLL:
      v16 = *(v0 + 72);
      *v16 = v3;
      v16[1] = v2;

      goto LABEL_7;
    case 5uLL:
      *(v0 + 16) = v3;
      *(v0 + 24) = v2;
      *(v0 + 32) = v4;
      v27 = *(v0 + 72);
      if (v4 > 1u)
      {
        *v27 = 0;
        v27[1] = 0;
LABEL_18:
        v28 = type metadata accessor for CallScreening.MachineStateObserver(0);
        OUTLINED_FUNCTION_19_43(v28);
        v29 = OUTLINED_FUNCTION_79_1();
        *(v0 + 208) = v29;
        OUTLINED_FUNCTION_12_7(v29, MEMORY[0x1E69E85E0]);
        OUTLINED_FUNCTION_7_91();
      }

      else
      {
        *v27 = v3;
        v27[1] = v2;
        outlined init with copy of CallScreening.EndingAction(v0 + 16, v0 + 40);
LABEL_7:
        v4 = v3;
LABEL_9:
        *(v0 + 128) = v4;
        *(v0 + 136) = v2;
        if (*(v0 + 80))
        {
          swift_bridgeObjectRetain_n();

          v18 = Logger.logObject.getter();
          v19 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v18, v19))
          {
            v20 = OUTLINED_FUNCTION_42();
            v21 = swift_slowAlloc();
            v31 = v21;
            *v20 = 136446210;
            v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v2, &v31);

            *(v20 + 4) = v22;
            _os_log_impl(&dword_1BBC58000, v18, v19, "MainAnsweringMachine: Starting background task due to tracked call %{public}s", v20, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v21);
            OUTLINED_FUNCTION_27();
            OUTLINED_FUNCTION_27();
          }

          else
          {
          }

          type metadata accessor for MainActor();
          v25 = OUTLINED_FUNCTION_79_1();
          *(v0 + 144) = v25;
          v12 = OUTLINED_FUNCTION_12_7(v25, MEMORY[0x1E69E85E0]);
          v14 = v26;
          v15 = CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:);
        }

        else
        {
          v23 = type metadata accessor for CallScreening.MachineStateObserver(0);
          OUTLINED_FUNCTION_20_52(v23);
          v24 = OUTLINED_FUNCTION_79_1();
          *(v0 + 168) = v24;
          OUTLINED_FUNCTION_12_7(v24, MEMORY[0x1E69E85E0]);
          OUTLINED_FUNCTION_6_100();
        }
      }

      break;
    default:
      v6 = *(v0 + 72);
      v5 = *(v0 + 80);
      *v6 = 0;
      v6[1] = 0;
      if (!v5)
      {
        goto LABEL_18;
      }

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_22_0(v8))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v9, v10, "Ending background task.");
        OUTLINED_FUNCTION_27();
      }

      type metadata accessor for MainActor();
      v11 = OUTLINED_FUNCTION_79_1();
      *(v0 + 120) = v11;
      v12 = OUTLINED_FUNCTION_12_7(v11, MEMORY[0x1E69E85E0]);
      v14 = v13;
      v15 = CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:);
      break;
  }

  return MEMORY[0x1EEE6DFA0](v15, v12, v14);
}

{
  OUTLINED_FUNCTION_24_0();

  BackgroundTask.end()();
  v0 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = type metadata accessor for CallScreening.MachineStateObserver(0);
  OUTLINED_FUNCTION_19_43(v1);
  v2 = OUTLINED_FUNCTION_79_1();
  *(v0 + 208) = v2;
  OUTLINED_FUNCTION_12_7(v2, MEMORY[0x1E69E85E0]);
  OUTLINED_FUNCTION_7_91();
  v3 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_24_0();

  BackgroundTask.start()();
  v0 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = type metadata accessor for CallScreening.MachineStateObserver(0);
  OUTLINED_FUNCTION_20_52(v1);
  v2 = OUTLINED_FUNCTION_79_1();
  *(v0 + 168) = v2;
  OUTLINED_FUNCTION_12_7(v2, MEMORY[0x1E69E85E0]);
  OUTLINED_FUNCTION_6_100();
  v3 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);

  CallStatusService.currentStatus(updateSource:for:)(0x6168436574617453, 0xEB0000000065676ELL, v2, v1);
  v3 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:);

  return CKStateMachine<>.update(with:)();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;
  *(v4 + 184) = v0;

  if (v0)
  {
    v5 = CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:);
  }

  else
  {
    v5 = CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  outlined destroy of AnsweringMachineCallStatus(*(v0 + 112));

  OUTLINED_FUNCTION_13();

  return v1();
}

{
  OUTLINED_FUNCTION_24_0();

  CallStatusService.currentStatusForAllCalls()();
  *(v0 + 216) = v1;
  v2 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_24_0();
  result = v0[27];
  v2 = *(result + 16);
  v0[28] = v2;
  v0[29] = 0;
  if (v2)
  {
    if (*(result + 16))
    {
      OUTLINED_FUNCTION_8_94();
      outlined init with copy of CallScreening.MachineStateObserver(v3 + v4, v5, v6);
      v7 = swift_task_alloc();
      v0[30] = v7;
      *v7 = v0;
      OUTLINED_FUNCTION_5_124(v7);

      return CKStateMachine<>.update(with:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v8();
  }

  return result;
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v3 + 248) = v0;

  outlined destroy of AnsweringMachineCallStatus(*(v3 + 104));
  if (v0)
  {

    v6 = CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:);
  }

  else
  {
    v6 = CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  outlined destroy of AnsweringMachineCallStatus(*(v0 + 112));
  v1 = *(v0 + 184);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    OUTLINED_FUNCTION_47_0(&dword_1BBC58000, v9, v10, "Failed to update stateMachine with callstatus error: %{public}@");
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();

  return v11();
}

{
  v1 = *(v0 + 248);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    OUTLINED_FUNCTION_47_0(&dword_1BBC58000, v9, v10, "Failed to update stateMachine with callstatus error: %{public}@");
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();

  return v11();
}

void CallScreening.MachineStateObserver.handleNewStateEntered(stateChange:currentTrackedCallUUID:backgroundTask:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = v0[28];
  v2 = v0[29] + 1;
  v0[29] = v2;
  if (v2 == v1)
  {

    OUTLINED_FUNCTION_13();

    v3();
  }

  else if (v2 >= *(v0[27] + 16))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_8_94();
    outlined init with copy of CallScreening.MachineStateObserver(v4, v5, v6);
    v7 = swift_task_alloc();
    v0[30] = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_5_124(v7);

    CKStateMachine<>.update(with:)();
  }
}