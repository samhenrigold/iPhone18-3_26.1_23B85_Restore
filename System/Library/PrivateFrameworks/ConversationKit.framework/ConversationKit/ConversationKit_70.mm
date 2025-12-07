uint64_t closure #2 in implicit closure #2 in MultiwayViewController.startTipStateObserver()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for Tips.Status();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
  v5[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy6TipKit4TipsO6StatusOGMd, &_sScSy6TipKit4TipsO6StatusOGMR);
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMR);
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = type metadata accessor for MainActor();
  v5[19] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[20] = v10;
  v5[21] = v9;

  return MEMORY[0x1EEE6DFA0](closure #2 in implicit closure #2 in MultiwayViewController.startTipStateObserver(), v10, v9);
}

uint64_t closure #2 in implicit closure #2 in MultiwayViewController.startTipStateObserver()()
{
  OUTLINED_FUNCTION_48();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  type metadata accessor for VideoReactionPickerTip();
  OUTLINED_FUNCTION_18_63();
  lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(v4, v5);
  Tip.statusUpdates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = *MEMORY[0x1E6982B68];
  *(v0 + 192) = *MEMORY[0x1E6982AE0];
  *(v0 + 196) = v6;
  *(v0 + 176) = static MainActor.shared.getter();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 184) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_65_14(v7);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6D9C8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 168);
  v5 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](closure #2 in implicit closure #2 in MultiwayViewController.startTipStateObserver(), v5, v4);
}

{
  OUTLINED_FUNCTION_48();
  v29 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_115(v1, 1, v2);
  if (v3)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_69();

    __asm { BRAA            X1, X16 }
  }

  v7 = *(v0 + 192);
  v6 = *(v0 + 196);
  v8 = *(v0 + 72);
  v9 = *(v0 + 64);
  (*(v9 + 32))(*(v0 + 80), v1, v2);
  type metadata accessor for Tips.InvalidationReason();
  OUTLINED_FUNCTION_7_0();
  (*(v10 + 104))(v8, v7);
  v11 = OUTLINED_FUNCTION_185_5();
  v12(v11, v6, v2);
  OUTLINED_FUNCTION_43_0();
  v13 = static Tips.Status.== infix(_:_:)();
  v14 = *(v9 + 8);
  v14(v8, v2);
  if (v13)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v28 = 0;
      OUTLINED_FUNCTION_17_69();
      MultiwayViewController.reactionsState.setter(&v28, v17, v18);
    }

    v19 = OUTLINED_FUNCTION_44_0();
  }

  else
  {
    v19 = *(v0 + 80);
    v20 = *(v0 + 56);
  }

  v14(v19, v20);
  *(v0 + 176) = static MainActor.shared.getter();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 184) = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_65_14(v21);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6D9C8](v23, v24, v25);
}

uint64_t MultiwayViewController.stopTipStateObserver()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipDisplayStateObservationTask;
  v2 = MEMORY[0x1E69E7CA8];
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipDisplayStateObservationTask))
  {

    MEMORY[0x1BFB21000](v3, v2 + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  *(v0 + v1) = 0;

  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipStatusObservationTask;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipStatusObservationTask))
  {

    MEMORY[0x1BFB21000](v5, v2 + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  *(v0 + v4) = 0;
}

void *MultiwayViewController.avcEffects.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_avcEffects;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void MultiwayViewController.avcEffects.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_avcEffects;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MultiwayViewController.didExpandIncomingCallBanner.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didExpandIncomingCallBanner;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t MultiwayViewController.isInCallEndedBlockAndReportFlow.setter(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_6_0(v3 + *a2, a2);
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

void key path getter for MultiwayViewController.didExpandIncomingCallBanner : MultiwayViewController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didExpandIncomingCallBanner;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void MultiwayViewController.didExpandIncomingCallBanner.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didExpandIncomingCallBanner;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
  }
}

uint64_t MultiwayViewController.didExpandIncomingCallBanner.modify()
{
  v0 = OUTLINED_FUNCTION_39_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_7(v1);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_28_3();
}

uint64_t MultiwayViewController.didExpandActiveVideoCallFromBanner.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController__cachedDidExpandActiveVideoCallFromBanner;
  LODWORD(v0) = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController__cachedDidExpandActiveVideoCallFromBanner);
  if (v0 == 2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
    v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    swift_beginAccess();
    outlined init with copy of IDSLookupManager(v3 + v4, v17);
    v5 = v18;
    v6 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v7 = v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
    swift_beginAccess();
    v8 = *(v7 + 8);
    v9 = *(v6 + 104);
    v10 = swift_unknownObjectRetain();
    v9(&v15, v10, v8, v5, v6);
    swift_unknownObjectRelease();
    if (v16)
    {
      outlined init with take of TapInteractionHandler(&v15, v20);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v11 = v21;
      v12 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      if ((*(v12 + 288))(v11, v12) == 2)
      {
        v0 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didExpandIncomingCallBanner;
        swift_beginAccess();
        LOBYTE(v0) = *(v1 + v0);
      }

      else
      {
        LOBYTE(v0) = 0;
      }

      v13 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didExpandIncomingCallBanner;
      swift_beginAccess();
      if (*(v1 + v13) == 1)
      {
        *(v1 + v2) = v0;
      }

      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v15, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      __swift_destroy_boxed_opaque_existential_1(v17);
      LOBYTE(v0) = 0;
    }
  }

  return v0 & 1;
}

void MultiwayViewController.ViewContent.callControlsViewController.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

void *MultiwayViewController.ViewContent.localParticipantViewButtonShelfView.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.effectsViewController.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.effectsBrowserContainerViewController.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.effectsBrowserViewController.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.floatingControlsView.getter()
{
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.participantLabelsView.getter()
{
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.bottomControlsView.getter()
{
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.oneToOneShutterButton.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.oneToOneLivePhotoAlertView.getter()
{
  v1 = *(v0 + 136);
  v2 = v1;
  return v1;
}

uint64_t MultiwayViewController.ViewContent.localParticipantDragController.setter(uint64_t a1)
{

  *(v1 + 152) = a1;
  return result;
}

uint64_t MultiwayViewController.ViewContent.captionsViewDragController.setter(uint64_t a1)
{

  *(v1 + 160) = a1;
  return result;
}

void *MultiwayViewController.ViewContent.screenSharingSnapshotView.getter()
{
  v1 = *(v0 + 168);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.changeLayoutButton.getter()
{
  v1 = *(v0 + 176);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.changeLayoutButtonBackgroundView.getter()
{
  v1 = *(v0 + 184);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.deskViewButton.getter()
{
  v1 = *(v0 + 192);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.topCornerButtonsStackView.getter()
{
  v1 = *(v0 + 200);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.reactionsViewController.getter()
{
  v1 = *(v0 + 208);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.reactionPickerTipView.getter()
{
  v1 = *(v0 + 216);
  v2 = v1;
  return v1;
}

void *MultiwayViewController.ViewContent.sensitiveContentShield.getter()
{
  v1 = *(v0 + 224);
  v2 = v1;
  return v1;
}

uint64_t MultiwayViewController.ViewContent.participantsViewControllers.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit26ParticipantsViewController_pGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit26ParticipantsViewController_pGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC4BE790;
  v2 = *(v0 + 8);
  *(v1 + 56) = type metadata accessor for ParticipantGridViewController(0);
  *(v1 + 64) = &protocol witness table for ParticipantGridViewController;
  *(v1 + 32) = v2;
  v3 = *v0;
  *(v1 + 96) = type metadata accessor for ParticipantListViewController();
  *(v1 + 104) = &protocol witness table for ParticipantListViewController;
  *(v1 + 72) = v3;
  v4 = *(v0 + 24);
  *(v1 + 136) = type metadata accessor for InCallBannerHostViewController();
  *(v1 + 144) = &protocol witness table for InCallBannerHostViewController;
  *(v1 + 112) = v4;
  v5 = *(v0 + 104);
  *(v1 + 176) = type metadata accessor for MostActiveParticipantViewController(0);
  *(v1 + 184) = &protocol witness table for MostActiveParticipantViewController;
  *(v1 + 152) = v5;
  v6 = *(v0 + 144);
  *(v1 + 216) = type metadata accessor for CaptionsViewController(0);
  *(v1 + 224) = &protocol witness table for CaptionsViewController;
  *(v1 + 192) = v6;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  return v1;
}

uint64_t MultiwayViewController.ViewContent.allViews.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_37_0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BAC30;
  v3 = *(v0 + 56);
  *(v2 + 32) = v3;
  v81 = v2;
  v4 = MultiwayViewController.ViewContent.participantsViewControllers.getter();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    v7 = v3;
    do
    {
      outlined init with copy of IDSLookupManager(v6, v80);
      v8 = OUTLINED_FUNCTION_43_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
      v10 = OUTLINED_FUNCTION_24_1();
      type metadata accessor for NSObject(v10, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
      if (swift_dynamicCast())
      {
        v11 = [v79[0] view];
        if (v11)
        {
          v12 = v11;
          OUTLINED_FUNCTION_229_3();
          OUTLINED_FUNCTION_140_6();
          v15 = *(v13 + 16);
          v14 = *(v13 + 24);
          if (v15 >= v14 >> 1)
          {
            OUTLINED_FUNCTION_59_3(v14);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          OUTLINED_FUNCTION_1_5();
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v2 = v81;
        }

        else
        {
        }
      }

      v6 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {
    v16 = v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16UIViewControllerCSgGMd, &_ss23_ContiguousArrayStorageCySo16UIViewControllerCSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BE790;
  v18 = *(v0 + 72);
  v92[0] = *(v0 + 80);
  v19 = v92[0];
  v92[1] = v18;
  *(inited + 32) = v18;
  *(inited + 40) = v19;
  v20 = *(v0 + 88);
  v91 = *(v0 + 208);
  v21 = v91;
  *(inited + 48) = v20;
  *(inited + 56) = v21;
  v80[0] = *(v0 + 32);
  v22 = *&v80[0];
  *(inited + 64) = *&v80[0];
  if (v18)
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v23 = v20;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v24 = v18;
    v25 = [v24 view];
    if (v25)
    {
      v26 = v25;
      OUTLINED_FUNCTION_229_3();
      OUTLINED_FUNCTION_140_6();
      v29 = *(v27 + 16);
      v28 = *(v27 + 24);
      if (v29 >= v28 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v28);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_2_40();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v2 = v81;
      v1 = v0;
      if (!v19)
      {
        goto LABEL_25;
      }
    }

    else
    {

      if (!v19)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v30 = v20;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (!v19)
    {
      goto LABEL_25;
    }
  }

  v31 = [v19 view];
  if (!v31)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, &_s15ConversationKit37EffectsBrowserContainerViewControllerCSgMd, &_s15ConversationKit37EffectsBrowserContainerViewControllerCSgMR);
    if (!v20)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  v32 = v31;
  OUTLINED_FUNCTION_229_3();
  OUTLINED_FUNCTION_117_3();
  if (v34)
  {
    OUTLINED_FUNCTION_59_3(v33);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  OUTLINED_FUNCTION_206();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, &_s15ConversationKit37EffectsBrowserContainerViewControllerCSgMd, &_s15ConversationKit37EffectsBrowserContainerViewControllerCSgMR);

  v2 = v81;
LABEL_25:
  if (!v20)
  {
    goto LABEL_33;
  }

LABEL_26:
  v35 = v20;
  v36 = [v35 view];
  if (v36)
  {
    v37 = v1;
    v38 = v36;
    OUTLINED_FUNCTION_229_3();
    OUTLINED_FUNCTION_140_6();
    v41 = *(v39 + 16);
    v40 = *(v39 + 24);
    if (v41 >= v40 >> 1)
    {
      OUTLINED_FUNCTION_59_3(v40);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    OUTLINED_FUNCTION_2_40();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v2 = v81;
    v1 = v37;
  }

  else
  {
  }

LABEL_33:
  if (!v21)
  {
    goto LABEL_38;
  }

  v42 = [v21 view];
  if (v42)
  {
    v43 = v42;
    OUTLINED_FUNCTION_229_3();
    OUTLINED_FUNCTION_117_3();
    if (v34)
    {
      OUTLINED_FUNCTION_59_3(v44);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    OUTLINED_FUNCTION_206();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v91, &_s15ConversationKit33VideoReactionPickerViewControllerCSgMd, &_s15ConversationKit33VideoReactionPickerViewControllerCSgMR);

    v2 = v81;
LABEL_38:
    if (!v22)
    {
      goto LABEL_46;
    }

    goto LABEL_39;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v91, &_s15ConversationKit33VideoReactionPickerViewControllerCSgMd, &_s15ConversationKit33VideoReactionPickerViewControllerCSgMR);
  if (!v22)
  {
    goto LABEL_46;
  }

LABEL_39:
  v45 = [v22 view];
  if (v45)
  {
    v46 = v45;
    OUTLINED_FUNCTION_229_3();
    OUTLINED_FUNCTION_117_3();
    if (v34)
    {
      OUTLINED_FUNCTION_59_3(v47);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    OUTLINED_FUNCTION_206();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v80, &_s15ConversationKit30CallControlsPlatformController_pSgMd, &_s15ConversationKit30CallControlsPlatformController_pSgMR);

    v2 = v81;
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v80, &_s15ConversationKit30CallControlsPlatformController_pSgMd, &_s15ConversationKit30CallControlsPlatformController_pSgMR);
  }

LABEL_46:
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd, &_ss23_ContiguousArrayStorageCySo6UIViewCSgGMR);
  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_1BC4D2600;
  v79[0] = *(v1 + 96);
  v49 = *(v1 + 112);
  v89 = *(v1 + 120);
  v50 = v89;
  v90 = v49;
  *(v48 + 32) = v79[0];
  *(v48 + 40) = v49;
  v51 = *(v1 + 128);
  v87 = *(v1 + 136);
  v52 = v87;
  v88 = v51;
  *(v48 + 48) = v50;
  *(v48 + 56) = v51;
  v53 = *(v1 + 168);
  v85 = *(v1 + 176);
  v54 = v85;
  v86 = v53;
  *(v48 + 64) = v52;
  *(v48 + 72) = v53;
  v84 = *(v1 + 184);
  v55 = v84;
  *(v48 + 80) = v54;
  *(v48 + 88) = v55;
  v56 = *(v1 + 216);
  v82 = *(v1 + 224);
  v57 = v82;
  v83 = v56;
  *(v48 + 96) = v56;
  *(v48 + 104) = v57;
  OUTLINED_FUNCTION_93_8(v79, v58, v59);
  OUTLINED_FUNCTION_93_8(&v90, v60, v61);
  OUTLINED_FUNCTION_93_8(&v89, v62, v63);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_93_8(&v86, v64, v65);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_93_8(&v84, v66, v67);
  OUTLINED_FUNCTION_93_8(&v83, v68, v69);
  OUTLINED_FUNCTION_93_8(&v82, v70, v71);
  for (i = 32; i != 112; i += 8)
  {
    v73 = *(v48 + i);
    if (v73)
    {
      v74 = v73;
      MEMORY[0x1BFB20CC0]();
      OUTLINED_FUNCTION_140_6();
      v77 = *(v75 + 16);
      v76 = *(v75 + 24);
      if (v77 >= v76 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v76);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_45_1();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v2 = v81;
    }
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  return v2;
}

__n128 MultiwayViewController.ViewContent.init(listViewController:gridViewController:controlsViewController:inCallBannerHostViewController:callControlsViewController:constraintController:floatingLocalParticipantView:localParticipantViewButtonShelfView:effectsViewController:effectsBrowserContainerViewController:effectsBrowserViewController:floatingControlsView:mostActiveParticipantViewController:participantLabelsView:bottomControlsView:oneToOneShutterButton:oneToOneLivePhotoAlertView:captionsViewController:localParticipantDragController:captionsViewDragController:screenSharingSnapshotView:changeLayoutButton:changeLayoutButtonBackgroundView:deskViewButton:topCornerButtonsStackView:reactionsViewController:reactionPickerTipView:sensitiveContentShield:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __n128 a19, uint64_t a20)
{
  result = a19;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 160) = a16;
  *(a9 + 176) = a17;
  *(a9 + 192) = a18;
  *(a9 + 208) = a19;
  *(a9 + 224) = a20;
  return result;
}

uint64_t MultiwayViewController.controlsMode.getter(uint64_t a1)
{
  v2 = MultiwayViewController.call.getter();
  v3 = [v2 isConversation];

  if (v3 && (v4 = [objc_opt_self() sharedInstance], v5 = MultiwayViewController.call.getter(), v6 = objc_msgSend(v4, sel_activeConversationForCall_, v5), v4, v5, v7 = objc_msgSend(v6, sel_link), v6, v7) && (v7, v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController), v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState, swift_beginAccess(), v10 = *(v8 + v9), (v10 - 1) <= 1))
  {
    if (v10 == 2)
    {
      return 65;
    }

    else
    {
      return 64;
    }
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
    v13 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    swift_beginAccess();
    if ((*(v12 + v13) - 1) > 1)
    {
      return 0;
    }

    else
    {
      v14 = MultiwayViewController.call.getter();
      v15 = [v14 isConversation];

      if (v15)
      {
        v16 = *(v12 + v13) == 1;
      }

      else
      {
        v16 = 0;
      }

      return v16 | 0x20u;
    }
  }
}

uint64_t MultiwayViewController.call.getter()
{
  v0 = OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_113_4();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  objc_opt_self();
  OUTLINED_FUNCTION_235();
  swift_dynamicCastObjCClassUnconditional();
  OUTLINED_FUNCTION_28_0();
  swift_unknownObjectRetain();
  return v0;
}

uint64_t MultiwayViewController.isLocalMemberAuthorizedToChangeGroupMembership.getter()
{
  ConversationController.lookupActiveConversation()();
  v0 = v3;
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(v2, v3);
    v0 = Conversation.isLocalMemberAuthorizedToChangeGroupMembership()();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  return v0 & 1;
}

void *MultiwayViewController.viewContent.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_178_1(__src);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  return memcpy(a1, __src, 0xE8uLL);
}

uint64_t MultiwayViewController.viewContent.setter()
{
  OUTLINED_FUNCTION_3_5(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent, &v4);
  OUTLINED_FUNCTION_178_1(v5);
  v1 = OUTLINED_FUNCTION_75_1();
  memcpy(v1, v2, 0xE8uLL);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
}

uint64_t MultiwayViewController.isModallyPresentingCallDetails.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator);
  if (!v1)
  {
    return 0;
  }

  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v3 = v1;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

void *MultiwayViewController.sensitiveContentController.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController;
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController];
  v3 = v2;
  if (v2 == 1)
  {
    v3 = closure #1 in MultiwayViewController.sensitiveContentController.getter(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v3;

    outlined consume of TranslationTextView??(v4);
  }

  outlined copy of TranslationTextView??(v2);
  return v3;
}

uint64_t MultiwayViewController.sensitiveContentController.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController) = a1;
  return outlined consume of TranslationTextView??(v2);
}

void *closure #1 in MultiwayViewController.sensitiveContentController.getter(char *a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.nudityDetectionEnabled.getter() & 1) == 0)
  {
    return 0;
  }

  v2 = *&a1[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController];
  type metadata accessor for SensitiveContentController();
  swift_allocObject();
  return SensitiveContentController.init(multiwayViewController:conversationController:)(a1, v2);
}

uint64_t MultiwayViewController.sensitiveContentController.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = MultiwayViewController.sensitiveContentController.getter();
  return OUTLINED_FUNCTION_8_1();
}

uint64_t MultiwayViewController.sensitiveContentController.modify(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController);
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController) = *a1;
  if (a2)
  {

    outlined consume of TranslationTextView??(v3);
  }

  else
  {

    return outlined consume of TranslationTextView??(v3);
  }
}

void *MultiwayViewController.inCallControlsDismissTimer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_inCallControlsDismissTimer);
  v2 = v1;
  return v1;
}

void MultiwayViewController.inCallControlsDismissTimer.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_inCallControlsDismissTimer);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_inCallControlsDismissTimer) = a1;
}

id MultiwayViewController.pipZoomControl.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);

  return v3;
}

void MultiwayViewController.pipZoomControl.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void MultiwayViewController.shouldShowZoomControls.didset(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_shouldShowZoomControls) != (result & 1))
  {
    MultiwayViewController.updateZoomControls(for:)(0xFCu);
  }
}

void MultiwayViewController.updateZoomControls(for:)(unsigned __int8 a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v2 + v4), sizeof(__dst));
  memcpy(v20, (v2 + v4), sizeof(v20));
  if (getEnumTag for TapInteraction.EventType(v20) != 1)
  {
    v9 = a1;
    if (a1 >= 0xFCu)
    {
      v10 = v20[6];
      v11 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
      swift_beginAccess();
      v9 = *(v10 + v11);
    }

    if (*(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_shouldShowZoomControls) == 1 && v9 >> 6 >= 2 && v9 == 128)
    {
      v12 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl;
      swift_beginAccess();
      v13 = *(v2 + v12);
      v14 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x228);
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      v15 = v13;
      v16 = v14();

      if (v16)
      {
        MultiwayViewController.showZoomControl()();
LABEL_16:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
        return;
      }
    }

    else
    {
      memcpy(v18, __dst, sizeof(v18));
      outlined init with copy of MultiwayViewController.ViewContent(v18, &v17);
    }

    MultiwayViewController.hideZoomControl()();
    goto LABEL_16;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Log.default);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1BBC58000, v6, v7, "PipZoomControl: Not able to update because of missing view content", v8, 2u);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
  }
}

void MultiwayViewController.shouldShowZoomControls.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_shouldShowZoomControls);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_shouldShowZoomControls) = a1;
  MultiwayViewController.shouldShowZoomControls.didset(v2);
}

uint64_t MultiwayViewController.cameraBlurAllowedForCurrentCaptionsState.getter(__n128 a1)
{
  if (MultiwayViewController.isCaptioningEnabled.getter())
  {
    return [objc_opt_self() allowsPortraitBlurWhenCaptionsEnabled];
  }

  else
  {
    return 1;
  }
}

uint64_t MultiwayViewController.isCaptioningEnabled.getter()
{

  CaptioningStateManager.isCaptioningEnabled.getter();
  OUTLINED_FUNCTION_247();

  return v0 & 1;
}

uint64_t MultiwayViewController.captionsPausedState.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsPausedState;
  result = OUTLINED_FUNCTION_9_67(a1);
  *a2 = *(v2 + v4);
  return result;
}

uint64_t MultiwayViewController.captionsPausedState.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsPausedState;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t MultiwayViewController.isScreenSharing.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_201_3();
  OUTLINED_FUNCTION_3_0();
  v2 = swift_beginAccess();
  OUTLINED_FUNCTION_135_3(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15, v16, v17, v18, v19, v20);
  OUTLINED_FUNCTION_46_26(v21);
  if (v10)
  {
    return 0;
  }

  v11 = *(v1 + 16);
  v12 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isScreenSharing;
  OUTLINED_FUNCTION_113_4();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v11 + v12);
}

id MultiwayViewController.mutedBannerViewController.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mutedBannerViewController;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);

  return v3;
}

