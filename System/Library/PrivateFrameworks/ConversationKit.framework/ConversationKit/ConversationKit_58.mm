uint64_t outlined init with take of CallScreening.MachineStateObserver(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallScreening.MachineStateObserver(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in CallScreening.MachineStateObserver.start()(uint64_t a1)
{
  v4 = *(type metadata accessor for CallScreening.MachineStateObserver(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return closure #1 in CallScreening.MachineStateObserver.start()(a1, v6, v7, v1 + v5);
}

uint64_t type metadata completion function for BackgroundTask(uint64_t a1)
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

void partial apply for closure #1 in closure #1 in CallScreening.MachineStateObserver.start()()
{
  type metadata accessor for CallScreening.MachineStateObserver(0);

  closure #1 in closure #1 in CallScreening.MachineStateObserver.start()();
}

uint64_t outlined copy of CKStateMachine<CallScreening.State>.StateUpdate(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unsigned __int8 a8)
{
  if (a8 <= 1u)
  {
    return outlined copy of CallScreening.State(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t outlined init with copy of CallScreening.MachineStateObserver(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

id TUConversation.joinConversationRequest()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69D8C10]) initWithConversation:v0 originatingUIType:20];
  [v1 setWantsStagingArea_];
  [v1 setAvMode_];
  [v1 setVideoEnabled_];
  return v1;
}

uint64_t default argument 5 of SystemApertureIcon.init(asset:accessibilityLabel:wantsPillForDetachedAppearance:leadingOffsetForConcentricWhenCompact:wantsIntelligenceGradient:animation:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6995E08];
  type metadata accessor for ActivitySymbol.Animation();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t SystemApertureIcon.init(asset:accessibilityLabel:wantsPillForDetachedAppearance:leadingOffsetForConcentricWhenCompact:wantsIntelligenceGradient:animation:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v11 = a1[1];
  *a7 = *a1;
  *(a7 + 16) = v11;
  *(a7 + 25) = *(a1 + 25);
  *(a7 + 48) = a2;
  *(a7 + 56) = a3;
  *(a7 + 64) = a4;
  *(a7 + 72) = a8;
  *(a7 + 80) = a5;
  OUTLINED_FUNCTION_26_43();
  OUTLINED_FUNCTION_7_0();
  v13 = *(v12 + 32);

  return v13(a7 + v8, a6);
}

void SystemApertureIconView.__allocating_init(icon:isDetached:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);
  OUTLINED_FUNCTION_6_4();
  SystemApertureIconView.init(icon:isDetached:)();
}

BOOL static SystemApertureIconAsset.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((a1[5] & 1) == 0)
  {
    if ((a2[5] & 1) == 0)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  if ((a2[5] & 1) == 0)
  {
    return 0;
  }

  v2 = a1[1];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[1];
  v7 = a2[3];
  v6 = a2[4];
  if (v2)
  {
    if (!v5)
    {
      return 0;
    }

    v8 = *a1 == *a2 && v2 == v5;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (v6)
    {
      v10 = v4 == v7 && v3 == v6;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v6;
}

uint64_t SystemApertureIcon.accessibilityLabel.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SystemApertureIcon.animation.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_26_43();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v2, v4);
}

uint64_t SystemApertureIcon.animation.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_26_43();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 40);

  return v5(v1 + v2, a1);
}

void static SystemApertureIcon.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_29();
  v14 = v13;
  v15 = v12;
  v16 = *v13;
  if ((*(v12 + 40) & 1) == 0)
  {
    if ((v13[5] & 1) == 0)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      if (static NSObject.== infix(_:_:)())
      {
        goto LABEL_13;
      }
    }

    goto LABEL_35;
  }

  if ((v13[5] & 1) == 0)
  {
    goto LABEL_35;
  }

  v18 = *(v12 + 24);
  v17 = *(v12 + 32);
  v19 = v13[1];
  v21 = v13[3];
  v20 = v13[4];
  v22 = *(v12 + 8);
  if (v22)
  {
    if (!v19)
    {
      goto LABEL_35;
    }

    v23 = *v12 == v16 && v22 == v19;
    if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v19)
  {
    goto LABEL_35;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_35;
  }

  if (!v17)
  {
    if (!v20)
    {
      goto LABEL_13;
    }

LABEL_35:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  if (!v20)
  {
    goto LABEL_35;
  }

  v26 = v18 == v21 && v17 == v20;
  if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_13:
  v24 = *(v15 + 48) == *(v14 + 6) && *(v15 + 56) == *(v14 + 7);
  if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v15 + 64) != *(v14 + 64) || *(v15 + 72) != v14[9] || *(v15 + 80) != *(v14 + 80))
  {
    goto LABEL_35;
  }

  type metadata accessor for SystemApertureIcon(0);
  OUTLINED_FUNCTION_30_0();

  static ActivitySymbol.Animation.== infix(_:_:)();
}

uint64_t key path setter for SystemApertureIconView.icon : SystemApertureIconView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for SystemApertureIcon(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SystemApertureIcon(a1, v7, v5, type metadata accessor for SystemApertureIcon);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x70))(v7);
}

void SystemApertureIconView.icon.didset(uint64_t a1)
{
  v3 = type metadata accessor for SystemApertureIcon(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_icon;
  swift_beginAccess();
  outlined init with copy of SystemApertureIcon(v1 + v6, v5, v7, type metadata accessor for SystemApertureIcon);
  static SystemApertureIcon.== infix(_:_:)(v5, a1, v8, v9, v10, v11, v12, v13, v15[0], v15[1], v15[2], v15[3]);
  LOBYTE(a1) = v14;
  outlined destroy of SystemApertureIcon(v5, type metadata accessor for SystemApertureIcon);
  if ((a1 & 1) == 0)
  {
    SystemApertureIconView.updateIconView()();
  }
}

uint64_t SystemApertureIconView.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_icon;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_icon, v7);
  OUTLINED_FUNCTION_7_92();
  return outlined init with copy of SystemApertureIcon(v1 + v3, a1, v5, v4);
}

uint64_t SystemApertureIconView.icon.setter(uint64_t a1)
{
  v4 = type metadata accessor for SystemApertureIcon(0);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_icon;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_icon, v14);
  OUTLINED_FUNCTION_12_75();
  outlined init with copy of SystemApertureIcon(v1 + v9, v8, v11, v10);
  OUTLINED_FUNCTION_30_2(v1 + v9, v13);
  outlined assign with copy of SystemApertureIcon(a1, v1 + v9);
  swift_endAccess();
  SystemApertureIconView.icon.didset(v8);
  outlined destroy of SystemApertureIcon(a1, v2);
  return outlined destroy of SystemApertureIcon(v8, v2);
}

void (*SystemApertureIconView.icon.modify(void *a1))(uint64_t a1, char a2, double a3)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = type metadata accessor for SystemApertureIcon(0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  v3[4] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[5] = v7;
  v8 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_icon;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_icon, v3);
  OUTLINED_FUNCTION_7_92();
  outlined init with copy of SystemApertureIcon(v1 + v8, v7, v10, v9);
  return SystemApertureIconView.icon.modify;
}

void SystemApertureIconView.icon.modify(uint64_t a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  if (a2)
  {
    outlined init with copy of SystemApertureIcon(*(*a1 + 40), v4, a3, type metadata accessor for SystemApertureIcon);
    SystemApertureIconView.icon.setter(v4);
    outlined destroy of SystemApertureIcon(v5, type metadata accessor for SystemApertureIcon);
  }

  else
  {
    SystemApertureIconView.icon.setter(*(*a1 + 40));
  }

  free(v5);
  free(v4);

  free(v3);
}

id SystemApertureIconView.IconView.view.getter()
{
  v1 = type metadata accessor for SystemApertureIconView.IconView(0);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of SystemApertureIcon(v0, v4, v2, type metadata accessor for SystemApertureIconView.IconView);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *v4;
  switch(EnumCaseMultiPayload)
  {
    case 1:

      break;
    case 2:
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11UIImageViewC_20CommunicationsUICore14ActivitySymbolV9AnimationOtMd, &_sSo11UIImageViewC_20CommunicationsUICore14ActivitySymbolV9AnimationOtMR) + 48);
      v8 = type metadata accessor for ActivitySymbol.Animation();
      (*(*(v8 - 8) + 8))(v4 + v7, v8);
      break;
    default:
      return v6;
  }

  return v6;
}

void SystemApertureIconView.init(icon:isDetached:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  ObjectType = swift_getObjectType();
  type metadata accessor for SystemApertureIconView.IconView(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = (v8 - v7);
  v10 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView;
  *&v0[v10] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_7_92();
  outlined init with copy of SystemApertureIcon(v4, &v0[v11], v13, v12);
  if (v2 & 1) != 0 && (*(v4 + 64))
  {
    v14 = 45.0;
  }

  else
  {
    v14 = 1.0;
  }

  *&v0[OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_minimumWidth] = v14;
  v36.receiver = v0;
  v36.super_class = type metadata accessor for SystemApertureIconView(0);
  v15 = objc_msgSendSuper2(&v36, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v16 = one-time initialization token for conversationControls;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, &static Logger.conversationControls);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v35[0] = v22;
    *v21 = 136446210;
    v23 = _typeName(_:qualified:)();
    ObjectType = v24;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v35);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1BBC58000, v19, v20, "[SystemAperture] %{public}s created", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1BFB23DF0](v22, -1, -1);
    MEMORY[0x1BFB23DF0](v21, -1, -1);
  }

  SystemApertureIconView.updateIconView()();
  v26 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView;
  OUTLINED_FUNCTION_4_0(v17 + OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView, v35);
  OUTLINED_FUNCTION_11_90();
  outlined init with copy of SystemApertureIcon(v17 + v26, v9, v28, v27);
  SystemApertureIconView.IconView.view.getter();
  v29 = OUTLINED_FUNCTION_6_4();
  outlined destroy of SystemApertureIcon(v29, ObjectType);
  [v17 addSubview_];

  v30 = *(v4 + 48);
  v31 = *(v4 + 56);
  v32 = v17;
  v33 = MEMORY[0x1BFB209B0](v30, v31);
  [v32 setAccessibilityLabel_];

  OUTLINED_FUNCTION_0_186();
  outlined destroy of SystemApertureIcon(v4, v34);
  OUTLINED_FUNCTION_30_0();
}

id SystemApertureIconView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void SystemApertureIconView.init(frame:)()
{
  OUTLINED_FUNCTION_30_30([objc_allocWithZone(MEMORY[0x1E69DCAE0]) init]);
  OUTLINED_FUNCTION_0_46();
  __break(1u);
}

id SystemApertureIconView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SystemApertureIconView.init(coder:)()
{
  OUTLINED_FUNCTION_30_30([objc_allocWithZone(MEMORY[0x1E69DCAE0]) init]);
  OUTLINED_FUNCTION_0_46();
  __break(1u);
}

Swift::Void __swiftcall SystemApertureIconView.layoutSubviews()()
{
  v4 = v0;
  v5 = type metadata accessor for FloatingPointRoundingRule();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = type metadata accessor for SystemApertureIconView.IconView(0);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  v33.receiver = v4;
  v33.super_class = type metadata accessor for SystemApertureIconView(0);
  objc_msgSendSuper2(&v33, sel_layoutSubviews);
  v17 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView;
  OUTLINED_FUNCTION_4_0(v4 + OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView, v32);
  OUTLINED_FUNCTION_11_90();
  outlined init with copy of SystemApertureIcon(v4 + v17, v16, v19, v18);
  v20 = SystemApertureIconView.IconView.view.getter();
  outlined destroy of SystemApertureIcon(v16, v1);
  [v4 bounds];
  [v20 sizeThatFits_];
  OUTLINED_FUNCTION_0_137();

  [v4 bounds];
  v23 = (CGRectGetWidth(v34) - v2) * 0.5;
  [v4 bounds];
  v24 = (CGRectGetHeight(v35) - v3) * 0.5;
  (*(v7 + 104))(v11, *MEMORY[0x1E69E7048], v5);
  v25 = [v4 traitCollection];
  [v25 displayScale];
  v27 = v26;
  v28 = CGFloat.rounded(_:toScale:)(v11, v26, v23);
  v29 = CGFloat.rounded(_:toScale:)(v11, v27, v24);

  v30 = (*(v7 + 8))(v11, v5);
  outlined init with copy of SystemApertureIcon(v4 + v17, v16, v30, v1);
  v31 = SystemApertureIconView.IconView.view.getter();
  outlined destroy of SystemApertureIcon(v16, v1);
  [v31 setFrame_];
}

CGSize __swiftcall SystemApertureIconView.sizeThatFits(_:)(CGSize a1)
{
  v3 = v1;
  height = a1.height;
  width = a1.width;
  v6 = type metadata accessor for SystemApertureIconView.IconView(0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView;
  OUTLINED_FUNCTION_4_0(v3 + OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView, v18);
  OUTLINED_FUNCTION_10_76();
  outlined init with copy of SystemApertureIcon(v3 + v11, v10, v13, v12);
  v14 = SystemApertureIconView.IconView.view.getter();
  outlined destroy of SystemApertureIcon(v10, v2);
  [v14 sizeThatFits_];
  OUTLINED_FUNCTION_0_137();

  v15 = *(v3 + OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_minimumWidth);
  if (height > v15)
  {
    v15 = height;
  }

  v16 = width;
  result.height = v16;
  result.width = v15;
  return result;
}

void SystemApertureIconView.preferredLayoutMargins.getter()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = type metadata accessor for SystemApertureIcon(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v31 = (*MEMORY[0x1E69E7D40] & *v0) + 104;
  v32 = v12;
  v12(v9);
  v13 = *(v11 + 2);
  v14 = v11[40];
  v15 = OUTLINED_FUNCTION_24_44();
  outlined copy of SystemApertureIconAsset(v15, v16, v17, v18, v19, v14);
  OUTLINED_FUNCTION_0_186();
  outlined destroy of SystemApertureIcon(v11, v20);
  if (v14 == 1)
  {

    v0 = 0;
    v21 = 0;
    v22 = 0x4025000000000000;
    v23 = 0x4025000000000000;
  }

  else
  {
    v24 = OUTLINED_FUNCTION_24_44();
    outlined consume of SystemApertureIconAsset(v24, v25, v26, v27, v28, 0);
    v32();
    v22 = *(v7 + 72);
    OUTLINED_FUNCTION_0_186();
    outlined destroy of SystemApertureIcon(v7, v29);
    v30 = v0;
    v23 = 0;
    v21 = 1;
  }

  *v2 = v0;
  *(v2 + 8) = v22;
  *(v2 + 16) = 0;
  *(v2 + 24) = v23;
  *(v2 + 32) = v21;
  OUTLINED_FUNCTION_30_0();
}

void SystemApertureIconView.updateIconView(using:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v61 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13_67(v7);
  v60 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v58 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v57 = v11 - v10;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_1();
  v63 = v12;
  v64 = v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  v20 = OUTLINED_FUNCTION_4_24();
  v62 = type metadata accessor for SystemApertureIconView.IconView(v20);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  v24 = (v23 - v22);
  v26 = *v3;
  v25 = v3[1];
  v27 = v3[2];
  v28 = objc_allocWithZone(MEMORY[0x1E698E7D8]);
  OUTLINED_FUNCTION_6_4();

  v29 = v27;
  v31 = @nonobjc BSUICAPackageView.init(packageName:in:)(v30, v26, v25, v27);
  if (v31)
  {
    v32 = v31;
    v56 = v4;
    v33 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView;
    OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView, &v66);
    OUTLINED_FUNCTION_10_76();
    outlined init with copy of SystemApertureIcon(v0 + v33, v24, v35, v34);
    v36 = SystemApertureIconView.IconView.view.getter();
    outlined destroy of SystemApertureIcon(v24, v25);
    [v36 removeFromSuperview];

    [v1 addSubview_];
    v37 = v3[4];
    if (v37)
    {
      v55 = v33;
      v38 = v3[3];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      OUTLINED_FUNCTION_6_4();

      v53 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v52 = v19;
      + infix(_:_:)(1.0);
      v39 = *(v64 + 8);
      v64 += 8;
      v54 = v39;
      v39(v16, v63);
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = swift_allocObject();
      v41[2] = v40;
      v41[3] = v32;
      v41[4] = v38;
      v41[5] = v37;
      v65[4] = partial apply for closure #1 in SystemApertureIconView.updateIconView(using:);
      v65[5] = v41;
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 1107296256;
      v65[2] = thunk for @escaping @callee_guaranteed () -> ();
      v65[3] = &block_descriptor_90;
      v42 = _Block_copy(v65);
      v43 = v32;

      v44 = v57;
      static DispatchQoS.unspecified.getter();
      v65[0] = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type VariableColorSymbolEffect and conformance VariableColorSymbolEffect(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v45 = v59;
      v46 = v56;
      v33 = v55;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v47 = v1;
      v48 = v52;
      v49 = v53;
      MEMORY[0x1BFB21510](v52, v44, v45, v42);
      _Block_release(v42);

      (*(v61 + 8))(v45, v46);
      (*(v58 + 8))(v44, v60);
      v50 = v48;
      v1 = v47;
      v54(v50, v63);
    }

    *v24 = v32;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_30_2(v1 + v33, v65);
    outlined assign with take of SystemApertureIconView.IconView(v24, v1 + v33);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in SystemApertureIconView.updateIconView(using:)(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SystemApertureIconView.IconView(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView;
    swift_beginAccess();
    outlined init with copy of SystemApertureIcon(v11 + v12, v9, v13, type metadata accessor for SystemApertureIconView.IconView);
    v14 = SystemApertureIconView.IconView.view.getter();
    outlined destroy of SystemApertureIcon(v9, type metadata accessor for SystemApertureIconView.IconView);

    if (v14 == a2)
    {
      outlined bridged method (mbgnn) of @objc BSUICAPackageView.setState(_:)(a3, a4, a2);
    }
  }
}

void SystemApertureIconView.updateIconViewForIntelligence()()
{
  type metadata accessor for SystemApertureIconView.IconView(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_17();
  v4 = (v2 - v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v33 - v6);
  v8 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView;
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView, v36);
  OUTLINED_FUNCTION_6_101();
  outlined init with copy of SystemApertureIcon(v0 + v8, v7, v10, v9);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_1_151();
    outlined destroy of SystemApertureIcon(v7, v11);
  }

  else
  {
    v12 = *v7;
    v13 = [*v7 image];
    if (v13)
    {
      v33 = v13;
      v14 = v12;
      [v14 sizeToFit];
      v15 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
      v34 = v4;
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1BC4BB980;
      v18 = objc_opt_self();
      v19 = [v18 systemBlueColor];
      v20 = [v19 CGColor];

      type metadata accessor for CGColorRef(0);
      v22 = v21;
      *(v17 + 56) = v21;
      *(v17 + 32) = v20;
      v23 = [v18 systemPurpleColor];
      v24 = [v23 &selRef_setZoomScale_];

      *(v17 + 88) = v22;
      *(v17 + 64) = v24;
      v25 = [v18 systemPinkColor];
      v26 = [v25 CGColor];

      *(v17 + 120) = v22;
      *(v17 + 96) = v26;
      outlined bridged method (mbnn) of @objc CAGradientLayer.colors.setter(v17, v16);
      [v16 setStartPoint_];
      [v16 setEndPoint_];
      v27 = v16;
      [v14 bounds];
      OUTLINED_FUNCTION_0_137();

      OUTLINED_FUNCTION_29_33(v27, sel_setFrame_);
      v28 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
      [v14 bounds];
      OUTLINED_FUNCTION_0_137();

      OUTLINED_FUNCTION_29_33(v28, sel_setFrame_);
      v29 = v33;
      v30 = [v33 CGImage];
      [v28 setContents_];

      [v27 setMask_];
      v31 = [v14 layer];

      [v31 addSublayer_];
      v32 = v34;
      *v34 = v14;
      *(v32 + 8) = v27;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_30_2(v0 + v8, v35);
      outlined assign with take of SystemApertureIconView.IconView(v32, v0 + v8);
      swift_endAccess();
    }

    else
    {
    }
  }
}

void SystemApertureIconView.updateIconView(with:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v71 = v2;
  type metadata accessor for SymbolEffectOptions.RepeatBehavior();
  OUTLINED_FUNCTION_1();
  v64 = v4;
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13_67(v5);
  type metadata accessor for SymbolEffectOptions();
  OUTLINED_FUNCTION_1();
  v67 = v7;
  v68 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v62 = v9 - v8;
  OUTLINED_FUNCTION_4_24();
  v10 = type metadata accessor for VariableColorSymbolEffect();
  OUTLINED_FUNCTION_1();
  v66 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  v19 = type metadata accessor for ActivitySymbol.Animation();
  OUTLINED_FUNCTION_1();
  v69 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  v24 = v23 - v22;
  v25 = type metadata accessor for SystemApertureIconView.IconView(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_17();
  v29 = (v27 - v28);
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v59 - v31);
  v33 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView, &v73);
  OUTLINED_FUNCTION_6_101();
  v70 = v1;
  outlined init with copy of SystemApertureIcon(v1 + v33, v32, v35, v34);
  if (!swift_getEnumCaseMultiPayload())
  {
    v61 = v25;
    v59 = v10;
    v37 = *v32;
    [*v32 sizeToFit];
    v38 = v69;
    v60 = *(v69 + 16);
    v60(v24, v71, v19);
    v39 = v38;
    v40 = (*(v38 + 88))(v24, v19);
    v41 = v33;
    if (v40 != *MEMORY[0x1E6995E08])
    {
      if (v40 == *MEMORY[0x1E6995DF8])
      {
        v42 = v18;
        VariableColorSymbolEffect.init()();
        v69 = v19;
        v19 = v29;
        VariableColorSymbolEffect.iterative.getter();
        v43 = *(v66 + 8);
        v66 = v33;
        v44 = v59;
        v43(v42, v59);
        v29 = v63;
        static SymbolEffectOptions.RepeatBehavior.continuous.getter();
        MEMORY[0x1BFB20550](v29);
        (*(v64 + 8))(v29, v65);
        OUTLINED_FUNCTION_9_93();
        lazy protocol witness table accessor for type VariableColorSymbolEffect and conformance VariableColorSymbolEffect(v45, v46, MEMORY[0x1E6982228]);
        OUTLINED_FUNCTION_21_50();
        v47 = OUTLINED_FUNCTION_23_51();
        v48(v47);
        v49 = v15;
      }

      else
      {
        if (v40 != *MEMORY[0x1E6995E00])
        {
          (*(v39 + 8))(v24, v19);
          goto LABEL_10;
        }

        v50 = v15;
        v51 = v18;
        VariableColorSymbolEffect.init()();
        v69 = v19;
        v19 = v29;
        VariableColorSymbolEffect.cumulative.getter();
        v43 = *(v66 + 8);
        v66 = v41;
        v44 = v59;
        v43(v51, v59);
        v29 = v63;
        static SymbolEffectOptions.RepeatBehavior.continuous.getter();
        MEMORY[0x1BFB20550](v29);
        (*(v64 + 8))(v29, v65);
        OUTLINED_FUNCTION_9_93();
        lazy protocol witness table accessor for type VariableColorSymbolEffect and conformance VariableColorSymbolEffect(v52, v53, MEMORY[0x1E6982228]);
        OUTLINED_FUNCTION_21_50();
        v54 = OUTLINED_FUNCTION_23_51();
        v55(v54);
        v49 = v50;
      }

      v56 = v44;
      v41 = v66;
      v43(v49, v56);
    }

LABEL_10:
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11UIImageViewC_20CommunicationsUICore14ActivitySymbolV9AnimationOtMd, &_sSo11UIImageViewC_20CommunicationsUICore14ActivitySymbolV9AnimationOtMR) + 48);
    *v29 = v37;
    v60(v29 + v57, v71, v19);
    swift_storeEnumTagMultiPayload();
    v58 = v70;
    OUTLINED_FUNCTION_30_2(v70 + v41, &v72);
    outlined assign with take of SystemApertureIconView.IconView(v29, v58 + v41);
    swift_endAccess();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_151();
  outlined destroy of SystemApertureIcon(v32, v36);
LABEL_11:
  OUTLINED_FUNCTION_30_0();
}

