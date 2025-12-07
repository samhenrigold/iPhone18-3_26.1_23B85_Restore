uint64_t partial apply for closure #1 in AudioPowerSpectrumViewModel.handleCallRecordingStateChanged(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in AudioPowerSpectrumViewModel.handleCallRecordingStateChanged(_:)(a1, v4, v5, v7, v6);
}

void type metadata completion function for AudioPowerSpectrumViewModel(uint64_t a1)
{
  type metadata accessor for Published<[Float]>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<[Float]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<[Float]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySfGMd, &_sSaySfGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[Float]>);
    }
  }
}

ConversationKit::ParticipantGridView::AnimationStyle_optional __swiftcall ParticipantGridView.AnimationStyle.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 4)
  {
    LOBYTE(rawValue) = 4;
  }

  return rawValue;
}

ConversationKit::ParticipantGridView::AnimationStyle_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ParticipantGridView.AnimationStyle@<W0>(Swift::Int *a1@<X0>, ConversationKit::ParticipantGridView::AnimationStyle_optional *a2@<X8>)
{
  result.value = ParticipantGridView.AnimationStyle.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ParticipantGridView.AnimationStyle@<X0>(uint64_t *a1@<X8>)
{
  result = ParticipantGridView.AnimationStyle.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t ParticipantGridView.layoutStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle;
  result = OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle, v5);
  *a1 = *(v1 + v3);
  return result;
}

uint64_t ParticipantGridView.layoutStyle.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle;
  result = OUTLINED_FUNCTION_3_5(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle, v5);
  *(v1 + v3) = v2;
  return result;
}

double ParticipantGridView.ParticipantTileInfo.aspectRatio.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(v0);
  *&result = OUTLINED_FUNCTION_54_11(v1).n128_u64[0];
  return result;
}

uint64_t ParticipantGridView.ParticipantTileInfo.aspectRatio.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantGridView.ParticipantTileInfo(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantGridView.ParticipantTileInfo.orientation.setter(uint64_t a1, char a2)
{
  v5 = OUTLINED_FUNCTION_77_2();
  result = type metadata accessor for ParticipantGridView.ParticipantTileInfo(v5);
  v7 = v2 + *(result + 24);
  *v7 = v3;
  *(v7 + 8) = a2 & 1;
  return result;
}

uint64_t ParticipantGridView.ParticipantTileInfo.orientation.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantGridView.ParticipantTileInfo(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantGridView.ParticipantTileInfo.isMostActive.setter(char a1)
{
  result = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t ParticipantGridView.ParticipantTileInfo.isMostActive.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantGridView.ParticipantTileInfo(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantGridView.ParticipantTileInfo.hasOtherInvitedParticipants.setter(char a1)
{
  result = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t ParticipantGridView.ParticipantTileInfo.hasOtherInvitedParticipants.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantGridView.ParticipantTileInfo(v0);
  return OUTLINED_FUNCTION_26_0();
}

int8x16_t ParticipantGridView.ParticipantTileInfo.init(identifier:aspectRatio:orientation:isMostActive:hasOtherInvitedParticipants:)@<Q0>(uint64_t a1@<X0>, int8x16_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v24 = *a2;
  v25 = a2[1];
  v14 = a2[2].i8[0];
  v15 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
  v16 = a7 + v15[6];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v17 + 32))(a7, a1);
  *v16 = a3;
  *(v16 + 8) = a4 & 1;
  v18 = a2[2].i8[1] | v14;
  if (a2[2].i8[1])
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20 = vdupq_n_s64(v19);
  v21 = vbicq_s8(v24, v20);
  result = vbicq_s8(v25, v20);
  v23 = (a7 + v15[5]);
  *v23 = v21;
  v23[1] = result;
  v23[2].i8[0] = v18 & 1;
  *(a7 + v15[7]) = a5;
  *(a7 + v15[8]) = a6;
  return result;
}

uint64_t static ParticipantGridView.ParticipantTileInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_6_7();
  if (static UUID.== infix(_:_:)())
  {
    v2 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
    OUTLINED_FUNCTION_24_26();
    if (OUTLINED_FUNCTION_38_16(v3, v4, v12, v13, v14, v15, v16, v17, v18))
    {
      v5 = *(v2 + 24);
      v6 = (v1 + v5);
      v7 = *(v1 + v5 + 8);
      v8 = (v0 + v5);
      v9 = *(v0 + v5 + 8);
      if (v7)
      {
        if (!v9)
        {
          return v9 & 1;
        }
      }

      else
      {
        if (*v6 != *v8)
        {
          LOBYTE(v9) = 1;
        }

        if (v9)
        {
          goto LABEL_10;
        }
      }

      OUTLINED_FUNCTION_27_2();
      if (v10)
      {
        LOBYTE(v9) = *(v1 + *(v2 + 32)) ^ *(v0 + *(v2 + 32)) ^ 1;
        return v9 & 1;
      }
    }
  }

LABEL_10:
  LOBYTE(v9) = 0;
  return v9 & 1;
}

uint64_t ParticipantGridView.ParticipantTileInfo.identifier.setter()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

__n128 ParticipantGridView.ParticipantTileInfo.aspectRatio.getter@<Q0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  OUTLINED_FUNCTION_24_26();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

double ParticipantGridView.FullScreenFocusedParticipantInfo.aspectRatio.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(v0);
  *&result = OUTLINED_FUNCTION_54_11(v1).n128_u64[0];
  return result;
}

uint64_t ParticipantGridView.FullScreenFocusedParticipantInfo.aspectRatio.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantGridView.FullScreenFocusedParticipantInfo.orientation.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  result = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t ParticipantGridView.FullScreenFocusedParticipantInfo.orientation.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantGridView.FullScreenFocusedParticipantInfo.cameraPosition.setter(char a1)
{
  result = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t ParticipantGridView.FullScreenFocusedParticipantInfo.cameraPosition.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(v0);
  return OUTLINED_FUNCTION_26_0();
}

double ParticipantGridView.FullScreenFocusedParticipantInfo.aspectRatioSize.getter()
{
  if ((*(v0 + *(type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0) + 24)) | 2) == 3)
  {
    OUTLINED_FUNCTION_24_26();
    result = 1.0;
    if (v3)
    {
      return result;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_26();
    result = 1.0;
    if (v5)
    {
      return result;
    }

    v1 = v4 + 16;
  }

  return *v1;
}

BOOL static ParticipantGridView.FullScreenFocusedParticipantInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_6_7();
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  OUTLINED_FUNCTION_24_26();
  if (!OUTLINED_FUNCTION_38_16(v3, v4, v7, v8, v9, v10, v11, v12, v13) || *(v1 + *(v2 + 24)) != *(v0 + *(v2 + 24)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_27_2();
  return v5 != 0;
}

__n128 ParticipantGridView.FullScreenFocusedParticipantInfo.init(identifier:aspectRatio:orientation:cameraPosition:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v10 + 32))(a5, a1);
  v11 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  v12 = a5 + v11[5];
  result = *a2;
  v14 = *(a2 + 16);
  *v12 = *a2;
  *(v12 + 16) = v14;
  *(v12 + 32) = *(a2 + 32);
  *(a5 + v11[6]) = a3;
  *(a5 + v11[7]) = a4;
  return result;
}

ConversationKit::ParticipantGridView::Traits __swiftcall ParticipantGridView.Traits.init(isSelected:isScreenSharing:)(Swift::Bool isSelected, Swift::Bool isScreenSharing)
{
  if (isScreenSharing)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (v2 & 0xFFFE | isSelected);
}

uint64_t ParticipantGridView.ParticipantTileInfo.identifier.getter()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_46();

  return v1(v0);
}

BOOL static ParticipantGridView.AnimationInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_6_7();
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ParticipantGridView.AnimationInfo(0);
  OUTLINED_FUNCTION_27_2();
  return v0 != 0;
}

uint64_t ParticipantGridView.AnimationInfo.init(uuid:style:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 32))(a3, a1);
  result = type metadata accessor for ParticipantGridView.AnimationInfo(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

void ParticipantGridView.participantIdentifiers.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_40();
  v34 = v3;
  OUTLINED_FUNCTION_4_24();
  v33 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v38 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40();
  v32 = v6;
  v7 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(v7);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v12);
  v13 = *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles);
  v14 = *(v13 + 16);

  v15 = 0;
  v35 = MEMORY[0x1E69E7CC0];
  while (v14 != v15)
  {
    if (v15 >= *(v13 + 16))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_1_99();
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    type metadata accessor for ParticipantView(0);
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_13_45();
      outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
      v16 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v16 = v35;
      }

      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v17);
        v36 = v20;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v19 = v36;
        v16 = v35;
      }

      ++v15;
      *(v16 + 16) = v19;
      v35 = v16;
      OUTLINED_FUNCTION_13_45();
      outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
    }

    else
    {
      OUTLINED_FUNCTION_0_117();
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      ++v15;
    }
  }

  v21 = *(v35 + 16);
  if (v21)
  {
    v39 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_58_8();
    v23 = v22;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    OUTLINED_FUNCTION_40_3();
    v25 = v23 + v24;
    v37 = *(v9 + 72);
    v26 = (v38 + 32);
    do
    {
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      OUTLINED_FUNCTION_5_74();
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      OUTLINED_FUNCTION_0_117();
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v27 = *v26;
      (*v26)(v32, v34, v33);
      v29 = *(v39 + 16);
      v28 = *(v39 + 24);
      if (v29 >= v28 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v28);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      *(v39 + 16) = v29 + 1;
      OUTLINED_FUNCTION_17_17();
      v27(v39 + v30 + *(v31 + 72) * v29, v32, v33);
      v25 += v37;
      --v21;
    }

    while (v21);
  }

  OUTLINED_FUNCTION_30_0();
}

double ParticipantGridView.participantIdentifiableTiles.didset()
{
  v1 = v0;
  v2 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles];
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    v29[1] = v7;

    v30 = xmmword_1BC4BAA20;
    v31 = v10;
    v32 = v2;
    do
    {
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      v35 = *&v6[*(v2 + 20)];
      type metadata accessor for ParticipantView(0);
      v11 = v35;
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        ObjectType = swift_getObjectType();
        dynamic_cast_existential_1_unconditional(v1, ObjectType, &protocol descriptor for ParticipantViewDelegate);
        v16 = v15;
        v17 = v13 + OBJC_IVAR____TtC15ConversationKit15ParticipantView_delegate;
        swift_beginAccess();
        *(v17 + 8) = v16;
        swift_unknownObjectWeakAssign();
      }

      else
      {
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v34 = static OS_os_log.conversationKit;
        v33 = static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v18 = swift_allocObject();
        *(v18 + 16) = v30;
        *&v36 = v1;
        v19 = v1;
        v20 = String.init<A>(reflecting:)();
        v22 = v21;
        v23 = MEMORY[0x1E69E6158];
        *(v18 + 56) = MEMORY[0x1E69E6158];
        v24 = v1;
        v25 = lazy protocol witness table accessor for type String and conformance String();
        *(v18 + 64) = v25;
        *(v18 + 32) = v20;
        *(v18 + 40) = v22;
        v36 = v35;
        v26 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15ParticipantTile_pMd, &_s15ConversationKit15ParticipantTile_pMR);
        v27 = String.init<A>(reflecting:)();
        *(v18 + 96) = v23;
        *(v18 + 104) = v25;
        v1 = v24;
        *(v18 + 72) = v27;
        *(v18 + 80) = v28;
        os_log(_:dso:log:type:_:)("Can't set delegate: %@ for view: %@", 35, 2, &dword_1BBC58000, v34, v33, v18);

        v10 = v31;
        v2 = v32;
      }

      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  return result;
}

__n128 ParticipantGridView.organicLayoutConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_organicLayoutConfiguration;
  OUTLINED_FUNCTION_4_0(v3, v7);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t key path setter for ParticipantGridView.fullScreenFocusedParticipantInfo : ParticipantGridView()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - v1;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  return ParticipantGridView.fullScreenFocusedParticipantInfo.setter(v2, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR, &OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_fullScreenFocusedParticipantInfo, ParticipantGridView.fullScreenFocusedParticipantInfo.didset);
}

double ParticipantGridView.fullScreenFocusedParticipantInfo.didset()
{
  v1 = v0;
  v47 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  v2 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v4 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43[-v9];
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
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
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, &static Log.default);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v17 = v1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v48 = v45;
    *v20 = 136315394;
    v44 = v19;
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    specialized >> prefix<A>(_:)();
    v22 = v21;
    v46 = v2;
    v24 = v23;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v48);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    specialized >> prefix<A>(_:)();
    v27 = v26;
    v29 = v28;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v48);
    v2 = v46;

    *(v20 + 14) = v30;
    _os_log_impl(&dword_1BBC58000, v18, v44, "Grid fullScreenFocusedParticipantInfo updated to %s from %s", v20, 0x16u);
    v31 = v45;
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v31, -1, -1);
    MEMORY[0x1BFB23DF0](v20, -1, -1);
  }

  else
  {

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  }

  v32 = ParticipantGridView.isOneToOneMode.getter();
  v34 = *&v17[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles];
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = v32;
    v37 = *(v47 + 20);
    v38 = v2;
    v39 = v34 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v40 = *(v38 + 72);

    do
    {
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      v41 = *&v4[v37];
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      type metadata accessor for ParticipantView(0);
      v42 = swift_dynamicCastClass();
      if (v42)
      {
        ParticipantGridView.updateCornerRadius(for:isOneToOneMode:)(v42, v36 & 1);
      }

      v39 += v40;
      --v35;
    }

    while (v35);
  }

  return result;
}

uint64_t ParticipantGridView.isOneToOneMode.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 88))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void ParticipantGridView.updateCornerRadius(for:isOneToOneMode:)(uint64_t a1, char a2)
{
  v3 = 0.0;
  if ((a2 & 1) == 0)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v3 = (*(*static Defaults.shared + 400))();
  }

  v4 = OBJC_IVAR____TtC15ConversationKit15ParticipantView_customCornerRadius;
  swift_beginAccess();
  if (*(a1 + v4) != v3)
  {
    *(a1 + v4) = v3;
    ParticipantView.customCornerRadius.didset();
  }
}

uint64_t key path getter for ParticipantGridView.delegate : ParticipantGridView@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for ParticipantGridView.delegate : ParticipantGridView(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t ParticipantGridView.delegate.getter()
{
  v0 = OUTLINED_FUNCTION_37_1(OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate);
  OUTLINED_FUNCTION_4_0(v0, v1);
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t ParticipantGridView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
  OUTLINED_FUNCTION_3_5(v4, v6);
  *(v4 + 8) = a2;
  OUTLINED_FUNCTION_15_14();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ParticipantGridView.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  v6 = OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_30_2(v6, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v9;
  return InCallControlsBaseCell.delegate.modify;
}

uint64_t key path setter for ParticipantGridView.currentAnimationInfo : ParticipantGridView()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMd, &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - v1;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  return ParticipantGridView.currentAnimationInfo.setter(v2);
}

uint64_t ParticipantGridView.fullScreenFocusedParticipantInfo.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_174();
  v14 = *a4;
  OUTLINED_FUNCTION_4_0(v5 + v14, v17);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_30_2(v5 + v14, v16);
  outlined assign with copy of ParticipantGridView.AnimationInfo?();
  swift_endAccess();
  a5(v6);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a1, a2, a3);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, a2, a3);
}

uint64_t ParticipantGridView.currentAnimationInfo.didset(uint64_t a1)
{
  v27[1] = a1;
  v2 = type metadata accessor for ParticipantGridView.AnimationInfo(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMd, &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSg_AFtMd, &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSg_AFtMR);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  swift_beginAccess();
  v15 = *(v12 + 56);
  v27[0] = v1;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v14, 1, v2) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v2) == 1)
    {
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMd, &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMR);
    }

    goto LABEL_6;
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v2) == 1)
  {
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
LABEL_6:
    v17 = &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSg_AFtMd;
    v18 = &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSg_AFtMR;
    goto LABEL_7;
  }

  outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
  if (static UUID.== infix(_:_:)())
  {
    v24 = *(v2 + 20);
    v25 = v10[v24];
    v26 = v4[v24];
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMd, &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMR);
    v19 = v27[0];
    if (v25 == v26)
    {
      return result;
    }

    goto LABEL_8;
  }

  outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
  outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
  v17 = &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMd;
  v18 = &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMR;
LABEL_7:
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, v17, v18);
  v19 = v27[0];
LABEL_8:
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v2);
  result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMd, &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMR);
  if (EnumTagSinglePayload == 1)
  {
    v21 = v19 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v22 = *(v21 + 8);
      ObjectType = swift_getObjectType();
      (*(v22 + 24))(v19, ObjectType, v22);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void (*ParticipantGridView.currentAnimationInfo.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OUTLINED_FUNCTION_40_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  v3[4] = __swift_coroFrameAllocStub(v8);
  v3[5] = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_currentAnimationInfo, v3);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  return ParticipantGridView.currentAnimationInfo.modify;
}

void ParticipantGridView.currentAnimationInfo.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    ParticipantGridView.currentAnimationInfo.setter(v3);
    v5 = OUTLINED_FUNCTION_40_2();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, v6, &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMR);
  }

  else
  {
    ParticipantGridView.currentAnimationInfo.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

double ParticipantGridView.cachedFrameSize.getter()
{
  v1 = OUTLINED_FUNCTION_37_1(OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_cachedFrameSize);
  OUTLINED_FUNCTION_4_0(v1, v2);
  return *v0;
}

uint64_t ParticipantGridView.cachedFrameSize.setter(double a1, double a2)
{
  v5 = OUTLINED_FUNCTION_37_1(OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_cachedFrameSize);
  result = OUTLINED_FUNCTION_3_5(v5, v6);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ParticipantGridView.isLocalMemberAuthorizedToChangeGroupMembership.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership;
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership, v3);
  return *(v0 + v1);
}

uint64_t ParticipantGridView.isLocalMemberAuthorizedToChangeGroupMembership.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership;
  result = OUTLINED_FUNCTION_3_5(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership, v5);
  *(v1 + v3) = a1;
  return result;
}

BOOL ParticipantGridView.MediaPipInfo.flipsOrganicPairs.getter(char a1, double a2, double a3)
{
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7)
  {
    return 0;
  }

  return a2 >= a3 || a1 != 2;
}

BOOL static ParticipantGridView.MediaPipInfo.== infix(_:_:)(char a1, char a2, double a3, double a4, double a5, double a6)
{
  if (a1 == 4)
  {
    if (a2 != 4)
    {
      return 0;
    }
  }

  else if (a1 != a2)
  {
    return 0;
  }

  return a4 == a6 && a3 == a5;
}

ConversationKit::ParticipantGridView::MediaPipInfo __swiftcall ParticipantGridView.MediaPipInfo.init()()
{
  v0 = 0.0;
  v1 = 0.0;
  v2 = ConversationKit_MultiwayViewConstraintsController_MultiwayCorner_unknownDefault;
  result.size.height = v1;
  result.size.width = v0;
  result.corner.value = v2;
  return result;
}

id ParticipantGridView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

UIView *ParticipantGridView.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles] = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_unfocusedParticipantOverlay;
  type metadata accessor for ParticipantDimmingView();
  *&v0[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_featureFlags;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v5 = type metadata accessor for UUID();
  v6 = OUTLINED_FUNCTION_64_8();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  __swift_storeEnumTagSinglePayload(&v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_mostProminentParticipantIdentifier], 1, 1, v5);
  type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  v9 = OUTLINED_FUNCTION_64_8();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  *&v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_mostRecentAnimationIndex] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for ParticipantGridView.AnimationInfo(0);
  v13 = OUTLINED_FUNCTION_64_8();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_videoInfoCache;
  v18 = OUTLINED_FUNCTION_71_5();
  Cache.init(countLimit:)();
  *&v0[v17] = v18;
  v19 = &v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_cachedFrameSize];
  *v19 = 0;
  v19[1] = 0;
  v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceOrientation] = 1;
  v20 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
  OUTLINED_FUNCTION_4_82();
  _s10Foundation4UUIDVACSHAAWlTm_4(v21, v22, MEMORY[0x1E69695B8]);
  *&v0[v20] = Dictionary.init(dictionaryLiteral:)();
  v23 = &v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_rdarRemoteOrientation];
  *v23 = 0;
  v23[8] = 1;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3_15();
    swift_once();
  }

  OUTLINED_FUNCTION_0_1();
  v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle] = (*(v24 + 528))() & 1;
  v25 = [objc_opt_self() currentDevice];
  v26 = [v25 userInterfaceIdiom];

  if ((v26 - 1) >= 3)
  {
    if (!v26)
    {
      v29 = 0;
      v28 = xmmword_1BC4CDB60;
      v30 = 0;
      v27 = 1;
      goto LABEL_7;
    }

    if (v26 != -1)
    {
      v27 = 0;
      v28 = xmmword_1BC4CDB70;
      v29 = 2;
      v30 = 0x4089000000000000;
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = xmmword_1BC4CDB70;
  v29 = 1;
  v30 = 0x408A100000000000;
LABEL_7:
  v1[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceType] = v29;
  v31 = &v1[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_organicLayoutConfiguration];
  *v31 = 0x4030000000000000;
  *(v31 + 8) = v28;
  *(v31 + 3) = v30;
  v31[32] = v27;
  v42.receiver = v1;
  v42.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v42, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v33 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_unfocusedParticipantOverlay;
  v34 = *&v32[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_unfocusedParticipantOverlay];
  v35 = v32;
  [(UIView *)v35 addSubview:v34];
  v36 = *MEMORY[0x1E69DC5C0];
  v37 = *(MEMORY[0x1E69DC5C0] + 8);
  v38 = *(MEMORY[0x1E69DC5C0] + 16);
  v39 = *(MEMORY[0x1E69DC5C0] + 24);
  v40 = *&v32[v33];
  v43.top = v36;
  v43.leading = v37;
  v43.bottom = v38;
  v43.trailing = v39;
  UIView.addConstraintsToFill(_:insets:)(v35, v43);

  UIView.addTapInteraction(withTapCount:)(1);
  return v35;
}

id ParticipantGridView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantGridView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles) = MEMORY[0x1E69E7CC0];
  v1 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_unfocusedParticipantOverlay;
  type metadata accessor for ParticipantDimmingView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_featureFlags;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_currentlyFocusedParticipantIdentifier;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_53_10(v0 + v3);
  OUTLINED_FUNCTION_53_10(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_mostProminentParticipantIdentifier);
  v4 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  OUTLINED_FUNCTION_23_4(v4);
  *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_mostRecentAnimationIndex) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = type metadata accessor for ParticipantGridView.AnimationInfo(0);
  OUTLINED_FUNCTION_23_4(v5);
  v6 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_videoInfoCache;
  v7 = OUTLINED_FUNCTION_71_5();
  Cache.init(countLimit:)();
  *(v0 + v6) = v7;
  v8 = (v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_cachedFrameSize);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceOrientation) = 1;
  v9 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
  OUTLINED_FUNCTION_4_82();
  _s10Foundation4UUIDVACSHAAWlTm_4(v10, v11, MEMORY[0x1E69695B8]);
  *(v0 + v9) = Dictionary.init(dictionaryLiteral:)();
  v12 = v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_rdarRemoteOrientation;
  *v12 = 0;
  *(v12 + 8) = 1;
  OUTLINED_FUNCTION_51_11();
  __break(1u);
}

id ParticipantGridView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void ParticipantGridView.init(frame:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles) = MEMORY[0x1E69E7CC0];
  v1 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_unfocusedParticipantOverlay;
  type metadata accessor for ParticipantDimmingView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_featureFlags;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_currentlyFocusedParticipantIdentifier;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_53_10(v0 + v3);
  OUTLINED_FUNCTION_53_10(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_mostProminentParticipantIdentifier);
  v4 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  OUTLINED_FUNCTION_23_4(v4);
  *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_mostRecentAnimationIndex) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = type metadata accessor for ParticipantGridView.AnimationInfo(0);
  OUTLINED_FUNCTION_23_4(v5);
  v6 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_videoInfoCache;
  v7 = OUTLINED_FUNCTION_71_5();
  Cache.init(countLimit:)();
  *(v0 + v6) = v7;
  v8 = (v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_cachedFrameSize);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceOrientation) = 1;
  v9 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
  OUTLINED_FUNCTION_4_82();
  _s10Foundation4UUIDVACSHAAWlTm_4(v10, v11, MEMORY[0x1E69695B8]);
  *(v0 + v9) = Dictionary.init(dictionaryLiteral:)();
  v12 = v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_rdarRemoteOrientation;
  *v12 = 0;
  *(v12 + 8) = 1;
  OUTLINED_FUNCTION_51_11();
  __break(1u);
}

Swift::Void __swiftcall ParticipantGridView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  ParticipantGridView.updateParticipantViewFrames()();
}

void ParticipantGridView.updateParticipantViewFrames()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v31 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMd, &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMR);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v31 - v12;
  [v0 safeAreaInsetFrame];
  if (!CGRectIsEmpty(v32))
  {
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v14 = type metadata accessor for ParticipantGridView.AnimationInfo(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMd, &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMR);
    if (EnumTagSinglePayload == 1 || ((v16 = &v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_cachedFrameSize], swift_beginAccess(), v17 = *v16, v18 = v16[1], [v0 frame], v17 == v20) ? (v21 = v18 == v19) : (v21 = 0), !v21))
    {
      [v0 frame];
      v23 = v22;
      v25 = v24;
      v26 = &v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_cachedFrameSize];
      swift_beginAccess();
      *v26 = v23;
      *(v26 + 1) = v25;
      swift_beginAccess();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      swift_beginAccess();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      swift_beginAccess();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();

      ParticipantGridView.frames(for:mostProminentIdentifier:focusedIdentifier:fullScreenFocusedParticipantInfo:)(v27, v9, v6, v3);
      v29 = v28;

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

      ParticipantGridView.updateParticipantTiles(_:with:block:)(v30, v29, 0);
    }
  }
}

Swift::Void __swiftcall ParticipantGridView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_traitCollectionDidChange_, isa);
  if (isa)
  {
    [(objc_class *)isa displayScale];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [v1 traitCollection];
  [v5 displayScale];
  v7 = v6;

  if (!isa || v4 != v7)
  {
    [v1 setNeedsLayout];
  }
}