void MultiwayViewController.mutedBannerViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mutedBannerViewController;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MultiwayViewController.deviceOrientation.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for MultiwayViewController.deviceOrientation : MultiwayViewController(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t MultiwayViewController.deviceOrientation.didset(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (one-time initialization token for default == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, &static Log.default);
  v10 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136315138;
    v15 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
    swift_beginAccess();
    v21[1] = *&v10[v15];
    type metadata accessor for CNKDeviceOrientation(0);
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1BBC58000, v11, v12, "Device Orientation has changed: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1BFB23DF0](v14, -1, -1);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
  }

  v19 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
  swift_beginAccess();
  ConversationController.deviceOrientation.setter(*&v10[v19]);
  if (*&v10[v19] != a1)
  {
    MultiwayViewController.updatePhoneLocalParticipantControlOrientation()();
  }

  MultiwayViewController.updateViewConstraints()();
  result = MultiwayViewController.didUpdateLocalParticipantOrientation(_:)(*&v10[v19]);
  if (*&v10[v19] != a1 && v10[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState] == 1)
  {
    return MultiwayViewController.toggleReactionsView()(result);
  }

  return result;
}

void MultiwayViewController.updatePhoneLocalParticipantControlOrientation()()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (!v4)
  {
    v5 = [v2 currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6)
    {
      goto LABEL_7;
    }

    swift_beginAccess();
    if (static AmbientState.isPresented != 1)
    {
      goto LABEL_7;
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
    {
LABEL_7:
      v7 = &v1[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
      swift_beginAccess();
      memcpy(__dst, v7, sizeof(__dst));
      if (getEnumTag for TapInteraction.EventType(__dst) != 1)
      {
        v8 = *(v7 + 7);
        v9 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost;
        swift_beginAccess();
        if (*&v8[v9])
        {
          v10 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
          swift_beginAccess();
          v11 = *&v1[v10];
          v12 = v8;
          LocalParticipantView.updateButtonShelfRotation(for:)(v11);
          v13 = swift_allocObject();
          *(v13 + 16) = v1;
          *(v13 + 24) = v12;
          v14 = v12;
          v15 = v1;
          if (LocalParticipantView.canSetControlButtonAlphaDuringRotation.getter())
          {
            v16 = objc_opt_self();
            v17 = swift_allocObject();
            *(v17 + 16) = v15;
            *(v17 + 24) = v14;
            v37 = partial apply for closure #2 in MultiwayViewController.updatePhoneLocalParticipantControlOrientation();
            v38 = v17;
            aBlock = MEMORY[0x1E69E9820];
            v34 = 1107296256;
            v35 = thunk for @escaping @callee_guaranteed () -> ();
            v36 = &block_descriptor_724;
            v18 = _Block_copy(&aBlock);
            v19 = v14;
            v20 = v15;

            v21 = swift_allocObject();
            *(v21 + 16) = partial apply for closure #1 in MultiwayViewController.updatePhoneLocalParticipantControlOrientation();
            *(v21 + 24) = v13;
            v37 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
            v38 = v21;
            aBlock = MEMORY[0x1E69E9820];
            v34 = 1107296256;
            v35 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
            v36 = &block_descriptor_730;
            v22 = _Block_copy(&aBlock);

            [v16 animateWithDuration:v18 animations:v22 completion:0.1];
            _Block_release(v22);
            _Block_release(v18);
            v23 = swift_allocObject();
            *(v23 + 16) = v20;
            *(v23 + 24) = v19;
            v37 = partial apply for closure #4 in MultiwayViewController.updatePhoneLocalParticipantControlOrientation();
            v38 = v23;
            aBlock = MEMORY[0x1E69E9820];
            v34 = 1107296256;
            v35 = thunk for @escaping @callee_guaranteed () -> ();
            v36 = &block_descriptor_736;
            v24 = _Block_copy(&aBlock);
            v25 = v19;
            v26 = v20;

            [v16 animateWithDuration:0 delay:v24 options:0 animations:0.1 completion:0.3];

            _Block_release(v24);
          }

          else
          {
            v27 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl;
            swift_beginAccess();
            v28 = *&v15[v27];
            v29 = LocalParticipantView.controlRotation(for:)(*&v1[v10]);
            v30 = *((*MEMORY[0x1E69E7D40] & *v28) + 0x1D0);
            v31 = v28;
            v30(v29);

            LocalParticipantView.updateShelfPiPControls(for:)(*&v1[v10]);
            v32 = [v14 superview];
            [v32 layoutIfNeeded];
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall MultiwayViewController.updateViewConstraints()()
{
  v1 = v0;
  v57.receiver = v0;
  v57.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v57, sel_updateViewConstraints);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_150_1(__src);
  OUTLINED_FUNCTION_150_1(v59);
  OUTLINED_FUNCTION_46_26(v59);
  if (!v2)
  {
    v3 = memcpy(__dst, __src, sizeof(__dst));
    OUTLINED_FUNCTION_217_4(v3, v4, v5, v6, v7, v8, v9, v10, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
    v11 = [v0 view];
    if (v11)
    {
      v12 = v11;
      v13 = v60;
      [v11 safeAreaInsetFrame];
      OUTLINED_FUNCTION_40_1();

      MultiwayViewController.localParticipantOrientation.getter();
      v14 = OUTLINED_FUNCTION_35();
      MultiwayViewConstraintsController.update(for:deviceOrientation:)(v15, v14, v16, v17, v18);
      v19 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner;
      OUTLINED_FUNCTION_113_4();
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v20 = v1[v19];
      v21 = [v1 view];
      if (v21)
      {
        v22 = v21;
        v23 = (v13 + OBJC_IVAR___CNKFaceTimeConstraintsController_viewControllerLayout);
        v24 = *(v13 + OBJC_IVAR___CNKFaceTimeConstraintsController_viewControllerLayout + 24);
        v25 = v23[4];
        __swift_project_boxed_opaque_existential_1(v23, v24);
        (*(v25 + 48))(v20, v22, v24, v25);

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__src, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t MultiwayViewController.didUpdateLocalParticipantOrientation(_:)(uint64_t a1)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for Participant(0);
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    goto LABEL_17;
  }

  v11 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v59, (v2 + v11), sizeof(v59));
  memcpy(v60, (v2 + v11), 0xE8uLL);
  result = getEnumTag for TapInteraction.EventType(v60);
  if (result == 1)
  {
    return result;
  }

  v12 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations;
  v13 = swift_beginAccess();
  if (!*(v2 + v12) && !MultiwayViewController.isPipped.getter(v13))
  {
    memcpy(v58, v59, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v58, v57);
    result = ConversationController.visibleParticipants.getter();
    v47 = *(result + 16);
    if (!v47)
    {

      goto LABEL_6;
    }

    v38 = v2;
    v14 = 0;
    v45 = result + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v43 = v60[0];
    v44 = v60[1];
    v41 = v60[13];
    v42 = v60[3];
    v40 = v60[18];
    v39 = xmmword_1BC4BE790;
    v46 = result;
    while (v14 < *(result + 16))
    {
      v55 = v14 + 1;
      _s15ConversationKit11ParticipantVWOcTm_16();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit26ParticipantsViewController_pGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit26ParticipantsViewController_pGMR);
      v15 = swift_allocObject();
      *(v15 + 16) = v39;
      v16 = type metadata accessor for ParticipantGridViewController(0);
      *(v15 + 56) = v16;
      v51 = v16;
      *(v15 + 64) = &protocol witness table for ParticipantGridViewController;
      v17 = v44;
      *(v15 + 32) = v44;
      *(v15 + 96) = type metadata accessor for ParticipantListViewController();
      *(v15 + 104) = &protocol witness table for ParticipantListViewController;
      v18 = v43;
      *(v15 + 72) = v43;
      *(v15 + 136) = type metadata accessor for InCallBannerHostViewController();
      *(v15 + 144) = &protocol witness table for InCallBannerHostViewController;
      v19 = v42;
      *(v15 + 112) = v42;
      v52 = (v15 + 112);
      *(v15 + 176) = type metadata accessor for MostActiveParticipantViewController(0);
      *(v15 + 184) = &protocol witness table for MostActiveParticipantViewController;
      v20 = v41;
      *(v15 + 152) = v41;
      v53 = (v15 + 152);
      *(v15 + 216) = type metadata accessor for CaptionsViewController(0);
      *(v15 + 224) = &protocol witness table for CaptionsViewController;
      v21 = v40;
      *(v15 + 192) = v40;
      v54 = (v15 + 192);
      __swift_project_boxed_opaque_existential_1((v15 + 32), v16);
      v50 = off_1F3ADF178[0];
      v22 = v17;
      v23 = v18;
      v24 = v19;
      v25 = v20;
      v26 = v21;
      v27 = v56;
      v28 = v48;
      (v50)(v56, v48, v51, &protocol witness table for ParticipantGridViewController);
      v30 = *(v15 + 96);
      v29 = *(v15 + 104);
      __swift_project_boxed_opaque_existential_1((v15 + 72), v30);
      (*(v29 + 56))(v27, v28, v30, v29);
      v31 = *(v15 + 136);
      v32 = *(v15 + 144);
      __swift_project_boxed_opaque_existential_1(v52, v31);
      (*(v32 + 56))(v27, v28, v31, v32);
      v33 = *(v15 + 176);
      v34 = *(v15 + 184);
      __swift_project_boxed_opaque_existential_1(v53, v33);
      (*(v34 + 56))(v27, v28, v33, v34);
      v35 = *(v15 + 216);
      v36 = *(v15 + 224);
      __swift_project_boxed_opaque_existential_1(v54, v35);
      (*(v36 + 56))(v27, v28, v35, v36);
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      _s15ConversationKit11ParticipantVWOhTm_17();
      result = v46;
      v14 = v55;
      if (v47 == v55)
      {

        v2 = v38;
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  memcpy(v58, v59, 0xE8uLL);
  outlined init with copy of MultiwayViewController.ViewContent(v58, v57);
LABEL_6:
  MultiwayViewController.updatePresentationSize()();
  MultiwayViewController.needsUpdatePresentationContexts.setter(1);
  MultiwayViewController.notifyLocalParticipantAspectRatioChanged()();
  if ([*(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_featureFlags) afbEnabled])
  {
    MultiwayViewController.updateLocalParticipantVideoOrientation()();
  }

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v59, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
}

uint64_t MultiwayViewController.toggleReactionsView()(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState);
  if (v2 & 1) != 0 || (v3 = MultiwayViewController.canShowReactionsView()(), (v3))
  {
    v4 = v2 ^ 1;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.conversationKit;
    v6 = static os_log_type_t.default.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BC4BA940;
    v11[1] = v4;
    v8 = String.init<A>(reflecting:)();
    v10 = v9;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    os_log(_:dso:log:type:_:)("Toggling reaction view to %@", 28, 2, &dword_1BBC58000, v5, v6, v7);

    v11[0] = v4;
    return MultiwayViewController.reactionsState.setter(v11, &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState, MultiwayViewController.reactionsState.didset);
  }

  return v3;
}

uint64_t MultiwayViewController.deviceOrientation.modify()
{
  v2 = OUTLINED_FUNCTION_39_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_47(v3) + 32) = v0;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v1 + 24) = *(v0 + v4);
  return OUTLINED_FUNCTION_28_3();
}

uint64_t MultiwayViewController.localParticipantOrientation.getter()
{
  v1 = (*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation);
  swift_beginAccess();
  if (v1[8] == 1)
  {
    v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation);
    swift_beginAccess();
  }

  return *v1;
}

uint64_t MultiwayViewController.frontBoardInterfaceOrientation.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_frontBoardInterfaceOrientation;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void MultiwayViewController.frontBoardInterfaceOrientation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_frontBoardInterfaceOrientation;
  OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = a1;
  MultiwayViewController.frontBoardInterfaceOrientation.didset();
}

void key path getter for MultiwayViewController.frontBoardInterfaceOrientation : MultiwayViewController(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_frontBoardInterfaceOrientation;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void MultiwayViewController.frontBoardInterfaceOrientation.didset()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(__dst, v1, sizeof(__dst));
  if (getEnumTag for TapInteraction.EventType(__dst) != 1)
  {
    v2 = v1[13];
    v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_frontBoardInterfaceOrientation;
    swift_beginAccess();
    v4 = *(v0 + v3);
    v5 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_frontBoardInterfaceOrientation;
    swift_beginAccess();
    *(v2 + v5) = v4;
  }
}

uint64_t MultiwayViewController.frontBoardInterfaceOrientation.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

BOOL MultiwayViewController.wantsPIPRotationForLocalPreview.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_159();
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations;
  OUTLINED_FUNCTION_3_0();
  v5 = swift_beginAccess();
  if (*(v0 + v4))
  {
    return 0;
  }

  if (!MultiwayViewController.isPipped.getter(v5))
  {
    return 0;
  }

  v6 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_25_54();
  swift_beginAccess();
  OUTLINED_FUNCTION_190_1(v12);
  OUTLINED_FUNCTION_46_26(v12);
  if (v7)
  {
    return 0;
  }

  v8 = *(v6 + 104);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_97();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  type metadata accessor for Participant(0);
  v9 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_115(v9, 1, v8);
  if (v7)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    return 0;
  }

  v11 = *(v1 + *(v8 + 28)) == 0;
  _s15ConversationKit11ParticipantVWOhTm_17();
  return v11;
}

BOOL MultiwayViewController.isPipped.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2) == 2;
}

uint64_t MultiwayViewController.supportedDeviceOrientations.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t MultiwayViewController.supportedDeviceOrientations.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t MultiwayViewController.isOnScreen.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_2();
  static Published.subscript.getter();

  return v1;
}

void MultiwayViewController.isOnScreen.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_208();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  MultiwayViewController.isOnScreen.didset(v3);
}

uint64_t key path getter for MultiwayViewController.isOnScreen : MultiwayViewController@<X0>(_BYTE *a1@<X8>)
{
  result = MultiwayViewController.isOnScreen.getter();
  *a1 = result & 1;
  return result;
}

void MultiwayViewController.isOnScreen.didset(char a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationKit);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = a1 & 1;
    *(v7 + 8) = 1024;
    *(v7 + 10) = MultiwayViewController.isOnScreen.getter() & 1;

    _os_log_impl(&dword_1BBC58000, v5, v6, "isOnScreen oldvalue: %{BOOL}d, newValue: %{BOOL}d", v7, 0xEu);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  else
  {

    v5 = v4;
  }

  if ((MultiwayViewController.isOnScreen.getter() & 1) != (a1 & 1))
  {
    if (MultiwayViewController.isOnScreen.getter())
    {
      v8 = CFNotificationCenterGetDarwinNotifyCenter();
      if (one-time initialization token for ICSIsOnScreenNotification != -1)
      {
        swift_once();
      }

      CFNotificationCenterPostNotification(v8, static MultiwayViewController.ICSIsOnScreenNotification, 0, 0, 1u);

      MultiwayViewController.resumeUserInterface()();
    }

    else if (MultiwayViewController.isFrontmostMultiway.getter())
    {
      v9 = CFNotificationCenterGetDarwinNotifyCenter();
      if (one-time initialization token for ICSIsOffScreenNotification != -1)
      {
        swift_once();
      }

      CFNotificationCenterPostNotification(v9, static MultiwayViewController.ICSIsOffScreenNotification, 0, 0, 1u);

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v10 = (*(*static ConversationHUDMenuController.shared + 88))();
      if (v10)
      {
        (*(*v10 + 648))(0xD00000000000001DLL, 0x80000001BC51D4F0);
      }

      MultiwayViewController.pauseUserInterface()(v10);
    }

    MultiwayViewController.updateScreenSharingBlurIfNeeded()();
    MultiwayViewController.showCallDetailsIfNecessary()();
  }
}

void MultiwayViewController.resumeUserInterface()()
{
  v1 = v0;
  v2 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ParticipantViewModel(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ForegroundCollaborationState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v9 = static OS_os_log.conversationKit;
  v10 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("MultiwayViewController resuming", 31, 2, &dword_1BBC58000, v9, v10, MEMORY[0x1E69E7CC0]);
  MultiwayViewController.updateStatusBarHidden()();
  v11 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  v12 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
  swift_beginAccess();
  ConversationController.deviceOrientation.setter(*(v0 + v12));
  MultiwayViewController.updateFloatingLocalParticpantView()();
  v13 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(v42, v13, 0xE8uLL);
  if (getEnumTag for TapInteraction.EventType(v42) != 1)
  {
    v14 = v13[7];
    LocalParticipantControlsView.updateControlsAlpha(animated:)(0);
  }

  MultiwayViewController.dodgeMediaPip(visibilityDidChange:)(0);
  v15 = MultiwayViewController.conversationControlsManager.getter();
  v16 = MEMORY[0x1E69E7D40];
  if (v15)
  {
    v17 = v15;
    (*((*MEMORY[0x1E69E7D40] & *v15) + 0xA48))();
  }

  MultiwayViewController.restartAutoHideInCallControlsTimer()();
  v18 = MultiwayViewController.isOnScreen.getter();
  if (v18)
  {
    MultiwayViewController.setForegroundOrPiPRemoteVideoPresentationState()(v18);
    if (!MultiwayViewController.isPipped.getter(v19))
    {
      v20 = MultiwayViewController.conversationControlsManager.getter();
      if (v20)
      {
        v21 = v20;
        swift_storeEnumTagMultiPayload();
        (*((*v16 & *v21) + 0x8C8))(v8);
      }
    }

    v22 = MultiwayViewController.conversationControlsManager.getter();
    if (v22)
    {
      v23 = v22;
      ConversationControlsManager.showInCallHUD()();
    }

    if (MultiwayViewController.sensitiveContentController.getter())
    {

      swift_beginAccess();
      v24 = static SensitiveContentController.shieldState ^ 1;
    }

    else
    {
      v24 = 0;
    }

    if (MultiwayViewController.stoppedSendingVideoDueToOffscreen.getter())
    {
      v26 = MultiwayViewController.call.getter();
      v27 = [v26 wantsHoldMusic];

      if (((v27 | v24) & 1) == 0)
      {
        v28 = MultiwayViewController.call.getter();
        [v28 setIsSendingVideo_];

        MultiwayViewController.stoppedSendingVideoDueToOffscreen.setter(0);
      }
    }

    v29 = v11 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    swift_beginAccess();
    if (*(v29 + 16) < 0)
    {
      v30 = *(v29 + 1);
      if ((dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter() & 1) == 0)
      {
        if (ConversationController.shouldDeferStartCameraAction.getter())
        {
          ConversationController.didDeferStartCameraAction.setter(1);
        }

        else
        {
          MultiwayViewController.localVideoProvider.getter();
          v31 = v41[3];
          v32 = v41[4];
          __swift_project_boxed_opaque_existential_1(v41, v41[3]);
          (*(v32 + 32))(v30, *(v1 + v12), 1, v31, v32);
          __swift_destroy_boxed_opaque_existential_1(v41);
        }

        memcpy(v41, v13, 0xE8uLL);
        Enum = getEnumTag for TapInteraction.EventType(v41);
        if (Enum != 1)
        {
          v34 = v13[7];
          if (!MultiwayViewController.isPipped.getter(Enum))
          {
            swift_beginAccess();
            v35 = v39;
            _s15ConversationKit11ParticipantVWOcTm_16();
            v36 = v34;
            v37 = MultiwayViewController.isLocalMemberAuthorizedToChangeGroupMembership.getter();
            v38 = v40;
            ParticipantViewModel.init(participant:videoProviderType:isInGrid:isMostActive:isPipped:isPreviewingReaction:hasOtherInvitedParticipants:isLocalMemberAuthorizedToChangeGroupMembership:prefersSnapshotFadeAnimation:snapshotImage:allowsVideoCroppedByAspectRatio:shouldRegisterVideoLayers:)(v35, 2u, 0, 0, 0, 0, v37 & 1, v40, 1u, 0, 1u, 1u);
            ParticipantView.registerVideoLayers(with:)(v38);
            _s15ConversationKit11ParticipantVWOhTm_17();
          }
        }
      }
    }
  }

  else
  {
    v25 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Not resuming camera because MultiwayViewController is not onscreen", 66, 2, &dword_1BBC58000, v9, v25, MEMORY[0x1E69E7CC0]);
  }
}

void MultiwayViewController.pauseUserInterface()(uint64_t a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.conversationKit;
  v3 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("MultiwayViewController pausing", 30, 2, &dword_1BBC58000, v2, v3, MEMORY[0x1E69E7CC0]);
  v4 = [v1 navigationController];
  v5 = [v4 topViewController];

  if (v5)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
    v6 = v1;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      v8 = MultiwayViewController.sensitiveContentController.getter();
      if (v8)
      {
        SensitiveContentController.setLocalStreamSettingsBeforeBackgroundedPause()();
      }

      if (MultiwayViewController.isPipped.getter(v8) && (MultiwayViewController.isOnScreen.getter() & 1) != 0 && !MultiwayViewController.shouldPauseForRingingCall.getter())
      {
        v26 = MultiwayViewController.call.getter();
        [v26 setRemoteVideoPresentationState_];
      }

      else if (MultiwayViewController.isFrontmostMultiway.getter())
      {
        v9 = MultiwayViewController.call.getter();
        [v9 setRemoteVideoPresentationState_];

        v10 = *&v6[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController];
        ConversationController.lookupActiveConversation()();
        if (v31)
        {
          outlined init with take of TapInteractionHandler(&v30, v27);
          v11 = v28;
          v12 = v29;
          __swift_project_boxed_opaque_existential_1(v27, v28);
          if ((*(v12 + 200))(v11, v12))
          {
            v13 = MultiwayViewController.call.getter();
            v14 = [v13 isSendingVideo];

            if (v14)
            {
              v15 = 1;
            }

            else
            {
              v15 = MultiwayViewController.stoppedSendingVideoDueToOffscreen.getter();
            }

            MultiwayViewController.stoppedSendingVideoDueToOffscreen.setter(v15 & 1);
            v16 = MultiwayViewController.call.getter();
            [v16 setIsSendingVideo_];
          }

          __swift_destroy_boxed_opaque_existential_1(v27);
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v30, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
        }

        v17 = v10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
        swift_beginAccess();
        v18 = *(v17 + 8);
        ObjectType = swift_getObjectType();
        v20 = *(v18 + 208);
        swift_unknownObjectRetain();
        LODWORD(v17) = v20(ObjectType, v18);
        swift_unknownObjectRelease();
        MultiwayViewController.localVideoProvider.getter();
        v21 = v28;
        v22 = v29;
        __swift_project_boxed_opaque_existential_1(v27, v28);
        if (v17 == 1)
        {
          (*(v22 + 64))(v21, v22);
        }

        else
        {
          (*(v22 + 56))(v21, v22);
        }

        __swift_destroy_boxed_opaque_existential_1(v27);
        v23 = *&v6[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator];
        if (v23)
        {
          v24 = *((*MEMORY[0x1E69E7D40] & *v23) + 0xC8);
          v25 = v23;
          v24(0xD000000000000016, 0x80000001BC51CE20, 0);
        }
      }
    }
  }
}

void MultiwayViewController.updateScreenSharingBlurIfNeeded()()
{
  v0 = MultiwayViewController.call.getter();
  v1 = [v0 isSharingScreen];

  if (v1)
  {
    v2 = MultiwayViewController.call.getter();
    v3 = [v2 isSharingScreen];

    MultiwayViewController.updateScreenSharingSnapshotView(_:)(v3);
  }
}

