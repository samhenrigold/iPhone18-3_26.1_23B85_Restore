void specialized Array<A>.sortToMatch(_:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10Foundation4UUIDV7elementtMd, &_sSi6offset_10Foundation4UUIDV7elementtMR);
  MEMORY[0x1EEE9AC00](v6);
  v24 = (v23 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10Foundation4UUIDV7elementtSgMd, &_sSi6offset_10Foundation4UUIDV7elementtSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  v14 = *(a1 + 16);
  v23[1] = v3 + 16;
  v26 = (v3 + 8);
  v27 = (v3 + 32);
  v25 = a1;

  v15 = 0;
  v28 = v14;
  for (i = v10; ; v10 = i)
  {
    if (v15 == v14)
    {
      v16 = 1;
      v15 = v14;
      goto LABEL_7;
    }

    if (v15 >= v14)
    {
      break;
    }

    if (__OFADD__(v15, 1))
    {
      goto LABEL_17;
    }

    v17 = v24;
    v18 = v25 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15;
    v19 = *(v6 + 48);
    *v24 = v15;
    (*(v3 + 16))(&v17[v19], v18, v2);
    outlined init with take of CaptionSectioner.SpeakerSection?();
    v16 = 0;
    ++v15;
LABEL_7:
    __swift_storeEnumTagSinglePayload(v10, v16, 1, v6);
    outlined init with take of CaptionSectioner.SpeakerSection?();
    if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
    {

      return;
    }

    v31 = *v13;
    (*v27)(v5, &v13[*(v6 + 48)], v2);
    v20 = 0;
    v21 = *v30;
    v22 = *(*v30 + 16);
    while (v22 != v20)
    {
      lazy protocol witness table accessor for type UUID and conformance UUID();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        if (v31 < *(v21 + 16))
        {
          specialized MutableCollection.swapAt(_:_:)();
        }

        break;
      }

      ++v20;
    }

    (*v26)(v5, v2);
    v14 = v28;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void ParticipantGridViewController.update(participant:audioPower:)(Swift::Float a1)
{
  v4 = v2;
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v3 = static OS_dispatch_queue.main.getter();
  v9 = OUTLINED_FUNCTION_64_10();
  v10(v9);
  v11 = _dispatchPreconditionTest(_:)();
  v12 = v7 + 8;
  v13 = OUTLINED_FUNCTION_206();
  v14(v13);
  if (v11)
  {
    v12 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participants;
    OUTLINED_FUNCTION_3_0();
    v15 = swift_beginAccess();
    MEMORY[0x1EEE9AC00](v15);
    OUTLINED_FUNCTION_72_7();
    v11 = OUTLINED_FUNCTION_92_3();
    v17 = v16;

    if (v17)
    {
      return;
    }

    OUTLINED_FUNCTION_30_2(v4 + v12, v24);
    v18 = *(v4 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v12) = v18;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_11:
      __break(1u);
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  specialized _ArrayBuffer._consumeAndCreateNew()();
  v18 = v23;
  *(v4 + v12) = v23;
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v11 >= *(v18 + 16))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v20 = *(type metadata accessor for Participant(0) - 8);
  outlined assign with copy of Participant(v1, v18 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v11);
  *(v4 + v12) = v18;
  swift_endAccess();
  v21 = ParticipantGridViewController.gridView.getter();
  if (v21)
  {
    v22 = v21;
    ParticipantGridView.updateAudioPower(for:audioPower:)(a1);
  }
}

void ParticipantGridViewController.update(participant:gradientOverlayAlpha:)()
{
  v0 = ParticipantGridViewController.gridView.getter();
  if (v0)
  {
    v1 = v0;
    ParticipantGridView.updateGradientOverlayView(for:isHidden:alpha:)();
  }
}

void ParticipantGridViewController.update(participant:visibleCameraPosition:)(uint64_t a1, uint64_t a2)
{
  v4 = ParticipantGridViewController.gridView.getter();
  if (v4)
  {
    v5 = v4;
    ParticipantGridView.updateVisibleCameraPosition(for:visibleCameraPosition:animated:)(a1, a2, 0);
  }
}

Swift::Void __swiftcall ParticipantGridViewController.removeAllParticipants()()
{
  OUTLINED_FUNCTION_29();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10_17();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22[-v5];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22[-v8];
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v11 = type metadata accessor for Participant(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v11);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (EnumTagSinglePayload == 1 && (OUTLINED_FUNCTION_3_0(), swift_beginAccess(), outlined init with copy of [CaptionSectioner.SpeakerSection](), v13 = __swift_getEnumTagSinglePayload(v9, 1, v11), v14 = OUTLINED_FUNCTION_32_2(), outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, v15, &_s15ConversationKit11ParticipantVSgMR), v13 == 1))
  {
    ParticipantGridViewController.update(with:animationStyle:forced:)(MEMORY[0x1E69E7CC0], 1, 0);
  }

  else
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v16 = OUTLINED_FUNCTION_29_5();
    v18 = __swift_getEnumTagSinglePayload(v16, v17, v11);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    if (v18 != 1)
    {
      ParticipantGridViewController.fullScreenDefocus(to:animationStyle:)(MEMORY[0x1E69E7CC0], ConversationKit_ParticipantGridView_AnimationStyle_fast);
    }

    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_92_0();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v19 = __swift_getEnumTagSinglePayload(v0, 1, v11);
    v20 = OUTLINED_FUNCTION_44_0();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, v21, &_s15ConversationKit11ParticipantVSgMR);
    if (v19 != 1)
    {
      ParticipantGridViewController.defocus(to:)(MEMORY[0x1E69E7CC0]);
    }
  }

  OUTLINED_FUNCTION_30_0();
}

void ParticipantGridViewController.spatialPosition(for:relativeTo:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_77_2();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v6 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v3 = static OS_dispatch_queue.main.getter();
  v7 = OUTLINED_FUNCTION_23_34();
  v8(v7);
  _dispatchPreconditionTest(_:)();
  v9 = OUTLINED_FUNCTION_26_30();
  v10(v9);
  if (v6)
  {
    v11 = ParticipantGridViewController.gridView.getter();
    if (v11)
    {
      v12 = v11;
      v13 = *(type metadata accessor for Participant(0) + 20);
      v14 = type metadata accessor for ParticipantView(0);
      v15 = ParticipantGridView.tile(for:ofAClass:)(v2 + v13, v14);
      if (v15)
      {
        v16 = v15;
        [v15 frame];
        [v12 convertRect:a2 toCoordinateSpace:?];
        OUTLINED_FUNCTION_40_1();
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_35();
  }

  else
  {
    __break(1u);
  }
}

void (*protocol witness for ParticipantsViewController.participantsViewControllerDelegate.modify in conformance ParticipantGridViewController(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = *v1;
  v5 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsViewControllerDelegate;
  v3[5] = *v1;
  v3[6] = v5;
  v6 = v4 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  v3[3] = Strong;
  v3[4] = v8;
  return ParticipantGridViewController.participantsViewControllerDelegate.modify;
}

uint64_t ParticipantGridViewController.participantGridViewDelegateDidFinishAnimatingTiles(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantGridViewControllerDelegate;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void ParticipantGridViewController.participantGridViewDelegate(_:didUpdateParticipantIdentifier:with:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v64 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v24 = OUTLINED_FUNCTION_22(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v59 - v27;
  if (v4)
  {
    v29 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participants;
    OUTLINED_FUNCTION_3_0();
    v30 = swift_beginAccess();
    v31 = *(v2 + v29);
    MEMORY[0x1EEE9AC00](v30);
    *(&v59 - 2) = v6;

    specialized Sequence.first(where:)(partial apply for closure #1 in ParticipantGridViewController.participantGridViewDelegate(_:didUpdateParticipantIdentifier:with:), v31, v28);

    v32 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_sashedParticipant;
    OUTLINED_FUNCTION_50_13(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_sashedParticipant);
    outlined assign with take of Participant?(v28, v2 + v32);
    swift_endAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v33 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant;
    OUTLINED_FUNCTION_50_13(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant);
    outlined assign with take of Participant?(v28, v2 + v33);
    swift_endAccess();
    goto LABEL_20;
  }

  v60 = v26;
  v61 = v9;
  v62 = v2;
  v34 = v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v35 = 1;
  v65 = type metadata accessor for Participant(0);
  if (!__swift_getEnumTagSinglePayload(v34, 1, v65))
  {
    (*(v61 + 16))(v22, v34 + *(v65 + 20), v7);
    v35 = 0;
  }

  v63 = v34;
  __swift_storeEnumTagSinglePayload(v22, v35, 1, v7);
  v36 = *(v13 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_115(v1, 1, v7);
  v37 = v28;
  if (!v41)
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(v1 + v36, 1, v7);
    v39 = v62;
    if (!v41)
    {
      v50 = v61;
      v51 = v1 + v36;
      v52 = v64;
      (*(v61 + 32))(v64, v51, v7);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v53 = dispatch thunk of static Equatable.== infix(_:_:)();
      v54 = *(v50 + 8);
      v54(v52, v7);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v54(v19, v7);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v40 = v63;
      v38 = v65;
      if (v53)
      {
        goto LABEL_17;
      }

LABEL_14:
      v42 = v60;
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, v38);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, v45, v46);
      if (EnumTagSinglePayload != 1)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_43_12(v37);
      v47 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_sashedParticipant;
      OUTLINED_FUNCTION_50_13(v39 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_sashedParticipant);
      v48 = v39 + v47;
      v49 = v37;
      goto LABEL_18;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v61 + 8))(v19, v7);
    v38 = v65;
LABEL_13:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_14;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_115(v1 + v36, 1, v7);
  v38 = v65;
  v39 = v62;
  if (!v41)
  {
    goto LABEL_13;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v40 = v63;
LABEL_17:
  OUTLINED_FUNCTION_43_12(v37);
  v55 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_sashedParticipant;
  OUTLINED_FUNCTION_50_13(v39 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_sashedParticipant);
  outlined assign with take of Participant?(v37, v39 + v55);
  swift_endAccess();
  OUTLINED_FUNCTION_43_12(v37);
  OUTLINED_FUNCTION_30_2(v40, &v66);
  v49 = v37;
  v48 = v40;
LABEL_18:
  outlined assign with take of Participant?(v49, v48);
  swift_endAccess();
  v56 = v39 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantGridViewControllerDelegate;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v57 = *(v56 + 8);
    ObjectType = swift_getObjectType();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    (*(v57 + 40))(v39, v37, ObjectType, v57);
    swift_unknownObjectRelease();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v37, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  }

LABEL_20:
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in ParticipantGridViewController.participantGridViewDelegate(_:didUpdateParticipantIdentifier:with:)(uint64_t a1, uint64_t a2)
{
  v22[1] = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v22[0] = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  v16 = type metadata accessor for Participant(0);
  (*(v4 + 16))(v15, a1 + *(v16 + 20), v3);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v3);
  v17 = *(v7 + 56);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) != 1)
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(&v9[v17], 1, v3) != 1)
    {
      v19 = v22[0];
      (*(v4 + 32))(v22[0], &v9[v17], v3);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v4 + 8);
      v20(v19, v3);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v20(v12, v3);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return v18 & 1;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v4 + 8))(v12, v3);
    goto LABEL_6;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (__swift_getEnumTagSinglePayload(&v9[v17], 1, v3) != 1)
  {
LABEL_6:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v18 = 0;
    return v18 & 1;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v18 = 1;
  return v18 & 1;
}

uint64_t ParticipantGridViewController.isOneToOneModeEnabled.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_11(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = OUTLINED_FUNCTION_74_7(Strong);
    v4 = (*(v1 + 88))(v3, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t ParticipantGridViewController.hasConnectedToCall.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_11(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = OUTLINED_FUNCTION_74_7(Strong);
    v4 = (*(v1 + 96))(v3, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t ParticipantGridViewController.shouldShowLastFrameUI.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_11(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = OUTLINED_FUNCTION_74_7(Strong);
    v4 = (*(v1 + 104))(v3, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t ParticipantGridViewController.layoutIdiom.getter@<X0>(char *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsViewControllerDelegate;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(&v8, ObjectType, v5);
    result = swift_unknownObjectRelease();
    v7 = v8;
  }

  else
  {
    v7 = 2;
  }

  *a1 = v7;
  return result;
}

uint64_t ParticipantGridViewController.supportedDeviceOrientations.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_11(a1);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 16))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t ParticipantGridViewController.participantGridViewDelegate(_:didSetOverlayHidden:)(uint64_t a1, char a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantGridViewControllerDelegate;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 64))(v2, a2 & 1, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

void ParticipantGridViewController.updateProminenceEMA(withParticipant:ema:audioPriority:videoPriority:)()
{
  v3 = v1;
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v2 = static OS_dispatch_queue.main.getter();
  v7 = OUTLINED_FUNCTION_64_10();
  v8(v7);
  v9 = _dispatchPreconditionTest(_:)();
  v10 = v5 + 8;
  v11 = OUTLINED_FUNCTION_206();
  v12(v11);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participants;
    OUTLINED_FUNCTION_3_0();
    v13 = swift_beginAccess();
    MEMORY[0x1EEE9AC00](v13);
    OUTLINED_FUNCTION_72_7();
    v9 = OUTLINED_FUNCTION_92_3();
    v15 = v14;

    if (v15)
    {
      return;
    }

    OUTLINED_FUNCTION_30_2(v3 + v10, v24);
    v16 = *(v3 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v16;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_11:
      __break(1u);
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  specialized _ArrayBuffer._consumeAndCreateNew()();
  v16 = v23;
  *(v3 + v10) = v23;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v9 >= *(v16 + 16))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v18 = *(type metadata accessor for Participant(0) - 8);
  outlined assign with copy of Participant(v0, v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v9);
  *(v3 + v10) = v16;
  swift_endAccess();
  v19 = ParticipantGridViewController.gridView.getter();
  if (v19)
  {
    v22 = v19;
    ParticipantGridView.updateEMA(for:ema:audioPriority:videoPriority:)(v0, v20, v21);
  }
}

unint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = result + 16 * a2;
  if (a3 >= result)
  {
    v4 = v3 >= a3;
    v5 = v3 == a3;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (v5 || !v4)
  {
    return swift_arrayInitWithTakeFrontToBack();
  }

  if (a3 != result)
  {
    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (specialized Array.count.getter() < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = specialized Array.count.getter();
  v6 = __OFADD__(v5, v4);
  v7 = v5 + v4;
  if (v6)
  {
LABEL_13:
    __break(1u);
    return;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v7, 1);

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(result, a2, 0);
}

void specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_21_33();
  if (v5 != v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = a2 - v3;
  if (__OFSUB__(a2, v3))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFSUB__(1, v7);
  v8 = 1 - v7;
  if (v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v4, v8))
  {
LABEL_13:
    __break(1u);
    return;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4 + v8, 1);

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();
}

{
  specialized Array.replaceSubrange<A>(_:with:)();
}

{
  specialized Array.replaceSubrange<A>(_:with:)();
}

{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_21_33();
  if (v6 != v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = v4;
  v9 = a2 - v4;
  if (__OFSUB__(a2, v4))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = v4 - a2;
  if (__OFSUB__(0, v9))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__OFADD__(v5, v10))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v5 - v9, 1);
  v11 = *v2;
  if (!v10)
  {
LABEL_15:
    *v2 = v11;
    return;
  }

  v12 = *(v11 + 16);
  v13 = v12 - a2;
  if (__OFSUB__(v12, a2))
  {
    goto LABEL_21;
  }

  v14 = (v11 + 32 + 4 * a2);
  v15 = (v11 + 32 + 4 * v8);
  if (v8 != a2 || &v14[4 * v13] <= v15)
  {
    memmove(v15, v14, 4 * v13);
    v12 = *(v11 + 16);
  }

  v7 = __OFADD__(v12, v10);
  v17 = v12 + v10;
  if (!v7)
  {
    *(v11 + 16) = v17;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
}

{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_21_33();
  if (v6 != v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = v4;
  v9 = a2 - v4;
  if (__OFSUB__(a2, v4))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = v4 - a2;
  if (__OFSUB__(0, v9))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__OFADD__(v5, v10))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v5 - v9, 1);
  v11 = *v2;
  if (!v10)
  {
LABEL_15:
    *v2 = v11;
    return;
  }

  v12 = *(v11 + 16);
  v13 = v12 - a2;
  if (__OFSUB__(v12, a2))
  {
    goto LABEL_21;
  }

  v14 = (v11 + 32 + a2);
  v15 = (v11 + 32 + v8);
  if (v8 != a2 || &v14[v13] <= v15)
  {
    memmove(v15, v14, v13);
    v12 = *(v11 + 16);
  }

  v7 = __OFADD__(v12, v10);
  v17 = v12 + v10;
  if (!v7)
  {
    *(v11 + 16) = v17;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
}

void specialized Array.replaceSubrange<A>(_:with:)()
{
  OUTLINED_FUNCTION_50_2();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v1;
  OUTLINED_FUNCTION_21_33();
  if (v6 != v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v4;
  v9 = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v4 - v3;
  if (__OFSUB__(0, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v5, v10))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v5 - v9, 1);
  v11 = *v0;
  v12 = *v0 + 32;
  v13 = v12 + 16 * v8;
  swift_arrayDestroy();
  if (!v9)
  {
LABEL_10:
    *v0 = v11;
    OUTLINED_FUNCTION_49();
    return;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, v3))
  {
    goto LABEL_16;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v12 + 16 * v3, v14 - v3, v13);
  v15 = *(v11 + 16);
  v7 = __OFADD__(v15, v10);
  v16 = v15 - v9;
  if (!v7)
  {
    *(v11 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v1;
  OUTLINED_FUNCTION_21_33();
  if (v9 != v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v4;
  v12 = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v4 - v3;
  if (__OFSUB__(0, v12))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v8, v13))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v7;
  v15 = v6;
  v5(v8 - v12, 1);
  v16 = *v0;
  v15(0);
  OUTLINED_FUNCTION_42_18();
  v18 = v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v20 = *(v19 + 72);
  v21 = v18 + v20 * v11;
  OUTLINED_FUNCTION_40_2();
  swift_arrayDestroy();
  if (!v12)
  {
LABEL_10:
    *v0 = v16;
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v22 = *(v16 + 16);
  if (__OFSUB__(v22, v3))
  {
    goto LABEL_16;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v18 + v20 * v3, v22 - v3, v21, v14);
  v23 = *(v16 + 16);
  v10 = __OFADD__(v23, v13);
  v24 = v23 - v12;
  if (!v10)
  {
    *(v16 + 16) = v24;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

{
  OUTLINED_FUNCTION_50_2();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = v1;
  OUTLINED_FUNCTION_21_33();
  if (v6 != v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = v4;
  v9 = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = v4 - v3;
  if (__OFSUB__(0, v9))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__OFADD__(v5, v10))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v5 - v9, 1);
  v11 = *v0;
  v12 = *v0 + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
  OUTLINED_FUNCTION_40_2();
  swift_arrayDestroy();
  if (!v9)
  {
LABEL_15:
    *v0 = v11;
    OUTLINED_FUNCTION_49();
    return;
  }

  v13 = *(v11 + 16);
  v14 = v13 - v3;
  if (__OFSUB__(v13, v3))
  {
    goto LABEL_21;
  }

  v15 = (v12 + 40 * v3);
  if (v8 != v3 || v15 + 40 * v14 <= v12 + 40 * v8)
  {
    memmove((v12 + 40 * v8), v15, 40 * v14);
    v13 = *(v11 + 16);
  }

  v7 = __OFADD__(v13, v10);
  v17 = v13 - v9;
  if (!v7)
  {
    *(v11 + 16) = v17;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
}

{
  specialized Array.replaceSubrange<A>(_:with:)();
}

uint64_t outlined assign with take of Participant?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ParticipantGridViewController(uint64_t a1)
{
  result = type metadata singleton initialization cache for ParticipantGridViewController;
  if (!type metadata singleton initialization cache for ParticipantGridViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ParticipantGridViewController(uint64_t a1)
{
  type metadata accessor for Participant?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
    Set.Iterator.init(_cocoa:)();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = v3;
  v9 = MEMORY[0x1E69E7CC0];
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_22:
      outlined consume of Set<TUHandle>.Iterator._Variant(v1);
      return;
    }

    while (1)
    {
      v15 = [v14 identifier];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
        v9 = v18;
      }

      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v17 + 1, 1, v9);
        v9 = v19;
      }

      *(v9 + 16) = v17 + 1;
      *(v9 + 8 * v17 + 32) = v15;
      v4 = v12;
      v5 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
        swift_dynamicCast();
        v14 = v26;
        v12 = v4;
        v13 = v5;
        if (v26)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  v22 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    Set.Iterator.init(_cocoa:)();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v15 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_22:
        outlined consume of Set<TUHandle>.Iterator._Variant(v1);
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = [v13 handle];

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      MEMORY[0x1BFB20CC0]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    Set.Iterator.init(_cocoa:)();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80), swift_dynamicCast(), v13 = v26, v4 = v9, v5 = v10, !v26))
      {
LABEL_24:
        outlined consume of Set<TUHandle>.Iterator._Variant(v1);
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_18:
    type metadata accessor for ReportSpamManager();
    v14 = [v13 handle];
    static ReportSpamManager.getContact(forHandle:)(v14);
    v16 = v15;

    v9 = v4;
    v10 = v5;
    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v20 = v18;
      }

      v17 = *(v20 + 16);
      if (v17 >= *(v20 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v20 = v19;
      }

      *(v20 + 16) = v17 + 1;
      *(v20 + 8 * v17 + 32) = v16;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

{
  v45 = type metadata accessor for PersonNameComponents();
  v2 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    a1 = v59;
    v5 = v60;
    v6 = v61;
    v7 = v62;
    v8 = v63;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v40 = v6;
  v12 = (v6 + 64) >> 6;
  v41 = (v2 + 8);
  v51 = v4;
  v52 = MEMORY[0x1E69E7CC0];
  v44 = a1;
  v43 = v5;
  v42 = v12;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_29:
      outlined consume of Set<TUHandle>.Iterator._Variant(a1);
      return;
    }

    while (1)
    {
      v50 = v16;
      if (one-time initialization token for faceTime != -1)
      {
        swift_once();
      }

      v49 = v17;
      ParticipantContactDetailsCache.contactDetails(for:nickname:)();
      v19 = v53;
      v20 = v55;
      v47 = v56;
      v48 = v54;
      v21 = v57;
      v46 = v58;
      v22 = v53;

      PersonNameComponents.init()();
      if (v19)
      {
        v23 = [v22 givenName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        PersonNameComponents.givenName.setter();
        v24 = [v22 familyName];
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
      v25 = static NSPersonNameComponentsFormatter.initials;
      isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v27 = [v25 stringFromPersonNameComponents_];

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      (*v41)(v51, v45);
      v53 = v28;
      v54 = v30;
      lazy protocol witness table accessor for type String and conformance String();
      v31 = StringProtocol.localizedUppercase.getter();
      v33 = v32;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v52 = v38;
      }

      v34 = *(v52 + 16);
      if (v34 >= *(v52 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v52 = v39;
      }

      v35 = v52;
      *(v52 + 16) = v34 + 1;
      v36 = v35 + 72 * v34;
      v37 = v48;
      *(v36 + 32) = v49;
      *(v36 + 40) = v19;
      *(v36 + 48) = v37;
      *(v36 + 56) = v20;
      *(v36 + 64) = v47;
      *(v36 + 72) = v21;
      *(v36 + 80) = v31;
      *(v36 + 88) = v33;
      *(v36 + 96) = 1;
      v7 = v15;
      v8 = v50;
      a1 = v44;
      v5 = v43;
      v12 = v42;
      if ((v44 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v18 = __CocoaSet.Iterator.next()();
      if (v18)
      {
        v64 = v18;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
        swift_dynamicCast();
        v17 = v53;
        v15 = v7;
        v16 = v8;
        if (v53)
        {
          continue;
        }
      }

      goto LABEL_29;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_29;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

{
  v49 = type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v50 = v7 - v6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    OUTLINED_FUNCTION_158();
    type metadata accessor for NSObject(v8, v9, v10);
    OUTLINED_FUNCTION_158();
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(v11, v12, v13);
    Set.Iterator.init(_cocoa:)();
    a1 = v57;
    v14 = v58;
    v1 = v59;
    v15 = v60;
    v16 = v61;
  }

  else
  {
    OUTLINED_FUNCTION_16_7();
    v14 = a1 + 56;
    OUTLINED_FUNCTION_209_0();
    v16 = v17 & v18;

    v15 = 0;
  }

  v48 = (v4 + 8);
  v51 = MEMORY[0x1E69E7CC0];
  while (a1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00), swift_dynamicCast(), (v23 = v52) == 0))
    {
LABEL_28:
      v43 = OUTLINED_FUNCTION_179_0();
      outlined consume of Set<TUHandle>.Iterator._Variant(v43);

      return;
    }

LABEL_14:
    v24 = [v23 value];
    if (!v24)
    {
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x1BFB209B0](v25);
      OUTLINED_FUNCTION_246();
    }

    v26 = [v24 destinationIdIsTemporary];

    if (v26)
    {
    }

    else
    {
      OUTLINED_FUNCTION_5_6();
      ParticipantContactDetailsCache.contactDetails(for:nickname:)();
      v45 = v53;
      v47 = v52;

      PersonNameComponents.init()();
      v46 = v52;
      if (v52)
      {
        v27 = [v47 givenName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        PersonNameComponents.givenName.setter();
        v28 = [v47 familyName];
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
      v44 = static NSPersonNameComponentsFormatter.initials;
      isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v30 = [v44 stringFromPersonNameComponents_];

      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      (*v48)(v50, v49);
      v52 = v31;
      v53 = v33;
      lazy protocol witness table accessor for type String and conformance String();
      v34 = StringProtocol.localizedUppercase.getter();
      v36 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 16) + 1, 1, v51);
        v51 = v40;
      }

      v38 = *(v51 + 16);
      v37 = *(v51 + 24);
      if (v38 >= v37 >> 1)
      {
        v41 = OUTLINED_FUNCTION_59_3(v37);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v41, v38 + 1, 1, v51);
        v51 = v42;
      }

      *(v51 + 16) = v38 + 1;
      v39 = (v51 + 56 * v38);
      v39[4] = v46;
      v39[5] = v45;
      v39[6] = v54;
      v39[7] = v55;
      v39[8] = v56;
      v39[9] = v34;
      v39[10] = v36;
    }
  }

  v19 = v15;
  if (v16)
  {
LABEL_10:
    OUTLINED_FUNCTION_7_1();
    v16 = v21 & v20;
    v23 = *(*(a1 + 48) + ((v15 << 9) | (8 * v22)));
    if (!v23)
    {
      goto LABEL_28;
    }

    goto LABEL_14;
  }

  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= ((v1 + 64) >> 6))
    {
      goto LABEL_28;
    }

    ++v19;
    if (*(v14 + 8 * v15))
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    OUTLINED_FUNCTION_76();
    Set.Iterator.init(_cocoa:)();
    v2 = v24;
    v3 = v25;
    v1 = v26;
    v4 = v27;
    v5 = v28;
  }

  else
  {
    OUTLINED_FUNCTION_16_7();
    v3 = v2 + 56;
    OUTLINED_FUNCTION_209_0();
    v5 = v6 & v7;

    v4 = 0;
  }

  v8 = MEMORY[0x1E69E7CC0];
  while (v2 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00), swift_dynamicCast(), (v13 = v29) == 0))
    {
LABEL_21:
      v22 = OUTLINED_FUNCTION_40_2();
      outlined consume of Set<TUHandle>.Iterator._Variant(v22);
      return;
    }