Swift::Void __swiftcall ParticipantGridView.setParticipants(_:)(Swift::OpaquePointer a1)
{
  OUTLINED_FUNCTION_29();
  v3 = v1;
  v5 = v4;
  v6 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_174();
  v15 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v21 = (v20 - v19);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v21 = static OS_dispatch_queue.main.getter();
  (*(v17 + 104))(v21, *MEMORY[0x1E69E8020], v15);
  v22 = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v21, v15);
  if (v22)
  {
    OUTLINED_FUNCTION_4_0(&v3[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_fullScreenFocusedParticipantInfo], &v33);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    ParticipantGridView.updateParticipantTiles(with:fullScreenFocusedParticipantInfo:)(v5, v2);
    v24 = v23;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
    v25 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles;
    *&v3[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles] = v24;

    ParticipantGridView.participantIdentifiableTiles.didset();
    v26 = *&v3[v25];
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = *(v6 + 20);
      OUTLINED_FUNCTION_40_3();
      v30 = v26 + v29;
      v31 = *(v8 + 72);

      do
      {
        OUTLINED_FUNCTION_1_99();
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        v32 = *(v12 + v28);
        OUTLINED_FUNCTION_0_117();
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        [v32 setAlpha_];
        [v3 addSubview_];

        v30 += v31;
        --v27;
      }

      while (v27);
    }

    ParticipantGridView.updateParticipantViewFrames()();
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    __break(1u);
  }
}

void ParticipantGridView.updateParticipantTiles(with:fullScreenFocusedParticipantInfo:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v254 = a2;
  v250 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelOSgMd, &_s15ConversationKit20ParticipantViewModelOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v222 = &v210 - v5;
  v241 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
  MEMORY[0x1EEE9AC00](v241);
  v217 = &v210 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v211 = &v210 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v252 = &v210 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v247 = &v210 - v12;
  v236 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  v242 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v253 = &v210 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v243 = &v210 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v213 = &v210 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v214 = &v210 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v220 = &v210 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v230 = &v210 - v23;
  v256 = type metadata accessor for UUID();
  v240 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v221 = &v210 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v212 = &v210 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v251 = &v210 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v244 = &v210 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v237 = (&v210 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtSgMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtSgMR);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v227 = &v210 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v226 = &v210 - v36;
  v245 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v245);
  v248 = &v210 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for Participant(0);
  v38 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255);
  v246 = &v210 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v239 = &v210 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v235 = &v210 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v45 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  MEMORY[0x1EEE9AC00](v45);
  v238 = &v210 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v49 = &v210 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSg_AFtMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSg_AFtMR);
  v51 = v50 - 8;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v210 - v52;
  v249 = 0;
  swift_beginAccess();
  v54 = *(v51 + 56);
  v231 = v3;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v53, 1, v45) != 1)
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v53[v54], 1, v45);
    v56 = v250;
    v58 = v49;
    if (EnumTagSinglePayload != 1)
    {
      v59 = v238;
      outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
      if ((static UUID.== infix(_:_:)() & 1) != 0 && (v60 = &v58[v45[5]], v272 = v60[32], v61 = *(v60 + 1), v271[0] = *v60, v271[1] = v61, v62 = &v59[v45[5]], v274 = v62[32], v63 = *(v62 + 1), v273[0] = *v62, v273[1] = v63, static AspectRatio.== infix(_:_:)(v271, v273)) && *&v58[v45[6]] == *&v59[v45[6]])
      {
        v64 = v45[7];
        v65 = v58[v64];
        v66 = v59[v64];
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        v219 = v65 == v66;
      }

      else
      {
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        v219 = 0;
      }

      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v53, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
      goto LABEL_13;
    }

    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    goto LABEL_6;
  }

  v55 = __swift_getEnumTagSinglePayload(&v53[v54], 1, v45);
  v56 = v250;
  if (v55 != 1)
  {
LABEL_6:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v53, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSg_AFtMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSg_AFtMR);
    v219 = 0;
    goto LABEL_13;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v53, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  v219 = 1;
LABEL_13:
  v216 = ParticipantGridView.isOneToOneMode.getter();
  v67 = 0;
  v68 = v56;
  v69 = *(v56 + 16);
  v238 = MEMORY[0x1E69E7CC0];
  v224 = v38;
  v254 = v69;
LABEL_14:
  v70 = v246;
  while (v69 != v67)
  {
    v71 = v68;
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
      case 3u:
      case 5u:
        goto LABEL_17;
      case 4u:
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
        v74 = *(v73 + 48);
        v75 = v248;
        v76 = &v248[*(v73 + 64)];
        outlined consume of Participant.CopresenceInfo?(*v76, v76[1], v76[2], v76[3], v76[4], v76[5], v76[6], v76[7]);
        outlined destroy of Participant.MediaInfo(&v75[v74]);
LABEL_17:
        v72 = type metadata accessor for Date();
        (*(*(v72 - 8) + 8))(v248, v72);
        break;
      case 6u:
        break;
      default:
        v77 = type metadata accessor for Date();
        (*(*(v77 - 8) + 8))(v248, v77);
        outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
        v78 = v238;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v269[0].i64[0] = v78;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v78 = v269[0].i64[0];
        }

        v80 = *(v78 + 16);
        if (v80 >= *(v78 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v78 = v269[0].i64[0];
        }

        ++v67;
        *(v78 + 16) = v80 + 1;
        v238 = v78;
        outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
        v38 = v224;
        v69 = v254;
        goto LABEL_14;
    }

    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    ++v67;
    v68 = v71;
  }

  v225 = *(v238 + 2);

  if (v69)
  {
    v269[0].i64[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v81 = v269[0].i64[0];
    v82 = v68 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v248 = *(v38 + 72);
    v83 = (v240 + 16);
    v84 = v69;
    v85 = v237;
    v86 = v256;
    do
    {
      v87 = v239;
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      (*v83)(v85, v87 + *(v255 + 20), v86);
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v269[0].i64[0] = v81;
      v88 = *(v81 + 16);
      if (v88 >= *(v81 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v81 = v269[0].i64[0];
      }

      *(v81 + 16) = v88 + 1;
      (*(v240 + 4))(v81 + ((*(v240 + 80) + 32) & ~*(v240 + 80)) + *(v240 + 9) * v88, v85, v86);
      v82 += v248;
      --v84;
    }

    while (v84);
    v215 = v81;
    v68 = v250;
    v70 = v246;
  }

  else
  {
    v215 = MEMORY[0x1E69E7CC0];
  }

  LODWORD(v238) = v225 != 0;
  v259 = 0;
  v260 = 0;
  v258 = v68;
  v235 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles;
  v237 = (v240 + 16);
  v89 = (v240 + 32);
  v90 = (v240 + 8);

  v91 = MEMORY[0x1E69E7CC0];
  v218 = xmmword_1BC4BA940;
  v92 = v226;
  v223 = v90;
  while (1)
  {
    specialized EnumeratedSequence.Iterator.next()();
    outlined init with take of CaptionSectioner.SpeakerSection?();
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtMR);
    v94 = __swift_getEnumTagSinglePayload(v92, 1, v93);
    v245 = v91;
    if (v94 == 1)
    {
      break;
    }

    v239 = *v92;
    outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
    v95 = v231;
    ParticipantGridView.updateCacheIfNeeded(for:)(v70);
    LODWORD(v248) = ParticipantGridView.showsMostActiveTreatment(for:totalParticipantCount:)(v70, v254);
    v96 = v256;
    v97 = *(v255 + 20);
    v98 = *v237;
    (*v237)(v244, v70 + v97, v256);
    memset(v267, 0, sizeof(v267));
    v268 = 1;
    ParticipantGridView.aspectRatio(for:default:)(v70, v267, v261);
    v99 = Participant.isReceivingVideoFrames.getter();
    v232 = v97;
    v233 = v98;
    if (v99)
    {
      v100 = ParticipantGridView.orientation(for:default:)(v70, 1);
    }

    else
    {
      v100 = 0;
    }

    v101 = v70;
    v102 = v95;
    v103 = v99 ^ 1;
    v104 = v241;
    v105 = v247;
    v106 = &v247[*(v241 + 24)];
    v240 = *v89;
    v107 = (v240)(v247, v244, v96);
    v229 = v100;
    *v106 = v100;
    LODWORD(v228) = v103;
    v106[8] = v103 & 1;
    v108 = &v105[v104[5]];
    v109 = v261[1];
    *v108 = v261[0];
    v108[1] = v109;
    v108[2].i8[0] = v262;
    v110 = v104[7];
    v234 = v248 & 1;
    v105[v110] = v248 & 1;
    v105[v104[8]] = v238;
    v111 = v235;
    v112 = *&v235[v102];
    MEMORY[0x1EEE9AC00](v107);
    *(&v210 - 2) = v101;

    v113 = v249;
    v114 = specialized Collection.firstIndex(where:)(partial apply for closure #3 in ParticipantGridView.updateParticipantTiles(with:fullScreenFocusedParticipantInfo:), (&v210 - 4), v112);
    LOBYTE(v105) = v115;
    v249 = v113;

    v116 = v102;
    v117 = *&v111[v102];
    if (v105)
    {
      v118 = *(v117 + 16);
      v119 = v239;
      v90 = v223;
      if (v239 >= v118)
      {
        goto LABEL_41;
      }

      if (v239 < 0)
      {
        goto LABEL_90;
      }

      v228 = (*(v242 + 80) + 32) & ~*(v242 + 80);
      v229 = *(v242 + 72) * v239;
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      v120 = v252;
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v121 = v251;
      v122 = v256;
      v123 = (v240)(v251, v120, v256);
      MEMORY[0x1EEE9AC00](v123);
      *(&v210 - 2) = v121;
      v124 = v249;
      LOBYTE(v120) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v210 - 4), v215);
      v249 = v124;
      (*v90)(v121, v122);
      v118 = *(*&v235[v116] + 16);
      if (v120)
      {
LABEL_41:
        v125 = v246;
        if (v119 >= v118)
        {
          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          v141 = static OS_os_log.conversationKit;
          v142 = static os_log_type_t.error.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v143 = swift_allocObject();
          *(v143 + 16) = v218;
          v257 = v119;
          v144 = String.init<A>(reflecting:)();
          v146 = v145;
          *(v143 + 56) = MEMORY[0x1E69E6158];
          *(v143 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v143 + 32) = v144;
          *(v143 + 40) = v146;
          os_log(_:dso:log:type:_:)("Falling back to default for participant tile at index %@", 56, 2, &dword_1BBC58000, v141, v142, v143);

          v134 = 0.0;
          v136 = 200.0;
          v135 = 0.0;
          v137 = 200.0;
        }

        else
        {
          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          v126 = static OS_os_log.conversationKit;
          v127 = static os_log_type_t.error.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v128 = swift_allocObject();
          *(v128 + 16) = v218;
          v257 = v119;
          v129 = String.init<A>(reflecting:)();
          v131 = v130;
          *(v128 + 56) = MEMORY[0x1E69E6158];
          *(v128 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v128 + 32) = v129;
          *(v128 + 40) = v131;
          v132 = v239;
          os_log(_:dso:log:type:_:)("Falling back to existing frame for participant tile at index %@", 63, 2, &dword_1BBC58000, v126, v127, v128);

          v133 = *&v235[v116];
          if (v132 >= *(v133 + 16))
          {
            goto LABEL_91;
          }

          [*(v133 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v132 + *(v236 + 20)) frame];
        }

        v147 = ParticipantGridView.createParticipantView(frame:isOneToOneMode:)(v216 & 1, v134, v135, v136, v137);
        v233(v221, v125 + v232, v256);
        v148 = v147;
        ParticipantGridView.aspectRatio(for:default:)(v125, v267, v265);
        v149 = Participant.isReceivingVideoFrames.getter();
        if (v149)
        {
          v150 = ParticipantGridView.orientation(for:default:)(v125, 1);
        }

        else
        {
          v150 = 0;
        }

        LODWORD(v239) = v225 != 0;
        v151 = v241;
        v152 = v217;
        v153 = &v217[*(v241 + 24)];
        v240(v217, v221, v256);
        *v153 = v150;
        v153[8] = (v149 & 1) == 0;
        v154 = &v152[v151[5]];
        v155 = v265[1];
        *v154 = v265[0];
        v154[1] = v155;
        v154[2].i8[0] = v266;
        v152[v151[7]] = v234;
        v152[v151[8]] = v238;
        v156 = v230;
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        v157 = &v156[*(v236 + 20)];
        *v157 = v148;
        v157[1] = &protocol witness table for ParticipantView;
        v158 = v148;
        v159 = v222;
        ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(v158, &protocol witness table for ParticipantView, v246, v248 & 1, v239, 0, v222);

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v159, &_s15ConversationKit20ParticipantViewModelOSgMd, &_s15ConversationKit20ParticipantViewModelOSgMR);
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      }

      else
      {
        v160 = v246;
        if (v119 >= v118)
        {
          goto LABEL_92;
        }

        v161 = v225 != 0;
        v162 = v213;
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        v163 = &v162[*(v236 + 20)];
        v164 = *(v163 + 1);
        v165 = *v163;
        v166 = v248 & 1;
        v167 = v222;
        v248 = v165;
        ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(v165, v164, v160, v166, v161, 0, v222);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v167, &_s15ConversationKit20ParticipantViewModelOSgMd, &_s15ConversationKit20ParticipantViewModelOSgMR);
        v233(v212, v160 + v232, v256);
        v168 = &v162[*(v241 + 20)];
        v270 = v168[2].i8[0];
        v169 = v168[1];
        v269[0] = *v168;
        v269[1] = v169;
        ParticipantGridView.aspectRatio(for:default:)(v160, v269, v263);
        v170 = Participant.isReceivingVideoFrames.getter();
        v239 = v164;
        if (v170)
        {
          v171 = ParticipantGridView.orientation(for:default:)(v160, 1);
        }

        else
        {
          v171 = 0;
        }

        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        v184 = v241;
        v185 = v211;
        v186 = &v211[*(v241 + 24)];
        v240(v211, v212, v256);
        *v186 = v171;
        v186[8] = (v170 & 1) == 0;
        v187 = &v185[v184[5]];
        v188 = v263[1];
        *v187 = v263[0];
        v187[1] = v188;
        v187[2].i8[0] = v264;
        v185[v184[7]] = v234;
        v185[v184[8]] = v238;
        v189 = v230;
        outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
        v190 = &v189[*(v236 + 20)];
        v191 = v239;
        *v190 = v248;
        *(v190 + 1) = v191;
      }

      v92 = v226;
    }

    else
    {
      v90 = v223;
      if ((v114 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        return;
      }

      if (v114 >= *(v117 + 16))
      {
        goto LABEL_89;
      }

      v138 = v220;
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      if (static ParticipantGridView.ParticipantTileInfo.== infix(_:_:)())
      {
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      }

      else
      {
        v139 = &v138[*(v241 + 24)];
        if (v139[8])
        {
          v140 = 0;
        }

        else
        {
          v140 = v228 | (*v139 != v229);
        }

        v172 = v236;
        v173 = v220;
        v174 = &v220[*(v236 + 20)];
        v175 = *(v174 + 1);
        v176 = v225 != 0;
        v177 = *v174;
        v178 = v140 & 1;
        v179 = v222;
        ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(v177, v175, v246, v248 & 1, v176, v178, v222);
        v180 = v179;
        v138 = v173;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v180, &_s15ConversationKit20ParticipantViewModelOSgMd, &_s15ConversationKit20ParticipantViewModelOSgMR);
        v181 = v230;
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        v182 = &v181[*(v172 + 20)];
        *v182 = v177;
        *(v182 + 1) = v175;
      }

      v92 = v226;
      if (!v219)
      {
        v183 = v222;
        ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(*&v138[*(v236 + 20)], *&v138[*(v236 + 20) + 8], v246, v248 & 1, v225 != 0, 0, v222);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v183, &_s15ConversationKit20ParticipantViewModelOSgMd, &_s15ConversationKit20ParticipantViewModelOSgMR);
      }

      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    }

    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    v91 = v245;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v91 = v193;
    }

    v192 = *(v91 + 16);
    if (v192 >= *(v91 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v91 = v194;
    }

    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    *(v91 + 16) = v192 + 1;
    outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
    v70 = v246;
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
  }

  v195 = *&v235[v231];
  v248 = *(v195 + 2);
  if (v248)
  {
    v196 = v242;
    v247 = &v195[(*(v242 + 80) + 32) & ~*(v242 + 80)];
    v244 = v195;

    v197 = 0;
    v246 = *(v196 + 72);
    do
    {
      ++v197;
      v198 = outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      v199 = 0;
      while (v254 != v199)
      {
        v200 = v199 + 1;
        v201 = v252;
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        v202 = v251;
        v203 = v201;
        v204 = v256;
        (*v89)(v251, v203, v256);
        v205 = static UUID.== infix(_:_:)();
        v198 = (*v90)(v202, v204);
        v199 = v200;
        if (v205)
        {
          goto LABEL_85;
        }
      }

      MEMORY[0x1EEE9AC00](v198);
      v206 = v253;
      *(&v210 - 2) = v253;
      v207 = v249;
      v208 = specialized Sequence.contains(where:)(partial apply for closure #5 in ParticipantGridView.updateParticipantTiles(with:fullScreenFocusedParticipantInfo:), (&v210 - 4), v245);
      v249 = v207;
      if (!v208)
      {
        v209 = *&v206[*(v236 + 20)];
        [v209 removeFromSuperview];
        type metadata accessor for ParticipantView(0);
        if (swift_dynamicCastClass())
        {
          ParticipantView.reset()();
        }
      }

LABEL_85:
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    }

    while (v197 != v248);
  }
}

uint64_t ParticipantGridView.shouldSkipTransition(newInfo:oldInfo:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_101();
  v7 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  if ([*(v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_featureFlags) uPlusOneFullBleedHandoffEnabled])
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(v3, 1, v7);
    if (v12)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
    }

    else
    {
      outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
      OUTLINED_FUNCTION_115(a2, 1, v7);
      if (!v12)
      {
        v15 = ParticipantGridView.isOneToOneMode.getter();
        if ((v15 & 1) == 0 || (ParticipantGridView.hasConnectedToCall.getter() & 1) == 0)
        {
          goto LABEL_19;
        }

        if ((*(v11 + *(v7 + 24)) | 2) == 3)
        {
          v16 = v11 + *(v7 + 20);
          if ((*(v16 + 32) & 1) == 0)
          {
            v17 = (v16 + 8);
            goto LABEL_17;
          }
        }

        else
        {
          v18 = v11 + *(v7 + 20);
          if ((*(v18 + 32) & 1) == 0)
          {
            v17 = (v18 + 24);
            v16 = v18 + 16;
LABEL_17:
            if (*v16 == *v17)
            {
              goto LABEL_18;
            }

LABEL_19:
            Frame = 0;
            goto LABEL_20;
          }
        }

LABEL_18:
        Frame = ParticipantGridView.shouldShowLastFrameUI.getter();
LABEL_20:
        OUTLINED_FUNCTION_36_18();
        return Frame & 1;
      }

      OUTLINED_FUNCTION_36_18();
    }
  }

  Frame = 0;
  return Frame & 1;
}

uint64_t ParticipantGridView.hasConnectedToCall.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 96))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t ParticipantGridView.shouldShowLastFrameUI.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 120))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void ParticipantGridView.transition(to:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:layoutStyle:animationStyle:forced:)()
{
  OUTLINED_FUNCTION_29();
  v185 = v0;
  v186 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v175 = v13;
  v174 = v14;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit19ParticipantGridViewC012IdentifiableD4Tile33_C3C0D7D8F62A84253427EC61D899943ELLV7elementtMd, &_sSi6offset_15ConversationKit19ParticipantGridViewC012IdentifiableD4Tile33_C3C0D7D8F62A84253427EC61D899943ELLV7elementtMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v177 = (&v160 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit19ParticipantGridViewC012IdentifiableD4Tile33_C3C0D7D8F62A84253427EC61D899943ELLV7elementtSgMd, &_sSi6offset_15ConversationKit19ParticipantGridViewC012IdentifiableD4Tile33_C3C0D7D8F62A84253427EC61D899943ELLV7elementtSgMR);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_17();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v188 = &v160 - v23;
  v24 = OUTLINED_FUNCTION_4_24();
  v183 = type metadata accessor for Participant(v24);
  OUTLINED_FUNCTION_1();
  v169 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_40();
  v182 = v27;
  v28 = OUTLINED_FUNCTION_4_24();
  v29 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(v28);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_40();
  v181 = v31;
  OUTLINED_FUNCTION_4_24();
  v189 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_40();
  v184 = v35;
  v36 = OUTLINED_FUNCTION_4_24();
  v187 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(v36);
  OUTLINED_FUNCTION_1();
  v178 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_40();
  v180 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  v41 = OUTLINED_FUNCTION_22(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_17();
  v170 = v42 - v43;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5();
  v171 = v45;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v46);
  v173 = &v160 - v47;
  OUTLINED_FUNCTION_4_24();
  v48 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v50 = v49;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v172 = *v8;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v52 = OUTLINED_FUNCTION_61_0();
  v53(v52);
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v50 + 8))(v1, v48);
  if ((v8 & 1) == 0)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if ((v4 & 1) == 0)
  {
    v192[0] = v172;
    if ((ParticipantGridView.updateRequiredToTransition(to:layoutStyle:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:)(v174, v192, v175, v12, v186, v10) & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  v54 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_fullScreenFocusedParticipantInfo;
  OUTLINED_FUNCTION_4_0(&v185[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_fullScreenFocusedParticipantInfo], v192);
  v168 = v54;
  v55 = v173;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v56 = ParticipantGridView.shouldSkipTransition(newInfo:oldInfo:)(v10, v55);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v55, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  if (v56)
  {
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_6:
      v57 = type metadata accessor for Logger();
      __swift_project_value_buffer(v57, static Logger.conversationKit);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_1BBC58000, v58, v59, "Skipping transition due to U+1 handoff", v60, 2u);
        MEMORY[0x1BFB23DF0](v60, -1, -1);
      }

      goto LABEL_56;
    }

LABEL_62:
    swift_once();
    goto LABEL_6;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v165 = v10;
  v186 = v21;
  HIDWORD(v162) = v6;
  v163 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1BC4BB990;
  v164 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles;
  v62 = *&v185[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles];
  v63 = *(v62 + 16);
  v64 = MEMORY[0x1E69E7CC0];
  v161 = v33;
  v167 = v12;
  v166 = v61;
  if (v63)
  {
    v191[0] = MEMORY[0x1E69E7CC0];

    OUTLINED_FUNCTION_58_8();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v64 = v191[0];
    OUTLINED_FUNCTION_17_17();
    v160 = v62;
    v66 = v62 + v65;
    v179 = *(v67 + 72);
    v12 = v33 + 8;
    do
    {
      OUTLINED_FUNCTION_1_99();
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      OUTLINED_FUNCTION_5_74();
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      v68 = OUTLINED_FUNCTION_15_14();
      v69(v68);
      OUTLINED_FUNCTION_4_82();
      _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, v70, MEMORY[0x1E69695E0]);
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v72;
      v74 = OUTLINED_FUNCTION_15_14();
      v75(v74);
      OUTLINED_FUNCTION_0_117();
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v191[0] = v64;
      v77 = *(v64 + 16);
      v76 = *(v64 + 24);
      if (v77 >= v76 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v76);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v64 = v191[0];
      }

      *(v64 + 16) = v77 + 1;
      v78 = v64 + 16 * v77;
      *(v78 + 32) = v71;
      *(v78 + 40) = v73;
      v66 += v179;
      --v63;
    }

    while (v63);

    OUTLINED_FUNCTION_75_7();
  }

  else
  {
    v73 = v61;
  }

  v191[0] = v64;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v80 = String.init<A>(reflecting:)();
  v82 = v81;
  v83 = MEMORY[0x1E69E6158];
  v73[7] = MEMORY[0x1E69E6158];
  v84 = lazy protocol witness table accessor for type String and conformance String();
  v85 = v84;
  v73[8] = v84;
  v73[4] = v80;
  v73[5] = v82;
  v86 = v174;
  v87 = *(v174 + 16);
  v88 = MEMORY[0x1E69E7CC0];
  if (v87)
  {
    v180 = v79;
    v181 = v84;
    v191[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_58_8();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v88 = v191[0];
    OUTLINED_FUNCTION_17_17();
    v73 = (v86 + v89);
    v12 = *(v90 + 72);
    do
    {
      OUTLINED_FUNCTION_12_47();
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      OUTLINED_FUNCTION_4_82();
      _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, v91, MEMORY[0x1E69695E0]);
      v92 = dispatch thunk of CustomStringConvertible.description.getter();
      v94 = v93;
      OUTLINED_FUNCTION_11_54();
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v191[0] = v88;
      v96 = *(v88 + 16);
      v95 = *(v88 + 24);
      if (v96 >= v95 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v95);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v88 = v191[0];
      }

      *(v88 + 16) = v96 + 1;
      v97 = v88 + 16 * v96;
      *(v97 + 32) = v92;
      *(v97 + 40) = v94;
      v73 = (v73 + v12);
      --v87;
    }

    while (v87);
    OUTLINED_FUNCTION_75_7();
    v83 = MEMORY[0x1E69E6158];
    v85 = v181;
  }

  v191[0] = v88;
  v98 = String.init<A>(reflecting:)();
  v73[12] = v83;
  v73[13] = v85;
  v73[9] = v98;
  v73[10] = v99;
  specialized >> prefix<A>(_:)(v175, v99, v100, v101, v102, v103, v104, v105, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169);
  v73[17] = v83;
  v73[18] = v85;
  v73[14] = v106;
  v73[15] = v107;
  v108 = v165;
  specialized >> prefix<A>(_:)();
  v73[22] = v83;
  v73[23] = v85;
  v73[19] = v109;
  v73[20] = v110;
  v111 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Grid transitioning from %@\nto %@\nmost prominent: %@ full screen focused participant: %@", 87, 2, &dword_1BBC58000, v163, v111, v73);

  v112 = v171;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v113 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v112, 1, v113);
  OUTLINED_FUNCTION_33_3(v112);
  v115 = v176;
  v116 = v186;
  if (EnumTagSinglePayload != 1 || (v117 = 1, OUTLINED_FUNCTION_57(v108), v118))
  {
    v119 = v170;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v120 = __swift_getEnumTagSinglePayload(v119, 1, v113);
    OUTLINED_FUNCTION_33_3(v119);
    if (v120 == 1)
    {
      v117 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_57(v108);
      if (v118)
      {
        v117 = 1;
      }

      else
      {
        v117 = 0;
      }
    }
  }

  v121 = v185;
  OUTLINED_FUNCTION_30_2(&v185[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_currentlyFocusedParticipantIdentifier], v191);
  outlined assign with copy of ParticipantGridView.AnimationInfo?();
  swift_endAccess();
  OUTLINED_FUNCTION_30_2(&v121[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_mostProminentParticipantIdentifier], v191);
  v122 = v175;
  outlined assign with copy of ParticipantGridView.AnimationInfo?();
  swift_endAccess();
  v123 = v173;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_49_14();
  ParticipantGridView.fullScreenFocusedParticipantInfo.setter(v123, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR, v124, v125);
  v126 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle;
  OUTLINED_FUNCTION_3_5(&v121[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle], v191);
  v121[v126] = v172;
  ParticipantGridView.updateParticipantTiles(with:fullScreenFocusedParticipantInfo:)(v174, v108);
  v127 = v164;
  *&v121[v164] = v128;

  ParticipantGridView.participantIdentifiableTiles.didset();

  ParticipantGridView.frames(for:mostProminentIdentifier:focusedIdentifier:fullScreenFocusedParticipantInfo:)(v129, v122, v12, v108);
  v131 = v130;

  LODWORD(v181) = ParticipantGridView.isOneToOneMode.getter();
  v132 = *&v121[v127];
  v133 = *(v132 + 16);
  v182 = v131 + 32;
  v183 = v131;

  v134 = 0;
  while (1)
  {
    if (v134 == v133)
    {
      v135 = 1;
      v134 = v133;
    }

    else
    {
      if ((v134 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      if (v134 >= *(v132 + 16))
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_17_17();
      *v177 = v134;
      OUTLINED_FUNCTION_1_99();
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      OUTLINED_FUNCTION_40_2();
      outlined init with take of CaptionSectioner.SpeakerSection?();
      v135 = 0;
      ++v134;
    }

    __swift_storeEnumTagSinglePayload(v116, v135, 1, v115);
    v136 = v188;
    outlined init with take of CaptionSectioner.SpeakerSection?();
    OUTLINED_FUNCTION_115(v136, 1, v115);
    if (v118)
    {
      break;
    }

    v137 = *v136;
    v138 = *(v136 + *(v115 + 48) + *(v187 + 20));
    OUTLINED_FUNCTION_0_117();
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    if (v117)
    {
      type metadata accessor for ParticipantView(0);
      v139 = swift_dynamicCastClass();
      if (v139)
      {
        v140 = v139;
        v141 = v138;
        ParticipantGridView.updateCornerRadius(for:isOneToOneMode:)(v140, v181 & 1);

        v115 = v176;
      }
    }

    v142 = [v138 superview];
    if (v142)
    {
      v143 = v142;

      v138 = v143;
    }

    else
    {
      if ((v137 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      if (v137 >= *(v183 + 16))
      {
        goto LABEL_60;
      }

      v144 = OUTLINED_FUNCTION_40_2();
      v145 = v185;
      ParticipantGridView.updateStartingFrame(for:with:)(v144, v146, v147, v148, v149);
      [v145 addSubview_];
    }

    v116 = v186;
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3_15();
    swift_once();
  }

  OUTLINED_FUNCTION_0_1();
  v151 = (*(v150 + 632))();
  v152 = BYTE4(v162);
  v153 = v161;
  if ((v151 & 1) != 0 && static Platform.current.getter() == 3)
  {
    v154 = &v185[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_currentAnimationInfo];
    OUTLINED_FUNCTION_4_0(&v185[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_currentAnimationInfo], &v190);
    v155 = type metadata accessor for ParticipantGridView.AnimationInfo(0);
    if (!__swift_getEnumTagSinglePayload(v154, 1, v155) && *(v154 + *(v155 + 20)) < v152)
    {
      v152 = *(v154 + *(v155 + 20));
    }
  }

  v156 = v184;
  UUID.init()();
  v157 = swift_allocObject();
  v158 = v185;
  v159 = v183;
  v157[2] = v185;
  v157[3] = v159;
  v158;
  ParticipantGridView.startAnimations(_:animationStyle:completion:)(partial apply for closure #3 in ParticipantGridView.transition(to:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:layoutStyle:animationStyle:forced:), v157, v152, TPNumberPadCharacter.rawValue.getter, 0);

  (*(v153 + 8))(v156, v189);
LABEL_56:
  OUTLINED_FUNCTION_30_0();
}

uint64_t ParticipantGridView.updateRequiredToTransition(to:layoutStyle:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v87 = a6;
  v99 = a4;
  v96 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC012IdentifiableC4Tile33_C3C0D7D8F62A84253427EC61D899943ELLVSgMd, &_s15ConversationKit19ParticipantGridViewC012IdentifiableC4Tile33_C3C0D7D8F62A84253427EC61D899943ELLVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v82 - v10;
  v12 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  MEMORY[0x1EEE9AC00](v12);
  v93 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Participant(0);
  v94 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v90 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  MEMORY[0x1EEE9AC00](v88);
  v84 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v85 = v82 - v18;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSg_AFtMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSg_AFtMR);
  MEMORY[0x1EEE9AC00](v86);
  v89 = v82 - v19;
  v100 = type metadata accessor for UUID();
  v98 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v92 = v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v91 = v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v82 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v26);
  v95 = v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v82 - v29;
  v31 = *a2;
  ParticipantGridView.participantIdentifiers.getter();
  v33 = *(v32 + 16);

  v34 = *(a1 + 16);
  v97 = v33;
  if (v33 != v34)
  {
    return 1;
  }

  v83 = v12;
  v35 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle;
  swift_beginAccess();
  if (v31 != *(v6 + v35))
  {
    return 1;
  }

  v82[0] = v11;
  v82[1] = a1;
  swift_beginAccess();
  v36 = *(v26 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v99 = v6;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v37 = v100;
  if (__swift_getEnumTagSinglePayload(v30, 1, v100) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v30[v36], 1, v37) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_10;
    }

LABEL_8:
    v38 = &_s10Foundation4UUIDVSg_ADtMd;
    v39 = &_s10Foundation4UUIDVSg_ADtMR;
    v40 = v30;
LABEL_41:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, v38, v39);
    return 1;
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(&v30[v36], 1, v37) == 1)
  {
    (*(v98 + 8))(v25, v37);
    goto LABEL_8;
  }

  v41 = v98;
  v42 = v92;
  (*(v98 + 32))(v92, &v30[v36], v37);
  _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v41 + 8);
  v44(v42, v37);
  v44(v25, v37);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((v43 & 1) == 0)
  {
    return 1;
  }