Swift::Void __swiftcall MultiwayViewController.showCallDetailsIfNecessary()()
{
  v1 = v0;
  if (MultiwayViewController.conversationControlsManager.getter())
  {
    OUTLINED_FUNCTION_3_52();
    v10 = v3;
    v4 = v3;
    if (((*(v2 + 912))() & 1) != 0 && *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator))
    {
      OUTLINED_FUNCTION_244_2();
      OUTLINED_FUNCTION_4_137();
      v6 = *(v5 + 184);
      v8 = v7;
      OUTLINED_FUNCTION_262_2();
      v6(0xD00000000000003DLL);

      v9 = v4;
    }

    else
    {
      v9 = v10;
    }
  }
}

void (*MultiwayViewController.isOnScreen.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = MultiwayViewController.isOnScreen.getter() & 1;
  return MultiwayViewController.isOnScreen.modify;
}

uint64_t MultiwayViewController.$isOnScreen.getter()
{
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController__isOnScreen, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for MultiwayViewController.$isOnScreen : MultiwayViewController(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return MultiwayViewController.$isOnScreen.setter(v5);
}

uint64_t MultiwayViewController.$isOnScreen.setter(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_34();
  (*(v6 + 16))(v2, a1, v4);
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController__isOnScreen, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  v8 = OUTLINED_FUNCTION_44_0();
  return v9(v8);
}

void (*MultiwayViewController.$isOnScreen.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v1[4] = v3;
  OUTLINED_FUNCTION_9_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController__isOnScreen, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultiwayViewController.$isOnScreen.modify;
}

void MultiwayViewController.$isOnScreen.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = OUTLINED_FUNCTION_62_0();
    v6(v5);
    MultiwayViewController.$isOnScreen.setter(v3);
    v7 = OUTLINED_FUNCTION_40_2();
    v8(v7);
  }

  else
  {
    MultiwayViewController.$isOnScreen.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

void MultiwayViewController.isOnScreenPublisher.getter()
{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_62_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController__isOnScreen, &v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_41();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v8, v9, v10);
  OUTLINED_FUNCTION_235();
  Publisher.eraseToAnyPublisher()();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_49();
}

uint64_t MultiwayViewController.isVisibleForStartingCamera.getter()
{
  if ((MultiwayViewController.isOnScreen.getter() & 1) != 0 && (v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner, swift_beginAccess(), (*(v0 + v1) & 1) == 0))
  {
    v2 = dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter() ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MultiwayViewController.stoppedSendingVideoDueToOffscreen.getter()
{
  v0 = qword_1EDDB9BE8;
  if (!qword_1EDDB9BE8)
  {
    goto LABEL_7;
  }

  v1 = static MultiwayViewController._stoppedSendingVideoDueToOffscreen;
  v2 = byte_1EDDB9BF0;
  v3 = MultiwayViewController.call.getter();

  v4 = [v3 uniqueProxyIdentifier];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == v1 && v0 == v7)
  {

    return v2 & 1;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
LABEL_7:
    v2 = 0;
  }

  return v2 & 1;
}

double MultiwayViewController.stoppedSendingVideoDueToOffscreen.setter(char a1)
{
  v2 = MultiwayViewController.call.getter();
  v3 = [v2 uniqueProxyIdentifier];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  static MultiwayViewController._stoppedSendingVideoDueToOffscreen = v4;
  qword_1EDDB9BE8 = v6;
  byte_1EDDB9BF0 = a1;

  return result;
}

uint64_t MultiwayViewController.hasParticipantVideo.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasParticipantVideo;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for MultiwayViewController.hasParticipantVideo : MultiwayViewController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasParticipantVideo;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void MultiwayViewController.hasParticipantVideo.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasParticipantVideo;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BC4BA940;
    v11 = *(v1 + v3);
    v6 = String.init<A>(reflecting:)();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    v9 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("hasParticipantVideo has changed: %@", 35, 2, &dword_1BBC58000, v4, v9, v5, v11);

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong updateBackgroundStartPipAuthorizationState];
      swift_unknownObjectRelease();
    }
  }
}

id closure #1 in MultiwayViewController.dimmingLayer.getter()
{
  v0 = type metadata accessor for GlassDimmingView.GradientValues();
  MEMORY[0x1EEE9AC00](v0 - 8);
  MEMORY[0x1EEE9AC00](v1);
  type metadata accessor for GlassDimmingView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6)
  {
    static GlassDimmingView.GradientValues.bottomLargeVideo.getter();
  }

  else
  {
    static GlassDimmingView.GradientValues.topSmallVideo.getter();
  }

  dispatch thunk of GlassDimmingView.backgroundGradientValues.setter();
  v7 = [v3 currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8)
  {
    static GlassDimmingView.GradientValues.topLargeVideo.getter();
  }

  else
  {
    static GlassDimmingView.GradientValues.bottomSmallVideo.getter();
  }

  dispatch thunk of GlassDimmingView.foregroudGradientValues.setter();
  v9 = v4;
  static GlassDimmingView.videoMatrix.getter();
  dispatch thunk of GlassDimmingView.colorMatrix.setter();
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setUserInteractionEnabled_];

  return v9;
}

uint64_t MultiwayViewController.isDisplayedInBanner.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for MultiwayViewController.isDisplayedInBanner : MultiwayViewController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void MultiwayViewController.isDisplayedInBanner.didset(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner;
  swift_beginAccess();
  if (v2[v8] == v3)
  {
    return;
  }

  v9 = &v2[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
  swift_beginAccess();
  memcpy(v25, v9, sizeof(v25));
  if (getEnumTag for TapInteraction.EventType(v25) == 1)
  {
    return;
  }

  v10 = v9[6];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v11 = v10;
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v12)
  {
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v13 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BC4BA940;
  v24[0] = v2[v8];
  v15 = String.init<A>(reflecting:)();
  v17 = v16;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  v18 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("isDisplayedInBanner has changed: %@", 35, 2, &dword_1BBC58000, v13, v18, v14);

  v19 = [v2 view];
  if (v19)
  {
    v20 = v19;
    if (v2[v8] == 1)
    {
      v21 = [objc_opt_self() clearColor];
    }

    else
    {
      if (one-time initialization token for background != -1)
      {
        swift_once();
      }

      v21 = static Colors.MultiwayViewController.background;
    }

    v22 = v21;
    [v20 setBackgroundColor_];

    MultiwayViewController.updateViewConstraints()();
    v23 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
    swift_beginAccess();
    MultiwayViewController.updateViewVisibility(localParticipantState:)(v11[v23]);
  }

  else
  {
    __break(1u);
  }
}

void MultiwayViewController.updateViewVisibility(localParticipantState:)(int a1)
{
  v66 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v66);
  v4 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v61 - v6;
  v67 = type metadata accessor for Participant(0);
  v8 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v10 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = v61 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v61 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v61 - v17;
  v19 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v71, (v1 + v19), sizeof(v71));
  memcpy(v72, (v1 + v19), 0xE8uLL);
  if (getEnumTag for TapInteraction.EventType(v72) == 1)
  {
    return;
  }

  LODWORD(v63) = a1;
  v20 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner;
  swift_beginAccess();
  v21 = v20;
  v22 = 0.0;
  if ((*(v1 + v20) & 1) == 0)
  {
    v23 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isSplitViewActive;
    swift_beginAccess();
    if (*(v1 + v23))
    {
      v22 = 0.0;
    }

    else
    {
      v22 = 1.0;
    }
  }

  v61[2] = v15;
  v61[3] = v10;
  v62 = v7;
  v65 = v1;
  memcpy(v70, v71, 0xE8uLL);
  outlined init with copy of MultiwayViewController.ViewContent(v70, v69);
  if (one-time initialization token for conversationKit != -1)
  {
LABEL_41:
    swift_once();
  }

  v24 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BC4BA940;
  *v69 = v22;
  v26 = String.init<A>(reflecting:)();
  v28 = v27;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  v29 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Updating full-screen local alpha to %@", 38, 2, &dword_1BBC58000, v24, v29, v25);

  [v72[7] setAlpha_];
  [v72[15] setAlpha_];
  v30 = [v72[2] view];
  if (!v30)
  {
    __break(1u);
    goto LABEL_43;
  }

  v31 = v30;
  [v30 setAlpha_];

  v32 = *(v65 + v21);
  v33 = v63 > 0x80u;
  v34 = [v72[1] view];
  if (!v34)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = v32 | v33;
  v37 = 1.0;
  v22 = 0.0;
  if (v36)
  {
    v37 = 0.0;
  }

  [v34 setAlpha_];

  v38 = [v72[0] view];
  if (!v38)
  {
    goto LABEL_44;
  }

  v39 = v38;
  if ((v36 & 1) == 0)
  {
    if (ConversationController.isOneToOneModeEnabled.getter())
    {
      v22 = 0.0;
    }

    else
    {
      v22 = 1.0;
    }
  }

  [v39 setAlpha_];

  MultiwayViewController.mostActiveParticipants.getter();
  v41 = v40;
  v42 = 0;
  v43 = *(v40 + 16);
  v63 = MEMORY[0x1E69E7CC0];
  while (v43 != v42)
  {
    if (v42 >= *(v41 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    v21 = *(v8 + 72);
    _s15ConversationKit11ParticipantVWOcTm_16();
    if (*&v18[*(v67 + 28)])
    {
      _s15ConversationKit11ParticipantVWOcTm_16();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        _s15ConversationKit11ParticipantVWOhTm_17();
        goto LABEL_28;
      }

      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v45 = *(v44 + 48);
      v46 = &v4[*(v44 + 64)];
      outlined consume of Participant.CopresenceInfo?(*v46, v46[1], v46[2], v46[3], v46[4], v46[5], v46[6], v46[7]);
      memcpy(v69, &v4[v45], sizeof(v69));
      v47 = type metadata accessor for Date();
      (*(*(v47 - 8) + 8))(v4, v47);
      LOBYTE(v45) = v69[0];
      outlined destroy of Participant.MediaInfo(v69);
      if (v45)
      {
        goto LABEL_28;
      }

      _s15ConversationKit11ParticipantVWObTm_7();
      v48 = v63;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68[0] = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v48 = v68[0];
      }

      v50 = *(v48 + 16);
      v51 = v50 + 1;
      if (v50 >= *(v48 + 24) >> 1)
      {
        v63 = v50 + 1;
        v61[1] = v50;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v51 = v63;
        v48 = v68[0];
      }

      ++v42;
      *(v48 + 16) = v51;
      v63 = v48;
      _s15ConversationKit11ParticipantVWObTm_7();
    }

    else
    {
LABEL_28:
      _s15ConversationKit11ParticipantVWOhTm_17();
      ++v42;
    }
  }

  v52 = v62;
  specialized Collection.first.getter(v63, v62);

  if (__swift_getEnumTagSinglePayload(v52, 1, v67) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v52, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v53 = v65;
    swift_beginAccess();
    _s15ConversationKit11ParticipantVWOcTm_16();
    MostActiveParticipantViewController.focus(on:)();
  }

  else
  {
    _s15ConversationKit11ParticipantVWObTm_7();
    MostActiveParticipantViewController.focus(on:)();
    v53 = v65;
  }

  _s15ConversationKit11ParticipantVWOhTm_17();
  v54 = *(v53 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  v55 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  if (*(*(v54 + v55) + 16) >= 2uLL)
  {
    MostActiveParticipantViewController.toggleRingButtonIfNecessary(isPipped:)(1);
  }

  v56 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
  swift_beginAccess();
  if ((*(v53 + v56) == 1 || (v57 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isFullScreen, swift_beginAccess(), (*(v53 + v57) & 1) == 0)) && (v58 = *(v53 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator)) != 0)
  {
    v59 = *((*MEMORY[0x1E69E7D40] & *v58) + 0xC8);
    v60 = v58;
    v59(0xD000000000000018, 0x80000001BC51D300, 1);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
  }
}

uint64_t MultiwayViewController.isDisplayedInBanner.modify()
{
  v0 = OUTLINED_FUNCTION_39_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_7(v1);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_28_3();
}

uint64_t MultiwayViewController.isInVideoMessageFlow.getter()
{
  OUTLINED_FUNCTION_198_4();
  OUTLINED_FUNCTION_4_137();
  v1 = *(v0 + 408);
  v3 = v2;
  LOBYTE(v1) = v1();

  return v1 & 1;
}

uint64_t key path getter for MultiwayViewController.deskViewTapHandler : MultiwayViewController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deskViewTapHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
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

uint64_t key path setter for MultiwayViewController.deskViewTapHandler : MultiwayViewController(uint64_t *a1, void *a2)
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

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deskViewTapHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t MultiwayViewController.mostRecentFullScreenFocusedAspectRatio.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostRecentFullScreenFocusedAspectRatio;
  result = OUTLINED_FUNCTION_73(a1, v9);
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

uint64_t MultiwayViewController.mostRecentGridIsFullScreen.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostRecentGridIsFullScreen;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t MultiwayViewController.mostRecentGridIsFullScreen.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostRecentGridIsFullScreen;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

BOOL MultiwayViewController.localParticipantIsFullScreen.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_201_3();
  OUTLINED_FUNCTION_3_0();
  v2 = swift_beginAccess();
  OUTLINED_FUNCTION_135_3(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15, v16, v17, v18, v19, v20);
  OUTLINED_FUNCTION_46_26(v21);
  if (v10)
  {
    return 0;
  }

  v11 = *(v1 + 48);
  v12 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
  OUTLINED_FUNCTION_113_4();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v11 + v12) > 0x80u;
}

uint64_t key path getter for MultiwayViewController.windowAspectRatioHandler : MultiwayViewController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_windowAspectRatioHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
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

uint64_t key path setter for MultiwayViewController.windowAspectRatioHandler : MultiwayViewController(uint64_t *a1, void *a2)
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

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_windowAspectRatioHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for MultiwayViewController.captionsLayoutChangeHandler : MultiwayViewController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsLayoutChangeHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
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

uint64_t key path setter for MultiwayViewController.captionsLayoutChangeHandler : MultiwayViewController(uint64_t *a1, void *a2)
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

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsLayoutChangeHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for MultiwayViewController.unansweredCallDismissalHandler : MultiwayViewController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_unansweredCallDismissalHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
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

uint64_t key path setter for MultiwayViewController.unansweredCallDismissalHandler : MultiwayViewController(uint64_t *a1, void *a2)
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

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_unansweredCallDismissalHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t MultiwayViewController.deskViewTapHandler.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_6_11(a1);
  v1 = OUTLINED_FUNCTION_38_2();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v1, v2);
  return OUTLINED_FUNCTION_38_2();
}

uint64_t MultiwayViewController.deskViewTapHandler.setter()
{
  OUTLINED_FUNCTION_55();
  v4 = (v1 + *v3);
  OUTLINED_FUNCTION_73(v5, v9);
  v6 = *v4;
  v7 = v4[1];
  *v4 = v2;
  v4[1] = v0;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
}

BOOL MultiwayViewController.isShowingHUD.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_146_3(v11);
  OUTLINED_FUNCTION_46_26(v11);
  if (v2)
  {
    return 0;
  }

  v3 = *(v1 + 48);
  v4 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (!v3[v4])
  {
    return 0;
  }

  v5 = v3;
  ConversationController.lookupActiveConversation()();
  if (v10[3])
  {
    OUTLINED_FUNCTION_82_0(v10);
    v6 = OUTLINED_FUNCTION_2_14();
    v8 = v7(v6);

    __swift_destroy_boxed_opaque_existential_1(v10);
    return v8 != 0;
  }

  else
  {

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    return 1;
  }
}

uint64_t MultiwayViewController.isFullScreen.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isFullScreen;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for MultiwayViewController.isFullScreen : MultiwayViewController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isFullScreen;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void MultiwayViewController.isFullScreen.didset(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isFullScreen;
  swift_beginAccess();
  if (*(v2 + v8) != v3)
  {
    v9 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
    swift_beginAccess();
    memcpy(v21, v9, sizeof(v21));
    if (getEnumTag for TapInteraction.EventType(v21) != 1)
    {
      v10 = v9[6];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v11 = v10;
      *v7 = static OS_dispatch_queue.main.getter();
      (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
      v12 = _dispatchPreconditionTest(_:)();
      (*(v5 + 8))(v7, v4);
      if (v12)
      {
        if (one-time initialization token for conversationKit == -1)
        {
LABEL_5:
          v13 = static OS_os_log.conversationKit;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_1BC4BA940;
          v20[0] = *(v2 + v8);
          v15 = String.init<A>(reflecting:)();
          v17 = v16;
          *(v14 + 56) = MEMORY[0x1E69E6158];
          *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v14 + 32) = v15;
          *(v14 + 40) = v17;
          v18 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("isFullScreen has changed: %@", 28, 2, &dword_1BBC58000, v13, v18, v14);

          v19 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
          swift_beginAccess();
          MultiwayViewController.updateViewVisibility(localParticipantState:)(v11[v19]);
          specialized CaptionsStateController.updateCaptionsEnablement(pauseTransitionIfAllowed:)(*(v2 + v8));
          MultiwayViewController.updateSecondaryPillForSNaPIfNeeded()();

          return;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_5;
    }
  }
}

void MultiwayViewController.updateSecondaryPillForSNaPIfNeeded()()
{
  v1 = v0;
  if (Features.isNameAndPhotoC3Enabled.getter())
  {
    v2 = MultiwayViewController.call.getter();
    v3 = [v2 isConnected];

    if (v3)
    {
      v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isFullScreen;
      swift_beginAccess();
      if (*(v1 + v4) == 1)
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v5 = static NameAndPhotoUtilities.shared + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_delegate;
        swift_beginAccess();
        *(v5 + 8) = &protocol witness table for MultiwayViewController;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectWeakInit();
        specialized MultiwayViewController.getSuggestedBannerType(completion:)(v1, v6);
        MEMORY[0x1BFB23F10](v6);
      }

      else
      {
        MultiwayViewController.hideSNaPSecondaryPillIfNeeded(dueToExplicitUserAction:)(1);
      }
    }

    else
    {

      MultiwayViewController.hideSNaPSecondaryPillIfNeeded(dueToExplicitUserAction:)(0);
    }
  }
}

uint64_t MultiwayViewController.isFullScreen.modify()
{
  v0 = OUTLINED_FUNCTION_39_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_7(v1);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_28_3();
}

uint64_t MultiwayViewController.isAmbient.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isAmbient;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t MultiwayViewController.isAmbient.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isAmbient;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

id MultiwayViewController.isShownAboveCoverSheet.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_19_1(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = [Strong isShownAboveCoverSheet];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t MultiwayViewController.isPipStashed.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isPipStashed;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for MultiwayViewController.isPipStashed : MultiwayViewController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isPipStashed;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void MultiwayViewController.didRequestMemojiPicker.didset(char a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v5 = a1 & 1;
  v6 = *a2;
  OUTLINED_FUNCTION_3_0();
  v7 = swift_beginAccess();
  if (*(v3 + v6) != v5)
  {
    a3(v7);
  }
}

void MultiwayViewController.updateCanPostReactionNotice()()
{
  v1 = v0;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BAA20;
  MultiwayViewController.isPipped.getter(v3);
  v4 = String.init<A>(reflecting:)();
  v6 = v5;
  v7 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v8 = lazy protocol witness table accessor for type String and conformance String();
  *(v3 + 64) = v8;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v9 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isPipStashed;
  swift_beginAccess();
  v10 = String.init<A>(reflecting:)();
  *(v3 + 96) = v7;
  *(v3 + 104) = v8;
  *(v3 + 72) = v10;
  *(v3 + 80) = v11;
  v12 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("updateCanPostReactionNotice isPipped %{public}@ isPipStashed %{public}@", 71, 2, &dword_1BBC58000, v2, v12, v3);

  v13 = MultiwayViewController.conversationControlsManager.getter();
  v14 = MEMORY[0x1E69E7D40];
  if (v13)
  {
    v15 = v13;
    v16 = MultiwayViewController.isPipped.getter(v13);
    (*((*v14 & *v15) + 0x448))(v16);
  }

  v17 = MultiwayViewController.conversationControlsManager.getter();
  if (v17)
  {
    v18 = v17;
    if (*(v1 + v9))
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    (*((*v14 & *v18) + 0x430))(v19);
  }
}

uint64_t MultiwayViewController.isPipStashed.modify()
{
  v0 = OUTLINED_FUNCTION_39_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_7(v1);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_28_3();
}

void MultiwayViewController.isInCallEndedBlockAndReportFlow.modify(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  (a3)(*(*a1 + 32), a2);

  free(v3);
}

uint64_t MultiwayViewController.pipState.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t MultiwayViewController.deviceOrientation.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_6_0(v3 + *a2, a2);
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

void key path getter for MultiwayViewController.pipState : MultiwayViewController(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void MultiwayViewController.pipState.didset(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
  swift_beginAccess();
  if (*(v2 + v8) == a1)
  {
    return;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (one-time initialization token for conversationKit != -1)
  {
LABEL_21:
    swift_once();
  }

  v10 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BC4BAA20;
  v26 = *(v2 + v8);
  type metadata accessor for CNKPiPState(0);
  v12 = String.init<A>(reflecting:)();
  v14 = v13;
  v15 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v16 = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 64) = v16;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  LOBYTE(v26) = MultiwayViewController.isPipped.getter(v16);
  v17 = String.init<A>(reflecting:)();
  *(v11 + 96) = v15;
  *(v11 + 104) = v16;
  *(v11 + 72) = v17;
  *(v11 + 80) = v18;
  v19 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("pipState has changed: %{public}@, isPipped %{public}@", 53, 2, &dword_1BBC58000, v10, v19, v11);

  if (*(v2 + v8) == 1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v20 = (*(*static ConversationHUDMenuController.shared + 88))();
    if (v20)
    {
      (*(*v20 + 648))(0xD000000000000016, 0x80000001BC51D360);
    }
  }

  MultiwayViewController.updateTileVisibilityForPiPState()();
  switch(*(v2 + v8))
  {
    case 0:
    case 2:
      v21 = MultiwayViewController.shouldPauseForRingingCall.getter();
      if (!v21)
      {
        MultiwayViewController.setForegroundOrPiPRemoteVideoPresentationState()(v21);
      }

      break;
    case 1:
    case 3:
      MultiwayViewController.updateViewsForPiPStateChange()();
      specialized CaptionsStateController.updateCaptionsEnablement(pauseTransitionIfAllowed:)(*(v2 + v8) != 1);
      break;
    default:
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, &static Log.default);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1BBC58000, v23, v24, "Unknown enum case", v25, 2u);
        MEMORY[0x1BFB23DF0](v25, -1, -1);
      }

      break;
  }

  MultiwayViewController.showCallDetailsIfNecessary()();
  MultiwayViewController.updateCanPostReactionNotice()();
}

void MultiwayViewController.updateTileVisibilityForPiPState()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
  swift_beginAccess();
  v3 = 0.0;
  v4 = 0;
  v5 = 1.0;
  v6 = 1;
  switch(*(v1 + v2))
  {
    case 0:
    case 2:
      goto LABEL_13;
    case 1:
      goto LABEL_12;
    case 3:
      if (ConversationController.isOneToOneModeEnabled.getter())
      {
        v3 = 0.0;
      }

      else
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v3 = (*(*static Defaults.shared + 400))();
      }

