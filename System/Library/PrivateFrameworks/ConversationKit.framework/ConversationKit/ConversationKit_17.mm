void SharedContentViewController.animateOutPreviousScreenContent()()
{
  if (((*((*MEMORY[0x1E69E7D40] & *v0) + 0xC8))() & 1) == 0)
  {
    v1 = OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_previousScreenSnapshot;
    [*(v0 + OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_previousScreenSnapshot) removeFromSuperview];
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 snapshotViewAfterScreenUpdates_];

      v5 = *(v0 + v1);
      *(v0 + v1) = v4;
      v6 = v4;

      if (!v6)
      {
LABEL_6:
        [*(v0 + OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_sharedContentView) setAlpha_];
        v9 = objc_opt_self();
        OUTLINED_FUNCTION_20();
        v10 = swift_allocObject();
        *(v10 + 16) = v0;
        v20 = partial apply for closure #1 in SharedContentViewController.animateOutPreviousScreenContent();
        v21 = v10;
        v16 = MEMORY[0x1E69E9820];
        v17 = 1107296256;
        v18 = thunk for @escaping @callee_guaranteed () -> ();
        v19 = &block_descriptor_44_0;
        v11 = _Block_copy(&v16);
        v12 = v0;

        OUTLINED_FUNCTION_20();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        v20 = partial apply for closure #2 in SharedContentViewController.animateOutPreviousScreenContent();
        v21 = v13;
        v16 = MEMORY[0x1E69E9820];
        v17 = 1107296256;
        v18 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
        v19 = &block_descriptor_50;
        v14 = _Block_copy(&v16);
        v15 = v12;

        [v9 animateWithDuration:v11 animations:v14 completion:0.3];
        _Block_release(v14);
        _Block_release(v11);
        return;
      }

      v7 = [v0 view];
      if (v7)
      {
        v8 = v7;
        [v7 addSubview_];

        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id closure #1 in SharedContentViewController.animateOutPreviousScreenContent()(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_previousScreenSnapshot);
  if (v2)
  {
    [v2 setAlpha_];
  }

  v3 = *(a1 + OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_sharedContentView);

  return [v3 setAlpha_];
}

void closure #2 in SharedContentViewController.animateOutPreviousScreenContent()(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_previousScreenSnapshot;
  [*(a2 + OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_previousScreenSnapshot) removeFromSuperview];
  v4 = *(a2 + v3);
  *(a2 + v3) = 0;
}

id SharedContentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id SharedContentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedContentViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall SharedContentViewController.scrollViewDidZoom(_:)(UIScrollView *a1)
{
  SharedContentViewController.centerSharedContentView(in:)(a1);

  SharedContentViewController.updateCornerRadius()();
}

id SharedContentViewController.scrollViewDidEndZooming(_:with:atScale:)(void *a1)
{
  SharedContentViewController.centerSharedContentView(in:)(a1);

  return SharedContentViewController.updateCornerRadius()();
}

CGSize __swiftcall SharedContentViewController.preferredPiPContentAspectRatio()()
{
  OUTLINED_FUNCTION_29();
  v2 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  v51 = v4;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  v52 = v13;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23_19();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  v21 = OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_participant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v22 = v0;
  v23 = v21;
  v24 = v0 + v21;
  v25 = v2;
  outlined init with copy of Participant?(v24, v20, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (!__swift_getEnumTagSinglePayload(v20, 1, v2))
  {
    v49 = v1;
    v50 = v17;
    v26 = v51;
    OUTLINED_FUNCTION_1_55();
    _s15ConversationKit11ParticipantVWOcTm_2(v20, v10, v27);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v28 = Participant.deviceOrientation.getter();
    v30 = v29;
    OUTLINED_FUNCTION_0_55();
    _s15ConversationKit11ParticipantVWOhTm_2(v10, v31);
    if (v30)
    {
      goto LABEL_4;
    }

    v43 = v0 + v23;
    if ((v28 | 2) == 3)
    {
      v20 = v50;
      outlined init with copy of Participant?(v43, v50, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      if (!__swift_getEnumTagSinglePayload(v20, 1, v25))
      {
        OUTLINED_FUNCTION_1_55();
        _s15ConversationKit11ParticipantVWOcTm_2(v20, v7, v44);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        Participant.aspectRatio.getter(v53);
        OUTLINED_FUNCTION_0_55();
        _s15ConversationKit11ParticipantVWOhTm_2(v7, v45);
        if ((v54 & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v20 = v49;
      outlined init with copy of Participant?(v43, v49, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      if (!__swift_getEnumTagSinglePayload(v20, 1, v25))
      {
        OUTLINED_FUNCTION_1_55();
        _s15ConversationKit11ParticipantVWOcTm_2(v20, v26, v46);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        Participant.aspectRatio.getter(v53);
        OUTLINED_FUNCTION_0_55();
        _s15ConversationKit11ParticipantVWOhTm_2(v26, v47);
        if ((v54 & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_4;
      }
    }
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
LABEL_4:
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v32 = static OS_os_log.conversationKit;
  v33 = static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BC4BA940;
  v35 = v22 + v23;
  v36 = v52;
  outlined init with copy of Participant?(v35, v52, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  specialized >> prefix<A>(_:)();
  v38 = v37;
  v40 = v39;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  *(v34 + 56) = MEMORY[0x1E69E6158];
  *(v34 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v34 + 32) = v38;
  *(v34 + 40) = v40;
  os_log(_:dso:log:type:_:)("Couldn't determine participant orientation or size, falling back to a square PiP for participant: %@", 100, 2, &dword_1BBC58000, v32, v33, v34);

LABEL_7:
  OUTLINED_FUNCTION_30_0();
  result.height = v42;
  result.width = v41;
  return result;
}

__C::CGRect __swiftcall SharedContentViewController.frameForRestoreAnimation()()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 _referenceBounds];
  OUTLINED_FUNCTION_40_1();

  v1 = OUTLINED_FUNCTION_35();
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

Swift::String_optional __swiftcall SharedContentViewController.sharedContentSourceName()()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for SharedContentViewModel.ParticipantDetails(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_32_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34();
  v11 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_23_19();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  v16 = OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_participant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of Participant?(v0 + v16, v1, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (__swift_getEnumTagSinglePayload(v1, 1, v11) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  }

  else
  {
    outlined init with take of Participant(v1, v15);
    OUTLINED_FUNCTION_1_55();
    _s15ConversationKit11ParticipantVWOcTm_2(v15, v2, v17);
    SharedContentViewModel.ParticipantDetails.init(participant:)(v2);
    OUTLINED_FUNCTION_0_55();
    _s15ConversationKit11ParticipantVWOhTm_2(v15, v18);

    _s15ConversationKit11ParticipantVWOhTm_2(v6, type metadata accessor for SharedContentViewModel.ParticipantDetails);
  }

  OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_30_0();
  result.value._object = v20;
  result.value._countAndFlagsBits = v19;
  return result;
}

void specialized SharedContentViewController.getSharedContentSourceAvatarWithImageHandler(_:)(uint64_t a1, const void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchQoS();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v64 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - v21;
  v65 = swift_allocObject();
  *(v65 + 16) = a2;
  v23 = OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_participant;
  swift_beginAccess();
  v24 = a1;
  outlined init with copy of Participant?(a1 + v23, v22, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (__swift_getEnumTagSinglePayload(v22, 1, v7))
  {
    _Block_copy(a2);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  }

  else
  {
    _s15ConversationKit11ParticipantVWOcTm_2(v22, v11, type metadata accessor for Participant);
    _Block_copy(a2);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    Participant.contactDetails.getter();
    _s15ConversationKit11ParticipantVWOhTm_2(v11, type metadata accessor for Participant);
    v45 = aBlock;

    if (v45)
    {
      goto LABEL_18;
    }
  }

  outlined init with copy of Participant?(a1 + v23, v19, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (!__swift_getEnumTagSinglePayload(v19, 1, v7))
  {
    v46 = v57;
    _s15ConversationKit11ParticipantVWOcTm_2(v19, v57, type metadata accessor for Participant);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v47 = *(v46 + *(v7 + 28));
    if (!v47)
    {
      _s15ConversationKit11ParticipantVWOhTm_2(v46, type metadata accessor for Participant);
      goto LABEL_5;
    }

    v48 = v47;
    _s15ConversationKit11ParticipantVWOhTm_2(v46, type metadata accessor for Participant);
    v45 = [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];

LABEL_18:
    v49 = v45;
    v64 = *(a1 + OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_avatarImageQueue);
    v50 = swift_allocObject();
    v50[2] = v49;
    v50[3] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned UIImage?) -> ();
    v50[4] = v65;
    v70 = closure #1 in SharedContentViewController.getSharedContentSourceAvatarWithImageHandler(_:)partial apply;
    v71 = v50;
    aBlock = MEMORY[0x1E69E9820];
    v67 = 1107296256;
    v68 = thunk for @escaping @callee_guaranteed () -> ();
    v69 = &block_descriptor_38_0;
    v51 = _Block_copy(&aBlock);
    v52 = v49;

    v53 = v58;
    static DispatchQoS.unspecified.getter();
    v72 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v54 = v60;
    v55 = v63;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v53, v54, v51);
    _Block_release(v51);

    (*(v62 + 8))(v54, v55);
    (*(v59 + 8))(v53, v61);

    v44 = a2;
    goto LABEL_19;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
LABEL_5:
  v63 = a2;
  outlined init with copy of Participant?(a1 + v23, v16, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v7);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v26 = EnumTagSinglePayload == 1;
  if (EnumTagSinglePayload == 1)
  {
    v27 = 1819047278;
  }

  else
  {
    v27 = 0x6C6C756E6E6F6ELL;
  }

  if (v26)
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE700000000000000;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v29 = static OS_os_log.conversationKit;
  v30 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BC4BAA20;
  aBlock = v27;
  v67 = v28;
  v32 = MEMORY[0x1E69E6158];
  v33 = String.init<A>(reflecting:)();
  v35 = v34;
  *(v31 + 56) = v32;
  v36 = lazy protocol witness table accessor for type String and conformance String();
  *(v31 + 64) = v36;
  *(v31 + 32) = v33;
  *(v31 + 40) = v35;
  v37 = v24 + v23;
  v38 = v64;
  outlined init with copy of Participant?(v37, v64, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  specialized >> prefix<A>(_:)();
  v40 = v39;
  v42 = v41;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v38, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  *(v31 + 96) = v32;
  *(v31 + 104) = v36;
  *(v31 + 72) = v40;
  *(v31 + 80) = v42;
  os_log(_:dso:log:type:_:)("Unable to create usable contact from (%{public}@) participant: %{sensitive}@", 76, 2, &dword_1BBC58000, v29, v30, v31);

  v43 = v63;
  v63[2](v63, 0);

  v44 = v43;
LABEL_19:
  _Block_release(v44);
}

void SharedContentViewController.getSharedContentSourceAvatarWithImageHandler(_:)()
{
  OUTLINED_FUNCTION_29();
  v74 = v3;
  v75 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v71 = v6;
  v72 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v69 = v8 - v7;
  v70 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v68 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v67 = v12 - v11;
  v13 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  v66 = v15;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v20 = OUTLINED_FUNCTION_22(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4();
  v73 = v21;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v66 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_38_9();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_26_7();
  v27 = OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_participant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v28 = v0;
  outlined init with copy of Participant?(v0 + v27, v1, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (__swift_getEnumTagSinglePayload(v1, 1, v13))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  }

  else
  {
    OUTLINED_FUNCTION_1_55();
    _s15ConversationKit11ParticipantVWOcTm_2(v1, v18, v48);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    Participant.contactDetails.getter();
    OUTLINED_FUNCTION_0_55();
    _s15ConversationKit11ParticipantVWOhTm_2(v18, v49);
    v50 = v76;

    if (v50)
    {
      goto LABEL_18;
    }
  }

  outlined init with copy of Participant?(v28 + v27, v2, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (!__swift_getEnumTagSinglePayload(v2, 1, v13))
  {
    OUTLINED_FUNCTION_1_55();
    v51 = v66;
    _s15ConversationKit11ParticipantVWOcTm_2(v2, v66, v52);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v53 = *(v51 + *(v13 + 28));
    if (!v53)
    {
      OUTLINED_FUNCTION_0_55();
      _s15ConversationKit11ParticipantVWOhTm_2(v51, v65);
      goto LABEL_5;
    }

    v54 = v53;
    OUTLINED_FUNCTION_0_55();
    _s15ConversationKit11ParticipantVWOhTm_2(v51, v55);
    v50 = [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];

LABEL_18:
    v56 = v50;
    v57 = swift_allocObject();
    v58 = v74;
    v59 = v75;
    v57[2] = v56;
    v57[3] = v58;
    v57[4] = v59;
    v80 = partial apply for closure #1 in SharedContentViewController.getSharedContentSourceAvatarWithImageHandler(_:);
    v81 = v57;
    v76 = MEMORY[0x1E69E9820];
    v77 = 1107296256;
    v78 = thunk for @escaping @callee_guaranteed () -> ();
    v79 = &block_descriptor_9;
    v60 = _Block_copy(&v76);
    v61 = v56;

    v62 = v67;
    static DispatchQoS.unspecified.getter();
    v82 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v63 = v69;
    v64 = v72;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v62, v63, v60);
    _Block_release(v60);

    (*(v71 + 8))(v63, v64);
    (*(v68 + 8))(v62, v70);

    goto LABEL_19;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
LABEL_5:
  outlined init with copy of Participant?(v28 + v27, v24, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v29 = v28;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v13);
  OUTLINED_FUNCTION_33_3(v24);
  v31 = EnumTagSinglePayload == 1;
  if (EnumTagSinglePayload == 1)
  {
    v32 = 1819047278;
  }

  else
  {
    v32 = 0x6C6C756E6E6F6ELL;
  }

  if (v31)
  {
    v33 = 0xE400000000000000;
  }

  else
  {
    v33 = 0xE700000000000000;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v34 = static OS_os_log.conversationKit;
  v35 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1BC4BAA20;
  v76 = v32;
  v77 = v33;
  v37 = MEMORY[0x1E69E6158];
  v38 = String.init<A>(reflecting:)();
  v40 = v39;
  *(v36 + 56) = v37;
  v41 = lazy protocol witness table accessor for type String and conformance String();
  *(v36 + 64) = v41;
  *(v36 + 32) = v38;
  *(v36 + 40) = v40;
  v42 = v29 + v27;
  v43 = v73;
  outlined init with copy of Participant?(v42, v73, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  specialized >> prefix<A>(_:)();
  v45 = v44;
  v47 = v46;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  *(v36 + 96) = v37;
  *(v36 + 104) = v41;
  *(v36 + 72) = v45;
  *(v36 + 80) = v47;
  os_log(_:dso:log:type:_:)("Unable to create usable contact from (%{public}@) participant: %{sensitive}@", 76, 2, &dword_1BBC58000, v34, v35, v36);

  v74(0);
LABEL_19:
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in SharedContentViewController.getSharedContentSourceAvatarWithImageHandler(_:)(void *a1, void (*a2)(id))
{
  v4 = [objc_opt_self() currentTraitCollection];
  v5 = [v4 layoutDirection];

  v6 = v5 == 1;
  v7 = objc_opt_self();
  v8 = [objc_opt_self() mainScreen];
  [v8 scale];
  v10 = v9;

  v11 = [v7 scopeWithPointSize:v6 scale:0 rightToLeft:28.0 style:{28.0, v10}];
  v12 = [objc_allocWithZone(MEMORY[0x1E695D098]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BC4BAC30;
  *(v13 + 32) = a1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact, 0x1E695CD58);
  v14 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v12 avatarImageForContacts:isa scope:v11];

  v17 = v16;
  a2(v16);
  swift_unknownObjectRelease();
}

void SharedContentViewController.screenSharingStateMonitorDidUpdateScreenInfoForParticipant(_:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_7();
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  type metadata accessor for ScreenSharingStateMonitor(0);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = MEMORY[0x1E69E7D40];
    v15 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x108);
    v16 = swift_unknownObjectRetain();
    v15(v16);
    OUTLINED_FUNCTION_22_5(v1);
    if (v17)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      v18 = static os_log_type_t.error.getter();
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      v19 = static OS_os_log.conversationKit;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1BC4BA940;
      v21 = OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_participant;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of Participant?(v2 + v21, v7, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      specialized >> prefix<A>(_:)();
      v23 = v22;
      v25 = v24;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v20 + 32) = v23;
      *(v20 + 40) = v25;
      os_log(_:dso:log:_:_:)(v18, &dword_1BBC58000, v19, "Couldn't find active participant, not updating screen sharing view. Participant: %@", 83, 2, v20);
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = OUTLINED_FUNCTION_32_2();
      outlined init with take of Participant(v33, v34);
      (*((*v14 & *v0) + 0x178))(v12);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_0_55();
      _s15ConversationKit11ParticipantVWOhTm_2(v12, v35);
    }

    goto LABEL_11;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.conversationKit);
  swift_unknownObjectRetain();
  v38 = Logger.logObject.getter();
  v27 = static os_log_type_t.fault.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v38, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v39 = v29;
    *v28 = 136315138;
    swift_getObjectType();
    v30 = _typeName(_:qualified:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v39);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1BBC58000, v38, v27, "screenSharingStateMonitorDidUpdateScreenInfoForParticipant(_:) was unexpectedly passed a %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();

LABEL_11:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t type metadata accessor for SharedContentViewController(uint64_t a1)
{
  result = type metadata singleton initialization cache for SharedContentViewController;
  if (!type metadata singleton initialization cache for SharedContentViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double _sSo13CATransform3DVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

uint64_t _sSo13CATransform3DVSgWOg(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void type metadata completion function for SharedContentViewController(uint64_t a1)
{
  type metadata accessor for Participant?(319, &lazy cache variable for type metadata for Participant?, type metadata accessor for Participant);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Participant?(319, &lazy cache variable for type metadata for SharedContentViewModel?, type metadata accessor for SharedContentViewModel);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Participant?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t objectdestroy_5Tm_0()
{

  return swift_deallocObject();
}

uint64_t AsyncCancellableTimer.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t AsyncCancellableTimer.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t AsyncCancellableTimer.wait(with:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AsyncCancellableTimer.wait(with:), v0, 0);
}

{
  AsyncCancellableTimer.cancel()();
  static Duration.zero.getter();
  if ((static Duration.== infix(_:_:)() & 1) == 0)
  {
    v1 = v0[4];
    v2 = v0[5];
    v4 = v0[2];
    v3 = v0[3];
    static TaskPriority.userInitiated.getter();
    v5 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    v6[5] = v3;
    *(v1 + 112) = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();

    v7 = *(v1 + 112);
    v0[6] = v7;
    if (v7)
    {

      v8 = swift_task_alloc();
      v0[7] = v8;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v8 = v0;
      v8[1] = AsyncCancellableTimer.wait(with:);
      v10 = MEMORY[0x1E69E7288];
      v11 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DA10](v9, v7, v11, v9, v10);
    }

    *(v0[4] + 112) = 0;
  }

  OUTLINED_FUNCTION_13();

  return v12();
}

{
  OUTLINED_FUNCTION_24_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;
  *(v2 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);

    v5 = AsyncCancellableTimer.wait(with:);
    v6 = v4;
  }

  else
  {
    v6 = *(v2 + 32);
    v5 = AsyncCancellableTimer.wait(with:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

{
  OUTLINED_FUNCTION_24_0();

  *(*(v0 + 32) + 112) = 0;

  OUTLINED_FUNCTION_13();

  return v1();
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

Swift::Void __swiftcall AsyncCancellableTimer.cancel()()
{
  v1 = *(v0 + 112);
  if (v1)
  {

    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1BFB21000](v1, MEMORY[0x1E69E7CA8] + 8, v2, MEMORY[0x1E69E7288]);
  }
}

uint64_t closure #1 in AsyncCancellableTimer.wait(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock.Instant();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in AsyncCancellableTimer.wait(with:), 0, 0);
}

uint64_t closure #1 in AsyncCancellableTimer.wait(with:)()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  ContinuousClock.init()();
  static ContinuousClock.Instant.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v4 = *(v3 + 8);
  v0[11] = v4;
  v0[12] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = closure #1 in AsyncCancellableTimer.wait(with:);
  v6 = v0[7];

  return MEMORY[0x1EEE6DC10](v6, 0, 0, 1);
}

{
  v12 = *v1;
  v2 = *(*v1 + 88);
  v11 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v8 = v7;
  *(v12 + 112) = v0;

  v2(v5, v6);
  (*(v3 + 8))(v11, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in AsyncCancellableTimer.wait(with:), 0, 0);
  }

  else
  {

    v9 = *(v7 + 8);

    return v9();
  }
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t partial apply for closure #1 in AsyncCancellableTimer.wait(with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AsyncCancellableTimer.wait(with:);

  return closure #1 in AsyncCancellableTimer.wait(with:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in AsyncCancellableTimer.wait(with:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t AsyncCancellableTimer.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncCancellableTimer.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t one-time initialization function for secondaryPillTriggeredPreferringHUDDismissal()
{
  result = MEMORY[0x1BFB209B0](0xD00000000000002CLL, 0x80000001BC4F7D40);
  static Strings.Notifications.secondaryPillTriggeredPreferringHUDDismissal = result;
  return result;
}

uint64_t *Strings.Notifications.secondaryPillTriggeredPreferringHUDDismissal.unsafeMutableAddressor()
{
  if (one-time initialization token for secondaryPillTriggeredPreferringHUDDismissal != -1)
  {
    swift_once();
  }

  return &static Strings.Notifications.secondaryPillTriggeredPreferringHUDDismissal;
}

uint64_t one-time initialization function for localPreviewDidFinishRotationAnimation()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000026, 0x80000001BC4F7D10);
  static Strings.Notifications.localPreviewDidFinishRotationAnimation = result;
  return result;
}

uint64_t *Strings.Notifications.localPreviewDidFinishRotationAnimation.unsafeMutableAddressor()
{
  if (one-time initialization token for localPreviewDidFinishRotationAnimation != -1)
  {
    swift_once();
  }

  return &static Strings.Notifications.localPreviewDidFinishRotationAnimation;
}

uint64_t one-time initialization function for enhancedEmergencyRequestWannaDismissNotification()
{
  result = MEMORY[0x1BFB209B0](0xD00000000000003DLL, 0x80000001BC4F7CD0);
  static Strings.Notifications.enhancedEmergencyRequestWannaDismissNotification = result;
  return result;
}

uint64_t *Strings.Notifications.enhancedEmergencyRequestWannaDismissNotification.unsafeMutableAddressor()
{
  if (one-time initialization token for enhancedEmergencyRequestWannaDismissNotification != -1)
  {
    swift_once();
  }

  return &static Strings.Notifications.enhancedEmergencyRequestWannaDismissNotification;
}

uint64_t one-time initialization function for enhancedEmergencyRequestToChoosePhotoNotification()
{
  result = MEMORY[0x1BFB209B0](0xD00000000000003ELL, 0x80000001BC4F7C90);
  static Strings.Notifications.enhancedEmergencyRequestToChoosePhotoNotification = result;
  return result;
}

uint64_t *Strings.Notifications.enhancedEmergencyRequestToChoosePhotoNotification.unsafeMutableAddressor()
{
  if (one-time initialization token for enhancedEmergencyRequestToChoosePhotoNotification != -1)
  {
    swift_once();
  }

  return &static Strings.Notifications.enhancedEmergencyRequestToChoosePhotoNotification;
}

uint64_t one-time initialization function for enhancedEmergencyPreviewRequestNotification()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000038, 0x80000001BC4F7C50);
  static Strings.Notifications.enhancedEmergencyPreviewRequestNotification = result;
  return result;
}

uint64_t *Strings.Notifications.enhancedEmergencyPreviewRequestNotification.unsafeMutableAddressor()
{
  if (one-time initialization token for enhancedEmergencyPreviewRequestNotification != -1)
  {
    swift_once();
  }

  return &static Strings.Notifications.enhancedEmergencyPreviewRequestNotification;
}

uint64_t one-time initialization function for enhancedEmergencyUploadDismissDuringStreamingNotification()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000046, 0x80000001BC4F7C00);
  static Strings.Notifications.enhancedEmergencyUploadDismissDuringStreamingNotification = result;
  return result;
}

uint64_t *Strings.Notifications.enhancedEmergencyUploadDismissDuringStreamingNotification.unsafeMutableAddressor()
{
  if (one-time initialization token for enhancedEmergencyUploadDismissDuringStreamingNotification != -1)
  {
    swift_once();
  }

  return &static Strings.Notifications.enhancedEmergencyUploadDismissDuringStreamingNotification;
}

uint64_t one-time initialization function for enhancedEmergencyUploadPickerDuringStreamingNotification()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000045, 0x80000001BC4F7BB0);
  static Strings.Notifications.enhancedEmergencyUploadPickerDuringStreamingNotification = result;
  return result;
}

uint64_t *Strings.Notifications.enhancedEmergencyUploadPickerDuringStreamingNotification.unsafeMutableAddressor()
{
  if (one-time initialization token for enhancedEmergencyUploadPickerDuringStreamingNotification != -1)
  {
    swift_once();
  }

  return &static Strings.Notifications.enhancedEmergencyUploadPickerDuringStreamingNotification;
}

uint64_t one-time initialization function for didEndWindowLiveResizeNotification()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000024, 0x80000001BC4F7B80);
  static Strings.Notifications.didEndWindowLiveResizeNotification = result;
  return result;
}

uint64_t *Strings.Notifications.didEndWindowLiveResizeNotification.unsafeMutableAddressor()
{
  if (one-time initialization token for didEndWindowLiveResizeNotification != -1)
  {
    swift_once();
  }

  return &static Strings.Notifications.didEndWindowLiveResizeNotification;
}

id makeConversationHUDDetailsNavigationController(for:delegate:shouldSetControlsManagerInCallDetailsDelegate:)(void *a1, uint64_t a2, char a3)
{
  v5 = objc_allocWithZone(type metadata accessor for ConversationHUDDetailsNavigationController());
  v6 = a1;
  v7 = ConversationHUDDetailsNavigationController.init(controlsManager:shouldHaveBackgroundMaterial:)(v6, 0);
  v8 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_3_52();
  v10 = *(v9 + 120);
  v11 = swift_unknownObjectRetain();
  v10(v11);
  if (a3)
  {
    v12 = *((*v8 & *v6) + 0x508);
    v13 = v7;
    v12(v7, &protocol witness table for ConversationHUDDetailsNavigationController);
  }

  return v7;
}

id ConversationHUDDetailsNavigationController.__allocating_init(controlsManager:shouldHaveBackgroundMaterial:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = objc_allocWithZone(v2);
  return ConversationHUDDetailsNavigationController.init(controlsManager:shouldHaveBackgroundMaterial:)(a1, v3);
}

id makeConversationDetailsController(for:delegate:)(void *a1, uint64_t a2)
{
  v3 = objc_allocWithZone(type metadata accessor for ConversationHUDDetailsViewController());
  v4 = a1;
  OUTLINED_FUNCTION_0_57();
  v5 = ConversationHUDDetailsViewController.init(controlsManager:closeSideBarAction:)();
  v6 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_3_52();
  v8 = *(v7 + 160);
  v9 = swift_unknownObjectRetain();
  v8(v9);
  v10 = *((*v6 & *v4) + 0x508);
  v11 = v5;
  v10(v5, &protocol witness table for ConversationHUDDetailsViewController);
  return v11;
}

uint64_t key path getter for ConversationHUDDetailsNavigationController.detailsDelegate : ConversationHUDDetailsNavigationController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationHUDDetailsNavigationController.detailsDelegate : ConversationHUDDetailsNavigationController(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void ConversationHUDDetailsNavigationController.detailsDelegate.willset(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA0))();
  if (v3)
  {
    v4 = *((*v2 & *v3) + 0xA0);
    v6 = v3;
    v5 = swift_unknownObjectRetain();
    v4(v5);
  }
}

uint64_t ConversationHUDDetailsNavigationController.detailsDelegate.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t ConversationHUDDetailsNavigationController.detailsDelegate.setter(uint64_t a1)
{
  ConversationHUDDetailsNavigationController.detailsDelegate.willset(a1);
  OUTLINED_FUNCTION_3_12(v1);
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ConversationHUDDetailsNavigationController.detailsDelegate.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return ConversationHUDDetailsNavigationController.detailsDelegate.modify;
}

void ConversationHUDDetailsNavigationController.detailsDelegate.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {
    v4 = swift_unknownObjectRetain();
    ConversationHUDDetailsNavigationController.detailsDelegate.setter(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    ConversationHUDDetailsNavigationController.detailsDelegate.setter(v3);
  }

  free(v2);
}

void *ConversationHUDDetailsNavigationController.isOnScreen.getter()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))();
  if (result)
  {
    v2 = result;
    OUTLINED_FUNCTION_3_52();
    v4 = (*(v3 + 176))();

    return (v4 & 1);
  }

  return result;
}

void ConversationHUDDetailsNavigationController.isOnScreen.setter(char a1)
{
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0xA0))())
  {
    OUTLINED_FUNCTION_3_52();
    v5 = v4;
    (*(v3 + 184))(a1 & 1);
  }
}

uint64_t key path getter for ConversationHUDDetailsNavigationController.isOnScreen : ConversationHUDDetailsNavigationController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result & 1;
  return result;
}

void (*ConversationHUDDetailsNavigationController.isOnScreen.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ConversationHUDDetailsNavigationController.isOnScreen.getter() & 1;
  return ConversationHUDDetailsNavigationController.isOnScreen.modify;
}

uint64_t key path getter for ConversationHUDDetailsNavigationController.detailsViewController : ConversationHUDDetailsNavigationController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationHUDDetailsNavigationController.detailsViewController : ConversationHUDDetailsNavigationController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA8);
  v4 = *a1;
  return v3(v2);
}

void *ConversationHUDDetailsNavigationController.detailsViewController.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit42ConversationHUDDetailsNavigationController_detailsViewController;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ConversationHUDDetailsNavigationController.detailsViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit42ConversationHUDDetailsNavigationController_detailsViewController;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ConversationHUDDetailsNavigationController.init(controlsManager:shouldHaveBackgroundMaterial:)(uint64_t a1, char a2)
{
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC15ConversationKit42ConversationHUDDetailsNavigationController_detailsViewController) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit42ConversationHUDDetailsNavigationController_controlsManager) = a1;
  *(v2 + OBJC_IVAR____TtC15ConversationKit42ConversationHUDDetailsNavigationController_shouldHaveBackgroundMaterial) = a2;
  v8 = type metadata accessor for ConversationHUDDetailsNavigationController();
  OUTLINED_FUNCTION_3_0();
  return objc_msgSendSuper2(v5, v6, v2, v8);
}

