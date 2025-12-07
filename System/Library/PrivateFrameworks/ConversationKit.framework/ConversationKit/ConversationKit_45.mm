uint64_t MutedTalkerBannerViewController.delegate.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_12(a1);
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for MutedTalkerBannerViewController.delegate : MutedTalkerBannerViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x140))();
  *a2 = result;
  return result;
}

uint64_t key path setter for MutedTalkerBannerViewController.delegate : MutedTalkerBannerViewController(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x148);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*MutedTalkerBannerViewController.delegate.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return DestinationQueryController.delegate.modify;
}

void MutedTalkerBannerViewController.init()()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  v2 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v3 = [v2 UUIDString];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = &v1[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_currentRequestID];
  *v7 = v4;
  v7[1] = v6;
  v1[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_isMuted] = 1;
  v1[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_isBannerPresent] = 0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v8 = OUTLINED_FUNCTION_6_82();
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  v47 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillImageView;
  *&v1[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillImageView] = v9;
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 systemOrangeColor];
  [v11 setTintColor_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for PLPillContentItem, 0x1E69C4A68);
  v13 = objc_opt_self();
  v14 = [v13 conversationKit];
  v15.super.isa = v14;
  v16 = OUTLINED_FUNCTION_17_0(0xD000000000000021, 0x80000001BC50C680, 0x61737265766E6F43, 0xEF74694B6E6F6974, v15);
  v18 = v17;

  v19 = PLPillContentItem.__allocating_init(text:)(v16, v18);
  v20 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillViewTitle;
  *&v1[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillViewTitle] = v19;
  v21 = [v13 conversationKit];
  v22.super.isa = v21;
  v23 = OUTLINED_FUNCTION_17_0(0xD00000000000002ELL, 0x80000001BC50C6B0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v22);
  v25 = v24;

  v26 = PLPillContentItem.__allocating_init(text:style:)(v23, v25, 5);
  v27 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillViewSubtitle;
  *&v1[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillViewSubtitle] = v26;
  v28 = [objc_allocWithZone(MEMORY[0x1E69C4A70]) initWithLeadingAccessoryView_];
  *&v1[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillView] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BC4BA930;
  v30 = *&v1[v20];
  v31 = *&v1[v27];
  *(v29 + 32) = v30;
  *(v29 + 40) = v31;
  v32 = v28;
  v33 = v30;
  v34 = v31;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 setCenterContentItems_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for BNBannerSource, 0x1E698E580);
  v36 = @nonobjc BNBannerSource.__allocating_init(for:forRequesterIdentifier:)(0, 0xD000000000000037, 0x80000001BC50C6E0);
  if (!v36)
  {
    __break(1u);
    goto LABEL_6;
  }

  *&v1[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_bannerSource] = v36;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v37 = type metadata accessor for MutedTalkerBannerViewController();
  v50.receiver = v1;
  v50.super_class = v37;
  v49 = v37;
  v48[0] = objc_msgSendSuper2(&v50, sel_initWithNibName_bundle_, 0, 0);
  v38 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v39 = v48[0];
  v40 = @nonobjc UITapGestureRecognizer.init(target:action:)(v48, sel_handleTap_);
  [v40 setNumberOfTapsRequired_];
  v41 = [v39 view];
  if (!v41)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v42 = v41;
  [v41 addGestureRecognizer_];

  v49 = v37;
  v48[0] = v39;
  v43 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v44 = v39;
  v45 = @nonobjc UITapGestureRecognizer.init(target:action:)(v48, sel_handleTap_);
  [v45 setNumberOfTapsRequired_];
  v46 = [v44 view];

  if (v46)
  {
    [v46 addGestureRecognizer_];

    [v40 requireGestureRecognizerToFail_];
    return;
  }

LABEL_7:
  __break(1u);
}

id PLPillContentItem.__allocating_init(text:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = MEMORY[0x1BFB209B0](a1, a2);

  v6 = [v4 initWithText_];

  return v6;
}

id PLPillContentItem.__allocating_init(text:style:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x1BFB209B0](a1, a2);

  v8 = [v6 initWithText:v7 style:a3];

  return v8;
}

id @nonobjc BNBannerSource.__allocating_init(for:forRequesterIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = MEMORY[0x1BFB209B0](a2, a3);
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() bannerSourceForDestination:a1 forRequesterIdentifier:v4];

  return v5;
}

id MutedTalkerBannerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void MutedTalkerBannerViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall MutedTalkerBannerViewController.viewDidLoad()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillView;
  [*&v0[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillView] setAutoresizingMask_];
  v2 = *&v0[v1];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame_];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 addSubview_];
}

Swift::Void __swiftcall MutedTalkerBannerViewController.handleTap(_:)(UITapGestureRecognizer_optional *a1)
{
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v4 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  OUTLINED_FUNCTION_7_6(v5);
  OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
  aBlock[2] = v6;
  aBlock[3] = &block_descriptor_63;
  v7 = _Block_copy(aBlock);
  v8 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v9 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_4_108(v9);
  OUTLINED_FUNCTION_5_99();
  _Block_release(v7);

  v10 = OUTLINED_FUNCTION_9_71();
  v11(v10);
  v12 = OUTLINED_FUNCTION_8_78();
  v13(v12);
}

void *closure #1 in MutedTalkerBannerViewController.handleTap(_:)(void *a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_isMuted;
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x160))((*(a1 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_isMuted) & 1) == 0);
  *(a1 + v2) = (*(a1 + v2) & 1) == 0;
  result = (*((*v3 & *a1) + 0x140))(v4);
  if (result)
  {
    [result bannerDidGetTap];

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall MutedTalkerBannerViewController.updatePillView(isMuted:)(Swift::Bool isMuted)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillImageView;
  v5 = *(v1 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillImageView);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v6 = v5;
  if (isMuted)
  {
    v7 = OUTLINED_FUNCTION_6_82();
    v8 = 0xD000000000000021;
    v9 = ".portraitUpsideDown";
    v38 = 0xD00000000000002ELL;
    v39 = "_MUTED_TALKER_OFF";
  }

  else
  {
    v7 = @nonobjc UIImage.init(_systemName:)(0x6C6C69662E63696DLL, 0xE800000000000000);
    v9 = "rViewController.swift";
    v38 = 0xD00000000000002DLL;
    v39 = "_MUTED_TALKER_ON";
    v8 = 0xD000000000000020;
  }

  [v6 setImage_];

  v10 = *(v2 + v4);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 systemOrangeColor];
  [v12 setTintColor_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for PLPillContentItem, 0x1E69C4A68);
  v14 = objc_opt_self();
  v15 = [v14 conversationKit];
  v16.super.isa = v15;
  v17 = OUTLINED_FUNCTION_17_0(v8, v9 | 0x8000000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974, v16);
  v19 = v18;

  v20 = PLPillContentItem.__allocating_init(text:)(v17, v19);
  v21 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillViewTitle;
  v22 = *(v2 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillViewTitle);
  *(v2 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillViewTitle) = v20;

  v23 = [v14 conversationKit];
  v24.super.isa = v23;
  v25 = OUTLINED_FUNCTION_17_0(v38, v39 | 0x8000000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974, v24);
  v27 = v26;

  v28 = PLPillContentItem.__allocating_init(text:style:)(v25, v27, 5);
  v29 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillViewSubtitle;
  v30 = *(v2 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillViewSubtitle);
  *(v2 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillViewSubtitle) = v28;

  v31 = *(v2 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1BC4BA930;
  v33 = *(v2 + v21);
  v34 = *(v2 + v29);
  *(v32 + 32) = v33;
  *(v32 + 40) = v34;
  v35 = v31;
  v36 = v33;
  v37 = v34;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v35 setCenterContentItems_];
}

Swift::Void __swiftcall MutedTalkerBannerViewController.showBanner()()
{
  v1 = v0;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v0[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_isMuted] = 1;
  if (((*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))() & 1) == 0)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
    v5 = [v4 UUIDString];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = &v1[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_currentRequestID];
    *v9 = v6;
    v9[1] = v8;

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v10 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_20();
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    OUTLINED_FUNCTION_7_6(v11);
    OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
    aBlock[2] = v12;
    aBlock[3] = &block_descriptor_6_2;
    v13 = _Block_copy(aBlock);
    v14 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v15 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    OUTLINED_FUNCTION_4_108(v15);
    OUTLINED_FUNCTION_5_99();
    _Block_release(v13);

    v16 = OUTLINED_FUNCTION_9_71();
    v17(v16);
    v18 = OUTLINED_FUNCTION_8_78();
    v19(v18);
  }
}

void closure #1 in MutedTalkerBannerViewController.showBanner()(char *a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = *&a1[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_bannerSource];
  v23[0] = 0;
  v3 = [v2 layoutDescriptionWithError_];
  if (v3)
  {
    v4 = v3;
    v5 = v23[0];
    [v4 presentationSize];
    v7 = v6;
    v9 = v8;
    [v4 containerSize];
    [a1 preferredContentSizeWithPresentationSize:v7 containerSize:{v9, v10, v11}];
    [a1 setPreferredContentSize_];
    v23[0] = 0;
    if ([v2 postPresentable:a1 options:1 userInfo:0 error:v23])
    {
      v12 = v23[0];
      goto LABEL_11;
    }

    v15 = v23[0];
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    v13 = v23[0];
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, &static Logger.conversationControls);
  v4 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1BBC58000, v4, v17, "MutedTalker: unable to post banner", v18, 2u);
    MEMORY[0x1BFB23DF0](v18, -1, -1);
  }

LABEL_11:
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, &static Logger.conversationControls);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1BBC58000, v20, v21, "MutedTalker: banner presented", v22, 2u);
    MEMORY[0x1BFB23DF0](v22, -1, -1);
  }
}

Swift::Void __swiftcall MutedTalkerBannerViewController.dismissBanner()()
{
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v3 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_20();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    OUTLINED_FUNCTION_7_6(v4);
    OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
    aBlock[2] = v5;
    aBlock[3] = &block_descriptor_12_2;
    v6 = _Block_copy(aBlock);
    v7 = v0;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v8 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    OUTLINED_FUNCTION_4_108(v8);
    OUTLINED_FUNCTION_5_99();
    _Block_release(v6);

    v9 = OUTLINED_FUNCTION_9_71();
    v10(v9);
    v11 = OUTLINED_FUNCTION_8_78();
    v12(v11);
  }
}

void closure #1 in MutedTalkerBannerViewController.dismissBanner()(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_bannerSource);
  v2 = *(a1 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_currentRequestID);
  v3 = *(a1 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_currentRequestID + 8);

  v4 = MEMORY[0x1BFB209B0](0x727574206574756DLL, 0xEF66666F2064656ELL);
  v11[0] = 0;
  v5 = outlined bridged method (mbnnnnnn) of @objc BNBannerSource.revokePresentable(withRequestIdentifier:reason:animated:userInfo:)(v2, v3, v4, 1, 0, v11, v1);

  v6 = v11[0];
  if (v5)
  {
  }

  else
  {
    v7 = v6;
    v8 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.conversationKit;
    v10 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Unable to revoke banner source", 30, 2, &dword_1BBC58000, v9, v10, MEMORY[0x1E69E7CC0]);
  }
}

uint64_t MutedTalkerBannerViewController.presentableWillDisappear(asBanner:withReason:)()
{
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x130))(0);
  v2 = *((*v1 & *v0) + 0x160);

  return v2(1);
}

id MutedTalkerBannerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id MutedTalkerBannerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MutedTalkerBannerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MutedTalkerBannerViewController.requestIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_currentRequestID);

  return v1;
}

CGSize __swiftcall MutedTalkerBannerViewController.preferredContentSize(withPresentationSize:containerSize:)(CGSize withPresentationSize, CGSize containerSize)
{
  [*(v2 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillView) systemLayoutSizeFittingSize_];
  result.height = v4;
  result.width = v3;
  return result;
}

id outlined bridged method (mbnnnnnn) of @objc BNBannerSource.revokePresentable(withRequestIdentifier:reason:animated:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = MEMORY[0x1BFB209B0](a1);

  v13 = [a7 revokePresentableWithRequestIdentifier:v12 reason:a3 animated:a4 & 1 userInfo:a5 error:a6];

  return v13;
}

uint64_t CarrierBundleSettings.__allocating_init()()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v0 = static OS_dispatch_queue.main.getter();
  v1 = [objc_allocWithZone(MEMORY[0x1E69650A0]) initWithQueue_];

  v2 = swift_allocObject();
  CarrierBundleSettings.init(ctClient:)(v1);
  return v2;
}

uint64_t static CarrierBundleSettings.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

id CarrierBundleSettings.ctClient.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21CarrierBundleSettings_ctClient;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CarrierBundleSettings.ctClient.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit21CarrierBundleSettings_ctClient;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CarrierBundleSettings.__allocating_init(ctClient:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CarrierBundleSettings.init(ctClient:)(a1);
  return v2;
}

uint64_t CarrierBundleSettings.init(ctClient:)(uint64_t a1)
{
  Logger.init(subsystem:category:)();
  *(v1 + OBJC_IVAR____TtC15ConversationKit21CarrierBundleSettings_ctClient) = a1;
  return v1;
}

double CarrierBundleSettings.fetchCarrierBundleValue(for:context:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v7 = OBJC_IVAR____TtC15ConversationKit21CarrierBundleSettings_ctClient;
  swift_beginAccess();
  v8 = *(v3 + v7);
  specialized _arrayForceCast<A, B>(_:)(a1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v29[0] = 0;
  v10 = [v8 context:a2 getCarrierBundleValue:isa error:v29];

  v28 = v29[0];
  if (v10)
  {
    *(a3 + 24) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    *a3 = v10;

    v11 = v28;
  }

  else
  {
    v13 = v29[0];
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();

    v15 = a2;
    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29[0] = swift_slowAlloc();
      *v19 = 136315650;
      v21 = MEMORY[0x1BFB20D10](a1, MEMORY[0x1E69E6158]);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v29);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v15;
      *v20 = v15;
      *(v19 + 22) = 2080;
      swift_getErrorValue();
      v24 = v15;
      v25 = Error.localizedDescription.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v29);

      *(v19 + 24) = v27;
      _os_log_impl(&dword_1BBC58000, v17, v18, "Error while extracting carrier bundle value for key hierarchy: %s for subscription context: %@. Error - %s", v19, 0x20u);
      outlined destroy of NSObject?(v20);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    else
    {
    }

    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

id CarrierBundleSettings.subscription(for:)(uint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = OBJC_IVAR____TtC15ConversationKit21CarrierBundleSettings_ctClient;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v46 = 0;
  v5 = [v4 getSubscriptionInfoWithError_];
  v6 = v46;
  if (!v5)
  {
    v22 = v46;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v6;
  }

  v7 = v5;
  v8 = v46;
  v9 = outlined bridged method (ob) of @objc CTXPCServiceSubscriptionInfo.subscriptions.getter(v7);
  if (!v9)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v23, v24))
    {
LABEL_36:

      return 0;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1BBC58000, v23, v24, "Not able to fetch subscriptions active in device.", v25, 2u);
LABEL_35:
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    goto LABEL_36;
  }

  v10 = v9;
  v11 = specialized Array.count.getter();
  if (!v11)
  {

    v14 = a2;
LABEL_27:

    v23 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v23, v26))
    {
      goto LABEL_36;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v14;
    v30 = v28;
    v46 = v28;
    *v27 = 136315138;
    if (v29)
    {
      v31 = a1;
    }

    else
    {
      v31 = 0;
    }

    if (v29)
    {
      v32 = v29;
    }

    else
    {
      v32 = 0xE000000000000000;
    }

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v46);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_1BBC58000, v23, v26, "Not able to find subscription context for SIM ID - %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    goto LABEL_35;
  }

  v12 = v11;
  v13 = 0;
  v14 = a2;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1BFB22010](v13, v10);
    }

    else
    {
      if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v15 = *(v10 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
    }

    v18 = outlined bridged method (pb) of @objc CTXPCServiceSubscriptionContext.labelID.getter(v15);
    if (v19)
    {
      break;
    }

    if (!v14)
    {
      goto LABEL_38;
    }

LABEL_21:
    ++v13;
    if (v17 == v12)
    {

      goto LABEL_27;
    }
  }

  if (!v14)
  {

    goto LABEL_21;
  }

  if (v18 != a1 || v19 != v14)
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_38;
    }

    v14 = a2;
    goto LABEL_21;
  }

LABEL_38:

  v6 = v16;

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v46 = v38;
    *v36 = 138412546;
    *(v36 + 4) = v6;
    *v37 = v6;
    *(v36 + 12) = 2080;
    if (a2)
    {
      v39 = a1;
    }

    else
    {
      v39 = 0;
    }

    if (a2)
    {
      v40 = a2;
    }

    else
    {
      v40 = 0xE000000000000000;
    }

    v41 = v6;

    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v46);

    *(v36 + 14) = v42;
    _os_log_impl(&dword_1BBC58000, v34, v35, "Found subscription context %@ for SIM ID %s", v36, 0x16u);
    outlined destroy of NSObject?(v37);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  return v6;
}

uint64_t CarrierBundleSettings.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21CarrierBundleSettings_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t CarrierBundleSettings.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21CarrierBundleSettings_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t outlined bridged method (ob) of @objc CTXPCServiceSubscriptionInfo.subscriptions.getter(void *a1)
{
  v2 = [a1 subscriptions];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CTXPCServiceSubscriptionContext, 0x1E6965090);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc CTXPCServiceSubscriptionContext.labelID.getter(void *a1)
{
  v1 = [a1 labelID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t type metadata accessor for CarrierBundleSettings(uint64_t a1)
{
  result = type metadata singleton initialization cache for CarrierBundleSettings;
  if (!type metadata singleton initialization cache for CarrierBundleSettings)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CarrierBundleSettings(uint64_t a1)
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

uint64_t ParticipantMonogramView.ViewModel.init(participant:includeAudioVisualization:includeRingButton:titles:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  Participant.contactDetails.getter();
  *a8 = v18;
  *(a8 + 16) = v19;
  *(a8 + 32) = v20;
  *(a8 + 48) = v21;
  v16 = *(a1 + *(type metadata accessor for Participant(0) + 32));

  result = outlined destroy of Participant(a1);
  *(a8 + 56) = v16;
  *(a8 + 64) = a2;
  *(a8 + 65) = a3;
  *(a8 + 72) = a4;
  *(a8 + 80) = a5;
  *(a8 + 88) = a6;
  *(a8 + 96) = a7;
  return result;
}

BOOL static ParticipantMonogramView.ViewModel.== infix(_:_:)()
{
  Hasher.init(_seed:)();
  ParticipantMonogramView.ViewModel.hash(into:)(v2);
  v0 = Hasher._finalize()();
  Hasher.init(_seed:)();
  ParticipantMonogramView.ViewModel.hash(into:)(v2);
  return v0 == Hasher._finalize()();
}

double ParticipantMonogramView.ViewModel.participantContactDetails.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v5 = *(v1 + 4);
  v4 = *(v1 + 5);
  v6 = *(v1 + 6);
  v7 = *v1;
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  *(a1 + 48) = v6;
  v8 = v7;

  return result;
}

__n128 ParticipantMonogramView.ViewModel.participantContactDetails.setter(__int128 *a1)
{
  v6 = a1[1];
  v7 = *a1;
  v5 = a1[2];
  v2 = *(a1 + 6);
  v3 = *v1;

  *v1 = v7;
  *(v1 + 16) = v6;
  result = v5;
  *(v1 + 32) = v5;
  *(v1 + 48) = v2;
  return result;
}

uint64_t ParticipantMonogramView.ViewModel.titles.getter()
{
  v0 = OUTLINED_FUNCTION_7_77();
  outlined copy of (title: String, subtitle: String?)?(v0, v1);
  return OUTLINED_FUNCTION_7_77();
}

void ParticipantMonogramView.ViewModel.titles.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined consume of (title: String, subtitle: String?)?(v4[9], v4[10]);
  v4[9] = a1;
  v4[10] = a2;
  v4[11] = a3;
  v4[12] = a4;
}

void ParticipantMonogramView.ringButton.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_ringButton);
  *(v1 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_ringButton) = a1;
}

uint64_t ParticipantMonogramView.isInRoster.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_isInRoster;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_isInRoster, a2);
  return *(v2 + v3);
}

void key path getter for ParticipantMonogramView.isInRoster : ParticipantMonogramView(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_isInRoster;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id ParticipantMonogramView.isInRoster.setter(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_isInRoster;
  OUTLINED_FUNCTION_6_0(&v2[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_isInRoster], a2);
  v2[v4] = a1;
  return [v2 setNeedsLayout];
}

uint64_t ParticipantMonogramView.isInRoster.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

id ParticipantMonogramView.isInRoster.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

BOOL ParticipantMonogramView.shouldUseConcentricRadius.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (Features.isICUIRedesignEnabled.getter() & 1) != 0 && (*(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_localParticipant) & 1) != 0;
}

double ParticipantMonogramView.customCornerRadius.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_customCornerRadius;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_customCornerRadius, a2);
  return *(v2 + v3);
}

double key path getter for ParticipantMonogramView.customCornerRadius : ParticipantMonogramView@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_customCornerRadius;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

id ParticipantMonogramView.customCornerRadius.setter(double a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_customCornerRadius;
  OUTLINED_FUNCTION_6_0(v3 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_customCornerRadius, a3);
  *(v3 + v5) = a1;
  return ParticipantMonogramView.customCornerRadius.didset();
}

id ParticipantMonogramView.customCornerRadius.didset()
{
  result = ParticipantMonogramView.shouldUseConcentricRadius.getter();
  if ((result & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowClippingView);
    if (v3)
    {
      v4 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_customCornerRadius;
      OUTLINED_FUNCTION_4_5(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_customCornerRadius, v2);
      return [v3 _setContinuousCornerRadius_];
    }
  }

  return result;
}

uint64_t ParticipantMonogramView.customCornerRadius.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t ParticipantMonogramView.concentricCornerStyle.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_concentricCornerStyle;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_concentricCornerStyle, a1);
  v5 = type metadata accessor for _UICornerMaskingConfiguration();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t key path getter for ParticipantMonogramView.concentricCornerStyle : ParticipantMonogramView@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_concentricCornerStyle;
  swift_beginAccess();
  v5 = type metadata accessor for _UICornerMaskingConfiguration();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for ParticipantMonogramView.concentricCornerStyle : ParticipantMonogramView(uint64_t a1)
{
  v2 = type metadata accessor for _UICornerMaskingConfiguration();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return ParticipantMonogramView.concentricCornerStyle.setter(v5);
}

uint64_t ParticipantMonogramView.concentricCornerStyle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_concentricCornerStyle;
  swift_beginAccess();
  v4 = type metadata accessor for _UICornerMaskingConfiguration();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  ParticipantMonogramView.concentricCornerStyle.didset();
  return (*(v5 + 8))(a1, v4);
}

uint64_t ParticipantMonogramView.concentricCornerStyle.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd, &_s5UIKit29_UICornerMaskingConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  result = ParticipantMonogramView.shouldUseConcentricRadius.getter();
  if (result)
  {
    if (*(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowClippingView))
    {
      v5 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_concentricCornerStyle;
      swift_beginAccess();
      v6 = type metadata accessor for _UICornerMaskingConfiguration();
      (*(*(v6 - 8) + 16))(v3, v0 + v5, v6);
      __swift_storeEnumTagSinglePayload(v3, 0, 1, v6);
      return UIView.cornerMaskingConfiguration.setter();
    }
  }

  return result;
}

uint64_t ParticipantMonogramView.concentricCornerStyle.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t ParticipantMonogramView.customCornerRadius.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t key path getter for ParticipantMonogramView.delegate : ParticipantMonogramView@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for ParticipantMonogramView.delegate : ParticipantMonogramView(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t ParticipantMonogramView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ParticipantMonogramView.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_delegate;
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

uint64_t ParticipantMonogramView.participantMonogramViewLayout.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_participantMonogramViewLayout;
  OUTLINED_FUNCTION_6_0(v2 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_participantMonogramViewLayout, a2);
  *(v2 + v4) = a1;
}

char *ParticipantMonogramView.__allocating_init(colorStyle:localParticipant:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v5 = objc_allocWithZone(v2);
  return ParticipantMonogramView.init(colorStyle:localParticipant:)(a1, v3);
}