LABEL_14:
    v14 = TUCopyIDSFromIDForHandle();
    if (v14)
    {
      v15 = v14;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_175_2();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v20;
      }

      v18 = *(v8 + 16);
      if (v18 >= *(v8 + 24) >> 1)
      {
        OUTLINED_FUNCTION_175_2();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v21;
      }

      *(v8 + 16) = v18 + 1;
      v19 = v8 + 16 * v18;
      *(v19 + 32) = v23;
      *(v19 + 40) = v17;
    }

    else
    {
    }
  }

  v9 = v4;
  if (v5)
  {
LABEL_10:
    OUTLINED_FUNCTION_7_1();
    v5 = v11 & v10;
    v13 = *(*(v2 + 48) + ((v4 << 9) | (8 * v12)));
    if (!v13)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v1 + 64) >> 6))
    {
      goto LABEL_21;
    }

    ++v9;
    if (*(v3 + 8 * v4))
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    Set.Iterator.init(_cocoa:)();
    v1 = v23;
    v2 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v22 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00), swift_dynamicCast(), (v11 = v28) == 0))
    {
LABEL_26:
      outlined consume of Set<TUHandle>.Iterator._Variant(v1);
      return;
    }

LABEL_17:
    v12 = [v11 value];
    if (!v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = MEMORY[0x1BFB209B0](v13);
    }

    v14 = TUCopyIDSCanonicalAddressForDestinationID();

    if (v14)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v19;
      }

      v17 = *(v22 + 16);
      if (v17 >= *(v22 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v20;
      }

      *(v22 + 16) = v17 + 1;
      v18 = v22 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v21;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  v20 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    Set.Iterator.init(_cocoa:)();
    v1 = v15;
    v2 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_20:
      outlined consume of Set<TUHandle>.Iterator._Variant(v1);
      return;
    }

    while (1)
    {
      [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];

      MEMORY[0x1BFB20CC0]();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
        swift_dynamicCast();
        v13 = v14;
        v11 = v4;
        v12 = v5;
        if (v14)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  v20 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHHandle, 0x1E6993578);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type CHHandle and conformance NSObject, &lazy cache variable for type metadata for CHHandle, 0x1E6993578);
    Set.Iterator.init(_cocoa:)();
    v1 = v15;
    v2 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_20:
      outlined consume of Set<TUHandle>.Iterator._Variant(v1);
      return;
    }

    while (1)
    {
      CHHandle.tuHandle.getter();

      MEMORY[0x1BFB20CC0]();
      if (*(v20 + 16) >= *(v20 + 24) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHHandle, 0x1E6993578);
        swift_dynamicCast();
        v13 = v14;
        v11 = v4;
        v12 = v5;
        if (v14)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    v1 = __CocoaSet.makeIterator()();
    OUTLINED_FUNCTION_134();
    type metadata accessor for NSObject(v4, v5, v6);
    OUTLINED_FUNCTION_134();
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(v7, v8, v9);
    OUTLINED_FUNCTION_76();
    Set.Iterator.init(_cocoa:)();
    v3 = v57;
    v10 = v58;
    v11 = v59;
  }

  else
  {
    OUTLINED_FUNCTION_16_7();
    v10 = v3 + 56;
    v11 = ~v12;
    OUTLINED_FUNCTION_56();
  }

  v54 = v11;
  v56 = MEMORY[0x1E69E7CC0];
LABEL_5:
  OUTLINED_FUNCTION_36_36();
  while (1)
  {
    if (v3 < 0)
    {
      v13 = __CocoaSet.Iterator.next()();
      if (!v13 || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00), v13 = swift_dynamicCast(), (v24 = v60) == 0))
      {
LABEL_21:
        OUTLINED_FUNCTION_43_26(v13, v14, v15, v16, v17, v18, v19, v20, v53, v54, v55, v56);
        return;
      }

      goto LABEL_15;
    }

    v21 = v2;
    if (!v1)
    {
      break;
    }

LABEL_11:
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_20_61();
    v13 = v23;
    v24 = v13;
    if (!v13)
    {
      goto LABEL_21;
    }

LABEL_15:
    type metadata accessor for ReportSpamManager();
    static ReportSpamManager.getContact(forHandle:)(v24);
    v26 = v25;

    OUTLINED_FUNCTION_36_36();
    if (v26)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_29_39(isUniquelyReferenced_nonNull_native, v28, v29, v30, v31, v32, v33, v34, v53, v54, v55, v56);
        v56 = v44;
      }

      OUTLINED_FUNCTION_32_29();
      if (v43)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        OUTLINED_FUNCTION_33_40(v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v45);
      }

      else
      {
        OUTLINED_FUNCTION_33_40(v35, v36, v37, v38, v39, v40, v41, v42, v53, v54, v55, v56);
      }

      goto LABEL_5;
    }
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= ((v11 + 64) >> 6))
    {
      goto LABEL_21;
    }

    ++v21;
    if (*(v10 + 8 * v22))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    v1 = __CocoaSet.makeIterator()();
    OUTLINED_FUNCTION_134();
    type metadata accessor for NSObject(v4, v5, v6);
    OUTLINED_FUNCTION_134();
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(v7, v8, v9);
    OUTLINED_FUNCTION_76();
    Set.Iterator.init(_cocoa:)();
    v3 = v57;
    v10 = v58;
    v11 = v59;
  }

  else
  {
    OUTLINED_FUNCTION_16_7();
    v10 = v3 + 56;
    v11 = ~v12;
    OUTLINED_FUNCTION_56();
  }

  v54 = v11;
  v56 = MEMORY[0x1E69E7CC0];
LABEL_5:
  OUTLINED_FUNCTION_36_36();
  while (1)
  {
    if (v3 < 0)
    {
      v13 = __CocoaSet.Iterator.next()();
      if (!v13 || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHHandle, 0x1E6993578), v13 = swift_dynamicCast(), (v24 = v60) == 0))
      {
LABEL_21:
        OUTLINED_FUNCTION_43_26(v13, v14, v15, v16, v17, v18, v19, v20, v53, v54, v55, v56);
        return;
      }

      goto LABEL_15;
    }

    v21 = v2;
    if (!v1)
    {
      break;
    }

LABEL_11:
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_20_61();
    v13 = v23;
    v24 = v13;
    if (!v13)
    {
      goto LABEL_21;
    }

LABEL_15:
    v1 = type metadata accessor for ReportSpamManager();
    v2 = CHHandle.tuHandle.getter();
    static ReportSpamManager.getContact(forHandle:)(v2);
    v26 = v25;

    OUTLINED_FUNCTION_36_36();
    if (v26)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_29_39(isUniquelyReferenced_nonNull_native, v28, v29, v30, v31, v32, v33, v34, v53, v54, v55, v56);
        v56 = v44;
      }

      OUTLINED_FUNCTION_32_29();
      if (v43)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        OUTLINED_FUNCTION_33_40(v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v45);
      }

      else
      {
        OUTLINED_FUNCTION_33_40(v35, v36, v37, v38, v39, v40, v41, v42, v53, v54, v55, v56);
      }

      goto LABEL_5;
    }
  }

  while (1)
  {
    v22 = (v21 + 1);
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= ((v11 + 64) >> 6))
    {
      goto LABEL_21;
    }

    ++v21;
    if (*(v10 + 8 * v22))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    Set.Iterator.init(_cocoa:)();
    v1 = v22;
    v2 = v23;
    v3 = v24;
    v4 = v25;
    v5 = v26;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00), swift_dynamicCast(), (v12 = v27) == 0))
    {
LABEL_24:
      outlined consume of Set<TUHandle>.Iterator._Variant(v1);
      return;
    }

LABEL_17:
    v13 = TUCopyIDSFromIDForHandle();
    if (v13)
    {
      v14 = v13;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v9 = v19;
      }

      v17 = *(v9 + 16);
      if (v17 >= *(v9 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v9 = v20;
      }

      *(v9 + 16) = v17 + 1;
      v18 = v9 + 16 * v17;
      *(v18 + 32) = v21;
      *(v18 + 40) = v16;
    }

    else
    {
    }
  }

  v10 = v4;
  v11 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHHandle, 0x1E6993578);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type CHHandle and conformance NSObject, &lazy cache variable for type metadata for CHHandle, 0x1E6993578);
    Set.Iterator.init(_cocoa:)();
    v1 = v22;
    v2 = v23;
    v3 = v24;
    v4 = v25;
    v5 = v26;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHHandle, 0x1E6993578), swift_dynamicCast(), (v12 = v27) == 0))
    {
LABEL_24:
      outlined consume of Set<TUHandle>.Iterator._Variant(v1);
      return;
    }

LABEL_17:
    v13 = CHHandle.tuHandle.getter();
    v14 = TUCopyIDSFromIDForHandle();

    if (v14)
    {
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v9 = v19;
      }

      v17 = *(v9 + 16);
      if (v17 >= *(v9 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v9 = v20;
      }

      *(v9 + 16) = v17 + 1;
      v18 = v9 + 16 * v17;
      *(v18 + 32) = v21;
      *(v18 + 40) = v16;
    }

    else
    {
    }
  }

  v10 = v4;
  v11 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  v18 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70);
    lazy protocol witness table accessor for type UIScene and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      outlined consume of Set<TUHandle>.Iterator._Variant(v1);
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x1BFB20CC0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    Set.Iterator.init(_cocoa:)();
    v1 = v23;
    v2 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v22 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00), swift_dynamicCast(), (v11 = v28) == 0))
    {
LABEL_26:
      outlined consume of Set<TUHandle>.Iterator._Variant(v1);
      return;
    }

LABEL_17:
    v12 = [v11 value];
    if (!v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = MEMORY[0x1BFB209B0](v13);
    }

    v14 = TUCopyIDSCanonicalAddressForDestinationID();

    if (v14)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v19;
      }

      v17 = *(v22 + 16);
      if (v17 >= *(v22 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v20;
      }

      *(v22 + 16) = v17 + 1;
      v18 = v22 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v21;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  v22 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    Set.Iterator.init(_cocoa:)();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v15 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_22:
        outlined consume of Set<TUHandle>.Iterator._Variant(v1);
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = [v13 handle];

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      MEMORY[0x1BFB20CC0]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  v22 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUConversationMember and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v15 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_22:
        outlined consume of Set<TUHandle>.Iterator._Variant(v1);
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = [v13 handle];

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      MEMORY[0x1BFB20CC0]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo22TUScreenSharingRequestCG_10Foundation4UUIDVs5NeverOTg5093_s15ConversationKit0A15ControlsManagerC05setupA33ControllerSharePlayStateObserversyyFyShySo22deF34CGSgcfU2_10Foundation4UUIDVAFXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v50 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v45 = v50;
    result = specialized Set.startIndex.getter();
    v47 = result;
    v48 = v9;
    v49 = v10 & 1;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v40 = v7;
      v41 = v44 + 32;
      if (a1 < 0)
      {
        v12 = a1;
      }

      else
      {
        v12 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v38 = a1 + 56;
      v39 = v12;
      v36[1] = v1;
      v37 = a1 + 64;
      while (!__OFADD__(v11++, 1))
      {
        v14 = v47;
        v15 = v48;
        v16 = v49;
        v17 = a1;
        specialized Set.subscript.getter(v47, v48, v49, a1);
        v19 = v18;
        v20 = [v18 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = v45;
        v50 = v45;
        v22 = *(v45 + 16);
        if (v22 >= *(v45 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v21 = v50;
        }

        *(v21 + 16) = v22 + 1;
        v23 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v45 = v21;
        result = (*(v44 + 32))(v21 + v23 + *(v44 + 72) * v22, v6, v43);
        if (v42)
        {
          if (!v16)
          {
            goto LABEL_39;
          }

          a1 = v17;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v28 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo22TUScreenSharingRequestC_GMd, &_sSh5IndexVySo22TUScreenSharingRequestC_GMR);
          v29 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v29(v46, 0);
        }

        else
        {
          if (v16)
          {
            goto LABEL_40;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_35;
          }

          a1 = v17;
          v24 = 1 << *(v17 + 32);
          if (v14 >= v24)
          {
            goto LABEL_35;
          }

          v25 = v14 >> 6;
          v26 = *(v38 + 8 * (v14 >> 6));
          if (((v26 >> v14) & 1) == 0)
          {
            goto LABEL_36;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_37;
          }

          v27 = v26 & (-2 << (v14 & 0x3F));
          if (v27)
          {
            v24 = __clz(__rbit64(v27)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v30 = v25 << 6;
            v31 = v25 + 1;
            v32 = (v37 + 8 * v25);
            while (v31 < (v24 + 63) >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v30 += 64;
              ++v31;
              if (v34)
              {
                result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v14, v15, 0);
                v24 = __clz(__rbit64(v33)) + v30;
                goto LABEL_30;
              }
            }

            result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v14, v15, 0);
          }

LABEL_30:
          v35 = *(v17 + 36);
          v47 = v24;
          v48 = v35;
          v49 = 0;
          v28 = v40;
        }

        if (v11 == v28)
        {
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v47, v48, v49);
          return v45;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  return result;
}

void ConversationControlsManager.heldCalls()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_427();
  a21 = v24;
  a22 = v25;
  v26 = *(v23 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter);
  OUTLINED_FUNCTION_20();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_247_0(v27);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_24();
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for closure #1 in ConversationControlsManager.heldCalls();
  *(v28 + 24) = v22;
  a13 = partial apply for thunk for @callee_guaranteed (@guaranteed TUCall) -> (@unowned Bool);
  a14 = v28;
  OUTLINED_FUNCTION_1_25();
  a10 = 1107296256;
  OUTLINED_FUNCTION_63();
  a11 = v29;
  a12 = &block_descriptor_52;
  v30 = _Block_copy(&a9);

  v31 = [v26 callsPassingTest_];
  _Block_release(v30);
  swift_isEscapingClosureAtFileLocation();
  OUTLINED_FUNCTION_212();

  if (v30)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    OUTLINED_FUNCTION_108_0();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_28_0();

    OUTLINED_FUNCTION_52_5();
  }
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v9 = *(a1 + 16);
  while (v3 != v9)
  {
    v4 = *(type metadata accessor for UUID() - 8);
    v5 = *(v4 + 72);
    if (a2)
    {
      v6 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v7 = *(a2 + 16) + 1;
      while (--v7)
      {
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v6 += v5;
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {

          return v3;
        }
      }
    }

    ++v3;
  }

  return 0;
}