id ConversationHUDDetailsNavigationController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ConversationHUDDetailsNavigationController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit42ConversationHUDDetailsNavigationController_detailsViewController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ConversationHUDDetailsNavigationController.viewDidLoad()()
{
  v1 = v0;
  v2 = type metadata accessor for ConversationHUDDetailsNavigationController();
  v37.receiver = v0;
  v37.super_class = v2;
  objc_msgSendSuper2(&v37, sel_viewDidLoad);
  v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit42ConversationHUDDetailsNavigationController_controlsManager);
  v4 = objc_allocWithZone(type metadata accessor for ConversationHUDDetailsViewController());
  v3;
  OUTLINED_FUNCTION_0_57();
  v5 = ConversationHUDDetailsViewController.init(controlsManager:closeSideBarAction:)();
  v6 = [v5 setOverrideUserInterfaceStyle_];
  v7 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))(v6);
  (*((*v7 & *v5) + 0xA0))(v8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v9 = @nonobjc UIImage.__allocating_init(systemName:)(0xD000000000000010, 0x80000001BC4F7DC0);
  v46 = v2;
  v45[0] = v1;
  v10 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v11 = v1;
  v12 = @nonobjc UIBarButtonItem.init(image:style:target:action:)(v9, 0, v45, sel_tapDoneButton);
  v13 = objc_opt_self();
  v14 = [v13 labelColor];
  [v12 setTintColor_];

  v15 = [v5 navigationItem];
  [v15 setLeftBarButtonItem_];

  v16 = *MEMORY[0x1E69DDCF8];
  v36 = 0;
  strcpy(v38, "message.fill");
  HIBYTE(v38[6]) = 0;
  v38[7] = -5120;
  v39 = 3;
  v40 = v16;
  v41 = 0;
  v42 = 4;
  v43 = 0;
  v44 = 0;
  strcpy(v45, "message.fill");
  BYTE5(v45[1]) = 0;
  HIWORD(v45[1]) = -5120;
  v45[2] = 3;
  v46 = v16;
  v47 = 0;
  v48 = 4;
  v49 = 0;
  v50 = 0;
  v17 = v16;
  outlined init with copy of SymbolImageDescription(v38, v35);
  outlined destroy of SymbolImageDescription(v45);
  v18 = static UIImage.symbolImage(for:)(v38);
  outlined destroy of SymbolImageDescription(v38);
  v35[3] = v2;
  v35[0] = v11;
  objc_allocWithZone(MEMORY[0x1E69DC708]);
  v19 = v18;
  v20 = v11;
  v21 = @nonobjc UIBarButtonItem.init(image:style:target:action:)(v18, 0, v35, sel_tapMessageButton);
  v22 = [v13 labelColor];
  [v21 setTintColor_];

  v23 = [v5 navigationItem];
  [v23 setRightBarButtonItem_];

  v24 = [v5 navigationItem];
  v25 = [v24 rightBarButtonItem];

  if (v25)
  {
    OUTLINED_FUNCTION_1_57();
    [v25 setHidden_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BC4BAC30;
  *(v27 + 32) = v5;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 setViewControllers_];

  OUTLINED_FUNCTION_1_57();
  v30 = *(v29 + 168);
  v31 = v5;
  v30(v5);
  v32 = [v20 navigationBar];
  v33 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  [v32 setShadowImage_];

  if (*(v20 + OBJC_IVAR____TtC15ConversationKit42ConversationHUDDetailsNavigationController_shouldHaveBackgroundMaterial) == 1)
  {
    OUTLINED_FUNCTION_1_57();
    (*(v34 + 232))();
  }
}

Swift::Void __swiftcall ConversationHUDDetailsNavigationController.tapDoneButton()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))();
  if (v1)
  {
    [v1 wantsDismissal];

    swift_unknownObjectRelease();
  }

  else
  {

    [v0 dismissViewControllerAnimated:1 completion:0];
  }
}

Swift::Void __swiftcall ConversationHUDDetailsNavigationController.setUpBackgroundMaterialView()()
{
  v1 = [objc_opt_self() effectWithStyle_];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame_];
  [v3 setAutoresizingMask_];

  v14 = [v0 view];
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = v14;
  v16 = [objc_opt_self() clearColor];
  [v15 setBackgroundColor_];

  v17 = [v0 view];
  if (!v17)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v18 = v17;
  [v17 insertSubview:v3 atIndex:0];
}

void ConversationHUDDetailsNavigationController.updated(_:)()
{
  OUTLINED_FUNCTION_4_36();
  v2 = (*((*MEMORY[0x1E69E7D40] & v1) + 0xA0))();
  if (v2)
  {
    v3 = v2;
    ConversationHUDDetailsViewController.updated(_:)(v0);
  }
}

void ConversationHUDDetailsNavigationController.update(participant:broadcastingState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0xA0))();
  if (v9)
  {
    v10 = v9;
    ConversationHUDDetailsViewController.update(participant:broadcastingState:)(a1, a2, a3, a4);
  }
}

Swift::Void __swiftcall ConversationHUDDetailsNavigationController.updateLocalViews(for:isLocalMemberAuthorizedToChangeGroupMembership:)(Swift::OpaquePointer a1, Swift::Bool isLocalMemberAuthorizedToChangeGroupMembership)
{
  v3 = v2;
  OUTLINED_FUNCTION_4_36();
  v4 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & v5) + 0xA0);
  v7 = v6();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 navigationItem];

    v10 = [v9 rightBarButtonItem];
    if (v10)
    {
      [v10 setHidden_];
    }
  }

  if (v6())
  {
    v11 = OUTLINED_FUNCTION_2_54();
    ConversationHUDDetailsViewController.updateLocalViews(for:isLocalMemberAuthorizedToChangeGroupMembership:)(v11, v12);
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
  }
}

void ConversationHUDDetailsNavigationController.update(participant:isKickingAvailable:)()
{
  OUTLINED_FUNCTION_4_36();
  if ((*((*MEMORY[0x1E69E7D40] & v0) + 0xA0))())
  {
    OUTLINED_FUNCTION_2_54();
    ConversationHUDDetailsViewController.update(participant:isKickingAvailable:)();
  }
}

void ConversationHUDDetailsNavigationController.update(with:updateReason:)(uint64_t a1, char *a2)
{
  OUTLINED_FUNCTION_1_57();
  v3 = *(v2 + 160);
  v4 = v3();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 navigationItem];

    v7 = [v6 rightBarButtonItem];
    if (v7)
    {
      OUTLINED_FUNCTION_1_57();
      [v7 setHidden_];
    }
  }

  v9 = v3();
  if (v9)
  {
    v10 = v9;
    ConversationHUDDetailsViewController.update(with:updateReason:)();
  }

  OUTLINED_FUNCTION_1_3();
}

void ConversationHUDDetailsNavigationController.resetScroll(animated:)(char a1, void (*a2)(void))
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA0))();
  if (v5)
  {
    v6 = v5;
    a2(a1 & 1);
  }
}

void ConversationHUDDetailsNavigationController.refreshTitleCell()()
{
  OUTLINED_FUNCTION_4_36();
  v2 = (*((*MEMORY[0x1E69E7D40] & v1) + 0xA0))();
  if (v2)
  {
    v3 = v2;
    v0();
  }
}

id ConversationHUDDetailsNavigationController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id ConversationHUDDetailsNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id ConversationHUDDetailsNavigationController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id ConversationHUDDetailsNavigationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationHUDDetailsNavigationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id @nonobjc UIBarButtonItem.init(image:style:target:action:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v9 = a3[3];
  if (v9)
  {
    v11 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v12 = *(v9 - 8);
    v13 = MEMORY[0x1EEE9AC00](v11);
    v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v12 + 8))(v15, v9);
    __swift_destroy_boxed_opaque_existential_1(a3);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v5 initWithImage:a1 style:a2 target:v16 action:a4];

  swift_unknownObjectRelease();
  return v17;
}

uint64_t key path getter for ParticipantListLayout.delegate : ParticipantListLayout@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for ParticipantListLayout.delegate : ParticipantListLayout(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t ParticipantListLayout.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ParticipantListLayout.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_delegate;
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

id ParticipantListLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ParticipantListLayout.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_indexPathLayoutAttributes;
  type metadata accessor for IndexPath();
  type metadata accessor for UICollectionViewLayoutAttributes();
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
  *&v0[v2] = Dictionary.init(dictionaryLiteral:)();
  v3 = &v0[OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_lastInvalidatedSize];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = &v0[OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_calculatedContentSize];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  [v5 setItemSize_];
  static Layout.Roster.iOS.getter(v8);
  [v5 setMinimumInteritemSpacing_];

  return v5;
}

unint64_t type metadata accessor for UICollectionViewLayoutAttributes()
{
  result = lazy cache variable for type metadata for UICollectionViewLayoutAttributes;
  if (!lazy cache variable for type metadata for UICollectionViewLayoutAttributes)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UICollectionViewLayoutAttributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IndexPath and conformance IndexPath()
{
  result = lazy protocol witness table cache variable for type IndexPath and conformance IndexPath;
  if (!lazy protocol witness table cache variable for type IndexPath and conformance IndexPath)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  }

  return result;
}

id ParticipantListLayout.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantListLayout.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_indexPathLayoutAttributes;
  type metadata accessor for IndexPath();
  type metadata accessor for UICollectionViewLayoutAttributes();
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
  *(v0 + v1) = Dictionary.init(dictionaryLiteral:)();
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_lastInvalidatedSize;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  v3 = (v0 + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_calculatedContentSize);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ParticipantListLayout.prepare()()
{
  v3 = v0;
  ObjectType = swift_getObjectType();
  isUniquelyReferenced_nonNull_native = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v170 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v162[-v9];
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v162[-v13];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v162[-v16];
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v180 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v173 = v22;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v174 = &v162[-v25];
  v182.receiver = v3;
  v182.super_class = ObjectType;
  objc_msgSendSuper2(&v182, sel_prepareLayout, v24);
  v26 = OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_indexPathLayoutAttributes;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8_VariantVy10Foundation9IndexPathVSo32UICollectionViewLayoutAttributesC_GMd, &_sSD8_VariantVy10Foundation9IndexPathVSo32UICollectionViewLayoutAttributesC_GMR);
  v178 = v26;
  Dictionary._Variant.removeAll(keepingCapacity:)(1);
  swift_endAccess();
  v27 = [v3 collectionView];
  if (!v27)
  {
    return;
  }

  v28 = v27;
  swift_beginAccess();
  [v3 setScrollDirection_];
  ParticipantListLayout.updateItemSize()();
  v29 = [v28 numberOfSections];
  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_77;
  }

  v30 = v29;
  v166 = v10;
  v165 = v17;
  v164 = v14;
  v10 = &selRef_isRecordingAllowed;
  if (v29)
  {
    v17 = 0;
    OUTLINED_FUNCTION_4_37();
    v179 = v31;
    v2 = 0.0;
    v172 = v32 + 8;
    v171 = ((v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v14 = v174;
    v169 = v28;
    v168 = v30;
    while (1)
    {
      v33 = [v28 numberOfItemsInSection_];
      if ((v33 & 0x8000000000000000) != 0)
      {
        break;
      }

      v1 = v33;
      if (v33)
      {
        v34 = type metadata accessor for UICollectionViewLayoutAttributes();
        v176 = v17;
        v177 = v34;
        v35 = 0;
        v175 = v1;
        do
        {
          MEMORY[0x1BFB1A660](v35, v17);
          v36 = *v179;
          v37 = v173;
          (*v179)(v173, v14, isUniquelyReferenced_nonNull_native);
          v38 = @nonobjc UICollectionViewLayoutAttributes.__allocating_init(forCellWith:)(v37);
          OUTLINED_FUNCTION_19_12();
          OUTLINED_FUNCTION_12_24();
          v39 = OUTLINED_FUNCTION_18_24();
          [v39 v40];
          v41 = [v3 scrollDirection];
          OUTLINED_FUNCTION_12_24();
          if (v41 == 1)
          {
            [v38 setFrame_];
            OUTLINED_FUNCTION_12_24();
            v42 = OUTLINED_FUNCTION_18_24();
            [v42 v43];
          }

          else
          {
            [v38 setFrame_];
            OUTLINED_FUNCTION_12_24();
            v44 = OUTLINED_FUNCTION_18_24();
            [v44 v45];
          }

          IndexPath.item.getter();
          OUTLINED_FUNCTION_19_12();
          [v3 minimumInteritemSpacing];
          OUTLINED_FUNCTION_12_24();
          v46 = OUTLINED_FUNCTION_18_24();
          [v46 v47];
          [v38 setZIndex_];
          v10 = isUniquelyReferenced_nonNull_native;
          v48 = v36;
          v36(v180, v14, isUniquelyReferenced_nonNull_native);
          v14 = v178;
          OUTLINED_FUNCTION_10_22(v178 + v3);
          v1 = v38;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v181 = *(v14 + v3);
          v17 = v3;
          *(v14 + v3) = -0.0;
          specialized __RawDictionaryStorage.find<A>(_:)();
          OUTLINED_FUNCTION_6_35();
          v3 = v51 + v52;
          if (__OFADD__(v51, v52))
          {
            __break(1u);
            goto LABEL_52;
          }

          v53 = v49;
          v54 = v50;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation9IndexPathVSo32UICollectionViewLayoutAttributesCGMd, &_ss17_NativeDictionaryVy10Foundation9IndexPathVSo32UICollectionViewLayoutAttributesCGMR);
          v55 = OUTLINED_FUNCTION_5_33();
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v55, v3))
          {
            v56 = specialized __RawDictionaryStorage.find<A>(_:)();
            isUniquelyReferenced_nonNull_native = v10;
            if ((v54 & 1) != (v57 & 1))
            {
              goto LABEL_83;
            }

            v53 = v56;
            v3 = v17;
          }

          else
          {
            v3 = v17;
            isUniquelyReferenced_nonNull_native = v10;
          }

          v10 = &selRef_isRecordingAllowed;
          v58 = v181;
          if (v54)
          {
            v59 = v181[7];
            v60 = *(v59 + 8 * v53);
            *(v59 + 8 * v53) = v1;

            OUTLINED_FUNCTION_17_21();
            v62 = *v61;
            (*v61)(v180, isUniquelyReferenced_nonNull_native);
          }

          else
          {
            v17 = v3;
            v3 = 0x1E7FEA000;
            v181[(v53 >> 6) + 8] |= 1 << v53;
            v63 = v170;
            v10 = v180;
            v48((v58[6] + *(v170 + 72) * v53), v180, isUniquelyReferenced_nonNull_native);
            *(v58[7] + 8 * v53) = v1;
            v62 = *(v63 + 8);
            v14 = isUniquelyReferenced_nonNull_native;
            OUTLINED_FUNCTION_17_21();
            v62();
            v64 = v58[2];
            v65 = __OFADD__(v64, 1);
            v66 = v64 + 1;
            if (v65)
            {
              __break(1u);
              goto LABEL_74;
            }

            v58[2] = v66;
            v10 = &selRef_isRecordingAllowed;
            v3 = v17;
          }

          v35 = (v35 + 1);
          OUTLINED_FUNCTION_8_42();
          *(v3 + v67) = v58;

          swift_endAccess();

          v14 = v174;
          (v62)(v174, isUniquelyReferenced_nonNull_native);
          v1 = v175;
          v17 = v176;
        }

        while (v175 != v35);
      }

      v17 = (v17 + 1);
      OUTLINED_FUNCTION_19_12();
      v69 = v68;
      [v3 minimumInteritemSpacing];
      v2 = v2 + (v69 + v70) * v1;
      v28 = v169;
      if (v17 == v168)
      {
        goto LABEL_24;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    swift_once();
    goto LABEL_27;
  }

  v2 = 0.0;
LABEL_24:
  if ([v3 scrollDirection] != 1)
  {
    v75 = v28;
    [v75 bounds];
    v77 = v76;
    [v3 minimumInteritemSpacing];
    v79 = v3 + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_calculatedContentSize;
    *v79 = v77;
    *(v79 + 8) = v2 + v78;
    [v75 bounds];
    v2 = v80;

    if (*(v79 + 8) >= v2)
    {
    }

    else
    {
      v172 = v79;
      v173 = v75;
      v17 = (OUTLINED_FUNCTION_8_42() + 64);
      OUTLINED_FUNCTION_2_55();
      v83 = v82 & v81;
      v85 = (v84 + 63) >> 6;
      OUTLINED_FUNCTION_4_37();
      v179 = v86;
      v180 = v87;
      v175 = v88 + 8;
      v176 = (v88 + 32);

      v14 = 0;
      OUTLINED_FUNCTION_13_30();
      while (v83)
      {
LABEL_36:
        v83 &= v83 - 1;
        OUTLINED_FUNCTION_1_58();
        v90 = OUTLINED_FUNCTION_9_25(&v184);
        v91(v90);
        v92 = v166;
        (*(v75 + 4))(v166, v1, isUniquelyReferenced_nonNull_native);
        OUTLINED_FUNCTION_11_26();
        v75 = *(v75 + v3);
        if (*(v75 + 2) && (v93 = specialized __RawDictionaryStorage.find<A>(_:)(), (v94 & 1) != 0))
        {
          v95 = *(*(v75 + 7) + 8 * v93);
          swift_endAccess();
          v96 = v95;
          [v96 v10[61]];
          [v96 setFrame_];
          v1 = v167;
          v177(v167, v92, isUniquelyReferenced_nonNull_native);
          OUTLINED_FUNCTION_10_22(v178 + v3);
          v97 = v96;
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_7_40();
          OUTLINED_FUNCTION_6_35();
          v10 = (v100 + v101);
          if (__OFADD__(v100, v101))
          {
            goto LABEL_78;
          }

          v3 = v98;
          v102 = v99;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation9IndexPathVSo32UICollectionViewLayoutAttributesCGMd, &_ss17_NativeDictionaryVy10Foundation9IndexPathVSo32UICollectionViewLayoutAttributesCGMR);
          v103 = OUTLINED_FUNCTION_5_33();
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v103, v10))
          {
            v104 = specialized __RawDictionaryStorage.find<A>(_:)();
            v106 = v175;
            if ((v102 & 1) != (v105 & 1))
            {
              goto LABEL_83;
            }

            v3 = v104;
          }

          else
          {
            v106 = v175;
          }

          v107 = v181;
          v75 = (v106 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          if (v102)
          {
            v108 = v181[7];
            v109 = *(v108 + 8 * v3);
            *(v108 + 8 * v3) = v97;

            v110 = *v106;
            v1 = v97;
            v111 = v163;
            v110(v167, v163);
            OUTLINED_FUNCTION_14_18();
          }

          else
          {
            v171 = (v106 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v112 = OUTLINED_FUNCTION_0_58();
            v1 = v97;
            v113 = v167;
            v177(v112, v167, v163);
            *(v107[7] + 8 * v3) = v1;
            v110 = *v106;
            v110(v113, v163);
            v114 = v107[2];
            v65 = __OFADD__(v114, 1);
            v115 = v114 + 1;
            if (v65)
            {
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
              while (1)
              {
LABEL_83:
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
              }
            }

            v107[2] = v115;
            OUTLINED_FUNCTION_14_18();
            v111 = v163;
            v75 = v171;
          }

          OUTLINED_FUNCTION_8_42();
          *(v3 + v116) = v107;

          swift_endAccess();

          v110(v166, v111);
          isUniquelyReferenced_nonNull_native = v111;
          v10 = &selRef_isRecordingAllowed;
        }

        else
        {
          swift_endAccess();
          (*v175)(v92, isUniquelyReferenced_nonNull_native);
        }
      }

      while (1)
      {
        v89 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_75;
        }

        if (v89 >= v85)
        {
          break;
        }

        v83 = *&v17[v89];
        v14 = (v14 + 1);
        if (v83)
        {
          v14 = v89;
          goto LABEL_36;
        }
      }

      OUTLINED_FUNCTION_17_21();
      *(v117 + 8) = v2;
    }

    return;
  }

  [v3 minimumInteritemSpacing];
  v72 = v2 + v71;
  v14 = v28;
  [v14 bounds];
  v17 = (v3 + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_calculatedContentSize);
  *v17 = v72;
  *(v17 + 1) = v73;
  [v14 bounds];
  v2 = v74;

  if (*v17 >= v2)
  {
LABEL_28:

    return;
  }

  if (one-time initialization token for shared != -1)
  {
    goto LABEL_79;
  }

LABEL_27:
  if (Features.isICUIRedesignEnabled.getter())
  {
    goto LABEL_28;
  }

LABEL_52:
  v171 = v14;
  v169 = v17;
  v118 = v2 - *v17;
  v119 = OUTLINED_FUNCTION_8_42() + 64;
  OUTLINED_FUNCTION_2_55();
  v122 = v121 & v120;
  v17 = ((v123 + 63) >> 6);
  OUTLINED_FUNCTION_4_37();
  v179 = v124;
  v180 = v125;
  v176 = (v126 + 32);
  v127 = v126 + 8;

  v128 = 0;
  OUTLINED_FUNCTION_13_30();
  v175 = v127;
  while (v122)
  {
LABEL_58:
    v122 &= v122 - 1;
    OUTLINED_FUNCTION_1_58();
    v130 = OUTLINED_FUNCTION_9_25(&v183);
    v131(v130);
    v14 = v165;
    (*(v127 + 32))(v165, v1, isUniquelyReferenced_nonNull_native);
    OUTLINED_FUNCTION_11_26();
    v132 = *(v3 + v127);
    if (*(v132 + 16) && (v133 = specialized __RawDictionaryStorage.find<A>(_:)(), (v134 & 1) != 0))
    {
      v135 = *(*(v132 + 56) + 8 * v133);
      swift_endAccess();
      v136 = v135;
      [v136 v10[61]];
      [v136 setFrame_];
      v138 = v14;
      v139 = v177;
      v177(v164, v138, isUniquelyReferenced_nonNull_native);
      OUTLINED_FUNCTION_10_22(v178 + v3);
      v173 = v136;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_7_40();
      OUTLINED_FUNCTION_6_35();
      v144 = v142 + v143;
      if (__OFADD__(v142, v143))
      {
        __break(1u);
        goto LABEL_81;
      }

      v3 = v140;
      v145 = v141;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation9IndexPathVSo32UICollectionViewLayoutAttributesCGMd, &_ss17_NativeDictionaryVy10Foundation9IndexPathVSo32UICollectionViewLayoutAttributesCGMR);
      v146 = OUTLINED_FUNCTION_5_33();
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v146, v144))
      {
        v147 = v164;
        v148 = specialized __RawDictionaryStorage.find<A>(_:)();
        if ((v145 & 1) != (v149 & 1))
        {
          goto LABEL_83;
        }

        v3 = v148;
      }

      else
      {
        v147 = v164;
      }

      v150 = v181;
      v127 = v175;
      v172 = v175 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v145)
      {
        v151 = v181[7];
        v152 = *(v151 + 8 * v3);
        v1 = v173;
        *(v151 + 8 * v3) = v173;

        v14 = *v127;
        v153 = v147;
        v154 = v163;
        (*v127)(v153, v163);
        OUTLINED_FUNCTION_14_18();
      }

      else
      {
        v155 = OUTLINED_FUNCTION_0_58();
        v156 = v147;
        v157 = v147;
        v158 = v163;
        v139(v155, v156, v163);
        *(v150[7] + 8 * v3) = v173;
        v14 = *v127;
        (*v127)(v157, v158);
        v159 = v150[2];
        v65 = __OFADD__(v159, 1);
        v160 = v159 + 1;
        if (v65)
        {
          goto LABEL_82;
        }

        v150[2] = v160;
        OUTLINED_FUNCTION_14_18();
        v154 = v163;
        v1 = v173;
      }

      OUTLINED_FUNCTION_8_42();
      *(v3 + v161) = v150;

      swift_endAccess();

      OUTLINED_FUNCTION_17_21();
      (v14)();
      isUniquelyReferenced_nonNull_native = v154;
      v10 = &selRef_isRecordingAllowed;
    }

    else
    {
      swift_endAccess();
      v127 = v175;
      (*v175)(v14, isUniquelyReferenced_nonNull_native);
    }
  }

  while (1)
  {
    v129 = v128 + 1;
    if (__OFADD__(v128, 1))
    {
      goto LABEL_76;
    }

    if (v129 >= v17)
    {
      break;
    }

    v122 = *(v119 + 8 * v129);
    ++v128;
    if (v122)
    {
      v128 = v129;
      goto LABEL_58;
    }
  }

  *v169 = v2;
}

void ParticipantListLayout.updateItemSize()()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 scrollDirection];
    [v3 bounds];
    if (v4 == 1)
    {
      Width = CGRectGetWidth(*&v5);
    }

    else
    {
      Width = CGRectGetHeight(*&v5);
    }

    v10 = Width;
    static Layout.Roster.iOS.getter(v20);
    [v3 displayScale];
    v12 = v11;
    v13 = &v1[OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      ObjectType = swift_getObjectType();
      v16 = (*(v14 + 8))(ObjectType, v14);
      v18 = v17;
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0;
      v18 = 1;
    }

    v19 = static ParticipantListLayout.itemWidth(for:remoteCellCount:displayScale:includeLocalParticipant:configurableRosterCellWidth:)(0, v16, v18 & 1, v10 - v21, v22[0], v12);
    [v1 setItemSize_];
  }
}

id @nonobjc UICollectionViewLayoutAttributes.__allocating_init(forCellWith:)(uint64_t a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [swift_getObjCClassFromMetadata() layoutAttributesForCellWithIndexPath_];

  v4 = type metadata accessor for IndexPath();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

Swift::Bool __swiftcall ParticipantListLayout.shouldInvalidateLayout(forBoundsChange:)(__C::CGRect forBoundsChange)
{
  v2 = v1 + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_lastInvalidatedSize;
  if ((*(v1 + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_lastInvalidatedSize + 16) & 1) == 0 && *v2 == forBoundsChange.size.width && *(v2 + 8) == forBoundsChange.size.height)
  {
    return 0;
  }

  *v2 = forBoundsChange.size.width;
  *(v2 + 8) = forBoundsChange.size.height;
  result = 1;
  *(v2 + 16) = 0;
  return result;
}

void *ParticipantListLayout.layoutAttributesForItem(at:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_indexPathLayoutAttributes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  swift_endAccess();
  return v5;
}

void ParticipantListLayout._layoutAttributesForElements(in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  swift_beginAccess();

  v9 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo32UICollectionViewLayoutAttributesC_SD6ValuesVy10Foundation9IndexPathVAE_GTt0g5(v8);
  v18 = MEMORY[0x1E69E7CC0];
  v10 = specialized Array.count.getter();
  v11 = 0;
  while (1)
  {
    if (v10 == v11)
    {

      return;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1BFB22010](v11, v9);
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    [v12 frame];
    v20.origin.x = v14;
    v20.origin.y = v15;
    v20.size.width = v16;
    v20.size.height = v17;
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    if (CGRectIntersectsRect(v19, v20))
    {
      MEMORY[0x1BFB20CC0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v11;
    }

    else
    {

      ++v11;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

double static ParticipantListLayout.itemWidth(for:remoteCellCount:displayScale:includeLocalParticipant:configurableRosterCellWidth:)(char a1, uint64_t a2, char a3, double a4, double a5, double a6)
{
  v12 = type metadata accessor for FloatingPointRoundingRule();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a3 & 1) == 0)
  {
    return *&a2;
  }

  v18 = a5 + 1.0;
  static Layout.Roster.iOS.getter(v23);
  v19 = 0.0;
  if ((a1 & 1) == 0)
  {
    v19 = 1.0;
  }

  v20 = (a4 - v18 * v24) / (v18 - v19);
  (*(v14 + 104))(v17, *MEMORY[0x1E69E7040], v12);
  v21 = CGFloat.rounded(_:toScale:)(v17, a6, v20);
  (*(v14 + 8))(v17, v12);
  return v21;
}

id ParticipantListLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*protocol witness for ParticipantsViewController.participantsViewControllerDelegate.modify in conformance CaptionsViewController(void *a1))(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

uint64_t (*ParticipantsViewController.participantsViewControllerDelegate.modify(void *a1))()
{
  *a1 = 0;
  a1[1] = 0;
  return ParticipantsViewController.participantsViewControllerDelegate.modify;
}

unsigned __int16 *getEnumTagSinglePayload for ParticipantsViewControllerUpdateReason(unsigned __int16 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *(result + 1);
    if (v6 >= 3)
    {
      return ((v6 ^ 0xFF) + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 65282;
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v3 = 2;
    }

    else
    {
      v3 = 4;
    }

    if (v2 < 0xFF0000)
    {
      v3 = 1;
    }

    if (v2 >= 0x10000)
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
        v5 = *(result + 2);
        if (!*(result + 2))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = result[1];
        if (!result[1])
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
        result = ((*result | (v5 << 16)) - 65282);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ParticipantsViewControllerUpdateReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v7;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 2) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = -a2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for ParticipantsViewControllerUpdateReason(unsigned __int8 *a1)
{
  result = a1[1];
  if (result >= 2)
  {
    return (*a1 | (result << 8)) - 510;
  }

  return result;
}

_BYTE *destructiveInjectEnumTag for ParticipantsViewControllerUpdateReason(_BYTE *result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    a2 = ((a2 - 2) >> 8) + 2;
    *result = v2;
  }

  result[1] = a2;
  return result;
}

uint64_t (*protocol witness for ParticipantsViewController.participantsViewControllerDelegate.modify in conformance InCallBannerHostViewController(void *a1))()
{
  *a1 = 0;
  a1[1] = 0;
  return ParticipantsViewController.participantsViewControllerDelegate.modify;
}

uint64_t DestinationQueryController.delegate.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_12(a1);
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for DestinationQueryController.delegate : DestinationQueryController@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void (*DestinationQueryController.delegate.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___CNKDestinationQueryControllerInternal_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return DestinationQueryController.delegate.modify;
}

void DestinationQueryController.delegate.modify(void **a1, char a2)
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

id DestinationQueryController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *DestinationQueryController.init()()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_opt_self() sharedManager];
  v2 = objc_allocWithZone(ObjectType);
  v3 = OUTLINED_FUNCTION_6_4();
  v4 = DestinationQueryController.init(idsLookupManager:)(v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

char *DestinationQueryController.init(idsLookupManager:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v54 - v5;
  v60 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  OUTLINED_FUNCTION_1();
  v68 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AA18PassthroughSubjectCyyts5NeverOGSo9NSRunLoopCGMd, _s7Combine10PublishersO8DebounceVy_AA18PassthroughSubjectCyyts5NeverOGSo9NSRunLoopCGMR);
  OUTLINED_FUNCTION_1();
  v67 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSQuerySubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  swift_allocObject();
  *&v1[v15] = PassthroughSubject.init()();
  v16 = OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSQueryGroupSubject;
  OUTLINED_FUNCTION_10_23();
  *&v1[v16] = PassthroughSubject.init()();
  v17 = OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSCachedQuerySubject;
  OUTLINED_FUNCTION_10_23();
  *&v1[v17] = PassthroughSubject.init()();
  *&v1[OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSQueryDebouncer] = 0;
  *&v1[OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSQueryGroupDebouncer] = 0;
  *&v1[OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSCachedQueryDebouncer] = 0;
  v18 = OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleNotificationSubject;
  OUTLINED_FUNCTION_10_23();
  *&v1[v18] = PassthroughSubject.init()();
  *&v1[OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleNotificationDebouncer] = 0;
  v19 = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR___CNKDestinationQueryControllerInternal_idsDestinations] = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR___CNKDestinationQueryControllerInternal_idsGroupDestinations] = v19;
  *&v1[OBJC_IVAR___CNKDestinationQueryControllerInternal_idsLookupManager] = a1;
  v71.receiver = v1;
  v71.super_class = ObjectType;
  v56 = a1;
  v20 = objc_msgSendSuper2(&v71, sel_init);
  v70 = *&v20[OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSQuerySubject];
  v21 = v20;

  static NSRunLoop.SchedulerTimeType.Stride.seconds(_:)();
  v57 = objc_opt_self();
  v22 = [v57 mainRunLoop];
  v69 = v22;
  v66 = type metadata accessor for NSRunLoop.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v66);
  v65 = type metadata accessor for NSRunLoop();
  v64 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR, MEMORY[0x1E695BF88]);
  v63 = lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of TapInteractionHandler?(v6, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

  v58 = *(v68 + 8);
  v68 += 8;
  v58(v10, v60);

  OUTLINED_FUNCTION_20();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_6_36(v23);
  OUTLINED_FUNCTION_24();
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for closure #1 in DestinationQueryController.init(idsLookupManager:);
  *(v24 + 24) = &v70;
  v62 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Debounce<PassthroughSubject<(), Never>, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AA18PassthroughSubjectCyyts5NeverOGSo9NSRunLoopCGMd, _s7Combine10PublishersO8DebounceVy_AA18PassthroughSubjectCyyts5NeverOGSo9NSRunLoopCGMR, MEMORY[0x1E695BE50]);
  v25 = v59;
  v26 = v14;
  Publisher<>.sink(receiveValue:)();
  OUTLINED_FUNCTION_6_4();

  v27 = *(v67 + 8);
  v67 += 8;
  v61 = v27;
  v27(v14, v25);
  OUTLINED_FUNCTION_15_17(OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSQueryDebouncer);
  OUTLINED_FUNCTION_9_26(OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSQueryGroupSubject);
  static NSRunLoop.SchedulerTimeType.Stride.seconds(_:)();
  v28 = v57;
  v29 = [v57 mainRunLoop];
  v69 = v29;
  v55 = v6;
  OUTLINED_FUNCTION_2_56(v6);
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of TapInteractionHandler?(v6, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

  v30 = v60;
  v58(v10, v60);

  OUTLINED_FUNCTION_20();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_6_36(v31);
  OUTLINED_FUNCTION_24();
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for closure #2 in DestinationQueryController.init(idsLookupManager:);
  *(v32 + 24) = v26;
  OUTLINED_FUNCTION_12_25(thunk for @escaping @callee_guaranteed () -> ()partial apply, v32);
  OUTLINED_FUNCTION_6_4();

  v33 = OUTLINED_FUNCTION_3_53();
  v34(v33);
  OUTLINED_FUNCTION_15_17(OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSQueryGroupDebouncer);
  OUTLINED_FUNCTION_9_26(OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSCachedQuerySubject);
  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  v35 = [v28 mainRunLoop];
  v69 = v35;
  v36 = v55;
  v37 = OUTLINED_FUNCTION_2_56(v55);
  OUTLINED_FUNCTION_11_27(v37, v38);
  outlined destroy of TapInteractionHandler?(v36, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

  v39 = v30;
  v40 = v58;
  v58(v10, v39);

  OUTLINED_FUNCTION_20();
  v41 = swift_allocObject();
  OUTLINED_FUNCTION_6_36(v41);
  OUTLINED_FUNCTION_24();
  v42 = swift_allocObject();
  *(v42 + 16) = partial apply for closure #3 in DestinationQueryController.init(idsLookupManager:);
  *(v42 + 24) = v26;
  OUTLINED_FUNCTION_12_25(thunk for @escaping @callee_guaranteed () -> ()partial apply, v42);
  OUTLINED_FUNCTION_6_4();

  v43 = OUTLINED_FUNCTION_3_53();
  v44(v43);
  OUTLINED_FUNCTION_15_17(OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSCachedQueryDebouncer);
  OUTLINED_FUNCTION_9_26(OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleNotificationSubject);
  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  v45 = [v57 mainRunLoop];
  v69 = v45;
  v46 = OUTLINED_FUNCTION_2_56(v36);
  OUTLINED_FUNCTION_11_27(v46, v47);
  outlined destroy of TapInteractionHandler?(v36, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

  v40(v10, v60);

  OUTLINED_FUNCTION_20();
  v48 = swift_allocObject();
  OUTLINED_FUNCTION_6_36(v48);
  OUTLINED_FUNCTION_24();
  v49 = swift_allocObject();
  *(v49 + 16) = partial apply for closure #4 in DestinationQueryController.init(idsLookupManager:);
  *(v49 + 24) = v26;
  OUTLINED_FUNCTION_12_25(thunk for @escaping @callee_guaranteed () -> ()partial apply, v49);
  OUTLINED_FUNCTION_6_4();

  v50 = OUTLINED_FUNCTION_3_53();
  v51(v50);
  OUTLINED_FUNCTION_15_17(OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleNotificationDebouncer);
  v52 = [objc_opt_self() defaultCenter];
  [v52 addObserver:v21 selector:sel_handleIDSStatusChanged name:*MEMORY[0x1E69D8FA0] object:0];

  return v21;
}

unint64_t lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop()
{
  result = lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop;
  if (!lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop)
  {
    type metadata accessor for NSRunLoop();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop);
  }

  return result;
}

void DestinationQueryController.scheduleIDSQuery()()
{
  v1 = *(v0 + OBJC_IVAR___CNKDestinationQueryControllerInternal_idsLookupManager);
  swift_beginAccess();

  isa = Set._bridgeToObjectiveC()().super.isa;

  [v1 beginBatchQueryWithDestinations_];
}

void DestinationQueryController.scheduleIDSQueryForGroups()()
{
  v1 = OBJC_IVAR___CNKDestinationQueryControllerInternal_idsDestinations;
  swift_beginAccess();
  v2 = *(v0 + v1);

  specialized Set.union<A>(_:)(v3, v2);
  *(v0 + v1) = v4;

  v5 = *(v0 + OBJC_IVAR___CNKDestinationQueryControllerInternal_idsLookupManager);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v5 beginBatchQueryWithDestinations_];
}