LABEL_12:
      v6 = 0;
      v5 = 0.0;
      v4 = *&v3;
LABEL_13:
      MultiwayViewController.updateMostActiveParticipantTileForPiP(with:cornerRadius:)(v4, v6, v5);
      break;
    default:
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, &static Log.default);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1BBC58000, v8, v9, "Unknown enum case", v10, 2u);
        MEMORY[0x1BFB23DF0](v10, -1, -1);
      }

      break;
  }
}

Swift::Void __swiftcall MultiwayViewController.updateViewsForPiPStateChange()()
{
  OUTLINED_FUNCTION_29();
  v3 = OUTLINED_FUNCTION_159_3();
  v4 = type metadata accessor for ParticipantViewModel(v3);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52 - v8;
  v10 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  v17 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_286_1(v62);
  OUTLINED_FUNCTION_46_26(v62);
  if (!v18)
  {
    v19 = v17[6];
    LOWORD(v61[0]) = 513;
    v20 = v19;
    MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(v61);
    v21 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    MultiwayViewController.updateViewVisibility(localParticipantState:)(v20[v21]);
    OUTLINED_FUNCTION_286_1(v61);
    OUTLINED_FUNCTION_46_26(v61);
    if (!v18)
    {
      v57 = v20;
      v22 = v17[13];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      OUTLINED_FUNCTION_115(v9, 1, v10);
      if (!v18)
      {
        OUTLINED_FUNCTION_1_184();
        v56 = v16;
        _s15ConversationKit11ParticipantVWObTm_7();
        v23 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        v24 = (*(v1 + v23) - 1) < 2;
        v25 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_isVisibleInPIP;
        OUTLINED_FUNCTION_3_5(&v22[OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_isVisibleInPIP], &v60);
        v22[v25] = v24;
        v26 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        OUTLINED_FUNCTION_7_5();
        v55 = v26;
        _s15ConversationKit11ParticipantVWOcTm_16();
        v27 = v22;
        v28 = MultiwayViewController.isLocalMemberAuthorizedToChangeGroupMembership.getter();
        ParticipantViewModel.init(participant:videoProviderType:isInGrid:isMostActive:isPipped:isPreviewingReaction:hasOtherInvitedParticipants:isLocalMemberAuthorizedToChangeGroupMembership:prefersSnapshotFadeAnimation:snapshotImage:allowsVideoCroppedByAspectRatio:shouldRegisterVideoLayers:)(v13, 2u, 0, 0, 0, 0, v28 & 1, v2, 1u, 0, 1u, 1u);
        v29 = *(v1 + v23);
        v30 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
        v20 = v57;
        if (v29 == 1)
        {
          if (!*&v56[*(v10 + 28)])
          {
            v31 = MostActiveParticipantViewController.localParticipantView.getter();
            ParticipantView.registerVideoLayers(with:)(v2);

            v32 = v55 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
            OUTLINED_FUNCTION_25_54();
            swift_beginAccess();
            v30 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
            if (*(v32 + 16) < 0)
            {
              v33 = *&v27[OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___localParticipantView];
              v54 = v27;
              v34 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
              v53 = *(v32 + 1);
              OUTLINED_FUNCTION_3_0();
              swift_beginAccess();
              v35 = *(v1 + v34);
              v27 = v54;
              v36 = v33;
              v20 = v57;
              v52 = v36;
              ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(v53, v35, 1, 0);

              v30 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
            }
          }

          v29 = *(v1 + v23);
        }

        if (v29 == 3)
        {
          v37 = v30;
          v38 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isSplitViewActive;
          OUTLINED_FUNCTION_3_0();
          swift_beginAccess();
          if (*(v1 + v38))
          {
            if (one-time initialization token for conversationKit != -1)
            {
              OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
            }

            v39 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_52(v39, static Logger.conversationKit);
            v40 = Logger.logObject.getter();
            v41 = static os_log_type_t.default.getter();
            if (OUTLINED_FUNCTION_18_0(v41))
            {
              v42 = OUTLINED_FUNCTION_33();
              *v42 = 0;
              _os_log_impl(&dword_1BBC58000, v40, v41, "Not registering fullScreenMultiwayViewController local layers as splitViewMultiwayViewController is active", v42, 2u);
              OUTLINED_FUNCTION_27();
            }

            else
            {
            }

            OUTLINED_FUNCTION_22_52();
LABEL_23:
            OUTLINED_FUNCTION_0_220();
            goto LABEL_24;
          }

          OUTLINED_FUNCTION_286_1(v59);
          if (getEnumTag for TapInteraction.EventType(v59) != 1)
          {
            v43 = *(v17[7] + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView);
            ParticipantView.registerVideoLayers(with:)(v2);
          }

          v44 = (v55 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState);
          OUTLINED_FUNCTION_25_54();
          swift_beginAccess();
          if (v44[2] < 0)
          {
            v45 = *v44;
            swift_beginAccess();
            OUTLINED_FUNCTION_286_1(v58);
            OUTLINED_FUNCTION_46_26(v58);
            if (v18)
            {
              OUTLINED_FUNCTION_22_52();
              OUTLINED_FUNCTION_0_220();
              _s15ConversationKit11ParticipantVWOhTm_17();
              swift_endAccess();

              goto LABEL_25;
            }

            v55 = v45 >> 8;
            v46 = v17[7];
            swift_endAccess();
            v47 = *(v46 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView);
            v48 = v37[204];
            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            v49 = *(v1 + v48);
            v50 = v47;
            v20 = v57;
            v51 = v50;
            ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(v55, v49, 1, 0);

            OUTLINED_FUNCTION_22_52();
            goto LABEL_23;
          }
        }

        OUTLINED_FUNCTION_22_52();

        OUTLINED_FUNCTION_0_220();
LABEL_24:
        _s15ConversationKit11ParticipantVWOhTm_17();
        goto LABEL_25;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      v20 = v57;
    }

LABEL_25:
    MultiwayViewController.updateScreenSharingBlurIfNeeded()();
  }

  OUTLINED_FUNCTION_30_0();
}

void MultiwayViewController.setForegroundOrPiPRemoteVideoPresentationState()(uint64_t a1)
{
  if (MultiwayViewController.isPipped.getter(a1))
  {
    v1 = 1;
  }

  else
  {
    if ((MultiwayViewController.isOnScreen.getter() & 1) == 0)
    {
      return;
    }

    v1 = 0;
  }

  v2 = MultiwayViewController.call.getter();
  [v2 setRemoteVideoPresentationState_];
}

uint64_t MultiwayViewController.pipState.modify()
{
  v2 = OUTLINED_FUNCTION_39_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_47(v3) + 32) = v0;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v1 + 24) = *(v0 + v4);
  return OUTLINED_FUNCTION_28_3();
}

void MultiwayViewController.deviceOrientation.modify(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  (a3)(*(*a1 + 24), a2);

  free(v3);
}

uint64_t MultiwayViewController.isCaptioningEnabled.setter(Swift::Bool a1)
{

  CaptioningStateManager.setCaptioningEnabled(_:)(a1);
}

uint64_t (*MultiwayViewController.isCaptioningEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = MultiwayViewController.isCaptioningEnabled.getter() & 1;
  return MultiwayViewController.isCaptioningEnabled.modify;
}

uint64_t MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 56);
  v8 = *a1;
  v9 = a1[1];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (a1)
  {
    v11 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(v41, (v2 + v11), sizeof(v41));
    memcpy(v42, (v2 + v11), sizeof(v42));
    result = getEnumTag for TapInteraction.EventType(v42);
    if (result != 1)
    {
      memcpy(v40, v42, sizeof(v40));
      memcpy(v39, v41, 0xE8uLL);
      v38 = MEMORY[0x1E69E7CC0];
      outlined init with copy of MultiwayViewController.ViewContent(v39, v35);
      MultiwayViewController.mostActiveParticipants.getter();
      MultiwayViewController.activeRemoteParticipants(in:)();

      v12 = v8 | (v9 << 8);
      v13 = v42[1];
      specialized closure #1 in MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)();

      v14 = v42[13];
      specialized closure #1 in MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)();

      MultiwayViewController.updateFullScreenFocus(changeSource:defocusAnimationStyle:)(2, 1);
      v15 = v42[0];
      swift_beginAccess();
      v16 = v15;

      Array<A>.participants(notIn:)();

      specialized closure #1 in MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)();

      v17 = ParticipantListViewController.participantCount.getter() > 0;
      MultiwayViewController.setParticipantListState(_:animated:)(v17, 1);
      v18 = v42[4];
      if (v42[4])
      {
        v19 = v42[5];
        ObjectType = swift_getObjectType();
        v21 = v18;
        v22 = ParticipantListViewController.participantCount.getter();
        (*(v19 + 88))(v22, ObjectType, v19);
      }

      v23 = *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
      v24 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
      swift_beginAccess();
      v25 = *(v23 + v24);
      swift_beginAccess();
      v35[0] = v25;

      specialized Array.append<A>(contentsOf:)(v26);
      v27 = v35[0];
      v28 = MultiwayViewController.ViewContent.participantsViewControllers.getter();
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = v28 + 32;
        do
        {
          outlined init with copy of IDSLookupManager(v30, v35);
          v31 = v36;
          v32 = v37;
          v33 = __swift_project_boxed_opaque_existential_1(v35, v36);
          specialized closure #1 in MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(v33, v27, &v38, v12, v31, v32);
          __swift_destroy_boxed_opaque_existential_1(v35);
          v30 += 40;
          --v29;
        }

        while (v29);
      }

      MultiwayViewController.updatePresentationSize()();
      MultiwayViewController.needsUpdatePresentationContexts.setter(1);
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v41, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *MultiwayViewController.effectsViewController.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_33_42(a1, a2, a3, a4, a5, a6, a7, a8, v21);
  OUTLINED_FUNCTION_112_7(v10, v11, v12, v13, v14, v15, v16, v17, v22, v23, v24);
  getEnumTag for TapInteraction.EventType(v25);
  OUTLINED_FUNCTION_204_2();
  if (!v18)
  {
    v9 = *(v8 + 72);
    v19 = v9;
  }

  return v9;
}

void key path setter for MultiwayViewController.effectsViewController : MultiwayViewController(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  MultiwayViewController.effectsViewController.setter(v1);
}

void MultiwayViewController.effectsViewController.setter(void *a1)
{
  v2 = a1;
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_73(a1, &v6);
  OUTLINED_FUNCTION_190_1(v7);
  OUTLINED_FUNCTION_46_26(v7);
  if (!v4)
  {
    v5 = *(v3 + 72);
    *(v3 + 72) = v2;
    v2 = v5;
  }
}

uint64_t MultiwayViewController.effectsViewController.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_4_3(a1);
  *v1 = MultiwayViewController.effectsViewController.getter(v2, v3, v4, v5, v6, v7, v8, v9);
  return OUTLINED_FUNCTION_8_1();
}

void MultiwayViewController.effectsViewController.modify(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = OUTLINED_FUNCTION_200_2();
    MultiwayViewController.effectsViewController.setter(v3);
  }

  else
  {
    MultiwayViewController.effectsViewController.setter(*a1);
  }
}

uint64_t MultiwayViewController.effectsBrowserViewController.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_33_42(a1, a2, a3, a4, a5, a6, a7, a8, v24);
  OUTLINED_FUNCTION_112_7(v9, v10, v11, v12, v13, v14, v15, v16, v25, v26, v27);
  OUTLINED_FUNCTION_46_26(v28);
  if (v17 || !*(v8 + 80))
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_137();
  v19 = *(v18 + 120);
  v21 = v20;
  v22 = v19();

  return v22;
}

void key path setter for MultiwayViewController.effectsBrowserViewController : MultiwayViewController(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  MultiwayViewController.effectsBrowserViewController.setter(v1);
}

void MultiwayViewController.effectsBrowserViewController.setter(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  OUTLINED_FUNCTION_30_2(v3, v12);
  OUTLINED_FUNCTION_190_1(v13);
  OUTLINED_FUNCTION_46_26(v13);
  if (!v4)
  {
    v5 = v3[11];
    v3[11] = a1;
    v6 = a1;
  }

  swift_endAccess();
  OUTLINED_FUNCTION_190_1(v12);
  OUTLINED_FUNCTION_46_26(v12);
  if (!v4 && v3[10])
  {
    OUTLINED_FUNCTION_4_137();
    v8 = *(v7 + 128);
    v10 = v9;
    v11 = OUTLINED_FUNCTION_28_0();
    v8(v11);
    a1 = v3;
  }
}

uint64_t MultiwayViewController.effectsBrowserViewController.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_4_3(a1);
  *v1 = MultiwayViewController.effectsBrowserViewController.getter(v2, v3, v4, v5, v6, v7, v8, v9);
  return OUTLINED_FUNCTION_8_1();
}

void MultiwayViewController.effectsBrowserViewController.modify(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = OUTLINED_FUNCTION_200_2();
    MultiwayViewController.effectsBrowserViewController.setter(v3);
  }

  else
  {
    MultiwayViewController.effectsBrowserViewController.setter(*a1);
  }
}

void *MultiwayViewController.effectsBrowserContainerViewController.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_11(a1);
  OUTLINED_FUNCTION_146_3(v6);
  OUTLINED_FUNCTION_46_26(v6);
  if (v2)
  {
    return 0;
  }

  v3 = *(v1 + 80);
  if (v3)
  {
    v4 = v3;
  }

  return v3;
}

void *MultiwayViewController.captionsViewController.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(__dst, v1, sizeof(__dst));
  v2 = 0;
  if (getEnumTag for TapInteraction.EventType(__dst) != 1)
  {
    v2 = v1[18];
    v3 = v2;
  }

  return v2;
}

void *MultiwayViewController.inCallControlsViewController.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_33_42(a1, a2, a3, a4, a5, a6, a7, a8, v21);
  OUTLINED_FUNCTION_112_7(v10, v11, v12, v13, v14, v15, v16, v17, v22, v23, v24);
  getEnumTag for TapInteraction.EventType(v25);
  OUTLINED_FUNCTION_204_2();
  if (!v18)
  {
    v9 = *(v8 + 16);
    v19 = v9;
  }

  return v9;
}

uint64_t MultiwayViewController.delegate.modify()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  v3 = OUTLINED_FUNCTION_47(v2);
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_delegate;
  *(v3 + 32) = v0;
  *(v3 + 40) = v4;
  v5 = OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_30_2(v5, v6);
  *(v1 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_28_3();
}

uint64_t key path getter for MultiwayViewController.delegate : MultiwayViewController()
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_9_67(v1);
  result = swift_unknownObjectWeakLoadStrong();
  *v0 = result;
  return result;
}

uint64_t key path setter for MultiwayViewController.delegate : MultiwayViewController(uint64_t a1)
{
  OUTLINED_FUNCTION_3_12(a1);
  OUTLINED_FUNCTION_75_1();
  return swift_unknownObjectWeakAssign();
}

uint64_t MultiwayViewController.iOSDelegate.modify()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  v3 = OUTLINED_FUNCTION_47(v2);
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_iOSDelegate;
  *(v3 + 32) = v0;
  *(v3 + 40) = v4;
  v5 = OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_30_2(v5, v6);
  *(v1 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_28_3();
}

uint64_t MultiwayViewController.effectsEnabled.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsEnabled;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t MultiwayViewController.effectsEnabled.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsEnabled;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

double MultiwayViewController.preferredPIPContentAspectRatio.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34();
  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_246_3();
  v6 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  memcpy(v21, v6, sizeof(v21));
  OUTLINED_FUNCTION_46_26(v21);
  if (v11)
  {
    v7 = OUTLINED_FUNCTION_60_16();
    __swift_storeEnumTagSinglePayload(v7, v8, 1, v4);
LABEL_6:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v9 = OUTLINED_FUNCTION_60_16();
  OUTLINED_FUNCTION_115(v9, v10, v4);
  if (v11)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_1_184();
  OUTLINED_FUNCTION_91_2();
  _s15ConversationKit11ParticipantVWObTm_7();
  Participant.videoInfo.getter();
  if (v18[0])
  {
    v14 = *&v18[5];
    v13 = *&v18[7];
    v15 = v19;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
    if (v15)
    {
      OUTLINED_FUNCTION_0_220();
      _s15ConversationKit11ParticipantVWOhTm_17();
      return 100.0;
    }

    Participant.videoInfo.getter();
    OUTLINED_FUNCTION_0_220();
    _s15ConversationKit11ParticipantVWOhTm_17();
    if (v20[0])
    {
      v17 = v20[3];
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
      if (v17 == 1)
      {
        return v14;
      }

      else if (v17 == 3)
      {
        return v14;
      }
    }

    return v13;
  }

  OUTLINED_FUNCTION_0_220();
  _s15ConversationKit11ParticipantVWOhTm_17();
LABEL_7:
  if ((ConversationController.isOneToOneModeEnabled.getter() & 1) == 0)
  {
    return 100.0;
  }

  MultiwayViewController.pipContentAspectRatioForOneToOneLocalPreview.getter();
  return v12;
}

void MultiwayViewController.pipContentAspectRatioForOneToOneLocalPreview.getter()
{
  v1 = v0;
  if (ConversationController.isOneToOneModeEnabled.getter())
  {
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      [v2 frame];
      v5 = v4;

      v6 = [v1 view];
      if (v6)
      {
        v7 = v6;
        [v6 frame];
        v9 = v8;

        v10 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_frontBoardInterfaceOrientation;
        swift_beginAccess();
        IsPortrait = UIInterfaceOrientationIsPortrait(*&v1[v10]);
        v12 = [v1 view];
        v13 = v12;
        if (v9 >= v5 == IsPortrait)
        {
          if (v12)
          {
            [v12 frame];

            v14 = [v1 view];
            if (v14)
            {
              v15 = v14;
              [v14 frame];

              return;
            }

            goto LABEL_15;
          }

LABEL_14:
          __break(1u);
LABEL_15:
          __break(1u);
          return;
        }

        if (v12)
        {
          [v12 frame];

          return;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }
}

uint64_t MultiwayViewController.fullScreenFocusedParticipantOrientation.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_101();
  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v6 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  memcpy(v13, (v0 + v6), sizeof(v13));
  OUTLINED_FUNCTION_46_26(v13);
  if (v7)
  {
    return 1;
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v8 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_115(v8, v9, v4);
  if (v7)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    return 1;
  }

  OUTLINED_FUNCTION_1_184();
  OUTLINED_FUNCTION_206();
  _s15ConversationKit11ParticipantVWObTm_7();
  Participant.videoInfo.getter();
  OUTLINED_FUNCTION_0_220();
  _s15ConversationKit11ParticipantVWOhTm_17();
  if (!v12[0])
  {
    return 1;
  }

  v10 = v12[3];
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  return v10;
}

uint64_t MultiwayViewController.shouldShowLastFrameUI.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  ConversationController.updateShouldShowLastFrameDuringUPlusOneHandoff()();
  return *(v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldShowLastFrameDuringUPlusOneHandoff);
}

uint64_t MultiwayViewController.shouldDisconnectOnDismissal.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_276_1(v107);
  OUTLINED_FUNCTION_276_1(v108);
  v0 = OUTLINED_FUNCTION_46_26(v108);
  if (v8)
  {
    goto LABEL_5;
  }

  v9 = OUTLINED_FUNCTION_111_8(v0, v1, v2, v3, v4, v5, v6, v7, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
  OUTLINED_FUNCTION_217_4(v9, v10, v11, v12, v13, v14, v15, v16, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81);
  if (ConversationController.isOneToOneModeEnabled.getter())
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v107, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
LABEL_5:
    v20 = 0;
    return v20 & 1;
  }

  v17 = v108[2];
  v18 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_mode;
  OUTLINED_FUNCTION_113_4();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v19 = *(v17 + v18);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v107, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
  switch(v19 >> 5)
  {
    case 1u:
      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    case 2u:
      v20 = v19 ^ 1;
      return v20 & 1;
    case 3u:
      if (v19 != 96)
      {
        goto LABEL_5;
      }

LABEL_11:
      v20 = 1;
      break;
    default:
      goto LABEL_5;
  }

  return v20 & 1;
}

void *MultiwayViewController.effectsBrowserIsOpaque.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = MultiwayViewController.effectsBrowserViewController.getter(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v9 = result;
    v10 = [result viewIfLoaded];

    if (v10)
    {
      [v10 alpha];
      v12 = v11;

      return (v12 > 0.5);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MultiwayViewController.needsUpdatePresentationContexts.didset(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v13 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    if (*(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsUpdatePresentationContexts) == 1 && (a1 & 1) == 0)
    {
      v15 = static OS_dispatch_queue.main.getter();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = partial apply for closure #1 in MultiwayViewController.needsUpdatePresentationContexts.didset;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_366;
      v17 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1BFB215C0](0, v8, v5, v17);
      _Block_release(v17);

      (*(v21 + 8))(v5, v3);
      return (*(v19 + 8))(v8, v20);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in MultiwayViewController.needsUpdatePresentationContexts.didset(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    MultiwayViewController.needsUpdatePresentationContexts.setter(0);
    MultiwayViewController.updateAllParticipantPresentationContexts(forceUpdate:)(0);
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      if ([v3 respondsToSelector_])
      {
        [v4 participantsDidChangeLocationIn_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t MultiwayViewController.needsUpdatePresentationContexts.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsUpdatePresentationContexts);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsUpdatePresentationContexts) = a1;
  return MultiwayViewController.needsUpdatePresentationContexts.didset(v2);
}

double MultiwayViewController.updateAllParticipantPresentationContexts(forceUpdate:)(int a1)
{
  LODWORD(v2) = a1;
  v3 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Participant(0);
  v6 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  v10 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v11 = *(v9 + v10);
  v12 = *(v11 + 16);
  if (v12)
  {
    v34[1] = v9;
    v35 = v2;
    v13 = v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    v34[0] = v11;

    v2 = MEMORY[0x1E69E7CC0];
    for (i = v12 - 1; ; --i)
    {
      _s15ConversationKit11ParticipantVWOcTm_16();
      _s15ConversationKit11ParticipantVWOcTm_16();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 4u:
          v37 = v2;
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
          v18 = *(v17 + 48);
          v19 = &v5[*(v17 + 64)];
          outlined consume of Participant.CopresenceInfo?(*v19, v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7]);
          outlined destroy of Participant.MediaInfo(&v5[v18]);
          v20 = type metadata accessor for Date();
          (*(*(v20 - 8) + 8))(v5, v20);
          v21 = MultiwayViewController.videoVisibility(for:)(&v8[*(v36 + 20)]);
          v23 = v22;
          v24 = MultiwayViewController.prominenceIndex(for:)(v8);
          MultiwayViewController.spatialPosition(for:)();
          MultiwayViewController.presentationContext(for:withVideoVisibility:withProminence:withSpatialPosition:)(v8, v21, v23 & 1, v24, __src, v25, v26, v27, v28);
          _s15ConversationKit11ParticipantVWOhTm_17();
          if (__src[64] == 2)
          {
            v2 = v37;
          }

          else
          {
            memcpy(__dst, __src, sizeof(__dst));
            v2 = v37;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v2 = v30;
            }

            v29 = v2[2];
            if (v29 >= v2[3] >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v2 = v31;
            }

            memcpy(v38, __dst, sizeof(v38));
            v2[2] = v29 + 1;
            memcpy(&v2[9 * v29 + 4], v38, 0x41uLL);
          }

          break;
        case 6u:
          goto LABEL_5;
        default:
          v16 = type metadata accessor for Date();
          (*(*(v16 - 8) + 8))(v5, v16);
LABEL_5:
          _s15ConversationKit11ParticipantVWOhTm_17();
          break;
      }

      if (!i)
      {
        break;
      }

      v13 += v14;
    }

    v32._rawValue = v2;
    LOBYTE(v2) = v35;
  }

  else
  {
    v32._rawValue = MEMORY[0x1E69E7CC0];
  }

  ConversationController.update(presentationContexts:forceUpdate:)(v32, v2 & 1);

  return result;
}