{
  v4 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = 0;
  v20 = a1;
  v21 = *(a1 + 16);
  v12 = (v11 + 16);
  v13 = (v11 + 8);
  while (1)
  {
    if (v21 == v10)
    {
      return 0;
    }

    v14 = type metadata accessor for Participant(0);
    v15 = *v12;
    (*v12)(v9, v20 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)) + *(*(v14 - 8) + 72) * v10 + *(v14 + 20), v4);
    result = __swift_getEnumTagSinglePayload(a2, 1, v14);
    if (result == 1)
    {
      break;
    }

    v15(v6, a2 + *(v14 + 20), v4);
    v17 = static UUID.== infix(_:_:)();
    v18 = *v13;
    (*v13)(v6, v4);
    v18(v9, v4);
    if (v17)
    {
      return v10;
    }

    ++v10;
  }

  __break(1u);
  return result;
}

void ConversationControlsManager.requestScreenSharingPicker(with:)()
{
  OUTLINED_FUNCTION_329();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v1, &static Logger.conversationControls);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_240(v3))
  {
    v4 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_182_0(v4);
    OUTLINED_FUNCTION_8_10();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_4_4();
  }

  ConversationController.requestScreenSharingPicker(with:)(v0);
}

void ConversationControlsManager.startScreenShareWithCountdown(completion:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t oslog, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_331();
  v21 = v18;
  OUTLINED_FUNCTION_15_25();
  v22 = v18 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_defaults;
  v23 = *(v18 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_defaults);
  v24 = *(v22 + 1);
  ObjectType = swift_getObjectType();
  if ((*(v24 + 696))(ObjectType, v24))
  {
    OUTLINED_FUNCTION_20();
    v26 = swift_allocObject();
    OUTLINED_FUNCTION_278(v26);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_37_0();
    v27 = swift_allocObject();
    v27[2] = v23;
    v27[3] = v20;
    v27[4] = v19;

    v28 = OUTLINED_FUNCTION_1_5();
    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v28, v29);
    specialized ConversationControlsManager.promptForReplaceAlertIfNeeded(_:)(v21, partial apply for closure #1 in ConversationControlsManager.startScreenShareWithCountdown(completion:), v27);
    OUTLINED_FUNCTION_9_17();
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v31 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v31, &static Logger.conversationControls);
    osloga = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_173_0();
    if (os_log_type_enabled(osloga, v32))
    {
      v33 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_21_24(v33);
      OUTLINED_FUNCTION_361(&dword_1BBC58000, osloga, v21, "Ignoring starting screen sharing. Screen sharing is not allowed.");
      OUTLINED_FUNCTION_3_83();
    }

    OUTLINED_FUNCTION_9_17();
  }
}

Swift::Void __swiftcall ConversationControlsManager.stopScreenShare()()
{
  ConversationController.stopScreenSharingSession()();
  ConversationControlsManager.screenShareCountdownTimer.setter(0, v0);
  OUTLINED_FUNCTION_11_23();
  v2 = (*((*MEMORY[0x1E69E7D40] & v1) + 0x720))(v4);
  *(v3 + 1) = 0;
  v2(v4, 0);
}

Swift::Void __swiftcall ConversationControlsManager.startWaitOnHoldSession()()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_233_0(v5, v35);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_240_0();
  v8 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_244_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v15 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v15, &static Logger.conversationControls);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v17))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_281_0(&dword_1BBC58000, v18, v19, "startWaitOnHoldSession tapped");
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_293();
  (*(v20 + 672))();
  OUTLINED_FUNCTION_250();
  swift_getObjectType();
  OUTLINED_FUNCTION_308_0();
  v21();
  OUTLINED_FUNCTION_348();
  UUID.init(uuidString:)();

  OUTLINED_FUNCTION_115(v1, 1, v8);
  if (v22)
  {
    outlined destroy of CallControlsService?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v23 = *(v10 + 32);
    v24 = OUTLINED_FUNCTION_312_0();
    v23(v24);
    static TaskPriority.userInitiated.getter();
    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    OUTLINED_FUNCTION_41();
    v29();
    v30 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v2;
    (v23)(v31 + v30, v13, v8);
    v32 = v2;
    OUTLINED_FUNCTION_59();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

    v33 = OUTLINED_FUNCTION_62_0();
    v34(v33);
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationControlsManager.didTapEndSharePlay()()
{
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, &static Logger.conversationControls);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_25(v5))
  {
    v6 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_182_0(v6);
    OUTLINED_FUNCTION_8_57();
    _os_log_impl(v7, v8, v9, v10, v0, 2u);
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_176();
  v12 = (*(v11 + 704))();
  if (v12)
  {
    v13 = v12;
    OUTLINED_FUNCTION_120_0();
    (*(v14 + 2432))(v34);
    if (v34[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd, &_s15ConversationKit8Activity_pMR);
      v15 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
      OUTLINED_FUNCTION_310_0(v15, v16, v17, v18, v19, v20, v21, v22, v32);
      if (swift_dynamicCast())
      {
        v23 = v33;
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v24, v25))
        {
          OUTLINED_FUNCTION_42();
          v34[0] = OUTLINED_FUNCTION_37_7();
          *v1 = 136315138;
          v26 = TUConversationActivitySession.uniqueIdentifier.getter();
          OUTLINED_FUNCTION_360(v26, v27, v28, v29);
          OUTLINED_FUNCTION_359();
          *(v1 + 4) = v2;
          OUTLINED_FUNCTION_341(&dword_1BBC58000, v24, v25, "End active SharePlay activity: %s");
          OUTLINED_FUNCTION_72_8();
          OUTLINED_FUNCTION_2_2();
        }

        v30 = [objc_opt_self() sharedInstance];
        v31 = [v30 conversationManager];

        [v31 presentDismissalAlertForActivitySession:v23 onConversation:v13];
      }

      else
      {
      }
    }

    else
    {

      outlined destroy of CallControlsService?(v34, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

Swift::Void __swiftcall ConversationControlsManager.openPTTApp()()
{
  OUTLINED_FUNCTION_262();
  v2 = *((*MEMORY[0x1E69E7D40] & v1) + 0x2A0);
  v2();
  v3 = OUTLINED_FUNCTION_255();
  v0[58](v3);
  v4 = OUTLINED_FUNCTION_280_0();
  if (v0)
  {
    (v2)(v4);
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_237_0();
    v5();
    OUTLINED_FUNCTION_173();
    swift_unknownObjectRelease();
    v6 = outlined bridged method (ob) of @objc TUCallProvider.bundleIdentifier.getter(v0);
    if (v7)
    {
      ConversationControlsManager.openApp(withBundleIdentifier:)(*&v6);
    }
  }
}

void ConduitLagunaNoticeManager.pushSession(lightweightHandoff:selectedActivity:completion:)(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v11 = Strong, v12 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x2C0))(), v11, v12))
  {

    v13 = v5 + OBJC_IVAR____TtC15ConversationKit26ConduitLagunaNoticeManager_pushBannerInfo;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo(0);
    v14 = OUTLINED_FUNCTION_242();
    if (__swift_getEnumTagSinglePayload(v14, 1, v12))
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v15 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v15, &static Logger.conversationControls);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_25(v17))
      {
        v18 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_50_0(v18);
        OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v19, v20, "pushSession - no notice information available. Unsure where to push to.");
        OUTLINED_FUNCTION_26();
      }
    }

    else
    {
      v26 = *(v13 + v12[5]);
      v27 = one-time initialization token for conversationControls;
      v28 = v26;
      if (v27 != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, &static Logger.conversationControls);
      v30 = a2;
      v31 = v28;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        osloga = v31;
        v34 = swift_slowAlloc();
        v55 = v33;
        v54 = OUTLINED_FUNCTION_18_18();
        aBlock[0] = OUTLINED_FUNCTION_23();
        *v34 = 138412802;
        v35 = [osloga deviceHandle];
        *(v34 + 4) = v35;
        *v54 = v35;
        *(v34 + 12) = 1024;
        *(v34 + 14) = a1 & 1;
        *(v34 + 18) = 2080;
        v36 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22TUConversationActivityCSgMd, &_sSo22TUConversationActivityCSgMR);
        v37 = String.init<A>(describing:)();
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, aBlock);

        *(v34 + 20) = v39;
        _os_log_impl(&dword_1BBC58000, v32, v55, "pushSession - deviceHandle %@ - lightweightHandoff %{BOOL}d - selectedActivity %s", v34, 0x1Cu);
        outlined destroy of CallControlsService?(v54, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_3_26();
        OUTLINED_FUNCTION_72_8();
        v31 = osloga;
        OUTLINED_FUNCTION_27();
      }

      v40 = a1 & 1;
      if (a1)
      {
        v41 = 1;
      }

      else
      {
        v41 = 2;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUNearbySuggestionResult, 0x1E69D8C90);
      v42 = v31;
      v43 = v30;
      v44 = OUTLINED_FUNCTION_7_8();
      v46 = TUNearbySuggestionResult.__allocating_init(suggestion:selectedActivity:type:)(v44, v45, v41);
      v47 = [*(v5 + OBJC_IVAR____TtC15ConversationKit26ConduitLagunaNoticeManager_callCenter) neighborhoodActivityConduit];
      OUTLINED_FUNCTION_109();
      v48 = swift_allocObject();
      *(v48 + 16) = v42;
      *(v48 + 24) = v40;
      *(v48 + 32) = a3;
      *(v48 + 40) = a4;
      aBlock[4] = partial apply for closure #1 in ConduitLagunaNoticeManager.pushSession(lightweightHandoff:selectedActivity:completion:);
      aBlock[5] = v48;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      OUTLINED_FUNCTION_196_0();
      aBlock[2] = v49;
      aBlock[3] = &block_descriptor_17_1;
      v50 = _Block_copy(aBlock);
      v51 = v42;
      v52 = OUTLINED_FUNCTION_45_1();
      outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v52, v53);

      [v47 respondToSuggestionWithResult:v46 completion:v50];
      _Block_release(v50);
    }

    OUTLINED_FUNCTION_404();
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v21 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v21, &static Logger.conversationControls);
    oslog = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_173_0();
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_21_24(v23);
      OUTLINED_FUNCTION_361(&dword_1BBC58000, oslog, a4, "pushSession - no conversation available .-.");
      OUTLINED_FUNCTION_3_83();
    }

    OUTLINED_FUNCTION_404();
  }
}

void ConversationControlsManager.requestScreenSharingPicker(forCall:with:)()
{
  OUTLINED_FUNCTION_331();
  v2 = v1;
  OUTLINED_FUNCTION_55();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, &static Logger.conversationControls);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_10(v5))
  {
    v6 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_296(v6);
    OUTLINED_FUNCTION_12_15();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_2_2();
  }

  v12 = [*(v2 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) conversationManager];
  [v12 requestScreenSharingPickerForCallUUID:UUID._bridgeToObjectiveC()().super.isa withContentStyle:v0];

  OUTLINED_FUNCTION_9_17();
}

char *ConversationControlsManager.__allocating_init(activeCall:)()
{
  OUTLINED_FUNCTION_388();
  v1 = [objc_opt_self() sharedInstance];
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_217_0(&one-time initialization token for shared);
  }

  v2 = static PlaceholderCallCenter.shared;
  v3 = objc_allocWithZone(type metadata accessor for CallCenter());
  v4 = v2;
  v5 = OUTLINED_FUNCTION_170();
  CallCenter.init(callCenter:placeholderCallCenter:shouldRegisterForMediaControllerChanges:shouldRegisterForReactionsControllerChanges:)(v5, v6, 0, 0);
  v7 = OUTLINED_FUNCTION_108_0();

  return specialized ConversationControlsManager.__allocating_init(activeCall:callCenter:)(v7, v8, v0);
}

Swift::Void __swiftcall ConversationControlsManager.declineIncomingScreenShareRequests()()
{
  OUTLINED_FUNCTION_29();
  v88 = *MEMORY[0x1E69E9840];
  v3 = *((*MEMORY[0x1E69E7D40] & v1->isa) + 0x2C0);
  v80 = v1;
  v4 = v3();
  if (!v4)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v31 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v31, &static Logger.conversationControls);
    v80 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_173_0();
    if (os_log_type_enabled(v80, v32))
    {
      v33 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_21_24(v33);
      OUTLINED_FUNCTION_361(&dword_1BBC58000, v80, v0, "No incoming screen share requests to decline");
      OUTLINED_FUNCTION_3_83();
    }

    OUTLINED_FUNCTION_30_0();

    return;
  }

  v5 = v4;
  v6 = [v4 screenSharingRequests];

  OUTLINED_FUNCTION_31_2();
  v10 = type metadata accessor for NSObject(v7, v8, v9);
  OUTLINED_FUNCTION_1_65();
  OUTLINED_FUNCTION_31_2();
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v11, v12, v13);
  OUTLINED_FUNCTION_62_0();
  v78 = v14;
  v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v79 = v10;
  if ((v15 & 0xC000000000000001) == 0)
  {
    v36 = *(v15 + 32);
    v37 = ((1 << v36) + 63) >> 6;
    if ((v36 & 0x3Fu) > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        swift_slowAlloc();
        OUTLINED_FUNCTION_242();

        v77 = 0;
        v17 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo22TUScreenSharingRequestCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So22ijK5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v2, v37, v15, closure #1 in ConversationControlsManager.declineIncomingScreenShareRequests(), 0);
        swift_bridgeObjectRelease_n();
        OUTLINED_FUNCTION_3_26();
LABEL_44:
        if (one-time initialization token for conversationControls == -1)
        {
          goto LABEL_45;
        }

        goto LABEL_65;
      }
    }

    v77 = &v76;
    MEMORY[0x1EEE9AC00](v16);
    v17 = &v76 - ((8 * v37 + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v37, v17);
    v38 = 0;
    v39 = 0;
    v40 = 1 << *(v15 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(v15 + 56);
    v43 = (v40 + 63) >> 6;
    while (1)
    {
      if (v42)
      {
        v44 = __clz(__rbit64(v42));
        v42 &= v42 - 1;
      }

      else
      {
        v45 = v39;
        do
        {
          v39 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_64;
          }

          if (v39 >= v43)
          {
            goto LABEL_42;
          }

          ++v45;
        }

        while (!*(v15 + 56 + 8 * v39));
        OUTLINED_FUNCTION_7_1();
        v42 = v47 & v46;
      }

      v48 = v44 | (v39 << 6);
      if ([*(*(v15 + 48) + 8 * v48) type] == 4)
      {
        *(v17 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
        if (__OFADD__(v38++, 1))
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_42:
    specialized _NativeSet.extractSubset(using:count:)(v17, v37, v38, v15);
    v17 = v50;
LABEL_43:
    v77 = 0;
    goto LABEL_44;
  }

  v17 = MEMORY[0x1E69E7CD0];
  v83 = MEMORY[0x1E69E7CD0];
  __CocoaSet.makeIterator()();
  while (1)
  {
    while (1)
    {
      v18 = __CocoaSet.Iterator.next()();
      if (!v18)
      {

        goto LABEL_43;
      }

      v81 = v18;
      swift_dynamicCast();
      v19 = v82;
      if ([v82 type] == 4)
      {
        break;
      }
    }

    v20 = *(v17 + 16);
    if (*(v17 + 24) <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v17 = v83;
    v21 = NSObject._rawHashValue(seed:)(*(v83 + 40));
    v22 = v83 + 56;
    v23 = -1 << *(v83 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v83 + 56 + 8 * (v24 >> 6))) != 0)
    {
      v26 = __clz(__rbit64((-1 << v24) & ~*(v83 + 56 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      goto LABEL_18;
    }

    v27 = 0;
    v28 = (63 - v23) >> 6;
LABEL_12:
    if (++v25 == v28 && (v27 & 1) != 0)
    {
      break;
    }

    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v22 + 8 * v25);
    if (v30 == -1)
    {
      goto LABEL_12;
    }

    v26 = __clz(__rbit64(~v30)) + (v25 << 6);
LABEL_18:
    *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v17 + 48) + 8 * v26) = v19;
    ++*(v17 + 16);
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_45:
    v51 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v51, &static Logger.conversationControls);
    v52 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    OUTLINED_FUNCTION_173_0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_373(v54);
      OUTLINED_FUNCTION_279();
      _os_log_impl(v55, v56, v57, v58, v59, 2u);
      OUTLINED_FUNCTION_3_26();
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v61 = v83;
      v60 = v84;
      v62 = v85;
      v63 = v86;
      v64 = v87;
    }

    else
    {
      v60 = v17 + 56;
      v62 = ~(-1 << *(v17 + 32));
      OUTLINED_FUNCTION_56();
      v64 = v65 & v66;

      v63 = 0;
      v61 = v17;
    }

    v78 = v62;
    v67 = (v62 + 64) >> 6;
    if (v61 < 0)
    {
      break;
    }

LABEL_51:
    v68 = v63;
    v69 = v63;
    if (v64)
    {
LABEL_55:
      OUTLINED_FUNCTION_7_1();
      v72 = v71 & v70;
      v74 = *(*(v61 + 48) + ((v69 << 9) | (8 * v73)));
      if (v74)
      {
        goto LABEL_59;
      }

      goto LABEL_61;
    }

    while (1)
    {
      v69 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      if (v69 >= v67)
      {
        goto LABEL_61;
      }

      ++v68;
      if (*(v60 + 8 * v69))
      {
        goto LABEL_55;
      }
    }
  }

  while (1)
  {
    v75 = __CocoaSet.Iterator.next()();
    if (!v75)
    {
      break;
    }

    v81 = v75;
    swift_dynamicCast();
    v74 = v82;
    v69 = v63;
    v72 = v64;
    if (!v82)
    {
      break;
    }

LABEL_59:
    ConversationController.declineOrCancelScreenShareRequest(for:)();

    v63 = v69;
    v64 = v72;
    if ((v61 & 0x8000000000000000) == 0)
    {
      goto LABEL_51;
    }
  }

LABEL_61:
  outlined consume of Set<TUHandle>.Iterator._Variant(v61);

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationControlsManager.presentShareCard(source:)(UIView_optional *source)
{
  v3 = v1;
  v5 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_defaults + 8);
  ObjectType = swift_getObjectType();
  if (((*(v5 + 664))(ObjectType, v5) & 1) == 0 || static Platform.current.getter() && static Platform.current.getter() != 1)
  {
    goto LABEL_46;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v7 = type metadata accessor for Logger();
  v8 = __swift_project_value_buffer(v7, &static Logger.conversationControls);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_25(v10))
  {
    v11 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v11);
    OUTLINED_FUNCTION_8_57();
    OUTLINED_FUNCTION_98_2();
    _os_log_impl(v12, v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_18();
  }

  if (static Platform.current.getter())
  {
    v18 = type metadata accessor for ConversationControlsShareCardViewController();
    v19 = objc_allocWithZone(v18);
    v20 = v1;
    v21 = ConversationControlsShareCardViewController.init(conversationControlsManager:)();
    v77.receiver = v21;
    v77.super_class = v18;
    [(UIView_optional *)&v77 setModalPresentationStyle:7];
    ConversationControlsShareCardViewController.modalPresentationStyle.didset();
    v22 = [v21 popoverPresentationController];
    v23 = MEMORY[0x1E69E7D40];
    if (v22)
    {
      v24 = v22;
      [v22 setSourceView_];
      if (source)
      {
        [(UIView_optional *)source bounds];
        v26 = UIEdgeInsetsInsetRect_0(v25);
      }

      else
      {
        v26 = 0.0;
        v27 = 0.0;
        v28 = 0.0;
        v29 = 0.0;
      }

      [v24 setSourceRect_];
      if ((*((*v23 & *v20) + 0x4D0))([v24 setDelegate_]))
      {
        OUTLINED_FUNCTION_208_0();
        v38 = swift_getObjectType();
        (*(v2 + 8))(v38);
        OUTLINED_FUNCTION_340();
        if (v2)
        {
          [v24 setPermittedArrowDirections_];
        }
      }

      v39 = [v24 adaptiveSheetPresentationController];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      OUTLINED_FUNCTION_109();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1BC4BA930;
      v40 = objc_opt_self();
      *(v2 + 32) = [v40 mediumDetent];
      *(v2 + 40) = [v40 largeDetent];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent, 0x1E69DCF58);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v39 setDetents_];

      [v39 setPrefersGrabberVisible_];
      [v39 setLargestUndimmedDetentIdentifier_];
      [v39 setPrefersScrollingExpandsWhenScrolledToEdge_];
      [v39 setPrefersEdgeAttachedInCompactHeight_];
      [v39 setWidthFollowsPreferredContentSizeWhenEdgeAttached_];
    }

    OUTLINED_FUNCTION_106_2();
    v42 += 154;
    v43 = *v42;
    if (*v42)() && (OUTLINED_FUNCTION_208_0(), v44 = swift_getObjectType(), (*(v2 + 8))(v44, v2), v45 = OUTLINED_FUNCTION_340(), (v2))
    {
      if (!(v43)(v45))
      {
LABEL_45:

LABEL_46:
        OUTLINED_FUNCTION_62();
        return;
      }

      OUTLINED_FUNCTION_255();
      OUTLINED_FUNCTION_294();
      v46 = OUTLINED_FUNCTION_26_25();
      v47(v46);
    }

    else
    {
      OUTLINED_FUNCTION_106_2();
      v48 += 157;
      v49 = *v48;
      if (*v48)() && (OUTLINED_FUNCTION_208_0(), v50 = swift_getObjectType(), (*(v2 + 32))(v50, v2), v51 = OUTLINED_FUNCTION_340(), (v2))
      {
        if (!source)
        {
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_163(v53))
          {
            OUTLINED_FUNCTION_42();
            v76 = OUTLINED_FUNCTION_38_3();
            *v8 = 136315138;
            OUTLINED_FUNCTION_11();
            *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v54, &v76);
            OUTLINED_FUNCTION_140();
            _os_log_impl(v55, v56, v57, v58, v59, 0xCu);
            OUTLINED_FUNCTION_28_2();
            OUTLINED_FUNCTION_4_4();
          }
        }

        if (!(v49)(v51))
        {
          goto LABEL_45;
        }

        OUTLINED_FUNCTION_255();
        OUTLINED_FUNCTION_330();
        v60 = OUTLINED_FUNCTION_26_25();
        v61(v60);
      }

      else
      {
        OUTLINED_FUNCTION_106_2();
        if (!(*(v62 + 1208))())
        {
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_163(v67))
          {
            v68 = OUTLINED_FUNCTION_42();
            v69 = OUTLINED_FUNCTION_23();
            v76 = v69;
            *v68 = 136315138;
            OUTLINED_FUNCTION_11();
            *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v70, &v76);
            OUTLINED_FUNCTION_219();
            _os_log_impl(v71, v72, v73, v74, v75, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v69);
            OUTLINED_FUNCTION_4_4();
            OUTLINED_FUNCTION_18();
          }

          goto LABEL_45;
        }

        OUTLINED_FUNCTION_255();
        OUTLINED_FUNCTION_330();
        v63 = OUTLINED_FUNCTION_26_25();
        v64(v63);
      }
    }

    swift_unknownObjectRelease();
    goto LABEL_45;
  }

  type metadata accessor for ConversationControlsShareCardHandle();
  v30 = ConversationControlsShareCardHandle.__allocating_init()();
  v31 = *(v30 + 16);

  [v31 activateWithOptions_];
  *(v3 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activeRemoteAlertHandle) = v30;

  if ((*((*MEMORY[0x1E69E7D40] & *v3) + 0x4A0))(v32))
  {
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_159_0();
    v33();
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_153();
  if ((*(v34 + 1208))())
  {
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_223_0();
    v36(0xD000000000000015, v35 | 0x8000000000000000, 1);

    OUTLINED_FUNCTION_62();

    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_62();
  }
}