void closure #1 in DestinationQueryController.init(idsLookupManager:)(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void DestinationQueryController.scheduleIDSCachedQuery()()
{
  v1 = *(v0 + OBJC_IVAR___CNKDestinationQueryControllerInternal_idsLookupManager);
  v2 = OBJC_IVAR___CNKDestinationQueryControllerInternal_idsDestinations;
  swift_beginAccess();
  v3 = *(v0 + v2);

  specialized Set.union<A>(_:)(v4, v3);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v1 beginCachedQueryWithDestinations_];
}

void closure #4 in DestinationQueryController.init(idsLookupManager:)(uint64_t a1)
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
      [v3 queryControllerUpdated];
      swift_unknownObjectRelease();
    }
  }
}

id DestinationQueryController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DestinationQueryController.handleIDSStatusChanged()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR, MEMORY[0x1E695BF80]);
  return Subject<>.send()();
}

uint64_t DestinationQueryController.addRecipient(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationKit);
  OUTLINED_FUNCTION_6_4();
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CNKDestinationVendingProtocol_pMd, _sSo29CNKDestinationVendingProtocol_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1BBC58000, v5, v6, "[DestinationQueryController] Adding recipient: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  if ([a1 isGroup])
  {
    v12 = (v2 + OBJC_IVAR___CNKDestinationQueryControllerInternal_idsGroupDestinations);
  }

  else
  {
    v12 = (v2 + OBJC_IVAR___CNKDestinationQueryControllerInternal_idsDestinations);
    swift_beginAccess();
  }

  v13 = *v12;

  v14 = [a1 idsDestinations];
  v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Set.union<A>(_:)(v15, v13);
  *v12 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR, MEMORY[0x1E695BF80]);
  Subject<>.send()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  return Subject<>.send()();
}

double DestinationQueryController.removeRecipient(_:)(void *a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v2 = static OS_os_log.conversationKit;
  v3 = static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BA940;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CNKDestinationVendingProtocol_pMd, _sSo29CNKDestinationVendingProtocol_pMR);
  v5 = String.init<A>(reflecting:)();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:type:_:)("Removing recipient: %@", 22, 2, &dword_1BBC58000, v2, v3, v4);

  v8 = [a1 idsDestinations];
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  specialized Set._subtract<A>(_:)(v9);
  swift_endAccess();

  return result;
}

void @objc DestinationQueryController.addRecipient(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14_19(a1, a2, a3);
  v6 = v4;
  v3(v5);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall DestinationQueryController.reset()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v1 = static OS_os_log.conversationKit;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Reset controller", 16, 2, &dword_1BBC58000, v1, v2, MEMORY[0x1E69E7CC0]);
  v3 = *(v0 + OBJC_IVAR___CNKDestinationQueryControllerInternal_idsLookupManager);

  [v3 cancelQueries];
}

void DestinationQueryController.queryAddresses(_:)(uint64_t a1)
{
  v3 = a1 + 56;
  OUTLINED_FUNCTION_33_2();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    if (!v6)
    {
      break;
    }

LABEL_6:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * v12)));
    v14 = *v13;
    v15 = v13[1];

    v16 = MEMORY[0x1BFB209B0](v14, v15);
    v17 = TUCopyIDSCanonicalAddressForDestinationID();

    if (v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v10 = v22;
      }

      v20 = *(v10 + 16);
      if (v20 >= *(v10 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v10 = v23;
      }

      *(v10 + 16) = v20 + 1;
      v21 = v10 + 16 * v20;
      *(v21 + 32) = v18;
      *(v21 + 40) = v28;
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v10);

      specialized Set.union<A>(_:)(v24, v24);
      v26 = v25;
      v27 = OBJC_IVAR___CNKDestinationQueryControllerInternal_idsDestinations;
      OUTLINED_FUNCTION_3_12(v25);
      *(v1 + v27) = v26;

      DestinationQueryController.scheduleIDSQuery()();
      return;
    }

    v6 = *(v3 + 8 * v9);
    ++v11;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t DestinationQueryController.isFaceTimeAllowed(for:)(void *a1)
{
  result = DestinationQueryController.isAudioAllowed(for:)(a1);
  if (result != 1)
  {
    return DestinationQueryController.isVideoAllowed(for:)(a1) == 1;
  }

  return result;
}

uint64_t DestinationQueryController.isAudioAllowed(for:)(void *a1, SEL *a2)
{
  v4 = [a1 idsDestinations];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5() + 16))
  {
    v5 = *(v2 + OBJC_IVAR___CNKDestinationQueryControllerInternal_idsLookupManager);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v7 = [v5 *a2];

    return v7;
  }

  else
  {

    return -1;
  }
}

uint64_t @objc DestinationQueryController.isFaceTimeAllowed(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14_19(a1, a2, a3);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_6_4();
  v7 = v3(v6);
  swift_unknownObjectRelease();

  return v7;
}

uint64_t DestinationQueryController.isWebCapable(for:)(void *a1)
{
  v2 = [a1 idsDestinations];
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized Collection.first.getter(v3);
  if (v5 && (v6 = v4, v7 = v5, v8 = *(v3 + 16), , v8 == 1))
  {
    v9 = *(v1 + OBJC_IVAR___CNKDestinationQueryControllerInternal_idsLookupManager);
    v10 = MEMORY[0x1BFB209B0](v6, v7);

    v11 = [v9 isWebCapableFaceTimeAvailableForDestination_];

    return v11;
  }

  else
  {

    return -1;
  }
}

uint64_t DestinationQueryController.presentationStyle(for:)(void *a1)
{
  v3 = [a1 idsDestinations];
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized Collection.first.getter(v4);
  if (v6 && (v7 = v5, v8 = v6, v9 = *(v4 + 16), , v9 == 1))
  {
    v10 = *(v1 + OBJC_IVAR___CNKDestinationQueryControllerInternal_idsLookupManager);
    v11 = MEMORY[0x1BFB209B0](v7, v8);

    v12 = [v10 faceTimeMultiwayAvailabilityForDestination_];

    if (v12 == 2)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {

    v13 = 2;
  }

  if (([a1 isGroup] & 1) == 0)
  {
    v14 = [a1 idsDestinations];
    v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = specialized Collection.first.getter(v15);
    v18 = v17;

    if (v18)
    {
      v19 = MEMORY[0x1BFB209B0](v16, v18);

      v20 = [v19 destinationIdIsPhoneNumber];

      if (v20)
      {
        v13 = 4;
      }
    }
  }

  if (DestinationQueryController.isFaceTimeAllowed(for:)(a1))
  {
    return 5;
  }

  else
  {
    return v13;
  }
}

void specialized Set._subtract<A>(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - v4;
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    OUTLINED_FUNCTION_33_2();
    v14 = v13 & v12;
    v16 = (v15 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    v17 = 0;
    if (!v14)
    {
      goto LABEL_4;
    }

    do
    {
      v18 = v17;
LABEL_8:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      (*(v8 + 16))(v11, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v6);
      specialized Set._Variant.remove(_:)();
      (*(v8 + 8))(v11, v6);
      outlined destroy of TapInteractionHandler?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    while (v14);
LABEL_4:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        return;
      }

      v14 = *(a1 + 56 + 8 * v18);
      ++v17;
      if (v14)
      {
        v17 = v18;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    OUTLINED_FUNCTION_33_2();
    v6 = v5 & v4;
    v8 = (v7 + 63) >> 6;

    v9 = 0;
    if (!v6)
    {
      goto LABEL_4;
    }

    do
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
      v13 = *v12;
      v14 = v12[1];

      specialized Set._Variant.remove(_:)(v13, v14);
    }

    while (v6);
    while (1)
    {
LABEL_4:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return;
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_8;
      }
    }
  }
}

uint64_t EnteredNumbersView.enteredNumbers.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd, &_s7SwiftUI7BindingVySSGMR);
  MEMORY[0x1BFB20050](v6, v4);
  return v6[0];
}

uint64_t key path getter for EnteredNumbersView.enteredNumbers : EnteredNumbersView@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = EnteredNumbersView.enteredNumbers.getter(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for EnteredNumbersView.enteredNumbers : EnteredNumbersView(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];

  return EnteredNumbersView.enteredNumbers.setter(v2, v3, v4, v5, v6, v7);
}

void (*EnteredNumbersView.enteredNumbers.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_2_57();
  v10 = __swift_coroFrameAllocStub(0x88uLL);
  *v8 = v10;
  v10[14] = v5;
  v10[15] = a5;
  v10[12] = v7;
  v10[13] = v6;
  *v10 = v7;
  v10[1] = v6;
  v10[2] = v5;
  v10[3] = a5;

  v10[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd, &_s7SwiftUI7BindingVySSGMR);
  MEMORY[0x1BFB20050]();
  return EnteredNumbersView.enteredNumbers.modify;
}

void EnteredNumbersView.enteredNumbers.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v2[4] = *(*a1 + 96);
  v2[10] = v2[8];
  v4 = v2[9];
  v5 = v2[15];
  v6 = v2[14];
  v2[5] = v3;
  v2[6] = v6;
  v2[7] = v5;
  v2[11] = v4;
  if (a2)
  {

    Binding.wrappedValue.setter();
  }

  else
  {
    Binding.wrappedValue.setter();
  }

  free(v2);
}

uint64_t EnteredNumbersView.$enteredNumbers.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd, &_s7SwiftUI7BindingVySSGMR);
  Binding.projectedValue.getter();
  return v5;
}

uint64_t EnteredNumbersView.body.getter()
{
  OUTLINED_FUNCTION_2_57();
  v1 = v0;
  *v0 = static VerticalAlignment.center.getter();
  v1[1] = 0;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVy15ConversationKit017ClarityUIShadowedJ0VyAKyAKyAA0F0VyAIyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGATyAR14TruncationModeOGG_AA6SpacerVtGGAA08_PaddingG0VGAA016_BackgroundStyleS0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitrS0VyAA0g13PriorityTraitQ0VGG_AKyAKyAKyAA0D0PAAE06buttonY0yQrqd__AA06ButtonY0Rd__lFQOyAA6ButtonVyAKyAA5ImageVA5_GG_AL012DeleteButtonY033_E44343144E29C1A4C0133F4F8C633823LLVQo_A5_GAA14_OpacityEffectVGAA06_FrameG0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVy15ConversationKit017ClarityUIShadowedJ0VyAKyAKyAA0F0VyAIyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGATyAR14TruncationModeOGG_AA6SpacerVtGGAA08_PaddingG0VGAA016_BackgroundStyleS0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitrS0VyAA0g13PriorityTraitQ0VGG_AKyAKyAKyAA0D0PAAE06buttonY0yQrqd__AA06ButtonY0Rd__lFQOyAA6ButtonVyAKyAA5ImageVA5_GG_AL012DeleteButtonY033_E44343144E29C1A4C0133F4F8C633823LLVQo_A5_GAA14_OpacityEffectVGAA06_FrameG0VGtGGMR);
  v2 = OUTLINED_FUNCTION_1_59();
  closure #1 in EnteredNumbersView.body.getter(v2, v3, v4, v5, v6);
  v7 = static Animation.default.getter();
  v8 = OUTLINED_FUNCTION_1_59();
  v12 = EnteredNumbersView.showsDeleteButton.getter(v8, v9, v10, v11);
  v13 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACy15ConversationKit017ClarityUIShadowedD0VyACyACyAEyAGyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGG_ACyACyACyAA0G0PAAE06buttonW0yQrqd__AA06ButtonW0Rd__lFQOyAA6ButtonVyACyAA5ImageVA_GG_AH012DeleteButtonW033_E44343144E29C1A4C0133F4F8C633823LLVQo_A_GAA14_OpacityEffectVGAA06_FrameU0VGtGGAA010_AnimationP0VySbGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACy15ConversationKit017ClarityUIShadowedD0VyACyACyAEyAGyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGG_ACyACyACyAA0G0PAAE06buttonW0yQrqd__AA06ButtonW0Rd__lFQOyAA6ButtonVyACyAA5ImageVA_GG_AH012DeleteButtonW033_E44343144E29C1A4C0133F4F8C633823LLVQo_A_GAA14_OpacityEffectVGAA06_FrameU0VGtGGAA010_AnimationP0VySbGGMR) + 36);
  *v13 = v7;
  v13[8] = v12;
  KeyPath = swift_getKeyPath();
  v15 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACy15ConversationKit017ClarityUIShadowedD0VyACyACyAEyAGyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGG_ACyACyACyAA0G0PAAE06buttonW0yQrqd__AA06ButtonW0Rd__lFQOyAA6ButtonVyACyAA5ImageVA_GG_AH012DeleteButtonW033_E44343144E29C1A4C0133F4F8C633823LLVQo_A_GAA14_OpacityEffectVGAA06_FrameU0VGtGGAA010_AnimationP0VySbGGANyAA15DynamicTypeSizeOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACy15ConversationKit017ClarityUIShadowedD0VyACyACyAEyAGyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGG_ACyACyACyAA0G0PAAE06buttonW0yQrqd__AA06ButtonW0Rd__lFQOyAA6ButtonVyACyAA5ImageVA_GG_AH012DeleteButtonW033_E44343144E29C1A4C0133F4F8C633823LLVQo_A_GAA14_OpacityEffectVGAA06_FrameU0VGtGGAA010_AnimationP0VySbGGANyAA15DynamicTypeSizeOGGMR) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGMR) + 28);
  v17 = *MEMORY[0x1E697E6C0];
  type metadata accessor for DynamicTypeSize();
  OUTLINED_FUNCTION_7_0();
  result = (*(v18 + 104))(v15 + v16, v17);
  *v15 = KeyPath;
  return result;
}

uint64_t closure #1 in EnteredNumbersView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a4;
  v77 = a5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGGMR);
  v72 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v65 = &v63 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGMR) - 8;
  MEMORY[0x1EEE9AC00](v71);
  v66 = &v63 - v9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGAA14_OpacityEffectVGMR) - 8;
  MEMORY[0x1EEE9AC00](v73);
  v68 = &v63 - v10;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGAA14_OpacityEffectVGAA06_FrameK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGAA14_OpacityEffectVGAA06_FrameK0VGMR) - 8;
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v63 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v63 - v15;
  v16 = type metadata accessor for RoundedRectangle();
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit017ClarityUIShadowedD0VyACyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit017ClarityUIShadowedD0VyACyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGGMR);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v67 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v63 - v24;
  static ClarityUIMetrics.componentCornerRadius.getter();
  v27 = v26;
  v28 = *(v17 + 28);
  v29 = *MEMORY[0x1E697F468];
  v30 = type metadata accessor for RoundedCornerStyle();
  (*(*(v30 - 8) + 104))(&v19[v28], v29, v30);
  *v19 = v27;
  *(v19 + 1) = v27;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ClarityUIShadowedContentVy7SwiftUI08ModifiedE0VyAFyAD6HStackVyAD9TupleViewVyAFyAFyAD4TextVAD30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AD6SpacerVtGGAD14_PaddingLayoutVGAD016_BackgroundStyleP0VyAD5ColorVGGAD16RoundedRectangleVGMd, &_s15ConversationKit24ClarityUIShadowedContentVy7SwiftUI08ModifiedE0VyAFyAD6HStackVyAD9TupleViewVyAFyAFyAD4TextVAD30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AD6SpacerVtGGAD14_PaddingLayoutVGAD016_BackgroundStyleP0VyAD5ColorVGGAD16RoundedRectangleVGMR);
  v32 = v31[17];
  *&v25[v32] = static Color.white.getter();
  *&v25[v31[18]] = 1050253722;
  v33 = v31[19];
  *&v25[v33] = static Color.black.getter();
  *&v25[v31[20]] = 1050253722;
  *&v25[v31[21]] = 0x4000000000000000;
  *&v25[v31[22]] = 0x3FF0000000000000;
  *&v25[v31[23]] = 0xBFF0000000000000;
  outlined init with copy of RoundedRectangle(v19, v25);
  v25[v31[13]] = 0;
  v25[v31[14]] = 1;
  v25[v31[15]] = 0;
  v34 = &v25[v31[16]];
  *v34 = static VerticalAlignment.center.getter();
  *(v34 + 1) = 0;
  v34[16] = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAM14TruncationModeOGG_AA6SpacerVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAM14TruncationModeOGG_AA6SpacerVtGGMR);
  v36 = v64;
  closure #1 in closure #1 in closure #1 in EnteredNumbersView.body.getter(a1, a2, a3, v64, &v34[*(v35 + 44)]);
  LOBYTE(v31) = static Edge.Set.all.getter();
  v37 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAI14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAI14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGMR) + 36)];
  *v37 = v31;
  *(v37 + 8) = xmmword_1BC4C2300;
  *(v37 + 24) = xmmword_1BC4C2300;
  v37[40] = 0;
  v38 = static Color.clarityUIButtonBackground.getter();
  LOBYTE(v33) = static Edge.Set.all.getter();
  v39 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAI14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleL0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAI14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleL0VyAA5ColorVGGMR) + 36)];
  *v39 = v38;
  v39[8] = v33;
  outlined destroy of RoundedRectangle(v19);
  *&v25[*(v21 + 44)] = 0x3FF0000000000000;
  v40 = swift_allocObject();
  v40[2] = a1;
  v40[3] = a2;
  v40[4] = a3;
  v40[5] = v36;
  v41 = a3;
  v42 = v36;

  v43 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v44 = v65;
  Button.init(action:label:)();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Image, _PaddingLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGGMR, MEMORY[0x1E697D680]);
  lazy protocol witness table accessor for type DeleteButtonStyle and conformance DeleteButtonStyle();
  v45 = v66;
  v46 = v70;
  View.buttonStyle<A>(_:)();
  (*(v72 + 8))(v44, v46);
  LOBYTE(v44) = static Edge.Set.leading.getter();
  static ClarityUIMetrics.standardSpacing.getter();
  EdgeInsets.init(_all:)();
  v47 = v45 + *(v71 + 44);
  *v47 = v44;
  *(v47 + 8) = v48;
  *(v47 + 16) = v49;
  *(v47 + 24) = v50;
  *(v47 + 32) = v51;
  *(v47 + 40) = 0;
  if (EnteredNumbersView.showsDeleteButton.getter(a1, v43, v41, v42))
  {
    v52 = 1.0;
  }

  else
  {
    v52 = 0.0;
  }

  v53 = v68;
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v45, v68, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGMR);
  *(v53 + *(v73 + 44)) = v52;
  EnteredNumbersView.showsDeleteButton.getter(a1, v43, v41, v42);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v54 = v69;
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v53, v69, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGAA14_OpacityEffectVGMR);
  v55 = v74;
  v56 = (v54 + *(v75 + 44));
  v57 = v79;
  *v56 = v78;
  v56[1] = v57;
  v56[2] = v80;
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v54, v55, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGAA14_OpacityEffectVGAA06_FrameK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGAA14_OpacityEffectVGAA06_FrameK0VGMR);
  v58 = v67;
  outlined init with copy of Participant?(v25, v67, &_s7SwiftUI15ModifiedContentVy15ConversationKit017ClarityUIShadowedD0VyACyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit017ClarityUIShadowedD0VyACyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGGMR);
  v59 = v76;
  sub_1BBCE078C(v55, v76);
  v60 = v77;
  outlined init with copy of Participant?(v58, v77, &_s7SwiftUI15ModifiedContentVy15ConversationKit017ClarityUIShadowedD0VyACyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit017ClarityUIShadowedD0VyACyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGGMR);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit017ClarityUIShadowedD0VyACyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGG_ACyACyACyAA0K0PAAE06buttonW0yQrqd__AA06ButtonW0Rd__lFQOyAA6ButtonVyACyAA5ImageVA_GG_AD012DeleteButtonW033_E44343144E29C1A4C0133F4F8C633823LLVQo_A_GAA14_OpacityEffectVGAA06_FrameU0VGtMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit017ClarityUIShadowedD0VyACyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGG_ACyACyACyAA0K0PAAE06buttonW0yQrqd__AA06ButtonW0Rd__lFQOyAA6ButtonVyACyAA5ImageVA_GG_AD012DeleteButtonW033_E44343144E29C1A4C0133F4F8C633823LLVQo_A_GAA14_OpacityEffectVGAA06_FrameU0VGtMR);
  sub_1BBCE078C(v59, v60 + *(v61 + 48));
  sub_1BBCE07F4(v55);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s7SwiftUI15ModifiedContentVy15ConversationKit017ClarityUIShadowedD0VyACyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit017ClarityUIShadowedD0VyACyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGGMR);
  sub_1BBCE07F4(v59);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v58, &_s7SwiftUI15ModifiedContentVy15ConversationKit017ClarityUIShadowedD0VyACyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit017ClarityUIShadowedD0VyACyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in EnteredNumbersView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGGMR);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v55 - v14;
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd, &_s7SwiftUI7BindingVySSGMR);
  MEMORY[0x1BFB20050](&v62);
  v17 = v62;
  v16 = v63;

  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v64 = a1;
    v65 = a2;
    v66 = a3;
    v67 = a4;
    MEMORY[0x1BFB20050](&v62, v15);
    countAndFlagsBits = v62;
    object = v63;
  }

  else
  {
    v21 = [objc_opt_self() conversationKit];
    v68._object = 0xE000000000000000;
    v22.value._countAndFlagsBits = 0x61737265766E6F43;
    v22.value._object = 0xEF74694B6E6F6974;
    v23._object = 0x80000001BC4F8260;
    v23._countAndFlagsBits = 0xD000000000000029;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v68._countAndFlagsBits = 0;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v68);
    countAndFlagsBits = v25._countAndFlagsBits;
    object = v25._object;
  }

  v64 = countAndFlagsBits;
  v65 = object;
  lazy protocol witness table accessor for type String and conformance String();
  v26 = Text.init<A>(_:)();
  v28 = v27;
  v30 = v29;
  v57 = v31;
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  MEMORY[0x1BFB20050](&v62, v15);
  v33 = v62;
  v32 = v63;

  v34 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v34 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    static Font.headline.getter();
  }

  else
  {
    static Font.body.getter();
  }

  v35 = Text.font(_:)();
  v56 = v36;
  v38 = v37;
  v40 = v39;

  outlined consume of Text.Storage(v26, v28, v30 & 1);

  KeyPath = swift_getKeyPath();
  v42 = &v12[*(v58 + 36)];
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV14TruncationModeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV14TruncationModeOGMR) + 28);
  v44 = *MEMORY[0x1E6980FA0];
  v45 = type metadata accessor for Text.TruncationMode();
  (*(*(v45 - 8) + 104))(v42 + v43, v44, v45);
  *v42 = swift_getKeyPath();
  v46 = v56;
  *v12 = v35;
  *(v12 + 1) = v46;
  v12[16] = v38 & 1;
  *(v12 + 3) = v40;
  *(v12 + 4) = KeyPath;
  *(v12 + 5) = 1;
  v12[48] = 0;
  v47 = v12;
  v48 = v59;
  outlined init with take of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>(v47, v59);
  static ClarityUIMetrics.standardSpacing.getter();
  v50 = v49;
  v51 = v60;
  outlined init with copy of Participant?(v48, v60, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGGMR);
  v52 = v61;
  outlined init with copy of Participant?(v51, v61, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGGMR);
  v53 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGG_AA6SpacerVtMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGG_AA6SpacerVtMR) + 48);
  *v53 = v50;
  *(v53 + 8) = 0;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGGMR);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v51, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGGMR);
}

uint64_t closure #2 in closure #1 in EnteredNumbersView.body.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd, &_s7SwiftUI7BindingVySSGMR);
  MEMORY[0x1BFB20050](&v13);
  v10 = v13;
  v9 = v14;

  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v18 = a1;
    v19 = a2;
    v20 = a3;
    v21 = a4;
    MEMORY[0x1BFB20050](&v13, v8);
    v18 = a1;
    v19 = a2;
    v20 = a3;
    v21 = a4;
    MEMORY[0x1BFB20050](&v13, v8);

    String.index(before:)();

    v18 = a1;
    v19 = a2;
    v20 = a3;
    v21 = a4;
    MEMORY[0x1BFB20050](&v17, v8);
    String.remove(at:)();

    v13 = a1;
    v14 = a2;
    v15 = a3;
    v16 = a4;
    Binding.wrappedValue.setter();
  }
}

void closure #3 in closure #1 in EnteredNumbersView.body.getter(uint64_t a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = static Edge.Set.horizontal.getter();
  static ClarityUIMetrics.standardSpacing.getter();
  EdgeInsets.init(_all:)();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
}

BOOL EnteredNumbersView.showsDeleteButton.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd, &_s7SwiftUI7BindingVySSGMR);
  MEMORY[0x1BFB20050](v9, v4);
  v6 = v9[0];
  v5 = v9[1];

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  return v7 != 0;
}