LABEL_10:
  swift_beginAccess();
  v45 = *(v26 + 48);
  v46 = v95;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v46, 1, v37) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v46 + v45, 1, v37) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v46, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v47 = v91;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v46 + v45, 1, v37) == 1)
  {
    (*(v98 + 8))(v47, v37);
LABEL_15:
    v38 = &_s10Foundation4UUIDVSg_ADtMd;
    v39 = &_s10Foundation4UUIDVSg_ADtMR;
    v40 = v46;
    goto LABEL_41;
  }

  v48 = v98;
  v49 = v46 + v45;
  v50 = v92;
  (*(v98 + 32))(v92, v49, v37);
  _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  v52 = *(v48 + 8);
  v52(v50, v37);
  v52(v47, v37);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v46, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((v51 & 1) == 0)
  {
    return 1;
  }

LABEL_17:
  swift_beginAccess();
  v53 = *(v86 + 48);
  v54 = v89;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v55 = v88;
  if (__swift_getEnumTagSinglePayload(v54, 1, v88) != 1)
  {
    v71 = v85;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54 + v53, 1, v55);
    v57 = v90;
    if (EnumTagSinglePayload != 1)
    {
      v73 = v84;
      outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
      if (static UUID.== infix(_:_:)())
      {
        v74 = &v71[v55[5]];
        v110 = v74[32];
        v75 = *(v74 + 1);
        v109[0] = *v74;
        v109[1] = v75;
        v76 = &v73[v55[5]];
        v112 = v76[32];
        v77 = *(v76 + 1);
        v111[0] = *v76;
        v111[1] = v77;
        if (static AspectRatio.== infix(_:_:)(v109, v111) && *&v71[v55[6]] == *&v73[v55[6]])
        {
          v78 = v55[7];
          v79 = v71[v78];
          v80 = v73[v78];
          outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
          outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v54, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
          if (v79 != v80)
          {
            return 1;
          }

          goto LABEL_20;
        }
      }

      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v38 = &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd;
      v39 = &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR;
      goto LABEL_40;
    }

    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
LABEL_33:
    v38 = &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSg_AFtMd;
    v39 = &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSg_AFtMR;
LABEL_40:
    v40 = v54;
    goto LABEL_41;
  }

  v56 = __swift_getEnumTagSinglePayload(v54 + v53, 1, v55);
  v57 = v90;
  if (v56 != 1)
  {
    goto LABEL_33;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v54, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
LABEL_20:
  v58 = 0;
  v59 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles;
  while (1)
  {
    if (v97 == v58)
    {
      return 0;
    }

    v60 = outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    v61 = *(v99 + v59);
    MEMORY[0x1EEE9AC00](v60);
    v82[-2] = v57;

    v62 = v57;
    v63 = v82[0];
    specialized Sequence.first(where:)(partial apply for closure #1 in ParticipantGridView.updateEMA(for:ema:audioPriority:videoPriority:), v61, v82[0]);

    if (__swift_getEnumTagSinglePayload(v63, 1, v83) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v63, &_s15ConversationKit19ParticipantGridViewC012IdentifiableC4Tile33_C3C0D7D8F62A84253427EC61D899943ELLVSgMd, &_s15ConversationKit19ParticipantGridViewC012IdentifiableC4Tile33_C3C0D7D8F62A84253427EC61D899943ELLVSgMR);
      goto LABEL_47;
    }

    v64 = v93;
    outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
    Participant.videoInfo.getter();
    v57 = v62;
    if (v101)
    {
      memcpy(v104, v102, sizeof(v104));
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v101, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
      v105[0] = *&v104[32];
      v105[1] = *&v104[48];
      v106 = v104[64];
      v65 = &v64[*(type metadata accessor for ParticipantGridView.ParticipantTileInfo(0) + 20)];
      v108 = v65[32];
      v66 = *(v65 + 1);
      v107[0] = *v65;
      v107[1] = v66;
      if (!static AspectRatio.== infix(_:_:)(v107, v105))
      {
        break;
      }
    }

    Participant.videoInfo.getter();
    if (v103[0])
    {
      v67 = v103[3];
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v103, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
      v68 = &v64[*(type metadata accessor for ParticipantGridView.ParticipantTileInfo(0) + 24)];
      v69 = *v68;
      v70 = v68[8];
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      if ((v70 & 1) != 0 || v69 != v67)
      {
        goto LABEL_47;
      }
    }

    else
    {
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    }

    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    ++v58;
  }

  outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
LABEL_47:
  outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
  return 1;
}

void ParticipantGridView.frames(for:mostProminentIdentifier:focusedIdentifier:fullScreenFocusedParticipantInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v99 = a4;
  *&v103 = a3;
  v89 = a2;
  v96 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  *&v104 = &v89 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v97 = &v89 - v13;
  v98 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  MEMORY[0x1EEE9AC00](v98);
  v90 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  v15 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v16 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v100 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v20 = MEMORY[0x1E69E7CC0];
  v106 = MEMORY[0x1E69E7CC0];
  v21 = *(a1 + 16);
  v93 = v15;
  v101 = v9;
  v92 = v5;
  v95 = v21;
  if (v21)
  {
    v91 = v10;
    v105 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v22 = v21;
    v20 = v105;
    v23 = v96 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v24 = *(v15 + 72);
    do
    {
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v105 = v20;
      v25 = *(v20 + 16);
      if (v25 >= *(v20 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v20 = v105;
      }

      *(v20 + 16) = v25 + 1;
      outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
      v23 += v24;
      --v22;
    }

    while (v22);
    v9 = v101;
    v10 = v91;
    v5 = v92;
  }

  v26 = static Platform.current.getter();
  v27 = v99;
  v28 = v98;
  if (v26 != 2 || (ParticipantGridView.layoutIdiom.getter(&v105), v105 == 2) || (v105 & 1) != 0)
  {
    v33 = *(v20 + 16);
    v34 = __swift_getEnumTagSinglePayload(v27, 1, v28) != 1;
    ParticipantGridView.mediaPipDodgingFrame(for:isFullScreen:)(v33, v34);
  }

  else
  {
    [v5 bounds];
  }

  v35 = v29;
  v36 = v30;
  v37 = v31;
  v38 = v32;
  v39 = *(v20 + 16);
  v40 = ParticipantGridView.mediaPipIsVisible.getter();
  if (v39 == 1)
  {
    v42 = v97;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, v28);
    v44 = v104;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v42, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BA940;
      *(inited + 32) = ParticipantGridView.frameForSingleParticipantView(in:)(v35, v36, v37, v38);
      *(inited + 40) = v46;
      *(inited + 48) = v47;
      *(inited + 56) = v48;
      specialized Array.append<A>(contentsOf:)(inited);
      goto LABEL_31;
    }

    v51 = v90;
    outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
    v52 = swift_initStackObject();
    v53 = v51;
    *(v52 + 16) = xmmword_1BC4BA940;
    v54 = *&v51[*(v28 + 24)];
    if ((v54 | 2) == 3)
    {
      v55 = &v53[*(v28 + 20)];
      v56 = 1.0;
      v57 = 1.0;
      if ((v55[32] & 1) == 0)
      {
        v58 = (v55 + 8);
LABEL_29:
        v57 = *v58;
        v56 = *v55;
      }
    }

    else
    {
      v59 = &v53[*(v28 + 20)];
      v56 = 1.0;
      v57 = 1.0;
      if ((v59[32] & 1) == 0)
      {
        v58 = (v59 + 24);
        v55 = v59 + 16;
        goto LABEL_29;
      }
    }

    [v5 bounds];
    *(v52 + 32) = ParticipantGridView.frameForFullScreenParticipantView(fitting:layoutFrame:shouldUseSafeAreaInsets:forcePortraitSize:remoteVideoOrientation:)(0, 1, v54, 0, v56, v57, v60, v61, v62, v63);
    *(v52 + 40) = v64;
    *(v52 + 48) = v65;
    *(v52 + 56) = v66;
    specialized Array.append<A>(contentsOf:)(v52);
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    goto LABEL_31;
  }

  if (v39)
  {
    if (v40 & 1 | (v39 != 2))
    {
      if (v39 < 3)
      {
        v50 = 0;
        v49 = 1;
      }

      else
      {
        MEMORY[0x1EEE9AC00](v40);
        *(&v89 - 2) = v89;
        v50 = specialized Collection.firstIndex(where:)(partial apply for closure #2 in ParticipantGridView.frames(for:mostProminentIdentifier:focusedIdentifier:fullScreenFocusedParticipantInfo:), (&v89 - 4), v20);
      }

      v41 = ParticipantGridView.framesForParticipantViews(in:frameCount:indexToExpand:)(v39, v50, v49 & 1, v35, v36, v37, v38);
    }

    else
    {
      v41 = ParticipantGridView.framesForParticipantViewPair(in:)(v35, v36, v37, v38);
    }
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  specialized Array.append<A>(contentsOf:)(v41);
  v44 = v104;
LABEL_31:
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v44, 1, v9) == 1)
  {

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v10 + 32))(v102, v44, v9);
    v67 = v106;
    v68 = *(v106 + 16);
    if (v68)
    {
      v105 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68, 0);
      v69 = 0;
      v99 = *(v67 + 16);
      v70 = v105;
      v98 = v20 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      v71 = v10 + 8;
      v91 = v71 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v97 = v68;
      while (v99 != v69)
      {
        if (v69 >= *(v67 + 16))
        {
          goto LABEL_50;
        }

        if (v69 >= *(v20 + 16))
        {
          goto LABEL_51;
        }

        v72 = v67 + 32 * v69;
        v73 = *(v72 + 32);
        v103 = *(v72 + 48);
        v104 = v73;
        v74 = v100;
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        v75 = static UUID.== infix(_:_:)();
        v76 = *v71;
        (*v71)(v74, v101);
        if (v75)
        {
          if (v69 >= v95)
          {
            goto LABEL_52;
          }

          type metadata accessor for ParticipantView(0);
          v77 = swift_dynamicCastClass();
          v78 = v104;
          v79 = v103;
          if (v77)
          {
            [v92 safeAreaInsetFrame];
            *&v78 = ParticipantGridView.frameForSingleParticipantView(in:)(v80, v81, v82, v83);
            *(&v79 + 1) = v84;
            *(&v78 + 1) = v85;
          }
        }

        else
        {
          v78 = v104;
          v79 = v103;
        }

        v105 = v70;
        v87 = *(v70 + 16);
        v86 = *(v70 + 24);
        if (v87 >= v86 >> 1)
        {
          v104 = v78;
          v103 = v79;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1);
          v79 = v103;
          v78 = v104;
          v70 = v105;
        }

        ++v69;
        *(v70 + 16) = v87 + 1;
        v88 = v70 + 32 * v87;
        *(v88 + 32) = v78;
        *(v88 + 48) = v79;
        if (v97 == v69)
        {

          v9 = v101;
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
    }

    else
    {

      v76 = *(v10 + 8);
      v70 = MEMORY[0x1E69E7CC0];
LABEL_48:
      v106 = v70;
      v76(v102, v9);
    }
  }
}

id ParticipantGridView.updateStartingFrame(for:with:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MidX = CGRectGetMidX(*&a2);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  MidY = CGRectGetMidY(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  v12 = floor(CGRectGetWidth(v16) * 0.75);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  [a1 setFrame_];
  [a1 setAlpha_];

  return [a1 setNeedsLayout];
}

uint64_t closure #3 in ParticipantGridView.transition(to:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:layoutStyle:animationStyle:forced:)(char *a1, uint64_t a2)
{
  v4 = *&a1[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles];
  *(swift_allocObject() + 16) = a1;

  v5 = a1;
  ParticipantGridView.updateParticipantTiles(_:with:block:)(v4, a2, partial apply for closure #1 in closure #3 in ParticipantGridView.transition(to:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:layoutStyle:animationStyle:forced:));
}

void closure #1 in closure #3 in ParticipantGridView.transition(to:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:layoutStyle:animationStyle:forced:)(char *a1, char *a2)
{
  v126 = a1;
  v3 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  v117 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v129 = v108 - v7;
  v8 = type metadata accessor for UUID();
  v112 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v118 = v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v10);
  v116 = v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v108 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v122 = v108 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v108 - v18;
  v20 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v110 = v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v113 = v108 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v114 = v108 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v125 = v108 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v132 = v108 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v111 = v108 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v119 = v108 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v124 = (v108 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v123 = v108 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = v108 - v42;
  v120 = v3;
  v121 = *&v126[*(v3 + 20)];
  [v121 setAlpha_];
  outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
  v44 = *(v112 + 32);
  v127 = v22;
  v130 = v44;
  v131 = v112 + 32;
  v44(v43, v22, v8);
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v8);
  swift_beginAccess();
  v128 = v10;
  v45 = *(v10 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v8);
  v47 = &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView;
  v133 = v8;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (__swift_getEnumTagSinglePayload(&v19[v45], 1, v133) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v48 = v123;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(&v19[v45], 1, v133) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v112 + 8))(v48, v133);
LABEL_6:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_15;
  }

  v49 = v118;
  v130(v118, &v19[v45], v133);
  _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = v133;
  LODWORD(v115) = v50;
  v52 = *(v112 + 8);
  v52(v49, v133);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v52(v48, v51);
  v47 = &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v115)
  {
LABEL_8:
    v53 = v127;
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    v54 = v124;
    v55 = v133;
    v130(v124, v53, v133);
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v55);
    swift_beginAccess();
    v56 = *(v128 + 48);
    v57 = v122;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v57, 1, v55) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v54, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (__swift_getEnumTagSinglePayload(v57 + v56, 1, v133) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v47 = &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView;
        goto LABEL_15;
      }
    }

    else
    {
      v58 = v119;
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      if (__swift_getEnumTagSinglePayload(v57 + v56, 1, v133) != 1)
      {
        v100 = v118;
        v130(v118, (v57 + v56), v133);
        _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v101 = dispatch thunk of static Equatable.== infix(_:_:)();
        v102 = v133;
        v103 = v101;
        v104 = v57;
        v105 = *(v112 + 8);
        v105(v100, v133);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v124, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v105(v58, v102);
        v47 = &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v104, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        if (v103)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v124, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v112 + 8))(v58, v133);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v47 = &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView;
LABEL_14:
    [a2 bringSubviewToFront_];
    [a2 bringSubviewToFront_];
  }

LABEL_15:
  v59 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles;
  v60 = *&a2[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles];
  v61 = *(v60 + 16);
  v126 = a2;
  v115 = v5;
  if (!v61)
  {
    goto LABEL_27;
  }

  v109 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles;
  v62 = v47[125];
  v119 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_unfocusedParticipantOverlay;
  v63 = v117;
  v64 = v60 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
  v108[1] = v60;

  v65 = a2;
  swift_beginAccess();
  v124 = (v112 + 8);
  v66 = *(v63 + 72);
  v123 = v66;
  v122 = v62;
  do
  {
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    v67 = v127;
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    v68 = v132;
    v69 = v133;
    v130(v132, v67, v133);
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v69);
    v70 = *(v128 + 48);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v14, 1, v69) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v132, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (__swift_getEnumTagSinglePayload(&v14[v70], 1, v133) != 1)
      {
        goto LABEL_22;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_24:
      [v65 bringSubviewToFront_];
      [v65 bringSubviewToFront_];
      goto LABEL_25;
    }

    v71 = v132;
    v72 = v14;
    v73 = v125;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v72 + v70, 1, v133) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*v124)(v73, v133);
      v14 = v72;
      v66 = v123;
LABEL_22:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
      goto LABEL_25;
    }

    v74 = v118;
    v130(v118, (v72 + v70), v133);
    _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    LODWORD(v121) = dispatch thunk of static Equatable.== infix(_:_:)();
    v75 = *v124;
    (*v124)(v74, v133);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v75(v73, v133);
    v65 = v126;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v72, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v14 = v72;
    v66 = v123;
    if (v121)
    {
      goto LABEL_24;
    }

LABEL_25:
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    v64 += v66;
    --v61;
  }

  while (v61);

  v47 = &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView;
  v59 = v109;
  a2 = v65;
  v5 = v115;
LABEL_27:
  v76 = v47[125];
  swift_beginAccess();
  v77 = v111;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v78 = __swift_getEnumTagSinglePayload(v77, 1, v133);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v77, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v78 == 1)
  {
LABEL_44:
    v106 = v110;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v107 = __swift_getEnumTagSinglePayload(v106, 1, v133) == 1;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v106, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    ParticipantGridView.setOverlayHidden(_:)(v107);
    return;
  }

  v79 = *&a2[v59];
  v129 = *(v79 + 16);
  if (!v129)
  {
LABEL_40:
    [a2 bringSubviewToFront_];
    goto LABEL_44;
  }

  v132 = v76;
  v125 = (v79 + ((*(v117 + 80) + 32) & ~*(v117 + 80)));
  v124 = (v112 + 8);

  v81 = 0;
  v82 = v114;
  while (v81 < *(v80 + 16))
  {
    v83 = v80;
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    v84 = v127;
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    v85 = v133;
    v130(v82, v84, v133);
    __swift_storeEnumTagSinglePayload(v82, 0, 1, v85);
    v86 = v5;
    v87 = *(v128 + 48);
    v88 = v116;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v88, 1, v85) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v82, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v89 = __swift_getEnumTagSinglePayload(v88 + v87, 1, v133);
      v90 = v88;
      v5 = v86;
      if (v89 == 1)
      {

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v90, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        goto LABEL_44;
      }

      goto LABEL_36;
    }

    v91 = v113;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v88 + v87, 1, v133) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v82, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v90 = v88;
      v5 = v115;
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      (*v124)(v91, v133);
LABEL_36:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v90, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
      v80 = v83;
      goto LABEL_38;
    }

    v92 = v91;
    v93 = v118;
    v130(v118, (v88 + v87), v133);
    _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v94 = dispatch thunk of static Equatable.== infix(_:_:)();
    v95 = v133;
    LODWORD(v123) = v94;
    v96 = v88;
    v97 = *v124;
    (*v124)(v93, v133);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v114, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v98 = v115;
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    v99 = v92;
    v82 = v114;
    v97(v99, v95);
    v5 = v98;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v96, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v80 = v83;
    if (v123)
    {

      goto LABEL_44;
    }

LABEL_38:
    ++v81;
    a2 = v126;
    if (v129 == v81)
    {

      goto LABEL_40;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall ParticipantGridView.setOverlayHidden(_:)(Swift::Bool a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v7 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v2 = static OS_dispatch_queue.main.getter();
  v8 = OUTLINED_FUNCTION_61_0();
  v9(v8);
  _dispatchPreconditionTest(_:)();
  v10 = OUTLINED_FUNCTION_59_7();
  v11(v10, v5);
  if (v7)
  {
    ParticipantDimmingView.setHidden(_:)(a1);
    v12 = v3 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
    OUTLINED_FUNCTION_4_0(v3 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate, v15);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      (*(v13 + 72))(v3, a1, ObjectType, v13);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void ParticipantGridView.updateParticipantTiles(_:with:block:)(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v29 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  v27[1] = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit19ParticipantGridViewC012IdentifiableD4Tile33_C3C0D7D8F62A84253427EC61D899943ELLV7elementtMd, &_sSi6offset_15ConversationKit19ParticipantGridViewC012IdentifiableD4Tile33_C3C0D7D8F62A84253427EC61D899943ELLV7elementtMR);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v27 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit19ParticipantGridViewC012IdentifiableD4Tile33_C3C0D7D8F62A84253427EC61D899943ELLV7elementtSgMd, &_sSi6offset_15ConversationKit19ParticipantGridViewC012IdentifiableD4Tile33_C3C0D7D8F62A84253427EC61D899943ELLV7elementtSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v27 - v15);
  v17 = 0;
  v27[2] = a1;
  v18 = *(a1 + 16);
  v30 = a2;
  v28 = a2 + 32;
  while (1)
  {
    if (v17 == v18)
    {
      v19 = 1;
      v17 = v18;
    }

    else
    {
      if (v17 >= v18)
      {
        goto LABEL_18;
      }

      if (__OFADD__(v17, 1))
      {
        goto LABEL_19;
      }

      *v10 = v17;
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      outlined init with take of CaptionSectioner.SpeakerSection?();
      v19 = 0;
      ++v17;
    }

    __swift_storeEnumTagSinglePayload(v13, v19, 1, v8);
    outlined init with take of CaptionSectioner.SpeakerSection?();
    if (__swift_getEnumTagSinglePayload(v16, 1, v8) == 1)
    {
      return;
    }

    v20 = *v16;
    outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
    if ((v20 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v20 >= *(v30 + 16))
    {
      goto LABEL_17;
    }

    v21 = (v28 + 32 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    v25 = v21[3];
    v26 = *&v7[*(v29 + 20)];
    [v26 frame];
    v32.origin.x = v22;
    v32.origin.y = v23;
    v32.size.width = v24;
    v32.size.height = v25;
    if (!CGRectEqualToRect(v31, v32))
    {
      [v26 setFrame_];
    }

    if (a3)
    {
      a3(v7);
    }

    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

void ParticipantGridView.startAnimations(_:animationStyle:completion:)(uint64_t (*a1)(), void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v13 = *(&v6->super.super.isa + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_mostRecentAnimationIndex);
  v14 = (v13 + 1);
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v8 = a2;
  v9 = a1;
  *(&v6->super.super.isa + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_mostRecentAnimationIndex) = v14;
  v5 = swift_allocObject();
  *(v5 + 16) = v11;
  *(v5 + 24) = v10;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v11, v10);
  if (one-time initialization token for shared != -1)
  {
LABEL_17:
    swift_once();
  }

  if (((*(*static Defaults.shared + 600))() & 1) != 0 && (v15 = [(UIView *)v7 snapshotViewAfterScreenUpdates:0]) != 0)
  {
    v16 = v15;
    [(UIView *)v7 addSubview:v15];
    UIView.addConstraintsToFill(_:insets:)(v7, *MEMORY[0x1E69DC5C0]);
    [(UIView *)v16 layoutIfNeeded];
    v17 = swift_allocObject();
    v17[2] = v11;
    v17[3] = v10;
    v17[4] = v16;
    *(v5 + 16) = partial apply for closure #1 in ParticipantGridView.startAnimations(_:animationStyle:completion:);
    *(v5 + 24) = v17;
    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v11, v10);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v11, v10);
LABEL_7:
    v18 = objc_allocWithZone(MEMORY[0x1E69DD278]);
    isa = @nonobjc UIViewPropertyAnimator.init(duration:curve:animations:)(2, 0, 0, 0.00001);
  }

  else
  {
    switch(v12)
    {
      case 1:
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewPropertyAnimator, 0x1E69DD278);
        *&cubicAnimationParameters.duration = xmmword_1BC4CDBA0;
        *&cubicAnimationParameters.controlPoint1.y = xmmword_1BC4CDBB0;
        v22 = 0.995;
        goto LABEL_11;
      case 2:
        v20 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) init];
        v21 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v20 timingParameters:0.0];

        goto LABEL_13;
      case 3:
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewPropertyAnimator, 0x1E69DD278);
        *&cubicAnimationParameters.duration = xmmword_1BC4CDB80;
        *&cubicAnimationParameters.controlPoint1.y = xmmword_1BC4CDB90;
        v22 = 1.005;