char *ParticipantMonogramView.init(colorStyle:localParticipant:)(unsigned __int8 *a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *a1;
  v8 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_titleLabelContainer;
  type metadata accessor for ParticipantViewLabelContainerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v3[v8] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v10 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_subtitleLabelContainer;
  *&v3[v10] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_isInRoster] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_customCornerRadius] = 0;
  static _UICornerMaskingConfiguration.unspecified.getter();
  *&v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_participantMonogramViewLayout] = 0;
  v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_localParticipant] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = (*static Defaults.shared + 336);
  v81 = *v11;
  if (((*v11)() & 1) != 0 || v7)
  {
    *&v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowClippingView] = 0;
    *&v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowView] = 0;
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v13 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowClippingView;
    *&v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowClippingView] = v12;
    if (v12)
    {
      v14 = objc_opt_self();
      v15 = v12;
      v16 = [v14 clearColor];
      [v15 setBackgroundColor_];

      if (*&v3[v13])
      {
        [*&v3[v13] setClipsToBounds_];
      }
    }

    v17 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV6DrawerO_Tt0g5(6);
    v18 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

    *&v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowView] = v18;
    if (v18)
    {
      [v18 setAlpha_];
    }
  }

  LOBYTE(v84[0]) = v7;
  v19 = objc_allocWithZone(type metadata accessor for AudioVisualizationView());
  *&v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_audioVisualizationView] = AudioVisualizationView.init(colorStyle:)(v84);
  LOBYTE(v84[0]) = v7;
  v20 = objc_allocWithZone(type metadata accessor for ParticipantContactView());
  *&v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_contactView] = ParticipantContactView.init(colorStyle:)(v84);
  v82 = v7;
  v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_colorStyle] = v7;
  v21 = [objc_opt_self() conversationKit];
  v86._object = 0xE000000000000000;
  v22.value._countAndFlagsBits = 0x61737265766E6F43;
  v22.value._object = 0xEF74694B6E6F6974;
  v23._object = 0x80000001BC50CAA0;
  v23._countAndFlagsBits = 0xD000000000000015;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v86._countAndFlagsBits = 0;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v86);

  v26 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  *&v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_ringButton] = v26;
  v85.receiver = v3;
  v85.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v85, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v28 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_ringButton;
  v29 = *&v27[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_ringButton];
  v84[3] = ObjectType;
  v84[0] = v27;
  v30 = v27;
  v31 = v29;
  UIButton.add(target:action:)(v84, sel_didTapRingButton, v32);

  outlined destroy of Any?(v84);
  outlined bridged method (mbnnn) of @objc UIButton.setTitle(_:for:)(v25._countAndFlagsBits, v25._object, 0, *&v27[v28]);
  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x74747542676E6972, 0xEA00000000006E6FLL, *&v27[v28]);
  v33 = [*&v27[v28] titleLabel];
  if (v33)
  {
    v31 = v33;
    if (one-time initialization token for ringButton != -1)
    {
      swift_once();
    }

    [v31 setFont_];
  }

  v34 = *&v27[v28];
  OUTLINED_FUNCTION_3_116();
  if (!v35)
  {
    swift_once();
  }

  [v31 setBackgroundColor_];

  v36 = *&v27[v28];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 whiteColor];
  [v38 setTitleColor:v39 forState:0];

  v80 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowView;
  v40 = *&v30[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowView];
  if (v40)
  {
    v41 = *&v30[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowClippingView];
    if (v41)
    {
      v42 = v40;
      v43 = v41;
      [v43 addSubview_];
      [v30 addSubview_];
    }
  }

  v44 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_titleLabelContainer;
  v45 = *&v30[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_titleLabelContainer];
  ParticipantViewLabelContainerView.isCentered.setter(0);

  v46 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_subtitleLabelContainer;
  v47 = *&v30[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_subtitleLabelContainer];
  ParticipantViewLabelContainerView.isCentered.setter(0);

  v83 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_audioVisualizationView;
  v48 = *&v30[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_audioVisualizationView];
  v49 = v30;
  [v49 addSubview_];
  OUTLINED_FUNCTION_10_63();
  v79 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_contactView;
  OUTLINED_FUNCTION_10_63();
  OUTLINED_FUNCTION_10_63();
  v50 = OUTLINED_FUNCTION_10_63();
  if ((v81)(v50))
  {
    if (one-time initialization token for background != -1)
    {
      swift_once();
    }

    v51 = static Colors.ParticipantViews.background;
  }

  else
  {
    v51 = [v37 clearColor];
  }

  v52 = v51;
  [v49 &selRef:v51 phoneNumberWithDigits:? countryCode:?];

  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD000000000000016, 0x80000001BC50CAC0, *&v30[v83]);
  OUTLINED_FUNCTION_6_83();
  v54 = v53;
  OUTLINED_FUNCTION_3_116();
  if (!v35)
  {
    swift_once();
  }

  [v52 setFont_];

  OUTLINED_FUNCTION_6_83();
  v56 = v55;
  OUTLINED_FUNCTION_3_116();
  if (!v35)
  {
    swift_once();
  }

  [v52 setFont_];

  OUTLINED_FUNCTION_6_83();
  if (v82)
  {
    v58 = v57;
    OUTLINED_FUNCTION_3_116();
    if (!v35)
    {
      swift_once();
    }

    v59 = static Colors.ParticipantViews.overlayContent;
    [v52 setTextColor_];

    [*(*&v30[v46] + OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label) setTextColor_];
  }

  else
  {
    v60 = v57;
    OUTLINED_FUNCTION_3_116();
    if (!v35)
    {
      swift_once();
    }

    [v52 setTextColor_];

    OUTLINED_FUNCTION_6_83();
    v61 = one-time initialization token for subtitleLabel;
    v63 = v62;
    if (v61 != -1)
    {
      swift_once();
    }

    [v63 setTextColor_];
  }

  v64 = *&v30[v83];
  v65 = *&v49[v79];
  v66 = *&v30[v44];
  v67 = *&v30[v46];
  v68 = *&v30[v80];
  v69 = *&v27[v28];
  type metadata accessor for ParticipantMonogramViewLayout();
  swift_allocObject();
  v70 = v64;
  v71 = v65;
  v72 = v66;
  v73 = v67;
  v74 = v68;
  v75 = v69;
  v76 = ParticipantMonogramViewLayout.init(audioVisualizer:contactView:titleView:subtitleView:glowView:ringButton:)();
  v77 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_participantMonogramViewLayout;
  swift_beginAccess();
  *&v49[v77] = v76;

  return v49;
}

id ParticipantMonogramView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void ParticipantMonogramView.init()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_titleLabelContainer;
  type metadata accessor for ParticipantViewLabelContainerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v1) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_subtitleLabelContainer;
  *(v0 + v3) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_isInRoster) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_customCornerRadius) = 0;
  static _UICornerMaskingConfiguration.unspecified.getter();
  OUTLINED_FUNCTION_5_100(OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_delegate);
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_participantMonogramViewLayout) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id ParticipantMonogramView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantMonogramView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_titleLabelContainer;
  type metadata accessor for ParticipantViewLabelContainerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v1) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_subtitleLabelContainer;
  *(v0 + v3) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_isInRoster) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_customCornerRadius) = 0;
  static _UICornerMaskingConfiguration.unspecified.getter();
  OUTLINED_FUNCTION_5_100(OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_delegate);
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_participantMonogramViewLayout) = 0;
  OUTLINED_FUNCTION_2_120();
  __break(1u);
}

id ParticipantMonogramView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void ParticipantMonogramView.init(frame:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_titleLabelContainer;
  type metadata accessor for ParticipantViewLabelContainerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v1) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_subtitleLabelContainer;
  *(v0 + v3) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_isInRoster) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_customCornerRadius) = 0;
  static _UICornerMaskingConfiguration.unspecified.getter();
  OUTLINED_FUNCTION_5_100(OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_delegate);
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_participantMonogramViewLayout) = 0;
  OUTLINED_FUNCTION_2_120();
  __break(1u);
}

Swift::Void __swiftcall ParticipantMonogramView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  ParticipantMonogramView._layout()();
}

void ParticipantMonogramView._layout()()
{
  [v0 bounds];
  if (!CGRectIsInfinite(v8))
  {
    [v0 bounds];
    if (!CGRectIsEmpty(v9))
    {
      [v0 bounds];
      v2 = v1;
      v4 = v3;
      [*&v0[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowClippingView] setFrame_];
      v5 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_participantMonogramViewLayout;
      swift_beginAccess();
      if (*&v0[v5])
      {
        v6 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_isInRoster;
        swift_beginAccess();
        v7 = v0[v6];

        v10.origin.x = 0.0;
        v10.origin.y = 0.0;
        v10.size.width = v2;
        v10.size.height = v4;
        ParticipantMonogramViewLayout.layout(in:inRoster:)(v10, v7);
      }
    }
  }
}

uint64_t ParticipantMonogramView.didTapRingButton()()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void ParticipantMonogramView.configure(with:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 16);
  v26 = *(a1 + 24);
  v27 = *(a1 + 8);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v28 = *(a1 + 64);
  v29 = *(a1 + 65);
  v24 = *(a1 + 72);
  v25 = *(a1 + 40);
  v23 = *(a1 + 88);
  v30 = *(a1 + 80);
  v31 = *(a1 + 96);
  v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowView);
  if (v8)
  {
    if (specialized Array.count.getter())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v7 & 0xC000000000000001) == 0, v7);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1BFB22010](0, v7);
      }

      else
      {
        v9 = *(v7 + 32);
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    [v8 setTintColor_];
  }

  v11 = *(v2 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_audioVisualizationView);
  v12 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x90);

  v12(v13);

  ParticipantContactView.gradient.setter(v14);
  v32[0] = v3;
  v32[1] = v27;
  v32[2] = v4;
  v32[3] = v26;
  v32[4] = v5;
  v32[5] = v25;
  v32[6] = v6;
  v15 = v3;

  ParticipantContactView.contactDetails.setter(v32);
  if (v28)
  {
    v16 = [v11 setHidden_];
    (*((*MEMORY[0x1E69E7D40] & *v11) + 0xA0))(v16);
  }

  else
  {
    (*((*MEMORY[0x1E69E7D40] & *v11) + 0xA8))();
    [v11 setHidden_];
  }

  [*(v2 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_ringButton) setHidden_];
  v17 = *(v2 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_titleLabelContainer);
  ParticipantViewLabelContainerView.isCentered.setter(v29 ^ 1);
  v18 = *(v2 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_subtitleLabelContainer);
  ParticipantViewLabelContainerView.isCentered.setter(v29 ^ 1);
  if (v30)
  {
    v19 = *&v17[OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label];
    outlined bridged method (mbgnn) of @objc UILabel.text.setter(v24, v30, v19);

    [v17 setHidden_];
    if (v31)
    {
      v20 = *&v18[OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label];
      outlined bridged method (mbgnn) of @objc UILabel.text.setter(v23, v31, v20);

      v21 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v21 = v23 & 0xFFFFFFFFFFFFLL;
      }

      v22 = v21 == 0;
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 1;
    [v17 setHidden_];
  }

  [v18 setHidden_];
  [*&v17[OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label] sizeToFit];
  [*&v18[OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label] sizeToFit];

  ParticipantMonogramView._layout()();
}

Swift::Void __swiftcall ParticipantMonogramView.updateAudioVisualization(with:)(Swift::Float with)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_audioVisualizationView);
  if (([v3 isHidden] & 1) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x78))(with);
  }
}

id ParticipantMonogramView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int ParticipantMonogramView.ViewModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  ParticipantMonogramView.ViewModel.hash(into:)(v1);
  return Hasher._finalize()();
}

double ParticipantMonogramView.ViewModel.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[7];
  v5 = *(v1 + 64);
  v10 = *(v1 + 65);
  v6 = v1[10];
  v9 = v1[12];
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  v7 = v3 && (String.count.getter() - 1) < 2;
  Hasher._combine(_:)(v7);
  specialized Array<A>.hash(into:)(a1, v4, specialized Array.count.getter, specialized Array.count.getter);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v10);
  if (v6)
  {

    Hasher._combine(_:)(1u);
    String.hash(into:)();

    if (v9)
    {
      Hasher._combine(_:)(1u);

      String.hash(into:)();
      goto LABEL_10;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(0);
LABEL_10:

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticipantMonogramView.ViewModel(uint64_t a1)
{
  Hasher.init(_seed:)();
  ParticipantMonogramView.ViewModel.hash(into:)(v2);
  return Hasher._finalize()();
}

double outlined copy of (title: String, subtitle: String?)?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void specialized Array<A>.hash(into:)()
{
  OUTLINED_FUNCTION_9_72();
  if (v0)
  {
    v2 = (v1 + 64);
    do
    {
      v3 = *(v2 - 16);
      v4 = *(v2 - 1);
      v5 = *v2;

      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v4, v5);
      String.hash(into:)();
      MEMORY[0x1BFB22640](v3);
      Hasher._combine(_:)(v4 == 0);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v4, v5);
      v2 += 5;
      --v0;
    }

    while (v0);
  }
}

{
  OUTLINED_FUNCTION_9_72();
  if (v0)
  {
    v2 = (v1 + 40);
    do
    {
      v3 = *v2;
      MEMORY[0x1BFB22640](*(v2 - 1));
      MEMORY[0x1BFB22640](v3);
      v2 += 2;
      --v0;
    }

    while (v0);
  }
}

void specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v6 = a3(a2);
  MEMORY[0x1BFB22640](v6);
  v7 = a4(a2);
  if (v7)
  {
    v8 = v7;
    if (v7 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v8; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1BFB22010](i, a2);
        }

        else
        {
          v10 = *(a2 + 8 * i + 32);
        }

        v11 = v10;
        NSObject.hash(into:)();
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type ParticipantMonogramView.ViewModel and conformance ParticipantMonogramView.ViewModel()
{
  result = lazy protocol witness table cache variable for type ParticipantMonogramView.ViewModel and conformance ParticipantMonogramView.ViewModel;
  if (!lazy protocol witness table cache variable for type ParticipantMonogramView.ViewModel and conformance ParticipantMonogramView.ViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantMonogramView.ViewModel and conformance ParticipantMonogramView.ViewModel);
  }

  return result;
}

uint64_t type metadata accessor for ParticipantMonogramView(uint64_t a1)
{
  result = type metadata singleton initialization cache for ParticipantMonogramView;
  if (!type metadata singleton initialization cache for ParticipantMonogramView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ParticipantMonogramView(uint64_t a1)
{
  result = type metadata accessor for _UICornerMaskingConfiguration();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SS5title_SSSg8subtitletSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ParticipantMonogramView.ViewModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for ParticipantMonogramView.ViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ObservableNotificationHandler.init(name:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  ObservationRegistrar.init()();
  v7 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();
  v9 = a1;

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = v8;

  v13 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
  ObservableNotificationHandler.notificationTask.setter(v13);

  return v2;
}

uint64_t ObservableNotificationHandler.deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit29ObservableNotificationHandler___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t ObservableNotificationHandler.notificationTask.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  (*(v2 + 216))();
}

uint64_t ObservableNotificationHandler.notificationTask.setter(uint64_t a1)
{

  v4 = specialized ObservableNotificationHandler.shouldNotifyObservers<A>(_:_:)(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    v8 = v1;
    v9 = a1;
    (*(*v1 + 224))(v6);
  }

  else
  {
    v1[2] = a1;
  }
}

uint64_t ObservableNotificationHandler.trackingProperty.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  (*(v3 + 216))();

  return *(v2 + 24);
}

uint64_t ObservableNotificationHandler.trackingProperty.setter(uint64_t result, uint64_t a2)
{
  if (v2[24] == (result & 1))
  {
    v2[24] = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 224))(v4);
  }

  return result;
}

Swift::Void __swiftcall ObservableNotificationHandler.willReturnChangingValue()()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  (*(v0 + 216))();
}

uint64_t ObservableNotificationHandler.access<A>(keyPath:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_122();
  lazy protocol witness table accessor for type ObservableNotificationHandler and conformance ObservableNotificationHandler(v1, v2, &protocol conformance descriptor for ObservableNotificationHandler);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t ObservableNotificationHandler.withMutation<A, B>(keyPath:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_122();
  lazy protocol witness table accessor for type ObservableNotificationHandler and conformance ObservableNotificationHandler(v4, v5, &protocol conformance descriptor for ObservableNotificationHandler);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

BOOL specialized ObservableNotificationHandler.shouldNotifyObservers<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v3 = static Task.== infix(_:_:)();
  }

  return (v3 & 1) == 0;
}

uint64_t closure #1 in ObservableNotificationHandler.notificationTask.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
}

uint64_t ObservableNotificationHandler.__allocating_init(name:)(void *a1)
{
  v2 = swift_allocObject();
  ObservableNotificationHandler.init(name:)(a1);
  return v2;
}

uint64_t closure #1 in ObservableNotificationHandler.init(name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd, &_s10Foundation12NotificationVSgMR);
  v5[15] = swift_task_alloc();
  v6 = type metadata accessor for Notification();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVySo20NSNotificationCenterC10FoundationE13NotificationsCSS_GMd, &_ss16AsyncMapSequenceV8IteratorVySo20NSNotificationCenterC10FoundationE13NotificationsCSS_GMR);
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVySo20NSNotificationCenterC10FoundationE13NotificationsCSSGMd, &_ss16AsyncMapSequenceVySo20NSNotificationCenterC10FoundationE13NotificationsCSSGMR);
  v5[24] = v8;
  v5[25] = *(v8 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = type metadata accessor for MainActor();
  v5[28] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[29] = v10;
  v5[30] = v9;

  return MEMORY[0x1EEE6DFA0](closure #1 in ObservableNotificationHandler.init(name:), v10, v9);
}

uint64_t closure #1 in ObservableNotificationHandler.init(name:)()
{
  v1 = v0[24];
  v2 = [objc_opt_self() defaultCenter];
  v3 = NSNotificationCenter.notifications(named:object:)();

  v0[11] = v3;
  type metadata accessor for NSNotificationCenter.Notifications();
  lazy protocol witness table accessor for type ObservableNotificationHandler and conformance ObservableNotificationHandler(&lazy protocol witness table cache variable for type NSNotificationCenter.Notifications and conformance NSNotificationCenter.Notifications, MEMORY[0x1E6969F08], MEMORY[0x1E6969F10]);
  AsyncMapSequence.init(_:transform:)();
  MEMORY[0x1BFB221C0](v1);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.Iterator.transform.getter();
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  v4 = static MainActor.shared.getter();
  v0[31] = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = OUTLINED_FUNCTION_0_149(v7, v5);

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  v1 = v0[31];
  v0[34] = AsyncMapSequence.Iterator.baseIterator.modify();
  lazy protocol witness table accessor for type ObservableNotificationHandler and conformance ObservableNotificationHandler(&lazy protocol witness table cache variable for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator, MEMORY[0x1E6969EF8], MEMORY[0x1E6969F00]);
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = closure #1 in ObservableNotificationHandler.init(name:);
  v3 = v0[15];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;
  *(v2 + 288) = v0;

  if (v0)
  {
    v4 = *(v2 + 256);
    v5 = *(v2 + 264);
    v6 = closure #1 in ObservableNotificationHandler.init(name:);
  }

  else
  {
    (*(v2 + 272))();
    v4 = *(v2 + 256);
    v5 = *(v2 + 264);
    v6 = closure #1 in ObservableNotificationHandler.init(name:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

{
  v2 = v0[15];
  v1 = v0[16];
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {

    outlined destroy of Notification?(v2);
    v3 = v0[29];
    v4 = v0[30];

    return MEMORY[0x1EEE6DFA0](closure #1 in ObservableNotificationHandler.init(name:), v3, v4);
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v2, v1);
    v5 = AsyncMapSequence.Iterator.transform.getter();
    v0[37] = v6;
    v10 = (v5 + *v5);
    v7 = swift_task_alloc();
    v0[38] = v7;
    *v7 = v0;
    v7[1] = closure #1 in ObservableNotificationHandler.init(name:);
    v8 = v0[18];

    return (v10)(v0 + 9, v8);
  }
}

{
  return (*(v0 + 272))();
}

{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v5 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);

  v7 = *(v1 + 264);
  v8 = *(v1 + 256);

  return MEMORY[0x1EEE6DFA0](closure #1 in ObservableNotificationHandler.init(name:), v8, v7);
}

{

  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return MEMORY[0x1EEE6DFA0](closure #1 in ObservableNotificationHandler.init(name:), v1, v2);
}

{
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_25_1();
    (*(v4 + 224))();

    v5 = static MainActor.shared.getter();
    *(v2 + 248) = v5;
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

    v13 = OUTLINED_FUNCTION_0_149(v8, v6);

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }

  else
  {

    v9 = OUTLINED_FUNCTION_3_117();
    v10(v9);
    (*(v3 + 8))(v1, v0);

    v11 = *(v2 + 8);

    return v11();
  }
}

{

  v4 = OUTLINED_FUNCTION_3_117();
  v5(v4);
  (*(v3 + 8))(v1, v0);

  v6 = *(v2 + 8);

  return v6();
}

uint64_t partial apply for closure #1 in ObservableNotificationHandler.init(name:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in ObservableNotificationHandler.init(name:);

  return closure #1 in ObservableNotificationHandler.init(name:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in ObservableNotificationHandler.init(name:)()
{
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t type metadata accessor for ObservableNotificationHandler(uint64_t a1)
{
  result = type metadata singleton initialization cache for ObservableNotificationHandler;
  if (!type metadata singleton initialization cache for ObservableNotificationHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in closure #1 in ObservableNotificationHandler.init(name:)()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  return (*(v0 + 8))();
}

uint64_t ObservableNotificationHandler.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit29ObservableNotificationHandler___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for ObservableNotificationHandler(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t lazy protocol witness table accessor for type ObservableNotificationHandler and conformance ObservableNotificationHandler(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

CABasicAnimation __swiftcall CABasicAnimation.animationCopy()()
{
  [v0 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CABasicAnimation();
  if (swift_dynamicCast())
  {
    [v4 setDelegate_];
    v3 = v4;
  }

  else
  {
    v3 = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result.super.super._attr = v1;
  result.super.super.super.isa = v3;
  result.super.super._flags = v2;
  return result;
}

unint64_t type metadata accessor for CABasicAnimation()
{
  result = lazy cache variable for type metadata for CABasicAnimation;
  if (!lazy cache variable for type metadata for CABasicAnimation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CABasicAnimation);
  }

  return result;
}

uint64_t PreCallStatusViewModel.statusView.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PreCallStatusViewModel.statusView.modify(void *a1))(uint64_t a1, char a2)
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

uint64_t PreCallStatusViewModel.__allocating_init(preCallContextProvider:)(void *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

Swift::Void __swiftcall PreCallStatusViewModel.startObservation()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit22PreCallControlsContextOSgs5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit22PreCallControlsContextOSgs5NeverOGSo9NSRunLoopCGMR);
  v6 = *(v5 - 8);
  v17 = v5;
  v18 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1((v0 + 32), *(v0 + 56));
  v9 = OUTLINED_FUNCTION_77();
  v16 = v10(v9);
  v20 = v16;
  v11 = [objc_opt_self() mainRunLoop];
  v19 = v11;
  v12 = type metadata accessor for NSRunLoop.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit22PreCallControlsContextOSgs5NeverOGMd, &_s7Combine12AnyPublisherVy15ConversationKit22PreCallControlsContextOSgs5NeverOGMR);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop, 0x1E695DFD0);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<PreCallControlsContext?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15ConversationKit22PreCallControlsContextOSgs5NeverOGMd, &_s7Combine12AnyPublisherVy15ConversationKit22PreCallControlsContextOSgs5NeverOGMR, MEMORY[0x1E695BED8]);
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop, 0x1E695DFD0, MEMORY[0x1E696A010]);
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSRunLoop.SchedulerOptions?(v4);

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<PreCallControlsContext?, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit22PreCallControlsContextOSgs5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit22PreCallControlsContextOSgs5NeverOGSo9NSRunLoopCGMR, MEMORY[0x1E695BE98]);
  v13 = v17;
  v14 = Publisher<>.sink(receiveValue:)();

  (*(v18 + 8))(v8, v13);
  *(v1 + 72) = v14;
}

void closure #1 in PreCallStatusViewModel.startObservation()(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v3 == 255)
    {
      PreCallStatusViewModel.clearStatus()();
    }

    else
    {
      outlined copy of PreCallControlsContext(v2);
      if (one-time initialization token for preCall != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, &static Logger.preCall);
      outlined copy of PreCallControlsContext(v2);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      outlined consume of PreCallControlsContext?(v2, v3);
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v12 = v8;
        v13 = v2;
        *v7 = 136315138;
        v14 = v3 & 1;
        outlined copy of PreCallControlsContext(v2);
        v9 = String.init<A>(reflecting:)();
        v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_1BBC58000, v5, v6, "PreCallStatusViewModel: preCallContext: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v8);
        MEMORY[0x1BFB23DF0](v8, -1, -1);
        MEMORY[0x1BFB23DF0](v7, -1, -1);
      }

      v13 = v2;
      v14 = v3 & 1;
      PreCallStatusViewModel.updateStatus(preCallContext:)(&v13);

      outlined consume of PreCallControlsContext?(v2, v3);
    }
  }
}