uint64_t ConversationControlsManager.isShownAboveCoverSheet.getter()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x4E8))();
  if (result)
  {
    v3 = OUTLINED_FUNCTION_254_0();
    (*(v0 + 64))(v3, v0);
    OUTLINED_FUNCTION_247();
    swift_unknownObjectRelease();
    return v0 & 1;
  }

  return result;
}

void ConversationControlsManager.requestScreenSharingSession(for:)()
{
  OUTLINED_FUNCTION_29();
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant(v0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, &static Logger.conversationControls);
  OUTLINED_FUNCTION_56_10();
  OUTLINED_FUNCTION_29_6();
  _s15ConversationKit11ParticipantVWOcTm_8();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_23();
    v16 = v6;
    *v5 = 136315138;
    OUTLINED_FUNCTION_40_2();
    v7 = >> prefix<A>(_:)();
    v9 = v8;
    OUTLINED_FUNCTION_3_106();
    _s15ConversationKit11ParticipantVWOhTm_10();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v16);

    *(v5 + 4) = v10;
    OUTLINED_FUNCTION_279();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_104_2();
    OUTLINED_FUNCTION_3_26();
  }

  else
  {

    OUTLINED_FUNCTION_3_106();
    _s15ConversationKit11ParticipantVWOhTm_10();
  }

  ConversationController.requestScreenSharingSession(for:)();
  OUTLINED_FUNCTION_30_0();
}

uint64_t ConversationControlsManager.maximumLayoutMode.getter()
{
  OUTLINED_FUNCTION_262();
  v3 = *((*MEMORY[0x1E69E7D40] & v2) + 0x2A0);
  v3();
  v4 = OUTLINED_FUNCTION_255();
  (*(v1 + 240))(v4, v1);
  OUTLINED_FUNCTION_280_0();
  if (v1)
  {
    return 3;
  }

  OUTLINED_FUNCTION_41_1();
  if (((*(v6 + 688))() & 1) != 0 && (Features.callManagerEnabled.getter() & 1) == 0)
  {
    return 3;
  }

  if (Features.callManagerEnabled.getter() & 1) != 0 && (v3(), v7 = OUTLINED_FUNCTION_255(), lazy protocol witness table cache variable for type Features.SensitiveContentAnalysis and conformance Features.SensitiveContentAnalysis(v7, &OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___scrollViewContent), OUTLINED_FUNCTION_280_0(), (&OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___scrollViewContent) && (v8 = [*(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) currentCallGroups], type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallGroup, 0x1E69D8A70), static Array._unconditionallyBridgeFromObjectiveC(_:)(), v8, specialized Array.count.getter(), OUTLINED_FUNCTION_247(), , v8 == 1))
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

void ConversationControlsManager.approveAuthorizationRequest(for:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  v7 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v8 = OUTLINED_FUNCTION_231_0();
  v9(v8);
  _dispatchPreconditionTest(_:)();
  v10 = OUTLINED_FUNCTION_229_0();
  v11(v10);
  if (v7)
  {
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_3:
  v12 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v12, &static Logger.conversationControls);
  OUTLINED_FUNCTION_294();
  v13(v0, v3, v4);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_42();
    v17 = OUTLINED_FUNCTION_23();
    *v16 = 136315138;
    OUTLINED_FUNCTION_11_67();
    lazy protocol witness table accessor for type URL and conformance URL(v18, v19);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v23 = OUTLINED_FUNCTION_33_0();
    v24(v23);
    v25 = OUTLINED_FUNCTION_322();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v22, v26);
    OUTLINED_FUNCTION_300();

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1BBC58000, v14, v15, "approveLetMeInButtonTapped for participant with ID %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_26();
  }

  else
  {

    v27 = OUTLINED_FUNCTION_33_0();
    v28(v27);
  }

  ConversationController.approve(_:)();
  type metadata completion function for SyncedScreeningAlphaGradientView();
  OUTLINED_FUNCTION_380();
  ConversationControlsManager.notifyDelegates(about:forceUpdate:)(v29, v30, v31);
  OUTLINED_FUNCTION_11_23();
  (*((*MEMORY[0x1E69E7D40] & v32) + 0xA80))();
  OUTLINED_FUNCTION_30_0();
}

void ConversationControlsManager.rejectAuthorizationRequest(for:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_363();
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_82();
  v9 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_240_0();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v13 = OUTLINED_FUNCTION_213_0();
  v14(v13);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v1, v9);
  if (v15)
  {
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_3:
  v16 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v16, &static Logger.conversationControls);
  OUTLINED_FUNCTION_294();
  v17(v0, v4, v7);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_42();
    v40 = OUTLINED_FUNCTION_23();
    *v20 = 136315138;
    OUTLINED_FUNCTION_11_67();
    lazy protocol witness table accessor for type URL and conformance URL(v21, v22);
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_175_0();
    v23 = OUTLINED_FUNCTION_7_8();
    v24(v23);
    v25 = OUTLINED_FUNCTION_208();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v27);
    OUTLINED_FUNCTION_246();

    *(v20 + 4) = v0;
    OUTLINED_FUNCTION_412(&dword_1BBC58000, v28, v29, "dismissLetMeInButtonTapped for participant with ID %s");
    __swift_destroy_boxed_opaque_existential_1(v40);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_104_2();
  }

  else
  {

    v30 = OUTLINED_FUNCTION_7_8();
    v31(v30);
  }

  ConversationController.dismiss(_:)();
  type metadata completion function for SyncedScreeningAlphaGradientView();
  OUTLINED_FUNCTION_380();
  ConversationControlsManager.notifyDelegates(about:forceUpdate:)(v32, v33, v34);
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  OUTLINED_FUNCTION_11_23();
  (*((*MEMORY[0x1E69E7D40] & v39) + 0xA68))(v2);
  outlined destroy of CallControlsService?(v2, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationControlsManager.acceptVideoUpgrade()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter);
  v2 = [v1 pendingUpgradeCall];
  if (v2)
  {
    v3 = v2;
    [v1 answerCall_];
  }
}

Swift::Void __swiftcall ConversationControlsManager.declineVideoUpgrade()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter);
  v2 = [v1 pendingUpgradeCall];
  if (v2)
  {
    v3 = v2;
    [v1 disconnectCall_withReason_];
  }
}

uint64_t ConversationControlsManager.participantStateDidChange.getter()
{
  v0 = OUTLINED_FUNCTION_46();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_31_2();
  v5 = lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v2, v3, v4);
  return OUTLINED_FUNCTION_349(v5);
}

void ConversationControlsManager.setLocalAudioEphemeralAlert(bluetoothAudioFormat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, unint64_t a21, uint64_t a22, void *a23, __int16 a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, unint64_t a29, uint64_t a30, void *a31, __int16 a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_402();
  a47 = v48;
  a48 = v49;
  v51 = v50;
  v53 = v52;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    v81 = v51;
    v80 = v53;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    v54 = *MEMORY[0x1E69DDD40];
    a19 = 0;
    a28 = 0x6C6C69662E63696DLL;
    a29 = 0xE800000000000000;
    a30 = 1;
    a31 = v54;
    a32 = 0;
    a33 = 4;
    a34 = 0;
    a35 = 0;
    a20 = 0x6C6C69662E63696DLL;
    a21 = 0xE800000000000000;
    a22 = 1;
    a23 = v54;
    a24 = 0;
    a25 = 4;
    a26 = 0;
    a27 = 0;
    v55 = v54;
    outlined init with copy of SymbolImageDescription(&a28, &a13);
    outlined destroy of SymbolImageDescription(&a20);
    v56 = static UIImage.symbolImage(for:)(&a28);
    outlined destroy of SymbolImageDescription(&a28);
    if (v56)
    {
      v57 = [objc_opt_self() labelColor];
      v58 = [v56 imageWithTintColor_];
    }

    else
    {
      v58 = 0;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v59 = objc_opt_self();
    v60 = [v59 conversationKit];
    OUTLINED_FUNCTION_48_1(0xD00000000000001ALL, 0x80000001BC504760, 0x61737265766E6F43, 0xEF74694B6E6F6974);

    a13 = 0u;
    a14 = 0u;
    a15 = 1;
    v61 = OUTLINED_FUNCTION_299();
    v64 = static NSAttributedString.localizedString(_:prefixImage:imageBounds:)(v61, v62, v58, v63);

    OUTLINED_FUNCTION_11_23();
    v65 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & v66) + 0x6B0))())
    {
      if ((v81 & 1) == 0)
      {
        if (v80 == 1)
        {
          v69 = [objc_opt_self() currentDevice];
          v70 = [v69 model];
          goto LABEL_19;
        }

        if (!v80)
        {
          v67 = [objc_opt_self() sharedInstance];
          v68 = [v67 routeController];

          v69 = [v68 pickedRoute];
          if (v69)
          {
            v70 = [v69 name];
LABEL_19:
            v71 = v70;

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            goto LABEL_16;
          }
        }
      }

      v71 = [v59 conversationKit];
      v72 = 0x46464F5F4554554DLL;
      v73 = 0xE800000000000000;
    }

    else
    {
      v71 = [v59 conversationKit];
      v72 = 0x4E4F5F4554554DLL;
      v73 = 0xE700000000000000;
    }

    OUTLINED_FUNCTION_48_1(v72, v73, 0x61737265766E6F43, 0xEF74694B6E6F6974);
LABEL_16:

    v74._countAndFlagsBits = OUTLINED_FUNCTION_43_0();
    isa = NSAttributedString.__allocating_init(string:)(v74).super.isa;
    OUTLINED_FUNCTION_11_23();
    v77 = *((*v65 & v76) + 0x8E0);
    v78 = v64;
    v79 = isa;
    OUTLINED_FUNCTION_380();
    v77();
  }

  OUTLINED_FUNCTION_282_0();
}

void ConversationControlsManager.setLocalAudio(muted:bluetoothAudioFormat:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  v5 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v0 = static OS_dispatch_queue.main.getter();
  v6 = OUTLINED_FUNCTION_231_0();
  v7(v6);
  _dispatchPreconditionTest(_:)();
  v8 = OUTLINED_FUNCTION_229_0();
  v9(v8);
  if (v5)
  {
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_3:
  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v10, &static Logger.conversationControls);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_42_1(v12))
  {
    swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_37_7();
    v17 = v13;
    *v3 = 67109378;
    *(v3 + 4) = v2 & 1;
    *(v3 + 8) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v17);

    *(v3 + 10) = v16;
    _os_log_impl(&dword_1BBC58000, v11, v0, "setLocalAudio, muted:%{BOOL}d, bluetoothAudioFormat:%s", v3, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_104_2();
    OUTLINED_FUNCTION_2_2();
  }

  ConversationController.setLocalAudio(muted:bluetoothAudioFormat:)();
  OUTLINED_FUNCTION_30_0();
}

void ConversationControlsManager.viewActivity(_:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_388();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34();
  v6 = type metadata accessor for Collaboration(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_2();
  v8 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_240_0();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v3 = static OS_dispatch_queue.main.getter();
  v12 = OUTLINED_FUNCTION_213_0();
  v13(v12);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v3, v8);
  if (v14)
  {
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_3:
  v15 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v15, &static Logger.conversationControls);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_42_1(v17))
  {
    v18 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_203_0(v18);
    OUTLINED_FUNCTION_25_6(&dword_1BBC58000, v19, v20, "viewCurrentActivity");
    OUTLINED_FUNCTION_104_2();
  }

  outlined init with copy of IDSLookupManager(v1, &v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd, &_s15ConversationKit8Activity_pMR);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v6);
    OUTLINED_FUNCTION_18_42();
    OUTLINED_FUNCTION_40_2();
    outlined init with take of Collaboration();
    OUTLINED_FUNCTION_5_6();
    ConversationControlsManager.presentCollaboration(_:completion:)(v24, v25, v26);
    OUTLINED_FUNCTION_2_113();
    _s15ConversationKit11ParticipantVWOhTm_10();
  }

  else
  {
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v6);
    outlined destroy of CallControlsService?(v2, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
    OUTLINED_FUNCTION_20();
    v30 = swift_allocObject();
    OUTLINED_FUNCTION_278(v30);
    swift_unknownObjectWeakInit();
    v31 = *(v1 + 24);
    v32 = *(v1 + 32);
    v33 = OUTLINED_FUNCTION_62_0();
    __swift_project_boxed_opaque_existential_1(v33, v34);
    OUTLINED_FUNCTION_173();

    v35 = OUTLINED_FUNCTION_180_1();
    specialized ConversationControlsManager.presentActivity(activity:completion:)(v35, v36, v16, v0, v31, v32);
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationControlsManager.buzz(participantIdentifier:)()
{
  OUTLINED_FUNCTION_50_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  v8 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v0 = static OS_dispatch_queue.main.getter();
  v9 = OUTLINED_FUNCTION_231_0();
  v10(v9);
  _dispatchPreconditionTest(_:)();
  v11 = OUTLINED_FUNCTION_229_0();
  v12(v11);
  if (v8)
  {
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_3:
  v13 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v13, &static Logger.conversationControls);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v15))
  {
    v16 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_373(v16);
    _os_log_impl(&dword_1BBC58000, v14, v15, v4, v0, 2u);
    OUTLINED_FUNCTION_3_26();
  }

  v2(v6);
  OUTLINED_FUNCTION_49();
}

uint64_t ConversationControlsManager.canKick(participantIdentifier:)()
{
  OUTLINED_FUNCTION_329();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_34();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, &static Logger.conversationControls);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_10(v5))
  {
    v6 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_296(v6);
    OUTLINED_FUNCTION_12_15();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_2_2();
  }

  ConversationController.participant(with:)();
  ConversationController.canKick(_:)();
  v13 = v12;
  outlined destroy of CallControlsService?(v0, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  return v13 & 1;
}

Swift::Void __swiftcall ConversationControlsManager.toggleMultiwayLayout()()
{
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v4 = OUTLINED_FUNCTION_23_6();
  v5(v4);
  _dispatchPreconditionTest(_:)();
  v6 = OUTLINED_FUNCTION_3_7();
  v7(v6);
  if (v3)
  {
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_3:
  v8 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v8, &static Logger.conversationControls);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v10))
  {
    v11 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v11);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_293();
  if ((*(v17 + 1256))())
  {
    v18 = OUTLINED_FUNCTION_255();
    (*(v0 + 96))(v18);
    swift_unknownObjectRelease();
  }

  else
  {
    ConversationControlsManager.handleToggleLayoutAction()(0);
  }
}

Swift::Void __swiftcall ConversationControlsManager.toggleCaptionsButtonTapped()()
{
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v4 = OUTLINED_FUNCTION_23_6();
  v5(v4);
  _dispatchPreconditionTest(_:)();
  v6 = OUTLINED_FUNCTION_3_7();
  v7(v6);
  if (v3)
  {
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_3:
  v8 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v8, &static Logger.conversationControls);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v10))
  {
    v11 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v11);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_293();
  if ((*(v17 + 1256))())
  {
    v18 = OUTLINED_FUNCTION_254_0();
    (*(v0 + 104))(v18);
    swift_unknownObjectRelease();
  }
}

uint64_t ConversationControlsManager.kick(participant:)()
{
  OUTLINED_FUNCTION_329();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v0, &static Logger.conversationControls);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_240(v2))
  {
    v3 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_182_0(v3);
    OUTLINED_FUNCTION_8_10();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_4_4();
  }

  return ConversationController.kick(_:)();
}

uint64_t one-time initialization function for MoreMenuRemoteAlertViewPresentAddParticipant()
{
  OUTLINED_FUNCTION_11();
  result = MEMORY[0x1BFB209B0](0xD000000000000038);
  static NSNotificationName.MoreMenuRemoteAlertViewPresentAddParticipant = result;
  return result;
}

uint64_t one-time initialization function for MoreMenuRemoteAlertViewPresentContactCard()
{
  OUTLINED_FUNCTION_11();
  result = MEMORY[0x1BFB209B0](0xD000000000000035);
  static NSNotificationName.MoreMenuRemoteAlertViewPresentContactCard = result;
  return result;
}

uint64_t one-time initialization function for MoreMenuRemoteAlertViewCallRecording()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000030, 0x80000001BC5096C0);
  static NSNotificationName.MoreMenuRemoteAlertViewCallRecording = result;
  return result;
}

__n128 ControlsHUDUpdate.init(type:replacingNotice:showControlsIfHidden:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;
  result = *(a1 + 25);
  *(a4 + 25) = result;
  *(a4 + 41) = a2;
  *(a4 + 42) = a3;
  *(a4 + 48) = 0;
  return result;
}

uint64_t one-time initialization function for cnk_acceptCallButtonTapped()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000026, 0x80000001BC509690);
  static NSNotificationName.cnk_acceptCallButtonTapped = result;
  return result;
}

uint64_t ConversationControlsManager.callUUID.getter()
{
  OUTLINED_FUNCTION_261_0();
  (*((*MEMORY[0x1E69E7D40] & v1) + 0x2A0))();
  v2 = OUTLINED_FUNCTION_255();
  (*(v0 + 232))(v2, v0);

  return swift_unknownObjectRelease();
}

uint64_t ConversationControlsManager.activeBannerIdentifier.getter()
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2A0))();
  v2 = OUTLINED_FUNCTION_254_0();
  (*(v0 + 56))(v2, v0);
  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_44_0();
}

id ConversationControlsManager.avMode.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0))();
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 avMode];

  return v3;
}

uint64_t key path getter for ConversationControlsManager.ignoredScreenSharingRequestUUIDs : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2D0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationControlsManager.ignoredScreenSharingRequestUUIDs : ConversationControlsManager(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2D8);

  return v2(v3);
}

uint64_t ConversationControlsManager.mostRecentActiveConversation.getter()
{
  (*((*MEMORY[0x1E69E7D40] & **(*(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController)) + 0x120))(v12);
  if (v12[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd, &_s15ConversationKit0A0_pMR);
    v1 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
    OUTLINED_FUNCTION_310_0(v1, v2, v3, v4, v5, v6, v7, v8, v10);
    if (swift_dynamicCast())
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v12, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    return 0;
  }
}

uint64_t ConversationControlsManager.localParticipant.getter()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_56_10();
  OUTLINED_FUNCTION_75_1();
  return _s15ConversationKit11ParticipantVWOcTm_8();
}

uint64_t key path getter for ConversationControlsManager.initiallyActiveParticipantIdentifiers : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2F8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationControlsManager.initiallyActiveParticipantIdentifiers : ConversationControlsManager(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x300);

  return v2(v3);
}

double ConversationControlsManager.ignoredScreenSharingRequestUUIDs.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_19_1(a1);

  return result;
}

uint64_t key path getter for ConversationControlsManager.countdownController : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x328))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationControlsManager.countdownController : ConversationControlsManager(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x330);

  return v2(v3);
}