void SystemApertureIconView.updateIconView()()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v104 = type metadata accessor for SystemApertureIconView.IconView(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13_67(v3);
  v96 = type metadata accessor for SymbolEffectOptions();
  OUTLINED_FUNCTION_1();
  v95 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v94 = v7 - v6;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for ActivitySymbol.Animation();
  OUTLINED_FUNCTION_1();
  v100 = v9;
  v101 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v98 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v99 = &v90 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v105 = &v90 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23SystemApertureIconAssetO_AA0cdE4ViewC0eG033_6EE0E32A0845C4FDB8F7C5508B010DAELLOtMd, &_s15ConversationKit23SystemApertureIconAssetO_AA0cdE4ViewC0eG033_6EE0E32A0845C4FDB8F7C5508B010DAELLOtMR);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v90 - v18;
  v103 = type metadata accessor for SystemApertureIcon(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_17();
  v106 = v21 - v22;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v90 - v25;
  v27 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v107 = (*MEMORY[0x1E69E7D40] & *v0) + 104;
  v108 = v27;
  v27(v24);
  v28 = *v26;
  v29 = *(v26 + 1);
  v30 = *(v26 + 2);
  v31 = *(v26 + 3);
  v32 = *(v26 + 4);
  v33 = v26[40];
  outlined copy of SystemApertureIconAsset(*v26, v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_0_186();
  outlined destroy of SystemApertureIcon(v26, v34);
  v35 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView, v109);
  v36 = &v19[*(v17 + 56)];
  OUTLINED_FUNCTION_6_101();
  outlined init with copy of SystemApertureIcon(v1 + v35, v36, v38, v37);
  if ((v33 & 1) == 0)
  {
    v97 = v28;
    v91 = v29;
    v92 = v30;
    v93 = v32;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v46 = *v36;
    v47 = v31;
    v48 = v105;
    v41 = v106;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v49 = *(v36 + 8);
        OUTLINED_FUNCTION_4_30();
        v108();
        v50 = *(v41 + 80);
        OUTLINED_FUNCTION_0_186();
        outlined destroy of SystemApertureIcon(v41, v51);
        if (v50 == 1)
        {

          goto LABEL_8;
        }

        [v49 removeFromSuperlayer];
        v88 = v102;
        *v102 = v46;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_15_55();
        v89 = v46;
        outlined assign with take of SystemApertureIconView.IconView(v88, v1 + v35);
        swift_endAccess();
        SystemApertureIconView.updateIconView()();

        OUTLINED_FUNCTION_3_136(v97);
        goto LABEL_4;
      case 2:
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11UIImageViewC_20CommunicationsUICore14ActivitySymbolV9AnimationOtMd, &_sSo11UIImageViewC_20CommunicationsUICore14ActivitySymbolV9AnimationOtMR);
        v55 = v101;
        v56 = v36 + *(v54 + 48);
        v57 = v100;
        v58 = (*(v100 + 32))(v48, v56, v101);
        (v108)(v58);
        v59 = v99;
        (*(v57 + 16))(v99, v41 + *(v103 + 36), v55);
        OUTLINED_FUNCTION_0_186();
        outlined destroy of SystemApertureIcon(v41, v60);
        v61 = static ActivitySymbol.Animation.== infix(_:_:)();
        v62 = *(v57 + 8);
        v62(v59, v55);
        if (v61)
        {
          v63 = v97;
          [v46 setImage_];
          OUTLINED_FUNCTION_3_136(v63);

          v62(v105, v55);
          goto LABEL_20;
        }

        v85 = v94;
        static SymbolEffectOptions.default.getter();
        UIImageView.removeAllSymbolEffects(options:animated:)();
        (*(v95 + 8))(v85, v96);
        v86 = v102;
        *v102 = v46;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_15_55();
        v87 = v46;
        outlined assign with take of SystemApertureIconView.IconView(v86, v1 + v35);
        swift_endAccess();
        SystemApertureIconView.updateIconView()();
        OUTLINED_FUNCTION_3_136(v97);

        v62(v105, v55);
        goto LABEL_4;
      case 3:
        [*v36 removeFromSuperview];
        v64 = v46;
        v65 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
        v66 = v97;
        [v65 setImage_];
        [v1 addSubview_];
        v67 = v102;
        *v102 = v65;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_15_55();
        v68 = v65;
        outlined assign with take of SystemApertureIconView.IconView(v67, v1 + v35);
        swift_endAccess();
        v69 = [objc_allocWithZone(type metadata accessor for Features()) init];
        v70 = Features.receptionistEnabled.getter();

        if (v70)
        {
          v105 = v64;
          OUTLINED_FUNCTION_4_30();
          v40 = v108;
          v108();
          v71 = *(v41 + 80);
          OUTLINED_FUNCTION_0_186();
          outlined destroy of SystemApertureIcon(v41, v72);
          v73 = v93;
          v74 = v92;
          v75 = v91;
          if (v71)
          {
            SystemApertureIconView.updateIconViewForIntelligence()();
          }

          outlined consume of SystemApertureIconAsset(v97, v75, v74, v47, v73, 0);
        }

        else
        {
          OUTLINED_FUNCTION_3_136(v66);

LABEL_20:
          v40 = v108;
        }

        goto LABEL_3;
      default:
LABEL_8:
        v52 = v97;
        [v46 setImage_];

        OUTLINED_FUNCTION_3_136(v52);
        OUTLINED_FUNCTION_4_30();
        v40 = v108;
        v108();
        LODWORD(v52) = *(v41 + 80);
        OUTLINED_FUNCTION_0_186();
        outlined destroy of SystemApertureIcon(v41, v53);
        if (v52 == 1)
        {
          SystemApertureIconView.updateIconViewForIntelligence()();
        }

        else
        {
          OUTLINED_FUNCTION_4_30();
          v40();
          v77 = v99;
          v76 = v100;
          v78 = v41 + *(v103 + 36);
          v79 = v101;
          v104 = *(v100 + 16);
          v105 = (v100 + 16);
          v104(v99, v78, v101);
          OUTLINED_FUNCTION_0_186();
          outlined destroy of SystemApertureIcon(v41, v80);
          v81 = v98;
          (*(v76 + 104))(v98, *MEMORY[0x1E6995E08], v79);
          lazy protocol witness table accessor for type VariableColorSymbolEffect and conformance VariableColorSymbolEffect(&lazy protocol witness table cache variable for type ActivitySymbol.Animation and conformance ActivitySymbol.Animation, MEMORY[0x1E6995E10], MEMORY[0x1E6995E18]);
          v82 = dispatch thunk of static Equatable.== infix(_:_:)();
          v83 = *(v76 + 8);
          v83(v81, v79);
          v83(v77, v79);
          if ((v82 & 1) == 0)
          {
            OUTLINED_FUNCTION_4_30();
            v40();
            v104(v77, v41 + *(v103 + 36), v79);
            OUTLINED_FUNCTION_0_186();
            outlined destroy of SystemApertureIcon(v41, v84);
            SystemApertureIconView.updateIconView(with:)();
            v83(v77, v79);
          }
        }

        goto LABEL_3;
    }
  }

  v109[3] = v28;
  v109[4] = v29;
  v109[5] = v30;
  v109[6] = v31;
  v109[7] = v32;
  SystemApertureIconView.updateIconView(using:)();

  OUTLINED_FUNCTION_1_151();
  outlined destroy of SystemApertureIcon(v36, v39);
  v40 = v108;
  v41 = v106;
LABEL_3:
  OUTLINED_FUNCTION_4_30();
  v40();
  v42 = *(v41 + 48);
  v43 = *(v41 + 56);

  OUTLINED_FUNCTION_0_186();
  outlined destroy of SystemApertureIcon(v41, v44);
  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v42, v43, v1);
  [v1 setNeedsLayout];
LABEL_4:
  OUTLINED_FUNCTION_30_0();
}

uint64_t outlined init with copy of SystemApertureIcon(uint64_t a1, uint64_t a2, double a3, void (*a4)(void, double))
{
  a4(0, a3);
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of SystemApertureIcon(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SystemApertureIconView.shouldReplace(_:)(void *a1)
{
  v3 = type metadata accessor for SystemApertureIcon(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  type metadata accessor for SystemApertureIconView(0);
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = MEMORY[0x1E69E7D40];
    v14 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
    v15 = a1;
    v16 = v14();
    (*((*v13 & *v12) + 0x68))(v16);
    static SystemApertureIcon.== infix(_:_:)(v10, v7, v17, v18, v19, v20, v21, v22, v28[0], v28[1], v28[2], v28[3]);
    v24 = v23;

    OUTLINED_FUNCTION_12_75();
    outlined destroy of SystemApertureIcon(v7, v25);
    outlined destroy of SystemApertureIcon(v10, v15);
    v26 = v24 ^ 1;
  }

  else
  {
    v26 = 1;
  }

  return v26 & 1;
}

id SystemApertureIconView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemApertureIconView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double protocol witness for SystemApertureAccessoryView.preferredLayoutMargins.getter in conformance SystemApertureIconView@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

id @nonobjc BSUICAPackageView.init(packageName:in:)(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = MEMORY[0x1BFB209B0](a2, a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 initWithPackageName:v6 inBundle:a4];

  return v7;
}

id outlined copy of SystemApertureIconAsset(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    a1 = a3;
    v6 = vars8;
  }

  return a1;
}

void outlined consume of SystemApertureIconAsset(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }
}

uint64_t getEnumTagSinglePayload for SystemApertureIconAsset(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 41))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for SystemApertureIconAsset(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for SystemApertureIcon(uint64_t a1)
{
  result = type metadata accessor for ActivitySymbol.Animation();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for SystemApertureIconView(uint64_t a1)
{
  result = type metadata accessor for SystemApertureIcon(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SystemApertureIconView.IconView(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void type metadata completion function for SystemApertureIconView.IconView(uint64_t a1)
{
  type metadata accessor for NSObject(319, &lazy cache variable for type metadata for UIImageView, 0x1E69DCAE0);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (UIImageView, CALayer)(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (UIImageView, ActivitySymbol.Animation)(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for NSObject(319, &lazy cache variable for type metadata for BSUICAPackageView, 0x1E698E7D8);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (UIImageView, CALayer)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UIImageView, CALayer))
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIImageView, 0x1E69DCAE0);
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for CALayer, 0x1E6979398);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UIImageView, CALayer));
    }
  }
}

void type metadata accessor for (UIImageView, ActivitySymbol.Animation)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UIImageView, ActivitySymbol.Animation))
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIImageView, 0x1E69DCAE0);
    type metadata accessor for ActivitySymbol.Animation();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UIImageView, ActivitySymbol.Animation));
    }
  }
}

uint64_t outlined assign with take of SystemApertureIconView.IconView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemApertureIconView.IconView(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id outlined bridged method (mbgnn) of @objc BSUICAPackageView.setState(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0](a1, a2);
  v5 = [a3 setState_];

  return v5;
}

uint64_t lazy protocol witness table accessor for type VariableColorSymbolEffect and conformance VariableColorSymbolEffect(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TUConversationManager.conversation(with:)(uint64_t a1)
{
  v3 = [v1 activeConversations];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversation and conformance NSObject, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v8[2] = a1;
  specialized Sequence.first(where:)(partial apply for closure #1 in TUConversationManager.conversation(with:), v8, v4);
  v6 = v5;

  return v6;
}

uint64_t closure #1 in TUConversationManager.conversation(with:)(id *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v7, v3);
  return v9 & 1;
}

uint64_t @nonobjc TUConversationManager.activatedConversationLinks.getter()
{
  v1 = [v0 activatedConversationLinks];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationLink, 0x1E69D8B70);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationLink and conformance NSObject, &lazy cache variable for type metadata for TUConversationLink, 0x1E69D8B70);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void MultiwayViewController.createCornerButtonsViews(listViewControllerParticipantCount:)(uint64_t a1)
{
  v2 = MultiwayViewController.createChangeLayoutButton()();
  if (static Platform.current.getter())
  {
    v3 = 0;
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for ButtonGradientBackgroundView());
    v3 = ButtonGradientBackgroundView.init(participantCount:)(a1);
  }

  if (static Platform.current.getter() == 2 || !static Platform.current.getter() && (MultiwayViewController.layoutIdiom.getter(&v5), !v5))
  {
    if (v3)
    {
      [v3 setHidden_];
    }

    [v2 setHidden_];
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    if (v3)
    {
      [v3 setHidden_];
    }

    [v2 setHidden_];
  }

  OUTLINED_FUNCTION_3_0();
}

id MultiwayViewController.createChangeLayoutButton()()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration();
  MEMORY[0x1EEE9AC00](v2 - 8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIButton, 0x1E69DC738);
  MultiwayViewController.changeLayoutButtonConfiguration(wantsImage:)(1);
  v3 = UIButton.init(configuration:primaryAction:)();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 1;
  aBlock[4] = partial apply for closure #1 in MultiwayViewController.createChangeLayoutButton();
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_15_1;
  v6 = _Block_copy(aBlock);

  [v3 setConfigurationUpdateHandler_];
  _Block_release(v6);
  v7 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle;
  swift_beginAccess();
  LODWORD(v7) = *(v1 + v7);
  v8 = objc_opt_self();
  v9 = &selRef_blackColor;
  if (!v7)
  {
    v9 = &selRef_whiteColor;
  }

  v10 = [v8 *v9];
  [v3 setTintColor_];

  v11 = objc_opt_self();
  v12 = v3;
  v13 = [v11 conversationKit];
  v24._object = 0xE000000000000000;
  v14.value._countAndFlagsBits = 0x61737265766E6F43;
  v14.value._object = 0xEF74694B6E6F6974;
  v15._countAndFlagsBits = 1145655879;
  v15._object = 0xE400000000000000;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v14, v13, v16, v24);

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v17._countAndFlagsBits, v17._object, v12);
  v18 = [v12 titleLabel];
  if (v18)
  {
    v19 = v18;
    v20 = [objc_opt_self() preferredFontForTextStyle_];
    [v19 setFont_];
  }

  v21 = [v12 titleLabel];
  [v21 setAdjustsFontForContentSizeCategory_];

  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 addTarget:v1 action:sel_didTapChangeLayoutButton forControlEvents:64];
  return v12;
}

void MultiwayViewController.changeLayoutButtonConfiguration(wantsImage:)(char a1)
{
  v3 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UIButton.Configuration.gray()();
  v7 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = objc_opt_self();
  if (v8 == 1)
  {
    v10 = [v9 whiteColor];
  }

  else
  {
    v10 = [v9 tertiarySystemBackgroundColor];
  }

  v11 = v10;
  v12 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v12(v25, 0);
  v13 = [objc_opt_self() conversationKit];
  v30._object = 0xE000000000000000;
  v14.value._countAndFlagsBits = 0x61737265766E6F43;
  v14.value._object = 0xEF74694B6E6F6974;
  v15._countAndFlagsBits = 1145655879;
  v15._object = 0xE400000000000000;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v14, v13, v16, v30);

  UIButton.Configuration.title.setter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69DC508], v3);
  UIButton.Configuration.cornerStyle.setter();
  if (a1)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    v17 = *MEMORY[0x1E69DDD00];
    v19[64] = 0;
    v25[0] = 0xD000000000000014;
    v25[1] = 0x80000001BC514E30;
    v25[2] = 2;
    v25[3] = v17;
    v26 = 0;
    v27 = 4;
    v28 = 0;
    v29 = 0;
    v20[0] = 0xD000000000000014;
    v20[1] = 0x80000001BC514E30;
    v20[2] = 2;
    v20[3] = v17;
    v21 = 0;
    v22 = 4;
    v23 = 0;
    v24 = 0;
    v18 = v17;
    outlined init with copy of SymbolImageDescription(v25, v19);
    outlined destroy of SymbolImageDescription(v20);
    static UIImage.symbolImage(for:)(v25);
    outlined destroy of SymbolImageDescription(v25);
    UIButton.Configuration.image.setter();
    UIButton.Configuration.imagePadding.setter();
    UIButton.Configuration.contentInsets.setter();
  }
}

void closure #1 in MultiwayViewController.createChangeLayoutButton()(uint64_t a1, uint64_t a2, char a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    MultiwayViewController.changeLayoutButtonConfiguration(wantsImage:)(a3 & 1);
    v9 = type metadata accessor for UIButton.Configuration();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
    UIButton.configuration.setter();
  }
}

void MultiwayViewController.didTapDeskViewButton()()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deskViewTapHandler;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v2, v3);
  }
}

Swift::Void __swiftcall MultiwayViewController.updateChangeLayoutButtonAppearanceState()()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  memcpy(__dst, v1, sizeof(__dst));
  if (getEnumTag for TapInteraction.EventType(__dst) != 1)
  {
    v2 = v1[22];
    if (v2)
    {
      v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v4 = *(v0 + v3);
      v5 = objc_opt_self();
      v6 = v2;
      v7 = &selRef_blackColor;
      if (!v4)
      {
        v7 = &selRef_whiteColor;
      }

      v8 = [v5 *v7];
      [v6 setTintColor_];
    }
  }
}

Swift::Void __swiftcall MultiwayViewController.updateCornerButtonsVisibility()()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    MultiwayViewController.updateChangeLayoutButtonVisibilityIfNeeded()();
    MultiwayViewController.updateDeskViewButtonVisibility()();

    MultiwayViewController.updateTopCornerButtonsStackViewVisibility(animated:)(1);
  }
}

Swift::Void __swiftcall MultiwayViewController.updateChangeLayoutButtonVisibilityIfNeeded()()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    v2 = &v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    memcpy(__dst, v2, sizeof(__dst));
    if (getEnumTag for TapInteraction.EventType(__dst) == 1 || !*(v2 + 25))
    {
      v5 = objc_opt_self();
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      aBlock[4] = partial apply for closure #1 in MultiwayViewController.updateChangeLayoutButtonVisibilityIfNeeded();
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_91;
      v7 = _Block_copy(aBlock);
      v8 = v1;

      [v5 animateWithDuration:v7 animations:0.2];
      _Block_release(v7);
    }

    else
    {
      memcpy(aBlock, v2, sizeof(aBlock));
      if (getEnumTag for TapInteraction.EventType(aBlock) != 1)
      {
        v3 = *(v2 + 22);
        if (v3)
        {
          v4 = v3;
          [v4 setHidden_];
        }
      }
    }
  }
}

Swift::Void __swiftcall MultiwayViewController.updateDeskViewButtonVisibility()()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    memcpy(__dst, v1, sizeof(__dst));
    if (getEnumTag for TapInteraction.EventType(__dst) != 1)
    {
      v2 = v1[24];
      if (v2)
      {
        v3 = v2;
        [v3 setHidden_];
      }
    }
  }
}

void MultiwayViewController.updateTopCornerButtonsStackViewVisibility(animated:)(char a1)
{
  v2 = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(__dst, &v2[v4], sizeof(__dst));
    memcpy(v14, &v2[v4], sizeof(v14));
    if (getEnumTag for TapInteraction.EventType(v14) != 1)
    {
      v5 = v14[25];
      if (v14[25])
      {
        if (a1)
        {
          v6 = objc_opt_self();
          v7 = swift_allocObject();
          *(v7 + 16) = v5;
          *(v7 + 24) = v2;
          aBlock[4] = partial apply for closure #1 in MultiwayViewController.updateTopCornerButtonsStackViewVisibility(animated:);
          aBlock[5] = v7;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
          aBlock[3] = &block_descriptor_6_4;
          v8 = _Block_copy(aBlock);
          v9 = v5;
          outlined init with copy of MultiwayViewController.ViewContent?(__dst, &v11);
          v10 = v2;

          [v6 animateWithDuration:v8 animations:0.2];

          outlined destroy of MultiwayViewController.ViewContent?(__dst);
          _Block_release(v8);
        }

        else
        {
          [v14[25] setHidden_];
        }
      }
    }
  }
}

uint64_t MultiwayViewController.shouldShowChangeLayoutButton.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  memcpy(v12, (v0 + v1), sizeof(v12));
  if (getEnumTag for TapInteraction.EventType(v12) != 1)
  {
    v2 = v12[6];
    v3 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
    swift_beginAccess();
    v4 = *(v2 + v3);
    swift_beginAccess();

    outlined init with copy of MultiwayViewController.ViewContent?(__dst, &v10);
    v5 = MultiwayViewController.activeRemoteParticipants(in:)();

    v6 = *(v5 + 16);

    if ((v12[25] || MultiwayViewController.areControlsVisible.getter()) && v6 >= 3 && v4 != 129)
    {
      v9 = ConversationController.isOneToOneModeEnabled.getter();
      outlined destroy of MultiwayViewController.ViewContent?(__dst);
      v7 = v9 ^ 1;
      return v7 & 1;
    }

    outlined destroy of MultiwayViewController.ViewContent?(__dst);
  }

  v7 = 0;
  return v7 & 1;
}

BOOL MultiwayViewController.areControlsVisible.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(__dst, v1, sizeof(__dst));
  if (getEnumTag for TapInteraction.EventType(__dst) == 1)
  {
    return 0;
  }

  v3 = v1[6];
  v4 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
  swift_beginAccess();
  return *(v3 + v4) == 1;
}

BOOL MultiwayViewController.shouldShowChangeLayoutButtonBackground.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(__dst, v1, sizeof(__dst));
  if (getEnumTag for TapInteraction.EventType(__dst) != 1)
  {
    if (v1[23])
    {
      memcpy(v5, v1, sizeof(v5));
      if (getEnumTag for TapInteraction.EventType(v5) != 1)
      {
        v2 = *v1;
        if (MultiwayViewController.shouldShowChangeLayoutButton.getter())
        {
          v3 = ParticipantListViewController.participantCount.getter();

          return v3 > 0;
        }
      }
    }
  }

  return 0;
}

void closure #1 in MultiwayViewController.updateChangeLayoutButtonVisibilityIfNeeded()(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(__dst, v1, sizeof(__dst));
  if (getEnumTag for TapInteraction.EventType(__dst) != 1)
  {
    v2 = v1[22];
    if (v2)
    {
      v3 = v2;
      v4 = MultiwayViewController.shouldShowChangeLayoutButton.getter();
      v5 = 0.0;
      if (v4)
      {
        v5 = 1.0;
      }

      [v3 setAlpha_];
    }
  }

  memcpy(v10, v1, sizeof(v10));
  if (getEnumTag for TapInteraction.EventType(v10) != 1)
  {
    v6 = v1[23];
    if (v6)
    {
      v7 = v6;
      v8 = MultiwayViewController.shouldShowChangeLayoutButtonBackground.getter();
      v9 = 0.0;
      if (v8)
      {
        v9 = 1.0;
      }

      [v7 setAlpha_];
    }
  }
}

uint64_t outlined init with copy of MultiwayViewController.ViewContent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MultiwayViewController.ViewContent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id closure #1 in MultiwayViewController.updateTopCornerButtonsStackViewVisibility(animated:)(void *a1)
{
  v2 = MultiwayViewController.areControlsVisible.getter();
  v3 = 0.0;
  if (v2)
  {
    v3 = 1.0;
  }

  return [a1 setAlpha_];
}

uint64_t HandoffControlsRecipeGenerator.init()()
{
  v0 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  swift_allocObject();
  Defaults.init()();
  CallScreeningService.init(overrides:)();
  v7 = type metadata accessor for Features();
  v8 = [objc_allocWithZone(v7) init];
  type metadata accessor for SystemApertureIconFactory(0);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E6995EE0];
  v11 = (v9 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
  v11[3] = v0;
  v11[4] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(v2 + 16))(boxed_opaque_existential_1, v6, v0);
  v13 = (v9 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
  v13[3] = v7;
  v13[4] = &protocol witness table for Features;
  *v13 = v8;
  type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  (*(v2 + 8))(v6, v0);
  return v9;
}

void HandoffControlsRecipeGenerator.handoffHUDRecipe(controlsManager:)()
{
  OUTLINED_FUNCTION_29();
  v206 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v188 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v188 - v11;
  type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_6_102();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  v24 = v23 - v22;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v25 + 608))())
  {
    v205 = v8;
    v26 = (*MEMORY[0x1E69E7D40] & *v206) + 704;
    v204 = *((*MEMORY[0x1E69E7D40] & *v206) + 0x2C0);
    v203 = v26;
    v27 = v204();
    if (v27)
    {
      v28 = v27;
      v29 = [v27 handoffEligibility];
      if (v29)
      {
        v198 = v4;
        v193 = v16;
        v194 = v0;
        v196 = v12;

        v30 = TUConversation.participantListDisplayName.getter();
        v32 = v31;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);

        v33._countAndFlagsBits = v30;
        v33._object = v32;
        isa = NSAttributedString.__allocating_init(string:)(v33).super.isa;
        v200 = ConversationControlsStringProvider.handoffNearbySubtitle(conversation:)(v28).super.isa;
        v34 = ConversationControlsHelper.handoffBadgeImage(conversation:)(v28);
        v35 = [v28 remoteMembers];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
        lazy protocol witness table accessor for type TUConversationMember and conformance NSObject();
        static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v36 = specialized Set.count.getter();

        v202 = v34;
        v197 = v1;
        v199 = v28;
        if (v36)
        {
          type metadata accessor for ConversationControlsBadgingAvatarViewController();
          v37 = [v34 image];
          v38 = objc_opt_self();

          v39 = [v38 clearColor];
          v40 = v28;
          v192 = v30;
          v41 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v40, v37, v30, v32, v39);
          v42 = [v41 view];
          v43 = MEMORY[0x1E69E7D40];
          (*((*MEMORY[0x1E69E7D40] & *v206) + 0x2A8))();
          v44 = (*((*v43 & *v41) + 0x58))(v24);
          OUTLINED_FUNCTION_53_16(v44);
          (*(v20 + 8))(v24, v18);
          v45 = one-time initialization token for conversationControls;
          OUTLINED_FUNCTION_29_34(v42);
          if (v45 != -1)
          {
            OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
          }

          v46 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v46, &static Logger.conversationControls);
          v47 = v202;
          v48 = v202;

          v49 = v48;
          v50 = v200;
          v51 = v40;
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.default.getter();

          v54 = os_log_type_enabled(v52, v53);
          v55 = v193;
          if (!v54)
          {

            goto LABEL_27;
          }

          v56 = swift_slowAlloc();
          v190 = v49;
          v57 = v56;
          v189 = swift_slowAlloc();
          v191 = OUTLINED_FUNCTION_29_7();
          v209[0] = v191;
          *v57 = 136315906;
          v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v192, v32, v209);
          LODWORD(v192) = v53;
          v59 = v58;

          *(v57 + 4) = v59;
          *(v57 + 12) = 2080;
          v60 = [(objc_class *)v50 string];
          v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v63 = v62;

          v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v209);

          *(v57 + 14) = v64;
          *(v57 + 22) = 2112;
          *(v57 + 24) = v51;
          OUTLINED_FUNCTION_26_21();
          v65 = v189;
          *v189 = v66;
          *(v57 + 32) = 1024;
          v67 = v51;
          v68 = v190;

          *(v57 + 34) = v47 != 0;
          OUTLINED_FUNCTION_60_14();
          _os_log_impl(v69, v52, v70, v71, v57, 0x26u);
          outlined destroy of TapInteractionHandler?(v65, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          OUTLINED_FUNCTION_27();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();
        }

        else
        {
          v83 = v30;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
          v84 = *MEMORY[0x1E69DDDC8];
          LOBYTE(v208) = 0;
          OUTLINED_FUNCTION_2_147(v84);
          outlined init with copy of SymbolImageDescription(v210, v207);
          outlined destroy of SymbolImageDescription(v209);
          v85 = static UIImage.symbolImage(for:)(v210);
          outlined destroy of SymbolImageDescription(v210);
          v86 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

          v87 = v86;
          [v87 setContentMode_];
          v88 = [objc_opt_self() whiteColor];
          [v87 setTintColor_];

          OUTLINED_FUNCTION_53_16([v87 hash]);
          v89 = one-time initialization token for conversationControls;
          OUTLINED_FUNCTION_29_34(v87);
          if (v89 != -1)
          {
            OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
          }

          v90 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v90, &static Logger.conversationControls);
          v91 = v202;
          v92 = v202;

          v93 = v92;
          v94 = v200;
          v41 = Logger.logObject.getter();
          v52 = static os_log_type_t.default.getter();

          v95 = OUTLINED_FUNCTION_64_14();
          v55 = v193;
          if (!v95)
          {

            goto LABEL_27;
          }

          v96 = swift_slowAlloc();
          v192 = OUTLINED_FUNCTION_29_7();
          OUTLINED_FUNCTION_39_22(v192);
          *v96 = 136315650;
          v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v32, v207);

          *(v96 + 4) = v97;
          *(v96 + 12) = 2080;
          v98 = [(objc_class *)v94 string];
          v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v101 = v100;

          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, v207);
          OUTLINED_FUNCTION_81();
          *(v96 + 14) = v98;
          *(v96 + 22) = 1024;

          *(v96 + 24) = v91 != 0;
          OUTLINED_FUNCTION_36_0();
          _os_log_impl(v102, v103, v104, v105, v106, 0x1Cu);
          v52 = v192;
          swift_arrayDestroy();
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_4_4();
        }