Swift::Void __swiftcall PreCallStatusViewModel.clearStatus()()
{
  v1 = v0;
  if (one-time initialization token for preCall != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.preCall);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "PreCallStatusViewModel: clear status", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(1, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

void PreCallStatusViewModel.updateStatus(preCallContext:)(uint64_t *a1)
{
  PreCallControlsContext.labels.getter(&v17);
  v3 = v2;
  v5 = v4;
  v7 = v17;
  v6 = v18;
  v9 = v19;
  v8 = v20;
  v10 = v21;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v17 = v7;
    v18 = v6;
    v19 = v9;
    v20 = v8;
    v21 = v10;
    (*(v11 + 40))(&v17, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v1 + 24);
    v14 = swift_getObjectType();
    (*(v13 + 32))(v3, v5, v14, v13);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v1 + 24);
    v16 = swift_getObjectType();
    (*(v15 + 16))(0, v16, v15);
    OUTLINED_FUNCTION_4_109();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_109();
  }
}

void PreCallControlsContext.labels.getter(uint64_t a1)
{
  v4 = *v1;
  if (*(v1 + 8))
  {
    v88 = *v1;
    v89 = 1;
    v5 = [v4 remoteMembers];
    v6 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    OUTLINED_FUNCTION_0_150(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject);
    v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = specialized Set.count.getter();
    if (v8)
    {
      v9 = v8;
      v87 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      v84 = specialized Set.startIndex.getter();
      v85 = v10;
      v86 = v11 & 1;
      if (v9 < 0)
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_123();
      while (1)
      {
        v12 = __OFADD__(v2++, 1);
        if (v12)
        {
          break;
        }

        v13 = v84;
        v14 = v85;
        v15 = v86;
        v16 = OUTLINED_FUNCTION_77();
        specialized Set.subscript.getter(v16, v17, v15, v7);
        v19 = v18;
        v20 = [v18 handle];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v21 = *(v87 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v22 = &v87;
        specialized ContiguousArray._endMutation()();
        if (v6)
        {
          if (!v15)
          {
            goto LABEL_64;
          }

          OUTLINED_FUNCTION_77();
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo20TUConversationMemberC_GMd, &_sSh5IndexVySo20TUConversationMemberC_GMR);
          v26 = Set.Index._asCocoa.modify();
          OUTLINED_FUNCTION_9_73(v26, v27, v28, v29, v30, v31, v32, v33, v79, v80, v81, v82);
          (v21)(v83, 0);
        }

        else
        {
          if (v15)
          {
            goto LABEL_66;
          }

          if (v13 < 0)
          {
            goto LABEL_57;
          }

          OUTLINED_FUNCTION_6_84();
          if (v23 == v12)
          {
            goto LABEL_57;
          }

          OUTLINED_FUNCTION_5_101();
          if ((v24 & 1) == 0)
          {
            goto LABEL_59;
          }

          if (*(v7 + 36) != v14)
          {
            goto LABEL_60;
          }

          OUTLINED_FUNCTION_8_79();
          if (v25)
          {
            OUTLINED_FUNCTION_3_118();
            while (v35 < v34)
            {
              v38 = *v36++;
              v37 = v38;
              v22 += 8;
              ++v35;
              if (v38)
              {
                v39 = OUTLINED_FUNCTION_77();
                outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v39, v40, 0);
                v21 = (v22 + __clz(__rbit64(v37)));
                goto LABEL_24;
              }
            }

            v41 = OUTLINED_FUNCTION_77();
            outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v41, v42, 0);
          }

          else
          {
            OUTLINED_FUNCTION_7_78();
          }

LABEL_24:
          v43 = *(v7 + 36);
          v84 = v21;
          v85 = v43;
          v86 = 0;
        }

        if (v2 == v9)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }
  }

  else
  {
    v88 = *v1;
    v89 = 0;
    v44 = [v4 handles];
    v45 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    OUTLINED_FUNCTION_0_150(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject);
    v46 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = specialized Set.count.getter();
    if (v47)
    {
      v48 = v47;
      v87 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      v84 = specialized Set.startIndex.getter();
      v85 = v49;
      v86 = v50 & 1;
      if (v48 < 0)
      {
        goto LABEL_63;
      }

      OUTLINED_FUNCTION_1_123();
      while (1)
      {
        v12 = __OFADD__(v2++, 1);
        if (v12)
        {
          goto LABEL_55;
        }

        v51 = v84;
        v52 = v85;
        v53 = v86;
        v54 = OUTLINED_FUNCTION_77();
        specialized Set.subscript.getter(v54, v55, v53, v46);
        v57 = v56;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v58 = &v87;
        specialized ContiguousArray._endMutation()();
        if (v45)
        {
          if (!v53)
          {
            goto LABEL_65;
          }

          OUTLINED_FUNCTION_77();
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd, &_sSh5IndexVySo8TUHandleC_GMR);
          v60 = Set.Index._asCocoa.modify();
          OUTLINED_FUNCTION_9_73(v60, v61, v62, v63, v64, v65, v66, v67, v79, v80, v81, v82);
          (v57)(v83, 0);
        }

        else
        {
          if (v53)
          {
            goto LABEL_67;
          }

          if (v51 < 0)
          {
            goto LABEL_56;
          }

          OUTLINED_FUNCTION_6_84();
          if (v23 == v12)
          {
            goto LABEL_56;
          }

          OUTLINED_FUNCTION_5_101();
          if ((v59 & 1) == 0)
          {
            goto LABEL_58;
          }

          if (*(v46 + 36) != v52)
          {
            goto LABEL_61;
          }

          OUTLINED_FUNCTION_8_79();
          if (v25)
          {
            OUTLINED_FUNCTION_3_118();
            while (v69 < v68)
            {
              v72 = *v70++;
              v71 = v72;
              v58 += 8;
              ++v69;
              if (v72)
              {
                v73 = OUTLINED_FUNCTION_77();
                outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v73, v74, 0);
                v57 = (v58 + __clz(__rbit64(v71)));
                goto LABEL_49;
              }
            }

            v75 = OUTLINED_FUNCTION_77();
            outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v75, v76, 0);
          }

          else
          {
            OUTLINED_FUNCTION_7_78();
          }

LABEL_49:
          v77 = *(v46 + 36);
          v84 = v57;
          v85 = v77;
          v86 = 0;
        }

        if (v2 == v48)
        {
LABEL_51:

          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v84, v85, v86);
          v78 = v87;
          a1 = v79;
          goto LABEL_53;
        }
      }
    }
  }

  v78 = MEMORY[0x1E69E7CC0];
LABEL_53:
  PreCallControlsContext.getLabel(from:)(a1, v78);
}

uint64_t PreCallStatusViewModel.deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return v0;
}

uint64_t PreCallStatusViewModel.__deallocating_deinit()
{
  PreCallStatusViewModel.deinit();

  return swift_deallocClassInstance();
}

Class PreCallControlsContext.getLabel(from:)(uint64_t a1, uint64_t a2)
{
  v51 = type metadata accessor for PersonNameComponents();
  v4 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultSettings];
  v8 = [objc_allocWithZone(MEMORY[0x1E695D0C8]) initWithSettings_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUContactsDataProviderFetchRequest, 0x1E69D8B08);

  v10 = TUContactsDataProviderFetchRequest.__allocating_init(handles:isConversation:)(v9, 1);
  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 contactStore];

  v13 = [objc_allocWithZone(MEMORY[0x1E69D8B00]) initWithContactsDataSource_];
  v14 = [v13 executeFetchRequest_];

  v52 = a2;
  v15 = specialized Array.count.getter();
  if (!v15)
  {
LABEL_18:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact, 0x1E695CD58);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 setContacts_];

    v33 = [v14 localizedName];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    *a1 = [v8 view];
    *(a1 + 8) = vdupq_n_s64(0x4052000000000000uLL);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v37._countAndFlagsBits = v34;
    v37._object = v36;
    v38 = NSAttributedString.__allocating_init(string:)(v37).super.isa;
    v39 = [objc_opt_self() conversationKit];
    v57._object = 0xE000000000000000;
    v40.value._countAndFlagsBits = 0x61737265766E6F43;
    v40.value._object = 0xEF74694B6E6F6974;
    v41._object = 0x80000001BC50CE30;
    v41._countAndFlagsBits = 0xD000000000000014;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v57._countAndFlagsBits = 0;
    v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v40, v39, v42, v57);

    NSAttributedString.__allocating_init(string:)(v43);
    return v38;
  }

  v16 = v15;
  v56 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v16 & 0x8000000000000000) == 0)
  {
    v44 = v14;
    v45 = v10;
    v46 = a1;
    v47 = v8;
    v18 = 0;
    v48 = (v4 + 8);
    v49 = v52 & 0xC000000000000001;
    v53 = v6;
    v50 = v16;
    do
    {
      if (v49)
      {
        v19 = MEMORY[0x1BFB22010](v18, v52);
      }

      else
      {
        v19 = *(v52 + 8 * v18 + 32);
      }

      v20 = one-time initialization token for faceTime;
      v21 = v19;
      if (v20 != -1)
      {
        swift_once();
      }

      ParticipantContactDetailsCache.contactDetails(for:nickname:)();
      v22 = v54;
      v23 = v54;

      PersonNameComponents.init()();
      if (v22)
      {
        v24 = [v23 givenName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        PersonNameComponents.givenName.setter();
        v25 = [v23 familyName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        PersonNameComponents.givenName.setter();
      }

      PersonNameComponents.familyName.setter();
      if (one-time initialization token for initials != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v26 = static NSPersonNameComponentsFormatter.initials;
      v27 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v28 = [v26 stringFromPersonNameComponents_];

      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      (*v48)(v53, v51);
      v54 = v29;
      v55 = v31;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.localizedUppercase.getter();

      if (!v22)
      {
        [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];
      }

      ++v18;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v50 != v18);
    a1 = v46;
    v8 = v47;
    v14 = v44;
    v10 = v45;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

id TUContactsDataProviderFetchRequest.__allocating_init(handles:isConversation:)(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithHandles:isa isConversation:a2 & 1];

  return v5;
}

uint64_t specialized PreCallStatusViewModel.__allocating_init(preCallContextProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v11 = specialized PreCallStatusViewModel.init(preCallContextProvider:)(v9, v10, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v11;
}

uint64_t specialized PreCallStatusViewModel.init(preCallContextProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 72) = 0;
  outlined init with take of TapInteractionHandler(&v9, a2 + 32);
  return a2;
}

void outlined consume of CallControlsStatusView.LeadingView(id a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)();
  }

  else
  {
    v6 = *v3;

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v6);
  }
}

uint64_t key path getter for VideoMessageController.state : VideoMessageController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t VideoMessageController.state.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

uint64_t VideoMessageController.$state.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  v3 = OUTLINED_FUNCTION_25_0(v2, v8);
  v4(v3);
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController__state, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMd, &_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_44_0();
  return v6(v5);
}

uint64_t VideoMessageController.mostRecentActiveConversation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_mostRecentActiveConversation;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return outlined init with copy of (CGFloat, AutoplayCandidate)(v1 + v3, a1, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
}

uint64_t VideoMessageController.mostRecentActiveConversation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_mostRecentActiveConversation;
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_mostRecentActiveConversation, v5);
  outlined assign with take of Conversation?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of Conversation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t key path getter for VideoMessageController.mostRecentLocalHandle : VideoMessageController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x138))();
  *a2 = result;
  return result;
}

uint64_t key path setter for VideoMessageController.mostRecentLocalHandle : VideoMessageController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x140);
  v4 = *a1;
  return v3(v2);
}

void *VideoMessageController.mostRecentLocalHandle.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_mostRecentLocalHandle;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void VideoMessageController.mostRecentLocalHandle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_mostRecentLocalHandle;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for VideoMessageController.currentVideoMessagePlayerViewModel : VideoMessageController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x150))();
  *a2 = result;
  return result;
}

uint64_t key path setter for VideoMessageController.currentVideoMessagePlayerViewModel : VideoMessageController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x158);
  v4 = *a1;
  return v3(v2);
}

uint64_t VideoMessageController.currentVideoMessagePlayerViewModel.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GGMd, &_s7Combine10PublishersO6FilterVy_AA9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GGMR);
  v6 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))(v7);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<VideoMessageController.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMR, MEMORY[0x1E695C068]);
  Publisher.filter(_:)();
  (*(v2 + 8))(v4, v1);
  swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<Published<VideoMessageController.State>.Publisher> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GGMd, &_s7Combine10PublishersO6FilterVy_AA9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GGMR, MEMORY[0x1E695BDE0]);
  Publisher<>.sink(receiveValue:)();

  (*(v6 + 8))(v9, v5);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t closure #1 in VideoMessageController.currentVideoMessagePlayerViewModel.didset(unsigned __int8 *a1)
{
  v1 = 1;
  switch(*a1)
  {
    case 8u:
      break;
    default:
      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
      break;
  }

  return v1 & 1;
}

uint64_t closure #2 in VideoMessageController.currentVideoMessagePlayerViewModel.didset(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v6 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v9 = static OS_dispatch_queue.main.getter();
  aBlock[4] = partial apply for closure #1 in closure #2 in VideoMessageController.currentVideoMessagePlayerViewModel.didset;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_163;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v8, v5, v10);
  _Block_release(v10);

  (*(v13 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v12);
}

void closure #1 in closure #2 in VideoMessageController.currentVideoMessagePlayerViewModel.didset(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xF8))(4);
  }
}

void VideoMessageController.currentVideoMessagePlayerViewModel.setter(void *a1)
{
  OUTLINED_FUNCTION_3_12(a1);
  swift_unknownObjectWeakAssign();
  VideoMessageController.currentVideoMessagePlayerViewModel.didset();
}

void (*VideoMessageController.currentVideoMessagePlayerViewModel.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_currentVideoMessagePlayerViewModel;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_30_2(v1 + v4, v3);
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return VideoMessageController.currentVideoMessagePlayerViewModel.modify;
}

void VideoMessageController.currentVideoMessagePlayerViewModel.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    VideoMessageController.currentVideoMessagePlayerViewModel.didset();
  }

  free(v3);
}

uint64_t key path getter for VideoMessageController.isVideoSensitive : VideoMessageController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x168))();
  *a2 = result & 1;
  return result;
}

uint64_t VideoMessageController.isVideoSensitive.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_isVideoSensitive;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t VideoMessageController.isVideoSensitive.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_isVideoSensitive;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t key path getter for VideoMessageController.viewStateReadyForVideoMessageRecording : VideoMessageController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A0))();
  *a2 = result & 1;
  return result;
}

uint64_t VideoMessageController.viewStateReadyForVideoMessageRecording.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_viewStateReadyForVideoMessageRecording;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t VideoMessageController.viewStateReadyForVideoMessageRecording.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t key path getter for VideoMessageController.isVideoMessagingEnabled : VideoMessageController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1B8))();
  *a2 = result & 1;
  return result;
}

uint64_t VideoMessageController.isVideoMessagingEnabled.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

void VideoMessageController.viewStateReadyForVideoMessageRecording.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    VideoMessageController.updateState()();
  }
}

void VideoMessageController.callStateReadyForVideoMessageRecording.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_callCenter + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_callCenter), *(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_callCenter + 24));
  v2 = OUTLINED_FUNCTION_28_0();
  v4 = v3(v2, v1);
  v5 = (v4 + 40);
  v6 = -*(v4 + 16);
  v7 = -1;
  while (1)
  {
    if (v6 + v7 == -1)
    {
      goto LABEL_9;
    }

    if (++v7 >= *(v4 + 16))
    {
      break;
    }

    v8 = *v5;
    swift_getObjectType();
    v9 = *(v8 + 208);
    swift_unknownObjectRetain();
    v10 = OUTLINED_FUNCTION_1_5();
    if (v9(v10) == 1 || (v11 = OUTLINED_FUNCTION_1_5(), v9(v11) == 3))
    {
      swift_unknownObjectRelease();
LABEL_9:

      OUTLINED_FUNCTION_30_0();
      return;
    }

    v5 += 2;
    v12 = OUTLINED_FUNCTION_1_5();
    v13 = v9(v12);
    swift_unknownObjectRelease();
    if (v13 == 2)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t VideoMessageController.mediaType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_callCenter + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_callCenter), *(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_callCenter + 24));
  v2 = OUTLINED_FUNCTION_28_0();
  v4 = v3(v2, v1);
  v5 = [v4 isPreviewRunning];

  if (v5)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t VideoMessageController.currentRecordingUUID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_currentRecordingUUID;
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_currentRecordingUUID, v5);
  outlined assign with copy of UUID?(a1, v1 + v3);
  swift_endAccess();
  VideoMessageController.updateState()();
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t key path setter for VideoMessageController.latestVideoMessageURL : VideoMessageController(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, &v6 - v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return VideoMessageController.latestVideoMessageURL.setter(v4);
}

uint64_t VideoMessageController.latestVideoMessageURL.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t VideoMessageController.latestVideoMessageURL.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = v1;
  static Published.subscript.setter();
  VideoMessageController.updateState()();
  v8 = OUTLINED_FUNCTION_44_0();
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, v9, &_s10Foundation3URLVSgMR);
}

uint64_t key path setter for VideoMessageController.$state : VideoMessageController(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = OUTLINED_FUNCTION_1_5();
  v12(v11);
  return a7(v10);
}

uint64_t VideoMessageController.$latestVideoMessageURL.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation3URLVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation3URLVSg_GMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  v3 = OUTLINED_FUNCTION_25_0(v2, v8);
  v4(v3);
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController__latestVideoMessageURL, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation3URLVSgGMd, &_s7Combine9PublishedVy10Foundation3URLVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_44_0();
  return v6(v5);
}

uint64_t VideoMessageController.latestVideoMessageSandboxURL.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_latestVideoMessageSandboxURL);
  if (v5)
  {
    v6 = [v5 URL];
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
  return VideoMessageController.latestVideoMessageURL.setter(v4);
}

void VideoMessageController.latestVideoMessageSandboxURL.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_latestVideoMessageSandboxURL);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_latestVideoMessageSandboxURL) = a1;
  v3 = a1;

  VideoMessageController.latestVideoMessageSandboxURL.didset();
}

void VideoMessageController.momentsController.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController__momentsController;
  OUTLINED_FUNCTION_3_12(a1);
  v3 = *(v1 + v2);
  if (v3)
  {
    goto LABEL_6;
  }

  v4 = [objc_opt_self() sharedInstance];
  v5 = *(v1 + v2);
  *(v1 + v2) = v4;
  v6 = v4;

  if (v6)
  {
    [v6 addDelegate_];
  }

  v7 = *(v1 + v2);
  if (v7)
  {
    v7;
    v3 = 0;
LABEL_6:
    v8 = v3;
    return;
  }

  __break(1u);
}

void VideoMessageController.ignoresStateUpdates.didset(uint64_t result)
{
  if ((result & 1) != 0 && (*(v1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_ignoresStateUpdates) & 1) == 0)
  {
    VideoMessageController.updateState()();
  }
}

void VideoMessageController.ignoresStateUpdates.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_ignoresStateUpdates);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_ignoresStateUpdates) = a1;
  VideoMessageController.ignoresStateUpdates.didset(v2);
}

void VideoMessageController.countdownSink.setter(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_countdownSink) = a1;

  v2 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_countdownShown;
  swift_beginAccess();
  *(v1 + v2) = 1;
}

uint64_t key path getter for VideoMessageController.countdownShown : VideoMessageController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2F0))();
  *a2 = result & 1;
  return result;
}

uint64_t VideoMessageController.countdownShown.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_countdownShown;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t VideoMessageController.countdownShown.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_countdownShown;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

char *VideoMessageController.__allocating_init(callCenter:momentsControllerType:notificationCenter:)(void *a1, uint64_t a2, void *a3)
{
  outlined init with copy of IDSLookupManager(a1, v17);
  v6 = *(v3 + 776);
  v7 = a3;
  v8 = v6(v17, v7);
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = v8;
  v11 = [v9 init];
  v12 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController__momentsController;
  swift_beginAccess();
  v13 = *&v10[v12];
  *&v10[v12] = v11;

  swift_beginAccess();
  v14 = *&v10[v12];
  if (v14)
  {
    swift_endAccess();
    v15 = v14;

    [v15 addDelegate_];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_endAccess();
  }

  return v10;
}

Swift::Void __swiftcall VideoMessageController.playSentVideoMessageTone()()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v41[1] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v41 - v11;
  v13 = [objc_opt_self() conversationKit];
  v14 = outlined bridged method (mbbnn) of @objc NSBundle.url(forResource:withExtension:)(0xD000000000000015, 0x80000001BC50CE50, 6709603, 0xE300000000000000, v13);

  if (v14)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = OUTLINED_FUNCTION_1_5();
    v16(v15);
    v17 = objc_opt_self();
    v18 = [v17 sharedInstance];
    v19 = *MEMORY[0x1E6958068];
    v20 = *MEMORY[0x1E6958130];
    v41[0] = 0;
    v21 = [v18 setCategory:v19 mode:v20 options:2 error:v41];

    if (v21)
    {
      v22 = v41[0];
      v23 = [v17 sharedInstance];
      v41[0] = 0;
      v24 = [v23 setActive:1 error:v41];

      v25 = v41[0];
      if (v24)
      {
        (*(v4 + 16))(v8, v12, v2);
        objc_allocWithZone(MEMORY[0x1E6958448]);
        v26 = v25;
        v27 = @nonobjc AVAudioPlayer.init(contentsOf:)(v8);
        v38 = *(v1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_videoMessageSendSoundPlayer);
        *(v1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_videoMessageSendSoundPlayer) = v27;
        v39 = v27;

        if (v39)
        {
          [v39 play];
        }

LABEL_10:
        (*(v4 + 8))(v12, v2);
        goto LABEL_11;
      }

      v30 = v41[0];
      v29 = _convertNSErrorToError(_:)();
    }

    else
    {
      v28 = v41[0];
      v29 = _convertNSErrorToError(_:)();
    }

    swift_willThrow();
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v31 = static OS_os_log.conversationKit;
    v32 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1BC4BA940;
    v41[0] = v29;
    v34 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v35 = String.init<A>(reflecting:)();
    v37 = v36;
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v33 + 32) = v35;
    *(v33 + 40) = v37;
    os_log(_:dso:log:type:_:)("Error playing send tone: %@", 27, 2, &dword_1BBC58000, v31, v32, v33);

    goto LABEL_10;
  }

LABEL_11:
  OUTLINED_FUNCTION_30_0();
}