uint64_t ConversationControlsManager.ignoredScreenSharingRequestUUIDs.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_6_0(v3 + *a2, a2);
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t key path getter for ConversationControlsManager.gameControllerManager : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x340))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationControlsManager.gameControllerManager : ConversationControlsManager(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x348);
  v4 = *a1;
  return v3(v2);
}

uint64_t ConversationControlsManager.gameControllerManager.modify()
{
  v2 = OUTLINED_FUNCTION_401();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_47(v3);
  v5 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameControllerManager;
  *(v4 + 32) = v0;
  *(v4 + 40) = v5;
  OUTLINED_FUNCTION_139_1(v0 + v5);
  *(v1 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_28_3();
}

void ConversationControlsManager.gameControllerManager.modify()
{
  OUTLINED_FUNCTION_235_0();
  OUTLINED_FUNCTION_413();
  if (v2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    OUTLINED_FUNCTION_283();
    (*((*MEMORY[0x1E69E7D40] & v3) + 0x358))();
  }

  free(v0);
}

void ConversationControlsManager.gameControllerContext.getter()
{
  OUTLINED_FUNCTION_261_0();
  v2 = (*((*MEMORY[0x1E69E7D40] & v1) + 0x340))();
  if (v2)
  {
    v3 = v2;
    GameControllerManager.gameControllerContext()(&v11);
    v4 = v11;
    v9 = v13;
    v10 = v12;
    v8 = v14;

    v6 = v8;
    v5 = v9;
    v7 = v10;
  }

  else
  {
    v4 = 0;
    v7 = xmmword_1BC4D2F50;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  *v0 = v4;
  *(v0 + 8) = v7;
  *(v0 + 24) = v5;
  *(v0 + 40) = v6;
}

uint64_t key path getter for ConversationControlsManager.contentExtractor : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x368))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationControlsManager.contentExtractor : ConversationControlsManager(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x370);
  v4 = *a1;
  return v3(v2);
}

void *ConversationControlsManager.contentExtractor.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_contentExtractor;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t (*static ConversationControlsManager.shouldShowCallDetailsWhenReady.modify())()
{
  v0 = OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_30_2(v0, v1);
  return CaptionsViewController.captionVisibilityDuringCapture.modify;
}

void key path setter for static ConversationControlsManager.shouldShowCallDetailsWhenReady : ConversationControlsManager.Type(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static ConversationControlsManager.shouldShowCallDetailsWhenReady = v1;
}

uint64_t key path getter for ConversationControlsManager.shouldShowCallDetailsWhenReady : ConversationControlsManager@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x390))();
  *a2 = result & 1;
  return result;
}

uint64_t ConversationControlsManager.shouldShowCallDetailsWhenReady.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return static ConversationControlsManager.shouldShowCallDetailsWhenReady;
}

uint64_t ConversationControlsManager.shouldShowCallDetailsWhenReady.setter(uint64_t a1)
{
  v1 = a1;
  result = OUTLINED_FUNCTION_51_3(a1);
  static ConversationControlsManager.shouldShowCallDetailsWhenReady = v1;
  return result;
}

uint64_t (*ConversationControlsManager.shouldShowCallDetailsWhenReady.modify(uint64_t a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_3_5(v2, v3);
  *(a1 + 24) = static ConversationControlsManager.shouldShowCallDetailsWhenReady;
  return ConversationControlsManager.shouldShowCallDetailsWhenReady.modify;
}

BOOL ConversationControlsManager.shouldShowMessageButton.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0))();
  if (v1 && (v2 = v1, v3 = [v1 remoteMembers], v2, OUTLINED_FUNCTION_92_0(), type metadata accessor for NSObject(v4, v5, v6), OUTLINED_FUNCTION_1_65(), OUTLINED_FUNCTION_92_0(), lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v7, v8, v9), OUTLINED_FUNCTION_208(), static Set._unconditionallyBridgeFromObjectiveC(_:)(), v3, LOBYTE(v3) = specialized Set.isEmpty.getter(), , (v3 & 1) == 0))
  {
    return ConversationControlsManager.messagesAppInstalled()();
  }

  else
  {
    return 0;
  }
}

Swift::Bool __swiftcall ConversationControlsManager.messagesAppInstalled()()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  if (Features.isSADMessagesEnabled.getter())
  {
    v0 = [objc_opt_self() defaultWorkspace];
    if (!v0)
    {
      __break(1u);
      return v0;
    }

    v1 = v0;
    OUTLINED_FUNCTION_11();
    v2 = MEMORY[0x1BFB209B0](0xD000000000000013);
    v3 = [v1 applicationIsInstalled_];

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v4, &static Logger.conversationControls);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v6))
    {
      v7 = OUTLINED_FUNCTION_18_18();
      *v7 = 67109120;
      v7[1] = v3;
      OUTLINED_FUNCTION_219();
      _os_log_impl(v8, v9, v10, v11, v12, 8u);
      OUTLINED_FUNCTION_18();
    }
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  LOBYTE(v0) = v3;
  return v0;
}

uint64_t ConversationControlsManager.presentContactCard.getter()
{
  return ConversationControlsManager.presentContactCard.getter();
}

{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();

  return OUTLINED_FUNCTION_38_2();
}

uint64_t key path getter for ConversationControlsManager.presentContactCard : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3B0))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = result;
  return result;
}

uint64_t key path setter for ConversationControlsManager.presentContactCard : ConversationControlsManager(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3B8);

  return v6(thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v5);
}

id @objc ConversationControlsManager.presentContactCard.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v9[4] = a3();
  v9[5] = v5;
  OUTLINED_FUNCTION_1_25();
  v9[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v9[2] = v6;
  v9[3] = a4;
  v7 = _Block_copy(v9);

  return v7;
}

void @objc ConversationControlsManager.presentContactCard.setter()
{
  OUTLINED_FUNCTION_331();
  v1 = v0;
  v3 = v2;
  v5 = _Block_copy(v4);
  OUTLINED_FUNCTION_20();
  *(swift_allocObject() + 16) = v5;
  v3;
  v6 = OUTLINED_FUNCTION_15_14();
  v1(v6);
  OUTLINED_FUNCTION_9_17();
}

uint64_t ConversationControlsManager.presentContactCard.setter()
{
  OUTLINED_FUNCTION_55();
  v4 = (v1 + *v3);
  OUTLINED_FUNCTION_51_3(v5);
  *v4 = v2;
  v4[1] = v0;
}

uint64_t key path getter for ConversationControlsManager.presentAddParticipantSheet : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3C8))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  a2[1] = result;
  return result;
}

uint64_t key path setter for ConversationControlsManager.presentAddParticipantSheet : ConversationControlsManager(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3D0);

  return v6(partial apply for thunk for @escaping @callee_guaranteed () -> (@out ()), v5);
}

uint64_t key path getter for ConversationControlsManager.minReactionCountForNotice : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x428))();
  *a2 = result;
  return result;
}

uint64_t ConversationControlsManager.updateReactionNotice()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14ReactionNoticeVSgMd, &_s15ConversationKit14ReactionNoticeVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16[-v6];
  swift_beginAccess();
  specialized NoticeQueueStore.peek()();
  swift_endAccess();
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
    v8 = type metadata accessor for ReactionNotice(0);
    v9 = swift_dynamicCast() ^ 1;
    v10 = v7;
  }

  else
  {
    outlined destroy of CallControlsService?(v17, &_s15ConversationKit6Notice_pSgMd, &_s15ConversationKit6Notice_pSgMR);
    v8 = type metadata accessor for ReactionNotice(0);
    v10 = v7;
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v9, 1, v8);
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  type metadata accessor for ReactionNotice(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    v11 = outlined destroy of CallControlsService?(v4, &_s15ConversationKit14ReactionNoticeVSgMd, &_s15ConversationKit14ReactionNoticeVSgMR);
    v12 = 0;
  }

  else
  {
    v13 = *v4;

    _s15ConversationKit11ParticipantVWOhTm_10();
    v12 = *(v13 + 16);
  }

  v14 = MEMORY[0x1E69E7D40];
  if (v12 >= (*((*MEMORY[0x1E69E7D40] & *v1) + 0x428))(v11) && ((*((*v14 & *v1) + 0x440))() & 1) != 0)
  {
    ConversationControlsManager.postReactionNotice()();
  }

  else
  {
    ConversationControlsManager.dismissReactionNotice()();
  }

  return outlined destroy of CallControlsService?(v7, &_s15ConversationKit14ReactionNoticeVSgMd, &_s15ConversationKit14ReactionNoticeVSgMR);
}

uint64_t ConversationControlsManager.minReactionCountForNotice.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_minReactionCountForNotice;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t ConversationControlsManager.minReactionCountForNotice.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_minReactionCountForNotice;
  v4 = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = a1;
  return ConversationControlsManager.minReactionCountForNotice.didset(v4, v5);
}

uint64_t ConversationControlsManager.minReactionCountForNotice.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t key path getter for ConversationControlsManager.canPostReactionNotice : ConversationControlsManager@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x440))();
  *a2 = result & 1;
  return result;
}

uint64_t ConversationControlsManager.minReactionCountForNotice.didset(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_reactionNoticeHistory;
  OUTLINED_FUNCTION_6_0(v2 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_reactionNoticeHistory, a2);
  *(v2 + v3) = MEMORY[0x1E69E7CC0];

  return ConversationControlsManager.updateReactionNotice()();
}

uint64_t ConversationControlsManager.canPostReactionNotice.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_canPostReactionNotice;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t ConversationControlsManager.canPostReactionNotice.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_canPostReactionNotice;
  v4 = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return ConversationControlsManager.minReactionCountForNotice.didset(v4, v5);
}

uint64_t ConversationControlsManager.canPostReactionNotice.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t ConversationControlsManager.minReactionCountForNotice.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return ConversationControlsManager.minReactionCountForNotice.didset(result, v4);
  }

  return result;
}

uint64_t key path getter for ConversationControlsManager.videoTileConversationController : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x458))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationControlsManager.videoTileConversationController : ConversationControlsManager(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x460);
  v4 = *a1;
  return v3(v2);
}

void ConversationControlsManager.videoTileConversationController.didset(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = Strong;
  if (a1)
  {
    if (Strong)
    {
      type metadata accessor for ConversationController(0);
      v6 = a1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        return;
      }
    }
  }

  else
  {
    if (!Strong)
    {
      return;
    }
  }

  if (*(v2 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_hasInitializedCallControlsService) == 1)
  {
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x488))(v9);
    if (v9[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19CallControlsService_pMd, &_s15ConversationKit19CallControlsService_pMR);
      type metadata accessor for InCallCallControlsService(0);
      if (swift_dynamicCast())
      {
        v8 = swift_unknownObjectWeakLoadStrong();
        swift_beginAccess();
        swift_unknownObjectWeakAssign();
      }
    }

    else
    {
      outlined destroy of CallControlsService?(v9, &_s15ConversationKit19CallControlsService_pSgMd, &_s15ConversationKit19CallControlsService_pSgMR);
    }
  }
}

void ConversationControlsManager.videoTileConversationController.setter(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_videoTileConversationController, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_382();
  swift_unknownObjectWeakAssign();
  ConversationControlsManager.videoTileConversationController.didset(Strong);
}

uint64_t ConversationControlsManager.videoTileConversationController.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_47(v2) + 32) = v0;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v1 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_28_3();
}

void ConversationControlsManager.videoTileConversationController.modify(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    ConversationControlsManager.videoTileConversationController.setter(v3, v6);
  }

  else
  {
    ConversationControlsManager.videoTileConversationController.setter(*(*a1 + 24), a2);
  }

  free(v2);
}

double ConversationControlsManager.callControlsService.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___callControlsService;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  if (*(&v11 + 1) == 1)
  {
    OUTLINED_FUNCTION_41();
    outlined destroy of CallControlsService?(v4, v5, v6);
    closure #1 in ConversationControlsManager.callControlsService.getter(v1, a1);
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    OUTLINED_FUNCTION_30_2(v1 + v3, v9);
    outlined assign with take of RecentsCallItem?();
    swift_endAccess();
  }

  else
  {
    result = *&v10;
    v8 = v11;
    *a1 = v10;
    *(a1 + 16) = v8;
    *(a1 + 32) = v12;
  }

  return result;
}

void closure #1 in ConversationControlsManager.callControlsService.getter(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    *(a1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_hasInitializedCallControlsService) = 1;
    v4 = *(a1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
    v5 = (v4 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
    swift_beginAccess();
    v6 = *v5;
    v7 = v5[1];
    swift_unknownObjectRetain();
    v8 = ConversationController.localVideoSupported.getter();
    v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState;
    swift_beginAccess();
    v10 = *(v4 + v9);
    v11 = type metadata accessor for InCallCallControlsService(0);
    swift_allocObject();
    v12 = InCallCallControlsService.init(activeCall:localVideoSupported:letMeInState:)(v6, v7, v8 & 1, v10);
    v13 = MEMORY[0x1E69E7D40];
    v14 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x928))();
    InCallCallControlsService.updateMode(_:)(v14);
    swift_beginAccess();
    v15 = swift_unknownObjectWeakAssign();
    v16 = (*((*v13 & *a1) + 0x458))(v15);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();

    v17 = &protocol witness table for InCallCallControlsService;
  }

  else
  {
    v11 = 0;
    v17 = 0;
    v12 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = v11;
  a2[4] = v17;
  *a2 = v12;
}

uint64_t ConversationControlsManager.callControlsService.setter(__int128 *a1)
{
  v2 = a1[1];
  v5 = *a1;
  v6 = v2;
  v7 = *(a1 + 4);
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___callControlsService, v4);
  outlined assign with take of RecentsCallItem?();
  return swift_endAccess();
}

uint64_t key path getter for ConversationControlsManager.systemBannerPresenter : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4A0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ConversationControlsManager.systemBannerPresenter : ConversationControlsManager(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x4A8);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ConversationControlsManager.systemBannerPresenter.modify()
{
  v0 = OUTLINED_FUNCTION_39_6();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_47(v1);
  OUTLINED_FUNCTION_55_0(v2, OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_systemBannerPresenter);
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_287_0(Strong);
  return OUTLINED_FUNCTION_28_3();
}

uint64_t key path getter for ConversationControlsManager.systemConversationControlsDelegate : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4B8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ConversationControlsManager.systemConversationControlsDelegate : ConversationControlsManager(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x4C0);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ConversationControlsManager.systemConversationControlsDelegate.modify()
{
  v0 = OUTLINED_FUNCTION_39_6();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_47(v1);
  OUTLINED_FUNCTION_55_0(v2, OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_systemConversationControlsDelegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_287_0(Strong);
  return OUTLINED_FUNCTION_28_3();
}

uint64_t key path getter for ConversationControlsManager.systemAudioConversationControlsDelegate : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4D0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ConversationControlsManager.systemAudioConversationControlsDelegate : ConversationControlsManager(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x4D8);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ConversationControlsManager.systemAudioConversationControlsDelegate.modify()
{
  v0 = OUTLINED_FUNCTION_39_6();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_47(v1);
  OUTLINED_FUNCTION_55_0(v2, OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_systemAudioConversationControlsDelegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_287_0(Strong);
  return OUTLINED_FUNCTION_28_3();
}

uint64_t key path getter for ConversationControlsManager.inCallConversationControlsDelegate : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4E8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ConversationControlsManager.inCallConversationControlsDelegate : ConversationControlsManager(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x4F0);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

void closure #1 in ConversationControlsManager.inCallConversationControlsDelegate.didset(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x2C0))();
    if (v5)
    {
      v6 = v5;
      if ((v2 & 1) == 0 && [v5 letMeInRequestState] == 2)
      {
        v7 = *&v4[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController];
        ConversationController.cancelJoinCountdown()();
      }

      v4 = v6;
    }
  }
}

uint64_t ConversationControlsManager.inCallConversationControlsDelegate.modify()
{
  v0 = OUTLINED_FUNCTION_39_6();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_47(v1);
  OUTLINED_FUNCTION_55_0(v2, OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_inCallConversationControlsDelegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_287_0(Strong);
  return OUTLINED_FUNCTION_28_3();
}

void ConversationControlsManager.inCallConversationControlsDelegate.modify()
{
  OUTLINED_FUNCTION_235_0();
  OUTLINED_FUNCTION_371();
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    ConversationControlsManager.inCallConversationControlsDelegate.didset();
  }

  free(v0);
}

uint64_t key path getter for ConversationControlsManager.inCallDetailsViewControllerDelegate : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x500))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ConversationControlsManager.inCallDetailsViewControllerDelegate : ConversationControlsManager(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x508);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ConversationControlsManager.inCallDetailsViewControllerDelegate.modify()
{
  v0 = OUTLINED_FUNCTION_39_6();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_47(v1);
  OUTLINED_FUNCTION_55_0(v2, OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_inCallDetailsViewControllerDelegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_287_0(Strong);
  return OUTLINED_FUNCTION_28_3();
}

uint64_t key path getter for ConversationControlsManager.audioRoutingDelegate : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x518))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationControlsManager.audioRoutingDelegate : ConversationControlsManager(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x520);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t ConversationControlsManager.audioRoutingDelegate.modify()
{
  v2 = OUTLINED_FUNCTION_401();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_47(v3);
  v5 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_audioRoutingDelegate;
  *(v4 + 32) = v0;
  *(v4 + 40) = v5;
  OUTLINED_FUNCTION_139_1(v0 + v5);
  *(v1 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_28_3();
}

uint64_t key path getter for ConversationControlsManager.localAudioTogglingDelegate : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x530))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationControlsManager.localAudioTogglingDelegate : ConversationControlsManager(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x538);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t ConversationControlsManager.localAudioTogglingDelegate.modify()
{
  v2 = OUTLINED_FUNCTION_401();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_47(v3);
  v5 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_localAudioTogglingDelegate;
  *(v4 + 32) = v0;
  *(v4 + 40) = v5;
  OUTLINED_FUNCTION_139_1(v0 + v5);
  *(v1 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_28_3();
}

void ConversationControlsManager.audioRoutingDelegate.modify()
{
  OUTLINED_FUNCTION_235_0();
  OUTLINED_FUNCTION_413();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

uint64_t key path getter for ConversationControlsManager.handoffCompletedDelegate : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x548))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ConversationControlsManager.handoffCompletedDelegate : ConversationControlsManager(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x550);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ConversationControlsManager.handoffCompletedDelegate.modify()
{
  v0 = OUTLINED_FUNCTION_39_6();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_47(v1);
  OUTLINED_FUNCTION_55_0(v2, OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_handoffCompletedDelegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_287_0(Strong);
  return OUTLINED_FUNCTION_28_3();
}

void ConversationControlsManager.systemBannerPresenter.modify()
{
  OUTLINED_FUNCTION_235_0();
  OUTLINED_FUNCTION_371();
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

uint64_t key path getter for ConversationControlsManager.conduitLagunaNoticeManager : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x578))();
  *a2 = result;
  return result;
}

void key path setter for ConversationControlsManager.conduitLagunaNoticeManager : ConversationControlsManager(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  ConversationControlsManager.conduitLagunaNoticeManager.setter(v1);
}

void *ConversationControlsManager.conduitLagunaNoticeManager.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conduitLagunaNoticeManager;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t key path getter for ConversationControlsManager.shouldOpenMessages : ConversationControlsManager@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x590))();
  *a2 = result & 1;
  return result;
}

uint64_t ConversationControlsManager.$shouldOpenMessages.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  OUTLINED_FUNCTION_1_17();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  OUTLINED_FUNCTION_67(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_61();
  return v6(v5);
}

uint64_t key path getter for ConversationControlsManager.shouldEnableStartingStagedActivity : ConversationControlsManager@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5C0))();
  *a2 = result & 1;
  return result;
}

uint64_t ConversationControlsManager.shouldOpenMessages.setter(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  OUTLINED_FUNCTION_398();
  return static Published.subscript.setter();
}

uint64_t key path setter for ConversationControlsManager.$shouldOpenMessages : ConversationControlsManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_34();
  v10 = OUTLINED_FUNCTION_1_5();
  v11(v10);
  return a7(v7);
}

uint64_t ConversationControlsManager.$shouldEnableStartingStagedActivity.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  OUTLINED_FUNCTION_1_17();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  OUTLINED_FUNCTION_67(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_61();
  return v6(v5);
}

uint64_t key path getter for ConversationControlsManager.activityManager : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5F0))();
  *a2 = result;
  return result;
}

id ConversationControlsManager.activityManager.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activityManager;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);

  return v3;
}

uint64_t key path getter for ConversationControlsManager.bannerActivityManager : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x608))();
  *a2 = result;
  return result;
}

id ConversationControlsManager.bannerActivityManager.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_bannerActivityManager;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);

  return v3;
}

uint64_t key path getter for ConversationControlsManager.incomingScreenSharingRequestActivity : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x620))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationControlsManager.incomingScreenSharingRequestActivity : ConversationControlsManager(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x628);

  return v2(v3);
}

uint64_t key path getter for ConversationControlsManager.podcastRecordingConsentRequestActivity : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x638))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationControlsManager.podcastRecordingConsentRequestActivity : ConversationControlsManager(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x640);

  return v2(v3);
}