LABEL_27:
        v107 = v205;
        v108 = v194;
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
        }

        v109 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v109, &static Logger.conversationControls);
        OUTLINED_FUNCTION_24_45();
        v111 = v110;
        v193 = v52;
        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v112, v113))
        {
          v114 = OUTLINED_FUNCTION_42();
          v115 = OUTLINED_FUNCTION_23();
          v209[0] = v115;
          *v114 = 136315138;
          OUTLINED_FUNCTION_50_19();
          v117 = v116();
          if (v117)
          {
            v118 = v117;
            v119 = [v117 state];

            v207[0] = v119;
            type metadata accessor for TUConversationState(0);
            v120 = String.init<A>(reflecting:)();
            v122 = v121;
          }

          else
          {
            v122 = 0xE300000000000000;
            v120 = 7104878;
          }

          v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v122, v209);

          *(v114 + 4) = v123;
          _os_log_impl(&dword_1BBC58000, v112, v113, "conversationState:%s", v114, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v115);
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();

          v107 = v205;
        }

        else
        {
        }

        OUTLINED_FUNCTION_38_29(3);
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v125 = OUTLINED_FUNCTION_3_2(v124);
        *(v125 + 16) = xmmword_1BC4BAC30;
        v126 = v200;
        *(v125 + 32) = v200;
        v127 = type metadata accessor for AttributedString();
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v128, v129, v130, v127);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
        type metadata accessor for ConversationControlsAction(0);
        OUTLINED_FUNCTION_59_12();
        v131 = swift_allocObject();
        *(v131 + 16) = xmmword_1BC4BA940;
        OUTLINED_FUNCTION_43_20(v126);
        v132 = isa;
        OUTLINED_FUNCTION_55_3();
        static ConversationControlsAction.primaryCallAction(controlsManager:location:)();
        v133 = v108[9];
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v134, v135, v136, v127);
        v137 = (&v55->isa + v108[10]);
        v138 = v55 + v108[15];
        *(v138 + 32) = 0;
        *v138 = 0u;
        *(v138 + 16) = 0u;
        *(v138 + 40) = -2;
        OUTLINED_FUNCTION_56_16(v108[16]);
        *v139 = 1;
        v141 = OUTLINED_FUNCTION_4_129(v139, v140);
        outlined init with copy of ConversationControlsType(v141, v55);
        OUTLINED_FUNCTION_44_2();
        v55[6].isa = 0;
        v55[7].isa = v142;
        v143 = v201;
        v55[8].isa = 0;
        v55[9].isa = v143;
        v204 = v132;
        v55[10].isa = v132;
        v55[11].isa = v125;
        v137[1] = 0;
        v137[2] = 0;
        *v137 = 0;
        outlined assign with copy of AttributedString?(v107, v55 + v133);
        OUTLINED_FUNCTION_12_76();
        v144 = *(v131 + 16);
        if (v144 <= 2)
        {
          outlined destroy of TapInteractionHandler?(v107, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
          outlined destroy of ConversationControlsType(v209);
          *v138 = v131;
          *(v138 + 8) = 0u;
          *(v138 + 24) = 0u;
          *(v138 + 40) = 0;
          OUTLINED_FUNCTION_26_3();
          outlined init with copy of ConversationControlsRecipe(v158, v159);
          OUTLINED_FUNCTION_55_3();
          OUTLINED_FUNCTION_16_5();
          __swift_storeEnumTagSinglePayload(v160, v161, v162, v163);
          outlined destroy of ConversationControlsRecipe(v55);
          OUTLINED_FUNCTION_35_24();
        }

        else
        {

          v145 = Logger.logObject.getter();
          v125 = static os_log_type_t.fault.getter();

          if (OUTLINED_FUNCTION_64_14())
          {
            v137 = OUTLINED_FUNCTION_42();
            v132 = OUTLINED_FUNCTION_23();
            OUTLINED_FUNCTION_39_22(v132);
            *v137 = 136315138;
            v208 = v144;
            v146 = String.init<A>(reflecting:)();
            v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v147, v207);

            *(v137 + 4) = v148;
            OUTLINED_FUNCTION_36_0();
            _os_log_impl(v149, v150, v151, v152, v153, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v132);
            OUTLINED_FUNCTION_27();
            OUTLINED_FUNCTION_4_4();
          }

          outlined destroy of TapInteractionHandler?(v205, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
          outlined destroy of ConversationControlsType(v209);
          OUTLINED_FUNCTION_35_24();
          outlined destroy of ConversationControlsRecipe(v55);
          v138 = v196;
          OUTLINED_FUNCTION_7_7();
          __swift_storeEnumTagSinglePayload(v154, v155, v156, v157);
        }

        OUTLINED_FUNCTION_3_62(v138);
        if (v164)
        {
          OUTLINED_FUNCTION_8_95(v211);
          OUTLINED_FUNCTION_50_19();

          OUTLINED_FUNCTION_24_45();
          OUTLINED_FUNCTION_54_14();

          outlined destroy of TapInteractionHandler?(v138, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
          OUTLINED_FUNCTION_7_7();
          __swift_storeEnumTagSinglePayload(v168, v169, v170, v171);
        }

        else
        {
          outlined init with take of ConversationControlsRecipe(v138, v132);
          if (SBUIIsSystemApertureEnabled())
          {
            v173 = Logger.logObject.getter();
            v174 = static os_log_type_t.error.getter();
            if (OUTLINED_FUNCTION_25(v174))
            {
              v175 = OUTLINED_FUNCTION_33();
              OUTLINED_FUNCTION_39_2(v175);
              OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v176, v177, "handoffHUD: [SystemAperture] showing content, but below system aperture");
              OUTLINED_FUNCTION_27();
            }

            OUTLINED_FUNCTION_8_95(v211);

            OUTLINED_FUNCTION_50_19();
            OUTLINED_FUNCTION_24_45();

            OUTLINED_FUNCTION_54_14();
            OUTLINED_FUNCTION_45_24();
            outlined destroy of TapInteractionHandler?(v209, &_s15ConversationKit21SystemApertureElementVSgMd, &_s15ConversationKit21SystemApertureElementVSgMR);
            OUTLINED_FUNCTION_5_125();
          }

          else
          {
            OUTLINED_FUNCTION_8_95(v211);
            OUTLINED_FUNCTION_50_19();

            OUTLINED_FUNCTION_24_45();
            OUTLINED_FUNCTION_54_14();
          }

          outlined init with copy of ConversationControlsRecipe(v132, v137);
          OUTLINED_FUNCTION_16_5();
          __swift_storeEnumTagSinglePayload(v184, v185, v186, v187);
          outlined destroy of ConversationControlsRecipe(v132);
        }

        OUTLINED_FUNCTION_30_0();
        return;
      }
    }

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v72 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v72, &static Logger.conversationControls);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v74))
    {
      v75 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v75);
      OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v76, v77, "handoffHUDRecipe: No active conversation to display nearby handoff HUD for.");
      OUTLINED_FUNCTION_27();
    }
  }

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_30_0();

  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
}

void HandoffControlsRecipeGenerator.handoffCompletedRecipe(controlsManager:localizedDeviceCategory:)()
{
  OUTLINED_FUNCTION_29();
  v196.value._object = v2;
  v196.value._countAndFlagsBits = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_42_25(v10, v181);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v181 - v13;
  type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_6_102();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  v18 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v26 = v25 - v24;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v27 + 608))())
  {
    v193 = v14;
    if ((*((*MEMORY[0x1E69E7D40] & *v5) + 0x548))())
    {
      v29 = v28;
      ObjectType = swift_getObjectType();
      v31 = (*(v29 + 8))(ObjectType, v29);
      swift_unknownObjectRelease();
      if (v31)
      {
        v188 = v7;
        v191 = v22;
        v185 = v18;
        v189 = v0;
        v32 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_40_0();
        v33 = OUTLINED_FUNCTION_23_52();
        v34.super.isa = v32;
        v36 = OUTLINED_FUNCTION_17_0(v33, v35, 0x61737265766E6F43, 0xEF74694B6E6F6974, v34);
        v38 = v37;

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);

        v39._countAndFlagsBits = v36;
        v39._object = v38;
        isa = NSAttributedString.__allocating_init(string:)(v39).super.isa;
        v194 = ConversationControlsStringProvider.handoffCompletedSubtitle(localizedDeviceCategory:)(v196).super.isa;
        v40 = ConversationControlsHelper.handoffBadgeImage(conversation:)(v31);
        v41 = [v31 remoteMembers];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
        v42 = v31;
        lazy protocol witness table accessor for type TUConversationMember and conformance NSObject();
        static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = specialized Set.count.getter();

        v192 = v40;
        v187 = v1;
        v190 = v31;
        if (v43)
        {
          type metadata accessor for ConversationControlsBadgingAvatarViewController();
          v44 = [v40 image];
          v45 = objc_opt_self();

          v46 = [v45 clearColor];
          v47 = v42;
          v184 = v36;
          v48 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v47, v44, v36, v38, v46);
          v49 = [v48 view];
          v50 = MEMORY[0x1E69E7D40];
          (*((*MEMORY[0x1E69E7D40] & *v5) + 0x2A8))();
          v51 = (*((*v50 & *v48) + 0x58))(v26);
          OUTLINED_FUNCTION_29_34(v51);
          v191[1](v26, v20);
          v52 = one-time initialization token for conversationControls;
          v191 = v49;
          if (v52 != -1)
          {
            OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
          }

          v53 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v53, &static Logger.conversationControls);
          v54 = v192;
          v55 = v192;

          v56 = v55;
          OUTLINED_FUNCTION_33_34();
          v58 = v57;
          v59 = v47;
          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.default.getter();

          v62 = OUTLINED_FUNCTION_64_14();
          v63 = v189;
          if (v62)
          {
            v64 = swift_slowAlloc();
            v182 = v61;
            v65 = v64;
            v181 = swift_slowAlloc();
            v183 = OUTLINED_FUNCTION_29_7();
            v199[0] = v183;
            *v65 = 136315906;
            v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v38, v199);

            *(v65 + 4) = v66;
            *(v65 + 12) = 2080;
            v67 = v54;
            v68 = [v58 string];
            v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v71 = v70;

            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, v199);
            OUTLINED_FUNCTION_81();
            *(v65 + 14) = v68;
            *(v65 + 22) = 2112;
            *(v65 + 24) = v59;
            OUTLINED_FUNCTION_26_21();
            v72 = v181;
            *v181 = v73;
            *(v65 + 32) = 1024;
            v74 = v59;

            *(v65 + 34) = v67 != 0;
            OUTLINED_FUNCTION_60_14();
            _os_log_impl(v75, v60, v76, v77, v65, 0x26u);
            outlined destroy of TapInteractionHandler?(v72, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            OUTLINED_FUNCTION_27();
            swift_arrayDestroy();
            OUTLINED_FUNCTION_4_4();
            OUTLINED_FUNCTION_27();
          }

          else
          {
          }

          v104 = v185;
        }

        else
        {
          v89 = v36;
          v90 = v38;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
          v91 = *MEMORY[0x1E69DDDC8];
          LOBYTE(v198) = 0;
          OUTLINED_FUNCTION_2_147(v91);
          outlined init with copy of SymbolImageDescription(v201, v197);
          outlined destroy of SymbolImageDescription(v199);
          v92 = static UIImage.symbolImage(for:)(v201);
          outlined destroy of SymbolImageDescription(v201);
          v93 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

          v94 = v93;
          [v94 setContentMode_];
          v95 = [objc_opt_self() whiteColor];
          [v94 setTintColor_];

          OUTLINED_FUNCTION_29_34([v94 hash]);
          v96 = one-time initialization token for conversationControls;
          v191 = v94;
          if (v96 != -1)
          {
            OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
          }

          v97 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v97, &static Logger.conversationControls);
          v98 = v192;

          v99 = v98;
          OUTLINED_FUNCTION_33_34();
          v101 = v100;
          v102 = Logger.logObject.getter();
          static os_log_type_t.default.getter();

          v103 = OUTLINED_FUNCTION_64_14();
          v63 = v189;
          v104 = v185;
          if (v103)
          {
            v105 = swift_slowAlloc();
            v106 = OUTLINED_FUNCTION_29_7();
            OUTLINED_FUNCTION_39_22(v106);
            *v105 = 136315650;
            v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, v197);

            *(v105 + 4) = v107;
            *(v105 + 12) = 2080;
            v108 = [v101 string];
            v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v111 = v110;

            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v111, v197);
            OUTLINED_FUNCTION_81();
            *(v105 + 14) = v108;
            *(v105 + 22) = 1024;

            *(v105 + 24) = v192 != 0;
            OUTLINED_FUNCTION_36_0();
            _os_log_impl(v112, v113, v114, v115, v116, 0x1Cu);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_27();
            OUTLINED_FUNCTION_4_4();
          }

          else
          {
          }
        }

        OUTLINED_FUNCTION_24_45();
        v199[0] = v118;
        v199[1] = v117;
        v200 = 2;
        v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v120 = OUTLINED_FUNCTION_3_2(v119);
        *(v120 + 16) = xmmword_1BC4BAC30;
        OUTLINED_FUNCTION_33_34();
        *(v121 + 32) = v122;
        v123 = type metadata accessor for AttributedString();
        v124 = v195;
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v125, v126, v127, v123);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
        type metadata accessor for ConversationControlsAction(0);
        OUTLINED_FUNCTION_9_3();
        OUTLINED_FUNCTION_59_12();
        v128 = swift_allocObject();
        *(v128 + 16) = xmmword_1BC4BA940;
        swift_storeEnumTagMultiPayload();
        v129 = v63[9];
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v130, v131, v132, v123);
        v133 = (v104 + v63[10]);
        v134 = v104 + v63[15];
        OUTLINED_FUNCTION_28_44();
        OUTLINED_FUNCTION_56_16(v135);
        *v136 = 1;
        v138 = OUTLINED_FUNCTION_4_129(v136, v137);
        outlined init with copy of ConversationControlsType(v138, v104);
        v139 = v191;
        v104[6] = 0;
        v104[7] = v139;
        OUTLINED_FUNCTION_44_2();
        v104[8] = 0;
        v104[9] = v140;
        v141 = isa;
        v104[10] = isa;
        v104[11] = v120;
        v142 = v124;
        v133[1] = 0;
        v133[2] = 0;
        *v133 = 0;

        object = v141;
        OUTLINED_FUNCTION_33_34();
        v145 = v144;
        outlined assign with copy of AttributedString?(v124, v104 + v129);
        OUTLINED_FUNCTION_12_76();
        v146 = *(v128 + 16);
        if (v146 <= 2)
        {
          outlined destroy of TapInteractionHandler?(v142, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
          outlined destroy of ConversationControlsType(v199);
          OUTLINED_FUNCTION_37_29();
          OUTLINED_FUNCTION_26_3();
          outlined init with copy of ConversationControlsRecipe(v158, v159);
          OUTLINED_FUNCTION_55_3();
          OUTLINED_FUNCTION_16_5();
          __swift_storeEnumTagSinglePayload(v160, v161, v162, v163);
          outlined destroy of ConversationControlsRecipe(v104);
          OUTLINED_FUNCTION_31_32();
        }

        else
        {
          if (one-time initialization token for conversationControls != -1)
          {
            OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
          }

          v147 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v147, &static Logger.conversationControls);

          v148 = Logger.logObject.getter();
          v134 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v148, v134))
          {
            v129 = OUTLINED_FUNCTION_42();
            v149 = OUTLINED_FUNCTION_23();
            v196.value._object = object;
            v150 = v145;
            v151 = v149;
            OUTLINED_FUNCTION_39_22(v149);
            *v129 = 136315138;
            v198 = v146;
            v152 = String.init<A>(reflecting:)();
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v153, v197);
            OUTLINED_FUNCTION_81();
            *(v129 + 4) = v146;
            _os_log_impl(&dword_1BBC58000, v148, v134, "Too many trailing actions (%s)", v129, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v151);
            v145 = v150;
            object = v196.value._object;
            OUTLINED_FUNCTION_27();
            OUTLINED_FUNCTION_4_4();
          }

          outlined destroy of TapInteractionHandler?(v195, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
          outlined destroy of ConversationControlsType(v199);
          OUTLINED_FUNCTION_31_32();
          outlined destroy of ConversationControlsRecipe(v104);
          v128 = v193;
          OUTLINED_FUNCTION_7_7();
          __swift_storeEnumTagSinglePayload(v154, v155, v156, v157);
        }

        OUTLINED_FUNCTION_3_62(v128);
        v164 = v192;
        if (v165)
        {
          OUTLINED_FUNCTION_16_59();

          outlined destroy of TapInteractionHandler?(v128, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
          OUTLINED_FUNCTION_7_7();
          __swift_storeEnumTagSinglePayload(v166, v167, v168, v169);
        }

        else
        {
          outlined init with take of ConversationControlsRecipe(v128, v146);
          if (SBUIIsSystemApertureEnabled())
          {
            if (one-time initialization token for conversationControls != -1)
            {
              OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
            }

            v171 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_52(v171, &static Logger.conversationControls);
            v172 = Logger.logObject.getter();
            v173 = static os_log_type_t.error.getter();
            if (OUTLINED_FUNCTION_25(v173))
            {
              v174 = OUTLINED_FUNCTION_33();
              OUTLINED_FUNCTION_39_2(v174);
              OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v175, v176, "handoffCompleted: [SystemAperture] showing content, but below system aperture");
              OUTLINED_FUNCTION_27();
            }

            OUTLINED_FUNCTION_16_59();

            OUTLINED_FUNCTION_45_24();
            outlined destroy of TapInteractionHandler?(v199, &_s15ConversationKit21SystemApertureElementVSgMd, &_s15ConversationKit21SystemApertureElementVSgMR);
            OUTLINED_FUNCTION_5_125();
          }

          else
          {
            OUTLINED_FUNCTION_16_59();
          }

          outlined init with copy of ConversationControlsRecipe(v146, v129);
          OUTLINED_FUNCTION_16_5();
          __swift_storeEnumTagSinglePayload(v177, v178, v179, v180);
          outlined destroy of ConversationControlsRecipe(v146);
        }

        OUTLINED_FUNCTION_30_0();
        return;
      }
    }

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v78 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v78, &static Logger.conversationControls);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v80))
    {
      v81 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v81);
      OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v82, v83, "handoffCompletedRecipe: No conversation to display handoff completed banner for.");
      OUTLINED_FUNCTION_27();
    }
  }

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_30_0();

  __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
}

void HandoffControlsRecipeGenerator.lagunaHandoffHUDRecipe(controlsManager:suggestion:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v135 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v135 - v11;
  type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_6_102();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v135 - v18;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v20 + 616))())
  {
    v144 = v8;
    v141 = v12;
    v142 = v19;
    v143 = v4;
    OUTLINED_FUNCTION_27_20();
    v145 = v2;
    v21 = outlined bridged method (ob) of @objc TUNearbyDeviceHandle.name.getter([(objc_class *)v2 deviceHandle]);
    if (v22)
    {
      v23 = v21;
      v24 = v22;
    }

    else
    {
      v30 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_40_0();
      v31 = OUTLINED_FUNCTION_41_22();
      v32.super.isa = v30;
      v23 = OUTLINED_FUNCTION_17_0(v31, v33, 0x61737265766E6F43, v19, v32);
      v24 = v34;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v35._countAndFlagsBits = v23;
    v35._object = v24;
    v36.super.isa = NSAttributedString.__allocating_init(string:)(v35).super.isa;
    v37 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    v38.super.isa = v37;
    v39 = OUTLINED_FUNCTION_17_0(0xD000000000000010, 0x80000001BC514E50, 0x61737265766E6F43, v19, v38);
    v41 = v40;

    v42._countAndFlagsBits = v39;
    v42._object = v41;
    v43.super.isa = NSAttributedString.__allocating_init(string:)(v42).super.isa;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    SymbolImageDescribers.TVHandoff.symbolImageDescription.getter();
    v44 = static UIImage.symbolImage(for:)(v149);
    outlined destroy of SymbolImageDescription(v149);
    v45 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
    v140 = v44;
    v46 = [v45 initWithImage_];
    v47 = [objc_opt_self() secondaryLabelColor];
    [v46 setTintColor_];

    v48 = v46;
    [v48 setContentMode_];
    OUTLINED_FUNCTION_43_20([v48 hash]);
    v139 = v48;

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v137 = v0;
    v49 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v49, &static Logger.conversationControls);
    v50 = v36.super.isa;
    v51 = v43.super.isa;
    v135[1] = v48;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    v54 = os_log_type_enabled(v52, v53);
    v136 = v50;
    if (v54)
    {
      v55 = swift_slowAlloc();
      v148[0] = OUTLINED_FUNCTION_29_7();
      *v55 = 136315394;
      v56 = [(objc_class *)v50 string];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v148);

      *(v55 + 4) = v60;
      *(v55 + 12) = 2080;
      v61 = [(objc_class *)v51 string];
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v148);

      *(v55 + 14) = v65;
      _os_log_impl(&dword_1BBC58000, v52, v53, "lagunaHandoffHUD:\n\ttitle:%s\n\tsubtitle:%s", v55, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_4_4();
    }

    v135[2] = v51;
    v148[0] = v145;
    LOBYTE(v148[5]) = 3;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v67 = OUTLINED_FUNCTION_3_2(v66);
    *(v67 + 16) = xmmword_1BC4BAC30;
    *(v67 + 32) = v51;
    v68 = type metadata accessor for AttributedString();
    v69 = v144;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
    type metadata accessor for ConversationControlsAction(0);
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_59_12();
    v75 = v74 & ~v73;
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1BC4BA940;
    *(v76 + v75) = 0;
    swift_storeEnumTagMultiPayload();
    v77 = v137;
    v78 = v137[9];
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v68);
    v82 = (v16 + v77[10]);
    v83.n128_f64[0] = OUTLINED_FUNCTION_28_44();
    *(v16 + v84) = 0;
    v85 = v16 + v77[17];
    v86 = (v16 + v77[18]);
    *v86 = 1;
    v87 = OUTLINED_FUNCTION_4_129(v86, v83);
    outlined init with copy of ConversationControlsType(v87, v16);
    OUTLINED_FUNCTION_51_19();
    v16[6] = 0;
    v16[7] = v88;
    v89 = v138;
    v16[8] = 0;
    v16[9] = v89;
    v90 = v136;
    v16[10] = v136;
    v16[11] = v67;
    v82[1] = 0;
    v82[2] = 0;
    *v82 = 0;
    OUTLINED_FUNCTION_43_20(v88);
    v91 = v90;
    OUTLINED_FUNCTION_33_34();
    OUTLINED_FUNCTION_39_22(v92);
    v93 = v145;
    outlined assign with copy of AttributedString?(v69, v16 + v78);
    *(v16 + v77[11]) = 2;
    *(v16 + v77[12]) = 0;
    *(v16 + v77[13]) = 1;
    *(v16 + v77[14]) = 1;
    *v85 = 0;
    *(v85 + 1) = 0;
    v85[16] = -1;
    v94 = *(v76 + 16);
    if (v94 <= 2)
    {
      outlined destroy of TapInteractionHandler?(v69, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
      outlined destroy of ConversationControlsType(v148);
      OUTLINED_FUNCTION_37_29();
      OUTLINED_FUNCTION_26_3();
      outlined init with copy of ConversationControlsRecipe(v108, v109);
      OUTLINED_FUNCTION_55_3();
      OUTLINED_FUNCTION_16_5();
      __swift_storeEnumTagSinglePayload(v110, v111, v112, v113);
      outlined destroy of ConversationControlsRecipe(v16);
      v107 = v143;
      v102 = v142;
    }

    else
    {
      v145 = v91;

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = OUTLINED_FUNCTION_42();
        v98 = OUTLINED_FUNCTION_23();
        v146 = v94;
        v147 = v98;
        *v97 = 136315138;
        v99 = String.init<A>(reflecting:)();
        v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, &v147);

        *(v97 + 4) = v101;
        _os_log_impl(&dword_1BBC58000, v95, v96, "Too many trailing actions (%s)", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v98);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      outlined destroy of TapInteractionHandler?(v144, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
      outlined destroy of ConversationControlsType(v148);
      v102 = v142;
      v76 = v141;
      outlined destroy of ConversationControlsRecipe(v16);
      OUTLINED_FUNCTION_7_7();
      __swift_storeEnumTagSinglePayload(v103, v104, v105, v106);
      v107 = v143;
      v91 = v145;
    }

    OUTLINED_FUNCTION_3_62(v76);
    if (v114)
    {
      OUTLINED_FUNCTION_24_45();

      OUTLINED_FUNCTION_51_19();
      outlined destroy of TapInteractionHandler?(v76, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
      OUTLINED_FUNCTION_7_7();
      __swift_storeEnumTagSinglePayload(v117, v118, v119, v120);
    }

    else
    {
      outlined init with take of ConversationControlsRecipe(v76, v102);
      if (SBUIIsSystemApertureEnabled())
      {
        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_25(v123))
        {
          v124 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_39_2(v124);
          OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v125, v126, "handoffHUD: [SystemAperture] showing content, but below system aperture");
          OUTLINED_FUNCTION_27();
        }

        OUTLINED_FUNCTION_24_45();
        OUTLINED_FUNCTION_51_19();

        memcpy(v148, (v102 + v77[18]), 0x49uLL);
        outlined destroy of TapInteractionHandler?(v148, &_s15ConversationKit21SystemApertureElementVSgMd, &_s15ConversationKit21SystemApertureElementVSgMR);
        OUTLINED_FUNCTION_5_125();
      }

      else
      {
        OUTLINED_FUNCTION_24_45();

        OUTLINED_FUNCTION_51_19();
      }

      outlined init with copy of ConversationControlsRecipe(v102, v107);
      OUTLINED_FUNCTION_16_5();
      __swift_storeEnumTagSinglePayload(v131, v132, v133, v134);
      outlined destroy of ConversationControlsRecipe(v102);
    }

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_30_0();

    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  }
}