uint64_t getEnumTagSinglePayload for EnteredNumbersView(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for EnteredNumbersView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ClarityUIShadowedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, RoundedRectangle>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>, _OpacityEffect>, _FrameLayout>)>>, _AnimationModifier<Bool>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ClarityUIShadowedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, RoundedRectangle>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>, _OpacityEffect>, _FrameLayout>)>>, _AnimationModifier<Bool>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ClarityUIShadowedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, RoundedRectangle>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>, _OpacityEffect>, _FrameLayout>)>>, _AnimationModifier<Bool>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACy15ConversationKit017ClarityUIShadowedD0VyACyACyAEyAGyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGG_ACyACyACyAA0G0PAAE06buttonW0yQrqd__AA06ButtonW0Rd__lFQOyAA6ButtonVyACyAA5ImageVA_GG_AH012DeleteButtonW033_E44343144E29C1A4C0133F4F8C633823LLVQo_A_GAA14_OpacityEffectVGAA06_FrameU0VGtGGAA010_AnimationP0VySbGGANyAA15DynamicTypeSizeOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACy15ConversationKit017ClarityUIShadowedD0VyACyACyAEyAGyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGG_ACyACyACyAA0G0PAAE06buttonW0yQrqd__AA06ButtonW0Rd__lFQOyAA6ButtonVyACyAA5ImageVA_GG_AH012DeleteButtonW033_E44343144E29C1A4C0133F4F8C633823LLVQo_A_GAA14_OpacityEffectVGAA06_FrameU0VGtGGAA010_AnimationP0VySbGGANyAA15DynamicTypeSizeOGGMR);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ClarityUIShadowedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, RoundedRectangle>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>, _OpacityEffect>, _FrameLayout>)>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DynamicTypeSize> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ClarityUIShadowedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, RoundedRectangle>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>, _OpacityEffect>, _FrameLayout>)>>, _AnimationModifier<Bool>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ClarityUIShadowedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, RoundedRectangle>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>, _OpacityEffect>, _FrameLayout>)>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ClarityUIShadowedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, RoundedRectangle>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>, _OpacityEffect>, _FrameLayout>)>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ClarityUIShadowedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, RoundedRectangle>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>, _OpacityEffect>, _FrameLayout>)>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACy15ConversationKit017ClarityUIShadowedD0VyACyACyAEyAGyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGG_ACyACyACyAA0G0PAAE06buttonW0yQrqd__AA06ButtonW0Rd__lFQOyAA6ButtonVyACyAA5ImageVA_GG_AH012DeleteButtonW033_E44343144E29C1A4C0133F4F8C633823LLVQo_A_GAA14_OpacityEffectVGAA06_FrameU0VGtGGAA010_AnimationP0VySbGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACy15ConversationKit017ClarityUIShadowedD0VyACyACyAEyAGyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGG_ACyACyACyAA0G0PAAE06buttonW0yQrqd__AA06ButtonW0Rd__lFQOyAA6ButtonVyACyAA5ImageVA_GG_AH012DeleteButtonW033_E44343144E29C1A4C0133F4F8C633823LLVQo_A_GAA14_OpacityEffectVGAA06_FrameU0VGtGGAA010_AnimationP0VySbGGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ClarityUIShadowedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, RoundedRectangle>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>, _OpacityEffect>, _FrameLayout>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVy15ConversationKit017ClarityUIShadowedG0VyAGyAGyACyAEyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGG_AGyAGyAGyAA0E0PAAE06buttonW0yQrqd__AA06ButtonW0Rd__lFQOyAA6ButtonVyAGyAA5ImageVA_GG_AH012DeleteButtonW033_E44343144E29C1A4C0133F4F8C633823LLVQo_A_GAA14_OpacityEffectVGAA06_FrameU0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVy15ConversationKit017ClarityUIShadowedG0VyAGyAGyACyAEyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGG_AGyAGyAGyAA0E0PAAE06buttonW0yQrqd__AA06ButtonW0Rd__lFQOyAA6ButtonVyAGyAA5ImageVA_GG_AH012DeleteButtonW033_E44343144E29C1A4C0133F4F8C633823LLVQo_A_GAA14_OpacityEffectVGAA06_FrameU0VGtGGMR, MEMORY[0x1E69817F8]);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd, &_s7SwiftUI18_AnimationModifierVySbGMR, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ClarityUIShadowedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, RoundedRectangle>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>, _OpacityEffect>, _FrameLayout>)>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t DeleteButtonStyle.makeBody(configuration:)(uint64_t a1)
{
  v2 = type metadata accessor for PlatterButtonType();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ButtonStyleConfiguration();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v11[1] = static Color.red.getter();
  static Color.white.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E697C450], v2);
  return PlatterButtonStyleView.init(configuration:background:foregroundColor:type:includesPadding:)();
}

uint64_t outlined destroy of RoundedRectangle(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DeleteButtonStyle and conformance DeleteButtonStyle()
{
  result = lazy protocol witness table cache variable for type DeleteButtonStyle and conformance DeleteButtonStyle;
  if (!lazy protocol witness table cache variable for type DeleteButtonStyle and conformance DeleteButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeleteButtonStyle and conformance DeleteButtonStyle);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t key path setter for EnvironmentValues.dynamicTypeSize : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ScreeningCaptions.captionHistory.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_captionHistory);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of Participant.CaptionInfo?(*v1, v1[1], v1[2]);
  return v2;
}

double ScreeningCaptions.captionHistory.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_captionHistory);
  OUTLINED_FUNCTION_3_5(v7, v10);
  v8 = *v7;
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  return outlined consume of Participant.CaptionInfo?(v8);
}

double outlined consume of Participant.CaptionInfo?(uint64_t a1)
{
  if (a1)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ScreeningCaptions.isGibberish.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_isGibberish;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ScreeningCaptions.isGibberish.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_isGibberish;
  result = OUTLINED_FUNCTION_3_5(v1 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_isGibberish, v5);
  *(v1 + v3) = a1;
  return result;
}

uint64_t ScreeningCaptions.__allocating_init(logger:onUpdateCaptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ScreeningCaptions.init(logger:onUpdateCaptions:)(a1, a2, a3);
  return v6;
}

uint64_t ScreeningCaptions.init(logger:onUpdateCaptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = (v3 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_captionHistory);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = 0;
  *(v3 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_isGibberish) = 0;
  v9 = OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_badCaptionCountThreshold;
  type metadata accessor for Defaults();
  swift_allocObject();
  v10 = *Defaults.init()();
  v11 = (*(v10 + 792))();

  *(v3 + v9) = v11;
  v12 = OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v13 + 32))(v4 + v12, a1);
  v14 = (v4 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_onUpdateCaptions);
  *v14 = a2;
  v14[1] = a3;
  return v4;
}

uint64_t ScreeningCaptions.gatherAndSortCaptions(captionInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd, &_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v65 - v5;
  v81 = type metadata accessor for Date();
  v7 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v79 = v65 - v10;
  v76 = type metadata accessor for Participant.Caption(0);
  v11 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TranscriptionViewModel.Caption(0);
  v75 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v67 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v74 = v65 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v82 = v65 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v65 - v20;
  v22 = *(a3 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  v66 = v6;
  if (!v22)
  {
LABEL_19:
    v83 = v23;

    specialized MutableCollection<>.sort(by:)(&v83);
    v52 = v67;

    v53 = *(v83 + 16);
    if (v53)
    {
      v54 = 0;
      v81 = *(v13 + 32);
      v55 = *(v65[1] + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_badCaptionCountThreshold);
      v56 = *(v75 + 80);
      v79 = v83;
      v80 = ((v56 + 32) & ~v56);
      v57 = &v80[v83];
      v58 = *(v75 + 72);
      v31 = MEMORY[0x1E69E7CC0];
      v59 = v82;
      do
      {
        outlined init with copy of Participant.Caption(v57, v59, type metadata accessor for TranscriptionViewModel.Caption);
        if (*(v59 + v81) == 1)
        {
          v40 = __OFADD__(v54++, 1);
          if (v40)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v54 = 0;
        }

        outlined init with take of TranscriptionViewModel.Caption(v82, v52);
        *(v52 + *(v13 + 32)) = v54 >= v55;
        if (v55 >= v54)
        {
          outlined init with take of TranscriptionViewModel.Caption(v52, v6);
          v60 = 0;
        }

        else
        {
          outlined destroy of Participant.Caption(v52, type metadata accessor for TranscriptionViewModel.Caption);
          v60 = 1;
        }

        __swift_storeEnumTagSinglePayload(v6, v60, 1, v13);
        if (__swift_getEnumTagSinglePayload(v6, 1, v13) == 1)
        {
          outlined destroy of TranscriptionViewModel.Caption?(v6);
        }

        else
        {
          outlined init with take of TranscriptionViewModel.Caption(v6, v74);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v31 = v62;
          }

          v61 = *(v31 + 16);
          if (v61 >= *(v31 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v31 = v63;
          }

          *(v31 + 16) = v61 + 1;
          outlined init with take of TranscriptionViewModel.Caption(v74, &v80[v31 + v61 * v58]);
          v6 = v66;
          v52 = v67;
        }

        v57 += v58;
        --v53;
      }

      while (v53);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v31;
  }

  v83 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v24 = 0;
  v23 = v83;
  v72 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v68 = (v7 + 32);
  v69 = v22;
  v70 = *(v11 + 72);
  v71 = (v7 + 16);
  while (1)
  {
    v25 = v73;
    outlined init with copy of Participant.Caption(v72 + v70 * v24, v73, type metadata accessor for Participant.Caption);
    v26 = *v25;
    v27 = v76;
    v28 = *v71;
    v29 = v81;
    (*v71)(v79, &v25[*(v76 + 20)], v81);
    v30 = v29;
    v31 = v25;
    v28(v80, &v25[v27[6]], v30);
    v32 = &v25[v27[7]];
    v33 = *v32;
    v34 = v32[1];
    LODWORD(v28) = *(v31 + v27[8]);

    v78 = v28;
    v77 = v33;
    if (v28 == 1)
    {
      break;
    }

    v42 = v26;
    v43 = v23;
    v44 = 0;
    v45 = MEMORY[0x1E69E7CC0];
LABEL_15:
    outlined destroy of Participant.Caption(v31, type metadata accessor for Participant.Caption);
    *v21 = v42;
    v46 = *(v13 + 20);
    v47 = v13;
    v48 = *v68;
    v49 = v81;
    (*v68)(&v21[v46], v79, v81);
    v48(&v21[v47[6]], v80, v49);
    v13 = v47;
    v50 = &v21[v47[7]];
    *v50 = v77;
    *(v50 + 1) = v34;
    v21[v47[8]] = v44;
    *&v21[v47[9]] = v45;
    v21[v47[10]] = v78;
    v23 = v43;
    v83 = v43;
    v51 = *(v43 + 16);
    if (v51 >= *(v43 + 24) >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v23 = v83;
    }

    ++v24;
    *(v23 + 16) = v51 + 1;
    outlined init with take of TranscriptionViewModel.Caption(v21, v23 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v51);
    if (v24 == v69)
    {
      v6 = v66;
      goto LABEL_19;
    }
  }

  if (String.count.getter() < 1)
  {
    v42 = v26;
    v44 = 0;
LABEL_14:
    v43 = v23;
    v45 = *(v31 + *(v76 + 36));

    goto LABEL_15;
  }

  v35 = *(v31 + *(v76 + 36));
  v36 = *(v35 + 16);
  if (!v36)
  {
    v41 = 0.0;
LABEL_13:
    v42 = v26;
    v44 = (v41 / String.count.getter()) > 0.75;
    goto LABEL_14;
  }

  v37 = 0;
  v38 = (v35 + 40);
  while (1)
  {
    v39 = *v38;
    v38 += 2;
    v40 = __OFADD__(v37, v39);
    v37 += v39;
    if (v40)
    {
      break;
    }

    if (!--v36)
    {
      v41 = v37;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t ScreeningCaptions.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);

  outlined consume of Participant.CaptionInfo?(*(v0 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_captionHistory));
  return v0;
}

uint64_t ScreeningCaptions.__deallocating_deinit()
{
  ScreeningCaptions.deinit();

  return swift_deallocClassInstance();
}

double ScreeningCaptions.participantCaptionsProvider(_:didUpdateCaptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = type metadata accessor for Participant.Caption(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v14, v15))
  {
    v51 = v15;
    v52 = a3;
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v54[0] = v49;
    v50 = v16;
    *v16 = 136315138;
    v17 = *(a5 + 16);
    v18 = MEMORY[0x1E69E7CC0];
    if (v17)
    {
      v47[0] = v14;
      v47[1] = a4;
      v48 = v5;
      v53 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v18 = v53;
      v19 = *(v11 + 80);
      v47[2] = a5;
      v20 = a5 + ((v19 + 32) & ~v19);
      v21 = *(v11 + 72);
      do
      {
        outlined init with copy of Participant.Caption(v20, v13, type metadata accessor for Participant.Caption);
        v22 = Participant.Caption.debugDescription.getter();
        v24 = v23;
        outlined destroy of Participant.Caption(v13, type metadata accessor for Participant.Caption);
        v53 = v18;
        v25 = *(v18 + 16);
        if (v25 >= *(v18 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v18 = v53;
        }

        *(v18 + 16) = v25 + 1;
        v26 = v18 + 16 * v25;
        *(v26 + 32) = v22;
        *(v26 + 40) = v24;
        v20 += v21;
        --v17;
      }

      while (v17);
      v6 = v48;
      v14 = v47[0];
    }

    v53 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v27 = BidirectionalCollection<>.joined(separator:)();
    v29 = v28;

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v54);

    v31 = v50;
    *(v50 + 1) = v30;
    _os_log_impl(&dword_1BBC58000, v14, v51, "Captions updated: %s", v31, 0xCu);
    v32 = v49;
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x1BFB23DF0](v32, -1, -1);
    MEMORY[0x1BFB23DF0](v31, -1, -1);
  }

  else
  {
  }

  v33 = (v6 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_captionHistory);
  OUTLINED_FUNCTION_3_5(v6 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_captionHistory, v54);
  v34 = OUTLINED_FUNCTION_0_59();
  outlined copy of Participant.CaptionInfo?(v34, v35, v36);
  OUTLINED_FUNCTION_0_59();
  Participant.CaptionInfo.with(history:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = OUTLINED_FUNCTION_0_59();
  outlined consume of Participant.CaptionInfo?(v43);
  *v33 = v38;
  v33[1] = v40;
  v33[2] = v42;
  swift_unknownObjectRetain();

  v44 = OUTLINED_FUNCTION_0_59();
  outlined consume of Participant.CaptionInfo?(v44);
  v45 = *(v6 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_onUpdateCaptions);
  ScreeningCaptions.gatherAndSortCaptions(captionInfo:)(v38, v40, v42);
  v45();

  swift_unknownObjectRelease();

  return result;
}

void ScreeningCaptions.participantCaptionsProvider(_:didEnableCaptions:)(uint64_t a1, uint64_t a2, char a3)
{
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = a3 & 1;
    _os_log_impl(&dword_1BBC58000, oslog, v4, "Captions enabled: %{BOOL,public}d", v5, 8u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }
}

void ScreeningCaptions.participantCaptionsProvider(_:didDetectGibberish:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_isGibberish;
  OUTLINED_FUNCTION_3_5(v3 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_isGibberish, v12);
  if (a3)
  {
    if ((*(v3 + v5) & 1) == 0)
    {
      *(v3 + v5) = 1;
      (*(v3 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_onUpdateCaptions))(0);
    }
  }

  else if (*(v3 + v5))
  {
    *(v3 + v5) = 0;
    v6 = (v3 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_captionHistory);
    swift_beginAccess();
    v7 = *v6;
    if (*v6)
    {
      v10 = v6 + 1;
      v8 = v6[1];
      v9 = v10[1];
      v11 = *(v3 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_onUpdateCaptions);
      swift_unknownObjectRetain();

      ScreeningCaptions.gatherAndSortCaptions(captionInfo:)(v7, v8, v9);
      v11();

      swift_unknownObjectRelease();
    }

    else
    {
      (*(v3 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_onUpdateCaptions))(MEMORY[0x1E69E7CC0]);
    }
  }
}

uint64_t type metadata accessor for ScreeningCaptions(uint64_t a1)
{
  result = type metadata singleton initialization cache for ScreeningCaptions;
  if (!type metadata singleton initialization cache for ScreeningCaptions)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ScreeningCaptions(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for ScreeningCaptions.CaptionData(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScreeningCaptions.CaptionData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for ScreeningCaptions.CaptionData(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t outlined init with take of TranscriptionViewModel.Caption(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptionViewModel.Caption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Participant.Caption(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of TranscriptionViewModel.Caption?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd, &_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of Participant.Caption(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t InCallMoreMenuControlsService.activeCall.getter()
{
  OUTLINED_FUNCTION_2_58();
  OUTLINED_FUNCTION_5_18();
  (*(v0 + 672))();
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t InCallMoreMenuControlsService.conversation.getter()
{
  OUTLINED_FUNCTION_2_58();
  OUTLINED_FUNCTION_5_18();
  return (*(v0 + 704))();
}

uint64_t InCallMoreMenuControlsService.foregroundApp.getter()
{
  OUTLINED_FUNCTION_2_58();
  OUTLINED_FUNCTION_5_18();
  return (*(v0 + 2144))();
}

uint64_t key path getter for InCallMoreMenuControlsService.podcastService : InCallMoreMenuControlsService@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t key path setter for InCallMoreMenuControlsService.podcastService : InCallMoreMenuControlsService(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 160);

  return v2(v3);
}

uint64_t InCallMoreMenuControlsService.podcastService.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v2 + 272))();

  swift_beginAccess();
}

uint64_t InCallMoreMenuControlsService.podcastService.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v6 = v2;
  v7 = a1;
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 280))();
}

uint64_t (*InCallMoreMenuControlsService.podcastService.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 272))(KeyPath);

  v3[5] = OBJC_IVAR____TtC15ConversationKit29InCallMoreMenuControlsService___observationRegistrar;
  *v3 = v1;
  swift_getKeyPath();
  v3[6] = lazy protocol witness table accessor for type InCallMoreMenuControlsService and conformance InCallMoreMenuControlsService();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v3[7] = InCallMoreMenuControlsService._podcastService.modify(v3);
  return InCallMoreMenuControlsService.podcastService.modify;
}

void InCallMoreMenuControlsService.podcastService.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

unint64_t lazy protocol witness table accessor for type InCallMoreMenuControlsService and conformance InCallMoreMenuControlsService()
{
  result = lazy protocol witness table cache variable for type InCallMoreMenuControlsService and conformance InCallMoreMenuControlsService;
  if (!lazy protocol witness table cache variable for type InCallMoreMenuControlsService and conformance InCallMoreMenuControlsService)
  {
    type metadata accessor for InCallMoreMenuControlsService(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallMoreMenuControlsService and conformance InCallMoreMenuControlsService);
  }

  return result;
}

uint64_t type metadata accessor for InCallMoreMenuControlsService(uint64_t a1)
{
  result = type metadata singleton initialization cache for InCallMoreMenuControlsService;
  if (!type metadata singleton initialization cache for InCallMoreMenuControlsService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InCallMoreMenuControlsService.shareMenuButtonStatePublisher.getter()
{
  OUTLINED_FUNCTION_2_58();
  OUTLINED_FUNCTION_5_18();
  return (*(v0 + 1856))();
}

Swift::Void __swiftcall InCallMoreMenuControlsService.stopScreenSharing()()
{
  ConversationControlsManager.stopScreenShare()();
  OUTLINED_FUNCTION_5_18();
  (*(v0 + 2632))();
}

Swift::Void __swiftcall InCallMoreMenuControlsService.startPodcastRecording()()
{
  OUTLINED_FUNCTION_0_1();
  v2 = (*(v1 + 104))();
  if (v2)
  {
    v3 = v2;
    v4 = swift_beginAccess();
    if (!v0[2])
    {
      v5 = [objc_opt_self() sharedInstance];
      type metadata accessor for PodcastRecordingService();
      swift_allocObject();
      v6 = PodcastRecordingService.init(callCenter:)();
      v4 = (*(*v0 + 160))(v6);
    }

    if ((*(*v0 + 152))(v4))
    {
      dispatch thunk of PodcastRecordingService.startRecording(call:completion:)();
    }
  }
}

Swift::Void __swiftcall InCallMoreMenuControlsService.stopPodcastRecording()()
{
  OUTLINED_FUNCTION_0_1();
  v1 = (*(v0 + 104))();
  if (v1)
  {
    v3 = v1;
    OUTLINED_FUNCTION_0_1();
    if ((*(v2 + 152))())
    {
      dispatch thunk of PodcastRecordingService.stopRecording(call:completion:)();
    }

    else
    {
    }
  }
}

void closure #1 in InCallMoreMenuControlsService.startPodcastRecording()(uint64_t a1, const char *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    Logger.init(subsystem:category:)();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBC58000, v8, v9, a2, v10, 2u);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall InCallMoreMenuControlsService.toggleLiveCaptions()()
{
  OUTLINED_FUNCTION_2_58();
  OUTLINED_FUNCTION_5_18();
  v1 = (*(v0 + 1160))(v6);
  if (v6[3])
  {
    OUTLINED_FUNCTION_5_34(v1, v2);
    v3 = OUTLINED_FUNCTION_4_38();
    v5 = v4(v3);
    v5();

    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    outlined destroy of CallControlsService?(v6, &_s15ConversationKit19CallControlsService_pSgMd, &_s15ConversationKit19CallControlsService_pSgMR);
  }
}

Swift::Void __swiftcall InCallMoreMenuControlsService.presentContactCard()()
{
  OUTLINED_FUNCTION_2_58();
  OUTLINED_FUNCTION_5_18();
  v1 = (*(v0 + 1160))(v6);
  if (v6[3])
  {
    OUTLINED_FUNCTION_5_34(v1, v2);
    v3 = OUTLINED_FUNCTION_4_38();
    v5 = v4(v3);
    v5();

    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    outlined destroy of CallControlsService?(v6, &_s15ConversationKit19CallControlsService_pSgMd, &_s15ConversationKit19CallControlsService_pSgMR);
  }
}

Swift::Void __swiftcall InCallMoreMenuControlsService.presentAddParticipantSheet()()
{
  OUTLINED_FUNCTION_2_58();
  OUTLINED_FUNCTION_5_18();
  v1 = (*(v0 + 1160))(v6);
  if (v6[3])
  {
    OUTLINED_FUNCTION_5_34(v1, v2);
    v3 = OUTLINED_FUNCTION_4_38();
    v5 = v4(v3);
    v5();

    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    outlined destroy of CallControlsService?(v6, &_s15ConversationKit19CallControlsService_pSgMd, &_s15ConversationKit19CallControlsService_pSgMR);
  }
}

void InCallMoreMenuControlsService.presentMoreMenu(_:alongsideTransition:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_1();
  v19 = (*(v7 + 104))();
  if (v19)
  {
    type metadata accessor for CallCenterFacade();
    static CallCenterFacade.shared.getter();
    v8 = [v19 uniqueProxyIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = CallCenterFacade.call(with:)();

    if (v9)
    {

      static CallCenterFacade.shared.getter();
      v10 = type metadata accessor for FTMenuItemStateProvider();
      swift_allocObject();
      v11 = FTMenuItemStateProvider.init(call:callCenter:)();
      v18 = *(v3 + 24);
      v22 = v10;
      v23 = MEMORY[0x1E6995F68];
      v21[0] = v11;
      v12 = OUTLINED_FUNCTION_3_54();
      OUTLINED_FUNCTION_7_41(v12);
      v13 = a3;
      v14 = OUTLINED_FUNCTION_3_54();
      OUTLINED_FUNCTION_7_41(v14);
      v15 = OUTLINED_FUNCTION_3_54();
      OUTLINED_FUNCTION_7_41(v15);
      v16 = OUTLINED_FUNCTION_3_54();
      OUTLINED_FUNCTION_7_41(v16);

      ConversationControlsManager.presentMoreMenu(isBannerView:source:arrowDirection:provider:alongsideTransition:presentContactCard:presentAddParticipantSheet:startCallRecording:stopCallRecording:)(0, a1, 15, v21, a2, v13, partial apply for closure #1 in InCallMoreMenuControlsService.presentMoreMenu(_:alongsideTransition:), v12, partial apply for closure #2 in InCallMoreMenuControlsService.presentMoreMenu(_:alongsideTransition:), v14, partial apply for closure #3 in InCallMoreMenuControlsService.presentMoreMenu(_:alongsideTransition:), v15, partial apply for closure #4 in InCallMoreMenuControlsService.presentMoreMenu(_:alongsideTransition:), v16, v17, v18, v19, v21[0], v21[1], v21[2], v22, v23, v24, v25, v26, v27);

      outlined destroy of CallControlsService?(v21, &_s20CommunicationsUICore24FTMenuItemStateProviding_pSgMd, &_s20CommunicationsUICore24FTMenuItemStateProviding_pSgMR);
    }

    else
    {
    }
  }
}

uint64_t closure #1 in InCallMoreMenuControlsService.presentMoreMenu(_:alongsideTransition:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 240))(result);
  }

  return result;
}

uint64_t closure #2 in InCallMoreMenuControlsService.presentMoreMenu(_:alongsideTransition:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 248))(result);
  }

  return result;
}

uint64_t closure #3 in InCallMoreMenuControlsService.presentMoreMenu(_:alongsideTransition:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 200))(result);
  }

  return result;
}

uint64_t closure #4 in InCallMoreMenuControlsService.presentMoreMenu(_:alongsideTransition:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 208))(result);
  }

  return result;
}

uint64_t outlined destroy of CallControlsService?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_15_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t InCallMoreMenuControlsService.__allocating_init(controlsManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  InCallMoreMenuControlsService.init(controlsManager:)(a1);
  return v2;
}

uint64_t InCallMoreMenuControlsService.init(controlsManager:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  ObservationRegistrar.init()();
  *(v1 + 24) = a1;
  return v1;
}

uint64_t InCallMoreMenuControlsService.deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit29InCallMoreMenuControlsService___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t InCallMoreMenuControlsService.__deallocating_deinit()
{
  InCallMoreMenuControlsService.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for InCallMoreMenuControlsService(uint64_t a1)
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

uint64_t GridViewConstraintManager.__allocating_init(containingGuide:containingView:gridView:rosterCellLayoutGuide:changeLayoutButton:topCornerButtonsStackView:captionsState:bannerLayoutGuide:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v15 = swift_allocObject();
  GridViewConstraintManager.init(containingGuide:containingView:gridView:rosterCellLayoutGuide:changeLayoutButton:topCornerButtonsStackView:captionsState:bannerLayoutGuide:)(a1, a2, a3, a4, a5, a6, v16, a8);
  return v15;
}

void *GridViewConstraintManager.init(containingGuide:containingView:gridView:rosterCellLayoutGuide:changeLayoutButton:topCornerButtonsStackView:captionsState:bannerLayoutGuide:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = v8;
  type metadata accessor for GridViewConstraintManager();
  v127 = a1;
  static GridViewConstraintManager.generateCornerButtonConstraints(containingGuide:containingView:gridView:changeLayoutButton:topCornerButtonsStackView:)(a1, a2, a3, a5, a6);
  v129 = v15;
  v123 = v16;
  v17 = objc_opt_self();
  v18 = [v17 currentDevice];
  v19 = [v18 userInterfaceIdiom];

  v21 = &off_1E7FE9000;
  v124 = a5;
  v125 = a6;
  if (v19)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_59(v20, v130);
  if (static AmbientState.isPresented != 1)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  v21 = &off_1E7FE9000;
  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
LABEL_7:
    if (a6)
    {
      v24 = a6;
      v25 = OUTLINED_FUNCTION_6_37();
      v22 = [&off_1E7FE9000 bottomAnchor];
      Layout.MultiwayFaceTime.init()(v134);
      v26 = [v25 constraintEqualToAnchor:v22 constant:v136];
    }

    else
    {
      if (!a5)
      {
        v22 = [a3 topAnchor];
        v21 = [v127 topAnchor];
        v23 = [v22 constraintEqualToAnchor_];
        goto LABEL_13;
      }

      v27 = a5;
      v25 = OUTLINED_FUNCTION_6_37();
      v22 = [&off_1E7FE9000 bottomAnchor];
      Layout.MultiwayFaceTime.init()(v134);
      v26 = [v25 constraintEqualToAnchor:v22 constant:v135];
    }

    v28 = v26;

    goto LABEL_14;
  }

  v22 = [a3 topAnchor];
  v21 = [a2 topAnchor];
  Layout.MultiwayFaceTime.init()(v134);
  v23 = [v22 constraintEqualToAnchor:v21 constant:v137];
LABEL_13:
  v28 = v23;
LABEL_14:

  v9[7] = v28;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    v29 = [v17 currentDevice];
    v30 = [v29 userInterfaceIdiom];

    if (v30 || (OUTLINED_FUNCTION_2_59(v31, v131), static AmbientState.isPresented != 1) || (Features.isICUIRedesignEnabled.getter() & 1) == 0)
    {
      v32 = [a3 topAnchor];
      v33 = [a8 bottomAnchor];
      v34 = [v32 constraintEqualToAnchor:v33 constant:30.0];

      v35 = v9[7];
      v9[7] = v34;
    }
  }

  v36 = [v17 currentDevice];
  v37 = [v36 userInterfaceIdiom];

  if (!v37 && (OUTLINED_FUNCTION_2_59(v38, v132), static AmbientState.isPresented == 1) && (Features.isICUIRedesignEnabled.getter() & 1) != 0)
  {
    v39 = [a3 trailingAnchor];
    v40 = [v127 trailingAnchor];
    Layout.MultiwayFaceTime.init()(v138);
    v41 = [v39 constraintEqualToAnchor:v40 constant:-v140];

    v9[8] = v41;
    v42 = a4;
  }

  else
  {
    v43 = Features.isICUIRedesignEnabled.getter();
    v44 = [a3 trailingAnchor];
    v42 = a4;
    if (v43)
    {
      v45 = [a2 trailingAnchor];
      Layout.MultiwayFaceTime.init()(v138);
      v47 = OUTLINED_FUNCTION_5_35(v140);
    }

    else
    {
      v45 = [a4 leadingAnchor];
      Layout.MultiwayFaceTime.init()(v138);
      v47 = OUTLINED_FUNCTION_5_35(v139);
    }

    v48 = [v44 v46];

    v9[8] = v48;
  }

  v49 = Features.isICUIRedesignEnabled.getter();
  v50 = [v42 topAnchor];
  v51 = [a3 bottomAnchor];
  v52 = 16.0;
  if ((v49 & 1) == 0)
  {
    Layout.MultiwayFaceTime.init()(v141);
    v52 = v142;
  }

  v53 = [v50 constraintEqualToAnchor:v51 constant:v52];

  v9[9] = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1BC4BC370;
  v56 = v9[7];
  v57 = v9[8];
  *(v55 + 32) = v56;
  *(v55 + 40) = v57;
  v58 = v56;
  v59 = v57;
  v60 = [a3 leadingAnchor];
  v61 = [a2 safeAreaLayoutGuide];
  v62 = [v61 leadingAnchor];

  v63 = [v60 constraintEqualToAnchor_];
  *(v55 + 48) = v63;
  v149[0] = v55;

  specialized Array.append<A>(contentsOf:)(v64);
  v9[4] = v149[0];
  v65 = OUTLINED_FUNCTION_3_2(v54);
  *(v65 + 16) = xmmword_1BC4BAC30;
  v66 = [a3 leadingAnchor];
  v67 = [a2 leadingAnchor];
  v68 = Features.isICUIRedesignEnabled.getter();
  v69 = 0.0;
  if (v68)
  {
    Layout.MultiwayFaceTime.init()(v143);
    v69 = v144;
  }

  v70 = [v66 constraintEqualToAnchor:v67 constant:v69];

  *(v65 + 32) = v70;
  v149[0] = v65;

  specialized Array.append<A>(contentsOf:)(v71);
  v9[2] = v149[0];
  v72 = [a3 bottomAnchor];
  v73 = [a2 bottomAnchor];
  Layout.MultiwayFaceTime.init()(v145);
  v74 = OUTLINED_FUNCTION_5_35(v146);
  v76 = [v72 v75];

  v9[10] = v76;
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1BC4BA7F0;
  v78 = [a3 topAnchor];
  v79 = [a2 topAnchor];
  v80 = [v78 constraintEqualToAnchor_];

  *(v77 + 32) = v80;
  v81 = [a3 leadingAnchor];
  v82 = OUTLINED_FUNCTION_1_60([a2 leadingAnchor]);

  *(v77 + 40) = v82;
  v83 = [a3 trailingAnchor];
  v84 = OUTLINED_FUNCTION_1_60([a2 trailingAnchor]);

  *(v77 + 48) = v84;
  v85 = [a3 &off_1E7FE9D20 + 5];
  v86 = OUTLINED_FUNCTION_1_60([a2 &off_1E7FE9D20 + 5]);

  *(v77 + 56) = v86;
  v149[0] = v77;

  specialized Array.append<A>(contentsOf:)(v87);
  v9[5] = v149[0];
  if (static Platform.current.getter() == 3)
  {
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_1BC4BC370;
    v89 = [a3 topAnchor];
    v90 = OUTLINED_FUNCTION_1_60([a2 topAnchor]);

    *(v88 + 32) = v90;
    v91 = [a3 leadingAnchor];
    v92 = OUTLINED_FUNCTION_1_60([a2 leadingAnchor]);

    *(v88 + 40) = v92;
    v93 = [a3 bottomAnchor];
    v94 = OUTLINED_FUNCTION_1_60([a2 bottomAnchor]);

    *(v88 + 48) = v94;
    v149[0] = v88;
    specialized Array.append<A>(contentsOf:)(v123);
    v95 = v149[0];
    v96 = &selRef_isRecordingAllowed;
  }

  else
  {
    v97 = OUTLINED_FUNCTION_3_6(v54);
    *(v97 + 16) = xmmword_1BC4BA930;
    v98 = [a3 topAnchor];
    v99 = OUTLINED_FUNCTION_1_60([v127 topAnchor]);

    *(v97 + 32) = v99;
    v100 = [a4 topAnchor];
    v101 = [a3 bottomAnchor];
    Layout.MultiwayFaceTime.init()(v147);
    v102 = [v100 constraintEqualToAnchor:v101 constant:v148];

    *(v97 + 40) = v102;
    v149[0] = v97;
    specialized Array.append<A>(contentsOf:)(v123);
    v95 = v149[0];
    v96 = &selRef_isRecordingAllowed;
  }

  v9[6] = v95;
  if (static Platform.current.getter() == 3)
  {
    v103 = OUTLINED_FUNCTION_3_6(v54);
    *(v103 + 16) = xmmword_1BC4BA930;
    v104 = [a3 leadingAnchor];
    v105 = [v127 leadingAnchor];
    v106 = [v104 constraintEqualToAnchor_];

    v107 = v9[9];
    *(v103 + 32) = v106;
    *(v103 + 40) = v107;
    v149[0] = v103;
    v108 = v107;
    specialized Array.append<A>(contentsOf:)(v129);
  }

  else
  {
    if (static Platform.current.getter() != 2)
    {
      v118 = OUTLINED_FUNCTION_3_2(v54);
      *(v118 + 16) = xmmword_1BC4BAC30;
      v119 = [a4 topAnchor];
      v120 = [a3 bottomAnchor];
      Layout.MultiwayFaceTime.init()(v149);
      v121 = [v119 v96[96]];

      *(v118 + 32) = v121;
      v133 = v118;
      specialized Array.append<A>(contentsOf:)(v129);

      v117 = v133;
      goto LABEL_45;
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      v109 = &selRef_leadingAnchor;
    }

    else
    {
      v109 = &selRef_trailingAnchor;
    }

    v110 = [a3 *v109];
    v111 = [v127 *v109];
    v112 = v54;
    v113 = [v110 constraintEqualToAnchor_];

    v114 = OUTLINED_FUNCTION_3_6(v112);
    *(v114 + 16) = xmmword_1BC4BA930;
    v115 = v9[9];
    *(v114 + 32) = v113;
    *(v114 + 40) = v115;
    v149[0] = v114;
    v116 = v115;
    specialized Array.append<A>(contentsOf:)(v129);
  }

  v117 = v149[0];