LABEL_11:
        cubicAnimationParameters.controlPoint2.y = v22;
        isa = UIViewPropertyAnimator.init(cubicAnimationParameters:)(&cubicAnimationParameters).super.isa;
        break;
      default:
        goto LABEL_7;
    }
  }

  v21 = isa;
LABEL_13:
  v38 = v9;
  v39 = v8;
  v34 = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = thunk for @escaping @callee_guaranteed () -> ();
  v37 = &block_descriptor_91;
  v23 = _Block_copy(&v34);
  v24 = v21;

  [v24 addAnimations_];
  _Block_release(v23);
  v25 = swift_allocObject();
  v25[2] = v7;
  v25[3] = v14;
  v25[4] = v5;
  v38 = partial apply for closure #2 in ParticipantGridView.startAnimations(_:animationStyle:completion:);
  v39 = v25;
  v34 = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
  v37 = &block_descriptor_97;
  v26 = _Block_copy(&v34);
  v27 = v7;

  [v24 addCompletion_];
  _Block_release(v26);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v28 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BC4BA940;
  v34 = v14;
  v30 = String.init<A>(reflecting:)();
  v32 = v31;
  *(v29 + 56) = MEMORY[0x1E69E6158];
  *(v29 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v33 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Starting grid view animation %@", 31, 2, &dword_1BBC58000, v28, v33, v29);

  [v24 startAnimation];
}

void ParticipantGridView.updateParticipantView(for:with:hasOtherInvitedParticipants:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v47 = v3;
  LODWORD(v48) = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v46 = v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelOSgMd, &_s15ConversationKit20ParticipantViewModelOSgMR);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v45 - v12;
  v14 = type metadata accessor for ParticipantViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_78_4();
  v20 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  v24 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  (*(v22 + 104))(v1, *MEMORY[0x1E69E8020], v20);
  _dispatchPreconditionTest(_:)();
  v25 = OUTLINED_FUNCTION_60_9();
  v26(v25, v20);
  if (v24)
  {
    v27 = ParticipantGridView.showsMostActiveTreatment(for:totalParticipantCount:)(v6, *(*&v2[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles] + 16));
    type metadata accessor for Participant(0);
    v28 = OUTLINED_FUNCTION_70_4();
    v29 = ParticipantGridView.tile(for:ofAClass:)(&v2[v6], v28);
    if (v29)
    {
      v30 = v29;
      v31 = swift_dynamicCastClass();
      if (!v31)
      {
        goto LABEL_18;
      }

      v32 = v31;
      ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(v31, &protocol witness table for ParticipantView, v6, v27 & 1, v48 & 1, 0, v13);
      OUTLINED_FUNCTION_115(v13, 1, v14);
      if (!v33)
      {
        outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload != 1)
          {
            v39 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMR) + 48);
            v48 = *v39;
            v40 = *(v39 + 72);
            v41 = *(v39 + 80);
            v42 = *(v39 + 88);
            v45[0] = *(v39 + 96);
            v45[1] = v42;

            outlined consume of (title: String, subtitle: String?)?(v40, v41);
            ParticipantView.setInfoViewIsVisible(_:animated:)(0, 1);
            OUTLINED_FUNCTION_35_12();
            v38 = v47;
            v37 = v46;
            goto LABEL_13;
          }

          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMR);
          v36 = *(v35 + 48);
          outlined destroy of ParticipantVideoOverlayView.ViewModel(v18 + *(v35 + 64));
        }

        else
        {
          v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMR) + 48);
        }

        v37 = v46;
        outlined destroy of ParticipantVideoView.ViewModel(v18 + v36);
        OUTLINED_FUNCTION_35_12();
        v38 = v47;
        ParticipantView.setInfoViewIsVisible(_:animated:)(v47 & 1, 1);
LABEL_13:
        OUTLINED_FUNCTION_4_0(&v2[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_fullScreenFocusedParticipantInfo], &v49);
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        v43 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v43);
        OUTLINED_FUNCTION_33_3(v37);
        if (EnumTagSinglePayload != 1)
        {
          ParticipantGridView.updateParticipantViewFrames()();
        }

        if (v38)
        {
          [v2 bringSubviewToFront_];

          OUTLINED_FUNCTION_34_20();
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_34_20();
LABEL_18:

        goto LABEL_19;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s15ConversationKit20ParticipantViewModelOSgMd, &_s15ConversationKit20ParticipantViewModelOSgMR);
    }

LABEL_19:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  __break(1u);
}

uint64_t ParticipantGridView.showsMostActiveTreatment(for:totalParticipantCount:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v17 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle;
  swift_beginAccess();
  if (*(v2 + v17) != 1 || a2 < 2)
  {
    goto LABEL_11;
  }

  v19 = *(type metadata accessor for Participant(0) + 20);
  v26 = v6;
  (*(v6 + 16))(v16, a1 + v19, v5);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v5);
  swift_beginAccess();
  v20 = *(v8 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v10, 1, v5) != 1)
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(&v10[v20], 1, v5) != 1)
    {
      v24 = v26;
      v23 = v27;
      (*(v26 + 32))(v27, &v10[v20], v5);
      _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v24 + 8);
      v25(v23, v5);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v25(v13, v5);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return v21 & 1;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v26 + 8))(v13, v5);
    goto LABEL_10;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (__swift_getEnumTagSinglePayload(&v10[v20], 1, v5) != 1)
  {
LABEL_10:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
LABEL_11:
    v21 = 0;
    return v21 & 1;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v21 = 1;
  return v21 & 1;
}

id ParticipantGridView.tile(for:ofAClass:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC012IdentifiableC4Tile33_C3C0D7D8F62A84253427EC61D899943ELLVSgMd, &_s15ConversationKit19ParticipantGridViewC012IdentifiableC4Tile33_C3C0D7D8F62A84253427EC61D899943ELLVSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-v7];
  v9 = *(v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles);
  v15 = a1;
  v16 = a2;

  specialized Sequence.first(where:)(partial apply for closure #1 in ParticipantGridView.tile(for:ofAClass:), v9, v8);

  v10 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  OUTLINED_FUNCTION_115(v8, 1, v10);
  if (v11)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit19ParticipantGridViewC012IdentifiableC4Tile33_C3C0D7D8F62A84253427EC61D899943ELLVSgMd, &_s15ConversationKit19ParticipantGridViewC012IdentifiableC4Tile33_C3C0D7D8F62A84253427EC61D899943ELLVSgMR);
    return 0;
  }

  else
  {
    v12 = *&v8[*(v10 + 20)];
    OUTLINED_FUNCTION_0_117();
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
  }

  return v12;
}

uint64_t ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v250 = a6;
  LODWORD(v270) = a5;
  LODWORD(v260) = a4;
  v236 = a2;
  v271 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v246 = &v230 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v262 = &v230 - v14;
  v15 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v249 = &v230 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v253 = &v230 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v254 = &v230 - v20;
  v272 = type metadata accessor for UUID();
  v269 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v272);
  v245 = &v230 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  ty = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR));
  MEMORY[0x1EEE9AC00](*&ty);
  v241 = &v230 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v240 = &v230 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v230 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v238 = &v230 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v243 = &v230 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v237 = &v230 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v242 = &v230 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v255 = &v230 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v230 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v230 - v42;
  v266 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v266);
  v252 = &v230 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v248 = &v230 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v247 = &v230 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v230 - v50;
  v52 = type metadata accessor for ParticipantViewModel(0);
  MEMORY[0x1EEE9AC00](v52);
  v261 = &v230 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v258.i64[0] = &v230 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v259 = &v230 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v230 - v59;
  v244 = type metadata accessor for ParticipantView(0);
  v274 = swift_dynamicCastClass();
  if (v274)
  {
    v273 = a3;
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    v61 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership;
    swift_beginAccess();
    LODWORD(v61) = *(v8 + v61);
    v257 = a1;
    ParticipantViewModel.init(participant:videoProviderType:isInGrid:isMostActive:isPipped:isPreviewingReaction:hasOtherInvitedParticipants:isLocalMemberAuthorizedToChangeGroupMembership:prefersSnapshotFadeAnimation:snapshotImage:allowsVideoCroppedByAspectRatio:shouldRegisterVideoLayers:)(v51, 0, v260 & 1, 0, 0, v270 & 1, v61, v60, 1u, 0, 1u, 1u);
    LODWORD(a1) = ParticipantGridView.isOneToOneMode.getter();
    v62 = v8 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v232 = v62;
    if (Strong)
    {
      v64 = *(v62 + 8);
      ObjectType = swift_getObjectType();
      (*(v64 + 80))(v277, ObjectType, v64);
      swift_unknownObjectRelease();
      v66 = LOBYTE(v277[0]) != 2;
    }

    else
    {
      v66 = 1;
    }

    v256 = v66;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v239 = type metadata accessor for Logger();
    __swift_project_value_buffer(v239, &static Log.default);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    v71 = os_log_type_enabled(v69, v70);
    v264 = v8;
    v268 = a1;
    if (v71)
    {
      a1 = swift_slowAlloc();
      *a1 = 67109120;
      *(a1 + 4) = v268 & 1;
      _os_log_impl(&dword_1BBC58000, v69, v70, "Grid configure with isOneToOneMode = %{BOOL}d", a1, 8u);
      v72 = a1;
      LOBYTE(a1) = v268;
      v8 = v264;
      MEMORY[0x1BFB23DF0](v72, -1, -1);
    }

    v270 = v60;

    ParticipantGridView.updateCornerRadius(for:isOneToOneMode:)(v274, a1 & v256);
    v74 = v269 + 16;
    v73 = *(v269 + 16);
    v75 = v272;
    v234 = *(v266 + 20);
    v235 = v73;
    v73(v43, v273 + v234, v272);
    v76 = 1;
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v75);
    v77 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_fullScreenFocusedParticipantInfo;
    swift_beginAccess();
    v251 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
    if (!__swift_getEnumTagSinglePayload(v8 + v77, 1, v251))
    {
      v235(v40, v8 + v77, v75);
      v76 = 0;
    }

    v231 = v74;
    v233 = v77;
    __swift_storeEnumTagSinglePayload(v40, v76, 1, v75);
    v78 = *(*&ty + 48);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v27, 1, v75) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (__swift_getEnumTagSinglePayload(&v27[v78], 1, v75) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v267 = 1;
        goto LABEL_21;
      }
    }

    else
    {
      v79 = v255;
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      if (__swift_getEnumTagSinglePayload(&v27[v78], 1, v75) != 1)
      {
        v80 = v269;
        v81 = v245;
        (*(v269 + 32))(v245, &v27[v78], v75);
        _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v267 = dispatch thunk of static Equatable.== infix(_:_:)();
        v82 = v52;
        v83 = *(v80 + 8);
        v83(v81, v272);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v83(v255, v272);
        v52 = v82;
        v75 = v272;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_21:
        v84 = v270;
        v85 = v273;
        ParticipantGridView.transformModelIfNeeded(_:for:)(v259);
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
        v86 = v258.i64[0];
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        v265 = v52;
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v88 = &unk_1EDDB5000;
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload != 1)
          {
            v96 = v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMR) + 48);
            v97 = *v96;
            v98 = *(v96 + 72);
            v99 = *(v96 + 80);

            v100 = v98;
            v101 = v264;
            outlined consume of (title: String, subtitle: String?)?(v100, v99);
            outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
            if ([*(v101 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_featureFlags) uPlusOneFullBleedHandoffEnabled])
            {
              v102 = v265;
              v84 = v270;
              v103 = v261;
              v85 = v273;
              v104 = v268;
              v105 = v251;
              if ((v268 & 1) == 0)
              {
                outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                goto LABEL_95;
              }

              if (ParticipantGridView.shouldShowLastFrameUI.getter())
              {

                ParticipantGridView.VideoInfoCache.info(for:)(v85, &v284);

                a = v284.a;
                if (*&v284.a)
                {
                  v258 = *&v284.b;
                  d = v284.d;
                  tx_low = LOBYTE(v284.tx);
                  ty = v284.ty;
                  v266 = v285;
                  v269 = v286;
                  v272 = v287;
                  v109 = v289;
                  v110 = v288;
                  specialized Dictionary.subscript.getter();
                  v111 = v262;
                  if (*(&v277[1] + 1))
                  {
                    outlined init with take of TapInteractionHandler(v277, &aBlock);
                    outlined init with copy of IDSLookupManager(&aBlock, v277);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd, &_s15ConversationKit24ParticipantVideoProvider_pMR);
                    type metadata accessor for RemoteParticipantVideoProvider();
                    if (swift_dynamicCast() & 1) != 0 && (m11 = v278.m11, v113 = (*((*MEMORY[0x1E69E7D40] & **&v278.m11) + 0x160))(), *&m11, (v113))
                    {
                      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v284, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
                      __swift_destroy_boxed_opaque_existential_1(&aBlock);
                      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                      v102 = v265;
                      v84 = v270;
                    }

                    else
                    {
                      v207 = v110 | (v109 << 16);
                      outlined init with copy of IDSLookupManager(&aBlock, v277);
                      CGAffineTransformMakeRotation(v275, 0.0);
                      CATransform3DMakeAffineTransform(&v278, v275);
                      memcpy(&v277[2] + 8, &v278, 0x80uLL);
                      DWORD2(v277[10]) = 16842753;
                      v208 = v85;
                      v209 = v264;
                      if (closure #1 in ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(&aBlock, v264))
                      {
                        v210 = v270;
                        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                        v211 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMR) + 48);
                        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
                        outlined init with copy of ParticipantVideoView.ViewModel(v277, v210 + v211);
                        v102 = v265;
                        swift_storeEnumTagMultiPayload();
                        *v275 = a;
                        *&v275[8] = v258.i64[0] & 0x101010103010101;
                        *&v275[16] = v258.i16[4] & 0x101;
                        *&v275[24] = d;
                        *&v275[32] = tx_low & 3;
                        *&v275[40] = ty;
                        v84 = v210;
                        *&v275[48] = v266;
                        *&v275[56] = v269;
                        *&v275[64] = v272;
                        v275[74] = (v207 & 0x10101u) >> 16;
                        *&v275[72] = v207 & 0x101;
                        v212 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
                        swift_beginAccess();
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        v276 = *(v209 + v212);
                        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v275, v208 + v234, isUniquelyReferenced_nonNull_native, v214, v215, v216, v217, v218, v230, v231, v232, v233);
                        *(v209 + v212) = v276;
                        swift_endAccess();
                        ParticipantGridView.scheduleUpdateToPausedHandoffOverlay(on:for:isMostActive:)(v257, v236, v208, v260 & 1);
                        outlined destroy of ParticipantVideoView.ViewModel(v277);
                        __swift_destroy_boxed_opaque_existential_1(&aBlock);
                        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                      }

                      else
                      {
                        *v275 = a;
                        *&v275[8] = vandq_s8(v258, xmmword_1BC4CDBC0);
                        *&v275[24] = d;
                        *&v275[32] = tx_low & 3;
                        *&v275[40] = ty;
                        *&v275[48] = v266;
                        *&v275[56] = v269;
                        *&v275[64] = v272;
                        *&v275[72] = v110 & 0x101;
                        v275[74] = (v207 & 0x10101 | 0x800000u) >> 16;
                        v219 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
                        swift_beginAccess();
                        v220 = swift_isUniquelyReferenced_nonNull_native();
                        v276 = *(v209 + v219);
                        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v275, v208 + v234, v220, v221, v222, v223, v224, v225, v230, v231, v232, v233);
                        *(v209 + v219) = v276;
                        swift_endAccess();
                        v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMR);
                        v227 = *(v226 + 48);
                        v228 = v259;
                        v229 = v259 + *(v226 + 64);
                        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
                        outlined init with copy of ParticipantVideoView.ViewModel(v277, v228 + v227);
                        *(v229 + 24) = &type metadata for ImageNames.ParticipantView;
                        *(v229 + 32) = &protocol witness table for ImageNames.ParticipantView;
                        *v229 = 8;
                        outlined destroy of ParticipantVideoView.ViewModel(v277);
                        __swift_destroy_boxed_opaque_existential_1(&aBlock);
                        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                        v84 = v270;
                        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                        *(v229 + 40) = 0;
                        *(v229 + 48) = 0;
                        *(v229 + 104) = 1;
                        v102 = v265;
                        swift_storeEnumTagMultiPayload();
                        outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
                      }
                    }

                    v103 = v261;
                    LOBYTE(v104) = v268;
                    goto LABEL_95;
                  }

                  outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v284, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
                  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v277, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
                  v84 = v270;
                  v103 = v261;
                  v101 = v264;
                }

                else
                {
                  outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                  v111 = v262;
                }

                v105 = v251;
              }

              else
              {
                outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                v111 = v262;
              }
            }

            else
            {
              outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
              v102 = v265;
              v84 = v270;
              v103 = v261;
              v111 = v262;
              v85 = v273;
              v104 = v268;
              v105 = v251;
              if ((v268 & 1) == 0)
              {
                goto LABEL_95;
              }
            }

LABEL_72:
            outlined init with copy of [CaptionSectioner.SpeakerSection]();
            if (__swift_getEnumTagSinglePayload(v111, 1, v105))
            {
              v165 = v85;
              v166 = v246;
              outlined init with copy of [CaptionSectioner.SpeakerSection]();
              ParticipantGridView.fullScreenFocusedParticipantInfo.setter(v166, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR, &OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_fullScreenFocusedParticipantInfo, ParticipantGridView.fullScreenFocusedParticipantInfo.didset);
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v111, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
              v167 = v256;
              v168 = v232;
            }

            else
            {
              v165 = v85;
              Participant.videoInfo.getter();
              if (*&v278.m11)
              {
                m21_low = LOBYTE(v278.m21);
                outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v278, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
              }

              else
              {
                m21_low = 0;
              }

              v167 = v256;
              v168 = v232;
              v170 = v262;
              v262[*(v105 + 28)] = m21_low;
              ParticipantGridView.fullScreenFocusedParticipantInfo.setter(v170, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR, &OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_fullScreenFocusedParticipantInfo, ParticipantGridView.fullScreenFocusedParticipantInfo.didset);
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              v171 = *(v168 + 8);
              v172 = swift_getObjectType();
              v173 = (*(v171 + 112))(v172, v171);
              v175 = v174;
              swift_unknownObjectRelease();
              v176 = 1;
              if ((v175 & 1) == 0 && !v173)
              {
                v176 = *(v101 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceOrientation);
              }
            }

            else
            {
              v176 = 1;
            }

            v177 = v252;
            outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
            v178 = 0.0;
            if (static Platform.current.getter() == 3 || v167)
            {
              closure #2 in ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(v176, v177);
              v178 = v179;
            }

            outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
            CGAffineTransformMakeRotation(&v283, v178);
            v180 = v283.a;
            b = v283.b;
            c = v283.c;
            v183 = v283.d;
            tx = v283.tx;
            v185 = v283.ty;
            v186 = swift_allocObject();
            *(v186 + 16) = v274;
            v187 = *&v283.c;
            *(v186 + 24) = *&v283.a;
            *(v186 + 40) = v187;
            *(v186 + 56) = *&v283.tx;
            v188 = v257;
            Participant.videoInfo.getter();
            if (*&v277[0] && (v189 = BYTE10(v277[4]), outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v277, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR), (v189 & v104 & 1) != 0) && [*(v101 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_featureFlags) afbEnabled])
            {
              v190 = v101 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_rdarRemoteOrientation;
              if (*(v101 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_rdarRemoteOrientation + 8) == 1)
              {
                *v190 = ParticipantGridView.orientation(for:default:)(v165, 1);
                *(v190 + 8) = 0;
              }

              v191 = v274;
              v280.receiver = v274;
              v192 = v244;
              v280.super_class = v244;
              aBlock = v180;
              v291 = *&b;
              v292 = *&c;
              v293 = v183;
              v294 = *&tx;
              v295 = v185;
              objc_msgSendSuper2(&v280, sel_setTransform_, &aBlock);
              v279.receiver = v191;
              v279.super_class = v192;
              objc_msgSendSuper2(&v279, sel_transform);
              ParticipantView.updateOverlayTransforms(with:)(&aBlock);
              v193 = ParticipantGridView.orientation(for:default:)(v165, 1);

              *v190 = v193;
              *(v190 + 8) = 0;
            }

            else if (v250)
            {
              v194 = objc_opt_self();
              v294 = partial apply for closure #3 in ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:);
              v295 = *&v186;
              aBlock = MEMORY[0x1E69E9820];
              v291 = 1107296256;
              v292 = thunk for @escaping @callee_guaranteed () -> ();
              v293 = COERCE_DOUBLE(&block_descriptor_73);
              v195 = _Block_copy(&aBlock);

              [v194 animateWithDuration:v195 animations:0.4];

              _Block_release(v195);
            }

            else
            {
              v196 = v274;
              v282.receiver = v274;
              v197 = v244;
              v282.super_class = v244;
              aBlock = v180;
              v291 = *&b;
              v292 = *&c;
              v293 = v183;
              v294 = *&tx;
              v295 = v185;
              objc_msgSendSuper2(&v282, sel_setTransform_, &aBlock);
              v281.receiver = v196;
              v281.super_class = v197;
              objc_msgSendSuper2(&v281, sel_transform);
              ParticipantView.updateOverlayTransforms(with:)(&aBlock);
            }

            v102 = v265;
LABEL_95:
            ParticipantView.configure(with:isOneToOneMode:)(v84, v104 & 1);
            ParticipantView.updateGradientOverlayView(isHidden:alpha:)((v267 & 1) == 0, 0, 1);
            outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
            v198 = swift_getEnumCaseMultiPayload();
            if (v198)
            {
              if (v198 != 1)
              {
                v201 = &v103[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMR) + 48)];
                v202 = *v201;
                v203 = *(v201 + 9);
                v204 = *(v201 + 10);

                v205 = v204;
                v102 = v265;
                outlined consume of (title: String, subtitle: String?)?(v203, v205);
                UIView.removeTapInteractions(withTapCount:)(2);

                outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                goto LABEL_101;
              }

              v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMR);
              v200 = *(v199 + 48);
              outlined destroy of ParticipantVideoOverlayView.ViewModel(&v103[*(v199 + 64)]);
            }

            else
            {
              v200 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMR) + 48);
            }

            outlined destroy of ParticipantVideoView.ViewModel(&v103[v200]);
            outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
            UIView.addTapInteraction(withTapCount:)(2);