void HandoffControlsRecipeGenerator.lagunaHandoffCompletedRecipe(controlsManager:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_42_25(v9, v192);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v192 - v12;
  type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_6_102();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v192 - v19;
  v21 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v211 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v26 = v25 - v24;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v27 + 624))())
  {
    v212 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x2C0))();
    if (v212)
    {
      v197 = v21;
      v198 = v0;
      v206 = v13;
      v208 = v4;
      v196 = v2;
      v203 = v20;
      v204 = v6;
      OUTLINED_FUNCTION_27_20();
      v28 = [objc_opt_self() sharedInstance];
      v29 = [v28 neighborhoodActivityConduit];

      v30 = [v29 activeSplitSessionTV];
      v31 = objc_opt_self();
      v32 = [v31 conversationKit];
      v33 = OUTLINED_FUNCTION_23_52();
      v34.super.isa = v32;
      v36 = OUTLINED_FUNCTION_17_0(v33, v35, 0x61737265766E6F43, v2, v34);
      v38 = v37;

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);

      v205 = v36;
      v39._countAndFlagsBits = v36;
      v199 = v38;
      v39._object = v38;
      isa = NSAttributedString.__allocating_init(string:)(v39).super.isa;
      v202 = v30;
      if (v30 && (v40 = outlined bridged method (ob) of @objc TUNearbyDeviceHandle.name.getter(v30), v41))
      {
        v42 = v40;
        v43 = v41;
        OUTLINED_FUNCTION_61_10();
        v44 = &off_1E7FE9000;
      }

      else
      {
        v44 = &off_1E7FE9000;
        v45 = [v31 conversationKit];
        OUTLINED_FUNCTION_41_22();
        OUTLINED_FUNCTION_61_10();
        v46.super.isa = v45;
        v42 = OUTLINED_FUNCTION_17_0(v47, v48, v49, 0xE000000000000000, v46);
        v43 = v50;
      }

      v51 = [v31 v44[465]];
      OUTLINED_FUNCTION_40_0();
      v52.super.isa = v51;
      OUTLINED_FUNCTION_17_0(0x255F4E4F5F574F4ELL, 0xE900000000000040, 0x61737265766E6F43, 0xE000000000000000, v52);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v53 = swift_allocObject();
      v200 = xmmword_1BC4BA940;
      *(v53 + 16) = xmmword_1BC4BA940;
      *(v53 + 56) = MEMORY[0x1E69E6158];
      *(v53 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v53 + 32) = v42;
      *(v53 + 40) = v43;
      v54 = String.init(format:_:)();
      v56 = v55;

      v57._countAndFlagsBits = v54;
      v57._object = v56;
      v58.super.isa = NSAttributedString.__allocating_init(string:)(v57).super.isa;
      OUTLINED_FUNCTION_29_34(v58.super.isa);

      v59 = v212;
      v60 = ConversationControlsHelper.handoffBadgeImage(conversation:)(v212);
      v61 = [v59 mergedRemoteMembers];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
      lazy protocol witness table accessor for type TUConversationMember and conformance NSObject();
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v62 = specialized Set.count.getter();

      v207 = v60;
      if (v62)
      {
        type metadata accessor for ConversationControlsBadgingAvatarViewController();
        v63 = [v60 image];
        v64 = objc_opt_self();
        v65 = v199;

        v66 = [v64 clearColor];
        v67 = v59;
        v68 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v67, v63, v205, v65, v66);
        v69 = [v68 view];
        v70 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & *v208) + 0x2A8))();
        v71 = (*((*v70 & *v68) + 0x58))(v26);
        OUTLINED_FUNCTION_53_16(v71);
        v211[1](v26, v197);
        v72 = one-time initialization token for conversationControls;
        v211 = v69;
        v73 = v198;
        if (v72 != -1)
        {
          OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
        }

        v74 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v74, &static Logger.conversationControls);
        v75 = v207;
        v76 = v207;

        v77 = v76;
        OUTLINED_FUNCTION_44_2();
        v79 = v78;
        v80 = v67;
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.default.getter();

        v195 = v82;
        v197 = v81;
        v83 = os_log_type_enabled(v81, v82);
        v84 = v65;
        if (v83)
        {
          v85 = swift_slowAlloc();
          v193 = swift_slowAlloc();
          v194 = OUTLINED_FUNCTION_29_7();
          v216[0] = v194;
          *v85 = 136315906;
          v86 = v77;
          v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v205, v84, v216);

          *(v85 + 4) = v87;
          *(v85 + 12) = 2080;
          v88 = [v79 string];
          v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v91 = v90;

          v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v91, v216);

          *(v85 + 14) = v92;
          *(v85 + 22) = 2112;
          *(v85 + 24) = v80;
          OUTLINED_FUNCTION_33_34();
          v93 = v193;
          *v193 = v94;
          v95 = v75 != 0;
          *(v85 + 32) = 1024;
          v96 = v80;

          *(v85 + 34) = v95;
          OUTLINED_FUNCTION_60_14();
          OUTLINED_FUNCTION_26_3();
          _os_log_impl(v97, v98, v99, v100, v85, 0x26u);
          outlined destroy of TapInteractionHandler?(v93, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          OUTLINED_FUNCTION_27();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();

LABEL_28:
          goto LABEL_29;
        }
      }

      else
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
        v112 = *MEMORY[0x1E69DDDC8];
        LOBYTE(v214) = 0;
        OUTLINED_FUNCTION_2_147(v112);
        outlined init with copy of SymbolImageDescription(v217, v215);
        outlined destroy of SymbolImageDescription(v216);
        v113 = static UIImage.symbolImage(for:)(v217);
        outlined destroy of SymbolImageDescription(v217);
        v114 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

        v115 = v114;
        [v115 setContentMode_];
        v116 = [objc_opt_self() whiteColor];
        [v115 setTintColor_];

        OUTLINED_FUNCTION_53_16([v115 hash]);
        v117 = one-time initialization token for conversationControls;
        v211 = v115;
        v73 = v198;
        if (v117 != -1)
        {
          OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
        }

        v118 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v118, &static Logger.conversationControls);
        v119 = v60;
        v120 = v199;

        v68 = v119;
        OUTLINED_FUNCTION_44_2();
        v122 = v121;
        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v123, v124))
        {

          goto LABEL_28;
        }

        v125 = swift_slowAlloc();
        v197 = OUTLINED_FUNCTION_29_7();
        OUTLINED_FUNCTION_43_20(v197);
        *v125 = 136315650;
        v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v205, v120, v215);
        LODWORD(v205) = v124;
        v127 = v126;

        *(v125 + 4) = v127;
        *(v125 + 12) = 2080;
        v128 = [v122 string];
        v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v131 = v130;

        v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v131, v215);

        *(v125 + 14) = v132;
        *(v125 + 22) = 1024;

        *(v125 + 24) = v60 != 0;
        OUTLINED_FUNCTION_60_14();
        _os_log_impl(v133, v123, v134, v135, v125, 0x1Cu);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

LABEL_29:
      OUTLINED_FUNCTION_38_29(4);
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v137 = OUTLINED_FUNCTION_3_2(v136);
      *(v137 + 16) = xmmword_1BC4BAC30;
      v138 = v209;
      *(v137 + 32) = v209;
      v139 = type metadata accessor for AttributedString();
      v140 = 1;
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v141, v142, v143, v139);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
      type metadata accessor for ConversationControlsAction(0);
      OUTLINED_FUNCTION_9_3();
      OUTLINED_FUNCTION_59_12();
      v144 = swift_allocObject();
      *(v144 + 16) = v200;
      swift_storeEnumTagMultiPayload();
      v145 = v73[9];
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v146, v147, v148, v139);
      v149 = (v17 + v73[10]);
      v150 = v17 + v73[15];
      *(v150 + 32) = 0;
      *v150 = 0u;
      *(v150 + 16) = 0u;
      *(v150 + 40) = -2;
      *(v17 + v73[16]) = 0;
      v151 = v17 + v73[17];
      v152 = (v17 + v73[18]);
      *v152 = 1;
      v153 = OUTLINED_FUNCTION_4_129(v152, 0);
      outlined init with copy of ConversationControlsType(v153, v17);
      OUTLINED_FUNCTION_54_14();
      v17[6] = 0;
      v17[7] = v154;
      v155 = v210;
      v17[8] = 0;
      v17[9] = v155;
      v156 = v138;
      v157 = isa;
      v17[10] = isa;
      v17[11] = v137;
      v149[1] = 0;
      v149[2] = 0;
      *v149 = 0;
      OUTLINED_FUNCTION_29_34(v156);
      v158 = v157;
      v159 = v17 + v145;
      v160 = v213;
      outlined assign with copy of AttributedString?(v213, v159);
      *(v17 + v73[11]) = 2;
      *(v17 + v73[12]) = 0;
      *(v17 + v73[13]) = 1;
      *(v17 + v73[14]) = 1;
      *v151 = 0;
      *(v151 + 1) = 0;
      v151[16] = -1;
      v161 = *(v144 + 16);
      if (v161 <= 2)
      {
        outlined destroy of TapInteractionHandler?(v160, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
        outlined destroy of ConversationControlsType(v216);
        *v150 = v144;
        *(v150 + 8) = 0u;
        *(v150 + 24) = 0u;
        *(v150 + 40) = 0;
        v162 = v206;
        outlined init with copy of ConversationControlsRecipe(v17, v206);
        OUTLINED_FUNCTION_16_5();
        __swift_storeEnumTagSinglePayload(v171, v172, v173, v174);
        outlined destroy of ConversationControlsRecipe(v17);
        OUTLINED_FUNCTION_13_68();
      }

      else
      {
        v162 = v206;
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
        }

        v163 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v163, &static Logger.conversationControls);

        v150 = Logger.logObject.getter();
        v160 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v150, v160))
        {
          v140 = OUTLINED_FUNCTION_42();
          v164 = OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_43_20(v164);
          *v140 = 136315138;
          v214 = v161;
          v165 = String.init<A>(reflecting:)();
          v161 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v166, v215);
          v162 = v206;

          *(v140 + 4) = v161;
          _os_log_impl(&dword_1BBC58000, v150, v160, "Too many trailing actions (%s)", v140, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v164);
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();
        }

        outlined destroy of TapInteractionHandler?(v213, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
        outlined destroy of ConversationControlsType(v216);
        OUTLINED_FUNCTION_13_68();
        outlined destroy of ConversationControlsRecipe(v17);
        OUTLINED_FUNCTION_7_7();
        __swift_storeEnumTagSinglePayload(v167, v168, v169, v170);
      }

      OUTLINED_FUNCTION_3_62(v162);
      if (v175)
      {
        OUTLINED_FUNCTION_8_95(&v218);

        OUTLINED_FUNCTION_44_2();
        OUTLINED_FUNCTION_26_21();

        outlined destroy of TapInteractionHandler?(v162, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
        OUTLINED_FUNCTION_7_7();
        __swift_storeEnumTagSinglePayload(v178, v179, v180, v181);
      }

      else
      {
        outlined init with take of ConversationControlsRecipe(v162, v144);
        if (SBUIIsSystemApertureEnabled())
        {
          ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(v161, 128, v196, v215);
          OUTLINED_FUNCTION_8_95(&v218);

          OUTLINED_FUNCTION_44_2();
          OUTLINED_FUNCTION_26_21();

          v185 = v73[18];
          memcpy(v216, (v144 + v185), 0x49uLL);
          outlined destroy of TapInteractionHandler?(v216, &_s15ConversationKit21SystemApertureElementVSgMd, &_s15ConversationKit21SystemApertureElementVSgMR);
          memcpy((v144 + v185), v215, 0x49uLL);
        }

        else
        {
          OUTLINED_FUNCTION_8_95(&v218);

          OUTLINED_FUNCTION_44_2();
          OUTLINED_FUNCTION_26_21();
        }

        outlined init with copy of ConversationControlsRecipe(v144, v150);
        OUTLINED_FUNCTION_16_5();
        __swift_storeEnumTagSinglePayload(v188, v189, v190, v191);
        outlined destroy of ConversationControlsRecipe(v144);
      }

      OUTLINED_FUNCTION_30_0();
      return;
    }

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v101 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v101, &static Logger.conversationControls);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v103))
    {
      v104 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v104);
      OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v105, v106, "lagunaHandoffCompletedRecipe: No conversation to display handoff completed banner for.");
      OUTLINED_FUNCTION_27();
    }
  }

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_30_0();

  __swift_storeEnumTagSinglePayload(v107, v108, v109, v110);
}

uint64_t outlined bridged method (ob) of @objc TUNearbyDeviceHandle.name.getter(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Swift::Bool __swiftcall TUCall.canDisplayAlertUI(_:)(Swift::Bool a1)
{
  v3 = [v1 callStatus] == 6 || objc_msgSend(v1, sel_callStatus) == 1;
  if (![v1 isEmergency] || v3 | ((objc_msgSend(v1, sel_isFailureExpected) & 1) == 0))
  {
    return 0;
  }

  return a1;
}

BOOL @objc TUCall.canDisplayAlertUI(_:)(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  v5 = TUCall.canDisplayAlertUI(_:)(a3);

  return v5;
}

uint64_t ScreeningService.__allocating_init(logger:callServices:viewModel:getStreamToken:activityController:maxSecondsForScreening:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v25 = a8;
  v16 = a2[3];
  v15 = a2[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = v25(a1, v20, a3, a4, a5, a6, a7, v24, v16, v15);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v22;
}

uint64_t ScreeningService.startScreening(callUUID:endCall:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  Logger.traceFunctionStart(file:function:line:)("ConversationKit/ScreeningService.swift", 38, 2, "startScreening(callUUID:endCall:)", 33, 2, 64);
  ScreeningService.screen(_:)(a1, a2);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = &unk_1EDDBC000;
  if (os_log_type_enabled(v11, v12))
  {
    v14 = swift_slowAlloc();
    v15 = OUTLINED_FUNCTION_23();
    v31[0] = v15;
    *v14 = 136446466;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v31);
    *(v14 + 12) = 2050;
    *(v14 + 14) = *(v5 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_maxSecondsForScreening);

    _os_log_impl(&dword_1BBC58000, v11, v12, "onEnterScreeningState: Starting timer for %{public}s with %{public}ld seconds", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_27();
    v13 = &unk_1EDDBC000;
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  v16 = _ss8DurationV7secondsyABxSzRzlFZSi_Tt0g5(*(v5 + v13[476]));
  v18 = v17;
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a4;
  v20 = swift_allocObject();
  v20[2] = v5;
  v20[3] = a1;
  v20[4] = a2;
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  TimerService.start(duration:onFire:onCancel:)(v16, v18, &async function pointer to partial apply for closure #1 in ScreeningService.startScreening(callUUID:endCall:), v19, &async function pointer to partial apply for closure #2 in ScreeningService.startScreening(callUUID:endCall:), v20);

  v21 = OBJC_IVAR____TtC15ConversationKit16ScreeningService_activityController;
  swift_beginAccess();
  outlined init with copy of ActivityController?(v5 + v21, &v29);
  if (!v30)
  {
    return outlined destroy of CallControlsService?(&v29, &_s15ConversationKit18ActivityController_pSgMd, &_s15ConversationKit18ActivityController_pSgMR);
  }

  outlined init with take of TapInteractionHandler(&v29, v31);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_42();
    v25 = OUTLINED_FUNCTION_23();
    *&v29 = v25;
    *v24 = 136446210;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v29);
    _os_log_impl(&dword_1BBC58000, v22, v23, "onEnterScreeningState: Starting Activities for %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v26 = v32;
  v27 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  (*(v27 + 8))(*(v5 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_viewModel), v26, v27);
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t ScreeningService.screen(_:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v24 = a2;
  v5 = type metadata accessor for MovingToScreeningStateService(0);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC15ConversationKit16ScreeningService_logger;
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 16))(v8, v2 + v9, v10);
  v11 = v2 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_callServices;
  v13 = *(v2 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_callServices + 24);
  v12 = *(v2 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_callServices + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_callServices), v13);
  LOBYTE(v12) = (*(v12 + 16))(v13, v12);
  v15 = *(v2 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_getStreamToken);
  v14 = *(v2 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_getStreamToken + 8);
  outlined init with copy of IDSLookupManager(v11, v25);
  v16 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v25, v16 + 16);
  outlined init with copy of IDSLookupManager(v11, v25);
  v17 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v25, v17 + 16);
  v8[v6[7]] = v12 & 1;
  v18 = &v8[v6[8]];
  *v18 = v15;
  *(v18 + 1) = v14;
  v19 = &v8[v6[9]];
  *v19 = partial apply for implicit closure #2 in implicit closure #1 in ScreeningService.screen(_:);
  v19[1] = v16;
  v20 = &v8[v6[10]];
  *v20 = partial apply for implicit closure #4 in implicit closure #3 in ScreeningService.screen(_:);
  v20[1] = v17;
  v21 = &v8[v6[11]];
  *v21 = &async function pointer to partial apply for closure #1 in ScreeningService.screen(_:);
  *(v21 + 1) = v3;

  v22._countAndFlagsBits = a1;
  v22._object = v24;
  MovingToScreeningStateService.startScreening(callUUID:)(v22);
  return outlined destroy of MovingToScreeningStateService(v8);
}

uint64_t closure #1 in ScreeningService.startScreening(callUUID:endCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[7] = swift_task_alloc();
  v5[8] = type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ScreeningService.startScreening(callUUID:endCall:), v7, v6);
}

uint64_t closure #1 in ScreeningService.startScreening(callUUID:endCall:)()
{
  OUTLINED_FUNCTION_48();
  v27 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_23();
    v26 = v7;
    *v6 = 134349314;
    *(v6 + 4) = *(v5 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_maxSecondsForScreening);

    *(v6 + 12) = 2082;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v26);
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  v13 = v0[7];
  v15 = v0[5];
  v14 = v0[6];
  v17 = v0[3];
  v16 = v0[4];
  static TaskPriority.userInitiated.getter();
  v18 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_18_53(v13, v19, v20, v18);

  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v15;
  v22[5] = v14;
  v22[6] = v17;
  v22[7] = v16;
  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  OUTLINED_FUNCTION_13();

  return v24();
}

uint64_t closure #1 in closure #1 in ScreeningService.startScreening(callUUID:endCall:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = type metadata accessor for MainActor();
  v7[3] = static MainActor.shared.getter();
  v13 = a4 + *a4;
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = closure #1 in closure #1 in ScreeningService.startScreening(callUUID:endCall:);

  return (v13)(a6, a7, 0);
}

uint64_t closure #1 in closure #1 in ScreeningService.startScreening(callUUID:endCall:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  dispatch thunk of Actor.unownedExecutor.getter();
  v3 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t closure #2 in ScreeningService.startScreening(callUUID:endCall:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in ScreeningService.startScreening(callUUID:endCall:), v5, v4);
}

uint64_t closure #2 in ScreeningService.startScreening(callUUID:endCall:)()
{
  OUTLINED_FUNCTION_48();
  v10 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_23();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v9);
    _os_log_impl(&dword_1BBC58000, v1, v2, "onEnterScreeningState: Canceled timer for %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t closure #3 in ScreeningService.startScreening(callUUID:endCall:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = type metadata accessor for MainActor();
  v8[3] = static MainActor.shared.getter();
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = closure #1 in closure #1 in ScreeningService.startScreening(callUUID:endCall:);

  return v15(a6, a7, a8);
}

Swift::Void __swiftcall ScreeningService.stopScreening()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BBC58000, v5, v6, "onExitScreeningState: exiting state and ending captions.", v7, 2u);
    OUTLINED_FUNCTION_27();
  }

  v8 = (v1 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_provider);
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_provider))
  {
    v9 = v8[1];
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 40);
    swift_unknownObjectRetain();
    v11(0, ObjectType, v9);
    swift_unknownObjectRelease();
    v12 = *v8;
  }

  else
  {
    v12 = 0;
  }

  v36 = v8[1];
  *v8 = 0;
  v8[1] = 0;
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  TranscriptionViewModel.state.setter(3, v13);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static CallScreeningRTTHelper.shared;
  v15 = TranscriptionViewModel.captions.getter();
  v16 = TranscriptionViewModel.callUUID.getter();
  (*(*v14 + 160))(v15, v16, v17);

  TranscriptionViewModel.callUUID.setter();
  v18 = OBJC_IVAR____TtC15ConversationKit16ScreeningService_activityController;
  swift_beginAccess();
  outlined init with copy of ActivityController?(v1 + v18, &v37);
  if (v38)
  {
    outlined init with take of TapInteractionHandler(&v37, v39);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_42();
      v22 = OUTLINED_FUNCTION_23();
      *&v37 = v22;
      *v21 = 136446210;
      v23 = TranscriptionViewModel.callUUID.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v37);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1BBC58000, v19, v20, "onEnterScreeningState: Ending Activities for %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    v26 = v40;
    v27 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    (*(v27 + 16))("We are exiting the screening state.", 35, 2, v26, v27);
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    outlined destroy of CallControlsService?(&v37, &_s15ConversationKit18ActivityController_pSgMd, &_s15ConversationKit18ActivityController_pSgMR);
  }

  v28 = OBJC_IVAR____TtC15ConversationKit16ScreeningService_timerService;
  v29 = *(v1 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_timerService);
  type metadata accessor for TimerService();
  swift_allocObject();

  *(v1 + v28) = TimerService.init()();

  static TaskPriority.userInitiated.getter();
  v30 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_18_53(v4, v31, v32, v30);
  type metadata accessor for MainActor();

  v33 = static MainActor.shared.getter();
  v34 = swift_allocObject();
  v35 = MEMORY[0x1E69E85E0];
  v34[2] = v33;
  v34[3] = v35;
  v34[4] = v29;
  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  $defer #1 () in ScreeningService.stopScreening()(v1, v12, v36);
  swift_unknownObjectRelease();
}

uint64_t $defer #1 () in ScreeningService.stopScreening()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in ScreeningService.stopScreening()()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = closure #1 in ScreeningService.stopScreening();

  return TimerService.cancel()();
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  dispatch thunk of Actor.unownedExecutor.getter();
  v3 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

unint64_t implicit closure #2 in implicit closure #1 in ScreeningService.screen(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  v7 = (*(v6 + 64))(a1, a2, v5, v6);
  return v7 | ((HIDWORD(v7) & 1) << 32);
}

uint64_t implicit closure #4 in implicit closure #3 in ScreeningService.screen(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  return (*(v6 + 112))(a1, a2, v5, v6);
}

uint64_t closure #1 in ScreeningService.screen(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ScreeningService.screen(_:), v8, v7);
}

uint64_t closure #1 in ScreeningService.screen(_:)()
{
  OUTLINED_FUNCTION_48();
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  v7 = (v5 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_provider);
  *v7 = v6;
  v7[1] = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  (*(v3 + 16))(v1, v5 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_logger, v2);
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for ScreeningCaptions(0);
  swift_allocObject();
  v9 = ScreeningCaptions.init(logger:onUpdateCaptions:)(v1, partial apply for closure #1 in closure #1 in ScreeningService.screen(_:), v8);
  v10 = OBJC_IVAR____TtC15ConversationKit16ScreeningService_screeningCaptions;
  *(v5 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_screeningCaptions) = v9;

  TranscriptionViewModel.state.setter(2, v11);
  if (*(v5 + v10))
  {
    v12 = &protocol witness table for ScreeningCaptions;
  }

  else
  {
    v12 = 0;
  }

  ObjectType = swift_getObjectType();
  v14 = *(v4 + 24);

  v14(v15, v12, ObjectType, v4);
  (*(v4 + 40))(1, ObjectType, v4);

  OUTLINED_FUNCTION_13();

  return v16();
}

uint64_t closure #1 in closure #1 in ScreeningService.screen(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {

      v4 = TranscriptionViewModel.isGibberish.getter();

      if (v4)
      {

        TranscriptionViewModel.isGibberish.setter(0);
      }

      TranscriptionViewModel.captions.setter(a1);
    }

    else
    {

      TranscriptionViewModel.isGibberish.setter(1);
    }
  }

  return result;
}

uint64_t ScreeningService.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit16ScreeningService_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_callServices));

  outlined destroy of CallControlsService?(v0 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_activityController, &_s15ConversationKit18ActivityController_pSgMd, &_s15ConversationKit18ActivityController_pSgMR);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ScreeningService.__deallocating_deinit()
{
  ScreeningService.deinit();

  return swift_deallocClassInstance();
}

uint64_t ScreeningService.EndCallReason.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x74756F656D6954;
  }

  MEMORY[0x1BFB20B10](0x28726F727245, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t closure #1 in $defer #1 () in ScreeningService.stopScreening()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for Logger();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v6[7] = *(v8 + 64);
  v6[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[10] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[11] = v10;
  v6[12] = v9;

  return MEMORY[0x1EEE6DFA0](closure #1 in $defer #1 () in ScreeningService.stopScreening(), v10, v9);
}

uint64_t closure #1 in $defer #1 () in ScreeningService.stopScreening()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v12[8];
  v13 = v12[9];
  v16 = v12[6];
  v15 = v12[7];
  v18 = v12[4];
  v17 = v12[5];
  v20 = v12[2];
  v19 = v12[3];
  MEMORY[0x1BFB20F40](a1, a2, a3, a4, a5, a6, a7, a8);
  v21 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_18_53(v13, v22, v23, v21);
  v24 = OBJC_IVAR____TtC15ConversationKit16ScreeningService_logger;
  v12[13] = OBJC_IVAR____TtC15ConversationKit16ScreeningService_logger;
  (*(v16 + 16))(v14, v20 + v24, v17);
  v25 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v26 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  (*(v16 + 32))(v27 + v25, v14, v17);
  v28 = (v27 + v26);
  *v28 = v19;
  v28[1] = v18;
  swift_unknownObjectRetain();
  v29 = OUTLINED_FUNCTION_59();
  v32 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(v29, v30, v13, v31, v27);
  v12[14] = v32;
  outlined destroy of CallControlsService?(v13, &_sScPSgMd, &_sScPSgMR);
  v33 = swift_task_alloc();
  v12[15] = v33;
  *v33 = v12;
  v33[1] = closure #1 in $defer #1 () in ScreeningService.stopScreening();
  v39 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v33, v32, v39, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t closure #1 in $defer #1 () in ScreeningService.stopScreening()()
{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](closure #1 in $defer #1 () in ScreeningService.stopScreening(), v5, v4);
}

{
  OUTLINED_FUNCTION_9();

  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t closure #1 in closure #1 in $defer #1 () in ScreeningService.stopScreening()()
{
  OUTLINED_FUNCTION_9();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t specialized ScreeningService.__allocating_init(logger:callServices:viewModel:getStreamToken:activityController:maxSecondsForScreening:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a6;
  v22 = a7;
  v15 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a2, a9);
  v19 = specialized ScreeningService.init(logger:callServices:viewModel:getStreamToken:activityController:maxSecondsForScreening:)(a1, v17, a3, a4, a5, v21, v22, v18, a9, a10);
  (*(v15 + 8))(a2, a9);
  return v19;
}

uint64_t specialized ScreeningService.init(logger:callServices:viewModel:getStreamToken:activityController:maxSecondsForScreening:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v27 = a9;
  v28 = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v26);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a2, a9);
  v19 = a8 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_activityController;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v20 = (a8 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_provider);
  *v20 = 0;
  v20[1] = 0;
  *(a8 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_screeningCaptions) = 0;
  v21 = OBJC_IVAR____TtC15ConversationKit16ScreeningService_timerService;
  type metadata accessor for TimerService();
  swift_allocObject();
  *(a8 + v21) = TimerService.init()();
  v22 = OBJC_IVAR____TtC15ConversationKit16ScreeningService_logger;
  v23 = type metadata accessor for Logger();
  (*(*(v23 - 8) + 32))(a8 + v22, a1, v23);
  outlined init with take of TapInteractionHandler(&v26, a8 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_callServices);
  *(a8 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_viewModel) = a3;
  v24 = (a8 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_getStreamToken);
  *v24 = a4;
  v24[1] = a5;
  swift_beginAccess();
  outlined assign with take of ActivityController?(a6, v19);
  swift_endAccess();
  *(a8 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_maxSecondsForScreening) = a7;
  return a8;
}

uint64_t partial apply for closure #3 in ScreeningService.startScreening(callUUID:endCall:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_11_91();
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2(v6);
  *v7 = v8;
  v7[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v9 = OUTLINED_FUNCTION_16_2();

  return closure #3 in ScreeningService.startScreening(callUUID:endCall:)(v9, v10, v11, v1, v2, v3, v4, v5);
}

uint64_t partial apply for closure #1 in ScreeningService.startScreening(callUUID:endCall:)()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_14_61(v5);

  return closure #1 in ScreeningService.startScreening(callUUID:endCall:)(v6, v7, v2, v3, v4);
}