LABEL_45:
  v9[3] = v117;
  return v9;
}

void static GridViewConstraintManager.generateCornerButtonConstraints(containingGuide:containingView:gridView:changeLayoutButton:topCornerButtonsStackView:)(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a5)
  {
    v7 = a5;
    v40 = a3;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v9 = OUTLINED_FUNCTION_3_2(v8);
    *(v9 + 16) = xmmword_1BC4BAC30;
    v10 = v7;
    v11 = [v10 topAnchor];
    v41 = a2;
    v12 = [a2 topAnchor];
    Layout.MultiwayFaceTime.init()(v42);
    v13 = [v11 constraintEqualToAnchor:v12 constant:v43];
  }

  else
  {
    if (!a4)
    {
      return;
    }

    v40 = a3;
    v41 = a2;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v9 = OUTLINED_FUNCTION_3_2(v15);
    *(v9 + 16) = xmmword_1BC4BAC30;
    v10 = a4;
    v11 = [v10 topAnchor];
    v12 = [a1 topAnchor];
    v13 = [v11 constraintEqualToAnchor_];
    v7 = a4;
  }

  v16 = v13;

  *(v9 + 32) = v16;
  specialized Array.append<A>(contentsOf:)(v9);
  if (static Platform.current.getter() == 3)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v18 = OUTLINED_FUNCTION_3_2(v17);
    *(v18 + 16) = xmmword_1BC4BAC30;

    v19 = [v10 trailingAnchor];
    v20 = [v40 trailingAnchor];
    Layout.MultiwayFaceTime.init()(v44);
    v21 = [v19 &selRef_uniqueProxyIdentifier + 6];

    *(v18 + 32) = v21;
    specialized Array.append<A>(contentsOf:)(v18);
    v22 = [v10 heightAnchor];
    v23 = [v22 constraintEqualToConstant_];

    LODWORD(v24) = 1132068864;
    [v23 setPriority_];
    v25 = OUTLINED_FUNCTION_3_6(v17);
    *(v25 + 16) = xmmword_1BC4BA930;
    v26 = [v10 trailingAnchor];
    v27 = [v41 trailingAnchor];
    Layout.MultiwayFaceTime.init()(v46);
    v28 = OUTLINED_FUNCTION_5_35(v48);
    v30 = [v26 v29];

    *(v25 + 32) = v30;
    *(v25 + 40) = v23;
    specialized Array.append<A>(contentsOf:)(v25);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for shared);
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      v31 = &selRef_leadingAnchor;
    }

    else
    {
      v31 = &selRef_trailingAnchor;
    }

    v32 = [v10 *v31];
    v33 = [a1 *v31];
    v34 = [v32 constraintEqualToAnchor_];

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v36 = OUTLINED_FUNCTION_3_6(v35);
    *(v36 + 16) = xmmword_1BC4BA930;
    *(v36 + 32) = v34;
    v37 = v34;
    v38 = [v10 heightAnchor];
    static Layout.LocalParticipantViewCameraControls.iOS.getter(v46);
    v39 = [v38 constraintEqualToConstant_];

    *(v36 + 40) = v39;
    specialized Array.append<A>(contentsOf:)(v36);
  }
}

uint64_t GridViewConstraintManager.constraintsForLayout(_:in:deviceOrientation:)(char *a1)
{
  v2 = v1;
  v3 = a1[19];
  if ((a1[18] & 1) == 0)
  {
    if (v3 == 2)
    {
      v4 = v1[6];
    }

    else
    {
      v4 = v1[5];
    }

LABEL_15:

    return v4;
  }

  if (v3 != 2)
  {
    v8 = *a1;
    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10)
    {
      goto LABEL_16;
    }

    swift_beginAccess();
    if (static AmbientState.isPresented != 1)
    {
      goto LABEL_16;
    }

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for shared);
    }

    if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
    {
LABEL_16:
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for shared);
      }

      v13 = Features.isICUIRedesignEnabled.getter();
      v14 = v2[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      if (v13)
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BC4BA930;
        v15 = v2[7];
        *(inited + 32) = v15;
        v12 = v2[8];
        *(inited + 40) = v12;
        v23 = v14;

        v16 = v15;
      }

      else
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BC4BC370;
        v17 = v2[7];
        *(inited + 32) = v17;
        v18 = v2[8];
        *(inited + 40) = v18;
        v12 = v2[9];
        *(inited + 48) = v12;
        v23 = v14;

        v19 = v17;
        v20 = v18;
      }

      goto LABEL_21;
    }

    v4 = v2[4];
    if ((v8 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BAC30;
      v12 = v2[10];
      *(inited + 32) = v12;
      v23 = v4;

LABEL_21:
      v21 = v12;
      specialized Array.append<A>(contentsOf:)(inited);
      return v23;
    }

    goto LABEL_15;
  }

  v4 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1BC4BAC30;
  v6 = v2[7];
  *(v5 + 32) = v6;

  v7 = v6;
  specialized Array.append<A>(contentsOf:)(v5);
  return v4;
}

id *GridViewConstraintManager.deinit()
{

  return v0;
}

uint64_t GridViewConstraintManager.__deallocating_deinit()
{
  GridViewConstraintManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t SharedContentViewModel.init(participant:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Participant(v4);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_6_1();
  Participant.screenInfo.getter();
  _s15ConversationKit11ParticipantVWOcTm_3(a1, v2, type metadata accessor for Participant);
  if (v8 == 1)
  {
    SharedContentViewModel.init(nonScreenInfoParticipant:)(v2, v1);
    return OUTLINED_FUNCTION_5_36();
  }

  else
  {
    SharedContentViewModel.init(videoParticipant:)(v2, v1);
    OUTLINED_FUNCTION_5_36();
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  }
}

uint64_t SharedContentViewModel.participantIdentifier.getter()
{
  v2 = v0;
  v3 = OUTLINED_FUNCTION_30();
  type metadata accessor for SharedContentViewModel(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_1();
  v5 = type metadata accessor for SharedContentViewModel.ParticipantDetails(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_17();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  OUTLINED_FUNCTION_1_61();
  _s15ConversationKit11ParticipantVWOcTm_3(v2, v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMR);
    v14 = *(v13 + 64);
    v15 = *(v13 + 80);
    outlined init with take of SharedContentViewModel.ParticipantDetails(v1, v8);
    outlined destroy of ParticipantVideoOverlayView.ViewModel(v1 + v15);
  }

  else
  {
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMR) + 64);
    outlined init with take of SharedContentViewModel.ParticipantDetails(v1, v8);
  }

  outlined destroy of SharedContentVideoView.ViewModel(v1 + v14);
  outlined init with take of SharedContentViewModel.ParticipantDetails(v8, v11);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v16 = OUTLINED_FUNCTION_46();
  v17(v16);
  OUTLINED_FUNCTION_0_60();
  return _s15ConversationKit11ParticipantVWOhTm_3();
}

void *SharedContentViewModel.screenTransform.getter@<X0>(void *a1@<X8>)
{
  v3 = v1;
  type metadata accessor for SharedContentViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_61();
  _s15ConversationKit11ParticipantVWOcTm_3(v3, v2, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMR);
    v8 = *(v7 + 80);
    memcpy(v12, (v2 + *(v7 + 64)), sizeof(v12));
    outlined destroy of ParticipantVideoOverlayView.ViewModel(v2 + v8);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMR);
    memcpy(v12, (v2 + *(v9 + 64)), sizeof(v12));
  }

  _s15ConversationKit11ParticipantVWOhTm_3();
  OUTLINED_FUNCTION_15_18(v11, v12);
  outlined destroy of SharedContentVideoView.ViewModel(v12);
  return memcpy(a1, v11, 0x80uLL);
}

uint64_t SharedContentViewModel.ParticipantDetails.init(participant:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_30();
  v4 = *(type metadata accessor for Participant(v3) + 20);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(v1, a1 + v4);
  Participant.screenInfo.getter();
  if (v26 == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v7 = v29;
    if (v29)
    {
      v6 = 0;
    }

    else
    {
      v6 = v28;
    }

    outlined destroy of Participant.ScreenInfo(v25);
  }

  v8 = String.deviceAdjustedLocalizedKey(forDeviceFamily:)(v6, v7 & 1, 0xD000000000000018, 0x80000001BC4F84F0);
  v10 = v9;
  v11 = [objc_opt_self() conversationKit];
  v30._object = 0xE000000000000000;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BC4BA940;
  Participant.contactDetails.getter();
  v16 = v25[0];
  v17 = v26;
  v18 = v27;

  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v15 + 32) = v17;
  *(v15 + 40) = v18;
  v19 = String.init(format:_:)();
  v21 = v20;

  OUTLINED_FUNCTION_5_36();
  result = OUTLINED_FUNCTION_11_28();
  v24 = (v1 + v23);
  *v24 = v19;
  v24[1] = v21;
  return result;
}

uint64_t SharedContentViewModel.ParticipantDetails.identifier.getter()
{
  OUTLINED_FUNCTION_30();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_46();

  return v1(v0);
}

uint64_t SharedContentViewModel.ParticipantDetails.identifier.setter()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_38_2();

  return v1(v0);
}

uint64_t SharedContentViewModel.ParticipantDetails.screenShareDeviceName.getter()
{
  OUTLINED_FUNCTION_11_28();

  return OUTLINED_FUNCTION_46();
}

void SharedContentViewModel.ParticipantDetails.screenShareDeviceName.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_28();
  v6 = (v2 + v5);

  *v6 = a1;
  v6[1] = a2;
}

uint64_t SharedContentViewModel.init(videoParticipant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26[-v5];
  v7 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for SharedContentViewModel.ParticipantDetails(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s15ConversationKit11ParticipantVWOcTm_3(a1, v9, type metadata accessor for Participant);
  SharedContentViewModel.ParticipantDetails.init(participant:)(v9);
  v13 = Participant.deviceOrientation.getter();
  v15 = v14;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  Participant.screenProvider.getter();
  if (*&v29[24])
  {
    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = v13;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v31, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    outlined init with take of TapInteractionHandler(v29, v30);
    outlined init with copy of IDSLookupManager(v30, &v31);
    Participant.screenTransform.getter(&v29[40]);
    _s15ConversationKit11ParticipantVWOhTm_3();
    __swift_destroy_boxed_opaque_existential_1(v30);
    *v29 = v31;
    *&v29[16] = v32;
    *&v29[32] = v33;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMR);
    v18 = *(v17 + 48);
    v19 = *(v17 + 64);
    outlined init with take of SharedContentViewModel.ParticipantDetails(v12, a2);
    *(a2 + v18) = v16;
    memcpy((a2 + v19), v29, 0xA8uLL);
    type metadata accessor for SharedContentViewModel(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v28 = static OS_os_log.conversationKit;
    v27 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BC4BA940;
    _s15ConversationKit11ParticipantVWOcTm_3(a1, v6, type metadata accessor for Participant);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    specialized >> prefix<A>(_:)();
    v23 = v22;
    v25 = v24;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v21 + 32) = v23;
    *(v21 + 40) = v25;
    os_log(_:dso:log:type:_:)("No screen provider for participant %@. Falling back to displaying spinner", 73, 2, &dword_1BBC58000, v28, v27, v21);

    _s15ConversationKit11ParticipantVWOcTm_3(a1, v9, type metadata accessor for Participant);
    SharedContentViewModel.init(nonScreenInfoParticipant:)(v9, a2);
    _s15ConversationKit11ParticipantVWOhTm_3();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v31, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    return _s15ConversationKit11ParticipantVWOhTm_3();
  }
}

uint64_t SharedContentViewModel.init(nonScreenInfoParticipant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SharedContentViewModel.ParticipantDetails(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15ConversationKit11ParticipantVWOcTm_3(a1, v6, type metadata accessor for Participant);
  SharedContentViewModel.ParticipantDetails.init(participant:)(v6);
  v10 = Participant.deviceOrientation.getter();
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10;
  }

  _s15ConversationKit11ParticipantVWOhTm_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMR);
  v14 = v13[12];
  v15 = a2 + v13[16];
  v16 = a2 + v13[20];
  outlined init with take of SharedContentViewModel.ParticipantDetails(v9, a2);
  *(a2 + v14) = v12;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  memcpy((v15 + 40), MEMORY[0x1E69792E8], 0x80uLL);
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0u;
  *(v16 + 96) = 0;
  *(v16 + 104) = 6;
  type metadata accessor for SharedContentViewModel(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t SharedContentViewModel.participantDetails.getter()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_30();
  type metadata accessor for SharedContentViewModel(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_1_61();
  _s15ConversationKit11ParticipantVWOcTm_3(v1, v6, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMR);
    v9 = *(v8 + 64);
    v10 = *(v8 + 80);
    v11 = OUTLINED_FUNCTION_38_2();
    outlined init with take of SharedContentViewModel.ParticipantDetails(v11, v12);
    outlined destroy of ParticipantVideoOverlayView.ViewModel(v6 + v10);
  }

  else
  {
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMR) + 64);
    v13 = OUTLINED_FUNCTION_38_2();
    outlined init with take of SharedContentViewModel.ParticipantDetails(v13, v14);
  }

  return outlined destroy of SharedContentVideoView.ViewModel(v6 + v9);
}

uint64_t outlined init with take of SharedContentViewModel.ParticipantDetails(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedContentViewModel.ParticipantDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SharedContentViewModel.deviceOrientation.getter()
{
  type metadata accessor for SharedContentViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_1_61();
  v4 = OUTLINED_FUNCTION_38_2();
  _s15ConversationKit11ParticipantVWOcTm_3(v4, v5, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMR);
    v8 = *(v3 + v7[12]);
    v9 = v7[16];
    outlined destroy of ParticipantVideoOverlayView.ViewModel(v3 + v7[20]);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMR);
    v8 = *(v3 + *(v10 + 48));
    v9 = *(v10 + 64);
  }

  outlined destroy of SharedContentVideoView.ViewModel(v3 + v9);
  OUTLINED_FUNCTION_0_60();
  _s15ConversationKit11ParticipantVWOhTm_3();
  return v8;
}

uint64_t SharedContentViewModel.compatibleWithRoster.getter()
{
  v2 = OUTLINED_FUNCTION_30();
  type metadata accessor for SharedContentViewModel(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_61();
  _s15ConversationKit11ParticipantVWOcTm_3(v0, v1, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMR);
    v6 = *(v5 + 64);
    outlined destroy of ParticipantVideoOverlayView.ViewModel(v1 + *(v5 + 80));
  }

  else
  {
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMR) + 64);
  }

  outlined destroy of SharedContentVideoView.ViewModel(v1 + v6);
  OUTLINED_FUNCTION_0_60();
  _s15ConversationKit11ParticipantVWOhTm_3();
  OUTLINED_FUNCTION_1_61();
  v7 = OUTLINED_FUNCTION_38_2();
  return _s15ConversationKit11ParticipantVWOcTm_3(v7, v8, v9);
}

uint64_t static SharedContentViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v86 = type metadata accessor for SharedContentViewModel.ParticipantDetails(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v87 = v5 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v86 - v8;
  type metadata accessor for SharedContentViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO_ACtMd, &_s15ConversationKit22SharedContentViewModelO_ACtMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v86 - v18;
  v21 = &v86 + *(v20 + 56) - v18;
  _s15ConversationKit11ParticipantVWOcTm_3(a1, &v86 - v18, type metadata accessor for SharedContentViewModel);
  _s15ConversationKit11ParticipantVWOcTm_3(a2, v21, type metadata accessor for SharedContentViewModel);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_1_61();
    v40 = v19;
    _s15ConversationKit11ParticipantVWOcTm_3(v19, v16, v41);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMR);
    v43 = *(v42 + 48);
    v44 = *&v16[v43];
    v45 = *(v42 + 64);
    v27 = &v16[v45];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = v40;
      goto LABEL_16;
    }

    v46 = *&v21[v43];
    outlined init with take of SharedContentViewModel.ParticipantDetails(v21, v9);
    memcpy(v91, &v16[v45], sizeof(v91));
    memcpy(v89, &v21[v45], sizeof(v89));
    if ((static UUID.== infix(_:_:)() & 1) == 0 || ((v47 = *(v86 + 20), v48 = *&v16[v47], v49 = *&v16[v47 + 8], v50 = (v9 + v47), v48 == *v50) ? (v51 = v49 == v50[1]) : (v51 = 0), !v51 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
    {
      outlined destroy of SharedContentVideoView.ViewModel(v89);
      outlined destroy of SharedContentVideoView.ViewModel(v91);
      OUTLINED_FUNCTION_8_43();
      _s15ConversationKit11ParticipantVWOhTm_3();
      _s15ConversationKit11ParticipantVWOhTm_3();
      OUTLINED_FUNCTION_4_39();
LABEL_47:
      _s15ConversationKit11ParticipantVWOhTm_3();
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_0_60();
    _s15ConversationKit11ParticipantVWOhTm_3();
    if (v44 != v46)
    {
      outlined destroy of SharedContentVideoView.ViewModel(v89);
      outlined destroy of SharedContentVideoView.ViewModel(v91);
      OUTLINED_FUNCTION_0_60();
      goto LABEL_46;
    }

    Hasher.init(_seed:)();
    outlined init with copy of ParticipantVideoProvider?(v91, v95);
    v52 = v96;
    if (v96)
    {
      v53 = v97;
      __swift_project_boxed_opaque_existential_1(v95, v96);
      v54 = OUTLINED_FUNCTION_10_24();
      v55(v54, v53);
      OUTLINED_FUNCTION_96_1();
      __swift_destroy_boxed_opaque_existential_1(v95);
      if ((v9 & 1) == 0)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1BFB22640](v52);
        goto LABEL_38;
      }
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v95, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    }

    Hasher._combine(_:)(0);
LABEL_38:
    OUTLINED_FUNCTION_15_18(v95, v91);
    CATransform3D.hash(into:)();
    v65 = SharedContentVideoView.ViewModel.contentsRect.getter();
    CGRect.hash(into:)(v65, v66, v67, v68);
    v69 = Hasher._finalize()();
    Hasher.init(_seed:)();
    outlined init with copy of ParticipantVideoProvider?(v89, v92);
    v70 = v93;
    if (v93)
    {
      v71 = v94;
      __swift_project_boxed_opaque_existential_1(v92, v93);
      v72 = (*(v71 + 8))(v70, v71);
      v74 = v73;
      __swift_destroy_boxed_opaque_existential_1(v92);
      if ((v74 & 1) == 0)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1BFB22640](v72);
LABEL_52:
        OUTLINED_FUNCTION_15_18(v92, v89);
        CATransform3D.hash(into:)();
        v81 = SharedContentVideoView.ViewModel.contentsRect.getter();
        CGRect.hash(into:)(v81, v82, v83, v84);
        v85 = Hasher._finalize()();
        outlined destroy of SharedContentVideoView.ViewModel(v89);
        outlined destroy of SharedContentVideoView.ViewModel(v91);
        v79 = v69 == v85;
        goto LABEL_53;
      }
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    }

    Hasher._combine(_:)(0);
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_1_61();
  _s15ConversationKit11ParticipantVWOcTm_3(v19, v13, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMR);
  v24 = v23[12];
  v25 = *(v13 + v24);
  v26 = v23[16];
  v27 = v13 + v26;
  v28 = v23[20];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *&v21[v24];
    v30 = v87;
    outlined init with take of SharedContentViewModel.ParticipantDetails(v21, v87);
    memcpy(v91, (v13 + v26), sizeof(v91));
    memcpy(v90, (v13 + v28), 0x69uLL);
    memcpy(v89, &v21[v26], sizeof(v89));
    memcpy(v88, &v21[v28], 0x69uLL);
    if (static UUID.== infix(_:_:)())
    {
      v31 = *(v86 + 20);
      v32 = *(v13 + v31);
      v33 = *(v13 + v31 + 8);
      v34 = (v30 + v31);
      v35 = v32 == *v34 && v33 == v34[1];
      if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        OUTLINED_FUNCTION_0_60();
        _s15ConversationKit11ParticipantVWOhTm_3();
        if (v25 != v29)
        {
LABEL_45:
          outlined destroy of ParticipantVideoOverlayView.ViewModel(v88);
          outlined destroy of SharedContentVideoView.ViewModel(v89);
          outlined destroy of ParticipantVideoOverlayView.ViewModel(v90);
          outlined destroy of SharedContentVideoView.ViewModel(v91);
          OUTLINED_FUNCTION_0_60();
          goto LABEL_46;
        }

        Hasher.init(_seed:)();
        outlined init with copy of ParticipantVideoProvider?(v91, v95);
        v36 = v96;
        if (v96)
        {
          v37 = v97;
          __swift_project_boxed_opaque_existential_1(v95, v96);
          v38 = OUTLINED_FUNCTION_10_24();
          v39(v38, v37);
          OUTLINED_FUNCTION_96_1();
          __swift_destroy_boxed_opaque_existential_1(v95);
          if ((v25 & 1) == 0)
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1BFB22640](v36);
            goto LABEL_33;
          }
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v95, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
        }

        Hasher._combine(_:)(0);
LABEL_33:
        OUTLINED_FUNCTION_15_18(v95, v91);
        CATransform3D.hash(into:)();
        v56 = SharedContentVideoView.ViewModel.contentsRect.getter();
        CGRect.hash(into:)(v56, v57, v58, v59);
        v60 = Hasher._finalize()();
        Hasher.init(_seed:)();
        outlined init with copy of ParticipantVideoProvider?(v89, v92);
        v61 = v93;
        if (v93)
        {
          v62 = v94;
          __swift_project_boxed_opaque_existential_1(v92, v93);
          v63 = OUTLINED_FUNCTION_10_24();
          v64(v63, v62);
          OUTLINED_FUNCTION_96_1();
          __swift_destroy_boxed_opaque_existential_1(v92);
          if ((v92 & 1) == 0)
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1BFB22640](v61);
            goto LABEL_43;
          }
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
        }

        Hasher._combine(_:)(0);
LABEL_43:
        OUTLINED_FUNCTION_15_18(v92, v89);
        CATransform3D.hash(into:)();
        v75 = SharedContentVideoView.ViewModel.contentsRect.getter();
        CGRect.hash(into:)(v75, v76, v77, v78);
        if (v60 == Hasher._finalize()())
        {
          v79 = static ParticipantVideoOverlayView.ViewModel.== infix(_:_:)(v90, v88);
          outlined destroy of ParticipantVideoOverlayView.ViewModel(v88);
          outlined destroy of SharedContentVideoView.ViewModel(v89);
          outlined destroy of ParticipantVideoOverlayView.ViewModel(v90);
          outlined destroy of SharedContentVideoView.ViewModel(v91);
          OUTLINED_FUNCTION_0_60();
LABEL_53:
          _s15ConversationKit11ParticipantVWOhTm_3();
          OUTLINED_FUNCTION_4_39();
          _s15ConversationKit11ParticipantVWOhTm_3();
          return v79 & 1;
        }

        goto LABEL_45;
      }
    }

    outlined destroy of ParticipantVideoOverlayView.ViewModel(v88);
    outlined destroy of SharedContentVideoView.ViewModel(v89);
    outlined destroy of ParticipantVideoOverlayView.ViewModel(v90);
    outlined destroy of SharedContentVideoView.ViewModel(v91);
    OUTLINED_FUNCTION_8_43();
    _s15ConversationKit11ParticipantVWOhTm_3();
LABEL_46:
    _s15ConversationKit11ParticipantVWOhTm_3();
    OUTLINED_FUNCTION_4_39();
    goto LABEL_47;
  }

  outlined destroy of ParticipantVideoOverlayView.ViewModel(v13 + v28);
LABEL_16:
  outlined destroy of SharedContentVideoView.ViewModel(v27);
  OUTLINED_FUNCTION_0_60();
  _s15ConversationKit11ParticipantVWOhTm_3();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s15ConversationKit22SharedContentViewModelO_ACtMd, &_s15ConversationKit22SharedContentViewModelO_ACtMR);
LABEL_48:
  v79 = 0;
  return v79 & 1;
}

uint64_t static SharedContentViewModel.ParticipantDetails.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_28();
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t SharedContentViewModel.hash(into:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for SharedContentViewModel.ParticipantDetails(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46[-v9 - 8];
  type metadata accessor for SharedContentViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_1_61();
  _s15ConversationKit11ParticipantVWOcTm_3(v2, v14, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMR);
    v28 = *(v14 + *(v27 + 48));
    v29 = *(v27 + 64);
    outlined init with take of SharedContentViewModel.ParticipantDetails(v14, v10);
    memcpy(v47, (v14 + v29), sizeof(v47));
    MEMORY[0x1BFB22640](0);
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_2_60();
    _s10Foundation4UUIDVACSHAAWlTm_0(v30, v31, MEMORY[0x1E69695B8]);
    dispatch thunk of Hashable.hash(into:)();
    String.hash(into:)();
    MEMORY[0x1BFB22640](v28);
    outlined init with copy of ParticipantVideoProvider?(v47, v48);
    v32 = v49;
    if (v49)
    {
      v33 = v50;
      __swift_project_boxed_opaque_existential_1(v48, v49);
      v34 = OUTLINED_FUNCTION_10_24();
      v35(v34, v33);
      OUTLINED_FUNCTION_96_1();
      __swift_destroy_boxed_opaque_existential_1(v48);
      if ((a1 & 1) == 0)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1BFB22640](v32);
LABEL_13:
        OUTLINED_FUNCTION_15_18(v48, v47);
        CATransform3D.hash(into:)();
        v40 = SharedContentVideoView.ViewModel.contentsRect.getter();
        CGRect.hash(into:)(v40, v41, v42, v43);
        outlined destroy of SharedContentVideoView.ViewModel(v47);
        OUTLINED_FUNCTION_0_60();
        return _s15ConversationKit11ParticipantVWOhTm_3();
      }
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    }

    Hasher._combine(_:)(0);
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMR);
  v17 = *(v14 + v16[12]);
  v18 = v16[16];
  v19 = v16[20];
  outlined init with take of SharedContentViewModel.ParticipantDetails(v14, v7);
  memcpy(v47, (v14 + v18), sizeof(v47));
  memcpy(v46, (v14 + v19), 0x69uLL);
  MEMORY[0x1BFB22640](1);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_60();
  _s10Foundation4UUIDVACSHAAWlTm_0(v20, v21, MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1BFB22640](v17);
  outlined init with copy of ParticipantVideoProvider?(v47, v48);
  v22 = v49;
  if (!v49)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    goto LABEL_9;
  }

  v23 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v24 = (*(v23 + 8))(v22, v23);
  v26 = v25;
  __swift_destroy_boxed_opaque_existential_1(v48);
  if (v26)
  {
LABEL_9:
    Hasher._combine(_:)(0);
    goto LABEL_10;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x1BFB22640](v24);
LABEL_10:
  OUTLINED_FUNCTION_15_18(v48, v47);
  CATransform3D.hash(into:)();
  v36 = SharedContentVideoView.ViewModel.contentsRect.getter();
  CGRect.hash(into:)(v36, v37, v38, v39);
  ParticipantVideoOverlayView.ViewModel.hash(into:)(a1);
  outlined destroy of ParticipantVideoOverlayView.ViewModel(v46);
  outlined destroy of SharedContentVideoView.ViewModel(v47);
  OUTLINED_FUNCTION_0_60();
  return _s15ConversationKit11ParticipantVWOhTm_3();
}

Swift::Int SharedContentViewModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  SharedContentViewModel.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t SharedContentViewModel.ParticipantDetails.hash(into:)()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_60();
  _s10Foundation4UUIDVACSHAAWlTm_0(v0, v1, MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_11_28();

  return String.hash(into:)();
}