LABEL_101:
            v206 = v271;
            outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
            return __swift_storeEnumTagSinglePayload(v206, 0, 1, v102);
          }

          v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMR);
          v90 = (v86 + *(v89 + 48));
          v91 = *(v89 + 64);
          outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
          memcpy(v277, v90, 0xA8uLL);
          v92 = v90[168];
          memcpy(v275, (v86 + v91), sizeof(v275));
          if (v267)
          {
            CGAffineTransformMakeRotation(&v278, 1.57079633);
            *&v284.a = *&v278.m11;
            *&v284.c = *&v278.m13;
            *&v284.tx = *&v278.m21;
            CATransform3DMakeAffineTransform(&v278, &v284);
            v93 = 0;
            v85 = v273;
          }

          else
          {
            memcpy(&v278, v90 + 40, sizeof(v278));
            v85 = v273;
            if (v92)
            {
              v260 = v89;
              v114 = v243;
              v235(v243, v273 + v234, v75);
              __swift_storeEnumTagSinglePayload(v114, 0, 1, v75);
              swift_beginAccess();
              v115 = *(*&ty + 48);
              v116 = v241;
              outlined init with copy of [CaptionSectioner.SpeakerSection]();
              outlined init with copy of [CaptionSectioner.SpeakerSection]();
              if (__swift_getEnumTagSinglePayload(v116, 1, v75) == 1)
              {
                outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v114, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v116 + v115, 1, v75);
                v118 = v239;
                v88 = &unk_1EDDB5000;
                v89 = v260;
                if (EnumTagSinglePayload == 1)
                {
                  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v116, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  v93 = 0;
LABEL_48:
                  if (v88[1] != -1)
                  {
                    swift_once();
                  }

                  __swift_project_value_buffer(v118, static Logger.participant);
                  outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
                  v126 = Logger.logObject.getter();
                  v127 = static os_log_type_t.info.getter();
                  if (os_log_type_enabled(v126, v127))
                  {
                    v128 = swift_slowAlloc();
                    v129 = swift_slowAlloc();
                    aBlock = *&v129;
                    *v128 = 67109378;
                    *(v128 + 4) = v267 & 1;
                    *(v128 + 8) = 2080;
                    _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
                    v130 = dispatch thunk of CustomStringConvertible.description.getter();
                    v132 = v131;
                    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                    v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v132, &aBlock);

                    *(v128 + 10) = v133;
                    _os_log_impl(&dword_1BBC58000, v126, v127, "overlay participant isFullScreenParticipant: %{BOOL}d. participant: %s", v128, 0x12u);
                    __swift_destroy_boxed_opaque_existential_1(v129);
                    MEMORY[0x1BFB23DF0](v129, -1, -1);
                    MEMORY[0x1BFB23DF0](v128, -1, -1);
                  }

                  else
                  {

                    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                  }

                  v84 = v270;
                  outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                  v103 = v261;
                  v134 = v84 + *(v89 + 48);
                  v135 = *(v89 + 64);
                  outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
                  v136 = v277[1];
                  *v134 = v277[0];
                  *(v134 + 16) = v136;
                  *(v134 + 32) = *&v277[2];
                  memcpy((v134 + 40), &v278, 0x80uLL);
                  *(v134 + 168) = v93 & 1;
                  *(v134 + 169) = 256;
                  *(v134 + 171) = 0;
                  memcpy((v84 + v135), v275, 0x69uLL);
                  v102 = v265;
                  swift_storeEnumTagMultiPayload();
                  v101 = v264;
                  goto LABEL_71;
                }
              }

              else
              {
                v137 = v238;
                outlined init with copy of [CaptionSectioner.SpeakerSection]();
                if (__swift_getEnumTagSinglePayload(v116 + v115, 1, v75) != 1)
                {
                  v139 = v269;
                  v140 = v116 + v115;
                  v141 = v116;
                  v142 = v245;
                  (*(v269 + 32))(v245, v140, v75);
                  _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
                  v143 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v144 = *(v139 + 8);
                  v144(v142, v75);
                  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v243, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  v144(v137, v75);
                  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v141, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  v93 = v143 ^ 1;
                  v118 = v239;
                  v88 = &unk_1EDDB5000;
                  v89 = v260;
                  goto LABEL_48;
                }

                outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v243, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                (*(v269 + 8))(v137, v75);
                v118 = v239;
                v88 = &unk_1EDDB5000;
                v89 = v260;
              }

              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v116, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
              v93 = 1;
              goto LABEL_48;
            }

            v93 = 0;
          }

          v118 = v239;
          goto LABEL_48;
        }

        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMR);
        v95 = v86 + *(v94 + 48);
        outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
        memcpy(v277, v95, 0xACuLL);
        if (v267)
        {
          CGAffineTransformMakeRotation(&v278, 1.57079633);
          *v275 = *&v278.m11;
          *&v275[16] = *&v278.m13;
          *&v275[32] = *&v278.m21;
          CATransform3DMakeAffineTransform(&v278, v275);
LABEL_43:
          v125 = 0;
          v124 = v239;
LABEL_65:
          if (one-time initialization token for participant != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v124, static Logger.participant);
          outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
          v149 = Logger.logObject.getter();
          v150 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v149, v150))
          {
            v151 = swift_slowAlloc();
            v152 = swift_slowAlloc();
            *v275 = v152;
            *v151 = 67109378;
            *(v151 + 4) = v267 & 1;
            *(v151 + 8) = 2080;
            _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
            v153 = dispatch thunk of CustomStringConvertible.description.getter();
            v155 = v154;
            v85 = v273;
            outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
            v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v155, v275);
            v84 = v270;

            *(v151 + 10) = v156;
            _os_log_impl(&dword_1BBC58000, v149, v150, "participant isFullScreenParticipant: %{BOOL}d. participant: %s", v151, 0x12u);
            __swift_destroy_boxed_opaque_existential_1(v152);
            MEMORY[0x1BFB23DF0](v152, -1, -1);
            MEMORY[0x1BFB23DF0](v151, -1, -1);
          }

          else
          {

            outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
          }

          outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
          v103 = v261;
          v157 = v84 + *(v94 + 48);
          outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
          outlined init with copy of [CaptionSectioner.SpeakerSection]();
          memcpy((v157 + 40), &v278, 0x80uLL);
          *(v157 + 168) = v125 & 1;
          *(v157 + 169) = 256;
          *(v157 + 171) = 0;
          v102 = v265;
          swift_storeEnumTagMultiPayload();
          memset(v275, 0, 74);
          v275[74] = -64;
          v158 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
          v101 = v264;
          swift_beginAccess();
          v159 = swift_isUniquelyReferenced_nonNull_native();
          aBlock = *(v101 + v158);
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v275, v85 + v234, v159, v160, v161, v162, v163, v164, v230, v231, v232, v233);
          *(v101 + v158) = aBlock;
          swift_endAccess();
          outlined destroy of ParticipantVideoView.ViewModel(v277);
          outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
LABEL_71:
          v105 = v251;
          v104 = v268;
          v111 = v262;
          if ((v268 & 1) == 0)
          {
            goto LABEL_95;
          }

          goto LABEL_72;
        }

        memcpy(&v278, (v95 + 40), sizeof(v278));
        if (BYTE8(v277[10]) != 1)
        {
          goto LABEL_43;
        }

        v260 = v94;
        v119 = v242;
        v235(v242, v85 + v234, v75);
        __swift_storeEnumTagSinglePayload(v119, 0, 1, v75);
        swift_beginAccess();
        v120 = *(*&ty + 48);
        v121 = v240;
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        v122 = v272;
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        if (__swift_getEnumTagSinglePayload(v121, 1, v122) == 1)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v119, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v123 = __swift_getEnumTagSinglePayload(v121 + v120, 1, v122);
          v124 = v239;
          if (v123 == 1)
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v121, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v125 = 0;
LABEL_64:
            v94 = v260;
            goto LABEL_65;
          }
        }

        else
        {
          v138 = v237;
          outlined init with copy of [CaptionSectioner.SpeakerSection]();
          if (__swift_getEnumTagSinglePayload(v121 + v120, 1, v122) != 1)
          {
            v145 = v269;
            v146 = v121 + v120;
            v147 = v245;
            (*(v269 + 32))(v245, v146, v122);
            _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
            LODWORD(ty) = dispatch thunk of static Equatable.== infix(_:_:)();
            v148 = *(v145 + 8);
            v148(v147, v122);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v242, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v148(v138, v122);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v121, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v125 = LOBYTE(ty) ^ 1;
            v124 = v239;
            goto LABEL_64;
          }

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v242, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          (*(v269 + 8))(v138, v122);
          v124 = v239;
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v121, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
        v125 = 1;
        goto LABEL_64;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v269 + 8))(v79, v75);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v267 = 0;
    goto LABEL_21;
  }

  v67 = v271;

  return __swift_storeEnumTagSinglePayload(v67, 1, 1, v52);
}

void ParticipantGridView.updateViews(for:localParticipantOrientation:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_81_2();
  v4 = v2;
  v105 = v5;
  v124 = v6;
  ObjectType = swift_getObjectType();
  v115 = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40();
  v114 = v8;
  OUTLINED_FUNCTION_4_24();
  v140 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_40();
  v106 = v12;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v130 = &v105 - v14;
  v15 = OUTLINED_FUNCTION_4_24();
  v107 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(v15);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_40();
  v131 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v19 = OUTLINED_FUNCTION_22(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17();
  v137 = v20 - v21;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v139 = v23;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_78_4();
  v123 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(v25);
  OUTLINED_FUNCTION_1();
  v133 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v113 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v105 - v31;
  v33 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_8();
  v39 = (v38 - v37);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v39 = static OS_dispatch_queue.main.getter();
  (*(v35 + 104))(v39, *MEMORY[0x1E69E8020], v33);
  v40 = _dispatchPreconditionTest(_:)();
  v41 = (*(v35 + 8))(v39, v33);
  if ((v40 & 1) == 0)
  {
    goto LABEL_46;
  }

  v43 = *(v4 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles);
  MEMORY[0x1EEE9AC00](v41);
  v103 = v124;

  specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in ParticipantGridView.updateEMA(for:ema:audioPriority:videoPriority:), (&v105 - 4), v43);
  v45 = v44;
  v117 = *(v4 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceOrientation);
  v118 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceOrientation;
  *(v4 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceOrientation) = v105;
  v129 = *(v44 + 16);
  if (!v129)
  {
LABEL_42:

LABEL_44:
    OUTLINED_FUNCTION_80();
    return;
  }

  v125 = v4;
  v46 = v4 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
  v47 = *(v133 + 80);
  v128 = v44 + ((v47 + 32) & ~v47);
  v136 = v4 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_fullScreenFocusedParticipantInfo;
  OUTLINED_FUNCTION_4_0(v4 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_fullScreenFocusedParticipantInfo, &v145);
  v111 = v46;
  OUTLINED_FUNCTION_4_0(v46, &v144);
  v48 = 0;
  v134 = (v10 + 32);
  v112 = (v10 + 16);
  p_c = &v142[0].c;
  v120 = (v10 + 8);
  v109 = (v47 + 16) & ~v47;
  v110 = v47;
  v108 = (v28 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
  v122 = xmmword_1BC4BD490;
  v121 = xmmword_1BC4C1E40;
  v49 = v137;
  v126 = v32;
  v127 = v45;
  while (v48 < *(v45 + 16))
  {
    v138 = v48;
    OUTLINED_FUNCTION_1_99();
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    OUTLINED_FUNCTION_5_74();
    v50 = v131;
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    v51 = *v134;
    v52 = v140;
    (*v134)(v3, v50, v140);
    v53 = 1;
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v52);
    v54 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
    v55 = v136;
    v135 = v54;
    v56 = v3;
    if (!__swift_getEnumTagSinglePayload(v136, 1, v54))
    {
      (*v112)(v139, v55, v140);
      v53 = 0;
    }

    v58 = v139;
    v57 = v140;
    __swift_storeEnumTagSinglePayload(v139, v53, 1, v140);
    v59 = *(v132 + 48);
    v60 = v130;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(v60, 1, v57);
    if (v62)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v58, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v56, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      OUTLINED_FUNCTION_115(v60 + v59, 1, v140);
      v3 = v56;
      v61 = v126;
      if (!v62)
      {
        goto LABEL_15;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v60, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v3 = v56;
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      OUTLINED_FUNCTION_115(v60 + v59, 1, v140);
      if (v62)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v139, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v56, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        (*v120)(v49, v140);
        v61 = v126;
LABEL_15:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v60, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
LABEL_16:
        v63 = *&v61[*(v123 + 20) + 8];
        v64 = [objc_opt_self() currentDevice];
        v65 = [v64 userInterfaceIdiom];

        tx = 0.0;
        if (v65 || (OUTLINED_FUNCTION_4_0(&static AmbientState.isPresented, &v143), (static AmbientState.isPresented & 1) != 0))
        {
          ty = 0.0;
          v69 = v121;
          v68 = v122;
          v49 = v137;
        }

        else
        {
          v42 = v105;
          v49 = v137;
          ty = 0.0;
          v69 = v121;
          v68 = v122;
          switch(v105)
          {
            case 0:
              v92 = 1.57079633;
              break;
            case 1:
              goto LABEL_19;
            case 2:
              v92 = -1.57079633;
              break;
            case 3:
              v92 = 3.14159265;
              break;
            default:
              goto LABEL_47;
          }

          CGAffineTransformMakeRotation(v142, v92);
          v68 = *&v142[0].c;
          v69 = *&v142[0].a;
          tx = v142[0].tx;
          ty = v142[0].ty;
        }

LABEL_19:
        v147[0] = v69;
        v147[1] = v68;
        v148 = tx;
        v149 = ty;
        v70 = swift_getObjectType();
        (*(v63 + 88))(v147, v70, v63);
        goto LABEL_37;
      }

      v71 = v106;
      v72 = v140;
      v51(v106, v60 + v59, v140);
      OUTLINED_FUNCTION_4_82();
      _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, v73, MEMORY[0x1E69695C8]);
      v74 = dispatch thunk of static Equatable.== infix(_:_:)();
      v75 = *v120;
      (*v120)(v71, v72);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v139, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v56, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v75(v137, v72);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v60, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v61 = v126;
      if ((v74 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v76 = v118;
    if (v117 == *(v125 + v118) || (v77 = v111, !swift_unknownObjectWeakLoadStrong()) || (v78 = *(v77 + 8), v79 = swift_getObjectType(), v80 = (*(v78 + 112))(v79, v78), v82 = v81, swift_unknownObjectRelease(), (v82 & 1) != 0) || v80)
    {

      OUTLINED_FUNCTION_0_117();
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      goto LABEL_44;
    }

    v83 = *(v125 + v76);
    OUTLINED_FUNCTION_7_63();
    v84 = v114;
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      OUTLINED_FUNCTION_6_65();
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v88 = v136;
      v49 = v137;
      goto LABEL_33;
    }

    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
    v86 = *(v85 + 48);
    OUTLINED_FUNCTION_37((v84 + *(v85 + 64)));
    memcpy(v142, (v84 + v86), sizeof(v142));
    type metadata accessor for Date();
    OUTLINED_FUNCTION_7_0();
    (*(v87 + 8))(v84);
    memcpy(v141, p_c, 0x4BuLL);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined destroy of Participant.MediaInfo(v142);
    v88 = v136;
    if (!v141[0])
    {
      v49 = v137;
LABEL_33:
      v93 = &v61[*(v107 + 24)];
      v91 = v135;
      if (v93[8] == 1)
      {
        v90 = ParticipantGridView.orientation(for:default:)(v124, 1);
      }

      else
      {
        v90 = *v93;
      }

      goto LABEL_36;
    }

    v89 = BYTE1(v141[9]);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v141, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
    v49 = v137;
    if ((v89 & 1) == 0)
    {
      goto LABEL_33;
    }

    v90 = 1;
    v91 = v135;
LABEL_36:
    __swift_getEnumTagSinglePayload(v88, 1, v91);
    static ParticipantGridView.remoteParticipantRotationAngle(localOrientation:remoteOrientation:shouldReverse:)(v83, v90);
    CGAffineTransformMakeRotation(&v146, v94);
    v95 = objc_opt_self();
    OUTLINED_FUNCTION_1_99();
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    v96 = v108;
    v97 = swift_allocObject();
    OUTLINED_FUNCTION_13_45();
    outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
    v98 = (v97 + v96);
    v99 = *&v146.c;
    *v98 = *&v146.a;
    v98[1] = v99;
    v98[2] = *&v146.tx;
    *&v142[0].tx = partial apply for closure #3 in ParticipantGridView.updateViews(for:localParticipantOrientation:);
    *&v142[0].ty = v97;
    *&v142[0].a = MEMORY[0x1E69E9820];
    *&v142[0].b = 1107296256;
    *&v142[0].c = thunk for @escaping @callee_guaranteed () -> ();
    *&v142[0].d = &block_descriptor_43;
    v100 = _Block_copy(v142);

    [v95 animateWithDuration:v100 animations:0.4];
    _Block_release(v100);
LABEL_37:
    v48 = v138 + 1;
    OUTLINED_FUNCTION_0_117();
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    v45 = v127;
    if (v129 == v48)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  v142[0].a = 0.0;
  v142[0].b = -2.68156159e154;
  v101 = v42;
  _StringGuts.grow(_:)(64);
  MEMORY[0x1BFB20B10](0xD00000000000003ELL, 0x80000001BC4F8B10);
  v141[0] = v101;
  v102 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v102);

  v104 = 0;
  v103 = 410;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t ParticipantGridView.orientation(for:default:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ([*(v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_featureFlags) uPlusOneFullBleedHandoffEnabled])
  {

    ParticipantGridView.VideoInfoCache.info(for:)(a1, v21);
    v6 = v21[3];

    v7 = v21[0];
    if (v21[0])
    {
      v8 = v22;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
      a2 = v6;
      v9 = v8;
    }

    else
    {
      v9 = 0;
      LOBYTE(v8) = 1;
    }

    v10 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
    swift_beginAccess();
    v11 = *(v3 + v10);
    if (*(v11 + 16) && (type metadata accessor for Participant(0), v12 = specialized __RawDictionaryStorage.find<A>(_:)(), (v13 & 1) != 0))
    {
      v14 = *(v11 + 56) + 80 * v12;
      v15 = *(v14 + 24);
      v16 = *(v14 + 74);
      swift_endAccess();
      if ((v16 >> 6) <= 2u)
      {
        return v15;
      }
    }

    else
    {
      swift_endAccess();
    }

    Participant.videoInfo.getter();
    v17 = v23[0];
    if (v23[0])
    {
      v18 = v24;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
      v19 = v18 ^ 1;
    }

    else
    {
      v19 = 1;
    }

    if (ParticipantGridView.isOneToOneMode.getter())
    {
      if (v17)
      {
        if (!((v7 == 0) | (v19 | v9) & 1))
        {
          return a2;
        }
      }

      else if ((v8 & 1) == 0)
      {
        return a2;
      }
    }
  }

  Participant.videoInfo.getter();
  if (v25[0])
  {
    a2 = v25[3];
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  }

  return a2;
}

uint64_t static ParticipantGridView.remoteParticipantRotationAngle(localOrientation:remoteOrientation:shouldReverse:)(uint64_t result, uint64_t a2)
{
  switch(result)
  {
    case 0:
      switch(a2)
      {
        case 0:
        case 1:
        case 2:
        case 3:
          return result;
        default:
          goto LABEL_6;
      }

    case 1:
      switch(a2)
      {
        case 0:
        case 1:
        case 2:
        case 3:
          return result;
        default:
          goto LABEL_6;
      }

    case 2:
      switch(a2)
      {
        case 0:
        case 1:
        case 2:
        case 3:
          return result;
        default:
          goto LABEL_6;
      }

    case 3:
      switch(a2)
      {
        case 0:
        case 1:
        case 2:
        case 3:
          return result;
        default:
          goto LABEL_6;
      }

    default:
LABEL_6:
      _StringGuts.grow(_:)(28);

      type metadata accessor for CNKDeviceOrientation(0);
      v2 = String.init<A>(reflecting:)();
      MEMORY[0x1BFB20B10](v2);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

id closure #3 in ParticipantGridView.updateViews(for:localParticipantOrientation:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(a1 + *(type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0) + 20));
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v9 = v3;
  v10 = v4;
  return [v5 setTransform_];
}

Swift::Void __swiftcall ParticipantGridView.updateLocalViews(for:isLocalMemberAuthorizedToChangeGroupMembership:)(Swift::OpaquePointer a1, Swift::Bool isLocalMemberAuthorizedToChangeGroupMembership)
{
  v4 = v2;
  v5 = isLocalMemberAuthorizedToChangeGroupMembership;
  rawValue = a1._rawValue;
  v97 = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v85 = v7 - v8;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v86 = v10;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v83 - v12;
  v96 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v94 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_40();
  v92 = v16;
  v17 = OUTLINED_FUNCTION_4_24();
  v98 = type metadata accessor for Participant(v17);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_17();
  v93 = v21 - v22;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v83[1] = v24;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v83 - v26;
  v28 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v32 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v30 + 104))(v3, *MEMORY[0x1E69E8020], v28);
  _dispatchPreconditionTest(_:)();
  v33 = OUTLINED_FUNCTION_59_7();
  v34(v33, v28);
  if (v32)
  {
    v35 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership;
    OUTLINED_FUNCTION_3_5(v4 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership, v102);
    v36 = 0;
    v95 = v5;
    v83[2] = v4;
    *(v4 + v35) = v5;
    v37 = rawValue;
    v38 = rawValue[2];
    v88 = (v94 + 32);
    v89 = v27 + 3;
    v87 = MEMORY[0x1E69E7CC0];
    v94 += 8;
    v90 = v38;
    v91 = v19;
    while (v38 != v36)
    {
      OUTLINED_FUNCTION_12_47();
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      OUTLINED_FUNCTION_7_63();
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        OUTLINED_FUNCTION_6_65();
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        goto LABEL_9;
      }

      v39 = v37;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v41 = *(v40 + 48);
      v42 = OUTLINED_FUNCTION_37(&v13[*(v40 + 64)]);
      v43 = v92;
      v44 = v96;
      (*v88)(v92, v13, v96, v42);
      outlined destroy of Participant.MediaInfo(&v13[v41]);
      Date.timeIntervalSinceNow.getter();
      if (v45 <= 0.0)
      {
        Date.timeIntervalSinceNow.getter();
        v49 = v48;
        v50 = v43;
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_3_15();
          swift_once();
        }

        OUTLINED_FUNCTION_0_1();
        v52 = (*(v51 + 720))();
        OUTLINED_FUNCTION_73_5();
        v53(v50, v96);
        v47 = -v49 <= v52;
        v37 = v39;
        v38 = v90;
        v19 = v91;
        if (v89[v98[6]])
        {
          goto LABEL_13;
        }

LABEL_9:
        OUTLINED_FUNCTION_11_54();
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        ++v36;
      }

      else
      {
        OUTLINED_FUNCTION_73_5();
        v46(v43, v44);
        v37 = v39;
        v38 = v90;
        v19 = v91;
        if (v89[v98[6]] != 1)
        {
          goto LABEL_9;
        }

        v47 = 0;
LABEL_13:
        if (!*&v27[v98[7]] || !v47)
        {
          goto LABEL_9;
        }

        OUTLINED_FUNCTION_27_25();
        outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
        v54 = v87;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99[0] = v54;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v54 = v99[0];
        }

        v57 = *(v54 + 16);
        v56 = *(v54 + 24);
        v58 = v57 + 1;
        if (v57 >= v56 >> 1)
        {
          OUTLINED_FUNCTION_59_3(v56);
          v87 = v59;
          rawValue = v60;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v58 = v87;
          v54 = v99[0];
        }

        ++v36;
        *(v54 + 16) = v58;
        v87 = v54;
        OUTLINED_FUNCTION_27_25();
        outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
      }
    }

    v61 = v87;
    v62 = *(v87 + 16);
    if (v62)
    {
      v63 = type metadata accessor for ParticipantView(0);
      OUTLINED_FUNCTION_40_3();
      v65 = v61 + v64;
      v66 = *(v19 + 72);
      v67 = v93;
      while (1)
      {
        OUTLINED_FUNCTION_12_47();
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        v68 = ParticipantGridView.tile(for:ofAClass:)(v67 + v98[5], v63);
        v69 = v95;
        if (v68)
        {
          break;
        }

LABEL_41:
        OUTLINED_FUNCTION_11_54();
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        v65 += v66;
        if (!--v62)
        {
          goto LABEL_42;
        }
      }

      v70 = v68;
      if (!swift_dynamicCastClass())
      {
LABEL_40:

        v67 = v93;
        goto LABEL_41;
      }

      if (!v69)
      {
        goto LABEL_36;
      }

      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_3_15();
        swift_once();
      }

      OUTLINED_FUNCTION_0_1();
      if (((*(v71 + 632))() & 1) == 0)
      {
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_7_63();
      v72 = v86;
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
        v74 = *(v73 + 48);
        OUTLINED_FUNCTION_37((v72 + *(v73 + 64)));
        memcpy(v99, (v72 + v74), sizeof(v99));
        OUTLINED_FUNCTION_73_5();
        v75(v72, v96);
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        outlined destroy of Participant.MediaInfo(v99);
        if (v100[3] != 1)
        {
          memcpy(v101, v100, 0xD1uLL);
          v76 = LOBYTE(v101[12]);
          outlined destroy of Participant.ScreenInfo(v101);
          if (v76 == 1)
          {
            goto LABEL_38;
          }

          goto LABEL_36;
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_65();
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        memset(v100, 0, 24);
        v100[3] = 1;
        bzero(&v100[4], 0xB1uLL);
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v100, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      OUTLINED_FUNCTION_7_63();
      v77 = v85;
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        OUTLINED_FUNCTION_6_65();
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
LABEL_38:
        v82 = ParticipantGridView.isOneToOneMode.getter() ^ 1;
        goto LABEL_39;
      }

      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v79 = *(v78 + 48);
      OUTLINED_FUNCTION_37((v77 + *(v78 + 64)));
      memcpy(v99, (v77 + v79), sizeof(v99));
      OUTLINED_FUNCTION_73_5();
      v80(v77, v96);
      memcpy(v101, &v99[2], 0x4BuLL);
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      outlined destroy of Participant.MediaInfo(v99);
      if (!v101[0])
      {
        goto LABEL_38;
      }

      v81 = v101[9];
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v101, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
      if (v81)
      {
        goto LABEL_38;
      }

LABEL_36:
      v82 = 0;
LABEL_39:
      ParticipantView.setKickMemberButtonIsVisible(_:)(v82 & 1);
      goto LABEL_40;
    }

LABEL_42:
  }

  else
  {
    __break(1u);
  }
}