uint64_t partial apply for closure #2 in ScreeningService.startScreening(callUUID:endCall:)()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_14_61(v3);

  return closure #2 in ScreeningService.startScreening(callUUID:endCall:)(v4, v5, v2);
}

uint64_t outlined init with copy of ActivityController?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18ActivityController_pSgMd, &_s15ConversationKit18ActivityController_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_7Tm_0(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ScreeningService.stopScreening()()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_16_2();

  return closure #1 in ScreeningService.stopScreening()();
}

uint64_t type metadata accessor for ScreeningService(uint64_t a1)
{
  result = type metadata singleton initialization cache for ScreeningService;
  if (!type metadata singleton initialization cache for ScreeningService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ScreeningService(uint64_t a1)
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

uint64_t partial apply for closure #1 in $defer #1 () in ScreeningService.stopScreening()()
{
  OUTLINED_FUNCTION_11_91();
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2(v4);
  *v5 = v6;
  v5[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);
  v7 = OUTLINED_FUNCTION_16_2();

  return closure #1 in $defer #1 () in ScreeningService.stopScreening()(v7, v8, v9, v1, v2, v3);
}

uint64_t partial apply for closure #1 in closure #1 in $defer #1 () in ScreeningService.stopScreening()()
{
  OUTLINED_FUNCTION_48();
  type metadata accessor for Logger();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v3 = OUTLINED_FUNCTION_16_2();

  return closure #1 in closure #1 in $defer #1 () in ScreeningService.stopScreening()(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in ScreeningService.startScreening(callUUID:endCall:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_11_91();
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2(v5);
  *v6 = v7;
  v6[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v8 = OUTLINED_FUNCTION_16_2();

  return closure #1 in closure #1 in ScreeningService.startScreening(callUUID:endCall:)(v8, v9, v10, v1, v2, v4, v3);
}

uint64_t partial apply for closure #1 in ScreeningService.screen(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return closure #1 in ScreeningService.screen(_:)(a1, a2, a3, a4, v4);
}

uint64_t outlined destroy of MovingToScreeningStateService(uint64_t a1)
{
  v2 = type metadata accessor for MovingToScreeningStateService(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of ActivityController?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18ActivityController_pSgMd, &_s15ConversationKit18ActivityController_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t WeakBox.__allocating_init(_:)(uint64_t a1)
{
  v1 = swift_allocObject();
  WeakBox.init(_:)();
  return v1;
}

uint64_t WeakBox.box.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_0_187(a1);
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*WeakBox.box.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return WeakBox.box.modify;
}

void WeakBox.box.modify(void **a1, char a2)
{
  v3 = *a1;
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

uint64_t WeakBox.init(_:)()
{
  v1 = swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_0_187(v1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t WeakBox.__deallocating_deinit()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocClassInstance();
}

void PlaceholderCallCenter.avLessConversation(for:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_2();
  v11 = PlaceholderCallCenter.avLessConversation.getter();
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = v11;
  ObjectType = swift_getObjectType();
  if (((*(v4 + 520))(ObjectType, v4) & 1) == 0)
  {
    v14 = OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_expectedAVLessConversationUUIDs;
    swift_beginAccess();
    v15 = *(v2 + v14);

    v16 = [v12 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Set.contains(_:)(v1, v15);
    LOBYTE(v16) = v17;

    (*(v9 + 8))(v1, v7);
    if ((v16 & 1) == 0)
    {

LABEL_6:
      *(v6 + 32) = 0;
      *v6 = 0u;
      *(v6 + 16) = 0u;
      goto LABEL_7;
    }
  }

  *(v6 + 24) = type metadata accessor for TUConversation();
  *(v6 + 32) = &protocol witness table for TUConversation;
  *v6 = v12;
LABEL_7:
  OUTLINED_FUNCTION_30_0();
}

uint64_t PlaceholderCallCenter.downgradeToAVLess(for:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized PlaceholderCallCenter.downgradeToAVLess(for:)(v4, v1, v2, v3);
}

void PlaceholderCallCenter.updateAVModeSoon(for:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v27 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v26 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_2();
  v14 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v20 = v19 - v18;
  v21 = *(v2 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_queue);
  *(v19 - v18) = v21;
  (*(v16 + 104))(v19 - v18, *MEMORY[0x1E69E8020], v14);
  v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v22 = (*(v16 + 8))(v20, v14);
  if (v21)
  {
    if (((*(*v4 + 160))(v22) & 1) == 0)
    {
      (*(*v4 + 168))(1);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v4;
      v28[4] = partial apply for closure #1 in PlaceholderCallCenter.updateAVModeSoon(for:);
      v28[5] = v24;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 1107296256;
      v28[2] = thunk for @escaping @callee_guaranteed () -> ();
      v28[3] = &block_descriptor_92;
      v25 = _Block_copy(v28);

      static DispatchQoS.unspecified.getter();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1BFB215C0](0, v1, v10, v25);
      _Block_release(v25);
      (*(v27 + 8))(v10, v5);
      (*(v12 + 8))(v1, v26);
    }

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    __break(1u);
  }
}

void PlaceholderCallCenter.activeConversation(for:)()
{
  OUTLINED_FUNCTION_29();
  v26 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v25 = v5 - v4;
  v6 = [*(v0 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_conversationManager) activeConversations];
  type metadata accessor for TUConversation();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type TUConversation and conformance NSObject, type metadata accessor for TUConversation, MEMORY[0x1E69E81B8]);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v7 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v8 = v28;
    v9 = v29;
    v10 = v30;
    v11 = v31;
    v12 = v32;
  }

  else
  {
    v13 = -1 << *(v7 + 32);
    v9 = v7 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v7 + 56);

    v11 = 0;
    v8 = v7;
  }

  v23 = v10;
  v16 = (v10 + 64) >> 6;
  v24 = (v2 + 8);
  if (v8 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v17 = v11;
  v18 = v12;
  v19 = v11;
  if (v12)
  {
LABEL_12:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (v21)
    {
      do
      {
        v22 = [v21 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v22) = static UUID.== infix(_:_:)();
        (*v24)(v25, v26);
        if (v22)
        {
          break;
        }

        v11 = v19;
        v12 = v20;
        if ((v8 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        swift_dynamicCast();
        v21 = v27;
        v19 = v11;
        v20 = v12;
      }

      while (v27);
    }

LABEL_19:
    outlined consume of Set<TUHandle>.Iterator._Variant(v8);

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        goto LABEL_19;
      }

      v18 = *(v9 + 8 * v19);
      ++v17;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void PlaceholderCallCenter.disconnect(_:)()
{
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_queue);
  *(v3 - v2) = v4;
  v5 = OUTLINED_FUNCTION_21_51();
  v6(v5);
  v7 = v4;
  _dispatchPreconditionTest(_:)();
  v8 = OUTLINED_FUNCTION_20_53();
  v9(v8);
  if (v4)
  {
    v10 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_conversationManager);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v10 leaveConversationWithUUID_];
  }

  else
  {
    __break(1u);
  }
}

void PlaceholderCallCenter.answer(_:)()
{
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_queue);
  *(v3 - v2) = v4;
  v5 = OUTLINED_FUNCTION_21_51();
  v6(v5);
  v7 = v4;
  _dispatchPreconditionTest(_:)();
  v8 = OUTLINED_FUNCTION_20_53();
  v9(v8);
  if (v4)
  {
    PlaceholderCallCenter.activeConversation(for:)();
    if (v10)
    {
      v11 = v10;
      v12 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_conversationManager);
      v13 = [objc_allocWithZone(MEMORY[0x1E69D8C10]) initWithConversation:v10 originatingUIType:45];
      [v12 joinConversationWithRequest_];
    }
  }

  else
  {
    __break(1u);
  }
}

void PlaceholderCallCenter.setSharingScreen(_:attributes:for:)(char a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = *(v3 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_queue);
  *(v11 - v10) = v13;
  (*(v8 + 104))(v11 - v10, *MEMORY[0x1E69E8020], v6);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v12, v6);
  if (v13)
  {
    v15 = [objc_opt_self() defaultAttributes];
    TUScreenShareAttributes.update(with:)(a2);
    v16 = *(v3 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_conversationManager);
    v17 = v15;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v16 setScreenEnabled:a1 & 1 withScreenShareAttributes:v17 forConversationWithUUID:isa];
  }

  else
  {
    __break(1u);
  }
}

id static PlaceholderCallCenter.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static PlaceholderCallCenter.shared;

  return v1;
}

id PlaceholderCallCenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaceholderCallCenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderCallCenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void PlaceholderCallCenter.setAVMode(_:for:)(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_2();
  v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_queue);
  *v2 = v8;
  (*(v6 + 104))(v2, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v2, v4);
  if (v8)
  {
    v10 = *(v1 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_conversationManager);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v10 setLocalParticipantAudioVideoMode:a1 forConversationUUID:isa];
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in PlaceholderCallCenter.updateAVModeSoon(for:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((*(*a2 + 160))())
    {
      v5 = (*(*a2 + 184))();
      PlaceholderCallCenter.setAVMode(_:for:)(v5);
      (*(*a2 + 168))(0);
    }
  }
}

unsigned __int8 *PlaceholderCallCenter.activeCall(for:purpose:)(void *a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = *(v2 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_activeCalls);
  result = [a1 UUID];
  if (result)
  {
    v7 = result;
    v8 = [v5 objectForKey_];

    if (v8)
    {
      if (v8[16] != v4)
      {

        return 0;
      }
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized _NativeSet.update(with:isUnique:)()
{
  OUTLINED_FUNCTION_29();
  v50 = v1;
  v3 = v2;
  v49 = v4;
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v51 = v0;
  v12 = *v0;
  OUTLINED_FUNCTION_4_130();
  v54 = v3;
  v15 = v3;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(v13, v14, MEMORY[0x1E69695B8]);
  v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v17 = v12;
  v52 = ~(-1 << *(v12 + 32));
  v53 = v12 + 56;
  v18 = 1;
  while (1)
  {
    v19 = v16 & v52;
    v20 = (v16 & v52) >> 6;
    v21 = 1 << (v16 & v52);
    v22 = v21 & *(v53 + 8 * v20);
    if (!v22)
    {
      break;
    }

    v23 = v17;
    (*(v7 + 16))(v11, v17[6] + *(v7 + 72) * v19, v5);
    OUTLINED_FUNCTION_4_130();
    v25 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, v24, MEMORY[0x1E69695C8]);
    OUTLINED_FUNCTION_17_58(v25);
    v26 = OUTLINED_FUNCTION_13_69();
    v27(v26);
    if (v15)
    {
      v18 = 0;
      v17 = v23;
      break;
    }

    v16 = v19 + 1;
    v17 = v23;
  }

  v28 = v17[2];
  v29 = v28 + v18;
  if (__OFADD__(v28, v18))
  {
    __break(1u);
  }

  else
  {
    v30 = v17[3];
    v31 = v51;
    if (v30 < v29 || (v50 & 1) == 0)
    {
      if (v50)
      {
        specialized _NativeSet.resize(capacity:)();
        goto LABEL_16;
      }

      if (v30 < v29)
      {
        specialized _NativeSet.copyAndResize(capacity:)();
LABEL_16:
        v34 = *v51;
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = ~(-1 << *(v34 + 32));
        while (1)
        {
          v19 = v35 & v36;
          v20 = (v35 & v36) >> 6;
          v21 = 1 << (v35 & v36);
          if ((v21 & *(v34 + 56 + 8 * v20)) == 0)
          {
            v31 = v51;
            if (v22)
            {
              goto LABEL_29;
            }

            v32 = *(v7 + 72);
            goto LABEL_22;
          }

          v33 = *(v7 + 72) * v19;
          (*(v7 + 16))(v11, *(v34 + 48) + v33, v5);
          OUTLINED_FUNCTION_4_130();
          v38 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, v37, MEMORY[0x1E69695C8]);
          OUTLINED_FUNCTION_17_58(v38);
          v39 = OUTLINED_FUNCTION_13_69();
          v40(v39);
          if (v54)
          {
            break;
          }

          v35 = v19 + 1;
        }

        v31 = v51;
        if (!v22)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      }

      specialized _NativeSet.copy()();
    }

    v32 = *(v7 + 72);
    if (v22)
    {
      v33 = v32 * v19;
LABEL_25:
      v47 = *v31;
      v48 = *(v7 + 32);
      v46 = v49;
      v48(v49, *(*v31 + 48) + v33, v5);
      v48(*(v47 + 48) + v33, v54, v5);
      v45 = 0;
      goto LABEL_26;
    }

LABEL_22:
    v41 = *v31;
    *(*v31 + 8 * v20 + 56) |= v21;
    (*(v7 + 32))(*(v41 + 48) + v32 * v19, v54, v5);
    v42 = *(v41 + 16);
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (!v43)
    {
      *(v41 + 16) = v44;
      v45 = 1;
      v46 = v49;
LABEL_26:
      __swift_storeEnumTagSinglePayload(v46, v45, 1, v5);
      OUTLINED_FUNCTION_30_0();
      return;
    }
  }

  __break(1u);
LABEL_29:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized PlaceholderCallCenter.downgradeToAVLess(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v49 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v46 - v7;
  v9 = type metadata accessor for UUID();
  v48 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v23;
  v24 = *(v23 + 16);
  v25 = v49;
  v49 = a3;
  v24(v22, v25, a3, v20);
  v26 = *(a2 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_queue);
  *v18 = v26;
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8020], v15);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  v29 = *(v16 + 8);
  v28 = (v16 + 8);
  v29(v18, v15);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  (*(v46 + 8))(v49);
  PlaceholderCallCenter.setAVMode(_:for:)(0);
  v28 = *(v48 + 16);
  v28(v11, v14, v9);
  v30 = OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_expectedAVLessConversationUUIDs;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v50 = *(a2 + v30);
  specialized _NativeSet.update(with:isUnique:)();
  *(a2 + v30) = v50;
  outlined destroy of UUID?(v8);
  swift_endAccess();
  if (one-time initialization token for conversationKit != -1)
  {
LABEL_5:
    swift_once();
  }

  v31 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1BC4BA940;
  v28(v8, v14, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  specialized >> prefix<A>(_:)(v8, v33, v34, v35, v36, v37, v38, v39, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  v41 = v40;
  v43 = v42;
  outlined destroy of UUID?(v8);
  *(v32 + 56) = MEMORY[0x1E69E6158];
  *(v32 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v32 + 32) = v41;
  *(v32 + 40) = v43;
  v44 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("PlaceholderCallCenter added %@ to expectedAVLessConversationUUIDs", 65, 2, &dword_1BBC58000, v31, v44, v32);

  (*(v48 + 8))(v14, v9);
  return (*(v47 + 8))(v22, v49);
}

void ClarityUIFavoritesView.navigationPath.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd, &_s7SwiftUI7BindingVyAA14NavigationPathVGMR);

  JUMPOUT(0x1BFB20050);
}

uint64_t key path setter for ClarityUIFavoritesView.navigationPath : ClarityUIFavoritesView(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return ClarityUIFavoritesView.navigationPath.setter(v5);
}

uint64_t ClarityUIFavoritesView.navigationPath.setter(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd, &_s7SwiftUI7BindingVyAA14NavigationPathVGMR);
  Binding.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*ClarityUIFavoritesView.navigationPath.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = type metadata accessor for NavigationPath();
  *v3 = v4;
  v5 = *(v4 - 8);
  v3[1] = v5;
  v6 = *(v5 + 64);
  v3[2] = __swift_coroFrameAllocStub(v6);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd, &_s7SwiftUI7BindingVyAA14NavigationPathVGMR);
  v3[4] = v7;
  OUTLINED_FUNCTION_7_0();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v3[5] = v9;
  outlined init with copy of Participant?(v1, v9, &_s7SwiftUI7BindingVyAA14NavigationPathVGMd, &_s7SwiftUI7BindingVyAA14NavigationPathVGMR);
  MEMORY[0x1BFB20050](v7);
  return ClarityUIOutgoingCallActionsView.navigationPath.modify;
}

void *ClarityUIFavoritesView.$navigationPath.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd, &_s7SwiftUI7BindingVyAA14NavigationPathVGMR);

  return Binding.projectedValue.getter();
}

uint64_t ClarityUIFavoritesView.isDialerPresented.getter()
{
  type metadata accessor for ClarityUIFavoritesView(0);
  OUTLINED_FUNCTION_1_152();
  v6 = v0;
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x1BFB20050](&v5, v3);
  return v5;
}

uint64_t type metadata accessor for ClarityUIFavoritesView(uint64_t a1)
{
  result = type metadata singleton initialization cache for ClarityUIFavoritesView;
  if (!type metadata singleton initialization cache for ClarityUIFavoritesView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ClarityUIFavoritesView.isDialerPresented.setter(char a1)
{
  type metadata accessor for ClarityUIFavoritesView(0);
  OUTLINED_FUNCTION_1_152();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  return Binding.wrappedValue.setter();
}

void (*ClarityUIFavoritesView.isDialerPresented.modify(void *a1))(uint64_t *a1)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v4 = (v1 + *(type metadata accessor for ClarityUIFavoritesView(0) + 20));
  v5 = *v4;
  v6 = v4[1];
  v3[6] = *v4;
  v3[7] = v6;
  LOBYTE(v4) = *(v4 + 16);
  *(v3 + 19) = v4;
  *v3 = v5;
  v3[1] = v6;
  *(v3 + 16) = v4;

  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x1BFB20050]();
  return AnimatedSaveView.saveState.modify;
}

uint64_t ClarityUIFavoritesView.$isDialerPresented.getter()
{
  type metadata accessor for ClarityUIFavoritesView(0);
  OUTLINED_FUNCTION_1_152();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t ClarityUIFavoritesView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7ForEachVySay15ConversationKit17ClarityUIFavoriteVGSSAA19_ConditionalContentVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAF0I15UIContactAvatarVGs5NeverOG_Qo_A_GSgG_ACyAmAEANyQrSiFQOyAPyARyAtA5ImageVGAYG_Qo_Sg_A7_tGSgAA6ButtonVyA5_GSgtGMd, &_s7SwiftUI9TupleViewVyAA7ForEachVySay15ConversationKit17ClarityUIFavoriteVGSSAA19_ConditionalContentVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAF0I15UIContactAvatarVGs5NeverOG_Qo_A_GSgG_ACyAmAEANyQrSiFQOyAPyARyAtA5ImageVGAYG_Qo_Sg_A7_tGSgAA6ButtonVyA5_GSgtGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TupleView<(ForEach<[ClarityUIFavorite], String, _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0>?>, TupleView<((<<opaque return type of View.badge(_:)>>.0)?, <<opaque return type of View.badge(_:)>>.0)>?, Button<Label<Text, Image>>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7ForEachVySay15ConversationKit17ClarityUIFavoriteVGSSAA19_ConditionalContentVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAF0I15UIContactAvatarVGs5NeverOG_Qo_A_GSgG_ACyAmAEANyQrSiFQOyAPyARyAtA5ImageVGAYG_Qo_Sg_A7_tGSgAA6ButtonVyA5_GSgtGMd, &_s7SwiftUI9TupleViewVyAA7ForEachVySay15ConversationKit17ClarityUIFavoriteVGSSAA19_ConditionalContentVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAF0I15UIContactAvatarVGs5NeverOG_Qo_A_GSgG_ACyAmAEANyQrSiFQOyAPyARyAtA5ImageVGAYG_Qo_Sg_A7_tGSgAA6ButtonVyA5_GSgtGMR, MEMORY[0x1E6981F48]);
  return List<>.init(content:)();
}

void closure #1 in ClarityUIFavoritesView.body.getter(uint64_t a1@<X0>, char *a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v106 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v100 = &v84 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Md, &_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_MR);
  v93 = *(v7 - 8);
  v94 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v84 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOGMd, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOGMR);
  v89 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v84 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_SgMd, &_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_SgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v91 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AStGSgMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AStGSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v104 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v108 = &v84 - v23;
  v24 = type metadata accessor for ClarityUIFavoritesView(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay15ConversationKit17ClarityUIFavoriteVGSSAA19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAD0G15UIContactAvatarVGs5NeverOG_Qo_AYGSgGMd, &_s7SwiftUI7ForEachVySay15ConversationKit17ClarityUIFavoriteVGSSAA19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAD0G15UIContactAvatarVGs5NeverOG_Qo_AYGSgGMR);
  v102 = *(v27 - 8);
  v103 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v101 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v84 - v30;
  ClarityUIFavoritesList.favorites.getter();
  v111 = v32;
  outlined init with copy of ClarityUIFavoritesView(a1, &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *(v25 + 80);
  v34 = (v33 + 16) & ~v33;
  v97 = v26;
  v95 = v33;
  v35 = swift_allocObject();
  v96 = v34;
  v98 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with take of ClarityUIFavoritesView(v98, v35 + v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit17ClarityUIFavoriteVGMd, &_sSay15ConversationKit17ClarityUIFavoriteVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_ATGSgMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_ATGSgMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [ClarityUIFavorite] and conformance [A], &_sSay15ConversationKit17ClarityUIFavoriteVGMd, &_sSay15ConversationKit17ClarityUIFavoriteVGMR, MEMORY[0x1E69E6338]);
  lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0>? and conformance <A> A?();
  lazy protocol witness table accessor for type ClarityUIFavorite and conformance ClarityUIFavorite();
  v107 = v31;
  v36 = ForEach<>.init(_:content:)();
  v37 = *(v24 + 24);
  v99 = a1;
  v38 = *(a1 + v37);
  v40 = ClarityUIPreferences.canCallContacts.getter(v36, v39);
  if ((v40 & 1) == 0)
  {
    v52 = 1;
    v53 = v100;
    v54 = v108;
LABEL_17:
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AStGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AStGMR);
    v68 = 1;
    __swift_storeEnumTagSinglePayload(v54, v52, 1, v67);
    v69 = v54;
    if (ClarityUIPreferences.dialerKeypadEnabled.getter())
    {
      v70 = v98;
      outlined init with copy of ClarityUIFavoritesView(v99, v98);
      v71 = v96;
      v72 = swift_allocObject();
      outlined init with take of ClarityUIFavoritesView(v70, v72 + v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR);
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR, MEMORY[0x1E697D658]);
      v69 = v108;
      Button.init(action:label:)();
      v68 = 0;
    }

    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMR);
    __swift_storeEnumTagSinglePayload(v53, v68, 1, v73);
    v74 = v101;
    v75 = v102;
    v76 = v53;
    v77 = *(v102 + 16);
    v78 = v103;
    v77(v101, v107, v103);
    v79 = v104;
    outlined init with copy of Participant?(v69, v104, &_s7SwiftUI9TupleViewVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AStGSgMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AStGSgMR);
    v80 = v106;
    outlined init with copy of Participant?(v53, v106, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    v81 = v105;
    v77(v105, v74, v78);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay15ConversationKit17ClarityUIFavoriteVGSSAA19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAD0G15UIContactAvatarVGs5NeverOG_Qo_AYGSgG_AA05TupleK0VyAkAEALyQrSiFQOyANyAPyArA5ImageVGAWG_Qo_Sg_A7_tGSgAA6ButtonVyA5_GSgtMd, &_s7SwiftUI7ForEachVySay15ConversationKit17ClarityUIFavoriteVGSSAA19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAD0G15UIContactAvatarVGs5NeverOG_Qo_AYGSgG_AA05TupleK0VyAkAEALyQrSiFQOyANyAPyArA5ImageVGAWG_Qo_Sg_A7_tGSgAA6ButtonVyA5_GSgtMR);
    outlined init with copy of Participant?(v79, &v81[*(v82 + 48)], &_s7SwiftUI9TupleViewVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AStGSgMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AStGSgMR);
    outlined init with copy of Participant?(v80, &v81[*(v82 + 64)], &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v76, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v108, &_s7SwiftUI9TupleViewVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AStGSgMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AStGSgMR);
    v83 = *(v75 + 8);
    v83(v107, v78);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v80, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v79, &_s7SwiftUI9TupleViewVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AStGSgMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AStGSgMR);
    v83(v74, v78);
    return;
  }

  v86 = v38;
  if ((ClarityUIPreferences.recentsEnabled.getter(v40, v41) & 1) == 0)
  {
    v55 = v19;
    v56 = v94;
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v94);
    v57 = v89;