id VideoMessageController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VideoMessageController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoMessageController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int VideoMessageController.UnrecoverableErrors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VideoMessageController.UnrecoverableErrors(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  VideoMessageController.UnrecoverableErrors.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

Swift::Int VideoMessageController.VideoMessageError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VideoMessageController.VideoMessageError(uint64_t a1)
{
  Hasher.init(_seed:)();
  VideoMessageController.VideoMessageError.hash(into:)();
  return Hasher._finalize()();
}

void VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v51 = v5;
  v52 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v53 = v48 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGGMR);
  OUTLINED_FUNCTION_1();
  v49 = v12;
  v50 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v48 - v18;
  OUTLINED_FUNCTION_20();
  v20 = swift_allocObject();
  *(v20 + 16) = v7;
  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
  }

  v21 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v21, &static Logger.videoMessaging);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v48[2] = v20 + 16;
  if (v24)
  {
    v25 = OUTLINED_FUNCTION_42();
    *v25 = 134217984;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    *(v25 + 4) = *(v20 + 16);

    _os_log_impl(&dword_1BBC58000, v22, v23, "Starting countdown %ld", v25, 0xCu);
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTimer, 0x1E695DFF0);
  v26 = [objc_opt_self() currentRunLoop];
  type metadata accessor for NSRunLoop.SchedulerOptions();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v54 = v31;
  type metadata accessor for NSTimer.TimerPublisher();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_4(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x1E6969F70], MEMORY[0x1E6969F60]);
  v32 = ConnectablePublisher.autoconnect()();
  v48[1] = v32;

  v54 = v32;
  OUTLINED_FUNCTION_37_0();
  v33 = swift_allocObject();
  v33[2] = v20;
  v33[3] = v3;
  v33[4] = v1;

  v34 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, MEMORY[0x1E695BCA0]);
  OUTLINED_FUNCTION_3_0();
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  OUTLINED_FUNCTION_20();
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  v37 = v52;
  v36[2] = v20;
  v36[3] = v37;
  v36[4] = v51;
  v36[5] = v35;
  v36[6] = v34;
  v36[7] = v1;
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.Autoconnect<NSTimer.TimerPublisher>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGGMR, MEMORY[0x1E695BCC0]);

  v38 = v50;
  v39 = Publisher<>.sink(receiveValue:)();

  (*(v49 + 8))(v15, v38);
  VideoMessageController.countdownSink.setter(v39);
  VideoMessageController.updateState()();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v37(*(v20 + 16));
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  OUTLINED_FUNCTION_20();
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  OUTLINED_FUNCTION_28_0();

  v45 = static MainActor.shared.getter();
  OUTLINED_FUNCTION_37_0();
  v46 = swift_allocObject();
  v47 = MEMORY[0x1E69E85E0];
  v46[2] = v45;
  v46[3] = v47;
  v46[4] = v44;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:)(uint64_t a1, void (*a2)(void, __n128))
{
  swift_beginAccess();
  if (*(a1 + 16))
  {
    (a2)(0);
  }
}

void closure #2 in VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  swift_beginAccess();
  v9 = *(a2 + 16);
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v9 - 1;
    a3();
    swift_beginAccess();
    if (*(a2 + 16) <= 0)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        VideoMessageController.countdownSink.setter(0);
      }

      swift_beginAccess();
      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        v13 = v12;
        VideoMessageController.updateState()();
      }

      a6(1);
    }
  }
}

uint64_t closure #3 in VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v6;
  v4[17] = v5;

  return MEMORY[0x1EEE6DFA0](closure #3 in VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:), v6, v5);
}

uint64_t closure #3 in VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 144) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 152) = v2;
    *v2 = v0;
    v2[1] = closure #3 in VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:);

    return VideoMessageController.prewarm()();
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v4();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (v0)
  {
    v7 = *(v3 + 128);
    v8 = *(v3 + 136);
    v9 = closure #3 in VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:);
  }

  else
  {

    v7 = *(v3 + 128);
    v8 = *(v3 + 136);
    v9 = closure #3 in VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 144);

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = *(Strong + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_countdownSink), , v3, v4))
  {

    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      VideoMessageController.countdownSink.setter(0);
    }

    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    v8 = *(v0 + 160);
    if (v7)
    {
      v9 = v7;
      VideoMessageController.updateState()();

      goto LABEL_9;
    }

    v10 = *(v0 + 160);
  }

  else
  {
    v10 = *(v0 + 160);
  }

LABEL_9:
  OUTLINED_FUNCTION_13();

  return v11();
}

uint64_t VideoMessageController.prewarm()()
{
  OUTLINED_FUNCTION_24_0();
  v1[18] = v0;
  type metadata accessor for MainActor();
  v1[19] = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_56_0();
  v1[20] = v2;
  v1[21] = v3;
  v4 = OUTLINED_FUNCTION_55_12();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_9();
  v2 = v1[18];
  v3 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_warmedMomentsController;
  v1[22] = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_warmedMomentsController;
  if (*(v2 + v3))
  {

    OUTLINED_FUNCTION_5_102();

    return v4();
  }

  else
  {
    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
    }

    v6 = type metadata accessor for Logger();
    v1[23] = __swift_project_value_buffer(v6, &static Logger.videoMessaging);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v9);
      _os_log_impl(&dword_1BBC58000, v7, v8, "Prewarming audio client", v0, 2u);
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_62_9();
    v10 = v1[18];

    VideoMessageController.momentsController.getter(v11);
    OUTLINED_FUNCTION_53_13();
    v1[24] = v12;
    v1[2] = v13;
    v14 = OUTLINED_FUNCTION_344();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    OUTLINED_FUNCTION_30_22(v15);
    OUTLINED_FUNCTION_368(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_193();
    v1[13] = v16;
    v1[14] = v14;
    [v10 prewarmAudioClientWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v8);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  OUTLINED_FUNCTION_43_15();
  v5 = *(v4 + 168);
  v7 = *(v6 + 160);
  if (v8)
  {
    v9 = VideoMessageController.prewarm();
  }

  else
  {
    v9 = VideoMessageController.prewarm();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[18];

  *(v3 + v2) = 1;
  VideoMessageController.updateState()();
  OUTLINED_FUNCTION_5_102();

  return v4();
}

{
  OUTLINED_FUNCTION_48();
  v22 = v0;
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);

  swift_willThrow();

  v4 = v3;
  v5 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_111_3();
  if (OUTLINED_FUNCTION_112_2())
  {
    v6 = *(v0 + 200);
    OUTLINED_FUNCTION_42();
    v21 = OUTLINED_FUNCTION_21_4();
    OUTLINED_FUNCTION_96_6(4.8149e-34);
    *(v1 + 80) = v6;
    v7 = v6;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = OUTLINED_FUNCTION_91_6(v8);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v21);
    OUTLINED_FUNCTION_102_1();
    *(v3 + 4) = v1 + 80;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_26();
  }

  v16 = *(v0 + 200);
  v17 = lazy protocol witness table accessor for type VideoMessageController.UnrecoverableErrors and conformance VideoMessageController.UnrecoverableErrors();
  OUTLINED_FUNCTION_19_6(&type metadata for VideoMessageController.UnrecoverableErrors, v17);
  *v18 = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_13();

  return v19();
}

uint64_t VideoMessageController.start()()
{
  OUTLINED_FUNCTION_24_0();
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v2);
  v1[20] = OUTLINED_FUNCTION_109_4();
  v3 = type metadata accessor for UUID();
  v1[21] = v3;
  OUTLINED_FUNCTION_9_0(v3);
  v1[22] = v4;
  v5 = OUTLINED_FUNCTION_74();
  v1[24] = OUTLINED_FUNCTION_103_1(v5);
  v1[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[26] = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_56_0();
  v1[27] = v6;
  v1[28] = v7;
  v8 = OUTLINED_FUNCTION_55_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 240) = v0;

  v5 = *(v2 + 224);
  v6 = *(v2 + 216);
  if (v0)
  {
    v7 = VideoMessageController.start();
  }

  else
  {
    v7 = VideoMessageController.start();
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  OUTLINED_FUNCTION_48();
  v20 = v0;
  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
  }

  v1 = *(v0 + 152);
  v2 = type metadata accessor for Logger();
  *(v0 + 248) = OUTLINED_FUNCTION_52(v2, &static Logger.videoMessaging);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_42();
    v19 = OUTLINED_FUNCTION_38_3();
    *v3 = 136315138;
    *(v0 + 280) = VideoMessageController.mediaType.getter();
    v6 = String.init<A>(reflecting:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v19);

    *(v3 + 1) = v8;
    OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v9, v10, "Starting message recording with media type %s");
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_62_9();
  v11 = *(v0 + 152);
  v12 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_hasActiveOrPendingRecordingSession;
  *(v0 + 256) = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_hasActiveOrPendingRecordingSession;
  *(v11 + v12) = 1;
  VideoMessageController.updateState()();
  VideoMessageController.momentsController.getter(v13);
  v15 = v14;
  *(v0 + 264) = v14;
  v16 = VideoMessageController.mediaType.getter();
  *(v0 + 16) = v0;
  OUTLINED_FUNCTION_28_37();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation4UUIDVs5Error_pGMd, &_sSccy10Foundation4UUIDVs5Error_pGMR);
  OUTLINED_FUNCTION_30_22(v17);
  OUTLINED_FUNCTION_368(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_27_33();
  [v15 startRecordingMessageWithMediaType:v16 completion:v5];

  return MEMORY[0x1EEE6DEC8](v4);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = *(v3 + 48);
  OUTLINED_FUNCTION_43_15();
  v5 = *(v4 + 224);
  v7 = *(v6 + 216);
  if (v8)
  {
    v9 = VideoMessageController.start();
  }

  else
  {
    v9 = VideoMessageController.start();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_48();
  v22 = v0;
  v2 = v0[33];
  v3 = v0[34];

  swift_willThrow();

  v4 = v3;
  v5 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_111_3();
  if (OUTLINED_FUNCTION_112_2())
  {
    v6 = v0[34];
    OUTLINED_FUNCTION_42();
    v21 = OUTLINED_FUNCTION_21_4();
    OUTLINED_FUNCTION_96_6(4.8149e-34);
    *(v1 + 144) = v6;
    v7 = v6;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = OUTLINED_FUNCTION_91_6(v8);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v21);
    OUTLINED_FUNCTION_102_1();
    *(v3 + 4) = v1 + 144;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_26();
  }

  v16 = v0[34];
  *(v0[19] + v0[32]) = 0;
  VideoMessageController.updateState()();
  v17 = lazy protocol witness table accessor for type VideoMessageController.UnrecoverableErrors and conformance VideoMessageController.UnrecoverableErrors();
  OUTLINED_FUNCTION_19_6(&type metadata for VideoMessageController.UnrecoverableErrors, v17);
  *v18 = 1;
  swift_willThrow();

  OUTLINED_FUNCTION_13();

  return v19();
}

uint64_t VideoMessageController.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_86_2();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_48();
  a16 = v18;
  v21 = *((*MEMORY[0x1E69E7D40] & **(v18 + 152)) + 0xF0);
  v22 = v21();
  v23 = VideoMessageController.State.rawValue.getter(v22);
  v25 = v23 == 0xD000000000000014 && 0x80000001BC4F1C50 == v24;
  if (v25)
  {
    goto LABEL_23;
  }

  v26 = OUTLINED_FUNCTION_80_3(v23);

  if (v26)
  {
    goto LABEL_24;
  }

  v28 = (v21)(v27);
  VideoMessageController.State.rawValue.getter(v28);
  OUTLINED_FUNCTION_99_3();
  if (v25 && v29 == 0xE500000000000000)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_30_20();
  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
    goto LABEL_24;
  }

  v33 = (v21)(v32);
  v34 = VideoMessageController.State.rawValue.getter(v33);
  if (v34 == 0xD000000000000014 && 0x80000001BC4F1C50 == v35)
  {
LABEL_23:
  }

  else
  {
    OUTLINED_FUNCTION_80_3(v34);
    OUTLINED_FUNCTION_90();
    if ((0xBC4F1C50 & 1) == 0)
    {

      if (one-time initialization token for videoMessaging != -1)
      {
        OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
      }

      v37 = *(v18 + 152);
      v38 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v38, &static Logger.videoMessaging);
      v39 = v37;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_38_3();
        OUTLINED_FUNCTION_92_4();
        *v39 = 136315138;
        *(v18 + 284) = v21();
        v42 = String.init<A>(reflecting:)();
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &a9);

        *(v39 + 1) = v44;
        OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v45, v46, "Attempted to start video message recording in invalid state %s");
        OUTLINED_FUNCTION_28_2();
        OUTLINED_FUNCTION_4_4();
      }

      OUTLINED_FUNCTION_5_102();
      OUTLINED_FUNCTION_69();

      return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10);
    }
  }

LABEL_24:
  v56 = *(v18 + 152);
  if (*(v56 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_warmedMomentsController))
  {
    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
      v56 = *(v18 + 152);
    }

    v57 = type metadata accessor for Logger();
    *(v18 + 248) = OUTLINED_FUNCTION_52(v57, &static Logger.videoMessaging);
    v58 = v56;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v59, v60))
    {
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_38_3();
      OUTLINED_FUNCTION_92_4();
      *v58 = 136315138;
      *(v18 + 280) = VideoMessageController.mediaType.getter();
      v61 = String.init<A>(reflecting:)();
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &a9);

      *(v58 + 1) = v63;
      OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v64, v65, "Starting message recording with media type %s");
      OUTLINED_FUNCTION_28_2();
      OUTLINED_FUNCTION_4_4();
    }

    OUTLINED_FUNCTION_62_9();
    v66 = *(v18 + 152);
    v67 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_hasActiveOrPendingRecordingSession;
    *(v18 + 256) = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_hasActiveOrPendingRecordingSession;
    *(v66 + v67) = 1;
    VideoMessageController.updateState()();
    VideoMessageController.momentsController.getter(v68);
    v70 = v69;
    *(v18 + 264) = v69;
    v71 = VideoMessageController.mediaType.getter();
    *(v18 + 16) = v18;
    OUTLINED_FUNCTION_28_37();
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation4UUIDVs5Error_pGMd, &_sSccy10Foundation4UUIDVs5Error_pGMR);
    OUTLINED_FUNCTION_30_22(v72);
    OUTLINED_FUNCTION_368(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_27_33();
    [v70 startRecordingMessageWithMediaType:v71 completion:v60];
    OUTLINED_FUNCTION_69();

    return MEMORY[0x1EEE6DEC8](v73);
  }

  else
  {
    v75 = swift_task_alloc();
    *(v18 + 232) = v75;
    *v75 = v18;
    v75[1] = VideoMessageController.start();
    OUTLINED_FUNCTION_69();

    return VideoMessageController.prewarm()();
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSUUID?, @unowned NSError?) -> () with result type UUID(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v9 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)();
  }

  else
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v8, v7);
  }
}

uint64_t VideoMessageController.pause()()
{
  OUTLINED_FUNCTION_24_0();
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_28_0();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](VideoMessageController.pause(), v3, v2);
}

{
  OUTLINED_FUNCTION_24_0();

  VideoMessageController.countdownSink.setter(0);
  VideoMessageController.updateState()();
  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t VideoMessageController.stop()()
{
  OUTLINED_FUNCTION_24_0();
  v1[22] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v2);
  v3 = OUTLINED_FUNCTION_74();
  v1[24] = OUTLINED_FUNCTION_103_1(v3);
  v4 = type metadata accessor for UUID();
  v1[25] = v4;
  OUTLINED_FUNCTION_9_0(v4);
  v1[26] = v5;
  v1[27] = OUTLINED_FUNCTION_74();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[30] = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_56_0();
  v1[31] = v6;
  v1[32] = v7;
  v8 = OUTLINED_FUNCTION_55_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  v64 = v0;
  v3 = v0[25];
  OUTLINED_FUNCTION_3_0();
  v4 = swift_beginAccess();
  OUTLINED_FUNCTION_105_1(v4, v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_3_84();
  if (v22)
  {
    v6 = v0[24];

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v7, &static Logger.videoMessaging);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_22_0(v9))
    {
      v10 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v10);
      OUTLINED_FUNCTION_112_0();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_51_16();

    OUTLINED_FUNCTION_5_102();
    OUTLINED_FUNCTION_13_3();

    __asm { BRAA            X1, X16 }
  }

  v18 = OUTLINED_FUNCTION_75_9();
  v20 = v19(v18);
  v21 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xF0))(v20);
  VideoMessageController.State.rawValue.getter(v21);
  OUTLINED_FUNCTION_99_3();
  if (v22)
  {
    v24 = v23 == 0xEF676E6964726F63;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
  }

  else
  {
    OUTLINED_FUNCTION_30_20();
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_90();
  }

  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
  }

  v25 = v0[25];
  v26 = v0[26];
  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, &static Logger.videoMessaging);
  v29 = OUTLINED_FUNCTION_42_21(v28);
  v2(v29);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = OUTLINED_FUNCTION_22_0(v31);
  v33 = v0[28];
  if (v32)
  {
    v1 = v0[23];
    OUTLINED_FUNCTION_42();
    v63[0] = OUTLINED_FUNCTION_21_4();
    v34 = OUTLINED_FUNCTION_45_17(4.8149e-34);
    v35 = (v2)(v34);
    OUTLINED_FUNCTION_6_85(v35, v36, v37, v38, v39, v40, v41, v42, v62, v63[0], v63[0], v63[1], v63[2], v63[3], v63[4], v63[5], v63[6], v63[7]);
    OUTLINED_FUNCTION_61_8();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v43 = OUTLINED_FUNCTION_12_59();
    v1(v43);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v2, v63);
    OUTLINED_FUNCTION_81();
    *(v25 + 4) = v33;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
    OUTLINED_FUNCTION_44_15();
    OUTLINED_FUNCTION_26();
  }

  else
  {

    v49 = OUTLINED_FUNCTION_12_59();
    v1(v49);
  }

  OUTLINED_FUNCTION_62_9();
  v0[36] = v1;
  VideoMessageController.momentsController.getter(v50);
  v0[37] = v51;
  UUID._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_53_13();
  v0[38] = v52;
  v0[2] = v53;
  v54 = OUTLINED_FUNCTION_344();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  OUTLINED_FUNCTION_30_22(v55);
  OUTLINED_FUNCTION_368(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_193();
  v0[13] = v56;
  v0[14] = v54;
  v57 = OUTLINED_FUNCTION_46_16();
  [v57 v58];
  OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DEC8](v59);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 312) = *(v3 + 48);
  OUTLINED_FUNCTION_43_15();
  v5 = *(v4 + 256);
  v7 = *(v6 + 248);
  if (v8)
  {
    v9 = VideoMessageController.stop();
  }

  else
  {
    v9 = VideoMessageController.stop();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t VideoMessageController.stop()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_36_3();
  a23 = v30;
  a24 = v31;
  OUTLINED_FUNCTION_54_12();
  a22 = v25;
  OUTLINED_FUNCTION_100_2();
  swift_willThrow();

  v32 = v26;
  v33 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_111_3();
  if (OUTLINED_FUNCTION_112_2())
  {
    v34 = *(v25 + 312);
    OUTLINED_FUNCTION_42();
    a12 = OUTLINED_FUNCTION_21_4();
    OUTLINED_FUNCTION_96_6(4.8149e-34);
    *(v28 + 168) = v34;
    v28 += 168;
    v35 = v34;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v37 = OUTLINED_FUNCTION_91_6(v36);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &a12);
    OUTLINED_FUNCTION_102_1();
    *(v26 + 4) = v28;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_26();
  }

  v47 = OUTLINED_FUNCTION_65_10(v44, v45, v46);
  OUTLINED_FUNCTION_19_6(&type metadata for VideoMessageController.UnrecoverableErrors, v47);
  *v48 = 2;
  swift_willThrow();

  v29(v24, v28);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12_4();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t VideoMessageController.save()()
{
  OUTLINED_FUNCTION_24_0();
  v1[22] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v2);
  v3 = OUTLINED_FUNCTION_74();
  v1[24] = OUTLINED_FUNCTION_103_1(v3);
  v4 = type metadata accessor for UUID();
  v1[25] = v4;
  OUTLINED_FUNCTION_9_0(v4);
  v1[26] = v5;
  v1[27] = OUTLINED_FUNCTION_74();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[30] = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_56_0();
  v1[31] = v6;
  v1[32] = v7;
  v8 = OUTLINED_FUNCTION_55_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  v65 = v0;
  v3 = v0[24];
  v4 = v0[25];
  OUTLINED_FUNCTION_3_0();
  v5 = swift_beginAccess();
  OUTLINED_FUNCTION_105_1(v5, v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_3_84();
  if (v23)
  {
    v7 = v0[24];

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
    }

    v8 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v8, &static Logger.videoMessaging);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_22_0(v10))
    {
      v11 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v11);
      OUTLINED_FUNCTION_112_0();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_26();
    }