uint64_t key path getter for ConversationControlsManager.audioRoute : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x650))();
  *a2 = result;
  return result;
}

void key path setter for ConversationControlsManager.audioRoute : ConversationControlsManager(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  ConversationControlsManager.audioRoute.setter(v1, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

void ConversationControlsManager.audioRoute.didset(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x650);
  v5 = v4();
  if (!v5)
  {
    return;
  }

  if (a1)
  {
    v44 = v5;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TURoute, 0x1E69D8CA8);
    v43 = a1;
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      (*((*v3 & *v1) + 0x2A0))();
      v7 = v6;
      ObjectType = swift_getObjectType();
      LOBYTE(v7) = (*(v7 + 96))(ObjectType, v7);
      swift_unknownObjectRelease();
      if (v7)
      {
        if (one-time initialization token for conversationControls != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, &static Logger.conversationControls);
        v10 = v1;
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v53[0] = v42;
          *v13 = 136315138;
          v14 = v4();
          if (v14)
          {
            v48[0] = v14;
            v15 = String.init<A>(reflecting:)();
            v17 = v16;
          }

          else
          {
            v17 = 0xE300000000000000;
            v15 = 7104878;
          }

          v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v53);

          *(v13 + 4) = v18;
          _os_log_impl(&dword_1BBC58000, v11, v12, "audioRoute: %s", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          MEMORY[0x1BFB23DF0](v42, -1, -1);
          MEMORY[0x1BFB23DF0](v13, -1, -1);
        }

        else
        {
        }

        swift_beginAccess();
        if (static ConversationControlsManager.shouldShowAVLessLeaveConfirmation)
        {
          v19 = Logger.logObject.getter();
          v20 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            *v21 = 0;
            _os_log_impl(&dword_1BBC58000, v19, v20, "Not posting alert for the local audio route state changing since we're showing the AVLess downgrade confirmation dialog", v21, 2u);
            MEMORY[0x1BFB23DF0](v21, -1, -1);
          }
        }

        else
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
          v22 = *MEMORY[0x1E69DDD40];
          v47 = 0;
          v53[0] = 0xD000000000000013;
          v53[1] = 0x80000001BC5028D0;
          v53[2] = 1;
          v53[3] = v22;
          v54 = 0;
          v55 = 4;
          v56 = 0;
          v57 = 0;
          v48[0] = 0xD000000000000013;
          v48[1] = 0x80000001BC5028D0;
          v48[2] = 1;
          v48[3] = v22;
          v49 = 0;
          v50 = 4;
          v51 = 0;
          v52 = 0;
          v23 = v22;
          outlined init with copy of SymbolImageDescription(v53, v45);
          outlined destroy of SymbolImageDescription(v48);
          v24 = static UIImage.symbolImage(for:)(v53);
          outlined destroy of SymbolImageDescription(v53);
          if (v24)
          {
            v25 = [objc_opt_self() labelColor];
            v26 = [v24 imageWithTintColor_];
          }

          else
          {
            v26 = 0;
          }

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
          v27 = [objc_opt_self() conversationKit];
          v59._object = 0xE000000000000000;
          v28._countAndFlagsBits = 0x6F69647541;
          v29.value._countAndFlagsBits = 0x61737265766E6F43;
          v29.value._object = 0xEF74694B6E6F6974;
          v28._object = 0xE500000000000000;
          v30._countAndFlagsBits = 0;
          v30._object = 0xE000000000000000;
          v59._countAndFlagsBits = 0;
          v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v59);

          memset(v45, 0, sizeof(v45));
          v46 = 1;
          v32 = static NSAttributedString.localizedString(_:prefixImage:imageBounds:)(v31._countAndFlagsBits, v31._object, v26, v45);

          v33 = [v44 name];
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;

          v37._countAndFlagsBits = v34;
          v37._object = v36;
          isa = NSAttributedString.__allocating_init(string:)(v37).super.isa;
          v39 = *((*v3 & *v10) + 0x8E0);
          v40 = v32;
          v41 = isa;
          v39(v32, isa, 1);
        }

        return;
      }
    }

    v5 = v43;
  }
}

void ConversationControlsManager.audioRoute.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_331();
  v12 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_208();
  static Published.subscript.getter();

  swift_getKeyPath();
  OUTLINED_FUNCTION_332();
  swift_getKeyPath();
  v13 = v12;
  v10;
  OUTLINED_FUNCTION_30_20();
  static Published.subscript.setter();
  ConversationControlsManager.audioRoute.didset(a10);

  OUTLINED_FUNCTION_9_17();
}

uint64_t ConversationControlsManager.$audioRoute.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7TURouteCSg_GMd, &_s7Combine9PublishedV9PublisherVySo7TURouteCSg_GMR);
  OUTLINED_FUNCTION_1_17();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7TURouteCSgGMd, &_s7Combine9PublishedVySo7TURouteCSgGMR);
  OUTLINED_FUNCTION_67(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_61();
  return v6(v5);
}

uint64_t key path getter for ConversationControlsManager.bluetoothAudioFormat : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x680))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void ConversationControlsManager.bluetoothAudioFormat.didset(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x680);
  v7 = v6();
  if ((v8 & 1) == 0 && a2 & 1 | (v7 != a1) && v7 == 1)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, &static Logger.conversationControls);
    v10 = v2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v37 = v14;
      *v13 = 136315138;
      v6();
      if (v15)
      {
        v16 = 0xE300000000000000;
        v17 = 7104878;
      }

      else
      {
        type metadata accessor for TUCallBluetoothAudioFormat(0);
        v17 = String.init<A>(reflecting:)();
        v16 = v18;
      }

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v37);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_1BBC58000, v11, v12, "bluetoothAudioFormat: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1BFB23DF0](v14, -1, -1);
      MEMORY[0x1BFB23DF0](v13, -1, -1);
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v20 = [objc_opt_self() conversationKit];
    v38._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0x494D5F4B41455053;
    v21._object = 0xEC00000040255F43;
    v22.value._countAndFlagsBits = 0x61737265766E6F43;
    v22.value._object = 0xEF74694B6E6F6974;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v38._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v38);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1BC4BA940;
    v25 = [objc_opt_self() currentDevice];
    v26 = [v25 model];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v24 + 32) = v27;
    *(v24 + 40) = v29;
    v30 = String.init(format:_:)();
    v32 = v31;

    v33._countAndFlagsBits = v30;
    v33._object = v32;
    isa = NSAttributedString.__allocating_init(string:)(v33).super.isa;
    v35 = *((*v5 & *v10) + 0x8E0);
    v36 = isa;
    v35(isa, 0, 1);
  }
}

uint64_t ConversationControlsManager.bluetoothAudioFormat.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_92_0();
  static Published.subscript.getter();

  return v3;
}

void ConversationControlsManager.bluetoothAudioFormat.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_272();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v20;
  static Published.subscript.setter();
  ConversationControlsManager.bluetoothAudioFormat.didset(a9, a10);
  OUTLINED_FUNCTION_194_0();
}

uint64_t ConversationControlsManager.$bluetoothAudioFormat.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo26TUCallBluetoothAudioFormatVSg_GMd, &_s7Combine9PublishedV9PublisherVySo26TUCallBluetoothAudioFormatVSg_GMR);
  OUTLINED_FUNCTION_1_17();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo26TUCallBluetoothAudioFormatVSgGMd, &_s7Combine9PublishedVySo26TUCallBluetoothAudioFormatVSgGMR);
  OUTLINED_FUNCTION_67(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_61();
  return v6(v5);
}

uint64_t key path getter for ConversationControlsManager.localAudioEnabled : ConversationControlsManager@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x6B0))();
  *a2 = result & 1;
  return result;
}

uint64_t ConversationControlsManager.shouldOpenMessages.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_397();
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_14();
  static Published.subscript.getter();

  return v3;
}

void ConversationControlsManager.localAudioEnabled.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13)
{
  OUTLINED_FUNCTION_331();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_208();
  static Published.subscript.getter();

  swift_getKeyPath();
  OUTLINED_FUNCTION_332();
  swift_getKeyPath();
  v13;
  OUTLINED_FUNCTION_30_20();
  static Published.subscript.setter();
  ConversationControlsManager.localAudioEnabled.didset(a13);
  OUTLINED_FUNCTION_9_17();
}

uint64_t ConversationControlsManager.$localAudioEnabled.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  OUTLINED_FUNCTION_1_17();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  OUTLINED_FUNCTION_67(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_61();
  return v6(v5);
}

uint64_t key path getter for ConversationControlsManager.localVideoButtonState : ConversationControlsManager@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x6E0))();
  *a2 = result & 1;
  a2[1] = BYTE1(result) & 1;
  return result;
}

void key path setter for ConversationControlsManager.localVideoButtonState : ConversationControlsManager(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[1])
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  ConversationControlsManager.localVideoButtonState.setter(v8 | *a1, a2, a3, a4, a5, a6, a7, a8, v9, v10, SWORD2(v10), BYTE6(v10), SHIBYTE(v10));
}

Class ConversationControlsManager.localVideoStateChangedAlert.getter()
{
  if (((*((*MEMORY[0x1E69E7D40] & *v0) + 0x6E0))() & 0x100) != 0)
  {
    return ConversationControlsManager.videoCameraOnOrOffAlert.getter();
  }

  ConversationController.cameraStartPolicy.getter();
  if (v1)
  {
    return ConversationControlsManager.videoCameraOnOrOffAlert.getter();
  }

  else
  {
    return ConversationControlsManager.videoCameraOffForScreenSharingAlert.getter();
  }
}

uint64_t ConversationControlsManager.$localVideoButtonState.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit19ControlsActionStateV_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit19ControlsActionStateV_GMR);
  OUTLINED_FUNCTION_1_17();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit19ControlsActionStateVGMd, &_s7Combine9PublishedVy15ConversationKit19ControlsActionStateVGMR);
  OUTLINED_FUNCTION_67(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_61();
  return v6(v5);
}

void *one-time initialization function for screenSharingControlStateManager()
{
  type metadata accessor for ScreenSharingControlStateManager();
  swift_allocObject();
  result = ScreenSharingControlStateManager.init()();
  static ConversationControlsManager.screenSharingControlStateManager = result;
  return result;
}

uint64_t key path getter for ConversationControlsManager.shareMenuButtonState : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x710))();
  *a2 = result & 1;
  *(a2 + 1) = BYTE1(result) & 1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 17) = v6 & 1;
  return result;
}

uint64_t key path setter for ConversationControlsManager.shareMenuButtonState : ConversationControlsManager(unsigned __int8 *a1, void **a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a1[17])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x718))(v2 | *a1, *(a1 + 1), v3 | a1[16]);
}

uint64_t key path getter for ConversationControlsManager.screenSharingAvailable : ConversationControlsManager@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x728))();
  *a2 = result & 1;
  return result;
}

uint64_t ConversationControlsManager.screenSharingAvailable.getter()
{
  if (one-time initialization token for screenSharingControlStateManager != -1)
  {
    OUTLINED_FUNCTION_27_31(&one-time initialization token for screenSharingControlStateManager);
  }

  CurrentValueSubject.value.getter();

  return v1;
}

uint64_t ConversationControlsManager.screenSharingAvailable.setter(char a1)
{
  if (one-time initialization token for screenSharingControlStateManager != -1)
  {
    OUTLINED_FUNCTION_27_31(&one-time initialization token for screenSharingControlStateManager);
  }

  CurrentValueSubject.send(_:)();
}

uint64_t (*ConversationControlsManager.screenSharingAvailable.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ConversationControlsManager.screenSharingAvailable.getter() & 1;
  return ConversationControlsManager.screenSharingAvailable.modify;
}

uint64_t ConversationControlsManager.shareMenuButtonStatePublisher.getter()
{
  if (one-time initialization token for screenSharingControlStateManager != -1)
  {
    OUTLINED_FUNCTION_27_31(&one-time initialization token for screenSharingControlStateManager);
  }

  v0 = OUTLINED_FUNCTION_46();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  v2 = OUTLINED_FUNCTION_198_0(&lazy protocol witness table cache variable for type CurrentValueSubject<ShareMenuActionState, Never> and conformance CurrentValueSubject<A, B>);
  return OUTLINED_FUNCTION_349(v2);
}

uint64_t ConversationControlsManager.screenSharingAvailablePublisher.getter()
{
  if (one-time initialization token for screenSharingControlStateManager != -1)
  {
    OUTLINED_FUNCTION_27_31(&one-time initialization token for screenSharingControlStateManager);
  }

  v0 = OUTLINED_FUNCTION_46();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  v2 = OUTLINED_FUNCTION_198_0(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>);
  return OUTLINED_FUNCTION_349(v2);
}

void key path setter for ConversationControlsManager.pttChannelState : ConversationControlsManager(uint64_t a1)
{
  v2 = type metadata accessor for PushToTalkChannelState();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  ConversationControlsManager.pttChannelState.setter();
}

void ConversationControlsManager.pttChannelState.didset()
{
  v1 = type metadata accessor for PushToTalkChannelState();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Logger.conversationControls);
  v6 = v0;
  v15 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    (*((*MEMORY[0x1E69E7D40] & *v6) + 0x768))();
    v10 = >> prefix<A>(_:)();
    v12 = v11;
    (*(v2 + 8))(v4, v1);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1BBC58000, v15, v7, "pttChannelState: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFB23DF0](v9, -1, -1);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
  }

  else
  {
    v14 = v15;
  }
}

void ConversationControlsManager.pttChannelState.setter()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkChannelState();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = OUTLINED_FUNCTION_309();
  v3(v2);
  v4 = v0;
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_205_0();
  static Published.subscript.setter();
  ConversationControlsManager.pttChannelState.didset();
  v5 = OUTLINED_FUNCTION_44_0();
  v6(v5);
  OUTLINED_FUNCTION_49();
}

uint64_t ConversationControlsManager.$pttChannelState.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GMd, &_s7Combine9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GMR);
  OUTLINED_FUNCTION_1_17();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy20CommunicationsUICore22PushToTalkChannelStateOGMd, &_s7Combine9PublishedVy20CommunicationsUICore22PushToTalkChannelStateOGMR);
  OUTLINED_FUNCTION_67(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_61();
  return v6(v5);
}

uint64_t key path getter for ConversationControlsManager.pttChannelTransmissionMode : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x798))();
  *a2 = result;
  return result;
}

void ConversationControlsManager.pttChannelTransmissionMode.didset()
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, &static Logger.conversationControls);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x798))();
    type metadata accessor for TUCallTransmissionMode(0);
    v6 = >> prefix<A>(_:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1BBC58000, oslog, v3, "pttChannelTransmissionMode: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
    MEMORY[0x1BFB23DF0](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t ConversationControlsManager.pttChannelTransmissionMode.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_92_0();
  static Published.subscript.getter();

  return v3;
}

void ConversationControlsManager.pttChannelTransmissionMode.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  OUTLINED_FUNCTION_30_20();
  static Published.subscript.setter();
  ConversationControlsManager.pttChannelTransmissionMode.didset();
}

uint64_t ConversationControlsManager.$pttChannelTransmissionMode.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo22TUCallTransmissionModeV_GMd, &_s7Combine9PublishedV9PublisherVySo22TUCallTransmissionModeV_GMR);
  OUTLINED_FUNCTION_1_17();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22TUCallTransmissionModeVGMd, &_s7Combine9PublishedVySo22TUCallTransmissionModeVGMR);
  OUTLINED_FUNCTION_67(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_61();
  return v6(v5);
}

uint64_t key path getter for ConversationControlsManager.pttViewModel : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x7C8))();
  *a2 = result;
  return result;
}

uint64_t ConversationControlsManager.pttViewModel.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___pttViewModel;
  if (*&v0[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___pttViewModel])
  {
    v2 = *&v0[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___pttViewModel];
  }

  else
  {
    v3 = v0;
    type metadata accessor for PushToTalkViewModel(0);
    swift_allocObject();
    v2 = PushToTalkViewModel.init(conversationControlsManager:)(v0);
    *&v3[v1] = v2;
  }

  return v2;
}

uint64_t key path getter for ConversationControlsManager.foregroundApp : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x860))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationControlsManager.foregroundApp : ConversationControlsManager(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x868);
  v4 = *a1;
  return v3(v2);
}

void ConversationControlsManager.foregroundApp.didset()
{
  v1 = type metadata accessor for Date();
  v94 = *(v1 - 8);
  v95 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v93 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for AppLaunchNotice(0);
  MEMORY[0x1EEE9AC00](v96);
  v4 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, &static Logger.conversationControls);
  v7 = v0;
  v92 = v6;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = MEMORY[0x1E69E7D40];
  if (v10)
  {
    v91 = v4;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v99[0] = v13;
    *v12 = 136315394;
    v14 = *((*v11 & *v7) + 0x860);
    v15 = v14();
    if (v15)
    {
      v16 = v15;
      v18 = *(v15 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier);
      v17 = *(v15 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier + 8);
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    v97 = v18;
    v98 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v99);

    *(v12 + 4) = v21;
    *(v12 + 12) = 2080;
    v23 = (v14)(v22);
    if (v23)
    {
      v24 = v23[OBJC_IVAR____TtC15ConversationKit13ForegroundApp_type];

      LOBYTE(v97) = v24;
      v25 = String.init<A>(reflecting:)();
      v27 = v26;
    }

    else
    {
      v27 = 0xE300000000000000;
      v25 = 7104878;
    }

    v4 = v91;
    v11 = MEMORY[0x1E69E7D40];
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v99);

    *(v12 + 14) = v28;
    _os_log_impl(&dword_1BBC58000, v8, v9, "Foregrounded app:%s, type:%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v13, -1, -1);
    MEMORY[0x1BFB23DF0](v12, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v29 = static SharePlayDiscoverabilityAppsController.shared;
  v30 = *((*v11 & *v7) + 0x860);
  v31 = v30();
  v32 = (*((*v11 & *v29) + 0xA0))(v31);
  v33 = (*((*v11 & *v7) + 0xAC0))(v32);
  v34 = (*((*v11 & *v7) + 0x2C0))(v33);
  v35 = v34;
  if (!v34 || ([v34 isBackedByGroupSession] & 1) == 0)
  {
    (*((*v11 & *v7) + 0x2A0))();
    v37 = v36;
    ObjectType = swift_getObjectType();
    LOBYTE(v37) = (*(v37 + 152))(ObjectType, v37);
    swift_unknownObjectRelease();
    if ((v37 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  v39 = v30();
  if (!v39)
  {
    goto LABEL_40;
  }

  v40 = v39;
  if (((*((*v11 & *v39) + 0x80))() & 1) == 0)
  {

LABEL_40:
    return;
  }

  v41 = (*((*v11 & *v7) + 0x988))();
  if (v41)
  {
    v42 = v41;
    v43 = v11;
    if ([v41 state] != 1 && objc_msgSend(v42, sel_state))
    {
      goto LABEL_27;
    }

    v44 = outlined bridged method (ob) of @objc TUConversationActivity.bundleIdentifier.getter([v42 activity]);
    if (!v45)
    {
      goto LABEL_27;
    }

    v46 = &v40[OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier];
    if (v44 == *&v40[OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier] && v45 == *&v40[OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier + 8])
    {
    }

    else
    {
      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v48 & 1) == 0)
      {
LABEL_27:

        v11 = v43;
        goto LABEL_28;
      }
    }

    v79 = v40;
    v67 = v42;
    v68 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v68, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v99[0] = v82;
      *v81 = 136315394;
      v83 = *v46;
      v84 = v46[1];

      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, v99);

      *(v81 + 4) = v85;
      *(v81 + 12) = 2080;
      v97 = outlined bridged method (ob) of @objc TUConversationActivity.bundleIdentifier.getter([v67 activity]);
      v98 = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v87 = String.init<A>(describing:)();
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, v99);

      *(v81 + 14) = v89;
      _os_log_impl(&dword_1BBC58000, v68, v80, "Foreground app bundleIdentifier (%s) is same as currentActivity (%s)", v81, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v82, -1, -1);
      MEMORY[0x1BFB23DF0](v81, -1, -1);

      goto LABEL_47;
    }

LABEL_50:
    goto LABEL_40;
  }

LABEL_28:
  v49 = (*((*v11 & *v7) + 0x990))();
  if (v49)
  {
    v50 = v49;
    v51 = outlined bridged method (ob) of @objc TUConversationActivity.bundleIdentifier.getter([v49 activity]);
    if (!v52)
    {
LABEL_35:

      goto LABEL_36;
    }

    v53 = &v40[OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier];
    if (v51 == *&v40[OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier] && v52 == *&v40[OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier + 8])
    {
    }

    else
    {
      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v55 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v66 = v40;
    v67 = v50;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v99[0] = v71;
      *v70 = 136315394;
      v72 = *v53;
      v73 = v53[1];

      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v99);

      *(v70 + 4) = v74;
      *(v70 + 12) = 2080;
      v97 = outlined bridged method (ob) of @objc TUConversationActivity.bundleIdentifier.getter([v67 activity]);
      v98 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v76 = String.init<A>(describing:)();
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v99);

      *(v70 + 14) = v78;
      _os_log_impl(&dword_1BBC58000, v68, v69, "Foreground app bundleIdentifier (%s) is same as stagedActivity (%s)", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v71, -1, -1);
      MEMORY[0x1BFB23DF0](v70, -1, -1);