LABEL_16:
    v85 = v55;
    v110 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR, MEMORY[0x1E697D658]);
    lazy protocol witness table accessor for type ClarityUIContactsNavigationDestination and conformance ClarityUIContactsNavigationDestination();
    v59 = v88;
    NavigationLink<>.init<A>(value:label:)();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationLink<Label<Text, Image>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOGMd, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOGMR, MEMORY[0x1E697C090]);
    v60 = v90;
    View.badge(_:)();
    (*(v57 + 8))(v59, v11);
    v61 = v91;
    outlined init with copy of Participant?(v55, v91, &_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_SgMd, &_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_SgMR);
    v63 = v92;
    v62 = v93;
    v64 = *(v93 + 16);
    v64(v92, v60, v56);
    v54 = v108;
    outlined init with copy of Participant?(v61, v108, &_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_SgMd, &_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_SgMR);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AQtMd, &_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AQtMR);
    v64((v54 + *(v65 + 48)), v63, v56);
    v66 = *(v62 + 8);
    v66(v60, v56);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v85, &_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_SgMd, &_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_SgMR);
    v66(v63, v56);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v61, &_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_SgMd, &_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_SgMR);
    v52 = 0;
    v53 = v100;
    goto LABEL_17;
  }

  v84 = v11;
  v109 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR, MEMORY[0x1E697D658]);
  lazy protocol witness table accessor for type ClarityUIRecentsNavigationDestination and conformance ClarityUIRecentsNavigationDestination();
  v42 = NavigationLink<>.init<A>(value:label:)();
  v44 = ClarityUICallHistory.recentCalls.getter(v42, v43);
  v45 = specialized Array.count.getter();
  v46 = 0;
  v47 = 0;
  while (1)
  {
    if (v45 == v46)
    {

      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationLink<Label<Text, Image>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOGMd, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOGMR, MEMORY[0x1E697C090]);
      v55 = v19;
      v11 = v84;
      v58 = v87;
      View.badge(_:)();
      v57 = v89;
      (*(v89 + 8))(v58, v11);
      v56 = v94;
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v94);
      goto LABEL_16;
    }

    if ((v44 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x1BFB22010](v46, v44);
    }

    else
    {
      if (v46 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v48 = *(v44 + 8 * v46 + 32);
    }

    v49 = v48;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    v50 = [v48 unreadCount];

    ++v46;
    v51 = __OFADD__(v47, v50);
    v47 += v50;
    if (v51)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t closure #1 in closure #1 in ClarityUIFavoritesView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_AV_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_AV_GMR);
  MEMORY[0x1EEE9AC00](v52);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_Md, &_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_MR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - v14;
  v64 = *(a1 + 6);
  v16 = a1[2];
  v62 = a1[1];
  v63 = v16;
  v61 = *a1;
  v17 = *(v62 + 16);
  if (v17 >= 2)
  {
    v50 = a3;
    v18 = *(a1 + 40);
    v65 = *(a1 + 24);
    v66 = v18;
    v54 = v65;
    v55 = v18;
    v56 = v62;
    MEMORY[0x1EEE9AC00](v13);
    *(&v43 - 2) = &v61;
    v49 = v15;
    v20 = v19;
    outlined init with copy of ClarityUIContact(&v65, v53);
    outlined init with copy of ClarityUIContact(&v65, v53);

    v48 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGMd, &_s7SwiftUI5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Label<Text, ClarityUIContactAvatar> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGMd, &_s7SwiftUI5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGMR, MEMORY[0x1E697D658]);
    lazy protocol witness table accessor for type ClarityUIOutgoingCallActionsNavigationDestination and conformance ClarityUIOutgoingCallActionsNavigationDestination();
    NavigationLink<>.init<A>(value:label:)();
    type metadata accessor for ClarityUIFavoritesView(0);
    v54 = v65;
    v55 = v66;
    v68.cnContact.super.isa = &v54;
    ClarityUICallHistory.badgeCount(for:)(v68);
    v21 = v54;

    v22 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationLink<Label<Text, ClarityUIContactAvatar>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMR, MEMORY[0x1E697C090]);
    v23 = v49;
    View.badge(_:)();
    v8[1](v10, v7);
    (*(v12 + 16))(v48, v23, v20);
    swift_storeEnumTagMultiPayload();
    *&v54 = v7;
    *(&v54 + 1) = v22;
    swift_getOpaqueTypeConformance2();
    v24 = v50;
    _ConditionalContent<>.init(storage:)();
    (*(v12 + 8))(v23, v20);
LABEL_5:
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_ATGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_ATGMR);
    return __swift_storeEnumTagSinglePayload(v24, 0, 1, v40);
  }

  v48 = v8;
  if (v17)
  {
    v43 = &v43;
    v26 = *(v62 + 32);
    v25 = *(v62 + 40);
    v27 = *(v62 + 48);
    v28 = *(a1 + 40);
    v65 = *(a1 + 24);
    v66 = v28;
    v29 = *(a1 + 24);
    v30 = *(a1 + 40);
    v31 = *(v62 + 56);
    v32 = *(v62 + 64);
    v54 = v29;
    v55 = v30;
    v56 = v26;
    v57 = v25;
    v58 = v27;
    v59 = v31;
    v60 = v32;
    MEMORY[0x1EEE9AC00](v25);
    *(&v43 - 2) = &v61;
    v49 = v15;
    v46 = v33;
    v44 = v7;
    v35 = v34;

    v45 = v31;
    v47 = v32;
    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v31, v32);
    outlined init with copy of ClarityUIContact(&v65, v53);
    outlined init with copy of ClarityUIContact(&v65, v53);

    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v31, v32);
    v50 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGMd, &_s7SwiftUI5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Label<Text, ClarityUIContactAvatar> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGMd, &_s7SwiftUI5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGMR, MEMORY[0x1E697D658]);
    lazy protocol witness table accessor for type ClarityUIPreviewNavigationDestination and conformance ClarityUIPreviewNavigationDestination();
    NavigationLink<>.init<A>(value:label:)();
    type metadata accessor for ClarityUIFavoritesView(0);
    v54 = v65;
    v55 = v66;
    v69.cnContact.super.isa = &v54;
    ClarityUICallHistory.badgeCount(for:)(v69);
    v36 = v54;

    v37 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationLink<Label<Text, ClarityUIContactAvatar>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMR, MEMORY[0x1E697C090]);
    v38 = v49;
    v39 = v44;
    View.badge(_:)();
    (*(v48 + 1))(v10, v39);
    (*(v12 + 16))(v6, v38, v35);
    swift_storeEnumTagMultiPayload();
    *&v54 = v39;
    *(&v54 + 1) = v37;
    swift_getOpaqueTypeConformance2();
    v24 = v50;
    _ConditionalContent<>.init(storage:)();

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v45, v47);
    (*(v12 + 8))(v38, v35);
    goto LABEL_5;
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_ATGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_ATGMR);

  return __swift_storeEnumTagSinglePayload(a3, 1, 1, v42);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in ClarityUIFavoritesView.body.getter@<X0>(uint64_t a2@<X8>)
{
  CNContact.clarityUIDisplayName.getter();
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t closure #2 in closure #1 in ClarityUIFavoritesView.body.getter(void (*a1)(double))
{
  v2 = type metadata accessor for ClarityUINavigationTitle();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  a1(v3);
  return Label<>.init(_:)();
}

uint64_t closure #5 in closure #1 in ClarityUIFavoritesView.body.getter(uint64_t a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #5 in closure #1 in ClarityUIFavoritesView.body.getter(uint64_t a1)
{
  type metadata accessor for ClarityUIFavoritesView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  return Binding.wrappedValue.setter();
}

uint64_t closure #6 in closure #1 in ClarityUIFavoritesView.body.getter()
{
  v0 = [objc_opt_self() conversationKit];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x61737265766E6F43;
  v1.value._object = 0xEF74694B6E6F6974;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  v2._object = 0x80000001BC515300;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  lazy protocol witness table accessor for type String and conformance String();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t ClarityUIFavoritesView.init(navigationPath:isDialerPresented:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  outlined init with take of Binding<NavigationPath>(a1, a5);
  v9 = type metadata accessor for ClarityUIFavoritesView(0);
  v10 = a5 + v9[5];
  *v10 = a2;
  *(v10 + 8) = a3;
  *(v10 + 16) = a4;
  v11 = v9[6];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(a5 + v11) = static ClarityUIPreferences.shared;
  v12 = v9[7];
  v13 = one-time initialization token for shared;

  if (v13 != -1)
  {
    swift_once();
  }

  *(a5 + v12) = static ClarityUICallHistory.shared;
  v14 = v9[8];
  v15 = one-time initialization token for shared;

  if (v15 != -1)
  {
    swift_once();
  }

  *(a5 + v14) = static ClarityUIFavoritesList.shared;
}

void type metadata completion function for ClarityUIFavoritesView(uint64_t a1)
{
  type metadata accessor for Binding<NavigationPath>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Binding<Bool>();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ClarityUIPreferences(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ClarityUICallHistory(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ClarityUIFavoritesList(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for Binding<Bool>()
{
  if (!lazy cache variable for type metadata for Binding<Bool>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Bool>);
    }
  }
}

uint64_t outlined init with copy of ClarityUIFavoritesView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClarityUIFavoritesView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ClarityUIFavoritesView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClarityUIFavoritesView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in ClarityUIFavoritesView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClarityUIFavoritesView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #1 in ClarityUIFavoritesView.body.getter(a1, v6, a2);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_ATGSgMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_ATGSgMR);
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_ATGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_ATGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationLink<Label<Text, ClarityUIContactAvatar>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMR, MEMORY[0x1E697C090]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClarityUIFavorite and conformance ClarityUIFavorite()
{
  result = lazy protocol witness table cache variable for type ClarityUIFavorite and conformance ClarityUIFavorite;
  if (!lazy protocol witness table cache variable for type ClarityUIFavorite and conformance ClarityUIFavorite)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIFavorite and conformance ClarityUIFavorite);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClarityUIFavorite and conformance ClarityUIFavorite;
  if (!lazy protocol witness table cache variable for type ClarityUIFavorite and conformance ClarityUIFavorite)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIFavorite and conformance ClarityUIFavorite);
  }

  return result;
}

uint64_t partial apply for closure #5 in closure #1 in ClarityUIFavoritesView.body.getter()
{
  v1 = *(type metadata accessor for ClarityUIFavoritesView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #5 in closure #1 in ClarityUIFavoritesView.body.getter(v2);
}

id one-time initialization function for font()
{
  result = [objc_opt_self() systemFontOfSize_];
  static MomentsIndicatorBubble.font = result;
  return result;
}

uint64_t *MomentsIndicatorBubble.font.unsafeMutableAddressor()
{
  if (one-time initialization token for font != -1)
  {
    OUTLINED_FUNCTION_0_188(&one-time initialization token for font);
  }

  return &static MomentsIndicatorBubble.font;
}

id static MomentsIndicatorBubble.font.getter()
{
  if (one-time initialization token for font != -1)
  {
    OUTLINED_FUNCTION_0_188(&one-time initialization token for font);
  }

  v1 = static MomentsIndicatorBubble.font;

  return v1;
}

uint64_t key path getter for MomentsIndicatorBubble.model : MomentsIndicatorBubble@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t key path setter for MomentsIndicatorBubble.model : MomentsIndicatorBubble(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);

  return v2(v3);
}

uint64_t MomentsIndicatorBubble.model.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_model;
  OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = a1;
}

uint64_t MomentsIndicatorBubble.delegate.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_delegate;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_delegate, a1);
  return outlined init with copy of MomentsIndicatorBubbleDelegate?(v2 + v4, a2);
}

uint64_t MomentsIndicatorBubble.delegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_delegate;
  swift_beginAccess();
  outlined assign with take of MomentsIndicatorBubbleDelegate?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t key path getter for MomentsIndicatorBubble.bottomConstraint : MomentsIndicatorBubble@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for MomentsIndicatorBubble.bottomConstraint : MomentsIndicatorBubble(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB0);
  v4 = *a1;
  return v3(v2);
}

void *MomentsIndicatorBubble.bottomConstraint.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_bottomConstraint;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_bottomConstraint, a2);
  v4 = *(v2 + v3);
  v5 = v4;
  return v4;
}

void MomentsIndicatorBubble.bottomConstraint.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_bottomConstraint;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *MomentsIndicatorBubble.init(model:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_delegate];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_bottomConstraint] = 0;
  v4 = OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_indicator;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&v1[OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_timer] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_model] = a1;
  v43.receiver = v1;
  v43.super_class = type metadata accessor for MomentsIndicatorBubble();

  v5 = objc_msgSendSuper2(&v43, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v5 setUserInteractionEnabled_];
  v6 = static MomentsIndicatorBubble.makeBackgroundColor()();
  [v5 setBackgroundColor_];

  v7 = [v5 layer];
  [v7 setCornerRadius_];

  v8 = OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_indicator;
  [v5 addSubview_];
  v9 = *(*a1 + 104);
  v10 = *&v5[v8];
  v11 = v9();
  outlined bridged method (mbnn) of @objc UILabel.text.setter(v11, v12, v10);

  v13 = *&v5[v8];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 whiteColor];
  [v15 setTextColor_];

  v17 = one-time initialization token for font;
  v18 = *&v5[v8];
  if (v17 != -1)
  {
    OUTLINED_FUNCTION_0_188(&one-time initialization token for font);
  }

  [v18 setFont_];

  [*&v5[v8] setLineBreakMode_];
  [*&v5[v8] setNumberOfLines_];
  [*&v5[v8] setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BC4BA7F0;
  v21 = [*&v5[v8] centerXAnchor];
  v22 = [v5 centerXAnchor];
  v23 = OUTLINED_FUNCTION_79();
  v25 = [v23 v24];

  *(v20 + 32) = v25;
  v26 = [*&v5[v8] centerYAnchor];
  v27 = [v5 centerYAnchor];
  v28 = OUTLINED_FUNCTION_79();
  v30 = [v28 v29];

  *(v20 + 40) = v30;
  v31 = [v5 heightAnchor];
  v32 = [*&v5[v8] heightAnchor];
  v33 = OUTLINED_FUNCTION_79();
  v35 = [v33 v34];

  *(v20 + 48) = v35;
  v36 = [v5 widthAnchor];

  v37 = [*&v5[v8] widthAnchor];
  v38 = OUTLINED_FUNCTION_79();
  v40 = [v38 v39];

  *(v20 + 56) = v40;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints_];

  return v5;
}

uint64_t outlined init with copy of MomentsIndicatorBubbleDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit30MomentsIndicatorBubbleDelegate_pSgMd, &_s15ConversationKit30MomentsIndicatorBubbleDelegate_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of MomentsIndicatorBubbleDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit30MomentsIndicatorBubbleDelegate_pSgMd, &_s15ConversationKit30MomentsIndicatorBubbleDelegate_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id static MomentsIndicatorBubble.makeBackgroundColor()()
{
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  if (IsReduceTransparencyEnabled)
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.3;
  }

  if (IsReduceTransparencyEnabled)
  {
    v2 = 0.3;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v3 initWithRed:v2 green:v2 blue:v2 alpha:v1];
}

id MomentsIndicatorBubble.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void MomentsIndicatorBubble.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_delegate;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_bottomConstraint) = 0;
  v2 = OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_indicator;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_timer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall MomentsIndicatorBubble.start()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_timer;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_timer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = partial apply for closure #1 in MomentsIndicatorBubble.start();
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v9[3] = &block_descriptor_93;
  v6 = _Block_copy(v9);

  v7 = [v4 scheduledTimerWithTimeInterval:0 repeats:v6 block:4.0];
  _Block_release(v6);
  v8 = *(v0 + v1);
  *(v0 + v1) = v7;
}

void closure #1 in MomentsIndicatorBubble.start()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_timer);
    *(Strong + OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_timer) = 0;

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    v16 = partial apply for closure #1 in MultiwayViewController.fadeOutView(view:duration:completion:);
    v17 = v6;
    aBlock = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = thunk for @escaping @callee_guaranteed () -> ();
    v15 = &block_descriptor_13_1;
    v7 = _Block_copy(&aBlock);
    v8 = v3;

    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v16 = partial apply for closure #2 in closure #1 in MomentsIndicatorBubble.start();
    v17 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v15 = &block_descriptor_19_4;
    v10 = _Block_copy(&aBlock);
    v11 = v8;

    [v5 animateWithDuration:v7 animations:v10 completion:0.25];
    _Block_release(v10);
    _Block_release(v7);
  }
}

uint64_t closure #2 in closure #1 in MomentsIndicatorBubble.start()(uint64_t a1, void *a2)
{
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x90))(v9, a1);
  if (!v9[3])
  {
    return outlined destroy of MomentsIndicatorBubbleDelegate?(v9);
  }

  outlined init with copy of IDSLookupManager(v9, v6);
  outlined destroy of MomentsIndicatorBubbleDelegate?(v9);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 8))(a2, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

Swift::Void __swiftcall MomentsIndicatorBubble.refresh()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x78);
  v2 = v1();
  (*(*v2 + 160))(v2);

  v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_indicator);
  v5 = (v1)(v3);
  v6 = (*(*v5 + 104))(v5);
  v8 = v7;

  outlined bridged method (mbnn) of @objc UILabel.text.setter(v6, v8, v4);
  [*(v0 + OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_timer) invalidate];

  [v0 start];
}

uint64_t MomentsIndicatorBubble.description.getter()
{
  v1 = [*&v0[OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_indicator] text];
  if (!v1)
  {
    v5.receiver = v0;
    v5.super_class = type metadata accessor for MomentsIndicatorBubble();
    v1 = objc_msgSendSuper2(&v5, sel_description);
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id MomentsIndicatorBubble.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MomentsIndicatorBubble.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MomentsIndicatorBubble();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined destroy of MomentsIndicatorBubbleDelegate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit30MomentsIndicatorBubbleDelegate_pSgMd, &_s15ConversationKit30MomentsIndicatorBubbleDelegate_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t key path getter for ProtectedAppsObserver.delegate : ProtectedAppsObserver@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x58))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ProtectedAppsObserver.delegate : ProtectedAppsObserver(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x60);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ProtectedAppsObserver.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit21ProtectedAppsObserver_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ProtectedAppsObserver.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit21ProtectedAppsObserver_delegate;
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

id ProtectedAppsObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProtectedAppsObserver.init()()
{
  *&v0[OBJC_IVAR____TtC15ConversationKit21ProtectedAppsObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ProtectedAppsObserver();
  v1 = objc_msgSendSuper2(&v6, sel_init);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [objc_msgSend(v2 subjectMonitorRegistry)];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t ProtectedAppsObserver.appProtectionSubjectsChanged(_:for:)()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void ProtectedAppsObserver.hiddenApps.getter()
{
  v0 = [objc_opt_self() hiddenApplications];
  type metadata accessor for APApplication();
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = specialized Array.count.getter();
  if (!v2)
  {
LABEL_10:

    return;
  }

  v3 = v2;
  v13 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFB22010](v4, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [v5 bundleIdentifier];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = *(v13 + 16);
      if (v11 >= *(v13 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v4;
      *(v13 + 16) = v11 + 1;
      v12 = v13 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v10;
    }

    while (v3 != v4);
    goto LABEL_10;
  }

  __break(1u);
}

id ProtectedAppsObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProtectedAppsObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for ProtectedAppsObserverProtocol.delegate.modify in conformance ProtectedAppsObserver(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x68))();
  return protocol witness for Control.cnkContentAlpha.modify in conformance BaseButton;
}

uint64_t specialized static PlatformAlert.confirmAddToMessagesGroup(fromViewController:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_63_0();
  a26 = v29;
  a27 = v30;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_21_52();
  OUTLINED_FUNCTION_10_42();
  OUTLINED_FUNCTION_24();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v32;
  type metadata accessor for PlatformAlert();
  v36 = objc_opt_self();

  v37 = [v36 conversationKit];
  OUTLINED_FUNCTION_29_3();
  v38.super.isa = v37;
  OUTLINED_FUNCTION_17_0(0xD000000000000021, 0x80000001BC515410, v27, v28, v38);

  v39 = [v36 conversationKit];
  v40.super.isa = v39;
  OUTLINED_FUNCTION_17_0(0xD000000000000023, 0x80000001BC515440, v27, v28, v40);

  v41 = OUTLINED_FUNCTION_25_44();

  if (v41)
  {

    v42 = [v36 conversationKit];
    OUTLINED_FUNCTION_24_3();
    v43.super.isa = v42;
    v47 = OUTLINED_FUNCTION_17_0(v44, v45, v46, v28, v43);
    v49 = v48;

    a15 = 0;
    OUTLINED_FUNCTION_24();
    v50 = swift_allocObject();
    *(v50 + 16) = partial apply for closure #2 in PeoplePickerViewController.addPeople();
    *(v50 + 24) = v35;
    v51 = *(*v41 + 328);

    v51(v47, v49, &a15, closure #1 in static PlatformAlert.confirmAddToMessagesGroup(fromViewController:_:)partial apply, v50);

    v52 = [v36 conversationKit];
    OUTLINED_FUNCTION_8_97();
    OUTLINED_FUNCTION_5_5();
    v53.super.isa = v52;
    OUTLINED_FUNCTION_17_0(v54, v55, v56, v57, v53);
    OUTLINED_FUNCTION_213();

    OUTLINED_FUNCTION_24();
    v58 = swift_allocObject();
    *(v58 + 16) = partial apply for closure #2 in PeoplePickerViewController.addPeople();
    *(v58 + 24) = v35;

    v59 = OUTLINED_FUNCTION_15_57();
    (v51)(v59);

    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v60 = static OS_os_log.conversationKit;
    v61 = static os_log_type_t.debug.getter();
    os_log(_:dso:log:type:_:)("confirmAddToMessagesGroup: showing alert", 40, 2, &dword_1BBC58000, v60, v61, MEMORY[0x1E69E7CC0]);
    (*(*v41 + 336))(0);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v62 = static OS_os_log.conversationKit;
    v63 = static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)("confirmAddToMessagesGroup: failed to create PlatformAlert", 57, 2, &dword_1BBC58000, v62, v63, MEMORY[0x1E69E7CC0]);
  }

  OUTLINED_FUNCTION_62();
}

void static PlatformAlert.confirmAddToMessagesGroup(fromViewController:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_63_0();
  a26 = v28;
  a27 = v29;
  v61 = v30;
  v32 = v31;
  OUTLINED_FUNCTION_21_52();
  type metadata accessor for PlatformAlert();
  v33 = objc_opt_self();
  v34 = [v33 conversationKit];
  OUTLINED_FUNCTION_29_3();
  v35.super.isa = v34;
  OUTLINED_FUNCTION_17_0(0xD000000000000021, 0x80000001BC515410, 0x61737265766E6F43, v27, v35);

  v36 = [v33 conversationKit];
  v37.super.isa = v36;
  OUTLINED_FUNCTION_17_0(0xD000000000000023, 0x80000001BC515440, 0x61737265766E6F43, v27, v37);

  v38 = OUTLINED_FUNCTION_25_44();

  if (v38)
  {

    v39 = [v33 conversationKit];
    OUTLINED_FUNCTION_24_3();
    v40.super.isa = v39;
    v44 = OUTLINED_FUNCTION_17_0(v41, v42, v43, v27, v40);
    v46 = v45;

    a15 = 0;
    OUTLINED_FUNCTION_24();
    v47 = swift_allocObject();
    *(v47 + 16) = v32;
    *(v47 + 24) = v61;
    v48 = *(*v38 + 328);

    v48(v44, v46, &a15, partial apply for closure #1 in static PlatformAlert.confirmAddToMessagesGroup(fromViewController:_:), v47);

    v49 = [v33 conversationKit];
    OUTLINED_FUNCTION_8_97();
    OUTLINED_FUNCTION_5_5();
    v50.super.isa = v49;
    OUTLINED_FUNCTION_17_0(v51, v52, v53, v54, v50);
    OUTLINED_FUNCTION_213();

    OUTLINED_FUNCTION_24();
    v55 = swift_allocObject();
    *(v55 + 16) = v32;
    *(v55 + 24) = v61;

    v56 = OUTLINED_FUNCTION_15_57();
    (v48)(v56);

    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v57 = static OS_os_log.conversationKit;
    v58 = static os_log_type_t.debug.getter();
    os_log(_:dso:log:type:_:)("confirmAddToMessagesGroup: showing alert", 40, 2, &dword_1BBC58000, v57, v58, MEMORY[0x1E69E7CC0]);
    (*(*v38 + 336))(0);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v59 = static OS_os_log.conversationKit;
    v60 = static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)("confirmAddToMessagesGroup: failed to create PlatformAlert", 57, 2, &dword_1BBC58000, v59, v60, MEMORY[0x1E69E7CC0]);
    v32(0);
  }

  OUTLINED_FUNCTION_62();
}