Swift::Int SharedContentViewModel.ParticipantDetails.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_60();
  _s10Foundation4UUIDVACSHAAWlTm_0(v0, v1, MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_11_28();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SharedContentViewModel(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t outlined init with copy of ParticipantVideoProvider?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CGRect.hash(into:)(double a1, double a2, double a3, double a4)
{
  v11 = CGRectStandardize(*&a1);
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (v11.origin.x == 0.0)
  {
    v11.origin.x = 0.0;
  }

  MEMORY[0x1BFB22680](*&v11.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  MEMORY[0x1BFB22680](*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  MEMORY[0x1BFB22680](*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  return MEMORY[0x1BFB22680](*&v9);
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for SharedContentViewModel(uint64_t a1)
{
  type metadata accessor for (SharedContentViewModel.ParticipantDetails, CNKDeviceOrientation, SharedContentVideoView.ViewModel)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (SharedContentViewModel.ParticipantDetails, CNKDeviceOrientation, SharedContentVideoView.ViewModel, ParticipantVideoOverlayView.ViewModel)(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (SharedContentViewModel.ParticipantDetails, CNKDeviceOrientation, SharedContentVideoView.ViewModel)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (SharedContentViewModel.ParticipantDetails, CNKDeviceOrientation, SharedContentVideoView.ViewModel))
  {
    type metadata accessor for SharedContentViewModel.ParticipantDetails(255);
    type metadata accessor for CNKDeviceOrientation(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (SharedContentViewModel.ParticipantDetails, CNKDeviceOrientation, SharedContentVideoView.ViewModel));
    }
  }
}

void type metadata accessor for (SharedContentViewModel.ParticipantDetails, CNKDeviceOrientation, SharedContentVideoView.ViewModel, ParticipantVideoOverlayView.ViewModel)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (SharedContentViewModel.ParticipantDetails, CNKDeviceOrientation, SharedContentVideoView.ViewModel, ParticipantVideoOverlayView.ViewModel))
  {
    type metadata accessor for SharedContentViewModel.ParticipantDetails(255);
    type metadata accessor for CNKDeviceOrientation(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (SharedContentViewModel.ParticipantDetails, CNKDeviceOrientation, SharedContentVideoView.ViewModel, ParticipantVideoOverlayView.ViewModel));
    }
  }
}

uint64_t type metadata completion function for SharedContentViewModel.ParticipantDetails(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t LockScreenActivityViewModel.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t LockScreenActivityViewModel.presentingForState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState, v6);
  type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_7_0();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t key path getter for LockScreenActivityViewModel.presentingForState : LockScreenActivityViewModel@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  swift_beginAccess();
  v5 = type metadata accessor for CallScreeningStatus();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for LockScreenActivityViewModel.presentingForState : LockScreenActivityViewModel(uint64_t a1)
{
  v2 = type metadata accessor for CallScreeningStatus();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return LockScreenActivityViewModel.presentingForState.setter(v5);
}

uint64_t LockScreenActivityViewModel.presentingForState.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  OUTLINED_FUNCTION_30_2(v2 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState, v8);
  v5 = type metadata accessor for CallScreeningStatus();
  v6 = *(v5 - 8);
  (*(v6 + 24))(v2 + v4, a1, v5);
  swift_endAccess();
  (*(v2 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_onUpdate))(v2);
  return (*(v6 + 8))(a1, v5);
}

uint64_t (*LockScreenActivityViewModel.presentingForState.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState, a1);
  return LockScreenActivityViewModel.presentingForState.modify;
}

uint64_t LockScreenActivityViewModel.presentingForState.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*(*(a1 + 24) + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_onUpdate))();
  }

  return result;
}

uint64_t LockScreenActivityViewModel.isLocked.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_isLocked;
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_isLocked, v3);
  return *(v0 + v1);
}

void key path getter for LockScreenActivityViewModel.isLocked : LockScreenActivityViewModel(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_isLocked;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void LockScreenActivityViewModel.isLocked.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_isLocked;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  LockScreenActivityViewModel.isLocked.didset(v4);
}

void LockScreenActivityViewModel.isLocked.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_isLocked;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    (*(v1 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_onUpdate))(v1);
  }
}

void (*LockScreenActivityViewModel.isLocked.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_isLocked;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_isLocked, v3);
  *(v3 + 32) = *(v1 + v4);
  return LockScreenActivityViewModel.isLocked.modify;
}

void LockScreenActivityViewModel.isLocked.modify(uint64_t a1)
{
  v1 = *a1;
  LockScreenActivityViewModel.isLocked.setter(*(*a1 + 32));

  free(v1);
}

double LockScreenActivityViewModel.cancellables.getter()
{
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_cancellables, v2);

  return result;
}

double LockScreenActivityViewModel.cancellables.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_cancellables;
  OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = a1;

  return result;
}

uint64_t LockScreenActivityViewModel.callUUID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID);

  return v1;
}

uint64_t LockScreenActivityViewModel.callerDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callerDisplayName);
  *v3 = a1;
  v3[1] = a2;

  return (*(v2 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_onUpdate))(v2);
}

uint64_t LockScreenActivityViewModel.isValidState.getter()
{
  v1 = type metadata accessor for CallScreeningStatus();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 != *MEMORY[0x1E6995EA8])
  {
    if (v6 == *MEMORY[0x1E6995E98])
    {
      return 0;
    }

    if (v6 == *MEMORY[0x1E6995EA0] || v6 == *MEMORY[0x1E6995EB0])
    {
      return 1;
    }
  }

  (*(v2 + 8))(v4, v1);
  return 0;
}

uint64_t LockScreenActivityViewModel.__allocating_init(logger:viewModel:presentingForState:onUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_11_29();
  LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:)(v7, v8, v9, v10, a5);
  return v6;
}

uint64_t LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  OUTLINED_FUNCTION_1();
  v56 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v51 - v14;
  *(v5 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_cancellables) = MEMORY[0x1E69E7CC0];
  v15 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_defaults;
  type metadata accessor for Defaults();
  swift_allocObject();
  *(v5 + v15) = Defaults.init()();
  v16 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_lockStateObserver;
  type metadata accessor for PhoneLockStateObserver();
  *(v5 + v16) = static PhoneLockStateObserver.shared.getter();
  v17 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_logger;
  v18 = type metadata accessor for Logger();
  v55 = *(v18 - 8);
  v19 = *(v55 + 16);
  v61 = a1;
  v57 = v18;
  v19(v6 + v17, a1);
  *(v6 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_viewModel) = a2;

  v20 = TranscriptionViewModel.callUUID.getter();
  v21 = (v6 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID);
  *v21 = v20;
  v21[1] = v22;
  v23 = TranscriptionViewModel.callerDisplayName.getter();
  v24 = (v6 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callerDisplayName);
  *v24 = v23;
  v24[1] = v25;
  v26 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  v27 = type metadata accessor for CallScreeningStatus();
  v28 = *(v27 - 8);
  v29 = *(v28 + 16);
  v60 = a3;
  v53 = v27;
  v29(v6 + v26, a3);
  v30 = (v6 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_onUpdate);
  *v30 = a4;
  v30[1] = a5;
  v31 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_lockStateObserver;
  v32 = *(v6 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_lockStateObserver);
  v59 = a5;

  v33 = v32;
  LOBYTE(a4) = PhoneLockStateObserver.fetchLockState()();

  *(v6 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_isLocked) = a4 & 1;
  v34 = *(v6 + v31);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();
  v35 = v34;

  v36 = PhoneLockStateObserver.listen(wantsCurrentValue:with:)();

  v52 = type metadata accessor for AnyCancellable();
  v63 = v52;
  v62[0] = v36;
  v37 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_cancellables;
  OUTLINED_FUNCTION_4_40();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_12_26();
  v38 = *(v6 + v37);
  *(v38 + 16) = a5 + 1;
  OUTLINED_FUNCTION_5_37(v38 + 32 * a5);
  v39 = *(v6 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_defaults);
  OUTLINED_FUNCTION_20();
  v40 = swift_allocObject();
  swift_weakInit();
  v41 = *(*v39 + 1112);

  v42 = v41(partial apply for closure #2 in LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:), v40);

  if (v42)
  {
    v63 = type metadata accessor for Defaults.Observation();
    v62[0] = v42;
    OUTLINED_FUNCTION_4_40();
    v43 = v42;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    OUTLINED_FUNCTION_12_26();
    v44 = *(v6 + v37);
    *(v44 + 16) = v40 + 1;
    OUTLINED_FUNCTION_5_37(v44 + 32 * v40);
  }

  OUTLINED_FUNCTION_30_2(a2 + OBJC_IVAR____TtC15ConversationKit22TranscriptionViewModel__callerDisplayName, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  v45 = v54;
  Published.projectedValue.getter();
  swift_endAccess();
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();

  lazy protocol witness table accessor for type Published<String>.Publisher and conformance Published<A>.Publisher();
  v46 = v58;
  v47 = Publisher<>.sink(receiveValue:)();

  (*(v56 + 8))(v45, v46);
  v63 = v52;
  v62[0] = v47;
  OUTLINED_FUNCTION_4_40();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v48 = *(*(v6 + v37) + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v48);
  v49 = *(v6 + v37);
  *(v49 + 16) = v48 + 1;
  OUTLINED_FUNCTION_5_37(v49 + 32 * v48);

  (*(v28 + 8))(v60, v53);
  (*(v55 + 8))(v61, v57);
  return v6;
}

uint64_t closure #1 in LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:)(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = a2;
  *(v9 + 40) = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in closure #1 in LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 40) = a4;
  type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:), v7, v6);
}

uint64_t closure #1 in closure #1 in LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:)()
{
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_4_0(v1 + 16, v0 + 16);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (TranscriptionViewModel.callUUID.getter() == *(Strong + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID) && v4 == *(v3 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID + 8))
    {
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    LockScreenActivityViewModel.isLocked.setter(*(v0 + 56));
LABEL_10:
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #2 in LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (TranscriptionViewModel.callUUID.getter() == *(result + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID) && v3 == *(v2 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID + 8))
    {
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
      }
    }

    v6 = *(v2 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_onUpdate);

    v6(v2);
  }

  return result;
}

uint64_t closure #3 in LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    if (TranscriptionViewModel.callUUID.getter() == *(result + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID) && v6 == *(v5 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID + 8))
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {
      }
    }

    LockScreenActivityViewModel.callerDisplayName.setter(v2, v3);
  }

  return result;
}

uint64_t LockScreenActivityViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_7_0();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t LockScreenActivityViewModel.__deallocating_deinit()
{
  LockScreenActivityViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t LockScreenActivityViewModel.isPresentable.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (LockScreenActivityViewModel.isValidState.getter())
  {
    v23 = 2;
    v8 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_isLocked;
    OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_isLocked, v24);
    if (*(v0 + v8) != 1 || (specialized getter of enabledOnLock #1 in LockScreenActivityViewModel.isPresentable.getter(&v23, v0) & 1) != 0)
    {
      return 1;
    }

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v20 = 136315906;
      *(v20 + 4) = OUTLINED_FUNCTION_9_27("ConversationKit/LockScreenActivityViewModel.swift");
      *(v20 + 12) = 2080;
      *(v20 + 14) = OUTLINED_FUNCTION_3_55();
      v21 = *(v1 + v8);
      *(v20 + 22) = 1024;
      *(v20 + 24) = v21;
      *(v20 + 28) = 1024;
      *(v20 + 30) = v23 & 1;

      _os_log_impl(&dword_1BBC58000, v18, v19, "%s:%s cannot present activity because we are locked (%{BOOL}d) and sensitive activities are not enabled on lock (%{BOOL}d)", v20, 0x22u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {
    }
  }

  else
  {

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v12 = 136315650;
      *(v12 + 4) = OUTLINED_FUNCTION_9_27("ConversationKit/LockScreenActivityViewModel.swift");
      *(v12 + 12) = 2080;
      *(v12 + 14) = OUTLINED_FUNCTION_3_55();
      *(v12 + 22) = 2080;
      v13 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
      OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState, v24);
      (*(v4 + 16))(v7, v1 + v13, v2);
      lazy protocol witness table accessor for type CallScreeningStatus and conformance CallScreeningStatus();
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v4 + 8))(v7, v2);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v25);

      *(v12 + 24) = v17;
      _os_log_impl(&dword_1BBC58000, v10, v11, "%s:%s cannot present activity because state is invalid %s", v12, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }
  }

  return 0;
}

uint64_t specialized getter of enabledOnLock #1 in LockScreenActivityViewModel.isPresentable.getter(_BYTE *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 == 2)
  {
    LOBYTE(v2) = (*(**(a2 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_defaults) + 1104))();
    swift_beginAccess();
    *a1 = v2 & 1;
  }

  return v2 & 1;
}

uint64_t LockScreenActivityViewModel.attributes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore18ActivityLabelStyleOSgMd, &_s20CommunicationsUICore18ActivityLabelStyleOSgMR);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  v20 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17();
  v45 = (v24 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v42 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v42 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v42 - v33;
  LockScreenActivityViewModel.title.getter(v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    v16 = v19;
  }

  else
  {
    v43 = v6;
    v44 = a1;
    v35 = v22[4];
    v35(v34, v19, v20);
    LockScreenActivityViewModel.subtitle.getter(v16);
    if (__swift_getEnumTagSinglePayload(v16, 1, v20) != 1)
    {
      v35(v31, v16, v20);
      v37 = v22[2];
      v37(v28, v34, v20);
      v37(v45, v31, v20);
      v38 = type metadata accessor for URL();
      __swift_storeEnumTagSinglePayload(v46, 1, 1, v38);
      LockScreenActivityViewModel.titleStyle.getter(v47);
      LockScreenActivityViewModel.subtitleStyle.getter(v43);
      a1 = v44;
      IntelligenceActivityAttributes.init(title:subtitle:shouldHideCallerIDWhenLocked:showsViewButton:displaysAvatar:callImageURL:contactIdentifier:titleStyle:subtitleStyle:)();
      v39 = v22[1];
      v39(v31, v20);
      v39(v34, v20);
      v36 = 0;
      goto LABEL_7;
    }

    (v22[1])(v34, v20);
    a1 = v44;
  }

  outlined destroy of AttributedString?(v16);
  v36 = 1;
LABEL_7:
  v40 = type metadata accessor for IntelligenceActivityAttributes();
  return __swift_storeEnumTagSinglePayload(a1, v36, 1, v40);
}

uint64_t LockScreenActivityViewModel.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for CallScreeningStatus();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  v9 = (*(v5 + 88))(v7, v4);
  if (v9 == *MEMORY[0x1E6995EA8])
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    if (v9 == *MEMORY[0x1E6995E98])
    {
      v14 = type metadata accessor for AttributedString();
      v15 = a1;
      v16 = 1;
      return __swift_storeEnumTagSinglePayload(v15, v16, 1, v14);
    }

    if (v9 == *MEMORY[0x1E6995EA0])
    {

      AttributeContainer.init()();
      goto LABEL_4;
    }

    if (v9 != *MEMORY[0x1E6995EB0])
    {
      v18 = type metadata accessor for AttributedString();
      __swift_storeEnumTagSinglePayload(a1, 1, 1, v18);
      return (*(v5 + 8))(v7, v4);
    }
  }

  v10 = [objc_opt_self() conversationKit];
  v20._object = 0xE000000000000000;
  v11.value._countAndFlagsBits = 0x61737265766E6F43;
  v11.value._object = 0xEF74694B6E6F6974;
  v12._object = 0x80000001BC4F86A0;
  v12._countAndFlagsBits = 0xD000000000000019;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v11, v10, v13, v20);

  AttributeContainer.init()();
LABEL_4:
  AttributedString.init(_:attributes:)();
  v14 = type metadata accessor for AttributedString();
  v15 = a1;
  v16 = 0;
  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v14);
}

uint64_t LockScreenActivityViewModel.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for CallScreeningStatus();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  v9 = (*(v5 + 88))(v7, v4);
  if (v9 == *MEMORY[0x1E6995EA8])
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    if (v9 == *MEMORY[0x1E6995E98])
    {
      v10 = type metadata accessor for AttributedString();
      v11 = a1;
      v12 = 1;
      return __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
    }

    if (v9 == *MEMORY[0x1E6995EA0])
    {
      v14 = [objc_opt_self() conversationKit];
      v20._object = 0xE000000000000000;
      v15.value._countAndFlagsBits = 0x61737265766E6F43;
      v15.value._object = 0xEF74694B6E6F6974;
      v16._object = 0x80000001BC4F8670;
      v16._countAndFlagsBits = 0xD000000000000021;
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      v20._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v15, v14, v17, v20);

      AttributeContainer.init()();
      goto LABEL_4;
    }

    if (v9 != *MEMORY[0x1E6995EB0])
    {
      v18 = type metadata accessor for AttributedString();
      __swift_storeEnumTagSinglePayload(a1, 1, 1, v18);
      return (*(v5 + 8))(v7, v4);
    }
  }

  AttributeContainer.init()();
LABEL_4:
  AttributedString.init(_:attributes:)();
  v10 = type metadata accessor for AttributedString();
  v11 = a1;
  v12 = 0;
  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
}

uint64_t LockScreenActivityViewModel.titleStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CallScreeningStatus();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x1E6995EA8])
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    if (v8 == *MEMORY[0x1E6995E98] || v8 == *MEMORY[0x1E6995EA0])
    {
      v13 = type metadata accessor for ActivityLabelStyle();
      v11 = a1;
      v12 = 1;
      return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
    }

    if (v8 != *MEMORY[0x1E6995EB0])
    {
      v15 = type metadata accessor for ActivityLabelStyle();
      __swift_storeEnumTagSinglePayload(a1, 1, 1, v15);
      return (*(v4 + 8))(v6, v3);
    }
  }

  v9 = *MEMORY[0x1E6995E78];
  v10 = type metadata accessor for ActivityLabelStyle();
  (*(*(v10 - 8) + 104))(a1, v9, v10);
  v11 = a1;
  v12 = 0;
  v13 = v10;
  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t LockScreenActivityViewModel.subtitleStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CallScreeningStatus();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x1E6995EA8])
  {
    (*(v4 + 8))(v6, v3);
  }

  else if (v8 != *MEMORY[0x1E6995E98])
  {
    if (v8 == *MEMORY[0x1E6995EA0])
    {
      v13 = *MEMORY[0x1E6995E80];
      v14 = type metadata accessor for ActivityLabelStyle();
      (*(*(v14 - 8) + 104))(a1, v13, v14);
      v10 = a1;
      v11 = 0;
      v9 = v14;
      return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
    }

    if (v8 != *MEMORY[0x1E6995EB0])
    {
      v15 = type metadata accessor for ActivityLabelStyle();
      __swift_storeEnumTagSinglePayload(a1, 1, 1, v15);
      return (*(v4 + 8))(v6, v3);
    }
  }

  v9 = type metadata accessor for ActivityLabelStyle();
  v10 = a1;
  v11 = 1;
  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
}

uint64_t LockScreenActivityViewModel.content.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore14ActivitySymbolVSgMd, &_s20CommunicationsUICore14ActivitySymbolVSgMR);
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_17();
  v4 = v2 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  LockScreenActivityViewModel.message.getter(&v16 - v14);
  LockScreenActivityViewModel.title.getter(v12);
  LockScreenActivityViewModel.titleSymbol.getter(v7);
  LockScreenActivityViewModel.subtitleSymbol.getter(v4);
  OUTLINED_FUNCTION_11_29();
  return IntelligenceActivityAttributes.ContentState.init(message:title:titleSymbol:subTitleSymbol:shouldCenterAlignMessage:)();
}

uint64_t LockScreenActivityViewModel.message.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for CallScreeningStatus();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  v9 = (*(v5 + 88))(v7, v4);
  if (v9 == *MEMORY[0x1E6995EA8])
  {
    (*(v5 + 96))(v7, v4);
    if (*(v7 + 1))
    {
      goto LABEL_5;
    }

LABEL_10:
    v10 = 1;
    goto LABEL_11;
  }

  if (v9 != *MEMORY[0x1E6995E98])
  {
    if (v9 == *MEMORY[0x1E6995EA0])
    {
      goto LABEL_10;
    }

    if (v9 != *MEMORY[0x1E6995EB0])
    {
      (*(v5 + 8))(v7, v4);
      goto LABEL_10;
    }

    v11 = [objc_opt_self() conversationKit];
    v18._object = 0xE000000000000000;
    v12.value._countAndFlagsBits = 0x61737265766E6F43;
    v12.value._object = 0xEF74694B6E6F6974;
    v13._object = 0x80000001BC4F8640;
    v13._countAndFlagsBits = 0xD000000000000020;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v18);
  }

LABEL_5:
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v10 = 0;
LABEL_11:
  v15 = type metadata accessor for AttributedString();
  return __swift_storeEnumTagSinglePayload(a1, v10, 1, v15);
}

uint64_t LockScreenActivityViewModel.titleSymbol.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CallScreeningStatus();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x1E6995EA8])
  {
    (*(v4 + 8))(v6, v3);
  }

  else if (v8 != *MEMORY[0x1E6995E98])
  {
    if (v8 == *MEMORY[0x1E6995EA0])
    {
      v9 = type metadata accessor for ActivitySymbol();
      v10 = a1;
      v11 = 1;
      return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
    }

    if (v8 != *MEMORY[0x1E6995EB0])
    {
      static ActivitySymbol.callScreeningActive.getter();
      v13 = type metadata accessor for ActivitySymbol();
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v13);
      return (*(v4 + 8))(v6, v3);
    }
  }

  static ActivitySymbol.callScreeningActive.getter();
  v9 = type metadata accessor for ActivitySymbol();
  v10 = a1;
  v11 = 0;
  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
}

uint64_t LockScreenActivityViewModel.subtitleSymbol.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CallScreeningStatus();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x1E6995EA8])
  {
    (*(v4 + 8))(v6, v3);
  }

  else if (v8 != *MEMORY[0x1E6995E98])
  {
    if (v8 == *MEMORY[0x1E6995EA0])
    {
      static ActivitySymbol.system(_:)();
      v9 = type metadata accessor for ActivitySymbol();
      v10 = a1;
      v11 = 0;
      return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
    }

    if (v8 != *MEMORY[0x1E6995EB0])
    {
      v13 = type metadata accessor for ActivitySymbol();
      __swift_storeEnumTagSinglePayload(a1, 1, 1, v13);
      return (*(v4 + 8))(v6, v3);
    }
  }

  v9 = type metadata accessor for ActivitySymbol();
  v10 = a1;
  v11 = 1;
  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
}

unint64_t lazy protocol witness table accessor for type Published<String>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<String>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<String>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<String>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

uint64_t outlined destroy of AttributedString?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for LockScreenActivityViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for LockScreenActivityViewModel;
  if (!type metadata singleton initialization cache for LockScreenActivityViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LockScreenActivityViewModel(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CallScreeningStatus();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in closure #1 in LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:)(a1, v4, v5, v6, v7);
}

double SystemRootLayerProxyView.preferredContentSize.getter()
{
  v1 = [v0 window];
  if (v1 && (v2 = v1, v3 = [v1 windowScene], v2, v3))
  {
    v4 = [v3 screen];
    [v4 bounds];
    v6 = v5;
  }

  else
  {
    v3 = [objc_opt_self() mainScreen];
    [v3 bounds];
    v6 = v7;
  }

  return v6;
}

uint64_t SystemRootLayerProxyView.systemRootLayerTransform.didset(uint64_t a1)
{
  v2 = v1;
  v3 = &v1[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform];
  v4 = *&v1[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform + 16];
  v23 = *&v1[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform];
  v24 = v4;
  v25 = *&v1[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform + 32];
  result = static CGAffineTransform.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    v6 = SystemRootLayerProxyView.displayCornerView.getter();
    v7 = *(v3 + 1);
    v16[6] = *v3;
    v16[7] = v7;
    v16[8] = *(v3 + 2);
    v17 = 0x3FF0000000000000;
    v18 = 0;
    v19 = 0;
    v20 = 0x3FF0000000000000;
    v21 = 0;
    v22 = 0;
    [v6 setHidden_];

    v8 = [v2 window];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 windowScene];

      if (v10)
      {
        v11 = *(v3 + 1);
        v16[3] = *v3;
        v16[4] = v11;
        v16[5] = *(v3 + 2);
        v12 = [objc_opt_self() mainScreen];
        [v12 _rotation];
        v14 = v13;

        CGAffineTransform.rotatingTranslationComponent(by:)(v16, -v14);
        v15[0] = v16[0];
        v15[1] = v16[1];
        v15[2] = v16[2];
        [v10 setSBSUI:v15 preferredSystemRootLayerTransform:?];
      }
    }

    return SystemRootLayerProxyView.updateSystemRootLayerTransformOnActiveCall()();
  }

  return result;
}

uint64_t SystemRootLayerProxyView.systemRootLayerTransform.setter(_OWORD *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform);
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform + 16);
  v6[0] = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform);
  v6[1] = v3;
  v6[2] = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform + 32);
  v4 = a1[1];
  *v2 = *a1;
  v2[1] = v4;
  v2[2] = a1[2];
  return SystemRootLayerProxyView.systemRootLayerTransform.didset(v6);
}

uint64_t SystemRootLayerProxyView.needsUpdateSystemRootLayerTransform.setter(char a1)
{
  v1[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_needsUpdateSystemRootLayerTransform] = a1;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = v1;
  onNextMainRunLoop(do:)(partial apply for closure #1 in SystemRootLayerProxyView.needsUpdateSystemRootLayerTransform.didset, v2);
}

void *SystemRootLayerProxyView.displayCornerView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView____lazy_storage___displayCornerView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView____lazy_storage___displayCornerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView____lazy_storage___displayCornerView);
  }

  else
  {
    v4 = v0;
    type metadata accessor for ShapeView();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v6 = [objc_opt_self() blackColor];
    v7 = [v6 CGColor];

    v8 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0x60))(v7);
    (*((*v8 & *v5) + 0x78))(*MEMORY[0x1E69797F8]);
    v9 = v5;
    [v9 setHidden_];
    [v9 setUserInteractionEnabled_];
    v10 = [v9 layer];
    [v10 setAllowsHitTesting_];

    v11 = [v9 layer];
    [v11 setDisableUpdateMask_];

    v12 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v9;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

id SystemRootLayerProxyView.init()()
{
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_updateSystemRootLayerTransformOnActiveCallDebounceDelay] = xmmword_1BC4C2970;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_updateSystemRootLayerTransformOnActiveCallDebouncer] = 0;
  v1 = &v0[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform];
  *v1 = 0x3FF0000000000000;
  v1[1] = 0;
  v1[2] = 0;
  v1[3] = 0x3FF0000000000000;
  v1[4] = 0;
  v1[5] = 0;
  v0[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_needsUpdateSystemRootLayerTransform] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView____lazy_storage___displayCornerView] = 0;
  if (specialized Array.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  *&v0[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_subscriptions] = v2;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SystemRootLayerProxyView();
  v3 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = SystemRootLayerProxyView.displayCornerView.getter();
  [v3 addSubview_];

  return v3;
}

void SystemRootLayerProxyView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_updateSystemRootLayerTransformOnActiveCallDebounceDelay) = xmmword_1BC4C2970;
  *(v0 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_updateSystemRootLayerTransformOnActiveCallDebouncer) = 0;
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform);
  *v1 = 0x3FF0000000000000;
  v1[1] = 0;
  v1[2] = 0;
  v1[3] = 0x3FF0000000000000;
  v1[4] = 0;
  v1[5] = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_needsUpdateSystemRootLayerTransform) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView____lazy_storage___displayCornerView) = 0;
  if (specialized Array.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_subscriptions) = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UIView, CGAffineTransform> and conformance NSObject.KeyValueObservingPublisher<A, B>(a5, a3, a4);

  Publisher<>.sink(receiveValue:)();

  (*(v11 + 8))(v14, v9);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    SystemRootLayerProxyView.needsUpdateSystemRootLayerTransform.setter(1);
  }
}

{
  specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(a2);
}

{
  specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(a2);
}

void specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    SystemRootLayerProxyView.needsUpdateSystemRootLayerTransform.setter(1);
  }
}

id SystemRootLayerProxyView.registerForGeometryChanges()()
{
  v1 = OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_subscriptions;
  swift_beginAccess();
  *&v0[v1] = MEMORY[0x1E69E7CD0];

  KeyPath = swift_getKeyPath();
  specialized SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(KeyPath, v0, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo6CGRectVGMd, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo6CGRectVGMR, &lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<UIView, CGRect> and conformance NSObject.KeyValueObservingPublisher<A, B>, partial apply for specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:));

  v3 = swift_getKeyPath();
  specialized SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(v3, v0, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo7CGPointVGMd, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo7CGPointVGMR, &lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<UIView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>, partial apply for specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:));

  v4 = [v0 superview];
  if (v4)
  {
    v5 = v4;
    v6 = swift_getKeyPath();
    specialized SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(v6, v5, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo6CGRectVGMd, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo6CGRectVGMR, &lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<UIView, CGRect> and conformance NSObject.KeyValueObservingPublisher<A, B>, partial apply for specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:));

    v7 = swift_getKeyPath();
    specialized SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(v7, v5, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo7CGPointVGMd, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo7CGPointVGMR, &lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<UIView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>, partial apply for specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:));
  }

  result = [v0 window];
  if (result)
  {
    v9 = result;
    v10 = swift_getKeyPath();
    specialized SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(v10, v9, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo6CGRectVGMd, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo6CGRectVGMR, &lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<UIView, CGRect> and conformance NSObject.KeyValueObservingPublisher<A, B>, partial apply for specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:));

    v11 = swift_getKeyPath();
    specialized SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(v11, v9, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo7CGPointVGMd, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo7CGPointVGMR, &lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<UIView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>, partial apply for specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:));

    v12 = swift_getKeyPath();
    specialized SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(v12, v9, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo17CGAffineTransformVGMd, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo17CGAffineTransformVGMR, &lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<UIView, CGAffineTransform> and conformance NSObject.KeyValueObservingPublisher<A, B>, partial apply for specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:));
  }

  return result;
}

double key path getter for UIView.transform : UIView@<D0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  [*a1 transform];
  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

id key path setter for UIView.transform : UIView(_OWORD *a1, void **a2)
{
  v2 = *a2;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return [v2 setTransform_];
}

id SystemRootLayerProxyView.didMoveToSuperview()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemRootLayerProxyView();
  objc_msgSendSuper2(&v2, sel_didMoveToSuperview);
  SystemRootLayerProxyView.needsUpdateSystemRootLayerTransform.setter(1);
  return SystemRootLayerProxyView.registerForGeometryChanges()();
}

void SystemRootLayerProxyView.layoutSubviews()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SystemRootLayerProxyView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = SystemRootLayerProxyView.displayCornerView.getter();
  v2 = SystemRootLayerProxyView.preferredContentSize.getter();
  [v1 setBounds_];

  v4 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView____lazy_storage___displayCornerView];
  [v0 bounds];
  MidX = CGRectGetMidX(v7);
  [v0 bounds];
  [v4 setCenter_];

  SystemRootLayerProxyView.updateDisplayCornerView()();
  SystemRootLayerProxyView.needsUpdateSystemRootLayerTransform.setter(1);
  SystemRootLayerProxyView.updateSystemRootLayerTransformIfNeeded()();
}

void SystemRootLayerProxyView.updateDisplayCornerView()()
{
  v1 = v0;
  v2 = SystemRootLayerProxyView.displayCornerView.getter();
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v1 traitCollection];
  [v11 displayCornerRadius];

  Mutable = CGPathCreateMutable();
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  v20 = CGRectInset(v19, -200.0, -200.0);
  transform.a = 1.0;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = 1.0;
  transform.tx = 0.0;
  transform.ty = 0.0;
  CGMutablePathRef.addRect(_:transform:)(v20, &transform);
  CGPathAddContinuousRoundedRect();
  v13 = *&v1[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView____lazy_storage___displayCornerView];
  v14 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x90);
  v16 = v13;
  v15 = Mutable;
  v14(Mutable);
}