LABEL_8:
    OUTLINED_FUNCTION_51_16();

    OUTLINED_FUNCTION_5_102();
    OUTLINED_FUNCTION_13_3();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_48_13();
  v19 = OUTLINED_FUNCTION_75_9();
  v21 = v20(v19);
  v22 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0xF0))(v21);
  VideoMessageController.State.rawValue.getter(v22);
  OUTLINED_FUNCTION_99_3();
  if (v23)
  {
    v25 = v24 == v3;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
  }

  else
  {
    OUTLINED_FUNCTION_30_20();
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_90();
    if ((v3 & 1) == 0)
    {
      (*(v0[26] + 8))(v0[29], v0[25]);

      goto LABEL_8;
    }
  }

  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
  }

  v26 = v0[25];
  v27 = v0[26];
  v28 = type metadata accessor for Logger();
  v29 = __swift_project_value_buffer(v28, &static Logger.videoMessaging);
  v30 = OUTLINED_FUNCTION_42_21(v29);
  v2(v30);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = OUTLINED_FUNCTION_22_0(v32);
  v34 = v0[28];
  if (v33)
  {
    v1 = v0[23];
    OUTLINED_FUNCTION_42();
    v64[0] = OUTLINED_FUNCTION_21_4();
    v35 = OUTLINED_FUNCTION_45_17(4.8149e-34);
    v36 = (v2)(v35);
    OUTLINED_FUNCTION_6_85(v36, v37, v38, v39, v40, v41, v42, v43, v63, v64[0], v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7]);
    OUTLINED_FUNCTION_61_8();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v44 = OUTLINED_FUNCTION_12_59();
    v1(v44);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v2, v64);
    OUTLINED_FUNCTION_81();
    *(v26 + 4) = v34;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v45, v46, v47, v48, v49, 0xCu);
    OUTLINED_FUNCTION_44_15();
    OUTLINED_FUNCTION_26();
  }

  else
  {

    v50 = OUTLINED_FUNCTION_12_59();
    v1(v50);
  }

  OUTLINED_FUNCTION_62_9();
  v0[36] = v1;
  VideoMessageController.momentsController.getter(v51);
  v0[37] = v52;
  UUID._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_53_13();
  v0[38] = v53;
  v0[2] = v54;
  v55 = OUTLINED_FUNCTION_344();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  OUTLINED_FUNCTION_30_22(v56);
  OUTLINED_FUNCTION_368(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_193();
  v0[13] = v57;
  v0[14] = v55;
  v58 = OUTLINED_FUNCTION_46_16();
  [v58 v59];
  OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DEC8](v60);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 312) = *(v3 + 48);
  OUTLINED_FUNCTION_43_15();
  v5 = *(v4 + 256);
  v7 = *(v6 + 248);
  if (v8)
  {
    v9 = VideoMessageController.save();
  }

  else
  {
    v9 = VideoMessageController.save();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t VideoMessageController.save()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_36_3();
  a23 = v30;
  a24 = v31;
  OUTLINED_FUNCTION_54_12();
  a22 = v25;
  OUTLINED_FUNCTION_100_2();
  swift_willThrow();

  v32 = v26;
  v33 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_111_3();
  if (OUTLINED_FUNCTION_112_2())
  {
    v34 = *(v25 + 312);
    OUTLINED_FUNCTION_42();
    a12 = OUTLINED_FUNCTION_21_4();
    OUTLINED_FUNCTION_96_6(4.8149e-34);
    *(v28 + 168) = v34;
    v28 += 168;
    v35 = v34;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v37 = OUTLINED_FUNCTION_91_6(v36);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &a12);
    OUTLINED_FUNCTION_102_1();
    *(v26 + 4) = v28;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_26();
  }

  v47 = OUTLINED_FUNCTION_65_10(v44, v45, v46);
  OUTLINED_FUNCTION_19_6(&type metadata for VideoMessageController.UnrecoverableErrors, v47);
  *v48 = 3;
  swift_willThrow();

  v29(v24, v28);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12_4();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t VideoMessageController.complete(sendingTo:sendingFrom:in:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v5);
  v1[10] = OUTLINED_FUNCTION_74();
  v1[11] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v1[12] = v6;
  OUTLINED_FUNCTION_9_0(v6);
  v1[13] = v7;
  v1[14] = OUTLINED_FUNCTION_74();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = type metadata accessor for MainActor();
  v1[18] = static MainActor.shared.getter();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_56_0();
  v1[19] = v8;
  v1[20] = v9;
  v10 = OUTLINED_FUNCTION_55_12();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v6 = v5;
  v3[28] = v0;

  if (v0)
  {
    v7 = v3[19];
    v8 = v3[20];
    v9 = VideoMessageController.complete(sendingTo:sendingFrom:in:);
  }

  else
  {

    v7 = v3[19];
    v8 = v3[20];
    v9 = VideoMessageController.complete(sendingTo:sendingFrom:in:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t VideoMessageController.complete(sendingTo:sendingFrom:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_86_2();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_48();
  a16 = v18;
  v22 = v18[28];
  v23 = v18[21];

  VideoMessageController.updateState()();
  v24 = v22;
  v25 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_104_3();
  if (OUTLINED_FUNCTION_317())
  {
    v26 = v18[28];
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_38_3();
    OUTLINED_FUNCTION_92_4();
    *v23 = 136315138;
    v18[5] = v26;
    v27 = v26;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v29 = OUTLINED_FUNCTION_91_6(v28);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &a9);
    OUTLINED_FUNCTION_420();
    *(v23 + 4) = v19;
    OUTLINED_FUNCTION_47_0(&dword_1BBC58000, v31, v32, "Failed to send video message with error: %s");
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v33 = v18[28];
  }

  v34 = OUTLINED_FUNCTION_94_3();
  v35(v34);
  OUTLINED_FUNCTION_83_6();

  OUTLINED_FUNCTION_5_102();
  OUTLINED_FUNCTION_69();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

void closure #1 in VideoMessageController.complete(sendingTo:sendingFrom:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28 = a4;
  v29 = a6;
  v26 = a2;
  v27 = a3;
  v30 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v18 = *(v11 + 16);
  v18(&v25 - v16, v26, v10, v15);
  (v18)(v13, v27, v10);
  objc_allocWithZone(MEMORY[0x1E69D8C60]);

  v19 = @nonobjc TUMomentsMessageSendRequest.init(sessionUUID:conversationID:senderHandle:destinationHandles:)(v17, v13, v28);
  VideoMessageController.momentsController.getter(v19);
  v21 = v20;
  (*(v7 + 16))(v9, v30, v6);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = swift_allocObject();
  (*(v7 + 32))(v23 + v22, v9, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in VideoMessageController.complete(sendingTo:sendingFrom:in:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_156_0;
  v24 = _Block_copy(aBlock);

  [v21 sendVideoMessageWithRequest:v19 completion:v24];
  _Block_release(v24);
}

uint64_t closure #1 in closure #1 in VideoMessageController.complete(sendingTo:sendingFrom:in:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  if (!a1)
  {
    return CheckedContinuation.resume(returning:)();
  }

  (*(v5 + 16))(v8, a2, v4, v6);
  v11[1] = a1;
  v9 = a1;
  CheckedContinuation.resume(throwing:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t VideoMessageController.reset()()
{
  OUTLINED_FUNCTION_24_0();
  v1[54] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v2);
  v1[55] = OUTLINED_FUNCTION_109_4();
  v3 = type metadata accessor for UUID();
  v1[56] = v3;
  OUTLINED_FUNCTION_9_0(v3);
  v1[57] = v4;
  v1[58] = OUTLINED_FUNCTION_109_4();
  type metadata accessor for MainActor();
  v1[59] = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_56_0();
  v1[60] = v5;
  v1[61] = v6;
  v7 = OUTLINED_FUNCTION_55_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_9();
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];
  VideoMessageController.ignoresStateUpdates.setter(1);
  v4 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_currentRecordingUUID;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v3 + v4, v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = v0[54];
    v6 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0[55], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    VideoMessageController.momentsController.getter(v6);
    OUTLINED_FUNCTION_53_13();
    v0[70] = v7;
    v0[2] = v8;
    v9 = OUTLINED_FUNCTION_344();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[29] = &block_descriptor_43_1;
    v0[30] = v9;
    [v5 resetVideoMessagingWithSessionUUID:0 completion:v0 + 26];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    (*(v0[57] + 32))(v0[58], v0[55], v0[56]);
    v10 = swift_task_alloc();
    v0[62] = v10;
    *v10 = v0;
    v10[1] = VideoMessageController.reset();

    return VideoMessageController.stop()();
  }
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 504) = v0;

  v5 = *(v2 + 488);
  v6 = *(v2 + 480);
  if (v0)
  {
    v7 = VideoMessageController.reset();
  }

  else
  {
    v7 = VideoMessageController.reset();
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  VideoMessageController.momentsController.getter(v1);
  v0[64].super.isa = v2;
  v0[65].super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v0[18].super.isa = v0;
  v0[19].super.isa = VideoMessageController.reset();
  v3 = swift_continuation_init();
  v0[49].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[42].super.isa = MEMORY[0x1E69E9820];
  v0[43].super.isa = 1107296256;
  v0[44].super.isa = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[45].super.isa = &block_descriptor_51_0;
  v0[46].super.isa = v3;
  v4 = OUTLINED_FUNCTION_46_16();
  [v4 v5];
  OUTLINED_FUNCTION_319();

  return MEMORY[0x1EEE6DEC8](v6);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 528) = *(v3 + 176);
  OUTLINED_FUNCTION_43_15();
  v5 = *(v4 + 488);
  v7 = *(v6 + 480);
  if (v8)
  {
    v9 = VideoMessageController.reset();
  }

  else
  {
    v9 = VideoMessageController.reset();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  isa = v0[65].super.isa;

  VideoMessageController.momentsController.getter(v2);
  v0[67].super.isa = v3;
  v0[68].super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v0[10].super.isa = v0;
  v0[11].super.isa = VideoMessageController.reset();
  v4 = swift_continuation_init();
  v0[41].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[34].super.isa = MEMORY[0x1E69E9820];
  v0[35].super.isa = 1107296256;
  v0[36].super.isa = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[37].super.isa = &block_descriptor_48_0;
  v0[38].super.isa = v4;
  v5 = OUTLINED_FUNCTION_46_16();
  [v5 v6];
  OUTLINED_FUNCTION_319();

  return MEMORY[0x1EEE6DEC8](v7);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 552) = *(v3 + 112);
  OUTLINED_FUNCTION_43_15();
  v5 = *(v4 + 488);
  v7 = *(v6 + 480);
  if (v8)
  {
    v9 = VideoMessageController.reset();
  }

  else
  {
    v9 = VideoMessageController.reset();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v1 = v0[68];
  v2 = v0[67];

  v3 = OUTLINED_FUNCTION_38_2();
  v4(v3);

  $defer #1 () in VideoMessageController.reset()(v0[54]);

  OUTLINED_FUNCTION_5_102();
  OUTLINED_FUNCTION_319();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 568) = *(v3 + 48);
  OUTLINED_FUNCTION_43_15();
  v5 = *(v4 + 488);
  v7 = *(v6 + 480);
  if (v8)
  {
    v9 = VideoMessageController.reset();
  }

  else
  {
    v9 = VideoMessageController.reset();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 560);

  $defer #1 () in VideoMessageController.reset()(*(v0 + 432));

  OUTLINED_FUNCTION_5_102();

  return v2();
}

{
  OUTLINED_FUNCTION_44();

  swift_willThrow();
  v1 = *(v0 + 432);

  $defer #1 () in VideoMessageController.reset()(v1);

  OUTLINED_FUNCTION_13();

  return v2();
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 544);

  swift_willThrow();
  v2 = OUTLINED_FUNCTION_38_2();
  v3(v2);

  v4 = *(v0 + 432);
  $defer #1 () in VideoMessageController.reset()(v4);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_319();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t VideoMessageController.reset()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_86_2();
  a17 = v21;
  a18 = v22;
  OUTLINED_FUNCTION_48();
  a16 = v18;
  v23 = v18[63];
  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, &static Logger.videoMessaging);
  v25 = OUTLINED_FUNCTION_28_0();
  v26 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_104_3();
  if (OUTLINED_FUNCTION_317())
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_38_3();
    OUTLINED_FUNCTION_92_4();
    *v19 = 136315138;
    v18[53] = v23;
    v27 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v28 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &a9);
    OUTLINED_FUNCTION_420();
    *(v19 + 4) = v20;
    OUTLINED_FUNCTION_47_0(&dword_1BBC58000, v30, v31, "Discard during reset failed with error: %s");
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_101_2(v32);
  v18[67] = v33;
  UUID._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_53_13();
  v18[68] = v34;
  v18[10] = v35;
  OUTLINED_FUNCTION_31_28();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  OUTLINED_FUNCTION_29_28(v36);
  v18[35] = 1107296256;
  OUTLINED_FUNCTION_30_26();
  v37 = OUTLINED_FUNCTION_46_16();
  [v37 v38];
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DEC8](v39);
}

uint64_t VideoMessageController.reset()(uint64_t a1)
{
  v24 = v1;
  v4 = v1[65];
  v5 = v1[64];
  swift_willThrow();

  v6 = v1[66];
  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, &static Logger.videoMessaging);
  v8 = OUTLINED_FUNCTION_28_0();
  v9 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_104_3();
  if (OUTLINED_FUNCTION_317())
  {
    OUTLINED_FUNCTION_42();
    v23 = OUTLINED_FUNCTION_38_3();
    *v2 = 136315138;
    v1[53] = v6;
    v10 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v23);
    OUTLINED_FUNCTION_420();
    *(v2 + 4) = v3;
    OUTLINED_FUNCTION_47_0(&dword_1BBC58000, v13, v14, "Discard during reset failed with error: %s");
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_101_2(v15);
  v1[67] = v16;
  UUID._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_53_13();
  v1[68] = v17;
  v1[10] = v18;
  OUTLINED_FUNCTION_31_28();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  OUTLINED_FUNCTION_29_28(v19);
  v1[35] = 1107296256;
  OUTLINED_FUNCTION_30_26();
  v20 = OUTLINED_FUNCTION_46_16();
  [v20 v21];

  return MEMORY[0x1EEE6DEC8](v6);
}

void $defer #1 () in VideoMessageController.reset()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  VideoMessageController.currentRecordingUUID.setter(v4);
  VideoMessageController.countdownSink.setter(0);
  VideoMessageController.latestVideoMessageSandboxURL.setter(0);
  *(a1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_warmedMomentsController) = 0;
  v6 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController__momentsController;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = 0;

  v8 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_countdownShown;
  swift_beginAccess();
  *(a1 + v8) = 0;
  v9 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_isVideoSensitive;
  swift_beginAccess();
  *(a1 + v9) = 0;
  *(a1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_sendingInProgress) = 0;
  VideoMessageController.ignoresStateUpdates.setter(0);
  if (one-time initialization token for videoMessaging != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, &static Logger.videoMessaging);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1BBC58000, v11, v12, "Reset message controller complete", v13, 2u);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
  }
}

uint64_t VideoMessageController.discardRecording()()
{
  OUTLINED_FUNCTION_24_0();
  v1[22] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v2);
  v3 = OUTLINED_FUNCTION_74();
  v1[24] = OUTLINED_FUNCTION_103_1(v3);
  v4 = type metadata accessor for UUID();
  v1[25] = v4;
  OUTLINED_FUNCTION_9_0(v4);
  v1[26] = v5;
  v1[27] = OUTLINED_FUNCTION_109_4();
  type metadata accessor for MainActor();
  v1[28] = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_56_0();
  v1[29] = v6;
  v1[30] = v7;
  v8 = OUTLINED_FUNCTION_55_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_3_0();
  v1 = swift_beginAccess();
  OUTLINED_FUNCTION_105_1(v1, v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_3_84();
  if (v3)
  {
    v4 = v0[24];

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    OUTLINED_FUNCTION_88_3();
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_51_16();
    OUTLINED_FUNCTION_88_3();
    OUTLINED_FUNCTION_110_4();

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_319();

    return v6(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_62_9();
    v14 = (*(v0[26] + 32))(v0[27], v0[24], v0[25]);
    VideoMessageController.momentsController.getter(v14);
    v0[31] = v15;
    UUID._bridgeToObjectiveC()();
    OUTLINED_FUNCTION_53_13();
    v0[32] = v16;
    v0[2] = v17;
    v18 = OUTLINED_FUNCTION_344();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    OUTLINED_FUNCTION_30_22(v19);
    OUTLINED_FUNCTION_368(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_193();
    v0[13] = v20;
    v0[14] = v18;
    v21 = OUTLINED_FUNCTION_46_16();
    [v21 v22];
    OUTLINED_FUNCTION_319();

    return MEMORY[0x1EEE6DEC8](v23);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 264) = *(v3 + 48);
  OUTLINED_FUNCTION_43_15();
  v5 = *(v4 + 240);
  v7 = *(v6 + 232);
  if (v8)
  {
    v9 = VideoMessageController.discardRecording();
  }

  else
  {
    v9 = VideoMessageController.discardRecording();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

{
  v19 = v0;
  v2 = v0[32];
  v3 = v0[31];

  swift_willThrow();
  v4 = OUTLINED_FUNCTION_38_2();
  v5(v4);

  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, &static Logger.videoMessaging);
  v7 = OUTLINED_FUNCTION_28_0();
  v8 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_104_3();
  v9 = OUTLINED_FUNCTION_317();
  v10 = v0[33];
  if (v9)
  {
    OUTLINED_FUNCTION_42();
    v18 = OUTLINED_FUNCTION_38_3();
    *v2 = 136315138;
    v0[21] = v10;
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);
    OUTLINED_FUNCTION_420();
    *(v2 + 1) = v1;
    OUTLINED_FUNCTION_47_0(&dword_1BBC58000, v14, v15, "Recording discard failed with error: %s");
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_51_16();
  OUTLINED_FUNCTION_88_3();
  *(v8 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_warmedMomentsController) = 0;
  VideoMessageController.updateState()();

  OUTLINED_FUNCTION_13();

  return v16();
}

uint64_t VideoMessageController.discardRecording()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_48();
  v12 = v10[31];
  v11 = v10[32];
  v13 = v10[25];
  v14 = v10[23];

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
  VideoMessageController.currentRecordingUUID.setter(v14);
  v18 = OUTLINED_FUNCTION_44_0();
  v19(v18);
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_110_4();
  OUTLINED_FUNCTION_51_16();
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_110_4();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_69();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t VideoMessageController.State.debugDescription.getter(char a1)
{
  MEMORY[0x1BFB20B10](46, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

ConversationKit::VideoMessageController::State_optional __swiftcall VideoMessageController.State.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VideoMessageController.State.init(rawValue:), v3);
  OUTLINED_FUNCTION_28_0();

  if (v1 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v1;
  }
}

ConversationKit::VideoMessageController::State_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VideoMessageController.State@<W0>(Swift::String *a1@<X0>, ConversationKit::VideoMessageController::State_optional *a2@<X8>)
{
  result.value = VideoMessageController.State.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VideoMessageController.State@<X0>(uint64_t *a1@<X8>)
{
  result = VideoMessageController.State.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v22 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v15 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_37_0();
  v16 = swift_allocObject();
  v16[2] = v0;
  v16[3] = v2;
  v16[4] = v4;
  v23[4] = partial apply for closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:);
  v23[5] = v16;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = thunk for @escaping @callee_guaranteed () -> ();
  v23[3] = &block_descriptor_61_0;
  v17 = _Block_copy(v23);
  v18 = v0;
  v19 = v2;
  v20 = v4;

  static DispatchQoS.unspecified.getter();
  v23[0] = MEMORY[0x1E69E7CC0];
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v14, v9, v17);
  _Block_release(v17);

  (*(v22 + 8))(v9, v5);
  (*(v11 + 8))(v14, v21);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:)(void *a1, void *a2, void *a3)
{
  v92 = a3;
  v95 = a2;
  v88 = type metadata accessor for URL();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v94);
  v6 = &v86 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v89 = &v86 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v90 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v96 = &v86 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v97 = &v86 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v86 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v86 - v23;
  v25 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_currentRecordingUUID;
  swift_beginAccess();
  v98 = a1;
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1 + v25, v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v18);
  v91 = v21;
  v93 = v19;
  if (EnumTagSinglePayload == 1)
  {
    v27 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v28 = v95;
  }

  else
  {
    (*(v19 + 32))(v24, v17, v18);
    v28 = v95;
    v29 = [v95 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    LOBYTE(v29) = dispatch thunk of static Equatable.== infix(_:_:)();
    v30 = *(v19 + 8);
    v30(v21, v18);
    if ((v29 & 1) == 0)
    {
      v31 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v89, 1, 1, v31);
      type metadata accessor for MainActor();
      v92 = v92;
      v32 = v28;
      v33 = v28;
      v34 = static MainActor.shared.getter();
      v35 = swift_allocObject();
      v36 = MEMORY[0x1E69E85E0];
      v35[2] = v34;
      v35[3] = v36;
      v35[4] = v92;
      v35[5] = v33;
      v28 = v32;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    }

    v27 = (v30)(v24, v18);
  }

  v37 = v97;
  v38 = ((*MEMORY[0x1E69E7D40] & *v98) + 240);
  v95 = *((*MEMORY[0x1E69E7D40] & *v98) + 0xF0);
  v92 = v38;
  v39 = (v95)(v27);
  v41 = VideoMessageController.State.rawValue.getter(v39) == 0x6552657669746361 && v40 == 0xEF676E6964726F63;
  v42 = v96;
  if (v41)
  {
    goto LABEL_17;
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v43)
  {
    goto LABEL_18;
  }

  v45 = (v95)(v44);
  if (VideoMessageController.State.rawValue.getter(v45) == 0xD000000000000013 && 0x80000001BC4F1C90 == v46)
  {
LABEL_17:
  }

  else
  {
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v48 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_18:
  outlined init with copy of (CGFloat, AutoplayCandidate)(v98 + v25, v37, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v49 = [v28 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_storeEnumTagSinglePayload(v42, 0, 1, v18);
  v50 = *(v94 + 48);
  outlined init with copy of (CGFloat, AutoplayCandidate)(v37, v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of (CGFloat, AutoplayCandidate)(v42, &v6[v50], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (__swift_getEnumTagSinglePayload(v6, 1, v18) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v37, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (__swift_getEnumTagSinglePayload(&v6[v50], 1, v18) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  v51 = v90;
  outlined init with copy of (CGFloat, AutoplayCandidate)(v6, v90, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v52 = __swift_getEnumTagSinglePayload(&v6[v50], 1, v18);
  v53 = v93;
  if (v52 == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v37, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v53 + 8))(v51, v18);
LABEL_23:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_24;
  }

  v71 = v91;
  (*(v93 + 32))(v91, &v6[v50], v18);
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  LODWORD(v94) = dispatch thunk of static Equatable.== infix(_:_:)();
  v72 = v28;
  v73 = *(v53 + 8);
  v73(v71, v18);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v97, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v73(v51, v18);
  v28 = v72;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v94)
  {
LABEL_30:
    if ([objc_opt_self() isAnalysisEnabled])
    {
      v74 = [objc_allocWithZone(MEMORY[0x1E69DF298]) init];
      v75 = [v28 videoURL];
      v76 = [v75 URL];

      v77 = v86;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v78);
      v80 = v79;
      (*(v87 + 8))(v77, v88);
      v103 = closure #2 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:);
      v104 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v100 = 1107296256;
      v101 = thunk for @escaping @callee_guaranteed (@in_guaranteed URL, @unowned Double) -> ();
      v102 = &block_descriptor_130;
      v81 = _Block_copy(&aBlock);
      v82 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v83 = swift_allocObject();
      *(v83 + 16) = v82;
      *(v83 + 24) = v28;
      v103 = partial apply for closure #3 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:);
      v104 = v83;
      aBlock = MEMORY[0x1E69E9820];
      v100 = 1107296256;
      v101 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v102 = &block_descriptor_137;
      v84 = _Block_copy(&aBlock);
      v85 = v28;

      [v74 analyzeVideoFile:v80 useBlastdoor:0 progressHandler:v81 completionHandler:v84];
      _Block_release(v84);
      _Block_release(v81);
    }

    else
    {
      VideoMessageController.latestVideoMessageSandboxURL.setter([v28 videoURL]);
    }

    return;
  }

LABEL_24:
  if (one-time initialization token for videoMessaging != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, &static Logger.videoMessaging);
  v55 = v28;
  v56 = v98;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    aBlock = v60;
    *v59 = 136315394;
    v61 = [v55 uuid];
    v62 = v91;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    (*(v93 + 8))(v62, v18);
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &aBlock);

    *(v59 + 4) = v66;
    *(v59 + 12) = 2080;
    v105 = (v95)(v67);
    v68 = String.init<A>(reflecting:)();
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &aBlock);

    *(v59 + 14) = v70;
    _os_log_impl(&dword_1BBC58000, v57, v58, "Unexpected callback for message %s while in state %s", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v60, -1, -1);
    MEMORY[0x1BFB23DF0](v59, -1, -1);
  }
}

uint64_t closure #1 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = type metadata accessor for UUID();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[23] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[24] = v8;
  v5[25] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:), v8, v7);
}

uint64_t closure #1 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:)()
{
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_48();
  isa = v0[21].super.isa;
  v1 = v0[22].super.isa;
  v3 = v0[20].super.isa;
  v4 = [(objc_class *)v0[19].super.isa uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v0[26].super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(isa + 1))(v1, v3);
  v0[2].super.isa = v0;
  v0[3].super.isa = closure #1 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:);
  v5 = swift_continuation_init();
  v0[17].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10].super.isa = MEMORY[0x1E69E9820];
  v0[11].super.isa = 1107296256;
  v0[12].super.isa = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13].super.isa = &block_descriptor_144;
  v0[14].super.isa = v5;
  v6 = OUTLINED_FUNCTION_46_16();
  [v6 v7];
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DEC8](v8);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  OUTLINED_FUNCTION_43_15();
  v5 = *(v4 + 200);
  v7 = *(v6 + 192);
  if (v8)
  {
    v9 = closure #1 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:);
  }

  else
  {
    v9 = closure #1 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 208);

  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, &static Logger.videoMessaging);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_22_0(v4))
  {
    v5 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v5);
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_13();

  return v11();
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  swift_willThrow();

  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, &static Logger.videoMessaging);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_22_0(v5))
  {
    v6 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v6);
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_13();

  return v12();
}

void closure #2 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:)(double a1)
{
  if (one-time initialization token for videoMessaging != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.videoMessaging);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&dword_1BBC58000, oslog, v3, "Evaluation percentage: %f", v4, 0xCu);
    MEMORY[0x1BFB23DF0](v4, -1, -1);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed URL, @unowned Double) -> ()(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v9(v8, a3);

  return (*(v6 + 8))(v8, v5);
}

uint64_t closure #3 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:)(int a1, void *a2, uint64_t a3, void *a4)
{
  LODWORD(v7) = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for DispatchQoS();
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v32 = v9;
    v15 = a2;
    if (one-time initialization token for videoMessaging != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, &static Logger.videoMessaging);
    v17 = a2;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v7;
      v7 = v21;
      *v20 = 138412290;
      v22 = a2;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v7 = v23;
      _os_log_impl(&dword_1BBC58000, v18, v19, "Evaluation of video returned an error: %@", v20, 0xCu);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v24 = v7;
      LOBYTE(v7) = v31;
      MEMORY[0x1BFB23DF0](v24, -1, -1);
      MEMORY[0x1BFB23DF0](v20, -1, -1);
    }

    else
    {
    }

    v9 = v32;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v25 = static OS_dispatch_queue.main.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  *(v26 + 24) = v7 & 1;
  *(v26 + 32) = a4;
  aBlock[4] = partial apply for closure #1 in closure #3 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_150;
  v27 = _Block_copy(aBlock);

  v28 = a4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v14, v11, v27);
  _Block_release(v27);

  (*(v9 + 8))(v11, v8);
  return (*(v33 + 8))(v14, v34);
}

void closure #1 in closure #3 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:)(uint64_t a1, char a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_isVideoSensitive;
    swift_beginAccess();
    v6[v7] = a2 & 1;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    VideoMessageController.latestVideoMessageSandboxURL.setter([a3 videoURL]);
  }
}

id @nonobjc AVAudioPlayer.init(contentsOf:)(uint64_t a1)
{
  v2 = v1;
  v16 = *MEMORY[0x1E69E9840];
  URL._bridgeToObjectiveC()(v16);
  v5 = v4;
  v15 = 0;
  v6 = [v2 initWithContentsOfURL:v4 error:&v15];

  v7 = v15;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    OUTLINED_FUNCTION_7_0();
    v10 = *(v9 + 8);
    v11 = v7;
    v10(a1, v8);
  }

  else
  {
    v12 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    type metadata accessor for URL();
    OUTLINED_FUNCTION_7_0();
    (*(v13 + 8))(a1);
  }

  return v6;
}