void static PlatformAlert.confirmStartCollaboration(in:from:initiator:itemTitle:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_63_0();
  a26 = v27;
  a27 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v39 = ConversationControlsStringProvider.collaborationHUDStrings(initiator:itemTitle:)(v35, v36, v37);
  v41 = v40;
  if (v38[2])
  {
    v43 = v38[4];
    v42 = v38[5];
  }

  else
  {
    v43 = 0;
    v42 = 0xE000000000000000;
  }

  type metadata accessor for PlatformAlert();
  v44 = static PlatformAlert.create(with:message:)(v39, v41, v43, v42);

  if (v44)
  {
    v45 = objc_opt_self();
    v46 = [v45 conversationKit];
    OUTLINED_FUNCTION_29_3();
    v47.super.isa = v46;
    v48 = OUTLINED_FUNCTION_17_0(0x524F42414C4C4F43, 0xEB00000000455441, 0x61737265766E6F43, 0xEF74694B6E6F6974, v47);
    v50 = v49;

    a15 = 0;
    OUTLINED_FUNCTION_24();
    v51 = swift_allocObject();
    *(v51 + 16) = v32;
    *(v51 + 24) = v30;
    v64 = v32;
    v52 = *(*v44 + 328);

    v52(v48, v50, &a15, partial apply for closure #1 in static PlatformAlert.confirmStartCollaboration(in:from:initiator:itemTitle:_:), v51);

    v53 = [v45 conversationKit];
    OUTLINED_FUNCTION_29_3();
    v54.super.isa = v53;
    v55 = OUTLINED_FUNCTION_17_0(0x574F4E5F544F4ELL, 0xE700000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974, v54);
    v57 = v56;

    a14 = 2;
    OUTLINED_FUNCTION_24();
    v58 = swift_allocObject();
    *(v58 + 16) = v64;
    *(v58 + 24) = v30;

    v52(v55, v57, &a14, partial apply for closure #2 in static PlatformAlert.confirmStartCollaboration(in:from:initiator:itemTitle:_:), v58);

    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v59 = static OS_os_log.conversationKit;
    v60 = static os_log_type_t.debug.getter();
    os_log(_:dso:log:type:_:)("confirmStartCollaboration: showing alert", 40, 2, &dword_1BBC58000, v59, v60, MEMORY[0x1E69E7CC0]);
    (*(*v44 + 336))(v34);
    OUTLINED_FUNCTION_62();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v62 = static OS_os_log.conversationKit;
    v63 = static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)("confirmStartCollaboration: failed to create PlatformAlert", 57, 2, &dword_1BBC58000, v62, v63, MEMORY[0x1E69E7CC0]);
    v32(0);
    OUTLINED_FUNCTION_62();
  }
}

void *static PlatformAlert.confirmLeavePTTChannel(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v49 - v8;
  v10 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = OUTLINED_FUNCTION_13_12(v11);
  *(v12 + 16) = xmmword_1BC4BA940;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v13 = one-time initialization token for conversationKit;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_7_12(&one-time initialization token for conversationKit);
  }

  OUTLINED_FUNCTION_40_0();
  v16 = OUTLINED_FUNCTION_17_0(0xD000000000000020, 0x80000001BC515550, v14, v15, v53);
  v18 = v17;
  if (*(v12 + 16))
  {
    v16 = String.init(format:locale:arguments:)();
    a2 = v19;

    v18 = a2;
  }

  else
  {
  }

  OUTLINED_FUNCTION_10_42();
  outlined destroy of Locale?(v9);
  v20 = objc_opt_self();
  v21 = [v20 conversationKit];
  OUTLINED_FUNCTION_40_0();
  v22.super.isa = v21;
  v23 = OUTLINED_FUNCTION_17_0(0xD000000000000022, 0x80000001BC515580, a2, 0xEF74694B6E6F6974, v22);
  v25 = v24;

  type metadata accessor for PlatformAlert();
  result = static PlatformAlert.create(with:message:)(v16, v18, v23, v25);
  v27 = result;
  if (!result)
  {

    goto LABEL_10;
  }

  if (*MEMORY[0x1E69D44B8])
  {
    v28 = a4;
    v29 = result[3];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
    isa = UInt32._bridgeToObjectiveC()().super.super.isa;
    v51 = v30;
    v52 = v32;
    [v29 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v34 = [v20 conversationKit];
    OUTLINED_FUNCTION_40_0();
    v35.super.isa = v34;
    OUTLINED_FUNCTION_17_0(0x657661654CLL, 0xE500000000000000, a2, 0xEF74694B6E6F6974, v35);
    v37 = v36;

    LOBYTE(v51) = 0;
    OUTLINED_FUNCTION_24();
    v38 = swift_allocObject();
    v39 = v50;
    *(v38 + 16) = v50;
    *(v38 + 24) = v28;
    v40 = v28;
    v41 = *(*v27 + 328);

    v42 = OUTLINED_FUNCTION_12_78();
    v41(v42, v37);

    v43 = [v20 conversationKit];
    OUTLINED_FUNCTION_40_0();
    v44 = OUTLINED_FUNCTION_8_97();
    v45.super.isa = v43;
    OUTLINED_FUNCTION_17_0(v44, v46, a2, 0xEF74694B6E6F6974, v45);
    OUTLINED_FUNCTION_213();

    LOBYTE(v51) = 2;
    OUTLINED_FUNCTION_24();
    v47 = swift_allocObject();
    *(v47 + 16) = v39;
    *(v47 + 24) = v40;

    v48 = OUTLINED_FUNCTION_12_78();
    v41(v48, a2);

LABEL_10:

    return v27;
  }

  __break(1u);
  return result;
}

void *static PlatformAlert.waitOnHoldFailed()()
{
  v0 = _TUIsInternalInstall();
  if (v0)
  {
    v1 = 0xD00000000000003BLL;
  }

  else
  {
    v1 = 0xD000000000000026;
  }

  if (v0)
  {
    v2 = "SmartHolding Failed";
  }

  else
  {
    v2 = "$_callHoldingDebugView";
  }

  type metadata accessor for PlatformAlert();
  v3 = static PlatformAlert.create(with:message:)(0xD000000000000013, 0x80000001BC5122D0, v1, v2 | 0x8000000000000000);

  if (v3)
  {
    v4 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_5_5();
    v5.super.isa = v4;
    v8 = OUTLINED_FUNCTION_17_0(19279, 0xE200000000000000, v6, v7, v5);
    v10 = v9;

    v12 = 0;
    (*(*v3 + 328))(v8, v10, &v12, TPNumberPadCharacter.rawValue.getter, 0);
  }

  return v3;
}

void *static PlatformAlert.endWaitOnHoldForAnotherCall(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a3;
  v60 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - v9;
  v63 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v63);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v11 = OUTLINED_FUNCTION_13_12(v62);
  v61 = xmmword_1BC4BA940;
  *(v11 + 16) = xmmword_1BC4BA940;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v12 = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 64) = v12;
  v64 = a1;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  v13 = one-time initialization token for conversationKit;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_7_12(&one-time initialization token for conversationKit);
  }

  v14 = static LocalizationSource.conversationKit;
  v15 = *(&xmmword_1EDDCCEE8 + 1);
  v16 = xmmword_1EDDCCEE8;
  OUTLINED_FUNCTION_40_0();
  v18.super.isa = v14;
  v19 = OUTLINED_FUNCTION_17_0(v17 + 3, 0x80000001BC5155B0, v16, v15, v18);
  v21 = v20;
  if (*(v11 + 16))
  {
    v19 = String.init(format:locale:arguments:)();
    v23 = v22;

    v21 = v23;
  }

  else
  {
  }

  outlined destroy of Locale?(v10);
  v24 = v65;
  __swift_storeEnumTagSinglePayload(v65, 1, 1, v63);
  v25 = OUTLINED_FUNCTION_13_12(v62);
  *(v25 + 16) = v61;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = v12;
  *(v25 + 32) = v64;
  *(v25 + 40) = a2;

  OUTLINED_FUNCTION_40_0();
  v26.super.isa = v14;
  v27 = OUTLINED_FUNCTION_17_0(0xD00000000000001CLL, 0x80000001BC5155D0, v16, v15, v26);
  v29 = v28;
  if (*(v25 + 16))
  {
    v27 = String.init(format:locale:arguments:)();
    v31 = v30;

    v29 = v31;
  }

  else
  {
  }

  outlined destroy of Locale?(v24);
  type metadata accessor for PlatformAlert();
  result = static PlatformAlert.create(with:message:)(v19, v21, v27, v29);
  v33 = result;
  if (!result)
  {

    goto LABEL_13;
  }

  v34 = *MEMORY[0x1E69D44B8];
  if (*MEMORY[0x1E69D44B8])
  {
    v35 = result[3];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_16_6();
    isa = UInt32._bridgeToObjectiveC()().super.super.isa;
    v66[0] = v29;
    v66[1] = v34;
    [v35 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v37 = objc_opt_self();
    v38 = [v37 conversationKit];
    *&v61 = 0xE000000000000000;
    OUTLINED_FUNCTION_5_5();
    v39.super.isa = v38;
    OUTLINED_FUNCTION_17_0(0xD000000000000017, 0x80000001BC5155F0, v40, v41, v39);
    v43 = v42;

    LOBYTE(v66[0]) = 2;
    OUTLINED_FUNCTION_24();
    v44 = swift_allocObject();
    v45 = v59;
    v46 = v60;
    *(v44 + 16) = v59;
    *(v44 + 24) = v46;
    v47 = *(*v33 + 328);

    v48 = OUTLINED_FUNCTION_12_78();
    v47(v48, v43);

    v49 = [v37 conversationKit];
    *&v61 = 0xE000000000000000;
    OUTLINED_FUNCTION_5_5();
    v50.super.isa = v49;
    v55 = OUTLINED_FUNCTION_17_0(v51, v52, v53, v54, v50);
    v57 = v56;

    LOBYTE(v66[0]) = 0;
    OUTLINED_FUNCTION_24();
    v58 = swift_allocObject();
    *(v58 + 16) = v45;
    *(v58 + 24) = v46;

    (v47)(v55, v57, v66, partial apply for closure #2 in static PlatformAlert.endWaitOnHoldForAnotherCall(_:handler:), v58);

LABEL_13:

    return v33;
  }

  __break(1u);
  return result;
}

Swift::Int PlatformAlertActionStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

void key path setter for PlatformAlert.currentPresentedUserNotification : PlatformAlert(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  PlatformAlert.currentPresentedUserNotification.setter(v1);
}

void *PlatformAlert.currentPresentedUserNotification.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void PlatformAlert.currentPresentedUserNotification.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

double PlatformAlert.buttonHandlers.getter()
{
  swift_beginAccess();

  return result;
}

double PlatformAlert.buttonHandlers.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;

  return result;
}

uint64_t PlatformAlert.title.didset()
{
  result = *MEMORY[0x1E695EE58];
  if (*MEMORY[0x1E695EE58])
  {
    v2 = v0[3];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = MEMORY[0x1E69E6158];
    v8 = v3;
    v9 = v4;
    v5 = v0[6];
    if (v5)
    {
      v6 = v0[5];

      v7 = MEMORY[0x1BFB209B0](v6, v5);
    }

    else
    {
      v7 = 0;
    }

    __swift_project_boxed_opaque_existential_1(&v8, MEMORY[0x1E69E6158]);
    [v2 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PlatformAlert.message.didset()
{
  result = *MEMORY[0x1E695EE60];
  if (*MEMORY[0x1E695EE60])
  {
    v2 = v0[3];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = MEMORY[0x1E69E6158];
    v8 = v3;
    v9 = v4;
    v5 = v0[8];
    if (v5)
    {
      v6 = v0[7];

      v7 = MEMORY[0x1BFB209B0](v6, v5);
    }

    else
    {
      v7 = 0;
    }

    __swift_project_boxed_opaque_existential_1(&v8, MEMORY[0x1E69E6158]);
    [v2 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PlatformAlert.defaultButtonTitle.didset()
{
  result = *MEMORY[0x1E695EE78];
  if (*MEMORY[0x1E695EE78])
  {
    v2 = v0[3];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = MEMORY[0x1E69E6158];
    v8 = v3;
    v9 = v4;
    v5 = v0[10];
    if (v5)
    {
      v6 = v0[9];

      v7 = MEMORY[0x1BFB209B0](v6, v5);
    }

    else
    {
      v7 = 0;
    }

    __swift_project_boxed_opaque_existential_1(&v8, MEMORY[0x1E69E6158]);
    [v2 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PlatformAlert.alternateButtonTitle.didset()
{
  result = *MEMORY[0x1E695EE70];
  if (*MEMORY[0x1E695EE70])
  {
    v2 = v0[3];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = MEMORY[0x1E69E6158];
    v8 = v3;
    v9 = v4;
    v5 = v0[12];
    if (v5)
    {
      v6 = v0[11];

      v7 = MEMORY[0x1BFB209B0](v6, v5);
    }

    else
    {
      v7 = 0;
    }

    __swift_project_boxed_opaque_existential_1(&v8, MEMORY[0x1E69E6158]);
    [v2 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PlatformAlert.otherButtonTitle.didset()
{
  result = *MEMORY[0x1E695EE98];
  if (*MEMORY[0x1E695EE98])
  {
    v2 = v0[3];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = MEMORY[0x1E69E6158];
    v8 = v3;
    v9 = v4;
    v5 = v0[14];
    if (v5)
    {
      v6 = v0[13];

      v7 = MEMORY[0x1BFB209B0](v6, v5);
    }

    else
    {
      v7 = 0;
    }

    __swift_project_boxed_opaque_existential_1(&v8, MEMORY[0x1E69E6158]);
    [v2 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static PlatformAlert.create(with:message:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlatformAlert();
  v8 = swift_allocObject();
  PlatformAlert.init()();
  v8[5] = a1;
  v8[6] = a2;

  PlatformAlert.title.didset();
  v8[7] = a3;
  v8[8] = a4;

  PlatformAlert.message.didset();
  result = *MEMORY[0x1E695EE68];
  if (!*MEMORY[0x1E695EE68])
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = v8[3];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_16_6();
  v11 = v10;
  OUTLINED_FUNCTION_18_55();
  OUTLINED_FUNCTION_16_61();
  [v10 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  result = *MEMORY[0x1E69D4500];
  if (!*MEMORY[0x1E69D4500])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v8[3];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_16_6();
  v13 = v12;
  OUTLINED_FUNCTION_18_55();
  OUTLINED_FUNCTION_16_61();
  v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  OUTLINED_FUNCTION_6_104(v14);

  swift_unknownObjectRelease();
  result = *MEMORY[0x1E69D44E0];
  if (!*MEMORY[0x1E69D44E0])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v8[3];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_16_6();
  v16 = v15;
  OUTLINED_FUNCTION_18_55();
  OUTLINED_FUNCTION_16_61();
  v17 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  OUTLINED_FUNCTION_6_104(v17);

  swift_unknownObjectRelease();
  result = *MEMORY[0x1E69D4498];
  if (!*MEMORY[0x1E69D4498])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = v8[3];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_16_6();
  v19 = v18;
  OUTLINED_FUNCTION_18_55();
  OUTLINED_FUNCTION_16_61();
  v20 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  OUTLINED_FUNCTION_6_104(v20);

  swift_unknownObjectRelease();
  result = *MEMORY[0x1E69D44D0];
  if (*MEMORY[0x1E69D44D0])
  {
    v21 = v8[3];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_16_6();
    v22 = v21;
    OUTLINED_FUNCTION_18_55();
    OUTLINED_FUNCTION_16_61();
    v23 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    OUTLINED_FUNCTION_6_104(v23);

    swift_unknownObjectRelease();
    return v8;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t PlatformAlert.__allocating_init()()
{
  v0 = swift_allocObject();
  PlatformAlert.init()();
  return v0;
}

void static PlatformAlert.createUIAlertController(with:message:alertActions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController, 0x1E69DC650);

  v10 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(a1, a2, a3, a4, 1);
  v11 = specialized Array.count.getter();
  for (i = 0; v11 != i; ++i)
  {
    if ((a5 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1BFB22010](i, a5);
    }

    else
    {
      if (i >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v13 = *(a5 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    [v10 addAction_];
  }
}

uint64_t PlatformAlert.addAction(title:style:handler:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a3;
  OUTLINED_FUNCTION_24();
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for thunk for @escaping @callee_guaranteed () -> (), v12, v11, isUniquelyReferenced_nonNull_native, v14, v15, v16, v17, v6[4], v20);
  v6[4] = v19;
  swift_endAccess();
  if (v11)
  {
    if (v11 == 1)
    {
      v6[11] = a1;
      v6[12] = a2;

      return PlatformAlert.alternateButtonTitle.didset();
    }

    else
    {
      v6[13] = a1;
      v6[14] = a2;

      return PlatformAlert.otherButtonTitle.didset();
    }
  }

  else
  {
    v6[9] = a1;
    v6[10] = a2;

    return PlatformAlert.defaultButtonTitle.didset();
  }
}

Swift::Void __swiftcall PlatformAlert.show(in:)(UIWindow_optional *in)
{
  v4 = v1;
  v28 = *MEMORY[0x1E69E9840];
  error = 0;
  v5 = *MEMORY[0x1E695E480];
  v6 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0, &error, *(v1 + 24));
  swift_beginAccess();
  v7 = v4[2];
  v4[2] = v6;

  v8 = *(*v4 + 144);
  v9 = v8();
  if (!v9)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v14 = static OS_os_log.conversationKit;
    v15 = static os_log_type_t.error.getter();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v17 = OUTLINED_FUNCTION_13_12(v16);
    *(v17 + 16) = xmmword_1BC4BA940;
    LODWORD(v27) = error;
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_213();
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v17 + 32) = v2;
    *(v17 + 40) = v3;
    os_log(_:dso:log:type:_:)("Could not create CFUserNotification with error: %@", 50, 2, &dword_1BBC58000, v14, v15, v17);
    goto LABEL_15;
  }

  v10 = v8();
  RunLoopSource = CFUserNotificationCreateRunLoopSource(v5, v10, @objc userNotificationHandler(userNotification:responseFlags:), 0);

  if (!RunLoopSource)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v18 = static OS_os_log.conversationKit;
    v19 = static os_log_type_t.error.getter();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v21 = OUTLINED_FUNCTION_13_12(v20);
    *(v21 + 16) = xmmword_1BC4BA940;
    v22 = v8();
    if (v22)
    {
      v27 = v22;
      type metadata accessor for CFUserNotificationRef(0);
      v23 = String.init<A>(reflecting:)();
      v25 = v24;
    }

    else
    {
      v25 = 0xE300000000000000;
      v23 = 7104878;
    }

    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v21 + 32) = v23;
    *(v21 + 40) = v25;
    os_log(_:dso:log:type:_:)("Could not create run loop for CFUserNotification: %@", 52, 2, &dword_1BBC58000, v18, v19, v21);
LABEL_15:

    return;
  }

  if (one-time initialization token for pendingAlerts != -1)
  {
    OUTLINED_FUNCTION_4_131(&one-time initialization token for pendingAlerts);
  }

  swift_beginAccess();

  MEMORY[0x1BFB20CC0](v12);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v13 = CFRunLoopGetMain();
  CFRunLoopAddSource(v13, RunLoopSource, *MEMORY[0x1E695E8D0]);
}

void @objc userNotificationHandler(userNotification:responseFlags:)(void *a1, Swift::UInt a2)
{
  v4 = a1;
  userNotificationHandler(userNotification:responseFlags:)(a1, a2);
}

Swift::Void __swiftcall userNotificationHandler(userNotification:responseFlags:)(CFUserNotificationRef_optional userNotification, Swift::UInt responseFlags)
{
  if (one-time initialization token for pendingAlerts != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = specialized Array.count.getter();
    v5 = v4 - 1;
    if (__OFSUB__(v4, 1))
    {
      break;
    }

    if (v5 < 0)
    {
      goto LABEL_34;
    }

    v6 = 0;
    while (1)
    {
      swift_beginAccess();
      if ((pendingAlerts._rawValue & 0xC000000000000001) == 0)
      {
        break;
      }

      MEMORY[0x1BFB22010](v6);
LABEL_8:
      swift_endAccess();
      OUTLINED_FUNCTION_19_45();
      v8 = (*(v7 + 144))();
      if (v8)
      {
        v9 = v8;
        if (!userNotification.value)
        {

          goto LABEL_15;
        }

        type metadata accessor for CFUserNotificationRef(0);
        lazy protocol witness table accessor for type CFUserNotificationRef and conformance CFUserNotificationRef();
        v10 = static _CFObject.== infix(_:_:)();

        if (v10)
        {
          goto LABEL_20;
        }
      }

      else if (!userNotification.value)
      {
LABEL_20:
        if (responseFlags == 2)
        {
          OUTLINED_FUNCTION_19_45();
          v13 = (*(v16 + 168))();
          v14 = 2;
          goto LABEL_26;
        }

        if (responseFlags != 1)
        {
          if (!responseFlags)
          {
            OUTLINED_FUNCTION_19_45();
            v13 = (*(v12 + 168))();
            v14 = 0;
LABEL_26:
            v17 = specialized Dictionary.subscript.getter(v14, v13);
            v19 = v18;

            if (v17)
            {
              v17(v20);
              outlined consume of (@escaping @callee_guaranteed () -> ())?(v17, v19);
            }
          }

          swift_beginAccess();
          specialized Array.remove(at:)(v6);
          swift_endAccess();

          return;
        }

        OUTLINED_FUNCTION_19_45();
        v13 = (*(v15 + 168))();
        v14 = 1;
        goto LABEL_26;
      }

LABEL_15:
      if (v5 == v6)
      {
        return;
      }

      if (__OFADD__(v6++, 1))
      {
        goto LABEL_31;
      }
    }

    if (v6 < *((pendingAlerts._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_8;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    OUTLINED_FUNCTION_4_131(&one-time initialization token for pendingAlerts);
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

Swift::OpaquePointer *pendingAlerts.unsafeMutableAddressor()
{
  if (one-time initialization token for pendingAlerts != -1)
  {
    OUTLINED_FUNCTION_4_131(&one-time initialization token for pendingAlerts);
  }

  return &pendingAlerts;
}

uint64_t PlatformAlert.deinit()
{

  return v0;
}

uint64_t PlatformAlert.__deallocating_deinit()
{
  PlatformAlert.deinit();

  return swift_deallocClassInstance();
}

uint64_t PlatformAlert.init()()
{
  *(v0 + 16) = 0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableDictionary, 0x1E695DF90);
  *(v0 + 24) = NSDictionary.init(dictionaryLiteral:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
  lazy protocol witness table accessor for type PlatformAlertActionStyle and conformance PlatformAlertActionStyle();
  *(v0 + 32) = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  return v0;
}

uint64_t closure #1 in static PlatformAlert.confirmAddToMessagesGroup(fromViewController:_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void), const char *a4, uint64_t a5, char a6)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v11 = static OS_os_log.conversationKit;
  v12 = a3();
  os_log(_:dso:log:type:_:)(a4, a5, 2, &dword_1BBC58000, v11, v12, MEMORY[0x1E69E7CC0]);
  return a1(a6 & 1);
}

uint64_t closure #1 in static PlatformAlert.confirmLeavePTTChannel(_:handler:)(uint64_t (*a1)(void), uint64_t a2, const char *a3, char a4)
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, &static Logger.conversationControls);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1BBC58000, v8, v9, a3, v10, 2u);
    MEMORY[0x1BFB23DF0](v10, -1, -1);
  }

  return a1(a4 & 1);
}

unint64_t lazy protocol witness table accessor for type CFUserNotificationRef and conformance CFUserNotificationRef()
{
  result = lazy protocol witness table cache variable for type CFUserNotificationRef and conformance CFUserNotificationRef;
  if (!lazy protocol witness table cache variable for type CFUserNotificationRef and conformance CFUserNotificationRef)
  {
    type metadata accessor for CFUserNotificationRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFUserNotificationRef and conformance CFUserNotificationRef);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformAlertActionStyle and conformance PlatformAlertActionStyle()
{
  result = lazy protocol witness table cache variable for type PlatformAlertActionStyle and conformance PlatformAlertActionStyle;
  if (!lazy protocol witness table cache variable for type PlatformAlertActionStyle and conformance PlatformAlertActionStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformAlertActionStyle and conformance PlatformAlertActionStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformAlertActionStyle and conformance PlatformAlertActionStyle;
  if (!lazy protocol witness table cache variable for type PlatformAlertActionStyle and conformance PlatformAlertActionStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformAlertActionStyle and conformance PlatformAlertActionStyle);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlatformAlertActionStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

double specialized Dictionary.subscript.getter()
{
  OUTLINED_FUNCTION_157_2();
  if (v3 && (v4 = v2, v5 = specialized __RawDictionaryStorage.find<A>(_:)(v1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 40 * v5;

    outlined init with copy of IDSLookupManager(v7, v0);
  }

  else
  {
    *(v0 + 32) = 0;
    return OUTLINED_FUNCTION_202_0();
  }

  return result;
}

{
  OUTLINED_FUNCTION_157_2();
  if (!v2)
  {
    return OUTLINED_FUNCTION_202_0();
  }

  v3 = v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v5 & 1) == 0)
  {
    return OUTLINED_FUNCTION_202_0();
  }

  v6 = *(v3 + 56) + 32 * v4;

  outlined init with copy of Any(v6, v0);
  return result;
}

uint64_t specialized Dictionary.subscript.getter()
{
  OUTLINED_FUNCTION_157_2();
  if (v2 && (v3 = v1, v4 = specialized __RawDictionaryStorage.find<A>(_:)(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = type metadata accessor for Date();
    OUTLINED_FUNCTION_7_0();
    (*(v9 + 16))(v0, v7 + *(v9 + 72) * v6, v8);
    v10 = OUTLINED_FUNCTION_21_3();
    v13 = v8;
  }

  else
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_10_0();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

{
  OUTLINED_FUNCTION_157_2();
  if (v1 && (specialized __RawDictionaryStorage.find<A>(_:)(v0), (v2 & 1) != 0))
  {
    v3 = type metadata accessor for AutoplayCandidate(0);
    OUTLINED_FUNCTION_7_0();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    v4 = OUTLINED_FUNCTION_21_3();
    v7 = v3;
  }

  else
  {
    type metadata accessor for AutoplayCandidate(0);
    OUTLINED_FUNCTION_10_0();
  }

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void specialized Dictionary.subscript.getter(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 16))
  {
    v5 = OUTLINED_FUNCTION_200_1(a1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7, v8);
    if (v10)
    {
      OUTLINED_FUNCTION_146_2(v9);
    }
  }
}

void specialized Dictionary.subscript.getter(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v4 = OUTLINED_FUNCTION_200_1(a1);
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5, v6);
    if (v8)
    {
      OUTLINED_FUNCTION_146_2(v7);
    }
  }
}

void specialized Dictionary.subscript.getter()
{
  OUTLINED_FUNCTION_408();
  OUTLINED_FUNCTION_157_2();
  if (!v10)
  {
    OUTLINED_FUNCTION_144_2();
    OUTLINED_FUNCTION_260_3();
LABEL_6:
    v14 = 1;
    goto LABEL_7;
  }

  v1 = v9;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
  if ((v12 & 1) == 0)
  {
    OUTLINED_FUNCTION_144_2();
    OUTLINED_FUNCTION_260_3();
    v22 = 0;
    goto LABEL_6;
  }

  v13 = *(v1 + 56) + (v11 << 6);
  v14 = *v13;
  v1 = *(v13 + 8);
  v2 = *(v13 + 16);
  v3 = *(v13 + 24);
  v5 = *(v13 + 32);
  v23 = *(v13 + 37) | (*(v13 + 39) << 16);
  v15 = *(v13 + 33);
  v4 = *(v13 + 40);
  v6 = *(v13 + 48);
  v7 = *(v13 + 56);
  OUTLINED_FUNCTION_123_2();
  outlined copy of InCallControlButtonConfiguration.Regular?(v16, v17, v18, v19, v5);
  v20 = OUTLINED_FUNCTION_258_0();
  outlined copy of InCallControlButtonConfiguration.Flat?(v20, v21, v7);
  v22 = (v15 << 8) | (v23 << 40);
LABEL_7:
  *v0 = v14;
  v0[1] = v1;
  v0[2] = v2;
  v0[3] = v3;
  v0[4] = v22 | v5;
  v0[5] = v4;
  v0[6] = v6;
  v0[7] = v7;
  OUTLINED_FUNCTION_415();
}

{
  OUTLINED_FUNCTION_157_2();
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v1);
  if ((v6 & 1) == 0)
  {
    v3 = 0;
LABEL_5:
    v8 = 0;
    v17 = 0;
    v11 = 0;
    v13 = 0;
    v16 = 0;
    v14 = 0;
    v19 = 0;
    v9 = 0;
    v18 = 0;
    goto LABEL_6;
  }

  v7 = *(v4 + 56) + (v5 << 6);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v23 = *(v7 + 21) | (*(v7 + 23) << 16);
  v10 = *(v7 + 17);
  v12 = *(v7 + 24);
  v11 = *(v7 + 32);
  v13 = *(v7 + 40);
  v14 = *(v7 + 48);
  v21 = *v7;
  v22 = *(v7 + 53) | (*(v7 + 55) << 16);
  v15 = *(v7 + 49);
  v16 = *(v7 + 56);
  outlined copy of ButtonBackgroundStyle(*v7, v8, *(v7 + 16));
  v17 = v12;
  outlined copy of ButtonBackgroundStyle(v11, v13, v14);
  v18 = (v10 << 8) | (v23 << 40);
  v19 = (v15 << 8) | (v22 << 40);
  v20 = v16;
  v3 = v21;
LABEL_6:
  *v0 = v3;
  v0[1] = v8;
  v0[2] = v18 | v9;
  v0[3] = v17;
  v0[4] = v11;
  v0[5] = v13;
  v0[6] = v19 | v14;
  v0[7] = v16;
}

{
  OUTLINED_FUNCTION_157_2();
  v3 = 0uLL;
  if (v4)
  {
    v5 = v2;
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(v1);
    if (v7)
    {
      v8 = 0;
      v9 = (*(v5 + 56) + 32 * v6);
      v3 = *v9;
      v10 = v9[1];
    }

    else
    {
      v8 = 1;
      v10 = 0uLL;
      v3 = 0uLL;
    }
  }

  else
  {
    v8 = 1;
    v10 = 0uLL;
  }

  *v0 = v3;
  *(v0 + 16) = v10;
  *(v0 + 32) = v8;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_277_0(v3);
  return v2;
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_277_0(v3);
  return v2;
}

{
  if (*(a2 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(), (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_145_4(v2);
  }

  else
  {
    OUTLINED_FUNCTION_199_1();
  }

  return OUTLINED_FUNCTION_46();
}

{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

{
  if (*(a2 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_145_4(v2);
  }

  else
  {
    OUTLINED_FUNCTION_199_1();
  }

  return OUTLINED_FUNCTION_46();
}

id specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 56) + 16 * v3;
  v6 = *v5;
  outlined copy of SensitiveContentController.HistoryCheckStatus(*v5, *(v5 + 8));
  return v6;
}

unint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 3;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v4)
  {
    return *(*(a2 + 56) + 6 * v3) | (*(*(a2 + 56) + 6 * v3 + 4) << 32);
  }

  else
  {
    return 3;
  }
}

void specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v4)
    {
      OUTLINED_FUNCTION_146_2(v3);
    }
  }
}

void specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (*(a2 + 16))
  {
    v3 = a3(a1);
    if (v4)
    {
      OUTLINED_FUNCTION_146_2(v3);
    }
  }
}

void specialized Dictionary.subscript.getter(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1 & 1);
    if (v3)
    {
      OUTLINED_FUNCTION_146_2(v2);
    }
  }
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_202_0();
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v5 & 1) == 0)
  {
    return OUTLINED_FUNCTION_202_0();
  }

  v6 = *(a1 + 56) + 32 * v4;

  outlined init with copy of Any(v6, a2);
  return result;
}

uint64_t Participant.shortName.getter()
{
  Participant.contactDetails.getter();

  OUTLINED_FUNCTION_62_0();
  Participant.name(_:)();

  return OUTLINED_FUNCTION_46();
}

BOOL static Participant.== infix(_:_:)()
{
  OUTLINED_FUNCTION_6_7();
  static Participant.State.== infix(_:_:)();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_263_0(v4);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2 + 28);
  v6 = *(v1 + v5);
  if (!*(v0 + v5))
  {
    if (!v6)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

LABEL_5:
  OUTLINED_FUNCTION_120_4();
  if (v7)
  {
    v8 = 0x100000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = OUTLINED_FUNCTION_195(v8);

  return static Participant.Capabilities.== infix(_:_:)(v9, v10);
}

uint64_t Participant.captionInfo.getter()
{
  v1 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
    OUTLINED_FUNCTION_17_59(v2);
    OUTLINED_FUNCTION_164_0(v8);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v3 + 8))(v0);
    v4 = v8[41];
    v5 = OUTLINED_FUNCTION_15_14();
    outlined copy of Participant.CaptionInfo?(v5, v6, v4);
    outlined destroy of Participant.MediaInfo(v8);
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    OUTLINED_FUNCTION_144_2();
  }

  return OUTLINED_FUNCTION_15_14();
}

void specialized BidirectionalCollection.suffix(_:)(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = specialized Array.count.getter();
  v5 = specialized Array.index(_:offsetBy:limitedBy:)(v4, -a1, 0);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_46();
  specialized Array._checkIndex(_:)();
  OUTLINED_FUNCTION_4_31();
  specialized Array._checkIndex(_:)();
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {

    goto LABEL_13;
  }

  if (v7 < v4)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUSmartHoldingEvent, 0x1E69D8CE0);

    v8 = v7;
    do
    {
      v9 = v8 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v8);
      v8 = v9;
    }

    while (v4 != v9);
LABEL_13:
    if (!(a2 >> 62))
    {
      if ((v4 & 0x8000000000000000) == 0)
      {

        return;
      }

      __break(1u);
      goto LABEL_20;
    }

LABEL_18:

    OUTLINED_FUNCTION_44_0();
    _CocoaArrayWrapper.subscript.getter();

    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t specialized BidirectionalCollection.suffix(_:)(uint64_t result, uint64_t a2, void (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    result = specialized Array.index(_:offsetBy:limitedBy:)(v4, -result, 0);
    if (v5)
    {
      result = 0;
    }

    if (v4 >= result)
    {
      a3();

      return OUTLINED_FUNCTION_15_14();
    }
  }

  __break(1u);
  return result;
}

id Participant.isDestinationTemporary.getter()
{
  return Participant.isDestinationTemporary.getter();
}

{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(v1 + *(type metadata accessor for Participant(v2) + 28));
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 value];
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x1BFB209B0](v5);
  }

  v6 = [v4 *v0];

  return v6;
}

uint64_t Participant.name.getter()
{
  Participant.contactDetails.getter();

  OUTLINED_FUNCTION_44_0();
  Participant.name(_:)();

  return OUTLINED_FUNCTION_46();
}

uint64_t Participant.isActive.getter()
{
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_38_2();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_44_0();
  v2 = 0;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 4u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      OUTLINED_FUNCTION_192_1();
      OUTLINED_FUNCTION_37((v0 + v5));
      outlined destroy of Participant.MediaInfo(v0);
      v2 = 1;
      goto LABEL_2;
    case 6u:
      return v2;
    default:
LABEL_2:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v3 + 8))(v0);
      break;
  }

  return v2;
}