void ParticipantGridView.updateKickingAvailable(for:isKickingAvailable:)(uint64_t a1, char a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_77_2();
  v6 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = (v11 - v10);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v12, *MEMORY[0x1E69E8020], v6);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v12, v6);
  if (v13)
  {
    type metadata accessor for Participant(0);
    v14 = OUTLINED_FUNCTION_70_4();
    v15 = ParticipantGridView.tile(for:ofAClass:)(v3 + v13, v14);
    if (v15)
    {
      v16 = v15;
      if (swift_dynamicCastClass())
      {
        if (a2 & 1) != 0 && (v17 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership, OUTLINED_FUNCTION_4_0(v4 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership, v19), *(v4 + v17) == 1) && (Participant.canShowKickButtonOnVideoTile.getter())
        {
          v18 = ParticipantGridView.isOneToOneMode.getter() ^ 1;
        }

        else
        {
          v18 = 0;
        }

        ParticipantView.setKickMemberButtonIsVisible(_:)(v18 & 1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void ParticipantGridView.updateAudioPower(for:audioPower:)(Swift::Float a1)
{
  OUTLINED_FUNCTION_77_2();
  v4 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v6 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v2 = static OS_dispatch_queue.main.getter();
  v7 = OUTLINED_FUNCTION_61_0();
  v8(v7);
  _dispatchPreconditionTest(_:)();
  v9 = OUTLINED_FUNCTION_59_7();
  v10(v9, v4);
  if (v6)
  {
    type metadata accessor for Participant(0);
    v11 = OUTLINED_FUNCTION_70_4();
    v12 = ParticipantGridView.tile(for:ofAClass:)(v1 + v6, v11);
    if (v12)
    {
      v13 = v12;
      if (swift_dynamicCastClass())
      {
        v14 = ParticipantView.monogramView.getter();
        ParticipantMonogramView.updateAudioVisualization(with:)(a1);

        v13 = v14;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void ParticipantGridView.updateGradientOverlayView(for:isHidden:alpha:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = (v13 - v12);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v14, *MEMORY[0x1E69E8020], v8);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v14, v8);
  if (v15)
  {
    type metadata accessor for Participant(0);
    v16 = OUTLINED_FUNCTION_70_4();
    v17 = ParticipantGridView.tile(for:ofAClass:)(v7 + v15, v16);
    if (v17)
    {
      v18 = v17;
      if (swift_dynamicCastClass())
      {
        ParticipantView.updateGradientOverlayView(isHidden:alpha:)(v5, v3, v1 & 1);
      }
    }

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    __break(1u);
  }
}

void ParticipantGridView.updateVisibleCameraPosition(for:visibleCameraPosition:animated:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  v9 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  v13 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v4 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v4, *MEMORY[0x1E69E8020], v9);
  _dispatchPreconditionTest(_:)();
  v14 = OUTLINED_FUNCTION_60_9();
  v15(v14, v9);
  if (v13)
  {
    type metadata accessor for Participant(0);
    v16 = OUTLINED_FUNCTION_70_4();
    v17 = ParticipantGridView.tile(for:ofAClass:)(a1 + v13, v16);
    if (v17)
    {
      v18 = v17;
      if (swift_dynamicCastClass())
      {
        ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(a2, *(v5 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceOrientation), 0, a3 & 1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void ParticipantGridView.updateEMA(for:ema:audioPriority:videoPriority:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_81_2();
  v5 = v3;
  v7 = v6;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_77_2();
  v11 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(v10);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_40();
  v49 = v15;
  OUTLINED_FUNCTION_4_24();
  v16 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  v22 = (v21 - v20);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v22 = static OS_dispatch_queue.main.getter();
  (*(v18 + 104))(v22, *MEMORY[0x1E69E8020], v16);
  v23 = _dispatchPreconditionTest(_:)();
  v24 = (*(v18 + 8))(v22, v16);
  if (v23)
  {
    v25 = *(v5 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles);
    MEMORY[0x1EEE9AC00](v24);
    v46[-2] = v4;

    specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in ParticipantGridView.updateEMA(for:ema:audioPriority:videoPriority:), &v46[-4], v25);
    v27 = *(v26 + 16);
    if (v27)
    {
      v48 = v49 + *(v11 + 20);
      v28 = v9 + 0.01;
      v29 = v7 + 0.01;
      OUTLINED_FUNCTION_40_3();
      v32 = v30 + v31;
      v33 = *(v13 + 72);
      v46[1] = v30;
      v47 = v33;
      do
      {
        OUTLINED_FUNCTION_1_99();
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        v34 = *v48;
        v51 = *(v48 + 8);
        v50 = v34;
        OUTLINED_FUNCTION_0_117();
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        v52 = 0;
        v53 = 0xE000000000000000;
        _StringGuts.grow(_:)(35);
        MEMORY[0x1BFB20B10](0x203A414D45, 0xE500000000000000);
        Float.write<A>(to:)();
        MEMORY[0x1BFB20B10](0x3A6863656570530ALL, 0xE900000000000020);
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_3_15();
          swift_once();
        }

        v35 = (*static Defaults.shared + 344);
        v36 = *v35;
        v37 = (*v35)();
        if (v37 >= v28)
        {
          v38 = 0x65736C6166;
        }

        else
        {
          v38 = 1702195828;
        }

        if (v37 >= v28)
        {
          v39 = 0xE500000000000000;
        }

        else
        {
          v39 = 0xE400000000000000;
        }

        MEMORY[0x1BFB20B10](v38, v39);

        MEMORY[0x1BFB20B10](40, 0xE100000000000000);
        Float.write<A>(to:)();
        v40 = MEMORY[0x1BFB20B10](0x203A6E6769530A29, 0xE800000000000000);
        v41 = (v36)(v40);
        if (v41 >= v29)
        {
          v42 = 0x65736C6166;
        }

        else
        {
          v42 = 1702195828;
        }

        if (v41 >= v29)
        {
          v43 = 0xE500000000000000;
        }

        else
        {
          v43 = 0xE400000000000000;
        }

        v44 = v50;
        ObjectType = swift_getObjectType();
        MEMORY[0x1BFB20B10](v42, v43);

        MEMORY[0x1BFB20B10](40, 0xE100000000000000);
        Float.write<A>(to:)();
        MEMORY[0x1BFB20B10](41, 0xE100000000000000);
        (*(v51 + 80))(v52, v53, ObjectType);

        v32 += v47;
        --v27;
      }

      while (v27);
    }

    OUTLINED_FUNCTION_80();
  }

  else
  {
    __break(1u);
  }
}

uint64_t ParticipantGridView.aspectRatio(for:default:)@<X0>(uint64_t a1@<X0>, int8x16_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  v4 = v3;
  v29 = *a2;
  v30 = a2[1];
  v7 = a2[2].i8[0];
  if ([*(v3 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_featureFlags) uPlusOneFullBleedHandoffEnabled])
  {

    ParticipantGridView.VideoInfoCache.info(for:)(a1, v33);

    v8 = v33[0];
    if (v33[0])
    {
      v31 = v35;
      v32 = v34;
      v9 = v36;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v33, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
      v28 = v9;
    }

    else
    {
      v28 = 0;
      v31 = 0u;
      v32 = 0u;
      LOBYTE(v9) = 1;
    }

    v14 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
    swift_beginAccess();
    v15 = *(v4 + v14);
    if (*(v15 + 16) && (type metadata accessor for Participant(0), v16 = specialized __RawDictionaryStorage.find<A>(_:)(), (v17 & 1) != 0))
    {
      v18 = *(v15 + 56) + 80 * v16;
      v26 = *(v18 + 40);
      v27 = *(v18 + 56);
      v11 = *(v18 + 72);
      v19 = *(v18 + 73);
      result = swift_endAccess();
      if (v19 >> 14 != 3)
      {
        v12 = v26;
        v13 = v27;
        goto LABEL_21;
      }
    }

    else
    {
      swift_endAccess();
    }

    Participant.videoInfo.getter();
    v20 = v37[0];
    if (v37[0])
    {
      v21 = v38;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v37, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
      v22 = v21 ^ 1;
    }

    else
    {
      v22 = 1;
    }

    result = ParticipantGridView.isOneToOneMode.getter();
    if ((result & 1) == 0)
    {
      goto LABEL_18;
    }

    if (v20)
    {
      if ((v8 == 0) | (v22 | v28) & 1)
      {
LABEL_18:
        result = Participant.videoInfo.getter();
        if (v39[0])
        {
          goto LABEL_19;
        }

        v23.i64[0] = 0;
        v24.i64[0] = v8;
        v25 = vdupq_lane_s64(vceqq_s64(v24, v23).i64[0], 0);
        v13 = vbslq_s8(v25, v30, v31);
        v12 = vbslq_s8(v25, v29, v32);
        if (v8)
        {
          v11 = v28;
        }

        else
        {
          v11 = v7;
        }

        goto LABEL_21;
      }
    }

    else if (v9)
    {
      goto LABEL_18;
    }

    v11 = 0;
    goto LABEL_20;
  }

  result = Participant.videoInfo.getter();
  if (v39[0])
  {
LABEL_19:
    v31 = v41;
    v32 = v40;
    v11 = v42;
    result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v39, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
LABEL_20:
    v13 = v31;
    v12 = v32;
    goto LABEL_21;
  }

  v11 = v7;
  v12 = v29;
  v13 = v30;
LABEL_21:
  *a3 = v12;
  a3[1] = v13;
  a3[2].i8[0] = v11 & 1;
  return result;
}

uint64_t ParticipantGridView.updateCacheIfNeeded(for:)(uint64_t a1)
{
  v2 = v1;
  result = [*(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_featureFlags) uPlusOneFullBleedHandoffEnabled];
  if (!result)
  {
    return result;
  }

  if (ParticipantGridView.isOneToOneMode.getter())
  {
    result = ParticipantGridView.shouldShowLastFrameUI.getter();
    if ((result & 1) == 0)
    {
      return result;
    }

    v5 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
    swift_beginAccess();
    v6 = *(v2 + v5);
    if (*(v6 + 16) && (type metadata accessor for Participant(0), v7 = specialized __RawDictionaryStorage.find<A>(_:)(), (v8 & 1) != 0))
    {
      v9 = *(v6 + 56) + 80 * v7;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = *(v9 + 24);
      v13 = *(v9 + 32);
      v14 = *(v9 + 40);
      v15 = *(v9 + 48);
      v19 = *(v9 + 56);
      v20 = *v9;
      v16 = *(v9 + 64);
      v17 = *(v9 + 72) | (*(v9 + 74) << 16);
      result = swift_endAccess();
      v18 = v17 >= 0xC00000 && (v10 | v20 | v11 | v12 | v13 | v14 | v15 | v19 | v16) == 0;
      if (!v18 || v17 != 12582912)
      {
        return result;
      }
    }

    else
    {
      swift_endAccess();
    }

    ParticipantGridView.VideoInfoCache.update(for:)(a1);
  }

  memset(v21, 0, 75);

  ParticipantGridView.VideoInfoCache.setVideoInfo(_:for:)(v21, a1);
}

char *ParticipantGridView.createParticipantView(frame:isOneToOneMode:)(char a1, double a2, double a3, double a4, double a5)
{
  v7 = objc_allocWithZone(type metadata accessor for ParticipantView(0));
  v8 = ParticipantView.init(frame:localParticipant:)(0);
  ParticipantView.isInRoster.setter(0);
  v9 = v5 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v10 = *(v9 + 8), ObjectType = swift_getObjectType(), (*(v10 + 80))(v15, ObjectType, v10), swift_unknownObjectRelease(), LOBYTE(v15[0]) == 2) || (v12 = 0.0, (a1 & 1) == 0))
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v12 = (*(*static Defaults.shared + 400))();
  }

  v13 = OBJC_IVAR____TtC15ConversationKit15ParticipantView_customCornerRadius;
  swift_beginAccess();
  *&v8[v13] = v12;
  ParticipantView.customCornerRadius.didset();
  UIView.addTapInteraction(withTapCount:)(1);
  return v8;
}

uint64_t closure #5 in ParticipantGridView.updateParticipantTiles(with:fullScreenFocusedParticipantInfo:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t closure #1 in ParticipantGridView.updateViews(for:localParticipantOrientation:)(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v5 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_5_74();
  OUTLINED_FUNCTION_40_2();
  outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
  (*(v9 + 32))(v3, v2, v7);
  type metadata accessor for Participant(0);
  static UUID.== infix(_:_:)();
  v11 = OUTLINED_FUNCTION_60_9();
  v12(v11, v7);
  return v4 & 1;
}

uint64_t ParticipantGridView.shouldManuallyRotateViews(for:)(uint64_t a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 || (a1 | 2) != 2)
  {
    v4 = 0;
  }

  else
  {
    ParticipantGridView.layoutIdiom.getter(&v6);
    v4 = v6;
  }

  return v4 & 1;
}

uint64_t ParticipantGridView.layoutIdiom.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate, v7);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 104))(ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  else
  {
    *a1 = 2;
  }

  return result;
}

void ParticipantGridView.mediaPipDodgingFrame(for:isFullScreen:)(Swift::Int a1, char a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate];
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (v7 = *(v6 + 1), ObjectType = swift_getObjectType(), v9 = (*(v7 + 16))(ObjectType, v7), v11 = v10, swift_unknownObjectRelease(), !swift_unknownObjectWeakLoadStrong()) || ((v12 = *(v6 + 1), v13 = swift_getObjectType(), v14 = (*(v12 + 8))(v13, v12), v16 = v15, v18 = v17, swift_unknownObjectRelease(), v14 != 5) ? (v19 = v14 == 4) : (v19 = 1), v19 || (v20 = v18, v16 == 0.0) && v18 == 0.0 || ((Layout.MultiwayFaceTime.init()(v103), v21 = v104, Layout.MultiwayFaceTime.init()(v105), v22 = v106 + v16, v23 = v14 & 0xFE, v23 != 2) ? (v24 = 0.0) : (v24 = v11), (v25 = v21 + v20, [v2 safeAreaInsetFrame], v26 = CGRectGetHeight(v107) - (v21 + v20) - v9 - v24, objc_msgSend(v2, sel_safeAreaInsetFrame), v27 = CGRectGetWidth(v108) - v22, v26 <= 0.0) && v27 <= 0.0)))
  {
    ParticipantGridView.centeredFrame(for:isFullScreen:)(a1, a2 & 1);
    return;
  }

  v94 = v26;
  v95 = v27;
  rect = v20;
  [v2 safeAreaInsetFrame];
  v96 = v28;
  v98 = v29;
  v31 = v30;
  v33 = v32;
  ParticipantGridView.effectiveLayoutStyle(for:)(a1);
  if (swift_unknownObjectWeakLoadStrong() && (v34 = *(v6 + 1), v35 = swift_getObjectType(), v36 = (*(v34 + 112))(v35, v34), v38 = v37, swift_unknownObjectRelease(), (v38 & 1) == 0))
  {
    v41 = v36 == 0;
    v39 = v31;
    if (v31 < v33 && v95 < v94)
    {
      v40 = rect;
      goto LABEL_50;
    }
  }

  else
  {
    v39 = v31;
    if (v31 < v33)
    {
      v40 = rect;
      v41 = 0;
      if (v95 >= v94)
      {
        if ((v14 & 0xFD) == 0)
        {
          goto LABEL_29;
        }

LABEL_28:
        v22 = 0.0;
        goto LABEL_29;
      }

LABEL_50:
      v64 = 0.0;
      if (v23 != 2)
      {
        v64 = v25;
      }

      v111.origin.x = UIEdgeInsetsInsetRect(v96, v98, v39, v33, v9 + v64, 0.0);
      x = v111.origin.x;
      y = v111.origin.y;
      width = v111.size.width;
      height = v111.size.height;
      v97 = CGRectGetHeight(v111);
      v99 = x;
      v112.origin.x = x;
      v69 = height;
      v70 = width;
      recta = y;
      v112.origin.y = y;
      v112.size.width = width;
      v112.size.height = v69;
      if (CGRectGetWidth(v112) < v97)
      {
        if ((v41 & (v102 | (a1 == 1))) != 1)
        {
          goto LABEL_88;
        }

LABEL_56:
        [v3 safeAreaInsetFrame];
        v71 = CGRectGetWidth(v113) + -2.0;
        v72 = v99;
        if (v9 <= 0.0)
        {
          if (v23 != 2)
          {
            v117.origin.x = v99;
            v77 = recta;
            v117.origin.y = recta;
            v117.size.width = v70;
            v117.size.height = v69;
            if (v71 < CGRectGetHeight(v117))
            {
              v118.origin.x = v99;
              v118.origin.y = recta;
              v118.size.width = v70;
              v118.size.height = v69;
              v82 = CGRectGetHeight(v118) - v71 - v11;
              if (v82 > 0.0)
              {
                v83 = v82;
              }

              else
              {
                v83 = 0.0;
              }

              v72 = UIEdgeInsetsInsetRect(v99, recta, v70, v69, v83, 0.0);
              v77 = v84;
              v70 = v85;
              v69 = v86;
            }

            goto LABEL_81;
          }

          v77 = recta;
        }

        else
        {
          v73 = 0.0;
          if (v71 > 0.0)
          {
            v73 = v40 / v16 * v71;
          }

          v74 = v73 - v40;
          if (v74 <= 0.0)
          {
            v74 = 0.0;
          }

          if (v23 == 2)
          {
            v75 = 0.0;
          }

          else
          {
            v75 = v74;
          }

          v72 = UIEdgeInsetsInsetRect(v99, recta, v70, v69, v75, 0.0);
          v77 = v76;
          v70 = v78;
          v69 = v79;
          if (v23 != 2)
          {
LABEL_81:
            if (v69 < v70)
            {
              v119.origin.x = v72;
              v119.origin.y = v77;
              v119.size.width = v70;
              v119.size.height = v69;
              CGRectGetWidth(v119);
              v120.origin.x = v72;
              v120.origin.y = v77;
              v120.size.width = v70;
              v120.size.height = v69;
              CGRectGetHeight(v120);
              v72 = UIEdgeInsetsInsetRect(v72, v77, v70, v69, 0.0, 0.0);
              v77 = v87;
              v70 = v88;
              v69 = v89;
            }

LABEL_83:
            v121.origin.x = v72;
            v121.origin.y = v77;
            v121.size.width = v70;
            v121.size.height = v69;
            CGRectGetHeight(v121);
            v122.origin.x = v72;
            v122.origin.y = v77;
            v122.size.width = v70;
            v122.size.height = v69;
            CGRectGetWidth(v122);
            UIEdgeInsetsInsetRect(v72, v77, v70, v69, 0.0, 0.0);
            goto LABEL_88;
          }
        }

        if (v9 != 0.0)
        {
          goto LABEL_88;
        }

        goto LABEL_83;
      }

      if (v41 & v102)
      {
        goto LABEL_56;
      }

      v114.origin.x = v99;
      v114.origin.y = y;
      v114.size.width = width;
      v114.size.height = v69;
      v80 = CGRectGetWidth(v114);
      v115.origin.x = v99;
      v115.origin.y = y;
      v115.size.width = width;
      v115.size.height = v69;
      v81 = v80 - CGRectGetHeight(v115) + 2.0;
      if (v41)
      {
        if (v23 == 2)
        {
          if (a1 == 1)
          {
            goto LABEL_69;
          }

          if ((v14 & 1) == 0 && v16 < v40)
          {
            v57 = 0.0;
            v91 = v99;
            v45 = y;
            v92 = width;
            v93 = v69;
            v90 = v81;
            goto LABEL_87;
          }
        }

        v57 = 0.0;
        v90 = 0.0;
        v91 = v99;
        v45 = y;
        v92 = width;
        v93 = v69;
        goto LABEL_87;
      }

LABEL_69:
      v116.origin.x = v99;
      v116.origin.y = y;
      v116.size.width = width;
      v116.size.height = v69;
      CGRectInset(v116, v81 * 0.5, 0.0);
      goto LABEL_88;
    }

    LOBYTE(v41) = 0;
  }

  v40 = rect;
  if ((v14 & 0xFD) != 0)
  {
    goto LABEL_28;
  }

LABEL_29:
  v43 = v39;
  v44 = UIEdgeInsetsInsetRect(v96, v98, v39, v33, 0.0, v22);
  v48 = v44;
  v49 = v46;
  v50 = v47;
  if (v43 >= v33)
  {
    v59 = v46 >= v47 || a1 < 3;
    if (((v59 | v102) & 1) == 0)
    {
      v60 = v45;
      v61 = v44;
      v62 = CGRectGetHeight(*&v44);
      v109.origin.x = v61;
      v109.origin.y = v60;
      v109.size.width = v49;
      v109.size.height = v50;
      v63 = (v62 - CGRectGetWidth(v109) + 2.0) * 0.5;
      v110.origin.x = v61;
      v110.origin.y = v60;
      v110.size.width = v49;
      v110.size.height = v50;
      CGRectInset(v110, 0.0, v63);
    }

    goto LABEL_88;
  }

  if (v94 <= v95)
  {
    v51 = 1.0;
    if (v102)
    {
      v52 = 1.0;
    }

    else
    {
      v52 = -1.0;
    }

    if (v41 || (v102 & 1) == 0 || (v52 = 1.0, v16 >= v40))
    {
      v53 = v48;
      v54 = v45;
      v55 = v48;
      v56 = CGRectGetHeight(*(&v45 - 1));
      v48 = v55;
      v45 = v54;
      v9 = v56 - v9 - v95;
      v51 = v52;
    }

    if ((v14 & 0xFD) != 0)
    {
      v57 = v51;
      if (v23 == 2)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v23 == 2)
      {
        v57 = v51;
LABEL_86:
        v90 = 0.0;
        v91 = v48;
        v92 = v49;
        v93 = v50;
LABEL_87:
        UIEdgeInsetsInsetRect(v91, v45, v92, v93, v57, v90);
        goto LABEL_88;
      }

      v9 = v9 - v11;
    }

    v57 = v51 + v9;
    goto LABEL_86;
  }

LABEL_88:
  UIRectRoundToViewScale();
}

uint64_t ParticipantGridView.mediaPipIsVisible.getter()
{
  v1 = OUTLINED_FUNCTION_37_1(OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate);
  OUTLINED_FUNCTION_4_0(v1, v2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v0 + 8);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 8))(ObjectType, v4);
    v8 = v7;
    v10 = v9;
    swift_unknownObjectRelease();
    if (v6 == 5)
    {
      return 0;
    }

    else
    {
      return (v8 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v10 & 0x7FFFFFFFFFFFFFFFLL) != 0;
    }
  }

  return result;
}

double ParticipantGridView.frameForSingleParticipantView(in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (a4 >= a3)
  {
    MinX = CGRectGetMinX(*&a1);
    v13.origin.x = a1;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    CGRectGetMidY(v13);
    v14.origin.x = a1;
    v14.origin.y = a2;
    v14.size.width = a3;
    v14.size.height = a4;
    CGRectGetWidth(v14);
    v15.origin.x = a1;
    v15.origin.y = a2;
    v15.size.width = a3;
    v15.size.height = a4;
    CGRectGetWidth(v15);
  }

  else
  {
    MinX = CGRectGetMidX(*&a1) + a4 * -0.5;
    v10.origin.x = a1;
    v10.origin.y = a2;
    v10.size.width = a3;
    v10.size.height = a4;
    CGRectGetMinY(v10);
    v11.origin.x = a1;
    v11.origin.y = a2;
    v11.size.width = a3;
    v11.size.height = a4;
    CGRectGetHeight(v11);
    v12.origin.x = a1;
    v12.origin.y = a2;
    v12.size.width = a3;
    v12.size.height = a4;
    CGRectGetHeight(v12);
  }

  return MinX;
}

uint64_t ParticipantGridView.framesForParticipantViewPair(in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle;
  swift_beginAccess();
  if (v5[v14])
  {
    Layout.MultiwayFaceTime.init()(v81);
    v15 = &v83;
  }

  else
  {
    Layout.MultiwayFaceTime.init()(v81);
    v15 = &v82;
  }

  v16 = *v15;
  v18 = *(v11 + 104);
  v17 = v11 + 104;
  v19 = v18;
  (v18)(v13, *MEMORY[0x1E69E7040], v10);
  v20 = [v5 traitCollection];
  [v20 displayScale];
  v22 = (v17 - 96);
  v80 = v18;
  if (a4 >= a3)
  {
    v53 = (a4 - v16) * 0.5;
    if (v53 >= a3)
    {
      v53 = a3;
    }

    v24 = CGFloat.rounded(_:toScale:)(v13, v21, v53);

    v79 = *v22;
    v79(v13, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BC4BAA20;
    v88.origin.x = a1;
    v88.origin.y = a2;
    v88.size.width = a3;
    v88.size.height = a4;
    MidX = CGRectGetMidX(v88);
    v77 = v24 * 0.5;
    v55 = MidX - v24 * 0.5;
    HIDWORD(v76) = *MEMORY[0x1E69E7048];
    v19(v13);
    v56 = [v5 traitCollection];
    [v56 displayScale];
    v58 = CGFloat.rounded(_:toScale:)(v13, v57, v55);

    v59 = v19;
    v60 = v79;
    v79(v13, v10);
    v89.origin.x = a1;
    v89.origin.y = a2;
    v89.size.width = a3;
    v89.size.height = a4;
    v61 = v16 * 0.5;
    v62 = CGRectGetMidY(v89) - v16 * 0.5 - v24;
    v63 = HIDWORD(v76);
    (v59)(v13, HIDWORD(v76), v10);
    v64 = [v5 traitCollection];
    [v64 displayScale];
    v66 = CGFloat.rounded(_:toScale:)(v13, v65, v62);

    v60(v13, v10);
    *(v25 + 32) = v58;
    *(v25 + 40) = v66;
    *(v25 + 48) = v24;
    *(v25 + 56) = v24;
    v90.origin.x = a1;
    v90.origin.y = a2;
    v90.size.width = a3;
    v90.size.height = a4;
    v67 = CGRectGetMidX(v90) - v77;
    v68 = v80;
    v80(v13, v63, v10);
    v69 = [v5 traitCollection];
    [v69 displayScale];
    v47 = CGFloat.rounded(_:toScale:)(v13, v70, v67);

    v71 = v79;
    v79(v13, v10);
    v91.origin.x = a1;
    v91.origin.y = a2;
    v91.size.width = a3;
    v91.size.height = a4;
    v72 = v61 + CGRectGetMidY(v91);
    v68(v13, v63, v10);
    v73 = [v5 traitCollection];
    [v73 displayScale];
    v52 = CGFloat.rounded(_:toScale:)(v13, v74, v72);

    v71(v13, v10);
  }

  else
  {
    v23 = (a3 - v16) * 0.5;
    if (v23 >= a4)
    {
      v23 = a4;
    }

    v24 = CGFloat.rounded(_:toScale:)(v13, v21, v23);

    v79 = *v22;
    v79(v13, v10);
    v78 = v17 - 96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BC4BAA20;
    v84.origin.x = a1;
    v84.origin.y = a2;
    v84.size.width = a3;
    v84.size.height = a4;
    v26 = CGRectGetMidX(v84);
    v77 = v16 * 0.5;
    v27 = v26 - v16 * 0.5;
    v28 = a2;
    v29 = v27 - v24;
    HIDWORD(v76) = *MEMORY[0x1E69E7048];
    v30 = HIDWORD(v76);
    (v19)(v13, HIDWORD(v76), v10);
    v31 = [v5 traitCollection];
    [v31 displayScale];
    v33 = CGFloat.rounded(_:toScale:)(v13, v32, v29);

    v34 = v79;
    v79(v13, v10);
    v85.origin.x = a1;
    v85.origin.y = v28;
    v85.size.width = a3;
    v85.size.height = a4;
    v35 = CGRectGetMidY(v85) - v24 * 0.5;
    v36 = v80;
    v80(v13, v30, v10);
    v37 = [v5 traitCollection];
    [v37 displayScale];
    v39 = CGFloat.rounded(_:toScale:)(v13, v38, v35);

    v34(v13, v10);
    *(v25 + 32) = v33;
    *(v25 + 40) = v39;
    *(v25 + 48) = v24;
    *(v25 + 56) = v24;
    v86.origin.x = a1;
    v86.origin.y = v28;
    v40 = v28;
    v86.size.width = a3;
    v86.size.height = a4;
    v41 = CGRectGetMidX(v86);
    v42 = HIDWORD(v76);
    v36(v13, HIDWORD(v76), v10);
    v43 = [v5 traitCollection];
    [v43 displayScale];
    v45 = CGFloat.rounded(_:toScale:)(v13, v44, v77);

    v46 = v79;
    v79(v13, v10);
    v47 = v41 + v45;
    v87.origin.x = a1;
    v87.origin.y = v40;
    v87.size.width = a3;
    v87.size.height = a4;
    MidY = CGRectGetMidY(v87);
    v36(v13, v42, v10);
    v49 = [v5 traitCollection];
    [v49 displayScale];
    v51 = CGFloat.rounded(_:toScale:)(v13, v50, v24 * 0.5);

    v46(v13, v10);
    v52 = MidY - v51;
  }

  *(v25 + 64) = v47;
  *(v25 + 72) = v52;
  *(v25 + 80) = v24;
  *(v25 + 88) = v24;
  return v25;
}

uint64_t closure #2 in ParticipantGridView.frames(for:mostProminentIdentifier:focusedIdentifier:fullScreenFocusedParticipantInfo:)(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v25 = v4;
  (*(v4 + 16))(&v23 - v15, a1, v3, v14);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v3);
  v17 = *(v7 + 56);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) != 1)
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(&v9[v17], 1, v3) != 1)
    {
      v19 = v24;
      v20 = v25;
      (*(v25 + 32))(v24, &v9[v17], v3);
      _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v20 + 8);
      v21(v19, v3);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v21(v12, v3);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return v18 & 1;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v25 + 8))(v12, v3);
    goto LABEL_6;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
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