LABEL_47:
      goto LABEL_40;
    }

    goto LABEL_50;
  }

LABEL_36:
  UUID.init()();
  v56 = v93;
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v58 = v57;
  (*(v94 + 8))(v56, v95);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v59 = (*(*static Defaults.shared + 1016))();
  v60 = v96;
  *&v4[v96[5]] = v58;
  v4[v60[6]] = 5;
  *&v4[v60[7]] = v40;
  *&v4[v60[8]] = v35;
  v4[v60[9]] = 0;
  *&v4[v60[10]] = v59;
  v4[v60[11]] = 1;
  v4[v60[12]] = 1;
  v61 = &v4[v60[13]];
  *v61 = 0;
  *(v61 + 1) = 0;
  v62 = &v4[v60[14]];
  *v62 = 0;
  *(v62 + 1) = 0;
  v4[v60[15]] = 0;
  v63 = &v4[v60[16]];
  *v63 = 0;
  *(v63 + 1) = 0;
  specialized ConversationControlsManager.post(notice:)(v4, v7, type metadata accessor for AppLaunchNotice, &protocol witness table for AppLaunchNotice, type metadata accessor for AppLaunchNotice, specialized ConversationControlsNoticeCoordinator.post(notice:), v64, v65, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99[0], v99[1], v99[2], v99[3], v99[4]);
  _s15ConversationKit11ParticipantVWOhTm_10();
}

uint64_t ConversationControlsManager.audioRoute.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_397();
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_14();
  static Published.subscript.getter();

  return v3;
}

void ConversationControlsManager.foregroundApp.setter(void *a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  v5 = v2;
  OUTLINED_FUNCTION_30_20();
  static Published.subscript.setter();
  ConversationControlsManager.foregroundApp.didset();
}

void (*ConversationControlsManager.foregroundApp.modify(uint64_t *a1))(void **a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = ConversationControlsManager.foregroundApp.getter();
  return ConversationControlsManager.foregroundApp.modify;
}

void ConversationControlsManager.foregroundApp.modify(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2;
    ConversationControlsManager.foregroundApp.setter(v2, v3);
  }

  else
  {
    ConversationControlsManager.foregroundApp.setter(*a1, a2);
  }
}

uint64_t key path setter for ConversationControlsManager.$foregroundApp : ConversationControlsManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x880))(v7);
}

uint64_t ConversationControlsManager.$foregroundApp.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GMR);
  OUTLINED_FUNCTION_1_17();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit13ForegroundAppCSgGMd, &_s7Combine9PublishedVy15ConversationKit13ForegroundAppCSgGMR);
  OUTLINED_FUNCTION_67(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_61();
  return v6(v5);
}

uint64_t ConversationControlsManager.$foregroundApp.modify()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GMR);
  v1[4] = v3;
  OUTLINED_FUNCTION_9_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_139_1(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__foregroundApp);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit13ForegroundAppCSgGMd, &_s7Combine9PublishedVy15ConversationKit13ForegroundAppCSgGMR);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

Swift::Void __swiftcall ConversationControlsManager.refreshShareableContentWithBundleIdentifier(_:)(Swift::String_optional a1)
{
  OUTLINED_FUNCTION_55();
  if (one-time initialization token for shareableContent != -1)
  {
    OUTLINED_FUNCTION_218_0(&one-time initialization token for shareableContent);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.shareableContent);

  v5 = v2;
  v6 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (OUTLINED_FUNCTION_418())
  {
    v7 = 7104878;
    v8 = OUTLINED_FUNCTION_30_1();
    v31 = swift_slowAlloc();
    *v8 = 136315394;
    if (v1)
    {

      v9 = String.init<A>(reflecting:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v31);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v14 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x860))(v13);
    if (v14)
    {
      v15 = v14;

      v7 = String.init<A>(reflecting:)();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
    }

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v17, &v31);

    *(v8 + 14) = v18;
    OUTLINED_FUNCTION_212_0();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_104_2();
    OUTLINED_FUNCTION_3_26();

    if (!v1)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (!v1)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_1_57();
  v25 = (*(v24 + 2144))();
  if (v25)
  {
    v26 = v25;
    v28 = *(v25 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier);
    v27 = *(v25 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier + 8);

    if (v28 == v3 && v27 == v1)
    {
    }

    else
    {
      OUTLINED_FUNCTION_45_1();
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_247();

      if ((v1 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    OUTLINED_FUNCTION_1_57();
    (*(v30 + 2752))();
  }

LABEL_22:
  OUTLINED_FUNCTION_62();
}

Swift::Bool __swiftcall ConversationControlsManager.isAppUnsupportedOnSharePlayPlatform(_:)(Swift::String a1)
{
  OUTLINED_FUNCTION_6_7();
  v3 = [objc_opt_self() sharedInstance];
  if (!v3)
  {
    v15 = 0u;
    v16 = 0u;
LABEL_9:
    v7 = outlined destroy of CallControlsService?(&v15, &_sypSgMd, &_sypSgMR);
    goto LABEL_10;
  }

  v4 = v3;
  OUTLINED_FUNCTION_11();
  v6 = outlined bridged method (mbnn) of @objc FTServerBag.object(forKey:)(0xD00000000000001ELL, v5, v4);

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (!*(&v14 + 1))
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v7 = swift_dynamicCast();
  if ((v7 & 1) == 0)
  {
LABEL_10:
    v8 = &outlined read-only object #0 of ConversationControlsManager.isAppUnsupportedOnSharePlayPlatform(_:);
    goto LABEL_11;
  }

  v8 = v13;
LABEL_11:
  *&v15 = v2;
  *(&v15 + 1) = v1;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_313();
  *(v9 - 16) = &v15;
  v11 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v10, v8);

  return v11;
}

BOOL static ConversationControlsManager.CollaborationPrompt.== infix(_:_:)(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if ((a2 & 0x100) == 0)
  {
    if ((a4 & 0x100) == 0)
    {
      if (a2)
      {
        if (a4)
        {
          return 1;
        }
      }

      else if ((a4 & 1) == 0 && a1 == a3)
      {
        return 1;
      }
    }

    return 0;
  }

  return (a4 & 0x100) != 0;
}

void ConversationControlsManager.CollaborationPrompt.hash(into:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x100) != 0)
  {
    v5 = 0;
  }

  else
  {
    v3 = a3;
    MEMORY[0x1BFB22640](1);
    if (v3)
    {
      Hasher._combine(_:)(0);
      return;
    }

    Hasher._combine(_:)(1u);
    v5 = a2;
  }

  MEMORY[0x1BFB22640](v5, a2);
}

Swift::Int ConversationControlsManager.CollaborationPrompt.hashValue.getter(uint64_t a1, __int16 a2)
{
  Hasher.init(_seed:)();
  ConversationControlsManager.CollaborationPrompt.hash(into:)(v5, a1, a2 & 0x1FF);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationControlsManager.CollaborationPrompt(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  Hasher.init(_seed:)();
  ConversationControlsManager.CollaborationPrompt.hash(into:)(v6, v2, v3 | (v4 << 8));
  return Hasher._finalize()();
}

void ConversationControlsManager.shouldPost(collaborationPrompt:forBundleIdentifier:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySSSay15ConversationKit0D15ControlsManagerC19CollaborationPrompt33_437EB4956F8C313AB56D9B5E6A4F0C8CLLOGGMd, &_s14CopresenceCore5CacheVySSSay15ConversationKit0D15ControlsManagerC19CollaborationPrompt33_437EB4956F8C313AB56D9B5E6A4F0C8CLLOGGMR);
  OUTLINED_FUNCTION_1_17();
  v12 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_postedCollaborationPrompts;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  (*(v12 + 16))(v15, v2 + v16, v1);
  v35 = v6;
  v36[0] = v6;
  v36[1] = v4;
  Cache.subscript.getter();
  v17 = OUTLINED_FUNCTION_15_14();
  v18(v17);
  if (v37)
  {
    v19 = v37;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = specialized Sequence<>.contains(_:)(v10, v8 & 0x1FF, v19);

  if (v20)
  {
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_290();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24, v25, v26, v27);
      v19 = v28;
    }

    v21 = *(v19 + 16);
    if (v21 >= *(v19 + 24) >> 1)
    {
      OUTLINED_FUNCTION_290();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29, v30, v31, v32);
      v19 = v33;
    }

    *(v19 + 16) = v21 + 1;
    v22 = v19 + 16 * v21;
    *(v22 + 32) = v10;
    *(v22 + 40) = v8;
    *(v22 + 41) = HIBYTE(v8) & 1;

    specialized Sequence.suffix(_:)(0x64uLL, v19);
    v38 = v4;
    v39 = v23;
    v37 = v35;
    OUTLINED_FUNCTION_30_2(v2 + v16, v36);
    Cache.subscript.setter();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_30_0();
}

void specialized Sequence.suffix(_:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!result)
  {

    return;
  }

  if (*(a2 + 16) >= result)
  {
    v3 = result;
  }

  else
  {
    v3 = *(a2 + 16);
  }

  v20 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (a2 + 41);
    v7 = result;
    do
    {
      v8 = *(v6 - 9);
      v9 = *(v6 - 1);
      v10 = *v6;
      v11 = *(v20 + 16);
      if (v11 >= v7)
      {
        if (v5 >= v11)
        {
          __break(1u);
          goto LABEL_30;
        }

        v14 = v20 + 16 * v5;
        *(v14 + 32) = v8;
        *(v14 + 40) = v9;
        *(v14 + 41) = v10;
        if ((v5 + 1) < v7)
        {
          ++v5;
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v12 = *(v20 + 24);
        if (v11 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v11 + 1, 1);
          v7 = result;
        }

        *(v20 + 16) = v11 + 1;
        v13 = v20 + 16 * v11;
        *(v13 + 32) = v8;
        *(v13 + 40) = v9;
        *(v13 + 41) = v10;
      }

      v6 += 16;
      --v4;
    }

    while (v4);

    if (!v5)
    {
      return;
    }

    v15 = *(v20 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    if (v15 >= v5)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v16 = *(v20 + 16);
      if (v16 >= v5 && v16 >= v15)
      {

        specialized ContiguousArray.append<A>(contentsOf:)(v18, v20 + 32, v5, (2 * v15) | 1);
        specialized ContiguousArray.append<A>(contentsOf:)(v20, v20 + 32, 0, (2 * v5) | 1);
        return;
      }

      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }
}

void specialized Sequence.suffix(_:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_15_25();
  v2 = type metadata accessor for TranscriptionViewModel.Caption(0);
  v3 = OUTLINED_FUNCTION_9_0(v2);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  if (v1 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v9 = *(v0 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v12 = v0 + v11;
      v13 = *(v5 + 72);
      do
      {
        _s15ConversationKit11ParticipantVWOcTm_8();
        v14 = *(v19 + 16);
        if (v14 >= v1)
        {
          if (v10 >= v14)
          {
            __break(1u);
            goto LABEL_26;
          }

          outlined assign with take of TranscriptionViewModel.Caption(v8, v19 + v11 + v13 * v10);
          if ((v10 + 1) < v1)
          {
            ++v10;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          if (v14 >= *(v19 + 24) >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          *(v19 + 16) = v14 + 1;
          outlined init with take of Collaboration();
        }

        v12 += v13;
        --v9;
      }

      while (v9);

      if (!v10)
      {
        goto LABEL_24;
      }

      v15 = *(v19 + 16);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      if (v15 >= v10)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_28;
        }

        v16 = *(v19 + 16);
        if (v16 >= v10 && v16 >= v15)
        {

          specialized ContiguousArray.append<A>(contentsOf:)(v18, v19 + v11, v10, (2 * v15) | 1);
          specialized ContiguousArray.append<A>(contentsOf:)(v19, v19 + v11, 0, (2 * v10) | 1);
          goto LABEL_24;
        }

        goto LABEL_29;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_391();
  OUTLINED_FUNCTION_30_0();
}

uint64_t key path setter for ConversationControlsManager.foregroundCollaborationState : ConversationControlsManager(uint64_t a1, void **a2)
{
  v3 = type metadata accessor for ForegroundCollaborationState(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15ConversationKit11ParticipantVWOcTm_8();
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x8C8))(v5);
}

void ConversationControlsManager.foregroundCollaborationState.didset()
{
  v1 = v0;
  v2 = type metadata accessor for StagedCollaboration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v96 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for AppLaunchNotice(0);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ForegroundCollaborationState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v12 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_defaults + 8);
  ObjectType = swift_getObjectType();
  if ((*(v12 + 664))(ObjectType, v12))
  {
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2A0))();
    v93 = v8;
    v15 = v14;
    v16 = swift_getObjectType();
    v17 = (*(v15 + 184))(v16, v15);
    swift_unknownObjectRelease();
    v18 = [v17 isTelephonyProvider];

    if ((v18 & 1) == 0)
    {
      v19 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_foregroundCollaborationState;
      swift_beginAccess();
      v92 = v19;
      _s15ConversationKit11ParticipantVWOcTm_8();
      static ForegroundCollaborationState.== infix(_:_:)();
      LOBYTE(v19) = v20;
      _s15ConversationKit11ParticipantVWOhTm_10();
      if ((v19 & 1) == 0)
      {
        if (one-time initialization token for shareableContent != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        v22 = __swift_project_value_buffer(v21, static Logger.shareableContent);
        v23 = v1;
        v89 = v22;
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();

        HIDWORD(v90) = v25;
        v91 = v24;
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v88 = v23;
          v27 = v26;
          v87 = swift_slowAlloc();
          v100 = v87;
          *v27 = 136315394;
          *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x80000001BC508F60, &v100);
          *(v27 + 12) = 2080;
          _s15ConversationKit11ParticipantVWOcTm_8();
          v28 = >> prefix<A>(_:)();
          v30 = v29;
          _s15ConversationKit11ParticipantVWOhTm_10();
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v100);

          *(v27 + 14) = v31;
          v32 = v91;
          _os_log_impl(&dword_1BBC58000, v91, BYTE4(v90), "%s changed: %s", v27, 0x16u);
          v33 = v87;
          swift_arrayDestroy();
          MEMORY[0x1BFB23DF0](v33, -1, -1);
          v34 = v27;
          v23 = v88;
          MEMORY[0x1BFB23DF0](v34, -1, -1);
        }

        else
        {
        }

        (*((*MEMORY[0x1E69E7D40] & *v23) + 0xA30))();
        _s15ConversationKit11ParticipantVWOcTm_8();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        switch(EnumCaseMultiPayload)
        {
          case 1:
            v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV09highlightB0_AA4DateV7startedtMd, &_s10Foundation3URLV09highlightB0_AA4DateV7startedtMR);
            (*(v97 + 8))(&v10[*(v57 + 48)], v98);
            goto LABEL_20;
          case 2:
LABEL_20:
            v58 = type metadata accessor for URL();
            EnumCaseMultiPayload = (*(*(v58 - 8) + 8))(v10, v58);
            goto LABEL_21;
          case 3:
LABEL_21:
            if ((*((*MEMORY[0x1E69E7D40] & *v23) + 0x4A0))(EnumCaseMultiPayload))
            {
              v60 = v59;
              swift_getObjectType();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMR);
              v61 = swift_allocObject();
              *(v61 + 16) = xmmword_1BC4BA940;
              *(v61 + 32) = 10;
              *(v61 + 40) = 0u;
              *(v61 + 56) = 0u;
              *(v61 + 72) = 7;
              (*(v60 + 32))();

              swift_unknownObjectRelease();
            }

            return;
          case 4:
            v41 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x2C0))();
            if (!v41)
            {
              return;
            }

            v42 = v41;
            v43 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x860))();
            if (!v43)
            {
              goto LABEL_28;
            }

            v44 = v43;

            ConversationControlsManager.shouldPost(collaborationPrompt:forBundleIdentifier:)();
            v46 = v45;

            if (v46)
            {
              v47 = v95;
              UUID.init()();
              Date.init()();
              Date.timeIntervalSinceReferenceDate.getter();
              v49 = v48;
              (*(v97 + 8))(v6, v98);
              if (one-time initialization token for shared != -1)
              {
                swift_once();
              }

              v50 = (*(*static Defaults.shared + 1016))();
              v51 = v94;
              *(v47 + v94[5]) = v49;
              *(v47 + v51[6]) = 5;
              *(v47 + v51[7]) = v44;
              *(v47 + v51[8]) = v42;
              *(v47 + v51[9]) = 1;
              *(v47 + v51[10]) = v50;
              *(v47 + v51[11]) = 1;
              *(v47 + v51[12]) = 1;
              v52 = (v47 + v51[13]);
              *v52 = 0;
              v52[1] = 0;
              v53 = (v47 + v51[14]);
              *v53 = 0;
              v53[1] = 0;
              *(v47 + v51[15]) = 0;
              v54 = (v47 + v51[16]);
              *v54 = 0;
              v54[1] = 0;
              specialized ConversationControlsManager.post(notice:)(v47, v23, type metadata accessor for AppLaunchNotice, &protocol witness table for AppLaunchNotice, type metadata accessor for AppLaunchNotice, specialized ConversationControlsNoticeCoordinator.post(notice:), v55, v56, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
              goto LABEL_36;
            }

            v62 = v23;
            v63 = Logger.logObject.getter();
            v64 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              v100 = v66;
              *v65 = 136315138;
              _s15ConversationKit11ParticipantVWOcTm_8();
              v67 = >> prefix<A>(_:)();
              v69 = v68;
              _s15ConversationKit11ParticipantVWOhTm_10();
              v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v100);

              *(v65 + 4) = v70;
              _os_log_impl(&dword_1BBC58000, v63, v64, "AppLaunchNotice already posted for this app, we should not post a new one. %s", v65, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v66);
              MEMORY[0x1BFB23DF0](v66, -1, -1);
              MEMORY[0x1BFB23DF0](v65, -1, -1);
            }

LABEL_28:
            return;
          default:
            v36 = v23;
            v37 = v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMd, &_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMR) + 48)];
            v38 = outlined init with take of Collaboration();
            v39 = (*((*MEMORY[0x1E69E7D40] & *v36) + 0x860))(v38);
            if (!v39)
            {
              goto LABEL_36;
            }

            v40 = v39;
            if (v37)
            {
              _s15ConversationKit11ParticipantVWOhTm_10();

              return;
            }

            if ((*(v12 + 672))(ObjectType, v12))
            {
              Hasher.init(_seed:)();
              StagedCollaboration.hash(into:)(&v100);
              Hasher._finalize()();
            }

            ConversationControlsManager.shouldPost(collaborationPrompt:forBundleIdentifier:)();
            v72 = v71;

            if (v72)
            {
              if ((*((*MEMORY[0x1E69E7D40] & *v36) + 0x4A0))(v73))
              {
                v75 = v74;
                v76 = swift_getObjectType();
                v100 = 10;
                v101 = 0u;
                v102 = 0u;
                v103 = 7;
                (*(v75 + 16))(3, &v100, 0, 0, v76, v75);

                swift_unknownObjectRelease();
                outlined destroy of ConversationControlsType(&v100);
                goto LABEL_36;
              }
            }

            else
            {
              v77 = v36;
              v78 = Logger.logObject.getter();
              v79 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v78, v79))
              {
                v80 = swift_slowAlloc();
                v81 = swift_slowAlloc();
                v100 = v81;
                *v80 = 136315138;
                _s15ConversationKit11ParticipantVWOcTm_8();
                v82 = >> prefix<A>(_:)();
                v84 = v83;
                _s15ConversationKit11ParticipantVWOhTm_10();
                v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, &v100);

                *(v80 + 4) = v85;
                _os_log_impl(&dword_1BBC58000, v78, v79, "Collaboration HUD already presented for this app, we should not present a new one. %s", v80, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v81);
                MEMORY[0x1BFB23DF0](v81, -1, -1);
                MEMORY[0x1BFB23DF0](v80, -1, -1);

                goto LABEL_36;
              }
            }

LABEL_36:
            _s15ConversationKit11ParticipantVWOhTm_10();
            break;
        }
      }
    }
  }
}

uint64_t ConversationControlsManager.foregroundCollaborationState.getter()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_4_97();
  OUTLINED_FUNCTION_75_1();
  return _s15ConversationKit11ParticipantVWOcTm_8();
}

uint64_t ConversationControlsManager.foregroundCollaborationState.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = type metadata accessor for ForegroundCollaborationState(v2);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v5 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_foregroundCollaborationState;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_4_97();
  _s15ConversationKit11ParticipantVWOcTm_8();
  OUTLINED_FUNCTION_30_2(v1 + v5, v7);
  outlined assign with copy of ForegroundCollaborationState(v0, v1 + v5);
  swift_endAccess();
  ConversationControlsManager.foregroundCollaborationState.didset();
  _s15ConversationKit11ParticipantVWOhTm_10();
  OUTLINED_FUNCTION_4_31();
  return _s15ConversationKit11ParticipantVWOhTm_10();
}