id MultiwayViewController.flashView.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView;
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView);
  }

  else
  {
    v5 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasInitializedMomentsViews;
    OUTLINED_FUNCTION_3_12(a1);
    *(v1 + v5) = 1;
    type metadata accessor for FlashView();
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = *(v1 + v2);
    *(v1 + v2) = v6;
    v4 = v6;

    v3 = 0;
  }

  v8 = v3;
  return v4;
}

void MultiwayViewController.flashView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView) = a1;
}

uint64_t MultiwayViewController.flashView.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_4_3(a1);
  *v1 = MultiwayViewController.flashView.getter(v2);
  return OUTLINED_FUNCTION_8_1();
}

void MultiwayViewController.flashView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView) = v2;
}

id MultiwayViewController.insulatingView.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView;
  v5 = *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView);
  v6 = v5;
  if (v5 != 1)
  {
    goto LABEL_5;
  }

  v7 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasInitializedMomentsViews;
  OUTLINED_FUNCTION_6_0(v3 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasInitializedMomentsViews, a2);
  *(v3 + v7) = 1;
  result = OUTLINED_FUNCTION_184_1();
  if (result)
  {
    v9 = result;
    [result bounds];
    OUTLINED_FUNCTION_40_1();

    v10 = objc_allocWithZone(type metadata accessor for MomentsIndicatorView());
    v11 = OUTLINED_FUNCTION_35();
    [v12 v13];
    OUTLINED_FUNCTION_82_11();
    OUTLINED_FUNCTION_3_52();
    (*(v14 + 104))(1);
    result = OUTLINED_FUNCTION_184_1();
    if (result)
    {
      v15 = result;
      [result bounds];
      OUTLINED_FUNCTION_40_1();

      v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14InsulatingViewCyAA016MomentsIndicatorD0CGMd, "z\\\b"));
      v17 = OUTLINED_FUNCTION_35();
      v6 = specialized InsulatingView.init(frame:content:forwardHits:)(v9, 0, v17, v18, v19, v20);
      v21 = *(v3 + v4);
      *(v3 + v4) = v6;
      v22 = v6;
      outlined consume of IMAccount??(v21);
LABEL_5:
      outlined copy of IMAccount??(v5);
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void key path setter for MultiwayViewController.insulatingView : MultiwayViewController(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  MultiwayViewController.insulatingView.setter(v1);
}

void MultiwayViewController.insulatingView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView) = a1;
  outlined consume of IMAccount??(v2);
}

uint64_t MultiwayViewController.insulatingView.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_4_3(a1);
  *v1 = MultiwayViewController.insulatingView.getter(v2, v3);
  return OUTLINED_FUNCTION_8_1();
}

void MultiwayViewController.insulatingView.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView);
  *(v3 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView) = *a1;
  if (a2)
  {
    v5 = v2;
    v6 = OUTLINED_FUNCTION_200_2();
    outlined consume of IMAccount??(v6);
  }

  else
  {

    outlined consume of IMAccount??(v4);
  }
}

uint64_t MultiwayViewController.hasInitializedMomentsViews.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasInitializedMomentsViews;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t MultiwayViewController.hasInitializedMomentsViews.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasInitializedMomentsViews;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

void *MultiwayViewController.localLivePhotoAlertView.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_11(a1);
  OUTLINED_FUNCTION_146_3(v6);
  OUTLINED_FUNCTION_46_26(v6);
  if (v2)
  {
    return 0;
  }

  v3 = *(v1 + 136);
  if (v3)
  {
    v4 = v3;
  }

  return v3;
}

uint64_t MultiwayViewController.cachedMediaPipSafeAreaFrame.didset(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v16 = (v5 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame);
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    result = CGRectEqualToRect(*(v5 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame), v19);
    if ((result & 1) == 0)
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v17 = result;
        if ([result respondsToSelector_])
        {
          [v17 viewController:v5 mediaPipSafeAreaFrameChanged:{*v16, v16[1], v16[2], v16[3]}];
        }

        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MultiwayViewController.cachedMediaPipSafeAreaFrame.setter(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame);
  v6 = *(v4 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame);
  v7 = *(v4 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame + 8);
  v8 = *(v4 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame + 16);
  v9 = *(v4 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame + 24);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  return MultiwayViewController.cachedMediaPipSafeAreaFrame.didset(v6, v7, v8, v9);
}

void MultiwayViewController.mediaPipFrameInWindowScene.setter()
{
  OUTLINED_FUNCTION_20_2();
  v5 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipFrameInWindowScene);
  OUTLINED_FUNCTION_3_5(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipFrameInWindowScene, v10);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  *v5 = v4;
  *(v5 + 1) = v3;
  *(v5 + 2) = v2;
  *(v5 + 3) = v1;
  MultiwayViewController.mediaPipFrameInWindowScene.didset(v6, v7, v8, v9);
}

__n128 key path getter for MultiwayViewController.mediaPipFrameInWindowScene : MultiwayViewController@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipFrameInWindowScene;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

void MultiwayViewController.mediaPipFrameInWindowScene.didset(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v15 = (v5 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipFrameInWindowScene);
    swift_beginAccess();
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    if (!CGRectEqualToRect(*v15, v19))
    {
      MultiwayViewController.updateMediaPipInfo()();
      if (CGRectIsEmpty(*v15))
      {
        IsEmpty = 1;
      }

      else
      {
        v18.origin.x = a1;
        v18.origin.y = a2;
        v18.size.width = a3;
        v18.size.height = a4;
        IsEmpty = CGRectIsEmpty(v18);
      }

      MultiwayViewController.dodgeMediaPip(visibilityDidChange:)(IsEmpty);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.updateMediaPipInfo()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    MultiwayViewController.mediaPipFrame.getter();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [v1 viewIfLoaded];
    if (v16)
    {
      v17 = v16;
      v23.origin.x = v9;
      v23.origin.y = v11;
      v23.size.width = v13;
      v23.size.height = v15;
      if (!CGRectIsEmpty(v23))
      {
        v18 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations;
        swift_beginAccess();
        if (*&v1[v18] == 2 && (v19 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation, swift_beginAccess(), LODWORD(v19) = (*&v1[v19] & 0xFFFFFFFFFFFFFFFDLL) == 1, [v17 bounds], v19 == v20 >= v21))
        {
          v28.origin.x = v9;
          v28.origin.y = v11;
          v28.size.width = v13;
          v28.size.height = v15;
          CGRectGetHeight(v28);
          v29.origin.x = v9;
          v29.origin.y = v11;
          v29.size.width = v13;
          v29.size.height = v15;
          CGRectGetWidth(v29);
          swift_beginAccess();
        }

        else
        {
          swift_beginAccess();
          MultiwayViewController.mediaPipInfo.setter();
          v24.origin.x = v9;
          v24.origin.y = v11;
          v24.size.width = v13;
          v24.size.height = v15;
          CGRectGetMidX(v24);
          MultiwayViewController.mediaPipSafeAreaFrame.getter();
          CGRectGetMidX(v25);
          v26.origin.x = v9;
          v26.origin.y = v11;
          v26.size.width = v13;
          v26.size.height = v15;
          CGRectGetMidY(v26);
          MultiwayViewController.mediaPipSafeAreaFrame.getter();
          CGRectGetMidY(v27);
        }

        MultiwayViewController.mediaPipInfo.setter();

        return MultiwayViewController.verifyMediaPipSafeAreaFrameSoon(isSecondTry:)(0);
      }
    }

    swift_beginAccess();
    MultiwayViewController.mediaPipInfo.setter();
    return MultiwayViewController.verifyMediaPipSafeAreaFrameSoon(isSecondTry:)(0);
  }

  __break(1u);
  return result;
}

void MultiwayViewController.dodgeMediaPip(visibilityDidChange:)(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(v16, (v2 + v9), sizeof(v16));
    memcpy(v17, (v2 + v9), sizeof(v17));
    if (getEnumTag for TapInteraction.EventType(v17) != 1)
    {
      v10 = v17[6];
      v11 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
      swift_beginAccess();
      if ((*(v10 + v11) & 0xFE) != 0x80)
      {
        memcpy(v15, v16, 0xE8uLL);
        outlined init with copy of MultiwayViewController.ViewContent(v15, v14);
        if (a1)
        {
          MultiwayViewController.mostActiveParticipants.getter();
          v13 = MultiwayViewController.activeRemoteParticipants(in:)();
        }

        else
        {
          v13 = 0;
        }

        v12.value._rawValue = v13;
        ParticipantGridViewController.dodgeMediaPip(with:)(v12);

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.mediaPipFrameInWindowScene.modify()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_47(v2) + 56) = v0;
  v3 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipFrameInWindowScene);
  OUTLINED_FUNCTION_25_54();
  swift_beginAccess();
  v4 = v3[1];
  *v1 = *v3;
  v1[1] = v4;
  return OUTLINED_FUNCTION_28_3();
}

void MultiwayViewController.mediaPipFrameInWindowScene.modify(void **a1)
{
  v1 = *a1;
  MultiwayViewController.mediaPipFrameInWindowScene.setter();

  free(v1);
}

uint64_t MultiwayViewController.isScreenSharingFullScreen.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isScreenSharingFullScreen;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t MultiwayViewController.isScreenSharingFullScreen.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isScreenSharingFullScreen;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

__n128 key path getter for MultiwayViewController.mediaPipInfo : MultiwayViewController@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipInfo;
  swift_beginAccess();
  *a2 = *v3;
  result = *(v3 + 8);
  *(a2 + 8) = result;
  return result;
}

void MultiwayViewController.mediaPipInfo.setter()
{
  OUTLINED_FUNCTION_0_91();
  v4 = v3;
  v5 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipInfo;
  OUTLINED_FUNCTION_3_5(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipInfo, v9);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *v5;
  *v5 = v4;
  *(v5 + 8) = v2;
  *(v5 + 16) = v1;
  MultiwayViewController.mediaPipInfo.didset(v8, v6, v7);
}

void MultiwayViewController.mediaPipInfo.didset(char a1, double a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v13 = &v4[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipInfo];
    swift_beginAccess();
    if (!static ParticipantGridView.MediaPipInfo.== infix(_:_:)(*v13, a1, *(v13 + 1), *(v13 + 2), a2, a3))
    {
      v14 = [v4 viewIfLoaded];
      [v14 setNeedsLayout];
    }
  }

  else
  {
    __break(1u);
  }
}

char *MultiwayViewController.__allocating_init(activeCall:)()
{
  OUTLINED_FUNCTION_77_2();
  v0 = objc_allocWithZone(type metadata accessor for BannerPresentationManager());
  OUTLINED_FUNCTION_24_1();
  BannerPresentationManager.init(delegate:)();
  OUTLINED_FUNCTION_108_0();

  return MultiwayViewController.__allocating_init(activeCall:bannerPresentationManager:)();
}

char *MultiwayViewController.__allocating_init(activeCall:bannerPresentationManager:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_6_7();
  v3 = objc_opt_self();
  v4 = v1;
  v5 = [v3 sharedInstance];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static PlaceholderCallCenter.shared;
  v7 = objc_allocWithZone(type metadata accessor for CallCenter());
  v8 = v6;
  v9 = OUTLINED_FUNCTION_170();
  v11 = CallCenter.init(callCenter:placeholderCallCenter:shouldRegisterForMediaControllerChanges:shouldRegisterForReactionsControllerChanges:)(v9, v10, 1, 1);
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  swift_unknownObjectWeakInit();
  v34 = 0;
  swift_unknownObjectWeakInit();
  v12 = [objc_opt_self() sharedManager];
  type metadata accessor for IDSCapabilitiesChecker();
  v13 = swift_allocObject();
  v31 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUIDSLookupManager, 0x1E69D8C08);
  v32 = &protocol witness table for TUIDSLookupManager;
  v30[0] = v12;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_13_82();
  lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(v14, v15);
  v16 = MEMORY[0x1E69E7CC0];
  v13[2] = Dictionary.init(dictionaryLiteral:)();
  v13[3] = Dictionary.init(dictionaryLiteral:)();
  v13[5] = 0;
  swift_unknownObjectWeakInit();
  v13[6] = v16;
  outlined init with copy of IDSLookupManager(v30, (v13 + 7));
  v17 = [objc_opt_self() defaultCenter];
  [v17 addObserver:v13 selector:sel_handleLookupManagerDidChangeNotification_ name:*MEMORY[0x1E69D8FA0] object:v12];

  __swift_destroy_boxed_opaque_existential_1(v30);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  v18 = static Defaults.shared;
  v19 = objc_allocWithZone(type metadata accessor for ConversationController(0));
  outlined init with copy of DefaultParticipantMediaProviderCreator(&v35, &v29);
  outlined init with copy of DefaultParticipantCaptionsProviderCreator(&v33, v30);
  v20 = v11;
  swift_retain_n();
  specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(v4, v20, &v29, v30, 0, v36, 1, v13, v18, v19, v28, v29, v30[0], v30[1], v30[2], v31, v32, v33, v34, v35, *&v36[0], *(&v36[0] + 1));

  outlined destroy of DefaultParticipantCaptionsProviderCreator(&v33);
  outlined destroy of DefaultParticipantMediaProviderCreator(&v35);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  v21 = static Features.shared;
  v22 = objc_allocWithZone(v2);
  v23 = v21;
  v24 = OUTLINED_FUNCTION_91_2();
  return specialized MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(v24, v25, v0, v18, v26, v22);
}

char *MultiwayViewController.__allocating_init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_4_32();
  v11 = objc_allocWithZone(v10);
  OUTLINED_FUNCTION_246();
  swift_getObjectType();
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_49();

  return specialized MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(v12, v13, v14, v15, v16, v17, v18, v19);
}

char *MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_4_32();
  swift_getObjectType();
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_49();

  return specialized MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t MultiwayViewController.conversationControllerDidAddParticipant(_:)(uint64_t a1)
{
  MultiwayViewController.scheduleUpdate(for:)(a1);
  v1 = MultiwayViewController.captionsViewController.getter();
  if (v1)
  {
    v2 = v1;
    v3 = ConversationController.conversationDisplayName.getter();
    CaptionsViewController.callName.setter(v3, v4);
  }

  v6 = 514;
  return MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(&v6);
}

void closure #4 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      HIWORD(v11) = 514;
      MultiwayViewController.conversationControllerDidUpdateRemoteParticipant(_:updateReason:)(a1, &v11 + 6);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.conversationControllerDidUpdateRemoteParticipant(_:updateReason:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v119 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v119);
  v118 = v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for Date();
  v105 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v109 = v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v99 = v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v102 = v98 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v103 = v98 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v98 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v98 - v18;
  v111 = type metadata accessor for Participant(0);
  v117 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v101 = v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v112 = v98 - v22;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v113) = *a2;
  v27 = a2[1];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v26 = static OS_dispatch_queue.main.getter();
  (*(v24 + 104))(v26, *MEMORY[0x1E69E8020], v23);
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  result = (*(v24 + 8))(v26, v23);
  if ((a2 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v29 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v130, (v3 + v29), sizeof(v130));
  memcpy(v131, (v3 + v29), 0xE8uLL);
  result = getEnumTag for TapInteraction.EventType(v131);
  if (result != 1)
  {
    memcpy(v129, v131, sizeof(v129));
    v30 = v111;
    v104 = *(v111 + 28);
    if (*(a1 + v104))
    {
      v116 = 0;
      v115 = 0;
      v114 = 0x7FFFFFCFELL;
    }

    else
    {
      v31 = *(v3 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
      swift_beginAccess();
      v32 = *(v31 + 8);
      v114 = *v31;
      v116 = v32;
      v115 = *(v31 + 16);
    }

    memcpy(v127, v130, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v127, v126);
    if ((Participant.isActive.getter() & 1) == 0)
    {
      specialized MostActiveParticipantsController.markParticipantAsOffline(_:)();
    }

    v120 = v3;
    v33 = v131[13];
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v19, 1, v30) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      v34 = v27;
    }

    else
    {
      _s15ConversationKit11ParticipantVWObTm_7();
      Participant.videoInfo.getter();
      v34 = v27;
      if (v128[0])
      {
        v35 = v128[3];
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v128, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v111);
        v37 = v113;
        if (EnumTagSinglePayload == 1)
        {
          _s15ConversationKit11ParticipantVWOhTm_17();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        }

        else
        {
          Participant.videoInfo.getter();
          _s15ConversationKit11ParticipantVWOhTm_17();
          if (v126[0] && (v94 = v126[3], outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v126, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR), v95 = static UUID.== infix(_:_:)(), (v95 & 1) != 0) && v35 != v94 && MultiwayViewController.isPipped.getter(v95))
          {
            v96 = ConversationController.isOneToOneModeEnabled.getter();
            _s15ConversationKit11ParticipantVWOhTm_17();
            if (v96)
            {
              v97 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_ignoreFocusedParticipantUpdates;
              swift_beginAccess();
              *(v33 + v97) = 1;
            }
          }

          else
          {
            _s15ConversationKit11ParticipantVWOhTm_17();
          }
        }

        goto LABEL_15;
      }

      _s15ConversationKit11ParticipantVWOhTm_17();
    }

    v37 = v113;
LABEL_15:
    v38 = v120;
    if (*(a1 + v104))
    {
      MultiwayViewController.updateFullScreenFocus(changeSource:defocusAnimationStyle:)(2, 1);
    }

    MultiwayViewController.mostActiveParticipants.getter();
    v39 = MultiwayViewController.activeRemoteParticipants(in:)();

    v40 = v131[1];
    LOBYTE(v123[0]) = v37;
    BYTE1(v123[0]) = v34;
    v41._rawValue = v39;
    ParticipantGridViewController.update(with:updateReason:)(v41, v123);
    LOBYTE(v123[0]) = v37;
    BYTE1(v123[0]) = v34;
    v42._rawValue = v39;
    MostActiveParticipantViewController.update(with:updateReason:)(v42);
    swift_beginAccess();
    v100 = v40;

    Array<A>.participants(notIn:)();
    v44 = v43;

    LOBYTE(v123[0]) = v37;
    BYTE1(v123[0]) = v34;
    ParticipantListViewController.update(with:updateReason:)(v44);

    v45 = ParticipantListViewController.participantCount.getter() > 0;
    MultiwayViewController.setParticipantListState(_:animated:)(v45, 1);
    v46 = v131[4];
    v47 = v38;
    if (v131[4])
    {
      v48 = v131[5];
      ObjectType = swift_getObjectType();
      v50 = v46;
      v51 = ParticipantListViewController.participantCount.getter();
      (*(v48 + 88))(v51, ObjectType, v48);

      v47 = v120;
    }

    v52 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_fullScreenFocusedParticipant;
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (MultiwayViewController.sensitiveContentController.getter())
    {
      SensitiveContentController.saveStreamSettingsForRestore(_:)(a1);
    }

    v53 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController;
    v54 = *(v47 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController);
    v55 = v102;
    if (v54)
    {

      SensitiveContentController.configureShieldForJoiningParticipant(_:)();
      outlined consume of TranslationTextView??(v54);
      v56 = *(v47 + v53);
      if (v56)
      {

        SensitiveContentController.configureShieldforLeavingParticipant(_:)();
        outlined consume of TranslationTextView??(v56);
      }
    }

    v57 = MultiwayViewController.ViewContent.participantsViewControllers.getter();
    v58 = *(v57 + 16);
    if (v58)
    {
      v98[0] = v57;
      v98[1] = v52;
      v59 = v57 + 32;
      v112 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
      swift_beginAccess();
      v106 = (v105 + 4);
      v107 = a1 + 3;
      ++v105;
      v113 = xmmword_1BC4BA940;
      v108 = a1;
      while (1)
      {
        outlined init with copy of IDSLookupManager(v59, v123);
        v60 = v124;
        v61 = v125;
        __swift_project_boxed_opaque_existential_1(v123, v124);
        (*(v61 + 48))(a1, v114, v116, v115, v60, v61);
        outlined init with copy of IDSLookupManager(v123, &v122);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit26ParticipantsViewController_pMd, &_s15ConversationKit26ParticipantsViewController_pMR);
        type metadata accessor for MostActiveParticipantViewController(0);
        if (!swift_dynamicCast() || (v121, !MultiwayViewController.isPipped.getter(v62)))
        {
          v63 = v124;
          v64 = v125;
          __swift_project_boxed_opaque_existential_1(v123, v124);
          (*(v64 + 56))(a1, *&v112[v47], v63, v64);
        }

        v65 = v124;
        v66 = v125;
        __swift_project_boxed_opaque_existential_1(v123, v124);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMR);
        v67 = swift_allocObject();
        *(v67 + 16) = v113;
        _s15ConversationKit11ParticipantVWOcTm_16();
        v68 = MultiwayViewController.isLocalMemberAuthorizedToChangeGroupMembership.getter();
        (*(v66 + 96))(v67, v68 & 1, v65, v66);

        v70 = v124;
        v69 = v125;
        __swift_project_boxed_opaque_existential_1(v123, v124);
        v71 = v118;
        _s15ConversationKit11ParticipantVWOcTm_16();
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
          v73 = *(v72 + 48);
          v74 = &v71[*(v72 + 64)];
          v75 = outlined consume of Participant.CopresenceInfo?(*v74, v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7]);
          v76 = v109;
          v77 = v110;
          (*v106)(v109, v71, v110, v75);
          outlined destroy of Participant.MediaInfo(&v71[v73]);
          Date.timeIntervalSinceNow.getter();
          if (v78 <= 0.0)
          {
            Date.timeIntervalSinceNow.getter();
            v81 = v80;
            if (one-time initialization token for shared != -1)
            {
              swift_once();
            }

            v82 = (*(*static Defaults.shared + 720))();
            (*v105)(v76, v77);
            v79 = -v81 <= v82;
            a1 = v108;
            if (*(v107 + *(v111 + 24)))
            {
              goto LABEL_40;
            }
          }

          else
          {
            (*v105)(v76, v77);
            a1 = v108;
            if (*(v107 + *(v111 + 24)) == 1)
            {
              v79 = 0;
LABEL_40:
              if (*(a1 + v104))
              {
                goto LABEL_35;
              }
            }
          }
        }

        else
        {
          _s15ConversationKit11ParticipantVWOhTm_17();
        }

        v79 = 0;