uint64_t ParticipantGridView.framesForParticipantViews(in:frameCount:indexToExpand:)(Swift::Int a1, unint64_t a2, char a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v8 = v7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = static Defaults.shared;
  if (((*(*static Defaults.shared + 600))() & 1) != 0 || ((*(*v16 + 568))() & 1) == 0)
  {
    a2 = 0;
    a3 = 1;
  }

  ParticipantGridView.effectiveLayoutStyle(for:)(a1);
  if (v49 == 1)
  {
    Layout.MultiwayFaceTime.init()(v51);
    v17 = v53;
    v18 = (*(*v16 + 520))();
    v19 = v7[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceType];
    v20 = ParticipantGridView.mediaPipIsVisible.getter();
    [v8 displayScale];
    if (v20)
    {
      v22 = 256;
    }

    else
    {
      v22 = 0;
    }

    GridLayout.init(containingRect:frameCount:indexToExpand:configuration:displayScale:)(a1, a2, a3 & 1, v22 | v19, a4, a5, a6, a7, v17, v18, v21);
  }

  else
  {
    v24 = &v7[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v26 = Strong;
    if (Strong)
    {
      v27 = *(v24 + 1);
      ObjectType = swift_getObjectType();
      v29 = (*(v27 + 8))(ObjectType, v27);
      v31 = v30;
      v33 = v32;
      swift_unknownObjectRelease();
      v26 = v29 != 5 && ParticipantGridView.MediaPipInfo.flipsOrganicPairs.getter(v29, v31, v33);
    }

    v34 = &v8[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_organicLayoutConfiguration];
    swift_beginAccess();
    v34[32] = v26;
    v35 = *(v34 + 1);
    v51[0] = *v34;
    v51[1] = v35;
    v52 = v26;
    [v8 displayScale];
    v23 = OrganicLayout.init(containingSize:frameCount:indexToExpand:configuration:displayScale:)(a1, a2, a3 & 1, v51, a6, a7, v36);
  }

  v37 = v23;
  v38 = v23[1].i64[0];
  if (v38)
  {
    v50 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
    v39 = v50;
    v40 = &v37[3].i8[8];
    do
    {
      v54 = CGRectOffset(*(v40 - 24), a4, a5);
      x = v54.origin.x;
      y = v54.origin.y;
      width = v54.size.width;
      height = v54.size.height;
      v46 = *(v50 + 16);
      v45 = *(v50 + 24);
      if (v46 >= v45 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
      }

      *(v50 + 16) = v46 + 1;
      v47 = (v50 + 32 * v46);
      v47[4] = x;
      v47[5] = y;
      v47[6] = width;
      v47[7] = height;
      v40 += 32;
      --v38;
    }

    while (v38);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v39;
}

double ParticipantGridView.frameForFullScreenParticipantView(fitting:layoutFrame:shouldUseSafeAreaInsets:forcePortraitSize:remoteVideoOrientation:)(int a1, int a2, uint64_t a3, int a4, double a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v11 = v10;
  v75 = a4;
  v76 = a3;
  v72 = a1;
  v19 = type metadata accessor for FloatingPointRoundingRule();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceOrientation;
  v24 = ParticipantGridView.shouldManuallyRotateViews(for:)(*&v10[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceOrientation]);
  v25 = a7;
  v26 = a8;
  v27 = a9;
  v28 = a10;
  if (v24)
  {
    Width = CGRectGetWidth(*&v25);
    v78.origin.x = a7;
    v78.origin.y = a8;
    v78.size.width = a9;
    v78.size.height = a10;
    Height = CGRectGetHeight(v78);
  }

  else
  {
    Width = CGRectGetHeight(*&v25);
    v79.origin.x = a7;
    v79.origin.y = a8;
    v79.size.width = a9;
    v79.size.height = a10;
    Height = CGRectGetWidth(v79);
  }

  v31 = Width / Height;
  v32 = &v10[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v74 = a6;
  if (Strong && (v34 = *(v32 + 1), ObjectType = swift_getObjectType(), (*(v34 + 80))(&v77, ObjectType, v34), swift_unknownObjectRelease(), v77 == 2) && (v36 = [objc_opt_self() currentDevice], v37 = objc_msgSend(v36, sel_userInterfaceIdiom), v36, !v37) && a9 > 0.0)
  {
    v38 = a10 / a9;
  }

  else
  {
    v38 = a6 / a5;
  }

  [v11 displayScale];
  v40 = v39;
  v73 = a5;
  if (a9 < a10)
  {
    v70 = v23;
    v71 = a2;
    if (v24)
    {
      v41 = v31 < v38;
    }

    else
    {
      v41 = v38 < v31;
    }

    v42 = *(v20 + 104);
    v42(v22, *MEMORY[0x1E69E7040], v19);
    v43 = (v20 + 8);
    if (v41)
    {
      HIDWORD(v69) = v24;
      v44 = v24 & 1;
      if (v44)
      {
        v45 = 1.0 / v38;
      }

      else
      {
        v45 = v38;
      }

      v46 = CGFloat.rounded(_:toScale:)(v22, v40, v45 * a9);
      v47 = *v43;
      (*v43)(v22, v19);
      if (!v44)
      {
        v59 = *MEMORY[0x1E69E7048];
        v54 = 0.0;
        v48 = a9;
        v24 = HIDWORD(v69);
        goto LABEL_34;
      }

      v48 = a9;
      v24 = HIDWORD(v69);
    }

    else
    {
      if (v24)
      {
        v57 = v38;
      }

      else
      {
        v57 = 1.0 / v38;
      }

      v48 = CGFloat.rounded(_:toScale:)(v22, v40, v57 * a10);
      v47 = *v43;
      (*v43)(v22, v19);
      v46 = a10;
    }

    v81.origin.x = a7;
    v81.origin.y = a8;
    v81.size.width = a9;
    v81.size.height = a10;
    v58 = CGRectGetMidX(v81) + v48 * -0.5;
    v59 = *MEMORY[0x1E69E7048];
    v42(v22, v59, v19);
    v54 = CGFloat.rounded(_:toScale:)(v22, v40, v58);
    v47(v22, v19);
    if (!v41)
    {
      v55 = 0.0;
      if (v72)
      {
        [v11 safeAreaInsets];
        v55 = v60;
      }

      goto LABEL_35;
    }

LABEL_34:
    v83.origin.x = a7;
    v83.origin.y = a8;
    v83.size.width = a9;
    v83.size.height = a10;
    v63 = CGRectGetMidY(v83) + v46 * -0.5;
    v42(v22, v59, v19);
    v55 = CGFloat.rounded(_:toScale:)(v22, v40, v63);
    v47(v22, v19);
LABEL_35:
    LOBYTE(a2) = v71;
    v23 = v70;
    goto LABEL_36;
  }

  v49 = v24;
  v50 = *(v20 + 104);
  v50(v22, *MEMORY[0x1E69E7040], v19);
  v51 = (v20 + 8);
  if (v31 >= v38)
  {
    v46 = CGFloat.rounded(_:toScale:)(v22, v40, v38 * a9);
    v61 = *v51;
    (*v51)(v22, v19);
    v82.origin.x = a7;
    v82.origin.y = a8;
    v82.size.width = a9;
    v82.size.height = a10;
    v62 = CGRectGetMidY(v82) + v46 * -0.5;
    v50(v22, *MEMORY[0x1E69E7048], v19);
    v55 = CGFloat.rounded(_:toScale:)(v22, v40, v62);
    v61(v22, v19);
    v54 = 0.0;
    v48 = a9;
  }

  else
  {
    v48 = CGFloat.rounded(_:toScale:)(v22, v40, a10 / v38);
    v52 = *v51;
    (*v51)(v22, v19);
    v80.origin.x = a7;
    v80.origin.y = a8;
    v80.size.width = a9;
    v80.size.height = a10;
    v53 = CGRectGetMidX(v80) + v48 * -0.5;
    v50(v22, *MEMORY[0x1E69E7048], v19);
    v54 = CGFloat.rounded(_:toScale:)(v22, v40, v53);
    v52(v22, v19);
    v55 = 0.0;
    if (v72)
    {
      [v11 safeAreaInsets];
      v55 = v56;
    }

    v46 = a10;
  }

  v24 = v49;
LABEL_36:
  if ((v75 & 1) == 0)
  {
    if (v76)
    {
      if (v76 != 2 || v73 >= v74)
      {
        goto LABEL_42;
      }

LABEL_44:
      v65 = 1;
      goto LABEL_45;
    }

    if (v73 < v74)
    {
      goto LABEL_44;
    }
  }

LABEL_42:
  v65 = 0;
LABEL_45:
  if (static Platform.current.getter() != 1 && (a2 & 1) != 0)
  {
    v84.origin.x = v54;
    v84.origin.y = v55;
    v84.size.width = v48;
    v84.size.height = v46;
    v66 = CGRectGetWidth(v84);
    v85.origin.x = v54;
    v85.origin.y = v55;
    v85.size.width = v48;
    v85.size.height = v46;
    if (CGRectGetHeight(v85) < v66)
    {
      v67 = 1;
    }

    else
    {
      v67 = v65;
    }

    if ((v67 & v24) == 1 && (*&v11[v23] | 2) != 2)
    {
      v86.origin.x = v54;
      v86.origin.y = v55;
      v86.size.width = v48;
      v86.size.height = v46;
      CGRectGetHeight(v86);
      v87.origin.x = v54;
      v87.origin.y = v55;
      v87.size.width = v48;
      v87.size.height = v46;
      CGRectGetWidth(v87);
    }
  }

  return v54;
}

ConversationKit::MultiwayViewController::LayoutStyle __swiftcall ParticipantGridView.effectiveLayoutStyle(for:)(Swift::Int a1)
{
  v3 = v2;
  v5 = v1;
  result = ParticipantGridView.mediaPipIsVisible.getter();
  if ((result & 1) != 0 && a1 < 3)
  {
    v7 = 0;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      v8 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle;
      OUTLINED_FUNCTION_3_5(v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle, &v10);
      *(v2 + v8) = a1 > 3;
    }

    v9 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle;
    result = OUTLINED_FUNCTION_4_0(v3 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle, v11);
    v7 = *(v3 + v9);
  }

  *v5 = v7;
  return result;
}

uint64_t ParticipantGridView.transformModelIfNeeded(_:for:)@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ParticipantViewModel(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  if ([*(v3 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_featureFlags) uPlusOneFullBleedHandoffEnabled] && (ParticipantGridView.shouldShowLastFrameUI.getter() & 1) != 0)
  {
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    if (!swift_getEnumCaseMultiPayload())
    {
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMR) + 48);
      outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
      memcpy(__dst, &v10[v12], 0xACuLL);
      ParticipantVideoView.ViewModel.contentsRect.getter();
      if (v13 == v14 && (ParticipantGridView.isOneToOneMode.getter() & 1) != 0)
      {
        v15 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMR) + 48);
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        Participant.contactDetails.getter();
        outlined destroy of ParticipantVideoView.ViewModel(__dst);
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        v16 = v21[2];
        v17 = v22;
        v18 = v21[1];
        *v15 = v21[0];
        *(v15 + 16) = v18;
        *(v15 + 32) = v16;
        *(v15 + 48) = v17;
        v19 = *&v7[*(v5 + 32)];

        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        *(v15 + 56) = v19;
        *(v15 + 64) = 0;
        *(v15 + 72) = 0u;
        *(v15 + 88) = 0u;
        return swift_storeEnumTagMultiPayload();
      }

      outlined destroy of ParticipantVideoView.ViewModel(__dst);
    }

    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
  }

  return outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
}

BOOL closure #1 in ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of IDSLookupManager(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd, &_s15ConversationKit24ParticipantVideoProvider_pMR);
  type metadata accessor for RemoteParticipantVideoProvider();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v24) + 0x158))())
  {

    return 0;
  }

  v5 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
  swift_beginAccess();
  v6 = *(a2 + v5);
  if (*(v6 + 16) && (type metadata accessor for Participant(0), v7 = specialized __RawDictionaryStorage.find<A>(_:)(), (v8 & 1) != 0))
  {
    v9 = *(v6 + 56) + 80 * v7;
    v10 = *v9;
    v11 = *(v9 + 16);
    v22 = *(v9 + 24);
    v23 = *(v9 + 8);
    v12 = *(v9 + 32);
    v13 = *(v9 + 40);
    v15 = *(v9 + 48);
    v14 = *(v9 + 56);
    v16 = *(v9 + 64);
    v17 = *(v9 + 74);
    v18 = *(v9 + 72) | (*(v9 + 74) << 16);
    swift_endAccess();
    outlined copy of ParticipantGridView.FrozenFrameOverlayState(v10, v23, v11, v22, v12, v13, v15, v14, v16, v18);

    if (v17 >> 6)
    {
      v20 = v11;
      v19 = v10;
      v21 = v17 >> 6 == 3 && (v23 | v10 | v11 | v22 | v12 | v13 | v15 | v14 | v16) == 0;
      v3 = v21 && v18 == 12582912;
    }

    else
    {
      v3 = 1;
      v20 = v11;
      v19 = v10;
    }

    outlined consume of ParticipantGridView.FrozenFrameOverlayState(v19, v23, v20, v22, v12, v13, v15, v14, v16, v18);
  }

  else
  {
    swift_endAccess();

    return 1;
  }

  return v3;
}

uint64_t ParticipantGridView.scheduleUpdateToPausedHandoffOverlay(on:for:isMostActive:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v27 = a2;
  v32 = a4;
  v28 = a1;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Participant(0);
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = type metadata accessor for DispatchTime();
  v31 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v29 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)(3.0);
  v30 = *(v12 + 8);
  v30(v14, v11);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 24) = v27;
  swift_unknownObjectWeakInit();
  outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
  v20 = ((*(v26 + 80) + 32) & ~*(v26 + 80)) + v10;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v19;
  outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
  *(v21 + v20) = v32;
  aBlock[4] = partial apply for closure #1 in ParticipantGridView.scheduleUpdateToPausedHandoffOverlay(on:for:isMostActive:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_85;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v23 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v29;
  MEMORY[0x1BFB21510](v17, v8, v5, v22);
  _Block_release(v22);

  (*(v36 + 8))(v5, v23);
  (*(v34 + 8))(v8, v35);
  return (v30)(v17, v31);
}

uint64_t closure #2 in ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  Participant.videoInfo.getter();
  if (v7[0] && (v4 = v8, outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR), (v4 & 1) != 0))
  {
    v5 = 1;
  }

  else
  {
    v5 = ParticipantGridView.orientation(for:default:)(a2, 1);
  }

  Participant.videoInfo.getter();
  if (v9[0])
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  }

  return static ParticipantGridView.remoteParticipantRotationAngle(localOrientation:remoteOrientation:shouldReverse:)(a1, v5);
}

void closure #3 in ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = type metadata accessor for ParticipantView(0);
  v9.receiver = a1;
  v9.super_class = v6;
  v7 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v7;
  v11 = v4;
  v12 = v5;
  objc_msgSendSuper2(&v9, sel_setTransform_, v10);
  v8.receiver = a1;
  v8.super_class = v6;
  objc_msgSendSuper2(&v8, sel_transform);
  ParticipantView.updateOverlayTransforms(with:)(v10);
}

void closure #1 in ParticipantGridView.scheduleUpdateToPausedHandoffOverlay(on:for:isMostActive:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelOSgMd, &_s15ConversationKit20ParticipantViewModelOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27.i8[-v8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = *(a2 + 24);
      if (ParticipantGridView.shouldShowLastFrameUI.getter())
      {
        v15 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
        swift_beginAccess();
        v16 = *&v11[v15];
        if (*(v16 + 16))
        {
          v17 = *(type metadata accessor for Participant(0) + 20);
          v18 = specialized __RawDictionaryStorage.find<A>(_:)();
          if (v19)
          {
            memcpy(v34, (*(v16 + 56) + 80 * v18), 0x4BuLL);
            v20 = LOWORD(v34[9]) | (BYTE2(v34[9]) << 16);
            if (v20 < 0x400000)
            {
              v30 = v34[0];
              v31 = v34[4] & 3;
              v32 = v34[3];
              v29 = *&v34[5];
              v27 = vandq_s8(*&v34[1], xmmword_1BC4CDBC0);
              v28 = *&v34[7];
              swift_endAccess();
              v36 = v27;
              v35 = v30;
              v37 = v32;
              v38 = v31;
              v40 = v28;
              v39 = v29;
              v41 = v20 & 0x101;
              v42 = (v20 & 0x1010101 | 0x400000) >> 16;
              swift_beginAccess();
              outlined init with copy of ParticipantGridView.FrozenFrameOverlayState(v34, v33);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v33[0] = *&v11[v15];
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v35, a3 + v17, isUniquelyReferenced_nonNull_native, v22, v23, v24, v25, v26, v27.i64[0], v27.i64[1], v28, *(&v28 + 1));
              *&v11[v15] = v33[0];
              swift_endAccess();
              ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(v13, v14, a3, a4 & 1, 0, 0, v9);

              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit20ParticipantViewModelOSgMd, &_s15ConversationKit20ParticipantViewModelOSgMR);
              return;
            }
          }
        }

        swift_endAccess();
      }
    }

    else
    {
    }
  }
}

void closure #1 in ParticipantGridView.startAnimations(_:animationStyle:completion:)(char a1, void (*a2)(void), uint64_t a3, void *a4)
{
  if (a2)
  {
    a2(a1 & 1);
  }

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  v16 = partial apply for closure #1 in MultiwayViewController.fadeOutView(view:duration:completion:);
  v17 = v6;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_106;
  v7 = _Block_copy(&v12);
  v8 = a4;

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v16 = partial apply for closure #2 in closure #1 in ParticipantGridView.startAnimations(_:animationStyle:completion:);
  v17 = v9;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v15 = &block_descriptor_112;
  v10 = _Block_copy(&v12);
  v11 = v8;

  [v5 animateWithDuration:v7 animations:v10 completion:0.5];
  _Block_release(v10);
  _Block_release(v7);
}

void closure #2 in ParticipantGridView.startAnimations(_:animationStyle:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_mostRecentAnimationIndex);
  if (v6 == a3)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v7 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BC4BA940;
    v9 = String.init<A>(reflecting:)();
    v11 = v10;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    v12 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Grid view animation %@ did complete", 35, 2, &dword_1BBC58000, v7, v12, v8);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BC4BA940;
    v15 = String.init<A>(reflecting:)();
    v17 = v16;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v18 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Grid view animation %@ did not complete", 39, 2, &dword_1BBC58000, v13, v18, v14);
  }

  swift_beginAccess();
  v19 = *(a4 + 16);
  if (v19)
  {
    v20 = *(a4 + 24);

    v19(v6 == a3);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v19, v20);
  }
}

id closure #1 in ParticipantGridView.tile(for:ofAClass:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
  (*(v7 + 32))(v9, v5, v6);
  v10 = static UUID.== infix(_:_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = *(a1 + *(type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0) + 20));
  return [v11 isKindOfClass_];
}

id ParticipantGridView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall ParticipantGridView.updateMediaPipDodgingFrame(withAnimationStyle:)(ConversationKit::ParticipantGridView::AnimationStyle withAnimationStyle)
{
  v3 = &v1[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_cachedFrameSize];
  OUTLINED_FUNCTION_3_5(&v1[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_cachedFrameSize], v6);
  *v3 = 0;
  *(v3 + 1) = 0;
  [v1 setNeedsLayout];
  v4 = swift_allocObject();
  v4[2] = v1;
  v5 = v1;
  ParticipantGridView.startAnimations(_:animationStyle:completion:)(partial apply for closure #1 in CallControlsMenuViewController.updateDogingState(animated:), v4, withAnimationStyle, 0, 0);
}

double ParticipantGridView.centeredFrame(for:isFullScreen:)(unint64_t a1, char a2)
{
  [v2 safeAreaInsetFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  ParticipantGridView.effectiveLayoutStyle(for:)(a1);
  v13 = &v2[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 1);
    ObjectType = swift_getObjectType();
    v16 = (*(v14 + 112))(ObjectType, v14);
    v18 = v17;
    swift_unknownObjectRelease();
    if ((v18 & 1) == 0 && !v16)
    {
      v19 = [v2 superview];
      if (v19)
      {
        v20 = v19;
        if (v10 >= v12 || (a2 & 1) != 0 || a1 < 1)
        {
          goto LABEL_20;
        }

        if (v37[0])
        {
          if (a1 >= 5)
          {
            goto LABEL_20;
          }
        }

        else if (a1 >= 3)
        {
LABEL_20:

          return v6;
        }

        if (a1 > 3)
        {
          v21 = v37[0];
        }

        else
        {
          v21 = 0;
        }

        if (a1 == 1 || v21)
        {
          [v2 frame];
          MinX = CGRectGetMinX(v40);
          [v20 bounds];
          MinY = CGRectGetMinY(v41);
          [v2 frame];
          Width = CGRectGetWidth(v42);
          [v20 bounds];
          Height = CGRectGetHeight(v43);
          [v2 convertRect:v20 fromCoordinateSpace:{ParticipantGridView.frameForSingleParticipantView(in:)(MinX, MinY, Width, Height)}];
          recta = v44.origin.x;
          y = v44.origin.y;
          v28 = v44.size.width;
          v29 = v44.size.height;
          v30 = CGRectGetMinY(v44);
          v45.origin.x = v6;
          v45.origin.y = v8;
          v45.size.width = v10;
          v45.size.height = v12;
          rect_8 = v30 - CGRectGetMinY(v45) + -1.0;
          v46.origin.x = v6;
          v46.origin.y = v8;
          v46.size.width = v10;
          v46.size.height = v12;
          CGRectGetMaxY(v46);
          v47.origin.x = recta;
          v47.origin.y = y;
          v47.size.width = v28;
          v47.size.height = v29;
          CGRectGetMaxY(v47);
          UIEdgeInsetsInsetRect(v6, v8, v10, v12, rect_8, 0.0);
        }

        else
        {
          Layout.MultiwayFaceTime.init()(v35);
          v22 = v36 * 0.5;
          Layout.MultiwayFaceTime.init()(v37);
          v39.origin.x = v6;
          v39.origin.y = v8;
          v39.size.width = v10;
          v39.size.height = v12;
          CGRectInset(v39, v22, v38 * 0.5);
        }

        UIRectRoundToViewScale();
        v6 = v31;
        goto LABEL_20;
      }
    }
  }

  return v6;
}

uint64_t ParticipantGridView.participantViewDidTapToggleFocus(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33_23();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_28_26();
  OUTLINED_FUNCTION_57(v1);
  if (v5)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  v7 = OUTLINED_FUNCTION_15_32();
  v8(v7);
  OUTLINED_FUNCTION_20_28();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_79_2(Strong);
    OUTLINED_FUNCTION_74_5();
    v10 = OUTLINED_FUNCTION_17_41();
    v11(v10);
    swift_unknownObjectRelease();
  }

  v12 = OUTLINED_FUNCTION_41_14();
  return v13(v12);
}

void ParticipantGridView.identifier(for:)(uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v18 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v17[1] = v17 - v7;
  v8 = *(v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles);
  v9 = *(v8 + 16);

  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {

      v11 = type metadata accessor for UUID();
      v12 = v19;
      v13 = 1;
LABEL_8:
      __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
      return;
    }

    if (i >= *(v8 + 16))
    {
      break;
    }

    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    if (static NSObject.== infix(_:_:)())
    {

      outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
      v14 = v18;
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      v15 = type metadata accessor for UUID();
      v16 = v19;
      (*(*(v15 - 8) + 32))(v19, v14, v15);
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v12 = v16;
      v13 = 0;
      v11 = v15;
      goto LABEL_8;
    }

    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
  }

  __break(1u);
}

uint64_t ParticipantGridView.participantViewDidTapShutter(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33_23();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_28_26();
  OUTLINED_FUNCTION_57(v1);
  if (v5)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  v7 = OUTLINED_FUNCTION_15_32();
  v8(v7);
  OUTLINED_FUNCTION_20_28();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_79_2(Strong);
    OUTLINED_FUNCTION_74_5();
    v10 = OUTLINED_FUNCTION_17_41();
    v11(v10);
    swift_unknownObjectRelease();
  }

  v12 = OUTLINED_FUNCTION_41_14();
  return v13(v12);
}

uint64_t ParticipantGridView.participantViewDidTapRing(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33_23();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_28_26();
  OUTLINED_FUNCTION_57(v1);
  if (v5)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  v7 = OUTLINED_FUNCTION_15_32();
  v8(v7);
  OUTLINED_FUNCTION_20_28();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_79_2(Strong);
    OUTLINED_FUNCTION_74_5();
    v10 = OUTLINED_FUNCTION_17_41();
    v11(v10);
    swift_unknownObjectRelease();
  }

  v12 = OUTLINED_FUNCTION_41_14();
  return v13(v12);
}

uint64_t ParticipantGridView.participantViewDidTapKickMember(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33_23();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_28_26();
  OUTLINED_FUNCTION_57(v1);
  if (v5)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  v7 = OUTLINED_FUNCTION_15_32();
  v8(v7);
  OUTLINED_FUNCTION_20_28();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_79_2(Strong);
    OUTLINED_FUNCTION_74_5();
    v10 = OUTLINED_FUNCTION_17_41();
    v11(v10);
    swift_unknownObjectRelease();
  }

  v12 = OUTLINED_FUNCTION_41_14();
  return v13(v12);
}