uint64_t ConversationControlsManager.foregroundCollaborationState.modify()
{
  v2 = OUTLINED_FUNCTION_401();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_47(v3) + 24) = v0;
  v4 = type metadata accessor for ForegroundCollaborationState(0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  *(v1 + 32) = __swift_coroFrameAllocStub(v6);
  *(v1 + 40) = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_4_97();
  _s15ConversationKit11ParticipantVWOcTm_8();
  return OUTLINED_FUNCTION_38_0();
}

void ConversationControlsManager.foregroundCollaborationState.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    OUTLINED_FUNCTION_1_5();
    _s15ConversationKit11ParticipantVWOcTm_8();
    ConversationControlsManager.foregroundCollaborationState.setter();
    OUTLINED_FUNCTION_0_130();
    _s15ConversationKit11ParticipantVWOhTm_10();
  }

  else
  {
    ConversationControlsManager.foregroundCollaborationState.setter();
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t key path getter for ConversationControlsManager.ephemeralAlert : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x8D8))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t key path setter for ConversationControlsManager.ephemeralAlert : ConversationControlsManager(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x8E0);
  v5 = *(a1 + 16);
  outlined copy of ConversationControlsRecipe.View?(*a1, v3);
  return v4(v2, v3, v5);
}

void ConversationControlsManager.ephemeralAlert.didset()
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, &static Logger.conversationControls);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    v6 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x8D8))();
    if (v6)
    {
      v8 = v6;
      v9 = v7;
      v10 = EphemeralAlert.description.getter(v6, v7);
      v12 = v11;
    }

    else
    {
      v12 = 0xE400000000000000;
      v10 = 1701736302;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v15);

    *(v4 + 4) = v13;
    _os_log_impl(&dword_1BBC58000, oslog, v3, "⇢ EphemeralAlert: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
    MEMORY[0x1BFB23DF0](v4, -1, -1);
  }
}

uint64_t ConversationControlsManager.ephemeralAlert.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_92_0();
  static Published.subscript.getter();

  return v3;
}

void ConversationControlsManager.ephemeralAlert.setter()
{
  OUTLINED_FUNCTION_15_25();
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_1_5();
  outlined copy of ConversationControlsRecipe.View?(v2, v3);
  OUTLINED_FUNCTION_205_0();
  static Published.subscript.setter();
  ConversationControlsManager.ephemeralAlert.didset();
  v4 = OUTLINED_FUNCTION_1_5();
  outlined consume of ConversationControlsRecipe.View?(v4, v5);
}

void (*ConversationControlsManager.ephemeralAlert.modify(uint64_t a1))(uint64_t a1, char a2)
{
  v2 = OUTLINED_FUNCTION_45_0(a1);
  *v1 = ConversationControlsManager.ephemeralAlert.getter(v2, v3);
  *(v1 + 8) = v4;
  *(v1 + 16) = v5;
  return ConversationControlsManager.ephemeralAlert.modify;
}

void ConversationControlsManager.ephemeralAlert.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = OUTLINED_FUNCTION_44_0();
    outlined copy of ConversationControlsRecipe.View?(v2, v3);
    OUTLINED_FUNCTION_44_0();
    ConversationControlsManager.ephemeralAlert.setter();
    v4 = OUTLINED_FUNCTION_44_0();

    outlined consume of ConversationControlsRecipe.View?(v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_44_0();
    ConversationControlsManager.ephemeralAlert.setter();
  }
}

uint64_t key path setter for ConversationControlsManager.$ephemeralAlert : ConversationControlsManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit14EphemeralAlertVSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit14EphemeralAlertVSg_GMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x8F8))(v7);
}

uint64_t ConversationControlsManager.$ephemeralAlert.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit14EphemeralAlertVSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit14EphemeralAlertVSg_GMR);
  OUTLINED_FUNCTION_1_17();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit14EphemeralAlertVSgGMd, &_s7Combine9PublishedVy15ConversationKit14EphemeralAlertVSgGMR);
  OUTLINED_FUNCTION_67(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_61();
  return v6(v5);
}

uint64_t ConversationControlsManager.$ephemeralAlert.modify()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit14EphemeralAlertVSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit14EphemeralAlertVSg_GMR);
  v1[4] = v3;
  OUTLINED_FUNCTION_9_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_139_1(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__ephemeralAlert);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit14EphemeralAlertVSgGMd, &_s7Combine9PublishedVy15ConversationKit14EphemeralAlertVSgGMR);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

void ConversationControlsManager.$foregroundApp.modify()
{
  OUTLINED_FUNCTION_50_2();
  v2 = v1;
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 56);
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_62_0();
    v7(v6);
    v2(v3);
    v8 = OUTLINED_FUNCTION_308();
    v9(v8);
  }

  else
  {
    v1(*(*v0 + 56));
  }

  free(v4);
  free(v3);
  OUTLINED_FUNCTION_49();

  free(v10);
}

uint64_t key path getter for ConversationControlsManager.shouldShowDelayedLMIBanner : ConversationControlsManager@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x908))();
  *a2 = result & 1;
  return result;
}

uint64_t ConversationControlsManager.shouldShowDelayedLMIBanner.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_shouldShowDelayedLMIBanner;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t ConversationControlsManager.shouldShowDelayedLMIBanner.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_shouldShowDelayedLMIBanner;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

void ConversationControlsManager.gridLayoutStyle.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_331();
  a20 = v24;
  a21 = v25;
  OUTLINED_FUNCTION_261_0();
  OUTLINED_FUNCTION_143_1();
  if ((*(v26 + 1256))())
  {
    OUTLINED_FUNCTION_175_0();
    ObjectType = swift_getObjectType();
    (*(v23 + 24))(&a13, ObjectType, v23);
    swift_unknownObjectRelease();
    v28 = a13;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for shared);
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      OUTLINED_FUNCTION_120_0();
      (*(v29 + 672))();
      v30 = OUTLINED_FUNCTION_255();
      (*(v22 + 192))(v30, v22);
      OUTLINED_FUNCTION_173();
      swift_unknownObjectRelease();
      specialized Set.count.getter();
      OUTLINED_FUNCTION_6_4();

      v28 = v22 > 4;
    }

    else
    {
      v31 = OUTLINED_FUNCTION_417();
      v28 = (*(v22 + 248))(v31, v22);
    }
  }

  *v21 = v28 & 1;
  OUTLINED_FUNCTION_9_17();
}

void ConversationControlsManager.conversationHUDType.getter()
{
  OUTLINED_FUNCTION_261_0();
  OUTLINED_FUNCTION_137();
  v2 = (*(v1 + 2344))();
  switch(v2 >> 5)
  {
    case 2:
      v3 = 1;
      goto LABEL_22;
    case 3:
      if (v2 == 96)
      {
        goto LABEL_2;
      }

      v3 = 3;
      goto LABEL_22;
    case 4:
      if (v2 != 128)
      {
        v3 = 9;
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_137();
      (*(v5 + 672))();
      OUTLINED_FUNCTION_255();
      OUTLINED_FUNCTION_237_0();
      v7 = v6();
      static ConversationControlsType.firstOrThirdPartyIncomingCall(for:)(v7, v0);
      swift_unknownObjectRelease();

      break;
    case 5:
      if (v2 == 160)
      {
        v3 = 20;
      }

      else
      {
        v3 = 22;
      }

      goto LABEL_22;
    case 6:
      if (v2 == 192)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
        }

        OUTLINED_FUNCTION_0_1();
        if ((*(v4 + 624))())
        {
          v3 = 4;
LABEL_22:
          *v0 = v3;
          *(v0 + 8) = 0u;
          *(v0 + 24) = 0u;
        }

        else
        {
LABEL_2:
          OUTLINED_FUNCTION_303();
        }

        *(v0 + 40) = 7;
      }

      else
      {

        ConversationControlsManager.controlsTypeForSmartHoldingSession()(v0);
      }

      break;
    default:
      goto LABEL_2;
  }
}

uint64_t ConversationControlsManager.controlsTypeForSmartHoldingSession()@<X0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2A0))();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3 && (v4 = [v3 smartHoldingSession]) != 0)
  {
    v5 = v4;
    v6 = [v4 state];

    result = swift_unknownObjectRelease();
    if (v6 == 3)
    {
      v8 = 29;
      goto LABEL_9;
    }

    if (!v6)
    {
      v8 = 28;
LABEL_9:
      *a1 = v8;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      goto LABEL_10;
    }
  }

  else
  {
    result = swift_unknownObjectRelease();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
LABEL_10:
  *(a1 + 40) = 7;
  return result;
}

uint64_t key path getter for ConversationControlsManager.isWaitingOnFirstRemoteFrame : ConversationControlsManager@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x938))();
  *a2 = result & 1;
  return result;
}

uint64_t ConversationControlsManager.isWaitingOnFirstRemoteFrame.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_isWaitingOnFirstRemoteFrame;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

void static ConversationControlsManager.shouldShowAVLessLeaveConfirmation.didset(char a1)
{
  v2 = a1 & 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8[-v4];
  swift_beginAccess();
  if (static ConversationControlsManager.shouldShowAVLessLeaveConfirmation != v2)
  {
    if (one-time initialization token for avLessLeaveConfirmationPresentedDate != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v3, static ConversationControlsManager.avLessLeaveConfirmationPresentedDate);
    if (a1)
    {
      v6 = 1;
    }

    else
    {
      static Date.now.getter();
      v6 = 0;
    }

    v7 = type metadata accessor for Date();
    __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
    swift_beginAccess();
    outlined assign with take of RecentsCallItem?();
    swift_endAccess();
  }
}

uint64_t static ConversationControlsManager.shouldShowAVLessLeaveConfirmation.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return static ConversationControlsManager.shouldShowAVLessLeaveConfirmation;
}

void static ConversationControlsManager.shouldShowAVLessLeaveConfirmation.setter(char a1)
{
  OUTLINED_FUNCTION_3_5(&static ConversationControlsManager.shouldShowAVLessLeaveConfirmation, v3);
  v2 = static ConversationControlsManager.shouldShowAVLessLeaveConfirmation;
  static ConversationControlsManager.shouldShowAVLessLeaveConfirmation = a1;
  static ConversationControlsManager.shouldShowAVLessLeaveConfirmation.didset(v2);
}

uint64_t one-time initialization function for avLessLeaveConfirmationPresentedDate()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __swift_allocate_value_buffer(v0, static ConversationControlsManager.avLessLeaveConfirmationPresentedDate);
  v1 = __swift_project_value_buffer(v0, static ConversationControlsManager.avLessLeaveConfirmationPresentedDate);
  v2 = type metadata accessor for Date();

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t key path getter for ConversationControlsManager.activityLaunchTimer : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x968))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationControlsManager.activityLaunchTimer : ConversationControlsManager(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x970);

  return v2(v3);
}

void ConversationControlsManager.currentActivity.getter()
{
  OUTLINED_FUNCTION_261_0();
  v2 = (*((*MEMORY[0x1E69E7D40] & v1) + 0x2C0))();
  if (v2)
  {
    v3 = v2;
    v4 = specialized Conversation.activities.getter();
    v5 = Array<A>.sortedActivities.getter(v4);

    specialized Collection.first.getter(v5, v0);
  }

  else
  {
    OUTLINED_FUNCTION_303();
  }
}

void *ConversationControlsManager.currentSharePlayActivity.getter()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0))();
  if (result)
  {
    v2 = result;
    v3 = specialized Conversation.activities.getter();
    v4 = Array<A>.currentSharePlayActivity.getter(v3);

    return v4;
  }

  return result;
}

id ConversationControlsManager.stagedSharePlayActivity.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0))();
  if (!v1 || (v2 = v1, v3 = [v1 stagedActivitySession], v2, !v3))
  {
    ConversationController.activeOneToOneConversationBackedByGroupSession.getter();
    if (v8)
    {
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v4 = OUTLINED_FUNCTION_44_0();
      v3 = v5(v4);
      __swift_destroy_boxed_opaque_existential_1(v7);
    }

    else
    {
      outlined destroy of CallControlsService?(v7, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      return 0;
    }
  }

  return v3;
}

uint64_t ConversationControlsManager.currentOrStagedSharePlayActivity.getter()
{
  OUTLINED_FUNCTION_283_0();
  result = (*(v0 + 2440))();
  if (!result)
  {
    OUTLINED_FUNCTION_283_0();
    v3 = *(v2 + 2448);

    return v3();
  }

  return result;
}

void ConversationControlsManager.currentCollaboration.getter()
{
  OUTLINED_FUNCTION_261_0();
  v2 = (*((*MEMORY[0x1E69E7D40] & v1) + 0x2C0))();
  if (v2)
  {
    v3 = v2;
    v4 = specialized Conversation.activities.getter();
    Array<A>.currentCollaboration.getter(v4, v0);
  }

  else
  {
    type metadata accessor for Collaboration(0);
    v5 = OUTLINED_FUNCTION_2_10();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t ConversationControlsManager.stagedCollaboration.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ForegroundCollaborationState(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_13_2();
  (*((*MEMORY[0x1E69E7D40] & v3) + 0x8C0))();
  OUTLINED_FUNCTION_62_0();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_0_130();
    _s15ConversationKit11ParticipantVWOhTm_10();
    v4 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_20_35();
    OUTLINED_FUNCTION_45_1();
    outlined init with take of Collaboration();
    v4 = 0;
  }

  v5 = type metadata accessor for StagedCollaboration(0);
  return __swift_storeEnumTagSinglePayload(a1, v4, 1, v5);
}

uint64_t ConversationControlsManager.stagedOrCurrentCollaboration.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_159();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19StagedCollaborationVSgMd, &_s15ConversationKit19StagedCollaborationVSgMR);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_13_2();
  v9 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v10) + 0x9A8))();
  v11 = type metadata accessor for StagedCollaboration(0);
  OUTLINED_FUNCTION_115(v3, 1, v11);
  if (v12)
  {
    v13 = outlined destroy of CallControlsService?(v3, &_s15ConversationKit19StagedCollaborationVSgMd, &_s15ConversationKit19StagedCollaborationVSgMR);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    (*((*v9 & *v1) + 0x9A0))(v13);
    type metadata accessor for Collaboration(0);
    v14 = OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_115(v14, 1, v1);
    if (v12)
    {
      result = outlined destroy of CallControlsService?(v2, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
    }

    else
    {
      *(a1 + 24) = v1;
      *(a1 + 32) = &protocol witness table for Collaboration;
      __swift_allocate_boxed_opaque_existential_1(a1);
      OUTLINED_FUNCTION_18_42();
      result = outlined init with take of Collaboration();
    }

    if (*(&v17 + 1))
    {
      return outlined destroy of CallControlsService?(&v16, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
    }
  }

  else
  {
    *(&v17 + 1) = v11;
    v18 = &protocol witness table for StagedCollaboration;
    __swift_allocate_boxed_opaque_existential_1(&v16);
    OUTLINED_FUNCTION_20_35();
    outlined init with take of Collaboration();
    return outlined init with take of TapInteractionHandler(&v16, a1);
  }

  return result;
}

void ConversationControlsManager.activityToShowInHUD.getter()
{
  v2 = v1;
  OUTLINED_FUNCTION_261_0();
  v3 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & v4) + 0x380);
  if ((v5() & 1) != 0 && (OUTLINED_FUNCTION_176(), v31 = *(v6 + 704), (v7 = v31()) != 0) && (v8 = v7, v9 = [v7 activeRemoteParticipants], v8, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90), OUTLINED_FUNCTION_1_65(), lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v10, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90), static Set._unconditionallyBridgeFromObjectiveC(_:)(), v9, v11 = specialized Set.count.getter(), , !v11))
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v17 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v17, &static Logger.conversationControls);
    v18 = v2;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v29 = v19;
      v30 = v20;
      v21 = swift_slowAlloc();
      *v21 = 67109376;
      v22 = v18;
      *(v21 + 4) = v5() & 1;
      *(v21 + 8) = 2048;
      v23 = v31();
      if (v23)
      {
        v24 = v23;
        v25 = [v23 activeRemoteParticipants];

        static Set._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = specialized Set.count.getter();
      }

      else
      {
        v26 = 0;
      }

      v27 = v29;
      *(v21 + 10) = v26;

      _os_log_impl(&dword_1BBC58000, v29, v30, "Only showing non-staged Activity, isAVLess: %{BOOL}d participantCount: %ld", v21, 0x12u);
      OUTLINED_FUNCTION_27();
    }

    else
    {

      v27 = v18;
    }

    OUTLINED_FUNCTION_176();
    v13 = (*(v28 + 2440))();
  }

  else
  {
    OUTLINED_FUNCTION_176();
    v13 = (*(v12 + 2456))();
  }

  v14 = v13;
  OUTLINED_FUNCTION_176();
  (*(v15 + 2504))(&v32);
  if (!v33)
  {
    outlined destroy of CallControlsService?(&v32, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
    if (v14)
    {
      v0[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
      v0[4] = &protocol witness table for TUConversationActivitySession;
      *v0 = v14;
      goto LABEL_19;
    }

LABEL_18:
    OUTLINED_FUNCTION_303();
    goto LABEL_19;
  }

  outlined init with take of TapInteractionHandler(&v32, v34);
  OUTLINED_FUNCTION_283();
  if (((*((*v3 & v16) + 0x9E0))(v14) & 1) == 0)
  {

    outlined init with take of TapInteractionHandler(v34, v0);
    goto LABEL_19;
  }

  if (!v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
    goto LABEL_18;
  }

  v0[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v0[4] = &protocol witness table for TUConversationActivitySession;
  *v0 = v14;
  __swift_destroy_boxed_opaque_existential_1(v34);
LABEL_19:
  OUTLINED_FUNCTION_404();
}

double ConversationControlsManager.remoteParticipants.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();

  return result;
}

void ConversationControlsManager.shouldShowSharePlayActivityInHUD(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_427();
  a21 = v23;
  a22 = v24;
  if (v25)
  {
    v26 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_143_1();
    (*(v27 + 2536))();
    OUTLINED_FUNCTION_13_2();
    if ((*((*v26 & v28) + 0x4E8))())
    {
      OUTLINED_FUNCTION_175_0();
      ObjectType = swift_getObjectType();
      (*(v22 + 64))(ObjectType, v22);
      OUTLINED_FUNCTION_212();
      swift_unknownObjectRelease();
      if (v22)
      {
        OUTLINED_FUNCTION_120_0();
        (*(v30 + 2432))(&a10);
        if (a13)
        {
          __swift_project_boxed_opaque_existential_1(&a10, a13);
          v31 = OUTLINED_FUNCTION_2_14();
          v32(v31);
          __swift_destroy_boxed_opaque_existential_1(&a10);
        }

        else
        {
          outlined destroy of CallControlsService?(&a10, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
        }
      }
    }
  }

  OUTLINED_FUNCTION_52_5();
}

uint64_t key path getter for ConversationControlsManager.applicationState : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x9E8))();
  *a2 = result;
  return result;
}

uint64_t ConversationControlsManager.applicationState.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_applicationState;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t ConversationControlsManager.applicationState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_applicationState;
  v4 = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = a1;
  return (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA30))(v4);
}

uint64_t ConversationControlsManager.applicationState.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t ConversationControlsManager.applicationState.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0xA30))(result);
  }

  return result;
}

uint64_t key path setter for ConversationControlsManager.secondaryPillButtonType : ConversationControlsManager(uint64_t a1, void **a2)
{
  v3 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15ConversationKit11ParticipantVWOcTm_8();
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xA08))(v5);
}

void ConversationControlsManager.secondaryPillButtonType.didset(uint64_t a1)
{
  v3 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA00);
  v7(v4);
  LOBYTE(a1) = static ConversationControlsSecondaryPillButtonType.== infix(_:_:)(v6, a1);
  _s15ConversationKit11ParticipantVWOhTm_10();
  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, &static Logger.conversationControls);
    v9 = v1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      (v7)();
      ConversationControlsSecondaryPillButtonType.description.getter();
      v15 = v14;
      v17 = v16;
      _s15ConversationKit11ParticipantVWOhTm_10();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v20);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_1BBC58000, v10, v11, "> SecondaryPillButton type:%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1BFB23DF0](v13, -1, -1);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
    }
  }
}

void ConversationControlsManager.secondaryPillButtonType.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_50_2();
  a17 = v19;
  a18 = v20;
  v21 = OUTLINED_FUNCTION_17_1();
  v22 = type metadata accessor for ConversationControlsSecondaryPillButtonType(v21);
  v23 = OUTLINED_FUNCTION_22(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &a9 - v25;
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_139();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_6();
  _s15ConversationKit11ParticipantVWOcTm_8();
  v27 = v18;
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_205_0();
  static Published.subscript.setter();
  ConversationControlsManager.secondaryPillButtonType.didset(v26);
  _s15ConversationKit11ParticipantVWOhTm_10();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit11ParticipantVWOhTm_10();
  OUTLINED_FUNCTION_49();
}

uint64_t ConversationControlsManager.secondaryPillButtonType.modify(void *a1)
{
  *a1 = v1;
  v3 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_208();
  static Published.subscript.getter();

  return OUTLINED_FUNCTION_28_3();
}