uint64_t Participant.isScreenSharing.getter(uint64_t a1)
{
  if (Participant.screenState.getter() == 2)
  {
    return 0;
  }

  return Participant.isReceivingScreenFrames.getter();
}

double Participant.screenProvider.getter()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_1_5();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_316();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
    OUTLINED_FUNCTION_28_45(v3);
    OUTLINED_FUNCTION_208_3(v6);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v4 + 8))(v1);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined destroy of Participant.MediaInfo(v6);
    if (v7[3] != 1)
    {
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      outlined destroy of Participant.ScreenInfo(v7);
      return result;
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    OUTLINED_FUNCTION_107_3();
  }

  outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  *(v0 + 32) = 0;
  return OUTLINED_FUNCTION_264_1();
}

uint64_t Participant.requiresScreenInfoUpdate(from:)()
{
  v0 = &_s15ConversationKit11ParticipantVSgMR;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v44.i8[-v3];
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_2_83(v4);
  if (!v6)
  {
    OUTLINED_FUNCTION_3_138();
    OUTLINED_FUNCTION_15_14();
    _s15ConversationKit11ParticipantVWObTm_6();
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_15_58();
    _s10Foundation4UUIDVACSQAAWlTm_0(v7, v8, MEMORY[0x1E69695C8]);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    if ((v9 & 1) == 0)
    {
      goto LABEL_86;
    }

    v10 = Participant.deviceOrientation.getter();
    v12 = v11;
    v13 = Participant.deviceOrientation.getter();
    if (v12)
    {
      if ((v14 & 1) == 0)
      {
LABEL_86:
        OUTLINED_FUNCTION_124_0();
        goto LABEL_87;
      }
    }

    else if ((v14 & 1) != 0 || v10 != v13)
    {
      goto LABEL_86;
    }

    Participant.aspectRatio.getter(v62);
    v46 = v62[0];
    v47 = v62[1];
    v15 = v63;
    Participant.aspectRatio.getter(v65);
    if (v64)
    {
      if ((v67 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v67)
      {
        goto LABEL_86;
      }

      v73[0] = v65[0];
      v73[1] = v65[1];
      v74 = v66 & 1;
      v71[0] = v46;
      v71[1] = v47;
      v72 = v15 & 1;
      if (!static AspectRatio.== infix(_:_:)(v71, v73))
      {
        goto LABEL_86;
      }
    }

    OUTLINED_FUNCTION_206_1();
    v16 = v49.i64[1];
    if (v49.i64[1] == 1)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      v17 = 0.0;
    }

    else
    {
      v17 = v52;
      outlined destroy of Participant.ScreenInfo(&v48);
    }

    OUTLINED_FUNCTION_205_3();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      if (v16 != 1)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v18 = v52;
      outlined destroy of Participant.ScreenInfo(&v48);
      if (v16 == 1 || v17 != v18)
      {
        goto LABEL_86;
      }
    }

    OUTLINED_FUNCTION_206_1();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      v20 = 1;
      v19 = 0.0;
    }

    else
    {
      v19 = v53;
      v20 = v61;
      outlined destroy of Participant.ScreenInfo(&v48);
      if (v20)
      {
        v19 = 0.0;
      }
    }

    OUTLINED_FUNCTION_205_3();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      if ((v20 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v21 = v53;
      v22 = v61;
      outlined destroy of Participant.ScreenInfo(&v48);
      if (v20)
      {
        if ((v22 & 1) == 0)
        {
          goto LABEL_86;
        }
      }

      else if ((v22 & 1) != 0 || v19 != v21)
      {
        goto LABEL_86;
      }
    }

    OUTLINED_FUNCTION_206_1();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      v0 = 0;
      v20 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_163_2();
    }

    OUTLINED_FUNCTION_205_3();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      if ((v20 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v23 = v58;
      v24 = v61;
      outlined destroy of Participant.ScreenInfo(&v48);
      if (v20)
      {
        if ((v24 & 1) == 0)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v24)
        {
          v25 = 0;
        }

        else
        {
          v25 = v23;
        }

        if ((v24 & 1) != 0 || v0 != v25)
        {
          goto LABEL_86;
        }
      }
    }

    OUTLINED_FUNCTION_206_1();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      v0 = 0;
      v20 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_163_2();
    }

    OUTLINED_FUNCTION_205_3();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      if ((v20 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v26 = v59;
      v27 = v61;
      outlined destroy of Participant.ScreenInfo(&v48);
      if (v20)
      {
        if ((v27 & 1) == 0)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v27)
        {
          v28 = 0;
        }

        else
        {
          v28 = v26;
        }

        if ((v27 & 1) != 0 || v0 != v28)
        {
          goto LABEL_86;
        }
      }
    }

    OUTLINED_FUNCTION_206_1();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      v0 = 0;
      v20 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_163_2();
    }

    OUTLINED_FUNCTION_205_3();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      if ((v20 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v29 = v60;
      v30 = v61;
      outlined destroy of Participant.ScreenInfo(&v48);
      if (v20)
      {
        if ((v30 & 1) == 0)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v30)
        {
          v31 = 0;
        }

        else
        {
          v31 = v29;
        }

        if ((v30 & 1) != 0 || v0 != v31)
        {
          goto LABEL_86;
        }
      }
    }

    OUTLINED_FUNCTION_206_1();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      v46 = 0u;
      v47 = 0u;
      v32 = 1;
      v33 = 0.0;
      v34 = 0.0;
    }

    else
    {
      v32 = v61;
      if (v61)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = v56;
      }

      if (v61)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = v57;
      }

      if (v61)
      {
        v37 = -1;
      }

      else
      {
        v37 = 0;
      }

      v38 = vdupq_n_s64(v37);
      v46 = vbicq_s8(v55, v38);
      v47 = vbicq_s8(v54, v38);
      outlined destroy of Participant.ScreenInfo(&v48);
    }

    OUTLINED_FUNCTION_205_3();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      if (v32)
      {
        v39 = 1;
LABEL_116:
        OUTLINED_FUNCTION_124_0();
        v35 = v39 ^ 1;
        return v35 & 1;
      }
    }

    else
    {
      v39 = v61;
      v44 = v55;
      v45 = v54;
      if (v61)
      {
        v40 = 0.0;
      }

      else
      {
        v40 = v56;
      }

      if (v61)
      {
        v41 = 0.0;
      }

      else
      {
        v41 = v57;
      }

      if (v61)
      {
        v42 = -1;
      }

      else
      {
        v42 = 0;
      }

      outlined destroy of Participant.ScreenInfo(&v48);
      if (v32)
      {
        goto LABEL_116;
      }

      if ((v39 & 1) == 0)
      {
        v43 = vdupq_n_s64(v42);
        v48 = vbicq_s8(v45, v43);
        v49 = vbicq_s8(v44, v43);
        v50 = v40;
        v51 = v41;
        v68[0] = v47;
        v68[1] = v46;
        v69 = v33;
        v70 = v34;
        v39 = static CGAffineTransform.== infix(_:_:)();
        goto LABEL_116;
      }
    }

    v39 = 0;
    goto LABEL_116;
  }

  outlined destroy of CallControlsService?(v4, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
LABEL_87:
  v35 = 1;
  return v35 & 1;
}

void Participant.screenInfo.getter()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_1_5();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_316();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
    OUTLINED_FUNCTION_28_45(v3);
    OUTLINED_FUNCTION_208_3(v5);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v4 + 8))(v1);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined destroy of Participant.MediaInfo(v5);
  }

  else
  {
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    *v0 = 0;
    v0[1] = 0;
    v0[2] = 0;
    v0[3] = 1;
    bzero(v0 + 4, 0xB1uLL);
  }
}

uint64_t Participant.ScreenInfo.displayScale.getter()
{
  if (*(v0 + 208))
  {
    return 0;
  }

  else
  {
    return *(v0 + 112);
  }
}

uint64_t Participant.deviceOrientation.getter()
{
  v1 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_15_14();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_62_0();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
    OUTLINED_FUNCTION_28_45(v2);
    OUTLINED_FUNCTION_208_3(v6);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v3 + 8))(v0);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined destroy of Participant.MediaInfo(v6);
    if (v7[3] != 1)
    {
      memcpy(v8, v7, 0xD1uLL);
      v4 = v8[6];
      outlined destroy of Participant.ScreenInfo(v8);
      return v4;
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    memset(v7, 0, 24);
    v7[3] = 1;
    bzero(&v7[4], 0xB1uLL);
  }

  outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  Participant.videoInfo.getter();
  if (!v6[0])
  {
    return 0;
  }

  v4 = v6[3];
  outlined destroy of CallControlsService?(v6, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  return v4;
}

void *Participant.aspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_208();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
    v5 = *(v4 + 48);
    OUTLINED_FUNCTION_37((v1 + *(v4 + 64)));
    memcpy(v14, (v1 + v5), sizeof(v14));
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v6 + 8))(v1);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined destroy of Participant.MediaInfo(v14);
    if (v15[3] != 1)
    {
      memcpy(v16, v15, sizeof(v16));
      v12 = *&v16[64];
      v13 = *&v16[80];
      v7 = v16[96];
      result = outlined destroy of Participant.ScreenInfo(v16);
      goto LABEL_7;
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    memset(v15, 0, 24);
    v15[3] = 1;
    bzero(&v15[4], 0xB1uLL);
  }

  outlined destroy of CallControlsService?(v15, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  result = Participant.videoInfo.getter();
  if (!v14[0])
  {
    v7 = 0;
    v9 = 0uLL;
    v11 = 1;
    v10 = 0uLL;
    goto LABEL_9;
  }

  v12 = *&v14[5];
  v13 = *&v14[7];
  v7 = v14[9];
  result = outlined destroy of CallControlsService?(v14, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
LABEL_7:
  v9 = v12;
  v10 = v13;
  v11 = 0;
LABEL_9:
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v7 & 1;
  *(a1 + 33) = v11;
  return result;
}

uint64_t Participant.ScreenInfo.displayCornerRadius.getter()
{
  if (*(v0 + 208))
  {
    return 0x4024000000000000;
  }

  if ((*(v0 + 128) & 1) == 0)
  {
    return *(v0 + 120);
  }

  result = 0x4034000000000000;
  switch(*(v0 + 184))
  {
    case 0:
    case 1:
    case 4:
      return 0x4024000000000000;
    case 2:
      if (Participant.ScreenInfo.isMaybeTouchIDDevice()())
      {
        result = 0x4024000000000000;
      }

      else
      {
        result = 0x4049000000000000;
      }

      break;
    case 3:
      return result;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25TUScreenShareDeviceFamilyVSgMd, &_sSo25TUScreenShareDeviceFamilyVSgMR);
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      break;
  }

  return result;
}

void Participant.ScreenInfo.systemRootLayerTransform.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  v3 = 0uLL;
  v4 = 0uLL;
  v5 = 0uLL;
  if ((v2 & 1) == 0)
  {
    v5 = *(v1 + 168);
    v4 = *(v1 + 152);
    v3 = *(v1 + 136);
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v2 & 1;
}

void Participant.contactDetails.getter()
{
  OUTLINED_FUNCTION_29();
  v2 = OUTLINED_FUNCTION_30();
  v3 = type metadata accessor for Participant(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_57();
  v9 = *(v1 + *(v3 + 28));
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v10);
  if (!v12)
  {

LABEL_9:
    OUTLINED_FUNCTION_27_45();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();

    ParticipantContactDetails.init(participant:cache:)(v7, v0);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  if (([v10 shouldHideContact] & 1) == 0)
  {

    goto LABEL_9;
  }

  PersonNameComponents.init()();
  PersonNameComponents.givenName.setter();
  PersonNameComponents.familyName.setter();
  if (one-time initialization token for initials != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static NSPersonNameComponentsFormatter.initials;
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v17 = [v15 stringFromPersonNameComponents_];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = OUTLINED_FUNCTION_209();
  v19(v18);
  lazy protocol witness table accessor for type String and conformance String();
  v20 = StringProtocol.localizedUppercase.getter();
  v22 = v21;

  *v0 = 0;
  v0[1] = v13;
  v0[2] = v14;
  v0[3] = v13;
  v0[4] = v14;
  v0[5] = v20;
  v0[6] = v22;

LABEL_10:
  OUTLINED_FUNCTION_30_0();
}

uint64_t Participant.Caption.debugDescription.getter()
{
  OUTLINED_FUNCTION_104_6();
  _StringGuts.grow(_:)(73);
  OUTLINED_FUNCTION_255_0();
  MEMORY[0x1BFB20B10](0x6E6F6974706143, 0xE700000000000000);
  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10]();
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v0);

  MEMORY[0x1BFB20B10](0x724365746164202CLL, 0xEF203A6465746165);
  type metadata accessor for Participant.Caption(0);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_46_22();
  _s10Foundation4UUIDVACSQAAWlTm_0(v1, v2, MEMORY[0x1E6969570]);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v3);

  MEMORY[0x1BFB20B10](0x705565746164202CLL, 0xEF203A6465746164);
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_276_0();

  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10](0xD000000000000011);
  return v5;
}

void Participant.CaptionInfo.with(history:)()
{
  OUTLINED_FUNCTION_29();
  v77[2] = v2;
  v77[1] = v3;
  v5 = v4;
  v7 = v6;
  v84 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  v83 = v11;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32();
  v82 = v13;
  v14 = OUTLINED_FUNCTION_4_24();
  v81 = type metadata accessor for Participant.Caption(v14);
  OUTLINED_FUNCTION_1();
  v94 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_214();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v85 = v19;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v90 = v21;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_63_12();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v77 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_83_1();
  if (v7)
  {
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v96 = v5;

  specialized Array.append<A>(contentsOf:)(v27);
  specialized BidirectionalCollection.suffix(_:)(50, v96, specialized Array.subscript.getter);
  v29 = v28;
  v31 = v30;
  if ((v30 & 1) == 0)
  {
    goto LABEL_5;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {
    swift_unknownObjectRelease();
    v36 = MEMORY[0x1E69E7CC0];
  }

  v37 = *(v36 + 16);

  if (__OFSUB__(v31 >> 1, v29))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v37 != (v31 >> 1) - v29)
  {
LABEL_72:
    swift_unknownObjectRelease();
LABEL_5:
    v32 = OUTLINED_FUNCTION_139();
    specialized _copyCollectionToContiguousArray<A>(_:)(v32, v33, v29, v31);
    v35 = v34;
LABEL_12:
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v35 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v35)
  {
    v35 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

LABEL_13:
  v93 = *(v35 + 16);
  if (!v93)
  {
LABEL_63:

    v96 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC15ConversationKit11ParticipantV7CaptionV_SD6ValuesVySiAH_GTt0g5();

    specialized MutableCollection<>.sort(by:)(&v96);

    swift_unknownObjectRetain();

    OUTLINED_FUNCTION_30_0();
    return;
  }

  v38 = 0;
  v92 = v35 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
  v80 = (v9 + 16);
  v39 = MEMORY[0x1E69E7CC8];
  v78 = v0;
  v79 = (v9 + 40);
  v95 = v1;
  v91 = v35;
  v89 = v25;
  while (1)
  {
    if (v38 >= *(v35 + 16))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v9 = *(v94 + 72);
    OUTLINED_FUNCTION_26_44();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    v29 = *v1;
    if (*(v39 + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(*v1);
      if (v40)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_26_44();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_159_2();
    OUTLINED_FUNCTION_135_1();
    if (v60)
    {
      goto LABEL_65;
    }

    v31 = v64;
    v66 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySi15ConversationKit11ParticipantV7CaptionVGMd, &_ss17_NativeDictionaryVySi15ConversationKit11ParticipantV7CaptionVGMR);
    if (OUTLINED_FUNCTION_158_2())
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v29);
      OUTLINED_FUNCTION_9_32();
      v1 = v95;
      if (!v63)
      {
        goto LABEL_73;
      }

      v31 = v67;
    }

    else
    {
      v1 = v95;
    }

    v39 = v96;
    if (v66)
    {
      OUTLINED_FUNCTION_44_17();
      outlined assign with take of Participant.Caption();
      OUTLINED_FUNCTION_42_26();
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    }

    else
    {
      OUTLINED_FUNCTION_48_17();
      OUTLINED_FUNCTION_25_45();
      _s15ConversationKit11ParticipantVWObTm_6();
      OUTLINED_FUNCTION_42_26();
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      v68 = *(v39 + 16);
      v60 = __OFADD__(v68, 1);
      v69 = v68 + 1;
      if (v60)
      {
        goto LABEL_66;
      }

      *(v39 + 16) = v69;
    }

    v35 = v91;
LABEL_62:
    if (v93 == ++v38)
    {
      goto LABEL_63;
    }
  }

  v86 = v9;
  v87 = v38;
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_25_45();
  OUTLINED_FUNCTION_62_0();
  _s15ConversationKit11ParticipantVWObTm_6();
  v0 = v81;
  v41 = *(v81 + 20);
  v42 = v1 + v41;
  v43 = &v25[v41];
  static Date.> infix(_:_:)();
  v44 = v90;
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_46_22();
  v88 = _s10Foundation4UUIDVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, v45, MEMORY[0x1E6969548]);
  OUTLINED_FUNCTION_157();
  v46 = v84;
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v47 = v43;
  }

  else
  {
    v47 = v42;
  }

  v31 = *v80;
  v48 = v82;
  (*v80)(v82, v47, v46);
  v9 = *v79;
  (*v79)(v44 + v0[5], v48, v46);
  v49 = v0[6];
  v50 = (v95 + v49);
  v1 = &v89[v49];
  OUTLINED_FUNCTION_157();
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v51 = v1;
  }

  else
  {
    v51 = v50;
  }

  v52 = v83;
  (v31)(v83, v51, v46);
  (v9)(v44 + v0[6], v52, v46);
  v53 = (v44 + v0[7]);
  v55 = *v53;
  v54 = v53[1];
  v56 = v55 & 0xFFFFFFFFFFFFLL;
  if ((v54 & 0x2000000000000000) != 0)
  {
    v57 = HIBYTE(v54) & 0xF;
  }

  else
  {
    v57 = v56;
  }

  v29 = *v44;
  if (v57)
  {
    v25 = v89;
    OUTLINED_FUNCTION_26_44();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_159_2();
    OUTLINED_FUNCTION_135_1();
    if (v60)
    {
      goto LABEL_67;
    }

    v31 = v58;
    v61 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySi15ConversationKit11ParticipantV7CaptionVGMd, &_ss17_NativeDictionaryVySi15ConversationKit11ParticipantV7CaptionVGMR);
    if (OUTLINED_FUNCTION_158_2())
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v29);
      OUTLINED_FUNCTION_9_32();
      v0 = v78;
      v1 = v95;
      v38 = v87;
      if (!v63)
      {
        goto LABEL_73;
      }

      v31 = v62;
    }

    else
    {
      v0 = v78;
      v1 = v95;
      v38 = v87;
    }

    v39 = v96;
    if (v61)
    {
      OUTLINED_FUNCTION_44_17();
LABEL_58:
      outlined assign with take of Participant.Caption();
LABEL_61:
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      OUTLINED_FUNCTION_138_2();
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      v35 = v91;
      OUTLINED_FUNCTION_42_26();
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_48_17();
    OUTLINED_FUNCTION_25_45();
    _s15ConversationKit11ParticipantVWObTm_6();
    v74 = *(v39 + 16);
    v60 = __OFADD__(v74, 1);
    v75 = v74 + 1;
    if (v60)
    {
      goto LABEL_69;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_26_44();
  v25 = v89;
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_159_2();
  OUTLINED_FUNCTION_135_1();
  if (v60)
  {
    goto LABEL_68;
  }

  v31 = v70;
  v72 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySi15ConversationKit11ParticipantV7CaptionVGMd, &_ss17_NativeDictionaryVySi15ConversationKit11ParticipantV7CaptionVGMR);
  if (!OUTLINED_FUNCTION_158_2())
  {
    v0 = v78;
    v1 = v95;
    v38 = v87;
    goto LABEL_56;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v29);
  OUTLINED_FUNCTION_9_32();
  v0 = v78;
  v1 = v95;
  v38 = v87;
  if (v63)
  {
    v31 = v73;
LABEL_56:
    v39 = v96;
    if (v72)
    {
      OUTLINED_FUNCTION_44_17();
      OUTLINED_FUNCTION_224_0();
      goto LABEL_58;
    }

    OUTLINED_FUNCTION_48_17();
    OUTLINED_FUNCTION_25_45();
    OUTLINED_FUNCTION_224_0();
    _s15ConversationKit11ParticipantVWObTm_6();
    v76 = *(v39 + 16);
    v60 = __OFADD__(v76, 1);
    v75 = v76 + 1;
    if (v60)
    {
      goto LABEL_70;
    }

LABEL_60:
    *(v39 + 16) = v75;
    goto LABEL_61;
  }

LABEL_73:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
}