id @nonobjc TUMomentsMessageSendRequest.init(sessionUUID:conversationID:senderHandle:destinationHandles:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = UUID._bridgeToObjectiveC()().super.isa;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject();
  v10 = Set._bridgeToObjectiveC()().super.isa;

  v11 = [v4 initWithSessionUUID:isa conversationID:v9 senderHandle:a3 destinationHandles:v10];

  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 8);
  v13(a2, v12);
  v13(a1, v12);
  return v11;
}

id outlined bridged method (mbbnn) of @objc NSBundle.url(forResource:withExtension:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = MEMORY[0x1BFB209B0](a1);

  v9 = MEMORY[0x1BFB209B0](a3, a4);

  v10 = [a5 URLForResource:v8 withExtension:v9];

  return v10;
}

uint64_t objectdestroy_14Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  OUTLINED_FUNCTION_37_0();

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:)()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_5_0(v3);

  return closure #3 in VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:)(v4, v5, v6, v2);
}

unint64_t lazy protocol witness table accessor for type VideoMessageController.UnrecoverableErrors and conformance VideoMessageController.UnrecoverableErrors()
{
  result = lazy protocol witness table cache variable for type VideoMessageController.UnrecoverableErrors and conformance VideoMessageController.UnrecoverableErrors;
  if (!lazy protocol witness table cache variable for type VideoMessageController.UnrecoverableErrors and conformance VideoMessageController.UnrecoverableErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessageController.UnrecoverableErrors and conformance VideoMessageController.UnrecoverableErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VideoMessageController.UnrecoverableErrors and conformance VideoMessageController.UnrecoverableErrors;
  if (!lazy protocol witness table cache variable for type VideoMessageController.UnrecoverableErrors and conformance VideoMessageController.UnrecoverableErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessageController.UnrecoverableErrors and conformance VideoMessageController.UnrecoverableErrors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VideoMessageController.VideoMessageError and conformance VideoMessageController.VideoMessageError()
{
  result = lazy protocol witness table cache variable for type VideoMessageController.VideoMessageError and conformance VideoMessageController.VideoMessageError;
  if (!lazy protocol witness table cache variable for type VideoMessageController.VideoMessageError and conformance VideoMessageController.VideoMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessageController.VideoMessageError and conformance VideoMessageController.VideoMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VideoMessageController.VideoMessageError and conformance VideoMessageController.VideoMessageError;
  if (!lazy protocol witness table cache variable for type VideoMessageController.VideoMessageError and conformance VideoMessageController.VideoMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessageController.VideoMessageError and conformance VideoMessageController.VideoMessageError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VideoMessageController.State and conformance VideoMessageController.State()
{
  result = lazy protocol witness table cache variable for type VideoMessageController.State and conformance VideoMessageController.State;
  if (!lazy protocol witness table cache variable for type VideoMessageController.State and conformance VideoMessageController.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessageController.State and conformance VideoMessageController.State);
  }

  return result;
}

void type metadata completion function for VideoMessageController(uint64_t a1)
{
  type metadata accessor for Published<VideoMessageController.State>();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<URL?>(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<URL?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<URL?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<URL?>);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for VideoMessageController.UnrecoverableErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for VideoMessageController.VideoMessageError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoMessageController.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VideoMessageController.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_319();

  return closure #1 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:)(v2, v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in VideoMessageController.complete(sendingTo:sendingFrom:in:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  OUTLINED_FUNCTION_22(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return closure #1 in closure #1 in VideoMessageController.complete(sendingTo:sendingFrom:in:)(a1, v5);
}

uint64_t outlined assign with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_101_2(uint64_t a1)
{

  VideoMessageController.momentsController.getter(a1);
}

double OUTLINED_FUNCTION_102_1()
{

  return result;
}

void specialized Sequence.forEach(_:)(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = v3;
  v51 = a3;
  v47 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantReactionVSgMd, &_s15ConversationKit19ParticipantReactionVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = a1;
  v43 = &v41 - v7;
  v8 = 0;
  v9 = *(a1 + 16);
  v10 = a1;
  v41 = v9;
  while (v9 != v8)
  {
    v11 = type metadata accessor for ParticipantReaction(0);
    v12 = v11;
    v13 = *(v11 - 8);
    v49 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v50 = *(v13 + 72);
    v48 = v10 + v49 + v50 * v8;
    if (v47)
    {
      v46 = v11;
      MEMORY[0x1EEE9AC00](v11);
      *(&v41 - 2) = v14;
      v15 = v51;
      v16 = v4;
      v17 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #1 in ParticipantGridViewController.update(participant:broadcastingState:), (&v41 - 4));
      v18 = *v15;
      v19 = *(*v15 + 16);
      if (v19 < v17)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v20 = v17;
      if (v17 < 0)
      {
        goto LABEL_32;
      }

      v21 = v17 - v19;
      v22 = v17;
      if (__OFADD__(v19, v17 - v19))
      {
        goto LABEL_33;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v51 = v18;
      v44 = v8;
      v45 = v16;
      if (!isUniquelyReferenced_nonNull_native || v22 > *(v18 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v18 = v24;
        *v51 = v24;
      }

      v25 = v18 + v49;
      v26 = v20 * v50;
      v27 = v18 + v49 + v20 * v50;
      swift_arrayDestroy();
      if (v19 != v20)
      {
        if (v26 < v19 * v50 || v27 >= v25 + v19 * v50 + (*(v18 + 16) - v19) * v50)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v26 != v19 * v50)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v32 = *(v18 + 16);
        v33 = __OFADD__(v32, v21);
        v34 = v32 + v21;
        if (v33)
        {
          goto LABEL_34;
        }

        *(v18 + 16) = v34;
      }

      *v51 = v18;
      v9 = v41;
      v10 = v42;
      v8 = v44;
      v4 = v45;
    }

    else
    {
      v29 = *v51;
      MEMORY[0x1EEE9AC00](v11);
      *(&v41 - 2) = v30;

      v31 = v43;
      specialized Sequence.first(where:)(partial apply for closure #1 in ParticipantGridViewController.updateProminenceEMA(withParticipant:ema:audioPriority:videoPriority:), v29, v43);

      LODWORD(v29) = __swift_getEnumTagSinglePayload(v31, 1, v12);
      outlined destroy of IDView<AvatarStackView, [UUID]>(v31, &_s15ConversationKit19ParticipantReactionVSgMd);
      if (v29 != 1)
      {
        goto LABEL_29;
      }
    }

    v35 = v51;
    v36 = *v51;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    *v35 = v36;
    if ((v37 & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v36 = v39;
      *v51 = v39;
    }

    v38 = *(v36 + 16);
    if (v38 >= *(v36 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v36 = v40;
      *v51 = v40;
    }

    *(v36 + 16) = v38 + 1;
    outlined init with copy of ParticipantReaction();
LABEL_29:
    ++v8;
  }
}

void SessionActivationRequestNotice.fullSentence.getter()
{
  OUTLINED_FUNCTION_29();
  v2 = type metadata accessor for AttributedString.AttributeMergePolicy();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_79_0();
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_82();
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  OUTLINED_FUNCTION_11();
  v10._countAndFlagsBits = 0x100000000000001ALL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
  v11 = (v0 + *(type metadata accessor for SessionActivationRequestNotice(0) + 60));
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14._countAndFlagsBits = (*(v13 + 80))(v12, v13);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v14);

  OUTLINED_FUNCTION_172();
  String.LocalizationValue.init(stringInterpolation:)();
  AttributedString.init(cnkLocalized:)();
  if (one-time initialization token for foregroundContainer != -1)
  {
    OUTLINED_FUNCTION_22_39(&one-time initialization token for foregroundContainer);
  }

  v15 = type metadata accessor for AttributeContainer();
  __swift_project_value_buffer(v15, static AttributedStrings.Notices.foregroundContainer);
  (*(v4 + 104))(v1, *MEMORY[0x1E69686E0], v2);
  OUTLINED_FUNCTION_208();
  AttributedString.mergeAttributes(_:mergePolicy:)();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_30_0();
}

uint64_t SessionActivationRequestNotice.title.getter()
{
  v0 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_5_5();
  v1.super.isa = v0;
  OUTLINED_FUNCTION_17_0(0xD000000000000016, 0x80000001BC4F5750, v2, v3, v1);
  OUTLINED_FUNCTION_18_8();

  return OUTLINED_FUNCTION_15_14();
}

void SessionActivationRequestNotice.attributedSubtitle.getter()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for AttributeContainer();
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_1();
  v3 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_5_5();
  v4.super.isa = v3;
  OUTLINED_FUNCTION_17_0(0xD000000000000014, 0x80000001BC4F9500, v5, v6, v4);

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = OUTLINED_FUNCTION_13_12(v7);
  *(v8 + 16) = xmmword_1BC4BA940;
  v9 = (v0 + *(type metadata accessor for SessionActivationRequestNotice(0) + 60));
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v10 = OUTLINED_FUNCTION_7_26();
  v12 = v11(v10);
  v14 = v13;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 32) = v12;
  *(v8 + 40) = v14;
  static String.localizedStringWithFormat(_:_:)();

  AttributeContainer.init()();
  OUTLINED_FUNCTION_209();
  AttributedString.init(_:attributes:)();
  OUTLINED_FUNCTION_49();
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1)
{
  return specialized BidirectionalCollection.last.getter(a1, type metadata accessor for HUDActivityManager.BannerUpdate);
}

{
  return specialized BidirectionalCollection.last.getter(a1, type metadata accessor for Participant);
}

{
  if (*(a1 + 16))
  {
  }

  return OUTLINED_FUNCTION_46();
}

{
  return specialized BidirectionalCollection.last.getter(a1, type metadata accessor for ConversationControlsAction);
}

{
  if (*(a1 + 16))
  {
  }

  return OUTLINED_FUNCTION_46();
}

{
  return specialized BidirectionalCollection.last.getter(a1, type metadata accessor for CaptionSectioner.Caption);
}

{
  return specialized BidirectionalCollection.last.getter(a1, type metadata accessor for CaptionSectioner.SpeakerSection);
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + v1 + 31);
  }

  else
  {
    return 8;
  }
}

uint64_t specialized BidirectionalCollection.last.getter(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
      }
    }

    v3 = OUTLINED_FUNCTION_38_2();
    return MEMORY[0x1BFB22010](v3);
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, uint64_t (*a2)(void))
{
  if (*(a1 + 16))
  {
    a2(0);
    outlined init with copy of ParticipantReaction();
    OUTLINED_FUNCTION_40_18();
  }

  else
  {
    a2(0);
    v4 = OUTLINED_FUNCTION_57_11();
  }

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t specialized BidirectionalCollection.last.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for IndexPath();
    OUTLINED_FUNCTION_7_0();
    (*(v7 + 16))(a2, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6);
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    type metadata accessor for IndexPath();
    v8 = OUTLINED_FUNCTION_57_11();
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

double specialized BidirectionalCollection.last.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    outlined init with copy of Activity();
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void specialized BidirectionalCollection.last.getter(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }
}

char *specialized BidirectionalCollection.last.getter(unint64_t a1, void (*a2)(char *, BOOL, uint64_t))
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v5 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      a2(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v5 + 32);
      }
    }

    v6 = OUTLINED_FUNCTION_45_1();
    return MEMORY[0x1BFB22010](v6);
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void AccountUpdateNotice.fullSentence.getter()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  v114 = type metadata accessor for AttributedString.InterpolationOptions();
  OUTLINED_FUNCTION_1();
  v112 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_40();
  v113 = v9;
  OUTLINED_FUNCTION_4_24();
  v10 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_40();
  v115 = v12;
  OUTLINED_FUNCTION_4_24();
  v13 = type metadata accessor for AttributedString.AttributeMergePolicy();
  OUTLINED_FUNCTION_1();
  v122 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_79_0();
  v121 = type metadata accessor for AttributeContainer();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v117 = v18;
  v118 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17();
  v116 = v19 - v20;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v21);
  v120 = v107 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_96();
  v26 = type metadata accessor for Participant(v25);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_7_10();
  v28 = *(v1 + 1);
  OUTLINED_FUNCTION_120_2();
  specialized BidirectionalCollection.last.getter(v28, v29);
  OUTLINED_FUNCTION_115(v1, 1, v26);
  if (!v30)
  {
    v119 = v13;
    v107[3] = v4;
    OUTLINED_FUNCTION_3_119();
    OUTLINED_FUNCTION_38_2();
    _s15ConversationKit11ParticipantVWObTm_4();
    v34 = *(v28 + 16);
    GondolaControlsRecipeGenerator.isPresentingFullScreenCallUI.getter();
    v107[2] = v0;
    Participant.contactDetails.getter();
    v35 = v123;

    Participant.name(_:)();

    AttributeContainer.init()();
    OUTLINED_FUNCTION_243();
    v36 = AttributedString.init(_:attributes:)();
    if (one-time initialization token for subjectContainer != -1)
    {
      v36 = OUTLINED_FUNCTION_20_41(&one-time initialization token for subjectContainer);
    }

    v107[1] = v34 - 1;
    OUTLINED_FUNCTION_267_0(v36, static AttributedStrings.Notices.subjectContainer);
    v37 = *MEMORY[0x1E69686E8];
    v38 = v122;
    v39 = v122 + 104;
    v109 = *(v122 + 104);
    v109(v2, v37, v119);
    OUTLINED_FUNCTION_29_6();
    AttributedString.mergeAttributes(_:mergePolicy:)();
    v41 = *(v38 + 8);
    v40 = v38 + 8;
    v42 = OUTLINED_FUNCTION_1_5();
    v41(v42);
    v43 = *v1;
    v110 = v39;
    v111 = v0;
    v108 = v41;
    if (!v43)
    {
      v112 += 8;
      OUTLINED_FUNCTION_205_1();
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v56._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v56);
      v123 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_0_151();
      lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v57, v58, MEMORY[0x1E69686F8]);
      v59 = OUTLINED_FUNCTION_243();
      __swift_instantiateConcreteTypeFromMangledNameV2(v59, v60);
      OUTLINED_FUNCTION_221(&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A]);
      v61 = OUTLINED_FUNCTION_78_6();
      OUTLINED_FUNCTION_76_6(v61, v62, v63);
      OUTLINED_FUNCTION_264_0();
      v64 = OUTLINED_FUNCTION_237_1();
      v65(v64);
      if (v34 < 2)
      {
        v93._countAndFlagsBits = 0x64656E696F6A20;
        v93._object = 0xE700000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v93);
        OUTLINED_FUNCTION_222_1();
        OUTLINED_FUNCTION_64_11();
        AttributedString.init(cnkLocalized:)();
      }

      else
      {
        OUTLINED_FUNCTION_180_2();
        OUTLINED_FUNCTION_198_1();
        OUTLINED_FUNCTION_131_0(v66, v67, v68, MEMORY[0x1E69E6530], MEMORY[0x1E6969E48]);
        v69._countAndFlagsBits = OUTLINED_FUNCTION_231_1();
        v69._object = 0xEE0064656E696F6ALL;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v69);
        OUTLINED_FUNCTION_222_1();
        OUTLINED_FUNCTION_64_11();
        AttributedString.init(conversationControlsLocalized:comment:)();
      }

      v94 = v119;
LABEL_23:
      if (one-time initialization token for foregroundContainer != -1)
      {
        v70 = OUTLINED_FUNCTION_22_39(&one-time initialization token for foregroundContainer);
      }

      OUTLINED_FUNCTION_267_0(v70, static AttributedStrings.Notices.foregroundContainer);
      v109(v2, *MEMORY[0x1E69686E0], v94);
      OUTLINED_FUNCTION_29_6();
      AttributedString.mergeAttributes(_:mergePolicy:)();
      v103 = OUTLINED_FUNCTION_40_2();
      v108(v103);
      AttributedString.replaceLinks(with:)();
      v104 = OUTLINED_FUNCTION_173_1();
      v105(v104);
      OUTLINED_FUNCTION_5_103();
      _s15ConversationKit11ParticipantVWOhTm_12();
      OUTLINED_FUNCTION_93_1();
      v106();
      goto LABEL_26;
    }

    v122 = v40;
    if (v43 == 1)
    {
      if (v34 < 2)
      {
        OUTLINED_FUNCTION_205_1();
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v84._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v84);
        v123 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_0_151();
        lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v85, v86, MEMORY[0x1E69686F8]);
        v87 = OUTLINED_FUNCTION_243();
        __swift_instantiateConcreteTypeFromMangledNameV2(v87, v88);
        v89 = OUTLINED_FUNCTION_221(&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A]);
        OUTLINED_FUNCTION_42_22(v89);
        OUTLINED_FUNCTION_112();
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
        v90 = OUTLINED_FUNCTION_144_1();
        v91(v90);
        v92._countAndFlagsBits = 0x7466656C20;
        v92._object = 0xE500000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v92);
        OUTLINED_FUNCTION_222_1();
        OUTLINED_FUNCTION_64_11();
        AttributedString.init(cnkLocalized:)();
LABEL_22:
        v94 = v119;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_205_1();
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v44._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v44);
      v123 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_0_151();
      lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v45, v46, MEMORY[0x1E69686F8]);
      v47 = OUTLINED_FUNCTION_243();
      __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
      v49 = OUTLINED_FUNCTION_221(&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A]);
      OUTLINED_FUNCTION_42_22(v49);
      OUTLINED_FUNCTION_112();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
      v50 = OUTLINED_FUNCTION_144_1();
      v51(v50);
      OUTLINED_FUNCTION_180_2();
      OUTLINED_FUNCTION_198_1();
      OUTLINED_FUNCTION_131_0(v52, v53, v54, MEMORY[0x1E69E6530], MEMORY[0x1E6969E48]);
      v55._countAndFlagsBits = OUTLINED_FUNCTION_231_1();
      v55._object = 0xEC0000007466656CLL;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v55);
      OUTLINED_FUNCTION_222_1();
      OUTLINED_FUNCTION_64_11();
    }

    else
    {
      if (v34 < 2)
      {
        OUTLINED_FUNCTION_205_1();
        OUTLINED_FUNCTION_266_0();
        v95._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v95);
        v123 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_0_151();
        lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v96, v97, MEMORY[0x1E69686F8]);
        v98 = OUTLINED_FUNCTION_243();
        __swift_instantiateConcreteTypeFromMangledNameV2(v98, v99);
        v100 = OUTLINED_FUNCTION_221(&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A]);
        OUTLINED_FUNCTION_42_22(v100);
        OUTLINED_FUNCTION_112();
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
        v101 = OUTLINED_FUNCTION_144_1();
        v102(v101);
        OUTLINED_FUNCTION_11();
        v82 = 0xD000000000000011;
      }

      else
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v71._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v71);
        v123 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_0_151();
        lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v72, v73, MEMORY[0x1E69686F8]);
        v74 = OUTLINED_FUNCTION_243();
        __swift_instantiateConcreteTypeFromMangledNameV2(v74, v75);
        v76 = OUTLINED_FUNCTION_221(&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A]);
        OUTLINED_FUNCTION_42_22(v76);
        OUTLINED_FUNCTION_112();
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
        v77 = OUTLINED_FUNCTION_144_1();
        v78(v77);
        OUTLINED_FUNCTION_180_2();
        OUTLINED_FUNCTION_198_1();
        OUTLINED_FUNCTION_131_0(v79, v80, v81, MEMORY[0x1E69E6530], MEMORY[0x1E6969E48]);
        v82 = 0xD000000000000018;
        v83 = 0x80000001BC50D250;
      }

      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v82);
      OUTLINED_FUNCTION_222_1();
      OUTLINED_FUNCTION_64_11();
    }

    AttributedString.init(conversationControlsLocalized:comment:)();
    goto LABEL_22;
  }

  outlined destroy of IDView<AvatarStackView, [UUID]>(v1, &_s15ConversationKit11ParticipantVSgMd);
  String.LocalizationValue.init(stringLiteral:)();
  AttributedString.init(cnkLocalized:)();
  if (one-time initialization token for subjectContainer != -1)
  {
    v31 = OUTLINED_FUNCTION_20_41(&one-time initialization token for subjectContainer);
  }

  OUTLINED_FUNCTION_267_0(v31, static AttributedStrings.Notices.subjectContainer);
  (*(v122 + 104))(v2, *MEMORY[0x1E69686E0], v13);
  OUTLINED_FUNCTION_29_6();
  AttributedString.mergeAttributes(_:mergePolicy:)();
  v32 = OUTLINED_FUNCTION_40_2();
  v33(v32);
LABEL_26:
  OUTLINED_FUNCTION_30_0();
}

void AccountUpdateNotice.title.getter()
{
  OUTLINED_FUNCTION_29();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for Participant(v5);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_57();
  v7 = *(v1 + 8);
  OUTLINED_FUNCTION_120_2();
  specialized BidirectionalCollection.last.getter(v7, v8);
  OUTLINED_FUNCTION_115(v0, 1, v2);
  if (v9)
  {
    outlined destroy of IDView<AvatarStackView, [UUID]>(v0, &_s15ConversationKit11ParticipantVSgMd);
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, &static Logger.conversationControls);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v14, v15, "No participant for accountUpdateNotice");
      MEMORY[0x1BFB23DF0](v13, -1, -1);
    }

    v16 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_5_5();
    v17 = OUTLINED_FUNCTION_261_1();
    OUTLINED_FUNCTION_48_1(v17, v18, v19, v20);
    OUTLINED_FUNCTION_213_1();
  }

  else
  {
    OUTLINED_FUNCTION_3_119();
    OUTLINED_FUNCTION_46();
    v21 = _s15ConversationKit11ParticipantVWObTm_4();
    MEMORY[0x1EEE9AC00](v21);
    v33[2] = v1;
    v22 = _sSTsE5count5whereSiSb7ElementQzqd__YKXE_tqd__YKs5ErrorRd__lFSay15ConversationKit11ParticipantVG_s5NeverOTg5(partial apply for closure #1 in AccountUpdateNotice.title.getter, v33, v7);
    if (v22 < 1)
    {
      Participant.contactDetails.getter();
      v32 = v34;

      OUTLINED_FUNCTION_44_0();
      Participant.name(_:)();
      OUTLINED_FUNCTION_213_1();
    }

    else
    {
      v23 = v22;
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_261_1();
      String.localizedConversationControls.getter();
      OUTLINED_FUNCTION_187();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1BC4BAA20;
      Participant.contactDetails.getter();
      v25 = v34;

      Participant.name(_:)();
      v27 = v26;
      v29 = v28;

      *(v24 + 56) = MEMORY[0x1E69E6158];
      v30 = lazy protocol witness table accessor for type String and conformance String();
      *(v24 + 32) = v27;
      *(v24 + 40) = v29;
      v31 = MEMORY[0x1E69E65A8];
      *(v24 + 96) = MEMORY[0x1E69E6530];
      *(v24 + 104) = v31;
      *(v24 + 64) = v30;
      *(v24 + 72) = v23;
      OUTLINED_FUNCTION_1_5();
      static String.localizedStringWithFormat(_:_:)();
      OUTLINED_FUNCTION_213_1();
    }

    OUTLINED_FUNCTION_5_103();
    _s15ConversationKit11ParticipantVWOhTm_12();
  }

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_30_0();
}

uint64_t AccountUpdateNotice.attributedSubtitle.getter()
{
  OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for AttributeContainer();
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  if (*v0)
  {
    if (*v0 == 1)
    {
      v3 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_5_5();
      v6 = 1952867660;
      v7 = 0xE400000000000000;
    }

    else
    {
      v3 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_5_5();
      v6 = OUTLINED_FUNCTION_193_0();
    }
  }

  else
  {
    v3 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    v7 = 0xE600000000000000;
  }

  v8.super.isa = v3;
  OUTLINED_FUNCTION_17_0(v6, v7, v4, v5, v8);
  OUTLINED_FUNCTION_98_3();

  AttributeContainer.init()();
  OUTLINED_FUNCTION_40_2();
  return AttributedString.init(_:attributes:)();
}