LABEL_35:
        (*(v69 + 64))(a1, v79, v70, v69);
        __swift_destroy_boxed_opaque_existential_1(v123);
        v59 += 40;
        --v58;
        v47 = v120;
        if (!v58)
        {

          v55 = v102;
          goto LABEL_43;
        }
      }
    }

LABEL_43:
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v83 = v111;
    if (__swift_getEnumTagSinglePayload(v55, 1, v111) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v55, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    }

    else
    {
      _s15ConversationKit11ParticipantVWObTm_7();
      if (static UUID.== infix(_:_:)())
      {
        v84 = v99;
        _s15ConversationKit11ParticipantVWOcTm_16();
        __swift_storeEnumTagSinglePayload(v84, 0, 1, v83);
        MultiwayViewController.notifyFullScreenFocusedParticipantChanged(oldFullScreenFocusedParticipant:newFullScreenFocusedParticipant:)(v103, v84);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v84, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      }

      _s15ConversationKit11ParticipantVWOhTm_17();
    }

    MultiwayViewController.updateLocalParticipantState()();
    if (*(a1 + *(v83 + 24)) == 1)
    {
      Participant.hasReducedQualityVideo.getter();
      v86 = v85 ^ 1;
    }

    else
    {
      v86 = 0;
    }

    MultiwayViewController.updateOneToOneShutterButtonTapability(for:isMomentsAvailable:)(a1 + *(v83 + 20), v86 & 1);
    MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
    MultiwayViewController.updateHasParticipantVideo()();
    MultiwayViewController.scheduleUpdate(for:)(a1);
    specialized CaptionsStateController.updateCaptionsEnablement(pauseTransitionIfAllowed:)(2);
    v87 = MultiwayViewController.captionsViewController.getter();
    if (v87)
    {
      v88 = v87;
      v89 = ConversationController.conversationDisplayName.getter();
      CaptionsViewController.callName.setter(v89, v90);

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v130, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
      v91 = &_s15ConversationKit11ParticipantVSgMd;
      v92 = &_s15ConversationKit11ParticipantVSgMR;
      v93 = v103;
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v103, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      v91 = &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd;
      v92 = &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR;
      v93 = v130;
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v93, v91, v92);
  }

  return result;
}

void closure #2 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  OUTLINED_FUNCTION_50_2();
  v2 = v1;
  OUTLINED_FUNCTION_77_2();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v4 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v0 = static OS_dispatch_queue.main.getter();
  v5 = OUTLINED_FUNCTION_23_34();
  v6(v5);
  _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_26_30();
  v8(v7);
  if (v4)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = OUTLINED_FUNCTION_6_4();
      v2(v9);
    }

    OUTLINED_FUNCTION_49();
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.conversationControllerDidRemoveRemoteParticipant(_:)()
{
  v0 = MultiwayViewController.captionsViewController.getter();
  if (v0)
  {
    v1 = v0;
    v2 = ConversationController.conversationDisplayName.getter();
    CaptionsViewController.callName.setter(v2, v3);
  }

  v5 = 513;
  return MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(&v5);
}

void closure #6 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (*(a1 + *(type metadata accessor for Participant(0) + 28)))
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        HIWORD(v11) = 513;
        MultiwayViewController.conversationControllerDidUpdateRemoteParticipant(_:updateReason:)(a1, &v11 + 6);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #7 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29[-v6];
  v8 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for ParticipantViewModel(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v17 = static OS_dispatch_queue.main.getter();
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8020], v14);
  v18 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      v21 = Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
      swift_beginAccess();
      memmove(v31, v21, 0xE8uLL);
      if (getEnumTag for TapInteraction.EventType(v31) == 1)
      {

        return;
      }

      v22 = *(v21 + 56);
      if (ConversationController.supportsCameraBlur.getter())
      {
        MultiwayViewController.cameraBlurAllowedForCurrentCaptionsState.getter(v23);
      }

      LocalParticipantView.supportsCameraBlur.setter();
      MultiwayViewController.updateCameraFlipButtonAvailability()();
      MultiwayViewController.updateButtonShelfMemojiButton()();
      ConversationController.supportsReactionGestures.getter();
      LocalParticipantView.supportsReactionGestures.setter();
      ConversationController.supportsStudioLight.getter();
      LocalParticipantView.supportsStudioLight.setter();
      swift_beginAccess();
      _s15ConversationKit11ParticipantVWOcTm_16();
      v24 = MultiwayViewController.isLocalMemberAuthorizedToChangeGroupMembership.getter();
      v25 = ParticipantViewModel.init(participant:videoProviderType:isInGrid:isMostActive:isPipped:isPreviewingReaction:hasOtherInvitedParticipants:isLocalMemberAuthorizedToChangeGroupMembership:prefersSnapshotFadeAnimation:snapshotImage:allowsVideoCroppedByAspectRatio:shouldRegisterVideoLayers:)(v10, 2u, 0, 0, 0, 0, v24 & 1, v13, 1u, 0, 1u, 1u);
      if (!MultiwayViewController.isPipped.getter(v25))
      {
        ParticipantView.registerVideoLayers(with:)(v13);

        _s15ConversationKit11ParticipantVWOhTm_17();
        goto LABEL_11;
      }

      swift_beginAccess();
      memmove(v30, v21, 0xE8uLL);
      if (getEnumTag for TapInteraction.EventType(v30) == 1)
      {
        _s15ConversationKit11ParticipantVWOhTm_17();
        swift_endAccess();

LABEL_11:
        return;
      }

      v26 = *(v21 + 104);
      swift_endAccess();
      swift_beginAccess();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
      {

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      }

      else if (*&v7[*(v8 + 28)])
      {

        _s15ConversationKit11ParticipantVWOhTm_17();
      }

      else
      {
        v27 = v26;
        _s15ConversationKit11ParticipantVWOhTm_17();
        v28 = MostActiveParticipantViewController.localParticipantView.getter();
        ParticipantView.registerVideoLayers(with:)(v13);
      }

      _s15ConversationKit11ParticipantVWOhTm_17();
    }
  }

  else
  {
    __break(1u);
  }
}

void MultiwayViewController.updateCameraFlipButtonAvailability()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
  ObjectType = swift_getObjectType();
  if ((*(v2 + 624))(ObjectType, v2))
  {
    v4 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
    swift_beginAccess();
    memcpy(__dst, v4, sizeof(__dst));
    if (getEnumTag for TapInteraction.EventType(__dst) != 1)
    {
      v5 = v4[7];
      v6 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
      v7 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
      swift_beginAccess();
      LOBYTE(v6) = *(v6 + v7);
      v8 = v5;
      LocalParticipantView.cameraFlipButtonIsAvailable.setter((v6 & 1) == 0);
    }
  }
}

void MultiwayViewController.updateButtonShelfMemojiButton()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  memcpy(v12, (v0 + v1), sizeof(v12));
  if (getEnumTag for TapInteraction.EventType(v12) != 1)
  {
    v2 = v12[7];
    v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost;
    swift_beginAccess();
    if (*(v2 + v3))
    {
      memcpy(v10, __dst, sizeof(v10));
      outlined init with copy of MultiwayViewController.ViewContent(v10, &v9);
      ConversationController.supportsMemojiPicker.getter();
      v5 = v4;
      if (v12[10])
      {
        v6 = *((*MEMORY[0x1E69E7D40] & *v12[10]) + 0x90);
        v7 = v12[10];
        v8 = v6();
      }

      else
      {
        v8 = 0;
      }

      LocalParticipantView.configureWithEffectsAvailable(_:effectsSelected:)(v5 & 1, v8 & 1);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
    }
  }
}

void closure #8 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(char a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21[-v4];
  v6 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      if ((a1 & 1) == 0)
      {
        v16 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController;
        v17 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
        v18 = ConversationController.isOneToOneModeEnabled.getter();

        if (v18)
        {
          v19 = *&v15[v16];
          v20 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
          swift_beginAccess();
          if (*(*(v19 + v20) + 16) == 1)
          {
            ConversationController.remoteOneToOneParticipant.getter();
            if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
            {
              _s15ConversationKit11ParticipantVWObTm_7();
              v15[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsConnectionAnimation] = Participant.isReceivingVideoFrames.getter() & 1;
              v22 = 513;
              MultiwayViewController.conversationControllerDidUpdateRemoteParticipant(_:updateReason:)(v8, &v22);

              _s15ConversationKit11ParticipantVWOhTm_17();
              return;
            }

            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          }
        }

        MultiwayViewController.updateLocalParticipantState()();
        MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #9 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      MultiwayViewController.updateLocalParticipantState()();
      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        if ([v11 respondsToSelector_])
        {
          [v12 updateCallParticipantLabelsViewForViewController_];
        }

        swift_unknownObjectRelease();
      }

      MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
      MultiwayViewController.updateSecondaryPillForSNaPIfNeeded()();
      ObjectType = swift_getObjectType();
      v14 = (*(a2 + 208))(ObjectType, a2);
      MultiwayViewController.testing_callStatusDidChange(_:)(v14);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #10 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      MultiwayViewController.conversationControllerDidUpdateLocalParticipant(_:broadcastingState:)(a1, a2, a3, a4);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.conversationControllerDidUpdateLocalParticipant(_:broadcastingState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v16 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(v36, (v5 + v16), sizeof(v36));
    memcpy(v37, (v5 + v16), 0xE8uLL);
    result = getEnumTag for TapInteraction.EventType(v37);
    if (result != 1)
    {
      memcpy(v35, v37, sizeof(v35));
      if ((a2 & 1) == 0)
      {
        *(v5 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didNotifyMutedCaller) = 0;
      }

      memcpy(v34, v36, 0xE8uLL);
      outlined init with copy of MultiwayViewController.ViewContent(v34, v31);
      MultiwayViewController.updateMutedTalkerUI(mutedTalker:)(a2 & 1);
      v17 = MultiwayViewController.ViewContent.participantsViewControllers.getter();
      v18 = *(v17 + 16);
      if (v18)
      {
        v30[1] = v17;
        v30[2] = v5;
        v19 = v17 + 32;
        do
        {
          outlined init with copy of IDSLookupManager(v19, v31);
          v21 = v32;
          v20 = v33;
          __swift_project_boxed_opaque_existential_1(v31, v32);
          (*(v20 + 48))(a1, a2, a3, a4, v21, v20);
          __swift_destroy_boxed_opaque_existential_1(v31);
          v19 += 40;
          --v18;
        }

        while (v18);
      }

      if (MultiwayViewController.sensitiveContentController.getter())
      {
        SensitiveContentController.saveStreamSettingsForRestore(_:)(a1);
      }

      MultiwayViewController.updateLocalParticipantVideoOrientation()();
      v22 = Participant.isActiveWithVideo.getter();
      specialized EffectsHandler.updateEffectsViews(localVideoEnabled:)(v22 & 1, v23, v24, v25, v26, v27, v28, v29);
      MultiwayViewController.updateFloatingLocalParticpantView()();
      MultiwayViewController.updateLocalParticipantAspectRatio()();
      MultiwayViewController.updateHasParticipantVideo()();
      MultiwayViewController.updateLocalParticipantState()();
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #11 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = MultiwayViewController.sensitiveContentController.getter();

      if (v10)
      {
        SensitiveContentController.configureShield(for:analysis:)();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #12 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
      swift_beginAccess();
      memcpy(v16, &v9[v10], sizeof(v16));
      memmove(v17, &v9[v10], 0xE8uLL);
      if (getEnumTag for TapInteraction.EventType(v17) != 1)
      {
        v11 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
        swift_beginAccess();
        v12 = *&v9[v11];
        memcpy(v15, v16, 0xE8uLL);
        outlined init with copy of MultiwayViewController.ViewContent(v15, &v14);
        ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(a1, v12, 1, 1);
        MultiwayViewController.showButtonShelfIfFrontCamera(_:)(1);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void MultiwayViewController.showButtonShelfIfFrontCamera(_:)(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  if (getEnumTag for TapInteraction.EventType(__dst) != 1)
  {
    v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    swift_beginAccess();
    if (*(v4 + 16) < 0 && !(*(v4 + 1) << 8) && __dst[8])
    {
      v5 = 0.0;
      if (a1)
      {
        v5 = 1.0;
      }

      [__dst[8] setAlpha_];
    }
  }
}

void closure #13 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
      swift_beginAccess();
      memcpy(v18, &v12[v13], sizeof(v18));
      memmove(v19, &v12[v13], 0xE8uLL);
      if (getEnumTag for TapInteraction.EventType(v19) != 1)
      {
        ObjectType = swift_getObjectType();
        v15 = *(a4 + 312);
        memcpy(v17, v18, 0xE8uLL);
        outlined init with copy of MultiwayViewController.ViewContent(v17, v16);
        if (v15(ObjectType, a4))
        {
          LocalParticipantView.configureWithRecordingLocalVideo(_:)(a1 & 1);
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void MultiwayViewController.conversationControllerDidUpdateLocalParticipantScreenSharing(_:)(uint64_t a1)
{
  v1 = a1;
  MultiwayViewController.updateScreenSharingSnapshotView(_:)(a1);
  specialized CaptionsStateController.updateCaptionsEnablement(pauseTransitionIfAllowed:)((v1 & 1) == 0);

  MultiwayViewController.updateVideoState()();
}

uint64_t closure #15 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    *v24 = 514;
    MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(v24);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v21, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  v12 = v11;
  v13 = *(v11 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

  ConversationController.lookupActiveConversation()();
  if (!*(&v22 + 1))
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v21, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  outlined init with take of TapInteractionHandler(&v21, v24);
  v14 = v25;
  v15 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v15 + 88))(v14, v15);
  v16 = specialized Set.count.getter();

  if (v16 != 1)
  {
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *(v17 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tonePlayer);

      (*((*MEMORY[0x1E69E7D40] & *v19) + 0xE0))();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

double closure #16 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28[-v4];
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

    LOBYTE(v12) = ConversationController.shouldPlayToneForAVModeChange(for:)(a1);
    if ((v12 & 1) == 0)
    {
      if (one-time initialization token for conversationKit == -1)
      {
LABEL_11:
        v20 = static OS_os_log.conversationKit;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1BC4BA940;
        _s15ConversationKit11ParticipantVWOcTm_16();
        v22 = type metadata accessor for Participant(0);
        __swift_storeEnumTagSinglePayload(v5, 0, 1, v22);
        specialized >> prefix<A>(_:)();
        v24 = v23;
        v26 = v25;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        *(v21 + 56) = MEMORY[0x1E69E6158];
        *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v21 + 32) = v24;
        *(v21 + 40) = v26;
        v27 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Don't play sound for AVMode change for participant because associate found in the call: %@", 90, 2, &dword_1BBC58000, v20, v27, v21);

        return result;
      }

LABEL_14:
      swift_once();
      goto LABEL_11;
    }
  }

  if (Participant.isActiveWithAV.getter())
  {
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v16 = v14;
      v17 = *(v14 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tonePlayer);

      (*((*MEMORY[0x1E69E7D40] & *v17) + 0xE0))();
LABEL_9:
    }
  }

  else
  {
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v17 = *(v18 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tonePlayer);

      (*((*MEMORY[0x1E69E7D40] & *v17) + 0xE8))();
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t closure #17 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    *v24 = 514;
    MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(v24);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v21, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  v12 = v11;
  v13 = *(v11 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

  ConversationController.lookupActiveConversation()();
  if (!*(&v22 + 1))
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v21, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  outlined init with take of TapInteractionHandler(&v21, v24);
  v14 = v25;
  v15 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v15 + 88))(v14, v15);
  v16 = specialized Set.count.getter();

  if (v16 != 1)
  {
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *(v17 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tonePlayer);

      (*((*MEMORY[0x1E69E7D40] & *v19) + 0xE8))();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t MultiwayViewController.conversationControllerDidUpdateRemoteParticipantKickableStatus(_:)(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v42 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v42);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Date();
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v12 = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v14 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(v47, (v2 + v14), sizeof(v47));
    memcpy(v48, (v2 + v14), 0xE8uLL);
    result = getEnumTag for TapInteraction.EventType(v48);
    if (result != 1)
    {
      memcpy(v46, v48, sizeof(v46));
      v15 = MultiwayViewController.ViewContent.participantsViewControllers.getter();
      v16 = *(v15 + 16);
      if (v16)
      {
        v39 = v7;
        v35 = v15;
        v17 = v15 + 32;
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        v18 = v41;
        v37 = (v5 + 32);
        v38 = v41 + 3;
        v36 = (v5 + 8);
        while (1)
        {
          outlined init with copy of IDSLookupManager(v17, v43);
          v20 = v44;
          v19 = v45;
          __swift_project_boxed_opaque_existential_1(v43, v44);
          _s15ConversationKit11ParticipantVWOcTm_16();
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
            v22 = *(v21 + 48);
            v23 = &v4[*(v21 + 64)];
            v24 = outlined consume of Participant.CopresenceInfo?(*v23, v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7]);
            v25 = v39;
            v26 = v40;
            (*v37)(v39, v4, v40, v24);
            outlined destroy of Participant.MediaInfo(&v4[v22]);
            Date.timeIntervalSinceNow.getter();
            if (v27 <= 0.0)
            {
              Date.timeIntervalSinceNow.getter();
              v32 = v31;
              if (one-time initialization token for shared != -1)
              {
                swift_once();
              }

              v33 = (*(*static Defaults.shared + 720))();
              (*v36)(v25, v26);
              v30 = -v32 <= v33;
              v34 = type metadata accessor for Participant(0);
              v18 = v41;
              if (*(v38 + *(v34 + 24)))
              {
                v29 = v34;
LABEL_17:
                type metadata accessor for Participant(0);
                if (*(v18 + *(v29 + 28)))
                {
                  goto LABEL_11;
                }
              }
            }

            else
            {
              (*v36)(v25, v26);
              v28 = type metadata accessor for Participant(0);
              v18 = v41;
              if (*(v38 + *(v28 + 24)) == 1)
              {
                v29 = v28;
                v30 = 0;
                goto LABEL_17;
              }
            }
          }

          else
          {
            _s15ConversationKit11ParticipantVWOhTm_17();
          }

          v30 = 0;
LABEL_11:
          (*(v19 + 64))(v18, v30, v20, v19);
          __swift_destroy_boxed_opaque_existential_1(v43);
          v17 += 40;
          if (!--v16)
          {
            goto LABEL_20;
          }
        }
      }

      outlined init with copy of [CaptionSectioner.SpeakerSection]();
LABEL_20:

      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v47, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #19 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      MultiwayViewController.conversationControllerConversationStateDidChange(_:)(a2);
    }
  }

  else
  {
    __break(1u);
  }
}

void MultiwayViewController.conversationControllerConversationStateDidChange(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Participant(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v9 = &v48[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    v24 = 1;
LABEL_16:
    specialized CaptionsStateController.updateCaptionsEnablement(pauseTransitionIfAllowed:)(v24);
    goto LABEL_17;
  }

  if (a1 != 3)
  {
    if (a1 != 4)
    {
      goto LABEL_17;
    }

    MultiwayViewController.removeAllEffectsObjects()();
    v10 = (v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
    swift_beginAccess();
    memcpy(v49, v10, sizeof(v49));
    Enum = getEnumTag for TapInteraction.EventType(v49);
    v12 = MEMORY[0x1E69E7D40];
    if (Enum != 1)
    {
      v13 = v10[7];
      v14 = *((*MEMORY[0x1E69E7D40] & **&v13[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView]) + 0x280);
      v15 = v13;
      v16 = v14();
      LocalParticipantView.configureWithEffectsAvailable(_:effectsSelected:)(v16 & 0x10000, 0);
    }

    memcpy(v48, v10, sizeof(v48));
    if (getEnumTag for TapInteraction.EventType(v48) != 1)
    {
      v17 = v10[10];
      if (v17)
      {
        v18 = *((*v12 & *v17) + 0x98);
        v19 = v17;
        v18(0);
      }
    }

    v20 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsEnabled;
    swift_beginAccess();
    *(v2 + v20) = 0;
    MultiwayViewController.showEffectsControls(_:shouldUpdateLocalParticipantState:)(0, 0);
    v21 = *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tonePlayer);
    v22 = *((*v12 & *v21) + 0xF0);
    v23 = v21;
    v22();

    v24 = 0;
    goto LABEL_16;
  }

  specialized MomentsBackedViewControllerProtocol.setupMomentsViewsIfNecessary()(v6, v7);
  specialized MomentsBackedViewControllerProtocol.setupFlashViewsIfNecessary()(v25);
  v26 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  v27 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v28 = *(v26 + v27);
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = v28 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v31 = *(v5 + 72);

    do
    {
      _s15ConversationKit11ParticipantVWOcTm_16();
      MultiwayViewController.scheduleUpdate(for:)(v9);
      _s15ConversationKit11ParticipantVWOhTm_17();
      v30 += v31;
      --v29;
    }

    while (v29);
  }

  v32 = MultiwayViewController.call.getter();
  v33 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
  swift_beginAccess();
  outlined init with copy of IDSLookupManager(v26 + v33, v49);
  v34 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
  swift_beginAccess();
  v35 = _s15ConversationKit17BroadcastingStateO4call0E6Center17deviceOrientation28shouldMaintainCameraPositionAcA4Call_p_AA0mF8Provider_pSo09CNKDeviceH0VSbtcfCTf4ennnn_nSo6TUCallC_Tt3g5(v32, v49, *(v2 + v34), 1);
  ConversationController.broadcastingState.setter(v35, v36, v37, v38, v39, v40, v41, v42, v47, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10]);
  MultiwayViewController.scheduleLinkEducationFirstTimeAlert()();
  MultiwayViewController.resetDidExpandIncomingCallBanner()();
LABEL_17:
  MultiwayViewController.updateLocalParticipantState()();
  MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
  MultiwayViewController.updateShouldShowReactionPickerTipView()();
  MultiwayViewController.updateCornerButtonsVisibility()();
  v43 = MultiwayViewController.captionsViewController.getter();
  if (v43)
  {
    v44 = v43;
    v45 = ConversationController.conversationDisplayName.getter();
    CaptionsViewController.callName.setter(v45, v46);
  }

  if (a1 == 1)
  {
    LOBYTE(v49[0]) = 1;
    MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(v49, 0xFCu, 1);
  }
}