void SystemRootLayerProxyView.updateSystemRootLayerTransformIfNeeded()()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_needsUpdateSystemRootLayerTransform) == 1)
  {
    SystemRootLayerProxyView.updateSystemRootLayerTransform()();

    SystemRootLayerProxyView.needsUpdateSystemRootLayerTransform.setter(0);
  }
}

void SystemRootLayerProxyView.updateSystemRootLayerTransform()()
{
  v1 = [v0 window];
  if (v1)
  {
    v27 = v1;
    [v0 bounds];
    v3 = v2;
    [v0 bounds];
    v5 = v3 / v4;
    v6 = [v27 screen];
    [v6 scale];
    v8 = v7;

    v9 = SystemRootLayerProxyView.preferredContentSize.getter();
    SystemRootLayerProxyView.preferredContentSize.getter();
    if (vabdd_f64(v5, v9 / v10) >= 0.01)
    {
    }

    else
    {
      v11 = [v27 screen];
      v12 = [v11 fixedCoordinateSpace];

      [v12 bounds];
      MidX = CGRectGetMidX(v32);
      [v12 bounds];
      MidY = CGRectGetMidY(v33);
      [v0 bounds];
      v15 = CGRectGetMidX(v34);
      [v0 bounds];
      [v0 convertPoint:v12 toCoordinateSpace:{v15, CGRectGetMidY(v35)}];
      v17 = v16;
      v19 = v18;
      [v0 bounds];
      v21 = v20 / SystemRootLayerProxyView.preferredContentSize.getter();
      [v0 bounds];
      v23 = v22;
      SystemRootLayerProxyView.preferredContentSize.getter();
      if (v21 > v23 / v24)
      {
        v25 = v21;
      }

      else
      {
        v25 = v23 / v24;
      }

      v30.a = 1.0;
      v30.b = 0.0;
      v30.c = 0.0;
      v30.d = 1.0;
      v30.tx = 0.0;
      v30.ty = 0.0;
      if (fabs(v25 + -1.0) >= 0.01)
      {
        CGAffineTransformTranslate(&v29, &v30, v8 * (v17 - MidX), v8 * (v19 - MidY));
        CGAffineTransformScale(&v30, &v29, v25, v25);
      }

      SystemRootLayerProxyView.systemRootLayerTransform.setter(&v30);
      v26 = SystemRootLayerProxyView.displayCornerView.getter();
      v29.a = 1.0;
      v29.b = 0.0;
      v29.c = 0.0;
      v29.d = 1.0;
      v29.tx = 0.0;
      v29.ty = 0.0;
      CGAffineTransformScale(&v28, &v29, v25, v25);
      v29 = v28;
      [v26 setTransform_];

      swift_unknownObjectRelease();
    }
  }
}

void SystemRootLayerProxyView._updateSystemRootLayerTransformOnActiveCall()()
{
  v1 = v0;
  if (one-time initialization token for sharedMonitor != -1)
  {
    swift_once();
  }

  v2 = (*((*MEMORY[0x1E69E7D40] & *static ScreenSharingStateMonitor.sharedMonitor) + 0x128))();
  if (v2)
  {
    v19 = v2;
    v3 = [v2 screenShareAttributes];
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform + 32);
      v6 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform + 40);
      v17 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform + 16);
      v18 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform);
      v7 = objc_opt_self();
      v8 = v4;
      v20[0] = v18;
      v20[1] = v17;
      v21 = v5;
      v22 = v6;
      v9 = [v7 valueWithCGAffineTransform_];
      [v8 setSystemRootLayerTransform_];

      [v19 setScreenShareAttributes:v8];
      return;
    }

    if (one-time initialization token for screenSharing != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, &static Log.screenSharing);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1BBC58000, v14, v15, "Could not find current screen share attributes", v16, 2u);
      MEMORY[0x1BFB23DF0](v16, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for screenSharing != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, &static Log.screenSharing);
    v19 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BBC58000, v19, v11, "Could not find active call to send updated screen share details", v12, 2u);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
    }
  }
}

uint64_t SystemRootLayerProxyView.updateSystemRootLayerTransformOnActiveCall()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_updateSystemRootLayerTransformOnActiveCallDebouncer;
  v6 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_updateSystemRootLayerTransformOnActiveCallDebouncer];
  if (v6)
  {

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1BFB21000](v6, MEMORY[0x1E69E7CA8] + 8, v7, MEMORY[0x1E69E7288]);
  }

  v8 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = v1;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  *&v1[v5] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in SystemRootLayerProxyView.updateSystemRootLayerTransformOnActiveCall()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in SystemRootLayerProxyView.updateSystemRootLayerTransformOnActiveCall(), v7, v6);
}

uint64_t closure #1 in SystemRootLayerProxyView.updateSystemRootLayerTransformOnActiveCall()()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = closure #1 in SystemRootLayerProxyView.updateSystemRootLayerTransformOnActiveCall();

  return specialized Clock.sleep(for:tolerance:)();
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = closure #1 in SystemRootLayerProxyView.updateSystemRootLayerTransformOnActiveCall();
  }

  else
  {
    v8 = closure #1 in SystemRootLayerProxyView.updateSystemRootLayerTransformOnActiveCall();
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

{

  SystemRootLayerProxyView._updateSystemRootLayerTransformOnActiveCall()();

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

id SystemRootLayerProxyViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *SystemRootLayerProxyViewController.init()()
{
  v1 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC15ConversationKit34SystemRootLayerProxyViewController_windowSceneOrientationSubscription] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit34SystemRootLayerProxyViewController_orientationTraitSubscription] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit34SystemRootLayerProxyViewController_systemRootLayerProxyView] = [objc_allocWithZone(type metadata accessor for SystemRootLayerProxyView()) init];
  v7 = type metadata accessor for SystemRootLayerProxyViewController();
  v14.receiver = v0;
  v14.super_class = v7;
  v8 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher();
  v12 = Publisher<>.sink(receiveValue:)();

  (*(v3 + 8))(v6, v1);
  *&v10[OBJC_IVAR____TtC15ConversationKit34SystemRootLayerProxyViewController_windowSceneOrientationSubscription] = v12;

  return v10;
}

void closure #1 in SystemRootLayerProxyViewController.init()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setPreferredContentSize_];
  }
}

id SystemRootLayerProxyViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SystemRootLayerProxyViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit34SystemRootLayerProxyViewController_windowSceneOrientationSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit34SystemRootLayerProxyViewController_orientationTraitSubscription) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall SystemRootLayerProxyViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for SystemRootLayerProxyViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  [v0 setPreferredContentSize_];
}

Swift::Void __swiftcall SystemRootLayerProxyViewController.viewDidMove(to:shouldAppearOrDisappear:)(UIWindow_optional *to, Swift::Bool shouldAppearOrDisappear)
{
  v3 = v2;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for SystemRootLayerProxyViewController();
  [(UIWindow_optional *)&v6 viewDidMoveToWindow:to shouldAppearOrDisappear:shouldAppearOrDisappear];
  [v3 setPreferredContentSize_];
}

void SystemRootLayerProxyViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = type metadata accessor for SystemRootLayerProxyViewController();
  objc_msgSendSuper2(&v11, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  OUTLINED_FUNCTION_20();
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = partial apply for closure #1 in SystemRootLayerProxyViewController.viewWillTransition(to:with:);
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v10[3] = &block_descriptor_12;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

id SystemRootLayerProxyViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id SystemRootLayerProxyView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id SystemRootLayerProxy.makeUIViewController(context:)()
{
  v0 = objc_allocWithZone(type metadata accessor for SystemRootLayerProxyViewController());

  return [v0 init];
}

unint64_t lazy protocol witness table accessor for type SystemRootLayerProxy and conformance SystemRootLayerProxy()
{
  result = lazy protocol witness table cache variable for type SystemRootLayerProxy and conformance SystemRootLayerProxy;
  if (!lazy protocol witness table cache variable for type SystemRootLayerProxy and conformance SystemRootLayerProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemRootLayerProxy and conformance SystemRootLayerProxy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemRootLayerProxy and conformance SystemRootLayerProxy;
  if (!lazy protocol witness table cache variable for type SystemRootLayerProxy and conformance SystemRootLayerProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemRootLayerProxy and conformance SystemRootLayerProxy);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance SystemRootLayerProxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type SystemRootLayerProxy and conformance SystemRootLayerProxy();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance SystemRootLayerProxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type SystemRootLayerProxy and conformance SystemRootLayerProxy();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance SystemRootLayerProxy(uint64_t a1)
{
  lazy protocol witness table accessor for type SystemRootLayerProxy and conformance SystemRootLayerProxy();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t partial apply for closure #1 in SystemRootLayerProxyView.updateSystemRootLayerTransformOnActiveCall()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in SystemRootLayerProxyView.updateSystemRootLayerTransformOnActiveCall()(a1, v4, v5, v6);
}

void specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v3[0] = *a1;
  v3[1] = v2;
  v3[2] = a1[2];
  specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(v3, a2);
}

void partial apply for specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(uint64_t a1)
{
  specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(a1, v1);
}

{
  specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(a1, v1);
}

uint64_t lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UIView, CGAffineTransform> and conformance NSObject.KeyValueObservingPublisher<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void *Participant.screenTransform.getter@<X0>(void *a2@<X8>)
{
  Participant.screenInfo.getter();
  if (*(v2 + *(type metadata accessor for Participant(0) + 28)))
  {
    outlined init with copy of Participant.ScreenInfo?();
    if (v11 == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      memcpy(&__dst, MEMORY[0x1E69792E8], sizeof(__dst));
    }

    else
    {
      v5 = v13;
      outlined destroy of Participant.ScreenInfo(v10);
      static Participant.screenRotationFor(_:)(v5);
      CATransform3DMakeRotation(&__dst, v6, 0.0, 0.0, 1.0);
    }
  }

  else
  {
    outlined init with copy of Participant.ScreenInfo?();
    if (v11 == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      v4 = 1;
    }

    else
    {
      v4 = v12;
      outlined destroy of Participant.ScreenInfo(v10);
    }

    v7 = [objc_opt_self() currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
    }

    _s15ConversationKit11ParticipantV017transformForLocalC017deviceOrientation10cameraType12currentIdiom8defaultsSo13CATransform3DVSo09CNKDeviceH0V_AC9VideoInfoV06CameraJ0OSo015UIUserInterfaceL0VAA16DefaultsProvider_ptFZTf4nnnen_nAA0U0C_Tt3g5(v4, 2, v8, static Defaults.shared, &__dst);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  return memcpy(a2, &__dst, 0x80uLL);
}

uint64_t ParticipantViewModel.ParticipantDetails.identifier.getter()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_46();

  return v1(v0);
}

uint64_t ParticipantViewModel.ParticipantDetails.identifier.setter()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_38_2();

  return v1(v0);
}

uint64_t ParticipantViewModel.ParticipantDetails.displayName.getter()
{
  type metadata accessor for ParticipantViewModel.ParticipantDetails(0);

  return OUTLINED_FUNCTION_46();
}

void ParticipantViewModel.ParticipantDetails.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ParticipantViewModel.ParticipantDetails(0) + 20));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t ParticipantViewModel.ParticipantDetails.displayName.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantViewModel.ParticipantDetails(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantViewModel.ParticipantDetails.isMomentsAvailable.setter()
{
  result = OUTLINED_FUNCTION_61_4();
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t ParticipantViewModel.ParticipantDetails.isMomentsAvailable.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantViewModel.ParticipantDetails(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantViewModel.ParticipantDetails.isLocal.setter()
{
  result = OUTLINED_FUNCTION_61_4();
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t ParticipantViewModel.ParticipantDetails.isLocal.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantViewModel.ParticipantDetails(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantViewModel.ParticipantDetails.isKickingAvailable.setter()
{
  result = OUTLINED_FUNCTION_61_4();
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t ParticipantViewModel.ParticipantDetails.isKickingAvailable.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantViewModel.ParticipantDetails(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantViewModel.ParticipantDetails.isMostActive.setter()
{
  result = OUTLINED_FUNCTION_61_4();
  *(v1 + *(result + 36)) = v0;
  return result;
}

uint64_t ParticipantViewModel.ParticipantDetails.isMostActive.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantViewModel.ParticipantDetails(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantViewModel.ParticipantDetails.isPreviewingReaction.setter()
{
  result = OUTLINED_FUNCTION_61_4();
  *(v1 + *(result + 40)) = v0;
  return result;
}

uint64_t ParticipantViewModel.ParticipantDetails.isPreviewingReaction.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantViewModel.ParticipantDetails(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantViewModel.ParticipantDetails.isCameraMixedWithScreen.setter()
{
  result = OUTLINED_FUNCTION_61_4();
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t ParticipantViewModel.ParticipantDetails.isCameraMixedWithScreen.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantViewModel.ParticipantDetails(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantViewModel.ParticipantDetails.init(participant:isMostActive:isPreviewingReaction:isLocalMemberAuthorizedToChangeGroupMembership:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Participant(0);
  v11 = *(v10 + 20);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  (*(v12 + 16))(a5, a1 + v11);
  Participant.contactDetails.getter();

  Participant.name(_:)();
  v14 = v13;
  v16 = v15;

  v17 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  v18 = (a5 + v17[5]);
  *v18 = v14;
  v18[1] = v16;
  if (*(a1 + *(v10 + 24)) == 1)
  {
    Participant.hasReducedQualityVideo.getter();
    v20 = v19 ^ 1;
  }

  else
  {
    v20 = 0;
  }

  *(a5 + v17[6]) = v20 & 1;
  OUTLINED_FUNCTION_16_29();
  *(a5 + v17[7]) = v21;
  Participant.isKickingAvailable.getter();
  v22 = OUTLINED_FUNCTION_33_5();
  if (v23 & 1) != 0 && (a4)
  {
    v22 = Participant.canShowKickButtonOnVideoTile.getter();
  }

  *(a5 + v17[8]) = v22 & 1;
  *(a5 + v17[9]) = a2 & 1;
  *(a5 + v17[10]) = a3 & 1;
  Participant.videoInfo.getter();
  OUTLINED_FUNCTION_0_61();
  result = _s15ConversationKit11ParticipantVWOhTm_4();
  if (v26)
  {
    v25 = v27;
    result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v26, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  }

  else
  {
    v25 = 0;
  }

  *(a5 + v17[11]) = v25 & 1;
  return result;
}

uint64_t ParticipantViewModel.init(participant:videoProviderType:isInGrid:isMostActive:isPipped:isPreviewingReaction:hasOtherInvitedParticipants:isLocalMemberAuthorizedToChangeGroupMembership:prefersSnapshotFadeAnimation:snapshotImage:allowsVideoCroppedByAspectRatio:shouldRegisterVideoLayers:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, _BOOL4 a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>, unsigned __int8 a9, uint64_t a10, unsigned __int8 a11, unsigned __int8 a12)
{
  LODWORD(v575) = a7;
  v570 = a6;
  v523 = a5;
  LODWORD(v574) = a4;
  v578 = a3;
  v568 = a2;
  v577 = a8;
  v567 = a12;
  v544 = a11;
  *&v579 = a10;
  v566 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  v563 = &v519 - v15;
  v572 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v580 = v21;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v526 = v23;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v521 = v25;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v524 = v27;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v531 = v29;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v528 = v31;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v529 = v33;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v537 = v35;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  v538 = v37;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v542 = v39;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5();
  v543 = v41;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  v549 = v43;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5();
  v550 = v45;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5();
  v554 = v47;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5();
  v547 = v49;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5();
  v560 = v51;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5();
  v561 = v53;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5();
  v552 = v55;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v56);
  v553 = &v519 - v57;
  v571 = type metadata accessor for ParticipantViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_17();
  v522 = v59 - v60;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_5();
  v525 = v62;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5();
  v532 = v64;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5();
  v540 = v66;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_5();
  v545 = v68;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_5();
  v557 = v70;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5();
  v555 = v72;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_5();
  v565 = v74;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v75);
  v558 = &v519 - v76;
  v573 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_17();
  v80 = v78 - v79;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v519 - v82;
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_5();
  v520 = v85;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_5();
  v530 = v87;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_5();
  v536 = v89;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_5();
  v534 = v91;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_5();
  v527 = v93;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_5();
  v533 = v95;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_5();
  v535 = v97;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_5();
  v539 = v99;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_5();
  v541 = v101;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_5();
  v551 = v103;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_5();
  v548 = v105;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_5();
  v556 = v107;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_5();
  v546 = v109;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_5();
  v562 = v111;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_5();
  v559 = v113;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_5();
  v564 = v115;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v519 - v117;
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v120);
  v576 = &v519 - v121;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateO_AC9VideoInfoVSgtMd, &_s15ConversationKit11ParticipantV5StateO_AC9VideoInfoVSgtMR);
  v123 = v122 - 8;
  MEMORY[0x1EEE9AC00](v122);
  v125 = &v519 - v124;
  Participant.videoInfo.getter();
  v126 = *(v123 + 56);
  outlined init with copy of Participant.State();
  v127 = &v125[v126];
  v128 = v125;
  memcpy(v127, v592, 0x4BuLL);
  memcpy(__dst, v592, 0x4BuLL);
  type metadata accessor for Participant.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 5u:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
      type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
      (*(v129 + 8))(v125);
      goto LABEL_11;
    case 3u:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
      OUTLINED_FUNCTION_1_62();
      OUTLINED_FUNCTION_63_4();
      OUTLINED_FUNCTION_49_6();
      ParticipantViewModel.init(ringingParticipant:isMostActive:isLocalMemberAuthorizedToChangeGroupMembership:)(v143, v144, v145);
      goto LABEL_9;
    case 4u:
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v131 = *(v130 + 48);
      v132 = &v128[*(v130 + 64)];
      outlined consume of Participant.CopresenceInfo?(*v132, v132[1], v132[2], v132[3], v132[4], v132[5], v132[6], v132[7]);
      if (!__dst[0])
      {
        OUTLINED_FUNCTION_1_62();
        OUTLINED_FUNCTION_63_4();
        ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v118, v578, v574 & 1, v575 & 1, v577);

        OUTLINED_FUNCTION_0_61();
        _s15ConversationKit11ParticipantVWOhTm_4();
        goto LABEL_136;
      }

      v580 = v128;
      v133 = BYTE6(__dst[1]);
      v134 = HIBYTE(__dst[1]);
      v135 = LOBYTE(__dst[2]);
      v570 = BYTE1(__dst[2]);
      v136 = BYTE1(__dst[9]);
      v569 = a1;
      if (Participant.isReceivingVideoFrames.getter() & 1) != 0 && (v136)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
        OUTLINED_FUNCTION_1_62();
        v137 = v576;
        outlined init with copy of Participant.State();
        OUTLINED_FUNCTION_11_30();
        ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v137, v138, 0, v139, v577);

        OUTLINED_FUNCTION_0_61();
LABEL_135:
        _s15ConversationKit11ParticipantVWOhTm_4();
        v128 = v580;
        goto LABEL_136;
      }

      v183 = v569;
      if (Participant.isReceivingVideoFrames.getter() & 1) != 0 && (Participant.isVideoPaused.getter())
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
        if (v574)
        {
          OUTLINED_FUNCTION_1_62();
          OUTLINED_FUNCTION_30_9();
          outlined init with copy of Participant.State();
          OUTLINED_FUNCTION_11_30();
          v186 = v577;
          v187 = v183;
          v188 = 1;
LABEL_27:
          ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v187, v184, v188, v185, v186);
LABEL_31:

LABEL_32:
          OUTLINED_FUNCTION_0_61();
          goto LABEL_135;
        }

        OUTLINED_FUNCTION_1_62();
        outlined init with copy of Participant.State();
        *(&v587 + 1) = &type metadata for ImageNames.ParticipantView;
        *&v588 = &protocol witness table for ImageNames.ParticipantView;
        LOBYTE(v586) = 8;
        OUTLINED_FUNCTION_56_4();
        Participant.videoProvider(for:)();
        if (*(&v590[1] + 1))
        {
          v224 = v131;
          outlined init with take of TapInteractionHandler(v590, &v581);
          OUTLINED_FUNCTION_1_62();
          outlined init with copy of Participant.State();
          v225 = v573;
          v226 = v573[5];
          type metadata accessor for UUID();
          OUTLINED_FUNCTION_20_3();
          v228 = v552;
          (*(v227 + 16))(v552, &v118[v226]);
          Participant.contactDetails.getter();
          v229 = *&v590[0];

          Participant.name(_:)();
          v231 = v230;
          v233 = v232;

          OUTLINED_FUNCTION_68_1();
          v235 = (v228 + v234);
          *v235 = v231;
          v235[1] = v233;
          if (v118[*(v225 + 24)])
          {
            Participant.hasReducedQualityVideo.getter();
          }

          OUTLINED_FUNCTION_38_10();
          *(v228 + v299) = v298;
          *(v228 + *(v300 + 28)) = *&v118[*(v225 + 28)] == 0;
          Participant.isKickingAvailable.getter();
          v301 = OUTLINED_FUNCTION_33_5();
          v131 = v224;
          if (v302)
          {
            v303 = v566;
            if (v575)
            {
              v301 = Participant.canShowKickButtonOnVideoTile.getter();
            }
          }

          else
          {
            v303 = v566;
          }

          OUTLINED_FUNCTION_31_13(v301);
          Participant.videoInfo.getter();
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          if (v593[0])
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v593, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
          }

          OUTLINED_FUNCTION_36_12();
          *(v228 + v337) = v338;
          OUTLINED_FUNCTION_6_38();
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          outlined init with copy of IDSLookupManager(&v581, v590);
          OUTLINED_FUNCTION_64_2();

          __swift_destroy_boxed_opaque_existential_1(&v581);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          OUTLINED_FUNCTION_41_9();
          OUTLINED_FUNCTION_9_28(v303 & 1);
          outlined init with take of TapInteractionHandler(&v586, v591);
          v591[6] = 0;
          v591[5] = 0;
          LOBYTE(v591[13]) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMR);
          OUTLINED_FUNCTION_40_12();
          v339 = v558;
LABEL_132:
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          OUTLINED_FUNCTION_65_2();
          v408 = v590 + v339;
LABEL_133:
          memcpy(v408, v591, 0x69uLL);
          OUTLINED_FUNCTION_79_4(v339);
          goto LABEL_134;
        }

        v519 = v131;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v590, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
        }

        *&v574 = static OS_os_log.conversationKit;
        static os_log_type_t.error.getter();
        v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v285 = OUTLINED_FUNCTION_54(v284);
        *(v285 + 16) = xmmword_1BC4BAA20;
        LOBYTE(v590[0]) = v135;
        String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_43_7();
        *(v285 + 56) = MEMORY[0x1E69E6158];
        v286 = lazy protocol witness table accessor for type String and conformance String();
        OUTLINED_FUNCTION_4_41(v286);
        v287 = v563;
        outlined init with copy of Participant.State();
        v288 = OUTLINED_FUNCTION_20_4();
        OUTLINED_FUNCTION_58_4(v288, v289, v290);
        OUTLINED_FUNCTION_47_7();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v287, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        OUTLINED_FUNCTION_53_7();
        OUTLINED_FUNCTION_17_22("No video provider of type %@ for participant %@. Falling back to displaying monogram", v291, v292, &dword_1BBC58000);

        OUTLINED_FUNCTION_19_13();
        outlined init with copy of Participant.State();
        OUTLINED_FUNCTION_11_30();
        v293 = OUTLINED_FUNCTION_44_7();
        ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v293, v294, v295, v296, v297);

        OUTLINED_FUNCTION_0_61();
        _s15ConversationKit11ParticipantVWOhTm_4();
        __swift_destroy_boxed_opaque_existential_1(&v586);
LABEL_124:
        v131 = v519;