void ReactionNotice.fullSentence.getter()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40();
  v78 = v6;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for AttributedString.InterpolationOptions();
  OUTLINED_FUNCTION_1();
  v76 = v7;
  v77 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_10();
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_49_3();
  v11 = type metadata accessor for AttributedString.AttributeMergePolicy();
  OUTLINED_FUNCTION_1();
  v81 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40();
  v79 = v14;
  OUTLINED_FUNCTION_4_24();
  v80 = type metadata accessor for AttributeContainer();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v16 = OUTLINED_FUNCTION_82();
  v17 = type metadata accessor for ParticipantReaction(v16) - 8;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_57();
  v18 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v75 = v1;
  v26 = *v1;
  v27 = *(*v1 + 16);
  if (v27 == 1)
  {
    v71 = v25;
    v72 = v11;
    v73 = v3;
    v74 = v18;
    v29 = &v69 - v24;
    outlined init with copy of ParticipantReaction();
    Participant.contactDetails.getter();
    v30 = v82;

    Participant.name(_:)();

    OUTLINED_FUNCTION_5_103();
    _s15ConversationKit11ParticipantVWOhTm_12();
    AttributeContainer.init()();
    OUTLINED_FUNCTION_244_1();
    AttributedString.init(_:attributes:)();
    if (one-time initialization token for subjectContainer != -1)
    {
      OUTLINED_FUNCTION_20_41(&one-time initialization token for subjectContainer);
    }

    __swift_project_value_buffer(v80, static AttributedStrings.Notices.subjectContainer);
    v31 = v81;
    v32 = v79;
    v11 = v72;
    (*(v81 + 104))(v79, *MEMORY[0x1E69686E8], v72);
    AttributedString.mergeAttributes(_:mergePolicy:)();
    (*(v31 + 8))(v32, v11);
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v33._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v33);
    v82 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_0_151();
    v69 = lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v34, v35, MEMORY[0x1E69686F8]);
    v36 = OUTLINED_FUNCTION_15_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
    OUTLINED_FUNCTION_30_20();
    lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v38, v39);
    OUTLINED_FUNCTION_233_1();
    v70 = v29;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
    v40 = *(v77 + 8);
    v41 = OUTLINED_FUNCTION_29_6();
    v40(v41);
    OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_254_1();
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v42);
    ReactionNotice.reactionSymbols.getter(v22);
    v82 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_233_1();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
    v43 = OUTLINED_FUNCTION_29_6();
    v40(v43);
    v44 = *(v71 + 8);
    v45 = v74;
    v44(v22, v74);
    v46._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v46);
    String.LocalizationValue.init(stringInterpolation:)();
    OUTLINED_FUNCTION_265_0();
    v28 = (v44)(v70, v45);
  }

  else if (v27)
  {
    v47 = &v69 - v24;
    v74 = v18;
    v48 = v25;
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v49._countAndFlagsBits = 23390;
    v49._object = 0xE200000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v49);
    v82 = *(v26 + 16);
    OUTLINED_FUNCTION_131_0(v50, v51, v52, MEMORY[0x1E69E6530], MEMORY[0x1E6969E48]);
    OUTLINED_FUNCTION_11();
    v53._countAndFlagsBits = 0xD000000000000032;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v53);
    ReactionNotice.reactionSymbols.getter(v47);
    v82 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_0_151();
    lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v54, v55, MEMORY[0x1E69686F8]);
    v56 = OUTLINED_FUNCTION_15_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(v56, v57);
    OUTLINED_FUNCTION_30_20();
    lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v58, v59);
    OUTLINED_FUNCTION_78_6();
    v60 = v76;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OUTLINED_FUNCTION_258_0();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
    (*(v77 + 8))(v0, v60);
    v61 = *(v48 + 8);
    v62 = v74;
    v61(v47, v74);
    v63._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v63);
    v64 = v78;
    String.LocalizationValue.init(stringInterpolation:)();
    KeyPath = swift_getKeyPath();
    _s10Foundation16AttributedStringV15ConversationKitE29conversationControlsLocalized9includingACSSAAE17LocalizationValueV_s7KeyPathCyAA15AttributeScopesOxmGtcAA0N5ScopeRzlufCAlDE0dE10AttributesV_Tt2g5(v64, KeyPath, v3);
    AttributedString.applyContainer()();
    v66 = OUTLINED_FUNCTION_173_1();
    (v61)(v66);
    v28 = (*(v48 + 32))(v3, v47, v62);
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
    v28 = AttributedString.init(stringLiteral:)();
  }

  if (one-time initialization token for foregroundContainer != -1)
  {
    v28 = OUTLINED_FUNCTION_22_39(&one-time initialization token for foregroundContainer);
  }

  OUTLINED_FUNCTION_267_0(v28, static AttributedStrings.Notices.foregroundContainer);
  v67 = v81;
  v68 = v79;
  (*(v81 + 104))(v79, *MEMORY[0x1E69686E0], v11);
  OUTLINED_FUNCTION_29_6();
  AttributedString.mergeAttributes(_:mergePolicy:)();
  (*(v67 + 8))(v68, v11);
  OUTLINED_FUNCTION_30_0();
}

uint64_t ReactionNotice.title.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantReactionVSgMd, &_s15ConversationKit19ParticipantReactionVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_8_9();
  v5 = type metadata accessor for Participant(v4);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v7);
  v8 = *v1;
  specialized BidirectionalCollection.last.getter(*v1, type metadata accessor for ParticipantReaction);
  v9 = type metadata accessor for ParticipantReaction(0);
  OUTLINED_FUNCTION_115(v0, 1, v9);
  if (v10)
  {
    outlined destroy of IDView<AvatarStackView, [UUID]>(v0, &_s15ConversationKit19ParticipantReactionVSgMd);
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, &static Logger.conversationControls);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v15, v16, "No participant for ReactionNotice");
      MEMORY[0x1BFB23DF0](v14, -1, -1);
    }

    v17 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_48_1(0xD000000000000013, 0x80000001BC50D3E0, v18, v19);
    OUTLINED_FUNCTION_16_6();
  }

  else
  {
    OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_44_0();
    outlined init with copy of ParticipantReaction();
    _s15ConversationKit11ParticipantVWOhTm_12();
    OUTLINED_FUNCTION_3_119();
    _s15ConversationKit11ParticipantVWObTm_4();
    v20 = *(v8 + 16);
    if (v20 < 2)
    {
      Participant.contactDetails.getter();

      OUTLINED_FUNCTION_29_6();
      Participant.name(_:)();
      OUTLINED_FUNCTION_16_6();
    }

    else
    {
      String.localizedConversationControls.getter();
      OUTLINED_FUNCTION_305();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v22 = OUTLINED_FUNCTION_13_12(v21);
      v23 = MEMORY[0x1E69E6530];
      *(v22 + 16) = xmmword_1BC4BA940;
      v24 = MEMORY[0x1E69E65A8];
      *(v22 + 56) = v23;
      *(v22 + 64) = v24;
      *(v22 + 32) = v20;
      OUTLINED_FUNCTION_46();
      static String.localizedStringWithFormat(_:_:)();
      OUTLINED_FUNCTION_16_6();
    }

    OUTLINED_FUNCTION_5_103();
    _s15ConversationKit11ParticipantVWOhTm_12();
  }

  return OUTLINED_FUNCTION_44_0();
}

void ReactionNotice.attributedSubtitle.getter()
{
  OUTLINED_FUNCTION_29();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_4_24();
  v4 = type metadata accessor for AttributedString.InterpolationOptions();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_82();
  v17 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_49_3();
  v11 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = OUTLINED_FUNCTION_166_0();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  ReactionNotice.reactionSymbols.getter(v1);
  OUTLINED_FUNCTION_0_151();
  lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v14, v15, MEMORY[0x1E69686F8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
  lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A], &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
  (*(v6 + 8))(v0, v4);
  (*(v9 + 8))(v1, v17);
  v16._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  String.LocalizationValue.init(stringInterpolation:)();
  OUTLINED_FUNCTION_265_0();
  OUTLINED_FUNCTION_30_0();
}

uint64_t static SessionActionNotice.NoticeType.== infix(_:_:)(uint64_t *a1, int64x2_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v73[0] = *a1;
  v73[1] = v2;
  v73[2] = v5;
  v73[3] = v4;
  v74 = v6;
  v75 = v7;
  v8 = v6.i64[1];
  v9 = v7.i64[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      if (v7.i64[0] >> 62 != 1)
      {
        goto LABEL_102;
      }

      v70 = v3;
      v71 = v2;
      v72 = v5;
      v68 = v6;
      v69 = v7.i8[0];
      v41 = OUTLINED_FUNCTION_145_1();
      outlined copy of SessionActionNotice.NoticeType(v41, v42, v43);
      v44 = OUTLINED_FUNCTION_23_40();
      outlined copy of SessionActionNotice.NoticeType(v44, v45, v46);
      v47 = OUTLINED_FUNCTION_145_1();
      outlined copy of SessionActionNotice.NoticeType(v47, v48, v49);
      v50 = OUTLINED_FUNCTION_23_40();
      outlined copy of SessionActionNotice.NoticeType(v50, v51, v52);
      v29 = static SessionActionNotice.QueueItemType.== infix(_:_:)(&v70, v68.i64);
      outlined destroy of IDView<AvatarStackView, [UUID]>(v73, &_s15ConversationKit19SessionActionNoticeV0E4TypeO_AEtMd);
      v53 = OUTLINED_FUNCTION_145_1();
      outlined consume of SessionActionNotice.NoticeType(v53, v54, v55);
      v56 = OUTLINED_FUNCTION_23_40();
      outlined consume of SessionActionNotice.NoticeType(v56, v57, v58);
      return v29 & 1;
    case 2uLL:
      if (v7.i64[0] >> 62 != 2)
      {
        goto LABEL_102;
      }

      v30 = v3 == v6.i64[0] && v2 == v6.i64[1];
      if (!v30)
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v32 = OUTLINED_FUNCTION_73_8();
        outlined copy of SessionActionNotice.NoticeType(v32, v33, v34);
        v35 = OUTLINED_FUNCTION_23_40();
        outlined copy of SessionActionNotice.NoticeType(v35, v36, v37);
        outlined destroy of IDView<AvatarStackView, [UUID]>(v73, &_s15ConversationKit19SessionActionNoticeV0E4TypeO_AEtMd);
        return v31 & 1;
      }

      outlined copy of SessionActionNotice.NoticeType(v3, v2, v7.u64[0]);
      v62 = OUTLINED_FUNCTION_23_40();
      outlined copy of SessionActionNotice.NoticeType(v62, v63, v64);
      goto LABEL_101;
    case 3uLL:
      OUTLINED_FUNCTION_133();
      if (v30 && !(v2 | v3 | v4))
      {
        if (v7.i64[0] >> 62 != 3 || v7.i64[0] != 0xC000000000000000 || (v8 | v6.i64[0] | v9) != 0)
        {
          goto LABEL_102;
        }

LABEL_101:
        outlined destroy of IDView<AvatarStackView, [UUID]>(v73, &_s15ConversationKit19SessionActionNoticeV0E4TypeO_AEtMd);
        v29 = 1;
        return v29 & 1;
      }

      if (v3 != 1 || v2 || (OUTLINED_FUNCTION_133(), !v30) || v4)
      {
        if (v3 != 2 || v2 || (OUTLINED_FUNCTION_133(), !v30) || v4)
        {
          if (v3 != 3 || v2 || (OUTLINED_FUNCTION_133(), !v30) || v4)
          {
            if (v3 != 4 || v2 || (OUTLINED_FUNCTION_133(), !v30) || v4)
            {
              if (v3 != 5 || v2 || (OUTLINED_FUNCTION_133(), !v30) || v4)
              {
                if (v3 != 6 || v2 || (OUTLINED_FUNCTION_133(), !v30) || v4)
                {
                  if (v3 != 7 || v2 || (OUTLINED_FUNCTION_133(), !v30) || v4)
                  {
                    if (v3 != 8 || v2 || (OUTLINED_FUNCTION_133(), !v30) || v4)
                    {
                      if (v3 != 9 || v2 || (OUTLINED_FUNCTION_133(), !v30) || v4)
                      {
                        OUTLINED_FUNCTION_41_17();
                        if (!v59)
                        {
                          goto LABEL_102;
                        }

                        v60 = vceqq_s64(v7, xmmword_1BC4CB170);
                        v61 = xmmword_1BC4D2F60;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_41_17();
                        if (!v59)
                        {
                          goto LABEL_102;
                        }

                        v60 = vceqq_s64(v7, xmmword_1BC4CB170);
                        v61 = xmmword_1BC4D67B0;
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_41_17();
                      if (!v59)
                      {
                        goto LABEL_102;
                      }

                      v60 = vceqq_s64(v7, xmmword_1BC4CB170);
                      v61 = xmmword_1BC4D67C0;
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_41_17();
                    if (!v59)
                    {
                      goto LABEL_102;
                    }

                    v60 = vceqq_s64(v7, xmmword_1BC4CB170);
                    v61 = xmmword_1BC4D67D0;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_41_17();
                  if (!v59)
                  {
                    goto LABEL_102;
                  }

                  v60 = vceqq_s64(v7, xmmword_1BC4CB170);
                  v61 = xmmword_1BC4D67E0;
                }
              }

              else
              {
                OUTLINED_FUNCTION_41_17();
                if (!v59)
                {
                  goto LABEL_102;
                }

                v60 = vceqq_s64(v7, xmmword_1BC4CB170);
                v61 = xmmword_1BC4D67F0;
              }
            }

            else
            {
              OUTLINED_FUNCTION_41_17();
              if (!v59)
              {
                goto LABEL_102;
              }

              v60 = vceqq_s64(v7, xmmword_1BC4CB170);
              v61 = xmmword_1BC4D6800;
            }
          }

          else
          {
            OUTLINED_FUNCTION_41_17();
            if (!v59)
            {
              goto LABEL_102;
            }

            v60 = vceqq_s64(v7, xmmword_1BC4CB170);
            v61 = xmmword_1BC4B6480;
          }
        }

        else
        {
          OUTLINED_FUNCTION_41_17();
          if (!v59)
          {
            goto LABEL_102;
          }

          v60 = vceqq_s64(v7, xmmword_1BC4CB170);
          v61 = xmmword_1BC4D6810;
        }
      }

      else
      {
        OUTLINED_FUNCTION_41_17();
        if (!v59)
        {
          goto LABEL_102;
        }

        v60 = vceqq_s64(v7, xmmword_1BC4CB170);
        v61 = xmmword_1BC4C9460;
      }

      if ((vaddvq_s32(vbicq_s8(xmmword_1BC4D67A0, vuzp1q_s32(vceqq_s64(v6, v61), v60))) & 0xF) == 0)
      {
        goto LABEL_101;
      }

LABEL_102:
      outlined copy of SessionActionNotice.NoticeType(v6.i64[0], v8, v7.u64[0]);
      v65 = OUTLINED_FUNCTION_23_40();
      outlined copy of SessionActionNotice.NoticeType(v65, v66, v67);
      outlined destroy of IDView<AvatarStackView, [UUID]>(v73, &_s15ConversationKit19SessionActionNoticeV0E4TypeO_AEtMd);
      v29 = 0;
      return v29 & 1;
    default:
      if (v7.i64[0] >> 62)
      {
        goto LABEL_102;
      }

      v70 = v3;
      v71 = v2;
      v72 = v5;
      v68 = v6;
      v69 = v7.i8[0];
      v10 = OUTLINED_FUNCTION_73_8();
      outlined copy of SessionActionNotice.NoticeType(v10, v11, v12);
      v13 = OUTLINED_FUNCTION_23_40();
      outlined copy of SessionActionNotice.NoticeType(v13, v14, v15);
      v16 = OUTLINED_FUNCTION_73_8();
      outlined copy of SessionActionNotice.NoticeType(v16, v17, v18);
      v19 = OUTLINED_FUNCTION_23_40();
      outlined copy of SessionActionNotice.NoticeType(v19, v20, v21);
      v22 = static SessionActionNotice.QueueItemType.== infix(_:_:)(&v70, v68.i64);
      outlined destroy of IDView<AvatarStackView, [UUID]>(v73, &_s15ConversationKit19SessionActionNoticeV0E4TypeO_AEtMd);
      v23 = OUTLINED_FUNCTION_73_8();
      outlined consume of SessionActionNotice.NoticeType(v23, v24, v25);
      v26 = OUTLINED_FUNCTION_23_40();
      outlined consume of SessionActionNotice.NoticeType(v26, v27, v28);
      v29 = v22 & (v4 == v9);
      return v29 & 1;
  }
}

void SessionActionNotice.fullSentence.getter()
{
  OUTLINED_FUNCTION_29();
  v324 = v2;
  v315 = type metadata accessor for AttributedString.InterpolationOptions();
  OUTLINED_FUNCTION_1();
  v316 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_40();
  v314 = v5;
  OUTLINED_FUNCTION_4_24();
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40();
  v317 = v8;
  OUTLINED_FUNCTION_4_24();
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40();
  v320 = v11;
  OUTLINED_FUNCTION_4_24();
  v331 = type metadata accessor for AttributedString.AttributeMergePolicy();
  OUTLINED_FUNCTION_1();
  v327 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40();
  v330 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  v325 = v312 - v17;
  v18 = OUTLINED_FUNCTION_4_24();
  v322 = type metadata accessor for Participant(v18);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_40();
  v321 = v20;
  OUTLINED_FUNCTION_4_24();
  v328 = type metadata accessor for AttributeContainer();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_82();
  v22 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v312 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = v312 - v43;
  v45 = type metadata accessor for SessionActionNotice(0);
  v46 = (v0 + *(v45 + 24));
  v47 = v46[3];
  v48 = v46[4];
  __swift_project_boxed_opaque_existential_1(v46, v47);
  (*(v48 + 224))(v47, v48);
  OUTLINED_FUNCTION_175_0();
  AttributeContainer.init()();
  OUTLINED_FUNCTION_208();
  v313 = v1;
  AttributedString.init(_:attributes:)();
  v319 = v45;
  v49 = *(v45 + 32);
  v329 = v0;
  v318 = *(v0 + v49);
  v326 = v22;
  if ((v318 & 1) == 0)
  {
    v50 = v325;
    _s15ConversationKit11ParticipantVSgWOcTm_0(v329 + *(v319 + 20), v325, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    OUTLINED_FUNCTION_115(v50, 1, v322);
    if (!v51)
    {
      OUTLINED_FUNCTION_3_119();
      _s15ConversationKit11ParticipantVWObTm_4();
      Participant.contactDetails.getter();
      v52 = v333;

      OUTLINED_FUNCTION_62_0();
      Participant.name(_:)();

      OUTLINED_FUNCTION_182_1();
      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      OUTLINED_FUNCTION_5_103();
      _s15ConversationKit11ParticipantVWOhTm_12();
      goto LABEL_6;
    }

    outlined destroy of IDView<AvatarStackView, [UUID]>(v50, &_s15ConversationKit11ParticipantVSgMd);
    v22 = v326;
  }

  (*(v24 + 16))(v41, v44, v22);
LABEL_6:
  v53 = v44;
  v332 = v41;
  v323 = v24;
  if (one-time initialization token for subjectContainer != -1)
  {
    OUTLINED_FUNCTION_20_41(&one-time initialization token for subjectContainer);
  }

  v54 = v328;
  v55 = __swift_project_value_buffer(v328, static AttributedStrings.Notices.subjectContainer);
  v56 = *MEMORY[0x1E69686E8];
  v57 = v327;
  v58 = v327[13];
  v59 = v330;
  v60 = v331;
  v58(v330, v56, v331);
  OUTLINED_FUNCTION_206();
  v325 = v53;
  AttributedString.mergeAttributes(_:mergePolicy:)();
  v61 = v57[1];
  (v61)(v59, v60);
  v62 = v56;
  v63 = v57 + 1;
  v321 = v58;
  v58(v59, v62, v60);
  OUTLINED_FUNCTION_206();
  AttributedString.mergeAttributes(_:mergePolicy:)();
  (v61)(v59, v60);
  v65 = *v329;
  v64 = v329[1];
  v67 = v329[2];
  v66 = v329[3];
  v322 = v55;
  switch(v67 >> 62)
  {
    case 1uLL:
      if (v67)
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_83_7();
        OUTLINED_FUNCTION_193_0();
        String.LocalizationValue.init(stringLiteral:)();
        goto LABEL_24;
      }

      v69 = v326;
      v83 = v323;
      OUTLINED_FUNCTION_103_2();
      if (v94)
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_83_7();
        OUTLINED_FUNCTION_193_0();
        String.LocalizationValue.init(stringLiteral:)();
      }

      else
      {
        OUTLINED_FUNCTION_94_4();
        OUTLINED_FUNCTION_266_0();
        v120._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v120);
        v333 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_0_151();
        lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v121, v122, MEMORY[0x1E69686F8]);
        v59 = v63;
        v123 = OUTLINED_FUNCTION_208();
        __swift_instantiateConcreteTypeFromMangledNameV2(v123, v124);
        OUTLINED_FUNCTION_134();
        lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v125, v126);
        OUTLINED_FUNCTION_78_6();
        v329 = v61;
        v127 = v314;
        OUTLINED_FUNCTION_10_64();
        v54 = v328;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OUTLINED_FUNCTION_184_0();
        OUTLINED_FUNCTION_27_34();
        v128 = v127;
        v61 = v329;
        v129(v128, v63);
        OUTLINED_FUNCTION_100_3();
        v131._countAndFlagsBits = v130 + 1;
        v131._object = (v132 | 0x8000000000000000);
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v131);
        OUTLINED_FUNCTION_83_7();
        String.LocalizationValue.init(stringInterpolation:)();
      }

      OUTLINED_FUNCTION_182_1();
      AttributedString.init(cnkLocalized:)();
      goto LABEL_55;
    case 2uLL:
      v68 = HIBYTE(v64) & 0xF;
      if ((v64 & 0x2000000000000000) == 0)
      {
        v68 = v65 & 0xFFFFFFFFFFFFLL;
      }

      if (!v68)
      {
        v69 = v326;
        OUTLINED_FUNCTION_103_2();
        if (v93)
        {
          OUTLINED_FUNCTION_83_7();
          String.LocalizationValue.init(stringLiteral:)();
        }

        else
        {
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v111._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v111);
          v333 = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_0_151();
          lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v112, v113, MEMORY[0x1E69686F8]);
          v59 = &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR;
          v114 = OUTLINED_FUNCTION_15_14();
          __swift_instantiateConcreteTypeFromMangledNameV2(v114, v115);
          OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_30_20();
          lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v116, v117);
          OUTLINED_FUNCTION_78_6();
          OUTLINED_FUNCTION_72_10();
          OUTLINED_FUNCTION_10_64();
          v54 = v328;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OUTLINED_FUNCTION_184_0();
          OUTLINED_FUNCTION_27_34();
          v118(v61, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
          v119._countAndFlagsBits = OUTLINED_FUNCTION_156_1();
          v119._object = 0xE800000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v119);
          OUTLINED_FUNCTION_83_7();
          String.LocalizationValue.init(stringInterpolation:)();
        }

        v83 = v323;
        v81 = v324;
        goto LABEL_103;
      }

      v69 = v326;
      v59 = v317;
      OUTLINED_FUNCTION_103_2();
      if (v70)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v71 = OUTLINED_FUNCTION_166_0();
      }

      else
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v98._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v98);
        v333 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_0_151();
        lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v99, v100, MEMORY[0x1E69686F8]);
        v101 = OUTLINED_FUNCTION_15_14();
        __swift_instantiateConcreteTypeFromMangledNameV2(v101, v102);
        OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_30_20();
        lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v103, v104);
        OUTLINED_FUNCTION_78_6();
        OUTLINED_FUNCTION_72_10();
        v59 = v317;
        v105 = v315;
        v54 = v328;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
        OUTLINED_FUNCTION_27_34();
        v69 = v326;
        v106(v61, v105);
        OUTLINED_FUNCTION_156_1();
        OUTLINED_FUNCTION_254_1();
      }

      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v71);
      v107._countAndFlagsBits = v65;
      v107._object = v64;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v107);
      v108._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v108);
      OUTLINED_FUNCTION_83_7();
      String.LocalizationValue.init(stringInterpolation:)();
      OUTLINED_FUNCTION_182_1();
      AttributedString.init(cnkLocalized:)();
      v83 = v323;