void ParticipantGridView.participantView(_:didUpdateSashVisibility:)()
{
  OUTLINED_FUNCTION_29();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  ParticipantGridView.identifier(for:)(v9);
  OUTLINED_FUNCTION_115(v9, 1, v10);
  if (v14)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v12 + 32))(v1, v9, v10);
    OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate, &v18);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      (*(v12 + 16))(v6, v1, v10);
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
      v15 = OUTLINED_FUNCTION_15_14();
      v16(v15);
      swift_unknownObjectRelease();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    (*(v12 + 8))(v1, v10);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t ParticipantGridView.VideoInfoCache.cacheKey(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for Participant(0);
  specialized Collection.first.getter(*(a1 + *(v5 + 44)), v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    goto LABEL_7;
  }

  v6 = *&v4[*(v5 + 28)];
  if (!v6)
  {
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
LABEL_7:
    v11 = *(a1 + *(v5 + 28));
    if (v11)
    {
      return outlined bridged method (ob) of @objc TUHandle.normalizedValue.getter(v11);
    }

    return 0;
  }

  v7 = v6;
  outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
  v8 = [v7 normalizedValue];
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

uint64_t ParticipantGridView.VideoInfoCache.setVideoInfo(_:for:)(const void *a1, uint64_t a2)
{
  result = ParticipantGridView.VideoInfoCache.cacheKey(for:)(a2);
  if (v4)
  {
    memcpy(__dst, a1, sizeof(__dst));
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit11ParticipantV9VideoInfoVGMd, &_s14CopresenceCore5CacheVySS15ConversationKit11ParticipantV9VideoInfoVGMR);
    Cache.subscript.setter();
    return swift_endAccess();
  }

  return result;
}

uint64_t ParticipantGridView.VideoInfoCache.update(for:)(uint64_t a1)
{
  v2 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
  outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    return outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
  v6 = *(v5 + 48);
  v7 = &v4[*(v5 + 64)];
  outlined consume of Participant.CopresenceInfo?(*v7, v7[1], v7[2], v7[3], v7[4], v7[5], v7[6], v7[7]);
  memcpy(v11, &v4[v6], sizeof(v11));
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v4, v8);
  memcpy(__dst, &v11[16], 0x4BuLL);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  result = outlined destroy of Participant.MediaInfo(v11);
  if (__dst[0])
  {
    ParticipantGridView.VideoInfoCache.setVideoInfo(_:for:)(__dst, a1);
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  }

  return result;
}

uint64_t ParticipantGridView.VideoInfoCache.info(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit11ParticipantV9VideoInfoVGMd, &_s14CopresenceCore5CacheVySS15ConversationKit11ParticipantV9VideoInfoVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - v7;
  result = ParticipantGridView.VideoInfoCache.cacheKey(for:)(a1);
  if (v10)
  {
    v11 = result;
    v12 = v10;
    v13 = OBJC_IVAR____TtCC15ConversationKit19ParticipantGridViewP33_C3C0D7D8F62A84253427EC61D899943E14VideoInfoCache_videoInfoCache;
    swift_beginAccess();
    (*(v6 + 16))(v8, v2 + v13, v5);
    v20[0] = v11;
    v20[1] = v12;
    Cache.subscript.getter();

    result = (*(v6 + 8))(v8, v5);
    v14 = v21;
    v15 = v22;
    v16 = v23;
    v17 = v24;
    v18 = v25;
    v19 = v26 | (v27 << 16);
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
  }

  *a2 = v14;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  *(a2 + 64) = v18;
  *(a2 + 72) = v19;
  *(a2 + 74) = BYTE2(v19);
  return result;
}

uint64_t ParticipantGridView.VideoInfoCache.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC15ConversationKit19ParticipantGridViewP33_C3C0D7D8F62A84253427EC61D899943E14VideoInfoCache_videoInfoCache;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit11ParticipantV9VideoInfoVGMd, &_s14CopresenceCore5CacheVySS15ConversationKit11ParticipantV9VideoInfoVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id @nonobjc UIViewPropertyAnimator.init(duration:curve:animations:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v10[4] = a2;
    v10[5] = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed () -> ();
    v10[3] = &block_descriptor_115;
    v7 = _Block_copy(v10);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithDuration:a1 curve:v7 animations:a4];
  _Block_release(v7);
  return v8;
}

uint64_t outlined init with copy of ParticipantGridView.IdentifiableParticipantTile()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t outlined init with take of ParticipantGridView.IdentifiableParticipantTile()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t outlined destroy of ParticipantGridView.IdentifiableParticipantTile()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

id partial apply for closure #3 in ParticipantGridView.updateViews(for:localParticipantOrientation:)()
{
  v1 = *(type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return closure #3 in ParticipantGridView.updateViews(for:localParticipantOrientation:)(v0 + v2, v3);
}

unint64_t lazy protocol witness table accessor for type ParticipantGridView.AnimationStyle and conformance ParticipantGridView.AnimationStyle()
{
  result = lazy protocol witness table cache variable for type ParticipantGridView.AnimationStyle and conformance ParticipantGridView.AnimationStyle;
  if (!lazy protocol witness table cache variable for type ParticipantGridView.AnimationStyle and conformance ParticipantGridView.AnimationStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantGridView.AnimationStyle and conformance ParticipantGridView.AnimationStyle);
  }

  return result;
}

void type metadata completion function for ParticipantGridView(uint64_t a1)
{
  type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID?(319, &lazy cache variable for type metadata for ParticipantGridView.FullScreenFocusedParticipantInfo?, type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID?(319, &lazy cache variable for type metadata for ParticipantGridView.AnimationInfo?, type metadata accessor for ParticipantGridView.AnimationInfo);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for UUID?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ParticipantGridView.AnimationStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for ParticipantGridView.ParticipantTileInfo(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID?(319, &lazy cache variable for type metadata for CNKDeviceOrientation?, type metadata accessor for CNKDeviceOrientation);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for ParticipantGridView.FullScreenFocusedParticipantInfo(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CNKDeviceOrientation(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t storeEnumTagSinglePayload for ParticipantGridView.Traits(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t type metadata completion function for ParticipantGridView.AnimationInfo(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticipantGridView.MediaPipInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && a1[24])
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *a1;
      if (v3 <= 4)
      {
        v4 = 4;
      }

      else
      {
        v4 = *a1;
      }

      v5 = v4 - 5;
      if (v3 < 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticipantGridView.MediaPipInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void type metadata completion function for ParticipantGridView.VideoInfoCache(uint64_t a1)
{
  type metadata accessor for Cache<String, Participant.VideoInfo>();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Cache<String, Participant.VideoInfo>()
{
  if (!lazy cache variable for type metadata for Cache<String, Participant.VideoInfo>)
  {
    v0 = type metadata accessor for Cache();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Cache<String, Participant.VideoInfo>);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit19ParticipantGridViewC23FrozenFrameOverlayState33_C3C0D7D8F62A84253427EC61D899943ELLO(uint64_t a1)
{
  if (*(a1 + 74) >> 6 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 74) >> 6;
  }
}

uint64_t getEnumTagSinglePayload for ParticipantGridView.FrozenFrameOverlayState(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 75))
    {
      v5 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      v3 = vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_1BC4CDBD0), xmmword_1BC4CDBE0);
      *v3.i8 = vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
      v4 = v3.i32[0] | (v2 >> 6) & 0xF8000000 | v3.i32[1];
      if (v4 > 0x80000000)
      {
        v5 = ~v4;
      }

      else
      {
        v5 = -1;
      }
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

double storeEnumTagSinglePayload for ParticipantGridView.FrozenFrameOverlayState(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 74) = 0;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 75) = 1;
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
      *a1 = 0;
      *(a1 + 8) = (4 * -a2) & 0xFE00 | (2 * (-a2 & 0x7FLL)) & 0xFFFFFFC10301FFFFLL | (((-a2 >> 14) & 0x7F) << 17) & 0xFFFFFFC103FFFFFFLL | (((-a2 >> 21) & 0x3F) << 26) & 0xFFFFFFC1FFFFFFFFLL | ((-a2 >> 27) << 33);
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 59) = 0u;
      return result;
    }

    *(a1 + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveProjectEnumData for ParticipantGridView.FrozenFrameOverlayState(uint64_t a1)
{
  v2 = *(a1 + 72);
  result = a1 + 72;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x3F;
  *result = v2;
  return result;
}

int8x16_t destructiveInjectEnumTag for ParticipantGridView.FrozenFrameOverlayState(uint64_t a1, unsigned int a2)
{
  if (a2 < 3)
  {
    v4 = *(a1 + 72);
    v3 = a1 + 72;
    v5 = *(v3 - 40) & 3;
    v6 = (v4 | (*(v3 + 2) << 16)) & 0x1010101;
    result = vandq_s8(*(v3 - 64), xmmword_1BC4CDBC0);
    *(v3 - 64) = result;
    *(v3 - 40) = v5;
    *v3 = v6;
    *(v3 + 2) = (v6 | (a2 << 22)) >> 16;
  }

  else
  {
    *a1 = a2 - 3;
    result.i64[0] = 0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 74) = -64;
    *(a1 + 72) = 0;
  }

  return result;
}

uint64_t type metadata completion function for ParticipantGridView.IdentifiableParticipantTile(uint64_t a1)
{
  result = type metadata accessor for ParticipantGridView.ParticipantTileInfo(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ParticipantTile();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for ParticipantTile()
{
  result = lazy cache variable for type metadata for ParticipantTile;
  if (!lazy cache variable for type metadata for ParticipantTile)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ParticipantTile);
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc TUHandle.normalizedValue.getter(void *a1)
{
  v2 = [a1 normalizedValue];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_15_14();
}

void partial apply for closure #1 in ParticipantGridView.scheduleUpdateToPausedHandoffOverlay(on:for:isMostActive:)()
{
  v1 = *(type metadata accessor for Participant(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v5 = *(v4 + *(v1 + 64));

  closure #1 in ParticipantGridView.scheduleUpdateToPausedHandoffOverlay(on:for:isMostActive:)(v2, v3, v4, v5);
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double outlined copy of ParticipantGridView.FrozenFrameOverlayState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  if (((a10 >> 22) & 3) != 3)
  {
  }

  return result;
}

double outlined consume of ParticipantGridView.FrozenFrameOverlayState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  if (((a10 >> 22) & 3) != 3)
  {
  }

  return result;
}

uint64_t outlined assign with copy of ParticipantGridView.AnimationInfo?()
{
  OUTLINED_FUNCTION_6_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_7_0();
  v3 = OUTLINED_FUNCTION_46();
  v4(v3);
  return v0;
}

uint64_t dynamic_cast_existential_1_unconditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_70_4()
{

  return type metadata accessor for ParticipantView(0);
}

id UIButton.updateContentAlpha(_:)(double a1)
{
  v3 = v1;
  type metadata accessor for UIBackgroundConfiguration();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19[-v8];
  UIButton.configuration.getter();
  v10 = type metadata accessor for UIButton.Configuration();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    outlined destroy of TapInteractionHandler?(v9, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
    return [v1 setAlpha_];
  }

  UIButton.Configuration.background.getter();
  UIBackgroundConfiguration.customView.getter();
  v12 = OUTLINED_FUNCTION_11_55();
  v13(v12);
  outlined destroy of TapInteractionHandler?(v9, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  if (!v2)
  {
    return [v1 setAlpha_];
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {

    return [v1 setAlpha_];
  }

  v15 = v14;
  [v1 setAlpha_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd, &_ss23_ContiguousArrayStorageCySo6UIViewCSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BB990;
  *(inited + 32) = v15;
  v17 = v2;
  *(inited + 40) = [v3 imageView];
  *(inited + 48) = [v3 subtitleLabel];
  *(inited + 56) = [v3 titleLabel];
  for (i = 32; i != 64; i += 8)
  {
    [*(inited + i) setAlpha_];
  }

  swift_setDeallocating();
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo6UIViewCSgMd, &_sSo6UIViewCSgMR);
}

void static UIButton.Configuration.base(title:symbol:shape:style:context:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, unsigned int a6@<W5>, char *a7@<X8>)
{
  LODWORD(v78) = a4;
  v82 = a2;
  v72 = a1;
  v11 = *(a5 + 24);
  v74 = *(a5 + 56);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31UIConfigurationColorTransformerVSgMd, &_s5UIKit31UIConfigurationColorTransformerVSgMR);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v69 - v14;
  v15 = type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v79 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v69 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v76 = &v69 - v24;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v25);
  v77 = &v69 - v26;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v27);
  v80 = &v69 - v28;
  outlined init with copy of SymbolImageDescribing?(a3, v86, &_s15ConversationKit21SymbolImageDescribing_pSgMd, &_s15ConversationKit21SymbolImageDescribing_pSgMR);
  v29 = v87;
  if (v87)
  {
    v30 = v88;
    __swift_project_boxed_opaque_existential_1(v86, v87);
    (*(v30 + 8))(v89, v29, v30);
    __swift_destroy_boxed_opaque_existential_1(v86);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    v75 = static UIImage.symbolImage(for:)(v89);
    outlined destroy of SymbolImageDescription(v89);
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v86, &_s15ConversationKit21SymbolImageDescribing_pSgMd, &_s15ConversationKit21SymbolImageDescribing_pSgMR);
    v75 = 0;
  }

  v83 = a7;
  v84 = a6;
  if (v11)
  {
    v73 = v11;
    v70 = v17;
    v71 = v15;
    v31 = *a5;
    v32 = *(a5 + 8);
    v33 = *(a5 + 16);
    v35 = *(a5 + 32);
    v34 = *(a5 + 40);
    v36 = *(a5 + 48);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
    }

    v37 = (*static Defaults.shared + 336);
    v38 = *v37;
    v39 = (*v37)();
    if (v39)
    {
      v32 = v34;
    }

    else
    {
      v35 = v31;
    }

    if (v39)
    {
      v40 = v36;
    }

    else
    {
      v40 = v33;
    }

    v85 = v40;
    v41 = outlined copy of ButtonBackgroundStyle(v35, v32, v40);
    v42 = (v38)(v41);
    v43 = v73;
    if (v42)
    {
      v43 = v74;
    }

    v73 = v43;
    v44 = v84;
    v15 = v71;
    v45 = v70;
    v46 = v78;
  }

  else
  {
    v47 = objc_opt_self();
    v44 = a6;
    v35 = [v47 systemGrayColor];
    v73 = [v47 labelColor];
    v32 = 0;
    v85 = 64;
    v46 = v78;
    v45 = v17;
  }

  static UIButton.Configuration.filled()();
  v48 = v76;
  UIButton.Configuration.withShape(_:)(v46, v76);
  v49 = *(v45 + 8);
  v49(v22, v15);
  v50 = v77;
  v78 = v35;
  UIButton.Configuration.withBackgroundStyle(_:)(v35, v32, v85, v77);
  v51 = v48;
  v52 = v49;
  v49(v51, v15);
  v53 = v45;
  v54 = v79;
  v55 = v15;
  (*(v45 + 16))(v79, v50, v15);
  v74 = v32;
  if (v44)
  {
    OUTLINED_FUNCTION_6_66(v56, v57, v58, v59);
    UIButton.Configuration.imagePadding.setter();
  }

  else
  {
    OUTLINED_FUNCTION_5_75(v56, v57, v58, v59);
  }

  v60 = v52;
  v52(v50, v15);
  v61 = *(v53 + 32);
  v62 = v80;
  v61(v80, v54, v55);
  v63 = v75;
  UIButton.Configuration.image.setter();
  v64 = swift_allocObject();
  v65 = v73;
  *(v64 + 16) = v73;
  v66 = v65;
  v67 = v81;
  UIConfigurationColorTransformer.init(_:)();
  v68 = type metadata accessor for UIConfigurationColorTransformer();
  __swift_storeEnumTagSinglePayload(v67, 0, 1, v68);
  UIButton.Configuration.imageColorTransformer.setter();
  if (v82)
  {
    UIButton.Configuration.withAttributedTitle(title:foregroundColor:context:)(v66, v84, v83);
    OUTLINED_FUNCTION_13_46();

    v60(v62, v55);
  }

  else
  {

    OUTLINED_FUNCTION_13_46();
    v61(v83, v62, v55);
  }
}

void UIButton.Configuration.withBackgroundStyle(_:)(id a1@<X0>, void *a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for _Glass._GlassVariant();
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v12 = type metadata accessor for UIBackgroundConfiguration();
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_20_3();
  (*(v14 + 16))(a4, v5);
  switch(a3 >> 6)
  {
    case 1:
      static UIBackgroundConfiguration.clear()();
      UIButton.Configuration.background.setter();
      v17 = a1;
      UIButton.Configuration.baseBackgroundColor.setter();
      break;
    case 2:
      if (_UISolariumEnabled())
      {
        v18 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        static _Glass._GlassVariant.controlCenter.getter();
        v39[3] = type metadata accessor for _Glass();
        v39[4] = MEMORY[0x1E69DC388];
        __swift_allocate_boxed_opaque_existential_1(v39);
        _Glass.init(_:smoothness:)();
        UIView._background.setter();
        v19 = [v18 layer];
        [v19 setMasksToBounds_];

        v20 = v18;
        v21 = OUTLINED_FUNCTION_14_36();
        UIBackgroundConfiguration.customView.setter();
        v22 = OUTLINED_FUNCTION_10_49();
        v21(v22);
        if (!a1)
        {
          v23 = [objc_opt_self() clearColor];
        }

        v24 = a1;
        v25 = OUTLINED_FUNCTION_14_36();
        UIBackgroundConfiguration.backgroundColor.setter();
        v26 = OUTLINED_FUNCTION_10_49();
        v25(v26);
        goto LABEL_16;
      }

      break;
    case 3:
      return;
    default:
      switch(a3)
      {
        case 1u:
          a1 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
          v31 = [a1 contentView];
          v32 = [objc_opt_self() tintColor];
          [v31 setBackgroundColor_];

          v33 = objc_allocWithZone(MEMORY[0x1E69DD298]);
          v28 = a2;
          v29 = [v33 initWithEffect_];
          [v29 setAutoresizingMask_];
          v30 = [a1 contentView];
          [v30 addSubview_];
          goto LABEL_14;
        case 2u:
          outlined copy of ButtonBackgroundBlurStyle(a1, a2, 2);
          break;
        case 3u:
          v27 = objc_opt_self();
          if (one-time initialization token for backgroundBlurEffect != -1)
          {
            swift_once();
          }

          v28 = [v27 _effectForBlurEffect_vibrancyStyle_];
          a1 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
          v29 = [a1 contentView];
          v30 = [objc_opt_self() tintColor];
          [v29 setBackgroundColor_];
LABEL_14:

          break;
        default:
          a1 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
          v15 = [a1 contentView];
          v16 = [objc_opt_self() tintColor];
          [v15 setBackgroundColor_];

          break;
      }

      v20 = a1;
      v34 = OUTLINED_FUNCTION_14_36();
      UIBackgroundConfiguration.customView.setter();
      v35 = OUTLINED_FUNCTION_10_49();
      v34(v35);
      v36 = [objc_opt_self() clearColor];
      v37 = OUTLINED_FUNCTION_14_36();
      UIBackgroundConfiguration.backgroundColor.setter();
      v38 = OUTLINED_FUNCTION_10_49();
      v37(v38);
LABEL_16:

      break;
  }
}

id UIButton.init(imageNamed:supressesHairlineThickening:)(void *a1, uint64_t a2)
{
  v3 = a2;
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8);
  v12 = specialized UIButton.init(imageNamed:supressesHairlineThickening:)(v10, v3, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t UIButton.add(target:action:)(uint64_t a1, uint64_t a2, double a3)
{
  outlined init with copy of SymbolImageDescribing?(a1, v14, &_sypSgMd, &_sypSgMR);
  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v8 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_8();
    (*(v8 + 16))(v10 - v9);
    _bridgeAnythingToObjectiveC<A>(_:)();
    v11 = OUTLINED_FUNCTION_11_55();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v4 = 0;
  }

  [v3 addTarget:v4 action:a2 forControlEvents:64];
  return swift_unknownObjectRelease();
}

uint64_t UIButton.title.getter()
{
  v1 = [v0 titleForState_];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void key path setter for UIButton.title : UIButton(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  UIButton.title.setter(v1, v2);
}

void (*UIButton.title.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = UIButton.title.getter();
  a1[1] = v3;
  return UIButton.title.modify;
}

void UIButton.title.modify(uint64_t a1, char a2)
{
  if (a2)
  {

    v2 = OUTLINED_FUNCTION_9_55();
    outlined bridged method (mbnnn) of @objc UIButton.setTitle(_:for:)(v2, v3, v4, v5);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_9_55();

    outlined bridged method (mbnnn) of @objc UIButton.setTitle(_:for:)(v6, v7, v8, v9);
  }
}

id UIButton.image.getter()
{
  v1 = [v0 imageForState_];

  return v1;
}

void key path setter for UIButton.image : UIButton(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  UIButton.image.setter(v1);
}

void UIButton.image.setter(void *a1)
{
  [v1 setImage:a1 forState:0];
}

void (*UIButton.image.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 imageForState_];
  return UIButton.image.modify;
}

void UIButton.image.modify(id *a1)
{
  v1 = *a1;
  [a1[1] setImage_forState_];
}

void UIButton.Configuration.withShape(_:)(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1;
  v6 = type metadata accessor for UIButton.Configuration.CornerStyle();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_20_3();
  (*(v13 + 16))(a2, v3);
  v14 = *(v8 + 104);
  if (v5)
  {
    v14(v12, *MEMORY[0x1E69DC508], v6);
    UIButton.Configuration.cornerStyle.setter();
  }

  else
  {
    v14(v12, *MEMORY[0x1E69DC4F0], v6);
    UIButton.Configuration.cornerStyle.setter();
    v15 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.cornerRadius.setter();
    v15(v16, 0);
  }
}

uint64_t UIButton.Configuration.withAttributedTitle(title:foregroundColor:context:)@<X0>(void *a2@<X2>, unsigned __int8 a3@<W3>, uint64_t a4@<X8>)
{
  v44 = a2;
  v6 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v46 = type metadata accessor for AttributeContainer();
  OUTLINED_FUNCTION_1();
  v45 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  v16 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  v22 = v21 - v20;
  type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_20_3();
  v24 = *(v23 + 16);
  v47 = a4;
  v24(a4, v4);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  if (v6 == 1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BAA20;
    v26 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v27 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
    v28 = *MEMORY[0x1E69DDD80];
    v29 = v26;
    *(inited + 40) = static UIFont.preferredFont(textStyle:weight:maximumPointSize:)(v28, 0x403E000000000000, 0);
    v30 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v27;
    *(inited + 72) = v30;
    *(inited + 104) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
    v31 = v44;
    *(inited + 80) = v44;
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    v32 = v30;
    v33 = v31;
  }

  else
  {
    v34 = swift_initStackObject();
    v35 = MEMORY[0x1E69DB648];
    *(v34 + 16) = xmmword_1BC4BA940;
    v36 = *v35;
    *(v34 + 32) = *v35;
    v37 = objc_opt_self();
    v38 = *MEMORY[0x1E69DDD80];
    v39 = v36;
    v40 = [v37 preferredFontForTextStyle_];
    isa = UIFont.withTraits(_:)(0x8002u).super.isa;

    v42 = UIFont.caseSensitive()().super.isa;
    *(v34 + 64) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
    *(v34 + 40) = v42;
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  }

  Dictionary.init(dictionaryLiteral:)();
  AttributeContainer.init(_:)();
  AttributedString.setAttributes(_:)();
  (*(v45 + 8))(v15, v46);
  (*(v18 + 16))(v10, v22, v16);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v16);
  UIButton.Configuration.attributedTitle.setter();
  return (*(v18 + 8))(v22, v16);
}

void UIButton.Configuration.withPadding(shape:context:)(unsigned __int8 a1@<W1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1;
  type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_20_3();
  (*(v6 + 16))(a2, v3);
  if (v5)
  {
    OUTLINED_FUNCTION_6_66(v7, v8, v9, v10);
    UIButton.Configuration.imagePadding.setter();
  }

  else
  {
    OUTLINED_FUNCTION_5_75(v7, v8, v9, v10);
  }
}

uint64_t static UIButton.Configuration.base(title:image:shape:style:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v72 = a6;
  v67 = a3;
  v70 = a2;
  v62 = a1;
  v10 = *(a5 + 24);
  v11 = *(a5 + 56);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31UIConfigurationColorTransformerVSgMd, &_s5UIKit31UIConfigurationColorTransformerVSgMR);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v60[-v14];
  type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_1();
  v74 = v15;
  v75 = v16;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v60[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v73 = &v60[-v24];
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v25);
  v71 = a7;
  v68 = &v60[-v26];
  v64 = v27;
  if (v10)
  {
    v63 = v11;
    v65 = v10;
    LODWORD(v66) = a4;
    v28 = *a5;
    v29 = *(a5 + 8);
    v61 = *(a5 + 16);
    v31 = *(a5 + 32);
    v30 = *(a5 + 40);
    v32 = *(a5 + 48);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
    }

    v33 = (*static Defaults.shared + 336);
    v34 = *v33;
    if ((*v33)())
    {
      v28 = v31;
      v29 = v30;
    }

    else
    {
      v32 = v61;
    }

    v35 = outlined copy of ButtonBackgroundStyle(v28, v29, v32);
    v36 = (v34)(v35);
    v37 = v65;
    if (v36)
    {
      v37 = v63;
    }

    v63 = v37;
    LOBYTE(a4) = v66;
  }

  else
  {
    v38 = objc_opt_self();
    v28 = [v38 systemGrayColor];
    v63 = [v38 labelColor];
    v29 = 0;
    v32 = 64;
  }

  static UIButton.Configuration.filled()();
  UIButton.Configuration.withShape(_:)(a4, v22);
  v39 = v75;
  v40 = *(v75 + 8);
  v41 = v19;
  v42 = v74;
  v40(v41, v74);
  v43 = v73;
  v65 = v29;
  UIButton.Configuration.withBackgroundStyle(_:)(v28, v29, v32, v73);
  v40(v22, v42);
  v44 = v64;
  (*(v39 + 16))(v64, v43, v42);
  v49 = v32;
  v66 = v28;
  if (v72)
  {
    OUTLINED_FUNCTION_6_66(v45, v46, v47, v48);
    UIButton.Configuration.imagePadding.setter();
  }

  else
  {
    OUTLINED_FUNCTION_5_75(v45, v46, v47, v48);
  }

  v50 = v74;
  v40(v73, v74);
  v51 = *(v75 + 32);
  v52 = v68;
  v51(v68, v44, v50);
  v53 = v67;
  UIButton.Configuration.image.setter();
  v54 = swift_allocObject();
  v55 = v63;
  *(v54 + 16) = v63;
  v56 = v55;
  v57 = v69;
  UIConfigurationColorTransformer.init(_:)();
  v58 = type metadata accessor for UIConfigurationColorTransformer();
  __swift_storeEnumTagSinglePayload(v57, 0, 1, v58);
  UIButton.Configuration.imageColorTransformer.setter();
  if (v70)
  {
    UIButton.Configuration.withAttributedTitle(title:foregroundColor:context:)(v56, v72, v71);
    outlined consume of ButtonBackgroundStyle(v66, v65, v49);

    return (v40)(v52, v50);
  }

  else
  {

    outlined consume of ButtonBackgroundStyle(v66, v65, v49);
    return (v51)(v71, v52, v50);
  }
}