uint64_t MultiwayViewController.participantsMediaPrioritiesDidChange(_:)(uint64_t a1)
{
  v2 = v1;
  v44 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v15 = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v17 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v60, (v2 + v17), sizeof(v60));
  memcpy(v61, (v2 + v17), 0xE8uLL);
  result = getEnumTag for TapInteraction.EventType(v61);
  if (result != 1)
  {
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v18 = v44;
    if (__swift_getEnumTagSinglePayload(v10, 1, v44) != 1)
    {
      v34 = &_s15ConversationKit11ParticipantVSgMd;
      v35 = &_s15ConversationKit11ParticipantVSgMR;
      v36 = v10;
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, v34, v35);
    }

    memcpy(v56, v60, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v56, v55);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v19 = *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
    ObjectType = swift_getObjectType();
    v48 = (*(v19 + 288))(ObjectType, v19);
    v47 = (*(v19 + 296))(ObjectType, v19);
    v21 = *(a1 + 16);
    v45 = v2;
    if (v21)
    {
      v43 = v7;
      *&v55[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v22 = *&v55[0];
      v23 = (a1 + 76);
      do
      {
        v24 = *(v23 - 11);
        v25 = *(v23 - 9);
        v50 = *(v23 - 28);
        v49 = *(v23 - 5);
        v26 = *(v23 - 3);
        if (v48)
        {
          v27 = *(v23 - 1);
        }

        else
        {
          v27 = 0.0;
        }

        if (v47)
        {
          v28 = *v23;
        }

        else
        {
          v28 = 0.0;
        }

        *&v55[0] = v22;
        v30 = *(v22 + 16);
        v29 = *(v22 + 24);
        v31 = v30 + 1;
        v32 = v24;

        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
          v22 = *&v55[0];
        }

        *(v22 + 16) = v31;
        v33 = v22 + 48 * v30;
        *(v33 + 32) = v32;
        *(v33 + 40) = v25;
        *(v33 + 48) = v50;
        *(v33 + 56) = v49;
        *(v33 + 64) = v26;
        *(v33 + 72) = v27;
        *(v33 + 76) = v28;
        v23 += 12;
        --v21;
      }

      while (v21);
      v18 = v44;
      v7 = v43;
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
      v31 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v31)
      {
LABEL_23:

        v34 = &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd;
        v35 = &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR;
        v36 = v60;
        return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, v34, v35);
      }
    }

    v37 = 32;
    do
    {
      v38 = *(v22 + v37);
      v39 = *(v22 + v37 + 32);
      v55[1] = *(v22 + v37 + 16);
      v55[2] = v39;
      v55[0] = v38;
      v40 = *(v22 + v37);
      v41 = *(v22 + v37 + 16);
      v59 = *(v22 + v37 + 32);
      v57 = v40;
      v58 = v41;
      v52 = v40;
      v53 = v41;
      v54 = v59;
      outlined init with copy of ParticipantMediaPriorities(v55, v51);
      outlined init with copy of ParticipantMediaPriorities(v55, v51);
      ConversationController.participant(with:)();

      if (__swift_getEnumTagSinglePayload(v7, 1, v18) == 1)
      {
        outlined destroy of ParticipantMediaPriorities(v55);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      }

      else
      {
        _s15ConversationKit11ParticipantVWObTm_7();
        specialized MostActiveParticipantsController.update(_:mediaPriorities:)();
        outlined destroy of ParticipantMediaPriorities(v55);
        _s15ConversationKit11ParticipantVWOhTm_17();
      }

      v37 += 48;
      --v31;
    }

    while (v31);
    goto LABEL_23;
  }

  return result;
}

void closure #21 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      MultiwayViewController.participant(_:didReact:)(a1, a2, a3);
    }
  }

  else
  {
    __break(1u);
  }
}

void MultiwayViewController.participant(_:didReact:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - v7;
  v9 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  if (*(a1 + *(v11 + 28)))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.conversationKit);
    _s15ConversationKit11ParticipantVWOcTm_16();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      HIDWORD(v41) = v14;
      v16 = v15;
      v42 = swift_slowAlloc();
      v46 = v42;
      *v16 = 136315394;
      _s15ConversationKit11ParticipantVWOcTm_16();
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
      specialized >> prefix<A>(_:)();
      v18 = v17;
      v43 = a1;
      v19 = a2;
      v21 = v20;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      _s15ConversationKit11ParticipantVWOhTm_17();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v21, &v46);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2080;
      v44 = v19;
      v45 = a3;
      a1 = v43;

      v23 = String.init<A>(reflecting:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v46);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_1BBC58000, v13, BYTE4(v41), "Remote Participant %s didReact with %s", v16, 0x16u);
      v26 = v42;
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v26, -1, -1);
      MEMORY[0x1BFB23DF0](v16, -1, -1);
    }

    else
    {

      _s15ConversationKit11ParticipantVWOhTm_17();
    }

    specialized MostActiveParticipantsController.markParticipantAsReacting(_:)(a1 + *(v9 + 20));
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.conversationKit);
    _s15ConversationKit11ParticipantVWOcTm_16();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v43 = a2;
      v32 = v31;
      v46 = v31;
      *v30 = 136315394;
      _s15ConversationKit11ParticipantVWOcTm_16();
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
      specialized >> prefix<A>(_:)();
      v34 = v33;
      v36 = v35;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      _s15ConversationKit11ParticipantVWOhTm_17();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v46);

      *(v30 + 4) = v37;
      *(v30 + 12) = 2080;
      v44 = v43;
      v45 = a3;

      v38 = String.init<A>(reflecting:)();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v46);

      *(v30 + 14) = v40;
      _os_log_impl(&dword_1BBC58000, v28, v29, "Local Participant %s didReact with %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v32, -1, -1);
      MEMORY[0x1BFB23DF0](v30, -1, -1);
    }

    else
    {

      _s15ConversationKit11ParticipantVWOhTm_17();
    }

    MultiwayViewController.isLocalReactionActive.setter(1);
  }
}

void closure #3 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  OUTLINED_FUNCTION_50_2();
  v2 = v1;
  OUTLINED_FUNCTION_77_2();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v4 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v0 = static OS_dispatch_queue.main.getter();
  v5 = OUTLINED_FUNCTION_23_34();
  v6(v5);
  _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_26_30();
  v8(v7);
  if (v4)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = OUTLINED_FUNCTION_6_4();
      v2(v9);
    }

    OUTLINED_FUNCTION_49();
  }

  else
  {
    __break(1u);
  }
}

void MultiwayViewController.participantDidStopReacting(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v5);
  if (!*(a1 + *(v6 + 28)))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationKit);
    _s15ConversationKit11ParticipantVWOcTm_16();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      _s15ConversationKit11ParticipantVWOcTm_16();
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
      specialized >> prefix<A>(_:)();
      v13 = v12;
      v15 = v14;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      _s15ConversationKit11ParticipantVWOhTm_17();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v18);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_1BBC58000, v8, v9, "Local Participant %s didStopReacting", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1BFB23DF0](v11, -1, -1);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
    }

    else
    {

      _s15ConversationKit11ParticipantVWOhTm_17();
    }

    MultiwayViewController.isLocalReactionActive.setter(0);
  }
}

void closure #14 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  OUTLINED_FUNCTION_50_2();
  v2 = v1;
  v4 = v3;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v6 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v0 = static OS_dispatch_queue.main.getter();
  v7 = OUTLINED_FUNCTION_23_34();
  v8(v7);
  _dispatchPreconditionTest(_:)();
  v9 = OUTLINED_FUNCTION_26_30();
  v10(v9);
  if (v6)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v2(v4 & 1);
    }

    OUTLINED_FUNCTION_49();
  }

  else
  {
    __break(1u);
  }
}

void closure #24 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 32);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl;
      swift_beginAccess();
      v13 = *&v11[v12];
      v14 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x230);
      v15 = v13;
      v16 = v14(a1, a2);

      MultiwayViewController.updateCameraFlipButtonAvailability()();
      v17 = &v11[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
      swift_beginAccess();
      memmove(v21, v17, 0xE8uLL);
      if (getEnumTag for TapInteraction.EventType(v21) != 1)
      {
        v18 = v17[7];
        if (ConversationController.supportsCameraBlur.getter())
        {
          MultiwayViewController.cameraBlurAllowedForCurrentCaptionsState.getter(v19);
        }

        LocalParticipantView.supportsCameraBlur.setter();
      }

      MultiwayViewController.updateButtonShelfMemojiButton()();
      if (v16)
      {
        MultiwayViewController.updateZoomControls(for:)(0xFCu);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #25 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
  swift_beginAccess();
  v3 = *&Strong[v2];

  return v3;
}

void closure #26 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(char a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t), void (*a5)(void))
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = MultiwayViewController.inCallControlsViewController.getter(Strong, v10, v11, v12, v13, v14, v15, v16);

    if (v18)
    {
      v20 = *a3;
      v21 = OUTLINED_FUNCTION_6_0(&v18[v20], v19);
      v18[v20] = a1 & 1;
      a4(v21);
    }
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    v24 = v22 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    OUTLINED_FUNCTION_35_30();
    swift_beginAccess();
    OUTLINED_FUNCTION_142_4();
    memmove(v25, v26, v27);
    OUTLINED_FUNCTION_46_26(v30);
    if (v28)
    {
    }

    else
    {
      v29 = *(v24 + 56);

      a5(a1 & 1);
    }
  }
}

void closure #28 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(char a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    OUTLINED_FUNCTION_35_30();
    swift_beginAccess();
    OUTLINED_FUNCTION_142_4();
    memmove(v8, v9, v10);
    OUTLINED_FUNCTION_46_26(v13);
    if (v11)
    {
    }

    else
    {
      v12 = *(v7 + 56);

      a3(a1 & 1);
    }
  }
}

void *closure #30 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(char a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    if (a1)
    {
      v14 = MultiwayViewController.cameraBlurAllowedForCurrentCaptionsState.getter(v12);
    }

    else
    {
      v14 = 0;
    }

    v26 = v8;
    v27 = v7;
    v28 = v4;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BC4BA940;
    v17 = v14 & 1;
    LOBYTE(aBlock[0]) = v14 & 1;
    v18 = String.init<A>(reflecting:)();
    v20 = v19;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v16 + 32) = v18;
    *(v16 + 40) = v20;
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Camera blur enabled changed to %@", 33, 2, &dword_1BBC58000, v15, v21, v16);

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v22 = static OS_dispatch_queue.main.getter();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v17;
    aBlock[4] = partial apply for closure #1 in closure #30 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_549;
    v25 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v10, v6, v25);
    _Block_release(v25);

    (*(v28 + 8))(v6, v3);
    return (*(v26 + 8))(v10, v27);
  }

  return result;
}

void *closure #31 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(char a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v19 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a1 & 1;
    aBlock[4] = partial apply for closure #1 in closure #31 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_542;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    v17 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v18 = v7;
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = v19;
    MEMORY[0x1BFB215C0](0, v10, v6, v15);
    _Block_release(v15);

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v18);
  }

  return result;
}

void closure #1 in closure #30 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, char a2, uint64_t *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_95_3(a1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_205_5();
    memmove(v10, v11, v12);
    OUTLINED_FUNCTION_46_26(v18);
    if (!v13)
    {
      v14 = *(v9 + 56);
      v15 = *a3;
      OUTLINED_FUNCTION_3_5(&v14[v15], &v17);
      v14[v15] = a2 & 1;
      v16 = v14;
      a4();
    }
  }
}

void closure #33 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2, Swift::Float a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v30[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v16 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
      swift_beginAccess();
      memcpy(v33, &v15[v16], sizeof(v33));
      outlined init with copy of [CaptionSectioner.SpeakerSection]();

      memcpy(v34, v33, 0xE8uLL);
      if (getEnumTag for TapInteraction.EventType(v34) != 1)
      {
        memcpy(v35, v34, sizeof(v35));
        swift_beginAccess();
        v17 = swift_unknownObjectWeakLoadStrong();
        if (v17)
        {
          v18 = v17;
          v19 = *(v17 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

          v20 = type metadata accessor for Participant(0);
          v21 = &v19[OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant];
          swift_beginAccess();
          (*(v6 + 16))(v8, &v21[*(v20 + 20)], v5);
          LOBYTE(v20) = static UUID.== infix(_:_:)();
          (*(v6 + 8))(v8, v5);
          if (v20)
          {
            v22 = *(v34[7] + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView);
            v23 = ParticipantView.monogramView.getter();
            ParticipantMonogramView.updateAudioVisualization(with:)(a3);

            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v33, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
          }

          else
          {
            v24 = MultiwayViewController.ViewContent.participantsViewControllers.getter();
            v25 = *(v24 + 16);
            if (v25)
            {
              v26 = v24 + 32;
              do
              {
                outlined init with copy of IDSLookupManager(v26, v30);
                v27 = v31;
                v28 = v32;
                __swift_project_boxed_opaque_existential_1(v30, v31);
                (*(v28 + 80))(a1, v27, v28, a3);
                __swift_destroy_boxed_opaque_existential_1(v30);
                v26 += 40;
                --v25;
              }

              while (v25);
            }

            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v33, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
          }
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v33, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #34 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(char a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (a1)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        MultiwayViewController.showMutedTalkerBanner()(Strong);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void MultiwayViewController.showMutedTalkerBanner()(uint64_t a1)
{
  if (MultiwayViewController.isPipped.getter(a1))
  {
    v2 = 0;
  }

  else
  {
    v3 = &v1[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
    swift_beginAccess();
    memcpy(__dst, v3, 0xE8uLL);
    if (getEnumTag for TapInteraction.EventType(__dst) == 1)
    {
      v2 = 1;
    }

    else
    {
      v4 = *(v3 + 6);
      v5 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
      swift_beginAccess();
      v2 = *(v4 + v5) - 1 < 3;
    }
  }

  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, &static Logger.conversationControls);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  p_superclass = (&OBJC_METACLASS____TtC15ConversationKit24InCallControlsStatusCell + 8);
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34[0] = v12;
    *v11 = 136315650;
    LOBYTE(__dst[0]) = MultiwayViewController.isPipped.getter(v12);
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v34);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = &v7[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
    swift_beginAccess();
    memcpy(__dst, v16, 0xE8uLL);
    if (getEnumTag for TapInteraction.EventType(__dst) == 1)
    {
      v17 = 0xE300000000000000;
      v18 = 7104878;
    }

    else
    {
      swift_beginAccess();
      v18 = String.init<A>(reflecting:)();
      v17 = v19;
    }

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, v34);

    *(v11 + 14) = v20;
    *(v11 + 22) = 2080;
    p_superclass = &OBJC_METACLASS____TtC15ConversationKit24InCallControlsStatusCell.superclass;
    v21 = String.init<A>(reflecting:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v34);

    *(v11 + 24) = v23;
    _os_log_impl(&dword_1BBC58000, v8, v9, "MutedTalker: isPipped:%s, inCallConversationBannerState:%s, didNotifyMutedCaller:%s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v12, -1, -1);
    MEMORY[0x1BFB23DF0](v11, -1, -1);
  }

  if (MultiwayViewController.sensitiveContentController.getter())
  {

    swift_beginAccess();
    v24 = static SensitiveContentController.shieldState ^ 1;
  }

  else
  {
    v24 = 0;
  }

  v25 = p_superclass[492];
  if (((v2 | *(&v25->isa + v7)) & 1) == 0 && (v24 & 1) == 0)
  {
    v26 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mutedBannerViewController;
    swift_beginAccess();
    v27 = *&v7[v26];
    v28 = MEMORY[0x1E69E7D40];
    v29 = *((*MEMORY[0x1E69E7D40] & *v27) + 0x170);
    v30 = v27;
    v29();

    *(&v25->isa + v7) = 1;
    v31 = *&v7[v26];
    v32 = *((*v28 & *v31) + 0x168);
    v33 = v31;
    v32();
  }
}

void closure #20 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)()
{
  OUTLINED_FUNCTION_50_2();
  v2 = v1;
  OUTLINED_FUNCTION_77_2();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v4 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v0 = static OS_dispatch_queue.main.getter();
  v5 = OUTLINED_FUNCTION_23_34();
  v6(v5);
  _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_26_30();
  v8(v7);
  if (v4)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = OUTLINED_FUNCTION_6_4();
      v2(v9);
    }

    OUTLINED_FUNCTION_49();
  }

  else
  {
    __break(1u);
  }
}

void MultiwayViewController.updateAudioRouteButton(for:)()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = (v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
    swift_beginAccess();
    memcpy(v10, v7, sizeof(v10));
    if (getEnumTag for TapInteraction.EventType(v10) != 1)
    {
      v8 = v7[2];
      InCallControlsViewController.updateAudioRouteButton(for:)();
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #36 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1)
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v4 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v5 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  if (static Platform.current.getter() == 3)
  {
    v8 = &v7[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
    swift_beginAccess();
    memmove(v24, v8, 0xE8uLL);
    if (getEnumTag for TapInteraction.EventType(v24) != 1)
    {
      v9 = [v8[1] view];
      if (v9)
      {
        v10 = v9;
        [v9 bounds];
        v12 = v11;
        v14 = v13;

        v15 = &v7[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedGridViewSize];
        v17 = *&v7[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedGridViewSize];
        v16 = *&v7[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedGridViewSize + 8];
        if (v17 == v12 && v16 == v14)
        {
          goto LABEL_29;
        }

        if (v17 < v16 || v12 >= v14)
        {
          if (v16 >= v17)
          {
            if ((v16 != 0.0 || v17 != 0.0) && v14 >= v12)
            {
              goto LABEL_28;
            }
          }

          else if (v17 != 0.0 || v16 != 0.0)
          {
            goto LABEL_28;
          }
        }

        memmove(v23, v8, 0xE8uLL);
        if (getEnumTag for TapInteraction.EventType(v23) != 1)
        {
          v22 = v8[6];
          MultiwayViewConstraintsController.updateLocalPreviewConstraintWhenExpanded()();
        }

LABEL_28:
        *v15 = v12;
        v15[1] = v14;
        goto LABEL_29;
      }

LABEL_32:
      __break(1u);
      return;
    }
  }

LABEL_29:
  MultiwayViewController.updatePresentationSize()();
  MultiwayViewController.needsUpdatePresentationContexts.setter(1);
}

id MultiwayViewController.updatePresentationSize()()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;
    v6 = v5;

    v7 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations;
    swift_beginAccess();
    if (!*&v0[v7])
    {
      v8 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
      swift_beginAccess();
      MultiwayViewController.rotate(portraitRect:for:)(*&v0[v8]);
      v4 = v9;
      v6 = v10;
    }

    v11 = &v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedPresentationSize];
    *v11 = v4;
    v11[1] = v6;
    v12 = MultiwayViewController.call.getter();
    [v12 setRemoteVideoPresentationSize_];

    return MultiwayViewController.updateMediaPipInfo()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #37 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      MultiwayViewController.updateVideoState()();
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall MultiwayViewController.updateVideoState()()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_150_1(v106);
  OUTLINED_FUNCTION_150_1(v107);
  v0 = OUTLINED_FUNCTION_46_26(v107);
  if (!v8)
  {
    v9 = OUTLINED_FUNCTION_111_8(v0, v1, v2, v3, v4, v5, v6, v7, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
    OUTLINED_FUNCTION_217_4(v9, v10, v11, v12, v13, v14, v15, v16, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80);
    v17 = dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter();
    OUTLINED_FUNCTION_113_4();
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = [Strong isMultiwayViewControllerShowingInMiniWindow];
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0;
    }

    ConversationController.updateVideoStateForExternalFactors(isShowingInMiniWindow:)(v19);
    if (v17)
    {
      v20 = 0;
    }

    else
    {
      v20 = [objc_opt_self() supportsDisplayingFaceTimeAudioCalls];
    }

    InCallControlsViewController.videoButtonIsEnabled.setter(v20);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v106, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
  }
}

void closure #38 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(char a1, char a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      MultiwayViewController.conversationControllerOneToOneModeDidChange(_:_:)(a1 & 1, a2 & 1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.conversationControllerOneToOneModeDidChange(_:_:)(char a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v30, (v3 + v11), sizeof(v30));
  memcpy(v31, (v3 + v11), sizeof(v31));
  result = getEnumTag for TapInteraction.EventType(v31);
  if (result == 1)
  {
    return result;
  }

  if ((a1 & 1) == 0)
  {
    memcpy(v29, v30, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v29, v28);
    v16 = a2 & 1;
    goto LABEL_11;
  }

  if (a2)
  {
    memcpy(v29, v30, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v29, v28);
    v16 = 1;
    goto LABEL_11;
  }

  memcpy(v29, v30, 0xE8uLL);
  outlined init with copy of MultiwayViewController.ViewContent(v29, v28);
  if ((MultiwayViewController.isOnScreen.getter() & 1) == 0)
  {
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_7:
      v13 = static OS_os_log.conversationKit;
      v14 = static os_log_type_t.default.getter();
      v15 = os_log(_:dso:log:type:_:)("We changed to oneToOneEnabled=1 while offscreen, requesting to pause again...", 77, 2, &dword_1BBC58000, v13, v14, MEMORY[0x1E69E7CC0]);
      MultiwayViewController.pauseUserInterface()(v15);
      goto LABEL_8;
    }

LABEL_22:
    swift_once();
    goto LABEL_7;
  }

LABEL_8:
  v16 = 0;
LABEL_11:
  if (a2)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  MultiwayViewController.updateFullScreenFocus(changeSource:defocusAnimationStyle:)(v16, v17);
  if (static Platform.current.getter() == 3)
  {
    v18 = v31[7];
    ConversationController.isOneToOneModeEnabled.getter();
    v19 = LocalParticipantView.supportsRotation.setter();
    if (((*((*MEMORY[0x1E69E7D40] & **(v18 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView)) + 0x280))(v19) & 0x100000000) != 0)
    {
      v20 = v18 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate;
      swift_beginAccess();
      *(v20 + 8) = &protocol witness table for MultiwayViewController;
      swift_unknownObjectWeakAssign();
    }
  }

  v21 = MultiwayViewController.captionsViewController.getter();
  if (v21)
  {
    v22 = v21;
    v23 = ConversationController.isOneToOneModeEnabled.getter();
    CaptionsViewController.isGroupCall.setter((v23 & 1) == 0);
  }

  MultiwayViewController.updateFloatingLocalParticpantView()();
  MultiwayViewController.updateLocalParticipantAspectRatio()();
  MultiwayViewController.updateLocalParticipantState()();
  v24 = v31[6];
  v25 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
  swift_beginAccess();
  MultiwayViewController.updateViewVisibility(localParticipantState:)(*(v24 + v25));
  MultiwayViewController.updateCornerButtonsVisibility()();
  MultiwayViewController.resetCaptionsViewDragState()(v26);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
}

void MultiwayViewController.conversationControllerIsTrackingActiveConversationDidChange(_:)(char a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (a1)
    {
      ConversationController.lookupActiveConversation()();
      v7 = v15;
      if (v15)
      {
        v8 = v16;
        __swift_project_boxed_opaque_existential_1(v14, v15);
        v9 = (*(v8 + 56))(v7, v8);
        __swift_destroy_boxed_opaque_existential_1(v14);
        if (v9 == 1)
        {
          v10 = MultiwayViewController.conversationControlsManager.getter();
          if (v10)
          {
            v11 = v10;
            ConversationControlsManager.showInCallHUD()();
          }
        }
      }

      else
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      }

      MultiwayViewController.playOutgoingGFTRingtoneIfNeeded()();
      MultiwayViewController.updateLocalParticipantState()();
      MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
    }

    else
    {
      MultiwayViewController.updateLocalParticipantState()();
      MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
      MultiwayViewController.testing_transitionedToInactiveState()();
    }

    MultiwayViewController.setupCallTranslationIfNeeded()();
    v12 = MultiwayViewController.conversationControlsManager.getter();
    MultiwayViewController.setupMoreMenu(_:)(v12);
  }

  else
  {
    __break(1u);
  }
}