LABEL_134:
        OUTLINED_FUNCTION_8_44();
        outlined init with take of ParticipantViewModel.ParticipantDetails();
        OUTLINED_FUNCTION_0_61();
        goto LABEL_135;
      }

      if (Participant.isReceivingVideoFrames.getter() & 1) != 0 && (Participant.isVideoSuspended.getter())
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
        OUTLINED_FUNCTION_1_62();
        OUTLINED_FUNCTION_30_9();
        outlined init with copy of Participant.State();
        ParticipantViewModel.init(monogramVideoParticipant:videoProviderType:isMostActive:isLocalMemberAuthorizedToChangeGroupMembership:prefersSnapshotFadeAnimation:shouldRegisterVideoLayers:)(v568, v578, v575 & 1, v566 & 1, v567 & 1, v577);
        goto LABEL_31;
      }

      if (Participant.isReceivingVideoFrames.getter() & 1) != 0 && (v133)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
        OUTLINED_FUNCTION_1_62();
        outlined init with copy of Participant.State();
        OUTLINED_FUNCTION_56_4();
        Participant.videoProvider(for:)();
        if (*(&v590[1] + 1))
        {
          outlined init with take of TapInteractionHandler(v590, v593);
          OUTLINED_FUNCTION_1_62();
          v189 = v559;
          outlined init with copy of Participant.State();
          v190 = v573;
          v191 = v573[5];
          type metadata accessor for UUID();
          OUTLINED_FUNCTION_20_3();
          v193 = v560;
          (*(v192 + 16))(v560, v189 + v191);
          Participant.contactDetails.getter();
          v194 = *&v590[0];
          OUTLINED_FUNCTION_34_13();

          Participant.name(_:)();
          OUTLINED_FUNCTION_37_16();
          v195 = v572;
          v196 = (v193 + *(v572 + 20));
          *v196 = v194;
          v196[1] = v183;
          if (*(v189 + *(v190 + 24)))
          {
            Participant.hasReducedQualityVideo.getter();
          }

          OUTLINED_FUNCTION_52_4();
          *(v193 + v267) = v266;
          OUTLINED_FUNCTION_16_29();
          *(v193 + v195[7]) = v268;
          Participant.isKickingAvailable.getter();
          v269 = OUTLINED_FUNCTION_33_5();
          if (v270 & 1) != 0 && (v575)
          {
            v269 = Participant.canShowKickButtonOnVideoTile.getter();
          }

          *(v193 + v195[8]) = v269 & 1;
          OUTLINED_FUNCTION_24_17();
          *(v193 + v271) = v272;
          *(v193 + v195[10]) = 0;
          Participant.videoInfo.getter();
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          if (v591[0])
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v591, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
          }

          v273 = v566;
          v274 = v565;
          OUTLINED_FUNCTION_51_4();
          *(v193 + v275) = v276;
          OUTLINED_FUNCTION_6_38();
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          outlined init with copy of IDSLookupManager(v593, v590);
          OUTLINED_FUNCTION_64_2();

          __swift_destroy_boxed_opaque_existential_1(v593);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          OUTLINED_FUNCTION_41_9();
          OUTLINED_FUNCTION_9_28(v273 & 1);
          v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMR);
          v278 = *(v277 + 48);
          v279 = v274 + *(v277 + 64);
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          memcpy((v274 + v278), v590, 0xACuLL);
          *v279 = 0u;
          *(v279 + 16) = 0u;
          *(v279 + 32) = 0u;
          *(v279 + 48) = 0u;
          *(v279 + 64) = 0u;
          *(v279 + 80) = 0u;
          *(v279 + 96) = 0;
          *(v279 + 104) = 6;
          OUTLINED_FUNCTION_79_4(v274);
        }

        else
        {
          v519 = v131;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v590, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
          }

          *&v574 = static OS_os_log.conversationKit;
          static os_log_type_t.error.getter();
          v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v237 = OUTLINED_FUNCTION_54(v236);
          *(v237 + 16) = xmmword_1BC4BAA20;
          LOBYTE(v590[0]) = v135;
          String.init<A>(reflecting:)();
          OUTLINED_FUNCTION_43_7();
          *(v237 + 56) = MEMORY[0x1E69E6158];
          v238 = lazy protocol witness table accessor for type String and conformance String();
          OUTLINED_FUNCTION_4_41(v238);
          v239 = v563;
          outlined init with copy of Participant.State();
          v240 = OUTLINED_FUNCTION_20_4();
          __swift_storeEnumTagSinglePayload(v240, v241, v242, v573);
          specialized >> prefix<A>(_:)();
          OUTLINED_FUNCTION_47_7();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v239, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          OUTLINED_FUNCTION_53_7();
          OUTLINED_FUNCTION_17_22("No video provider of type %@ for participant %@. Falling back to displaying monogram", v243, v244, &dword_1BBC58000);

          OUTLINED_FUNCTION_19_13();
          outlined init with copy of Participant.State();
          OUTLINED_FUNCTION_11_30();
          v245 = OUTLINED_FUNCTION_44_7();
          ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v245, v246, v247, v248, v249);

          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          v131 = v519;
        }

        goto LABEL_134;
      }

      if ((Participant.isReceivingVideoFrames.getter() & 1) != 0 && Participant.videoDegradedState.getter())
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
        Participant.videoInfo.getter();
        v197 = v573;
        v198 = v554;
        if (!v593[0])
        {
          goto LABEL_49;
        }

        v199 = *&v593[7];
        v200 = *&v593[8];
        v201 = v594;
        v202 = *&v593[6];
        v203 = *&v593[5];
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v593, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
        v204 = v203 == 1.0;
        if (v202 != 1.0)
        {
          v204 = 0;
        }

        if ((v201 & 1) == 0 && !v204)
        {
          goto LABEL_49;
        }

        v205 = 0;
        v206 = v199 == 1.0;
        if (v200 != 1.0)
        {
          v206 = 0;
        }

        v207 = 0;
        if ((v201 & 1) == 0 && !v206)
        {
LABEL_49:
          if (Participant.videoDegradedState.getter() == 2)
          {
            v208 = [objc_opt_self() conversationKit];
            OUTLINED_FUNCTION_5_5();
            OUTLINED_FUNCTION_48_1(v209 + 10, 0x80000001BC4F8AB0, v210, v211);

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v212 = swift_allocObject();
            *(v212 + 16) = xmmword_1BC4BA940;
            Participant.contactDetails.getter();
            v213 = v131;
            v214 = *&v590[0];
            v215 = *(&v590[1] + 1);
            v216 = *&v590[2];

            v131 = v213;
            *(v212 + 56) = MEMORY[0x1E69E6158];
            *(v212 + 64) = lazy protocol witness table accessor for type String and conformance String();
            *(v212 + 32) = v215;
            *(v212 + 40) = v216;
            v197 = v573;
            v205 = String.init(format:_:)();
            v207 = v217;
          }

          else
          {
            v304 = Participant.videoDegradedState.getter();
            v305 = [objc_opt_self() conversationKit];
            OUTLINED_FUNCTION_5_5();
            if (v304 == 3)
            {
              v310 = v309 | 6;
              v311 = v308 | 0x8000000000000000;
            }

            else
            {
              v311 = v308 | 0x8000000000000000;
              v310 = 0xD000000000000019;
            }

            v205 = OUTLINED_FUNCTION_48_1(v310, v311, v306, v307);
            v207 = v340;
          }
        }

        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v341 = Features.isPoorConnectionLabelsEnabled.getter();
        v342 = v568;
        if ((v341 & 1) == 0)
        {

          v205 = 0;
          v207 = 0;
        }

        OUTLINED_FUNCTION_1_62();
        outlined init with copy of Participant.State();
        if (one-time initialization token for badConnectionTitle1 != -1)
        {
          swift_once();
        }

        v586 = static SymbolImageDescription.badConnectionTitle1;
        v587 = unk_1EBCDB398;
        v588 = xmmword_1EBCDB3A8;
        v589 = unk_1EBCDB3B8;
        v343 = objc_opt_self();
        v344 = *MEMORY[0x1E69DDD80];
        v345 = OUTLINED_FUNCTION_50_7();
        outlined init with copy of SymbolImageDescription(v345, v346);
        v347 = [v343 preferredFontForTextStyle_];
        Participant.videoProvider(for:)();
        v519 = v131;
        *&v574 = v347;
        if (*(&v590[1] + 1))
        {
          outlined init with take of TapInteractionHandler(v590, v585);
          OUTLINED_FUNCTION_1_62();
          v348 = v546;
          outlined init with copy of Participant.State();
          v349 = *(v197 + 20);
          type metadata accessor for UUID();
          OUTLINED_FUNCTION_20_3();
          (*(v350 + 16))(v198, v348 + v349);
          Participant.contactDetails.getter();
          v351 = *&v590[0];

          Participant.name(_:)();
          v353 = v352;
          v355 = v354;

          OUTLINED_FUNCTION_68_1();
          v357 = (v198 + v356);
          *v357 = v353;
          v357[1] = v355;
          OUTLINED_FUNCTION_45_8();
          if (v358)
          {
            Participant.hasReducedQualityVideo.getter();
          }

          v374 = v555;
          OUTLINED_FUNCTION_38_10();
          *(v198 + v376) = v375;
          OUTLINED_FUNCTION_15_19();
          *(v198 + *(v377 + 28)) = v378;
          Participant.isKickingAvailable.getter();
          v379 = OUTLINED_FUNCTION_33_5();
          if (v380)
          {
            v381 = v566;
            if (v575)
            {
              v379 = Participant.canShowKickButtonOnVideoTile.getter();
            }
          }

          else
          {
            v381 = v566;
          }

          v410 = v572;
          *(v198 + *(v572 + 32)) = v379 & 1;
          *(v198 + *(v410 + 36)) = v578;
          *(v198 + *(v410 + 40)) = 0;
          Participant.videoInfo.getter();
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          if (v591[0])
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v591, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
          }

          OUTLINED_FUNCTION_36_12();
          *(v198 + v411) = v412;
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          outlined init with copy of IDSLookupManager(v585, v590);
          Participant.videoTransform.getter();

          __swift_destroy_boxed_opaque_existential_1(v585);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          memcpy(&v590[2] + 8, v595, 0x80uLL);
          OUTLINED_FUNCTION_9_28(v381 & 1);
          v581 = v586;
          v582 = v587;
          v583 = v588;
          v584 = v589;
          v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMR);
          v414 = *(v413 + 48);
          v415 = v374 + *(v413 + 64);
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          memcpy((v374 + v414), v590, 0xACuLL);
          v416 = v582;
          *v415 = v581;
          *(v415 + 16) = v416;
          v417 = v584;
          *(v415 + 32) = v583;
          *(v415 + 48) = v417;
          *(v415 + 64) = v205;
          *(v415 + 72) = v207;
          *(v415 + 80) = v574;
          *(v415 + 104) = 3;
          OUTLINED_FUNCTION_79_4(v374);
        }

        else
        {

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v590, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
          }

          v572 = static OS_os_log.conversationKit;
          v359 = static os_log_type_t.error.getter();
          v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v361 = OUTLINED_FUNCTION_54(v360);
          *(v361 + 16) = xmmword_1BC4BAA20;
          LOBYTE(v590[0]) = v342;
          String.init<A>(reflecting:)();
          v362 = MEMORY[0x1E69E6158];
          *(v361 + 56) = MEMORY[0x1E69E6158];
          v363 = lazy protocol witness table accessor for type String and conformance String();
          OUTLINED_FUNCTION_29_12(v363);
          v364 = v563;
          outlined init with copy of Participant.State();
          __swift_storeEnumTagSinglePayload(v364, 0, 1, v573);
          specialized >> prefix<A>(_:)();
          v366 = v365;
          v368 = v367;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v364, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          *(v361 + 96) = v362;
          *(v361 + 104) = v342;
          *(v361 + 72) = v366;
          *(v361 + 80) = v368;
          os_log(_:dso:log:type:_:)("No video provider of type %@ for participant %@. Falling back to displaying monogram", 84, 2, &dword_1BBC58000, v572, v359, v361);

          OUTLINED_FUNCTION_19_13();
          outlined init with copy of Participant.State();
          OUTLINED_FUNCTION_11_30();
          v369 = OUTLINED_FUNCTION_44_7();
          ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v369, v370, v371, v372, v373);

          outlined destroy of SymbolImageDescription(&v586);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
        }

        goto LABEL_142;
      }

      v218 = Participant.isReceivingVideoFrames.getter();
      v219 = v573;
      if (v218 & 1) != 0 && (v134)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
        OUTLINED_FUNCTION_1_62();
        outlined init with copy of Participant.State();
        LOBYTE(v591[0]) = 0;
        LOBYTE(v591[13]) = 0;
        OUTLINED_FUNCTION_56_4();
        Participant.videoProvider(for:)();
        if (*(&v590[1] + 1))
        {
          outlined init with take of TapInteractionHandler(v590, &v586);
          OUTLINED_FUNCTION_1_62();
          v220 = v548;
          outlined init with copy of Participant.State();
          OUTLINED_FUNCTION_62_3();
          OUTLINED_FUNCTION_20_3();
          v222 = v549;
          (*(v221 + 16))(v549, &v118[v220]);
          Participant.contactDetails.getter();
          OUTLINED_FUNCTION_26_15();

          OUTLINED_FUNCTION_78_2();
          OUTLINED_FUNCTION_37_16();
          OUTLINED_FUNCTION_25_20();
          if (v223)
          {
            Participant.hasReducedQualityVideo.getter();
          }

          OUTLINED_FUNCTION_52_4();
          *(v222 + v327) = v326;
          OUTLINED_FUNCTION_15_19();
          *(v222 + *(v118 + 7)) = v328;
          Participant.isKickingAvailable.getter();
          v329 = OUTLINED_FUNCTION_33_5();
          if (v330)
          {
            v331 = v566;
            if (v575)
            {
              v329 = Participant.canShowKickButtonOnVideoTile.getter();
            }
          }

          else
          {
            v331 = v566;
          }

          OUTLINED_FUNCTION_18_25(v329);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          if (v593[0])
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v593, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
          }

          OUTLINED_FUNCTION_51_4();
          *(v222 + v404) = v405;
          OUTLINED_FUNCTION_6_38();
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          v406 = OUTLINED_FUNCTION_50_7();
          outlined init with copy of IDSLookupManager(v406, v407);
          OUTLINED_FUNCTION_64_2();

          __swift_destroy_boxed_opaque_existential_1(&v586);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          OUTLINED_FUNCTION_41_9();
          OUTLINED_FUNCTION_9_28(v331 & 1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMR);
          OUTLINED_FUNCTION_40_12();
          v339 = v557;
          goto LABEL_132;
        }

        v519 = v131;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v590, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
        }

        *&v574 = static OS_os_log.conversationKit;
        static os_log_type_t.error.getter();
        v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v313 = OUTLINED_FUNCTION_54(v312);
        *(v313 + 16) = xmmword_1BC4BAA20;
        LOBYTE(v590[0]) = v135;
        String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_43_7();
        *(v313 + 56) = MEMORY[0x1E69E6158];
        v314 = lazy protocol witness table accessor for type String and conformance String();
        OUTLINED_FUNCTION_4_41(v314);
        v315 = v563;
        outlined init with copy of Participant.State();
        v316 = OUTLINED_FUNCTION_20_4();
        OUTLINED_FUNCTION_58_4(v316, v317, v318);
        OUTLINED_FUNCTION_47_7();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v315, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        OUTLINED_FUNCTION_53_7();
        OUTLINED_FUNCTION_17_22("No video provider of type %@ for participant %@. Falling back to displaying monogram", v319, v320, &dword_1BBC58000);

        OUTLINED_FUNCTION_19_13();
        outlined init with copy of Participant.State();
        OUTLINED_FUNCTION_11_30();
        goto LABEL_90;
      }

      v250 = Participant.isReceivingVideoFrames.getter();
      v251 = v568;
      if ((v250 & 1) != 0 && v579)
      {
        v252 = v579;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
        OUTLINED_FUNCTION_1_62();
        outlined init with copy of Participant.State();
        v591[0] = v252;
        LOBYTE(v591[13]) = 5;
        v253 = v252;
        Participant.videoProvider(for:)();
        if (*(&v590[1] + 1))
        {
          *&v579 = v253;
          v254 = v131;
          outlined init with take of TapInteractionHandler(v590, &v586);
          OUTLINED_FUNCTION_1_62();
          v255 = v541;
          outlined init with copy of Participant.State();
          OUTLINED_FUNCTION_62_3();
          OUTLINED_FUNCTION_20_3();
          v257 = v542;
          (*(v256 + 16))(v542, &v253[v255]);
          Participant.contactDetails.getter();
          v258 = *&v590[0];

          Participant.name(_:)();
          v260 = v259;
          v262 = v261;

          OUTLINED_FUNCTION_68_1();
          v264 = (v257 + v263);
          *v264 = v260;
          v264[1] = v262;
          OUTLINED_FUNCTION_45_8();
          if (v265)
          {
            Participant.hasReducedQualityVideo.getter();
          }

          v131 = v254;
          OUTLINED_FUNCTION_38_10();
          *(v257 + v397) = v396;
          OUTLINED_FUNCTION_15_19();
          *(v257 + *(v398 + 28)) = v399;
          Participant.isKickingAvailable.getter();
          v400 = OUTLINED_FUNCTION_33_5();
          v401 = v579;
          if (v402)
          {
            v403 = v566;
            if (v575)
            {
              v400 = Participant.canShowKickButtonOnVideoTile.getter();
            }
          }

          else
          {
            v403 = v566;
          }

          OUTLINED_FUNCTION_31_13(v400);
          Participant.videoInfo.getter();
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          if (v593[0])
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v593, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
          }

          OUTLINED_FUNCTION_36_12();
          *(v257 + v440) = v441;
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          v442 = OUTLINED_FUNCTION_50_7();
          outlined init with copy of IDSLookupManager(v442, v443);
          OUTLINED_FUNCTION_64_2();

          __swift_destroy_boxed_opaque_existential_1(&v586);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          memcpy(&v590[2] + 8, v595, 0x80uLL);
          OUTLINED_FUNCTION_9_28(v403 & 1);
          v444 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMR) + 64);
          v339 = v545;
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          OUTLINED_FUNCTION_65_2();
          v408 = (v339 + v444);
          goto LABEL_133;
        }

        v519 = v131;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v590, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
        }

        *&v579 = static OS_os_log.conversationKit;
        LODWORD(v574) = static os_log_type_t.error.getter();
        v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v383 = OUTLINED_FUNCTION_54(v382);
        OUTLINED_FUNCTION_72_2(v383, xmmword_1BC4BAA20);
        String.init<A>(reflecting:)();
        v384 = MEMORY[0x1E69E6158];
        v383[3].n128_u64[1] = MEMORY[0x1E69E6158];
        v385 = lazy protocol witness table accessor for type String and conformance String();
        OUTLINED_FUNCTION_29_12(v385);
        v386 = v563;
        outlined init with copy of Participant.State();
        __swift_storeEnumTagSinglePayload(v386, 0, 1, v573);
        specialized >> prefix<A>(_:)();
        v388 = v387;
        v390 = v389;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v386, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        v383[6].n128_u64[0] = v384;
        v383[6].n128_u64[1] = v219;
        v383[4].n128_u64[1] = v388;
        v383[5].n128_u64[0] = v390;
        os_log(_:dso:log:type:_:)("No video provider of type %@ for participant %@. Falling back to displaying monogram", 84, 2, &dword_1BBC58000, v579, v574, v383);

        OUTLINED_FUNCTION_30_9();
        outlined init with copy of Participant.State();
        OUTLINED_FUNCTION_11_30();
        v391 = OUTLINED_FUNCTION_44_7();
        ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v391, v392, v393, v394, v395);

        outlined destroy of ParticipantVideoOverlayView.ViewModel(v591);
        OUTLINED_FUNCTION_0_61();
        goto LABEL_123;
      }

      if ((Participant.isReceivingVideoFrames.getter() & 1) != 0 && (v135 & 1) != 0 && (v544 & 1) == 0)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
        OUTLINED_FUNCTION_1_62();
        outlined init with copy of Participant.State();
        LOBYTE(v591[0]) = 1;
        OUTLINED_FUNCTION_55_5();
        Participant.videoProvider(for:)();
        if (*(&v590[1] + 1))
        {
          outlined init with take of TapInteractionHandler(v590, &v586);
          OUTLINED_FUNCTION_1_62();
          v280 = v535;
          outlined init with copy of Participant.State();
          OUTLINED_FUNCTION_62_3();
          OUTLINED_FUNCTION_20_3();
          v282 = v537;
          (*(v281 + 16))(v537, &v118[v280]);
          Participant.contactDetails.getter();
          OUTLINED_FUNCTION_26_15();

          OUTLINED_FUNCTION_78_2();
          OUTLINED_FUNCTION_37_16();
          OUTLINED_FUNCTION_25_20();
          if (v283)
          {
            Participant.hasReducedQualityVideo.getter();
          }

          OUTLINED_FUNCTION_52_4();
          *(v282 + v435) = v434;
          OUTLINED_FUNCTION_15_19();
          *(v282 + *(v118 + 7)) = v436;
          Participant.isKickingAvailable.getter();
          v437 = OUTLINED_FUNCTION_33_5();
          if (v438)
          {
            v439 = v566;
            if (v575)
            {
              v437 = Participant.canShowKickButtonOnVideoTile.getter();
            }
          }

          else
          {
            v439 = v566;
          }

          OUTLINED_FUNCTION_18_25(v437);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          if (v593[0])
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v593, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
          }

          OUTLINED_FUNCTION_51_4();
          *(v282 + v452) = v453;
          OUTLINED_FUNCTION_6_38();
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          v454 = OUTLINED_FUNCTION_50_7();
          outlined init with copy of IDSLookupManager(v454, v455);
          OUTLINED_FUNCTION_64_2();

          __swift_destroy_boxed_opaque_existential_1(&v586);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          OUTLINED_FUNCTION_41_9();
          OUTLINED_FUNCTION_9_28(v439 & 1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMR);
          OUTLINED_FUNCTION_40_12();
          v339 = v540;
          goto LABEL_132;
        }

        v519 = v131;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v590, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
        if (one-time initialization token for conversationKit == -1)
        {
          goto LABEL_147;
        }

LABEL_193:
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
LABEL_147:
        *&v574 = static OS_os_log.conversationKit;
        static os_log_type_t.error.getter();
        v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v426 = OUTLINED_FUNCTION_54(v425);
        OUTLINED_FUNCTION_72_2(v426, xmmword_1BC4BAA20);
        String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_43_7();
        v426[3].n128_u64[1] = MEMORY[0x1E69E6158];
        v427 = lazy protocol witness table accessor for type String and conformance String();
        OUTLINED_FUNCTION_4_41(v427);
        v428 = v563;
        outlined init with copy of Participant.State();
        v429 = OUTLINED_FUNCTION_20_4();
        OUTLINED_FUNCTION_58_4(v429, v430, v431);
        OUTLINED_FUNCTION_47_7();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v428, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        OUTLINED_FUNCTION_53_7();
        OUTLINED_FUNCTION_17_22("No video provider of type %@ for participant %@. Falling back to displaying monogram", v432, v433, &dword_1BBC58000);

        OUTLINED_FUNCTION_19_13();
        outlined init with copy of Participant.State();
        OUTLINED_FUNCTION_11_30();
LABEL_90:
        v321 = OUTLINED_FUNCTION_44_7();
        ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v321, v322, v323, v324, v325);

        outlined destroy of ParticipantVideoOverlayView.ViewModel(v591);
        OUTLINED_FUNCTION_0_61();
LABEL_123:
        _s15ConversationKit11ParticipantVWOhTm_4();
        goto LABEL_124;
      }

      v332 = Participant.isReceivingVideoFrames.getter();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
      if (v332 & 1) != 0 && (v570)
      {
        OUTLINED_FUNCTION_1_62();
        outlined init with copy of Participant.State();
        LOBYTE(v591[0]) = 0;
        OUTLINED_FUNCTION_55_5();
        Participant.videoProvider(for:)();
        if (*(&v590[1] + 1))
        {
          outlined init with take of TapInteractionHandler(v590, &v586);
          OUTLINED_FUNCTION_1_62();
          v333 = v527;
          outlined init with copy of Participant.State();
          OUTLINED_FUNCTION_62_3();
          OUTLINED_FUNCTION_20_3();
          v335 = v528;
          (*(v334 + 16))(v528, &v118[v333]);
          Participant.contactDetails.getter();
          OUTLINED_FUNCTION_26_15();

          OUTLINED_FUNCTION_78_2();
          OUTLINED_FUNCTION_37_16();
          OUTLINED_FUNCTION_25_20();
          if (v336)
          {
            Participant.hasReducedQualityVideo.getter();
          }

          v339 = v532;
          OUTLINED_FUNCTION_52_4();
          *(v335 + v457) = v456;
          OUTLINED_FUNCTION_15_19();
          *(v335 + *(v118 + 7)) = v458;
          Participant.isKickingAvailable.getter();
          v459 = OUTLINED_FUNCTION_33_5();
          if (v460 & 1) != 0 && (v575)
          {
            v459 = Participant.canShowKickButtonOnVideoTile.getter();
          }

          OUTLINED_FUNCTION_18_25(v459);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          if (v593[0])
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v593, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
          }

          OUTLINED_FUNCTION_51_4();
          *(v335 + v469) = v470;
          OUTLINED_FUNCTION_6_38();
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          v471 = OUTLINED_FUNCTION_50_7();
          outlined init with copy of IDSLookupManager(v471, v472);
          OUTLINED_FUNCTION_64_2();

          __swift_destroy_boxed_opaque_existential_1(&v586);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          OUTLINED_FUNCTION_41_9();
          WORD4(v590[10]) = 0;
          WORD5(v590[10]) = v567 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMR);
          OUTLINED_FUNCTION_40_12();
          goto LABEL_132;
        }

        v519 = v131;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v590, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
        if (one-time initialization token for conversationKit == -1)
        {
          goto LABEL_147;
        }

        goto LABEL_193;
      }

      if (Participant.isReceivingVideoFrames.getter())
      {
        v418 = v534;
        outlined init with copy of Participant.State();
        v419 = v536;
        outlined init with copy of Participant.State();
        OUTLINED_FUNCTION_62_3();
        OUTLINED_FUNCTION_20_3();
        v421 = v524;
        (*(v420 + 16))(v524, v419 + v418);
        Participant.contactDetails.getter();
        OUTLINED_FUNCTION_26_15();

        OUTLINED_FUNCTION_78_2();
        OUTLINED_FUNCTION_37_16();
        v422 = v572;
        v423 = (v421 + *(v572 + 20));
        *v423 = type metadata accessor for Participant;
        v423[1] = v183;
        OUTLINED_FUNCTION_45_8();
        if (v424 == 1)
        {
          Participant.hasReducedQualityVideo.getter();
        }

        v461 = v523;
        OUTLINED_FUNCTION_52_4();
        *(v421 + v463) = v462;
        OUTLINED_FUNCTION_15_19();
        *(v421 + v422[7]) = v464;
        Participant.isKickingAvailable.getter();
        v465 = OUTLINED_FUNCTION_33_5();
        if (v466 & 1) != 0 && (v575)
        {
          v465 = Participant.canShowKickButtonOnVideoTile.getter();
        }

        *(v421 + v422[8]) = v465 & 1;
        OUTLINED_FUNCTION_24_17();
        *(v421 + v467) = v468;
        *(v421 + v422[10]) = v461 & 1;
        Participant.videoInfo.getter();
        OUTLINED_FUNCTION_0_61();
        _s15ConversationKit11ParticipantVWOhTm_4();
        if (v591[0])
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v591, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
        }

        OUTLINED_FUNCTION_51_4();
        *(v421 + v473) = v474;
        OUTLINED_FUNCTION_3_56();
        outlined init with take of ParticipantViewModel.ParticipantDetails();
        Participant.videoProvider(for:)();
        if (*(&v590[1] + 1))
        {
          outlined init with take of TapInteractionHandler(v590, v593);
          outlined init with copy of IDSLookupManager(v593, v590);
          Participant.videoTransform.getter();

          __swift_destroy_boxed_opaque_existential_1(v593);
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          memcpy(&v590[2] + 8, v595, 0x80uLL);
          OUTLINED_FUNCTION_9_28(v566 & 1);
          v475 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMR) + 48);
          OUTLINED_FUNCTION_3_56();
          v476 = v525;
          outlined init with take of ParticipantViewModel.ParticipantDetails();
          memcpy((v476 + v475), v590, 0xACuLL);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v519 = v131;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v590, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
          }

          *&v574 = static OS_os_log.conversationKit;
          LODWORD(v572) = static os_log_type_t.error.getter();
          v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v478 = OUTLINED_FUNCTION_54(v477);
          OUTLINED_FUNCTION_72_2(v478, xmmword_1BC4BAA20);
          String.init<A>(reflecting:)();
          OUTLINED_FUNCTION_43_7();
          v479 = MEMORY[0x1E69E6158];
          v478[3].n128_u64[1] = MEMORY[0x1E69E6158];
          v480 = lazy protocol witness table accessor for type String and conformance String();
          OUTLINED_FUNCTION_4_41(v480);
          v481 = v563;
          outlined init with copy of Participant.State();
          v482 = OUTLINED_FUNCTION_20_4();
          OUTLINED_FUNCTION_58_4(v482, v483, v484);
          OUTLINED_FUNCTION_47_7();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v481, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          v478[6].n128_u64[0] = v479;
          v478[6].n128_u64[1] = v251;
          v478[4].n128_u64[1] = v131;
          v478[5].n128_u64[0] = v219;
          os_log(_:dso:log:type:_:)("No video provider of type %@ for participant %@. Falling back to displaying monogram", 84, 2, &dword_1BBC58000, v574, v572, v478);

          OUTLINED_FUNCTION_30_9();
          outlined init with copy of Participant.State();
          OUTLINED_FUNCTION_11_30();
          v485 = OUTLINED_FUNCTION_44_7();
          ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v485, v486, v487, v488, v489);

          OUTLINED_FUNCTION_2_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          OUTLINED_FUNCTION_0_61();
          _s15ConversationKit11ParticipantVWOhTm_4();
          v131 = v519;
        }

        OUTLINED_FUNCTION_8_44();
        outlined init with take of ParticipantViewModel.ParticipantDetails();
        goto LABEL_32;
      }

      if (*(v183 + *(v219 + 28)) || (v574 & 1) != 0)
      {
        OUTLINED_FUNCTION_1_62();
        OUTLINED_FUNCTION_30_9();
        outlined init with copy of Participant.State();
        OUTLINED_FUNCTION_11_30();
        v187 = OUTLINED_FUNCTION_44_7();
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_1_62();
      outlined init with copy of Participant.State();
      LOBYTE(v591[0]) = 1;
      OUTLINED_FUNCTION_55_5();
      Participant.videoProvider(for:)();
      v519 = v131;
      if (*(&v590[1] + 1))
      {
        outlined init with take of TapInteractionHandler(v590, &v586);
        OUTLINED_FUNCTION_1_62();
        v445 = v520;
        outlined init with copy of Participant.State();
        OUTLINED_FUNCTION_62_3();
        OUTLINED_FUNCTION_20_3();
        v447 = v526;
        (*(v446 + 16))(v526, &v118[v445]);
        Participant.contactDetails.getter();
        v448 = *&v590[0];
        OUTLINED_FUNCTION_34_13();

        Participant.name(_:)();
        OUTLINED_FUNCTION_37_16();
        OUTLINED_FUNCTION_68_1();
        v450 = (v447 + v449);
        *v450 = v448;
        v450[1] = v183;
        OUTLINED_FUNCTION_45_8();
        if (v451)
        {
          Participant.hasReducedQualityVideo.getter();
        }

        OUTLINED_FUNCTION_38_10();
        *(v526 + v505) = v504;
        OUTLINED_FUNCTION_16_29();
        *(v508 + *(v506 + 28)) = v507;
        Participant.isKickingAvailable.getter();
        v509 = OUTLINED_FUNCTION_33_5();
        if (v510 & 1) != 0 && (v575)
        {
          v509 = Participant.canShowKickButtonOnVideoTile.getter();
        }

        v511 = v572;
        v512 = v526;
        *(v526 + *(v572 + 32)) = v509 & 1;
        *(v512 + *(v511 + 36)) = v578;
        *(v512 + *(v511 + 40)) = 0;
        Participant.videoInfo.getter();
        OUTLINED_FUNCTION_0_61();
        _s15ConversationKit11ParticipantVWOhTm_4();
        if (v593[0])
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v593, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
        }

        OUTLINED_FUNCTION_36_12();
        *(v526 + v513) = v514;
        OUTLINED_FUNCTION_6_38();
        outlined init with take of ParticipantViewModel.ParticipantDetails();
        v515 = OUTLINED_FUNCTION_50_7();
        outlined init with copy of IDSLookupManager(v515, v516);
        Participant.videoTransform.getter();

        __swift_destroy_boxed_opaque_existential_1(&v586);
        OUTLINED_FUNCTION_0_61();
        _s15ConversationKit11ParticipantVWOhTm_4();
        OUTLINED_FUNCTION_41_9();
        OUTLINED_FUNCTION_9_28(v566 & 1);
        v517 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMR) + 64);
        v518 = v522;
        outlined init with take of ParticipantViewModel.ParticipantDetails();
        OUTLINED_FUNCTION_65_2();
        memcpy((v518 + v517), v591, 0x69uLL);
        OUTLINED_FUNCTION_79_4(v518);
      }

      else
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v590, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
        }

        *&v574 = static OS_os_log.conversationKit;
        static os_log_type_t.error.getter();
        v490 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v491 = OUTLINED_FUNCTION_54(v490);
        *(v491 + 16) = xmmword_1BC4BAA20;
        LOBYTE(v590[0]) = v568;
        String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_43_7();
        *(v491 + 56) = MEMORY[0x1E69E6158];
        v492 = lazy protocol witness table accessor for type String and conformance String();
        OUTLINED_FUNCTION_4_41(v492);
        v493 = v563;
        outlined init with copy of Participant.State();
        v494 = OUTLINED_FUNCTION_20_4();
        __swift_storeEnumTagSinglePayload(v494, v495, v496, v573);
        specialized >> prefix<A>(_:)();
        OUTLINED_FUNCTION_47_7();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v493, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        OUTLINED_FUNCTION_53_7();
        OUTLINED_FUNCTION_17_22("No video provider of type %@ for participant %@. Falling back to displaying monogram", v497, v498, &dword_1BBC58000);

        OUTLINED_FUNCTION_19_13();
        outlined init with copy of Participant.State();
        OUTLINED_FUNCTION_11_30();
        v499 = OUTLINED_FUNCTION_44_7();
        ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v499, v500, v501, v502, v503);

        outlined destroy of ParticipantVideoOverlayView.ViewModel(v591);
        OUTLINED_FUNCTION_0_61();
        _s15ConversationKit11ParticipantVWOhTm_4();
      }

LABEL_142:
      OUTLINED_FUNCTION_8_44();
      outlined init with take of ParticipantViewModel.ParticipantDetails();
      OUTLINED_FUNCTION_0_61();
      _s15ConversationKit11ParticipantVWOhTm_4();
      v128 = v580;
      v131 = v519;
LABEL_136:
      outlined destroy of Participant.MediaInfo(&v128[v131]);
LABEL_137:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
      return (*(v409 + 8))(v128);
    case 6u:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
LABEL_11:
      v569 = a1;
      outlined init with copy of Participant.State();
      outlined init with copy of Participant.State();
      v146 = v573;
      v147 = v573[5];
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_20_3();
      (*(v148 + 16))(v19, v80 + v147);
      Participant.contactDetails.getter();
      v149 = *&v590[0];
      OUTLINED_FUNCTION_34_13();

      Participant.name(_:)();
      v151 = v150;
      v153 = v152;

      v154 = v572;
      v155 = (v19 + *(v572 + 20));
      *v155 = v151;
      v155[1] = v153;
      if (*(v80 + v146[6]) == 1)
      {
        Participant.hasReducedQualityVideo.getter();
      }

      OUTLINED_FUNCTION_52_4();
      *(v19 + v157) = v156;
      *(v19 + v154[7]) = *(v80 + v146[7]) == 0;
      Participant.isKickingAvailable.getter();
      v158 = OUTLINED_FUNCTION_33_5();
      if (v159 & 1) != 0 && (v575)
      {
        v158 = Participant.canShowKickButtonOnVideoTile.getter();
      }

      *(v19 + v154[8]) = v158 & 1;
      OUTLINED_FUNCTION_24_17();
      *(v19 + v160) = v161;
      *(v19 + v154[10]) = 0;
      Participant.videoInfo.getter();
      OUTLINED_FUNCTION_0_61();
      _s15ConversationKit11ParticipantVWOhTm_4();
      if (*&v590[0])
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v590, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
      }

      OUTLINED_FUNCTION_51_4();
      *(v19 + v162) = v163;
      OUTLINED_FUNCTION_3_56();
      outlined init with take of ParticipantViewModel.ParticipantDetails();
      v578 = (v574 & 1) == 0 && *&v83[v146[9] + 8] == 0;
      Participant.contactDetails.getter();
      v164 = *&v595[0];
      v165 = *&v595[1];

      Participant.name(_:)();
      v167 = v166;
      v169 = v168;

      v170 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_48_1(v172, v171 | 0x8000000000000000, v173, v174);
      OUTLINED_FUNCTION_43_7();

      OUTLINED_FUNCTION_1_62();
      v175 = v576;
      outlined init with copy of Participant.State();
      Participant.contactDetails.getter();

      _s15ConversationKit11ParticipantVWOhTm_4();
      v579 = v595[0];
      v574 = v595[2];
      v575 = v595[1];
      v176 = *&v595[3];
      v177 = *&v175[v146[8]];

      _s15ConversationKit11ParticipantVWOhTm_4();
      v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMR);
      v179 = v577 + *(v178 + 48);
      OUTLINED_FUNCTION_3_56();
      outlined init with take of ParticipantViewModel.ParticipantDetails();
      v180 = v574;
      v181 = v575;
      *v179 = v579;
      *(v179 + 16) = v181;
      *(v179 + 32) = v180;
      *(v179 + 48) = v176;
      *(v179 + 56) = v177;
      *(v179 + 64) = 0;
      *(v179 + 65) = v578;
      *(v179 + 72) = v167;
      *(v179 + 80) = v169;
      *(v179 + 88) = v165;
      *(v179 + 96) = v149;
      swift_storeEnumTagMultiPayload();
      return _s15ConversationKit11ParticipantVWOhTm_4();
    default:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
      OUTLINED_FUNCTION_1_62();
      OUTLINED_FUNCTION_63_4();
      OUTLINED_FUNCTION_49_6();
      ParticipantViewModel.init(invitedWebParticipant:isMostActive:isLocalMemberAuthorizedToChangeGroupMembership:)(v140, v141, v142);
LABEL_9:

      OUTLINED_FUNCTION_0_61();
      _s15ConversationKit11ParticipantVWOhTm_4();
      goto LABEL_137;
  }
}