LABEL_55:
      (*(v83 + 32))(v324, v59, v69);
      goto LABEL_105;
    case 3uLL:
      OUTLINED_FUNCTION_79_8();
      if (!v51 || v64 | v65 | v73)
      {
        if (v65 == 1 && !v64)
        {
          OUTLINED_FUNCTION_79_8();
          if (v51)
          {
            if (!v84)
            {
              v327 = v63;
              v85 = OUTLINED_FUNCTION_44_0();
              __swift_project_boxed_opaque_existential_1(v85, v86);
              v87 = OUTLINED_FUNCTION_2_14();
              v89 = v88(v87);
              v81 = v324;
              if (v89)
              {
                v90 = v89;
                v59 = [v89 activity];
                v91 = [v59 isScreenSharingActivity];

                if (v91)
                {
                  v69 = v326;
                  OUTLINED_FUNCTION_103_2();
                  if (v92)
                  {
                    OUTLINED_FUNCTION_83_7();
                    String.LocalizationValue.init(stringLiteral:)();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_48_14();
                    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                    v193._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
                    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v193);
                    v333 = MEMORY[0x1E69E7CC0];
                    OUTLINED_FUNCTION_0_151();
                    lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v194, v195, MEMORY[0x1E69686F8]);
                    v59 = &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR;
                    v196 = OUTLINED_FUNCTION_15_14();
                    __swift_instantiateConcreteTypeFromMangledNameV2(v196, v197);
                    OUTLINED_FUNCTION_30_20();
                    lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v198, v199);
                    OUTLINED_FUNCTION_30_27();
                    OUTLINED_FUNCTION_10_64();
                    dispatch thunk of SetAlgebra.init<A>(_:)();
                    OUTLINED_FUNCTION_185_0();
                    OUTLINED_FUNCTION_27_34();
                    v200(1, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
                    OUTLINED_FUNCTION_100_3();
                    v202._countAndFlagsBits = v201 + 5;
                    v202._object = (v203 | 0x8000000000000000);
                    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v202);
                    OUTLINED_FUNCTION_83_7();
                    String.LocalizationValue.init(stringInterpolation:)();
                  }

                  v54 = v328;
                  goto LABEL_84;
                }
              }

              v69 = v326;
              OUTLINED_FUNCTION_103_2();
              if (v133)
              {
                OUTLINED_FUNCTION_48_14();
                String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v134 = 0x80E2206465646E45;
                v135 = 0xA90000000000009CLL;
              }

              else
              {
                OUTLINED_FUNCTION_203_1();
                String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v156._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v156);
                v333 = MEMORY[0x1E69E7CC0];
                OUTLINED_FUNCTION_0_151();
                lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v157, v158, MEMORY[0x1E69686F8]);
                v159 = OUTLINED_FUNCTION_11_36();
                __swift_instantiateConcreteTypeFromMangledNameV2(v159, v160);
                lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A], &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd);
                v161 = OUTLINED_FUNCTION_30_27();
                OUTLINED_FUNCTION_192(v161, v162, v163);
                OUTLINED_FUNCTION_185_0();
                OUTLINED_FUNCTION_27_34();
                v164 = OUTLINED_FUNCTION_11_36();
                v165(v164);
                v134 = 0xE2206465646E6520;
                v135 = 0xAA00000000009C80;
              }

              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v134);
              v166 = v312[9];
              v167 = OUTLINED_FUNCTION_44_0();
              __swift_project_boxed_opaque_existential_1(v167, v168);
              v169 = OUTLINED_FUNCTION_2_14();
              v337._countAndFlagsBits = v170(v169);
              OUTLINED_FUNCTION_225_0(v337);

              OUTLINED_FUNCTION_172();
              OUTLINED_FUNCTION_169_0();
              AttributedString.init(cnkLocalized:)();
              v150 = v323;
              v153 = *(v323 + 32);
              v151 = v81;
              v152 = v166;
              goto LABEL_69;
            }
          }
        }

        if (v65 == 2 && !v64)
        {
          OUTLINED_FUNCTION_79_8();
          if (v51)
          {
            if (!v109)
            {
              OUTLINED_FUNCTION_103_2();
              if (v110)
              {
                OUTLINED_FUNCTION_11();
                OUTLINED_FUNCTION_83_7();
                OUTLINED_FUNCTION_193_0();
                String.LocalizationValue.init(stringLiteral:)();
              }

              else
              {
                OUTLINED_FUNCTION_266_0();
                v184._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v184);
                v333 = MEMORY[0x1E69E7CC0];
                OUTLINED_FUNCTION_0_151();
                lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v185, v186, MEMORY[0x1E69686F8]);
                v59 = &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR;
                v187 = OUTLINED_FUNCTION_15_14();
                __swift_instantiateConcreteTypeFromMangledNameV2(v187, v188);
                OUTLINED_FUNCTION_30_20();
                lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v189, v190);
                OUTLINED_FUNCTION_30_27();
                OUTLINED_FUNCTION_10_64();
                v54 = v328;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
                OUTLINED_FUNCTION_27_34();
                v191(2, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
                v192._countAndFlagsBits = 0xD000000000000011;
                v192._object = 0x80000001BC50D4E0;
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v192);
                OUTLINED_FUNCTION_83_7();
                String.LocalizationValue.init(stringInterpolation:)();
              }

              v83 = v323;
              v81 = v324;
              v69 = v326;
LABEL_103:
              OUTLINED_FUNCTION_182_1();
              AttributedString.init(cnkLocalized:)();
              goto LABEL_104;
            }
          }
        }

        if (v65 == 3 && !v64)
        {
          OUTLINED_FUNCTION_79_8();
          if (v51)
          {
            if (!v154)
            {
              OUTLINED_FUNCTION_103_2();
              if (v155)
              {
                OUTLINED_FUNCTION_194_1(0x73756150u);
                OUTLINED_FUNCTION_83_7();
                String.LocalizationValue.init(stringLiteral:)();
              }

              else
              {
                OUTLINED_FUNCTION_94_4();
                String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v208._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v208);
                v333 = MEMORY[0x1E69E7CC0];
                OUTLINED_FUNCTION_0_151();
                lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v209, v210, MEMORY[0x1E69686F8]);
                v59 = &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR;
                v211 = OUTLINED_FUNCTION_15_14();
                __swift_instantiateConcreteTypeFromMangledNameV2(v211, v212);
                OUTLINED_FUNCTION_204();
                OUTLINED_FUNCTION_30_20();
                lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v213, v214);
                OUTLINED_FUNCTION_39_16();
                v216 = *(v215 - 256);
                OUTLINED_FUNCTION_10_64();
                v54 = v328;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
                OUTLINED_FUNCTION_27_34();
                v217(v216, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
                OUTLINED_FUNCTION_11();
                v218._countAndFlagsBits = OUTLINED_FUNCTION_193_0();
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v218);
                OUTLINED_FUNCTION_83_7();
                String.LocalizationValue.init(stringInterpolation:)();
              }

              v83 = v323;
              v81 = v324;
              v69 = v326;
              goto LABEL_103;
            }
          }
        }

        if (v65 == 4 && !v64)
        {
          OUTLINED_FUNCTION_79_8();
          if (v51)
          {
            if (!v182)
            {
              OUTLINED_FUNCTION_103_2();
              if (v183)
              {
                OUTLINED_FUNCTION_83_7();
                String.LocalizationValue.init(stringLiteral:)();
              }

              else
              {
                OUTLINED_FUNCTION_94_4();
                String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v221._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v221);
                v333 = MEMORY[0x1E69E7CC0];
                OUTLINED_FUNCTION_0_151();
                lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v222, v223, MEMORY[0x1E69686F8]);
                v59 = &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR;
                v224 = OUTLINED_FUNCTION_15_14();
                __swift_instantiateConcreteTypeFromMangledNameV2(v224, v225);
                OUTLINED_FUNCTION_204();
                OUTLINED_FUNCTION_30_20();
                lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v226, v227);
                OUTLINED_FUNCTION_39_16();
                v229 = *(v228 - 256);
                OUTLINED_FUNCTION_10_64();
                v54 = v328;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
                OUTLINED_FUNCTION_27_34();
                v230(v229, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
                v231._countAndFlagsBits = OUTLINED_FUNCTION_194_1(0x766F6D20u);
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v231);
                OUTLINED_FUNCTION_83_7();
                String.LocalizationValue.init(stringInterpolation:)();
              }

              v83 = v323;
              v81 = v324;
              v69 = v326;
              goto LABEL_103;
            }
          }
        }

        if (v65 == 5 && !v64)
        {
          OUTLINED_FUNCTION_79_8();
          if (v51)
          {
            if (!v204)
            {
              OUTLINED_FUNCTION_103_2();
              if (v205)
              {
                OUTLINED_FUNCTION_48_14();
                OUTLINED_FUNCTION_270_1();
                v206 = 0x2064657070696B53;
                v207 = 0xAB000000009C80E2;
              }

              else
              {
                OUTLINED_FUNCTION_219_0();
                v240._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v240);
                v333 = MEMORY[0x1E69E7CC0];
                OUTLINED_FUNCTION_0_151();
                lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v241, v242, MEMORY[0x1E69686F8]);
                v243 = OUTLINED_FUNCTION_208();
                __swift_instantiateConcreteTypeFromMangledNameV2(v243, v244);
                OUTLINED_FUNCTION_134();
                lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v245, v246);
                v247 = OUTLINED_FUNCTION_39_16();
                OUTLINED_FUNCTION_170_2(v247, v248, v249);
                String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
                OUTLINED_FUNCTION_27_34();
                v250(v63, v54);
                v206 = OUTLINED_FUNCTION_155(0x7070696B7320);
              }

              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v206);
              v83 = v323;
              v251 = OUTLINED_FUNCTION_26_34();
              v339._countAndFlagsBits = v252(v251);
              OUTLINED_FUNCTION_225_0(v339);

              OUTLINED_FUNCTION_172();
              OUTLINED_FUNCTION_169_0();
LABEL_116:
              OUTLINED_FUNCTION_203_1();
              AttributedString.init(cnkLocalized:)();
              v253 = OUTLINED_FUNCTION_197_0();
              v69 = v326;
              v254(v253);
              goto LABEL_70;
            }
          }
        }

        if (v65 == 6 && !v64)
        {
          OUTLINED_FUNCTION_79_8();
          if (v51)
          {
            if (!v219)
            {
              v83 = v323;
              OUTLINED_FUNCTION_103_2();
              if (v220)
              {
                OUTLINED_FUNCTION_83_7();
                String.LocalizationValue.init(stringLiteral:)();
              }

              else
              {
                OUTLINED_FUNCTION_94_4();
                OUTLINED_FUNCTION_270_1();
                v260._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v260);
                v333 = MEMORY[0x1E69E7CC0];
                OUTLINED_FUNCTION_0_151();
                lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v261, v262, MEMORY[0x1E69686F8]);
                v59 = &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR;
                v263 = OUTLINED_FUNCTION_15_14();
                __swift_instantiateConcreteTypeFromMangledNameV2(v263, v264);
                OUTLINED_FUNCTION_204();
                OUTLINED_FUNCTION_30_20();
                lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v265, v266);
                OUTLINED_FUNCTION_78_6();
                OUTLINED_FUNCTION_72_10();
                OUTLINED_FUNCTION_10_64();
                v54 = v328;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                OUTLINED_FUNCTION_184_0();
                OUTLINED_FUNCTION_27_34();
                v267(v61, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
                v268._countAndFlagsBits = 0x6465746164707520;
                v268._object = 0xEE00657565757120;
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v268);
                OUTLINED_FUNCTION_83_7();
                String.LocalizationValue.init(stringInterpolation:)();
              }

              v81 = v324;
              v69 = v326;
              goto LABEL_103;
            }
          }
        }

        if (v65 != 7 || v64 || (OUTLINED_FUNCTION_79_8(), !v51) || v235)
        {
          if (v65 != 8 || v64 || (OUTLINED_FUNCTION_79_8(), !v51) || v255)
          {
            if (v65 == 9 && !v64)
            {
              OUTLINED_FUNCTION_79_8();
              if (v51)
              {
                if (!v269)
                {
                  v83 = v323;
                  OUTLINED_FUNCTION_103_2();
                  if (v270)
                  {
                    OUTLINED_FUNCTION_48_14();
                    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                    v271._countAndFlagsBits = 0xD000000000000015;
                    v271._object = 0x80000001BC50D420;
                    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v271);
                    v333 = MEMORY[0x1E69E7CC0];
                    OUTLINED_FUNCTION_0_151();
                    lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v272, v273, MEMORY[0x1E69686F8]);
                    v274 = OUTLINED_FUNCTION_15_14();
                    __swift_instantiateConcreteTypeFromMangledNameV2(v274, v275);
                    OUTLINED_FUNCTION_30_20();
                    lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v276, v277);
                    OUTLINED_FUNCTION_39_16();
                    v279 = *(v278 - 256);
                    OUTLINED_FUNCTION_10_64();
                    dispatch thunk of SetAlgebra.init<A>(_:)();
                    String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
                    OUTLINED_FUNCTION_27_34();
                    v280(v279, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
                    v281 = OUTLINED_FUNCTION_5_2();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_94_4();
                    OUTLINED_FUNCTION_266_0();
                    v299._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
                    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v299);
                    v333 = MEMORY[0x1E69E7CC0];
                    OUTLINED_FUNCTION_0_151();
                    lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v300, v301, MEMORY[0x1E69686F8]);
                    v302 = OUTLINED_FUNCTION_15_14();
                    __swift_instantiateConcreteTypeFromMangledNameV2(v302, v303);
                    OUTLINED_FUNCTION_30_20();
                    lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v304, v305);
                    OUTLINED_FUNCTION_78_6();
                    OUTLINED_FUNCTION_72_10();
                    OUTLINED_FUNCTION_10_64();
                    dispatch thunk of SetAlgebra.init<A>(_:)();
                    OUTLINED_FUNCTION_184_0();
                    OUTLINED_FUNCTION_27_34();
                    v306(v61, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
                    OUTLINED_FUNCTION_100_3();
                    v281 = v307 + 1;
                    v282 = v308 | 0x8000000000000000;
                  }

                  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v281);
                  OUTLINED_FUNCTION_169_0();
                  OUTLINED_FUNCTION_203_1();
                  AttributedString.init(cnkLocalized:)();
                  v309 = OUTLINED_FUNCTION_197_0();
                  v310 = v326;
                  v311(v309);
                  v69 = v310;
                  goto LABEL_70;
                }
              }
            }

            v83 = v323;
            OUTLINED_FUNCTION_103_2();
            if (v283)
            {
              OUTLINED_FUNCTION_48_14();
              OUTLINED_FUNCTION_270_1();
              v284 = OUTLINED_FUNCTION_50_16();
            }

            else
            {
              OUTLINED_FUNCTION_219_0();
              v286._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v286);
              v333 = MEMORY[0x1E69E7CC0];
              OUTLINED_FUNCTION_0_151();
              lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v287, v288, MEMORY[0x1E69686F8]);
              v289 = OUTLINED_FUNCTION_208();
              __swift_instantiateConcreteTypeFromMangledNameV2(v289, v290);
              OUTLINED_FUNCTION_134();
              lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v291, v292);
              v293 = OUTLINED_FUNCTION_39_16();
              OUTLINED_FUNCTION_170_2(v293, v294, v295);
              String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
              OUTLINED_FUNCTION_27_34();
              v296(v63, v54);
              v284 = OUTLINED_FUNCTION_155(0x747261747320);
            }

            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v284);
            v297 = OUTLINED_FUNCTION_26_34();
            v340._countAndFlagsBits = v298(v297);
            OUTLINED_FUNCTION_225_0(v340);

            OUTLINED_FUNCTION_172();
            OUTLINED_FUNCTION_169_0();
            goto LABEL_116;
          }

          v333 = 0;
          v334 = 0xE000000000000000;
          _StringGuts.grow(_:)(16);

          v333 = 10256610;
          v334 = 0xA300000000000000;
          v256 = OUTLINED_FUNCTION_26_34();
          v258 = v257(v256);
          MEMORY[0x1BFB20B10](v258);

          MEMORY[0x1BFB20B10](0x68746977209D80E2, 0xA900000000000020);
          lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968870]);
          v69 = v326;
          v259 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1BFB20B10](v259);

          OUTLINED_FUNCTION_182_1();
          AttributeContainer.init()();
          v54 = v328;
          OUTLINED_FUNCTION_30_20();
          AttributedString.init(_:attributes:)();
        }

        else
        {
          OUTLINED_FUNCTION_48_14();
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v236._countAndFlagsBits = OUTLINED_FUNCTION_50_16();
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v236);
          v237 = OUTLINED_FUNCTION_26_34();
          v338._countAndFlagsBits = v238(v237);
          OUTLINED_FUNCTION_225_0(v338);
          v54 = v328;

          OUTLINED_FUNCTION_11();
          v239._countAndFlagsBits = 0x1000000000000010;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v239);
          OUTLINED_FUNCTION_83_7();
          String.LocalizationValue.init(stringInterpolation:)();
LABEL_24:
          AttributedString.init(cnkLocalized:)();
LABEL_25:
          v69 = v326;
        }

        v83 = v323;
        goto LABEL_105;
      }

      v327 = v63;
      v74 = OUTLINED_FUNCTION_44_0();
      __swift_project_boxed_opaque_existential_1(v74, v75);
      v76 = OUTLINED_FUNCTION_2_14();
      v78 = v77(v76);
      if (!v78 || (v79 = v78, v59 = [v78 activity], v80 = objc_msgSend(v59, sel_isScreenSharingActivity), v79, v59, !v80))
      {
        v69 = v326;
        OUTLINED_FUNCTION_103_2();
        if (v95)
        {
          OUTLINED_FUNCTION_48_14();
          OUTLINED_FUNCTION_270_1();
          v96 = OUTLINED_FUNCTION_50_16();
        }

        else
        {
          OUTLINED_FUNCTION_203_1();
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v136._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v136);
          v333 = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_0_151();
          lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v137, v138, MEMORY[0x1E69686F8]);
          v139 = OUTLINED_FUNCTION_11_36();
          __swift_instantiateConcreteTypeFromMangledNameV2(v139, v140);
          lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A], &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd);
          v141 = OUTLINED_FUNCTION_30_27();
          OUTLINED_FUNCTION_192(v141, v142, v143);
          OUTLINED_FUNCTION_185_0();
          OUTLINED_FUNCTION_27_34();
          v144 = OUTLINED_FUNCTION_11_36();
          v145(v144);
          v96 = OUTLINED_FUNCTION_155(0x747261747320);
        }

        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v96);
        v146 = OUTLINED_FUNCTION_44_0();
        __swift_project_boxed_opaque_existential_1(v146, v147);
        v148 = OUTLINED_FUNCTION_2_14();
        v336._countAndFlagsBits = v149(v148);
        OUTLINED_FUNCTION_225_0(v336);

        OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_169_0();
        OUTLINED_FUNCTION_203_1();
        AttributedString.init(cnkLocalized:)();
        v150 = v323;
        v151 = OUTLINED_FUNCTION_197_0();
LABEL_69:
        v153(v151, v152, v69);
        v83 = v150;
LABEL_70:
        v54 = v328;
        goto LABEL_105;
      }

      v81 = v324;
      v69 = v326;
      OUTLINED_FUNCTION_103_2();
      if (v82)
      {
        OUTLINED_FUNCTION_83_7();
        String.LocalizationValue.init(stringLiteral:)();
      }

      else
      {
        OUTLINED_FUNCTION_48_14();
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v171._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v171);
        v333 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_0_151();
        lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v172, v173, MEMORY[0x1E69686F8]);
        v59 = &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR;
        v174 = OUTLINED_FUNCTION_15_14();
        __swift_instantiateConcreteTypeFromMangledNameV2(v174, v175);
        OUTLINED_FUNCTION_30_20();
        lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v176, v177);
        OUTLINED_FUNCTION_30_27();
        OUTLINED_FUNCTION_10_64();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OUTLINED_FUNCTION_185_0();
        OUTLINED_FUNCTION_27_34();
        v178(v65, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
        OUTLINED_FUNCTION_100_3();
        v180._countAndFlagsBits = v179 + 7;
        v180._object = (v181 | 0x8000000000000000);
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v180);
        OUTLINED_FUNCTION_83_7();
        String.LocalizationValue.init(stringInterpolation:)();
      }

      v54 = v328;
LABEL_84:
      OUTLINED_FUNCTION_182_1();
      AttributedString.init(cnkLocalized:)();
      v83 = v323;
LABEL_104:
      (*(v83 + 32))(v81, v59, v69);
LABEL_105:
      v232 = v321;
      if (one-time initialization token for foregroundContainer != -1)
      {
        OUTLINED_FUNCTION_22_39(&one-time initialization token for foregroundContainer);
      }

      __swift_project_value_buffer(v54, static AttributedStrings.Notices.foregroundContainer);
      v232(v330, *MEMORY[0x1E69686E0], v331);
      OUTLINED_FUNCTION_76();
      AttributedString.mergeAttributes(_:mergePolicy:)();
      v233 = OUTLINED_FUNCTION_206();
      (v61)(v233);
      AttributedString.replaceLinks(with:)();
      v234 = *(v83 + 8);
      v234(v332, v69);
      v234(v325, v69);
      OUTLINED_FUNCTION_30_0();
      return;
    default:
      v333 = v65;
      v334 = v64;
      v335 = v67;
      SessionActionNotice.fullSentence(for:count:)(&v333, v66, v324);
      goto LABEL_25;
  }
}

uint64_t SessionActionNotice.title.getter()
{
  OUTLINED_FUNCTION_46_17();
  if (*(v0 + v1) == 1)
  {

    return SessionActionNotice.actionDescription.getter();
  }

  else
  {

    return SessionActionNotice.attributionDescription.getter();
  }
}

uint64_t SessionActionNotice.attributedSubtitle.getter()
{
  OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for AttributeContainer();
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_46_17();
  if (*(v0 + v3) == 1)
  {
    SessionActionNotice.attributionDescription.getter();
  }

  else
  {
    SessionActionNotice.actionDescription.getter();
  }

  OUTLINED_FUNCTION_175_0();
  AttributeContainer.init()();
  OUTLINED_FUNCTION_208();
  return AttributedString.init(_:attributes:)();
}

BOOL SessionActionNotice.isSticky.getter()
{
  SessionActionNotice.noticeAccessory.getter();
  if (v2 >= 2)
  {
    outlined consume of NoticeAccessory(v1, v2);
  }

  return v2 > 1;
}

uint64_t AppLaunchNotice.bundleIdentifier.getter()
{
  OUTLINED_FUNCTION_214_1();

  return OUTLINED_FUNCTION_46();
}

void AppLaunchNotice.fullSentence.getter()
{
  OUTLINED_FUNCTION_29();
  v22 = type metadata accessor for AttributedString.AttributeMergePolicy();
  OUTLINED_FUNCTION_1();
  v21 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_40();
  v20 = v3;
  OUTLINED_FUNCTION_4_24();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  v8 = type metadata accessor for AppLaunchNotice(0);
  v9 = v0;
  v10 = *(v0 + *(v8 + 28));
  v11 = MEMORY[0x1E69E7D40];
  v12 = (*((*MEMORY[0x1E69E7D40] & *v10) + 0x68))();
  MEMORY[0x1BFB20B10](v12);

  v13 = MEMORY[0x1BFB20B10](10322146, 0xA300000000000000);
  v14 = *(v10 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_type);
  v15 = (*((*v11 & *v10) + 0x70))(v13);
  if (!v14)
  {

    if (v15)
    {
      OUTLINED_FUNCTION_11();
    }

    goto LABEL_8;
  }

  if (v14 == 1)
  {

LABEL_8:
    String.LocalizationValue.init(stringLiteral:)();
    goto LABEL_9;
  }

  if (*(v9 + *(v8 + 36)) == 1)
  {

    AppLaunchNotice.attributedCollaborationTitle()();
    goto LABEL_10;
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
  v18._countAndFlagsBits = 10256610;
  v18._object = 0xA300000000000000;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v18);

  OUTLINED_FUNCTION_11();
  v19._countAndFlagsBits = 0x100000000000001CLL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
  String.LocalizationValue.init(stringInterpolation:)();
LABEL_9:
  AttributedString.init(cnkLocalized:)();
LABEL_10:
  if (one-time initialization token for subjectContainer != -1)
  {
    OUTLINED_FUNCTION_20_41(&one-time initialization token for subjectContainer);
  }

  v16 = type metadata accessor for AttributeContainer();
  __swift_project_value_buffer(v16, static AttributedStrings.Notices.subjectContainer);
  (*(v21 + 104))(v20, *MEMORY[0x1E69686E0], v22);
  OUTLINED_FUNCTION_208();
  AttributedString.mergeAttributes(_:mergePolicy:)();
  (*(v21 + 8))(v20, v22);
  OUTLINED_FUNCTION_30_0();
}