id MultiwayViewController.conversationControllerDidUpdateHasRingingCalls(_:)(char a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = ConversationController.isOneToOneModeEnabled.getter();
    if ((v8 & 1) == 0)
    {
      if (a1)
      {
        MultiwayViewController.pauseUserInterface()(v8);
      }

      else
      {
        MultiwayViewController.resumeUserInterface()();
      }
    }

    MultiwayViewController.updateLocalParticipantState()();
    return MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MultiwayViewController.conversationControllerDidUpdateWantsHoldMusic(_:)(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  result = ConversationController.isOneToOneModeEnabled.getter();
  if ((result & 1) == 0)
  {
    return result;
  }

  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_5:
      v10 = static OS_os_log.conversationKit;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1BC4BA940;
      v12 = v8 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
      swift_beginAccess();
      v13 = *(v12 + 16);
      v18 = *v12;
      v19 = v13;
      v14 = String.init<A>(reflecting:)();
      v16 = v15;
      *(v11 + 56) = MEMORY[0x1E69E6158];
      *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v11 + 32) = v14;
      *(v11 + 40) = v16;
      v17 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Requesting to start sending video because exiting hold music flow, broadcastingState: %@", 88, 2, &dword_1BBC58000, v10, v17, v11);

      ConversationController.startLocalVideo(allowVideoUpgrade:)(1);
      goto LABEL_6;
    }

LABEL_9:
    swift_once();
    goto LABEL_5;
  }

LABEL_6:
  MultiwayViewController.updateLocalParticipantState()();
  return MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
}

void closure #42 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1)
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v4 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v5 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      MultiwayViewController.conversationControllerDidRemoveAllVisibleParticipants()();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.conversationControllerDidRemoveAllVisibleParticipants()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(v19, (v1 + v8), sizeof(v19));
    memcpy(v20, (v1 + v8), sizeof(v20));
    result = getEnumTag for TapInteraction.EventType(v20);
    if (result != 1)
    {
      memcpy(v18, v20, sizeof(v18));
      v9 = MultiwayViewController.ViewContent.participantsViewControllers.getter();
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = v9 + 32;
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        do
        {
          outlined init with copy of IDSLookupManager(v11, v15);
          v12 = v16;
          v13 = v17;
          __swift_project_boxed_opaque_existential_1(v15, v16);
          (*(v13 + 104))(v12, v13);
          __swift_destroy_boxed_opaque_existential_1(v15);
          v11 += 40;
          --v10;
        }

        while (v10);
      }

      else
      {
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
      }

      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *closure #43 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1)
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v4 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v5 = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController;
  v10 = *(*&v7[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController] + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController);
  v11 = MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *v10) + 0xF0);
  v13 = v7;
  v14 = v10;
  LOBYTE(v12) = v12();

  if (VideoMessageController.State.rawValue.getter(v12) == 0x7964616552746F6ELL && v15 == 0xE800000000000000)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_15;
    }

    MultiwayViewController.cancelVideoRecording(completion:)();
    v18 = *(*&v7[v9] + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController);
    v19 = *((*v11 & *v18) + 0xF0);
    v20 = v18;
    LOBYTE(v19) = v19();

    if (VideoMessageController.State.rawValue.getter(v19) == 0x6F4364726F636572 && v21 == 0xEE006574656C706DLL)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v29 = [v13 navigationController];
    if (v29)
    {
      v30 = v29;
    }
  }

LABEL_15:
  v24 = objc_opt_self();
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for closure #1 in closure #43 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  *(v25 + 24) = v8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for closure #1 in DropdownMenuButton.primaryButton(action:text:color:);
  *(v26 + 24) = v25;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_535;
  v27 = _Block_copy(aBlock);

  [v24 performWithoutAnimation_];

  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

void MultiwayViewController.cancelVideoRecording(completion:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_55();
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_205_5();
  memcpy(v3, v4, v5);
  v6 = OUTLINED_FUNCTION_46_26(v26);
  if (!v14)
  {
    v15 = *(v2 + 56);
    LocalParticipantView.endCountdown()();
  }

  if (MultiwayViewController.isPresentingEffectsBrowser.getter(v6, v7, v8, v9, v10, v11, v12, v13))
  {
    OUTLINED_FUNCTION_205_5();
    memcpy(v16, v17, v18);
    OUTLINED_FUNCTION_46_26(v25);
    if (!v14 && *(v2 + 80))
    {
      OUTLINED_FUNCTION_4_137();
      v20 = *(v19 + 152);
      v22 = v21;
      v20(0);
    }

    v23 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsEnabled;
    OUTLINED_FUNCTION_3_5(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsEnabled, &v24);
    *(v1 + v23) = 0;
    MultiwayViewController.showEffectsControls(_:shouldUpdateLocalParticipantState:)(0, 0);
  }

  OUTLINED_FUNCTION_45_1();
  ConversationController.resetRecordingVideoMessage(completion:)();
}

void closure #44 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      MultiwayViewController.conversationControllerDidUpdateParticipantCameraPosition(_:cameraPosition:)(a1, a2);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.conversationControllerDidUpdateParticipantCameraPosition(_:cameraPosition:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v12 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(v18, (v3 + v12), sizeof(v18));
    memcpy(v19, (v3 + v12), sizeof(v19));
    result = getEnumTag for TapInteraction.EventType(v19);
    if (result != 1)
    {
      memcpy(v17, v18, 0xE8uLL);
      outlined init with copy of MultiwayViewController.ViewContent(v17, &v16);
      if (ConversationController.isOneToOneModeEnabled.getter())
      {
        v13 = ParticipantGridViewController.gridView.getter();
        if (v13)
        {
          v14 = v13;
          ParticipantGridView.updateVisibleCameraPosition(for:visibleCameraPosition:animated:)(a1, a2, 0);
        }

        MostActiveParticipantViewController.update(participant:visibleCameraPosition:)();
      }

      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #45 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1)
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v4 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v5 = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      ShouldPauseOnFirstLocalVideo = MultiwayViewController.conversationControllerShouldPauseOnFirstLocalVideoFrame()();
    }

    else
    {
      ShouldPauseOnFirstLocalVideo = 0;
    }

    return ShouldPauseOnFirstLocalVideo & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MultiwayViewController.conversationControllerShouldPauseOnFirstLocalVideoFrame()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.conversationKit);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315906;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000039, 0x80000001BC51D150, &v20);
    *(v11 + 12) = 1024;
    v13 = MultiwayViewController.call.getter();
    v14 = [v13 isConversation];

    *(v11 + 14) = v14;
    *(v11 + 18) = 1024;
    *(v11 + 20) = (MultiwayViewController.isVisibleForStartingCamera.getter() & 1) == 0;

    *(v11 + 24) = 1024;
    *(v11 + 26) = MultiwayViewController.isFrontmostMultiway.getter() & 1;

    _os_log_impl(&dword_1BBC58000, v9, v10, "%s,\ncall.isConversation : %{BOOL}d,\n!isVisibleForStartingCamera: %{BOOL}d,\nisFrontmostMultiway: %{BOOL}d", v11, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFB23DF0](v12, -1, -1);
    MEMORY[0x1BFB23DF0](v11, -1, -1);
  }

  else
  {
  }

  v15 = MultiwayViewController.call.getter();
  v16 = [v15 isConversation];

  if (v16 && (MultiwayViewController.isVisibleForStartingCamera.getter() & 1) == 0)
  {
    v17 = MultiwayViewController.isFrontmostMultiway.getter();
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

Swift::Void __swiftcall MultiwayViewController.updateParticipantGridLayoutStyle(for:)(Swift::Int a1)
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_178_1(v31);
  OUTLINED_FUNCTION_178_1(&v32);
  v2 = OUTLINED_FUNCTION_46_26(&v32);
  if (!v10)
  {
    v11 = OUTLINED_FUNCTION_111_8(v2, v3, v4, v5, v6, v7, v8, v9, v28, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8], v30[9], v30[10], v30[11], v30[12], v30[13], v30[14], v30[15], v30[16], v30[17], v30[18], v30[19], v30[20], v30[21], v30[22], v30[23], v30[24], v30[25], v30[26], v30[27], v30[28], v30[29], v30[30], v30[31], v30[32], v30[33], v30[34], v30[35], v30[36], v30[37], v30[38], v30[39], v30[40], v30[41], v30[42], v30[43], v30[44], v30[45], v30[46], v30[47], v30[48], v30[49], v30[50], v30[51], v30[52], v30[53]);
    OUTLINED_FUNCTION_217_4(v11, v12, v13, v14, v15, v16, v17, v18, v29, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8], v30[9], v30[10], v30[11], v30[12], v30[13], v30[14], v30[15], v30[16], v30[17], v30[18], v30[19], v30[20], v30[21], v30[22], v30[23], v30[24], v30[25], v30[26], v30[27], v30[28]);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v19 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v19, static Logger.conversationKit);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v21))
    {
      v22 = OUTLINED_FUNCTION_42();
      *v22 = 134217984;
      *(v22 + 4) = a1;
      OUTLINED_FUNCTION_219();
      _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
      OUTLINED_FUNCTION_18();
    }

    LOBYTE(v30[0]) = a1 > 3;
    ParticipantGridViewController.updateLayout(_:)(v30);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
  }
}

uint64_t MultiwayViewController.conversationControllerLetMeInRequestStateDidChange(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
    v9 = v8 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
    swift_beginAccess();
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 120);
    swift_unknownObjectRetain();
    LOBYTE(v10) = v12(ObjectType, v10);
    result = swift_unknownObjectRelease();
    if (v10)
    {
      v13 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
      swift_beginAccess();
      outlined init with copy of IDSLookupManager(v8 + v13, v28);
      v14 = v29;
      v15 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v16 = *(v9 + 8);
      v17 = *(v15 + 104);
      v18 = swift_unknownObjectRetain();
      v17(&v26, v18, v16, v14, v15);
      swift_unknownObjectRelease();
      if (v27)
      {
        outlined init with take of TapInteractionHandler(&v26, v31);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v19 = v32;
        v20 = v33;
        __swift_project_boxed_opaque_existential_1(v31, v32);
        v21 = (*(v20 + 216))(v19, v20);
        if (v21)
        {

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v23 = Strong;
            if ([Strong respondsToSelector_])
            {
              [v23 updateCallParticipantLabelsViewForViewController_];
            }

            swift_unknownObjectRelease();
          }

          MultiwayViewController.updateViewConstraints()();
          MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
        }

        v24 = v31;
      }

      else
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v26, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
        v24 = v28;
      }

      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #48 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      HIWORD(v9) = 514;
      MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(&v9 + 6);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #49 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    v10 = (*(v9 + 216))(v8, v9);
    if (v10)
    {

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v12 = Strong;
        MultiwayViewController.scheduleLinkEducationFirstTimeAlert()();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.scheduleLinkEducationFirstTimeAlert()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
  ObjectType = swift_getObjectType();
  result = (*(v12 + 424))(ObjectType, v12);
  if (result)
  {
    ConversationController.lookupActiveConversation()();
    if (v39)
    {
      v30 = v2;
      v31 = v1;
      outlined init with take of TapInteractionHandler(&aBlock, v43);
      v15 = v44;
      v16 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      v17 = (*(v16 + 216))(v15, v16);
      if (v17)
      {

        v18 = v44;
        v19 = v45;
        __swift_project_boxed_opaque_existential_1(v43, v44);
        if ((*(v19 + 56))(v18, v19) == 3)
        {
          (*(v12 + 432))(0, ObjectType, v12);
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
          v29 = static OS_dispatch_queue.main.getter();
          static DispatchTime.now()();
          + infix(_:_:)(1.0);
          v32 = *(v32 + 8);
          v20 = v8;
          v21 = v33;
          (v32)(v20, v33);
          v22 = swift_allocObject();
          swift_unknownObjectWeakInit();
          outlined init with copy of IDSLookupManager(v43, v42);
          v23 = swift_allocObject();
          *(v23 + 16) = v22;
          outlined init with take of TapInteractionHandler(v42, v23 + 24);
          v40 = partial apply for closure #1 in MultiwayViewController.scheduleLinkEducationFirstTimeAlert();
          v41 = v23;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v38 = thunk for @escaping @callee_guaranteed () -> ();
          v39 = &block_descriptor_522;
          v24 = _Block_copy(&aBlock);

          static DispatchQoS.unspecified.getter();
          *&aBlock = MEMORY[0x1E69E7CC0];
          lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          v25 = v35;
          v26 = v31;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v27 = v29;
          MEMORY[0x1BFB21510](v11, v5, v25, v24);
          _Block_release(v24);

          (*(v30 + 8))(v25, v26);
          (*(v34 + 8))(v5, v36);
          (v32)(v11, v21);
        }
      }

      return __swift_destroy_boxed_opaque_existential_1(v43);
    }

    else
    {
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&aBlock, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    }
  }

  return result;
}

void closure #50 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
    swift_beginAccess();
    v4 = *&v2[v3];

    if (v4 == 2)
    {
      swift_beginAccess();
      v5 = swift_unknownObjectWeakLoadStrong();
      if (!v5)
      {
        return;
      }

      v6 = v5;
      v7 = (v5 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
      swift_beginAccess();
      memmove(__dst, v7, 0xE8uLL);
      if (getEnumTag for TapInteraction.EventType(__dst) == 1)
      {

        return;
      }

      v17 = v7[13];

      v18 = &unk_1F3AF2E48;
      v19 = MostActiveParticipantViewController.flashView.getter;
      goto LABEL_14;
    }
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8 || (v9 = v8, v10 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState, swift_beginAccess(), v11 = *&v9[v10], v9, v11))
  {
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = (v12 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
      swift_beginAccess();
      memmove(__dst, v14, 0xE8uLL);
      if (getEnumTag for TapInteraction.EventType(__dst) == 1)
      {
      }

      else
      {
        v15 = v14[13];

        specialized MomentsBackedViewControllerProtocol.remoteDidTakePhoto()(MostActiveParticipantViewController.flashView.getter, &unk_1F3AF2E48);
      }
    }
  }

  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = &unk_1F3AF2E20;
    v19 = MultiwayViewController.flashView.getter;
LABEL_14:
    specialized MomentsBackedViewControllerProtocol.remoteDidTakePhoto()(v19, v18);
  }
}

void closure #51 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = MultiwayViewController.captionsViewController.getter();
      if (v10)
      {
        v11 = v10;
        CaptionsViewController.updateCaptions(for:)(a1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #52 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = MultiwayViewController.captionsViewController.getter();

      if (v12)
      {
        swift_beginAccess();
        v13 = swift_unknownObjectWeakLoadStrong();
        v14 = v13;
        if (v13)
        {
          v15 = *(v13 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

          v14 = ConversationController.conversationDisplayName.getter();
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        CaptionsViewController.callName.setter(v14, v17);
      }
    }

    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v20 = MultiwayViewController.captionsViewController.getter();

      if (v20)
      {
        v21 = a1[3];
        v22 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v21);
        v23 = (*(v22 + 48))(v21, v22);
        CaptionsViewController.groupImage.setter(v23);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void MultiwayViewController.conversationControllerDidUpdateVideoMessagingAvailable()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
  ObjectType = swift_getObjectType();
  if ((*(v1 + 600))(ObjectType, v1))
  {

    MultiwayViewController.updateVideoMessagingAvailableForCurrentState()();
  }
}

void closure #54 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (one-time initialization token for videoMessaging != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, &static Logger.videoMessaging);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13[0] = v7;
    *v6 = 136315138;
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Encountered an error performing a video message action: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    MultiwayViewController.showUnrecoverableAlertFromError(_:)(v2);
  }
}

void MultiwayViewController.showUnrecoverableAlertFromError(_:)(char a1)
{
  v2 = v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController, 0x1E69DC650);
  v3 = objc_opt_self();
  v4 = [v3 conversationKit];
  v19._object = 0xE000000000000000;
  v5._object = 0x80000001BC51D050;
  v5._countAndFlagsBits = 0xD00000000000002FLL;
  v6.value._countAndFlagsBits = 0x61737265766E6F43;
  v6.value._object = 0xEF74694B6E6F6974;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v19);

  v17 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v8._countAndFlagsBits, v8._object, 0, 0xE000000000000000, 1);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction, 0x1E69DC648);
  v9 = [v3 conversationKit];
  v20._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000030;
  v10._object = 0x80000001BC51D080;
  v11.value._countAndFlagsBits = 0x61737265766E6F43;
  v11.value._object = 0xEF74694B6E6F6974;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v20);

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  v15 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  [v17 addAction_];

  [v2 presentViewController:v17 animated:1 completion:0];
}

void closure #55 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(char a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      HIWORD(v10) = a1 & 1;
      MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(&v10 + 6);
    }
  }

  else
  {
    __break(1u);
  }
}

char *closure #56 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16[-v3];
  v5 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v5);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = result;
      v13 = *&result[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController];
      ConversationController.participant(with:)();

      if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
      {

        return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      }

      else
      {
        _s15ConversationKit11ParticipantVWObTm_7();
        v14 = &v12[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
        swift_beginAccess();
        memmove(v17, v14, 0xE8uLL);
        if (getEnumTag for TapInteraction.EventType(v17) == 1)
        {
        }

        else
        {
          v15 = v14[1];
          ParticipantGridViewController.updateProminenceEMA(withParticipant:ema:audioPriority:videoPriority:)();
        }

        return _s15ConversationKit11ParticipantVWOhTm_17();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #57 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_278(a1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    specialized EffectsHandler.automation_setEffectsMode(enabled:)(a2 & 1);
  }
}

id MultiwayViewController.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_247()) initWithCoder_];

  return v1;
}

void MultiwayViewController.init(coder:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_101();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_dockKitAccessoryManager) = 0;
  v11 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_trackedSubjectsViewDict;
  type metadata accessor for UUID();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CEKCinematicSubjectIndicatorView, 0x1E6993838);
  OUTLINED_FUNCTION_13_82();
  lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(v12, v13);
  v14 = MEMORY[0x1E69E7CC0];
  *(v0 + v11) = Dictionary.init(dictionaryLiteral:)();
  *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isInCallEndedBlockAndReportFlow) = 0;
  v15 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_featureFlags;
  *(v2 + v15) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v16 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_spamAlertBuilder;
  type metadata accessor for SpamAlertBuilder();
  *(v2 + v16) = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_bannerPresentationManagerBox) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isSplitViewActive) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyleBeforeReactionsVisible) = 2;
  v17 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_sidebarStateStream;
  type metadata accessor for SidebarStateStream();
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  *(v2 + v17) = SidebarStateStream.init(initial:)(0);
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_showReactionPickerTimer) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didRequestMemojiPicker) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipDisplayStateObservationTask) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipStatusObservationTask) = 0;
  type metadata accessor for VideoReactionPickerTip();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsTips) = 1;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_avcEffects) = 0;
  v22 = v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsCaptureInfo;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *(v22 + 64) = 0;
  v23 = v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_linkShareCoordinator;
  *(v23 + 32) = 0;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didExpandIncomingCallBanner) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController__cachedDidExpandActiveVideoCallFromBanner) = 2;
  v24 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  _s15ConversationKit22MultiwayViewControllerC0D7ContentVSgWOi0_(v39);
  memcpy((v2 + v24), v39, 0xE8uLL);
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController) = 1;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_inCallControlsDismissTimer) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsLayoutController) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_shouldShowZoomControls) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hideOneToOneLivePhotoAlertViewTimer) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didNotifyMutedCaller) = 0;
  v25 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedPresentationSize);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedGridViewSize);
  *v26 = 0;
  v26[1] = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsConnectionAnimation) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsPausedState) = 4;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_frontBoardInterfaceOrientation) = 1;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations) = 2;
  v27 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController__isOnScreen;
  Published.init(initialValue:)();
  (*(v5 + 32))(v2 + v27, v1, v3);
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasParticipantVideo) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___dimmingLayer) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner) = 0;
  v28 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deskViewTapHandler);
  *v28 = 0;
  v28[1] = 0;
  v29 = v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostRecentFullScreenFocusedAspectRatio;
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 1;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostRecentGridIsFullScreen) = 2;
  v30 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_windowAspectRatioHandler);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsLayoutChangeHandler);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_unansweredCallDismissalHandler);
  *v32 = 0;
  v32[1] = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isFullScreen) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isAmbient) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isPipStashed) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsEnabled) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsUpdatePresentationContexts) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_lastUpdatedMostActiveParticipantViewForPiP) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView) = 1;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasInitializedMomentsViews) = 0;
  v33 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame);
  *v33 = 0u;
  v33[1] = 0u;
  v34 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipFrameInWindowScene);
  *v34 = 0u;
  v34[1] = 0u;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isScreenSharingFullScreen) = 0;
  v35 = v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipInfo;
  *v35 = 4;
  *(v35 + 8) = 0;
  *(v35 + 16) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callUUIDsThatPresentedSNaPSecondaryPill) = v14;
  v36 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tonePlayer;
  *(v2 + v36) = [objc_allocWithZone(type metadata accessor for TonePlayer(0)) init];
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_subscriptions) = MEMORY[0x1E69E7CD0];
  v37 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_additionalLocalParticipantInsets);
  v38 = *(MEMORY[0x1E69DDCE0] + 16);
  *v37 = *MEMORY[0x1E69DDCE0];
  v37[1] = v38;
  *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___mePipDimmingBackgroundView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id MultiwayViewController.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_inCallControlsDismissTimer];
  if (v3)
  {
    [v3 invalidate];
  }

  v4 = *&v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_showReactionPickerTimer];
  if (v4)
  {
    [v4 invalidate];
  }

  v5 = *&v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hideOneToOneLivePhotoAlertViewTimer];
  if (v5)
  {
    [v5 invalidate];
  }

  OUTLINED_FUNCTION_4_137();
  v7 = *(v6 + 240);
  v9 = v8;
  v7();

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_4_137();
  v11 = *(v10 + 376);
  v13 = v12;
  v11();

  v14 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_features;
  v15 = *&v1[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_features];
  v16 = Features.isMoreMenuEnabled.getter();

  if (v16)
  {
    v17 = MultiwayViewController.call.getter();
    if (([v17 isActive] & 1) == 0)
    {
      type metadata accessor for FTMenuItemRegistry();
      v18 = static FTMenuItemRegistry.shared.getter();
      v19 = [v17 uniqueProxyIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_254();

      v20._countAndFlagsBits = OUTLINED_FUNCTION_43_0();
      FTMenuItemRegistry.clear(for:)(v20);
    }
  }

  v21 = *&v1[v14];
  v22 = Features.buttonRemoteControlEnabled.getter();

  if (v22)
  {
    v24 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_dockKitAccessoryManager;
    OUTLINED_FUNCTION_6_0(&v1[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_dockKitAccessoryManager], v23);
    if (*&v1[v24])
    {

      DockKitAccessoryManager.stop()();
    }

    *&v1[v24] = 0;
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v25 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v25, static Logger.conversationKit);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v27))
    {
      v28 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_182_0(v28);
      OUTLINED_FUNCTION_8_10();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      OUTLINED_FUNCTION_4_4();
    }
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v35 = OUTLINED_FUNCTION_13_12(v34);
  *(v35 + 16) = xmmword_1BC4BA940;
  v43 = v1;
  v36 = v1;
  v37 = String.init<A>(reflecting:)();
  v39 = v38;
  *(v35 + 56) = MEMORY[0x1E69E6158];
  *(v35 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v35 + 32) = v37;
  *(v35 + 40) = v39;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_156();
  os_log(_:dso:log:type:_:)(v40);

  v42.receiver = v36;
  v42.super_class = ObjectType;
  return objc_msgSendSuper2(&v42, sel_dealloc);
}